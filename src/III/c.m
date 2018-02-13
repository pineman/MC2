clear; clc; close all;

a = 0;
b = 50;
intervals = 2000;

x_range = linspace(a, b, intervals + 1);

S = @(t, s) -0.001*s*(-s+300*log(s) - 1205.008);
I = @(t, s) (-s + 300.*log(s) - 1205.008);
R = @(t, s) -300*log(s) + 2005.008;

s_t = ponto_medio(a, b, 799, intervals, S);

f = figure();
hold on;
xlabel('Tempo');
ylabel('Pessoas');
grid on;

plot(x_range, s_t, ';i)   S - Susceptiveis;', 'color', 'green', 'linewidth', 4);
plot(x_range, I(0, s_t), ';ii)  I - Infectados;', 'color', 'red', 'linewidth', 4);
plot(x_range, R(0, s_t) , ';iii) R - Recuperados $\lambda\alpha$  ;', 'color', 'blue', 'linewidth', 4);

l = legend('location', 'east');
legend boxon;
fontsize=14;
set(l, 'FontSize', fontsize);
set(l, 'color', 'w');
set([gca; findall(gca, 'Type','text')], 'FontSize', fontsize);

% Generate a .tex for text and .pdf for graphics, compile .tex with pdflatex and
% include the resulting pdf as a figure in the original latex
print(f, '-dpdflatexstandalone', 'test');
