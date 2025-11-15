# This script builds both the HTML and PDF versions of your CV

# If you wanted to speed up rendering for googlesheets driven CVs you could use
# this script to cache a version of the CV_Printer class with data already
# loaded and load the cached version in the .Rmd instead of re-fetching it twice
# for the HTML and PDF rendering.

# Resume
## Knit the HTML version
setwd("/Users/patrick/cherry-cv-public/")
rmarkdown::render("/Users/patrick/cherry-cv-public/Patrick Cherry resume.rmd",
                  output_format = "md_document",
                  params = list(pdf_mode = FALSE),
                  output_file = "/Users/patrick/pdcherry_github_io/Patrick-Cherry-resume.md")
setwd("/Users/patrick/pdcherry_github_io/")
# 
# ## Convert to PDF using Pagedown
# pagedown::chrome_print(input = "Patrick-Cherry-resume.html",
#                        output = paste0("Patrick Cherry resume ",
#                                        format(Sys.Date(), '%B %Y'),
#                                        ".pdf"))
# 
# Note to self: if the error shows up:
# In grepl("^\\s*$", x) : unable to translate to a wide string
# re-type the sptring to avoid non-ASCII characters
# see https://stackoverflow.com/questions/76680882/unable-to-translate-to-a-wide-string
# # We're going to skip CV
# # CV
# ## Knit the HTML version
# rmarkdown::render("/Users/patrick/cherry-cv/Patrick Cherry cv.rmd",
#                   output_format = "markdown",
#                   params = list(pdf_mode = FALSE),
#                   output_file = "Patrick-Cherry-cv.html")
# 
# ## Convert to PDF using Pagedown
# pagedown::chrome_print(input = "Patrick-Cherry-cv.html",
#                        output = paste0("Patrick Cherry CV ",
#                                                 format(Sys.Date(), '%B %Y'),
#                                                 ".pdf"))
