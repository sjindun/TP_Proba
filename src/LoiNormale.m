function RealNormale = LoiNormale( n,p )

    U=rand(1,1);
    V=rand(1,1);

    m=n*p;
    o=n*p*(1-p);

    X=sqrt(-log(U))*cos(2*pi*V);

    RealNormale=m+o*X;

end

