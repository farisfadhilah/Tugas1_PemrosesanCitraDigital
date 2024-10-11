function hist = imgHist(image)
    [rows,cols] = size(image);
    gray = 1 : 256;
    c = 0; 
    for i = 1 : 256
        for j = 1 : rows
            for k = 1 : cols
                if image(j, k) == i-1
                    c = c + 1;
                end
            end
        end
        gray(i) = c;
        c = 0;  
    end
    n = 0 : 255;
    hist = bar(n, gray);
end