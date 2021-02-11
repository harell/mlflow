.onAttach <- function(...) {#nocov start
    file <- system.file(".Renviron", package = pkgload::pkg_name(), mustWork = FALSE)
    suppressWarnings(try(readRenviron(file), silent = TRUE))

    options(
        usethis.quiet = TRUE
    )
}#nocov end
