function RealNormale = LoiNormale( n,p )

RealNormale=zeros(1,n);

m=n*p;
o=n*p*(1-p);

for k=1:1000 %quelle valeur max ? qu'est ce qu'on veut vraiment en sorti ?
    e=((k-m)*(k-m))/(2*o*o);
    RealNormale=(1/(o*sqrt(2*pi)))*exp(-e);
end


end

