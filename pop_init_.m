%Función que recibe dos números chrNo y genNo que corresponden al número de
%cromosomas y número de genes en el cromosoma sucesivamente.
%Devuelve población de cromosomas con las características deseadas.
function population=pop_init_(chrNo,genNo)
population.len=chrNo;
for i = 1:chrNo
    for j = 1:genNo
        population.chromosome(i).gene(j)=randi([0,1]);
    end
end
end