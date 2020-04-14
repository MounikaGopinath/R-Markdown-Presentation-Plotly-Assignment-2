library(dplyr)
library(plotly)
library(gapminder)
data(gapminder)
gapminder <- gapminder %>% filter(year == "2007")
x <- list(title = "GDP Per Capita (USD, Inflation Adjusted)")
y <- list(title = "Life Expectancy (Years)")
plot_ly(gapminder, x = ~gdpPercap, y = ~lifeExp, 
        type = "scatter", mode = "markers", 
        color = ~continent, text = ~country) %>% 
  layout(xaxis = x, yaxis = y, title = "GDP Per Capita and Life Expectancy Across the World")