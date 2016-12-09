sxyez = removedel(csvread('Square\XY\EZ\data.txt'));
sxyez1 = removedel(csvread('Square\XY\EZ1\data.txt'));
sxyezb = removedel(csvread('Square\XY\EZBrown\data.txt'));

syez = removedel(csvread('Square\Y\EZ\data.txt'));
syez1 = removedel(csvread('Square\Y\EZ1\data.txt'));
syezb = removedel(csvread('Square\Y\EZBrown\data.txt'));

syzez = removedel(csvread('Square\YZ\EZ\data.txt'));
syzez1 = removedel(csvread('Square\YZ\EZ1\data.txt'));
syzezb = removedel(csvread('Square\YZ\EZBrown\data.txt'));

figure;

subplot(3,3,1); plot(sxyez(:,2)); title('sxyez'); xlim([0 4000]);
subplot(3,3,2); plot(sxyez1(:,2)); title('sxyez1'); xlim([0 4000]);
subplot(3,3,3); plot(sxyezb(:,2)); title('sxyezb'); xlim([0 4000]);

subplot(3,3,4); plot(syez(:,2)); title('syez'); xlim([0 4000]);
subplot(3,3,5); plot(syez1(:,2)); title('syez1'); xlim([0 4000]);
subplot(3,3,6); plot(syezb(:,2)); title('syezb'); xlim([0 4000]);

subplot(3,3,7); plot(syzez(:,2)); title('syzez'); xlim([0 4000]);
subplot(3,3,8); plot(syzez1(:,2)); title('syzez1'); xlim([0 4000]);
subplot(3,3,9); plot(syzezb(:,2)); title('syzezb'); xlim([0 4000]);