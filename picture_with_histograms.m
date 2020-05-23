function picture_with_histograms(data)
figure;
subplot(2, 2, 1); image(data); title("picture")
subplot(2, 2, 2); histogram(data(:,:,1)); title("red");
subplot(2, 2, 3); histogram(data(:,:,2)); title("green");
subplot(2, 2, 4); histogram(data(:,:,3)); title("blue");