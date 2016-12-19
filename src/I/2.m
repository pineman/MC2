%{
I.2.- Gráfico de três critérios de aproximação:
		i) Aproximação linear pelo critério clássico.
		ii) Aproximação quadrática pelo critério clássico.
		iii) Aproximação linear pelo critério dos mínimos quadrados ponderados.
%}

format long;

% Coordenadas X dos pontos tabelados
X = [0.345; 0.287; 0.251; 0.225; 0.207; 0.186; 0.161; 0.132; 0.084; 0.060];

% Coordenadas Y dos pontos tabelados
Y = [367; 311; 295; 268; 253; 239; 220; 213; 193; 192];

% Intervalo de x apropriado para os dados X
x_range = 0.050:0.01:0.350;

% Desenhar vários gráficos
hold on;
xlabel('X');
ylabel('Y');
grid on;

% Desenhar pontos tabelados
plot(X, Y, 'o;Pontos tabelados;', 'color', 'black', 'markerfacecolor', 'black', 'markersize', 6);

% i) Aproximação linear pelo critério clássico.
run('2_i.m');
plot(x_range, i(x_range, ci), ';i) Linear clássica;', 'color', 'red', 'linewidth', 2);

% ii) Aproximação quadrática pelo critério clássico.
run('2_ii.m');
plot(x_range, i(x_range, cii), ';ii) Quadrática clássica;', 'color', [0, 0.7882, 0.1674], 'linewidth', 2);

% iii) Aproximação linear pelo critério dos mínimos quadrados ponderados.
run('2_iii.m');
plot(x_range, iii(x_range, ciii), ';iii) Linear ponderada;', 'color', 'blue', 'linewidth', 2);

l = legend('location', 'northwest');
legend boxon;
fontsize=15;
set(l, 'FontSize', 13);
set(l, 'color', 'w');
set([gca; findall(gca, 'Type','text')], 'FontSize', fontsize);
