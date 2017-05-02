function tab = VonNeumann (k)
    global sVN;

    tab=zeros(1,k);
    courant=sVN;

    for i=1:k
        sol=courant*courant;
        while sol>9999
            s=num2str(sol);
            s2=s(2:length(s)-1);
            sol=str2double(s2);
        end
        tab(1,i)=sol;
        courant = sol;
    end
end