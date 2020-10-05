# Q1 -Pythagorean Theorem Function
is_pythagorean = function(a,b,c) {
  # calculate a*a + b*b and c*c
  before = a*a + b*b
  after = c*c
  # compare both values to see if equation stands
  if (before == after) {
    return (TRUE)
  }
  if (before != after) {
    return (FALSE)
  }
}
is_pythagorean(3,4,5)

# Q2 -Loops
is_prime = function(n){
  div = seq(2:n)
  num = c()
  for (i in seq(2:n)) {
    if(any(x==i)) {
      num = c(num,i)
      div = c(div[div %% i] !=0,i) 
    }
  }
  return (num[(num>=100)])
}
rev(is_prime(1000))
#Q3 
blends = matrix(c(20,30,50,30,20,60,30,30,32), 
                nrow =3, 
                dimnames = list(c("A","B","C"),c("Wine","Vodka","Lemon Juice")))
blends
price = matrix(c(5,45,10),
               nrow=3,
               dimnames = list(c("Wine","Vodka","Lemon Juice"),c("Price")))
price

#Part A-Showing the price of each blend
a = price[,"Price"]*blends["A",]
print(paste("The price of blend A is ", sum(a),"dollars."))
b = price[,"Price"]*blends["B",]
print(paste("The price of blend B is ", sum(b),"dollars."))
c = price[,"Price"]*blends["C",]
print(paste("The price of blend C is ", sum(c),"dollars."))

#Part B-total price of 10 blends of Type A, 4 blends of Type B and 5 blends of Type C.
total = 10*sum(a) + 4*sum(b) + 5*sum(c)
print(paste("The total price is ", total, "dollars"))

