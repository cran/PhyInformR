\name{plotPosterior}
\alias{plotPosterior}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
A function to visualize outputs of QIRP, QIHP, and QIPP computed across a distribution of trees
}
\description{
A function to visualize outputs of QIRP, QIHP, and QIPP computed across a distribution of trees
}
\usage{
plotPosterior(final, plotType = "QIPs")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{final}{
output from su.bayes
}
  \item{plotType}{
type of plot, can be "QIPs" or "violin"
}
}
\value{
Returns a graphical visulatization of values of either calculation densitys (plot='QIPS') or kernel denstities and quartiles (plot='violin')
}
\references{
Townsend, J. P., Su, Z., and Tekle, Y. I. “Phylogenetic Signal and Noise: Predicting the Power of a Data Set to Resolve Phylogeny” Systematic biology 61, no. 5 (2012): 835–849.
Su, Z., Zhuo, S., Zheng, W., Francesc, L.-G., and Townsend, J. P. “The Impact of Incorporating Molecular Evolutionary Model into Predictions of Phylogenetic Signal and Noise” Frontiers in Ecology and Evolution 2, (2014): doi:10.3389/fevo.2014.00011, Available at http://dx.doi.org/10.3389/fevo.2014.00011
Su, Z. and Townsend, J. P. “Utility of Characters Evolving at Diverse Rates of Evolution to Resolve Quartet Trees with Unequal Branch Lengths: Analytical Predictions of Long-Branch Effects” BMC evolutionary biology 15, (2015): 86.
}
\author{
A. Dornburg
}

\examples{
library("ape")
read.tree(system.file("extdata","polypterus_trees.phy",package="PhyInformR"))->trees
trees<-trees[1:10]
as.matrix(rag1)->rates
quart<-c("Polypterus_congicus", "Polypterus_bichir", 
"Polypterus_ansorgii", "Polypterus_endlicheri")
a<-1
b<-1
c<-1
d<-1
e<-1
f<-1
Pi_T<-.25
Pi_C<-.25
Pi_A<-.25
Pi_G<-.25
##Not run
#su.bayes(a,b,c,d,e,f, Pi_T, Pi_C, Pi_A, Pi_G, rates, quart, trees)->final
#plotPosterior(final, plotType='violin')
##
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
