usethis::use_r("multiserver")
usethis::use_mit_license("Nidhi Sahai")

?multiserver

devtools::load_all()
rm(list = c(“Multiserver”))

devtools::check()

devtools::document()

# From Assignment - Generating the "bank" dataset:

set.seed(2048)
arrival_time <- cumsum(rexp(100, 1/60))
service_time <- rexp(length(arrival_time), 1/150) + 20
bank <- data.frame(arrival_time, service_time)
usethis::use_data(bank)

usethis::use_data_raw("bank")

usethis::use_testthat()
usethis::use_test("multiserver")

devtools::test_coverage()

?bank
?multiserver

# Checking If Git Is Actually Working
usethis::use_git_config(user.name = "Nidhi Sahai",
                        user.email = "nidhi.sahai@students.mq.edu.au")
gh::gh_whoami()
usethis::git_sitrep()

# Creating My Git Plane -
usethis::use_git()

