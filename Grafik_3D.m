% === SCRIPT PLOT 2D & 3D (METNUM) ===

% 1. Plot 2D (Fungsi Kubik)
x = 0:0.1:20;
y = -10*x.^3 + 300*x.^2;

figure(1);
plot(x, y, 'LineWidth', 1.5);
title('Figure 1: 2D cubic plot');
xlabel('Sumbu X (Langkah)');
ylabel('Sumbu Y (Amplitudo)');
grid on;

% 2. Plot 3D (Fungsi Surface / Sinc 3D)
[X, Y] = meshgrid(-10:0.5:10);
R = sqrt(X.^2 + Y.^2) + eps; % Tambah eps untuk mencegah pembagian dengan nol
Z = sin(R) ./ R;

figure(2);
surf(X, Y, Z);
title('Figure 2: 3D sinc surface');
xlabel('Sumbu X');
ylabel('Sumbu Y');
zlabel('Sumbu Z (Amplitudo)');
shading interp;
colormap jet;
