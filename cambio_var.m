clear all
clear workspace
clc

% resolver ecuaciones diferenciales por metodo de cambio de variable %

fprintf("¿Ya tienes una propuesta de cambio de variable?:");
hayPropuesta = input("\n(0) no, (1) sí\n");
fprintf("\n¿La ecuación es lineal y de primer orden");
noHomog = input("\n(0) no, (1) sí\n");
fprintf("\n¿Es homogenea? (que los términos que multiplican a y estén igualados a 0)");
homog = input("\n(0) no, (1) sí\n");

if hayPropuesta == 1
    fprintf("\nSimplifica la ecuación lo más que puedas");
    fprintf("\nIngresa el valor de propuesta de u");
    u = input("\nu = \n");
    fprintf("\nDespeja el diferencial de la ecuación");
    fprintf("\nIngresa el coeficiente que multiplica a y'");
    cdydx = input("");
    fprintf("\nIngresa el resto de la ecuación");
    ec = input("");
    