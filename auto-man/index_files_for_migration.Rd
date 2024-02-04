%
%  Auto-generated file, do not modify.
%  Instead, copy this file to the man/ folder, remove this warning, and edit freely.
%  Use Git to identify changes in this file which suggest where to change your edited copy.
%
\name{index_files_for_migration}
\alias{index_files_for_migration}
\docType{methods}
\title{
index_files_for_migration
}
\description{
Index the given entity for migration to a new storage location. This is the first step in migrating an entity
to a new storage location using synapseutils.

This function will create a sqlite database at the given db_path that can be subsequently passed
to the migrate_indexed_files function for actual migration. This function itself does not modify the given entity
in any way.

Arguments:
    syn: A Synapse object with user's login, e.g. syn = synapseclient.login()
    entity: A Synapse entity whose files should be migrated. Can be a Project, Folder,
            File entity, or Table entity. If it is a container (a Project or Folder)
            its contents will be recursively indexed.
    dest_storage_location_id: The id of the new storage location to be migrated to.
    db_path: A path on disk where a sqlite db can be created to store the contents of the
                created index.
    source_storage_location_ids: An optional iterable of storage location ids that
                                    will be migrated. If provided, files outside of
                                    one of the listed storage locations will not be
                                    indexed for migration. If not provided, then all
                                    files not already in the destination storage
                                    location will be indexed for migrated.
    file_version_strategy: One of "new" (default), "all", "latest", "skip" as follows:

        - `new`: will create a new version of file entities in the new storage location, leaving existing versions unchanged
        - `all`: all existing versions will be migrated in place to the new storage location
        - `latest`: the latest version will be migrated in place to the new storage location
        - `skip`: skip migrating file entities. use this e.g. if wanting to e.g. migrate table attached files in a container while leaving the files unchanged
    include_table_files: Whether to migrate files attached to tables. If False (default) then e.g. only
                            file entities in the container will be migrated and tables will be untouched.
    continue_on_error: Whether any errors encountered while indexing an entity (access etc) will be raised
                            or instead just recorded in the index while allowing the index creation
                            to continue. Default is False (any errors are raised).

Returns:
    A MigrationResult object that can be used to inspect the contents of the index or output the index to a CSV for manual inspection.
}
\usage{
index_files_for_migration(syn, entity, dest_storage_location_id, db_path, source_storage_location_ids=NULL, file_version_strategy=new, include_table_files=FALSE, continue_on_error=FALSE)
}
\arguments{
\item{syn}{}
\item{entity}{}
\item{dest_storage_location_id}{}
\item{db_path}{}
\item{source_storage_location_ids}{}
\item{file_version_strategy}{}
\item{include_table_files}{}
\item{continue_on_error}{}
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



