; Disassembly of roms/Wizard of Wor.bin
; Disassembled Tue Oct  6 15:24:49 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Wizard of Wor.bin
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
REFP1   =  $0C
PF0     =  $0D
PF1     =  $0E
PF2     =  $0F
RESP0   =  $10
RESP1   =  $11
RESM0   =  $12
RESM1   =  $13
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
HMP0    =  $20
HMP1    =  $21
HMM0    =  $22
HMM1    =  $23
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXM1P   =  $31
CXM0FB  =  $34
CXM1FB  =  $35
INPT4   =  $3C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM8T   =  $0295
TIM64T  =  $0296

       ORG $F000

START:
LF000: CLD            
       SEI            
       LDX    #$00    
       TXA            
LF005: STA    VSYNC,X 
       INX            
       BNE    LF005   
       DEX            
       TXS            
LF00C: LDA    #$02    
       STA    WSYNC   
       STA    VBLANK  
       LDA    #$24    
       STA    TIM64T  
       INC    $80     
       BNE    LF01D   
       INC    $8E     
LF01D: LDX    #$04    
       LDA    #$80    
LF021: STA    $E2,X   
       DEX            
       BPL    LF021   
       LDA    $93     
       BMI    LF030   
       BEQ    LF030   
       LDY    #$44    
       BNE    LF03A   
LF030: LDA    $8B     
       BEQ    LF038   
       LDY    #$2A    
       BNE    LF03A   
LF038: LDY    #$88    
LF03A: LDA    $8C     
       ORA    $8D     
       ORA    $D6     
       ORA    $D7     
       BNE    LF05A   
       STA    $89     
       NOP            
       NOP            
       TYA            
       EOR    $8E     
       AND    #$F6    
       STA    $EE     
       TAY            
       LDA    $8E     
       AND    #$F6    
       STA    COLUBK  
       LDA    #$01    
       STA    $83     
LF05A: STY    COLUPF  
       LDA    #$00    
       STA    $FA     
       STA    $FB     
       LDA    SWCHB   
       TAY            
       AND    #$01    
       BNE    LF071   
LF06A: STA    COLUBK  
       STA    $83     
       JMP    LF172   
LF071: TYA            
       AND    #$02    
       BEQ    LF07E   
       LDA    $82     
       BEQ    LF08F   
       DEC    $82     
       BEQ    LF084   
LF07E: LDA    #$01    
       STA    $82     
       BNE    LF08F   
LF084: INC    $81     
       LDA    $81     
       AND    #$01    
       STA    $81     
       LSR            
       BPL    LF06A   
LF08F: LDA    $89     
       BEQ    LF109   
       LDX    #$80    
       STX    $E7     
       CMP    #$01    
       BNE    LF09E   
LF09B: JMP    LF185   
LF09E: CMP    #$02    
       BNE    LF0A5   
       JMP    LF1E1   
LF0A5: LDA    $CD     
       CMP    $80     
       BNE    LF0C9   
       LDA    #$01    
       STA    $89     
       INC    $84     
       LDA    #$00    
       STA    $E0     
       STA    COLUBK  
       LDA    $D6     
       CMP    #$01    
       BNE    LF0BF   
       INC    $8C     
LF0BF: LDA    $D7     
       CMP    #$01    
       BNE    LF09B   
       INC    $8D     
       BNE    LF09B   
LF0C9: LDA    $94     
       BEQ    LF0D6   
       LDA    $80     
       LSR            
       STA    AUDF1   
       LDA    #$0C    
       BNE    LF0F8   
LF0D6: LDA    $95     
       BEQ    LF0E4   
       LDA    $80     
       STA    COLUBK  
       STA    AUDF1   
       LDA    #$01    
       BNE    LF0F8   
LF0E4: LDA    $93     
       BEQ    LF100   
       LDA    $80     
       AND    #$01    
       BNE    LF103   
       LDA    $91     
       BMI    LF100   
       STA    AUDF1   
       DEC    $91     
       LDA    #$03    
LF0F8: STA    AUDC1   
       LDA    #$08    
       STA    AUDV1   
       BNE    LF103   
LF100: JSR    LFCC7   
LF103: JMP    LF339   
LF106: JMP    LF825   
LF109: LDA    $8A     
       BEQ    LF106   
       LDX    #$05    
       LDY    #$00    
LF111: LDA    $D0,X   
       BMI    LF116   
       INY            
LF116: DEX            
       BPL    LF111   
       CPY    $8A     
       BCS    LF16F   
       LDA    $96     
       CMP    $97     
       BEQ    LF125   
       BCS    LF12F   
LF125: CMP    $8A     
       BEQ    LF135   
       INC    $96     
       LDA    #$02    
       BNE    LF159   
LF12F: INC    $97     
       LDA    #$03    
       BNE    LF159   
LF135: LDA    $8A     
       CMP    #$01    
       BEQ    LF16F   
       LDA    $93     
       BMI    LF16F   
       LDX    #$05    
LF141: LDA    $D0,X   
       BPL    LF16F   
       DEX            
       BPL    LF141   
       LDA    #$01    
       STA    $93     
       LDA    #$08    
       STA    $91     
       LDX    $80     
       BMI    LF155   
       LSR            
LF155: STA    $CC     
       LDA    #$04    
LF159: STA    $9A     
       LDX    #$00    
LF15D: LDA    $D0,X   
       BMI    LF166   
       INX            
       CPX    #$06    
       BNE    LF15D   
LF166: LDA    $80     
       JSR    LFD76   
       LDA    $9A     
       STA    $D0,X   
LF16F: JMP    LF203   
LF172: LDX    #$7C    
LF174: STA    $83,X   
       DEX            
       BPL    LF174   
       LDA    #$03    
       STA    $8D     
       LDX    $81     
       BEQ    LF183   
       STA    $8C     
LF183: INC    $89     
LF185: LDA    $E0     
       CMP    #$40    
       BCS    LF18F   
       LDA    #$1D    
       BNE    LF1A5   
LF18F: CMP    #$50    
       BCS    LF197   
       LDA    #$19    
       BNE    LF1A5   
LF197: CMP    #$90    
       BCS    LF19F   
       LDA    #$18    
       BNE    LF1A5   
LF19F: CMP    #$D0    
       BEQ    LF1BA   
       LDA    #$1D    
LF1A5: INC    $E0     
       STA    AUDF0   
       STA    AUDF1   
       LDA    #$0C    
       STA    AUDC0   
       LDA    #$04    
       STA    AUDC1   
       ASL            
       STA    AUDV0   
       STA    AUDV1   
       BNE    LF1DE   
LF1BA: JSR    LFCC7   
       LDX    #$71    
       LDA    #$00    
LF1C1: STA    $8E,X   
       DEX            
       BPL    LF1C1   
       LDA    $84     
       LSR            
       CMP    #$04    
       BCC    LF1CF   
       LDA    #$04    
LF1CF: TAX            
       LDA    LFFE4,X 
       STA    $8E     
       LDA    LFFE9,X 
       STA    $90     
       LDA    #$02    
LF1DC: STA    $89     
LF1DE: JMP    LF825   
LF1E1: LDX    #$05    
       LDA    #$F0    
       STA    $E1     
LF1E7: LDY    $80     
       LDA    ($E0),Y 
       AND    #$3F    
       JSR    LFD88   
       INC    $D0,X   
       INC    $E1     
       DEX            
       BPL    LF1E7   
       LDA    $8A     
       CMP    #$06    
       BEQ    LF1FF   
       INC    $8A     
LF1FF: LDA    #$00    
       BEQ    LF1DC   
LF203: LDA    $80     
       AND    #$01    
       TAX            
       LDA    CXM0FB  
       BPL    LF20F   
       JSR    LFCAA   
LF20F: LDA    CXM1FB  
       BMI    LF21D   
       LDA    $A7     
       CMP    #$10    
       BCC    LF21D   
       CMP    #$94    
       BCC    LF220   
LF21D: JSR    LFCD1   
LF220: LDA    #$00    
       STA    $9A     
       LDA    $9E,X   
       BNE    LF22B   
       JMP    LF2D0   
LF22B: LDY    #$05    
LF22D: LDA.wy $00D0,Y 
       BEQ    LF285   
       LDA.wy $00C0,Y 
       BMI    LF285   
       LDA.wy $00A8,Y 
       CMP    $A2,X   
       BCC    LF285   
       SBC    $A2,X   
       CMP    #$10    
       BCS    LF285   
       LDA    $A0,X   
       CMP.wy $00B0,Y 
       BEQ    LF24D   
       BCC    LF285   
LF24D: SBC.wy $00B0,Y 
       CMP    #$09    
       BCS    LF285   
       LDA    #$FF    
       STA.wy $00C0,Y 
       STA.wy $00D8,Y 
       LDA    #$00    
       STA.wy $00B8,Y 
       INC    $9A     
       LDA    $A6     
       BEQ    LF26E   
       CPY    $A5     
       BNE    LF26E   
       JSR    LFCD1   
LF26E: TYA            
       PHA            
       LDA.wy $00D0,Y 
       TAY            
       LDA    $8B     
       BEQ    LF27D   
       LDA    LFF54,Y 
       BNE    LF280   
LF27D: LDA    LFF4F,Y 
LF280: JSR    LFDB0   
       PLA            
       TAY            
LF285: DEY            
       BPL    LF22D   
       LDA    $9A     
       BEQ    LF28F   
       JSR    LFCAA   
LF28F: TXA            
       EOR    #$01    
       TAY            
       LDA.wy $00D6,Y 
       BEQ    LF2D0   
       BMI    LF2D0   
       LDA.wy $00AE,Y 
       CMP    $A2,X   
       BCC    LF2D0   
       SBC    $A2,X   
       CMP    #$10    
       BCS    LF2D0   
       LDA    $A0,X   
       CMP.wy $00B6,Y 
       BEQ    LF2B7   
       BCC    LF2D0   
       SBC.wy $00B6,Y 
       CMP    #$09    
       BCS    LF2D0   
LF2B7: LDA    $8B     
       BEQ    LF2BF   
       LDA    #$20    
       BNE    LF2C1   
LF2BF: LDA    #$10    
LF2C1: JSR    LFDB0   
       LDX    #$00    
       JSR    LFCAA   
       INX            
       JSR    LFCAA   
       JMP    LF31E   
LF2D0: LDA    CXM1P   
       BPL    LF2DE   
       JSR    LFCD1   
       LDA    $80     
       AND    #$01    
       TAY            
       BPL    LF31E   
LF2DE: LDA    $80     
       AND    #$01    
       TAY            
       LDX    #$05    
LF2E5: LDA    $D0,X   
       BEQ    LF304   
       BMI    LF304   
       LDA    $C0,X   
       BMI    LF304   
       LDA.wy $00B6,Y 
       CMP    $B0,X   
       BCS    LF2FE   
       SEC            
       LDA    $B0,X   
       SBC.wy $00B6,Y 
       BNE    LF300   
LF2FE: SBC    $B0,X   
LF300: CMP    #$04    
       BCC    LF309   
LF304: DEX            
       BPL    LF2E5   
       BMI    LF339   
LF309: LDA.wy $00AE,Y 
       CMP    $A8,X   
       BCS    LF318   
       SEC            
       LDA    $A8,X   
       SBC.wy $00AE,Y 
       BNE    LF31A   
LF318: SBC    $A8,X   
LF31A: CMP    #$04    
       BCS    LF304   
LF31E: TYA            
       TAX            
       LDA    $D6,X   
       BMI    LF339   
       LDA    #$80    
       STA    $D6,X   
       LDA    #$00    
       STA    $A4     
       STA    $C6,X   
       STA    $BE,X   
       STA    $CE,X   
       LDA    #$0F    
       STA    $F2     
       JSR    LFCAA   
LF339: STA    CXCLR   
       LDA    $80     
       AND    #$01    
       TAY            
       EOR    #$01    
       TAX            
       LSR            
       LDA    LFF70,Y 
       STA    $EE     
       LDA    SWCHA   
       JSR    LFD3F   
       EOR    #$0F    
       TAY            
       AND    #$03    
       BNE    LF357   
       TYA            
LF357: STA    $9B     
       LDA    $89     
       BEQ    LF363   
       LDA    $D6,X   
       BMI    LF3A1   
       BPL    LF39C   
LF363: LDA    $D6,X   
       BNE    LF39F   
       LDA    $9B     
       BNE    LF37B   
       LDA    $9C,X   
       CMP    #$05    
       BEQ    LF37B   
       LDA    $80     
       LSR            
       BNE    LF378   
       INC    $9C,X   
LF378: JMP    LF55E   
LF37B: LDA    $8C,X   
       BEQ    LF378   
       INC    $D6,X   
       LDA    #$12    
       STA    $AE,X   
       LDA    LFFD7,X 
       STA    $B6,X   
       LDA    LFFD9,X 
       STA    $BE,X   
       LDA    #$00    
       STA    $CE,X   
       STA    $C6,X   
       LDA    LFFD5,X 
       STA    $9C,X   
       DEC    $8C,X   
LF39C: JMP    LF479   
LF39F: BPL    LF401   
LF3A1: LDA    $BE,X   
       CMP    #$03    
       BNE    LF3AD   
       LDA    #$00    
       STA    $BE,X   
       INC    $C6,X   
LF3AD: INC    $BE,X   
       LDA    $C6,X   
       CMP    #$0B    
       BEQ    LF3D4   
       TAY            
       AND    #$01    
       BEQ    LF3BE   
       INC    $F2     
       BNE    LF3C0   
LF3BE: DEC    $F2     
LF3C0: LDA    #$14    
       STA    AUDC0   
       LDA    $F2     
       STA    AUDF0   
       LDA    #$08    
       STA    AUDV0   
       LDA    LFF68,Y 
       STA    $EE     
       JMP    LF479   
LF3D4: JSR    LFCBE   
       STA    $BE,X   
       STA    $C6,X   
       STA    $AE,X   
       STA    $B6,X   
       STA    $D6,X   
       STA    $9C,X   
       STA    $A4     
       STA    $F2     
       LDA    $93     
       CMP    #$02    
       BNE    LF378   
       LDA    $95     
       ORA    $94     
       STA    $8B     
       LDY    #$FF    
       STY    $93     
       STY    $D0     
       INY            
       STY    $94     
       STY    $95     
       JMP    LF76B   
LF401: TXA            
       ORA    #$06    
       TAX            
       JSR    LFCDC   
       LDA    $9A     
       BMI    LF42D   
       LDA    $9B     
       BEQ    LF427   
       JSR    LFD4C   
       PHP            
       TXA            
       AND    #$01    
       TAX            
       PLP            
       BCS    LF427   
       LDA    $9B     
       BIT    $9A     
       BEQ    LF427   
       STA    $9C,X   
       STA    $C6,X   
       BNE    LF44B   
LF427: TXA            
       AND    #$01    
       TAX            
       BPL    LF479   
LF42D: TXA            
       AND    #$01    
       TAX            
       LDA    $9B     
       BEQ    LF427   
       CMP    $9C,X   
       BEQ    LF44B   
       LDA    $9C,X   
       TAY            
       LDA    LFF5A,Y 
       ORA    $9B     
       CMP    #$0F    
       BNE    LF44B   
       LDA    $9B     
       STA    $9C,X   
       BNE    LF479   
LF44B: LDA    $C6,X   
       STA    $9A     
       LDA    $9C,X   
       BIT    $9A     
       BNE    LF459   
       DEC    $CE,X   
       BPL    LF45B   
LF459: INC    $CE,X   
LF45B: CMP    #$01    
       BNE    LF465   
       INC    $AE,X   
       INC    $AE,X   
       BNE    LF479   
LF465: CMP    #$02    
       BNE    LF46F   
       DEC    $AE,X   
       DEC    $AE,X   
       BNE    LF479   
LF46F: CMP    #$04    
       BNE    LF477   
       DEC    $B6,X   
       BNE    LF479   
LF477: INC    $B6,X   
LF479: LDA    $B6,X   
       STA    $E8     
       LDA    $AE,X   
       STA    $E2     
       LDA    $D6,X   
       BPL    LF491   
       LDA    $C6,X   
       CMP    #$08    
       BCC    LF491   
       CMP    #$09    
       LDY    #$48    
       BNE    LF4B0   
LF491: LDA    $9C,X   
       CMP    #$01    
       BNE    LF49B   
       LDY    #$24    
       BNE    LF4AC   
LF49B: CMP    #$02    
       BNE    LF4A3   
       LDY    #$36    
       BNE    LF4AC   
LF4A3: CMP    #$04    
       BNE    LF4AA   
       ASL            
       STA    $FA     
LF4AA: LDY    #$12    
LF4AC: LDA    $CE,X   
       LSR            
       LSR            
LF4B0: BCC    LF4B3   
       INY            
LF4B3: TYA            
       SEC            
       SBC    $E2     
       STA    $DE     
       LDA    #$FE    
       SBC    #$00    
       STA    $DF     
       LDA    $87,X   
       BEQ    LF4CD   
       BMI    LF4CD   
       INC    $8C,X   
       LDA    #$80    
       ORA    $87,X   
       STA    $87,X   
LF4CD: LDA    $89     
       BEQ    LF4D4   
       JMP    LF825   
LF4D4: LDA    $D6     
       ORA    $D7     
       BMI    LF4EF   
       LDA    $A4     
       BEQ    LF4EF   
       CMP    #$1F    
       BEQ    LF4EA   
       INC    $A4     
       LDA    $A4     
       STA    AUDF0   
       BNE    LF4EF   
LF4EA: JSR    LFCBE   
       STA    $A4     
LF4EF: LDA    $D6,X   
       BMI    LF55E   
       LDA    $9E,X   
       BNE    LF51C   
       LDA    INPT4,X 
       BMI    LF55E   
       CLC            
       LDA    $B6,X   
       ADC    #$05    
       STA    $A0,X   
       STA    $EA     
       SEC            
       LDA    $AE,X   
       SBC    #$0B    
       STA    $A2,X   
       STA    $E6     
       LDA    #$04    
       STA    AUDC0   
       ASL            
       STA    AUDV0   
       LDA    #$05    
       STA    $A4     
       LDA    $9C,X   
       STA    $9E,X   
LF51C: CMP    #$01    
       BNE    LF524   
       LDA    #$03    
       BNE    LF52A   
LF524: CMP    #$02    
       BNE    LF538   
       LDA    #$FB    
LF52A: ADC    $A2,X   
       BMI    LF55B   
       STA    $A2,X   
       STA    $E6     
       LDA    $A0,X   
       STA    $EA     
       BNE    LF55E   
LF538: CMP    #$04    
       BNE    LF540   
       LDA    #$FE    
       BNE    LF546   
LF540: CMP    #$08    
       BNE    LF55E   
       LDA    #$02    
LF546: CLC            
       ADC    $A0,X   
       STA    $A0,X   
       CMP    #$10    
       BCC    LF55B   
       CMP    #$94    
       BCS    LF55B   
       STA    $EA     
       LDA    $A2,X   
       STA    $E6     
       BCC    LF55E   
LF55B: JSR    LFCAA   
LF55E: LDA    $A6     
       BEQ    LF587   
       LDA    $A6     
       CMP    #$01    
       BNE    LF56E   
       INC    $E7     
       INC    $E7     
       BNE    LF583   
LF56E: CMP    #$02    
       BNE    LF579   
       DEC    $E7     
       DEC    $E7     
       JMP    LF583   
LF579: CMP    #$04    
       BNE    LF581   
       DEC    $A7     
       BNE    LF583   
LF581: INC    $A7     
LF583: LDA    $A7     
       STA    $EB     
LF587: LDA    $83     
       BNE    LF60A   
       LDA    $93     
       BEQ    LF5BD   
       LDA    $80     
       AND    #$07    
       BNE    LF5B1   
       LDA    $91     
       CMP    #$18    
       BNE    LF59F   
       LDA    #$10    
       STA    $91     
LF59F: STA    AUDF1   
       LDA    #$08    
       STA    AUDV1   
       LDA    #$01    
       STA    AUDC1   
       INC    $91     
       LDA    $93     
       CMP    #$02    
       BEQ    LF5BA   
LF5B1: LDA    $80     
       AND    #$03    
       BEQ    LF5BA   
       JMP    LF730   
LF5BA: JMP    LF60D   
LF5BD: LDA    $8F     
       CMP    $90     
       BNE    LF606   
       LDA    $90     
       CMP    #$03    
       BEQ    LF5DC   
       LDA    $8E     
       LDX    #$04    
LF5CD: CMP    LFFE4,X 
       BEQ    LF5D7   
       DEX            
       BPL    LF5CD   
       BMI    LF5DC   
LF5D7: LDA    LFFE9,X 
       STA    $90     
LF5DC: LDA    #$00    
       STA    $8F     
       LDA    $92     
       BNE    LF5F6   
       LDA    $91     
       CMP    #$07    
       BNE    LF5EE   
       LDA    #$09    
       BNE    LF5F0   
LF5EE: LDA    #$07    
LF5F0: STA    $91     
       LDA    #$05    
       STA    $92     
LF5F6: DEC    $92     
       LDA    #$03    
       STA    AUDC1   
       LDA    $91     
       STA    AUDF1   
       LDA    $92     
       STA    AUDV1   
       LDA    $8F     
LF606: CMP    #$03    
       BCC    LF60D   
LF60A: JMP    LF730   
LF60D: TAX            
       CLC            
       ADC    #$06    
       STA    $9B     
LF613: LDA    $D0,X   
       BNE    LF61A   
LF617: JMP    LF726   
LF61A: LDA    $C0,X   
       BMI    LF617   
       LDA    $A6     
       BEQ    LF625   
       JMP    LF6A6   
LF625: LDA    #$80    
       STA    $E7     
       LDA    $D0,X   
       BMI    LF675   
       CMP    #$04    
       BEQ    LF675   
       CMP    #$05    
       BNE    LF63B   
       LDA    $C8,X   
       CMP    #$07    
       BCS    LF6A6   
LF63B: LDA    $B0,X   
       LDY    #$00    
       CMP.wy $00B6,Y 
       BEQ    LF64A   
       INY            
       CMP.wy $00B6,Y 
       BNE    LF659   
LF64A: LDA    $A8,X   
       CMP.wy $00AE,Y 
       BCC    LF655   
       LDA    #$02    
       BNE    LF690   
LF655: LDA    #$01    
       BNE    LF690   
LF659: LDA    $A8,X   
       CMP.wy $00AE,Y 
       BEQ    LF666   
       DEY            
       CMP.wy $00AE,Y 
       BNE    LF675   
LF666: LDA    $B0,X   
       CMP.wy $00B6,Y 
       BCC    LF671   
       LDA    #$04    
       BNE    LF690   
LF671: LDA    #$08    
       BNE    LF690   
LF675: LDA    $D0,X   
       CMP    #$05    
       BNE    LF6A6   
       LDA    $C0,X   
       AND    #$03    
       BEQ    LF685   
       LDA    #$02    
       BNE    LF687   
LF685: LDA    #$08    
LF687: CMP    $CB     
       BNE    LF68C   
       LSR            
LF68C: STA    $CB     
       BNE    LF694   
LF690: CMP    $C0,X   
       BNE    LF675   
LF694: STA    $A6     
       STX    $A5     
       CLC            
       LDA    $B0,X   
       ADC    #$05    
       STA    $A7     
       SEC            
       LDA    $A8,X   
       SBC    #$0B    
       STA    $E7     
LF6A6: JSR    LFCDC   
       LDA    $9A     
       BMI    LF6FE   
       LDA    $C0,X   
       JSR    LFD4C   
       BCC    LF6CA   
       STA    $C0,X   
       LDA    $D0,X   
       CMP    #$04    
       BCC    LF726   
       LDY    #$00    
       STY    $8B     
       DEY            
       STY    $93     
       STY    $A8,X   
       STY    $D0,X   
       JMP    LF78D   
LF6CA: LDA    $C0,X   
       TAY            
       LDA    LFF5A,Y 
       AND    $9A     
       STA    $9A     
       LDA    $93     
       CMP    #$01    
       BNE    LF6E0   
       LDA    $CC     
       BIT    $9A     
       BNE    LF6EB   
LF6E0: LDY    $80     
       LDA    LF000,Y 
       AND    $9A     
       BNE    LF6EB   
       LDA    $9A     
LF6EB: LDY    #$00    
LF6ED: LSR            
       BCS    LF6F5   
       INY            
       CPY    #$04    
       BNE    LF6ED   
LF6F5: LDA    LFFDB,Y 
       STA    $C0,X   
       LDA    #$00    
       STA    $C8,X   
LF6FE: INC    $C8,X   
       INC    $C8,X   
       LDA    $A8,X   
       LDY    $C0,X   
       CPY    #$01    
       BNE    LF70E   
       ADC    #$03    
       BNE    LF714   
LF70E: CPY    #$02    
       BNE    LF718   
       SBC    #$04    
LF714: STA    $A8,X   
       BNE    LF726   
LF718: CPY    #$04    
       BNE    LF722   
       DEC    $B0,X   
       DEC    $B0,X   
       BNE    LF726   
LF722: INC    $B0,X   
       INC    $B0,X   
LF726: INX            
       INX            
       INX            
       CPX    $9B     
       BEQ    LF730   
       JMP    LF613   
LF730: INC    $8F     
       LDX    $98     
       CPX    #$05    
       BNE    LF73A   
       LDX    #$FF    
LF73A: INX            
       CPX    $98     
       BEQ    LF759   
       LDA    $D0,X   
       BMI    LF751   
       BEQ    LF751   
       CMP    #$02    
       BEQ    LF74D   
       CMP    #$03    
       BNE    LF7A0   
LF74D: LDA    $D8,X   
       BNE    LF7A0   
LF751: CPX    #$05    
       BNE    LF73A   
       LDX    #$FF    
       BNE    LF73A   
LF759: LDA    $D0,X   
       BEQ    LF76B   
       BMI    LF76B   
       CMP    #$02    
       BEQ    LF767   
       CMP    #$03    
       BNE    LF7A0   
LF767: LDA    $D8,X   
       BNE    LF7A0   
LF76B: LDX    #$05    
LF76D: LDA    $D0,X   
       BPL    LF78A   
       DEX            
       BPL    LF76D   
       LDA    $80     
       LDX    $93     
       BMI    LF77E   
       LDX    $84     
       BNE    LF781   
LF77E: CLC            
       ADC    #$60    
LF781: STA    $CD     
       LDA    #$03    
       STA    $89     
       JSR    LFCC7   
LF78A: JMP    LF825   
LF78D: LDA    $80     
       ASL            
       BMI    LF76B   
       LSR            
       JSR    LFD76   
       LDA    #$05    
       STA    $D0,X   
       LDA    #$02    
       STA    $93     
       BNE    LF78A   
LF7A0: STX    $98     
       LDA    $B0,X   
       STA    $E9     
       LDA    $A8,X   
       STA    $E3     
       LDY    $D0,X   
       LDA    LFF62,Y 
       STA    $EF     
       LDA    LFEFA,Y 
       TAY            
       LDA    $C0,X   
       BPL    LF7BD   
       LDY    #$0C    
       BNE    LF7D0   
LF7BD: CMP    #$01    
       BEQ    LF7C6   
       CMP    #$02    
       BNE    LF7C9   
       INY            
LF7C6: INY            
       BNE    LF7D0   
LF7C9: CMP    #$04    
       BNE    LF7D0   
       ASL            
       STA    $FB     
LF7D0: LDA    LFFEE,Y 
       STA    $E0     
       LDA    #$FE    
       STA    $E1     
       LDA    $C0,X   
       BPL    LF810   
       LDA    $B8,X   
       CMP    #$03    
       BNE    LF806   
       LDA    $D0,X   
       CMP    #$04    
       BCC    LF7FE   
       LDY    #$FF    
       STY    $C0,X   
       STY    $D0,X   
       INC    $8B     
       CMP    #$05    
       BEQ    LF7F9   
       INC    $95     
       BNE    LF78D   
LF7F9: INC    $94     
       JMP    LF76B   
LF7FE: LDA    #$80    
       STA    $D0,X   
       STA    $E3     
       BNE    LF825   
LF806: INC    $B8,X   
       LDA    $B8,X   
       CMP    #$02    
       BCS    LF816   
       BCC    LF818   
LF810: LDA    $C8,X   
       LSR            
       LSR            
       BCC    LF818   
LF816: INC    $E0     
LF818: SEC            
       LDA    $E0     
       SBC    $E3     
       STA    $E0     
       LDA    $E1     
       SBC    #$00    
       STA    $E1     
LF825: LDA    INTIM   
       BPL    LF825   
       LDA    #$02    
       STA    VSYNC   
       LDA    #$2A    
       STA    TIM8T   
       LDX    #$05    
LF835: LDA    $D8,X   
       BNE    LF84D   
       LDA    $A8,X   
       CMP    $AE     
       BEQ    LF84D   
       CMP    $AF     
       BEQ    LF84D   
       LDA    $B0,X   
       CMP    $B6     
       BEQ    LF84D   
       CMP    $B7     
       BNE    LF84F   
LF84D: DEC    $D8,X   
LF84F: DEX            
       BPL    LF835   
LF852: LDA    INTIM   
       BNE    LF852   
       STA    WSYNC   
       STA    VSYNC   
       LDA    #$28    
       STA    TIM64T  
       LDA    $83     
       BEQ    LF874   
       LDA    $D6     
       ORA    $D7     
       BNE    LF874   
       JSR    LFCC7   
       LDX    #$62    
LF86F: STA    $8F,X   
       DEX            
       BPL    LF86F   
LF874: LDX    $99     
       LDY    #$00    
LF878: STY    $9A     
       LDA    $D0,X   
       BEQ    LF880   
       BPL    LF88A   
LF880: LDA    #$00    
       STA.wy $00F0,Y 
       STA.wy $00EC,Y 
       BEQ    LF8B8   
LF88A: TAY            
       LDA    LFF62,Y 
       LDY    $9A     
       STA.wy $00F0,Y 
       LDA    $B8,X   
       LDY    #$06    
LF897: SEC            
       SBC    #$0B    
       BMI    LF89F   
       DEY            
       BPL    LF897   
LF89F: TYA            
       LDY    $9A     
       STA.wy $00E4,Y 
       LDA    $B8,X   
LF8A7: CMP    #$0B    
       BCC    LF8AF   
       SBC    #$0B    
       BPL    LF8A7   
LF8AF: TAY            
       LDA    LFF73,Y 
       LDY    $9A     
       STA.wy $00EC,Y 
LF8B8: INX            
       INX            
       INX            
       INY            
       CPY    #$02    
       BNE    LF878   
       LDA    $99     
       CMP    #$02    
       BNE    LF8CA   
       LDA    #$FF    
       STA    $99     
LF8CA: INC    $99     
       LDA    $81     
       BEQ    LF8D4   
       LDA    $80     
       AND    #$01    
LF8D4: EOR    #$01    
       TAX            
       LDA    #$00    
       STA    $F3     
       STA    $F4     
       LDA    $85,X   
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $F6     
       LDA    $85,X   
       AND    #$0F    
       STA    $F5     
       LDA    $87,X   
       AND    #$0F    
       STA    $F7     
       LDX    #$05    
LF8F3: LDA    $E8,X   
       BEQ    LF91C   
       CLC            
       ADC    #$2E    
       TAY            
       AND    #$0F    
       STA    $9A     
       TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       CLC            
       ADC    $9A     
       CMP    #$0F    
       BCC    LF90F   
       SBC    #$0F    
       INY            
LF90F: EOR    #$07    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    $E8,X   
       TYA            
       ORA    $E8,X   
       STA    $E8,X   
LF91C: DEX            
       BPL    LF8F3   
LF91F: LDA    INTIM   
       BNE    LF91F   
       STA    WSYNC   
       STA    VBLANK  
       STA    PF0     
       STA    PF1     
       LDY    #$FE    
       LDA    #$46    
       STA    $F8     
       LDA    #$FF    
       STA    $F9     
       LDA    $80     
       PHA            
       LDX    $81     
       BNE    LF941   
       AND    #$FE    
       STA    $80     
LF941: STA    WSYNC   
       LDA    #$10    
       STA    HMP0    
       LDA    #$20    
       STA    HMP1    
       LDA    $80     
       LSR            
       BCC    LF953   
       NOP            
       BCS    LF958   
LF953: LDX    #$07    
LF955: DEX            
       BNE    LF955   
LF958: STA    RESP0   
       STA    RESP1   
       LDA    #$01    
       STA    NUSIZ1  
       LDA    #$03    
       STA    NUSIZ0  
       LDA    $80     
       LDX    $94     
       BEQ    LF973   
       LSR            
       AND    #$0F    
       STA    COLUPF  
       STA    $EE     
       BPL    LF97F   
LF973: AND    #$01    
       TAX            
       LDA    LFF70,X 
       LDX    $83     
       BEQ    LF97F   
       EOR    $8E     
LF97F: STA    COLUP0  
       STA    COLUP1  
       STA    WSYNC   
       STA    HMOVE   
       BCC    LF990   
       NOP            
       LDX    #$08    
LF98C: DEX            
       BNE    LF98C   
       NOP            
LF990: LDY    $F7     
       LDA    ($F8),Y 
       STA    GRP0    
       LDY    $F6     
       LDA    ($F8),Y 
       STA    GRP1    
       LDY    $F5     
       LDA    ($F8),Y 
       TAX            
       LDY    $F4     
       LDA    ($F8),Y 
       STA    $9A     
       LDY    $F3     
       LDA    ($F8),Y 
       LDY    $9A     
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       LDA    $F8     
       SEC            
       SBC    #$0A    
       STA    $F8     
       BNE    LF990   
       STA    GRP0    
       STA    GRP1    
       PLA            
       STA    $80     
       LDX    #$05    
LF9C5: DEX            
       BNE    LF9C5   
       STA    WSYNC   
       LDA    $FA     
       STA    REFP0   
       LDA    $FB     
       STA    REFP1   
       STA    WSYNC   
       STA    HMCLR   
       LDX    #$03    
LF9D8: LDA    $E8,X   
       AND    #$F0    
       STA    HMP0,X  
       LDA    $E8,X   
       AND    #$0F    
       STA    $E8,X   
       DEX            
       BPL    LF9D8   
       LDA    $E8     
       AND    #$0F    
       TAY            
       STA    WSYNC   
LF9EE: DEY            
       BPL    LF9EE   
       STA    RESP0   
       LDY    $E9     
       STA    WSYNC   
LF9F7: DEY            
       BPL    LF9F7   
       STA    RESP1   
       LDY    $EA     
       STA    WSYNC   
LFA00: DEY            
       BPL    LFA00   
       STA    RESM0   
       LDY    $EB     
       STA    WSYNC   
LFA09: DEY            
       BPL    LFA09   
       STA    RESM1   
       STA    WSYNC   
       STA    HMOVE   
       STA    WSYNC   
       LDA    #$01    
       STA    CTRLPF  
       LDY    #$77    
       LDA    #$0A    
       STA    $E9     
       LDA    $80     
       BPL    LFA28   
       LDX    #$8F    
       LDA    #$FF    
       BNE    LFA2D   
LFA28: LDX    #$9A    
       LDA    #$FF    
       NOP            
LFA2D: STX    $F7     
       STA    $F8     
       LDX    #$FF    
       LDA    $EE     
       STA    COLUP0  
       LDA    $EF     
       STA    COLUP1  
       LDA    #$00    
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    $F5     
       STA    $F6     
       STA    $F3     
       STA    $F4     
       LDA    #$80    
       STX    PF2     
       STX    PF1     
LFA4F: STA    WSYNC   
       STA    PF0     
       JSR    LFC69   
       CPY    $E7     
       PHP            
       PLA            
       STA    ENAM1   
       LDA    #$07    
       STA    $9B     
       LDA    $84     
       AND    #$01    
       TAX            
       LDA    LFFD1,X 
       STA    $F9     
       LDA    LFFD3,X 
       STA    $FB     
       LDA    #$FF    
       STA    $FA     
       STA    $FC     
       STA    WSYNC   
       JSR    LFC69   
       NOP            
       NOP            
       NOP            
       STY    $E8     
       LDY    $E9     
       LDA    ($F7),Y 
       STA    $9A     
       LDA    ($F9),Y 
       TAX            
       LDA    ($FB),Y 
       DEC    $E9     
       LDY    $E8     
       STA    PF2     
       LDA    $9A     
       STX    PF1     
       STA    PF0     
LFA96: STA    WSYNC   
       JSR    LFC69   
       CPY    $E7     
       PHP            
       PLA            
       STA    ENAM1   
       DEC    $9B     
       BNE    LFA96   
       STA    WSYNC   
       JSR    LFC69   
       NOP            
       TYA            
       BMI    LFAC8   
       STA    $E8     
       LDY    $E9     
       LDA    ($F7),Y 
       STA    $9A     
       LDA    ($F9),Y 
       TAX            
       LDA    ($FB),Y 
       DEC    $E9     
       LDY    $E8     
       STA    PF2     
       LDA    $9A     
       STX    PF1     
       JMP    LFA4F   
LFAC8: NOP            
       NOP            
       NOP            
       NOP            
       LDA    #$00    
       LDX    #$03    
LFAD0: STA    GRP0,X  
       DEX            
       BPL    LFAD0   
       STA    WSYNC   
       STA    HMCLR   
       LDA    #$80    
       STA    PF0     
       STX    PF1     
       STX    PF2     
       LDA    $94     
       BEQ    LFAED   
       LDA    $80     
       AND    #$1F    
       LSR            
       TAX            
       BPL    LFAF1   
LFAED: LDX    #$8C    
       LDA    #$28    
LFAF1: STX    COLUP0  
       STA    COLUP1  
       LDX    $8C     
       BNE    LFAFD   
       STX    COLUP0  
       BEQ    LFB02   
LFAFD: CPX    #$03    
       BEQ    LFB02   
       DEX            
LFB02: STX    NUSIZ0  
       LDA    #$20    
       STA    HMP0    
       LDY    #$04    
       STA    WSYNC   
LFB0C: DEY            
       BPL    LFB0C   
       STA    RESP0   
       LDX    $8D     
       BNE    LFB19   
       STX    COLUP1  
       BEQ    LFB1E   
LFB19: CPX    #$03    
       BEQ    LFB1E   
       DEX            
LFB1E: STX    NUSIZ1  
       LDA    LFFE0,X 
       PHA            
       AND    #$0F    
       TAY            
       PLA            
       AND    #$F0    
       STA    HMP1    
       STA    WSYNC   
LFB2E: DEY            
       BNE    LFB2E   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$00    
       STA    REFP0   
       LDA    #$08    
       STA    REFP1   
       LDA    $83     
       BEQ    LFB4B   
       LDA    $8E     
       AND    #$F6    
       STA    COLUP0  
       STA    COLUP1  
LFB4B: STA    WSYNC   
       LDA    #$70    
       STA    GRP0    
       STA    GRP1    
       LDA    #$80    
       STA    PF0     
       LDA    #$20    
       STA    PF1     
       LDA    #$00    
       STA    PF2     
       LDX    #$0C    
       STA    WSYNC   
       LDA    $EC     
       AND    #$F0    
       STA    HMM0    
       LDA    $EC     
       AND    #$0F    
       TAY            
       STA    WSYNC   
       LDA    #$60    
       STA    GRP0    
       STA    GRP1    
       STA    WSYNC   
LFB78: DEY            
       BPL    LFB78   
       STA    RESM0   
       STA    WSYNC   
       LDA    #$F0    
       STA    GRP0    
       STA    GRP1    
       LDA    $ED     
       AND    #$F0    
       STA    HMM1    
       LDA    $ED     
       AND    #$0F    
       TAY            
       STA    WSYNC   
LFB92: DEY            
       BPL    LFB92   
       STA    RESM1   
       LDY    #$0A    
LFB99: STA    WSYNC   
       LDA    LFE00,Y 
       STA    GRP0    
       STA    GRP1    
       STA    WSYNC   
       DEY            
       DEY            
       BNE    LFB99   
       STA    WSYNC   
       STA    HMOVE   
       STY    CTRLPF  
       STY    REFP1   
       STY    GRP0    
       STY    GRP1    
       LDA    #$E0    
       STA    PF1     
       LDA    #$20    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$FC    
       STA    PF2     
       LDA    #$F0    
       STA    PF0     
       LDA    $F0     
       STA    COLUP0  
       LDA    $F1     
       STA    COLUP1  
       LDA    #$1E    
       STA    PF2     
       LDX    #$02    
LFBD4: STA    WSYNC   
       LDA    #$80    
       STA    PF0     
       LDA    #$E0    
       STA    PF1     
       LDA    #$FC    
       STA    PF2     
       LDY    #$02    
LFBE4: DEY            
       BPL    LFBE4   
       LDA    #$F0    
       STA    PF0     
       LDA    #$E0    
       STA    PF1     
       NOP            
       LDA    #$1E    
       STA    PF2     
       DEX            
       BPL    LFBD4   
       LDY    #$06    
       LDA    #$00    
       STA    PF0     
       NOP            
       NOP            
       STA    PF1     
       LDA    #$01    
       STA    CTRLPF  
LFC05: STA    WSYNC   
       LDA    #$04    
       STA    PF2     
       CPY    $E4     
       PHP            
       PLA            
       STA    ENAM0   
       CPY    $E5     
       PHP            
       PLA            
       STA    ENAM1   
       NOP            
       NOP            
       NOP            
       LDA    #$02    
       STA    PF2     
       STY    $E8     
       LDY    #$02    
LFC22: STA    WSYNC   
       LDA    #$04    
       STA    PF2     
       LDX    #$06    
LFC2A: DEX            
       BPL    LFC2A   
       LDA    #$02    
       STA    PF2     
       DEY            
       BPL    LFC22   
       LDY    $E8     
       DEY            
       BNE    LFC05   
       NOP            
       NOP            
       NOP            
       LDY    #$03    
       LDA    #$00    
       STA    CTRLPF  
LFC42: STA    WSYNC   
       LDA    #$00    
       STA    PF0     
       STA    PF1     
       STA    ENAM0   
       STA    ENAM1   
       LDA    #$FC    
       STA    PF2     
       LDX    #$03    
LFC54: DEX            
       BPL    LFC54   
       LDA    #$F0    
       STA    PF0     
       LDA    #$E0    
       STA    PF1     
       LDA    #$00    
       STA    PF2     
       DEY            
       BPL    LFC42   
       JMP    LF00C   
LFC69: DEY            
       LDA    $F5     
       STA    GRP0    
       LDA    $F6     
       STA    GRP1    
       LDA    $F3     
       BEQ    LFC7F   
       INC    $F3     
       LDA    ($DE),Y 
       STA    $F5     
       JMP    LFC89   
LFC7F: STA    $F5     
       CPY    $E2     
       BNE    LFC89   
       LDA    #$F8    
       STA    $F3     
LFC89: LDA    $F4     
       BEQ    LFC96   
       INC    $F4     
       LDA    ($E0),Y 
       STA    $F6     
       JMP    LFCA0   
LFC96: STA    $F6     
       CPY    $E3     
       BNE    LFCA0   
       LDA    #$F8    
       STA    $F4     
LFCA0: STA    WSYNC   
       DEY            
       CPY    $E6     
       PHP            
       PLA            
       STA    ENAM0   
LFCA9: RTS            

LFCAA: LDA    #$00    
       STA    $9E,X   
       STA    $A2,X   
       STA    $A0,X   
       LDA    $9E     
       ORA    $9F     
       BNE    LFCA9   
       LDA    #$FF    
       STA    $EA     
       STA    $E6     
LFCBE: LDA    #$00    
       STA    AUDC0   
       STA    AUDF0   
       STA    AUDV0   
       RTS            

LFCC7: LDA    #$00    
       STA    AUDC1   
       STA    AUDF1   
       STA    AUDV1   
       BEQ    LFCBE   
LFCD1: LDA    #$00    
       STA    $A6     
       STA    $A7     
       LDA    #$80    
       STA    $E7     
       RTS            

LFCDC: LDY    $C8,X   
       BEQ    LFD2D   
       LDA    $C0,X   
       AND    #$03    
       BEQ    LFCEC   
       CPY    #$0A    
       BEQ    LFCF4   
       BNE    LFCF0   
LFCEC: CPY    #$0C    
       BEQ    LFCF4   
LFCF0: LDA    #$FF    
       BMI    LFD49   
LFCF4: LDA    $D0,X   
       CMP    #$05    
       BNE    LFD04   
       LDA    $80     
       ADC    $B8,X   
       JSR    LFD76   
       JMP    LFD2D   
LFD04: LDA    #$00    
       STA    $C8,X   
       LDA    $C0,X   
       CMP    #$08    
       BNE    LFD12   
       INC    $B8,X   
       BPL    LFD2D   
LFD12: CMP    #$04    
       BNE    LFD1A   
       DEC    $B8,X   
       BPL    LFD2D   
LFD1A: CMP    #$02    
       BNE    LFD26   
       LDA    $B8,X   
       ADC    #$0A    
       STA    $B8,X   
       BPL    LFD2D   
LFD26: SEC            
       LDA    $B8,X   
       SBC    #$0B    
       STA    $B8,X   
LFD2D: LDA    $B8,X   
       LSR            
       TAY            
       LDA    $84     
       AND    #$01    
       BEQ    LFD3C   
       LDA    LFDDF,Y 
       BNE    LFD3F   
LFD3C: LDA    LFDBE,Y 
LFD3F: BCS    LFD47   
       LSR            
       LSR            
       LSR            
       LSR            
       BNE    LFD49   
LFD47: AND    #$0F    
LFD49: STA    $9A     
       RTS            

LFD4C: LDY    $80     
       BPL    LFD74   
       LDY    $B8,X   
       CPY    #$16    
       BNE    LFD62   
       CMP    #$04    
       BNE    LFD74   
       LDY    #$20    
       STY    $B8,X   
       LDY    #$8B    
       BNE    LFD70   
LFD62: CPY    #$20    
       BNE    LFD74   
       CMP    #$08    
       BNE    LFD74   
       LDY    #$16    
       STY    $B8,X   
       LDY    #$13    
LFD70: STY    $B0,X   
       SEC            
       RTS            

LFD74: CLC            
       RTS            

LFD76: AND    #$3F    
       CMP    $BE     
       BEQ    LFD84   
       CMP    $BF     
       BEQ    LFD84   
       CMP    $B8     
       BNE    LFD88   
LFD84: ADC    #$00    
       BPL    LFD76   
LFD88: STA    $B8,X   
       LDY    #$00    
LFD8C: SEC            
       SBC    #$0B    
       BMI    LFD94   
       INY            
       BNE    LFD8C   
LFD94: LDA    LFF7E,Y 
       STA    $A8,X   
       LDA    $B8,X   
LFD9B: CMP    #$0B    
       BCC    LFDA3   
       SBC    #$0B    
       BPL    LFD9B   
LFDA3: TAY            
       LDA    LFF84,Y 
       STA    $B0,X   
       LDA    #$00    
       STA    $C0,X   
       STA    $C8,X   
       RTS            

LFDB0: SED            
       CLC            
       ADC    $85,X   
       STA    $85,X   
       LDA    $87,X   
       ADC    #$00    
       STA    $87,X   
       CLD            
       RTS            

LFDBE: .byte $AC,$CE,$EC,$EE,$CC,$6B,$CE,$5B,$C7,$9E,$C7,$9E,$7A,$DE,$D6,$BE
       .byte $5A,$5B,$7A,$F6,$B7,$96,$3A,$5B,$73,$B7,$96,$39,$DC,$59,$D5,$9C
       .byte $D5
LFDDF: .byte $AC,$6A,$CE,$C6,$AC,$63,$AD,$FC,$FC,$FD,$63,$97,$AF,$63,$AF,$6B
       .byte $5A,$D7,$33,$33,$3B,$D6,$BC,$F5,$BF,$79,$FC,$79,$CD,$C5,$19,$CD
       .byte $C5
LFE00: .byte $00,$00,$C6,$70,$6C,$60,$78,$78,$FF,$FF,$F8,$F8,$F0,$F0,$60,$60
       .byte $70,$70,$00,$00,$39,$38,$FF,$FF,$FE,$FF,$BC,$BD,$1E,$1C,$0B,$08
       .byte $09,$08,$08,$08,$00,$00,$08,$08,$09,$08,$0B,$08,$1E,$1C,$BC,$BD
       .byte $FE,$FF,$FF,$FF,$39,$38,$00,$00,$00,$28,$12,$82,$40,$10,$08,$84
       .byte $01,$21,$24,$88,$00,$22,$00,$08,$00,$00,$C6,$6C,$6C,$38,$78,$78
       .byte $7F,$7C,$B8,$BF,$9F,$9F,$56,$96,$9C,$5C,$00,$00,$B1,$E0,$4F,$8D
       .byte $1E,$1F,$FC,$FE,$BE,$BF,$EB,$F9,$69,$70,$28,$30,$00,$00,$28,$30
       .byte $69,$70,$EB,$F9,$BE,$BF,$FC,$FE,$1E,$1F,$4F,$8D,$B1,$E0,$00,$00
       .byte $28,$14,$2A,$14,$3F,$3E,$7C,$7F,$FF,$FF,$9B,$9B,$4E,$8E,$84,$44
       .byte $00,$00,$B0,$70,$58,$98,$1F,$1C,$3C,$3F,$7F,$7C,$DC,$DF,$76,$7C
       .byte $34,$38,$00,$00,$34,$38,$76,$7C,$DC,$DF,$7F,$7C,$3C,$3F,$1F,$1C
       .byte $58,$98,$B0,$70,$00,$00,$C3,$66,$3C,$BD,$18,$99,$5A,$DB,$FF,$FF
       .byte $DB,$5A,$99,$18,$81,$00,$00,$00,$FC,$3F,$3C,$1E,$30,$18,$38,$38
       .byte $1F,$1F,$1C,$1C,$18,$18,$0C,$0C,$00,$00,$01,$00,$03,$00,$0F,$09
       .byte $7F,$7B,$FB,$FF,$B1,$B7,$10,$13,$10,$11,$00,$00,$10,$11,$10,$13
       .byte $B1,$B7,$FB,$FF,$7F,$7B,$0F,$09,$03,$00
LFEFA: .byte $01,$00,$00,$03,$06,$09,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $3E,$7E,$7F,$3E,$06,$3E,$3E,$18,$3E,$3E,$63,$18,$70,$63,$06,$63
       .byte $63,$18,$63,$06,$73,$18,$3C,$03,$7E,$03,$63,$18,$63,$03,$6B,$18
       .byte $1E,$1E,$66,$03,$7E,$0C,$3E,$3F,$67,$18,$07,$0C,$36,$7E,$60,$06
       .byte $63,$63,$63,$38,$63,$06,$1E,$60,$30,$63,$63,$63,$3E,$18,$3E,$3F
       .byte $0E,$7E,$1E,$7E,$3E
LFF4F: .byte $3E,$01,$02,$05,$0A
LFF54: .byte $14,$02,$04,$0A,$14,$28
LFF5A: .byte $0F,$0D,$0E,$00,$07,$00,$00,$00
LFF62: .byte $0B,$8C,$28,$44,$2C,$0F
LFF68: .byte $2C,$00,$8C,$00,$2C,$00,$8C,$00
LFF70: .byte $2C,$8C,$00
LFF73: .byte $40,$44,$48,$4C,$50,$54,$58,$5C,$60,$64,$68
LFF7E: .byte $76,$62,$4E,$3A,$26,$12
LFF84: .byte $13,$1F,$2B,$37,$43,$4F,$5B,$67,$73,$7F,$8B,$80,$80,$80,$80,$80
       .byte $E0,$00,$E0,$80,$80,$80,$80,$80,$80,$80,$80,$E0,$80,$E0,$80,$80
       .byte $80,$00,$27,$20,$3C,$04,$E4,$00,$3C,$00,$3F,$00,$00,$3C,$00,$3C
       .byte $00,$E4,$04,$27,$20,$3C,$00,$08,$49,$41,$49,$08,$79,$01,$CF,$08
       .byte $C9,$00,$40,$4F,$08,$49,$49,$49,$40,$79,$00,$79,$01
LFFD1: .byte $A5,$B0
LFFD3: .byte $BB,$C6
LFFD5: .byte $08,$04
LFFD7: .byte $13,$8B
LFFD9: .byte $37,$41
LFFDB: .byte $01,$02,$04,$08,$01
LFFE0: .byte $2D,$3C,$00,$4B
LFFE4: .byte $03,$06,$09,$0C,$0F
LFFE9: .byte $18,$12,$0C,$06,$03
LFFEE: .byte $5A,$6C,$7E,$90,$A2,$B4,$C6,$C6,$C6,$D8,$EA,$FC,$48,$00,$00,$F0
       .byte $FF,$FF
