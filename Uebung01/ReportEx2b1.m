%%%%%%%%%%%%%%%%%%%%%%%%%
% 2. a) Fitness dynamic %
%%%%%%%%%%%%%%%%%%%%%%%%%

set (0, "defaultaxesfontname", "Helvetica")
set (0, "defaultaxesfontsize", 14)
set (0, "defaulttextfontname", "Helvetica")
set (0, "defaulttextfontsize", 14) 

figure();

yStart = RandomBinary(0.5, 100);
pMutation = 0.01;
fitnessHistory = BinaryES(yStart, pMutation);

plot(fitnessHistory);
title("Fitness dynamic of ES 1+1 in binary search space");
ylabel("Fitness");
xlabel("Generation");