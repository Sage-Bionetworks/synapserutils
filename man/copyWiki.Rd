\name{copyWiki}
\alias{copyWiki}
\docType{methods}
\title{
copyWiki
}
\description{
Copies wikis and updates internal links.
}
\usage{
copyWiki(entity, destinationId, entitySubPageId=NA, destinationSubPageId=NA, updateLinks=TRUE, updateSynIds=TRUE, entityMap=NA)

}
\arguments{
\item{entity}{                  A synapse ID of an entity whose wiki you want to copy}
\item{destinationId}{           Synapse ID of a folder/project that the wiki wants to be copied to}
\item{entitySubPageId}{         Can specify subPageId and copy all of its subwikis\cr
                                Defaults to NA, which copies the entire wiki\cr
                                subPageId can be found: https://www.synapse.org/#!Synapse:syn123/wiki/1234\cr
                                In this case, 1234 is the subPageId. }
\item{destinationSubPageId}{    Can specify destination subPageId to copy wikis to\cr
                                Defaults to NA.}
\item{updateLinks}{             Update all the internal links. (e.g. syn1234/wiki/34345 becomes syn3345/wiki/49508)\cr
                                Defaults to TRUE.}
\item{updateSynIds}{            Update all the synapse ID's referenced in the wikis. (e.g. syn1234 becomes syn2345)\cr
                                Defaults to TRUE but needs an entityMap.}
\item{entityMap}{               An entity map {'oldSynId','newSynId'} to update the synapse IDs referenced in the wiki\cr
                                Defaults to NA }
}
\details{
% A detailed if possible precise description of the functionality provided, extending the basic information in the \description slot.
}
\value{
 A list of Objects with three fields: id, title and parentId.
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
    copyWiki("syn123", "syn456")
  }
}



