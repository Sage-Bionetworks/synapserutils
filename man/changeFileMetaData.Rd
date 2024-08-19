\name{changeFileMetaData}
\alias{changeFileMetaData}
\docType{methods}
\title{
changeFileMetaData
}
\description{
Change File Entity metadata like the download as name.
}
\usage{
changeFileMetaData(entity, downloadAs=NA, contentType=NA, forceVersion=TRUE, name=NA)
}
\arguments{
\item{entity}{ Synapse entity Id or object.}
\item{downloadAs}{ Specify filename to change the filename of a filehandle. Defaults to NA.}
\item{contentType}{ Specify content type to change the content type of a filehandle. Defaults to NA.}
\item{forceVersion}{Indicates whether the method should increment the version of
                        the object even if nothing has changed. Defaults to TRUE.}
\item{name}{ Specify filename to change the filename of the file. Defaults to NA.}
}
\details{
% A detailed if possible precise description of the functionality provided, extending the basic information in the \description slot.
}
\value{
              Synapse Entity
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
    changeFileMetaData("syn123", downloadAs="index.html", contentType="text")
    
    # Can be used to change the filename, the filename when the file is downloaded,
    # or the file content-type without downloading
    changeFileMetaData("syn123", downloadAs="my_new_downloadAs_name_file.txt", name="my_new_name_file.txt")
  }
}



