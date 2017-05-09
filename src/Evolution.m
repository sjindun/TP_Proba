function nombres = Evolution( a,d,D, pas )

nombres=zeros(1,D/pas);
iA=1;
iD=1;
i=1;
gens=0;
for t=0:pas:D
    if(iA<=length(a) && a(1,iA)<t)
        gens=gens+1;
        iA=iA+1;
    end
    if(iD<=length(d) && d(1,iD)<t)
        gens=gens-1;
        iD=iD+1;
    end
    
    nombres(1,i)=gens;
    i=i+1;
end


end

