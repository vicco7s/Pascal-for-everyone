Program pas12;

Uses Crt;

Const N = 2;
    Var 
    Nama : Array[1..N] Of String[20];
    nilai_data : Array[1..N,1..3] Of real;
    I,j : Integer;
        Begin
        Clrscr;
        {Baca Data}
        Writeln('Masukkan',N,'buah data');
    For I := 1 to N Do
        Begin
            Write('Nama : ');Readln(Nama[I]);
            for j := 1 to 3 do
              begin
                Write('masukan nilai test ',j ,' = ');
                ReadLn(nilai_data[i,j])
              end;
              WriteLn;

        End;

    {Cetak Hasil}
    Writeln('Daftar Nilai');
    Write('No  NAMA   ');
    for i := 1 to 3 do
        Write('   Test ',i,' ');
        WriteLn;
        For i := 1 to N Do
            begin
              Write(I:2);
              Write('  ',Nama[I]:1,' ');
            for j := 1 to 3 do
                Write('  ', nilai_data[I,j]:6:0,'  ');
                WriteLn;

            end;
    Readln();
End.
