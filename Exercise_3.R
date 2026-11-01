my_mat <- matrix(1:16, nrow = 4, byrow = TRUE)
my_mat
my_array <- array(1:16, dim = c(2, 4, 2))
my_array
rownames(my_mat) <- c("A", "B", "C", "D")
colnames(my_mat) <- c("a", "b", "c", "d")
my_mat
my_mat_t <- t(my_mat)
my_mat_t
my_mat_diag <- diag(my_mat)
my_mat_diag
mat.1 <- matrix(c(2, 0, 1, 1), nrow = 2) 
mat_1
mat.1
mat.2 <- matrix(c(1, 1, 0, 2), nrow = 2)
mat.2
mat.1 + mat.2
mat.1 * mat.2
mat.1 %*% mat.2
list_1 <- list(c("black", "yellow", "orange"),
               c(TRUE, TRUE, FALSE, TRUE, FALSE, FALSE),
               matrix(1:6, nrow = 3))
list_1
list_2 <- list(colours = c("black", "yellow", "orange"), 
              evaluation = c(TRUE, TRUE, FALSE, TRUE, FALSE, FALSE), 
              time = matrix(1:6, nrow = 3))
list_2
names(list_1) <- c("colours", "evaluation", "time")
list_1


flowers <- read.table('~/workspace/PU5058_class/data/flowers.txt', header = TRUE, sep = "\t")
flowers
str(flowers)

# data.frame':	96 obs. of  8 variables:
#  $ treat    : chr  "tip" "tip" "tip" "tip" ...
#  $ nitrogen : chr  "medium" "medium" "medium" "medium" ...
#  $ block    : int  1 1 1 1 1 1 1 1 2 2 ...
#  $ height   : num  7.5 10.7 11.2 10.4 10.4 9.8 6.9 9.4 10.4 12.3 ...
#  $ weight   : num  7.62 12.14 12.76 8.78 13.58 ...
#  $ leafarea : num  11.7 14.1 7.1 11.9 14.5 12.2 13.2 14 10.5 16.1 ...
#  $ shootarea: num  31.9 46 66.7 20.3 26.9 72.7 43.1 28.5 57.8 36.9 ...
#  $ flowers  : int  1 10 10 1 4 9 7 6 5 8 ...
flowers$height
f1 <- flowers$height
summary(f1)
flowers[1, 4]
flowers[1:10, 1:4]
flowers[c(1, 5, 12, 30), c(1, 3, 6, 8)]
flowers[1:8, ]
flowers[, 1:3]
flowers[-(1:85), -c(4, 7, 8)]
flowers[1:5, c('treat', 'nitrogen', 'leafarea')]

flowers[flowers$height > 12, ]
flowers$height > 12
flowers[flowers$nitrogen == "high", ]
flowers[flowers$nitrogen != "medium", 1:4] 

flowers[flowers$height >= 6 &flowers$nitrogen == "medium" & flowers$treat == "notip", ]
nit_not_medium <- flowers[flowers$nitrogen != "medium", 1:4]
nit_not_medium
height2.2_12.3 <- flowers[flowers$height > 12.3 | flowers$height < 2.2, ]
height2.2_12.3 

tip_med_2 <- subset(flowers, treat == "tip" & nitrogen == "medium" & block == 2)
tip_med_2

height_ord <- flowers[order(flowers$height), ]        
height_ord
leafarea_ord <- flowers[order(flowers$leafarea, decreasing = TRUE), ]        
leafarea_ord


block_height_ord <- flowers[order(flowers$block, flowers$height), ]        
block_height_ord

block_revheight_ord <- flowers[order(flowers$block, -flowers$height), ]        
block_revheight_ord

block_revheight_ord <- flowers[order(-xtfrm(flowers$nitrogen), flowers$height), ]        
block_revheight_ord

flowers$nitrogen <- factor(flowers$nitrogen, 
                           levels = c("low", "medium", "high"))
nit_ord <- flowers[order(flowers$nitrogen),]
nit_ord


df1 <- data.frame(id = 1:4, height = c(120, 150, 132, 122),
                  weight = c(44, 56, 49, 45))
df1

df2 <- data.frame(id = 5:6, height = c(119, 110),
                  weight = c(39, 35))
df2

df3 <- data.frame(id = 1:4, height = c(120, 150, 132, 122),
                  weight = c(44, 56, 49, 45))
df4 <- data.frame(location = c("UK", "CZ", "CZ", "UK"))
df3
df4

df_rcomb <- rbind(df1, df2)
df_rcomb



df_ccomb <- cbind(df3, df4)
df_ccomb
df_rcomb$height_log10 <- log10(df_rcomb$height)

df_rcomb

str(df_rcomb)

df_rcomb$Fid <- factor(df_rcomb$id)

df_rcomb
str(df_rcomb)

