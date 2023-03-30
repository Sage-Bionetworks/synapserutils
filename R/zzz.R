.onLoad <- function(libname, pkgname) {
  reticulate::py_run_string("import synapseclient")
  # reticulate::py_run_string(sprintf("synapserVersion = 'synapser/%s' ", utils::packageVersion("synapser")))
  # reticulate::py_run_string("synapseclient.USER_AGENT['User-Agent'] = synapserVersion + synapseclient.USER_AGENT['User-Agent']")
  # reticulate::py_run_string("synapseclient.core.config.single_threaded = True")
  reticulate::py_run_string("syn=synapseclient.Synapse(skip_checks=True)")
  # # make syn available in the global environment
  syn <<- reticulate::py_eval("syn")
  .addPythonWrapperToSearchPath(system.file(package = "synapserutils"))
  .defineUtilFunctions()
  reticulate::import("synapseUtilsWrapper")
  reticulate::py_run_string("synUtils = synapseUtilsWrapper.SynapseUtilsWrapper(syn)")
}

.callback <- function(name, def) {
  setGeneric(name, def)
}

.addPythonWrapperToSearchPath <- function(srcDir) {
  reticulate::py_run_string("import sys")
  reticulate::py_run_string(sprintf("sys.path.append('%s')", file.path(srcDir, "python")))
  reticulate::import("synapseUtilsWrapper")
}

.defineUtilFunctions <- function() {
  generateRWrappers(pyPkg = "synapseUtilsWrapper",
                    container = "synapseUtilsWrapper.SynapseUtilsWrapper",
                    setGenericCallback = .callback,
                    pySingletonName = "synUtils")
}
