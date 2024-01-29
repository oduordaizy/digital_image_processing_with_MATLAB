%a = imread('C:\Users\user\Documents\img.PNG');
%imshow(a)

%Task1: Image loading and displaying.
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

%TASK 3: Quantization of the original image
levels = [64, 16, 4, 2]

for i = 1:length(levels)
    l = levels(i)

    quantized = imquantize(a, linspace(0, 255, l))

    quantized = uint8(quantized * (255/l))
    figure;    imshow(quantized)
    title(["Quantized to " num2str(levels)])
end