rm(list=ls())
library(gtable)
library(ggplot2)
library(tidyr)
library(tibble)
library(ggimage)
library(ggrepel)
library(crayon)
library(scatterpie)
library(dplyr)
tb<-read.csv("OneDrive/毕业论文/R/data.csv",header = TRUE)
tb <-tb[which(tb$Type=="Benefit"),]
tb$sum<-tb$IME.8+tb$IME.11+tb$DOE.8+tb$DOE.11+tb$DOE.12
head(tb)
world_data<-map_data("world")

#country <-c("China","India","Brazil","USA","Russia","Pakistan","Bangladesh","Australia","Nigeria","South Africa", "Saudi Arabia",
#            "Mexico", "Indonesia", "Canada")
#country <-c("China","India","Brazil","USA","Russia","Pakistan","Bangladesh","Australia","Nigeria","South Africa", "Saudi Arabia")
country <-c("USA","Canada","Indonesia", "Saudi Arabia","Mexico")

p <- ggplot()+
  geom_polygon(data = world_data, aes(x=long, y=lat,group=group, fill = (region %in% country)),color="white")+
  theme_void()
p + geom_scatterpie(data=tb,aes(x=lat,y=long,r=sqrt(1000*sum)),cols = c("IME.8","IME.11","DOE.8","DOE.11","DOE.12"))+
  scale_fill_manual(values = c("red","yellow","green","blue","pink","grey90","grey50"),drop=FALSE)+
#  annotate("text",label=tb$Country[1],x=tb$lat[1]-12,y=tb$long[1]-3,color="black",size=3)+
#  annotate("text",label=tb$Country[2],x=tb$lat[2]-2,y=tb$long[2]-6,color="black",size=3)+
#  annotate("text",label=tb$Country[3],x=tb$lat[3]-2,y=tb$long[3]-6,color="black",size=3)+
   annotate("text",label=tb$Country[4],x=tb$lat[4]-12,y=tb$long[4],color="black",size=3)+
#  annotate("text",label=tb$Country[5],x=tb$lat[5]+10,y=tb$long[5],color="black",size=3)+
#  annotate("text",label=tb$Country[6],x=tb$lat[6]-8,y=tb$long[6],color="black",size=3)+
#  annotate("text",label=tb$Country[7],x=tb$lat[7]+5.5,y=tb$long[7]+3.5,color="black",size=3)+
#  annotate("text",label=tb$Country[8],x=tb$lat[8],y=tb$long[8]+5,color="black",size=3)+
#  annotate("text",label=tb$Country[9],x=tb$lat[9]-2,y=tb$long[9]-6,color="black",size=3)+
#  annotate("text",label=tb$Country[10],x=tb$lat[10]-7,y=tb$long[10],color="black",size=3)+
   annotate("text",label=tb$Country[11],x=tb$lat[11]-1,y=tb$long[11]-5,color="black",size=3)+
   annotate("text",label=tb$Country[12],x=tb$lat[12]-2,y=tb$long[12]-5,color="black",size=3)+
   annotate("text",label=tb$Country[13],x=tb$lat[13]-9,y=tb$long[13]-3,color="black",size=3)+
   annotate("text",label=tb$Country[14],x=tb$lat[14]-2,y=tb$long[14]-5,color="black",size=3)

