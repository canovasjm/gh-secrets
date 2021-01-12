# required libraries ------------------------------------------------------
library(blastula)

# read environment variables ----------------------------------------------
EMAIL_SENDER <- Sys.getenv("EMAIL_SENDER")
EMAIL_PASSWORD <- Sys.getenv("EMAIL_PASSWORD")
EMAIL_RECIPIENT <- Sys.getenv("EMAIL_RECIPIENT")

# set gmail credentials ---------------------------------------------------
credentials <- creds_envvar(
  user = EMAIL_SENDER,
  pass_envvar = "EMAIL_PASSWORD",
  provider = "gmail",
  host = NULL,
  port = NULL,
  use_ssl = TRUE
)

# compose email -----------------------------------------------------------
email <- compose_email(
  body = "Hi! This is email is being sent automatically from R running on GitHub Actions."
  )

# send email --------------------------------------------------------------
smtp_send(
    email,
    from = EMAIL_SENDER,
    to = EMAIL_RECIPIENT,
    subject = "Email from R",
    credentials = credentials,
    verbose = TRUE
  )