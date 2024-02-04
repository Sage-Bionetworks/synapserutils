%
%  Auto-generated file, do not modify.
%  Instead, copy this file to the man/ folder, remove this warning, and edit freely.
%  Use Git to identify changes in this file which suggest where to change your edited copy.
%
\name{copy}
\alias{copy}
\docType{methods}
\title{
copy
}
\description{
- This function will assist users in copying entities
    (
    [Tables][synapseclient.table.Table],
    [Links][synapseclient.entity.Link],
    [Files][synapseclient.entity.File],
    [Folders][synapseclient.entity.Folder],
    [Projects][synapseclient.entity.Project]
    ),
  and will recursively copy everything in directories.
- A Mapping of the old entities to the new entities will be created and all the wikis of each entity
  will also be copied over and links to synapse Ids will be updated.

Arguments:
    syn: A Synapse object with user's login, e.g. syn = synapseclient.login()
    entity: A synapse entity ID
    destinationId: Synapse ID of a folder/project that the copied entity is being copied to
    skipCopyWikiPage: Skip copying the wiki pages.
    skipCopyAnnotations: Skips copying the annotations.
    version: (File copy only) Can specify version of a file. Default to None
    updateExisting: (File copy only) When the destination has an entity that has the same name,
                    users can choose to update that entity. It must be the same entity type
                    Default to False
    setProvenance: (File copy only) Has three values to set the provenance of the copied entity:
                    traceback: Sets to the source entity
                    existing: Sets to source entity's original provenance (if it exists)
                    None: No provenance is set
    excludeTypes: (Folder/Project copy only) Accepts a list of entity types (file, table, link)
                    which determines which entity types to not copy. Defaults to an empty list.

Returns:
    A mapping between the original and copied entity: {'syn1234':'syn33455'}
}
\usage{
copy(syn, entity, destinationId, skipCopyWikiPage=FALSE, skipCopyAnnotations=FALSE)
}
\arguments{
\item{syn}{}
\item{entity}{}
\item{destinationId}{}
\item{skipCopyWikiPage}{}
\item{skipCopyAnnotations}{}
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

}



