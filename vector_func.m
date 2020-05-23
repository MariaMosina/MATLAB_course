function vector_func(fx, fy, fz, l, u, s)
t = l:s:u;
plot3(fx(t), fy(t), fz(t));