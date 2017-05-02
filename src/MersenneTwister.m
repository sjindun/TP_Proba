function tab = MersenneTwister( k )
    global sMT;
    m = 2^31-1;
    
    rng(sMT, 'twister');
    tab = randi(m, 1, k);
end

