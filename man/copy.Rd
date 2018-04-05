\name{copy}
\alias{copy}
\docType{methods}
\title{
copy
}
\description{
- This function will assist users in copying entities (Tables, Links, Files, Folders, Projects),
  and will recursively copy everything in directories.
- A Mapping of the old entities to the new entities will be created and all the wikis of each entity
  will also be copied over and links to synapse Ids will be updated.
}
\usage{
copy(entity, destinationId, skipCopyWikiPage=FALSE, skipCopyAnnotations=FALSE, version=NULL, updateExisting=NULL, setProvenance=NULL, excludeTypes=NULL)
}
\arguments{
\item{entity}{              A synapse entity ID}
\item{destinationId}{       Synapse ID of a folder/project that the copied entity is being copied to}
\item{skipCopyWikiPage}{    Skip copying the wiki pages\cr
                            Default is False}
\item{skipCopyAnnotations}{ Skips copying the annotations\cr
                            Default is False}
\item{version}{optional named parameter:          Can specify version of a file. \cr
                        Default to None}
\item{updateExisting}{optional named parameter:   When the destination has an entity that has the same name, \cr
                        users can choose to update that entity.  \cr
                        It must be the same entity type\cr
                        Default to False}
\item{setProvenance}{optional named parameter:    Has three values to set the provenance of the copied entity:\cr
                            traceback: Sets to the source entity\cr
                            existing: Sets to source entity's original provenance (if it exists)\cr
                            None: No provenance is set}
\item{excludeTypes}{optional named parameter:     Accepts a list of entity types (file, table, link) which determines which entity types to not copy.\cr
                        Defaults to an empty list.}
}
\details{
% A detailed if possible precise description of the functionality provided, extending the basic information in the \description slot.
}
\value{
 a mapping between the original and copied entity: {'syn1234':'syn33455'}
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
    copy("syn1234", "syn33455")
  }
}



