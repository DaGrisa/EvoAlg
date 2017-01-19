% Aufgabe 3 %
%%%%%%%%%%%%%

figure("0");

yStart = ones(100, 1);
sigma = 1;
sigmaStop = 10^(-5);
randn('state',7);
result = OnePlusOneESOneFifth("Sphere", [], yStart, sigma, sigmaStop);

set (0, "defaultaxesfontname", "Helvetica")
set (0, "defaultaxesfontsize", 14)
set (0, "defaulttextfontname", "Helvetica")
set (0, "defaulttextfontsize", 14) 

semilogy(result,'b-');
ylabel("Fitness value");
xlabel("Generation number");

title("Exercise 3 - Fitness - 1+1 ES");

hold on

maxGenCount = 7000;
result2 = OnePlusOneES(@Sphere, yStart, sigma, maxGenCount);
semilogy(result2,'r-');

legend("1+1 mit 1/5","1+1");