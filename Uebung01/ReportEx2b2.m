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

generationsToMaxSum = sparse(maxDimensions, 1);
plotHandels = sparse(maxDimensions, 1);

figure();
hold on;
plot([0, maxDimensions], [0, maxDimensions * 10]);
ylabel("Mean generations to max");
xlabel("Number of bits (N)");
drawnow();

for r = 1:10
  title(["Runtime complexity with ", num2str(r), " replications"]);
  drawnow();
  for N = minDimensions:increment:maxDimensions
    yStart = RandomBinary(0.5, N);
    [~, ~, generationsToMax] = OnePlusOneESBinary(yStart, 1 / N);
    generationsToMaxSum(N) = generationsToMaxSum(N) +  generationsToMax;
    if (r > 1) 
      delete(plotHandels(N));
    endif
    plotHandels(N) = plot(N, generationsToMaxSum(N) / r, "marker", "*");
    drawnow();
  endfor
endfor
hold off;