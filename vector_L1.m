function V = vector_L1(n)
V = zeros(n, 1);
if mod(n, 2) == 0
    center = n/2;
    for i =1:center
        V(center-i+1, 1) = i;
        V(center+i, 1) = i;
    end
else
    center = floor(n/2);
    for i =1:center
        V(center-i+1, 1) = i;
        V(center+i+1, 1) = i;
    end
end
V = V/sum(V);