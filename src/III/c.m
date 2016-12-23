
hold on;
xlabel('Tempo');
ylabel('Pessoas');
grid on;

a = 0;
b = 50;
intervals = 2000;

x_range = linspace(a, b, intervals + 1);

S = @(t, s) -0.001*s*(-s+300*log(s) - 1205.008);
I = @(t, s) (-s + 300.*log(s) - 1205.008);
R = @(t, s) -300*log(s) + 2005.008;

s_t = ponto_medio(a, b, 799, intervals, S);

plot(x_range, s_t, ';i)   S - Susceptiveis;', 'color', 'green', 'linewidth', 2);
plot(x_range, I(0, s_t), ';ii)  I - Infectados;', 'color', 'red', 'linewidth', 2);
plot(x_range, R(0, s_t) , ';iii) R - Recuperados;', 'color', 'blue', 'linewidth', 2);

l = legend('location', 'east');
legend boxon;
fontsize=15;
set(l, 'FontSize', 13);
set(l, 'color', 'w');
set([gca; findall(gca, 'Type','text')], 'FontSize', fontsize);
