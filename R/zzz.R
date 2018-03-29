.onLoad <- function(libname, pkgname) {
  .addPythonWrapperToSearchPath(system.file(package = "synapserutils"))
  .defineUtilFunctions()
  pyImport("synapseUtilsWrapper")
  pyExec("synUtils = synapseUtilsWrapper.SynapseUtilsWrapper(syn)")
}

.callback <- function(name, def) {
  setGeneric(name, def)
}

.addPythonWrapperToSearchPath <- function(srcDir) {
  pyImport("sys")
  pyExec(sprintf("sys.path.append('%s')", file.path(srcDir, "python")))
  pyImport("synapseUtilsWrapper")
}

.defineUtilFunctions <- function() {
  generateRWrappers(pyPkg = "synapseUtilsWrapper",
                    class = "synapseUtilsWrapper.SynapseUtilsWrapper",
                    setGenericCallback = .callback,
                    pySingletonName = "synUtils")
}
