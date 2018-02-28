.getSynapseUtilsFunctionInfo <- function(rootDir) {
  pyImport("synapseutils")
  pyExec("info = functionInfo.functionInfo(synapseutils)")
  functionInfo <- pyGet("info")
  result <- lapply(X = functionInfo, function(x) {
    list(name = x$name, synName = x$name, functionContainerName = "synapseutils", args = x$args, doc = x$doc, title = x$name)
  })
}
