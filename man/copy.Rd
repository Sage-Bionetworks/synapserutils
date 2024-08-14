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
copy(entity, destinationId, skipCopyWikiPage=FALSE, skipCopyAnnotations=FALSE, version=NULL, updateExisting=FALSE, setProvenance=NULL, excludeTypes=NULL)
}
\arguments{
\item{entity}{              A synapse entity ID}
\item{destinationId}{       Synapse ID of a folder/project that the copied entity is being copied to}
\item{skipCopyWikiPage}{    Skip copying the wiki pages\cr
                            Default is FALSE.}
\item{skipCopyAnnotations}{ Skips copying the annotations\cr
                            Default is FALSE.}
\item{version}{Optional named parameter. (File copy only) Can specify version of a file. Defaults to NULL.}
\item{updateExisting}{Optional named parameter. 
                      (File copy only) When the destination has an entity that has the same name, 
                      users can choose to update that entity. It must be the same entity type Defaults to FALSE.}
\item{setProvenance}{Optional named parameter. (File copy only) Has three values to set the provenance of the copied entity: \cr
                     \bold{traceback}: Sets to the source entity \cr \bold{existing}: Sets to source entity's original provenance (if it exists) \cr
                     \bold{None}: No provenance is set}
\item{excludeTypes}{Optional named parameter. (Folder/Project copy only) Accepts a list of entity types (file, table, link) which determines which entity types to not copy. Defaults to an empty list.}
}
\details{
% A detailed if possible precise description of the functionality provided, extending the basic information in the \description slot.
}
\value{
 A mapping between the original and copied entity: {'syn1234':'syn33455'}
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
    # copying files
    copy(syn, "syn12345", "syn45678", updateExisting=False, setProvenance = "traceback",version = None)
    
    # copying Folders/Projects
    copy(syn, "syn123450", "syn345678", excludeTypes = list("file","table"))
  }
}



