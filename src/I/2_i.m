% I.2.- i) Aproximação linear pelo critério clássico.

% Definição das m funções de base: reta linear.
function y = phi1(x)
	y = x;
end

function y = phi2(x)
	y = 1;
end

% Lista de m funções base
PHIS = {@phi1, @phi2};

% Método clássico => sem pesos
PESOS = [1; 1; 1; 1; 1; 1; 1; 1; 1; 1];

% Finalmente, chamar a função min_quad() para resolver o problema.
ci = min_quad(X, Y, PESOS, PHIS);

% Definir função aproximada (linear)
function y = i(x, ci)
	y = ci(1)*x + ci(2);
end
