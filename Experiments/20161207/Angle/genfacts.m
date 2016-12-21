function genfacts(sonars, interv)
    % foreach of the sonars
    for i = 1:size(sonars,2)

        % foreach of the intervals
        for j = 1:size(interv,2)
            % let's get the file's location
            fileLocation = char(strcat(sonars(i), '\', interv(j), '.txt'));

            % now let's read in the data and split out the scans
            data = splitdata(csvread(fileLocation), 4);
            
            % generate the default facts
            deffacts(data);            
        end
    end
end

