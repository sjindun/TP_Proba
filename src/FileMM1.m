function [ arrivee,depart ] = FileMM1( lambda,mu,D )

    %arrivee=zeros(1,50);
    arrivee(1,1)=Exponentielle(lambda);
    it=2;
    suivant=arrivee(1,it-1)+Exponentielle(lambda);

    while(suivant<D)
        arrivee(1,it)=suivant;
        it=it+1;
        suivant=arrivee(1,it-1)+Exponentielle(lambda);

    end


    depart(1,1)=Exponentielle(mu)+arrivee(1,1);
    if(depart(1,1)<arrivee(1,2))
        next=Exponentielle(mu)+arrivee(1,2);
    else
        next=Exponentielle(mu)+depart(1,1);
    end

    j=2;

    while(next<D)
        depart(1,j)=next;

        if(it-1>j && depart(1,j)<arrivee(1,j+1))
            next=Exponentielle(mu)+arrivee(1,j+1);
        else
            next=Exponentielle(mu)+depart(1,j);
        end
        j=j+1;
    end
end

