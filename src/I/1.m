% I.1.- Método dos mínimos quadrados ponderados.
%
% É necessário ajustar os parâmetros de entrada:
% 	- As funções de base
% 	- A lista das funções de base
% 	- O vetor coluna de coordenadas X dos pontos conhecidos
% 	- O vetor coluna de coordenadas Y dos pontos conhecidos
% 	- O vetor coluna de pesos para cada par (X, Y)

format long;

% As seguintes três variáveis representam vetores coluna com os
% pontos conhecidos do problema.
% Estes vetores são de dimensão n x 1, onde n é o número de pontos
% conhecidos.
% Os valores utilizados correspondem ao exemplo 4.5 na sebenta da disciplina.
% Coordenadas X dos pontos conhecidos
X = [2; 4; 6; 8];

% Coordenadas Y dos pontos conhecidos
Y = [2; 11; 28; 40];

% Pesos para cada par (X, Y)
PESOS = [1; 1; 1; 1];

% Definição das m funções de base
function y = phi1(x)
	y = 1;
end

function y = phi2(x)
	y = x;
end

% Lista de m funções base
PHIS = {@phi1, @phi2};

% Finalmente, chamar a função min_quad() para resolver o problema.
c = min_quad(X, Y, PESOS, PHIS);
disp('Os parâmetros de ajuste de cada função de base são:');
for i = 1:length(c)
	printf('\tc%d: %f\n', i - 1, c(i));
end
