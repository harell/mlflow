# Setup -------------------------------------------------------------------
pkgload::load_all()
withr::with_envvar(list(
    R_CONFIG_ACTIVE = "databricks",
    R_CONFIG_FILE = system.file("inst", "mlflow.yml", package = pkgload::pkg_name(), mustWork = TRUE)
), {
    args <- config::get()
    for(i in seq_along(args))
        eval(parse(text = paste0("Sys.setenv(",names(args)[i],"='",args[[i]],"')")))
})


remotes::install_cran("mlflow")
# usethis::edit_r_environ("project")
# MLFLOW_TRACKING_URI=databricks
# DATABRICKS_USERNAME=your@email.com
# DATABRICKS_PASSWORD=1234

# https://docs.databricks.com/dev-tools/api/latest/authentication.html

# https://docs.conda.io/en/latest/miniconda.html

library(mlflow)
# mlflow::install_mlflow(python_version = "3.9")


# Start -------------------------------------------------------------------
# debug(mlflow:::mlflow_rest)
mlflow_log_param("param1", 5)
