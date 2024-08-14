\name{walk}
\alias{walk}
\docType{methods}
\title{
walk
}
\description{
Traverse the hierarchy of files and folders stored under the synId. 
Has the same behavior as os.walk()
}
\usage{
walk(synId)
}
\arguments{
\item{synId}{          A synapse ID of a folder or project}
\item{includeTypes}{Must be a list of entity types (ie.c("file", "table") The "folder" type is always included so the hierarchy can be traversed. Defaults to c("folder", "file", "table", "link", "entityview", "dockerrepo", "submissionview", "dataset", "materializedview")}
}
\details{
% A detailed if possible precise description of the functionality provided, extending the basic information in the \description slot.
}
\value{

}
\references{
% A section with references to the literature. Use \url{} or \href{}{} for web pointers.
}
\note{
% Use this for a special note you want to have pointed out.
}
\seealso{
% Pointers to related R objects, using \code{\link{...}} to refer to them.
}
% Examples of how to use the function.
% Examples are not only useful for documentation purposes, but also provide test code used for diagnostic checking of R code.
% By default, text will be displayed in the output of the help page and run by example() and by R CMD check.
% You can use \dontrun{} for text that should only be shown, but not run, and \dontshow{} for extra commands
% for testing that should not be shown to users, but will be run by example().
\examples{
  \dontrun{
    # default entity types
    walkedPath <- walk("syn1234")
    walkedPath$asList()
    # or 
    as.list(walkedPath)
    
    # Exclude tables and views
    walkedPath <- walk(synId="syn1234", includeTypes=c("file"))
    walkedPath$asList()
    # or 
    as.list(walkedPath)
    
    # Exclude files
    walkedPath <- walk(synId="syn1234", includeTypes=c("table"))
    walkedPath$asList()
    # or 
    as.list(walkedPath)
  }
}


