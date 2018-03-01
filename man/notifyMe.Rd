%
%  Auto-generated file, do not modify.
%  Instead, copy this file to the man/ folder, remove this warning, and edit freely.
%  Use Git to identify changes in this file which suggest where to change your edited copy.
%
\name{notifyMe}
\alias{notifyMe}
\docType{methods}
\title{
notifyMe
}
\description{
Function decorator that notifies you via email whenever an function completes running or
there is a failure.
}
\usage{
notifyMe(messageSubject=, retries=0)
}
\arguments{
\item{messageSubject}{ A string with subject line for sent out messages.}
\item{retries}{ Number of retries to attempt on failure (default=0)}
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
  \dontrun{
      # to decorate a function that you define
      notifyMe('Long running function', retries=2)
      my_function <- function(x){
          doing_something()
          return long_runtime_func(x)
      }

      my_function(123)

      #############################
      # to wrap a function that already exists
      notify_decorator <- notifyMe('Long running query', retries=2)
      my_query <- notify_decorator(synTableQuery)
      results <- my_query("select id from syn1223")
  }
}



