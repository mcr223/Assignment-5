rm(list=ls(all=TRUE))
cat("\014")
if (!require("data.table")) install.packages("data.table")
library("data.table")

header <- read.table("SPDYNIMRTINUSA.csv", header = TRUE,
                     sep=",", nrow = 1)
SPDYNIMRTINUSA <- fread("SPDYNIMRTINUSA.csv",
                                 skip=1, sep=",",header=FALSE,
                                 data.table=FALSE)
setnames(SPDYNIMRTINUSA, colnames(header))
rm(header)
