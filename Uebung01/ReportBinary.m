%yStart = RandomBinary(0.5, 100);
%pMutation = 0.01;
%fitnessHistory = BinaryES(yStart, pMutation);

%plot(fitnessHistory);

replications = 5;
results = [];
for i = 10:10:300
  generations = MeanGenerationsToOneMax(i, 1 / i, replications);
  results = [results; i, generations];
end

plot(results(:, 1), results(:, 2));
