# clear environment
rm(list=ls())

# load tidyverse package
library(tidyverse)

# load data into r, using tidyverse
# header = T to deal with the header issue
penguin_data <- read_table("./data/penguin_data.txt")

# run linear regression on data
lm(body_mass_g ~ flipper_length_mm, data = penguin_data)

# save model, then plot
model1 <- lm(body_mass_g ~ flipper_length_mm, data = penguin_data)
summary(model1)

#git config --global user.email [your github email address]
#git config --global user.name [your github username]

git remote add origin https://github.com/c-noonan-02/penguin_project.git
git branch -M main
git push -u origin main

