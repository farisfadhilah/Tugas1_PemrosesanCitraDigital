function brightened = imgBrightened(image, a, b)
    brightened = a * double(image) + b;
    if brightened > 255 
        brightened = 255;
    elseif brightened < 0
        brightened = 0;
    end
    brightened = uint8(brightened);
end