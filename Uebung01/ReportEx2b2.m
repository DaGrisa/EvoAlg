%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 2. b) Runtime complexity %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%

set (0, "defaultaxesfontname", "Helvetica")
set (0, "defaultaxesfontsize", 14)
set (0, "defaulttextfontname", "Helvetica")
set (0, "defaulttextfontsize", 14) 

minDimensions = 10;
increment = 10;
maxDimensions = 300;

replications = 50;

generationsToMaxSum = sparse(maxDimensions, 1);
plotHandels = sparse(maxDimensions, 1);

figure();
hold on;
plot([0, maxDimensions], [0, maxDimensions * 10]);
ylabel("Mean generations to max");
xlabel("Number of bits (N)");
drawnow();

x = [];
y = []; 
z = 0;

for r = 1:replications
  title(["Runtime complexity with ", num2str(r), " replications"]);
  drawnow();
  
  %color(1:3) = 1 - 1 / replications * r;
  
  i = 1;
  for N = minDimensions:increment:maxDimensions
    yStart = RandomBinary(0.5, N);
    [~, ~, generationsToMax] = OnePlusOneESBinary(yStart, 1 / N);
    generationsToMaxSum(N) = generationsToMaxSum(N) +  generationsToMax;
    
    if (r > 1 && N > minDimensions) 
      %delete(plotHandels(N));
    endif
    %plotHandels(N) = plot(N, generationsToMaxSum(N) / r, "marker", "*", "color", color);
    
    x(i) = N;
    y(i) = generationsToMaxSum(N) / r;
    if (z)
      delete(prevHandle);
    end
    z = 1;
    prevHandle = plot(x, y, "color", [0, 0, 0]);
    drawnow();
    i++;
  endfor
endfor
hold off;