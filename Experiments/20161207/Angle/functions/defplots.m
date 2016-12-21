function [all, alt, flip, median, fitting] = defplots(data)
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

    % reversing every other iteration
    flip = figure;
    hold on;
    for i = 1:size(data,2)
        if mod(i,2) == 0
            plot(fliplr(data(:,i)')', 'Color', 'blue');
        else
            plot(data(:,i), 'Color', 'red');
        end    
    end
    
    % adding the runnin mean
    median = figure;
    hold on;
    plot(mean(data(:,1:2:end)'), 'Color', 'red');
    plot(fliplr(mean(data(:,2:2:end)')), 'Color', 'blue');
    
    
    for i = 1:size(data,2)
        if mod(i,2) == 0
            plot(fliplr(data(:,i)')', 'Color', [0 0 1 0.1]);
        else
            plot(data(:,i), 'Color', [1 0 0 0.1]);
        end    
    end
    
    % over fitting XD
    fitting = figure;
    hold on;
    plot(mean(data(120:end,1:2:end)'), 'Color', 'red');
    plot(fliplr(mean(data(120:end,2:2:end)')), 'Color', 'blue');
    
    
    for i = 1:size(data,2)
        if mod(i,2) == 0
            plot(fliplr(data(120:end,i)')', 'Color', [0 0 1 0.1]);
        else
            plot(data(120:end,i), 'Color', [1 0 0 0.1]);
        end    
    end
    
    

end

