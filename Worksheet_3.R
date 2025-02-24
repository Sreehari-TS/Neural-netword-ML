#-------------------------Task 1-----------------------------

data = data.frame(
  x = c(-3, -2, 0, 2, 3),
  y = c(-3, 2, 0, -2, 3),
  z = c(1, 0, 0, 0, -1)
)

print(data)
cov_matrix = cov(data)
print("Coveriance Matric : ")
print(cov_matrix)


eigen_decomp = eigen(cov_matrix)
print("Eigen values :")
print(eigen_decomp$values)

print("Eigen vectors : ")
print(eigen_decomp$vectors)

pca_result = prcomp(data, center = FALSE, scale. = FALSE)
print("Rotation Matrix (prcomp eigenvectors):")
print(pca_result$rotation)
print("Standard deviations (sqrt of eigenvalues from prcomp):")
print(pca_result$sdev^2)

#compare the eigenvalues and eigenvectors

cat("Are the eigenvectors identical?", all.equal(unname(abs(eigen_decomp$vectors)), unname(abs(pca_result$rotation))), "\n")
cat("Are the eigenvalues identical?", all.equal(eigen_decomp$values, pca_result$sdev^2), "\n")



#---------------------------Task 2-----------------


library(ggplot2)

sampledata4d <- read.csv("C:/Docs/sampledata4d.csv")
sampledata5d <- read.csv("C:/Docs/sampledata5d.csv")


pca_4d = prcomp(sampledata4d, center =TRUE, scale. = TRUE)
print("PCA Summary of 4D dataset is : ")
print(summary(pca_4d))
print("Rotation of 4D dataset is : ")
print(pca_4d$rotation)


pca_5d = prcomp(sampledata5d, center =TRUE, scale. = TRUE)
print("PCA Summary of 5D dataset is : ")
print(summary(pca_5d))
print("Rotation of 5D dataset is : ")
print(pca_5d$rotation)


screeplot(pca_4d, main = "Screeplot of 4d dataset")
screeplot(pca_5d, main = "Screeplot of 5d dataset")

#-----------------Task 3----------------------------
matr = matrix(c(0,1,3,3,5,
                1,0,3,3,5,
                3,3,2,0,5,
                3,3,2,0,4,
                5,5,5,4,0),
              nrow =5, ncol = 5, byrow = TRUE)
print(matr)
dist_matrix = as.dist(matr)
print(dist_matrix)
hc = hclust(dist_matrix, method = "single")
print(hc)
plot(hc, main = "single linkage dendrogram")

#hierarchial cusering on the iris dataset


data(iris)

hc_single = hclust(dist(iris[, - 5]),method = "single")
hc_complete = hclust(dist(iris[, - 5]),method = "complete")
hc_average = hclust(dist(iris[, -5]), method = "average")

par(mfrow = c(1,3))
plot(hc_single, main = "Single Linkage")
plot(hc_complete, main = "complete Linkage")
pot(hc_average, main = "Average Linkage")

# Generate a heatmap using the iris dataset
library(gplots)

heatmap.2(as.matrix(iris[, -5]), 
          trace = "none", 
          col = heat.colors(256), 
          main = "Heatmap of Iris Data")




#----------------TASK 4---------------

confusionmatrix = function(trueoutputs, predictedoutputs) {
  tp = sum(trueoutput == 1 & predictedoutput == 1)
  tn = su
}
