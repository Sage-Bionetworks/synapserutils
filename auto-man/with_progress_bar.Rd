%
%  Auto-generated file, do not modify.
%  Instead, copy this file to the man/ folder, remove this warning, and edit freely.
%  Use Git to identify changes in this file which suggest where to change your edited copy.
%
\name{with_progress_bar}
\alias{with_progress_bar}
\docType{methods}
\title{
with_progress_bar
}
\description{
Wraps a function to add a progress bar based on the number of calls to that function.
}
\usage{
with_progress_bar(func, totalCalls, prefix=, postfix=, isBytes=FALSE, prefix=NULL)
}
\arguments{
\item{func}{ Function being wrapped with progress Bar\cr
}
\item{totalCalls}{ total number of items/bytes when completed\cr
}
\item{prefix}{ String printed before progress bar\cr
}
\item{postfix}{}
\item{isBytes}{ A boolean indicating weather to convert bytes to kB, MB, GB etc.}
\item{prefix}{optional named parameter:  String printed after progress bar\cr
}
}
\details{
% A detailed if possible precise description of the functionality provided, extending the basic information in the \description slot.
}
\value{
 a wrapped function that contains a progress bar
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



