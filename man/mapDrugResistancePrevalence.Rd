% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/public.R
\name{mapDrugResistancePrevalence}
\alias{mapDrugResistancePrevalence}
\title{Map prevalence of Drug resistance}
\usage{
mapDrugResistancePrevalence(
  ctx,
  sampleSet,
  drugs = "ALL",
  aggregate = 1,
  minAggregateCount = 10,
  showNames = TRUE,
  markerSize = 16,
  width = 15,
  height = 15
)
}
\arguments{
\item{ctx}{The analysis context, created by intializeContext().}

\item{sampleSet}{The name of the sample set being used; must have been previusly created by selectSampleSet().}

\item{drugs}{An array of drugs for which prevalence of resistance will be estimated; "ALL" creats maps for all the drugs for which we have resistance predictions.}

\item{aggregate}{The administrative level at which we aggregate}

\item{minAggregateCount}{The minimum count of aggregated samples, below which a marker is not shown.}

\item{showNames}{If TRUE, labels are shown with the name of the aggregation unit (Province or District)}

\item{markerSize}{Allows adjustment of the size of markers on the map.}

\item{width}{The width (in inches) of the map image.}

\item{height}{The heigt (in inches) of the map image.}
}
\description{
Creates a map showing the levels of resistance to a particular drug for different administrative divisions.
If multiple drugs are specified, then different maps will be created for different drugs.
The predictions of resistance for any given drugs are aggregated at the desired administrative level: Province (level 1), or District (level2) and separate maps are created.
For each aggregation unit, we place a marker on the map, coloured according to the level of resistance to the drug, with a label indicating the prevalence.
To avoid estimating on very small samples, one can set a minimum count of samples, below which the marker is not shown.
}
\examples{
#TBD
}