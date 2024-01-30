%Image loading and displaying.
a = imread('cloud.png');
imshow(a)
title("Original Image")

%TASK 3: Quantization of the original image
levels = [64, 16, 4, 2]

for i = 1:length(levels)
    l = levels(i)

    quantized = imquantize(a, linspace(0, 255, l))

    quantized = uint8(quantized * (255/l))
    figure;    imshow(quantized)
    title(["Quantized to " num2str(levels)])
end