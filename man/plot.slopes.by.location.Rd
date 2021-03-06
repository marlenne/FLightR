% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data_preparation.R
\name{plot.slopes.by.location}
\alias{plot.slopes.by.location}
\title{plots log of observed vesus expected slope by time for a known location}
\usage{
plot.slopes.by.location(Proc.data, location, log.light.borders = "auto",
  log.irrad.borders = "auto")
}
\arguments{
\item{Proc.data}{processed data object generated by \code{\link{get.tags.data}}}

\item{location}{vector with langitude and latitude of calibration location (degrees).}

\item{log.light.borders}{Numeric vector with length of 2 for minimum and maximum log(light) levels to use. Default value 'auto', will take these values from the Proc.data object.}

\item{log.irrad.borders}{Numeric vector with length of 2 for minimum and maximum log(irradiance) values to use. Default value 'auto', will take these values from the Proc.data object.}
}
\description{
The function calculates and plots calibration slopes for sunsets and sunrises for every day of the tracking period, based on the assumption that the tag remained in the same (calibration) location all the time.
}
\details{
The plot of calibration slopes is used for finding start and end dates of a calibration period (the time period, during which the tag remained in the calibration location with coordinates (x,y)). During the calibration period, the calibration slopes vary little both, between the twilight events (sunrises and sunsets) and in time. When the tag changes location, the slopes for sunrises and sunsets start to deviate. There may potentially be several calibration periods for the same location (if the bird returned to the same location several times). The boundaries (start and end dates) of each of these periods are captured visually. If there were more than one calibration location, the procedure is repeated, once for each location. 
All the obtained calibration periods can be entered in a data frame 'Calibration.periods', for further analysis. Each line of the data frame contains start and end dates (if applicable) of the calibration period and geographic coordinates of the location.
}
\author{
Eldar Rakhimberdiev
}

