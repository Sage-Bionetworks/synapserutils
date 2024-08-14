\name{syncFromSynapse}
\alias{syncFromSynapse}
\docType{methods}
\title{
syncFromSynapse
}
\description{
Synchronizes a File entity, or a Folder entity, meaning all the files in a folder 
(including subfolders) from Synapse, and adds a readme manifest with file metadata.
}
\usage{
syncFromSynapse(entity, path=NULL, ifcollision="overwrite.local", allFiles=NULL, followLink=FALSE, manifest="all",
    downloadFile=TRUE)
}
\arguments{
\item{entity}{  A Synapse ID, a Synapse Entity object of type file, folder or project.}
\item{path}{An optional path where the file hierarchy will be reproduced. If not
            specified the files will by default be placed in the .synapseCache. A path
            is required in order to create a manifest file. A manifest is TSV file
            that is automatically created that contains metadata (annotations, storage
            location and provenance) of all downloaded files. If no files were
            downloaded, no manifest file will be created. Defaults to NULL.}
\item{ifcollision}{   Determines how to handle file collisions.
                      May be "overwrite.local", "keep.local", or "keep.both".
                      Defaults to "overwrite.local".}
\item{allFiles}{Deprecated and not to be used. This will be removed in the synapseclient v5.0.0.
                Defaults to NULL.}
\item{followLink}{  Determines whether the link returns the target Entity.
                    Defaults to FALSE.}
\item{manifest}{Determines whether creating manifest file automatically. The optional values are "all", "root", or "suppress". Defaults to "all".}
\item{downloadFile}{Determines whether downloading the files. Defaults to TRUE.}
}
\details{
% A detailed if possible precise description of the functionality provided, extending the basic information in the \description slot.
When entity is a Project or Folder, this function will crawl all subfolders
of the project/folder specified by `entity` and download all files that have
not already been downloaded. When entity is a File the function will download the
latest version of the file unless version is denoted in the synid with .version
notiation (e.g. syn123.1) If there are newer files in Synapse (or a local file\cr
has been edited outside of the cache) since the last download then local the file
will be replaced by the new file unless "ifcollision" is changed.

If the files are being downloaded to a specific location outside of the Synapse
cache a file (SYNAPSE_METADATA_MANIFEST.tsv) will also be added in the path that
contains the metadata (annotations, storage location and provenance of all\cr
downloaded files).

See also: syncToSynapse
}
\value{
 List of entities (files, tables, links)
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
    syncFromSynapse("syn123","path/to/your_folder")
  }
}



