library(ggplot2)

covid_data <- data.frame(
  State = c("Tamil Nadu", "Kerala", "Maharashtra", "Delhi", "Karnataka", "Gujarat"),
  Cases = c(5000, 4500, 7000, 3500, 4000, 3800),
  Deaths = c(120, 80, 200, 100, 90, 85)
)

print("COVID-19 Dataset:")
print(covid_data)

cases_plot <- ggplot(covid_data, aes(x = State, y = Cases, fill = State)) +
  geom_bar(stat = "identity") +
  ggtitle("COVID-19 Cases by State") +
  xlab("State") + ylab("Number of Cases") +
  theme_minimal()

print(cases_plot)

deaths_plot <- ggplot(covid_data, aes(x = State, y = Deaths, group = 1)) +
  geom_line(color = "darkred", linewidth = 1.2) +
  geom_point(color = "black", size = 3) +
  ggtitle("COVID-19 Deaths by State") +
  xlab("State") + ylab("Number of Deaths") +
  theme_minimal()

print(deaths_plot)
