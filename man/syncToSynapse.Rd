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
}
\usage{
syncToSynapse(manifestFile, dryRun=FALSE, sendMessages=TRUE, retries=4, merge_existing_annotations=TRUE, associate_activity_to_new_version=FALSE)
}
\arguments{
\item{manifestFile}{ A tsv file with file locations and metadata\cr
                      to be pushed to Synapse.  See Details for manifest file format.}
\item{dryRun}{ Performs validation without uploading if set to True. Defaults to FALSE.)}
\item{sendMessages}{Sends out messages on completion if set to True. Defaults to TRUE.}
\item{retries}{Number of retries to attempt if an error occurs. Defaults to 4.}
\item{merge_existing_annotations}{If True, will merge the annotations in the manifest file with the existing annotations on Synapse. If False, will overwrite the existing annotations on Synapse with the annotations in the manifest file. Defaults to TRUE.}
\item{associate_activity_to_new_version}{If True, and a version update occurs, the existing activity in Synapse will be associated with the new version. The exception is if you are specifying new values to be used/executed, it will create a new activity for the new version of the entity. Defaults to FALSE.}


}
\details{
% A detailed if possible precise description of the functionality provided, extending the basic information in the \description slot.
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
  \dontrun{
    # synchronizes files
    syncToSynapse("/path/to/manifest.tsv")
    
    # add an annotation
    df <- read.table('/path/to/manifest.tsv', header = T)
    df["species"] = "Homo sapiens"
    write.table(df, file='/path/to/manifest.tsv', sep='\t', row.names = FALSE)
    syncToSynapse('/path/to/manifest.tsv')
    
    # update the annotation
    df["species"] = "Human"
    write.table(df, file='/path/to/manifest.tsv', sep='\t', row.names = FALSE)
    syncToSynapse('/path/to/manifest.tsv', merge_existing_annotations = TRUE)
    
    # overwrite the annotation
    df["species"] = "Homo sapiens"
    write.table(df, file='/path/to/manifest.tsv', sep='\t', row.names = FALSE)
    syncToSynapse('/path/to/manifest.tsv', merge_existing_annotations = FALSE)
    
    # create an Activity/Provenance for the first files
    # create a relationship between two files. 
    # In this example, the second file in the manifest is used to generate the first file
    df[1, "used"] = df[2,]$path 
    
    # link to the tool that is used to produce the results in the first file
    df[1, "executed"] = "https://nf-co.re/rnaseq/3.14.0"
    
    # add a description for this Activity/Provenance
    df[1, "activityDescription"] = "Experiment results created as a result of the linked data while running the pipeline."
    write.table(df, file='/path/to/manifest.tsv', sep='\t', row.names = FALSE)
    syncToSynapse('/path/to/manifest.tsv')
    
    # associate Activity/Provenance with the newer version 
    # after changing the content or metadata of the file
    syncToSynapse('/path/to/manifest.tsv', associate_activity_to_new_version=TRUE)
  }
}



