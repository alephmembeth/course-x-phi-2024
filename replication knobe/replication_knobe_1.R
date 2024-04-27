# read data
df <- read.csv("replication_knobe_data_1.csv", sep = ';')
print(df)

# create fourfold table
table <- xtabs (~ df$Condition + df$Answer)
print(table)

# calculate expected frequencies
n <- sum(table)
ef <- outer (rowSums(table), colSums(table)) / n
print(ef)

# calculate chi-squared test
chisq.test(df$Condition, df$Answer)

# calculate Fisher's exact test
fisher.test(df$Condition, df$Answer)

# calculate Cohen's W
library(rcompanion)
cohenW(df$Condition, df$Answer)

# create bar chart
library(ggplot2)
ggplot(df,
       aes(x = Condition,
           fill = Answer)) +
  geom_bar(position="dodge") +
  ylab("Count") +
  ggtitle("Replication of Knobe (2003) by Group 1")
ggsave("replication_knobe_fig_1.png")
