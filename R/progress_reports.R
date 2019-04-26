################################################################################
#
#' progress_reports
#'
#' Tidy dataframe of Scaling Up Nutrition Movement's progress reports from 2011
#' to 2017
#'
#' Returns a tidy data frame of Scaling Up Nutrition Movement's published
#' annual progress reports from 2011 to 2017 with five columns: \code{text}, which
#' contains the text of the progress reports divided into elements of up to about
#' 70 characters each, \code{page}, which contains the page number to which the
#' \code{text} belongs to in the corresponding report, \code{linenumber}, which
#' contains the linenumber where the \code{text} can be found in the corresponding
#' report, \code{chapter}, which contains the chapter where the \code{text} can
#' be found in the corresponding report, and \code{year}, which contains the year
#' in which the corresponding report was released.
#'
#' @return A data frame with 5 columns: \code{text}, \code{page}, \code{linenumber},
#' \code{chapter}, \code{year}.
#'
#' @examples
#' #
#'
#' @export
#'
#
################################################################################

progress_reports <- function() {
  #
  # Create concatenating object
  #
  reports <- NULL
  #
  # Cycle through years of annual reports
  #
  for(i in 2011:2017) {
    #
    # Get current progress report
    #
    temp <- get(paste("progress_report_", i, sep = ""))
    #
    # Create year column
    #
    temp$year <- i
    #
    # Concatenate reports
    #
    reports <- rbind(reports, temp)
  }
  #
  # Convert to tibble
  #
  reports <- tibble::as.tibble(reports)
  #
  # Return output
  #
  return(reports)
}
