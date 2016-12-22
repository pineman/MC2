function y = met_III(a, b, y0, n, f)
  %interval [a, b], y0 initial value.
  h = (b-a)/n; %n is the number of subintervals
  y = [y0];      %y are our approximations
  
  for i = a:h:b
    y = [y (y(end) + h * f(i + h/2, y(end) + h/2*f(i, y(end))))];
  endfor
  


endfunction