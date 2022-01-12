# Lecture theme

# A theme for lectures that use the solarized theme

library(ggplot2)
library(ggthemes)

theme_lecture <- theme_hc() + 
  theme(panel.background = element_rect(fill = "#fdf6e3"),
        plot.background = element_rect(fill = "#fdf6e3"),
        legend.background = element_rect(fill="#fdf6e3"))
