%ponto medio
% [a, b] intervalo onde vai ser aplicado o metodo
% f - função à qual o metodo é aplicado
% y - aproximação inicial
% n - numero de subintervalos no intervalo [a, b] a considerar

function z=ponto_medio(a, b, f, y, n)
    % Aplicar a formula do ponto medio n vezes 
    % (para cada intervalo i)
    % 
    % usar t_i = a + i*h
    
    h = (b-a)/n;
    t = a;
    
    sol = zeros(1, n);
    
    sol(1) = y;
    for i = 1:n-1
        sol(i+1) = sol(i) + h * f(t + h/2, sol(i) * f(t, sol(i)));
        t += h; 
    endfor
   
    z = sol;   
        
        
    
endfunction