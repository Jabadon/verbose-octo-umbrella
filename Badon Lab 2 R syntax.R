remove(list=ls())
 a =  7
 1 -> b
 c =  "cat"
 d =  2:2
 e =  factor(c("apple","orange","orange","apple"))

class(a)
class(c)
class(d)
class(e)
 
 a %%  d     #This gives the remainder 7 divided by 2 is 3 with a remainder of 1.  So the output is 1
 a ^   d     #This raises a to the power d, which is 49
 a %/% d     #This gives the quotiant 

 q =  1:10

 x =  7
 y =  3.2
 z =  5

 x *  y + z  #Order of operations so first x * y, (7 * 3.2) gives us the value 22.4 plus z = 5 we have 27.4
 
 x * (y + z) #Order of operations so first (y + z), (3.2 + 5) gives us the value 8.2 then we multiple by x = 7 yielding the value 57.4

 2 ^  4321   #  2 to the power of 4321 is too large of a number to compute so it spits out the result as  inf which is shorthand for positive infinity
-2 ^  4321   # -2 to the power of 4321 is too small of a number to compute so it spits out the result as -inf which is shorthand for negative infinity

 0/0         # 0/0 is an impossible function and R turn returns NaN which is short for not a number
 
 l = NULL
is.null(l)    #No value was assigned to the value

length(q) = 11
q                  #NA means there is a missing value q initially had a length of values 1:10 by introducing the length as 11 for the eleventh spot it inputs NA because there is no value available

`%myop%` <- function(x,y) {2*x + 2*y}
4%myop%8

switcheroo.if.then = function(x){
  if(x == "a")
    "camel"
  else if(x == "b")
    "bear"
  else if(x == "c")
    'alligator'
  else
    "moose"
  }
switcheroo.if.then("a")


