\name{timeSeries}
\alias{timeSeries}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Function to create a TSAgg formatted object.}
\description{ This function is required to organise the data into the required structure for all functions of the package TSAgg.
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
timeSeries(dates, dateformat, data = NULL,tz="GMT")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{dates}{ A vector, or data.frame of one column of dates. 
%%     ~~Describe \code{dates} here~~
}
  \item{dateformat}{ A string indicating the format of the dates (e.g. "%d/%m%y"). See also \code{strptime}
%%     ~~Describe \code{dateformat} here~~
}
  \item{data}{ A vector or data.frame of data. Must be the same length as dates column.

}
  \item{tz}{A character string specifying the time zone to be used. If not specified the system tz may be used. This is different on each OS, therefore it is recommended that this is supplied. Default is GMT.
}
}

\value{ Returns a data.frame with dates formatted as \code{as.POSIXlt} and data, if provided.
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}

\author{ Jason Lessels <jason.lessels@sydney.edu.au>
%%  ~~who you are~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{ \code{strptime}
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
#Load the dataset foo:
data(foo)
#Look at the dataset foo for the date string format:
head(foo)
foo.ts <- timeSeries(foo[,1],"\%d/\%m/\%Y   \%H:\%M",foo[,3])
#Try entering data manually into the function:
one.date <- timeSeries("08-09-30","\%y-\%m-\%d",4)
#Look at the results:
one.date

}

