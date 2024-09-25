# clear environment
rm(list=ls())

# load tidyverse package
library(tidyverse)

# load data into r, using tidyverse
# header = T to deal with the header issue
penguin_data <- read_table("./data/penguin_data.txt")

# run linear regression on data
model1 <- lm(body_mass_g ~ flipper_length_mm, data = penguin_data)
summary(model1)

# create a plot of this regression
ggplot(penguin_data, aes(x = flipper_length_mm, y = body_mass_g, colour = species)) +
  geom_point() + stat_smooth(method = 'lm')

# save the plot to your fig folder - saves the last plot that was run
ggsave("figs/1_flipper_bodymass_regression.png")

# subset the data by sex or species
female_penguin_data <- subset(penguin_data, sex == "female")
gentoo_penguin_data <- subset(penguin_data, species == "Gentoo")

# save the edited data sets
write_tsv(female_penguin_data, "results/1_penguin_female_only")
write_tsv(gentoo_penguin_data, "results/2_penguin_gentoo_only")
