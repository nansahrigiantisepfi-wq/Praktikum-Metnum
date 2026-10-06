# Metode b) Eliminasi Gauss-Jordan
# (forward elimination dulu, lanjut backward elimination sampai A = identitas)
from fractions import Fraction as F

A = [[F(2), F(1), F(-1)],
     [F(4), F(3), F(1)],
     [F(-2), F(1), F(2)]]
b = [F(3), F(9), F(4)]
n = 3


def tampil(M, judul):
    print(judul)
    for r in M:
        print("  [" + "  ".join(f"{float(v):8.3f}" for v in r) + " ]")
    print()


M = [A[i][:] + [b[i]] for i in range(n)]
tampil(M, "Matriks augmented [A|b]:")

# --- tahap 1: forward elimination (sama seperti bagian a) ---
print("--- Forward elimination ---")
for k in range(n - 1):
    for i in range(k + 1, n):
        m = M[i][k] / M[k][k]
        print(f"m{i+1}{k+1} = {float(m):g}  ->  R{i+1} = R{i+1} - ({float(m):g})*R{k+1}")
        for j in range(k, n + 1):
            M[i][j] -= m * M[k][j]
    tampil(M, f"Setelah eliminasi kolom {k+1}:")

# --- tahap 2: backward elimination sampai identitas ---
print("--- Backward elimination ---")
for k in range(n - 1, -1, -1):
    p = M[k][k]
    M[k] = [v / p for v in M[k]]              # pivot dijadikan 1
    print(f"R{k+1} = R{k+1} / {float(p):g}")
    for i in range(k):                         # nolkan di atas pivot
        f = M[i][k]
        print(f"R{i+1} = R{i+1} - ({float(f):g})*R{k+1}")
        M[i] = [M[i][j] - f * M[k][j] for j in range(n + 1)]
    tampil(M, f"Setelah pivot {k+1}:")

x = [M[i][n] for i in range(n)]
print("Hasil akhir (Gauss-Jordan), langsung dibaca dari kolom terakhir:")
for i in range(n):
    print(f"  x{i+1} = {float(x[i]):g}")