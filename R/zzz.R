.onLoad <- function(libname, pkgname) {
  .defineUtilFunctions()
}

.defineFunction <- function(synName, pyName, functionContainerName) {
  force(synName)
  force(pyName)
  force(functionContainerName)
  assign(sprintf(".%s", synName), function(...) {
    functionContainer <- pyGet(functionContainerName, simplify = FALSE)
    argsAndKwArgs <- determineArgsAndKwArgs(...)
    functionAndArgs <- append(list(functionContainer, pyName), argsAndKwArgs$args)
    cleanUpStackTrace(pyCall, list("gateway.invoke", args = functionAndArgs, kwargs = argsAndKwArgs$kwargs, simplify = F))
  })
  setGeneric(
    name = synName,
    def = function(...) {
      do.call(sprintf(".%s", synName), args = list(pyGet("syn"), ...))
    }
  )
}

.defineUtilFunctions <- function() {
  functionInfo <- .getSynapseUtilsFunctionInfo(system.file(package="synapser"))
  for (f in functionInfo) {
    .defineFunction(f$synName, f$name, f$functionContainerName)
  }
}
