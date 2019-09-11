remove(list=ls())

a = c(2:14)

b = c("hello", "cat", "dog", "pig","tacocat")

#we are going to turn our vector into a list

b = list(b)
str(b)

m = matrix(data = 1:12, nrow = 4, ncol = 3, 
           dimnames =list(c("r1","r2","r3","r4"),                          c("c1","c2","c3",)))

a.ray = array(data = 1:24, dim=c(3,4,2))
a.ray
class(a.ray)
typeof(a.ray)
index[]