function tab = StandardMinimal(k)
    global sSM;
    m = 2^31-1;
    
    rng(sSM, 'v4');
    tab = randi(m, 1, k);
    
    sSM = tab(k);
end

