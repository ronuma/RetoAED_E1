clear workspace
clc

% resolver ecuaciones diferenciales por metodo de cambio de variable %

fprintf("\nSimplifica la ecuaci�n lo m�s que puedas");
fprintf("\nIdentifica qu� tipo de cambio de variable se va a realizar:");
fprintf("\n (1) u = y/x. Aplica para ecuaciones homog�neas de primer orden");
fprintf("\n (2) u = Ax + By + C. Aplica cuando esta sustituci�n simplifica significativamente la ecuaci�n");
fprintf("\n (3) En este caso, ya tienes una propuesta y vas a ingresarla al programa.");
caso = input("\nSelecciona el caso: ");

if caso == 1
    fprintf("\nSustituye u = y/x en la ecuaci�n.");
    fprintf("\nSustituye y' por u'x + u");
    fprintf("\nDespeja u' y realiza la separaci�n de variables correspondiente.");
    syms u x;
    f = input("\nIngresa la expresi�n que multiplica a dx: ");
    g = input("\nIngresa la expresi�n que multiplica a du: ");
    F = int(f + 0*x);
    G = int(g + 0*u, u);
    fprintf("\nSoluci�n impl�cita general:");
    fprintf("\n%s", G);
    fprintf(" = %s", F);
    fprintf(" + C");
    fprintf("\nAhora despeja u y finalmente sustituyela por y/x, y despeja (y)");
elseif caso == 2
    fprintf("\nYa con valores espec�ficos para u = Ax + By + C, despeja (y) y derivala para obtener la sustituci�n de y'.");
    fprintf("\nSustituye entonces el nuevo valor de y' y la u en la ecuaci�n.");
    fprintf("\nRevisa que ya no haya (y) en la ecuaci�n, simplifica y realiza la separaci�n de variables correspondiente.");
    syms u x;
    f = input("\nIngresa la expresi�n que multiplica a dx: ");
    g = input("\nIngresa la expresi�n que multiplica a du: ");
    F = int(f + 0*x);
    G = int(g + 0*u, u);
    fprintf("\nSoluci�n impl�cita general:");
    fprintf("\n%s", G);
    fprintf(" = %s", F);
    fprintf(" + C");
    fprintf("\nAhora despeja u y finalmente sustituyela por su cambio de variable, y despeja (y)");
elseif caso == 3
    fprintf("\nDespeja el diferencial de la ecuaci�n.");
    fprintf("\nSustituye tu propuesta de cambio de variable en la ecuaci�n, incluyendo el diferencial y despeja u'.");
    syms x u;
    ec = input("\nIngresa la igualdad de la ecuaci�n, para que el programa lo simplifique: ");
    ecSimp = simplify(ec);
    fprintf("\nEsta es la igualdad simplificada: %s", ecSimp);
    fprintf("\nAhora realiza la separaci�n de variables correspondiente.");
    f = input("\nIngresa la expresi�n que multiplica a dx: ");
    g = input("\nIngresa la expresi�n que multiplica a du: ");
    F = int(f + 0*x);
    G = int(g + 0*u, u);
    fprintf("\nSoluci�n impl�cita general:");
    fprintf("\n%s", G);
    fprintf(" = %s", F);
    fprintf(" + C");
    fprintf("\nAhora despeja u y finalmente sustituyela por su cambio de variable, y despeja (y)");
end