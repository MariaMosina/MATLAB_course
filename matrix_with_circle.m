function M = matrix_with_circle(n, r)
M = zeros(n);
center = floor(n/2);
C = zeros(center);

if mod(n, 2) == 0
    v = tril(ones(r));
    C((center-r+1):center, 1:r) = v;
    M(1:center, (center+1):n) = C;
    M((center+1):n, 1:center) = C';
    M(1:center, 1:center) = flip(C, 2);
    M((center+1):n, (center+1):n) = flip(C, 1);
else
    v = tril(ones(r-1));
    C((center-r+2):center, 1:r-1) = v;
    M(1:center, (center+2):n) = C;
    M((center+2):n, 1:center) = C';
    M(1:center, 1:center) = flip(C, 2);
    M((center+2):n, (center+2):n) = flip(C, 1);
    M(center+1, center-r+1:center+r+1) = 1;
    M(center-r+1:center+r+1, center+1) = 1;
end