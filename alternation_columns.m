function M = alternation_columns(n, m)
M = zeros(n, m)
i = 1:n
j = 2:2:m
M(i, j) = 1