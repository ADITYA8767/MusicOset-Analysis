# Music Data Analysis and Visualization

This project involves analyzing and visualizing a cleaned dataset of music features to uncover trends and relationships. The analysis focuses on creating correlation heatmaps and linear regression models for insights into audio features and popularity trends over time.

## Dataset
The dataset used is a cleaned music dataset stored at the path:
```
C:/Users/adity/OneDrive/Desktop/Submissions/Data Visualization/Cleaned_Music_Dataset.csv
```
Ensure that you update this file path according to your local setup.

## Prerequisites
Make sure you have the following libraries installed in R:
- `ggplot2`
- `reshape2`
- `dplyr`
- `broom`

You can install these libraries using:
```R
install.packages("ggplot2")
install.packages("reshape2")
install.packages("dplyr")
install.packages("broom")
```

## Code Overview
### Correlation Heatmap
This section of the code computes the correlation between selected audio features (`energy`, `acousticness`, `speechiness`, `valence`) and visualizes the results as a heatmap.

Key steps:
1. Load the dataset and select relevant columns.
2. Compute a correlation matrix.
3. Melt the matrix for `ggplot2`.
4. Create a heatmap using a custom color gradient.

#### Output
A heatmap titled "Correlation Heatmap for Analyzing Emotional Appeal through Audio Features."

### Linear Regression: Year vs Popularity
This section fits a linear regression model to analyze the relationship between a track's popularity and its release year.

Key steps:
1. Filter tracks released between 1900 and 2025.
2. Fit a linear regression model.
3. Identify and highlight outliers (e.g., tracks with popularity > 80 or < 20).
4. Annotate the regression plot with the equation and R-squared value.

#### Output
A scatter plot with a regression line, highlighting key years and outliers. The plot is titled "Effect of Year on Popularity."

## How to Use
1. Clone the repository:
```bash
git clone <https://github.com/ADITYA8767/MusicOset-Analysis.git>
```

2. Open the R script and update the file path to your local dataset.

3. Run the script in R or RStudio.

4. The output visualizations will be generated as plots in the RStudio viewer or saved as needed.

## Visualizations
### Correlation Heatmap
The heatmap provides insights into the relationships between audio features such as energy, acousticness, and valence, helping analyze the emotional appeal of tracks.

### Linear Regression
The regression plot reveals temporal trends in popularity, highlighting significant years and outliers.

## Contributions
Feel free to submit issues or pull requests to enhance the analysis.

