library(httr)
library(rvest)
library(DBI)
library(dplyr)
library(RMariaDB)
library(logr)
library(jsonlite)

#skriv i logfil
path <- Sys.getenv("HOME")
logfilename <- paste0(path, "/log/log_", as.integer(Sys.time()))
log_open(logfilename)
log_print("Starting")



#forbind til DB
con <- dbConnect(MariaDB(),
                 db = "airdb",
                 user = "root",
                 password = Sys.getenv("airdbpw")
                 )

dbGetQuery(con, "select now()")

log_close()



