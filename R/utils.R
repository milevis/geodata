
noWrnMsg <- function(x){
  suppressWarnings(suppressMessages(x))
}

`%||%` <- function (x, y)
{
  if (is.empty(x))
    return(y)
  else if (is.null(x) || is.na(x))
    return(y)
  else if (class(x) == "character" && nchar(x) == 0)
    return(y)
  else x
}

is.empty <- function (x)
{
  !as.logical(length(x))
}

file_path_sans_ext <- function (x){
  sub("([^.]+)\\.[[:alnum:]]+$", "\\1", x)
}

url_exists <- function(x, printUrl = FALSE){
  r <- !httr::http_error(x)
  if(printUrl)
    message(r, ": ", x)
  r
}
