% II.2.- Regra de Simpson composta.

format long;

a = 0;
b = 30;
N = 2000;

function y = f(z)
	y = ((200*z) / (5 + z)) * exp((-2*z) / 30);
end

F = simpson(a, b, N, @f);
F

disp('');

% Vetor coluna para guardar os vários resultados da regra de Simpson.
S = [];

for i = 1:9
	s = simpson(a, b, 2^i, @f);
	printf('S_%d: %.11f\n', 2^i, s);
	S = [S s];
end

disp('');

for i = 1:9
	printf('|F - S_%d| =  %.11f\n', 2^i, abs(F - S(i)));
end

disp('');

for i = 2:9
	printf('|F - S_%d| / |F - S_%d| =  %.11f\n', 2^(i-1), 2^i, abs(F - S(i-1)) / abs(F - S(i)));
end
