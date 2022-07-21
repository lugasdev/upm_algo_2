Program dua;
uses crt;

type
    intArray = array[1..6] of integer;

var
    i, j, temp:integer;
    arr: intArray;

function bubblesort(var arr: intArray):intArray;
begin
    for i := (Length(arr) - 1) downto 1 do
    begin
        for j := 1 to i do
        begin
            if arr[j] < arr[j+1] then
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
    arr[1]:= 36;
    arr[2]:= 90;
    arr[3]:= 18;
    arr[4]:= 72;
    arr[5]:= 81;
    arr[6]:= 45;

    writeln('data awal: ');

    for i := 1 to Length(arr) do
        write(arr[i], ' ');

    writeln();

    arr := bubblesort(arr);

    writeln('data sort descending: ');
    for i := 1 to Length(arr) do
        write(arr[i], ' ');

end.