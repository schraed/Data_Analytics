generated quantities {

   real <lower=0> mu = normal_rng(157,10);

   real <lower=0> sigma = normal_rng(10,5);

   real <lower=0> height = normal_rng(mu, sigma);

}

