
#################################################
## GIT
#################################################
setwd('~/Git/newdat/')

system2('git add code.r')
system('git commit -m "finished pca + pca vis"')

system('git push')










#################################################
## PAIRS
#################################################

# -----------------------------------------------
# Resources
# -----------------------------------------------

# -----------------------------------------------
# Libraries
# -----------------------------------------------

if (!require("GGally")) {
   install.packages("GGally", dependencies = TRUE)
   library(GGally)
   }

# -----------------------------------------------
# Functions
# -----------------------------------------------

# -----------------------------------------------
# Parameters
# -----------------------------------------------

# -----------------------------------------------
# Import
# -----------------------------------------------

# Import example data set - iris
data(iris)

# Store data as dat
dat = iris


# -----------------------------------------------
# Body
# -----------------------------------------------


ggpairs(data=dat, # data.frame with variables
        #columns=1:3, # columns to plot, default to all.
        colour = "Species") # aesthetics, ggplot2 style


# -----------------------------------------------
# Export
# -----------------------------------------------











#################################################
## PCA
#################################################

# -----------------------------------------------
# Resources
# -----------------------------------------------

# Scaling variables
# https://www.researchgate.net/post/What_is_the_best_way_to_scale_parameters_before_running_a_Principal_Component_Analysis_PCA

# Correlation or covariance
# http://stats.stackexchange.com/questions/53/pca-on-correlation-or-covariance

# factoextra package
# https://github.com/kassambara/factoextra
# http://www.sthda.com/english/wiki/fviz-pca-quick-principal-component-analysis-data-visualization-r-software-and-data-mining

# Fixing git2r errors on mac
# https://github.com/ropensci/git2r/issues/162

# Tutorial
# https://tgmstat.wordpress.com/2013/11/28/computing-and-visualizing-pca-in-r/#ref1

# -----------------------------------------------
# Libraries
# -----------------------------------------------


## install dependencies for devtools
# install homebrew (required for libgit2, which is required for git2r, which is required for devtools) if el captain on mac
# run through bash
# ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
# brew install libgit2
# brew install openssl


if (!require("devtools")) {
  install.packages("devtools", dependencies = TRUE)
  library(devtools)
}


if (!require("factoextra")) {
  install_github("kassambara/factoextra")
  library(factoextra)
}


# -----------------------------------------------
# Functions
# -----------------------------------------------

# -----------------------------------------------
# Parameters
# -----------------------------------------------

# -----------------------------------------------
# Import
# -----------------------------------------------

# Import example data set - iris
data(iris)

# Store data as dat
dat = iris


# -----------------------------------------------
# Body
# -----------------------------------------------

# isolate numeric features as data frame
dat_numeric = dat[,1:4]

# isolate categorical feature as vector
dat_cat = dat[,5]

# calculate principle components
dat_numeric_pc = prcomp(
  dat_numeric,
  cor = TRUE
  )

# plot contribution of each pc
plot(dat_numeric_pc,type = 'l')

# biplot of pc1 and pc2
fviz_pca_biplot(
  dat_numeric_pc, 
  label="var", 
  habillage=dat_cat,
  addEllipses=TRUE, 
  ellipse.level=0.95
  )




# -----------------------------------------------
# Export
# -----------------------------------------------













#################################################
## RANDOM FOREST
#################################################


# -----------------------------------------------
# Resources
# -----------------------------------------------

# -----------------------------------------------
# Libraries
# -----------------------------------------------

# -----------------------------------------------
# Functions
# -----------------------------------------------

# -----------------------------------------------
# Parameters
# -----------------------------------------------

# -----------------------------------------------
# Import
# -----------------------------------------------

# -----------------------------------------------
# Body
# -----------------------------------------------

# -----------------------------------------------
# Export
# -----------------------------------------------







#################################################
## CLASSIFICATION AND REGRESSION TREES
#################################################

#################################################
## RAPTR
#################################################
