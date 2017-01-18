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