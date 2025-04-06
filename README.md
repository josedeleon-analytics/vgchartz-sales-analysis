# 🎮 Video Game Sales Analysis

![License](https://img.shields.io/github/license/josedeleon-analytics/video-game-sales-analysis)
![GitHub last commit](https://img.shields.io/github/last-commit/josedeleon-analytics/video-game-sales-analysis)
![Top Language](https://img.shields.io/github/languages/top/josedeleon-analytics/video-game-sales-analysis)

Final project for **ALY6010: Probability Theory & Statistics**  
Northeastern University, College of Professional Studies

This project explores trends and predictors of global video game sales using inferential statistics and simple linear regression in R. It combines academic rigor with real-world application, making it ideal for analysts interested in data-driven decision-making in entertainment and digital markets.

---

## 🎯 Objectives

- Conduct exploratory data analysis (EDA) to identify key trends and variables (full EDA performed in earlier phase; summary included here)
- Explore global sales patterns by genre, platform, and region
- Perform statistical hypothesis testing to draw statistically valid conclusions from real-world sales data
- Apply t-tests to compare means across groups (genre, region)
- Use simple linear regression to test predictors of total sales (critic scores, release year, platform count)

---

## 📁 Project Structure

video-game-sales-analysis/ ├── Final_Report.pdf # Full report with EDA, hypotheses, regression & visuals ├── data/ # Raw and cleaned datasets ├── R_code/ # Scripts for cleaning, analysis, and regression ├── plots/ # Histograms, scatterplots, residuals, Q-Q plots └── appendix/ # Optional: manual calculations, extra figures

---

## 🔑 Key Insights

- **Shooter games** have significantly higher average sales than **Action games**
- **Critic score** and **number of platforms** significantly predict sales, but both have low explanatory power (low R²)
- **North America** remains the dominant region in global game sales
- **Release year** is *not* a significant predictor of total sales

---

## 🛠 Tools & Skills Used

- R programming (base R, `ggplot2`, `dplyr`)
- One-sample and two-sample t-tests
- Simple linear regression
- Data cleaning and exploratory analysis
- Assumption checking (normality, homoscedasticity)
- Academic-style reporting (APA citations, manually calculated t-tests)

---

## 📁 Repository Structure

- `R code/Final Project — Milestone 3.R`: Contains all statistical analysis in R including hypothesis testing and linear regression.

## 📁 Repository Structure

- [README.md](README.md): Project overview and documentation  
- [Final Report](Final_Report.pdf): Full report with EDA, t-tests, regression, and visualizations  
- [csv file](data/videogames_dataset_cleaned_csv.csv): Cleaned dataset used for analysis  
- [R script](https://github.com/josedeleon-analytics/vgchartz-sales-analysis/blob/main/r_code/final_project_analysis.R): Main R script for statistical testing and regression  
- [plots](plots/): Visualizations including scatterplots, residuals, and Q-Q plots  
- `.gitignore`: Files excluded from version control  
- `LICENSE`: Repository licensing information  



---

## ▶️ How to Reproduce This Project

1. Clone the repo:  
   ```bash
   git clone https://github.com/yourusername/video-game-sales-analysis
2. Open the .R scripts in RStudio
3. Run eda.R to load and clean the dataset
4. Use hypothesis_tests.R and regression_analysis.R to perform the full analysis
5. Run visualization.R to generate the figures for the report

## 📌 Dataset
The original dataset is publicly available on Kaggle:  
[**Video Game Sales 2024** – by Hosam Mhmd Ali](https://www.kaggle.com/datasets/hosammhmdali/video-game-sales-2024)

For this project, a cleaned and preprocessed version is included in the `data/` folder as:  
`videogames_dataset_cleaned_csv.csv`

---

## 👤 Author
Jose De Leon
Master’s in Analytics Candidate, Northeastern University
📬 Email: j.angel2294@gmail.com
🔗 LinkedIn: https://www.linkedin.com/in/jose-de-leon-analytics/



---

