
#filterg=data.frame("Columns"=character(),"Keys"=character(),"I/E"=character(),stringsAsFactors = FALSE)
#colors=colors()[c(85:131)*5]
library(dplyr)
library(shiny)
library(stringdist)
library(igraph)
library(visNetwork)
library(CINNA)
library(DT)
library(ggraph)
library(graphlayouts)
library(cluster)
library(shinyalert)
library(shinybusy)
library(shinythemes)
library(optrees)
# library(shallot) # this one pops up the scala warning
library(aricode)
library(gplots)
library(shinyFiles)
library(shinyBS)
library(stringr)
library(zip)
library(Biostrings)


# source('stringdistances.R', echo=TRUE)
# source('visualisation.R', echo=TRUE)
# source('filtered.R', echo=TRUE)
# source('multiple_clustering.R', echo=TRUE)
# source('visual_extended.R', echo=TRUE)
# source('clusterMetrics.R', echo=TRUE)
# source('MST.R')

source("helpers.R", echo = FALSE)

# source('C:/Users/Paul Kallin/Desktop/myApp/stringdistances.R', echo=TRUE)
# source('C:/Users/Paul Kallin/Desktop/myApp/visualisation.R', echo=TRUE)
# source('C:/Users/Paul Kallin/Desktop/myApp/filtered.R', echo=TRUE)
# source('C:/Users/Paul Kallin/Desktop/myApp/mstClustering.R', echo=TRUE)
# source('C:/Users/Paul Kallin/Desktop/myApp/multiple_clustering.R', echo=TRUE)
# source('C:/Users/Paul Kallin/Desktop/myApp/visual extended.R', echo=TRUE)
# source('C:/Users/Paul Kallin/Desktop/myApp/clusterMetrics.R', echo=TRUE)

colors=unique(gsub('[0-9]+','', colors()))
colors=colors[length(colors):1]
# colors=c("green","yellow","red","blue","orange","purple","grey","pink","black","brown","lightblue")
# colors=rep(colors,19)
id=NULL