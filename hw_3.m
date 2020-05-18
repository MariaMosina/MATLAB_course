% f = @(x) x^3 + 4*x -3 ;
% f_1 = @(x) 3*x^2 +4;
% f_2 = @(x) 6*x; 
% x1 = newton(f, f_1, f_2);
A = [3 2 4 1 6 7;7 8 9 10 12 11; 3 21 8 9 0 4; 13 14 15 16 17 18]

% [n, m, meanings] = local_min(A, 1, 4, 1, 6);
[n, m, meanings] = k_local_max(A, 1, 4, 1, 6, 2, 2, 2) 