\name{generate_sync_manifest}
\alias{generate_sync_manifest}
\docType{methods}
\title{
generate_sync_manifest
}
\description{
Generate manifest for syncToSynapse() from a local directory.
}
\usage{
generate_sync_manifest(directory_path, parent_id, manifest_path)
}
\arguments{
\item{directory_path}{      The local directory for the data to be uploaded }
\item{parent_id}{       A Synapse ID of a folder that the data is being uploaded to}
\item{manifest_path}{       The filepath to the manifest file to be generated}
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
syncToSynapse()
}
% Examples of how to use the function.
% Examples are not only useful for documentation purposes, but also provide test code used for diagnostic checking of R code.
% By default, text will be displayed in the output of the help page and run by example() and by R CMD check.
% You can use \dontrun{} for text that should only be shown, but not run, and \dontshow{} for extra commands
% for testing that should not be shown to users, but will be run by example().
\examples{
  \dontrun{
    generate_sync_manifest(directory_path = '/path/to/folder', parent_id = 'syn1234', manifest_path = 'path/to/manifest_file.tsv')
  }
}



