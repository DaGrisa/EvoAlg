% Aufgabe 10 %%%%%%%%%%%%%%yParent = ones(30, 1) * 10;sigmaParent = 1;sigmaStop = 10^(-100);offspringPopulationSize = 20;parentPopulationSize = 3;tau = (2*30)^(-1/2);maxGenerations = 3000;set (0, "defaultaxesfontname", "Helvetica")set (0, "defaultaxesfontsize", 14)set (0, "defaulttextfontname", "Helvetica")set (0, "defaulttextfontsize", 14) figure("1");[fitnessHistory, sigmaHistory] = RecombinationSelfAdaptionES(yParent, sigmaParent, sigmaStop, offspringPopulationSize, parentPopulationSize, tau, 'SphereNoise', maxGenerations);semilogy(fitnessHistory,'b-');hold onsemilogy(sigmaHistory,'r-');legend("Fitness History","Sigma History");title("Exercise 10 - Recombination - (3/3, 20), N=30");ylabel("Fitness / Sigma Value");xlabel("Generation number");figure("2");yParent = ones(30, 1) * 0;sigmaParent = 10^(-5);offspringPopulationSize = 20;parentPopulationSize = 2;[fitnessHistory, sigmaHistory] = RecombinationSelfAdaptionES(yParent, sigmaParent, sigmaStop, offspringPopulationSize, parentPopulationSize, tau, 'SphereNoise', maxGenerations);semilogy(fitnessHistory,'b-');hold onsemilogy(sigmaHistory,'r-');mean(fitnessHistory)legend("Fitness History","Sigma History");title("Exercise 10 - Recombination - (2/2, 20), N=30 - Optimum Start");ylabel("Fitness / Sigma Value");xlabel("Generation number");figure("3");yParent = ones(30, 1) * 0;sigmaParent = 10^(-5);offspringPopulationSize = 50;parentPopulationSize = 5;[fitnessHistory, sigmaHistory] = RecombinationSelfAdaptionES(yParent, sigmaParent, sigmaStop, offspringPopulationSize, parentPopulationSize, tau, 'SphereNoise', maxGenerations);semilogy(fitnessHistory,'b-');hold onsemilogy(sigmaHistory,'r-');mean(fitnessHistory)legend("Fitness History","Sigma History");title("Exercise 10 - Recombination - (5/5, 50), N=30 - Optimum Start");ylabel("Fitness / Sigma Value");xlabel("Generation number");figure("4");yParent = ones(30, 1) * 0;sigmaParent = 10^(-5);offspringPopulationSize = 100;parentPopulationSize = 10;[fitnessHistory, sigmaHistory] = RecombinationSelfAdaptionES(yParent, sigmaParent, sigmaStop, offspringPopulationSize, parentPopulationSize, tau, 'SphereNoise', maxGenerations);semilogy(fitnessHistory,'b-');hold onsemilogy(sigmaHistory,'r-');mean(fitnessHistory)legend("Fitness History","Sigma History");title("Exercise 10 - Recombination - (10/10, 100), N=30 - Optimum Start");ylabel("Fitness / Sigma Value");xlabel("Generation number");