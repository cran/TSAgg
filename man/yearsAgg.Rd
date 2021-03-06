\name{yearsAgg}
\alias{yearsAgg}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Yearly aggregation function
}
\description{ This function allows for the aggregation of non-continuos time series data into years. It allows for the multiple years to be specified. The aggregation method is also allowed to be set by the user. It also allows for the aggregation block to start at first observation or from the start of the year.
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
yearsAgg(data, process, multiple = NULL, na.rm = FALSE,from.first.obs = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{data}{ A \code{\link{timeSeries}} formatted dataset.
%%     ~~Describe \code{data} here~~
}
  \item{process}{ An aggregation method. See \code{aggregate}.
%%     ~~Describe \code{process} here~~
}
  \item{multiple}{ An integer specifying the aggregation block. Default
%%     ~~Describe \code{multiple} here~~
}
  \item{na.rm}{ Default is na.rm=FALSE.
%%     ~~Describe \code{na.rm} here~~
}
  \item{from.first.obs}{ Wether the years start from the first observation or from the beginning of the year. Default is from.first.obs=TRUE.
%%     ~~Describe \code{from.first.obs} here~~
}
}
\details{ This function is based on the \code{aggregate} method. It is designed to simplify the process of aggregating non-continuos data.
%%  ~~ If necessary, more details than the description above ~~
}
\value{ Returns a data.frame with dates formatted as \code{as.Date} and aggregated data.
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

\seealso{ \code{aggregate}
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
##Load the foo data
data(foo)
##Format the data using the timeSeries function. 
foo.ts<-timeSeries(foo[,1],  "\%d/\%m/\%Y   \%H:\%M",foo[,3])
##Aggregate the data into years from first observation
year.mean <-yearsAgg(foo.ts,mean)
plot(year.mean)
##Now plot the min mean and max on one plot.
year.min <-yearsAgg(foo.ts,min)
year.max <-yearsAgg(foo.ts,max)
ymin=min(year.min$data);ymax=max(year.max$data)
plot(year.mean,ylim=c(ymin,ymax))
lines(year.min,type="l",lty=3,col="red")
lines(year.max,type="l",lty=3,col="blue")
}

