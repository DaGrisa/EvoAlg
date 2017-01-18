function [v] = RandomBinary(p, dimensions) 
  v = rand(dimensions, 1) < p;
end