Program satu;
uses crt;

var nil_a, nil_b, hasil_kali:integer;

function kali(nil_a, nil_b:integer):integer;
begin
    kali := nil_a * nil_b;
end;

begin
    Clrscr;

    write('Masukkan nil_a: ');
    readln(nil_a);

    write('Masukkan nil_b: ');
    readln(nil_b);

    write(nil_a, ' x ', nil_b, ' = ');

    hasil_kali := kali(nil_a, nil_b);
    writeln(hasil_kali);
end.