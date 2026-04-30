README: Poverty and Educational Attainment
================
JOSEPH
2026-04-30

## Overview

This project examines the relationship between poverty and educational
attainment at the county level in Oklahoma. The data are derived from
the U.S. Census Bureau American Community Survey (2022). For the
purposes of this analysis, the dataset was reduced to 200 observations.

The analysis focuses on three key variables: - Percentage of the
population below the poverty line  
- Percentage of adults (25+) with at least a high school education  
- Percentage of adults (25+) with a bachelor’s degree or higher

The data were loaded, cleaned, and processed using R. Appropriate
packages were used to generate descriptive statistics (Table 1),
scatterplots, and regression models.

------------------------------------------------------------------------

## Repository Overview

This repository contains a final project analyzing whether counties with
higher poverty rates tend to have lower levels of educational
attainment.

------------------------------------------------------------------------

## Repository Contents

- `README.Rmd`: Source file for the final report  
- `README.md`: Rendered report for GitHub viewing  
- `Makefile`: Automates the full analysis workflow

### Folders

- `code/`: Contains scripts used for data processing and analysis  
- `data/`: Contains the dataset used for the project  
- `output/`: Contains generated tables, figures, and model outputs

### Key Files

- `data/merged_clean.RDS`: Input dataset  

- `code/01_load_data.R`: Loads and prepares the analytic dataset  

- `code/02_make_table.R`: The code used to generate the required table
  is located, the summary table (Table 1)  

- `code/03_make_plots.R`: The code used to generate the required
  scatterplots (figures)  

- `code/04_run_models.R`: The code used to Run regression models

- \`output/plot_hs.png  

- ## \`output/plot_bachelors.png

## Final Report

The final report is written in `README.Rmd` and rendered as `README.md`.

The report includes: - Description of the dataset  
- Descriptive statistics (Table 1)  
- Scatterplots showing relationships between poverty and education  
- Regression models evaluating these relationships  
- Interpretation of findings

------------------------------------------------------------------------

## Package Environment

This project uses the `renv` package to manage package versions and
improve reproducibility.

To restore the package environment for this project, run:

\`\`\`bash make install

To reproduce the full analysis and generate the final report, run:

\`\`\`bash make
