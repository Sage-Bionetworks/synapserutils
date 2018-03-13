.onLoad <- function(libname, pkgname) {
  .defineUtilFunctions()
}

.callback <- function(name, def) {
  setGeneric(name, def)
}

.defineUtilFunctions <- function() {
  generateRWrappers(pyPkg = "synapseutils",
                    module = "synapseutils",
                    setGenericCallback = .callback,
                    modifyFunctions = .selectSynapseUtilsFunctionInfo,
                    replaceParam = "syn")
}
