library(magrittr)
library(dplyr)

heights <- c(173, 168, 171, 189, 179)
weights <- c(65.4, 59.2, 63.6, 88.4, 68.7)
heights_and_weights <- data.frame(heights, weights)

heights_and_weights <- heights_and_weights %>%
  mutate(bmi = weights/(heights/100)^2) %>%
  cbind() 
heights_and_weights