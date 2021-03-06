function PValeur = Runs(x,nb)
  Sn=0;
  
  for i=1:length(x)
      for j=1:nb
          bit=bitget(x(i),j);
          Sn=Sn+bit;
      end
  end
  ppi=Sn/(length(x)*nb);
  
  to=2/sqrt(length(x)*nb);
  
  if (abs(ppi-0.5)>=to)
      PValeur=0;
  else
      Vn=0;
      for i=1:length(x)
        if i< length(x) 
            for j=1:nb
                if(j<nb)               
                    bit=bitget(x(i),j);
                    bit2=bitget(x(i),j+1);
                else
                    bit=bitget(x(i),j);
                    bit2=bitget(x(i+1),1);
                end

                if (bit==bit2)
                    r=0;
                else
                    r=1;
                end
                Vn=Vn+r;
            end
        else
            for j=1:nb-1               
                bit=bitget(x(i),j);
                bit2=bitget(x(i),j+1);
                if (bit==bit2)
                    r=0;
                else
                    r=1;
                end
                Vn=Vn+r;
            end
        end
      end
      Vn=Vn+1;
      n=length(x)*nb;
      int=abs(Vn-(2*n*ppi*(1-ppi)))/(2*sqrt(n)*ppi*(1-ppi));
      PValeur=2*(1-cdf('Normal',int,0,1));
      
  end


end