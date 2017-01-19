function [fitnessHistory, sigmaHistory] = OneSlashLambdaSelfAdaptionES(yParent, sigmaParent, sigmaStop, lambda, tau, targetFunction)  % initialization  dimensions = size(yParent, 1);    fitnessHistory = [feval(targetFunction, yParent)];  yHistory = [yParent];  sigmaHistory = [sigmaParent];    generationCount = 0;    do    % empty pools    fitnessPool = [];    childrenPool = [];        % generate lambda children    for i = 1:lambda      xi = e^(tau*randn(1));      sigmaLambda = sigmaParent * xi; % TODO correct? (slide 94)      child.sigma = sigmaLambda;            mutation = randn(dimensions, 1);      yLambda = yParent + mutation * sigmaLambda;      child.y = yLambda;            childrenPool = [childrenPool ; child];            fitnessLambda = feval(targetFunction, yLambda);      fitnessPool = [fitnessPool ; fitnessLambda];    end            % choose best child    minFitness = min(fitnessPool);    fitnessHistory = [fitnessHistory ; minFitness];    indexBestChild = find(fitnessPool == minFitness);        % make it the new parent    sigmaParent = childrenPool(indexBestChild).sigma;    sigmaHistory = [sigmaHistory ; sigmaParent];        yParent = childrenPool(indexBestChild).y;    yHistory = [yHistory ; yParent];            generationCount++;  until sigmaParent < sigmaStop;end