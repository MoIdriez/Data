%% import d visualization
dez = csvread('D\EZ\data.txt');
dez1 = csvread('D\EZ1\data.txt');
dezbrown = csvread('D\EZBrown\data.txt');

d2ez = csvread('D2\EZ\data.txt');
d2ez1 = csvread('D2\EZ1\data.txt');
d2ezbrown = csvread('D2\EZBrown\data.txt');

d3ez = csvread('D3\EZ\data.txt');
d3ez1 = csvread('D3\EZ1\data.txt');
d3ezbrown = csvread('D3\EZBrown\data.txt');

%% removing the delimeter
dez(dez(:,1)==-1,:) = [];
dez1(dez1(:,1)==-1,:) = [];
dezbrown(dezbrown(:,1)==-1,:) = [];

d2ez(d2ez(:,1)==-1,:) = [];
d2ez1(d2ez1(:,1)==-1,:) = [];
d2ezbrown(d2ezbrown(:,1)==-1,:) = [];

d3ez(d3ez(:,1)==-1,:) = [];
d3ez1(d3ez1(:,1)==-1,:) = [];
d3ezbrown(d3ezbrown(:,1)==-1,:) = [];

%% lets do some plotting
figure;

subplot(3,3,1); plot(dez(:,2)); title('dez'); xlim([0 4000]);
subplot(3,3,2); plot(dez1(:,2)); title('dez1'); xlim([0 4000]);
subplot(3,3,3); plot(dezbrown(:,2)); title('dezbrown'); xlim([0 4000]);

subplot(3,3,4); plot(d2ez(:,2)); title('d2ez'); xlim([0 4000]);
subplot(3,3,5); plot(d2ez1(:,2)); title('d2ez1'); xlim([0 4000]);
subplot(3,3,6); plot(d2ezbrown(:,2)); title('d2ezbrown'); xlim([0 4000]);

subplot(3,3,7); plot(d3ez(:,2)); title('d3ez'); xlim([0 4000]);
subplot(3,3,8); plot(d3ez1(:,2)); title('d3ez1'); xlim([0 4000]);
subplot(3,3,9); plot(d3ezbrown(:,2)); title('d3ezbrown'); xlim([0 4000]);


figure;

subplot(3,2,1); plot(dez1(:,2)); title('dez1'); xlim([0 4000]);
subplot(3,2,2); plot(dezbrown(:,2)); title('dezbrown'); xlim([0 4000]);

subplot(3,2,3); plot(d2ez1(:,2)); title('d2ez1'); xlim([0 4000]);
subplot(3,2,4); plot(d2ezbrown(:,2)); title('d2ezbrown'); xlim([0 4000]);

subplot(3,2,5); plot(d3ez1(:,2)); title('d3ez1'); xlim([0 4000]);
subplot(3,2,6); plot(d3ezbrown(:,2)); title('d3ezbrown'); xlim([0 4000]);


figure;

subplot(3,2,1); plot(dez1(:,2)); title('dez1'); axis([0 4000 0 200]);
subplot(3,2,2); plot(dezbrown(:,2)); title('dezbrown'); axis([0 4000 0 200]);

subplot(3,2,3); plot(d2ez1(:,2)); title('d2ez1'); axis([0 4000 0 200]);
subplot(3,2,4); plot(d2ezbrown(:,2)); title('d2ezbrown'); axis([0 4000 0 200]);

subplot(3,2,5); plot(d3ez1(:,2)); title('d3ez1'); axis([0 4000 0 200]);
subplot(3,2,6); plot(d3ezbrown(:,2)); title('d3ezbrown'); axis([0 4000 0 200]);