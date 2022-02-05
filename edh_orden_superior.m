clear all
clear workspace
clc

% resolver ecuaciones diferenciales de orden superior homogeneas %
fprintf("\n�Cu�l es el orden de la ecuaci�n (y por tanto, el grado del polinomio asociado?");
grado = input("\n");
fprintf("\nIngresa los coefeicientes del polinomio representado, con esta sintaxis [cm^3 cm^2 cm^1]. Ejemplo: ");
fprintf("\npolinomio = x^2 - 2*x + 4, la entrada es: [1 -2 4], con todo y corchetes.");
polinomio = input("\n");

syms x;
m = roots(polinomio);
fprintf("\nValores de las ra�ces (m) del polinomio asociado: \n");

for i = 1:grado
    fprintf(" %.2f,", m(i));
end
fprintf("\nEntonces, la soluci�n expl�cita general se escribe de la siguiente forma:");
fprintf("\ny = c1*exp(m1*x) + c2*exp(m2*x) +...cn*exp(mn*x)");
fprintf("\nDonde n es el grado del polinomio asociado, o bien, el orden de la ecuaci�n.");
fprintf("\nRecuerda que si hay ra�ces que son iguales, una debe ser multiplicada por x.");