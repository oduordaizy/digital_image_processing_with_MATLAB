%Image loading and displaying.
a = imread('cloud.png');
imshow(a)
title("Original Image")


%TASK 2: Downsampling the original image

%downsampling factors
df = [2, 4, 8]

%looping through each of the factors
for i = 1:length(df)
    factor = df(i);

    new_image = a(1:factor:end, 1:factor:end, :) %downsampling the original image a
    
    figure;
    imshow(new_image)
    title(["Downsampled by " num2str(factor)])

end    