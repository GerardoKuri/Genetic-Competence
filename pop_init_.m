%Funci�n que recibe dos n�meros chrNo y genNo que corresponden al n�mero de
%cromosomas y n�mero de genes en el cromosoma sucesivamente.
%Devuelve poblaci�n de cromosomas con las caracter�sticas deseadas.
function population=pop_init_(chrNo,genNo)
population.len=chrNo;
for i = 1:chrNo
    for j = 1:genNo
        population.chromosome(i).gene(j)=randi([0,1]);
    end
end
end