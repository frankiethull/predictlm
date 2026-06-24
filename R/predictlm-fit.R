#' Fit predictlm Tabular Foundation Model
#'
#' @param X x training data
#' @param y y training data
#' @param checkpoint "mini" or "base"
#' @param problem_type regression or classification
#' @param ... for predictlm additional parameters
#'
#' @returns a predictlm fit
#'
#' @export
predictlm_fit <- \(
  X,
  y,
  checkpoint = "mini",
  problem_type = "classification",
  ...
) {
  X <- as.matrix(X)

  if (checkpoint == 'mini') {
    model_ckpt <- .pkg_env$predictlm$PredictLM$from_pretrained(
      "zerooneresearch/predictlm-mini-13m"
    )
  } else if (checkpoint == 'base') {
    model_ckpt <- .pkg_env$predictlm$PredictLM$from_pretrained(
      "zerooneresearch/predictlm-base-26m"
    )
  }

  if (problem_type == "classification") {
    #    cls <- .pkg_env$predictlm$PredictLM(
    #      ...
    #    )

    fit <- model_ckpt$fit(
      X,
      y
    )
  } else if (problem_type == "regression") {
    fit <- model_ckpt$fit(
      X,
      y
    )
  }

  return(fit)
}
