\name{copyFileHandles}
\alias{copyFileHandles}
\docType{methods}
\title{
copyFileHandles
}
\description{
Given a list of fileHandle Objects, copy the fileHandles
}
\usage{
copyFileHandles(fileHandles, associateObjectTypes, associateObjectIds, contentTypes, fileNames)
}
\arguments{
\item{fileHandles}{          List of fileHandle Ids or Objects}
\item{associateObjectTypes}{ List of associated object types: FileEntity, TableEntity, WikiAttachment, UserProfileAttachment, MessageAttachment, TeamAttachment, SubmissionAttachment, VerificationSubmission (Must be the same length as fileHandles)}
\item{associateObjectIds}{   List of associated object Ids: If copying a file, the objectId is the synapse id, and if copying a wiki attachment, the object id is the wiki subpage id. (Must be the same length as fileHandles)}
\item{contentTypes}{         List of content types (Can change a filetype of a filehandle).}
\item{fileNames}{            List of filenames (Can change a filename of a filehandle).}
}
\details{
% A detailed if possible precise description of the functionality provided, extending the basic information in the \description slot.
}
\value{
                     List of batch filehandle copy results, can include failureCodes: UNAUTHORIZED and NOT_FOUND
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
    copyFileHandles(list('19507670'), list('FileEntity'), list('syn11935399'), list('text'), list('newFile'))
  }
}



