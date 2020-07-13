program uas;

uses crt;

type produk = array[1..100] of String[25];
     hargaBarang = array[1..100] of Real;

var i,j,max_item        : integer;
    namaproduk        : produk;
    hg,jm,Total,tut             : hargaBarang;
    tot,Diskon,Jumlah,by,kb      : real;
    lagi :Char;


begin
repeat
    clrscr;
    WriteLn('Program Uas Algo 2');
    WriteLn('-----------------------------------');
    WriteLn('Nama          : Vicco Dwi Pramadian');
    WriteLn('Npm           : 19630771');
    WriteLn('Kelas         : 2D Reguler Pagi');
    WriteLn('Tanggal Ujian : 13 Juli 2020');
    WriteLn('-----------------------------------');
    WriteLn;
    WriteLn('Selamat Datang di Toko Berkah usaha');
    Write('Masukan Jumlah Item yang Akan Dibeli : '); Readln(max_item);
    for i := 1 to max_item do
      begin 
        Write('input Nama Produk ',i,'   : '); ReadLn(namaproduk[i]);
        Write('input Harga produk ',i,'  : '); ReadLn(hg[i]);
        Write('input Jumlah Barang ',i,' : '); ReadLn(jm[i]);
        WriteLn;        
      end;

      WriteLn;
      WriteLn;
      Write('Nama Barang  ');
      Write(' Jumlah Beli  ');
      Write(' Harga    ');
      Write(' Total    ');
      Write(' Diskon 10%     ');
      Write(' Total Keseluruhan    ');
      WriteLn;
      WriteLn('=============================================================================');

        begin
        Total[i]:=0;
        tut[i]:=0;
        for i := 1 to max_item do
          begin
           Total[i]:=hg[i]*jm[i];

            if (Total[i] > 300000) then
              begin
                Diskon:= Total[i]*0.1;
              end
            else if (Total[i] < 300000) then
            begin
              Diskon:=0;
            end;
            tut[i]:= Total[i]-Diskon;


        WriteLn;
        // Write(i:2);
        Write('   ',namaproduk[i]:5,'  ');
        Write('   ',jm[i]:7:0,'  ');
        Write('   ',hg[i]:7:0,'  ');
        Write('   ',Total[i]:7:0,'  ');
        Write('   ',Diskon:5:0,'   ');
        write('   ',tut[i]:11:0,'   ');
        WriteLn;  
          end;
        WriteLn;
        WriteLn('                          ');
        for j:= 1 to max_item do
          tot:=tot+tut[j];
          end;
          WriteLn;
          WriteLn('Total Belanja               : ',tot:5:0);
          Write('Jumlah Uang Yang Diserahkan : '); ReadLn(by);
          WriteLn('Jumlah Bayar                : ',tot:5:0);
          kb:= by-tot;
          WriteLn('Kembalian                   : ',kb:5:0);
          WriteLn;
          WriteLn('** Terimakasi kasih telah berbelanja di toko kami **');
          WriteLn;
          Write('Ingin menggunakan lagi | tekan "Y" | bila tidak tekan N : '); ReadLn(lagi);
          ReadLn();
    until UPCASE(lagi) <> 'Y';
end.

