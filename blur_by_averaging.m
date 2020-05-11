function M = blur_by_averaging(A, k)
m = size(A, 1);
n = size(A, 2);
for ii = 1:m/k
    for jj = 1:n/k
        M(ii, jj) = round(mean(mean(A(ii*k-k+1:ii*k, jj*k-k+1:jj*k))));
    end
end