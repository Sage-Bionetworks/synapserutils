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
Synchronizes files specified in the manifest file to Synapse.

Given a file describing all of the uploads, this uploads the content to Synapse and
optionally notifies you via Synapse messagging (email) at specific intervals, on
errors and on completion.

[Read more about the manifest file format](../../explanations/manifest_tsv/)

There are a few conversions around annotations to call out here.

## Conversion of annotations from the TSV file to Python native objects

The first annotation conversion is from the TSV file into a Python native object. For
example Pandas will read a TSV file and convert the string "True" into a boolean True,
however, Pandas will NOT convert our comma delimited and bracket wrapped list of
annotations into their Python native objects. This means that we need to do that
conversion here after splitting them apart.

## Conversion of Python native objects for the REST API

The second annotation conversion occurs when we are taking the Python native objects
and converting them into a string that can be sent to the REST API. For example
the datetime objects which may have timezone information are converted to milliseconds
since epoch.

Arguments:
    syn: A Synapse object with user's login, e.g. syn = synapseclient.login()
    manifestFile: A tsv file with file locations and metadata to be pushed to Synapse.
    dryRun: Performs validation without uploading if set to True.
    sendMessages: Sends out messages on completion if set to True.

Returns:
    None
}
\usage{
syncToSynapse(syn, manifestFile, dryRun=FALSE, sendMessages=TRUE, retries=4)
}
\arguments{
\item{syn}{}
\item{manifestFile}{}
\item{dryRun}{}
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



