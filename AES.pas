unit AES;

interface

uses Sysutils, Classes;

type
  TAESState = Array[0..3,0..3] of Byte;
  TAESKey = Array[0..7] of Cardinal;
  TAESExpandedKey = Array[0..59] of Cardinal;

procedure AESExpandKey(var ExpandedKey: TAESExpandedKey; Key: TAESKey);
procedure AESEncrypt(var State: TAESState; ExpandedKey: TAESExpandedKey);
procedure AESDecrypt(var State: TAESState; ExpandedKey: TAESExpandedKey);
procedure AESEncryptStreamECB(Source, Dest: TStream;
  ExpandedKey: TAESExpandedKey);
procedure AESDecryptStreamECB(Source, Dest: TStream;
  ExpandedKey: TAESExpandedKey);
procedure AESEncryptStreamCBC(IV: TAESState; Source, Dest: TStream;
  ExpandedKey: TAESExpandedKey);
procedure AESDecryptStreamCBC(IV: TAESState; Source, Dest: TStream;
  ExpandedKey: TAESExpandedKey);

implementation

const
  Sbox: Array[0..255] of Byte = (
    $63,$7c,$77,$7b,$f2,$6b,$6f,$c5,$30,$01,$67,$2b,$fe,$d7,$ab,$76,
    $ca,$82,$c9,$7d,$fa,$59,$47,$f0,$ad,$d4,$a2,$af,$9c,$a4,$72,$c0,
    $b7,$fd,$93,$26,$36,$3f,$f7,$cc,$34,$a5,$e5,$f1,$71,$d8,$31,$15,
    $04,$c7,$23,$c3,$18,$96,$05,$9a,$07,$12,$80,$e2,$eb,$27,$b2,$75,
    $09,$83,$2c,$1a,$1b,$6e,$5a,$a0,$52,$3b,$d6,$b3,$29,$e3,$2f,$84,
    $53,$d1,$00,$ed,$20,$fc,$b1,$5b,$6a,$cb,$be,$39,$4a,$4c,$58,$cf,
    $d0,$ef,$aa,$fb,$43,$4d,$33,$85,$45,$f9,$02,$7f,$50,$3c,$9f,$a8,
    $51,$a3,$40,$8f,$92,$9d,$38,$f5,$bc,$b6,$da,$21,$10,$ff,$f3,$d2,
    $cd,$0c,$13,$ec,$5f,$97,$44,$17,$c4,$a7,$7e,$3d,$64,$5d,$19,$73,
    $60,$81,$4f,$dc,$22,$2a,$90,$88,$46,$ee,$b8,$14,$de,$5e,$0b,$db,
    $e0,$32,$3a,$0a,$49,$06,$24,$5c,$c2,$d3,$ac,$62,$91,$95,$e4,$79,
    $e7,$c8,$37,$6d,$8d,$d5,$4e,$a9,$6c,$56,$f4,$ea,$65,$7a,$ae,$08,
    $ba,$78,$25,$2e,$1c,$a6,$b4,$c6,$e8,$dd,$74,$1f,$4b,$bd,$8b,$8a,
    $70,$3e,$b5,$66,$48,$03,$f6,$0e,$61,$35,$57,$b9,$86,$c1,$1d,$9e,
    $e1,$f8,$98,$11,$69,$d9,$8e,$94,$9b,$1e,$87,$e9,$ce,$55,$28,$df,
    $8c,$a1,$89,$0d,$bf,$e6,$42,$68,$41,$99,$2d,$0f,$b0,$54,$bb,$16
  );

  InvSbox: Array[0..255] of Byte = (
    $52,$09,$6a,$d5,$30,$36,$a5,$38,$bf,$40,$a3,$9e,$81,$f3,$d7,$fb,
    $7c,$e3,$39,$82,$9b,$2f,$ff,$87,$34,$8e,$43,$44,$c4,$de,$e9,$cb,
    $54,$7b,$94,$32,$a6,$c2,$23,$3d,$ee,$4c,$95,$0b,$42,$fa,$c3,$4e,
    $08,$2e,$a1,$66,$28,$d9,$24,$b2,$76,$5b,$a2,$49,$6d,$8b,$d1,$25,
    $72,$f8,$f6,$64,$86,$68,$98,$16,$d4,$a4,$5c,$cc,$5d,$65,$b6,$92,
    $6c,$70,$48,$50,$fd,$ed,$b9,$da,$5e,$15,$46,$57,$a7,$8d,$9d,$84,
    $90,$d8,$ab,$00,$8c,$bc,$d3,$0a,$f7,$e4,$58,$05,$b8,$b3,$45,$06,
    $d0,$2c,$1e,$8f,$ca,$3f,$0f,$02,$c1,$af,$bd,$03,$01,$13,$8a,$6b,
    $3a,$91,$11,$41,$4f,$67,$dc,$ea,$97,$f2,$cf,$ce,$f0,$b4,$e6,$73,
    $96,$ac,$74,$22,$e7,$ad,$35,$85,$e2,$f9,$37,$e8,$1c,$75,$df,$6e,
    $47,$f1,$1a,$71,$1d,$29,$c5,$89,$6f,$b7,$62,$0e,$aa,$18,$be,$1b,
    $fc,$56,$3e,$4b,$c6,$d2,$79,$20,$9a,$db,$c0,$fe,$78,$cd,$5a,$f4,
    $1f,$dd,$a8,$33,$88,$07,$c7,$31,$b1,$12,$10,$59,$27,$80,$ec,$5f,
    $60,$51,$7f,$a9,$19,$b5,$4a,$0d,$2d,$e5,$7a,$9f,$93,$c9,$9c,$ef,
    $a0,$e0,$3b,$4d,$ae,$2a,$f5,$b0,$c8,$eb,$bb,$3c,$83,$53,$99,$61,
    $17,$2b,$04,$7e,$ba,$77,$d6,$26,$e1,$69,$14,$63,$55,$21,$0c,$7d
  );

  LogTable: Array[0..255] of Byte = (
    $00,$ff,$c8,$08,$91,$10,$d0,$36,$5a,$3e,$d8,$43,$99,$77,$fe,$18,
    $23,$20,$07,$70,$a1,$6c,$0c,$7f,$62,$8b,$40,$46,$c7,$4b,$e0,$0e,
    $eb,$16,$e8,$ad,$cf,$cd,$39,$53,$6a,$27,$35,$93,$d4,$4e,$48,$c3,
    $2b,$79,$54,$28,$09,$78,$0f,$21,$90,$87,$14,$2a,$a9,$9c,$d6,$74,
    $b4,$7c,$de,$ed,$b1,$86,$76,$a4,$98,$e2,$96,$8f,$02,$32,$1c,$c1,
    $33,$ee,$ef,$81,$fd,$30,$5c,$13,$9d,$29,$17,$c4,$11,$44,$8c,$80,
    $f3,$73,$42,$1e,$1d,$b5,$f0,$12,$d1,$5b,$41,$a2,$d7,$2c,$e9,$d5,
    $59,$cb,$50,$a8,$dc,$fc,$f2,$56,$72,$a6,$65,$2f,$9f,$9b,$3d,$ba,
    $7d,$c2,$45,$82,$a7,$57,$b6,$a3,$7a,$75,$4f,$ae,$3f,$37,$6d,$47,
    $61,$be,$ab,$d3,$5f,$b0,$58,$af,$ca,$5e,$fa,$85,$e4,$4d,$8a,$05,
    $fb,$60,$b7,$7b,$b8,$26,$4a,$67,$c6,$1a,$f8,$69,$25,$b3,$db,$bd,
    $66,$dd,$f1,$d2,$df,$03,$8d,$34,$d9,$92,$0d,$63,$55,$aa,$49,$ec,
    $bc,$95,$3c,$84,$0b,$f5,$e6,$e7,$e5,$ac,$7e,$6e,$b9,$f9,$da,$8e,
    $9a,$c9,$24,$e1,$0a,$15,$6b,$3a,$a0,$51,$f4,$ea,$b2,$97,$9e,$5d,
    $22,$88,$94,$ce,$19,$01,$71,$4c,$a5,$e3,$c5,$31,$bb,$cc,$1f,$2d,
    $3b,$52,$6f,$f6,$2e,$89,$f7,$c0,$68,$1b,$64,$04,$06,$bf,$83,$38
  );

  InvLogTable: Array[0..255] of Byte = (
    $01,$e5,$4c,$b5,$fb,$9f,$fc,$12,$03,$34,$d4,$c4,$16,$ba,$1f,$36,
    $05,$5c,$67,$57,$3a,$d5,$21,$5a,$0f,$e4,$a9,$f9,$4e,$64,$63,$ee,
    $11,$37,$e0,$10,$d2,$ac,$a5,$29,$33,$59,$3b,$30,$6d,$ef,$f4,$7b,
    $55,$eb,$4d,$50,$b7,$2a,$07,$8d,$ff,$26,$d7,$f0,$c2,$7e,$09,$8c,
    $1a,$6a,$62,$0b,$5d,$82,$1b,$8f,$2e,$be,$a6,$1d,$e7,$9d,$2d,$8a,
    $72,$d9,$f1,$27,$32,$bc,$77,$85,$96,$70,$08,$69,$56,$df,$99,$94,
    $a1,$90,$18,$bb,$fa,$7a,$b0,$a7,$f8,$ab,$28,$d6,$15,$8e,$cb,$f2,
    $13,$e6,$78,$61,$3f,$89,$46,$0d,$35,$31,$88,$a3,$41,$80,$ca,$17,
    $5f,$53,$83,$fe,$c3,$9b,$45,$39,$e1,$f5,$9e,$19,$5e,$b6,$cf,$4b,
    $38,$04,$b9,$2b,$e2,$c1,$4a,$dd,$48,$0c,$d0,$7d,$3d,$58,$de,$7c,
    $d8,$14,$6b,$87,$47,$e8,$79,$84,$73,$3c,$bd,$92,$c9,$23,$8b,$97,
    $95,$44,$dc,$ad,$40,$65,$86,$a2,$a4,$cc,$7f,$ec,$c0,$af,$91,$fd,
    $f7,$4f,$81,$2f,$5b,$ea,$a8,$1c,$02,$d1,$98,$71,$ed,$25,$e3,$24,
    $06,$68,$b3,$93,$2c,$6f,$3e,$6c,$0a,$b8,$ce,$ae,$74,$b1,$42,$b4,
    $1e,$d3,$49,$e9,$9c,$c8,$c6,$c7,$22,$6e,$db,$20,$bf,$43,$51,$52,
    $66,$b2,$76,$60,$da,$c5,$f3,$f6,$aa,$cd,$9a,$a0,$75,$54,$0e,$01
  );


procedure SubBytes(var State: TAESState);
var
  i,j: Integer;
begin
  for i:= 0 to 3 do
    for j:= 0 to 3 do
      State[i,j]:= Sbox[State[i,j]];
end;

procedure InvSubBytes(var State: TAESState);
var
  i,j: Integer;
begin
  for i:= 0 to 3 do
    for j:= 0 to 3 do
      State[i,j]:= InvSbox[State[i,j]];
end;

procedure ShiftRows(var State: TAESState);
var
  i,j,k: Integer;
begin
  for j:= 1 to 3 do
    for i:= j downto 1 do
    begin
      k:= State[0,j];
      State[0,j]:= State[1,j];
      State[1,j]:= State[2,j];
      State[2,j]:= State[3,j];
      State[3,j]:= k;
    end;
end;

procedure InvShiftRows(var State: TAESState);
var
  i,j,k: Integer;
begin
  for j:= 1 to 3 do
    for i:= j downto 1 do
    begin
      k:= State[3,j];
      State[3,j]:= State[2,j];
      State[2,j]:= State[1,j];
      State[1,j]:= State[0,j];
      State[0,j]:= k;
    end;
end;

function Mult(X, Y: Byte): Byte;
begin
  if (X = 0) or (Y = 0) then
    Result:= 0
  else
    Result:= InvLogTable[(LogTable[X] + LogTable[Y]) mod $FF];
end;

procedure MixColumns(var State: TAESState);
var
  i,j: Integer;
  m: Array[0..3] of Byte;
begin
  for i:= 0 to 3 do
  begin
    for j:= 0 to 3 do
      m[j]:= State[i,j];
    State[i,0]:= Mult(2,m[0]) XOR Mult(3,m[1]) XOR m[2] XOR m[3];
    State[i,1]:= m[0] XOR Mult(2,m[1]) XOR Mult(3,m[2]) XOR m[3];
    State[i,2]:= m[0] XOR m[1] XOR Mult(2,m[2]) XOR Mult(3,m[3]);
    State[i,3]:= Mult(3,m[0]) XOR m[1] XOR m[2] XOR Mult(2,m[3]);
  end;
end;

procedure InvMixColumns(var State: TAESState);
var
  i,j: Integer;
  m: Array[0..3] of Byte;
begin
  for i:= 0 to 3 do
  begin
    for j:= 0 to 3 do
      m[j]:= State[i,j];
    State[i,0]:=
      Mult($0e,m[0]) XOR Mult($0b,m[1]) XOR Mult($0d,m[2]) XOR Mult($09,m[3]);
    State[i,1]:=
      Mult($09,m[0]) XOR Mult($0e,m[1]) XOR Mult($0b,m[2]) XOR Mult($0d,m[3]);
    State[i,2]:=
      Mult($0d,m[0]) XOR Mult($09,m[1]) XOR Mult($0e,m[2]) XOR Mult($0b,m[3]);
    State[i,3]:=
      Mult($0b,m[0]) XOR Mult($0d,m[1]) XOR Mult($09,m[2]) XOR Mult($0e,m[3]);
  end;
end;

procedure AddRoundKey(var State: TAESState; ExpandedKey: TAESExpandedKey;
  Round: Integer);
var
  i: Integer;
  W: Cardinal;
begin
  for i:= 0 to 3 do
  begin
    W:= ExpandedKey[(Round * 4) + i];
    State[i,0]:= State[i,0] XOR ((W shr 24) and $FF);
    State[i,1]:= State[i,1] XOR ((W shr 16) and $FF);
    State[i,2]:= State[i,2] XOR ((W shr 8) and $FF);
    State[i,3]:= State[i,3] XOR (W and $FF);
  end;
end;

function SubWord(W: Cardinal): Cardinal;
begin
  Result:= (Sbox[W shr 24] shl 24) or (Sbox[(W shr 16) and $FF] shl 16) or
    (Sbox[(W shr 8) and $FF] shl 8) or Sbox[W and $FF];
end;

function RotWord(W: Cardinal): Cardinal;
begin
  Result:= (W shl 8) or (W shr 24);
end;

function RCon(n: Integer): Cardinal;
begin
  Result:= 1;
  if n = 0 then
    Result:= 0
  else while n > 1 do
  begin
    Result:= Mult(Result,2);
    dec(n);
  end;
  Result:= Result shl 24;
end;

procedure AESExpandKey(var ExpandedKey: TAESExpandedKey; Key: TAESKey);
var
  i: Integer;
  Temp: Cardinal;
begin
  FillChar(ExpandedKey,Sizeof(ExpandedKey),#0);
  for i:= 0 to 7 do
    ExpandedKey[i]:= Key[i];
  for i:= 8 to 59 do
  begin
    temp:= ExpandedKey[i-1];
    if (i mod 8 = 0) then
      Temp:= SubWord(RotWord(Temp)) XOR Rcon(i div 8)
    else if (i mod 8 = 4) then
      Temp:= SubWord(temp);
    ExpandedKey[i]:= ExpandedKey[i-8] XOR Temp;
  end;
end;

procedure AESEncrypt(var State: TAESState; ExpandedKey: TAESExpandedKey);
var
  Round: Integer;
begin
  AddRoundKey(State,ExpandedKey,0);
  for Round:= 1 to 13 do
  begin
    SubBytes(State);
    ShiftRows(State);
    MixColumns(State);
    AddRoundKey(State,ExpandedKey,Round);
  end;
  SubBytes(State);
  ShiftRows(State);
  AddRoundKey(State,ExpandedKey,14);
end;

procedure AESDecrypt(var State: TAESState; ExpandedKey: TAESExpandedKey);
var
  Round: Integer;
begin
  AddRoundKey(State,ExpandedKey,14);
  for Round:= 13 downto 1 do
  begin
    InvShiftRows(State);
    InvSubBytes(State);
    AddRoundKey(State,ExpandedKey,Round);
    InvMixColumns(State);
  end;
  InvShiftRows(State);
  InvSubBytes(State);
  AddRoundKey(state,ExpandedKey,0);
end;

procedure AESEncryptStreamECB(Source, Dest: TStream;
  ExpandedKey: TAESExpandedKey);
var
  State: TAESState;
begin
  FillChar(State,Sizeof(State),#0);
  while Source.Read(State,Sizeof(State)) > 0 do
  begin
    AESEncrypt(State,ExpandedKey);
    Dest.WriteBuffer(State,Sizeof(State));
    FillChar(State,Sizeof(State),#0);
  end;
end;

procedure AESDecryptStreamECB(Source, Dest: TStream;
  ExpandedKey: TAESExpandedKey);
var
  State: TAESState;
begin
  FillChar(State,Sizeof(State),#0);
  while Source.Read(State,Sizeof(State)) > 0 do
  begin
    AESDecrypt(State,ExpandedKey);
    Dest.WriteBuffer(State,Sizeof(State));
    FillChar(State,Sizeof(State),#0);
  end;
end;

procedure XORState(var S1: TAESState; S2: TAESState);
var
  i,j: Integer;
begin
  for i:= 0 to 3 do
    for j:= 0 to 3 do
      S1[i,j]:= S1[i,j] XOR S2[i,j];
end;

procedure AESEncryptStreamCBC(IV: TAESState; Source, Dest: TStream;
  ExpandedKey: TAESExpandedKey);
var
  State: TAESState;
begin
  FillChar(State,Sizeof(State),#0);
  while Source.Read(State,Sizeof(State)) > 0 do
  begin
    XORState(State,IV);
    AESEncrypt(State,ExpandedKey);
    Dest.WriteBuffer(State,Sizeof(State));
    IV:= State;
    FillChar(State,Sizeof(State),#0);
  end;
end;

procedure AESDecryptStreamCBC(IV: TAESState; Source, Dest: TStream;
  ExpandedKey: TAESExpandedKey);
var
  Temp: TAESState;
  State: TAESState;
begin
  FillChar(State,Sizeof(State),#0);
  while Source.Read(State,Sizeof(State)) > 0 do
  begin
    Temp:= State;
    AESDecrypt(State,ExpandedKey);
    XORState(State,IV);
    Dest.WriteBuffer(State,Sizeof(State));
    IV:= Temp;
    FillChar(State,Sizeof(State),#0);
  end;
end;

end.
