function y = ParabolicRidge(x, d)  y = -x(1) + d * sum(x(2:end) .^ 2);end