# The function sapply(x, f) allows any other function f to be applied element-wise to the vector x.
# function to calculate probability of shared bdays across n people
compute_prob <- function(n, B = 10000) {
	same_day <- replicate(B, {
    	bdays <- sample(1:365, n, replace = TRUE)
        any(duplicated(bdays))
    })
    mean(same_day)
}

n <- seq(1, 60)