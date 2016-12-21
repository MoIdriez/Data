fileLocation = 'EZBrown\10.txt';
rawdata = csvread(fileLocation);

% now let's read in the data and split out the scans
data = splitdata(rawdata, 4);

% and get the ground truth
gt = ground_truth(rawdata, 93);

% split up the scans that go one way and the ones that go the other way
forward = data(:,1:2:end);
backward = data(:,2:2:end);

% let's get the median
forwardmean = mean(forward');
backwardmean = mean(backward');

figure;
hold on;
pf = plot(forward);
plot(forwardmean, 'Color', 'red'); 
pb = plot(backward);
plot(backwardmean, 'Color', 'blue'); 
plot(gt, 'Color', [0 0 0 1]);

set(pf, 'Color', [1 0 0 0.1]);
set(pb, 'Color', [0 0 1 0.1]);