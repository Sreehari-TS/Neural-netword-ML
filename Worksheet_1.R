
#-----------------Task 2-----------------------
a = 21
b = 37
c = 3

result = (a * b) + c
print(result)



d = 2
result2 = sqrt(d)
print(result2)


e = 1
f = 1/3
result3 = e - f - f - f
print(result3)

g = 10
result4 = (g^200) * (g^150)
print(result4)


#---------------Task 3-------------------

x = c(1,2,3)
y = c(2,1,-3)
dot_product = sum(x * y)
print(dot_product)



#--------------Task 3--------------------

m1 = matrix(c(1,2,4,5), nrow = 2, byrow = TRUE)
m2 = matrix(c(1,0,0,2), nrow = 2, byrow = TRUE)
print(m1)
print(m2)
product = m1 %*% m2
print(product)



#--------------Task 4 ----------------------
#-a-
coin_flips = sample(c("head","tail"), size = 10, replace = TRUE)
print(coin_flips)

#-b-
uniform_num = runif(50, min = -1, max = 1)
print(uniform_num)

#-c-
column_random = sample(1:3, size = 100, replace = TRUE)
column_norm = rnorm(100, mean = 3, sd = 0.3)
column_uniform = runif(100, min =90, max = 110)
dataframe= data.frame(Column1 = column_random, Column2 = column_norm, Column3 = column_uniform)
print(dataframe)

