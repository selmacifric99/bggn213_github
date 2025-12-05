#' ---
#' title: "Class 4 Lab"
#' author: "Selma Cifric PID A69042976"
#' date: "October 10th, 2025"
#' ---

#My first R script for BGGN213 - Oct 10 2025
x <- 1:50
plot(x)
plot(x, col="blue")
plot(x, sin(x), type="l", col="#A827B2", lwd=3)

log(10) #natural log
log(10, base=10)
log(10, 2) #we dont have to write base=2, R takes it by the order