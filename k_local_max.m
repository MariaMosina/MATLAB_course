function [n_res, m_res, meanings_res] = k_local_max(A, n1, n2, m1, m2, p_n, p_m, k)
A = A(n1:n2, m1:m2);
n=[];
m=[];
meanings = [];
for ii = 2:(size(A, 1)-1)
    for jj = 2:(size(A, 2)-1)
        [val_j, loc_j] = max(A(ii-1:ii+1, jj-1:jj+1));
        [val_i, loc_i] = max(max(A(ii-1:ii+1, jj-1:jj+1)));
        tmp = ([loc_i, loc_j(2)] == [2 2]);
        if sum(tmp) == 2
            n(size(n)+1) = ii;
            m(size(m)+1) = jj;
            meanings(size(meanings)+1) = A(ii, jj);
        end
    end
end
n_2 = (n-p_n).*(n-p_n)
m_2 = (m-p_m).*(m-p_m)
s = n_2+m_2;
n_max = 0;
n_res=[];
m_res=[];
meanings_res = [];
while n_max<k
    [val, loc] = min(s);
    n_res(size(n_res)+1) = n(loc);
    m_res(size(m_res)+1) = m(loc);
    meanings_res(size(meanings_res)+1) = meanings(loc);
    s(loc)=max(s)+1;
    n_max=n_max+1;
end
