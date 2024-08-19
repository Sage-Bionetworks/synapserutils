import typing

import synapseutils
from synapseclient import Entity

MAX_RETRIES = 4

# This class wraps the synapseutils methods that will be exposed in synapserutils.
class SynapseUtilsWrapper(object):

  def __init__(self, synapse):
    self.syn = synapse

  # All methods below share a common synapse object
  def changeFileMetaData(
    self,
    entity: typing.Union[str, Entity],
    downloadAs: str = None,
    contentType: str = None,
    forceVersion: bool = True,
  ) -> Entity:
    """
    Change File Entity metadata like the download as name.

    Arguments:
        entity: Synapse entity Id or object.
        contentType: Specify content type to change the content type of a filehandle.
        downloadAs: Specify filename to change the filename of a filehandle.
        forceVersion: Indicates whether the method should increment the version of
                        the object even if nothing has changed. Defaults to True.

    Returns:
        Synapse Entity
    """
    return synapseutils.changeFileMetaData(self.syn, entity, downloadAs, contentType, forceVersion)

  def copy(self, entity, destinationId, skipCopyWikiPage = False, skipCopyAnnotations = False, **kwargs):
    """
    - This function will assist users in copying entities
        (
        [Tables][synapseclient.table.Table],
        [Links][synapseclient.entity.Link],
        [Files][synapseclient.entity.File],
        [Folders][synapseclient.entity.Folder],
        [Projects][synapseclient.entity.Project]
        ),
      and will recursively copy everything in directories.
    - A Mapping of the old entities to the new entities will be created and all the wikis of each entity
      will also be copied over and links to synapse Ids will be updated.

    Arguments:
        entity: A synapse entity ID
        destinationId: Synapse ID of a folder/project that the copied entity is being copied to
        skipCopyWikiPage: Skip copying the wiki pages.
        skipCopyAnnotations: Skips copying the annotations.
        version: (File copy only) Can specify version of a file. Default to None
        updateExisting: (File copy only) When the destination has an entity that has the same name,
                        users can choose to update that entity. It must be the same entity type
                        Default to False
        setProvenance: (File copy only) Has three values to set the provenance of the copied entity:
                        traceback: Sets to the source entity
                        existing: Sets to source entity's original provenance (if it exists)
                        None: No provenance is set
        excludeTypes: (Folder/Project copy only) Accepts a list of entity types (file, table, link)
                        which determines which entity types to not copy. Defaults to an empty list.

    Returns:
        A mapping between the original and copied entity: {'syn1234':'syn33455'}
    """
    return synapseutils.copy(self.syn, entity, destinationId, skipCopyWikiPage, skipCopyAnnotations, **kwargs)

  def copyFileHandles(self, fileHandles, associateObjectTypes, associateObjectIds, contentTypes, fileNames):
    """
    Given a list of fileHandle Ids or Objects, copy the fileHandles

    Arguments:
        fileHandles: List of fileHandle Ids or Objects
        associateObjectTypes: List of associated object types: FileEntity, TableEntity,
                                WikiAttachment, UserProfileAttachment, MessageAttachment,
                                TeamAttachment, SubmissionAttachment, VerificationSubmission
                                (Must be the same length as fileHandles)
        associateObjectIds: List of associated object Ids: If copying a file,
                            the objectId is the synapse id, and if copying a wiki attachment,
                            the object id is the wiki subpage id.
                            (Must be the same length as fileHandles)
        newContentTypes: List of content types. Set each item to a new content type for each file
                            handle, or leave the item as None to keep the original content type.
                            Default None, which keeps all original content types.
        newFileNames: List of filenames. Set each item to a new filename for each file handle,
                        or leave the item as None to keep the original name. Default None,
                        which keeps all original file names.

    Returns:
        List of batch filehandle copy results, can include failureCodes: UNAUTHORIZED and NOT_FOUND

    Raises:
        ValueError: If length of all input arguments are not the same
    """
    return synapseutils.copyFileHandles(self.syn, fileHandles, associateObjectTypes, associateObjectIds, contentTypes, fileNames)

  def copyWiki(self, entity, destinationId, entitySubPageId = None, destinationSubPageId = None, updateLinks = True, updateSynIds = True, entityMap = None):
    """
    Copies wikis and updates internal links

    Arguments:
        entity: A synapse ID of an entity whose wiki you want to copy
        destinationId: Synapse ID of a folder/project that the wiki wants to be copied to
        updateLinks: Update all the internal links.
                     (e.g. syn1234/wiki/34345 becomes syn3345/wiki/49508)
        updateSynIds: Update all the synapse ID's referenced in the wikis.
                        (e.g. syn1234 becomes syn2345)
                        Defaults to True but needs an entityMap
        entityMap: An entity map {'oldSynId','newSynId'} to update the synapse IDs
                    referenced in the wiki.
        entitySubPageId: Can specify subPageId and copy all of its subwikis
                            Defaults to None, which copies the entire wiki subPageId can be found:
                            https://www.synapse.org/#!Synapse:syn123/wiki/1234
                            In this case, 1234 is the subPageId.
        destinationSubPageId: Can specify destination subPageId to copy wikis to.

    Returns:
        A list of Objects with three fields: id, title and parentId.
    """
    return synapseutils.copyWiki(self.syn, entity, destinationId, entitySubPageId, destinationSubPageId, updateLinks, updateSynIds, entityMap)

  def syncFromSynapse(self, entity, path = None, ifcollision = 'overwrite.local', allFiles = None, followLink = False):
    """Synchronizes a File entity, or a Folder entity, meaning all the files in a folder
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
    """
    return synapseutils.syncFromSynapse(self.syn, entity, path, ifcollision, allFiles, followLink)

  def syncToSynapse(self, manifestFile, dryRun = False, sendMessages = True, retries = MAX_RETRIES):
    """Synchronizes files specified in the manifest file to Synapse.

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
        manifestFile: A tsv file with file locations and metadata to be pushed to Synapse.
        dryRun: Performs validation without uploading if set to True.
        sendMessages: Sends out messages on completion if set to True.

    Returns:
        None
    """
    return synapseutils.syncToSynapse(self.syn, manifestFile, dryRun, sendMessages, retries = retries)

  def walk(self, synId):
    """
    Traverse through the hierarchy of files and folders stored under the synId.
    Has the same behavior as os.walk()

    Arguments:
        synId: A synapse ID of a folder or project
        includeTypes: Must be a list of entity types (ie.["file", "table"])
                        The "folder" type is always included so the hierarchy can be traversed
    """
    return synapseutils.walk(self.syn, synId)

  def generate_sync_manifest(self, directory_path, parent_id, manifest_path):
    """Generate manifest for [syncToSynapse][synapseutils.sync.syncToSynapse] from a local directory.

    Arguments:
        directory_path: Path to local directory to be pushed to Synapse.
        parent_id: Synapse ID of the parent folder/project on Synapse.
        manifest_path: Path to the manifest file to be generated.

    Returns:
        None
    """
    return synapseutils.generate_sync_manifest(self.syn, directory_path, parent_id, manifest_path)
  
  def generateManifest(self, allFiles, filename, provenance_cache=None):
    """Generates a manifest file based on a list of entities objects.

    Arguments:
        allFiles: A list of File Entity objects on Synapse (can't be Synapse IDs)
        filename: file where manifest will be written
        provenance_cache: an optional dict of known provenance dicts keyed by entity
                          ids
    Returns:
        None
    """
    return synapseutils.sync.generateManifest(self.syn, allFiles, filename, provenance_cache)
