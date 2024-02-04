%
%  Auto-generated file, do not modify.
%  Instead, copy this file to the man/ folder, remove this warning, and edit freely.
%  Use Git to identify changes in this file which suggest where to change your edited copy.
%
\name{changeFileMetaData}
\alias{changeFileMetaData}
\docType{methods}
\title{
changeFileMetaData
}
\description{
Change File Entity metadata like the download as name.

Arguments:
    syn: A Synapse object with user's login, e.g. syn = synapseclient.login()
    entity: Synapse entity Id or object.
    contentType: Specify content type to change the content type of a filehandle.
    downloadAs: Specify filename to change the filename of a filehandle.
    forceVersion: Indicates whether the method should increment the version of
                    the object even if nothing has changed. Defaults to True.

Returns:
    Synapse Entity
}
\usage{
changeFileMetaData(syn, entity, downloadAs=NULL, contentType=NULL, forceVersion=TRUE)
}
\arguments{
\item{syn}{}
\item{entity}{}
\item{downloadAs}{}
\item{contentType}{}
\item{forceVersion}{}
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



