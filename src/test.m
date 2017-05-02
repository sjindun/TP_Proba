function tab = test
    global sVN;
    global sRANDU;
    global sMT;
    global sSM;
    
    graine = 215;
    sVN = graine;
    sRANDU = graine;
    sMT = graine;
    sSM = graine;
    
    k = 1000;
    b = 20;
    m = 2^31-1;
    
    tab1 = VonNeumann(k);
    figure(1);
    hist(tab1, b);
    
    tab2 = RANDU(k);
    figure(2);
    hist(tab2, b);
    
    tab3 = MersenneTwister(k);
    figure(3);
    hist(tab3, b);
    
    tab4 = StandardMinimal(k);
    figure(4);
    hist(tab4, b);
    
end