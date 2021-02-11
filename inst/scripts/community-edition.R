# Setup -------------------------------------------------------------------
pkgload::load_all()

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
debug(mlflow:::mlflow_rest)
mlflow_log_param("param1", 5)
