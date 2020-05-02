function M = matrix_chess(n, m)
M = zeros(n , m)
ii = 1:n
jj = 1:2:m
M(ii, jj) = 1
ii = 2:2:n
jj = 1:m
M(ii, jj) = 1-M(ii, jj)