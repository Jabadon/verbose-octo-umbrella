remove(list = ls())

#Homework 3 Jack Badon Upload files

library(data.table)
library(readxl)

load("aurelia_15minCell_statareas.Rdata") #Read R data file

b = read.csv("ENVREC.csv") #Read and save csv file
c = fread(input = "Aurelia_15minCell_statareas.txt", sep = ",", # read and save txt file
          header = T, stringsAsFactors = F)
d = read_xlsx(path="Aurelia_SEAMAP_2012-2018_30minCell.xlsx", sheet = 1, col_names = T)
