# now call autoGenerateRdFiles
args <- commandArgs(TRUE)
srcRootDir <- args[1]
library("synapser")
# 'source' some functions shared with the synapser package
source(sprintf("%s/R/shared.R",srcRootDir))
# generate the Python documentation
generateRdFiles(srcRootDir,
                pyPkg = "synapseutils",
                module = "synapseutils",
                modifyFunctions = .selectSynapseUtilsFunctionInfo)
