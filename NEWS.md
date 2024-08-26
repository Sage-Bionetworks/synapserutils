## synapserutils 1.2.0

### Improvements

* Update synapser dependency to support synapser 2.1.1.
* Now support R4.4.1.
* Updated reference documents and code examples for modified functions. 
* Improved performance for data upload and download.

#### Minor behavior changes: 

* Using version notation, such as syn123.1, is now supported in `syncFromSynapse`. 
* New parameters have been added to allow more features: 
  + Optional boolean parameters `merge_existing_annotations` and `associate_activity_to_new_version` have been added to `syncToSynapse`. Both are used to   give more fine tuned control when working with this interface.
  + Two optional parameters, `manifest` and `downloadFile`, have been added to `syncFromSynapse`, enabling manifest file creation and file download respectively.
  + The `includeTypes` has been added to `walk` function to specify entity types when traversing the hierarchy of files and folders stored under a synapse Id.
  + `changeFileMetaData` now allows changing file name.
  + Parameters in `copyFileHandles` has been renamed.

For more changes, please view the [Changelog](https://r-docs.synapse.org/news/index.html) on the synapser documentation and [Release Notes](https://python-docs.synapse.org/news/) on the synapseutils documentation.
