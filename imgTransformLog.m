function transformLog = imgTransformLog(image, c)
    transformLog = im2double(image);
    transformLog = transformLog * 255;
    transformLog = c * log(transformLog + 1);
    transformLog = transformLog/max(max(transformLog));
end

