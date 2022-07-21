Program tiga;
uses crt;

type
    arr_int = array[1..50] of integer;

var
    i, j, temp, nil_total:integer;
    nil_rata: real;
    arr: arr_int;

begin
    clrscr;

    nil_rata := 742/50;

    writeln(nil_rata:2,2);

    for i := 1 to 50 do
    begin
        write('masukkan array ke-', i, ' : ');
        readln(arr[i]);
    end;

    writeln('Data yang diinput: ');
    for i := 1 to 50 do
        write(arr[i], ' ');

    writeln();

    for i := (50 - 1) downto 1 do
    begin
        for j := 1 to i do
        begin
            if arr[j] > arr[j+1] then
            begin
                temp := arr[j];
                arr[j] := arr[j+1];
                arr[j+1] := temp;
            end;
        end;
    end;

    nil_total := 0;

    writeln('Data setelah diurutkan: ');
    for i := 1 to 50 do
    begin
        write(arr[i], ' ');
        nil_total := nil_total + arr[i];
    end;

    nil_rata := nil_total/50;

    writeln();
    writeln('Nilai terbesar ', arr[50]);
    writeln('Nilai terkecil ', arr[1]);
    writeln('Nilai rata-rata ', nil_rata:2,2);

end.