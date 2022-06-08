%Función que recibe una población de n cromosomas con 6 genes binarios
%Devuelve la población ordenada por aptitud, arreglo de aptitudes
%ordenadasy arreglo de probabilidades de cada cromosoma según aptitud (este
%último arreglo solo se utiliza para la selección de ruleta.
function [fit,P,prob] = fitness(P)
len=size(P.chromosome(:));
for i = 1:len
    P.chromosome(i).val=bi2de(transpose(P.chromosome(i).gene(:)),'left-msb');
    fit(i)=((P.chromosome(i).val-31.5)./31.5).^2;
end
[fit,I]=sort(fit,'descend');
P.chromosome(:)=P.chromosome(I);
for i = 1:len
    prob(i)= fit(i)./sum(fit);
end
end