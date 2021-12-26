library(dplyr)
library(tidyr)
library(ggplot2)

irissumm <- iris %>%
  rename(SPECIES = Species) %>%
  pivot_longer(cols = Sepal.Length:Petal.Width, names_to = "COLUMN_NAME", values_to = "VALUE") %>%
  group_by(COLUMN_NAME, SPECIES) %>%
  summarize(CNT = n(), AVG = mean(VALUE), MED = median(VALUE))

