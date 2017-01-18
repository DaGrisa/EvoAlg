% Aufgabe 4 %
%%%%%%%%%%%%%

figure("4");

yStart = ones(30, 1);
sigma = 1;
sigmaStop = 10^(-2);
d = 10;
randn('state',7);

[fitnessHistorySharpRidge, fitnessParentSharpRidge, generationCountSharpRidge, sigmaHistorySharpRidge, yParentSharpRidge] = OnePlusOneESOneFifth("SharpRidge", d, yStart, sigma, sigmaStop);

[fitnessHistoryParabolicRidge, fitnessParentParabolicRidge, generationCountParabolicRidge, sigmaHistoryParabolicRidge, yParentParabolicRidge] = OnePlusOneESOneFifth("ParabolicRidge", d, yStart, sigma, sigmaStop);

set (0, "defaultaxesfontname", "Helvetica")
set (0, "defaultaxesfontsize", 14)
set (0, "defaulttextfontname", "Helvetica")
set (0, "defaulttextfontsize", 14) 


semilogy(fitnessHistorySharpRidge,'b-');
hold on
semilogy(fitnessHistoryParabolicRidge,'r-');

ylabel("Function value");
xlabel("Generation number");

legend("Sharp Ridge","Parabolic Ridge");

figure("5");

plot(sigmaHistorySharpRidge,'b-');
hold on
plot(sigmaHistoryParabolicRidge,'r-');

ylabel("Function value");
xlabel("Generation number");

legend("Sharp Ridge","Parabolic Ridge");