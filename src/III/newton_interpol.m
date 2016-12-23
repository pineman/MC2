%Metodo de Newton para a interpolação polinomial

% n - numero de intervalos
% a, b - range dos intervalos
% f - função a ser interpolada
function y=newton_interpol(a, b, n, f)
    format long
    h = (b-a)/n;
    % Matrix do metodo de Newton
    matrix = zeros(n+2, n+1);

    cnt = 1;
    for i = a:h:b
        %calculo da inversa
        matrix(2,cnt) = i;
        matrix(1, cnt) = f(i);
        cnt += 1;
    endfor

    for i = [3:n+2]
       for j = [1: n-(i-3)]
        matrix(i, j) = (matrix(i-1, j+1) - matrix(i-1, j)) /  \
                       (matrix(1, j+1+i-3) - matrix(1, j));
       endfor
    endfor

    zero = matrix(2, 1);
    for i = [3:n+2]
      aux = matrix(i,1);
      for j = [1:i-2]
        aux *= -matrix(1, j);
      endfor
      zero += aux;
    endfor
    y = zero
endfunction

