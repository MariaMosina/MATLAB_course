function M = matrix_chess(n, m)
M = zeros(n , m)
i = 1:n
j = 1:2:m
M(i, j) = 1
i = 2:2:n
j = 1:m
M(i, j) = 1-M(i, j)