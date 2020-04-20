program array2D_latihan;

uses crt;

type    data_nilai = array[1..100, 1..3] of integer;
        data_nama = array[1..100] of String[25];

var     max_siswa, i, j, jum : Integer;
        siswa: data_nama;
        rata : real;
        grade : Char;
        nilai_test : data_nilai;

    begin

      //input data
      clrscr;
      write('masukan jumlah mahasiswa = ');  ReadLn(max_siswa);
      for i := 1 to max_siswa do
      begin

          begin
            WriteLn('data mahasiswa ke ', i,' = ');
            Write('nama mahasiswa = '); ReadLn(siswa[i]);
            for j := 1 to 3 do
              begin
                Write('Masukan Nilai Test ke ', j,' = ');
                ReadLn(nilai_test[i,j]);
              end;
          end;

      end;
    // menghitung total nilai data mahasiswa
    WriteLn('daftar nilai mahasiswa ');
    WriteLn('--------------------------------------------------------------');
    WriteLn;
    WriteLn('Nama  : VICCO DWI PRAMADIAN ');
    WriteLn('Npm   : 19630771');
    WriteLn;
    write('No.    ');
    Write('Nama Mahasiswa    ');

    for i := 1 to 3 do
      Write('nilai ke = ',i ,'     ');
      Write('Jumlah data ','   ');
      Write('rata rata','       ');
      WriteLn('Grade');
      WriteLn;
      for i := 1 to max_siswa do
        begin
            jum := 0;
            for j := 1 to 3 do
              jum := jum + nilai_test[i,j];
              rata := jum/3;

              begin
                if rata >=90 then grade := 'A'
                else if (rata < 90) and (rata >= 80) then grade :='B'
                else if (rata <80) and (rata >=70) then grade:='C'
                else if (rata < 70) and (rata >=60) then grade:='D'
                else grade :='E';
              end;
              write(i:2);
              Write('     ',siswa[i],'     ');
              for j := 1 to 3 do
                Write('           ',nilai_test[i,j],'     ':7);
                Write('    ',jum);
                Write('         ',rata:5:2,'    ');
                WriteLn('       ',grade);
        end;
    ReadLn();

    end.
