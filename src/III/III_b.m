%Calculo da raiz da função I(S)

%f - função cuja inversa vai ser interpolada
%[a, b] - intervalo de interpolação da função
%n - numero de intervalos a considerar na interpolação
%g - grau do polinomio interpolador

function y = III_b(f, a, b, n, g)
	format long;
	p = inv_inter(f, a, b, n, g);

	sol = zeros(1, g+1);
	sol(end) = 1;

	y = calc_sol(p, sol);
endfunction

function y = inv_inter(f, a, b, n, g)
	A = linspace(a, b, n);
	B = f(A);
	y = polyfit(B, A, g);
endfunction

function y = calc_sol(p, args)
	if (length(p) != length(args))
		error("Erro: numero de elementos de p e args difere.")
	endif

	y = p * args';
endfunction
