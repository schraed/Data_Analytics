generated quantities {

   int<lower=0> N = 50; #number of trails 
   int<lower=0, upper=N> y = 0; #number of successes
   real<lower=0, upper=1> p = beta_rng(2, 8); #probability of allergic reaction (a/(a+b)) = 0.2
   y = binomial_rng(N, p); #(number of trails, probability of each trial)
}