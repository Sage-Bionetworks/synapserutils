%
%  Auto-generated file, do not modify.
%  Instead, copy this file to the man/ folder, remove this warning, and edit freely.
%  Use Git to identify changes in this file which suggest where to change your edited copy.
%
\name{syncFromSynapse}
\alias{syncFromSynapse}
\docType{methods}
\title{
syncFromSynapse
}
\description{
Synchronizes all the files in a folder (including subfolders) from Synapse and adds a readme manifest with file metadata.
}
\usage{
syncFromSynapse(entity, path=NULL, ifcollision=overwrite.local, allFiles=NULL, followLink=FALSE)
}
\arguments{
\item{entity}{  A Synapse ID, a Synapse Entity object of type folder or project.}
\item{path}{ An optional path where the file hierarchy will be\cr
             reproduced.  If not specified the files will by default\cr
             be placed in the synapseCache.}
\item{ifcollision}{   Determines how to handle file collisions.\cr
                      May be "overwrite.local", "keep.local", or "keep.both".\cr
                      Defaults to "overwrite.local".}
\item{allFiles}{}
\item{followLink}{  Determines whether the link returns the target Entity.\cr
                    Defaults to False}
}
\details{
% A detailed if possible precise description of the functionality provided, extending the basic information in the \description slot.
}
\value{
 list of entities (files, tables, links)
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
  syncFromSynapse("syn123")
}



