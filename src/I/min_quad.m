%{
Para chegar à solução, resolvemos o sistema:

	BᵀWBc = BᵀWy <=>
<=> c = ((BᵀWB)^-1)BᵀWy

onde:
    B é a matriz das m funções base (phis) aplicadas aos n pontos (n x m)
    Bᵀ é a transposta de B (m x n)
    W é a matriz identidade de ordem n multiplicada pelos vários pesos k,
        na linha k e coluna k (n x n)
    y é o vetor de pontos conhecidos (n x 1)

    c é a solução, o vetor de incógnitas na função aproximadora (m x 1)
%}
function c = min_quad(X, Y, PESOS, PHIS)
	n = length(X);
	m = length(PHIS);

	for i = 1:n
		for j = 1:m
			% B_ij = phi_j(x_i)
			% Aplicar X(i) à função PHIS{j}
			B(i, j) = PHIS{j}(X(i));
		end
	end
	Bt = transpose(B);
	% Matrix identidade de ordem n multiplicada pelo vetor coluna dos pesos.
	W = eye(n) .* PESOS;
	y = Y;

	% c = ((BᵀWB)^-1)BᵀWy
	c = inv(Bt * W * B) * (Bt * W * y);
end
