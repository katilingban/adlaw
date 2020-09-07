################################################################################
#
#'
#' Produce a tidy dataframe of Scaling Up Nutrition Movement's progress reports
#' from 2011 to 2017
#'
#' Returns a tidy data frame of Scaling Up Nutrition Movement's published
#' annual progress reports from 2011 to 2017 with five columns: `text`, which
#' contains the text of the progress reports divided into elements of up to about
#' 70 characters each, `page`, which contains the page number to which the
#' `text` belongs to in the corresponding report, `linenumber`, which
#' contains the linenumber where the `text` can be found in the corresponding
#' report, `chapter`, which contains the chapter where the `text` can
#' be found in the corresponding report, and `year`, which contains the year
#' in which the corresponding report was released.
#'
#' @return A data frame with 5 columns: `text`, `page`, `linenumber`, `chapter`,
#'   `year`.
#'
#' @examples
#' progress_reports()
#'
#' @export
#'
#
################################################################################

progress_reports <- function() {
  ## Create concatenating object
  reports <- NULL

  ## Cycle through years of annual reports
  for(i in 2011:2017) {
    ## Get current progress report
    temp <- get(paste("progress_report_", i, sep = ""))

    ## Create year column
    temp$year <- i

    ## Concatenate reports
    reports <- rbind(reports, temp)
  }

  ## Convert to tibble
  reports <- tibble::tibble(reports)

  ## Return output
  return(reports)
}
