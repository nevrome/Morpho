% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/name2.r
\name{name2factor}
\alias{name2factor}
\alias{name2num}
\title{extract data from array names}
\usage{
name2factor(x, sep = "_", which, collapse = sep, as.factor = TRUE)

name2num(x, sep = "_", which, collapse = sep, dif = TRUE)
}
\arguments{
\item{x}{data, can be a three-dimensional array, a matrix, a named list or a
vector containing names to split}

\item{sep}{character by which to split the strings}

\item{which}{integer or vector of integers, if more entries are selected,
they will be concatenated by the string specified with the option
'collapse'.}

\item{collapse}{character by which to collapse data if two strings are to be
concatenated}

\item{as.factor}{logical: if TRUE, a factor vector will be returned, strings otherwise.}

\item{dif}{logical: calculate difference if two fields containing numbers
are selected.}
}
\value{
returns a vector containing factors or numbers
}
\description{
extract data from array names
}
\details{
extract data from array names and convert to factors or numbers

If an array is used as input, the data info is expected to be in the 3rd
dimension, for a matrix, rownames are used.
}
\examples{


data <- matrix(rnorm(200),100,2)
id <- paste("id",1:100,sep="")
pop <- c(rep("pop1",50),rep("pop2",50))
sex <- c(rep("male",50),rep("female",50))
age <- floor(rnorm(100,mean=50,sd=10))
rownames(data) <- paste(id,pop,sex,age,sep="_")
infos <- data.frame(pop=name2factor(data,which=2))
infos$age <- name2num(data,which=4)
infos$pop.sex <- name2factor(data,which=2:3)


}
\author{
Stefan Schlager
}
