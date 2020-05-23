function plot_vectors(M, color_l, color_p)
if nargin == 1
    color_l = 'black';
    color_p = 'black';
end
hold on;
for i = 1:size(M, 1)
    plot([0 M(i, 1)], [0, M(i, 2)], color_l);
    scatter(M(i, 1), M(i, 2), 'filled', color_p);
end