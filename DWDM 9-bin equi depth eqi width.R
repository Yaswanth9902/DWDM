# Data
marks <- c(55, 60, 71, 63, 55, 65, 50, 55, 58, 59, 61, 63, 65, 67, 71, 72, 75)

# Equal-Frequency Binning
sorted_marks <- sort(marks)
bin_size <- length(marks) / 3
bins_eq_freq <- split(sorted_marks, ceiling(seq_along(sorted_marks) / bin_size))

# Print the bins for equal-frequency
print(bins_eq_freq)

# Plot histogram for equal-frequency binning
hist(marks, breaks = c(min(marks), max(bins_eq_freq[[1]]), max(bins_eq_freq[[2]]), max(marks)), main = "Equal-Frequency Binning", xlab = "Marks", col = "lightblue", border = "black")








# Equal-Width Binning
min_mark <- min(marks)
max_mark <- max(marks)
width <- (max_mark - min_mark) / 3
bins_eq_width <- cut(marks, breaks = seq(min_mark, max_mark, by = width), include.lowest = TRUE)

# Print the bins for equal-width
print(table(bins_eq_width))

# Plot histogram for equal-width binning
hist(marks, breaks = seq(min_mark, max_mark, by = width), main = "Equal-Width Binning", xlab = "Marks", col = "lightgreen", border = "black")
