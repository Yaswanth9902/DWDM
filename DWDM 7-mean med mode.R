pencils <- c(9, 25, 23, 12, 11, 6, 7, 8, 9, 10)

mean_pencils <- mean(pencils)
print(paste("Mean:", mean_pencils))

median_pencils <- median(pencils)
print(paste("Median:", median_pencils))

mode_pencils <- function(x) {
  uniqx <- unique(x)
  uniqx[which.max(tabulate(match(x, uniqx)))]
}

mode_pencil_value <- mode_pencils(pencils)
print(paste("Mode:", mode_pencil_value))
