# -------------------------------------------------------
# Lab 05 Exercise
# Replace ITxxxxxx with your own registration number
# -------------------------------------------------------

# 1. Import the dataset into R
setwd("C://Users//HP/Desktop//IT24103096")   # <-- change path to your folder
delivery_times <- read.table("Exercise_Lab_05.txt", header = TRUE)

# Check the first few rows
head(delivery_times)

# -------------------------------------------------------
# 2. Histogram for delivery times
# -------------------------------------------------------

# Extract the Delivery Times column (assuming the column is named "Delivery_Times")
times <- delivery_times$Delivery_Times  

# Define class intervals (20 to 70, 9 intervals → width = 50/9 ≈ 5.56 ~ 6)
btimes <- delivery_times$Delivery_Times  


# Draw histogram
hist(times,
     breaks = breaks,
     right = FALSE,     # right-open intervals
     col = "skyblue",
     xlab = "Delivery Times",
     main = "Histogram of Delivery Times")

# -------------------------------------------------------
# 3. Comment on shape
# -------------------------------------------------------
# After plotting, look at the histogram.
# If bars are higher in the middle → approx normal.
# If longer tail on right → positively skewed.
# If longer tail on left → negatively skewed.

# -------------------------------------------------------
# 4. Cumulative frequency polygon (ogive)
# -------------------------------------------------------

# Get frequency table using same breaks
freq <- hist(times, breaks = breaks, right = FALSE, plot = FALSE)

# Compute cumulative frequencies
cum_freq <- cumsum(freq$counts)

# Plot ogive
plot(freq$breaks[-1], cum_freq, type = "o",
     col = "red", xlab = "Delivery Times",
     ylab = "Cumulative Frequency",
     main = "Ogive (Cumulative Frequency Polygon)")
