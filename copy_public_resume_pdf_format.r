# This script builds both the HTML and PDF versions of your CV

# If you wanted to speed up rendering for googlesheets driven CVs you could use
# this script to cache a version of the CV_Printer class with data already
# loaded and load the cached version in the .Rmd instead of re-fetching it twice
# for the HTML and PDF rendering.

# Resume
print(R.version$v)
## Copy the most recently rendered to github md version
if(system.file(package='fs') != ""){
  fs::file_copy(path = "~/cherry-cv-public/Patrick-Cherry-resume.pdf",
                new_path = "./Patrick-Cherry-resume.pdf",
                overwrite = TRUE)
}
