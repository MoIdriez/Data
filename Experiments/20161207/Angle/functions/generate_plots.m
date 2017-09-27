function generate_plots(sonars, interv)
    % foreach of the sonars
    for i = 1:size(sonars,2)

        % foreach of the intervals
        for j = 1:size(interv,2)
            % let's get the file's location
            fileLocation = char(strcat(sonars(i), '\', interv(j), '.txt'));

            % now let's read in the data and split out the scans
            data = splitdata(csvread(fileLocation), 4);

            % generate the default plots
            [all, alt, flip, median, fitting] = defplots(data);

            % generate the info needed to save the plots
            plots = [all alt flip, median, fitting];
            plotnames = {...
                char(strcat(interv(j),'all'));...
                char(strcat(interv(j),'alt'));...
                char(strcat(interv(j),'flip'));...
                char(strcat(interv(j),'median'));...
                char(strcat(interv(j),'fitting'))...
                };

            % save the default plots
            savelocation = char(strcat(sonars(i), '\plots\'));
            saveplots(savelocation, plots, plotnames);
        end
    end
end

