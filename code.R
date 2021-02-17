## Monte Carlo simulations
## sample() function: random number generator
beads <- rep(c("red", "blue"), times = c(2,3))
beads
## to randomly pick from the set, use sample()
sample(beads,1)

## Monte Carlo Simulation - use the replicate() function
## replicate() repeats the same task X times
B <- 10000
events <- replicate(B, sample(beads,1))
## use table() to see the distribution
tab <- table(events)
tab
## use prop.table() for proportions
prop.table(tab)