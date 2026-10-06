; Disassembly of roms/INV.bin
; Disassembled Tue Oct  6 15:21:50 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/INV.bin
;

      processor 6502
VSYNC   =  $00
VBLANK  =  $01
WSYNC   =  $02
RSYNC   =  $03
NUSIZ0  =  $04
NUSIZ1  =  $05
COLUP0  =  $06
COLUP1  =  $07
COLUPF  =  $08
COLUBK  =  $09
CTRLPF  =  $0A
REFP1   =  $0C
PF0     =  $0D
PF1     =  $0E
PF2     =  $0F
RESP0   =  $10
RESP1   =  $11
RESM1   =  $13
RESBL   =  $14
AUDC0   =  $15
AUDC1   =  $16
AUDF0   =  $17
AUDF1   =  $18
AUDV0   =  $19
AUDV1   =  $1A
GRP0    =  $1B
GRP1    =  $1C
ENAM1   =  $1E
ENABL   =  $1F
HMP0    =  $20
HMP1    =  $21
HMBL    =  $24
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
SWCHA   =  $0280
SWACNT  =  $0281
SWCHB   =  $0282
SWBCNT  =  $0283
INTIM   =  $0284
TIM64T  =  $0296

       ORG $F000

START:
       SEI            
       CLD            
       LDX    #$FF    
       TXS            
       LDA    #$00    
LF007: STA    VSYNC,X 
       DEX            
       BNE    LF007   
       LDA    #$00    
       STA    SWACNT  
       STA    SWBCNT  
       LDA    #$01    
       STA    $8E     
       JSR    LFA57   
       LDA    #$6D    
       STA    $E6     
       STA    $E7     
       STA    $EE     
LF023: STA    $EF     
       LDA    #$08    
       STA    $8F     
       NOP            
       NOP            
LF02B: JSR    LF03D   
       JSR    LF053   
       JSR    LF0CC   
       JSR    LF2D4   
       JSR    LF470   
       JMP    LF02B   
LF03D: LDA    #$02    
       STA    WSYNC   
       STA    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$29    
       STA    TIM64T  
       LDA    #$00    
       STA    WSYNC   
       STA    VSYNC   
       RTS            

LF053: LDA    SWCHB   
       STA    $D6     
       AND    #$02    
       BNE    LF06D   
       LDA    $8D     
       BNE    LF07B   
       INC    $8E     
       LDA    #$08    
       STA    $8F     
       LDA    #$01    
       STA    $8D     
       JMP    LF07B   
LF06D: LDA    #$00    
       STA    $8D     
       LDA    $D6     
       AND    #$01    
       BNE    LF07E   
       LDA    #$00    
       STA    $8F     
LF07B: JSR    LFA57   
LF07E: LDA    $8F     
       BNE    LF0CB   
       LDA    $8A     
       AND    #$3F    
       BNE    LF0CB   
       LDA    SWCHA   
       STA    $D6     
       BIT    $94     
       BMI    LF0AB   
       LDA    $D6     
       BMI    LF09D   
       LDA    $90     
       CMP    #$8D    
       BEQ    LF09D   
       INC    $90     
LF09D: LDA    #$40    
       AND    $D6     
       BNE    LF0AB   
       LDA    $90     
       CMP    #$0C    
       BEQ    LF0AB   
       DEC    $90     
LF0AB: LDA    $9C     
       BMI    LF0CB   
       LDA    #$08    
       AND    $D6     
       BNE    LF0BD   
       LDA    $98     
       CMP    #$8D    
       BEQ    LF0BD   
       INC    $98     
LF0BD: LDA    #$04    
       AND    $D6     
       BNE    LF0CB   
       LDA    $98     
       CMP    #$0C    
       BEQ    LF0CB   
       DEC    $98     
LF0CB: RTS            

LF0CC: LDA    $82     
       AND    #$0F    
       BEQ    LF0EA   
       LDA    $89     
       AND    #$01    
       BEQ    LF0DA   
       DEC    $82     
LF0DA: LDA    $82     
       LSR            
       LSR            
       LSR            
       LSR            
       STA    AUDC0   
       LDA    $82     
       AND    #$0F    
       STA    AUDF0   
       STA    AUDV0   
LF0EA: LDA    $88     
       AND    #$0F    
       BEQ    LF10E   
       INC    $88     
       LDA    $88     
       LSR            
       LSR            
       LSR            
       LSR            
       STA    AUDC1   
       LDX    #$00    
       LDA    $89     
       AND    #$01    
       BNE    LF104   
       LDX    #$0C    
LF104: STX    $D6     
       LDA    $88     
       STA    AUDV1   
       EOR    $D6     
       STA    AUDF1   
LF10E: INC    $89     
       BIT    $94     
       BMI    LF126   
       BIT    $8A     
       BPL    LF126   
       LDA    $8A     
       ORA    #$3F    
       STA    $8A     
       DEC    $94     
       LDA    #$00    
       STA    $F6     
       STA    $F7     
LF126: BIT    $9C     
       BMI    LF13C   
       BIT    $8A     
       BVC    LF13C   
       LDA    $8A     
       ORA    #$3F    
       STA    $8A     
       DEC    $9C     
       LDA    #$00    
       STA    $F6     
       STA    $F7     
LF13C: LDA    $94     
       BPL    LF148   
       LDA    $9C     
       BPL    LF148   
       LDA    #$08    
       STA    $8F     
LF148: LDA    $8A     
       AND    #$3F    
       STA    $8A     
       BEQ    LF165   
       LDA    $8A     
       SEC            
       SBC    #$03    
       AND    #$3E    
       STA    $8A     
       STA    COLUBK  
       STA    AUDV0   
       ASL            
       ASL            
       STA    AUDF0   
       LDA    #$88    
       STA    AUDC0   
LF165: LDA    $89     
       AND    #$01    
       BNE    LF1B0   
       LDA    $85     
       BNE    LF191   
       LDA    $C5     
       AND    #$0F    
       BNE    LF1B0   
       JSR    LFB1F   
       LDA    $E6     
       ROR            
       BCC    LF1B0   
       LDX    #$FF    
       LDY    #$8C    
       JSR    LFB1F   
       LDA    $E6     
       ROR            
       BCC    LF18D   
       INX            
       INX            
       LDY    #$04    
LF18D: STX    $85     
       STY    $86     
LF191: LDA    $86     
       CLC            
       ADC    $85     
       STA    $86     
       AND    #$03    
       STA    AUDF1   
       LDA    #$44    
       STA    AUDC1   
       STA    AUDV1   
       LDA    $86     
       CMP    #$90    
       BCS    LF1AC   
       CMP    #$04    
       BCS    LF1B0   
LF1AC: LDA    #$00    
       STA    $85     
LF1B0: LDA    #$04    
       STA    $CA     
       LDA    $8F     
       BEQ    LF1BB   
       JMP    LF2BE   
LF1BB: LDA    $C9     
       SEC            
       SBC    #$02    
       STA    $C9     
       BEQ    LF1F0   
       CMP    #$01    
       BEQ    LF1CB   
       JMP    LF2BE   
LF1CB: LDX    #$01    
       LDA    $CE     
       BEQ    LF1D3   
       LDX    #$FF    
LF1D3: STX    $D7     
       LDA    $CF     
       CLC            
       ADC    $D7     
       BPL    LF1DE   
       LDA    #$05    
LF1DE: CMP    #$06    
       BNE    LF1E4   
       LDA    #$00    
LF1E4: STA    $CF     
       LDY    $C5     
       LDA    LFF6E,Y 
       STA    $C9     
       JMP    LF2BE   
LF1F0: LDA    $88     
       AND    #$0E    
       BNE    LF1FE   
       LDA    $CF     
       LSR            
       CLC            
       ADC    #$68    
       STA    $88     
LF1FE: LDY    $C5     
       LDX    LFF6E,Y 
       INX            
       STX    $C9     
       LDX    #$00    
       LDA    $CE     
       BNE    LF266   
       LDA    #$00    
       ORA    $D5     
       ORA    $DD     
       ORA    $E5     
       ORA    $ED     
       ORA    $F5     
       AND    #$80    
       BEQ    LF228   
       STA    $CE     
       LDA    $C8     
       CLC            
       ADC    #$06    
       STA    $C8     
       JMP    LF2BE   
LF228: CLC            
       LDA    $D0,X   
       ASL            
       STA    $D0,X   
       LDA    $D1,X   
       ROR            
       STA    $D1,X   
       LDA    $D2,X   
       ROL            
       STA    $D2,X   
       LDA    #$00    
       ROL            
       ROL            
       ROL            
       ROL            
       ORA    $D3,X   
       ROL            
       STA    $D3,X   
       LDA    $D4,X   
       ROR            
       STA    $D4,X   
       LDA    $D5,X   
       ROL            
       STA    $D5,X   
       CLC            
       TXA            
       ADC    #$08    
       TAX            
       CPX    #$28    
       BNE    LF228   
       LDA    $CF     
       CLC            
       ADC    #$01    
       CMP    #$06    
       BNE    LF261   
       LDA    #$00    
LF261: STA    $CF     
       JMP    LF2BE   
LF266: LDA    #$00    
       ORA    $D0     
       ORA    $D8     
       ORA    $E0     
       ORA    $E8     
       ORA    $F0     
       AND    #$10    
       BEQ    LF284   
       LDA    #$00    
       STA    $CE     
       LDA    $C8     
       CLC            
       ADC    #$06    
       STA    $C8     
       JMP    LF2BE   
LF284: LDA    $D5,X   
       LSR            
       STA    $D5,X   
       LDA    $D4,X   
       ROL            
       STA    $D4,X   
       LDA    $D3,X   
       ROR            
       TAY            
       AND    #$F0    
       STA    $D3,X   
       TYA            
       ROR            
       ROR            
       ROR            
       ROR            
       LDA    $D2,X   
       ROR            
       STA    $D2,X   
       LDA    $D1,X   
       ROL            
       STA    $D1,X   
       LDA    $D0,X   
       ROR            
       STA    $D0,X   
       CLC            
       TXA            
       ADC    #$08    
       TAX            
       CPX    #$28    
       BNE    LF284   
       LDA    $CF     
       SEC            
       SBC    #$01    
       BPL    LF2BC   
       LDA    #$05    
LF2BC: STA    $CF     
LF2BE: LDA    $90     
       JSR    LFB3C   
       STA    $91     
       LDA    $98     
       JSR    LFB3C   
       STA    $99     
       LDA    $86     
       JSR    LFB3C   
       STA    $87     
       RTS            

LF2D4: LDA    $8F     
       BNE    LF342   
       LDA    REFP1   
       BMI    LF2F5   
       LDA    $94     
       BMI    LF2F5   
       LDA    $93     
       CMP    #$D8    
       BNE    LF2F5   
       LDA    $90     
       CLC            
       ADC    #$03    
       STA    $92     
       LDA    #$AC    
       STA    $93     
       LDA    #$38    
       STA    $82     
LF2F5: LDA    $93     
       CMP    #$D8    
       BEQ    LF325   
       LDA    $B0     
       BEQ    LF30D   
       LDA    $83     
       BNE    LF325   
       DEC    $B0     
       LDA    $B0     
       BNE    LF325   
       STA    $92     
       STA    $93     
LF30D: LDA    $93     
       SEC            
       SBC    #$04    
       STA    $93     
       CMP    #$D8    
       BNE    LF325   
       BIT    SWCHB   
       BVC    LF325   
       BIT    REFP1   
       BMI    LF325   
       LDA    #$DC    
       STA    $93     
LF325: LDA    PF0     
       BMI    LF342   
       LDA    $9C     
       BMI    LF342   
       LDA    $9B     
       CMP    #$D8    
       BNE    LF342   
       LDA    $98     
       CLC            
       ADC    #$03    
       STA    $9A     
       LDA    #$AC    
       STA    $9B     
       LDA    #$38    
       STA    $82     
LF342: LDA    $9B     
       CMP    #$D8    
       BEQ    LF372   
       LDA    $B1     
       BEQ    LF35A   
       LDA    $83     
       BEQ    LF372   
       DEC    $B1     
       LDA    $B1     
       BNE    LF372   
       STA    $9A     
       STA    $9B     
LF35A: LDA    $9B     
       SEC            
       SBC    #$04    
       STA    $9B     
       CMP    #$D8    
       BNE    LF372   
       BIT    SWCHB   
       BPL    LF372   
       BIT    PF0     
       BMI    LF372   
       LDA    #$DC    
       STA    $9B     
LF372: LDA    $83     
       EOR    #$01    
       STA    $83     
       TAY            
       LDX    $B0,Y   
       ASL            
       ASL            
       ASL            
       TAY            
       LDA.wy $0093,Y 
       STA    $84     
       LDA.wy $0092,Y 
       ADC    #$01    
       SEC            
       SBC    LFD23,X 
       JSR    LFB3C   
       STA    WSYNC   
       STA    $2023   
       AND    #$0F    
       TAY            
       NOP            
       NOP            
       NOP            
LF39B: DEY            
       BPL    LF39B   
       STA    RESM1   
       LDA    $F6     
       BNE    LF411   
       LDA    $8F     
       BNE    LF411   
       LDA    $C6     
       BEQ    LF3B1   
       DEC    $C6     
       JMP    LF411   
LF3B1: LDA    #$01    
       STA    $C6     
       JSR    LFB31   
       CLC            
       BMI    LF3C2   
       AND    #$1F    
       ADC    #$04    
       JMP    LF3CA   
LF3C2: AND    #$1F    
       ADC    $90     
       SBC    #$0B    
       LSR            
       LSR            
LF3CA: TAY            
       STY    $D6     
       LDA    #$04    
       SEC            
       SBC    $CB     
       ASL            
       ASL            
       ASL            
       ADC    LFFA6,Y 
       SEC            
LF3D9: TAX            
       LDA    LFFCE,Y 
       EOR    #$FF    
       AND    $D0,X   
       BNE    LF3EB   
       TXA            
       SBC    #$08    
       BPL    LF3D9   
       JMP    LF411   
LF3EB: TXA            
       LSR            
       AND    #$FC    
       STA    $D7     
       ASL            
       CLC            
       ADC    $D7     
       ADC    $C8     
       ADC    #$0D    
       CMP    #$AA    
       BCS    LF411   
       STA    $F6     
       LDA    $D6     
       ASL            
       ASL            
       ADC    #$02    
       JSR    LFB3C   
       STA    $F8     
       LDY    $C5     
       LDA    LFF6E,Y 
       STA    $C6     
LF411: LDX    #$00    
LF413: LDA    $F6,X   
       BEQ    LF424   
       CLC            
       ADC    #$02    
       STA    $F6,X   
       CMP    #$BE    
       BCC    LF424   
       LDA    #$00    
       STA    $F6,X   
LF424: INX            
       CPX    #$02    
       BNE    LF413   
       LDY    $F6     
       LDX    $F8     
       LDA    $F7     
       STA    $F6     
       LDA    $F9     
       STA    $F8     
       STY    $F7     
       STX    $F9     
       STA    WSYNC   
       LDA    $F8     
       STA    HMBL    
       AND    #$0F    
       TAX            
       NOP            
       NOP            
LF444: DEX            
       BPL    LF444   
       STA    RESBL   
       STA    WSYNC   
       STA    HMOVE   
       LDA    $CB     
       ASL            
       ASL            
       STA    $D6     
       ASL            
       CLC            
       ADC    $D6     
       STA    $D6     
       LDA    $C8     
       SEC            
       SBC    $D6     
       CLC            
       ADC    #$3A    
       CMP    #$B1    
       BNE    LF46F   
       LDA    #$08    
       STA    $8F     
       LDA    #$FF    
       STA    $94     
       STA    $9C     
LF46F: RTS            

LF470: LDA    #$38    
       STA    COLUP1  
       STA    COLUP0  
       LDA    #$00    
       STA    NUSIZ0  
       LDY    $83     
       LDX    $B0,Y   
       LDA    LFD1E,X 
       STA    NUSIZ1  
       LDA    #$88    
       STA    COLUPF  
       LDA    #$05    
       STA    $CD     
       LDX    #$1E    
       TXS            
       LDA    $CF     
       ASL            
       ASL            
       STA    $D6     
       ASL            
       ADC    $D6     
       STA    $C7     
       LDA    #$00    
       STA    $FA     
       STA    $FB     
       STA    $FC     
       STA    $FD     
       LDA    #$FF    
       STA    $D7     
LF4A7: LDA    INTIM   
       BNE    LF4A7   
       STA    VBLANK  
       STA    WSYNC   
       LDY    #$00    
       CLC            
LF4B3: STA    WSYNC   
       LDA    $FA     
       STA    PF1     
       STA    $C1     
       LDA    $FB     
       STA    PF2     
       STA    $C2     
       LDA    $95     
       STA    $D6     
       LDA    ($D6),Y 
       AND    #$F0    
       STA    $DE     
       LDA    $FC     
       STA    $C3     
       STA    PF1     
       LDA    $FD     
       STA    $C4     
       STA    PF2     
       LDA    $96     
       STA    $D6     
       LDA    ($D6),Y 
       AND    #$0F    
       ORA    $DE     
       STA    $FA     
       LDA    $C1     
       STA    PF1     
       LDA    $C2     
       STA    PF2     
       LDA    $9D     
       STA    $D6     
       LDA    ($D6),Y 
       AND    #$F0    
       STA    $DE     
       LDA    $9E     
       STA    $D6     
       LDA    ($D6),Y 
       AND    #$0F    
       ORA    $DE     
       STA    $FC     
       TYA            
       ADC    #$0B    
       TAY            
       LDA    $C3     
       STA    PF1     
       LDA    $C4     
       STA    PF2     
       LDA    $97     
       STA    $D6     
       LDA    ($D6),Y 
       ORA    LFF0A,Y 
       STA    $FB     
       LDA    $C1     
       STA    PF1     
       LDA    $C2     
       STA    PF2     
       LDA    $9F     
       STA    $D6     
       LDA    ($D6),Y 
       ORA    LFF0A,Y 
       STA    $FD     
       TYA            
       ADC    #$0B    
       TAY            
       LDA    $C3     
       STA    PF1     
       LDA    $C4     
       STA    PF2     
       CPY    #$84    
       BEQ    LF53E   
       JMP    LF4B3   
LF53E: LDA    #$0F    
       STA    $81     
       LDY    $87     
       STA    HMCLR   
       LDA    #$00    
       STA    WSYNC   
       STA    PF1     
       STA    PF2     
       TYA            
       STA    HMP0    
       AND    #$0F    
       TAY            
LF554: DEY            
       BPL    LF554   
       STA    RESP0   
       STA    WSYNC   
       STA    HMOVE   
       LDA    $85     
       BEQ    LF57F   
       LDA    #$00    
       STA    $D6     
       LDA    #$FD    
       STA    $D7     
       LDY    #$07    
LF56B: STA    WSYNC   
       LDA    ($D6),Y 
       STA    GRP0    
       LDA    $81     
       SEC            
       SBC    $84     
       AND    #$F8    
       PHP            
       PLA            
       INC    $81     
       DEY            
       BPL    LF56B   
LF57F: LDA    VBLANK  
       AND    #$80    
       LSR            
       STA    $8B     
       STA    WSYNC   
       BIT    $81     
       LDA    #$B0    
       STA    HMP0    
       STA    HMP1    
       LDA    $81     
       SEC            
       SBC    $84     
       AND    #$F8    
       PHP            
       NOP            
       STA    RESP0   
       PLA            
       INC    $81     
       INC    $D6     
       INC    $D6     
       INC    $D6     
       INC    $D6     
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       INC    $81     
LF5AE: INC    $81     
       STA    WSYNC   
       LDA    $81     
       SEC            
       SBC    $84     
       AND    #$F8    
       PHP            
       PLA            
       INC    $81     
       STA    WSYNC   
       LDA    $81     
       CMP    $C8     
       BNE    LF5AE   
       PLA            
LF5C6: INC    $81     
       STA    WSYNC   
       LDA    $F6     
       SEC            
       SBC    $81     
       AND    #$F8    
       PHP            
       LDA    $81     
       SEC            
       SBC    $84     
       AND    #$F8    
       PHP            
       LDX    #$1F    
       TXS            
       INC    $81     
       STA    WSYNC   
       INC    $81     
       STA    WSYNC   
       LDA    $F6     
       SEC            
       SBC    $81     
       AND    #$F8    
       PHP            
       LDA    $81     
       SEC            
       SBC    $84     
       AND    #$F8    
       PHP            
       LDX    #$1F    
       TXS            
       INC    $81     
       STA    WSYNC   
       LDY    $CA     
       LDA    LFD10,Y 
       STA    COLUPF  
       SEC            
       LDA    #$04    
       SBC    $CA     
       ASL            
       ASL            
       ASL            
       TAY            
       DEC    $CD     
       LDA    $CD     
       LSR            
       STA    $CC     
       LDA    $C7     
       BCC    LF619   
       ADC    #$47    
LF619: STA    $C7     
       TAX            
       LDA    #$02    
       STA    $DF     
       LDA    $DF     
       NOP            
LF623: LDA    $DF     
       CMP    $CC     
       BNE    LF692   
       LDA.wy $00D0,Y 
       AND    LFE00,X 
       STA    PF0     
       LDA.wy $00D1,Y 
       AND    LFE01,X 
       STA    PF1     
       LDA.wy $00D2,Y 
       AND    LFE02,X 
       STA    PF2     
       LDA.wy $00D3,Y 
       AND    LFE03,X 
       STA    PF0     
       LDA.wy $00D4,Y 
       AND    LFE04,X 
       STA    PF1     
       LDA.wy $00D5,Y 
       AND    LFE05,X 
       STA    PF2     
       LDA.wy $00D0,Y 
       AND    LFE06,X 
       STA    PF0     
       LDA.wy $00D1,Y 
       AND    LFE07,X 
       STA    PF1     
       LDA.wy $00D2,Y 
       AND    LFE08,X 
       STA    PF2     
       LDA.wy $00D3,Y 
       AND    LFE09,X 
       NOP            
       NOP            
       STA    PF0     
       LDA.wy $00D4,Y 
       AND    LFE0A,X 
       STA    PF1     
       LDA.wy $00D5,Y 
       AND    LFE0B,X 
       STA    PF2     
       DEC    $DF     
       BMI    LF6EF   
       JMP    LF623   
LF692: STA    WSYNC   
       LDA.wy $00D0,Y 
       STA    PF0     
       LDA.wy $00D1,Y 
       STA    PF1     
       LDA.wy $00D2,Y 
       STA    PF2     
       LDA    $F6     
       SBC    $81     
       AND    #$F8    
       PHP            
       LDA.wy $00D3,Y 
       STA    PF0     
       LDA.wy $00D4,Y 
       STA    PF1     
       LDA.wy $00D5,Y 
       STA    PF2     
       LDA.wy $00D0,Y 
       STA    PF0     
       LDA.wy $00D1,Y 
       STA    PF1     
       LDA    $81     
       CLC            
       ADC    #$03    
       STA    $81     
       LDA.wy $00D2,Y 
       STA    PF2     
       LDA    $81     
       SEC            
       SBC    $84     
       AND    #$F8    
       PHP            
       PLA            
       PLA            
       LDA.wy $00D3,Y 
       STA    PF0     
       LDA.wy $00D4,Y 
       STA    PF1     
       LDA.wy $00D5,Y 
       STA    PF2     
       DEC    $DF     
       BMI    LF6EF   
       JMP    LF623   
LF6EF: LDA    #$00    
       STA    PF0     
       STA    PF1     
       STA    WSYNC   
       STA    PF2     
       INC    $81     
       LDA    $F6     
       SEC            
       SBC    $81     
       AND    #$F8    
       PHP            
       LDA    $81     
       SEC            
       SBC    $84     
       AND    #$F8    
       PHP            
       LDX    #$1F    
       TXS            
       INC    $81     
       LDA    $CA     
       DEC    $CA     
       CMP    $CB     
       STA    WSYNC   
       BEQ    LF71D   
       JMP    LF5C6   
LF71D: LDA    $8B     
       ORA    NUSIZ1  
       STA    $8B     
       STA    CXCLR   
       JMP    LF743   
LF728: INC    $81     
       STA    WSYNC   
       LDA    $F6     
       SEC            
       SBC    $81     
       AND    #$F8    
       PHP            
       LDA    $81     
       SEC            
       SBC    $84     
       AND    #$F8    
       PHP            
       LDX    #$1F    
       TXS            
       INC    $81     
       STA    WSYNC   
LF743: LDA    $8F     
       AND    #$08    
       CLC            
       ADC    #$AD    
       STA    $D6     
       LDA    $81     
       CMP    $D6     
       BNE    LF755   
       JMP    LF7E2   
LF755: CMP    #$9D    
       BNE    LF728   
       LDA    #$CC    
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$06    
       STA    NUSIZ0  
       LDX    #$1F    
       LDY    #$03    
LF767: STA    WSYNC   
       LDA    $F6     
       SEC            
       SBC    $81     
       AND    #$F8    
       PHP            
       LDA.wy $00A0,Y 
       STA    GRP0    
       LDA.wy $00AC,Y 
       STA    GRP1    
       INC    $81     
       LDA.wy $00A4,Y 
       STA    GRP0    
       SEC            
       LDA.wy $00A8,Y 
       STA    GRP0    
       LDA    $81     
       SBC    $84     
       AND    #$F8    
       PHP            
       TXS            
       STA    WSYNC   
       LDA    $F6     
       SEC            
       SBC    $81     
       AND    #$F8    
       PHP            
       LDA.wy $00A0,Y 
       STA    GRP0    
       LDA.wy $00AC,Y 
       STA    GRP1    
       INC    $81     
       LDA.wy $00A4,Y 
       STA    GRP0    
       SEC            
       LDA.wy $00A8,Y 
       STA    GRP0    
       LDA    $81     
       SBC    $84     
       AND    #$F8    
       PHP            
       TXS            
       DEY            
       BPL    LF767   
       STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       LDA    #$38    
       STA    COLUP1  
       LDA    #$00    
       STA    NUSIZ0  
       INC    $81     
       INC    $81     
       STA    WSYNC   
       LDA    WSYNC   
       ORA    RSYNC   
       LSR            
       AND    #$20    
       ORA    VBLANK  
       STA    $8C     
       STA    CXCLR   
       JMP    LF728   
LF7E2: ADC    #$01    
       STA    $81     
       LDA    #$01    
       STA    CTRLPF  
       LDA    #$88    
       STA    COLUPF  
       LDX    #$01    
       LDA    $8F     
       AND    #$08    
       BNE    LF846   
       LDX    #$CC    
       LDA    $94     
       BPL    LF7FE   
       LDX    #$00    
LF7FE: STX    COLUP0  
       LDX    #$38    
       LDA    $9C     
       BPL    LF808   
       LDX    #$00    
LF808: STX    COLUP1  
       STA    WSYNC   
       STA    $202B   
       LDA    $91     
       STA    HMP0    
       AND    #$0F    
       TAY            
LF816: DEY            
       BPL    LF816   
       STA    RESP0   
       STA    WSYNC   
       LDA    $99     
       STA    HMP1    
       AND    #$0F    
       TAY            
       LDA    #$00    
       NOP            
LF827: DEY            
       BPL    LF827   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       STA    ENAM1   
       LDX    #$06    
LF834: LDY    LFD17,X 
       STY    GRP0    
       STY    GRP1    
       INC    $81     
       LDA    $F6     
       SEC            
       SBC    $81     
       AND    #$F8    
       PHP            
       PLA            
LF846: DEX            
       STA    WSYNC   
       BNE    LF834   
       LDA    WSYNC   
       ASL            
       ORA    RSYNC   
       AND    #$C0    
       ORA    $8A     
       STA    $8A     
       STA    WSYNC   
       LDA    #$80    
       STA    PF0     
       STX    ENABL   
       STX    ENAM1   
       STX    GRP0    
       STX    GRP1    
       LDA    #$FF    
       STA    PF1     
       STA    PF2     
       LDX    $94     
       DEX            
       BMI    LF877   
       LDA    LFD15,X 
       STA    NUSIZ0  
       JMP    LF87B   
LF877: LDA    #$00    
       STA    COLUP0  
LF87B: LDX    $9C     
       DEX            
       BMI    LF888   
       LDA    LFD15,X 
       STA    NUSIZ1  
       JMP    LF88C   
LF888: LDA    #$00    
       STA    COLUP1  
LF88C: STA    WSYNC   
       STA    HMCLR   
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       STA    RESP0   
       LDA    $D6     
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       STA    RESP1   
       LDA    #$F0    
       STA    HMP0    
       LDA    #$10    
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$00    
       STA    PF1     
       LDA    #$FC    
       STA    PF2     
       LDX    #$06    
LF8C2: LDA    LFD17,X 
       STA    GRP0    
       STA    GRP1    
       STA    WSYNC   
       DEX            
       BNE    LF8C2   
       LDA    #$FF    
       STA    PF1     
       STA    PF2     
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    WSYNC   
       LDX    #$FD    
       TXS            
       STA    WSYNC   
       LDA    #$23    
       STA    TIM64T  
       LDA    #$02    
       STA    VBLANK  
       LDA    #$00    
       STA    COLUPF  
       STA    CTRLPF  
       STA    PF0     
       STA    PF1     
       STA    PF2     
       JSR    LFB1F   
       LDA    #$08    
       BIT    $8F     
       BEQ    LF902   
       JMP    LF9D2   
LF902: BIT    $8B     
       BVC    LF90E   
       LDA    #$00    
       STA    $85     
       LDA    #$42    
       STA    $88     
LF90E: LDA    $8B     
       BMI    LF915   
       JMP    LF9D2   
LF915: LDA    $83     
       ASL            
       ASL            
       ASL            
       TAY            
       STY    $DE     
       LDA.wy $0093,Y 
       SEC            
       SBC    $C8     
       CLC            
       ADC    #$02    
       LDX    #$00    
LF928: CMP    #$0C    
       BMI    LF933   
       SEC            
       SBC    #$0C    
       INX            
       JMP    LF928   
LF933: TXA            
       ASL            
       ASL            
       ASL            
       STA    $D6     
       LDA.wy $0092,Y 
       LSR            
       LSR            
       TAX            
       LDA    LFFA6,X 
       CLC            
       ADC    $D6     
       TAY            
       LDA    LFFCE,X 
       STA    $D7     
       EOR    #$FF    
       AND.wy $00D0,Y 
       BNE    LF955   
       JMP    LF9D2   
LF955: LDA    $D7     
       AND.wy $00D0,Y 
       STA.wy $00D0,Y 
       INX            
       LDA    LFFA6,X 
       CLC            
       ADC    $D6     
       TAY            
       LDA    LFFCE,X 
       AND.wy $00D0,Y 
       STA.wy $00D0,Y 
       DEX            
       DEX            
       LDA    LFFA6,X 
       CLC            
       ADC    $D6     
       TAY            
       LDA    LFFCE,X 
       AND.wy $00D0,Y 
       STA.wy $00D0,Y 
       DEC    $C5     
       LDA    $85     
       BNE    LF98A   
       LDA    #$52    
       STA    $88     
LF98A: LDY    $DE     
       LDA.wy $0097,Y 
       CLC            
       ADC    #$01    
       STA.wy $0097,Y 
       LDA.wy $0097,Y 
       CMP    #$0A    
       BCS    LF9A2   
       STA.wy $0097,Y 
       JMP    LF9CB   
LF9A2: SBC    #$0A    
       STA.wy $0097,Y 
       LDA.wy $0096,Y 
       CLC            
       ADC    #$01    
       CMP    #$0A    
       BCS    LF9B7   
       STA.wy $0096,Y 
       JMP    LF9CB   
LF9B7: SBC    #$0A    
       STA.wy $0096,Y 
       LDA.wy $0095,Y 
       CLC            
       ADC    #$01    
       CMP    #$0A    
       BCC    LF9C8   
       LDA    #$00    
LF9C8: STA.wy $0095,Y 
LF9CB: LDY    $83     
       LDA    #$04    
       STA.wy $00B0,Y 
LF9D2: LDA    #$04    
       SEC            
       SBC    $CB     
       ASL            
       ASL            
       ASL            
       TAY            
       LDA    #$00    
       ORA.wy $00D5,Y 
       ORA.wy $00D4,Y 
       ORA.wy $00D3,Y 
       ORA.wy $00D2,Y 
       ORA.wy $00D1,Y 
       ORA.wy $00D0,Y 
       BNE    LF9FC   
       INC    $CB     
       LDA    $CB     
       CMP    #$05    
       BNE    LF9FC   
       JSR    LFA8B   
LF9FC: LDA    $8C     
       AND    #$C0    
       BEQ    LFA47   
       LDA    $83     
       ASL            
       ASL            
       ASL            
       TAY            
       LDA.wy $0092,Y 
       SEC            
       SBC    #$1D    
       STA    $DE     
       AND    #$07    
       TAY            
       LDA    LFFD2,Y 
       EOR    #$FF    
       STA    $DF     
       LDA    $DE     
       LSR            
       LSR            
       AND    #$F8    
       LSR            
       TAX            
LFA22: LDA    $A0,X   
       AND    $DF     
       BNE    LFA31   
       INX            
       TXA            
       AND    #$03    
       BNE    LFA22   
       JMP    LFA47   
LFA31: LDA    $DF     
       EOR    #$FF    
       AND    $A0,X   
       STA    $A0,X   
       LDA    $83     
       ASL            
       ASL            
       ASL            
       TAY            
       LDA    #$00    
       STA.wy $0092,Y 
       STA.wy $0093,Y 
LFA47: LDA    $8C     
       AND    #$20    
       BEQ    LFA51   
       LDA    #$00    
       STA    $F6     
LFA51: LDA    INTIM   
       BNE    LFA51   
       RTS            

LFA57: LDA    #$02    
       STA    $94     
       STA    $9C     
       LDA    $8E     
       AND    #$01    
       BEQ    LFA67   
       LDA    #$FF    
       STA    $9C     
LFA67: LDA    #$27    
       STA    $90     
       LDA    #$77    
       STA    $98     
       LDA    #$00    
       STA    $95     
       STA    $9D     
       STA    $96     
       STA    $9E     
       STA    $97     
       STA    $9F     
       STA    $92     
       STA    $9A     
       STA    $93     
       STA    $9B     
       STA    $80     
       JSR    LFA8B   
       RTS            

LFA8B: LDA    #$B0    
       STA    $D0     
       STA    $D8     
       STA    $E0     
       STA    $E8     
       STA    $F0     
       LDA    #$B6    
       STA    $D1     
       STA    $D9     
       STA    $E1     
       STA    $E9     
       STA    $F1     
       LDA    #$DB    
       STA    $D2     
       STA    $DA     
       STA    $E2     
       STA    $EA     
       STA    $F2     
       LDA    #$60    
       STA    $D3     
       STA    $DB     
       STA    $E3     
       STA    $EB     
       STA    $F3     
       LDA    #$DB    
       STA    $D4     
       STA    $DC     
       STA    $E4     
       STA    $EC     
       STA    $F4     
       LDA    #$00    
       STA    $D5     
       STA    $DD     
       STA    $E5     
       STA    $ED     
       STA    $F5     
       STA    $CE     
       STA    $CF     
       STA    $CB     
       LDA    #$37    
       STA    $C5     
       LDA    #$3D    
       STA    $C9     
       STA    $C6     
       CLC            
       LDA    $80     
       ASL            
       STA    $D6     
       ASL            
       ADC    $D6     
       ADC    #$35    
       STA    $C8     
       LDA    #$C3    
       STA    $A0     
       STA    $A4     
       STA    $A8     
       STA    $AC     
       LDA    #$FF    
       STA    $A1     
       STA    $A5     
       STA    $A9     
       STA    $AD     
       LDA    #$7E    
       STA    $A2     
       STA    $A6     
       STA    $AA     
       STA    $AE     
       LDA    #$3C    
       STA    $A3     
       STA    $A7     
       STA    $AB     
       STA    $AF     
       LDA    #$00    
       STA    $85     
       INC    $80     
       RTS            

LFB1F: LDA    $EF     
       ASL            
       ASL            
       ASL            
       EOR    $EF     
       ASL            
       ASL            
       ROL    $E6     
       ROL    $E7     
       ROL    $EE     
       ROL    $EF     
       RTS            

LFB31: LDX    #$08    
LFB33: JSR    LFB1F   
       DEX            
       BNE    LFB33   
       LDA    $E6     
       RTS            

LFB3C: STA    $D6     
       BPL    LFB48   
       CMP    #$9E    
       BCC    LFB48   
       LDA    #$00    
       STA    $D6     
LFB48: LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    $D6     
       AND    #$0F    
       STY    $D6     
       CLC            
       ADC    $D6     
       CMP    #$0F    
       BCC    LFB5D   
       SBC    #$0F    
       INY            
LFB5D: CMP    #$08    
       EOR    #$0F    
       BCS    LFB66   
       ADC    #$01    
       DEY            
LFB66: INY            
       ASL            
       ASL            
       ASL            
       ASL            
       STA    $D6     
       TYA            
       ORA    $D6     
       RTS            

LFB71: .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$00
       .byte $42,$DB,$FF,$A5,$FF,$7E,$3C,$00,$00,$00,$77,$15,$75,$45,$77
LFD10: .byte $14,$16,$56,$58,$CA
LFD15: .byte $00,$01
LFD17: .byte $03,$FE,$FE,$FE,$7C,$10,$10
LFD1E: .byte $00,$10,$20,$30,$30
LFD23: .byte $00,$01,$02,$04,$04,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
LFE00: .byte $90
LFE01: .byte $24
LFE02: .byte $49
LFE03: .byte $20
LFE04: .byte $92
LFE05: .byte $92
LFE06: .byte $90
LFE07: .byte $24
LFE08: .byte $49
LFE09: .byte $20
LFE0A: .byte $92
LFE0B: .byte $92,$20,$92,$92,$40,$49,$24,$20,$92,$92,$40,$49,$24,$20,$92,$92
       .byte $40,$49,$24,$20,$92,$92,$40,$49,$24,$40,$49,$24,$90,$24,$49,$40
       .byte $49,$24,$90,$24,$49,$40,$49,$24,$90,$24,$49,$40,$49,$24,$90,$24
       .byte $49,$90,$24,$49,$20,$92,$92,$90,$24,$49,$20,$92,$92,$F0,$FF,$FF
       .byte $F0,$FF,$FF,$00,$00,$00,$00,$00,$00,$90,$24,$49,$20,$92,$92,$20
       .byte $92,$92,$40,$49,$24,$00,$00,$00,$00,$00,$00,$F0,$FF,$FF,$F0,$FF
       .byte $FF,$00,$00,$00,$00,$00,$00,$F0,$FF,$FF,$F0,$FF,$FF,$90,$24,$49
       .byte $20,$92,$92,$40,$49,$24,$90,$24,$49,$F0,$FF,$FF,$F0,$FF,$FF,$00
       .byte $00,$00,$00,$00,$00,$90,$24,$49,$20,$92,$92,$90,$24,$49,$20,$92
       .byte $92,$20,$92,$92,$40,$49,$24,$20,$92,$92,$40,$49,$24,$20,$92,$92
       .byte $40,$49,$24,$20,$92,$92,$40,$49,$24,$40,$49,$24,$90,$24,$49,$40
       .byte $49,$24,$90,$24,$49,$40,$49,$24,$90,$24,$49,$40,$49,$24,$90,$24
       .byte $49,$90,$24,$49,$20,$92,$92,$90,$24,$49,$20,$92,$92,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$EE,$44,$EE,$EE,$AA,$EE,$EE,$EE,$EE,$EE
LFF0A: .byte $00,$07,$02,$07,$07,$05,$07,$07,$07,$07,$07,$70,$AA,$CC,$22,$22
       .byte $AA,$88,$88,$22,$AA,$AA,$00,$05,$03,$04,$04,$05,$01,$01,$04,$05
       .byte $05,$50,$AA,$44,$EE,$EE,$EE,$EE,$EE,$22,$EE,$EE,$00,$05,$02,$07
       .byte $07,$07,$07,$07,$04,$07,$07,$50,$AA,$44,$88,$22,$22,$22,$AA,$22
       .byte $AA,$22,$00,$05,$02,$01,$04,$04,$04,$05,$04,$05,$04,$50,$EE,$EE
       .byte $EE,$EE,$22,$EE,$EE,$22,$EE,$EE,$00,$07,$07,$07,$07,$04,$07,$07
       .byte $04,$07,$07,$70
LFF6E: .byte $FF,$02,$04,$04,$06,$06,$08,$08,$08,$0A,$0C,$0E,$12,$14,$18,$1E
       .byte $1E,$1E,$1E,$1E,$1E,$28,$28,$28,$28,$28,$28,$3C,$3C,$3C,$3C,$3C
       .byte $3C,$3C,$3C,$3C,$3C,$3C,$3C,$3C,$3C,$3C,$3C,$3C,$3C,$3C,$3C,$3C
       .byte $3C,$3C,$3C,$3C,$3C,$3C,$3C,$3C
LFFA6: .byte $00,$00,$00,$00,$01,$01,$01,$01,$01,$01,$01,$01,$02,$02,$02,$02
       .byte $02,$02,$02,$02,$03,$03,$03,$03,$04,$04,$04,$04,$04,$04,$04,$04
       .byte $05,$05,$05,$05,$05,$05,$05,$05
LFFCE: .byte $EF,$DF,$BF,$7F
LFFD2: .byte $7F,$BF,$DF,$EF,$F7,$FB,$FD,$FE,$FE,$FD,$FB,$F7,$EF,$DF,$BF,$7F
       .byte $EF,$DF,$BF,$7F,$7F,$BF,$DF,$EF,$F7,$FB,$FD,$FE,$FE,$FD,$FB,$F7
       .byte $EF,$DF,$BF,$7F,$FF,$FF,$FF,$FF,$FF,$FF,$00,$F0,$00,$F0
