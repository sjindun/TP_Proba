function tab = test
    global sVN;
    global sRANDU;
    global sMT;
    global sSM;
    
%     graine = 215;
%     sVN = graine;
%     sRANDU = graine;
%     sMT = graine;
%     sSM = graine;
    
    k = 1000;
    b = 20;
    m = 2^31-1;
    nbInit = 100;
    
    tab1 = VonNeumann(k);
    tab2 = RANDU(k);
    tab3 = MersenneTwister(k);
    tab4 = StandardMinimal(k);
     
    %% Q2 : Affichage des histogrammes
%     figure(1);
%     hist(tab1, b);
%     figure(2);
%     hist(tab2, b);
%     figure(3);
%     hist(tab3, b);
%     figure(4);
%     hist(tab4, b);

    %% Q3 : Test de fréquence monobit
    Pvaleur1 = Frequency(tab1, 31);
    Pvaleur2 = Frequency(tab2, 31);
    Pvaleur3 = zeros(1, nbInit);
    Pvaleur4 = zeros(1, nbInit);
    for i=1:nbInit
        sMT = sMT+1;
        sSM = sSM+1;
        Pvaleur3(1,i) = Frequency(MersenneTwister(k), 31);
        Pvaleur4(1,i) = Frequency(StandardMinimal(k), 31); 
    end
    disp('PValeur1=')
    disp(Pvaleur1)
    disp('PValeur2=')
    disp(Pvaleur2)
    disp('PValeur3=')
    disp(Pvaleur3)
    disp('PValeur4=')
    disp(Pvaleur4)

    
end