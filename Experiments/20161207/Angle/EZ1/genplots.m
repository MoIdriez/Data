files = {'10' '25' '50'};

% for each of the intervals
for i = 1:size(files,2)
    % get the filename
    filename = char(strcat(files(i), '.txt'));
    
    %prin out the filename
    disp(filename);
    
    % read in the data and split it up
    data = splitdata(csvread(filename));
    
    % generate the default plots
    [a,b,c] = defplots(data);
    
    % generate the info needed to save the plots
    plots = [a b c];
    plotnames = {strcat(files(i),'all');strcat(files(i),'alt');strcat(files(i),'flip')};
    
    % save the default plots
    saveplots('EZ1\plots\', plots, filenames);
    
    
end