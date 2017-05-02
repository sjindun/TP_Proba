function tab = RANDU (k)
    global sRANDU;
    a=65539;
    m=2^31;
    
    tab=zeros(1,k);
    courant=sRANDU;

    for i=1:k
        sol = mod( (courant * a), m);
        courant = sol;
        tab(1,i)=sol;
    end
end