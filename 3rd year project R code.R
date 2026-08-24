$#Parameters
  E0 <- 4
he <- 1
hv <- 1
p <- 3
rv <- 1
re <- 1
sigma <- 0.1 # noise strength
dt <- 0.01 #time step size
T <- 200 #total time, this model is from t=0 to t=200
n <- as.integer(T/dt) + 1
#this is the number of steps needed
#Create 2 vectors of length n
E <- numeric(n)
V <- numeric(n)
E[1] <- 1 #at time t=0 the nutrient level =1
V[1] <- 2 #at time t=0, vegetation =2
for (i in 1:(n-1)) { #begins a loop
  dW <- rnorm(1, mean=0, sd=sqrt(dt)) #generates random increment, can be seen in brownian motion
  f <- re * (E0 * he/(he + V[i]) - E[i]) #defines the system
  g <- rv * (hv/(hv^
                   p + E[i]^p) - V[i])
  E[i+1] <- E[i] + f*dt + sigma*dW #our second sent of adjusted equations with modelling assumption
  V[i+1] <- V[i] + g*dt
}
31
time <- seq(0, T, by=dt) #time vector
plot(time, E, type="l", xlab="Time", ylab="Turbidity (E)",
     main="Stochastic Shallow Lake Dynamics")
window_size <- 500
#Rolling variance
var_roll <- rollapply(E, width=window_size, FUN=var, fill=NA)
#Rolling lag-1 autocorrelation
acf1 <- function(x) {
  acf(x, lag.max=1, plot=FALSE)$acf[2]
}
acf_roll <- rollapply(E, width=window_size, FUN=acf1, fill=NA)
par(mfrow=c(1,1))
#Variance
plot(time, var_roll, type="l", main="Rolling Variance")
#Autocorrelation
plot(time, acf_roll, type="l", main="Rolling Autocorrelation (lag-1)")