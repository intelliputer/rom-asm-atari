; Disassembly of roms/Revenge of the Beefsteak Tomatoes.bin
; Disassembled Tue Oct  6 15:22:42 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Revenge of the Beefsteak Tomatoes.bin
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
REFP0   =  $0B
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
CXM0P   =  $30
CXM1P   =  $31
CXM0FB  =  $34
CXPPMM  =  $37
INPT4   =  $3C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296

       ORG $F000

START:
       SEI            
       CLD            
       LDX    #$FF    
       TXS            
       LDX    #$00    
       LDA    #$00    
LF009: DEX            
       STA    VSYNC,X 
       BNE    LF009   
       LDA    #$06    
       STA    $80     
       JSR    LF9E4   
LF015: LDA    #$02    
       STA    VBLANK  
       STA    WSYNC   
       STA    VSYNC   
       LDA    $C3     
       ASL            
       EOR    $C3     
       ASL            
       EOR    $C3     
       ASL            
       ASL            
       EOR    $C3     
       ASL            
       ROL    $C3     
       LDX    #$FF    
       LDA    SWCHB   
       AND    #$08    
       BNE    LF037   
       LDX    #$0F    
LF037: STX    $9C     
       STA    WSYNC   
       INC    $AA     
       BNE    LF046   
       INC    $AB     
       BNE    LF046   
       SEC            
       ROR    $AB     
LF046: LDX    #$00    
       STX    AUDC1   
       LDA    SWCHA   
       EOR    #$FF    
       BEQ    LF053   
       STX    $AB     
LF053: STX    $9B     
       LDA    $AB     
       BPL    LF061   
       STA    $9B     
       LDA    $9C     
       AND    #$F7    
       STA    $9C     
LF061: STA    WSYNC   
       LDX    #$05    
LF065: LDA    $CC,X   
       EOR    $9B     
       AND    $9C     
       STA    $CC,X   
       DEX            
       BPL    LF065   
       LDA    #$00    
       EOR    $9B     
       AND    $9C     
       STA    COLUBK  
       STA    WSYNC   
       LDA    #$00    
       STA    VSYNC   
       STA    WSYNC   
       LDA    #$2A    
       STA    TIM64T  
       LDA    $9D     
       AND    #$0F    
       BEQ    LF0A9   
       LDA    #$58    
       STA    $DD     
       LDA    #$5F    
       STA    $DF     
       LDA    #$66    
       STA    $E1     
       LDA    #$6D    
       STA    $E3     
       LDA    #$A8    
       STA    $E5     
       LDX    $B0     
       LDA    LFD9C,X 
       STA    $E7     
       JMP    LF20F   
LF0A9: DEC    $B9     
       DEC    $A6     
       DEC    $A7     
       CLC            
       SED            
       LDA    $86     
       ADC    $B0     
       STA    $86     
       LDA    $85     
       ADC    $AF     
       STA    $85     
       LDA    $84     
       ADC    $AE     
       STA    $84     
       CLD            
       LDX    #$0A    
LF0C6: TXA            
       CLC            
       ROR            
       ROR            
       TAY            
       BCS    LF0DA   
       LDA.wy $0084,Y 
       AND    #$F0    
       CLC            
       ROR            
       ROR            
       ROR            
       ROR            
       JMP    LF0DF   
LF0DA: LDA.wy $0084,Y 
       AND    #$0F    
LF0DF: TAY            
       LDA    LFD9C,Y 
       STA    $DD,X   
       DEX            
       DEX            
       BPL    LF0C6   
       LDA    #$00    
       STA    $AE     
       STA    $AF     
       STA    $B0     
       LDX    #$00    
       LDY    #$A8    
LF0F5: LDA    $DD,X   
       CMP    #$3E    
       BNE    LF103   
       STY    $DD,X   
       INX            
       INX            
       CPX    #$0A    
       BNE    LF0F5   
LF103: LDA    $A9     
       BEQ    LF113   
       DEC    $A9     
       STA    AUDV1   
       LDA    #$08    
       STA    AUDC1   
       LDA    #$0F    
       STA    AUDF1   
LF113: LDA    $C4     
       BMI    LF12F   
       ROL            
       BPL    LF12F   
       LDA    $A7     
       CMP    #$6E    
       BCC    LF12F   
       LDA    #$03    
       STA    AUDC1   
       LDA    #$03    
       STA    AUDV1   
       LDA    #$78    
       SEC            
       SBC    $A7     
       STA    AUDF1   
LF12F: LDA    $BA     
       AND    #$F0    
       CMP    #$80    
       BEQ    LF13F   
       LDA    $AD     
       AND    #$0F    
       CMP    #$01    
       BNE    LF15B   
LF13F: LDY    $B3     
       BEQ    LF1A7   
       LDA    #$FD    
       STA    $97     
       LDA    #$AA    
       STA    $96     
       LDA    ($96),Y 
       BEQ    LF1A7   
       STA    AUDF0   
       LDA    #$0C    
       STA    AUDC0   
       LDA    #$03    
       STA    AUDV0   
       BNE    LF1A7   
LF15B: LDA    $B3     
       BEQ    LF16F   
       STA    AUDF0   
       LDA    #$0C    
       STA    AUDC0   
       LDA    #$03    
       STA    AUDV0   
       DEC    $A8     
       LDA    $A8     
       BNE    LF175   
LF16F: LDA    #$00    
       STA    $B3     
       STA    AUDC0   
LF175: LDA    $C4     
       BPL    LF1A7   
       LDA    #$00    
       STA    $DB     
       STA    $D9     
       LDX    #$D9    
       LDA    $A6     
       ROR            
       BCS    LF188   
       LDX    #$CF    
LF188: STX    $BD     
       LDA    #$08    
       STA    AUDC0   
       LDA    #$0F    
       STA    AUDF0   
       STA    AUDV0   
       LDA    $A6     
       CMP    #$10    
       BCS    LF19C   
       STA    AUDV0   
LF19C: CMP    #$30    
       BCC    LF1A7   
       LDA    #$40    
       SEC            
       SBC    $A6     
       STA    AUDF0   
LF1A7: LDA    $B8     
       CMP    #$06    
       BCC    LF1BB   
       LDX    #$01    
       LDY    #$09    
LF1B1: LDA    ($BD),Y 
       STA    $EF,X   
       INX            
       DEY            
       BNE    LF1B1   
       BEQ    LF1C5   
LF1BB: LDY    #$09    
LF1BD: LDA    ($BD),Y 
       STA.wy $00EF,Y 
       DEY            
       BPL    LF1BD   
LF1C5: LDX    #$05    
LF1C7: LDA    $C6,X   
       LDY    #$02    
       SEC            
LF1CC: INY            
       SBC    #$0F    
       BCS    LF1CC   
       EOR    #$FF    
       SBC    #$06    
       ASL            
       ASL            
       ASL            
       ASL            
       STY    $B1     
       CLC            
       ADC    $B1     
       STA    $9E,X   
       DEX            
       BPL    LF1C7   
       LDY    #$02    
LF1E5: LDX    #$07    
LF1E7: LDA    LFD4A,X 
       STA    $96     
       LDA    #$00    
       STA    $97     
       LDA.wy $0098,Y 
       AND    LFD18,X 
       BEQ    LF1FF   
       LDA    ($96),Y 
       ORA    LFD42,X 
       BNE    LF207   
LF1FF: LDA    ($96),Y 
       ORA    LFD42,X 
       EOR    LFD42,X 
LF207: STA    ($96),Y 
       DEX            
       BPL    LF1E7   
       DEY            
       BPL    LF1E5   
LF20F: LDA    INTIM   
       BNE    LF20F   
       STA    VBLANK  
       STA    WSYNC   
       LDA    #$1E    
       STA    TIM64T  
       LDA    $D1     
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$00    
       STA    REFP0   
       STA    HMCLR   
       LDA    #$10    
       STA    HMP1    
       STA    RESP0   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       JSR    LFB31   
       LDA    #$10    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    $80     
       CMP    #$07    
       BCC    LF24E   
       LDA    #$30    
       STA    NUSIZ1  
LF24E: LDX    #$04    
LF250: LDA    $9E,X   
       STA    $B1     
       JSR    LF947   
       DEX            
       BPL    LF250   
       STA    WSYNC   
       STA    HMOVE   
LF25E: LDA    INTIM   
       BNE    LF25E   
       STA    WSYNC   
       LDA    $CE     
       STA    COLUPF  
       LDA    $C4     
       ROR            
       BCS    LF272   
       LDA    #$02    
       STA    ENABL   
LF272: LDA    $CC     
       STA    COLUP0  
       LDA    $CD     
       STA    COLUP1  
       LDY    #$00    
       LDX    #$43    
LF27E: STA    WSYNC   
       CPX    $DA     
       BNE    LF289   
       LDA    #$02    
       JMP    LF28C   
LF289: NOP            
       LDA    #$00    
LF28C: STA    ENAM0   
       LDA    $D9     
       BEQ    LF29D   
       LDA    $B4     
       CMP    #$02    
       BNE    LF29D   
       LDA    ($C1),Y 
       STA    GRP1    
       INY            
LF29D: INX            
       CPX    #$4A    
       BNE    LF27E   
       STA    WSYNC   
       LDA    #$00    
       STA    ENABL   
       LDA    $AC     
       STA    REFP0   
       LDX    #$09    
       LDY    #$4C    
       LDA    #$8E    
       STA    $B1     
       LDA    #$00    
       JSR    LFA40   
       LDA    #$8E    
       SEC            
       SBC    $D8     
       BMI    LF2C9   
       CMP    #$0A    
       BPL    LF2C9   
       LDA    $EF,X   
       STA    GRP0    
       DEX            
LF2C9: LDA    #$00    
       STA    ENAM0   
       LDA    #$2A    
       EOR    $9B     
       AND    $9C     
       STA    COLUPF  
       LDY    #$8F    
       TXA            
       BMI    LF2E0   
       JSR    LFC00   
       JMP    LF2E3   
LF2E0: JSR    LFC6F   
LF2E3: LDY    #$99    
       LDA    #$AC    
       STA    $B1     
       TXA            
       BMI    LF2F4   
       LDA    #$00    
       JSR    LFA40   
       JMP    LF2F9   
LF2F4: LDA    #$00    
       JSR    LFAC5   
LF2F9: LDA    #$AC    
       SEC            
       SBC    $D8     
       BMI    LF309   
       CMP    #$0A    
       BPL    LF309   
       LDA    $EF,X   
       STA    GRP0    
       DEX            
LF309: LDA    #$00    
       STA    ENAM0   
       LDA    #$5A    
       EOR    $9B     
       AND    $9C     
       STA    COLUPF  
       LDY    #$AD    
       TXA            
       BMI    LF320   
       JSR    LFE00   
       JMP    LF323   
LF320: JSR    LFE6F   
LF323: LDY    #$B7    
       LDA    #$CA    
       STA    $B1     
       TXA            
       BMI    LF334   
       LDA    #$00    
       JSR    LFA40   
       JMP    LF339   
LF334: LDA    #$00    
       JSR    LFAC5   
LF339: LDA    #$CA    
       EOR    $9B     
       AND    $9C     
       STA    COLUPF  
       LDY    #$CB    
LF343: STA    WSYNC   
       LDA    #$C0    
       STA    PF0     
       LDA    $89     
       STA    PF1     
       LDA    $8C     
       STA    PF2     
       LDA    #$00    
       CPY    $DA     
       BEQ    LF362   
       CPY    $DB     
       BEQ    LF36C   
       STA    ENAM0   
       STA    ENAM1   
       JMP    LF372   
LF362: NOP            
       STA    ENAM1   
       LDA    #$02    
       STA    ENAM0   
       JMP    LF372   
LF36C: STA    ENAM0   
       LDA    #$02    
       STA    ENAM1   
LF372: LDA    $8F     
       STA    PF0     
       LDA    $92     
       STA    PF1     
       NOP            
       NOP            
       LDA    $95     
       STA    PF2     
       INY            
       CPY    #$D4    
       BNE    LF343   
       STA    WSYNC   
       LDA    #$00    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       STA    ENAM0   
       STA    ENAM1   
       LDA    $CF     
       STA    COLUP0  
       LDA    $D0     
       STA    COLUP1  
       LDA    #$06    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$00    
       STA    REFP0   
       LDX    #$00    
       LDA    $A3     
       STA    $B1     
       JSR    LF947   
       STA    WSYNC   
       LDX    #$01    
       LDA    $A3     
       STA    $B1     
       JSR    LF947   
       STA    WSYNC   
       STA    HMOVE   
       LDY    #$00    
LF3BF: STA    WSYNC   
       LDA    ($BF),Y 
       STA    GRP0    
       LDA    ($BB),Y 
       STA    GRP1    
       INY            
       CPY    #$0A    
       BNE    LF3BF   
       STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       LDA    $82     
       AND    #$0F    
       STA    NUSIZ1  
       LDX    #$01    
       LDA    #$04    
       STA    $B1     
       JSR    LF947   
       STA    WSYNC   
       STA    HMOVE   
       LDX    #$03    
LF3EB: STA    WSYNC   
       LDA    $81     
       BEQ    LF3F5   
       LDA    #$FF    
       STA    GRP1    
LF3F5: DEX            
       BNE    LF3EB   
       LDA    #$00    
       STA    GRP1    
       STA    WSYNC   
       LDA    #$25    
       STA    TIM64T  
       LDA    $9D     
       AND    #$0F    
       BEQ    LF443   
       LDA    SWCHB   
       ROR            
       BCS    LF41F   
       LDA    #$00    
       STA    $B0     
       LDA    $9D     
       AND    #$F0    
       STA    $9D     
       JSR    LF9E4   
       JMP    LF821   
LF41F: DEC    $B9     
       LDA    $B9     
       BNE    LF440   
       LDA    #$1E    
       STA    $B9     
       LDA    SWCHB   
       ROR            
       ROR            
       BCS    LF440   
       INC    $B0     
       LDA    $B0     
       STA    $80     
       CMP    #$09    
       BCC    LF440   
       LDA    #$01    
       STA    $B0     
       STA    $80     
LF440: JMP    LF821   
LF443: LDA    SWCHB   
       ROR            
       ROR            
       BCS    LF45D   
       LDA    $9D     
       AND    #$F0    
       ORA    #$01    
       STA    $9D     
       LDA    #$1E    
       STA    $B9     
       LDA    $80     
       STA    $B0     
       JMP    LF821   
LF45D: LDA    SWCHB   
       ROR            
       BCS    LF469   
       JSR    LF9E4   
       JMP    LF821   
LF469: LDA    $BA     
       ROR            
       BCC    LF479   
       LDA    $A6     
       BPL    LF476   
       LDA    #$00    
       STA    $C4     
LF476: JMP    LF821   
LF479: LDA    SWCHB   
       BPL    LF487   
       LDA    $9D     
       AND    #$0F    
       ORA    #$80    
       JMP    LF48B   
LF487: LDA    $9D     
       AND    #$0F    
LF48B: STA    $9D     
       LDA    SWCHB   
       ROL            
       BPL    LF49C   
       LDA    $82     
       AND    #$0F    
       ORA    #$80    
       JMP    LF4A0   
LF49C: LDA    $82     
       AND    #$0F    
LF4A0: STA    $82     
       LDA    $BA     
       AND    #$F0    
       CMP    #$80    
       BNE    LF4D1   
       LDA    #$74    
       STA    $BD     
       LDA    $B9     
       BEQ    LF4B5   
       JMP    LF821   
LF4B5: LDA    #$19    
       STA    $B9     
       INC    $B3     
       INC    $BB     
       INC    $BF     
       LDA    $BB     
       CMP    #$C6    
       BEQ    LF4C8   
       JMP    LF821   
LF4C8: LDA    #$00    
       STA    $B3     
       STA    $BA     
       JMP    LF821   
LF4D1: LDA    $AD     
       AND    #$0F    
       CMP    #$01    
       BNE    LF501   
       LDA    $B9     
       BEQ    LF4E0   
       JMP    LF821   
LF4E0: LDA    #$19    
       STA    $B9     
       DEC    $B3     
       DEC    $BB     
       DEC    $BF     
       LDA    $BB     
       CMP    #$BC    
       BEQ    LF4F3   
       JMP    LF821   
LF4F3: LDA    #$00    
       STA    $B3     
       STA    $AD     
       INC    $83     
       JSR    LFB0B   
       JMP    LF821   
LF501: LDA    #$01    
       STA    $EA     
       LDA    #$02    
       STA    $EC     
       LDA    $80     
       CMP    #$05    
       BCC    LF522   
       LDX    $83     
       DEX            
       CPX    #$04    
       BCC    LF518   
       LDX    #$04    
LF518: LDA    LFD24,X 
       STA    $EA     
       LDA    LFD29,X 
       STA    $EC     
LF522: LDA    $9D     
       BPL    LF52A   
       INC    $EA     
       INC    $EC     
LF52A: LDY    #$00    
       LDA    CXM0P   
       BPL    LF559   
       STY    $DA     
       LDA    $B4     
       CMP    #$03    
       BNE    LF53C   
       STY    $D9     
       BEQ    LF54C   
LF53C: LDA    $C4     
       ROL            
       BMI    LF553   
       LDA    $B4     
       CMP    #$01    
       BEQ    LF54C   
       LDA    #$50    
       JMP    LF54E   
LF54C: LDA    #$05    
LF54E: STA    $B0     
       JSR    LFB78   
LF553: LDA    #$7A    
       STA    $CC     
       BNE    LF576   
LF559: LDA    CXM0FB  
       ROL            
       BPL    LF576   
       LDA    $C4     
       ORA    #$01    
       STA    $C4     
       LDA    $CE     
       STA    $CC     
       STY    $DA     
       LDA    #$10    
       STA    $B0     
       LDA    #$15    
       STA    $B3     
       LDA    #$1E    
       STA    $A8     
LF576: LDY    #$00    
       LDA    CXM1P   
       BPL    LF592   
       STY    $DB     
       LDA    $C4     
       BMI    LF592   
       ORA    #$80    
       STA    $C4     
       LDA    #$40    
       STA    $A6     
       JSR    LF9C4   
       BNE    LF592   
       JMP    LF821   
LF592: LDY    #$00    
       ASL            
       BPL    LF5AB   
       LDA    $C4     
       ROL            
       BMI    LF5AB   
       STY    $DB     
       LDA    $B4     
       CMP    #$03    
       BNE    LF5A8   
       STY    $D9     
       BEQ    LF5AB   
LF5A8: JSR    LFB78   
LF5AB: LDA    CXPPMM  
       BPL    LF5D3   
       LDA    $C4     
       ROL            
       BMI    LF5D3   
       LDA    $C4     
       ORA    #$80    
       STA    $C4     
       LDA    #$40    
       STA    $A6     
       LDA    $B4     
       CMP    #$03    
       BNE    LF5C8   
       STY    $D9     
       BEQ    LF5CB   
LF5C8: JSR    LFB78   
LF5CB: JSR    LF9C4   
       BNE    LF5D3   
       JMP    LF821   
LF5D3: LDA    #$00    
       STA    $B1     
       STA    CXCLR   
       LDA    $B5     
       CMP    #$08    
       BCC    LF602   
       LDA    #$01    
       STA    $AD     
       LDA    #$19    
       STA    $B9     
       LDA    #$09    
       STA    $B3     
       LDX    $81     
       INX            
       CPX    #$04    
       BCC    LF5F4   
       LDX    #$03    
LF5F4: STX    $81     
       LDA    $82     
       AND    #$F0    
       ORA    LFD20,X 
       STA    $82     
       JMP    LF821   
LF602: LDA    $B1     
       BNE    LF636   
       LDA    $C4     
       BPL    LF617   
       LDA    $A6     
       BNE    LF636   
       LDA    $C4     
       AND    #$7F    
       STA    $C4     
       JMP    LF622   
LF617: JSR    LF829   
       LDY    #$00    
       JSR    LF86A   
       JMP    LF636   
LF622: LDA    #$64    
       STA    $D8     
       LDA    #$50    
       STA    $C6     
       LDA    #$80    
       STA    $D2     
       LDA    #$74    
       STA    $BD     
       LDA    #$03    
       STA    $B8     
LF636: LDA    $C4     
       ROR            
       BCS    LF648   
       LDA    $B9     
       ROR            
       BCS    LF669   
       LDY    #$04    
       JSR    LF86A   
       TXA            
       BNE    LF669   
LF648: LDA    $D6     
       EOR    #$F0    
       STA    $D6     
       LDA    $C3     
       AND    #$7F    
       CLC            
       ADC    #$10    
       STA    $CA     
       LDA    $C3     
       AND    #$03    
       BEQ    LF669   
       TAX            
       LDA    LFD5A,X 
       STA    $CE     
       LDA    $C4     
       AND    #$F0    
       STA    $C4     
LF669: LDA    $B9     
       ROR            
       BCC    LF67C   
       LDY    #$05    
       JSR    LF86A   
       TXA            
       BNE    LF67C   
       LDA    $D7     
       EOR    #$F0    
       STA    $D7     
LF67C: LDY    #$02    
       LDA    $DA     
       BEQ    LF695   
       JSR    LF86A   
       TXA            
       BNE    LF6D9   
LF688: LDA    #$00    
       STA    $DA     
       STA    $A9     
       LDA    #$7A    
       STA    $CC     
       JMP    LF6D9   
LF695: LDA    $C4     
       AND    #$80    
       BNE    LF6D9   
       LDA    $D8     
       CMP    #$89    
       BCC    LF6B3   
       CMP    #$B2    
       BCS    LF6B3   
       CMP    #$94    
       BCC    LF6AD   
       CMP    #$A7    
       BCC    LF6B3   
LF6AD: LDA    $B8     
       CMP    #$03    
       BCC    LF6D9   
LF6B3: LDA    INPT4   
       ROL            
       BCS    LF6D9   
       LDA    #$0A    
       STA    $A9     
       LDX    $B8     
       LDA    LFD79,X 
       STA    $D4     
       LDA    $C6     
       CLC            
       ADC    LFD70,X 
       STA    $C8     
       LDA    $D8     
       CLC            
       ADC    LFD82,X 
       STA    $DA     
       JSR    LF86A   
       TXA            
       BEQ    LF688   
LF6D9: LDY    #$03    
       LDA    $DB     
       BEQ    LF6E5   
       JSR    LF86A   
       TXA            
       BNE    LF6E8   
LF6E5: JSR    LF8D0   
LF6E8: LDA    $80     
       CMP    #$01    
       BEQ    LF759   
       CMP    #$02    
       BEQ    LF719   
       ROR            
       BCS    LF719   
       LDA    $D9     
       BEQ    LF705   
       LDA    $B4     
       CMP    #$03    
       BNE    LF71D   
       JSR    LFB91   
       JMP    LF759   
LF705: LDA    $C3     
       AND    #$07    
       CMP    #$07    
       BNE    LF739   
       LDA    $C4     
       AND    #$BF    
       STA    $C4     
       JSR    LFBB8   
       JMP    LF759   
LF719: LDA    $D9     
       BEQ    LF739   
LF71D: LDA    $C4     
       ROL            
       BPL    LF72D   
       LDA    $A7     
       BNE    LF759   
       LDA    #$00    
       STA    $D9     
       JMP    LF759   
LF72D: LDY    #$01    
       JSR    LF86A   
       TXA            
       BNE    LF759   
       STA    $D9     
       BEQ    LF759   
LF739: LDA    $C3     
       BPL    LF748   
       LDX    #$0C    
       STX    $C7     
       LDX    #$80    
       STX    $D3     
       JMP    LF750   
LF748: LDX    #$93    
       STX    $C7     
       LDX    #$40    
       STX    $D3     
LF750: LDA    $C4     
       AND    #$BF    
       STA    $C4     
       JSR    LF8FE   
LF759: LDA    $DA     
       JSR    LFFE1   
       TYA            
       BEQ    LF7C5   
       DEY            
       LDA    $C8     
       JSR    LF95A   
       JSR    LF9AE   
       BNE    LF7BD   
       INY            
       LDA    $CC     
       CMP    LFD5A,Y 
       BNE    LF7C5   
       DEY            
       CPY    #$02    
       BEQ    LF787   
       LDA.wy $00B5,Y 
       CMP    #$07    
       BNE    LF787   
       LDA.wy $00B6,Y 
       CMP    #$08    
       BCC    LF7C5   
LF787: LDA.wy $0098,Y 
       ORA    LFD18,X 
       STA.wy $0098,Y 
       LDA    LFDC4,Y 
       STA    $B3     
       LDA    #$1E    
       STA    $A8     
       LDA    #$20    
       STA    $B0     
       LDX    $B5,Y   
       INX            
       STX    $B5,Y   
       TXA            
       CMP    #$08    
       BNE    LF7BD   
       LDA    $B4     
       CMP    #$03    
       BNE    LF7B1   
       LDA    #$00    
       STA    $D9     
LF7B1: TYA            
       CMP    $C5     
       BCS    LF7BD   
       STY    $C5     
       LDA    LFDC1,Y 
       STA    $AF     
LF7BD: LDA    #$7A    
       STA    $CC     
       LDA    #$00    
       STA    $DA     
LF7C5: LDA    $DB     
       JSR    LFFE1   
       TYA            
       BEQ    LF7E9   
       DEY            
       LDA    $C9     
       JSR    LF95A   
       JSR    LF9AE   
       BNE    LF7E5   
       LDA    $C9     
       CLC            
       ADC    #$07    
       JSR    LF95A   
       JSR    LF9AE   
       BEQ    LF7E9   
LF7E5: LDA    #$00    
       STA    $DB     
LF7E9: LDA    $D8     
       JSR    LF965   
       BEQ    LF7FA   
       LDA    $D8     
       CLC            
       ADC    #$01    
       STA    $D8     
       JMP    LF80B   
LF7FA: LDA    $D8     
       CLC            
       ADC    #$09    
       JSR    LF965   
       BEQ    LF80B   
       LDA    $D8     
       SEC            
       SBC    #$01    
       STA    $D8     
LF80B: LDA    $B4     
       CMP    #$01    
       BNE    LF821   
       LDA    $B9     
       AND    #$1F    
       CMP    #$0F    
       BCC    LF81D   
       LDA    #$99    
       BNE    LF81F   
LF81D: LDA    #$90    
LF81F: STA    $C1     
LF821: LDA    INTIM   
       BNE    LF821   
       JMP    LF015   
LF829: CLC            
       LDA    SWCHA   
       STA    $B1     
       LDX    #$00    
       LDY    #$00    
       ROL            
       BPL    LF83D   
       BCS    LF83F   
       LDX    #$01    
       JMP    LF83F   
LF83D: LDX    #$02    
LF83F: LDA    $B1     
       ROL            
       ROL            
       ROL            
       BPL    LF84D   
       BCS    LF84F   
       LDY    #$06    
       JMP    LF84F   
LF84D: LDY    #$03    
LF84F: TXA            
       STY    $B1     
       CLC            
       ADC    $B1     
       BEQ    LF867   
       TAX            
       LDA    LFD67,X 
       STA    $AC     
       LDA    LFD5E,X 
       STA    $BD     
       STX    $B8     
       LDA    LFD79,X 
LF867: STA    $D2     
       RTS            

LF86A: LDX    #$01    
       LDA.wy $00D2,Y 
       BEQ    LF8CF   
       ROL            
       BCS    LF88A   
       BPL    LF89E   
       LDA.wy $00C6,Y 
       SEC            
       SBC.wy $00E9,Y 
       CMP    LFD92,Y 
       BCS    LF89B   
       LDA    LFD92,Y 
       LDX    #$00    
       JMP    LF89B   
LF88A: LDA.wy $00C6,Y 
       CLC            
       ADC.wy $00E9,Y 
       CMP    LFD8B,Y 
       BCC    LF89B   
       LDA    LFD8B,Y 
       LDX    #$00    
LF89B: STA.wy $00C6,Y 
LF89E: LDA.wy $00D2,Y 
       ROR            
       ROR            
       BCS    LF8BB   
       BPL    LF8CF   
       LDA.wy $00D8,Y 
       SEC            
       SBC.wy $00E9,Y 
       CMP    LFDBC,Y 
       BCS    LF8CC   
       LDA    LFDBC,Y 
       LDX    #$00    
       JMP    LF8CC   
LF8BB: LDA.wy $00D8,Y 
       CLC            
       ADC.wy $00E9,Y 
       CMP    LFDB6,Y 
       BCC    LF8CC   
       LDA    LFDB6,Y 
       LDX    #$00    
LF8CC: STA.wy $00D8,Y 
LF8CF: RTS            

LF8D0: LDA    $B4     
       CMP    #$02    
       BNE    LF8E8   
       LDA    $C4     
       ROL            
       BMI    LF8E8   
       LDA    #$4C    
       STA    $DB     
       LDA    #$02    
       STA    $D5     
       LDA    $C7     
       STA    $C9     
       RTS            

LF8E8: LDA    #$DE    
       STA    $DB     
       LDA    #$01    
       STA    $D5     
       LDA    $C3     
       AND    #$03    
       TAY            
       LDA    $CB     
       CLC            
       ADC    LFDA6,Y 
       STA    $C9     
       RTS            

LF8FE: LDA    #$01    
       STA    $B4     
       LDA    #$44    
       STA    $CD     
       LDA    #$90    
       STA    $C1     
       LDA    $C3     
       AND    #$07    
       CMP    #$07    
       BEQ    LF942   
       CMP    #$06    
       BEQ    LF93D   
       CMP    #$05    
       BEQ    LF92A   
       LDA    $C3     
       AND    #$3F    
       CLC            
       ADC    #$45    
       CMP    #$4C    
       BCS    LF944   
       LDA    $4C     
       JMP    LF944   
LF92A: LDA    $80     
       CMP    #$03    
       BCC    LF93D   
       LDA    #$02    
       STA    $B4     
       LDA    #$A2    
       STA    $C1     
       LDA    #$43    
       JMP    LF944   
LF93D: LDA    #$9C    
       JMP    LF944   
LF942: LDA    #$BA    
LF944: STA    $D9     
       RTS            

LF947: AND    #$0F    
       TAY            
       STA    WSYNC   
LF94C: DEY            
       BNE    LF94C   
       NOP            
       NOP            
       STA    RESP0,X 
       LDA    $B1     
       AND    #$F0    
       STA    HMP0,X  
       RTS            

LF95A: LDX    #$09    
LF95C: CMP    LFD2E,X 
       BCS    LF964   
       DEX            
       BNE    LF95C   
LF964: RTS            

LF965: JSR    LFFE1   
       TYA            
       BNE    LF96C   
       RTS            

LF96C: DEY            
       LDA    $C6     
       JSR    LF95A   
       JSR    LF9AE   
       BEQ    LF98A   
       INX            
       LDA    $C6     
       CMP    LFD38,X 
       BEQ    LF980   
       RTS            

LF980: LDA    $C6     
       CLC            
       ADC    #$01    
       STA    $C6     
       LDA    #$02    
       RTS            

LF98A: LDA    $C6     
       CLC            
       ADC    #$07    
       JSR    LF95A   
       JSR    LF9AE   
       BNE    LF998   
       RTS            

LF998: INX            
       LDA    $C6     
       CLC            
       ADC    #$07    
       CMP    LFD2E,X 
       BEQ    LF9A4   
       RTS            

LF9A4: LDA    $C6     
       SEC            
       SBC    #$01    
       STA    $C6     
       LDA    #$02    
       RTS            

LF9AE: TXA            
       BEQ    LF9C1   
       CMP    #$09    
       BEQ    LF9C1   
       DEX            
       LDA.wy $0098,Y 
       AND    LFD18,X 
       BNE    LF9C1   
       LDA    #$00    
       RTS            

LF9C1: LDA    #$01    
       RTS            

LF9C4: LDA    $82     
       ROL            
       BCC    LF9E1   
       LDX    $81     
       DEX            
       BPL    LF9D5   
       LDA    #$01    
       STA    $BA     
       LDA    #$00    
       RTS            

LF9D5: STX    $81     
       LDA    $82     
       AND    #$F0    
       CLC            
       ADC    LFD20,X 
       STA    $82     
LF9E1: LDA    #$01    
       RTS            

LF9E4: LDA    #$01    
       STA    $83     
       LDA    #$03    
       STA    $81     
       LDA    #$03    
       STA    $82     
       LDA    #$00    
       STA    $84     
       STA    $85     
       STA    $86     
       JSR    LFB0B   
       RTS            

LF9FC: .byte $FF,$FF,$FF,$FF
LFA00: LDA    #$00    
       CPY    $DA     
       BEQ    LFA11   
       CPY    $DB     
       BEQ    LFA1B   
       STA    ENAM0   
       STA    ENAM1   
       JMP    LFA21   
LFA11: NOP            
       STA    ENAM1   
       LDA    #$02    
       STA    ENAM0   
       JMP    LFA21   
LFA1B: STA    ENAM0   
       LDA    #$02    
       STA    ENAM1   
LFA21: TYA            
       SEC            
       SBC    $D9     
       BMI    LFA36   
       CMP    #$0A    
       BPL    LFA36   
       STY    $B2     
       TAY            
       LDA    ($C1),Y 
       LDY    $B2     
       NOP            
       NOP            
       BNE    LFA38   
LFA36: LDA    #$00    
LFA38: INY            
       CPY    $B1     
       BNE    LFA40   
       JMP    LFB08   
LFA40: STA    GRP1    
       STA    WSYNC   
       CPY    $D8     
       BMI    LFA00   
       LDA    $EF,X   
       STA    GRP0    
       CPY    $DB     
       BNE    LFA55   
       LDA    #$02    
       JMP    LFA58   
LFA55: NOP            
       LDA    #$00    
LFA58: STA    ENAM1   
       TYA            
       SEC            
       SBC    $D9     
       BMI    LFA6D   
       CMP    #$0A    
       BPL    LFA6D   
       STY    $B2     
       TAY            
       LDA    ($C1),Y 
       LDY    $B2     
       BNE    LFA6F   
LFA6D: LDA    #$00    
LFA6F: INY            
       CPY    $B1     
       BNE    LFA78   
       DEX            
       JMP    LFB08   
LFA78: DEX            
       BMI    LFAC5   
LFA7B: STA    GRP1    
       STA    WSYNC   
       LDA    $EF,X   
       STA    GRP0    
       LDA    #$00    
       CPY    $DA     
       BEQ    LFA94   
       CPY    $DB     
       BEQ    LFA9E   
       STA    ENAM0   
       STA    ENAM1   
       JMP    LFAA4   
LFA94: NOP            
       STA    ENAM1   
       LDA    #$02    
       STA    ENAM0   
       JMP    LFAA4   
LFA9E: STA    ENAM0   
       LDA    #$02    
       STA    ENAM1   
LFAA4: TYA            
       SEC            
       SBC    $D9     
       BMI    LFAB7   
       CMP    #$0A    
       BPL    LFAB7   
       STY    $B2     
       TAY            
       LDA    ($C1),Y 
       LDY    $B2     
       BNE    LFAB9   
LFAB7: LDA    #$00    
LFAB9: INY            
       CPY    $B1     
       BNE    LFAC2   
       DEX            
       JMP    LFB08   
LFAC2: DEX            
       BPL    LFA7B   
LFAC5: STA    GRP1    
       STA    WSYNC   
       LDA    #$00    
       CPY    $DA     
       BEQ    LFADA   
       CPY    $DB     
       BEQ    LFAE4   
       STA    ENAM0   
       STA    ENAM1   
       JMP    LFAEA   
LFADA: NOP            
       STA    ENAM1   
       LDA    #$02    
       STA    ENAM0   
       JMP    LFAEA   
LFAE4: STA    ENAM0   
       LDA    #$02    
       STA    ENAM1   
LFAEA: TYA            
       SEC            
       SBC    $D9     
       BMI    LFB01   
       CMP    #$0A    
       BPL    LFB01   
       STY    $B2     
       TAY            
       LDA    ($C1),Y 
       LDY    $B2     
       NOP            
       NOP            
       NOP            
       NOP            
       BNE    LFB03   
LFB01: LDA    #$00    
LFB03: INY            
       CPY    $B1     
       BNE    LFAC5   
LFB08: STA    WSYNC   
       RTS            

LFB0B: LDA    #$00    
       LDX    #$EF    
LFB0F: STA    VSYNC,X 
       DEX            
       CPX    #$86    
       BNE    LFB0F   
       STA    CXCLR   
       LDA    #$30    
       STA    $93     
       STA    $94     
       STA    $95     
       LDX    #$00    
LFB22: LDA    LFDC7,X 
       STA    $B8,X   
       INX            
       CPX    #$37    
       BNE    LFB22   
       LDA    #$30    
       STA    CTRLPF  
       RTS            

LFB31: LDY    #$00    
       STY    GRP0    
       STY    GRP1    
       STY    GRP0    
       STY    GRP1    
       LDY    #$06    
       STY    $B1     
       LDY    #$07    
       STY    VDELP0  
       STY    VDELP1  
LFB45: LDY    $B1     
       LDA    ($E7),Y 
       STA    $B2     
       STA    WSYNC   
       LDA    ($E5),Y 
       TAX            
       LDA    ($DD),Y 
       NOP            
       STA    GRP0    
       LDA    ($DF),Y 
       STA    GRP1    
       LDA    ($E1),Y 
       STA    GRP0    
       LDA    ($E3),Y 
       LDY    $B2     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       DEC    $B1     
       BPL    LFB45   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    VDELP0  
       STA    VDELP1  
       RTS            

LFB78: LDA    $C4     
       ORA    #$40    
       STA    $C4     
       LDA    #$D0    
       STA    $C1     
       LDA    #$78    
       STA    $A7     
       LDA    $B4     
       CMP    #$01    
       BNE    LFB90   
       LDA    #$00    
       STA    $B4     
LFB90: RTS            

LFB91: LDA    $A7     
       BNE    LFBB7   
       LDA    #$3C    
       STA    $A7     
       INC    $C1     
       LDA    $C1     
       CMP    #$B2    
       BNE    LFBB7   
       LDA    #$00    
       STA    $D9     
       LDY    $A5     
       LDX    $B5,Y   
       DEX            
       STX    $B5,Y   
       LDX    $A4     
       LDA.wy $0098,Y 
       EOR    LFD18,X 
       STA.wy $0098,Y 
LFBB7: RTS            

LFBB8: LDA    #$03    
       STA    $B4     
       LDA    #$C4    
       STA    $CD     
       LDA    #$A8    
       STA    $C1     
       LDA    #$3C    
       STA    $A7     
       LDA    #$00    
       STA    $D3     
       LDY    #$00    
       LDA    $B5     
       CMP    $B6     
       BCS    LFBD8   
       LDA    $B6     
       LDY    #$01    
LFBD8: CMP    $B7     
       BCS    LFBE0   
       LDA    $B7     
       LDY    #$02    
LFBE0: CMP    #$00    
       BEQ    LFBFE   
       LDA    LFD99,Y 
       STA    $D9     
       STY    $A5     
       LDA.wy $0098,Y 
       LDX    #$07    
LFBF0: ROR            
       BCS    LFBF6   
       DEX            
       BPL    LFBF0   
LFBF6: STX    $A4     
       INX            
       LDA    LFD2E,X 
       STA    $C7     
LFBFE: RTS            

LFBFF: .byte $FF
LFC00: STA    WSYNC   
       LDA    #$C0    
       STA    PF0     
       LDA    $87     
       STA    PF1     
       CPY    $D8     
       BPL    LFC15   
       LDA    $8A     
       STA    PF2     
       JMP    LFCB2   
LFC15: LDA    $EF,X   
       STA    GRP0    
       LDA    $8A     
       STA    PF2     
       LDA    $8D     
       STA    PF0     
       NOP            
       NOP            
       LDA    $90     
       STA    PF1     
       LDA    $93     
       STA    PF2     
       INY            
       CPY    #$98    
       BNE    LFC34   
       DEX            
       JMP    LFCFB   
LFC34: DEX            
       BMI    LFC6F   
LFC37: STA    WSYNC   
       LDA    #$C0    
       STA    PF0     
       LDA    $87     
       STA    PF1     
       LDA    $EF,X   
       STA    GRP0    
       LDA    $8A     
       STA    PF2     
       CPY    $DB     
       BNE    LFC52   
       LDA    #$02    
       JMP    LFC55   
LFC52: NOP            
       LDA    #$00    
LFC55: STA    ENAM1   
       LDA    $8D     
       STA    PF0     
       LDA    $90     
       STA    PF1     
       LDA    $93     
       STA    PF2     
       INY            
       CPY    #$98    
       BNE    LFC6C   
       DEX            
       JMP    LFCFB   
LFC6C: DEX            
       BPL    LFC37   
LFC6F: STA    WSYNC   
       LDA    #$C0    
       STA    PF0     
       LDA    $87     
       STA    PF1     
       LDA    $8A     
       STA    PF2     
       LDA    #$00    
       CPY    $DA     
       BEQ    LFC8E   
       CPY    $DB     
       BEQ    LFC98   
       STA    ENAM0   
       STA    ENAM1   
       JMP    LFC9E   
LFC8E: NOP            
       STA    ENAM1   
       LDA    #$02    
       STA    ENAM0   
       JMP    LFC9E   
LFC98: STA    ENAM0   
       LDA    #$02    
       STA    ENAM1   
LFC9E: LDA    $8D     
       STA    PF0     
       LDA    $90     
       STA    PF1     
       LDA    $93     
       STA    PF2     
       INY            
       CPY    #$98    
       BNE    LFC6F   
       JMP    LFCFB   
LFCB2: CPY    $DA     
       BEQ    LFCCB   
       CPY    $DB     
       BEQ    LFCDF   
       LDA    $8D     
       STA    PF0     
       LDA    $90     
       STA    PF1     
       LDA    #$00    
       STA    ENAM0   
       STA    ENAM1   
       JMP    LFCEF   
LFCCB: NOP            
       LDA    #$00    
       STA    ENAM1   
       LDA    $8D     
       STA    PF0     
       LDA    $90     
       STA    PF1     
       LDA    #$02    
       STA    ENAM0   
       JMP    LFCEF   
LFCDF: LDA    $8D     
       STA    PF0     
       LDA    $90     
       STA    PF1     
       LDA    #$00    
       STA    ENAM0   
       LDA    #$02    
       STA    ENAM1   
LFCEF: LDA    $93     
       STA    PF2     
       INY            
       CPY    #$98    
       BEQ    LFCFB   
       JMP    LFC00   
LFCFB: STA    WSYNC   
       LDA    #$00    
       STA    PF0     
       STA    PF1     
       LDA    #$98    
       SEC            
       SBC    $D8     
       BMI    LFD13   
       CMP    #$0A    
       BPL    LFD13   
       LDA    $EF,X   
       STA    GRP0    
       DEX            
LFD13: LDA    #$00    
       STA    PF2     
       RTS            

LFD18: .byte $80,$40,$20,$10,$08,$04,$02,$01
LFD20: .byte $00,$00,$01,$03
LFD24: .byte $01,$01,$01,$01,$02
LFD29: .byte $02,$03,$03,$04,$04
LFD2E: .byte $03,$13,$23,$35,$45,$55,$65,$75,$85,$95
LFD38: .byte $12,$22,$34,$44,$54,$64,$74,$84,$94,$A4
LFD42: .byte $F0,$0F,$0F,$F0,$F0,$F0,$0F,$0F
LFD4A: .byte $87,$87,$8A,$8A,$8D,$90,$90,$93
LFD52: .byte $42,$8F,$AD,$CB
LFD56: .byte $4A,$98,$B6,$D4
LFD5A: .byte $7A,$2A,$5A,$CA
LFD5E: .byte $74,$7E,$7E,$74,$87,$87,$74,$87,$87
LFD67: .byte $00,$00,$08,$00,$00,$08,$00,$00,$08
LFD70: .byte $00,$08,$00,$04,$08,$00,$04,$08,$00
LFD79: .byte $01,$80,$40,$01,$81,$41,$02,$82,$42
LFD82: .byte $00,$04,$04,$00,$00,$00,$08,$08,$08
LFD8B: .byte $93,$93,$9A,$9A,$96,$4E,$4E
LFD92: .byte $0C,$0C,$0C,$0C,$0A,$16,$16
LFD99: .byte $82,$A0,$BE
LFD9C: .byte $3E,$1E,$2B,$32,$51,$25,$4A,$18,$44,$38
LFDA6: .byte $00,$20,$20,$40,$00,$1D,$1A,$17,$15,$13,$11,$0F,$0E,$00,$00,$00
LFDB6: .byte $C0,$C2,$DA,$DA,$4B,$C2
LFDBC: .byte $55,$4C,$42,$4C,$4C
LFDC1: .byte $30,$20,$10
LFDC4: .byte $17,$1A,$1D
LFDC7: .byte $03,$1E,$80,$BC,$FF,$74,$FF,$A8,$FF,$90,$FF,$B6,$00,$03,$50,$A0
       .byte $54,$3C,$50,$3C,$7A,$44,$2A,$C4,$44,$5A,$80,$80,$80,$80,$80,$80
       .byte $A0,$00,$00,$00,$00,$3E,$FF,$3E,$FF,$3E,$FF,$3E,$FF,$3E,$FF,$3E
       .byte $FF,$01,$01,$02,$02,$01,$01,$FF,$FF
LFE00: STA    WSYNC   
       LDA    #$C0    
       STA    PF0     
       LDA    $88     
       STA    PF1     
       CPY    $D8     
       BPL    LFE15   
       LDA    $8B     
       STA    PF2     
       JMP    LFEB2   
LFE15: LDA    $EF,X   
       STA    GRP0    
       LDA    $8B     
       STA    PF2     
       LDA    $8E     
       STA    PF0     
       NOP            
       NOP            
       LDA    $91     
       STA    PF1     
       LDA    $94     
       STA    PF2     
       INY            
       CPY    #$B6    
       BNE    LFE34   
       DEX            
       JMP    LFEFB   
LFE34: DEX            
       BMI    LFE6F   
LFE37: STA    WSYNC   
       LDA    #$C0    
       STA    PF0     
       LDA    $88     
       STA    PF1     
       LDA    $EF,X   
       STA    GRP0    
       LDA    $8B     
       STA    PF2     
       CPY    $DB     
       BNE    LFE52   
       LDA    #$02    
       JMP    LFE55   
LFE52: NOP            
       LDA    #$00    
LFE55: STA    ENAM1   
       LDA    $8E     
       STA    PF0     
       LDA    $91     
       STA    PF1     
       LDA    $94     
       STA    PF2     
       INY            
       CPY    #$B6    
       BNE    LFE6C   
       DEX            
       JMP    LFEFB   
LFE6C: DEX            
       BPL    LFE37   
LFE6F: STA    WSYNC   
       LDA    #$C0    
       STA    PF0     
       LDA    $88     
       STA    PF1     
       LDA    $8B     
       STA    PF2     
       LDA    #$00    
       CPY    $DA     
       BEQ    LFE8E   
       CPY    $DB     
       BEQ    LFE98   
       STA    ENAM0   
       STA    ENAM1   
       JMP    LFE9E   
LFE8E: NOP            
       STA    ENAM1   
       LDA    #$02    
       STA    ENAM0   
       JMP    LFE9E   
LFE98: STA    ENAM0   
       LDA    #$02    
       STA    ENAM1   
LFE9E: LDA    $8E     
       STA    PF0     
       LDA    $91     
       STA    PF1     
       LDA    $94     
       STA    PF2     
       INY            
       CPY    #$B6    
       BNE    LFE6F   
       JMP    LFEFB   
LFEB2: CPY    $DA     
       BEQ    LFECB   
       CPY    $DB     
       BEQ    LFEDF   
       LDA    $8E     
       STA    PF0     
       LDA    $91     
       STA    PF1     
       LDA    #$00    
       STA    ENAM0   
       STA    ENAM1   
       JMP    LFEEF   
LFECB: NOP            
       LDA    #$00    
       STA    ENAM1   
       LDA    $8E     
       STA    PF0     
       LDA    $91     
       STA    PF1     
       LDA    #$02    
       STA    ENAM0   
       JMP    LFEEF   
LFEDF: LDA    $8E     
       STA    PF0     
       LDA    $91     
       STA    PF1     
       LDA    #$00    
       STA    ENAM0   
       LDA    #$02    
       STA    ENAM1   
LFEEF: LDA    $94     
       STA    PF2     
       INY            
       CPY    #$B6    
       BEQ    LFEFB   
       JMP    LFE00   
LFEFB: STA    WSYNC   
       LDA    #$00    
       STA    PF0     
       STA    PF1     
       LDA    #$B6    
       SEC            
       SBC    $D8     
       BMI    LFF13   
       CMP    #$0A    
       BPL    LFF13   
       LDA    $EF,X   
       STA    GRP0    
       DEX            
LFF13: LDA    #$00    
       STA    PF2     
       RTS            

LFF18: .byte $0C,$0C,$0C,$06,$03,$21,$3F,$0C,$0C,$0C,$0C,$3C,$1C,$3E,$23,$03
       .byte $3E,$30,$30,$3F,$30,$30,$1E,$03,$23,$3E,$1E,$23,$03,$06,$03,$23
       .byte $1E,$23,$03,$1F,$33,$33,$1E,$33,$33,$33,$33,$33,$1E,$33,$33,$1E
       .byte $33,$33,$1E,$33,$33,$3E,$30,$31,$1E,$06,$06,$3F,$26,$16,$0E,$06
       .byte $3E,$62,$46,$40,$60,$3E,$00,$42,$42,$7E,$42,$42,$3C,$00,$42,$42
       .byte $42,$5A,$66,$42,$00,$7E,$40,$40,$78,$40,$7E,$00,$00,$7C,$10,$10
       .byte $10,$38,$38,$38,$10,$10,$00,$00,$00,$9C,$9C,$FF,$9C,$9C,$00,$00
       .byte $20,$40,$A8,$1C,$3E,$1C,$0A,$01,$00,$3C,$5A,$FF,$A5,$A5,$81,$7E
       .byte $3C,$00,$3C,$5A,$FF,$FF,$A5,$FF,$7E,$3C,$00,$00,$18,$3C,$3C,$18
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$78,$1E,$18,$18,$18,$78
       .byte $1E,$18,$18,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$C0
       .byte $C3,$03,$00,$00,$C0,$C3,$03,$00,$02,$58,$DE,$06,$70,$6C,$0B,$79
       .byte $D8,$00,$18,$36,$30,$74,$6C,$1C,$58
LFFE1: LDY    #$03    
LFFE3: CMP    LFD56,Y 
       BCS    LFFF0   
       CMP    LFD52,Y 
       BCC    LFFF0   
       JMP    LFFF3   
LFFF0: DEY            
       BNE    LFFE3   
LFFF3: RTS            

LFFF4: .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$00,$F0,$FF,$FF
