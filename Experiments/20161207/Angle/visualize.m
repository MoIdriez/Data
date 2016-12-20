data = splitdata(csvread('EZ1\10.txt'));
[a,b,c] = defplots(data);

data = splitdata(csvread('EZBrown\10.txt'));
[a,b,c] = defplots(data);

%plots = [a b c];
%filenames = {'10all';'10alt';'10flip'};
%saveplots('EZ1\plots\', plots, filenames);
%plots = 
%saveplots(

%print(all, 'EZ1\plots\10all', '-dpng');
%print(alt, 'EZ1\plots\10alt', '-dpng');
%print(flip, 'EZ1\plots\10flip', '-dpng');
