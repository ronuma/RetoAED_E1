clear all
clear workspace
clc

% resolver ecuaciones diferenciales por metodo de variables separables %

fprintf("Despeja el diferencial en la ecuación.");
fprintf("\n¿Es posible dejar todos los témrinos de y de un lado y los de x del otro?");

continuar = input("\n(0) no, (1) sí\n");

if continuar == 1
    syms x y;
    fprintf("\nSepara las variables, de tal forma que ");
    fprintf("f sea la función que multiplica a dx y g a dy.");
    f = input("\nIngresa f (la expresión que multiplica a dx): ");
    g = input("\nIngresa g (la expresión que multiplica a dy): ");
    F = int(f);
    G = int(g);
    fprintf("\nLado derecho de la ecuación: %s", F);
    fprintf(" + C");
    fprintf("\nLado izquierdo de la ecuación: %s", G);
    fprintf("\nEn este momento ya tienes una solución implícita general.");
    fprintf("\nPara conseguir la explícita, despeja y para que quede en términos de x.");
elseif continuar == 0
    fprintf("No se puede resolver por este método, intenta otro.\n");
else
    fprintf("Selección inválida, reinicie el programa");
end

%   Este solo es un ejemplo para ver como integrar en MATLAB

%   syms x;
%   y = (x.^3)+(2*(x.^2))-x+3;
%   int(y)
%   int(y)