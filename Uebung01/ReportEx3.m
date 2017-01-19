% Aufgabe 3 %
%%%%%%%%%%%%%

figure("1");

yStart = ones(100, 1);
sigma = 1;
sigmaStop = 10^(-5);
randn('state',7);
[fitnessHistoryOneFifth, fitnessParentOneFifth, generationCountOneFifth, sigmaHistoryOneFifth, yParentOneFifth] = OnePlusOneESOneFifth("Sphere", [], yStart, sigma, sigmaStop);

set (0, "defaultaxesfontname", "Helvetica")
set (0, "defaultaxesfontsize", 14)
set (0, "defaulttextfontname", "Helvetica")
set (0, "defaulttextfontsize", 14) 

semilogy(fitnessHistoryOneFifth,'b-');

hold on

semilogy(sigmaHistoryOneFifth,'g-');

hold on

maxGenCount = 5000;
result2 = OnePlusOneES(@Sphere, yStart, sigma, maxGenCount);
semilogy(result2,'r-');

legend("1+1 and 1/5","1+1", "Sigma");

ylabel("Fitness / Sigma Value");
xlabel("Generation Number");

title("Exercise 3 - Fitness - 1+1 ES");