.pkg_env <- new.env()

.pkg_env$predictlm <- NULL

.onLoad <- function(...) {
  reticulate::py_require(c("predictlm", "huggingface_hub"))
  .pkg_env$predictlm <- reticulate::import(
    "predictlm",
    delay_load = TRUE
  )
}
