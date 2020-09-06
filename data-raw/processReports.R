################################################################################
#
# Load required libraries
#
################################################################################

library(pdftools)
library(tm)
library(stringr)
library(dplyr)
library(tidytext)


################################################################################
#
# Process 2011 report
#
################################################################################

x <- pdf_text(pdf = "data-raw/reports/progress/2011-ENGLISH-SUN-Progress-Report-FINAL-VERSION.pdf")
x <- str_split(x, pattern = "\n")

##
report1 <- NULL

for(i in 1:length(x)) {
  ## extract text from current page
  temp <- data_frame(text = x[[i]], page = rep(i, length(x[[i]])))

  ## remove page number
  temp <- temp[-(nrow(temp) - 1), ]

  ## Concatenate report1
  report1 <- rbind(report1, temp)
}

## add linenumber and chapters
report1 <- mutate(.data = report1,
                  linenumber = row_number(),
                  chapter = cumsum(str_detect(text, regex("^chapter [\\divxlc]",
                                                          ignore_case = TRUE))))

## Remove page 1 and page 2 (cover page and table of contents)
report1 <- subset(report1, !page %in% 1:2)

##
report1 <- mutate(.data = report1,
                  linenumber = row_number(),
                  chapter = cumsum(str_detect(text, regex("^chapter [\\divxlc]",
                                                          ignore_case = TRUE))))

##
progress_report_2011 <- report1

##
remotes::use_data(progress_report_2011, overwrite = TRUE)


################################################################################
#
# Process 2012 report
#
################################################################################

x <- pdf_text(pdf = "data-raw/reports/progress/SUN-MP-REPORT_EN.pdf")
x <- str_split(x, pattern = "\n")

##
report2 <- NULL

for(i in 1:length(x)) {
  ## extract text from current page
  temp <- data_frame(text = x[[i]], page = rep(i, length(x[[i]])))

  ## remove page number
  temp <- temp[-(nrow(temp) - 1), ]

  ## Concatenate report2
  report2 <- rbind(report2, temp)
}

## add linenumber and chapters
report2 <- mutate(.data = report2,
                  linenumber = row_number(),
                  chapter = cumsum(str_detect(text, regex("^chapter [\\divxlc]",
                                                          ignore_case = TRUE))))

## Remove page 1 and page 2 (cover page and table of contents)
report2 <- subset(report2, !page %in% 1:5)

##
report2 <- mutate(.data = report2,
                  linenumber = row_number(),
                  chapter = cumsum(str_detect(text, regex("^chapter [\\divxlc]",
                                                          ignore_case = TRUE))))

##
progress_report_2012 <- report2

##
remotes::use_data(progress_report_2012, overwrite = TRUE)


################################################################################
#
# Process 2013 report
#
################################################################################

x <- pdf_text(pdf = "data-raw/reports/progress/SUN-Progress-Report-2013-EN.pdf")
x <- str_split(x, pattern = "\n")

##
report3 <- NULL

for(i in 1:length(x)) {
  temp <- data_frame(text = x[[i]], page = rep(i, length(x[[i]])))

  ## remove page number
  temp <- temp[-(nrow(temp) - 1), ]
  report3 <- rbind(report3, temp)
}

## add linenumber and chapters
report3 <- mutate(.data = report3,
                  linenumber = row_number(),
                  chapter = cumsum(str_detect(text, regex("^chapter [\\divxlc]",
                                                          ignore_case = TRUE))))

## Remove page 1 and page 2 (cover page and table of contents)
report3 <- subset(report3, !page %in% 1:4)

##
report3 <- mutate(.data = report3,
                  linenumber = row_number(),
                  chapter = cumsum(str_detect(text, regex("^chapter [\\divxlc]",
                                                          ignore_case = TRUE))))

##
progress_report_2013 <- report3

##
remotes::use_data(progress_report_2013, overwrite = TRUE)


################################################################################
#
# Process 2014 report
#
################################################################################

x <- pdf_text(pdf = "data-raw/reports/progress/SUN_Progress-Report_ENG_20141024_web_pages03.pdf")
x <- str_split(x, pattern = "\n")

##
report4 <- NULL

for(i in 1:length(x)) {
  temp <- data_frame(text = x[[i]], page = rep(i, length(x[[i]])))

  ## remove page number
  temp <- temp[-(nrow(temp) - 1), ]
  report4 <- rbind(report4, temp)
}

## add linenumber and chapters
report4 <- mutate(.data = report4,
                  linenumber = row_number(),
                  chapter = cumsum(str_detect(text, regex("^chapter [\\divxlc]",
                                                          ignore_case = TRUE))))

## Remove page 1 and page 2 (cover page and table of contents)
report4 <- subset(report4, !page %in% 1:6)

##
report4 <- mutate(.data = report4,
                  linenumber = row_number(),
                  chapter = cumsum(str_detect(text, regex("^chapter [\\divxlc]",
                                                          ignore_case = TRUE))))

##
progress_report_2014 <- report4

##
remotes::use_data(progress_report_2014, overwrite = TRUE)


################################################################################
#
# Process 2015 report
#
################################################################################

x <- pdf_text(pdf = "data-raw/reports/progress/SUN_AnnualReport2015_EN.pdf")
x <- str_split(x, pattern = "\n")

##
report5 <- NULL

for(i in 1:length(x)) {
  temp <- data_frame(text = x[[i]], page = rep(i, length(x[[i]])))

  ## remove page number
  temp <- temp[-(nrow(temp) - 1), ]
  report5 <- rbind(report5, temp)
}

## add linenumber and chapters
report5 <- mutate(.data = report5,
                  linenumber = row_number(),
                  chapter = cumsum(str_detect(text, regex("^chapter [\\divxlc]",
                                                          ignore_case = TRUE))))

## Remove page 1 and page 2 (cover page and table of contents)
report5 <- subset(report5, !page %in% 1:4)

##
report5 <- mutate(.data = report5,
                  linenumber = row_number(),
                  chapter = cumsum(str_detect(text, regex("^chapter [\\divxlc]",
                                                          ignore_case = TRUE))))

##
progress_report_2015 <- report5

##
remotes::use_data(progress_report_2015, overwrite = TRUE)


################################################################################
#
# Process 2016 report
#
################################################################################

x <- pdf_text(pdf = "data-raw/reports/progress/SUN_Report_20161129_web_All.pdf")
x <- str_split(x, pattern = "\n")

##
report6 <- NULL

for(i in 1:length(x)) {
  temp <- data_frame(text = x[[i]], page = rep(i, length(x[[i]])))

  ## remove page number
  temp <- temp[-(nrow(temp) - 1), ]
  report6 <- rbind(report6, temp)
}

## add linenumber and chapters
report6 <- mutate(.data = report6,
                  linenumber = row_number(),
                  chapter = cumsum(str_detect(text, regex("^chapter [\\divxlc]",
                                                          ignore_case = TRUE))))

## Remove page 1 and page 2 (cover page and table of contents)
report6 <- subset(report6, !page %in% 1:11)

##
report6 <- mutate(.data = report6,
                  linenumber = row_number(),
                  chapter = cumsum(str_detect(text, regex("^chapter [\\divxlc]",
                                                          ignore_case = TRUE))))

##
progress_report_2016 <- report6

##
remotes::use_data(progress_report_2016, overwrite = TRUE)


################################################################################
#
# Process 2017 report
#
################################################################################

x <- pdf_text(pdf = "data-raw/reports/progress/SUN_Main_Report_ENG_2017_WEB2.pdf")
x <- str_split(x, pattern = "\n")

##
report7 <- NULL

for(i in 1:length(x)) {
  temp <- data_frame(text = x[[i]], page = rep(i, length(x[[i]])))

  ## remove page number
  temp <- temp[-(nrow(temp) - 1), ]
  report7 <- rbind(report7, temp)
}

## add linenumber and chapters
report7 <- mutate(.data = report7,
                  linenumber = row_number(),
                  chapter = cumsum(str_detect(text, regex("^chapter [\\divxlc]",
                                                          ignore_case = TRUE))))

## Remove page 1 and page 2 (cover page and table of contents)
report7 <- subset(report7, !page %in% 1:13)

##
report7 <- mutate(.data = report7,
                  linenumber = row_number(),
                  chapter = cumsum(str_detect(text, regex("^chapter [\\divxlc]",
                                                          ignore_case = TRUE))))

##
progress_report_2017 <- report7

##
remotes::use_data(progress_report_2017, overwrite = TRUE)






