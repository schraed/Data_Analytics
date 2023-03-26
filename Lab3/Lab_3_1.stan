data {
    int<lower=0> N;
    int<lower=0> y;
}

parameters {
    real<lower=0, upper=1> p;
}

model {

    p ~ beta (2,8); #(a/(a+b)), prior 

    y ~ binomial(N,p); 
}
generated quantities {
   int<lower=0, upper=N> y_pred = binomial_rng(N,p);
}