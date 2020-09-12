#Coding in R
# Question 1
vector_of_random_numbers = runif(n=1000, min =-10, max=10)
vector_of_random_numbers

#a. 
#runif generates 1000 random uniform numbers between -10 and 10.

#b.
result_mean = mean(vector_of_random_numbers)
result_mean


# Question 2
#Prompting users for name
name = readline(prompt = "Enter your name: ")
age = readline(prompt = "Enter your age: ")
print(paste('Your name is ' , name, " and your age is " ,age))


# Question 3
#Prompting user for path
directory = readline(prompt = "Enter your working directory: ")
#Change working directory based on user's response
setwd(directory)


# Question 4
#ls() tells you the variables and functions in your current working space
ls()
#dir() tells you the file/folder within a directory
dir()
#enviroment() tells you the current enviroment
environment()


# Question 5
v = c(0:150)
v

#a. compute mean of all vectors
mean(v)

#b. compute mean of numbers divisible by 3
number = which (v%%3 ==0)
new = v[c(number)]
mean(new)


# Question 6
vector_of_random_integers = runif(n=10, min =-50, max=50)
vector_of_random_integers

#a. compute sum, mean, and product of vectors
#sum
sum(vector_of_random_integers)
#mean
mean(vector_of_random_integers)
#product
prod(vector_of_random_integers)


# Question 7
#prompting users for initial, final, and denom
#Then convert character into vector
initial = as.integer(readline(prompt = "Enter the initial number: "))
final = as.integer(readline(prompt = "Enter the final number: "))
denom = as.integer(readline(prompt = "Enter the denom number: "))
#compute sum, average, and product of divisible numbers
numbers = c(initial:final)
index_number = which(numbers%%denom==0)
divisible_number = x[c(index_number)]
divisible_number
sum(divisible_number)
mean(divisible_number)
prod(divisible_number)



#Math with R
# Question 1
#Prompting user for number
number = as.integer(readline(prompt = "Enter a number: "))
sqrt(number)


# Question 2
#Prompting user for its exponential 
exponent = as.integer(readline(prompt = "Enter a number as an exponent: "))
exp(exponent)


# Question 3
#Prompting user for natural log
logarithm = as.integer(readline(prompt = "Enter a number: "))
log10(logarithm)



#Calculus Questions
# Question 1
#Function increases when its first derivative is positive, hence true.


# Question 2
#a.
# x >= -1

#b.
# all real numbers





