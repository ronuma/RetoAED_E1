clear all
clear workspace
clc

% resolver ecuaciones diferenciales por metodo de variables separables %

fprintf("Despeja el diferencial en la ecuaci�n.");
fprintf("\n�Es posible dejar todos los t�mrinos de y de un lado y los de x del otro?");

continuar = input("\n(0) no, (1) s�\n");

if continuar == 1
    % ejecutar el resto del programa
elseif continuar == 0
    fprintf("No se puede resolver por este m�todo, intenta otro.\n");
else
    fprintf("Selecci�n inv�lida, reinicie el programa");
end