library(httr)
library(rvest)
library(DBI)
library(dplyr)
library(RMariaDB)
library(logr)

#skriv i logfil
path <- Sys.getenv("HOME")
log_open(path, file_name = "test.log")
log_print("Starting")



#forbind til DB
con <- dbConnect(MariaDB(),
                 db = "airdb",
                 user = "root",
                 password = Sys.getenv("airdbpw")
                 )

dbGetQuery(con, "select now()")

log_close()



