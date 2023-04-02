data{

    int <lower = 0> N;

    real <lower = 0, upper = N> heights[N];

}

parameters{

    real <lower = 0> mu;

    real <lower = 0> sigma;
}

model{

    mu ~ normal (177, 8);

    sigma ~ normal (10, 5);

    heights ~ normal (mu, sigma);
}

generated quantities {

   real height = normal_rng(mu, sigma);
}