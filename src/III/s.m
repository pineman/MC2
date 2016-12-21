
f = @(x)(-x + 300 * log(x) - 1205);
A = linspace(1, 1000, 5000);
C = linspace(0, 0, 5000);
B = f(A);
fzero(f, 100)
plot(A, B, A, C);

%plot(A, B);


