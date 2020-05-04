program uas;
uses crt;

type nilai = array[1..100] of Real;
     data  = array[1..100] of String[25];
     data1 = array[1..100] of char;

var 
    i,max_karyawan : Integer;
    Karyawan : data;
    gb,bonus,uang,tunjangan : real;
    sk,sh : data1;
    mk,Gp : nilai;

begin
  clrscr;
  write('masukan jumlah karyawan = '); ReadLn(max_karyawan);
  for i := 1 to max_karyawan do
    begin
        write('nama Pegawai ke ',i,' = ');   ReadLn(karyawan[i]);
        Write('Gaji Pokok = '); ReadLn(Gp[i]);
        Write('Masa Kerja (Tahunan)= '); ReadLn(mk[i]);
        Write('Pegawai tetap (y/n)= '); ReadLn(sk[i]);
        Write('Berkeluarga (y/n)= '); ReadLn(sh[i]);
        WriteLn;

    end;
    //menghitung nilai
    WriteLn('Daftar Gaji Karyawan');
    WriteLn;
    Write('No   ');
    Write('Nama Pegawai      ');
    Write(' Gaji Pokok    ');
    Write('Bonus  |   Uang Transportasi  |  Tunjangan');
    Write('      Gaji bersih |');

    for i := 1 to max_karyawan do
      begin
        if (mk[i]>5) then
        begin
          bonus:= Gp[i]*0.15;
        end
        else if (mk[i]<5) then
        begin
          bonus:= 0;
        end;

        if (sk[i]='y') then 
        begin
        uang:= 20000 * 30;
        end
        else if (sk[i]='n') then 
        begin
        uang:= 0;
        end;

        if (sh[i]='y') then 
        begin
          tunjangan:= Gp[i]*0.10;
        end
        else if (sh[i]='n') then
          begin
            tunjangan:= 0;
          end;

        WriteLn;
        gb := 0;
        gb:= Gp[i]+bonus+tunjangan+uang;
        
        write(i:2);
        Write('    ',Karyawan[i]:5,'     ');
        Write('        ',Gp[i]:5:0,'     ');
        Write('   ',bonus:5:0,'        ');
        Write('   ',uang:5:0,'         ');
        Write('   ',tunjangan:5:0,'    ');
        Write('        ',gb:5:0,'      ');

        end;

end.
