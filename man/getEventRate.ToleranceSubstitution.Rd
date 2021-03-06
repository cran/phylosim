%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  PhyloSimSource.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

 \name{getEventRate.ToleranceSubstitution}
\alias{getEventRate.ToleranceSubstitution}
\alias{ToleranceSubstitution.getEventRate}
\alias{getEventRate,ToleranceSubstitution-method}

 \title{Get the scaled rate of an event from a ToleranceSubstitution object}

 \description{
	Get the scaled rate of an event from a ToleranceSubstitution object.

	This method return the element from the scaled rate matrix stored in the associated QMatrix object corresponding to
	a given event. The event can be specified by the inital and target states ("from" and "to" arguments), or by the
	event name ("from->to"). The event name takes precedence over the "from" and "to" arguments.

	This method doesn't take into account the site specific rate multipliers in any way.
 }

 \usage{
\method{getEventRate}{ToleranceSubstitution}(this, name=NA, from=NA, to=NA, ...)
}

 \arguments{
 	\item{this}{A ToleranceSubstitution object.}
	\item{name}{The name of the event.}
	\item{from}{The initial state.}
	\item{to}{Target state.}
 	\item{...}{Not used.}
 }

 \value{
 	A Numeric vector of length one.
 }

 \examples{
	# create a ToleranceSubstitution object
	# provide an Alphabet object and the rates
	p<-ToleranceSubstitution(alphabet=BinaryAlphabet(), rate.list=list("1->0"=1,"0->1"=1))
	# get the scaled rate of "0->1" by name
	getEventRate(p,"0->1")
	# get the scaled rate of "0->1" by states
	getEventRate(p,from="0",to="1")
 }

 \author{Botond Sipos, Gregory Jordan}

 \seealso{
 	For more information see \code{\link{ToleranceSubstitution}}.
 }
