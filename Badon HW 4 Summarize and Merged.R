remove(list=ls())


library(tidyverse)
library(dplyr)

load("fish_data.Rdata")

f = fish

q1=tapply(f$parcel.density.m3,INDEX=list(f$transect.id),FUN=mean)
q1.df=as.data.frame(q1)
names(q1.df)[1]="mean density"
q1.df$transect=row.names(q1)

q5=tapply(f$parcel.density.m3,INDEX=list(f$transect.id),FUN=sd)
q5.df=as.data.frame(q5)
names(q5.df)[1]="sd density"
q5.df$transect=row.names(q5)

qmerge15 = merge(q1.df,q5.df, by = "transect")

q7=tapply(f$parcel.density.m3,INDEX=list(f$transect.id),FUN = sum)
q7.df=as.data.frame(q7)
names(q7.df)[1]="count"
q7.df$transect=row.names(q7)

qmerge157= merge(qmerge15,q7.df, by = "transect")

q91315  = f %>% group_by(transect.id) %>% summarise(mean_density = mean(parcel.density.m3),sd_density = sd(parcel.density.m3),count_density = n())

q9  = f %>% group_by(transect.id) %>% summarise(mean_density = mean(parcel.density.m3))
q13 = f %>% group_by(transect.id) %>% summarise(sd_density = sd(parcel.density.m3))
q15 = f %>% group_by(transect.id) %>% summarise(count_density = n())                

q17=tapply(X = f$parcel.length.m, INDEX = list(f$area_fac, f$year), FUN = fivenum)



