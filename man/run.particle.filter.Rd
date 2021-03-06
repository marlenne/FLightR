% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/run_particle_filter.R
\name{run.particle.filter}
\alias{run.particle.filter}
\title{Run Particle Filter}
\usage{
run.particle.filter(all.out, cpus = NULL, threads = -1,
  nParticles = 1e+06, known.last = T, precision.sd = 25,
  behav.mask.low.value = 0, k = NA, parallel = T, plot = T,
  cluster.type = "PSOCK", a = 45, b = 1500, L = 90,
  adaptive.resampling = 0.99, check.outliers = F, sink2file = F,
  add.jitter = FALSE)
}
\arguments{
\item{all.out}{An object created by \code{\link{make.prerun.object}}.}

\item{cpus}{another way to specify  \code{threads}}

\item{threads}{An amount of threads to use while running in parallel. default is -1.}

\item{nParticles}{total amount of particles to be used with the run. 10 000 (1e4) is recommended for the preliminary run and 1 000 000 (1e6) for the final}

\item{known.last}{Set to FALSE if your bird was not at a known place during last twilight in the data}

\item{precision.sd}{if \code{known.last} then what is the precision of this information. Will be used to resample particles prportionally to their ditance from the known last point with probability \code{P = dnorm(0, precision.sd)}}

\item{behav.mask.low.value}{Probability value that will be used instead of 0 in the behavioural mask. If set to 1 behavioural mask will not be active anymore}

\item{k}{Kappa parameter from vonMises distribution. Default is NA, otherwise will generate particles in a direction of a previous transitions with kappa = k}

\item{parallel}{Should function create a cluster and run in parallel?}

\item{plot}{Should function plot preliminary map in the end of the run?}

\item{cluster.type}{see help to package parallel for details}

\item{a}{minimum distance that is used in the movement model - left boundary for truncated normal distribtuon of ditances moved between twilights. Default is 45 for as default grid has a minimum ditance of 50 km.}

\item{b}{Maximum distance allowed to fly between two consequtive twilights}

\item{L}{how many consequitive particles to resample}

\item{adaptive.resampling}{Above what level of ESS resampling should be skipped}

\item{check.outliers}{switches ON the online outlier routine}

\item{sink2file}{will write run details in a file instead of showing on the screen}

\item{add.jitter}{will add spatial jitter inside a grid cell for the median estiamtes}
}
\value{
FLightR object, containing output and extracted results. It is a list with the following elements 

   \item{Indices}{List with prior information and indices}
   \item{Spatial}{Spatial data - Grid, Mask, spatial likelihood}
   \item{Calibration}{all calibration parameters}
   \item{Data}{original data}
   \item{Results}{The main results object. Main components of it are
      \describe{
      \item{Quantiles}{dataframe containing results on locations. Each line corresponds to a twilight}
      \item{Movement.results}{dataframe containing all the movement results, Note - time at line n means time of the end of transition between n and n-1}
      \item{outliers}{id of twilights excluded by online outlier detection tool}
      \item{LL}{-Log likelihood}
      \item{Points.rle}{run length encoding object with posterior distribution for every twilight. Note that numbers of points correspond to line numbers in \code{$Spatial$Grid}}
      \item{Transitions.rle}{run length encoding object with all the transitions}
       }
  }
}
\description{
Main function of FLightR, it takes fully prepared object created by \code{\link{make.prerun.object}} and produces a result object that can be used for plotiing etc.
}
\author{
Eldar Rakhimberdiev
}

