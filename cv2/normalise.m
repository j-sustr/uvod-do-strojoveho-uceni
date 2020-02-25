function [ X, Xmean, Xstd ] = normalise( X )

    % feature normalisation
    Xmean = mean(X);
    Xstd = std(X);
    X = (X - Xmean) / Xstd;

end

