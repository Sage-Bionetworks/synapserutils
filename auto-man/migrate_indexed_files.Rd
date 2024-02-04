%
%  Auto-generated file, do not modify.
%  Instead, copy this file to the man/ folder, remove this warning, and edit freely.
%  Use Git to identify changes in this file which suggest where to change your edited copy.
%
\name{migrate_indexed_files}
\alias{migrate_indexed_files}
\docType{methods}
\title{
migrate_indexed_files
}
\description{
Migrate files previously indexed in a sqlite database at the given db_path using the separate
index_files_for_migration function. The files listed in the index will be migrated according to the
configuration of that index.

Arguments:
    syn: A Synapse object with user's login, e.g. syn = synapseclient.login()
    db_path: A path on disk where a sqlite db was created using the index_files_for_migration function.
    create_table_snapshots: When updating the files in any table, whether the a snapshot of the table is
                            first created.
    continue_on_error: Whether any errors encountered while migrating will be raised
                        or instead just recorded in the sqlite database while allowing the migration
                        to continue. Default is False (any errors are raised).
    force: If running in an interactive shell, migration requires an interactice confirmation.
            This can be bypassed by using the force=True option.

Returns:
    A MigrationResult object that can be used to inspect the results of the migration.
}
\usage{
migrate_indexed_files(syn, db_path, create_table_snapshots=TRUE, continue_on_error=FALSE, force=FALSE)
}
\arguments{
\item{syn}{}
\item{db_path}{}
\item{create_table_snapshots}{}
\item{continue_on_error}{}
\item{force}{}
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



