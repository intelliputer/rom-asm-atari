; Disassembly of roms/INV+.bin
; Disassembled Tue Oct  6 15:21:50 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/INV+.bin
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
HMM1    =  $23
HMBL    =  $24
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296
LFD66   =   $FD66

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
       INC    $BF     
       JSR    LFC4A   
       LDA    #$08    
       STA    $E6     
       STA    $E7     
       STA    $8F     
LF019: LDA    #$02    
       STA    WSYNC   
       STA    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$29    
       STA    TIM64T  
       LDA    #$00    
       STA    WSYNC   
       STA    VSYNC   
       LDY    #$00    
       LDA    SWCHB   
       STA    $D6     
       AND    #$02    
       BNE    LF04A   
       LDA    $8D     
       BNE    LF04C   
       INC    $8E     
       LDA    #$08    
       STA    $8F     
       LDA    #$01    
       STA    $8D     
       JMP    LF05E   
LF04A: STY    $8D     
LF04C: LDA    $D6     
       AND    #$01    
       BEQ    LF05E   
       LDA    $8F     
       BEQ    LF063   
       LDA    $88     
       BNE    LF063   
       LDA    REFP1   
       BMI    LF063   
LF05E: STY    $8F     
       JSR    LFC4A   
LF063: LDA    $D6     
       AND    #$08    
       BNE    LF072   
       LDA    $BF     
       ORA    #$80    
       STA    $BF     
       JMP    LF085   
LF072: BIT    $BF     
       BPL    LF085   
       LDA    $BF     
       AND    #$03    
       CLC            
       ADC    #$01    
       CMP    #$03    
       BNE    LF083   
       LDA    #$00    
LF083: STA    $BF     
LF085: LDA    $BF     
       AND    #$01    
       EOR    #$01    
       STA    $BE     
       LDA    $B1     
       BNE    LF0A5   
       LDA    $B2     
       BNE    LF0A5   
       LDA    $88     
       BEQ    LF09D   
       LDA    $89     
       BNE    LF0A5   
LF09D: LDA    $8E     
       AND    #$02    
       ORA    $BE     
       STA    $BE     
LF0A5: LDA    $8F     
       BNE    LF0F0   
       LDA    $88     
       BNE    LF0F0   
       LDA    SWCHA   
       STA    $D6     
       BIT    $94     
       BMI    LF0D0   
       LDA    $D6     
       BMI    LF0C2   
       LDA    $90     
       CMP    #$8D    
       BEQ    LF0C2   
       INC    $90     
LF0C2: LDA    #$40    
       AND    $D6     
       BNE    LF0D0   
       LDA    $90     
       CMP    #$0C    
       BEQ    LF0D0   
       DEC    $90     
LF0D0: LDA    $9C     
       BMI    LF0F0   
       LDA    #$08    
       AND    $D6     
       BNE    LF0E2   
       LDA    $98     
       CMP    #$8D    
       BEQ    LF0E2   
       INC    $98     
LF0E2: LDA    #$04    
       AND    $D6     
       BNE    LF0F0   
       LDA    $98     
       CMP    #$0C    
       BEQ    LF0F0   
       DEC    $98     
LF0F0: LDA    $B7     
       AND    #$0F    
       BEQ    LF104   
       DEC    $B7     
       LDA    $87     
       ORA    #$13    
       STA    AUDF0   
       LDA    #$06    
       STA    AUDC0   
       LDA    #$09    
LF104: STA    AUDV0   
       LDA    $B9     
       BIT    LFD66   
       BEQ    LF146   
       AND    #$30    
       CMP    #$30    
       BNE    LF12E   
       LDA    $87     
       AND    #$01    
       BEQ    LF14E   
       DEC    $B9     
       LDA    $B9     
       LSR            
       LSR            
       LSR            
       LSR            
       STA    AUDC1   
       LDA    $B9     
       AND    #$0F    
       STA    AUDV1   
       ADC    #$03    
       JMP    LF14C   
LF12E: INC    $B9     
       LDA    $B9     
       LSR            
       LSR            
       LSR            
       LSR            
       STA    AUDC1   
       LDX    #$00    
       LDA    $87     
       AND    #$01    
       BNE    LF142   
       LDX    #$0C    
LF142: STX    $D6     
       LDA    $B9     
LF146: STA    AUDV1   
       EOR    $D6     
       ADC    #$01    
LF14C: STA    AUDF1   
LF14E: LDA    $87     
       EOR    #$01    
       STA    $87     
       LDA    $88     
       BEQ    LF1CB   
       DEC    $88     
       LDX    $89     
       BEQ    LF1CB   
       SBC    #$3F    
       BMI    LF16F   
       LSR            
       LSR            
       LSR            
       STA    AUDV1   
       LDA    #$08    
       STA    AUDC1   
       LDA    #$07    
       STA    AUDF1   
LF16F: LDA    $88     
       BEQ    LF197   
       CMP    #$3C    
       BPL    LF182   
       TXA            
       LSR            
       ASL            
       TAX            
       LDA    #$CD    
       STA    $BA,X   
       JMP    LF1CB   
LF182: TXA            
       AND    #$02    
       TAX            
       LDA    $88     
       AND    #$04    
       STA    $D6     
       LSR            
       CLC            
       ADC    $D6     
       ADC    #$C1    
       STA    $BA,X   
       JMP    LF1CB   
LF197: TXA            
       LSR            
       LDY    #$BB    
       LDA    #$00    
       STA    $F6     
       STA    $F8     
       BCS    LF1AE   
       DEC    $9C     
       LDA    #$8D    
       STA    $98     
       STY    $BC     
       JMP    LF1BF   
LF1AE: DEC    $94     
       BPL    LF1B9   
       LDA    #$CD    
       STA    $BA     
       JMP    LF1BF   
LF1B9: LDA    #$0C    
       STA    $90     
       STY    $BA     
LF1BF: LDA    $94     
       BPL    LF1CB   
       LDA    $9C     
       BPL    LF1CB   
       LDA    #$08    
       STA    $8F     
LF1CB: LDA    $84     
       BNE    LF1FE   
       DEC    $B3     
       LDA    $B3     
       CMP    #$FF    
       BNE    LF242   
       DEC    $B4     
       BPL    LF242   
       LDA    $C5     
       CMP    #$09    
       BMI    LF242   
       LDA    #$DC    
       STA    $B3     
       LDA    #$05    
       STA    $B4     
       LDX    #$FF    
       LDY    #$8C    
       JSR    LFD35   
       LDA    $E6     
       AND    #$01    
       BNE    LF1FA   
       INX            
       INX            
       LDY    #$04    
LF1FA: STX    $84     
       STY    $85     
LF1FE: LDA    $B4     
       CMP    #$C0    
       BNE    LF213   
       DEC    $B3     
       BNE    LF242   
       LDA    #$28    
       STA    $B3     
       LDA    #$05    
       STA    $B4     
       JMP    LF23E   
LF213: LDA    $87     
       AND    #$01    
       BNE    LF242   
       LDA    $B4     
       CMP    #$C0    
       BEQ    LF242   
       LDA    $85     
       CLC            
       ADC    $84     
       STA    $85     
       LDY    $8F     
       BNE    LF234   
       AND    #$07    
       STA    AUDF0   
       LDA    #$44    
       STA    AUDC0   
       STA    AUDV0   
LF234: LDA    $85     
       CMP    #$90    
       BCS    LF23E   
       CMP    #$04    
       BCS    LF242   
LF23E: LDA    #$00    
       STA    $84     
LF242: LDA    #$04    
       STA    $CA     
       LDA    $8F     
       BEQ    LF24D   
       JMP    LF35D   
LF24D: LDA    $88     
       BEQ    LF254   
       JMP    LF35D   
LF254: LDA    $C9     
       SEC            
       SBC    #$02    
       STA    $C9     
       BEQ    LF289   
       CMP    #$01    
       BEQ    LF264   
       JMP    LF35D   
LF264: LDX    #$01    
       LDA    $CE     
       BEQ    LF26C   
       LDX    #$FF    
LF26C: STX    $D7     
       LDA    $CF     
       CLC            
       ADC    $D7     
       BPL    LF277   
       LDA    #$05    
LF277: CMP    #$06    
       BNE    LF27D   
       LDA    #$00    
LF27D: STA    $CF     
       LDY    $C5     
       LDA    LFF6E,Y 
       STA    $C9     
       JMP    LF35D   
LF289: LDA    $87     
       EOR    #$04    
       STA    $87     
       LDA    $C5     
       CLC            
       ADC    #$01    
       LSR            
       CMP    #$09    
       BMI    LF29B   
       LDA    #$09    
LF29B: STA    $B7     
       LDY    $C5     
       LDX    LFF6E,Y 
       INX            
       STX    $C9     
       LDX    #$00    
       LDA    $CE     
       BNE    LF305   
       LDA    #$00    
       ORA    $D5     
       ORA    $DD     
       ORA    $E5     
       ORA    $ED     
       ORA    $F5     
       AND    #$80    
       BEQ    LF2C7   
       STA    $CE     
       LDA    $C8     
       CLC            
       ADC    #$06    
       STA    $C8     
       JMP    LF35D   
LF2C7: CLC            
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
       BNE    LF2C7   
       LDA    $CF     
       CLC            
       ADC    #$01    
       CMP    #$06    
       BNE    LF300   
       LDA    #$00    
LF300: STA    $CF     
       JMP    LF35D   
LF305: LDA    #$00    
       ORA    $D0     
       ORA    $D8     
       ORA    $E0     
       ORA    $E8     
       ORA    $F0     
       AND    #$10    
       BEQ    LF323   
       LDA    #$00    
       STA    $CE     
       LDA    $C8     
       CLC            
       ADC    #$06    
       STA    $C8     
       JMP    LF35D   
LF323: LDA    $D5,X   
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
       BNE    LF323   
       LDA    $CF     
       SEC            
       SBC    #$01    
       BPL    LF35B   
       LDA    #$05    
LF35B: STA    $CF     
LF35D: LDA    $90     
       JSR    LFD52   
       STA    $91     
       LDA    $98     
       JSR    LFD52   
       STA    $99     
       LDA    $85     
       JSR    LFD52   
       STA    $86     
       LDA    REFP1   
       BMI    LF3A3   
       LDA    $94     
       BMI    LF3A3   
       LDA    $88     
       BNE    LF3A3   
       LDA    $93     
       CMP    #$C0    
       BNE    LF3A3   
       LDA    $8F     
       BNE    LF400   
       LDA    $90     
       CLC            
       ADC    #$03    
       STA    $92     
       LDA    #$AC    
       STA    $93     
       INC    $B0     
       LDA    $B0     
       CMP    #$17    
       BNE    LF39F   
       LDA    #$08    
       STA    $B0     
LF39F: LDA    #$38    
       STA    $B9     
LF3A3: LDA    $93     
       CMP    #$C0    
       BEQ    LF3D3   
       LDA    $B1     
       BEQ    LF3BB   
       LDA    $82     
       BNE    LF3D3   
       DEC    $B1     
       LDA    $B1     
       BNE    LF3D3   
       STA    $92     
       STA    $93     
LF3BB: LDA    $93     
       SEC            
       SBC    #$04    
       STA    $93     
       CMP    #$C0    
       BNE    LF3D3   
       BIT    SWCHB   
       BVC    LF3D3   
       BIT    REFP1   
       BMI    LF3D3   
       LDA    #$DC    
       STA    $93     
LF3D3: LDA    PF0     
       BMI    LF400   
       LDA    $9C     
       BMI    LF400   
       LDA    $88     
       BNE    LF400   
       LDA    $9B     
       CMP    #$C0    
       BNE    LF400   
       LDA    $98     
       CLC            
       ADC    #$03    
       STA    $9A     
       LDA    #$AC    
       STA    $9B     
       INC    $B8     
       LDA    $B8     
       CMP    #$17    
       BNE    LF3FC   
       LDA    #$08    
       STA    $B8     
LF3FC: LDA    #$38    
       STA    $B9     
LF400: LDA    $9B     
       CMP    #$C0    
       BEQ    LF430   
       LDA    $B2     
       BEQ    LF418   
       LDA    $82     
       BEQ    LF430   
       DEC    $B2     
       LDA    $B2     
       BNE    LF430   
       STA    $9A     
       STA    $9B     
LF418: LDA    $9B     
       SEC            
       SBC    #$04    
       STA    $9B     
       CMP    #$C0    
       BNE    LF430   
       BIT    SWCHB   
       BPL    LF430   
       BIT    PF0     
       BMI    LF430   
       LDA    #$DC    
       STA    $9B     
LF430: LDA    $82     
       EOR    #$01    
       STA    $82     
       TAY            
       LDX    $B1,Y   
       ASL            
       ASL            
       ASL            
       TAY            
       LDA.wy $0093,Y 
       STA    $83     
       LDA.wy $0092,Y 
       ADC    #$01    
       SEC            
       SBC    LFDE0,X 
       JSR    LFD52   
       STA    WSYNC   
       STA.w  $0023   
       AND    #$0F    
       TAY            
       NOP            
       NOP            
       NOP            
LF459: DEY            
       BPL    LF459   
       STA    RESM1   
       LDA    $F6     
       BNE    LF4D5   
       LDA    $8F     
       BNE    LF4D5   
       LDA    $88     
       BNE    LF4D5   
       LDA    $C6     
       BEQ    LF473   
       DEC    $C6     
       JMP    LF4D5   
LF473: LDA    #$01    
       STA    $C6     
       JSR    LFD47   
       CLC            
       BMI    LF484   
       AND    #$1F    
       ADC    #$04    
       JMP    LF48C   
LF484: AND    #$1F    
       ADC    $90     
       SBC    #$0B    
       LSR            
       LSR            
LF48C: TAY            
       STY    $D6     
       LDA    #$04    
       SEC            
       SBC    $CB     
       ASL            
       ASL            
       ASL            
       ADC    LFFA6,Y 
       SEC            
LF49B: TAX            
       LDA    LFFCE,Y 
       EOR    #$FF    
       AND    $D0,X   
       BNE    LF4AD   
       TXA            
       SBC    #$08    
       BPL    LF49B   
       JMP    LF4D5   
LF4AD: TXA            
       LSR            
       AND    #$FC    
       STA    $D7     
       ASL            
       CLC            
       ADC    $D7     
       ADC    $C8     
       ADC    #$0D    
       CMP    #$AA    
       BCS    LF4D5   
       STA    $F6     
       LDA    $D6     
       ASL            
       ASL            
       ADC    #$02    
       STA    $B5     
       JSR    LFD52   
       STA    $F8     
       LDY    $C5     
       LDA    LFF6E,Y 
       STA    $C6     
LF4D5: LDX    #$00    
LF4D7: LDA    $F6,X   
       BEQ    LF4E8   
       CLC            
       ADC    #$02    
       STA    $F6,X   
       CMP    #$BE    
       BCC    LF4E8   
       LDA    #$00    
       STA    $F6,X   
LF4E8: INX            
       CPX    #$02    
       BNE    LF4D7   
       LDY    $F6     
       LDX    $F8     
       LDA    $F7     
       STA    $F6     
       LDA    $F9     
       STA    $F8     
       STY    $F7     
       STX    $F9     
       LDA    $B5     
       LDX    $B6     
       STX    $B5     
       STA    $B6     
       STA    WSYNC   
       LDA    $F8     
       STA    HMBL    
       AND    #$0F    
       TAX            
       NOP            
       NOP            
LF510: DEX            
       BPL    LF510   
       STA    RESBL   
       STA    WSYNC   
       STA    HMOVE   
       LDA    $8F     
       BNE    LF544   
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
       BNE    LF544   
       LDA    #$08    
       STA    $8F     
       LDA    #$F0    
       STA    $88     
       STX    $94     
       STX    $9C     
       INX            
       STX    $89     
LF544: LDY    $82     
       LDX    $B1,Y   
       LDA    LFDD2,X 
       STA    NUSIZ1  
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
       STA    NUSIZ0  
       STA    COLUBK  
       STA    $FA     
       STA    $FB     
       STA    $FC     
       STA    $FD     
       LDA    #$FF    
       STA    $D7     
       LDA    #$02    
       STA    CTRLPF  
       LDX    $BE     
       LDA    LFED8,X 
       STA    COLUP0  
       LDY    LFEDC,X 
       LDA    $8E     
       AND    #$01    
       BNE    LF587   
       LDY    #$00    
LF587: STY    COLUP1  
LF589: LDA    INTIM   
       BNE    LF589   
       STA    WSYNC   
       STA    VBLANK  
       LDA    $BF     
       AND    #$02    
       BEQ    LF59F   
       LDX    #$19    
LF59A: STA    WSYNC   
       DEX            
       BNE    LF59A   
LF59F: LDY    #$00    
       CLC            
LF5A2: STA    WSYNC   
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
       BEQ    LF62D   
       JMP    LF5A2   
LF62D: LDA    #$0F    
       STA    $81     
       LDY    $86     
       STA    HMCLR   
       LDA    #$00    
       STA    WSYNC   
       STA    PF1     
       STA    PF2     
       TYA            
       STA    HMP0    
       AND    #$0F    
       TAY            
LF643: DEY            
       BPL    LF643   
       STA    RESP0   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$00    
       STA    CTRLPF  
       LDX    $BE     
       LDA    LFEE0,X 
       STA    COLUP0  
       LDA    LFEE4,X 
       STA    COLUP1  
       LDA    $84     
       BEQ    LF68E   
       LDA    #$00    
       LDX    $B4     
       CPX    #$C0    
       BNE    LF66D   
       LDA    $C0     
       ASL            
       ASL            
       ASL            
LF66D: CLC            
       ADC    #$88    
       STA    $D6     
       LDA    #$FD    
       STA    $D7     
       LDY    #$07    
LF678: STA    WSYNC   
       LDA    ($D6),Y 
       STA    GRP0    
       LDA    $81     
       SEC            
       SBC    $83     
       AND    #$F8    
       PHP            
       PLA            
       INC    $81     
       DEY            
       BPL    LF678   
       STY    $D7     
LF68E: LDA    VBLANK  
       AND    #$80    
       LSR            
       STA    $8A     
       STA    WSYNC   
       BIT    $81     
       LDA    #$B0    
       STA    HMP0    
       STA    HMP1    
       LDA    $81     
       SEC            
       SBC    $83     
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
LF6BD: INC    $81     
       STA    WSYNC   
       LDA    $81     
       SEC            
       SBC    $83     
       AND    #$F8    
       PHP            
       PLA            
       INC    $81     
       STA    WSYNC   
       LDA    $81     
       CMP    $C8     
       BNE    LF6BD   
       PLA            
LF6D5: INC    $81     
       STA    WSYNC   
       LDA    $F6     
       SEC            
       SBC    $81     
       AND    #$F8    
       PHP            
       LDA    #$0E    
       STA    COLUPF  
       LDA    $81     
       SEC            
       SBC    $83     
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
       SBC    $83     
       AND    #$F8    
       PHP            
       LDX    #$1F    
       TXS            
       INC    $81     
       LDA    $CA     
       ASL            
       ASL            
       ADC    $BE     
       TAY            
       STA    WSYNC   
       STA    $D6     
       LDA    LFEE8,Y 
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
       BCC    LF733   
       ADC    #$47    
LF733: STA    $C7     
       TAX            
       LDA    #$02    
       STA    $DF     
       LDA    $DF     
       NOP            
LF73D: LDA    $DF     
       CMP    $CC     
       BNE    LF7AC   
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
       BMI    LF809   
       JMP    LF73D   
LF7AC: STA    WSYNC   
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
       SBC    $83     
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
       BMI    LF809   
       JMP    LF73D   
LF809: LDA    #$00    
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
       LDA    #$0E    
       STA    COLUPF  
       LDA    $81     
       SEC            
       SBC    $83     
       AND    #$F8    
       PHP            
       LDX    #$1F    
       TXS            
       INC    $81     
       LDX    $CA     
       DEC    $CA     
       LDA    NUSIZ1  
       AND    #$80    
       ORA    $8A     
       STA    $8A     
       LDY    #$0E    
       CPX    $CB     
       STA    WSYNC   
       BEQ    LF845   
       JMP    LF6D5   
LF845: STA    CXCLR   
       STY    COLUPF  
       JMP    LF867   
LF84C: INC    $81     
       STA    WSYNC   
       LDA    $F6     
       SEC            
       SBC    $81     
       AND    #$F8    
       PHP            
       LDA    $81     
       SEC            
       SBC    $83     
       AND    #$F8    
       PHP            
       LDX    #$1F    
       TXS            
       INC    $81     
       STA    WSYNC   
LF867: LDA    $8F     
       CLC            
       ADC    #$AD    
       STA    $D6     
       LDA    $81     
       CMP    $D6     
       BNE    LF877   
       JMP    LF908   
LF877: CMP    #$9D    
       BNE    LF84C   
       LDX    $BE     
       LDA    LFEE4,X 
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$06    
       STA    NUSIZ0  
       LDX    #$1F    
       LDY    #$03    
LF88C: STY    $D7     
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
       SBC    $83     
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
       SBC    $83     
       AND    #$F8    
       PHP            
       TXS            
       DEY            
       BPL    LF88C   
       STA    WSYNC   
       INY            
       STY    GRP0    
       STY    GRP1    
       LDX    $BE     
       LDA    LFEDC,X 
       STA    COLUP1  
       STY    NUSIZ0  
       INC    $81     
       INC    $81     
       STA    WSYNC   
       LDA    VBLANK  
       STA    $8B     
       LDA    WSYNC   
       ORA    RSYNC   
       STA    $8C     
       STA    CXCLR   
       JMP    LF84C   
LF908: LDY    #$00    
       LDA    $8F     
       BNE    LF965   
       LDX    $BE     
       LDA    LFED8,X 
       LDY    $94     
       BPL    LF919   
       LDA    #$00    
LF919: STA    COLUP0  
       LDA    LFEDC,X 
       LDY    $9C     
       BPL    LF924   
       LDA    #$00    
LF924: STA    COLUP1  
       STA    WSYNC   
       STA.w  $002B   
       LDA    $91     
       STA    HMP0    
       AND    #$0F    
       TAY            
LF932: DEY            
       BPL    LF932   
       STA    RESP0   
       STA    WSYNC   
       LDA    $99     
       STA    HMP1    
       AND    #$0F    
       TAY            
       LDA    #$00    
       NOP            
LF943: DEY            
       BPL    LF943   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       STA    ENAM1   
       INC    $81     
       LDY    #$05    
LF952: LDA    ($BA),Y 
       STA    GRP0    
       LDA    ($BC),Y 
       STA    GRP1    
       INC    $81     
       LDA    $F6     
       SEC            
       SBC    $81     
       AND    #$F8    
       PHP            
       PLA            
LF965: DEY            
       STA    WSYNC   
       BPL    LF952   
       LDX    $BE     
       LDA    LFEFC,X 
       STA    COLUPF  
       LDA    #$01    
       STA    CTRLPF  
       STA    WSYNC   
       LDA    #$80    
       STA    PF0     
       LDX    #$00    
       STX    ENABL   
       STX    ENAM1   
       STX    GRP0    
       STX    GRP1    
       LDA    #$FF    
       STA    PF1     
       STA    PF2     
       LDX    $94     
       DEX            
       BMI    LF998   
       LDA    LFDB8,X 
       STA    NUSIZ0  
       JMP    LF99C   
LF998: LDA    #$00    
       STA    COLUP0  
LF99C: LDX    $9C     
       DEX            
       BMI    LF9A9   
       LDA    LFDB8,X 
       STA    NUSIZ1  
       JMP    LF9AD   
LF9A9: LDA    #$00    
       STA    COLUP1  
LF9AD: STA    WSYNC   
       STA    HMCLR   
       INC    $D6     
       INC    $D6     
       INC    $D6     
       INC    $D6     
       STA    RESP0   
       INC    $D6     
       INC    $D6     
       INC    $D6     
       INC    $D6     
       INC    $D6     
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
LF9DE: LDA    LFDBA,X 
       STA    GRP0    
       STA    GRP1    
       STA    WSYNC   
       DEX            
       BNE    LF9DE   
       LDA    #$FF    
       STA    PF1     
       STA    PF2     
       STX    GRP0    
       STX    GRP1    
       STA    WSYNC   
       LDX    #$FF    
       TXS            
       STA    WSYNC   
       LDA    #$00    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       LDA    $BF     
       AND    #$02    
       BEQ    LFA10   
       LDX    #$19    
LFA0B: STA    WSYNC   
       DEX            
       BNE    LFA0B   
LFA10: LDA    #$21    
       STA    TIM64T  
       LDA    #$02    
       STA    VBLANK  
       JSR    LFD35   
       LDA    #$08    
       BIT    $8F     
       BEQ    LFA25   
       JMP    LFB84   
LFA25: LDA    $D7     
       BPL    LFA32   
       LDX    #$0F    
       LDA    #$00    
LFA2D: STA    $A0,X   
       DEX            
       BPL    LFA2D   
LFA32: LDA    WSYNC   
       AND    #$40    
       BEQ    LFA43   
       LDA    $94     
       BMI    LFA43   
       LDA    #$01    
       STA    $89     
       JMP    LFA51   
LFA43: LDA    RSYNC   
       AND    #$40    
       BEQ    LFA5B   
       LDA    $9C     
       BMI    LFA5B   
       LDA    #$02    
       STA    $89     
LFA51: LDA    #$00    
       STA    $F6     
       STA    $F8     
       LDA    #$B4    
       STA    $88     
LFA5B: BIT    $8A     
       BVC    LFAA1   
       LDA    $B4     
       CMP    #$C0    
       BEQ    LFAA1   
       LDA    #$B4    
       STA    $B3     
       LDA    #$C0    
       STA    $B4     
       LDA    $82     
       ASL            
       ASL            
       ASL            
       TAY            
       LDX    $B0,Y   
       LDA    LFDE4,X 
       TAX            
       STX    $C0     
       INC    $C0     
       LDA    LFDFB,X 
       AND    #$0F    
       STA    $D6     
       LDA.wy $0097,Y 
       CLC            
       ADC    $D6     
       STA.wy $0097,Y 
       LDA    LFDFB,X 
       LSR            
       LSR            
       LSR            
       LSR            
       ADC.wy $0096,Y 
       STA.wy $0096,Y 
       LDA    #$42    
       STA    $B9     
       JMP    LFB41   
LFAA1: LDY    $82     
       LDA.wy $00B1,Y 
       BEQ    LFAAB   
       JMP    LFB84   
LFAAB: LDA    $8A     
       BMI    LFAB2   
       JMP    LFB84   
LFAB2: LDA    $82     
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
LFAC5: CMP    #$0C    
       BMI    LFAD0   
       SEC            
       SBC    #$0C    
       INX            
       JMP    LFAC5   
LFAD0: TXA            
       STA    $DF     
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
       BNE    LFAF4   
       JMP    LFB84   
LFAF4: LDA    $D7     
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
       LDA    $84     
       BNE    LFB29   
       LDA    #$52    
       STA    $B9     
LFB29: LDA    $DF     
       CLC            
       ADC    #$01    
       LSR            
       EOR    #$FF    
       CLC            
       ADC    #$04    
       STA    $DF     
       LDY    $DE     
       LDA.wy $0097,Y 
       CLC            
       ADC    $DF     
       STA.wy $0097,Y 
LFB41: LDA.wy $0097,Y 
       CMP    #$0A    
       BCC    LFB56   
       SBC    #$0A    
       STA.wy $0097,Y 
       LDA.wy $0096,Y 
       CLC            
       ADC    #$01    
       STA.wy $0096,Y 
LFB56: LDA.wy $0096,Y 
       CMP    #$0A    
       BCC    LFB7D   
       SBC    #$0A    
       STA.wy $0096,Y 
       LDA.wy $0095,Y 
       CLC            
       ADC    #$01    
       CMP    #$01    
       BNE    LFB74   
       STA    $D6     
       TYA            
       TAX            
       INC    $94,X   
       LDA    $D6     
LFB74: CMP    #$0A    
       BCC    LFB7A   
       LDA    #$00    
LFB7A: STA.wy $0095,Y 
LFB7D: LDY    $82     
       LDA    #$04    
       STA.wy $00B1,Y 
LFB84: LDA    #$04    
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
       BNE    LFBB6   
       INC    $CB     
       LDA    $CB     
       CMP    #$05    
       BNE    LFBB6   
       JSR    LFC72   
       LDA    #$B4    
       STA    $88     
       LDA    #$00    
       STA    $89     
LFBB6: LDA    $8B     
       AND    #$C0    
       BEQ    LFC01   
       LDA    $82     
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
LFBDC: LDA    $A0,X   
       AND    $DF     
       BNE    LFBEB   
       INX            
       TXA            
       AND    #$03    
       BNE    LFBDC   
       JMP    LFC01   
LFBEB: LDA    $DF     
       EOR    #$FF    
       AND    $A0,X   
       STA    $A0,X   
       LDA    $82     
       ASL            
       ASL            
       ASL            
       TAY            
       LDA    #$00    
       STA.wy $0092,Y 
       STA.wy $0093,Y 
LFC01: LDA    $8C     
       AND    #$40    
       BEQ    LFC42   
       LDA    $B5     
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
       CLC            
       ADC    #$03    
       TAX            
LFC23: LDA    $A0,X   
       AND    $DF     
       BNE    LFC34   
       DEX            
       TXA            
       AND    #$03    
       CMP    #$03    
       BNE    LFC23   
       JMP    LFC42   
LFC34: LDA    $DF     
       EOR    #$FF    
       AND    $A0,X   
       STA    $A0,X   
       LDA    #$00    
       STA    $F6     
       STA    $F8     
LFC42: LDA    INTIM   
       BNE    LFC42   
       JMP    LF019   
LFC4A: LDA    #$02    
       STA    $94     
       STA    $9C     
       LDA    $8E     
       AND    #$01    
       BNE    LFC5A   
       LDA    #$FF    
       STA    $9C     
LFC5A: LDA    #$00    
       STA    $95     
       STA    $9D     
       STA    $96     
       STA    $9E     
       STA    $97     
       STA    $9F     
       STA    $80     
       LDA    #$3C    
       STA    $88     
       JSR    LFC72   
       RTS            

LFC72: LDA    #$B0    
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
       STA    $D4     
       STA    $DC     
       STA    $E4     
       STA    $EC     
       STA    $F4     
       LDA    #$60    
       STA    $D3     
       STA    $DB     
       STA    $E3     
       STA    $EB     
       STA    $F3     
       LDA    #$00    
       STA    $D5     
       STA    $DD     
       STA    $E5     
       STA    $ED     
       STA    $F5     
       STA    $CE     
       STA    $CF     
       STA    $CB     
       STA    $B7     
       STA    $B9     
       STA    $89     
       STA    $84     
       STA    $93     
       STA    $9B     
       STA    $F6     
       STA    $F7     
       LDA    #$0C    
       STA    $90     
       LDA    #$8D    
       STA    $98     
       LDA    #$37    
       STA    $C5     
       LDA    #$3D    
       STA    $C9     
       STA    $C6     
       LDY    $80     
       LDA    LFDD7,Y 
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
       STA    $B0     
       STA    $B8     
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
       LDA    #$DC    
       STA    $B3     
       LDA    #$05    
       STA    $B4     
       LDA    #$BB    
       STA    $BA     
       STA    $BC     
       LDA    #$FD    
       STA    $BB     
       STA    $BD     
       CLC            
       LDA    $80     
       ADC    #$01    
       CMP    #$09    
       BNE    LFD32   
       LDA    #$00    
LFD32: STA    $80     
       RTS            

LFD35: LDA    $EF     
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

LFD47: LDX    #$08    
LFD49: JSR    LFD35   
       DEX            
       BNE    LFD49   
       LDA    $E6     
       RTS            

LFD52: STA    $D6     
       BPL    LFD5E   
       CMP    #$9E    
       BCC    LFD5E   
       LDA    #$00    
       STA    $D6     
LFD5E: LSR            
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
       BCC    LFD73   
       SBC    #$0F    
       INY            
LFD73: CMP    #$08    
       EOR    #$0F    
       BCS    LFD7C   
       ADC    #$01    
       DEY            
LFD7C: INY            
       ASL            
       ASL            
       ASL            
       ASL            
       STA    $D6     
       TYA            
       ORA    $D6     
       RTS            

LFD87: .byte $FF,$00,$42,$DB,$FF,$A5,$FF,$7E,$3C,$00,$77,$15,$15,$75,$45,$45
       .byte $77,$00,$5F,$55,$55,$55,$55,$D5,$5F,$00,$B7,$95,$95,$B5,$A5,$A5
       .byte $B7,$00,$DF,$55,$55,$D5,$55,$55,$DF,$00,$D1,$91,$91,$D1,$95,$9B
       .byte $D1
LFDB8: .byte $00,$01
LFDBA: .byte $03,$FE,$FE,$FE,$7C,$10,$10,$BE,$7E,$90,$2A,$91,$48,$FC,$7E,$54
       .byte $31,$54,$A0,$00,$00,$00,$00,$00
LFDD2: .byte $00,$10,$20,$30,$30
LFDD7: .byte $35,$41,$47,$4D,$4D,$4D,$53,$53,$53
LFDE0: .byte $00,$01,$02,$04
LFDE4: .byte $04,$01,$02,$00,$01,$02,$00,$01,$00,$01,$02,$00,$01,$02,$00,$01
       .byte $00,$01,$00,$01,$02,$00,$03
LFDFB: .byte $05,$10,$15,$30,$05
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
       .byte $49,$90,$24,$49,$20,$92,$92,$90,$24,$49,$20,$92,$92
LFED8: .byte $CC,$5C,$CC,$5C
LFEDC: .byte $38,$48,$38,$48
LFEE0: .byte $48,$6A,$48,$6A
LFEE4: .byte $CC,$5C,$CC,$5C
LFEE8: .byte $18,$2A,$00,$00,$1A,$2C,$00,$00,$5A,$8A,$00,$00,$5C,$8C,$00,$00
       .byte $CE,$5E,$00,$00
LFEFC: .byte $8C,$DC,$8C,$DC,$EE,$44,$EE,$EE,$AA,$EE,$EE,$EE,$EE,$EE
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
