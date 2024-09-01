# criando o vetor x
x <- c(8.14, 11.43, 9.64, 11.26, 10.21, 8.43, 9.17, 8.01, 10.23, 8.65)

# amplitude
A <- max(x) - min(x)
A
# definindo a variancia
s21 <- 10
s22 <- 2

# gerando dados normais 
x1 <- rnorm(100, 0, sd = sqrt(s21))
x2 <- rnorm(100, 0, sd = sqrt(s22))

# histogramas
hist(x1, main = "", probability = TRUE, col = "steelblue",
     xlim = c(-6,6),ylim = c(0, 0.3), xlab = "x")
hist(x2, probability = TRUE, add = TRUE)

# variancia
var(x1)
var(x2)
quantile(x1) # Divisão dos termos em relação o valor dos dados

(sum(10-22.5)^2 + (15-22.5)^2 + (20-22.5)^2 + (25-22.5)^2 + (30-22.5)^2 + (35-22.5)^2)/5
sqrt(87.5)
(9.354143/22.5)*100

(sum(100-112.5)^2 + (105-112.5)^2 + (110-112.5)^2 + (115-112.5)^2 + (120-112.5)^2 + (125-112.5)^2)
437.5/5
(9.354143/112.5)

A <- c(10,15,20,25,30,35)
C <- mean(A)
var(A)
D <- sd(A)
CV <-(D/C)*100 ; CV
par(mfrow = c(2, 1))
plot(A, col = 'red', type = 'o', pch = 7)
abline(h = C)
plot(B, col = 'green', type = 'o', pch = 8)
abline(h = M)


B <- c(100,105,110,115,120,125)
M <- mean(B)
var(B)
D <- sd(B)
CV <-(D/M)*100 ; CV
plot(B, col = 'green', type = 'o', pch = 4)
abline(h = M)
