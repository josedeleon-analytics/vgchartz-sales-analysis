#Jose De Leon, Final Project, ALY6010, 3/30/2025


#Part 1. Importing data  &  calling libraries
videogames_dataset_cleaned<-read.csv("videogames_dataset_cleaned_csv.csv")
#View(videogames_dataset_cleaned)

library(dplyr)
library(ggplot2)
library(lubridate)




#Hypothesis 1
# One-Sample T-Test (Critic Score vs. 7.021)
t.test(videogames_dataset_cleaned$critic_score, mu=7.021, alternative="two.sided")


#t test calculating t critical 2 tails
t1_critical_lower <- qt(0.05/2, 63790)
t1_critical_upper <- qt(1 - 0.05/2, 63790)
print(t1_critical_lower)
print(t1_critical_upper)


#assumption to see if the critic scores has a normal distribution
ggplot(videogames_dataset_cleaned, aes(x = critic_score)) +
  geom_histogram(bins=10, color="black", fill="blue", alpha=0.5) +
  labs(title="Histogram of Critic Scores",
       x="Critic Score") +
  theme_minimal()




#Hypothesis 2
# Calculate Mean Sales
mean_shooter_sales <- mean(videogames_dataset_cleaned$total_sales[videogames_dataset_cleaned$genre == "Shooter"])
mean_action_sales <- mean(videogames_dataset_cleaned$total_sales[videogames_dataset_cleaned$genre == "Action"])

# Calculate Standard Deviation
sd_shooter_sales <- sd(videogames_dataset_cleaned$total_sales[videogames_dataset_cleaned$genre == "Shooter"])
sd_action_sales <- sd(videogames_dataset_cleaned$total_sales[videogames_dataset_cleaned$genre == "Action"])

# Calculate Sample Size (n)
n_shooter <- nrow(videogames_dataset_cleaned %>% filter(genre == "Shooter"))
n_action <- nrow(videogames_dataset_cleaned %>% filter(genre == "Action"))

#entry data
sampmean1 <- mean_shooter_sales
sampmean2 <- mean_action_sales
meanpop1 <-0
meanpop2 <-0
std1 <- sd_shooter_sales
std2<- sd_action_sales
n1 <- n_shooter
n2 <- n_action
df <- min(n1-1,n2-1)
alpha <-0.05
t_critical <- qt(1 - 0.05, 5395)

#t test statistic
t_test_statistic <- ((sampmean1-sampmean2)-(meanpop1 -meanpop2))/sqrt((std1^2/n1)+(std2^2/n2))
print(t_test_statistic)

#pvalue
p_value_one_right_tail <- pt(t_test_statistic, df =df, lower.tail = FALSE)



#calculating t confidence interval for 2 samples
ci_lower <- (sampmean1-sampmean2)-(t_critical)*sqrt((std1^2/n1)+(std2^2/n2))
ci_higher <- (sampmean1-sampmean2)+(t_critical)*sqrt((std1^2/n1)+(std2^2/n2))
print(ci_lower)
print(ci_higher)


# Create a bar chart
sales_data <- data.frame(
  Genre = c("Shooter", "Action"),
  Mean_Sales = c(mean_shooter_sales, mean_action_sales))

ggplot(sales_data, aes(x = Genre, y = Mean_Sales, fill = Genre)) +
  geom_bar(stat = "identity", width = 0.5, color = "black") +
  labs(title = "Comparison of Mean Sales: Shooter vs. Action Games",
       x = "Genre",
       y = "Mean Total Sales") +
  theme_minimal() +
  scale_fill_manual(values = c("Shooter" = "blue", "Action" = "red"))





#checking for normality with a visualization of histograms
#histogram for shooter average total sales
ggplot(videogames_dataset_cleaned[videogames_dataset_cleaned$genre == "Shooter", ], aes(x = total_sales)) +
  geom_histogram(bins = 50, color = "black", fill = "blue", alpha = 0.5) +
  labs(title = "Histogram of Shooter Total Sales", x = "Total Sales", y = "Count") +
  theme_minimal()

#Histogram for Action Total Sales
ggplot(videogames_dataset_cleaned[videogames_dataset_cleaned$genre == "Action", ], aes(x = total_sales)) +
  geom_histogram(bins = 50, color = "black", fill = "red", alpha = 0.5) +
  labs(title = "Histogram of Action Total Sales", x = "Total Sales", y = "Count") +
  theme_minimal()



#Hypothesis 3
# Two-Sample T-Test (North America vs. Europe/Africa Sales)

#Mean sales for North America
mean_na_sales <- mean(videogames_dataset_cleaned$na_sales)
# Mean sales for Europe & Africa (PAL sales)
mean_eu_af_sales <- mean(videogames_dataset_cleaned$pal_sales)


# Calculate Standard Deviation
sd_na_sales <- sd(videogames_dataset_cleaned$na_sales)
sd_eu_af_sales <- sd(videogames_dataset_cleaned$pal_sales)

# Calculate Sample Size (n)
n_na <- length(videogames_dataset_cleaned$na_sales)
n_euaf <- length(videogames_dataset_cleaned$pal_sales)


na_sales <- videogames_dataset_cleaned$na_sales
eu_af_sales <- videogames_dataset_cleaned$pal_sales
t_test_result <- t.test(na_sales, eu_af_sales, alternative = "greater", var.equal = TRUE)

#entry data
sampmean_na <- mean_na_sales
sampmean_euaf <- mean_eu_af_sales
meanpop_na <-0
meanpop2_euaf <-0
std_na <- sd_na_sales
std_euaf <- sd_eu_af_sales
n_na <- n_na
n_euaf <- n_euaf
df_na_euaf <- min(n_na-1,n_euaf-1)
alpha <-0.05
t_critical_na_euaf <- qt(1 - 0.05, 63790)

#t test statistic
t_test_statistic_na_euaf <- ((sampmean_na-sampmean_euaf)-(meanpop_na -meanpop2_euaf))/sqrt((std_na^2/n_na)+(std_euaf^2/n_euaf))
print(t_test_statistic_na_euaf)

#pvalue
p_value_one_right_tail_na_euaf <- pt(t_test_statistic_na_euaf, df =df_na_euaf, lower.tail = FALSE)



#calculating t confidence interval for 2 samples
ci_lower_na_euaf <- (sampmean_na-sampmean_euaf)-(t_critical_na_euaf)*sqrt((std_na^2/n_na)+(std_euaf^2/n_euaf))
ci_higher_na_euaf <- (sampmean_na-sampmean_euaf)+(t_critical_na_euaf)*sqrt((std_na^2/n_na)+(std_euaf^2/n_euaf))
print(ci_lower_na_euaf)
print(ci_higher_na_euaf)


#calculating correlation 
correlation_result <- cor.test(videogames_dataset_cleaned$na_sales, videogames_dataset_cleaned$pal_sales, method = "pearson")



#visualization of histogram of Northamerica sales
# Histogram for North America Sales
ggplot(videogames_dataset_cleaned, aes(x = na_sales)) +
  geom_histogram(binwidth = 0.15, fill = "blue", color = "black", alpha = 0.7) +
  labs(title = "Histogram of North America Sales", x = "Sales", y = "Frequency") +
  theme_minimal()

#histogram of Europe and Africa sales(PAL sales)
ggplot(videogames_dataset_cleaned, aes(x = pal_sales)) +
  geom_histogram(binwidth = 0.15, fill = "red", color = "black", alpha = 0.7) +
  labs(title = "Histogram of Europe & Africa Sales", x = "Sales", y = "Frequency") +
  theme_minimal()


#Extra. Checking for normality per hypothesis by using the q-qplot

# Q-Q Plot for Hypothesis 1 (Critic Scores)
ggplot(data = videogames_dataset_cleaned, aes(sample = critic_score)) +
  stat_qq() +
  stat_qq_line() +
  labs(title = "Q-Q Plot for Critic Scores", x = "Theoretical Quantiles", y = "Sample Quantiles") +
  theme_minimal()

# Q-Q Plot for Hypothesis 2 (Shooter vs. Action Sales)
shooter_sales <- videogames_dataset_cleaned %>% filter(genre == "Shooter") %>% pull(total_sales)
action_sales <- videogames_dataset_cleaned %>% filter(genre == "Action") %>% pull(total_sales)

ggplot(data.frame(sample = shooter_sales), aes(sample = sample)) +
  stat_qq() +
  stat_qq_line() +
  labs(title = "Q-Q Plot for Shooter Sales", x = "Theoretical Quantiles", y = "Sample Quantiles") +
  theme_minimal()

ggplot(data.frame(sample = action_sales), aes(sample = sample)) +
  stat_qq() +
  stat_qq_line() +
  labs(title = "Q-Q Plot for Action Sales", x = "Theoretical Quantiles", y = "Sample Quantiles") +
  theme_minimal()

# Q-Q Plot for Hypothesis 3 (North America vs. Europe/Africa Sales)

ggplot(data.frame(sample = videogames_dataset_cleaned$na_sales), aes(sample = sample)) +
  stat_qq() +
  stat_qq_line() +
  labs(title = "Q-Q Plot for North America Sales", x = "Theoretical Quantiles", y = "Sample Quantiles") +
  theme_minimal()

ggplot(data.frame(sample = videogames_dataset_cleaned$pal_sales), aes(sample = sample)) +
  stat_qq() +
  stat_qq_line() +
  labs(title = "Q-Q Plot for Europe/Africa Sales", x = "Theoretical Quantiles", y = "Sample Quantiles") +
  theme_minimal()


#Hypothesis 4
# Simple linear regression: Total Sales ~ Critic Score
model_q4 <- lm(total_sales ~ critic_score, data = videogames_dataset_cleaned)

# Summary of the model
summary(model_q4)

# Scatterplot with regression line
ggplot(videogames_dataset_cleaned, aes(x = critic_score, y = total_sales)) +
  geom_point(alpha = 0.3, color = "blue") +
  geom_smooth(method = "lm", color = "red") +
  labs(
    title = "Total Sales vs. Critic Score",
    x = "Critic Score",
    y = "Total Sales (millions)"
  ) +
  theme_minimal()

#checking homoscedasticity
plot(model_q4$fitted.values, model_q4$residuals,
     main = "Residuals vs Fitted - Critic Score Model",
     xlab = "Fitted Values", ylab = "Residuals", pch = 20)
abline(h = 0, col = "red")




#Hypothesis 5
# Simple linear regression: Total Sales ~ Release Year
# Extract release year
videogames_dataset_cleaned$release_year <- year(videogames_dataset_cleaned$release_date)

# Run linear regression: Does release year predict total sales?
model_q5 <- lm(total_sales ~ release_year, data = videogames_dataset_cleaned)

summary(model_q5)


#checking homoscedasticity
plot(model_q5$fitted.values, model_q5$residuals,
     main = "Residuals vs Fitted - Release Year Model",
     xlab = "Fitted Values", ylab = "Residuals", pch = 20)
abline(h = 0, col = "red")


# Scatter plot with regression line
ggplot(videogames_dataset_cleaned, aes(x = release_year, y = total_sales)) +
  geom_point(alpha = 0.5) +
  geom_smooth(method = "lm", se = TRUE, color = "blue") +
  labs(
    title = "Total Sales vs. Release Year",
    x = "Release Year",
    y = "Total Sales"
  ) +
  theme_minimal()






#Hypothesis 6
videogames_dataset_cleaned <- read.csv("videogames_dataset_cleaned_csv.csv")

# Create a new dataframe that counts the number of consoles (platforms) per game title
platform_counts <- videogames_dataset_cleaned %>%
  group_by(title) %>%
  mutate(platform_count = n_distinct(console)) %>%
  ungroup()

# Run simple linear regression
model_q6 <- lm(total_sales ~ platform_count, data = platform_counts)
summary(model_q6)

# Plot
ggplot(platform_counts, aes(x = platform_count, y = total_sales)) +
  geom_point(alpha = 0.5) +
  geom_smooth(method = "lm", se = TRUE, color = "blue") +
  labs(
    title = "Total Sales vs Number of Platforms (Consoles)",
    x = "Number of Platforms",
    y = "Total Sales"
  ) +
  theme_minimal()

#checking homoscedasticity
plot(model_q6$fitted.values, model_q6$residuals,
     main = "Residuals vs Fitted - Platform Count Model",
     xlab = "Fitted Values", ylab = "Residuals", pch = 20)
abline(h = 0, col = "red")
