%Función que recibe una población ordenada y cruza las parejas en la posición 
%1ra y 2da, 3ra y 4ta y así sucesivamente.
%Estás parejas se cruzan en un punto, para cromosomas con genes pares este 
%punto es la mitad y para impares es la mitad + 1.
%Devuelve población del doble de tamaño con padres en la primera mitad e
%hijos en la segunda.
function P=crossover(P)
len=size(P.chromosome(1).gene(:),1);
if rem(len,2)~=0
    len=len+1;
end
Plen=size(P.chromosome(:),1);
len2=len/2;
for i = 1:2:Plen
    parte11=P.chromosome(i).gene(1:len2);
    parte12=P.chromosome(i).gene(len2+1:end);
    parte21=P.chromosome(i+1).gene(1:len2);
    parte22=P.chromosome(i+1).gene(len2+1:end);
    P.chromosome(i+Plen).gene(1:len2)=[parte11];
    P.chromosome(i+Plen).gene(len2+1:len)=[parte22];
    P.chromosome(i+Plen+1).gene(1:len2)=[parte21];
    P.chromosome(i+Plen+1).gene(len2+1:len)=[parte12];
end
end
