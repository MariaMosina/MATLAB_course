function M=increase_one(n, m, start)
for i=1:n
    if nargin < 3
        start = 1;
    end
    M(i, 1:m) = start+i-1;
end