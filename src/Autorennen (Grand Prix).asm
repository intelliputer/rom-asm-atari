; Disassembly of roms/Autorennen (Grand Prix).bin
; Disassembled Tue Oct  6 15:19:36 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Autorennen (Grand Prix).bin
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
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296
LFB4E   =   $FB4E
LFC3C   =   $FC3C
LFC46   =   $FC46
LFC7C   =   $FC7C

       ORG $F000

START:
       SEI            
       CLD            
       LDX    #$00    
LF004: LDA    #$00    
LF006: STA    VSYNC,X 
       TXS            
       INX            
       BNE    LF006   
       LDA    #$34    
       STA    CTRLPF  
       JSR    LF8F6   
       LDA    $82     
       BNE    LF01E   
       LDX    #$01    
       STX    $82     
       JMP    LF660   
LF01E: LDX    #$07    
LF020: LDA    LFF58,X 
       EOR    $85     
       AND    $86     
       STA    $87,X   
       CPX    #$04    
       BCS    LF02F   
       STA    COLUP0,X
LF02F: DEX            
       BPL    LF020   
       STX    $B3     
       LDA    $F1     
       AND    #$1F    
       CLC            
       ADC    #$04    
       INX            
       JSR    LF92D   
       JSR    LFB52   
       LDA    $F1     
       AND    #$1F    
       CLC            
       ADC    #$44    
       INX            
       JSR    LF92D   
       JSR    LFB52   
       LDX    #$03    
       LDA    $F2     
       BEQ    LF05C   
       LDY    $F3     
       BNE    LF05C   
       ADC    #$09    
LF05C: JSR    LF92D   
       JSR    LFB52   
       INX            
       LDY    $F2     
       INY            
       TYA            
       JSR    LF92D   
       JSR    LFB52   
       JSR    LF928   
       STA    WSYNC   
       STA    HMCLR   
       STA    CXCLR   
       LDA    $EA     
       AND    #$0F    
       CMP    #$0D    
       BCC    LF083   
       TAX            
       LDA    $7F,X   
       STA    $8B     
LF083: LDA    #$06    
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    ENABL   
       LDX    #$0D    
       LDY    $AF     
       LDA    $F6     
       STA    PF0     
LF093: LDA    INTIM   
       BNE    LF093   
       STA    WSYNC   
       STA    HMOVE   
       STA    VBLANK  
       DEC    $DF     
       NOP            
       JMP    LF0E5   
LF0A4: STX    NUSIZ0  
       STX    NUSIZ1  
       LDA    #$02    
       STA    ENAM1   
       LDA    $8C     
       STA    HMOVE   
       STA    COLUBK  
       STA    COLUP0  
       STA    COLUP1  
       LDA    $F7     
       STA    PF1     
       LDA    $F8     
       STA    PF2     
       STA    RESP0   
       STA    CXCLR   
       LDA    $F9     
       STA    PF0     
       LDA    $FA     
       STA    PF1     
       LDA    $FB     
       STA    PF2     
       JMP    LF0FC   
LF0D1: LDA    $F6     
       STA    PF0     
       TXA            
       BEQ    LF0A4   
       STA    WSYNC   
       STA    HMOVE   
       LDA    $DF     
       LDA    LFFEC,X 
       STA    GRP0    
       STA    GRP1    
LF0E5: LDA    $F7     
       STA    PF1     
       LDA    $F8     
       STA    PF2     
       LDA    $F9     
       STA    PF0     
       LDA    $FA     
       STA    PF1     
       LDA    $FB     
       DEX            
       STA    PF2     
       BPL    LF0D1   
LF0FC: LDA    $F2     
       ORA    $F3     
       BEQ    LF117   
       LDX    #$27    
       LDA    #$1F    
       CPY    #$1E    
       BNE    LF10C   
       STA    GRP0    
LF10C: STA    WSYNC   
       STA    HMOVE   
       LDA    $8B     
       STA    COLUBK  
       JMP    LF153   
LF117: JMP    LFA14   
LF11A: STA    WSYNC   
       STA    HMOVE   
       LDA    #$00    
       STA    GRP0    
       SEC            
       BCS    LF153   
LF125: LDA    $8C     
       STA    WSYNC   
       STA    HMOVE   
       STA    COLUPF  
       LDA    #$00    
       STA    GRP0    
       BEQ    LF187   
LF133: STA    WSYNC   
       STA    HMOVE   
       LDA    #$00    
       STA    GRP0    
       BEQ    LF1BA   
LF13D: CPY    #$20    
       BCS    LF11A   
       LDA.wy $008F,Y 
       STA    COLUP0  
       LDA    ($CD),Y 
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       LDA    LFB60,Y 
       STA    NUSIZ0  
LF153: LDA    $F6     
       STA    PF0     
       LDA    $F7     
       STA    PF1     
       LDA    $F8     
       STA    PF2     
       LDA    $F9     
       STA    PF0     
       LDA    $FA     
       STA    PF1     
       LDA    $FB     
       DEY            
       STA    PF2     
       DEX            
       BPL    LF13D   
       CPY    #$20    
       BCS    LF125   
       LDA.wy $008F,Y 
       STA    COLUP0  
       LDA    LFB60,Y 
       STA    NUSIZ0  
       LDA    $8C     
       STA    HMOVE   
       STA    COLUPF  
       LDA    ($CD),Y 
       STA    GRP0    
LF187: LDA    $F6     
       STA    PF0     
       LDA    $F7     
       STA    PF1     
       LDA    $F8     
       STA    PF2     
       LDA    $F9     
       STA    PF0     
       LDA    $FA     
       STA    PF1     
       LDA    $FB     
       STA    PF2     
       DEY            
       LDX    #$39    
LF1A2: CPY    #$20    
       BCS    LF133   
       LDA    ($CD),Y 
       STA    GRP0    
       LDA    LFB60,Y 
       STA    NUSIZ0  
       STA    WSYNC   
       STA    HMOVE   
       LDA.wy $008F,Y 
       STA    COLUP0  
       LDA    #$00    
LF1BA: STA    ENAM1   
       STA    ENABL   
       STA    PF0     
       STA    PF1     
       STA    PF2     
       DEY            
       DEX            
       BPL    LF1A2   
       BMI    LF1EC   
LF1CA: LDA    #$00    
       STA    GRP0    
       BEQ    LF200   
LF1D0: LDA    #$00    
       STA    GRP0    
       STA    WSYNC   
       STA    HMOVE   
       LDA    $89     
       STA.w  $0008   
       JMP    LF23E   
LF1E0: LDA    #$00    
       STA    WSYNC   
       STA    HMOVE   
       STA.w  $001B   
       JMP    LF26D   
LF1EC: LDX    #$26    
       CPY    #$20    
       BCS    LF1CA   
       LDA    ($CD),Y 
       STA    GRP0    
       LDA    LFB60,Y 
       STA    NUSIZ0  
       LDA.wy $008F,Y 
       STA    COLUP0  
LF200: STA    WSYNC   
       STA    HMOVE   
       DEY            
       LDA    #$02    
       STA    ENAM1   
       STA    ENABL   
       NOP            
       LDA    $F6     
       STA    PF0     
       LDA    $F7     
       STA    PF1     
       LDA    $F8     
       STA    PF2     
       LDA    $F9     
       STA    PF0     
       LDA    $FA     
       STA    PF1     
       LDA    $FB     
       STA    PF2     
       CPY    #$20    
       BCS    LF1D0   
       LDA    ($CD),Y 
       STA    GRP0    
       LDA    LFB60,Y 
       STA    NUSIZ0  
       LDA    $89     
       STA    WSYNC   
       STA    HMOVE   
       STA    COLUPF  
       LDA.wy $008F,Y 
       STA    COLUP0  
LF23E: LDA    $F6     
       STA    PF0     
       LDA    $F7     
       STA    PF1     
       LDA    $F8     
       STA    PF2     
       LDA    $F9     
       STA    PF0     
       LDA    $FA     
       STA    PF1     
       LDA    $FB     
       DEY            
       STA    PF2     
LF257: CPY    #$20    
       BCS    LF1E0   
       LDA    ($CD),Y 
       STA    GRP0    
       LDA    LFB60,Y 
       STA    NUSIZ0  
       STA    WSYNC   
       STA    HMOVE   
       LDA.wy $008F,Y 
       STA    COLUP0  
LF26D: DEY            
       LDA    $F6     
       STA    PF0     
       LDA    $F7     
       STA    PF1     
       LDA    $F8     
       STA    PF2     
       LDA    $F9     
       STA    PF0     
       LDA    $FA     
       STA    PF1     
       LDA    $FB     
       DEX            
       STA    PF2     
       BPL    LF257   
LF289: LDA    $F6     
       STA    PF0     
       LDA    $F7     
       STA    PF1     
       LDY    #$00    
       STY    GRP0    
       LDA    $8C     
       STA    WSYNC   
       STA    HMOVE   
       STA.w  $0009   
       LDA    $F8     
       STA    PF2     
       LDA    $B0     
       ASL            
       BCC    LF2AB   
       LDY    #$D0    
       NOP            
       NOP            
LF2AB: STA    RESP0   
       STA    HMP0    
       LDA    WSYNC   
       STA    $B2     
       LDA    $F9     
       STA    PF0     
       LDA    $FA     
       STA    PF1     
       LDA    $FB     
       STA    PF2     
       LDX    #$00    
       STA    WSYNC   
       STA    HMOVE   
       STX    ENAM1   
       LDA    $8A     
       STA    COLUBK  
       LDA    $F6     
       STA    PF0     
       LDA    $F7     
       STA    PF1     
       LDA    $F8     
       STA    PF2     
       LDA    #$06    
       STA    NUSIZ1  
       STA    NUSIZ0  
       STY    HMP0    
       LDA    $F9     
       STA    PF0     
       LDA    $FA     
       STA    PF1     
       LDA    $FB     
       STA    PF2     
       LDA    $87     
       STA    COLUP0  
       STA    COLUP1  
       LDX    #$0C    
LF2F3: STA    WSYNC   
       STA    HMOVE   
       LDA    LFFEC,X 
       STA    GRP0    
       STA    GRP1    
       LDA    $F6     
       STA    PF0     
       LDA    $F7     
       STA    PF1     
       LDA    $F8     
       STA    PF2     
       LDA    $F9     
       STA    PF0     
       LDA    $FA     
       STA    PF1     
       LDA    $FB     
       STA    HMCLR   
       STA    PF2     
       DEX            
       BNE    LF2F3   
       LDA    $8C     
       STA    WSYNC   
       STA    HMOVE   
       STA    COLUBK  
       LDA    #$03    
       STA.w  $0004   
       STX    PF0     
       STX    PF1     
       STX    ENABL   
       STX    PF2     
       STA.w  $0010   
       STA    RESP1   
       LSR            
       STA    NUSIZ1  
       LDA    #$10    
       STA    HMP1    
       LDA    $8E     
       STA    WSYNC   
       STA    HMOVE   
       STA    COLUBK  
       LDA    #$D0    
       EOR    $85     
       AND    $86     
       STA    COLUP0  
       STA    COLUP1  
       STA.w  $002B   
       JSR    LF948   
       LDA    #$07    
       STA    $B1     
LF358: LDY.w  $00B1   
       LDA    ($DB),Y 
       LSR            
       TAX            
       STA    HMCLR   
       LDA    ($D5),Y 
       STA    GRP0    
       LDA    ($DD),Y 
       AND    #$FE    
       STA    HMOVE   
       STA    $FC     
       LDA    ($D7),Y 
       LSR            
       STA    GRP1    
       LDA    ($D9),Y 
       AND    LFFB8,Y 
       LDY    $FC     
       STA    GRP0    
       STX    GRP1    
       STY    GRP0    
       DEC    $B1     
       BPL    LF358   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    WSYNC   
       STA    HMOVE   
       LDA    $8C     
       STA    COLUBK  
       LDA    $8D     
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$03    
       STA    NUSIZ1  
       LSR            
       STA    NUSIZ0  
       LDA    $80     
       ASL            
       ASL            
       ASL            
       ADC    #$08    
       STA    $DF     
       LDA    #$FF    
       STA    $E0     
       LDY    #$07    
LF3B1: LDA    ($DF),Y 
       LSR            
       STA    $FC     
       STA    WSYNC   
       STA    HMOVE   
       LDA    LFFCC,Y 
       STA    GRP0    
       LDA    LFFD4,Y 
       STA    GRP1    
       NOP            
       LDA    LFFE4,Y 
       TAX            
       LDA    LFFDC,Y 
       STA    GRP0    
       STX    GRP1    
       LDA    $FC     
       STA    GRP1    
       DEY            
       BPL    LF3B1   
       LDA    #$3F    
       STA    WSYNC   
       STA    TIM64T  
       STX    GRP1    
       LDA    #$02    
       STA    VBLANK  
       LDX    #$1F    
LF3E6: LDA    LF9A0,X 
       CMP    #$10    
       BCC    LF3EF   
       EOR    #$A0    
LF3EF: EOR    $85     
       AND    $86     
       STA    $8F,X   
       DEX            
       BPL    LF3E6   
       LDA    $F2     
       ORA    $F3     
       BNE    LF419   
       LDX    #$02    
LF400: TXA            
       ASL            
       ASL            
       TAY            
       LDA    $EB,X   
       AND    #$F0    
       LSR            
       STA.wy $00D5,Y 
       LDA    $EB,X   
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA.wy $00D7,Y 
       DEX            
       BPL    LF400   
LF419: LDA    VBLANK  
       BPL    LF429   
       LDA    $F3     
       BEQ    LF429   
       LDA    #$00    
       STA    $EF     
       LDA    #$8F    
       STA    $EA     
LF429: LDA    $EA     
       BPL    LF431   
       INC    $F2     
       INC    $F1     
LF431: LDX    $E9     
       INX            
       BEQ    LF461   
       LDA    $E2     
       ASL            
       BNE    LF461   
       LDX    $B3     
       BMI    LF461   
       LDA    $C9,X   
       LSR            
       BCC    LF44A   
       LDA    #$08    
       STA    $F4     
       BCS    LF461   
LF44A: LDA    $E8     
LF44C: CMP    #$80    
       ROL            
       CMP    #$80    
       ROL            
       DEX            
       BPL    LF44C   
       AND    #$03    
       TAY            
       LDA    LFB4A,Y 
       STA    $EF     
       LDA    #$0F    
       STA    $EA     
LF461: LDA    $F4     
       BEQ    LF467   
       DEC    $F4     
LF467: LDY    #$00    
       STY    $DF     
       LDA    $E2     
       ASL            
       BNE    LF4A5   
       LDA    $E9     
       CMP    #$FE    
       BCS    LF4A5   
       LDX    #$04    
LF478: LDA    $C8,X   
       LSR            
       BCS    LF494   
       LDA    $E3,X   
       BEQ    LF494   
       BMI    LF494   
       AND    #$7F    
       CMP    #$40    
       BCC    LF48B   
       EOR    #$7F    
LF48B: CLC            
       ADC    $DF     
       BPL    LF492   
       LDA    #$7F    
LF492: STA    $DF     
LF494: DEX            
       BNE    LF478   
       LDA    $DF     
       LSR            
       LSR            
       LSR            
       LSR            
       STA    AUDV1   
       LDA    #$10    
       STA    AUDF1   
       LDY    #$03    
LF4A5: STY    AUDC1   
       LDA    $E2     
       ASL            
       BNE    LF4B9   
       LDA    $EF     
       BEQ    LF4B9   
       LDA    $F4     
       BEQ    LF4B9   
       LDA    #$04    
       JSR    LF8E4   
LF4B9: LDY    #$00    
       LDA    $E1     
       BMI    LF4F7   
       LDA    $E2     
       ASL            
       BNE    LF4F7   
       LDA    $84     
       AND    #$04    
       BNE    LF4DF   
       STA    $F5     
       DEC    $EF     
       BPL    LF4D3   
       STA    $EF     
       TAY            
LF4D3: BEQ    LF4DF   
       LDA    #$06    
       STA    AUDV0   
       LDA    $81     
       AND    #$01    
       BPL    LF4F3   
LF4DF: LDY    #$01    
       LDA    REFP1   
       BMI    LF4E7   
       LDY    #$03    
LF4E7: STY    AUDV0   
       LDA    $EF     
       LSR            
       AND    #$0F    
       EOR    #$0F    
       CLC            
       ADC    #$0D    
LF4F3: STA    AUDF0   
       LDY    #$03    
LF4F7: STY    AUDC0   
       LDA    $B2     
       BPL    LF50E   
       LDA    #$06    
       JSR    LF8E4   
       LDY    #$63    
       LDA    $AF     
       CMP    #$55    
       BCS    LF50C   
       LDY    #$47    
LF50C: STY    $AF     
LF50E: LDA    $EA     
       AND    #$0F    
       BEQ    LF526   
       LDA    #$00    
       STA    $F4     
       DEC    $EA     
       LDA    $EA     
       STA    AUDV1   
       LDA    #$08    
       STA    AUDF1   
       STA    AUDC1   
       BNE    LF528   
LF526: STA    $EA     
LF528: LDA    $F3     
       ORA    $F2     
       BNE    LF546   
       LDA    $E9     
       CMP    #$C1    
       BCS    LF546   
       AND    #$3F    
       BNE    LF546   
       LDA    $F1     
       AND    #$10    
       CMP    #$10    
       BNE    LF546   
       INC    $F3     
       LDA    #$9F    
       STA    $F2     
LF546: LDA    $E9     
       CMP    #$FF    
       BNE    LF554   
       LDY    $F1     
       CPY    #$30    
       BCS    LF554   
       STA    $E2     
LF554: LDA    $E2     
       CMP    #$80    
       BNE    LF598   
       INC    $D0     
       LDX    $D0     
       INX            
       BNE    LF565   
       LDA    #$FC    
       STA    $D0     
LF565: LDA    $EE     
       CLC            
       ADC    #$AF    
       STA    $EE     
       SED            
       LDA    $ED     
       ADC    #$16    
       STA    $ED     
       LDA    $EC     
       ADC    #$00    
       STA    $EC     
       LDA    $EB     
       ADC    #$00    
       STA    $EB     
       AND    #$0F    
       CMP    #$06    
       BCC    LF597   
       LDA    $EB     
       ADC    #$03    
       BCC    LF595   
       LDA    #$99    
       STA    $ED     
       STA    $EC     
       LDA    #$95    
       STA    $E2     
LF595: STA    $EB     
LF597: CLD            
LF598: LDA    $F3     
       ORA    $F2     
       BNE    LF5ED   
       LDA    $E9     
       AND    #$3F    
       BEQ    LF5ED   
       CMP    #$3D    
       BCS    LF5ED   
       LDA    $82     
       AND    #$78    
       STA    $DF     
       LDA    $F1     
       AND    #$78    
       CMP    $DF     
       BNE    LF5ED   
       LDY    $80     
       LDA    $82     
       EOR    LFB4E,Y 
       STA    $DF     
       AND    #$03    
       TAX            
       LDA    $E4,X   
       BNE    LF5ED   
       LDA    #$B6    
       STA    $E4,X   
       LDA    $E9     
       AND    #$3F    
       CMP    #$38    
       BCS    LF5DA   
       LDA    $DF     
       AND    #$9C    
       CMP    #$9C    
       BNE    LF5DE   
LF5DA: LDA    #$01    
       STA    $C9,X   
LF5DE: JSR    LF8D9   
       LDA    $82     
       EOR    LFB4E,Y 
       AND    LFFB4,X 
       EOR    $E8     
       STA    $E8     
LF5ED: LDA    INTIM   
       BNE    LF5ED   
       LDY    #$82    
       STY    WSYNC   
       STY    VBLANK  
       STY    VSYNC   
       STY    WSYNC   
       STY    WSYNC   
       STY    WSYNC   
       STA    VSYNC   
       INC    $81     
       BNE    LF60D   
       INC    $E1     
       BNE    LF60D   
       SEC            
       ROR    $E1     
LF60D: LDY    #$FF    
       LDA    SWCHB   
       AND    #$08    
       BNE    LF618   
       LDY    #$0F    
LF618: TYA            
       LDY    #$00    
       BIT    $E1     
       BPL    LF623   
LF61F: AND    #$F7    
       LDY    $E1     
LF623: STY    $85     
       ASL    $85     
       STA    $86     
       LDA    #$50    
       STA    WSYNC   
       STA    TIM64T  
       LDA    SWCHA   
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $84     
       CMP    #$0F    
       BEQ    LF641   
       LDA    #$00    
       STA    $E1     
LF641: LDA    SWCHB   
       LSR            
       BCS    LF651   
       LDX    $80     
       INX            
       STX    $82     
       LDX    #$E1    
       JMP    LF004   
LF651: LDY    #$00    
       LSR            
       BCS    LF674   
       LDA    $83     
       BEQ    LF65E   
       DEC    $83     
       BPL    LF676   
LF65E: INC    $80     
LF660: LDA    $80     
       AND    #$03    
       STA    $80     
       STA    $E1     
       LDA    #$AA    
       STA    $EB     
       STA    $EC     
       STA    $ED     
       LDY    #$1E    
       STA    $E2     
LF674: STY    $83     
LF676: LDA    $E2     
       AND    #$7F    
       BEQ    LF67F   
       JMP    LF80D   
LF67F: LDA    $E2     
       CMP    #$80    
       BEQ    LF691   
       LDA    REFP1   
       BMI    LF691   
       LDA    #$80    
       STA    $E2     
       LDA    #$00    
       STA    $81     
LF691: LDA    $81     
       AND    #$07    
       BNE    LF6A9   
       BIT    REFP1   
       BPL    LF6A5   
       DEC    $EF     
       BPL    LF6A3   
       LDA    #$00    
       STA    $EF     
LF6A3: BPL    LF6A9   
LF6A5: STA    $E1     
       INC    $EF     
LF6A9: LDA    $EF     
       BPL    LF6B1   
       LDA    #$7F    
       STA    $EF     
LF6B1: LDA    $84     
       AND    #$03    
       CMP    #$03    
       LDA    $EF     
       BCS    LF6C6   
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $DF     
       SEC            
       LDA    $EF     
       SBC    $DF     
LF6C6: STA    $E0     
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $DF     
       LDA    $E0     
       AND    #$0F    
       CLC            
       ADC    $F0     
       CMP    #$10    
       BCC    LF6DB   
       INC    $DF     
LF6DB: AND    #$0F    
       STA    $F0     
       LDA    $F1     
       SEC            
       SBC    $DF     
       STA    $F1     
       CMP    #$B0    
       BCC    LF6F4   
       SBC    #$60    
       STA    $F1     
       INC    $E9     
       BNE    LF6F4   
       DEC    $E9     
LF6F4: LDA    $DF     
       BEQ    LF704   
       INC    $F5     
       LDA    $F5     
       CMP    #$03    
       BCC    LF702   
       LDA    #$00    
LF702: STA    $F5     
LF704: LDA    $F5     
       CLC            
       ADC    #$FC    
       STA    $CE     
       LDA    $E8     
       STA    $FC     
       LDX    #$04    
LF711: LDA    $FC     
       AND    #$03    
       STA    $E0     
       LDA    $E9     
       AND    #$3F    
       CMP    #$3E    
       BCC    LF725   
       LDA    #$00    
       STA    $E0     
       STA    $FC     
LF725: LDA    $DF     
       SBC    $E0     
       STA    $E0     
       LDA    $C8,X   
       LSR            
       BCC    LF734   
       LDA    $DF     
       STA    $E0     
LF734: LDA    $E3,X   
       BEQ    LF751   
       SEC            
       SBC    $E0     
       BEQ    LF745   
       CMP    #$B7    
       BCC    LF751   
       CMP    #$F0    
       BCC    LF74D   
LF745: LDA    $82     
       AND    #$60    
       ADC    #$5F    
       STA    $BE,X   
LF74D: LDA    #$00    
       STA    $C8,X   
LF751: STA    $E3,X   
       LDA    $FC     
       LSR            
       LSR            
       STA    $FC     
       DEX            
       BNE    LF711   
       LDA    $F2     
       ORA    $F3     
       BEQ    LF77B   
       LDA    $F2     
       SEC            
       SBC    $DF     
       STA    $F2     
       BCS    LF77B   
       LDA    #$9F    
       STA    $F2     
       DEC    $F3     
       BPL    LF77B   
       LDA    #$00    
       STA    $F2     
       STA    $F3     
       INC    $E9     
LF77B: LDA    $F4     
       BEQ    LF794   
       LDA    $84     
       AND    #$0C    
       STA    $84     
       LDY    #$02    
       LDA    $81     
       AND    #$20    
       BEQ    LF78F   
       LDY    #$01    
LF78F: TYA            
       ORA    $84     
       STA    $84     
LF794: LDA    $EA     
       AND    #$0F    
       BEQ    LF7AC   
       LSR            
       BCC    LF79F   
       EOR    #$FF    
LF79F: LDY    $AF     
       CPY    #$55    
       BCC    LF7A7   
       EOR    #$FF    
LF7A7: CLC            
       ADC    $AF     
       STA    $AF     
LF7AC: LDA    $DF     
       CMP    #$03    
       BCC    LF7B4   
       LDA    #$03    
LF7B4: STA    $DF     
       LDA    $84     
       LSR            
       BCS    LF7C5   
       LDA    $AF     
       SEC            
       SBC    $DF     
       STA    $AF     
       JMP    LF7CE   
LF7C5: LSR            
       BCS    LF7CE   
       LDA    $AF     
       ADC    $DF     
       STA    $AF     
LF7CE: LDA    $AF     
       CMP    #$8C    
       BCC    LF7D6   
       LDA    #$8C    
LF7D6: CMP    #$1E    
       BCS    LF7DC   
       LDA    #$1E    
LF7DC: STA    $AF     
       LDX    #$05    
       LDA    #$00    
LF7E2: STA    $F6,X   
       DEX            
       BPL    LF7E2   
       LDA    $F2     
       LSR            
       LSR            
       LSR            
       TAY            
       LDX    LFF92,Y 
       LDA    LF94C,Y 
LF7F3: STA    $F6,X   
       LDA    #$FF    
       INX            
       CPX    #$06    
       BCC    LF7F3   
       DEX            
       LDY    #$00    
       LDA    $F3     
       LSR            
       BCS    LF805   
       DEY            
LF805: TYA            
       EOR    $F6,X   
       STA    $F6,X   
       DEX            
       BPL    LF805   
LF80D: LDA    $F1     
       AND    #$1F    
       CLC            
       ADC    #$44    
       STA    $E3     
       LDA    $F1     
       JSR    LF947   
       PHP            
       EOR    #$F0    
       CLC            
       ADC    #$80    
       PLP            
       ROR            
       STA    $B0     
       LDA    $E9     
       AND    #$3F    
       CMP    #$3E    
       BCC    LF831   
       LDA    #$FC    
       STA    $D0     
LF831: LDX    #$04    
LF833: LDA    #$60    
       STA    $B9,X   
       LDA    #$00    
       STA    $B4,X   
       LDA    $E3,X   
       STA    $DF     
       CPX    #$00    
       BEQ    LF898   
       LDY    $E1     
       BPL    LF84D   
       LDA    #$00    
       STA    $DF     
       BEQ    LF859   
LF84D: LDY    $E9     
       INY            
       BNE    LF859   
       LDA    $F1     
       STA    $E3,X   
       JMP    LF898   
LF859: LDA    $DF     
       SBC    #$18    
       CMP    #$E2    
       BCC    LF87F   
       LDA    $DF     
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    LFFC0,Y 
       STA    $B4,X   
       LDA    LFFC3,Y 
       STA    $B9,X   
       LDA    $C8,X   
       LSR            
       LDA    $DF     
       AND    #$07    
       BCC    LF87C   
       LDA    #$00    
LF87C: JMP    LF898   
LF87F: CMP    #$88    
       BCC    LF898   
       SBC    #$88    
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    LFFC6,Y 
       STA    $B4,X   
       LDA    LFFC9,Y 
       STA    $B9,X   
       LDA    $DF     
       SEC            
       SBC    #$18    
LF898: JSR    LF92D   
       LSR            
       LSR    $C8,X   
       ROL            
       STA    $C8,X   
       DEY            
       DEY            
       DEY            
       STY    $C3,X   
       LDA    $E9     
       CMP    #$FF    
       BNE    LF8BF   
       LDA    #$60    
       STA    $B4,X   
       LDA    #$E0    
       STA    $BE,X   
       LDA    #$E0    
       STA    $B9,X   
       LDA    #$FF    
       STA    $D0     
       JMP    LF8D0   
LF8BF: LDA    $C8,X   
       LSR            
       BCC    LF8D0   
       LDA    #$E0    
       STA    $B4,X   
       LDA    #$E0    
       STA    $BE,X   
       LDA    #$E0    
       STA    $B9,X   
LF8D0: DEX            
       BMI    LF8D6   
       JMP    LF833   
LF8D6: JMP    LF01E   
LF8D9: LDA    $82     
       ASL            
       ASL            
       ASL            
       EOR    $82     
       ASL            
       ROL    $82     
       RTS            

LF8E4: STA    AUDV1   
       LDY    #$01    
       LDA    $81     
       LSR            
       BCC    LF8EF   
       LDY    #$02    
LF8EF: STY    AUDF1   
       LDA    #$03    
       STA    AUDC1   
       RTS            

LF8F6: LDX    #$13    
LF8F8: LDA    LFF80,X 
       STA    $CD,X   
       DEX            
       BPL    LF8F8   
       LDA    #$55    
       STA    $AF     
       LDA    #$38    
       STA    $B0     
       LDX    #$04    
LF90A: LDA    LFFA6,X 
       STA    $C3,X   
       LDA    LFFAB,X 
       STA    $C8,X   
       LDA    LFB5B,X 
       STA    $BE,X   
       LDA    #$E0    
       STA    $B9,X   
       DEX            
       BPL    LF90A   
       LDX    $80     
       LDA    LFFB0,X 
       STA    $E9     
       RTS            

LF928: STA    WSYNC   
       STA    HMOVE   
       RTS            

LF92D: CLC            
       ADC    #$2E    
       TAY            
       AND    #$0F    
       STA    $DF     
       TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       CLC            
       ADC    $DF     
       CMP    #$0F    
       BCC    LF945   
       SBC    #$0F    
       INY            
LF945: EOR    #$07    
LF947: ASL            
LF948: ASL            
       ASL            
LF94A: ASL            
LF94B: RTS            

LF94C: .byte $C0,$FF,$3F,$0F,$03,$FF,$FC,$F0,$C0,$F0,$C0,$FF,$3F,$0F,$03,$FF
       .byte $FC,$F0,$C0,$00,$00,$00,$00,$00,$00,$00,$00,$00,$0E,$20,$22,$24
       .byte $26,$28,$00,$0A,$0A,$00,$28,$26,$24,$22,$20,$0E,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$0E,$50,$52,$54
       .byte $56,$58,$00,$A2,$A2,$00,$58,$56,$54,$52,$50,$0E,$00,$00,$00,$00
       .byte $00,$00,$00,$00
LF9A0: .byte $00,$00,$00,$00,$00,$00,$00,$00,$0E,$C0,$C2,$C4,$C6,$C8,$00,$62
       .byte $62,$00,$C8,$C6,$C4,$C2,$C0,$0E,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$0E,$20,$42,$64,$86,$A8,$00,$28
       .byte $28,$00,$A8,$86,$64,$42,$20,$0E,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
LFA00: STA    WSYNC   
       BPL    LFA12   
       STX.w  $00B3   
LFA07: JSR    LF94A   
       LDA    #$00    
       STA    GRP0    
       BEQ    LFA5C   
LFA10: BPL    LFA4E   
LFA12: BPL    LFA07   
LFA14: LDA    $AF     
       CMP    #$1E    
       STA    WSYNC   
       BNE    LFA20   
       LDA    #$1F    
       STA    GRP0    
LFA20: LDA    $8B     
       STA    COLUBK  
       LDA    #$00    
       STA    ENAM1   
       STA    COLUPF  
       LDA    #$04    
       STA    $B1     
       LDY    $AF     
LFA30: LDX    $B1     
       DEC    $B1     
       LDA    $B4,X   
       STA    $CF     
       LDA    $B9,X   
       STA    $D1     
       LDA    $BE,X   
       STA    $D3     
       DEY            
       CPY    #$20    
       LDA    COLUP1  
       BCS    LFA00   
       STA    WSYNC   
       BPL    LFA10   
       STX.w  $00B3   
LFA4E: LDA    LFB60,Y 
       STA    NUSIZ0  
       LDA    ($CD),Y 
       STA    GRP0    
       LDA.wy $008F,Y 
       STA    COLUP0  
LFA5C: LDA    $C8,X   
       STA    $E0     
       LDA    $C3,X   
       TAX            
       DEY            
       CPY    #$20    
       BCS    LFADC   
       LDA    ($CD),Y 
       STA    GRP0    
       LDA    LFB60,Y 
       STA    NUSIZ0  
       LDA.wy $008F,Y 
       STA    COLUP0  
LFA76: DEY            
       CPY    #$20    
       LDA    $E0     
       BCS    LFAE6   
       STA    CXCLR   
       STA    HMP1    
       LDA    ($CD),Y 
       CPX    #$06    
LFA85: DEX            
       BPL    LFA85   
       STA.w  $0011   
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       LDA.wy $008F,Y 
       STA    COLUP0  
       LDA    LFB60,Y 
       STA    NUSIZ0  
LFA9B: LDA    $B1     
       BMI    LFAD4   
       BCS    LFB0D   
       LDX    #$1E    
LFAA3: DEY            
       CPY    #$20    
       BCS    LFB03   
       LDA    ($CD),Y 
       STA    GRP0    
       LDA    LFB60,Y 
       STA    NUSIZ0  
       LDA.wy $008F,Y 
       STA    COLUP0  
LFAB6: STY    $DF     
       TXA            
       TAY            
       LDA    ($D1),Y 
       STA    NUSIZ1  
       STA    HMP1    
       STA    HMOVE   
       LDA    ($CF),Y 
       STA    GRP1    
       LDA    ($D3),Y 
       AND    $86     
       STA    COLUP1  
       LDY    $DF     
       DEX            
       BPL    LFAA3   
       JMP    LFA30   
LFAD4: JSR    LF948   
       STA    HMCLR   
       JMP    LF289   
LFADC: LDA    #$00    
       STA.w  $001B   
       JSR    LF94B   
       BEQ    LFA76   
LFAE6: NOP            
       STA    HMP1    
       LDA    ($CD),Y 
       CPX    #$06    
LFAED: DEX            
       BPL    LFAED   
       STA.w  $0011   
       STA    WSYNC   
       STA    HMOVE   
       STA    CXCLR   
       NOP            
       NOP            
       NOP            
       LDA    #$00    
       STA    GRP0    
       JMP    LFA9B   
LFB03: JSR    LF94B   
       LDA    #$00    
       STA    GRP0    
       JMP    LFAB6   
LFB0D: LDX    #$1E    
LFB0F: DEY            
       CPY    #$20    
       BCS    LFB40   
       LDA    ($CD),Y 
       STA    GRP0    
       LDA    LFB60,Y 
       STA    NUSIZ0  
       LDA.wy $008F,Y 
       STA    COLUP0  
LFB22: STY    $DF     
       TXA            
       TAY            
       LDA    ($D1),Y 
       STA    HMP1    
       STA    HMOVE   
       STA    NUSIZ1  
       LDA    ($CF),Y 
       STA    GRP1    
       LDA    ($D3),Y 
       AND    $86     
       STA    COLUP1  
       LDY    $DF     
LFB3A: DEX            
       BPL    LFB0F   
       JMP    LFA30   
LFB40: JSR    LF94B   
       LDA    #$00    
       STA.w  $001B   
       BEQ    LFB22   
LFB4A: PHP            
       BPL    LFB6D   
       BMI    LFB66   
       LSR    $92     
       BRK            
LFB52: STA    HMP0,X  
       STA    WSYNC   
LFB56: DEY            
       BPL    LFB56   
       STA    RESP0,X 
LFB5B: RTS            

LFB5C: .byte $60,$80,$A0,$C0
LFB60: .byte $00,$00,$00,$00,$00,$01
LFB66: ORA    ($01,X) 
       SBC    ($11),Y 
       .byte $07 ;.SLO
       .byte $07 ;.SLO
       .byte $07 ;.SLO
LFB6D: .byte $07 ;.SLO
       .byte $07 ;.SLO
       .byte $07 ;.SLO
       .byte $07 ;.SLO
       .byte $07 ;.SLO
       .byte $07 ;.SLO
       .byte $07 ;.SLO
       .byte $07 ;.SLO
       .byte $F7 ;.ISB
       ORA    ($01),Y 
       ORA    ($01,X) 
       ORA    ($00,X) 
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BEQ    LFB9A   
       .byte $07 ;.SLO
       .byte $07 ;.SLO
       .byte $07 ;.SLO
       .byte $07 ;.SLO
       .byte $07 ;.SLO
       .byte $07 ;.SLO
       .byte $07 ;.SLO
       .byte $07 ;.SLO
       .byte $07 ;.SLO
       .byte $07 ;.SLO
       .byte $07 ;.SLO
       .byte $F7 ;.ISB
       BPL    LFB98   
LFB98: BRK            
       BRK            
LFB9A: BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BEQ    LFB3A   
       .byte $07 ;.SLO
       .byte $07 ;.SLO
       .byte $07 ;.SLO
       .byte $07 ;.SLO
       .byte $07 ;.SLO
       .byte $07 ;.SLO
       .byte $07 ;.SLO
       .byte $07 ;.SLO
       .byte $07 ;.SLO
       .byte $07 ;.SLO
       .byte $07 ;.SLO
       .byte $77 ;.RRA
       BPL    LFBB8   
LFBB8: BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       .byte $80 ;.NOP
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BEQ    LFBDA   
       ORA    NUSIZ1  
       ORA    NUSIZ1  
       ORA    NUSIZ1  
       ORA    NUSIZ1  
       ORA    NUSIZ1  
       ORA    $F5     
       BPL    LFBD8   
LFBD8: BRK            
       BRK            
LFBDA: BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       .byte $1F ;.SLO
       ASL    ENABL,X 
       ORA    $161F   
       .byte $1F ;.SLO
       .byte $04 ;.NOP
       .byte $0F ;.SLO
       .byte $FC ;.NOP
       .byte $FC ;.NOP
       INC    $DEDE,X 
       DEC    $DEDE,X 
       DEC    LFCFE,X 
       .byte $FC ;.NOP
       .byte $0F ;.SLO
       .byte $04 ;.NOP
       .byte $1F ;.SLO
       ASL    ENABL,X 
       ORA    $161F   
LFC1E: .byte $1F ;.SLO
       BRK            
LFC20: BRK            
       .byte $1F ;.SLO
LFC22: ASL    ENABL,X 
       ORA    $161F   
       .byte $1F ;.SLO
       .byte $04 ;.NOP
       .byte $0F ;.SLO
       .byte $FC ;.NOP
       .byte $FC ;.NOP
       .byte $FC ;.NOP
       .byte $DC ;.NOP
       .byte $DC ;.NOP
       .byte $DC ;.NOP
       .byte $DC ;.NOP
       .byte $DC ;.NOP
       .byte $DC ;.NOP
       .byte $FC ;.NOP
       .byte $FC ;.NOP
       SED            
       .byte $0F ;.SLO
       .byte $04 ;.NOP
       .byte $1F ;.SLO
       ASL    ENABL,X 
       ORA    $161F   
       .byte $1F ;.SLO
       BRK            
       BRK            
       .byte $1F ;.SLO
       ASL    ENABL,X 
LFC44: ORA    $161F   
       .byte $1F ;.SLO
       .byte $04 ;.NOP
       .byte $0F ;.SLO
       BEQ    LFC3C   
       BEQ    LFC1E   
       BNE    LFC20   
       BNE    LFC22   
       BNE    LFC44   
       BEQ    LFC46   
       .byte $0F ;.SLO
       .byte $04 ;.NOP
       .byte $1F ;.SLO
       ASL    ENABL,X 
       ORA    $161F   
       .byte $1F ;.SLO
       BRK            
       BRK            
       .byte $1F ;.SLO
       ASL    ENABL,X 
       ORA    $161F   
       .byte $1F ;.SLO
       .byte $04 ;.NOP
       .byte $0F ;.SLO
       CPY    #$C0    
       CPY    #$C0    
       CPY    #$C0    
       CPY    #$C0    
       CPY    #$C0    
       CPY    #$C0    
       .byte $0F ;.SLO
       .byte $04 ;.NOP
       .byte $1F ;.SLO
       ASL    ENABL,X 
       ORA    $161F   
       .byte $1F ;.SLO
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       .byte $1F ;.SLO
LFC86: ASL    ENABL,X 
       .byte $04 ;.NOP
       .byte $0F ;.SLO
       BEQ    LFC7C   
       SED            
       SEI            
       SEI            
       SEI            
       SEI            
       SEI            
       SEI            
       SED            
       BEQ    LFC86   
       .byte $0F ;.SLO
       .byte $04 ;.NOP
       .byte $1F ;.SLO
       ASL    ENABL,X 
       BRK            
LFC9C: BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       .byte $1F ;.SLO
LFCA6: ASL    ENABL,X 
       .byte $04 ;.NOP
       .byte $0F ;.SLO
       BEQ    LFC9C   
       .byte $FC ;.NOP
       .byte $FC ;.NOP
       .byte $FC ;.NOP
       .byte $FC ;.NOP
       .byte $FC ;.NOP
       .byte $FC ;.NOP
       .byte $FC ;.NOP
       .byte $FC ;.NOP
       BEQ    LFCA6   
       .byte $0F ;.SLO
       .byte $04 ;.NOP
       .byte $1F ;.SLO
       ASL    ENABL,X 
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       .byte $80 ;.NOP
       .byte $80 ;.NOP
       SED            
       SED            
       SED            
       SED            
       SED            
       SED            
       SED            
       SED            
       .byte $80 ;.NOP
       .byte $80 ;.NOP
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       RTI            

LFCE9: .byte $99,$3C,$7E,$EA,$9D,$FF,$77,$AE,$7C,$70,$01,$88,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00
LFCFE: .byte $00,$00,$00,$1F,$1B,$1F,$16,$1F,$1B,$1F,$04,$0F,$FC,$FC,$FE,$DE
       .byte $DE,$DE,$DE,$DE,$DE,$FE,$FC,$FC,$0F,$04,$1F,$1B,$1F,$16,$1F,$1B
       .byte $1F,$00,$00,$1F,$1B,$1F,$16,$1F,$1B,$1F,$04,$0F,$FC,$FC,$FC,$DC
       .byte $DC,$DC,$DC,$DC,$DC,$FC,$FC,$F8,$0F,$04,$1F,$1B,$1F,$16,$1F,$1B
       .byte $1F,$00,$00,$1F,$1B,$1F,$16,$1F,$1B,$1F,$04,$0F,$F0,$F0,$F0,$D0
       .byte $D0,$D0,$D0,$D0,$D0,$F0,$F0,$F0,$0F,$04,$1F,$1B,$1F,$16,$1F,$1B
       .byte $1F,$00,$00,$1F,$1B,$1F,$16,$1F,$1B,$1F,$04,$0F,$C0,$C0,$C0,$C0
       .byte $C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0,$0F,$04,$1F,$1B,$1F,$16,$1F,$1B
       .byte $1F,$00,$00,$00,$00,$00,$00,$1F,$1B,$1F,$04,$0F,$F0,$F0,$F8,$78
       .byte $78,$78,$78,$78,$78,$F8,$F0,$F0,$0F,$04,$1F,$1B,$1F,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$1F,$1B,$1F,$04,$0F,$F0,$F0,$FC,$FC
       .byte $FC,$FC,$FC,$FC,$FC,$FC,$F0,$F0,$0F,$04,$1F,$1B,$1F,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$80,$F8,$F8
       .byte $F8,$F8,$F8,$F8,$F8,$F8,$80,$80,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$40,$99,$3C,$7E,$EA,$9D
       .byte $FF,$77,$AE,$7C,$70,$01,$88,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$1F,$0D,$1F,$1B,$1F,$0D,$1F,$04,$0F,$FC,$FC,$FE,$DE
       .byte $DE,$DE,$DE,$DE,$DE,$FE,$FC,$FC,$0F,$04,$1F,$0D,$1F,$1B,$1F,$0D
       .byte $1F,$00,$00,$1F,$0D,$1F,$1B,$1F,$0D,$1F,$04,$0F,$FC,$FC,$FC,$DC
       .byte $DC,$DC,$DC,$DC,$DC,$FC,$FC,$F8,$0F,$04,$1F,$0D,$1F,$1B,$1F,$0D
       .byte $1F,$00,$00,$1F,$0D,$1F,$1B,$1F,$0D,$1F,$04,$0F,$F0,$F0,$F0,$D0
       .byte $D0,$D0,$D0,$D0,$D0,$F0,$F0,$F0,$0F,$04,$1F,$0D,$1F,$1B,$1F,$0D
       .byte $1F,$00,$00,$1F,$0D,$1F,$1B,$1F,$0D,$1F,$04,$0F,$C0,$C0,$C0,$C0
       .byte $C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0,$0F,$04,$1F,$0D,$1F,$1B,$1F,$0D
       .byte $1F,$00,$00,$00,$00,$00,$00,$1F,$0D,$1F,$04,$0F,$F0,$F0,$F8,$78
       .byte $78,$78,$78,$78,$78,$F8,$F0,$F0,$0F,$04,$1F,$0D,$1F,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$1F,$0D,$1F,$04,$0F,$F0,$F0,$FC,$FC
       .byte $FC,$FC,$FC,$FC,$FC,$FC,$F0,$F0,$0F,$04,$1F,$0D,$1F,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$80,$F8,$F8
       .byte $F8,$F8,$F8,$F8,$F8,$F8,$80,$80,$00,$00,$00,$00,$00,$00,$00,$00
LFEDE: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$40,$99,$3C,$7E,$EA,$9D
       .byte $FF,$77,$AE,$7C,$70,$01,$88,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$79,$CD,$CD,$CC,$CC,$CD,$CD,$79,$79,$31,$31,$30,$30,$31
       .byte $71,$31,$FD,$C1,$C1,$78,$0C,$0D,$8D,$79,$79,$8D,$0D,$18,$18,$0D
       .byte $8D,$79,$19,$19,$19,$FC,$98,$59,$39,$19,$F9,$8D,$0D,$0C,$F8,$C1
       .byte $C1,$FD,$79,$CD,$CD,$CC,$F8,$C1,$C5,$79,$31,$31,$31,$30,$18,$0D
       .byte $85,$FD,$79,$CD,$CD,$78,$78,$CD,$CD,$79,$79,$8D,$0D,$7C,$CC,$CD
       .byte $CD,$79,$00,$00,$00,$00,$00,$00,$00,$00
LFF58: .byte $54,$54,$B4,$28,$06,$00,$68,$56,$00,$00,$00,$00,$00,$08,$14,$2A
       .byte $55,$AA,$54,$28,$10,$08,$05,$02,$05,$08,$10,$28,$54,$AA,$55,$2A
       .byte $14,$08,$00,$00,$00,$00,$00,$00
LFF80: .byte $00,$FC,$00,$FC,$60,$FB,$60,$F9,$00,$FF,$00,$FF,$00,$FF,$00,$FF
       .byte $00,$FF
LFF92: .byte $00,$01,$01,$01,$01,$02,$02,$02,$02,$03,$03,$04,$04,$04,$04,$05
       .byte $05,$05,$05,$05
LFFA6: .byte $04,$00,$00,$00,$00
LFFAB: .byte $E0,$60,$60,$60,$60
LFFB0: .byte $C0,$80,$40,$00
LFFB4: .byte $C0,$30,$0C,$03
LFFB8: .byte $FF,$FF,$FF,$FF,$FE,$FE,$FE,$FE
LFFC0: .byte $C0,$A0,$80
LFFC3: .byte $E0,$C0,$A0
LFFC6: .byte $20,$40,$60
LFFC9: .byte $60,$80,$80
LFFCC: .byte $00,$00,$00,$00,$00,$00,$00,$00
LFFD4: .byte $00,$00,$00,$00,$00,$00,$00,$00
LFFDC: .byte $00,$00,$00,$00,$00,$00,$00,$00
LFFE4: .byte $00,$00,$00,$00,$00,$00,$00,$00
LFFEC: .byte $00,$00,$38,$7E,$6F,$DF,$DA,$ED,$7B,$7B,$37,$3E,$18,$00,$00,$00
       .byte $00,$F0,$00,$00
