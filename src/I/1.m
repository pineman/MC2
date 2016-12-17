%{
1.1.- Método dos mínimos quadrados com pesos.

É necessário ajustar os parâmetros de entrada:
	- As funções de base
	- A lista das funções de base
	- O vetor coluna de coordenadas X dos pontos conhecidos
	- O vetor coluna de coordenadas Y dos pontos conhecidos
	- O vetor coluna de pesos para cada par (X, Y)
%}

% Definição das m funções de base
function y = phi1(x)
	y = (x - 1);
end

function y = phi2(x)
	y = (x - 1).^2;
end

% Lista de m funções base
PHIS = {@phi1, @phi2};

%{
As seguintes três variáveis representam vetores coluna com os
pontos conhecidos do problema.

Estes vetores são de dimensão n x 1, onde n é o número de pontos
conhecidos.
%}
% Coordenadas X dos pontos conhecidos
X = [-1; 0; 1; 5];

% Coordenadas Y dos pontos conhecidos
Y = [-2.0; -2.0; 0; 28.0];

% Pesos para cada par (X, Y)
PESOS = [1; 1; 1; 1];

% Finalmente, chamar a função min_quad() para resolver o problema.
c = min_quad(X, Y, PESOS, PHIS)
