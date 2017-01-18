%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% Matlab code for experiments with Perceptron Learning Algorithm 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% Copyright by Hans-Georg Beyer (HGB). For teaching use only! It is 
% not allowed to use this program without written permission by HGB 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 

function [] = Plot_Perceptron()
  %n = 100;
  %[x1, x2] = PerceptronTestData(n, [2, 5], [3, 3], 1.7, 1.7);
  %x = [x1; x2];
  %d = [ones(n, 1) .* -1; ones(n, 1)];

  % input normalization
  %x = x / norm(x);
  
  [x, d] = PerceptronTestDataML(100, [2, 5], [3, 3], 0.4, 1);

  % let it learn
  [w, nw, ni, nmis, w_found, w_history] = Perceptron_Learner(x, d, 1000);
  w_found

  % plot misclassification behaviour
  figure(1); % create new figure
  plot(nmis)
  title('Number of misclassifications against iterations');
  xlabel('Iteration');
  ylabel('Number of misclassifications');
  axis([0, ni, 0, max(nmis) + 1]);

  % calculate decision boundaries
  xl = min(x(:,1)); 
  xu = max(x(:,1));
  yl = min(x(:,2)); 
  yu = max(x(:,2));

  % plot data points and separator history
  figure(2); % create new figure
  title('Graphical representation of the classification');
  xlabel('x');
  ylabel('y');
  % plot data set x
  hold on; % multiple plots on this figure
  color_blue = [0, 0, 1];
  color_red = [1, 0, 0];
  for i = 1:size(x,1)
    if d(i) == 1
      plot(x(i,1), x(i, 2), 'o', 'MarkerEdgeColor', color_blue);
    else 
      plot(x(i,1), x(i, 2), 's', 'MarkerEdgeColor', color_red);
    end
  end

  % plot separator history
  for i = 1:size(w_history,1)
    PlotSeparator(xl, xu, w_history(i, :), 'g-');
  end

  % plot result separator
  PlotSeparator(xl, xu, w, 'k');

  hold off;

  % set axis limits
  axis([xl-abs(0.1*(xu-xl)), xu+abs(0.1*(xu-xl)), ...
  yl-abs(0.1*(yu-yl)), yu+abs(0.1*(yu-yl))]);
end


function [x, d] = PerceptronTestDataML(n, center1, center2, standardDeviation, normalize)
	dimensions = size(center1, 2);
  
  % initialize randn with seed to get the same results
  rand("seed",43);
  randn("seed",107);
	
	% classifications
	d = [ones(n, 1) ; -1 * ones(n, 1)];
	
	% test data
	x = vertcat(center1 + standardDeviation * randn(n, dimensions)...
            , center2 + standardDeviation * randn(n, dimensions));
	
	if (normalize != 0)
		x = x/norm(x);
	end
end

function [] = PlotSeparator(xl, xu, w, color) 
  plot([xl, xu], [-(xl * w(1) + w(3)) / w(2), -(xu * w(1) + w(3)) / w(2)], color)
end

