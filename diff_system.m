function diff_system(A, x0, n)
figure;
real_p = real(eig(A));
im_p = imag(eig(A));
subplot(4, 2, 1); plot(real_p, im_p, 'o');

X(1) = x0(1);
Y(1) = x0(2);
for k = 1:n
    V = A^k * x0;
    X(k+1) = V(1);
    Y(k+1) = V(2);
end
subplot(4, 2, 3); plot( 0:n, X, 'o');
subplot(4, 2, 4); plot( 0:n, Y, 'o');
subplot(4, 2, 5); plot3( X, Y, 0:n);