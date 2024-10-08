%
%  Auto-generated file, do not modify.
%  Instead, copy this file to the man/ folder, remove this warning, and edit freely.
%  Use Git to identify changes in this file which suggest where to change your edited copy.
%
\name{copyWiki}
\alias{copyWiki}
\docType{methods}
\title{
copyWiki
}
\description{
Copies wikis and updates internal links

Arguments:
    entity: A synapse ID of an entity whose wiki you want to copy
    destinationId: Synapse ID of a folder/project that the wiki wants to be copied to
    entitySubPageId: Can specify subPageId and copy all of its subwikis
                        Defaults to None, which copies the entire wiki subPageId can be found:
                        https://www.synapse.org/#!Synapse:syn123/wiki/1234
                        In this case, 1234 is the subPageId.
    destinationSubPageId: Can specify destination subPageId to copy wikis to.
    updateLinks: Update all the internal links.
                 (e.g. syn1234/wiki/34345 becomes syn3345/wiki/49508)
    updateSynIds: Update all the synapse ID's referenced in the wikis.
                    (e.g. syn1234 becomes syn2345)
                    Defaults to True but needs an entityMap
    entityMap: An entity map {'oldSynId','newSynId'} to update the synapse IDs
                referenced in the wiki.
                
Returns:
    A list of Objects with three fields: id, title and parentId.
}
\usage{
copyWiki(entity, destinationId, entitySubPageId=NULL, destinationSubPageId=NULL, updateLinks=TRUE, updateSynIds=TRUE, entityMap=NULL)
}
\arguments{
\item{entity}{}
\item{destinationId}{}
\item{entitySubPageId}{}
\item{destinationSubPageId}{}
\item{updateLinks}{}
\item{updateSynIds}{}
\item{entityMap}{}
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



