% Aufgabe 5 %%%%%%%%%%%%%%yParent = ones(10, 1);sigmaParent = 1;sigmaStop = 10^(-3);offspringPopulationSize = 100;tau = 10^(-1/2);[fitnessHistory, sigmaHistory] = OneSlashLambdaSelfAdaptionES(yParent, sigmaParent, sigmaStop, offspringPopulationSize, tau, 'Sphere');figure("1");set (0, "defaultaxesfontname", "Helvetica")set (0, "defaultaxesfontsize", 14)set (0, "defaulttextfontname", "Helvetica")set (0, "defaulttextfontsize", 14) semilogy(fitnessHistory,'b-');hold onsemilogy(sigmaHistory,'r-');legend("Fitness History","Sigma History");title("Exercise 5 - Fitness - (1,lambda) Self Adaption ES");ylabel("Fitness / Sigma Value");xlabel("Generation number");