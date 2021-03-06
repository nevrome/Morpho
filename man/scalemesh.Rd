% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/scalemesh.r
\name{scalemesh}
\alias{scalemesh}
\title{scale a mesh of class "mesh3d"}
\usage{
scalemesh(mesh, size, center = c("bbox", "mean", "none"))
}
\arguments{
\item{mesh}{object of class "mesh3d"}

\item{size}{numeric: scale factor}

\item{center}{character: method to position center of mesh after scaling:
values are "bbox", and "mean". See Details for more info.}
}
\value{
returns a scaled mesh
}
\description{
scales (the vertices of a mesh by a scalar
}
\details{
The mesh's center is determined either as mean of the bounding box
(center="bbox") or mean of vertex coordinates (center="mean") and then
scaled according to the scaling factor. If center="none", vertex coordinates
will simply be multiplied by "size".
}
\examples{

data(nose)
#inflate mesh by factor 4
largenose <- scalemesh(shortnose.mesh,4)

}
\seealso{
\code{\link{rotmesh.onto}}
}
\author{
Stefan Schlager
}
