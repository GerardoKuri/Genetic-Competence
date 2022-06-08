%Función que recibe una población no necesariamente ordenada por aptitud.
%Devuelve la aptitud del cromosoma mejor adaptado y la aptitud promedio de
%la población.
function [best,mean]=popEval(P)
[F,P,Prob]=fitness(P);
len=size(F(:),1);
best=F(1);
mean=sum(F)/len;
end