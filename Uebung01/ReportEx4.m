% Aufgabe 4 %
%%%%%%%%%%%%%

yStart = ones(30, 1);
sigma = 1;
sigmaStop = 2*10^(-3);
d = 10;
randn('state',7);

[fitnessHistorySharpRidge, fitnessParentSharpRidge, generationCountSharpRidge, sigmaHistorySharpRidge, yParentSharpRidge] = OnePlusOneESOneFifth("SharpRidge", d, yStart, sigma, sigmaStop);

[fitnessHistoryParabolicRidge, fitnessParentParabolicRidge, generationCountParabolicRidge, sigmaHistoryParabolicRidge, yParentParabolicRidge] = OnePlusOneESOneFifth("ParabolicRidge", d, yStart, sigma, sigmaStop);

set (0, "defaultaxesfontname", "Helvetica")
set (0, "defaultaxesfontsize", 14)
set (0, "defaulttextfontname", "Helvetica")
set (0, "defaulttextfontsize", 14) 

figure("1");

semilogy(fitnessHistorySharpRidge,'b-');
hold on
semilogy(fitnessHistoryParabolicRidge,'r-');

title("Exercise 4 - Fitness - halblogarithmisch");

ylabel("Fitness Value");
xlabel("Generation number");

legend("Sharp Ridge","Parabolic Ridge");

figure("2");

semilogy(sigmaHistorySharpRidge,'b-');
hold on
semilogy(sigmaHistoryParabolicRidge,'r-');

title("Exercise 4 - Sigma - halblogarithmisch");

ylabel("Sigma Value");
xlabel("Mutation Strength Change Number");

legend("Sharp Ridge","Parabolic Ridge");

figure("3");

plot(fitnessHistorySharpRidge,'b-');
hold on
plot(fitnessHistoryParabolicRidge,'r-');

title("Exercise 4 - Fitness - linear");

ylabel("Fitness Value");
xlabel("Generation number");

legend("Sharp Ridge","Parabolic Ridge");

figure("4");

plot(sigmaHistorySharpRidge,'b-');
hold on
plot(sigmaHistoryParabolicRidge,'r-');

title("Exercise 4 - Sigma - linear");

ylabel("Sigma Value");
xlabel("Mutation Strength Change Number");

legend("Sharp Ridge","Parabolic Ridge");

% check with d = 1
d = 10;

[fitnessHistorySharpRidge, fitnessParentSharpRidge, generationCountSharpRidge, sigmaHistorySharpRidge, yParentSharpRidge] = OnePlusOneESOneFifth("SharpRidge", d, yStart, sigma, sigmaStop);
[fitnessHistoryParabolicRidge, fitnessParentParabolicRidge, generationCountParabolicRidge, sigmaHistoryParabolicRidge, yParentParabolicRidge] = OnePlusOneESOneFifth("ParabolicRidge", d, yStart, sigma, sigmaStop);

figure("5");

plot(fitnessHistorySharpRidge,'b-');
hold on
plot(fitnessHistoryParabolicRidge,'r-');

title("Exercise 4 - Fitness - linear, d = 1");

ylabel("Fitness Value");
xlabel("Generation number");

legend("Sharp Ridge","Parabolic Ridge");

figure("6");

plot(sigmaHistorySharpRidge,'b-');
hold on
plot(sigmaHistoryParabolicRidge,'r-');

title("Exercise 4 - Sigma - linear, d = 1");

ylabel("Sigma Value");
xlabel("Mutation Strength Change Number");

legend("Sharp Ridge","Parabolic Ridge");
