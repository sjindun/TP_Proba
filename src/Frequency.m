function PValeur = Frequency(x,nb)
  Sn=0;
  
  for i=1:size(x)
      for j=1:nb
          bit=bitget(v(i),j);
          bit=2*bit-1;
          Sn=Sn+bit;
      end
  end
  
  Sobs=abs(Sn)/sqrt(nb);


end