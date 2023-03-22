generated quantities {

   int<lower=0> N = 50;
   int<lower=0, upper=N> y = 0;
   real<lower=0, upper=1> p = beta_rng(2, 8);
   y = binomial_rng(N, p);
}