.onLoad <- function(libname, pkgname) {
  .addPythonWrapperToSearchPath(system.file(package = "synapserutils"))
  .defineUtilFunctions()
  PythonEmbedInR::pyImport("synapseUtilsWrapper")
  PythonEmbedInR::pyExec("synUtils = synapseUtilsWrapper.SynapseUtilsWrapper(syn)")
}

.callback <- function(name, def) {
  setGeneric(name, def)
}

.addPythonWrapperToSearchPath <- function(srcDir) {
  PythonEmbedInR::pyImport("sys")
  PythonEmbedInR::pyExec(sprintf("sys.path.append('%s')", file.path(srcDir, "python")))
  PythonEmbedInR::pyImport("synapseUtilsWrapper")
}

.defineUtilFunctions <- function() {
  PythonEmbedInR::generateRWrappers(pyPkg = "synapseUtilsWrapper",
                    container = "synapseUtilsWrapper.SynapseUtilsWrapper",
                    setGenericCallback = .callback,
                    pySingletonName = "synUtils")
}
