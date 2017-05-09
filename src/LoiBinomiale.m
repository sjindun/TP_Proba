function Real = LoiBinomiale( n,p )

densites=zeros(1,n);
densites(1,1)=(p^1)*((1-p)^(n-1))*factorial(n)/(factorial(1)*factorial(n-1));
for i=2:n
    densites(1,i)=densites(1,i-1)+((p^i)*((1-p)^(n-i))*factorial(n)/(factorial(i)*factorial(n-i)));
end

valeur=rand(1,1);

iterateur=n;

while ((iterateur>1)&&(densites(1,iterateur-1)>valeur))
    iterateur=iterateur-1;
end
disp(densites)
disp(valeur)
Real=iterateur-1;

end

