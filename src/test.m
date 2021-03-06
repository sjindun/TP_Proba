function tab = test
    global sVN;
    global sRANDU;
    global sMT;
    global sSM;

    % � initialiser au d�but
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

%     %% Q3 : Test de fr�quence monobit
%     Pvaleur1 = Frequency(tab1, 31);
%     Pvaleur2 = Frequency(tab2, 31);
%     Pvaleur3 = zeros(1, nbInit);
%     Pvaleur4 = zeros(1, nbInit);
%     for i=1:nbInit
%         sMT = sMT+1;
%         sSM = sSM+1;
%         Pvaleur3(1,i) = Frequency(MersenneTwister(k), 31);
%         Pvaleur4(1,i) = Frequency(StandardMinimal(k), 31); 
%     end
%     disp('PValeur1=')
%     disp(Pvaleur1)
%     disp('PValeur2=')
%     disp(Pvaleur2)
%     disp('PValeur3=')
%     disp(Pvaleur3)
%     disp('PValeur4=')
%     disp(Pvaleur4)
    
    
%         %% Q4 : Test de runs
%     Pvaleur1 = Runs(tab1, 31);
%     Pvaleur2 = Runs(tab2, 31);
%     Pvaleur3 = zeros(1, nbInit);
%     Pvaleur4 = zeros(1, nbInit);
%     for i=1:nbInit
%         sMT = sMT+1;
%         sSM = sSM+1;
%         Pvaleur3(1,i) = Runs(MersenneTwister(k), 31);
%         Pvaleur4(1,i) = Runs(StandardMinimal(k), 31); 
%     end
%     disp('PValeur1=')
%     disp(Pvaleur1)
%     disp('PValeur2=')
%     disp(Pvaleur2)
%     disp('PValeur3=')
%     disp(Pvaleur3)
%     disp('PValeur4=')
%     disp(Pvaleur4)
   
    
%         %% Q6 : Loi binomiale
%     tabBin=zeros(1,1000);
%     n=20;
%     p=0.2;
%     for i=1:1000
%         tabBin(1,i) = LoiBinomiale(n,p); 
%     end
%     figure(1);
%     hist(tabBin,20);
    
%             %% Q7 : Loi normale
%     tabNom=zeros(1,1000);
%     n=20;
%     p=0.2;
%     for i=1:1000
%         tabNom(1,i) =LoiNormale(n,p); 
%     end
%     figure(1);
%     hist(tabNom,20);
    
%                 %% Q8 : Inversion et rejet
%     inv=zeros(1,1000);
%     rej=zeros(1,1000);
% 
%     for i=1:1000
%         inv(1,i) =Inversion();
%         rej(1,i) =Rejet();
%     end
%     
%     c=2/(log(2)*log(2));
%     x=0:0.05:1;
%     y=0:0.05:1;
%     for i=1:20
%         y(i) = c*log(1+x(i)) / (1+x(i));
%     end
% 
%     
%     figure(3);
%     plot(x,y);
%     
%     figure(1);
%     hist(inv,20);
%     figure(2);
%     hist(rej,20);

%                 %% Q9 : Exponentielle
%     exp=zeros(1,1000);
%     x = 0:0.01:5;
%     exp2=pdf('exp',x,1/2); %ATTENTION mu = 1/lambda
%     
%     for i=1:1000
%         exp(1,i) =Exponentielle(2);
%         
%     end
% 
%     figure(1);
%     hist(exp,20);
%     figure(2);
%     plot(x, exp2);


%                 %% Q10 : FileMM1
%       D=60;
%       pas=0.05;
%      [a,d]=FileMM1(2,1.5,D);
%      e=Evolution(a,d,D,pas);
%      disp('arriv�es=')
%      disp(a)
%      disp('departs=')
%      disp(d)
%      %disp('evolution=')
%      %disp(e)
%      figure(1)
%      x = 0:pas:D;
%      stairs(x,e(1,:))

end