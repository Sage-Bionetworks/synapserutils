---
output: github_document
---

<!-- README.md is generated from README.Rmd. Please modify README.Rmd and run `pkgdown::build_site()` to update README.md -->



# synapserutils

The `synapserutils` package provides a set of utility functions, built on top of the [`synapser`](http://sage-bionetworks.github.io/synapser/) package.

## Installation

`synapserutils` is available as a ready-built package for Microsoft Windows and Mac OSX. For Linux systems, it is available to install from source. It can be installed or upgraded using the standard `install.packages()` command, adding the [Sage Bionetworks R Archive Network (RAN)](https://sage-bionetworks.github.io/ran) to the repository list, e.g.:


```r
install.packages("synapserutils", repos=c("https://sage-bionetworks.github.io/ran", "http://cran.fhcrc.org"))
```
Alternatively, edit your `~/.Rprofile` and configure your default repositories:

```r
options(repos=c("https://sage-bionetworks.github.io/ran", "http://cran.fhcrc.org"))
```
after which you may run `install.packages` without specifying the repositories:

```r
install.packages("synapserutils")
```

If you have been asked to validate a release candidate, please replace the URL https://sage-bionetworks.github.io/ran with https://sage-bionetworks.github.io/staging-ran, that is:


```r
install.packages("synapserutils", repos=c("https://sage-bionetworks.github.io/staging-ran", "http://cran.fhcrc.org"))
```

## Usage

To get started, try logging into Synapse. If you don't already have a Synapse account, register [here](https://www.synapse.org/register):


```r
library(synapserutils)
synLogin()
```

## Available Utilities

### Copy

#### Copy Entity (File, Folder, Table, Link, and Project)

The example below copies File ID `syn123` to Project ID `syn456`:

```r
copy("syn123", "syn456")
```

The first parameter in `copy()` can be a File ID, a Table ID, or a Link ID. The second parameter must be a Folder ID or a Project ID.

For more information on `copy()`, please see:

```r
?copy
```

#### Copy Wiki and Wiki Subpage

To copy a wiki page that is associated with an Entity (Project/ File/ Folder/ Table) `syn123` to another Entity `syn789`:

```r
copyWiki("syn123", "syn789")
```

For more information on `copyWiki()`, please see:

```r
?copyWiki
```

### Batch Process

#### Upload Data in Bulk

`syncToSynapse()` takes a manifest file and uploads the files listed in the manifest file to Synapse:

```r
syncToSynapse("/path/to/manifest.tsv")
```

The manifest file format and instructions on how to create one can be found [here](http://docs.synapse.org/articles/uploading_in_bulk.html#creating-a-manifest) and by:

```r
?syncToSynapse
```

#### Download Data in Bulk

To recursively download all files within a container (Folder/ Project) `syn123`:

```r
syncFromSynapse("syn123")
```

More information on downloading data in bulk is available [here](http://docs.synapse.org/articles/uploading_in_bulk.html#downloading-data-in-bulk) and by:

```r
?syncFromSynapse
```

### Other Utilites

To recursively getting Entity (File/ Folder/ Table/ Link/ Project) metadata from a container (Folder/ Project):

```r
walk("syn123")
```

For more information about `walk()`, please see:

```r
?walk
```
