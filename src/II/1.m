%{
II.1.- Regra de Simpson composta.

É necessário ajustar os parâmetros de entrada:
	- a: ponto inicial
	- b: ponto final
	- N: o número de subintervalos no intervalo [a, b]
	- A função a integrar
%}

format long;

a = 0;
b = pi/4;
N = 1000;

function y = teste(x)
	y = tan(x) + 2;
end

% Pelo wolframalpha, o integral de 0 a pi/4 da função tan(x) + 2 é:
% s = 1.91736991707486927
s = simpson(a, b, N, @teste);
printf('O integral de %d a %d da função dada é:\n', a, b);
s
