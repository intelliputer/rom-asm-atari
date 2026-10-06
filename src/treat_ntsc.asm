; Disassembly of roms/treat_ntsc.bin
; Disassembled Tue Oct  6 15:24:51 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/treat_ntsc.bin
;

      processor 6502
VSYNC   =  $00
VBLANK  =  $01
WSYNC   =  $02
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
RESM0   =  $12
AUDC0   =  $15
AUDF0   =  $17
AUDV0   =  $19
AUDV1   =  $1A
GRP0    =  $1B
GRP1    =  $1C
ENAM0   =  $1D
ENAM1   =  $1E
ENABL   =  $1F
HMP0    =  $20
HMP1    =  $21
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296

       ORG $F000

START:
       CLD            
       LDX    #$FF    
       TXS            
       LDA    #$00    
LF006: STA    VSYNC,X 
       DEX            
       BNE    LF006   
       STA    $DD     
       LDY    #$0E    
       JSR    LF145   
LF012: LDA    $DD     
       BEQ    LF030   
       CMP    #$05    
       BCC    LF01D   
       JMP    LF0C4   
LF01D: CMP    #$01    
       BEQ    LF03E   
       CMP    #$02    
       BEQ    LF070   
       CMP    #$03    
       BEQ    LF07A   
       CMP    #$04    
       BNE    LF030   
       JMP    LF0B0   
LF030: JSR    LFC05   
       INC    $DD     
       LDY    #$0F    
       JSR    LFFB4   
       LDA    #$00    
       STA    $CC     
LF03E: INC    $F7     
       JSR    LF0F0   
       JSR    LF15E   
       JSR    LFCBA   
       JSR    LF68F   
       LDA    $CC     
       BNE    LF058   
       LDA    SWCHB   
       LSR            
       BCC    LF03E   
       INC    $CC     
LF058: LDA    SWCHB   
       LSR            
       BCC    LF062   
       LDA    REFP1   
       BMI    LF03E   
LF062: INC    $DD     
       JSR    LF6BA   
       LDA    #$01    
       STA    $CC     
       LDY    #$58    
       JSR    LF145   
LF070: JSR    LFC50   
       INC    $DD     
       LDY    #$14    
       JSR    LFFB4   
LF07A: JSR    LF0F0   
       JSR    LF15E   
       LDA    $C2     
       BEQ    LF087   
       JSR    LF10A   
LF087: JSR    LFD6A   
       JSR    LF68F   
       LDA    REFP1   
       BPL    LF095   
       LDA    #$00    
       STA    $CC     
LF095: LDA    $CC     
       BNE    LF0AB   
       LDA    SWCHB   
       LSR            
       BCC    LF0AB   
       LDA    REFP1   
       BMI    LF0AB   
       INC    $DD     
       LDA    $B6     
       BNE    LF0B0   
       STA    $DD     
LF0AB: STA    WSYNC   
       JMP    LF012   
LF0B0: LDY    #$05    
       JSR    LFFB4   
       JSR    LF6E3   
       LDY    #$0F    
       JSR    LFFB4   
       LDY    #$36    
       JSR    LF145   
       INC    $DD     
LF0C4: JSR    LF0F0   
       JSR    LF10A   
       JSR    LF15E   
       JSR    LF1BC   
       LDA    #$00    
       JSR    LF480   
       JSR    LF68F   
       LDA    $DD     
       CMP    #$06    
       BCC    LF0ED   
       INC    $DD     
       LDA    $DD     
       CMP    #$64    
       BNE    LF0ED   
       LDA    #$02    
       STA    $DD     
       JMP    LF070   
LF0ED: JMP    LF012   
LF0F0: LDX    #$00    
       LDA    #$02    
       STA    WSYNC   
       STA    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STY    $80     
       LDA    #$2C    
       STA    TIM64T  
       LDY    $80     
       STA    WSYNC   
       STX    VSYNC   
       RTS            

LF10A: LDA    #$00    
       STA    COLUBK  
       LDA    SWCHA   
       STA    $94     
       LDA    $95     
       LDA    SWCHB   
       LSR            
       BCS    LF122   
       LDA    #$00    
       STA    $DD     
       JSR    LFEC8   
LF122: LDA    $B7     
       BEQ    LF144   
       DEC    $B7     
       LDA    #$06    
       STA    $DD     
       JSR    LFEC8   
       INC    $C2     
       LDX    $DF     
       INX            
       STX    $DF     
       TXA            
       EOR    #$0A    
       BNE    LF13F   
       STA    $DF     
       INC    $DE     
LF13F: LDY    #$44    
       JSR    LF145   
LF144: RTS            

LF145: LDX    #$00    
       .byte $0C ;.NOP
LF148: LDX    #$01    
       TYA            
       CLC            
       ADC    LFB57,Y 
       STA    $D9,X   
       INY            
       STY    $D5,X   
       LDA    #$01    
       STA    $DB,X   
       LDA    LFB57,Y 
       STA    AUDC0,X 
       RTS            

LF15E: LDX    #$01    
LF160: LDA    $DB,X   
       BMI    LF190   
       DEC    $DB,X   
       BNE    LF190   
       LDA    $D5,X   
       STA    $80     
       LDY    $D9,X   
       LDA    LFB57,Y 
       STA    AUDF0,X 
       DEY            
       LDA    LFB57,Y 
       STA    $DB,X   
       DEY            
       LDA    LFB57,Y 
       STA    AUDV0,X 
       DEY            
       CPY    $80     
       BMI    LF189   
       STY    $D9,X   
       JMP    LF190   
LF189: LDY    #$FF    
       STY    $DB,X   
       INY            
       STY    AUDV0,X 
LF190: DEX            
       BPL    LF160   
       RTS            

LF194: TXA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       STA    $D7     
       TXA            
       AND    #$0F    
       CLC            
       ADC    $D7     
       CMP    #$0F    
       TYA            
       ADC    #$00    
       TAY            
       STY    $D7     
       INY            
       INY            
       INY            
       TXA            
       AND    #$0F    
       CLC            
       ADC    $D7     
       EOR    #$0F    
       SBC    #$07    
       ASL            
       ASL            
       ASL            
       ASL            
       RTS            

LF1BC: LDA    $BC     
       STA    $D8     
       STA    $F9     
       LDA    $DD     
       CMP    #$06    
       BCC    LF1CB   
       JMP    LF3C5   
LF1CB: LDA    $BD     
       BEQ    LF207   
       DEC    $BD     
       BNE    LF1E5   
       LDA    #$00    
       STA    $B8     
       LDA    #$08    
       STA    $B2     
       LDY    #$06    
       LDA    $BF     
       STA.wy $00AB,Y 
       JMP    LF207   
LF1E5: LDA    #$00    
       STA    $B8     
       LDX    $B2     
       BEQ    LF1F9   
       STA    $B2     
       LDY    #$06    
       LDA    $BE     
       STA.wy $00AB,Y 
       JMP    LF3C5   
LF1F9: LDA    #$08    
       STA    $B2     
       LDY    #$06    
       LDA    $BF     
       STA.wy $00AB,Y 
       JMP    LF3C5   
LF207: LDA    $B8     
       BEQ    LF246   
       LDA    $84     
       CMP    #$07    
       BEQ    LF214   
       JMP    LF3C5   
LF214: LDA    $B2     
       BEQ    LF21B   
       JMP    LF3C5   
LF21B: LDA    #$08    
       STA    $B2     
       LDA    #$00    
       STA    $B8     
       STA    $BC     
       LDY    #$28    
       JSR    LF145   
       LDA    #$50    
       STA    $BD     
       LDY    #$06    
       LDA.wy $00AB,Y 
       STA    $BE     
       LDA    $81     
       CMP    #$50    
       BCC    LF242   
       LDA    #$10    
       STA    $BF     
       JMP    LF246   
LF242: LDA    #$6E    
       STA    $BF     
LF246: LDA    $84     
       BEQ    LF2B5   
       DEC    $D3     
       BNE    LF294   
       LDA    #$28    
       STA    $D3     
       DEC    $D2     
       LDA    $CF     
       BEQ    LF25E   
       ASL            
       STA    $CF     
       JMP    LF294   
LF25E: LDA    $D0     
       BEQ    LF267   
       LSR            
       STA    $D0     
       BCS    LF294   
LF267: LDA    $D1     
       BEQ    LF271   
       ASL            
       STA    $D1     
       JMP    LF294   
LF271: LDA    $CE     
       BEQ    LF27A   
       LSR            
       STA    $CE     
       BCS    LF294   
LF27A: LDA    $CD     
       BEQ    LF284   
       ASL            
       STA    $CD     
       JMP    LF294   
LF284: LDA    $CC     
       BEQ    LF290   
       LSR            
       AND    #$C0    
       STA    $CC     
       JMP    LF294   
LF290: LDA    #$01    
       STA    $B8     
LF294: LDA    $D2     
       CMP    #$0A    
       BNE    LF2A2   
       LDA    #$03    
       STA    $90     
       LDA    #$42    
       STA    $D4     
LF2A2: LDA    $D2     
       CMP    #$0F    
       BNE    LF2B5   
       LDA    #$1A    
       CMP    $D4     
       BEQ    LF2B5   
       STA    $D4     
       LDY    #$80    
       JSR    LF148   
LF2B5: DEC    $CB     
       LDA    $CB     
       BEQ    LF2C4   
       LDA    $94     
       AND    #$3F    
       STA    $94     
       JMP    LF2C8   
LF2C4: LDA    $90     
       STA    $CB     
LF2C8: LDA    $94     
       BMI    LF2D4   
       LDX    #$94    
       CPX    $81     
       BEQ    LF2D4   
       INC    $81     
LF2D4: ROL            
       BMI    LF2DF   
       LDX    #$0C    
       CPX    $81     
       BEQ    LF2DF   
       DEC    $81     
LF2DF: TAX            
       LDA    $B2     
       CMP    #$08    
       BEQ    LF302   
       LDA    $84     
       CMP    #$06    
       BNE    LF302   
       LDY    #$06    
       LDA.wy $00AB,Y 
       CMP    $81     
       BEQ    LF2FC   
       CLC            
       ADC    #$01    
       CMP    $81     
       BNE    LF302   
LF2FC: LDA    $95     
       ORA    #$10    
       STA    $95     
LF302: TXA            
       LDA    $95     
       AND    #$10    
       BEQ    LF37C   
       LDA    $95     
       AND    #$20    
       BEQ    LF37C   
       TXA            
       ROL            
       BMI    LF345   
       LDX    #$01    
       CPX    $84     
       BCS    LF31C   
       JMP    LF33B   
LF31C: LDX    $B2     
       BEQ    LF37C   
       TAX            
       LDA    $B5     
       CLC            
       ADC    #$08    
       CMP    $81     
       BCC    LF37C   
       LDA    $B5     
       SBC    #$08    
       CMP    $81     
       BCS    LF37C   
       LDA    $B5     
       STA    $81     
       LDA    #$01    
       STA    $B7     
       TXA            
LF33B: DEC    $84     
       LDY    #$00    
       JSR    LF145   
       JMP    LF37C   
LF345: ROL            
       BMI    LF37C   
       LDX    #$06    
       STA    $80     
       CPX    $84     
       BCC    LF37C   
       STA    $80     
       LDA    $B2     
       BNE    LF375   
       LDA    $84     
       CMP    #$06    
       BNE    LF375   
       TAY            
       LDA    $B2     
       CMP    #$08    
       BEQ    LF37C   
       LDA    $89     
       BNE    LF37C   
       LDA.wy $00AB,Y 
       CMP    $81     
       BEQ    LF375   
       CLC            
       ADC    #$01    
       CMP    $81     
       BNE    LF37C   
LF375: INC    $84     
       LDY    #$00    
       JSR    LF145   
LF37C: LDA    $94     
       STA    $95     
       LDY    #$06    
       LDX    #$06    
LF384: LDA    $96,X   
       ASL            
       TAX            
       INX            
       LDA    LFED5,X 
       STA    $F5     
       DEX            
       LDA    LFED5,X 
       STA    $F6     
       TYA            
       TAX            
       LDA    $EE,X   
       TAY            
       LDA    ($F5),Y 
       STA    $80     
       DEC    $EE,X   
       BNE    LF3A7   
       LDY    #$00    
       LDA    ($F5),Y 
       STA    $EE,X   
LF3A7: LDA    $AB,X   
       CLC            
       ADC    $80     
       CMP    #$A0    
       BNE    LF3B5   
       LDA    #$00    
       JMP    LF3BB   
LF3B5: CMP    #$FF    
       BNE    LF3BB   
       LDA    #$9F    
LF3BB: STA    $AB,X   
       STA    $AB,X   
       TXA            
       TAY            
       DEX            
       DEY            
       BPL    LF384   
LF3C5: LDX    $81     
       JSR    LF194   
       STA    HMP0    
       STA    $83     
       STY    $82     
       LDA    $84     
       BNE    LF3E0   
       LDA    $82     
       STA    $B3     
       LDA    $83     
       STA    $B4     
       LDA    $81     
       STA    $B5     
LF3E0: LDX    #$06    
LF3E2: STX    $80     
       LDA    $AB,X   
       TAX            
       JSR    LF194   
       LDX    $80     
       STA    $A4,X   
       STY    $9D,X   
       DEX            
       BPL    LF3E2   
       LDA    $B8     
       BEQ    LF446   
       LDA    LFA76   
       CMP    $B9     
       BNE    LF410   
       JSR    LFEC8   
       LDY    #$72    
       JSR    LF145   
       INC    $BB     
       DEC    $B6     
       BNE    LF410   
       LDA    #$06    
       STA    $DD     
LF410: LDX    $B9     
       LDA    LFA76,X 
       STA    $86     
       DEC    $B9     
       BNE    LF456   
       LDA    LFA76   
       STA    $B9     
       LDA    LFA65   
       STA    $85     
       LDA    #$00    
       STA    $B8     
       LDA    #$02    
       STA    $90     
       JSR    LFEC8   
       LDA    #$00    
       STA    $B2     
       JSR    LF463   
       LDA    #$F4    
       STA    $BC     
       LDA    #$00    
       STA    $84     
       LDA    $B5     
       STA    $81     
       JMP    LF456   
LF446: LDX    $85     
       LDA    LFA65,X 
       STA    $86     
       DEC    $85     
       BNE    LF456   
       LDA    LFA65   
       STA    $85     
LF456: LDA    #$01    
       STA    VDELP0  
       LDA    $89     
       BNE    LF462   
       LDA    #$00    
       STA    $F9     
LF462: RTS            

LF463: LDA    #$C0    
       STA    $CC     
       STA    $CF     
       LDA    #$FF    
       STA    $CD     
       STA    $CE     
       STA    $D0     
       STA    $D1     
       LDA    #$24    
       STA    $D2     
       LDA    #$28    
       STA    $D3     
       LDA    #$D4    
       STA    $D4     
       RTS            

LF480: LDA    INTIM   
       BNE    LF480   
       STA    WSYNC   
       STA    VBLANK  
       LDA    #$05    
       STA    CTRLPF  
       LDA    #$00    
       STA    GRP0    
       STA    PF1     
       STA    PF2     
       STA    COLUPF  
       LDA    #$30    
       STA    PF0     
       LDA    #$07    
       STA    $93     
       LDX    $F8     
       LDA    #$00    
       STA    WSYNC   
LF4A5: DEX            
       BPL    LF4A5   
       STA    ENAM0   
       STA    RESM0   
       STA    WSYNC   
LF4AE: LDX    $93     
       DEX            
       LDA    $A4,X   
       STA    HMP1    
       LDY    $9D,X   
       LDX    $82     
       STA    WSYNC   
LF4BB: DEX            
       BPL    LF4BB   
       STA    RESP0   
       STA    WSYNC   
LF4C2: DEY            
       BPL    LF4C2   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$08    
       STA    $92     
       LDA    $93     
       CLC            
       ASL            
       LDX    $B2     
       BEQ    LF4DD   
       CMP    #$0E    
       BNE    LF4DD   
       LDA    #$0D    
LF4DD: TAX            
       DEX            
       STX    $80     
       LDY    $DD     
       CPY    #$06    
       BCC    LF4ED   
       LDY    $B6     
       BEQ    LF4ED   
       LDX    #$0D    
LF4ED: LDA    $E0,X   
       LDY    #$00    
       ASL            
       BCC    LF4F5   
       INY            
LF4F5: TAX            
       TXA            
       ASL            
       BCC    LF4FB   
       INY            
LF4FB: TAX            
       TXA            
       ASL            
       BCC    LF501   
       INY            
LF501: TAX            
       TXA            
       ASL            
       BCC    LF507   
       INY            
LF507: CLC            
       ADC    #$65    
       TAX            
       TYA            
       ADC    #$F8    
       STA    $88     
       STX    $87     
       LDX    $80     
       DEX            
       LDA    $E0,X   
       LDY    $93     
       CPY    #$07    
       BNE    LF51F   
       LDA    #$00    
LF51F: STA    NUSIZ1  
       LDX    $86     
       LDY    #$00    
LF525: LDA    $93     
       CMP    $84     
       BNE    LF530   
       LDA    LF9E5,X 
       STA    GRP0    
LF530: INX            
       LDA    LF9E5,X 
       STA    WSYNC   
       STA    COLUP0  
       LDA    ($87),Y 
       STA    GRP1    
       INY            
       LDA    ($87),Y 
       STA    COLUP1  
       STA    $80     
       INX            
       INY            
       LDA    $93     
       CMP    $89     
       BNE    LF55F   
       LDA    $92     
       CLC            
       SBC    #$06    
       BPL    LF55F   
       LDA    $92     
       SBC    #$03    
       BMI    LF55F   
       LDA    #$02    
       STA    ENAM0   
       JMP    LF563   
LF55F: LDA    #$00    
       STA    ENAM0   
LF563: STA    WSYNC   
       LDA    $92     
       CMP    #$01    
       BNE    LF575   
       LDA    $D8     
       STA    COLUBK  
       LDA    $80     
       ADC    $F9     
       STA    COLUP1  
LF575: DEC    $92     
       BNE    LF525   
       STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    COLUBK  
       STA    $D8     
       STA    ENAM0   
       STA    $F9     
       DEC    $93     
       BEQ    LF590   
       JMP    LF4AE   
LF590: LDX    $B3     
       LDA    $B4     
       STA    HMP0    
       STA    WSYNC   
LF598: DEX            
       BPL    LF598   
       STA    RESP0   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$08    
       STA    $92     
       LDX    #$00    
       LDA    $84     
       BEQ    LF5AD   
       LDX    #$10    
LF5AD: LDA    LFA45,X 
       STA    GRP0    
       INX            
       STA    WSYNC   
       LDA    LFA45,X 
       STA    COLUP0  
       INX            
       LDA    #$00    
       STA    GRP1    
       STA    WSYNC   
       DEC    $92     
       BNE    LF5AD   
       STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       LDY    #$03    
LF5CF: LDA    LFFE5,Y 
       STA    COLUBK  
       STA    WSYNC   
       DEY            
       BPL    LF5CF   
       LDA    #$00    
       STA    COLUBK  
       TAX            
       STA    PF0     
       STA    PF1     
       STA    PF2     
       LDA    $D4     
       STA    COLUPF  
       LDY    #$01    
LF5EA: STA    WSYNC   
       LDA    $CC,X   
       STA    PF0     
       LDA    $CD,X   
       STA    PF1     
       LDA    $CE,X   
       STA    PF2     
       NOP            
       NOP            
       NOP            
       LDA    $CF,X   
       STA    PF0     
       LDA    $D0,X   
       STA    PF1     
       LDA    $D1,X   
       STA    PF2     
       DEY            
       BPL    LF5EA   
       STA    WSYNC   
       LDY    #$00    
       STY    COLUPF  
       LDA    #$30    
       STA    PF0     
       STY    PF1     
       STY    PF2     
       STY    COLUBK  
       STA    HMCLR   
       STA    WSYNC   
       LDA    #$F2    
       STA    COLUBK  
       LDA    $B6     
       ASL            
       TAX            
       DEX            
       LDA    LFEB8,X 
       STA    NUSIZ0  
       DEX            
       LDA    LFEB8,X 
       STA    NUSIZ1  
       LDA    #$80    
       STA    HMP0    
       LDA    #$82    
       STA    HMP1    
       LDX    #$03    
       STA    WSYNC   
       STA    HMOVE   
LF640: DEX            
       BPL    LF640   
       STA    RESP0   
       BIT    VSYNC   
       BIT    VSYNC   
       BIT    VSYNC   
       NOP            
       NOP            
       STA    RESP1   
       LDY    #$09    
       LDX    $B6     
LF653: LDA    LFEAE,Y 
       CPX    #$00    
       BNE    LF65C   
       LDA    #$00    
LF65C: STA    GRP0    
       STA    WSYNC   
       LDA    LFEAE,Y 
       CPX    #$04    
       BCS    LF669   
       LDA    #$00    
LF669: STA    GRP1    
       DEY            
       LDA    LFEAE,Y 
       STA    COLUP0  
       STA    COLUP1  
       STA    WSYNC   
       DEY            
       BPL    LF653   
       STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       LDA    #$20    
       STA    NUSIZ0  
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    COLUBK  
       STA    WSYNC   
       RTS            

LF68F: LDA    #$02    
       STA    WSYNC   
       STA    VBLANK  
       LDX    #$1E    
       LDA    COLUP1  
       BPL    LF69F   
       LDA    #$01    
       STA    $B8     
LF69F: LDA    VSYNC   
       ASL            
       BPL    LF6B2   
       LDA    #$00    
       STA    $89     
       STX    $D7     
       LDY    #$A0    
       JSR    LF148   
       LDX    $D7     
       DEX            
LF6B2: STA    CXCLR   
LF6B4: STA    WSYNC   
       DEX            
       BNE    LF6B4   
       RTS            

LF6BA: LDA    #$00    
       STA    $C2     
       STA    $DE     
       STA    $DF     
       INC    $DF     
       LDA    #$06    
       STA    $B6     
       LDX    #$05    
       LDA    #$00    
LF6CC: STA    $C5,X   
       DEX            
       BPL    LF6CC   
       RTS            

LF6D2: LDA    $F7     
       ASL            
       EOR    $F7     
       ASL            
       EOR    $F7     
       ASL            
       ASL            
       ROL            
       EOR    $F7     
       LSR            
       ROR    $F7     
       RTS            

LF6E3: LDA    $C2     
       CMP    #$63    
       BCC    LF6F3   
       LDA    #$00    
       STA    $C2     
       STA    $DE     
       STA    $DF     
       INC    $DF     
LF6F3: LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    ENAM0   
       STA    ENAM1   
       STA    ENABL   
       STA    $BB     
       STA    $B2     
       STA    $B8     
       STA    $BD     
       LDA    #$00    
       STA    $84     
       LDA    #$F0    
       STA    $95     
       LDA    #$50    
       STA    $81     
       LDA    #$F4    
       STA    $BC     
       STA    $F9     
       JSR    LF6D2   
       AND    #$07    
       TAY            
       LDA    LFFDD,Y 
       STA    $89     
       JSR    LF6D2   
       AND    #$07    
       TAY            
       LDA    LFEF5,Y 
       STA    $F8     
       LDX    #$0D    
       LDA    $C2     
       AND    #$07    
       CLC            
       ADC    #$10    
       STA    $E0,X   
       DEX            
       JSR    LF6D2   
       AND    #$0F    
       STA    $E0,X   
       DEX            
LF743: JSR    LF6D2   
       AND    #$0F    
       STA    $E0,X   
       DEX            
       JSR    LF6D2   
       AND    #$07    
       TAY            
       LDA    $C2     
       CMP    #$02    
       BCS    LF75D   
       LDA    LFB3F,Y 
       JMP    LF76A   
LF75D: CMP    #$07    
       BCS    LF767   
       LDA    LFB47,Y 
       JMP    LF76A   
LF767: LDA    LFB4F,Y 
LF76A: STA    $E0,X   
       DEX            
       BPL    LF743   
       LDA    LFA65   
       STA    $85     
       LDY    #$06    
       JSR    LF6D2   
       AND    #$03    
       STA.wy $0096,Y 
       ASL            
       TAX            
       INX            
       LDA    LFED5,X 
       STA    $F5     
       DEX            
       LDA    LFED5,X 
       STA    $F6     
       STY    $80     
       LDY    #$00    
       LDA    ($F5),Y 
       LDY    $80     
       STA.wy $00EE,Y 
       LDA.wy $0096,Y 
       DEY            
       CLC            
       ADC    #$01    
       AND    #$03    
       STA.wy $0096,Y 
       STA    $D2     
       ASL            
       TAX            
       INX            
       LDA    LFED5,X 
       STA    $F5     
       DEX            
       LDA    LFED5,X 
       STA    $F6     
       STY    $80     
       LDY    #$00    
       LDA    ($F5),Y 
       LDY    $80     
       STA.wy $00EE,Y 
       DEY            
LF7BF: JSR    LF6D2   
       LDX    $C2     
       CPX    #$02    
       BCS    LF7D1   
       AND    #$03    
       LDX    #$00    
       STX    $89     
       JMP    LF7DF   
LF7D1: CPX    #$07    
       BCS    LF7DA   
       AND    #$07    
       JMP    LF7DF   
LF7DA: AND    #$07    
       CLC            
       ADC    #$08    
LF7DF: LDX    $D2     
       STA    $D2     
       CPX    $D2     
       BEQ    LF7BF   
       STA.wy $0096,Y 
       ASL            
       TAX            
       INX            
       LDA    LFED5,X 
       STA    $F5     
       DEX            
       LDA    LFED5,X 
       STA    $F6     
       STY    $80     
       LDY    #$00    
       LDA    ($F5),Y 
       LDY    $80     
       STA.wy $00EE,Y 
       DEY            
       BPL    LF7BF   
       LDY    #$06    
       LDX    #$00    
LF80A: JSR    LF6D2   
       CMP    #$9F    
       BCC    LF816   
       CLC            
       SBC    #$9F    
       ADC    #$01    
LF816: CMP    #$00    
       BNE    LF81D   
       CLC            
       ADC    #$01    
LF81D: STA    $AB,X   
       INX            
       DEY            
       BPL    LF80A   
       LDA    #$02    
       STA    $90     
       STA    $CB     
       LDA    LFA76   
       STA    $B9     
       STA    $B7     
       LDA    #$01    
       STA    NUSIZ1  
       LDY    #$20    
       STY    NUSIZ0  
       JSR    LF463   
       JSR    LFEC8   
       LDA    #$01    
       STA    VDELP0  
       LDA    #$00    
       STA    VDELP1  
       STA    $B7     
       RTS            

LF849: LDX    #$01    
       LDY    #$02    
LF84D: LDA    $DE,X   
       ASL            
       ASL            
       ASL            
       CLC            
       ADC    #$5E    
       STA.wy $00A5,Y 
       LDA    #$00    
       ADC    #$FE    
       STA.wy $00A6,Y 
       DEY            
       DEY            
       DEX            
       BPL    LF84D   
       RTS            

LF865: .byte $38,$20,$4E,$22,$BF,$24,$FE,$24,$7F,$24,$7E,$22,$18,$20,$00,$00
       .byte $18,$14,$BD,$16,$7E,$18,$AB,$18,$D5,$18,$7E,$18,$BD,$16,$18,$14
       .byte $00,$00,$42,$40,$3C,$42,$E7,$46,$E7,$46,$3C,$42,$42,$40,$00,$00
       .byte $81,$B4,$C3,$B6,$DB,$B8,$FF,$BA,$FF,$BA,$DB,$B8,$C3,$B6,$81,$B4
       .byte $3F,$A8,$63,$AA,$FD,$AC,$A5,$AE,$A5,$AE,$BF,$AC,$C6,$AA,$FC,$A8
       .byte $18,$C2,$2C,$C4,$5E,$C6,$BF,$C8,$FF,$C8,$7E,$C6,$3C,$C4,$18,$C2
       .byte $3C,$92,$42,$94,$99,$96,$A5,$98,$A5,$98,$99,$96,$42,$94,$3C,$92
       .byte $18,$52,$18,$54,$3C,$56,$FF,$58,$FF,$58,$3C,$56,$18,$54,$18,$52
       .byte $18,$E2,$5A,$E4,$3C,$E6,$FF,$E8,$FF,$E8,$3C,$E6,$5A,$E4,$18,$E2
       .byte $24,$22,$66,$24,$FF,$26,$E7,$28,$E7,$28,$FF,$26,$66,$24,$24,$22
       .byte $81,$22,$66,$24,$5A,$26,$24,$28,$24,$28,$5A,$26,$66,$24,$81,$22
       .byte $99,$32,$66,$34,$7E,$36,$BD,$38,$BD,$38,$7E,$36,$66,$34,$99,$32
       .byte $18,$72,$66,$74,$FF,$76,$18,$78,$18,$78,$FF,$76,$66,$74,$18,$72
       .byte $24,$B2,$3C,$B4,$FF,$B6,$66,$B8,$66,$B8,$FF,$B6,$3C,$B4,$24,$B2
       .byte $FF,$42,$3C,$44,$66,$46,$FF,$48,$FF,$48,$66,$46,$3C,$44,$FF,$42
       .byte $3C,$C2,$7E,$C4,$18,$C6,$FF,$C8,$FF,$C8,$18,$C6,$7E,$C4,$3C,$C2
       .byte $34,$E6,$18,$E6,$2C,$44,$7A,$44,$5E,$44,$2C,$44,$18,$42,$FF,$00
       .byte $60,$E6,$10,$E6,$08,$E6,$08,$E6,$18,$44,$3C,$44,$18,$44,$FF,$00
       .byte $18,$F6,$0C,$1A,$0E,$1A,$0E,$1A,$0E,$1A,$1C,$1A,$30,$1A,$FF,$00
       .byte $30,$F2,$18,$F2,$38,$E4,$7C,$E4,$FE,$E4,$FE,$E4,$6C,$E4,$FF,$00
       .byte $78,$0F,$CC,$42,$CC,$0F,$0C,$42,$0C,$0F,$0C,$42,$0C,$0F,$FF,$00
       .byte $00,$00,$00,$00,$00,$00,$FB,$42,$BF,$40,$76,$40,$3C,$C2,$FF,$00
       .byte $00,$00,$81,$42,$DB,$44,$FF,$46,$DB,$44,$81,$42,$00,$00,$FF,$00
       .byte $7C,$AE,$FE,$AE,$FE,$AE,$FE,$F6,$7C,$F6,$38,$F6,$10,$F4,$FF,$00
LF9E5: .byte $5A,$82,$BD,$86,$7E,$8A,$DB,$8A,$DB,$8A,$7E,$8A,$BD,$86,$5A,$82
       .byte $5A,$82,$BD,$86,$7E,$8A,$E7,$8A,$E7,$8A,$7E,$8A,$BD,$86,$5A,$82
       .byte $5A,$82,$BD,$86,$66,$8A,$C3,$8A,$C3,$8A,$66,$8A,$BD,$86,$5A,$82
       .byte $99,$82,$24,$86,$42,$8A,$99,$8A,$99,$8A,$42,$8A,$24,$86,$99,$82
       .byte $18,$82,$00,$86,$18,$8A,$A5,$8A,$A5,$8A,$18,$8A,$00,$86,$18,$82
       .byte $18,$82,$00,$86,$00,$8A,$81,$8A,$81,$8A,$00,$8A,$00,$86,$18,$82
LFA45: .byte $5A,$82,$BD,$86,$7E,$8A,$E7,$8A,$E7,$8A,$7E,$8A,$81,$0D,$7E,$0D
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$81,$0D,$7E,$0D
LFA65: .byte $10,$10,$10,$10,$10,$10,$10,$10,$10,$00,$00,$00,$00,$00,$00,$00
       .byte $00
LFA76: .byte $20,$50,$50,$50,$50,$50,$50,$50,$50,$40,$40,$40,$40,$40,$40,$40
       .byte $40,$30,$30,$30,$30,$30,$30,$30,$30,$20,$20,$20,$20,$20,$20,$20
       .byte $20
LFA97: .byte $00,$76,$78,$7A,$78,$76,$74,$72,$03,$00,$00,$01,$03,$00,$00,$FF
       .byte $02,$00,$01,$02,$00,$FF,$01,$01,$01,$FF,$03,$00,$01,$01,$03,$00
       .byte $FF,$FF,$01,$01,$01,$FF,$1E,$01,$00,$00,$01,$00,$01,$01,$01,$01
       .byte $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$00,$01,$00
       .byte $00,$01,$00,$00,$00,$19,$01,$01,$01,$01,$00,$01,$01,$00,$01,$00
       .byte $00,$01,$00,$00,$00,$00,$00,$FF,$FF,$FF,$00,$00,$00,$00,$00,$17
       .byte $01,$00,$00,$01,$00,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
       .byte $00,$01,$00,$00,$01,$00,$00,$18,$FF,$FF,$FF,$FF,$FF,$00,$FF,$FF
       .byte $FF,$00,$FF,$FF,$00,$FF,$00,$FF,$00,$FF,$FF,$00,$FF,$FF,$FF,$00
       .byte $13,$01,$00,$00,$01,$00,$01,$01,$01,$01,$01,$01,$00,$01,$00,$00
       .byte $01,$00,$00,$00,$03,$00,$FF,$FF
LFB3F: .byte $04,$04,$06,$04,$06,$02,$04,$00
LFB47: .byte $06,$06,$06,$04,$06,$06,$04,$04
LFB4F: .byte $06,$06,$06,$06,$04,$06,$06,$06
LFB57: .byte $0D,$06,$00,$01,$00,$0F,$02,$14,$0F,$02,$0F,$0F,$02,$05,$19,$01
       .byte $0F,$14,$0B,$0F,$0A,$11,$0F,$0A,$0B,$0F,$0A,$11,$00,$05,$00,$0F
       .byte $1E,$0B,$00,$0A,$00,$0F,$0A,$11,$0D,$04,$0F,$14,$11,$0F,$14,$0B
       .byte $0F,$14,$11,$0F,$14,$0B,$0D,$06,$00,$01,$00,$0F,$02,$05,$0F,$02
       .byte $0F,$0F,$02,$14,$13,$04,$00,$01,$00,$0F,$05,$0F,$00,$02,$00,$0F
       .byte $05,$19,$00,$02,$00,$0F,$05,$1E,$19,$04,$00,$02,$00,$0F,$05,$14
       .byte $00,$02,$00,$0F,$0A,$1E,$00,$02,$00,$0F,$05,$14,$00,$02,$00,$0F
       .byte $0A,$1E,$0D,$08,$00,$02,$00,$0F,$14,$1F,$0F,$05,$1D,$0F,$0A,$1C
       .byte $1F,$04,$00,$02,$00,$0F,$1E,$1E,$00,$64,$00,$0F,$1E,$1E,$00,$64
       .byte $00,$0F,$1E,$1E,$00,$64,$00,$0F,$1E,$1E,$00,$64,$00,$0F,$1E,$1E
       .byte $0D,$04,$00,$01,$00,$0F,$05,$0F,$00,$02,$00,$0F,$05,$1E
LFC05: LDA    #$01    
       STA    VDELP0  
       STA    VDELP1  
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$36    
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$00    
       STA    HMCLR   
       STA    WSYNC   
       LDY    #$06    
LFC1F: DEY            
       BPL    LFC1F   
       NOP            
       NOP            
       STA    RESP0   
       STA    WSYNC   
       LDY    #$07    
LFC2A: DEY            
       BPL    LFC2A   
       STA    RESP1   
       LDA    #$50    
       STA    HMP0    
       STA    WSYNC   
       STA    HMOVE   
       RTS            

LFC38: STY    $80     
       LDX    #$0B    
LFC3C: STA    $9C,X   
       CLC            
       SBC    $80     
       DEX            
       DEX            
       BPL    LFC3C   
       LDA    #$FF    
       LDX    #$0B    
LFC49: STA    $9D,X   
       DEX            
       DEX            
       BPL    LFC49   
       RTS            

LFC50: LDY    $B6     
       BEQ    LFC8E   
       LDA    $C2     
       BEQ    LFCAB   
       LDA    $BB     
       BNE    LFC61   
       LDX    #$02    
       JSR    LFDD6   
LFC61: LDX    #$03    
       JSR    LFDD6   
       DEY            
       BNE    LFC61   
       LDY    $D2     
LFC6B: BEQ    LFC75   
       LDX    #$04    
       JSR    LFDD6   
       DEY            
       BPL    LFC6B   
LFC75: LDX    #$04    
       JSR    LFDD6   
       LDY    $C2     
       CPY    #$02    
       BMI    LFCAB   
       LDX    #$03    
       JSR    LFDD6   
       CPY    #$07    
       BMI    LFCAB   
       LDX    #$02    
       JMP    LFDD6   
LFC8E: LDX    #$00    
LFC90: LDA    $8A,X   
       CMP    $C5,X   
       BCC    LFCA2   
       LDA    $C5,X   
       CMP    $8A,X   
       BCC    LFCAB   
       INX            
       CPX    #$06    
       BCC    LFC90   
       RTS            

LFCA2: LDX    #$05    
LFCA4: LDA    $C5,X   
       STA    $8A,X   
       DEX            
       BPL    LFCA4   
LFCAB: RTS            

LFCAC: JSR    LFC05   
       LDX    #$0B    
LFCB1: LDA    LFFE9,X 
       STA    $9D,X   
       DEX            
       BPL    LFCB1   
       RTS            

LFCBA: LDA    INTIM   
       BNE    LFCBA   
       STA    WSYNC   
       STA    VBLANK  
       LDA    VBLANK  
       STA    CTRLPF  
       LDA    #$00    
       STA    COLUP0  
       STA    COLUP1  
       STA    COLUPF  
       STA    $D3     
       LDA    #$BF    
       STA    $D2     
       LDY    #$06    
       LDA    #$00    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       LDX    #$15    
       JSR    LFDB7   
       LDA    #$82    
       STA    COLUBK  
       STA    WSYNC   
       LDA    #$00    
       STA    COLUBK  
       LDX    #$06    
       JSR    LFDB7   
       LDX    #$07    
LFCF5: DEY            
       BNE    LFCFD   
       LDY    #$05    
       DEX            
       BEQ    LFD26   
LFCFD: STA    WSYNC   
       LDA    LFA97,X 
       STA    COLUPF  
       LDA    LFF00,X 
       STA    PF0     
       LDA    LFF08,X 
       STA    PF1     
       LDA    LFF10,X 
       STA    PF2     
       LDA    LFF28,X 
       STA    PF0     
       LDA    LFF20,X 
       STA    PF1     
       LDA    LFF18,X 
       STA    PF2     
       DEC    $D2     
       BNE    LFCF5   
LFD26: LDA    #$00    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       STA    COLUPF  
       LDX    #$07    
       JSR    LFDB7   
       LDA    #$82    
       STA    COLUBK  
       STA    WSYNC   
       LDA    #$00    
       STA    COLUBK  
       LDX    #$0B    
       JSR    LFDB7   
       LDA    #$36    
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$A3    
       LDY    #$10    
       JSR    LFC38   
       LDA    #$10    
       JSR    LFE00   
       LDX    #$41    
       JSR    LFDB7   
       LDX    #$05    
       JSR    LFDBD   
       LDA    #$07    
       JSR    LFE00   
       LDX    #$09    
       JMP    LFDB7   
LFD6A: LDA    INTIM   
       BNE    LFD6A   
       STA    WSYNC   
       STA    VBLANK  
       LDX    #$47    
       JSR    LFDB7   
       JSR    LFCAC   
       JSR    LF849   
       LDA    #$07    
       JSR    LFE00   
       LDX    #$40    
       JSR    LFDBD   
       LDA    #$07    
       JSR    LFE00   
       LDX    #$0A    
       JSR    LFDB7   
       LDA    $B6     
       BEQ    LFD9B   
       LDX    #$50    
       JMP    LFDB7   
LFD9B: LDY    #$04    
       LDA    #$49    
       JSR    LFC38   
       JSR    LFC05   
       LDA    #$04    
       JSR    LFE00   
       LDX    #$43    
       JMP    LFDB7   
LFDAF: .byte $A6,$91,$F0,$03,$18,$69,$25,$AA
LFDB7: STA    WSYNC   
       DEX            
       BNE    LFDB7   
       RTS            

LFDBD: LDY    #$0A    
LFDBF: LDA    $8A,X   
       ASL            
       ASL            
       ASL            
       ADC    #$5E    
       STA.wy $009D,Y 
       LDA    #$00    
       ADC    #$FE    
       STA.wy $009E,Y 
       DEX            
       DEY            
       DEY            
       BPL    LFDBF   
       RTS            

LFDD6: INC    $C5,X   
       LDA    $C5,X   
       CMP    #$0A    
       BNE    LFDE5   
       LDA    #$00    
       STA    $C5,X   
       DEX            
       BPL    LFDD6   
LFDE5: RTS            

LFDE6: .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
LFE00: STA    $81     
       STA    WSYNC   
       LDY    #$0B    
LFE06: DEY            
       BPL    LFE06   
       BIT    VSYNC   
LFE0B: NOP            
       NOP            
       NOP            
       LDY    $81     
       LDA    ($9D),Y 
       STA    GRP0    
       LDA    ($9F),Y 
       STA    GRP1    
       LDA    ($A1),Y 
       STA    GRP0    
       LDA    ($A7),Y 
       STA    $80     
       LDA    ($A5),Y 
       TAX            
       LDA    ($A3),Y 
       LDY    $80     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       DEC    $81     
       BPL    LFE0B   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    GRP0    
       STA    GRP1    
       RTS            

LFE3E: .byte $FB,$DB,$C3,$C3,$C3,$C3,$C3,$C3,$E2,$67,$07,$8D,$0D,$0D,$6D,$ED
       .byte $3E,$36,$30,$B8,$B0,$B0,$B6,$BE,$F8,$D8,$C0,$C0,$C0,$C0,$C0,$C0
       .byte $7C,$C6,$C6,$C6,$C6,$C6,$C6,$7C,$FC,$30,$30,$30,$30,$F0,$70,$30
       .byte $FE,$C0,$60,$30,$18,$0C,$C6,$7C,$7C,$C6,$06,$06,$1C,$06,$C6,$7C
       .byte $06,$FE,$C6,$66,$66,$30,$30,$18,$7C,$C6,$06,$06,$FC,$C0,$C0,$FE
       .byte $7C,$C6,$C6,$C6,$FC,$C0,$C6,$7C,$30,$30,$18,$18,$0C,$0C,$06,$FE
       .byte $7C,$C6,$C6,$C6,$7C,$C6,$C6,$7C,$7C,$C6,$06,$7E,$C6,$C6,$C6,$7C
LFEAE: .byte $82,$5A,$86,$3C,$8A,$7E,$86,$3C,$82,$5A
LFEB8: .byte $00,$00,$00,$01,$00,$03,$00,$03,$01,$03,$03,$03,$03,$03,$03,$03
LFEC8: LDA    #$FF    
       STA    $DB     
       STA    $DC     
       LDA    #$00    
       STA    AUDV0   
       STA    AUDV1   
       RTS            

LFED5: .byte $FA,$9F,$FA,$A3,$FA,$A7,$FA,$AA,$FA,$AD,$FA,$AF,$FA,$B1,$FA,$B5
       .byte $FA,$B9,$FA,$BB,$FA,$BD,$FA,$DC,$FA,$F6,$FB,$0E,$FB,$27,$FB,$3B
LFEF5: .byte $05,$06,$07,$07,$08,$08,$0B,$0B,$FF,$FF,$FF
LFF00: .byte $00,$70,$80,$80,$40,$20,$20,$C0
LFF08: .byte $00,$45,$45,$45,$47,$65,$15,$E2
LFF10: .byte $00,$CC,$22,$22,$62,$22,$02,$FC
LFF18: .byte $00,$25,$25,$25,$26,$25,$21,$7E
LFF20: .byte $00,$AC,$A2,$A2,$E6,$A2,$A2,$4C
LFF28: .byte $00,$20,$20,$20,$20,$20,$20,$70,$01,$02,$02,$02,$01,$AA,$AA,$BB
       .byte $2B,$92,$98,$A0,$B0,$A0,$98,$44,$AA,$AA,$AA,$4A,$6A,$8A,$CC,$8A
       .byte $6C,$00,$00,$00,$00,$00,$0F,$0D,$06,$03,$0F,$00,$18,$18,$1C,$18
       .byte $1F,$00,$02,$04,$05,$04,$02,$B6,$B6,$3E,$36,$9C,$00,$6D,$6D,$7D
       .byte $6D,$39,$00,$27,$94,$12,$91,$26,$23,$73,$DB,$DB,$D9,$00,$E6,$B6
       .byte $E7,$B6,$E7,$00,$22,$55,$55,$55,$22,$67,$6D,$EF,$6C,$C7,$00,$DB
       .byte $DB,$99,$D8,$9B,$00,$60,$10,$20,$10,$60,$3E,$B6,$B0,$30,$30,$00
       .byte $EC,$6D,$8D,$CD,$EC,$00,$18,$14,$18,$15,$19,$C0,$C0,$C0,$C0,$C0
       .byte $00,$E0,$B0,$B0,$B0,$E0,$00,$80,$80,$80,$40,$40
LFFB4: JSR    LF0F0   
LFFB7: LDA    INTIM   
       BNE    LFFB7   
       STA    WSYNC   
       LDA    #$00    
       STA    VBLANK  
       STA    COLUBK  
       STA    COLUPF  
       STA    GRP0    
       STA    GRP1    
       LDX    #$BF    
       JSR    LFDB7   
       JSR    LF68F   
       STY    $D7     
       JSR    LF15E   
       LDY    $D7     
       DEY            
       BNE    LFFB4   
       RTS            

LFFDD: .byte $01,$02,$03,$04,$05,$06,$04,$05
LFFE5: .byte $F4,$F8,$FA,$F4
LFFE9: .byte $3E,$FE,$46,$FE,$4E,$FE,$56,$FE,$5E,$FE,$5E,$FE,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$00,$F0,$00,$F0
