function system(A, b)
% Векторы с красными точками - собственные векторы
% Вектор с желтой точкой - вектор x
% Вектор с фиолетовой точкой - вектор b
% Векторы с черными точками - введенные векторы
[V, D] = eig(A);
plot_vectors(V, 'k', 'r');
x = A\b;
plot_vectors(x', 'k', 'y');
plot_vectors(b', 'k', 'm');
n = 3;
[p_x, p_y] = ginput(n);
for i = 1:n
    M(i, 1) = p_x(i);
    M(i, 2) = p_y(i);
end
A_dot_M = (A*M')';
plot_vectors(M);
for i=1:n
    v = [A_dot_M(i, 1); A_dot_M(i, 2)];
    cos_x(i) = sum(v.*x)/(sqrt(v(1)^2+v(2)^2)*sqrt(x(1)^2+x(2)^2));
    cos_b(i) = sum(v.*x)/(sqrt(v(1)^2+v(2)^2)*sqrt(b(1)^2+b(2)^2));
end
[val1, i1] = max(cos_x);
[val2, i2] = max(cos_b);
for i=1:n
    if i == i1
        plot_vectors([A_dot_M(i, 1), A_dot_M(i, 2)], 'g', 'g');
    end
    if i == i2
        plot_vectors([A_dot_M(i, 1), A_dot_M(i, 2)], 'b', 'b');
    end
    if (i~= i1 && i~=i2)
        plot_vectors([A_dot_M(i, 1), A_dot_M(i, 2)]);
    end
end