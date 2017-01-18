function [meanGenerations, generationsHistory] = MeanGenerationsToOneMax(dimensions, pMutation, replications)
  generationsHistory = [];
  for i = 1:replications
    yStart = RandomBinary(0.5, dimensions);
    [~, ~, generationCount] = BinaryES(yStart, pMutation);
    generationsHistory = [generationsHistory; generationCount];
  end
  meanGenerations = sum(generationsHistory) / replications;
end