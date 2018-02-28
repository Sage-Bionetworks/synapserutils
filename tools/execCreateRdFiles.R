# now call autoGenerateRdFiles
args <- commandArgs(TRUE)
srcRootDir <- args[1]
library("synapser")
# 'source' some functions shared with the synapser package
source(sprintf("%s/R/shared.R",srcRootDir))
# get the Python documentation of all the functions
functionInfo<-.getSynapseUtilsFunctionInfo(file.path(srcRootDir, "inst"))
autoGenerateRdFiles(srcRootDir, functionInfo, NULL)
