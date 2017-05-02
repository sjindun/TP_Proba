function PValeur = Runs(x,nb)
  Sn=0;
  
  for i=1:length(x)
      for j=1:nb
          bit=bitget(x(i),j);
          Sn=Sn+bit;
      end
  end
  pi=Sn/(length(x)*nb);
  
  to=2/sqrt(length(x)*nb);
  
  if abs(pi-0.5)>=to
      PValeur=0;
  else
      Vn=0;
      for i=1:length(x)
        if i< length(x) 
            for j=1:nb
                if(j<nb)               
                    bit=bitget(x(i),j);
                    bit2=bitget(x(i),j);
                else
                    bit=bitget(x(i),j);
                    bit2=bitget(x(i+1),1);
                end

                if bit==bit2
                    r=0;
                else
                    r=1;
                end
                Vn=Vn+r;
            end
        else
            for j=1:nb-1               
                bit=bitget(x(i),j);
                bit2=bitget(x(i),j);
                if bit==bit2
                    r=0;
                else
                    r=1;
                end
                Vn=Vn+r;
            end
        end
      end
      Vn=Vn+1;
      
      PValeur=2*(1-cdf('Normal',abs(Vn-(2*length(x)*nb*pi*(1-pi)))/(2*sqrt(length(x)*nb)*pi*(1-pi)),0,1));
      
  end


end