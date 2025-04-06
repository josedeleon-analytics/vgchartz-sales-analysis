# 🎮 Video Game Sales Analysis

[![License](https://img.shields.io/github/license/josedeleon-analytics/vgchartz-sales-analysis)](LICENSE)
![GitHub last commit](https://img.shields.io/github/last-commit/josedeleon-analytics/vgchartz-sales-analysis)
![Top Language](https://img.shields.io/github/languages/top/josedeleon-analytics/vgchartz-sales-analysis)

Final project for **ALY6010: Probability Theory & Statistics**  
Northeastern University, College of Professional Studies

This project explores trends and predictors of global video game sales using inferential statistics and simple linear regression in R. It combines academic rigor with real-world application, ideal for analysts interested in data-driven decision-making in entertainment and digital markets.

---

## 🎯 Objectives

- Conduct exploratory data analysis (EDA) to identify key trends and variables  
- Explore global sales patterns by genre, platform, and region  
- Perform statistical hypothesis testing to draw valid conclusions from real-world sales data  
- Apply t-tests to compare means across groups (genre, region)  
- Use simple linear regression to test predictors of total sales (critic scores, release year, platform count)

---

## 📁 Repository Structure

- [`Final_Report.pdf`](https://github.com/josedeleon-analytics/vgchartz-sales-analysis/blob/main/Final_Report.pdf): Full report with EDA, hypotheses, regression, and visualizations  
- [`R script`](https://github.com/josedeleon-analytics/vgchartz-sales-analysis/blob/main/r_code/final_project_analysis.R): R script for data cleaning, hypothesis testing, and regression  
- [`CSV file`](https://github.com/josedeleon-analytics/vgchartz-sales-analysis/blob/main/data/videogames_dataset_cleaned_csv.csv): Cleaned dataset used in the project  
- [`plots`](https://github.com/josedeleon-analytics/vgchartz-sales-analysis/tree/main/plots): Output visualizations used in the report (scatterplots, residuals, Q-Q plots)  
- [`gitignore`](https://github.com/josedeleon-analytics/vgchartz-sales-analysis/blob/main/.gitignore): Files/folders excluded from version control  
- [`LICENSE`](https://github.com/josedeleon-analytics/vgchartz-sales-analysis/blob/main/LICENSE): Open-source license information  
- [`README.md`](https://github.com/josedeleon-analytics/vgchartz-sales-analysis/blob/main/README.md): Project overview and documentation  


---

## 📊 Key Insights

- 🎯 **Shooter games** have significantly higher average sales than **Action games**  
- 🧠 **Critic score** and **platform count** predict sales but with low explanatory power  
- 🌍 **North America** is the dominant region in global video game sales  
- 📆 **Release year** is not a significant predictor of total sales

---

## 🛠 Tools & Skills Used

- `R` (Base R, `ggplot2`, `dplyr`)  
- One-sample and two-sample t-tests  
- Simple linear regression  
- Data cleaning and EDA  
- Statistical assumptions: normality, homoscedasticity  
- Manual vs. function-based calculations (`t.test()`)  
- Academic-style reporting (APA format)

---

## ▶️ How to Reproduce This Project

```bash
git clone https://github.com/josedeleon-analytics/video-game-sales-analysis
```
1. Open the .R scripts in RStudio
2. Run eda.R to load and clean the dataset
3. Run hypothesis_tests.R and regression_analysis.R to perform the full analysis
4. Run visualization.R to generate the figures for the report

## 📌 Dataset
The original dataset is publicly available on Kaggle:  
[**Video Game Sales 2024** – by Hosam Mhmd Ali](https://www.kaggle.com/datasets/hosammhmdali/video-game-sales-2024)

For this project, a cleaned and preprocessed dataset is included in the [`data/`](https://github.com/josedeleon-analytics/vgchartz-sales-analysis/tree/main/data) folder and can be accessed directly via [`videogames_dataset_cleaned_csv.csv`](https://github.com/josedeleon-analytics/vgchartz-sales-analysis/blob/main/data/videogames_dataset_cleaned_csv.csv).

---

## 📸 Screenshots

| Feature                    | Screenshot Example                                                                 |
|----------------------------|-------------------------------------------------------------------------------------|
| Shooter vs. Action Sales   | ![Shooter vs. Action](https://github.com/josedeleon-analytics/vgchartz-sales-analysis/blob/main/plots/shooter%20vs%20action.png) |

---

## 👤 Author
Jose De Leon
Master’s in Analytics Candidate, Northeastern University
📬 Email: j.angel2294@gmail.com
🔗 LinkedIn: https://www.linkedin.com/in/jose-de-leon-analytics/



---

