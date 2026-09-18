% === FUNGSI UTAMA (Menjalankan semua contoh sekaligus) ===
function tugas_function()
    fprintf('=== 1. Function dengan 1 nilai return ===\n');
    a = doubleit(5)

    fprintf('\n=== 2. Function dengan beberapa nilai return ===\n');
    [x, y] = multi(3, 4)

    fprintf('\n=== 3. Function dengan perintah return (func) ===\n');
    func('Minji');

    fprintf('\n=== 4. Function dengan perintah return (doubleit_return) ===\n');
    b = doubleit_return(5)
end

% === SUB-FUNGSI 1: Function dengan 1 nilai return ===
function result = doubleit(param)
    result = 2*param;
end

% === SUB-FUNGSI 2: Function dengan beberapa nilai return ===
function [mult2, mult3] = multi(param1, param2)
    mult2 = param1*2;
    mult3 = param2*3;
end

% === SUB-FUNGSI 3: Function dengan perintah return (func) ===
function func(param)
    fprintf('Nama saya %s!\n', param)
    return
    callname(param)
end

% === SUB-FUNGSI 4: Function dengan perintah return (doubleit_return) ===
function result = doubleit_return(param)
    result = 0;
    return
    result = 2*param;
end
