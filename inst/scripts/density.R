# Setup -------------------------------------------------------------------
pkgload::load_all()
remotes::install_cran("mlflow")
library(mlflow)
withr::with_envvar(list(
    R_CONFIG_ACTIVE = "density",
    R_CONFIG_FILE = system.file("inst", "mlflow.yml", package = pkgload::pkg_name(), mustWork = TRUE)
), {
    args <- config::get()
    for(i in seq_along(args))
        eval(parse(text = paste0("Sys.setenv(",names(args)[i],"='",args[[i]],"')")))
})

# Start -------------------------------------------------------------------
debug(mlflow:::mlflow_rest)
mlflow_log_param("param1", 5)
