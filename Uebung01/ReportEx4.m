% Aufgabe 4 %
%%%%%%%%%%%%%

figure("4");

yStart = ones(30, 1);
sigma = 1;
sigmaStop = 10^(-5);
d = 10;
randn('state',7);
result = OnePlusOneESOneFifth("SharpRidge", d, yStart, sigma, sigmaStop);
result2 = OnePlusOneESOneFifth("ParabolicRidge", d, yStart, sigma, sigmaStop);

set (0, "defaultaxesfontname", "Helvetica")
set (0, "defaultaxesfontsize", 14)
set (0, "defaulttextfontname", "Helvetica")
set (0, "defaulttextfontsize", 14) 

color_blue = [0, 0, 1];
color_red = [1, 0, 0];

semilogy(result,'-', 'MarkerEdgeColor', color_blue);
hold on
semilogy(result2,'.', 'MarkerEdgeColor', color_red);

ylabel("Function value");
xlabel("Generation number");

legend("Sharp Ridge","Parabolic Ridge");