function M = matrix_3m_to_m(A)
M = zeros(size(A,1)/3, size(A, 2));
i = 1;
while 3*i <= size(A, 1)
M(i, :) = max(A(3*i-2:3*i, :));
i = i+1;
end