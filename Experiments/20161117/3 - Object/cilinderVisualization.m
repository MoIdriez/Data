cxyez = removedel(csvread('Cilinder\XY\EZ\data.txt'));
cxyez1 = removedel(csvread('Cilinder\XY\EZ1\data.txt'));
cxyezb = removedel(csvread('Cilinder\XY\EZBrown\data.txt'));

cyez = removedel(csvread('Cilinder\Y\EZ\data.txt'));
cyez1 = removedel(csvread('Cilinder\Y\EZ1\data.txt'));
cyezb = removedel(csvread('Cilinder\Y\EZBrown\data.txt'));

cyzez = removedel(csvread('Cilinder\YZ\EZ\data.txt'));
cyzez1 = removedel(csvread('Cilinder\YZ\EZ1\data.txt'));
cyzezb = removedel(csvread('Cilinder\YZ\EZBrown\data.txt'));

figure;

subplot(3,3,1); plot(cxyez(:,2)); title('cxyez'); xlim([0 4000]);
subplot(3,3,2); plot(cxyez1(:,2)); title('cxyez1'); xlim([0 4000]);
subplot(3,3,3); plot(cxyezb(:,2)); title('cxyezb'); xlim([0 4000]);

subplot(3,3,4); plot(cyez(:,2)); title('cyez'); xlim([0 4000]);
subplot(3,3,5); plot(cyez1(:,2)); title('cyez1'); xlim([0 4000]);
subplot(3,3,6); plot(cyezb(:,2)); title('cyezb'); xlim([0 4000]);

subplot(3,3,7); plot(cyzez(:,2)); title('cyzez'); xlim([0 4000]);
subplot(3,3,8); plot(cyzez1(:,2)); title('cyzez1'); xlim([0 4000]);
subplot(3,3,9); plot(cyzezb(:,2)); title('cyzezb'); xlim([0 4000]);