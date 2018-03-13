toOmit <- c("with_progress_bar", "notifyMe")
.selectSynapseUtilsFunctionInfo <- function(x) {
  if (any(x$name==toOmit)) {
    return (NULL)
  }
  x
}
