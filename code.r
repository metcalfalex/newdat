
## IMPORT
# Import example data set - iris

data(iris)


## PAIRS

library(GGally)

ggpairs(data=tips, # data.frame with variables
        columns=1:3, # columns to plot, default to all.
        title="tips data", # title of the plot
        colour = "sex") # aesthetics, ggplot2 style


## PCA

## RANDOM FOREST

## CART

## RAPTR

