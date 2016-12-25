% I.2.- ii) Aproximação quadrática pelo método clássico.

% Definição das m funções de base: parábola.
function y = phi1(x)
	y = x^2;
end

function y = phi2(x)
	y = x;
end

function y = phi3(x)
	y = 1;
end

% Lista de m funções base
PHIS = {@phi1, @phi2, @phi3};

% Método clássico => sem pesos
PESOS = [1; 1; 1; 1; 1; 1; 1; 1; 1; 1];

% Finalmente, chamar a função min_quad() para resolver o problema.
cii = min_quad(X, Y, PESOS, PHIS);

% Definir função aproximada (quadrática)
function y = ii(x, cii)
	y = cii(1)*x.^2 + cii(2)*x + cii(3);
	% .^ porque o argumento x pode ser uma matrix: queremos o quadrado
	% de cada entrada e não o quadrado da matrix.
end
