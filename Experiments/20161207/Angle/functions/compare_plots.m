function compare_plots(sonars, interv)
    % let's generate the file location
    fl1 = char(strcat(sonars(1), '\', interv(1), '.txt'));
    fl2 = char(strcat(sonars(1), '\', interv(1), '.txt'));

    % let's get the data and split it
    d1 = splitdata(csvread(fl1), 4);
    d2 = splitdata(csvread(fl2), 4);
    
    % let's generate some plots    
    all = figure;
    hold on;
    plot(d1);
    plot(d2);
end

