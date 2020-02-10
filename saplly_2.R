# function for computing exact probability of shared birthdays for any n
exact_prob <- function(n){
    prob_unique <- seq(365, 365-n+1)/365   # vector of fractions for mult. rule
    1 - prod(prob_unique)    # calculate prob of no shared birthdays and subtract from 1
}

# applying function element-wise to vector of n values
eprob <- sapply(n, exact_prob)

prob <- sapply(n, compute_prob)    # element-wise application of compute_prob to n
plot(n, prob)

# plotting Monte Carlo results and exact probabilities on same graph
plot(n, prob)    # plot Monte Carlo results
lines(n, eprob, col = "red")    # add line for exact prob