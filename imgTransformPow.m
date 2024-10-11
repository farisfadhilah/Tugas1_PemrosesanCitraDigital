function transformPow = imgTransformPow(image, c, gamma)
    [a, b] = size (image);
    transformPow = double(image);
    for i = 1 : a
        for j = 1 : b
            transformPow(i, j) = c * (transformPow(i, j) ^ gamma);
        end 
    end
end

