#' PredictLM Predictions
#'
#' @param fit a fitted model
#' @param data a dataset
#' @param type 'raw'
#' @param ... for passing parameters to the predict method
#'
#' @returns predictions
#'
#' @export
predictlm_predict <- \(fit, data, type = 'raw', ...) {
  data <- as.matrix(data)
  if (type == 'raw') {
    predictions <- fit$predict(data, ...)
  }
  return(predictions)
}
