function M = max_conv(A, k)
m = size(A, 1);
n = size(A, 2);
for ii = 1:m-k+1
    for jj = 1:n-k+1
        M(ii, jj) = max(max(A(ii:ii+k-1, jj:jj+k-1)));
    end
end