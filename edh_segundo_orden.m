clear all
clear workspace
clc

% resolver ecuaciones diferenciales de segundo orden homogeneas %

fprintf("Ingresa los coefeicientes del polinomio representado, con esta sintaxis [m3 m2 m1]. Ejemplo: ");
fprintf("\npolinomio = x^2 - 2*x + 4, la entrada es: [1 -2 4], con todo y corchetes.");
polinomio = input("\n");

syms x;
m = roots(polinomio);
m1 = m(1);
m2 = m(2);

fprintf("\nm1 = %.2f", m1);
fprintf("\nm2 = %.2f", m2);

fprintf("\nSolución explícita general:");
fprintf("\ny = c1*exp(%.2f", m1);
fprintf("*x) + c2*exp(%.2f", m2);
fprintf("*x)");
fprintf("\n(Recuerda que si las m son iguales, a una la debes multiplicar por x");