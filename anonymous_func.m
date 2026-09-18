% === ANONYMOUS FUNCTION 1: squared ===
squared = @(x) x.^2

% Memanggil dengan 1 angka
squared(3)

% Memanggil dengan vektor/rentang angka
squared(1:3)


% === ANONYMOUS FUNCTION 2: addition ===
addition = @(x,y) x+y

% Memanggil fungsi penjumlahan
addition(5, 7)
