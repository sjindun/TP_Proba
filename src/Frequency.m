function PValeur = Frequency(x,nb)
  Sn=0;
  
  for i=1:length(x)
      for j=1:nb
          bit=bitget(x(i),j);
          bit=2*bit-1;
          Sn=Sn+bit;
      end
  end
  
  Sobs=abs(Sn)/sqrt(length(x)*nb);
  PValeur=2*(1-cdf('Normal',Sobs, 0, 1));

end