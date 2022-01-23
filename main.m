clear all
clear workspace
clc

% resolver ecuaciones diferenciales por metodo de variables separables %

fprintf("Despeja el diferencial en la ecuaci�n.");
fprintf("\n�Es posible dejar todos los t�mrinos de y de un lado y los de x del otro?");

continuar = input("\n(0) no, (1) s�\n");

if continuar == 1
    syms x y;
    fprintf("\nSepara las variables, de tal forma que ");
    fprintf("f sea la funci�n que multiplica a dx y g a dy.");
    f = input("\nIngresa f (la expresi�n que multiplica a dx): ");
    g = input("\nIngresa g (la expresi�n que multiplica a dy): ");
    F = int(f);
    G = int(g);
    fprintf("\nLado derecho de la ecuaci�n: %s", F);
    fprintf(" + C");
    fprintf("\nLado izquierdo de la ecuaci�n: %s", G);
    fprintf("\nEn este momento ya tienes una soluci�n impl�cita general.");
    fprintf("\nPara conseguir la expl�cita, despeja y para que quede en t�rminos de x.");
elseif continuar == 0
    fprintf("No se puede resolver por este m�todo, intenta otro.\n");
else
    fprintf("Selecci�n inv�lida, reinicie el programa");
end

%   Este solo es un ejemplo para ver como integrar en MATLAB

%   syms x;
%   y = (x.^3)+(2*(x.^2))-x+3;
%   int(y)
%   int(y)