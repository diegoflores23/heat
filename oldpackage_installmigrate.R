installedPreviously <- read.csv('installed_previously.csv')

baseR <- as.data.frame(installed.packages())

toInstall <- setdiff(installedPreviously, baseR)
install.packages(toInstall)

installedPreviously <- read.csv('installed_previously.csv')
installedPreviouslyPackages <- installedPreviously$Package

baseR <- as.data.frame(installed.packages())

baseRPackages <- baseR[, "Package"]

toInstall <- setdiff(installedPreviouslyPackages, baseRPackages)

install.packages(toInstall)

library(dplyr)

installed <- installed.packages()[, "Package"]
toInstall <- c("fansi", "farver", "filehash", "fma")  # Add more if needed
all(toInstall %in% installed)
sessionInfo()
