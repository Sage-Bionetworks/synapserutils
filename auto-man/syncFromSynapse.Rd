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
Synchronizes a File entity, or a Folder entity, meaning all the files in a folder
(including subfolders) from Synapse, and adds a readme manifest with file metadata.

There are a few conversions around annotations to call out here.

## Conversion of objects from the REST API to Python native objects

The first annotation conversion is to take the annotations from the REST API and
convert them into Python native objects. For example the REST API will return a
milliseconds since epoch timestamp for a datetime annotation, however, we want to
convert that into a Python datetime object. These conversions take place in the
[annotations module][synapseclient.annotations].


## Conversion of Python native objects into strings

The second annotation conversion occurs when we are writing to the manifest TSV file.
In this case we need to convert the Python native objects into strings that can be
written to the manifest file. In addition we also need to handle the case where the
annotation value is a list of objects. In this case we are converting the list
into a single cell of data with a comma `,` delimiter wrapped in brackets `[]`.

Arguments:
    entity: A Synapse ID, a Synapse Entity object of type file, folder or
            project.
    path: An optional path where the file hierarchy will be reproduced. If not
          specified the files will by default be placed in the synapseCache.
    ifcollision: Determines how to handle file collisions. Maybe
                 "overwrite.local", "keep.local", or "keep.both".
    followLink: Determines whether the link returns the target Entity.
    manifest: Determines whether creating manifest file automatically. The
              optional values here (`all`, `root`, `suppress`).
    downloadFile: Determines whether downloading the files.

Returns:
    List of entities ([files][synapseclient.File],
        [tables][synapseclient.Table], [links][synapseclient.Link])


When entity is a Project or Folder, this function will crawl all subfolders
of the project/folder specified by `entity` and download all files that have
not already been downloaded. When entity is a File the function will download the
latest version of the file unless version is denoted in the synid with .version
notiation (e.g. syn123.1) If there are newer files in Synapse (or a local file
has been edited outside of the cache) since the last download then local the file
will be replaced by the new file unless "ifcollision" is changed.

If the files are being downloaded to a specific location outside of the Synapse
cache a file (SYNAPSE_METADATA_MANIFEST.tsv) will also be added in the path that
contains the metadata (annotations, storage location and provenance of all
downloaded files).

See also:

- [synapseutils.sync.syncToSynapse][]
}
\usage{
syncFromSynapse(entity, path=NULL, ifcollision=overwrite.local, allFiles=NULL, followLink=FALSE)
}
\arguments{
\item{entity}{}
\item{path}{}
\item{ifcollision}{}
\item{allFiles}{}
\item{followLink}{}
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



