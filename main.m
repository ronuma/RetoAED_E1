clear all
clear workspace
clc

% resolver ecuaciones diferenciales por metodo de variables separables %

fprintf("Despeja el diferencial en la ecuación.");
fprintf("\n¿Es posible dejar todos los témrinos de y de un lado y los de x del otro?");

continuar = input("\n(0) no, (1) sí\n");

if continuar == 1
    fprintf("\nSepara las variables, de tal forma que ")
    fprintf("f sea la función que multiplica a dx y g a dy.");
    f = input("\nIngresa f (la expresión que multiplica a dx): ");
    g = input("\nIngresa g (la expresión que multiplica a dy): ");
    F = integral(f);
    G = integral(g);
elseif continuar == 0
    fprintf("No se puede resolver por este método, intenta otro.\n");
else
    fprintf("Selección inválida, reinicie el programa");
end

    