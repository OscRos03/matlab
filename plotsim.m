hold on

Array = readmatrix('sim.csv');

x = Array(:, 1);
y1 = Array(:, 2);
y2 = Array(:, 3);
y3 = Array(:, 4);
y4 = Array(:, 5);

plot(x, y1, 'LineWidth', 2)
plot(x, y2, 'LineWidth', 2)
plot(x, y3, 'LineWidth', 2)
plot(x, y4, 'LineWidth', 2)

set(gcf,'Position',[500 500 800 500])
set(gca, 'XScale', 'log')
xlim([1 10^8])
ylim([-250 40])

xlabel('Frekvens (Hz)')
ylabel('Amplitud (dBV)')

legend({'Vin', 'V1', 'V2', 'Vout'}, 'Location','southeast')