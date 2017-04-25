# this is a comment
# it is for  trainging only

cats <- read.csv ("cat.csv", as.is = TRUE)

str (cats)
cats$likes_string <- as.logical (cats$likes_string)
cats
