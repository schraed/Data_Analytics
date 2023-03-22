functions{
    vector tail_delta(vector y, vector theta, real [] x_r, int [] x_i){
        vector[1] deltas;
        deltas[1] = 2 * (normal_cdf(theta[1], 0, exp(y[1]))-0.5) - 0.99;
        return deltas;
    }
}

data{
    vector[1] y_guess;
    vector[1] theta;
}

transformed data{
    vector[1] y;
    real x_r[0];
    int x_i[0];

    y = algebra_solver(tail_delta, y_guess, theta, x_r, x_i);

    print("Standard deviation = ", exp(y[1]));
}

generated quantities {
   real sigma = exp(y[1]);
}

