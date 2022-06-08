clear all;
close all;
clc;

%%
%Captura de parámetros iniciales 
M=10;
epsilon=0.95;
chroNo=10;
genNo=6;
tic
%%
%Generación de población y evalución de población generada
P=pop_init_(chroNo,genNo);
[best,mean]=popEval(P);
cont=1;
X(cont)=cont;
Ymean(cont)=mean;
Ybest(cont)=best;

%%
%Generación y evalución de generaciones: criterio de término es iteraciones
%máximas = M y promedio de aptitud > epsilon 
while cont<M & mean<epsilon
    %Selección de parejas a cruzar
    P=selection('monoRan',P);
    %Cruza de población 
    P=crossover(P);
    %Criterio elitista: Competencia genética
    [F,P,Prob]=compGen(P);
    %Evaluación de nueva generación y captura del hijo medio y mejor
    %adaptado
    [best,mean]=popEval(P);
    cont=cont+1;
    X(cont)=cont;
    Ymean(cont)=mean;
    Ybest(cont)=best;
end
toc
%%
%Gráfica de Hijo Medio
subplot(1,3,1);
plot(X,Ymean,'-b');
hold on;
plot(X,Ymean,'*k');
title('Hijo Medio');
ylabel('Aptitud');
xlabel('Iteración #');
hold on;
ylim([0 1]);
%%
%Gráfica de Mejor Adaptado
subplot(1,3,2);
plot(X,Ybest,'-b');
hold on;
plot(X,Ybest,'*k');
title('Mejor Adaptado');
ylabel('Aptitud');
xlabel('Iteración #');
hold on;
ylim([0 1]);
%%
%Gráfica Dominio Real
subplot(1,3,3);
for i = 1:chroNo
    X(i)=P.chromosome(i).val;
end
X=((X)-31.5)/31.5; 
plot(X,F,'*k');
title('Dominio Real');
hold on;
ylabel('Aptitud');
xlabel('Dominio');
ylim([0 1]);
xlim([-1.5 1.5]);










