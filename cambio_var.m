clear workspace
clc

% resolver ecuaciones diferenciales por metodo de cambio de variable %

fprintf("\nSimplifica la ecuación lo más que puedas");
fprintf("\nIdentifica qué tipo de cambio de variable se va a realizar:");
fprintf("\n (1) u = y/x. Aplica para ecuaciones homogéneas de primer orden");
fprintf("\n (2) u = Ax + By + C. Aplica cuando esta sustitución simplifica significativamente la ecuación");
fprintf("\n (3) En este caso, ya tienes una propuesta y vas a ingresarla al programa.");
caso = input("\nSelecciona el caso: ");

if caso == 1
    fprintf("\nSustituye u = y/x en la ecuación.");
    fprintf("\nSustituye y' por u'x + u");
    fprintf("\nDespeja u' y realiza la separación de variables correspondiente.");
    syms u x;
    f = input("\nIngresa la expresión que multiplica a dx: ");
    g = input("\nIngresa la expresión que multiplica a du: ");
    F = int(f + 0*x);
    G = int(g + 0*u, u);
    fprintf("\nSolución implícita general:");
    fprintf("\n%s", G);
    fprintf(" = %s", F);
    fprintf(" + C");
    fprintf("\nAhora despeja u y finalmente sustituyela por y/x, y despeja (y)");
elseif caso == 2
    fprintf("\nYa con valores específicos para u = Ax + By + C, despeja (y) y derivala para obtener la sustitución de y'.");
    fprintf("\nSustituye entonces el nuevo valor de y' y la u en la ecuación.");
    fprintf("\nRevisa que ya no haya (y) en la ecuación, simplifica y realiza la separación de variables correspondiente.");
    syms u x;
    f = input("\nIngresa la expresión que multiplica a dx: ");
    g = input("\nIngresa la expresión que multiplica a du: ");
    F = int(f + 0*x);
    G = int(g + 0*u, u);
    fprintf("\nSolución implícita general:");
    fprintf("\n%s", G);
    fprintf(" = %s", F);
    fprintf(" + C");
    fprintf("\nAhora despeja u y finalmente sustituyela por su cambio de variable, y despeja (y)");
elseif caso == 3
    fprintf("\nDespeja el diferencial de la ecuación.");
    fprintf("\nSustituye tu propuesta de cambio de variable en la ecuación, incluyendo el diferencial y despeja u'.");
    syms x u;
    ec = input("\nIngresa la igualdad de la ecuación, para que el programa lo simplifique: ");
    ecSimp = simplify(ec);
    fprintf("\nEsta es la igualdad simplificada: %s", ecSimp);
    fprintf("\nAhora realiza la separación de variables correspondiente.");
    f = input("\nIngresa la expresión que multiplica a dx: ");
    g = input("\nIngresa la expresión que multiplica a du: ");
    F = int(f + 0*x);
    G = int(g + 0*u, u);
    fprintf("\nSolución implícita general:");
    fprintf("\n%s", G);
    fprintf(" = %s", F);
    fprintf(" + C");
    fprintf("\nAhora despeja u y finalmente sustituyela por su cambio de variable, y despeja (y)");
end