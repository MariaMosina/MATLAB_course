% picture_with_histograms(sample);

% M = [1 2; 1 3; 2 5]; %M - матрица, по строкам которой записаны нужные векторы
% plot_vectors(M);

% A = [ 10 1 ; 1 0];
% b = [2; 1];
% system(A, b);

% A = [ 1 1; 1 0];
% x0 = [ 1; 1];
% diff_system(A, x0, 5);

fx = @(t) sin(t);
fy = @(t) cos(t);
fz = @(t) t;
vector_func(fx, fy, fz, 0,10*pi, pi/50);