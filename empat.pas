Program empat;
uses crt;

var
    arr: array[1..10] of integer;
    nilai, i, ketemu: integer;

function cari(nilai:integer):integer;
begin
    ketemu := 0;

    // for i := 1 to 10 do
    i := 0;
    while (i <= Length(arr)) AND (ketemu = 0) do
    begin
        if (nilai = arr[i]) then
        begin
            ketemu := i;
        end;

        i := 1 + i;
    end;

    cari := ketemu;
end;

begin
    arr[1] := 5;
    arr[2] := 4;
    arr[3] := 6;
    arr[4] := 7;
    arr[5] := 1;
    arr[6] := 3;
    arr[7] := 8;
    arr[8] := 2;
    arr[9] := 10;
    arr[10] := 9;

    writeln('aplikasi mencari nilai');

    write('masukkan salah satu angka dari 1 s.d 10 : ');
    readln(nilai);

    if cari(nilai) = 0 then
        write('nilai tidak ditemukan')
    else
        begin
            write('nilai yang anda cari berada di index ke-');
            write(cari(nilai));
        end;
end.