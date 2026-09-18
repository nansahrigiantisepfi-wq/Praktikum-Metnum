% Integral
pkg load symbolic
syms x

f = input('Masukkan bentuk persamaan f(x) = ', 's');
f_asli = sym(f)
f_integral = int(f_asli, 'x')
