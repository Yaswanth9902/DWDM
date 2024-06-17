age <- 35
min_age <- 20
max_age <- 60
mean_age <- 40
sd_age <- 12.94

min_max_normalized_age <- (age - min_age) / (max_age - min_age)
print(paste("Min-Max Normalized Age:", min_max_normalized_age))

z_score_normalized_age <- (age - mean_age) / sd_age
print(paste("Z-Score Normalized Age:", z_score_normalized_age))

j <- ceiling(log10(max(abs(min_age), abs(max_age))))
decimal_scaled_age <- age / (10^j)
print(paste("Decimal Scaled Age:", decimal_scaled_age))
