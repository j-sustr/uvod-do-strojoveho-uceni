function W = initializeWeights(in, out)

    W = randn(out, in + 1) * sqrt(2.0 / in);
    
    %epsilon_init = 0.12;
    %W = rand(out, 1 + in) * 2 * epsilon_init - epsilon_init;

end
