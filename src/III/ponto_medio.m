%ponto medio
% [a, b] intervalo no qual o metodo vai ser aplicado
% y0 - aproximação inicial
% n - numero de subintervalos do intervalo [a, b]
% f - função à qual o metodo é aplicado

function y = ponto_medio(a, b, y0, n, f)

  h = (b-a)/n;	%tamanho da cada subintervalo
  y = [y0];

  % Calcular a aproximação da função em cada intervalo
  for i = a:h:(b-h)
	y_i = (y(end) + h * f(i + h/2, y(end) + h/2*f(i, y(end))));
    y = [y y_i];
  endfor
endfunction
