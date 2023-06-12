# now call autoGenerateRdFiles
library("synapser")
library("reticulate")
library("rjson")
args <- commandArgs(TRUE)
srcRootDir <- args[1]


toOmit <- c("with_progress_bar", "notifyMe")
.selectSynapseUtilsFunctionInfo <- function(x) {
  if (any(x$name==toOmit)) {
    return (NULL)
  }
  x
}

# 'source' some functions shared with the synapser package
# to get omitFunctions and omitClasses
source(sprintf("%s/R/PythonPkgWrapperUtils.R", srcRootDir))

reticulate::py_run_string("import sys")
reticulate::py_run_string(sprintf("sys.path.append(\"%s\")", file.path(srcRootDir, "inst", "python")))

# generate the Python documentation
generateRdFiles(srcRootDir,
                pyPkg = "synapseutils",
                container = "synapseutils",
                functionFilter = .selectSynapseUtilsFunctionInfo)
