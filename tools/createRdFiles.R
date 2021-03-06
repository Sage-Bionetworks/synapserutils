# now call autoGenerateRdFiles
args <- commandArgs(TRUE)
srcRootDir <- args[1]
library("synapser")
library("rjson")

toOmit <- c("with_progress_bar", "notifyMe")
.selectSynapseUtilsFunctionInfo <- function(x) {
  if (any(x$name==toOmit)) {
    return (NULL)
  }
  x
}

# generate the Python documentation
PythonEmbedInR::generateRdFiles(srcRootDir,
                pyPkg = "synapseutils",
                container = "synapseutils",
                functionFilter = .selectSynapseUtilsFunctionInfo)
