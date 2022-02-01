clear all
clear workspace
clc

% resolver ecuaciones diferenciales por metodo de factor integrante %

fprintf("Para este m�todo, la ecuaci�n debe ser lineal de primer orden y tener la siguiente forma:");
fprintf("\ny' + p(x)y = q(x)");
fprintf("\n�Es lineal de primer orden y es posible escribirla de esta forma (se pueden hacer manipulaciones algebraicas)?");

continuar = input("\n(0) no, (1) s�\n");

if continuar == 1
    syms x y;
    px = input("\nIngresa p(x): ");
    qx = input("\nIngresa q(x): ");
    intFact = int(px + 0*x);
    factInt = exp(intFact);
    ladoDer = factInt * qx;
    ladoIzqFinal = y; % el factor integrante queda representado divdiendo cuando se muestra la soluci�n
    ladoDerFinal = int(ladoDer + 0*x);
    fprintf("\nSoluci�n expl�cita general:");
    fprintf("\n%s", ladoIzqFinal);
    fprintf(" = ( %s", ladoDerFinal);
    fprintf(" + C ) / %s", factInt);
elseif continuar == 0
    fprintf("No se puede resolver por este m�todo, intenta otro.\n");
else
    fprintf("Selecci�n inv�lida, reinicie el programa");
end