% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/varpp_for_rulefit.R
\name{varpp_for_rulefit}
\alias{varpp_for_rulefit}
\title{varpp: extract rules from ranger trees}
\usage{
varpp_for_rulefit(dat, ntree, max.depth, cores)
}
\arguments{
\item{dat}{this is a data list returned from the function load_gtex_or_hcl. It is either GTEx tissue specific gene expression or HCL cell specific expression}

\item{ntree}{is the number of trees that should be built for ranger. It defaults to 1000}

\item{max.depth}{is the maximum tree depth for the ranger trees. IT defaults to 3.}

\item{cores}{number of cores for parallel, defaults to 4}
}
\description{
This function is meant to only be used internally for the rule_fit function
}
