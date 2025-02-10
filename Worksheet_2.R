variable = 2
myvector = c(2,3,4,54)
myfunction = function()
{
  print("x")
}
myfunction()
for( i in 1:5 )
{
  print("hello")
}
data.frame(x=myvector,y=myvector)


source("helloscript.R")
#-----------------Task 2-----------------------
#(a)-------------------------

X = data.frame( x = c(1,2,3,5,5,6,6), y = c(1,1,1,5,6,5,6))

C = matrix(c(2,2,2,3), nrow = 2, byrow =TRUE)
colnames(C) = c("x", "y")

print(X)
print(C)


#(b)-----------------------

library(ggplot2)
ggplot() + geom_point(data = X, aes(x = x, y = y), color ="blue", shape = 16, size = 2) +
  geom_point(data = as.data.frame(C), aes(x = x, y = y), color = "red", shape = 16, size = 2) +
  labs(title = "Data points and initial codevectors", x = "X", y = "Y") +
  theme_minimal()


#(c)----------------------
set.seed(123)
kmeans_result = kmeans(X, centers = C)
print(kmeans_result)


plot_kmeans = function(data, centers, clusters) {
  ggplot() +
    geom_point(data = data, aes(x =x, y = y, color = factor(clusters)), shape =16, size = 2) +
    geom_point(data = as.data.frame(centers), aes(x = x,y = y), color = "red", shape = 16, size = 2) +
    labs(title = "kmeans clustering", x = "X", y ="Y", color = "Cluster") +
    theme_minimal()
}

plot_kmeans(X, kmeans_result$centers, kmeans_result$cluster)


#(d)-----------------

kmeans_result_one_iter = kmeans(X, centers = C, iter.max = 1)
print(kmeans_result_one_iter)


plot_kmeans(X, kmeans_result_one_iter$centers, kmeans_result_one_iter$cluster)


