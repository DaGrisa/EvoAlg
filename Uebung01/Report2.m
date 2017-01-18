% Aufgabe 2a %
%%%%%%%%%%%%%

figure("2");

yStart = ones(10, 1) * 10;
sigma = 1;
maxGenCount = 2000;
result = OnePlusOneES(@Sphere, yStart, sigma, maxGenCount);

set (0, "defaultaxesfontname", "Helvetica")
set (0, "defaultaxesfontsize", 14)
set (0, "defaulttextfontname", "Helvetica")
set (0, "defaulttextfontsize", 14) 

semilogy(result);
ylabel("Function value");
xlabel("Generation number");

% Aufgabe 3 %
%%%%%%%%%%%%%

figure("3");

yStart = ones(100, 1);
sigma = 1;
sigmaStop = 10^(-5);
randn('state',7);
result = OnePlusOneESOneFifth(@Sphere, yStart, sigma, sigmaStop);

set (0, "defaultaxesfontname", "Helvetica")
set (0, "defaultaxesfontsize", 14)
set (0, "defaulttextfontname", "Helvetica")
set (0, "defaulttextfontsize", 14) 

color_blue = [0, 0, 1];
color_red = [1, 0, 0];

semilogy(result,'-', 'MarkerEdgeColor', color_blue);
ylabel("Function value");
xlabel("Generation number");
hold on

maxGenCount = 7000;
result2 = OnePlusOneES(@Sphere, yStart, sigma, maxGenCount);
semilogy(result2,'.', 'MarkerEdgeColor', color_red);

legend("1/5","1+1");