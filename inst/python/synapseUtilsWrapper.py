import synapseutils

MAX_RETRIES = 4

# This class wraps the synapseutils methods that will be exposed in synapserutils.
class SynapseUtilsWrapper(object):

  def __init__(self, synapse):
    self.syn = synapse

  # All methods below share a common synapse object
  def changeFileMetaData(self, entity, downloadAs = None, contentType = None, forceVersion = True):
    return synapseutils.changeFileMetaData(self.syn, entity, downloadAs, contentType, forceVersion)

  def copy(self, entity, destinationId, skipCopyWikiPage = False, skipCopyAnnotations = False, **kwargs):
    return synapseutils.copy(self.syn, entity, destinationId, skipCopyWikiPage, skipCopyAnnotations, **kwargs)

  def copyFileHandles(self, fileHandles, associateObjectTypes, associateObjectIds, contentTypes, fileNames):
    return synapseutils.copyFileHandles(self.syn, fileHandles, associateObjectTypes, associateObjectIds, contentTypes, fileNames)

  def copyWiki(self, entity, destinationId, entitySubPageId = None, destinationSubPageId = None, updateLinks = True, updateSynIds = True, entityMap = None):
    return synapseutils.copyWiki(self.syn, entity, destinationId, entitySubPageId, destinationSubPageId, updateLinks, updateSynIds, entityMap)

  def syncFromSynapse(self, entity, path = None, ifcollision = 'overwrite.local', allFiles = None, followLink = False):
    return synapseutils.syncFromSynapse(self.syn, entity, path, ifcollision, allFiles, followLink)

  def syncToSynapse(self, manifestFile, dryRun = False, sendMessages = True, retries = MAX_RETRIES):
    return synapseutils.syncToSynapse(self.syn, manifestFile, dryRun, sendMessages, retries = MAX_RETRIES)

  def walk(self, synId):
    return synapseutils.walk(self.syn, synId)

  def generate_sync_manifest(self, directory_path, parent_id, manifest_path):
    return synapseutils.generate_sync_manifest(self.syn, directory_path, parent_id, manifest_path)
  
  def generateManifest(self, allFiles, filename, provenance_cache=None):
    return synapseutils.generateManifest(self.syn, allFiles, filename, provenance_cache)
