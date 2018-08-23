colin::fill_desc("feathericons", "Binding for feathericons", "A Binding for feathericons in Shiny.", "feathericons")
colin::init_docs()
usethis::use_code_of_conduct()

colin::new_r_file("use_feather_icons")
colin::new_r_file("feather_icons")

usethis::use_package("htmltools")
usethis::use_package("attempt")

# Get the script
download.file("https://unpkg.com/feather-icons@4.7.3/dist/feather.js", "inst/feather.js")

# DL the data

library(rvest)
download.file("https://github.com/feathericons/feather.git", "inst/data")
git2r::clone("https://github.com/feathericons/feather.git", "inst/data")
icons_list <- gsub("\\.svg", "", list.files("inst/data/icons/", pattern = "svg$"))
usethis::use_data(icons_list)

colin::new_r_file("icons")
