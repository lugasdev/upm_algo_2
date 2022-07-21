Program tiga;
uses crt;

type
    intArray = array[1..50] of integer;

var
    i, j, temp, total:integer;
    rata: double;
    arr: intArray;

function bubblesort(var arr: intArray):intArray;
begin
    for i := (Length(arr) - 1) downto 1 do
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

    bubblesort := arr;
end;

begin
    clrscr;

    for i := 1 to 50 do
    begin
        write('masukkan array ke-', i, ' : ');
        readln(arr[i]);
    end;

    writeln('Data yang diinput: ');
    for i := 1 to Length(arr) do
        write(arr[i], ' ');

    writeln();

    arr := bubblesort(arr);
    total := 0;

    writeln('Data setelah diurutkan: ');
    for i := 1 to Length(arr) do
    begin
        write(arr[i], ' ');
        total := total + arr[i];
    end;

    rata := total/50;

    writeln();
    writeln('Nilai terbesar ', arr[50]);
    writeln('Nilai terkecil ', arr[1]);
    writeln('Nilai rata-rata ', rata);

end.