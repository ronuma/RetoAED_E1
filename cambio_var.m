clear all
clear workspace
clc

% resolver ecuaciones diferenciales por metodo de cambio de variable %

fprintf("�Ya tienes una propuesta de cambio de variable?:");
hayPropuesta = input("\n(0) no, (1) s�\n");
fprintf("\n�La ecuaci�n es lineal y de primer orden");
noHomog = input("\n(0) no, (1) s�\n");
fprintf("\n�Es homogenea? (que los t�rminos que multiplican a y est�n igualados a 0)");
homog = input("\n(0) no, (1) s�\n");

if hayPropuesta == 1
    fprintf("\nSimplifica la ecuaci�n lo m�s que puedas");
    fprintf("\nIngresa el valor de propuesta de u");
    u = input("\nu = \n");
    fprintf("\nDespeja el diferencial de la ecuaci�n");
    fprintf("\nIngresa el coeficiente que multiplica a y'");
    cdydx = input("");
    fprintf("\nIngresa el resto de la ecuaci�n");
    ec = input("");
    