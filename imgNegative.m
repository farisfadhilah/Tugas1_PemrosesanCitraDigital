function negative = imgNegative(image)
    image = double(image);
    negative = uint8(255 - image);
end

