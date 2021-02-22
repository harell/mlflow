# Setup -------------------------------------------------------------------
pkgload::load_all()
remotes::install_cran("mlflow")
library(mlflow)

# https://docs.databricks.com/dev-tools/api/latest/authentication.html
# https://docs.conda.io/en/latest/miniconda.html
# browseURL("https://community.cloud.databricks.com/")


# Start -------------------------------------------------------------------
# debug(mlflow:::mlflow_rest)
mlflow_log_param("param1", 5)
