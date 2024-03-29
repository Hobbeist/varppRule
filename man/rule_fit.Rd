% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rule_fit.R
\name{rule_fit}
\alias{rule_fit}
\title{The RuleFit function}
\usage{
rule_fit(
  HPO_genes,
  HPO_term_name = "custom",
  type = "gtex",
  ntree = 200,
  max.depth = 3,
  rule.filter = 10,
  bootstrap.rounds = 100,
  rule.extract.cores = 4,
  kappa.cores = 2,
  lasso.cores = 4
)
}
\arguments{
\item{HPO_genes}{HPO term associated list of genes, or any list of patient genes.}

\item{HPO_term_name}{In case the model is for one specific HPO term, this can be provided, otherwise it is assigned as "custom"}

\item{type}{the prediction data; either hcl (single cell) or gtex (tissue specific).}

\item{ntree}{number of trees to be built, defaults to 200.}

\item{max.depth}{maximum tree depth, defaults to 3.}

\item{rule.filter}{filter the top n rules based on kappa statistic. If NULL, the rules are filter above a kappa of 0.05.}

\item{bootstrap.rounds}{number of bootstrap rounds for the outer loop of the LASSO cross-validation, defaults to 100.}

\item{rule.extract.cores}{number of cores for parallel, defaults to 4. This is specifically for the varpp rule extract step (less memory hungry than the cv.glmnet step).}

\item{kappa.cores}{number of cores used for the rule filtering by kappa. This needs to be separate, as it is quite memory intensive when the input + rule data is very large. Defaults to 2.}

\item{lasso.cores}{number of cores for the cv.glmnet step, as this is quite memory hungry, it is separated.}
}
\value{
A list of predictions for the outcome. Further, a variable importance list for all rules and variables tested.
}
\description{
RuleFit creates variant predictions and human interpretable rules
}
