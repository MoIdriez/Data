function delplots(sonars, interv)
    % foreach of the sonars
    for i = 1:size(sonars,2)
        % foreach of the intervals
        for j = 1:size(interv,2)
            % let's get the file's location
            delete(char(strcat(sonars(i), '\plots\', interv(j), 'all.png')));
            delete(char(strcat(sonars(i), '\plots\', interv(j), 'alt.png')));
            delete(char(strcat(sonars(i), '\plots\', interv(j), 'flip.png')));
        end
    end

end

