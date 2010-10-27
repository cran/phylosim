%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  ./PhyloSimSource.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

 \name{plot.PhyloSim}
\alias{plot.PhyloSim}
\alias{PhyloSim.plot}
\alias{plot.PhyloSim}
\alias{plot,PhyloSim-method}


 \title{Plot a PhyloSim object}

 \description{
	Plot a PhyloSim object.

       This method plots the aggregated alignment alongside the tree used for simulation. Various options
       allow for control over the plot style.

 }

 \usage{\method{plot}{PhyloSim}(x, plot.tree, plot.ancestors, plot.chars, plot.legend, plot.labels, aspect.ratio, num.pages, char.text.size, axis.text.size, color.scheme, color.branches, ...)}

 \arguments{
 	\item{x}{A PhyloSim object.}
 	\item{plot.tree}{Whether to plot the tree alongside the alignment. TRUE or FALSE; defaults to TRUE.}
 	\item{plot.ancestors}{Whether to plot the ancestral sequences. TRUE or FALSE; defaults to TRUE.}
 	\item{plot.chars}{Whether to plot the actual text of the characters.}
 	\item{plot.legend}{Whether to plot the legend showing the character-to-color mapping.}
 	\item{plot.labels}{Whether to plot the sequence labels along the y-axis}
 	\item{aspect.ratio}{Constraints the alignment residues to have a certain aspect ratio; values above 1 cause vertically-stretched blocks. FALSE disables aspect ratio control, numerical values set the aspect ratio; defaults to FALSE.}
 	\item{num.pages}{Optionally split the alignment over a number of vertically-stacked pages. This is useful for long alignments. 'auto' chooses a sensible number of pages, numerical values specify a number; defaults to 'auto'.}
 	\item{char.text.size}{Text size for the aligned characters. This may require tweaking depending on the DPI and output format. Defaults to 'auto'.}
 	\item{axis.text.size}{Text size for the sequence labels along the y-axis. This may require tweaking depending on the DPI and output format. Defaults to 'auto'.}
       \item{color.scheme}{Color scheme to use ("auto", "binary", "dna", "protein", "codon", "everything").}
       \item{color.branches}{The event count used to color the branches ("substitutions" by default). See \code{\link{getBranchEvents.PhyloSim}}.}
 	\item{...}{Not used.}
 }

 \value{
 	The PhyloSim object (invisible).
 }

 \examples{
	# Create a PhyloSim object.
	# Provide the phylo object
	# and the root sequence.
	sim<-PhyloSim(
		name="TinySim",
		phylo=rcoal(3),
		root.seq=NucleotideSequence(string="ATGCTAGCTAGG",processes=list(list(JC69())))
	);
       # plot the aggregated phylo object
       plot(sim)
	# run simulation
	Simulate(sim)
       # Plot the alignment without the tree or ancestral sequences.
       plot(sim, plot.ancestors=FALSE, plot.tree=FALSE)
       # Force a DNA-based color scheme (default is 'auto' to auto-detect based on the sequence composition)
       plot(sim, color.scheme='dna', plot.legend=TRUE)
 }

 \author{Botond Sipos}

 \seealso{
 	For more information see \code{\link{PhyloSim}}.
 }
