function simRej = Rejet()

U=rand(1,1);
Y=rand(1,1);

while(U>(log(1+Y)/(1+Y)))
    Y=rand(1,1);
    U=rand(1,1);
end

simRej=Y;

end

