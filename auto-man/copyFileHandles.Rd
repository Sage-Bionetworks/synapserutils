%
%  Auto-generated file, do not modify.
%  Instead, copy this file to the man/ folder, remove this warning, and edit freely.
%  Use Git to identify changes in this file which suggest where to change your edited copy.
%
\name{copyFileHandles}
\alias{copyFileHandles}
\docType{methods}
\title{
copyFileHandles
}
\description{
Given a list of fileHandle Ids or Objects, copy the fileHandles

Arguments:
    fileHandles: List of fileHandle Ids or Objects
    associateObjectTypes: List of associated object types: FileEntity, TableEntity,
                            WikiAttachment, UserProfileAttachment, MessageAttachment,
                            TeamAttachment, SubmissionAttachment, VerificationSubmission
                            (Must be the same length as fileHandles)
    associateObjectIds: List of associated object Ids: If copying a file,
                        the objectId is the synapse id, and if copying a wiki attachment,
                        the object id is the wiki subpage id.
                        (Must be the same length as fileHandles)
    newContentTypes: List of content types. Set each item to a new content type for each file
                        handle, or leave the item as None to keep the original content type.
                        Default None, which keeps all original content types.
    newFileNames: List of filenames. Set each item to a new filename for each file handle,
                    or leave the item as None to keep the original name. Default None,
                    which keeps all original file names.

Returns:
    List of batch filehandle copy results, can include failureCodes: UNAUTHORIZED and NOT_FOUND

Raises:
    ValueError: If length of all input arguments are not the same
}
\usage{
copyFileHandles(fileHandles, associateObjectTypes, associateObjectIds, contentTypes, fileNames)
}
\arguments{
\item{fileHandles}{}
\item{associateObjectTypes}{}
\item{associateObjectIds}{}
\item{contentTypes}{}
\item{fileNames}{}
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



