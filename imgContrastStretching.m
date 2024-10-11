function contrastStretching = imgContrastStretching(image)
    contrastStretching = double(image);
    rmin = min(contrastStretching(:));
    rmax = max(contrastStretching(:));
    [a, b, c] = size(img);
    for k = 1 : c
        for i = 1 : a
            for j = 1 : b
                r = double(contrastStretching(i, j, k));
                s = 255 * ((r - rmin)/(rmax - rmin));
                contrastStretching(i, j, k) = s;
            end
        end 
    end
end

