% I.1.- Implementação do método dos mínimos quadrados ponderados.
%
% Para chegar à solução (os coeficientes c de cada função de base phi),
% resolvemos o sistema:
%
% 	B'WBc = B'Wy <=>
% <=> c = ((B'WB)^-1)B'Wy
%
% onde:
%     B é a matriz das m funções de base em cada um dos n pontos (n x m)
%     B' é a transposta de B (m x n)
%     W é a matriz identidade de ordem n multiplicada pelo vetor
% 		coluna de pesos (n x n)
%     y é o vetor de coordenadas Y dos pontos conhecidos (n x 1)

function c = min_quad(X, Y, PESOS, PHIS)
	n = length(X);
	m = length(PHIS);

	% Construir a matrix B
	for i = 1:n
		for j = 1:m
			% B_ij = phi_j(x_i)
			% função PHIS{j} no ponto X(i)
			B(i, j) = PHIS{j}(X(i));
		end
	end
	Bt = transpose(B);
	% Matrix identidade de ordem n multiplicada pelo vetor coluna dos pesos,
	% elemento a elemento.
	W = eye(n) .* PESOS;
	y = Y;

	% c = ((B'WB)^-1)B'Wy
	c = (Bt * W * B) \ (Bt * W * y);
end
