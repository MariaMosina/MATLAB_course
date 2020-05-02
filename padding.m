function M = padding(A, n)
M = zeros(size(A, 1)+n*2, size(A, 2)+n*2);
M(n+1:n+size(A, 1), n+1:n+size(A, 2)) = A;