%% the default values for this trial
sonars = {'EZ' 'EZ1' 'EZBrown'};    % list of the sonars
interv = {'10' '25' '50'};          % list of the intervals

% foreach of the sonars
for i = 1:size(sonars,2)
    
    % foreach of the intervals
    for j = 1:size(interv,2)
        % let's get the file's location
        fileLocation = char(strcat(sonars(i), '\', interv(j), '.txt'));
        
        % now let's read in the data and split out the scans
        data = splitdata(csvread(filename));
        
        % generate the default plots
        [all, alt, flip] = defplots(data);
        
        % generate the info needed to save the plots
        plots = [all alt flip];
        plotnames = {...
            char(strcat(interv(j),'all'));...
            char(strcat(interv(j),'alt'));...
            char(strcat(interv(j),'flip'))...
            };
    
        % save the default plots
        savelocation = char(strcat(sonars(i), '\plots\'));
        saveplots(savelocation, plots, plotnames);
    end
end