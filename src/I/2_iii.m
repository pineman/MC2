%I.2.- iii) Aproximação linear pelo critério dos mínimos quadrados ponderados.

% Definição das m funções de base: reta.
function y = phi1(x)
	y = x;
end

function y = phi2(x)
	y = 1;
end

% Lista de m funções de base
PHIS = {@phi1, @phi2};

% Pesos para cada par (X, Y)
d = [17; 9; 9; 7; 7; 6; 6; 6; 5; 5];
for i = 1:length(d)
	PESOS(i) = d(i)^-2;
end

% Finalmente, chamar a função min_quad() para resolver o problema.
ciii = min_quad(X, Y, PESOS, PHIS);

% Definir função aproximada (linear)
function y = iii(x, ciii)
	y = ciii(1)*x + ciii(2);
end
