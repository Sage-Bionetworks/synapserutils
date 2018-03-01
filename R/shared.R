.getSynapseUtilsFunctionInfo <- function(rootDir) {
  pyImport("synapseutils")
  pyExec("info = functionInfo.functionInfo(synapseutils)")
  functionInfo <- pyGet("info")
  toOmit <- c("with_progress_bar", "notifyMe")
  result <- lapply(X = functionInfo, function(x) {
    if (any(x$name==toOmit)) return(NULL)
    list(name = x$name, synName = x$name, functionContainerName = "synapseutils", args = x$args, doc = x$doc, title = x$name)
  })
  # scrub the nulls
  nullIndices<-sapply(result, is.null)
  if (any(nullIndices)) {
    result<-result[-which(nullIndices)]
  }
  result
}
