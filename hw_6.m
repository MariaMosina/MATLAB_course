phi = -pi/2:pi/50:pi/2;
teta = 0:pi/25:2*pi;
h = surf(sin(teta)'*cos(phi), sin(teta)'*sin(phi), cos(teta)'*cos(teta));
figure;
ax1 = subplot(2, 2, 1); 
ax2 = subplot(2, 2, 2); 
ax3 = subplot(2, 2, 3); 
copyobj(h,ax1);  view(ax1,[1 0 0]);
copyobj(h,ax2);  view(ax2,[0 1 0])
copyobj(h,ax3);  view(ax3,[0 0 1])
