function deffacts(data)
    % let's start with splitting up the scans 
    forward = data(:,1:2:end);
    backward = data(:,2:2:end);
    
    % now let's calculate the mean of these
    forwardmean = mean(forward');
    backwardmean = mean(backward');
    
    % let's create the figure
    figure;
    hold on;
    
    % create the plots of scans and mean
    pf = plot(forward);
    pb = plot(backward);
    plot(forwardmean, 'Color', 'red');     
    plot(backwardmean, 'Color', 'blue'); 

    % decrease the opacity of all the the normal scans
    set(pf, 'Color', [1 0 0 0.1])
    set(pb, 'Color', [0 0 1 0.1])
    
    % let
    
end
% 
% function d = run_average(d,s)
% h = ones(1,s)/s;
% sd = d(1:s/2)';
% ed = d(end-s/2:end)';
% d = conv(d',h,'same');
% d(1:s/2) = sd;
% d(end-s/2:end) = ed;
% d = d';
% end

