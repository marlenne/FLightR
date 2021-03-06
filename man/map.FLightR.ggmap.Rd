% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/new_plotting_functions.R
\name{map.FLightR.ggmap}
\alias{map.FLightR.ggmap}
\title{plots result over map}
\usage{
map.FLightR.ggmap(Result, dates = NULL, plot.cloud = TRUE,
  map.options = NULL, plot.options = NULL, save.options = NULL,
  zoom = "auto", return.ggobj = FALSE, seasonal.colors = TRUE,
  seasonal.donut.location = "topleft", seasonal.donut.proportion = 0.5)
}
\arguments{
\item{Result}{FLightR result object obtained from \code{\link{run.particle.filter}}}

\item{dates}{either NULL if all twilights should be included or data.frame with first colum - start of the period and second end of the period. Each line represents a new period}

\item{plot.cloud}{Shlould probability cloud be plotted? If TRUE cloud is estimated by \code{\link[ggplot2]{stat_density2d}}}

\item{map.options}{options passed to \code{\link[ggmap]{get_map}}, note that \code{zoom} option is defined separately}

\item{plot.options}{plotting options. Not defined yet!}

\item{save.options}{ptions passed to \code{\link[ggplot2]{ggsave}}. Filename should be defined here.}

\item{zoom}{Zoom for map. If 'auto' FLightR will try to find optimal zoom level by downloading different size maps and checking whether all the points fit the map.}

\item{return.ggobj}{Should ggobj be returned for subsequent checks and/or replotting}

\item{seasonal.colors}{if true points of the track will have seasonal colors}

\item{seasonal.donut.location}{if NULL - no color wheel placed, otherwise select one of 'bottomleft', 'bottomright', 'topleft'}

\item{seasonal.donut.proportion}{how much of X axis should color wheel occupy.
return either NULL or ggplot2 class object}
}
\description{
plots track over map with probability cloud. Can plot only part of the track if dates are specified
}

