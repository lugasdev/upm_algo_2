Program empat;
uses crt;

var
    arr: array[1..8] of char;
    i, ketemu: integer;
    huruf : char;

function cari(cari_huruf:char):integer;
begin
    ketemu := 0;

    i := 0;
    while (i <= 8) AND (ketemu = 0) do
    begin
        if (cari_huruf = arr[i]) then
        begin
            ketemu := i;
        end;

        i := 1 + i;
    end;

    cari := ketemu;
end;

begin
    arr[1] := 'k';
    arr[2] := 'o';
    arr[3] := 'm';
    arr[4] := 'p';
    arr[5] := 'u';
    arr[6] := 't';
    arr[7] := 'e';
    arr[8] := 'r';

    writeln('aplikasi mencari nilai');

    write('masukkan salah satu huruf (a-z) : ');
    readln(huruf);

    if cari(huruf) = 0 then
        write('huruf tidak ditemukan dalam kata komputer')
    else
        begin
            write('huruf yang anda cari berada di index ke-');
            write(cari(huruf));
        end;
end.