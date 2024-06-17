data <- c(11, 13, 13, 15, 15, 16, 19, 20, 20, 20, 21, 21, 22, 23, 24, 30, 40, 45, 45, 45, 71, 72, 73, 75)
bin_size <- 5
num_bins <- ceiling(length(data) / bin_size)
bins <- split(data, cut(seq_along(data), breaks=num_bins, labels=FALSE))
smooth_bin_mean <- unlist(lapply(bins, function(bin) rep(mean(bin), length(bin))))
cat("Smoothing by Bin Mean: ", smooth_bin_mean, "\n")
smooth_bin_median <- unlist(lapply(bins, function(bin) rep(median(bin), length(bin))))
cat("Smoothing by Bin Median: ", smooth_bin_median, "\n")
smooth_bin_boundaries <- unlist(lapply(bins, function(bin) {
  lower <- min(bin)
  upper <- max(bin)
  sapply(bin, function(x) ifelse(abs(x - lower) < abs(x - upper), lower, upper))
}))
cat("Smoothing by Bin Boundaries: ", smooth_bin_boundaries, "\n")