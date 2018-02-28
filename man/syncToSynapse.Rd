%
%  Auto-generated file, do not modify.
%  Instead, copy this file to the man/ folder, remove this warning, and edit freely.
%  Use Git to identify changes in this file which suggest where to change your edited copy.
%
\name{syncToSynapse}
\alias{syncToSynapse}
\docType{methods}
\title{
syncToSynapse
}
\description{
Synchronizes files specified in the manifest file to Synapse
}
\usage{
syncToSynapse(syn, manifestFile, dryRun=FALSE, sendMessages=TRUE, retries=4)
}
\arguments{
\item{syn}{    A synapse object as obtained with syn = synapseclient.login()}
\item{manifestFile}{ A tsv file with file locations and metadata\cr
                      to be pushed to Synapse.  See below for details}
\item{dryRun}{ Performs validation without uploading if set to True (default is False)}
\item{sendMessages}{}
\item{retries}{}
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



