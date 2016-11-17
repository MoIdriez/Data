figure;
for i = 1:10
    trial = csvread(strcat('EZ\Corner15\', int2str(i), '.txt'));
    subplot(2,5,i);
    plot(trial(:,2))
    title(strcat('File No.', int2str(i)));
end

figure;
for i = 1:10
    trial = csvread(strcat('EZ\Corner15\', int2str(i), '.txt'));
    subplot(2,5,i);
    plot(runaverage(trial(:,2), 20))
    title(strcat('File No.', int2str(i)));
end