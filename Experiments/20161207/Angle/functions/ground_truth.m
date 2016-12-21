function gt = ground_truth(data, offset)
    a = splitdata(data, 3);
    a(a>45) = 90 -a(a>45);
    cs = cos(a * pi / 180);
    gt = offset./cs;
end

