function [fitnessHistory, yHistory, generationCount] = OnePlusOneESBinary(yParent, pMutation)
  generationCount = 0;
  
  dimensions = size(yParent, 1);
  
  % TODO parameter
  fitnessParent = OneMax(yParent);
  
  yHistory = [];
  fitnessHistory = [];
  
  do
    yHistory = [yHistory ; yParent];
    fitnessHistory = [fitnessHistory ; fitnessParent];
    mutation = stdnormal_rnd(dimensions, 1); % normal distributed random number
    yOffspring = mod(yParent + RandomBinary(pMutation, dimensions), 2);
    fitnessOffspring = OneMax(yOffspring);
    if fitnessOffspring > fitnessParent
      yParent = yOffspring;
        fitnessParent = fitnessOffspring;
    end
    generationCount = generationCount + 1;
  until fitnessOffspring == dimensions;
  yHistory = [yHistory ; yParent];
  fitnessHistory = [fitnessHistory ; fitnessParent];
end
