
<!-- README.md is generated from README.Rmd. Please modify README.Rmd and run `pkgdown::build_site()` to update README.md -->

# synapserutils

The `synapserutils` package provides a set of utility functions, built
on top of the [`synapser`](http://sage-bionetworks.github.io/synapser/)
package.


## Requirements

- R version 4.1.3 or higher (tested up to R 4.5.2)
- Python version 3.9 to 3.11 (Python 3.12+ not yet supported due to reticulate compatibility)
- [Synapse account](https://www.synapse.org/#!RegisterAccount:0)
- [`synapser`](http://sage-bionetworks.github.io/synapser/) package (currently using synapser 2.1.5)

**Note:** Since we're using reticulate 1.28 to interface with the Synapse Python Client **synapser is only compatible with Python versions earlier than 3.12**. Using Python 3.12 or later may result in errors. We have fully tested and recommend using Python 3.10 for optimal compatibility.

## Installation

`synapserutils` is available as a ready-built package for Microsoft
Windows and Mac OSX. For Linux systems, it is available to install from
source. It can be installed or upgraded using the standard
`install.packages()` command, adding the [Sage Bionetworks R Archive
Network (RAN)](http://ran.synapse.org) to the repository list,
e.g.:

``` r
install.packages("synapserutils", repos=c("http://ran.synapse.org", "https://cloud.r-project.org"))
```

Alternatively, edit your `~/.Rprofile` and configure your default
repositories:

``` r
options(repos=c("http://ran.synapse.org", "https://cloud.r-project.org"))
```

after which you may run `install.packages` without specifying the
repositories:

``` r
install.packages("synapserutils")
```

If you have been asked to validate a release candidate, please replace
the URL <https://sage-bionetworks.github.io/ran> with
<https://sage-bionetworks.github.io/staging-ran>, that
is:

``` r
install.packages("synapserutils", repos=c("http://staging-ran.synapse.org", "https://cloud.r-project.org"))
```

## Usage

To get started, try logging into Synapse. If you don’t already have a
Synapse account, register [here](https://www.synapse.org/register):

``` r
library(synapserutils)
synLogin()
```

## Available Utilities

### Copy

#### Copy Entity (File, Folder, Table, Link, and Project)

The example below copies File ID `syn123` to Project ID `syn456`:

``` r
copy("syn123", "syn456")
```

The first parameter in `copy()` can be a File ID, a Table ID, or a Link
ID. The second parameter must be a Folder ID or a Project ID.

For more information on `copy()`, please see:

``` r
?copy
```

#### Copy Wiki and Wiki Subpage

To copy a wiki page that is associated with an Entity (Project/ File/
Folder/ Table) `syn123` to another Entity `syn789`:

``` r
copyWiki("syn123", "syn789")
```

For more information on `copyWiki()`, please see:

``` r
?copyWiki
```

### Batch Process

#### Upload Data in Bulk

`syncToSynapse()` takes a manifest file and uploads the files listed in
the manifest file to Synapse:

``` r
syncToSynapse("/path/to/manifest.tsv")
```

The manifest file format and instructions on how to create one can be
found
[here](http://docs.synapse.org/articles/uploading_in_bulk.html#creating-a-manifest)
and by:

``` r
?syncToSynapse
```

#### Download Data in Bulk

To recursively download all files within a container (Folder/ Project)
`syn123`:

``` r
syncFromSynapse("syn123")
```

More information on downloading data in bulk is available
[here](http://docs.synapse.org/articles/uploading_in_bulk.html#downloading-data-in-bulk)
and by:

``` r
?syncFromSynapse
```

### Other Utilites

To recursively getting Entity (File/ Folder/ Table/ Link/ Project)
metadata from a container (Folder/ Project):

``` r
walk("syn123")
```

For more information about `walk()`, please see:

``` r
?walk
```
