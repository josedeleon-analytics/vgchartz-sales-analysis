# 🎮 Video Game Sales Analysis

Final project for **ALY6010: Probability Theory & Statistics**  
Northeastern University, College of Professional Studies

This project explores trends and predictors of global video game sales using inferential statistics and simple linear regression in R. It combines academic rigor with real-world application, making it ideal for analysts interested in data-driven decision-making in entertainment and digital markets.

---

## 🎯 Objectives

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
Video Game Sales 2024 – by Hosam Mhmd Ali: https://www.kaggle.com/datasets/hosammhmdali/video-game-sales-2024

For this project, a cleaned and preprocessed version is included in the data/ folder as:
videogames_dataset_cleaned_csv.csv

---

## 👤 Author
Jose De Leon
Master’s in Analytics Candidate, Northeastern University
📬 Email: j.angel2294@gmail.com
🔗 LinkedIn: https://www.linkedin.com/in/jose-de-leon-analytics/



---

