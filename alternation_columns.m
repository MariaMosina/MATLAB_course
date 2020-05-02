function M = alternation_columns(n, m)
M = zeros(n, m);
ii = 1:n;
jj = 2:2:m;
M(ii, jj) = 1;