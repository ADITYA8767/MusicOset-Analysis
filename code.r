# Load necessary libraries
library(ggplot2)
library(reshape2)
library(dplyr)

# Specify the correct file path
file_path <- "C:/Users/adity/OneDrive/Desktop/Submissions/Data Visualization/Cleaned_Music_Dataset.csv"  # Update with the actual file path

# Load the dataset
music_data <- read.csv(file_path)

# Select relevant columns for correlation
relevant_columns <- c("energy", "acousticness", "speechiness", "valence")
filtered_data <- music_data[, relevant_columns]

# Compute the correlation matrix
cor_matrix <- round(cor(filtered_data, use = "complete.obs"), 2)

# Melt the correlation matrix for ggplot2
melted_cor_matrix <- melt(cor_matrix)

# Create the heatmap with adjustments
ggplot(data = melted_cor_matrix, aes(x = Var1, y = Var2, fill = value)) +
  geom_tile() +
  geom_text(aes(label = value), color = "black", size = 3) +  # Reduce font size for numbers
  scale_fill_gradientn(colors = c("#313695", "#4575b4", "#74add1", "#fefefe", "#fdae61", "#d73027", "#a50026"),
                       limits = c(-1, 1),
                       name = "Correlation") +  # Improved color gradient
  theme_minimal() +
  labs(
    title = "Correlation Heatmap for analysing Emotional Appeal through Audio Features",
    x = NULL,  # Remove x-axis label
    y = NULL   # Remove y-axis label
  ) +
  theme(
    plot.title = element_text(hjust = 0.5, size = 14, face = "bold"),  # Center and slightly reduce title size
    axis.text.x = element_text(angle = 45, vjust = 1, hjust = 1),
    axis.text.y = element_text(size = 10)  # Maintain readability for y-axis




# Load necessary libraries
library(ggplot2)
library(broom)  # For tidy regression output

# Prepare the data: Select relevant columns and remove missing values
regression_data <- music_data %>%
  select(popularity, year) %>%
  filter(year >= 1900 & year <= 2025) %>%
  na.omit()  # Remove rows with missing values

# Fit a linear regression model
model <- lm(popularity ~ year, data = regression_data)

# Get the model summary
model_summary <- summary(model)

# Extract coefficients and R-squared
intercept <- coef(model)[1]
slope <- coef(model)[2]
r_squared <- model_summary$r.squared

# Create the regression equation text
regression_eq <- paste0("y = ", round(slope, 2), "x + ", round(intercept, 2), 
                        "\nR² = ", round(r_squared, 2))

# Identify potential outliers (e.g., tracks with popularity > 80 or < 20)
outliers <- regression_data %>%
  filter(popularity > 80 | popularity < 20)

# Plot the regression with enhancements
ggplot(regression_data, aes(x = year, y = popularity)) +
  geom_point(alpha = 0.5) +
  geom_smooth(method = "lm", color = "blue", se = TRUE) +
  geom_point(data = outliers, aes(x = year, y = popularity), color = "red", size = 2, shape = 17) +  # Highlight outliers
  annotate("text", x = 1930, y = 70, label = "Key Year: 1980", color = "red", size = 4) +
  annotate("text", x = 2020, y = 20, label = "Modern Era", color = "darkgreen", size = 4) +
  annotate("text", x = 1920, y = 60, label = regression_eq, color = "blue", size = 4, hjust = 0) +  # Add regression equation
  labs(
    title = "Effect of Year on Popularity",
    subtitle = "A Linear Regression Model Highlighting Temporal Trends",
    x = "Year",
    y = "Popularity"
  ) +
  theme_minimal() +
  theme(
    plot.title = element_text(size = 16, face = "bold"),
    plot.subtitle = element_text(size = 12, face = "italic", color = "gray"),
    axis.text = element_text(size = 12),
    axis.title = element_text(size = 14)
  )


# Load necessary libraries
library(ggplot2)
library(reshape2)
library(dplyr)

# Specify the correct file path
file_path <- "C:/Users/adity/OneDrive/Desktop/Submissions/Data Visualization/Cleaned_Music_Dataset.csv"  # Update with the actual file path

# Load the dataset
music_data <- read.csv(file_path)

# Select relevant columns for correlation
relevant_columns <- c("energy", "acousticness", "speechiness", "valence")
filtered_data <- music_data[, relevant_columns]

# Compute the correlation matrix
cor_matrix <- round(cor(filtered_data, use = "complete.obs"), 2)

# Melt the correlation matrix for ggplot2
melted_cor_matrix <- melt(cor_matrix)

# Create the heatmap with adjustments
ggplot(data = melted_cor_matrix, aes(x = Var1, y = Var2, fill = value)) +
  geom_tile() +
  geom_text(aes(label = value), color = "black", size = 3) +  # Reduce font size for numbers
  scale_fill_gradientn(colors = c("#313695", "#4575b4", "#74add1", "#fefefe", "#fdae61", "#d73027", "#a50026"),
                       limits = c(-1, 1),
                       name = "Correlation") +  # Improved color gradient
  theme_minimal() +
  labs(
    title = "Correlation Heatmap for analysing Emotional Appeal through Audio Features",
    x = NULL,  # Remove x-axis label
    y = NULL   # Remove y-axis label
  ) +
  theme(
    plot.title = element_text(hjust = 0.5, size = 14, face = "bold"),  # Center and slightly reduce title size
    axis.text.x = element_text(angle = 45, vjust = 1, hjust = 1),
    axis.text.y = element_text(size = 10)  # Maintain readability for y-axis
