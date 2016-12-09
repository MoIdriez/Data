dez1 = removedel(csvread('1 - Scaling\D\EZ1\data.txt'));

cxyez1 = removedel(csvread('3 - Object\Cilinder\XY\EZ1\data.txt'));
cyez1 = removedel(csvread('3 - Object\Cilinder\Y\EZ1\data.txt'));
cyzez1 = removedel(csvread('3 - Object\Cilinder\YZ\EZ1\data.txt'));

sxyez1 = removedel(csvread('3 - Object\Square\XY\EZ1\data.txt'));
syez1 = removedel(csvread('3 - Object\Square\Y\EZ1\data.txt'));
syzez1 = removedel(csvread('3 - Object\Square\YZ\EZ1\data.txt'));

figure;

subplot(3,3,1); plot(dez1(:,2)); title('dez1'); xlim([0 4000]);
subplot(3,3,2); plot(cxyez1(:,2)); title('cxyez1'); xlim([0 4000]);
subplot(3,3,3); plot(sxyez1(:,2)); title('sxyez1'); xlim([0 4000]);

subplot(3,3,4); plot(dez1(:,2)); title('dez1'); xlim([0 4000]);
subplot(3,3,5); plot(cyez1(:,2)); title('cyez1'); xlim([0 4000]);
subplot(3,3,6); plot(syez1(:,2)); title('syez1'); xlim([0 4000]);

subplot(3,3,7); plot(dez1(:,2)); title('dez1'); xlim([0 4000]);
subplot(3,3,8); plot(cxyez1(:,2)); title('cxyez1'); xlim([0 4000]);
subplot(3,3,9); plot(syzez1(:,2)); title('syzez1'); xlim([0 4000]);