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
syncToSynapse(manifestFile, dryRun=FALSE, sendMessages=TRUE, retries=4)
}
\arguments{
\item{manifestFile}{ A tsv file with file locations and metadata\cr
                      to be pushed to Synapse.  See below for details}
\item{dryRun}{ Performs validation without uploading if set to True (default is False)}
\item{sendMessages}{}
\item{retries}{}
}
\details{
% A detailed if possible precise description of the functionality provided, extending the basic information in the \description slot.

Given a file describing all of the uploads, uploads the content to Synapse and optionally notifies you via Synapse messagging (email) at specific intervals, on errors and on completion.

Manifest File Format:

The format of the manifest file is a tab delimited file with one row per file to upload and columns describing the file. The minimum required columns are path and parent where path is the local file path and parent is the synapse Id of the project or folder where the file is uploaded to. In addition to these columns you can specify any of the parameters to the File constructor (name, synapseStore, contentType) as well as parameters to the syn.store command (used, executed, activityName, activityDescription, forceVersion). Used and executed can be semi-colon (”;”) separated lists of Synapse ids, urls and/or local filepaths of files already stored in Synapse (or being stored in Synapse by the manifest). Any additional columns will be added as annotations.

Required fields:

\tabular{lll}{
  Field \tab Meaning \tab Example \cr
  path \tab local file path or URL \tab /path/to/local/file.txt \cr
  parent \tab synapse id \tab syn1235
}

Common fields:

\tabular{lll}{
  Field \tab Meaning \tab Example \cr
  name \tab name of file in Synapse \tab Example_file \cr
  forceVersion \tab whether to update version \tab False
}

Provenance fields:

\tabular{lll}{
  Field \tab Meaning \tab Example \cr
  used \tab List of items used to generate file \tab syn1235; /path/to_local/file.txt \cr
  executed \tab List of items exectued \tab https://github.org/; /path/to_local/code.py \cr
  activityName \tab Name of activity in provenance \tab “Ran normalization” \cr
  activityDescription \tab Text description on what was done \tab “Ran algorithm xyx with parameters...”
}

Annotations:

Any columns that are not in the reserved names described above will be intepreted as annotations of the file.

Other optional fields:

\tabular{lll}{
  Field \tab Meaning \tab Example \cr
  synapseStore \tab Boolean describing whether to upload files \tab True \cr
  contentType \tab content type of file to overload defaults \tab text/html
}

Example manifest file:

\tabular{llllll}{
  path \tab parent \tab annot1 \tab annot2 \tab used \tab executed \cr
  /path/file1.txt \tab syn1243 \tab “bar” \tab 3.1415 \tab “syn124; /path/file2.txt” \tab “https://github.org/foo/bar“ \cr
  /path/file2.txt \tab syn12433 \tab “baz” \tab 2.71 \tab “” \tab “https://github.org/foo/baz“
}

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
  syncToSynapse("/path/to/manifest.tsv")
}



