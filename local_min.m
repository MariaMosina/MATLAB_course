function [n, m, meanings] = local_min(A, n1, n2, m1, m2)
A = A(n1:n2, m1:m2);
n = [];
m = [];
meanings = [];
for ii = 2:(size(A, 1)-1)
    for jj = 2:(size(A, 2)-1)
        [val_j, loc_j] = min(A(ii-1:ii+1, jj-1:jj+1));
        [val_i, loc_i] = min(min(A(ii-1:ii+1, jj-1:jj+1)));
        tmp = ([loc_i, loc_j(2)] == [2 2]);
        if sum(tmp) == 2
            n(size(n)+1) = ii;
            m(size(m)+1) = jj;
            meanings(size(meanings)+1) = A(ii, jj);
        end
    end
end