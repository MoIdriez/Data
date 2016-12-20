function [all, alt, flip] = defplots(data)
    % just plotting everything
    all = figure;
    plot(data);

    % plotting every iteration on it's own
    alt = figure;
    hold on;
    for i = 1:size(data,2)
        color = 'red';
        if mod(i,2) == 0
            color = 'blue';
        end

        plot(data(:,i), 'Color', color);
    end

    % reversing every iteration
    flip = figure;
    hold on;
    for i = 1:size(data,2)
        if mod(i,2) == 0
            plot(fliplr(data(:,i)')', 'Color', 'blue');
        else
            plot(data(:,i), 'Color', 'red');
        end    
    end


end

