% II.1.- Implementação da regra de Simpson composta.
%
% Para um intervalo [a, b], a regra de Simpson é dada por:
% 	s = ((b - a)/6) * (f(a) + 4*f((a + b) / 2) + f(b))
%
% A regra de Simpson composta é apenas a aplicação da regra
% de Simpson várias vezes.
%
% Dadas N subintervalos de igual comprimento no intervalo [a, b],
% seja h o comprimento de cada subintervalo e seja xn a sucessão:
% 	x_0 = a, x_1 = a + 1*h, x_2 = a + 2*h, ..., x_N = a + N*h = b
%
% Aplica-se a regra de Simpson a cada subintervalo da forma:
% 	[x_i, x_i+2]
% ou seja, a cada dois subintervalos, [x_i, x_i+1] e [x_i+1, x_i+2].
% Daí vem que N tem de ser par.

function s = simpson(a, b, N, f)
	s = 0;

	if mod(N, 2) != 0
		error('Erro: N tem de ser par.');
	end

	% Comprimento de cada intervalo.
	h = (b - a) / N;

	% O ponto mais à esquerda (x_i) de cada dois subintervalos.
	x = a;

	% Aplicar a regra de Simpson a cada dois subintervalos.
	% Logo, aplicamos a regra de Simpson N/2 vezes, pelo ciclo for.
	for _ = 1:N/2
		s += (h/3) * (f(x) + 4*f(x + h) + f(x + 2*h));

		% Avançar mais dois subintervalos para a próxima iteração.
		x += 2*h;
	end
end
