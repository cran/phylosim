%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  ./PhyloSimSource.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{clone.PSRoot}
\alias{clone.PSRoot}
\alias{PSRoot.clone}
\alias{clone.PSRoot}
\alias{clone,PSRoot-method}


\title{Clones an Object}

\description{
 Creates an identical copy of the object and returns a reference to the
 new object.

 This is a modified version of the \code{\link{clone.Object}} method from the
 \code{\link{R.oo}} package.
}

\usage{\method{clone}{PSRoot}(this, ...)}

\arguments{
  \item{this}{An object inheriting from PSRoot.}
  \item{...}{Not used.}
}

\value{
  A reference to the new object.
}

\examples{
  o1 <- PSRoot()
  o2 <- clone(o1)

  print(equals(o1, o2))
}

\details{
  Please note that no constructors are called during the creation of the
  clone and neither is any static class code called.
}

\seealso{
  For more information see \code{\link{PSRoot}}.
}

\author{Botond Sipos}
