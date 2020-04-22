Program mhs (input, output);
Uses Crt;
    Var
    Nama : Array [1..10] Of String[15];
    nobp : Array [1..10] Of Longint;
    quiz,mid,akhir,rata : Array [1..10] Of Integer;
    indeks: Array[1..10] of String[1];
    i,n,k : Integer;

    Begin
    Clrscr;
    Write ('Jumlah Mahasiswa : '); Readln(n);
    For i := 1 To n Do
    Begin
    clrscr;
    Gotoxy (10, 5); Write ('Nama : ');
    Gotoxy (10, 6); Write ('Nobp : ');
    Gotoxy (10, 7); Write ('Nilai Quiz : ');
    Gotoxy (10, 8); Write ('Nilai Mid : ');
    Gotoxy (10, 9); write ('Nilai Akhir : ');
    Gotoxy (30, 5); Readln (nama[i]);
    Gotoxy (30, 6); Readln (nobp[i]);
    Gotoxy (30, 7); Readln (quiz[i]);
    Gotoxy (30, 8); Readln (mid[i]);
    Gotoxy (30, 9); Readln (akhir[i]);
    End;
        For k := 1 To n Do
        Begin
        rata[k] := trunc(0.25 * quiz [k]) + trunc(0.25 * mid [k]) + trunc(0.5 * akhir[k]);
        Case rata[k] of
        0..39 : indeks[k]:=('E');
        40..54 : indeks[k]:=('D');
        55..64 : indeks[k]:=('C');
        65..79 : indeks[k]:=('B');
        80..100 : indeks[k]:=('A');
        End;
    End;
    clrscr;
    Gotoxy (2,2); Write('Nama   Nobp   Rata-rata   Indeks');
    Gotoxy (2,3); Write('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~');
    { 2345678901234567890123456789012345678 }
     { 1 2 3 } 
    For i := 1 To n Do
    begin
            Gotoxy (2, 3+i); Write (nama [i]);
            Gotoxy (11, 3+i); Write (nobp [i]);
            
                Gotoxy (22, 3+i); write (rata [i]);        
                Gotoxy (33, 3+i); write (indeks [i]);
    end;
    Gotoxy (2,4+i); Write('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~');
End.
