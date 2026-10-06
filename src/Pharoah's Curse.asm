; Disassembly of roms/Pharoah's Curse.bin
; Disassembled Tue Oct  6 15:22:41 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Pharoah's Curse.bin
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
HMP0    =  $20
HMP1    =  $21
HMM0    =  $22
HMM1    =  $23
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXPPMM  =  $37
INPT4   =  $3C
INPT5   =  $3D
SWCHA   =  $0280
SWACNT  =  $0281
SWCHB   =  $0282
SWBCNT  =  $0283
INTIM   =  $0284
TIM64T  =  $0296

       ORG $F000

START:
       LDX    #$FF    
       TXS            
       CLD            
       INX            
       TXA            
LF006: STA    VSYNC,X 
       DEX            
       BNE    LF006   
       STA    SWACNT  
       STA    SWBCNT  
       TSX            
       STX    $E0     
       LDA    #$50    
       STA    $C5     
       STA    $C7     
       STA    $C9     
       LDA    #$08    
       STA    $CB     
       LDA    #$0A    
       STA    $E9     
       STA    $EA     
       STA    $EB     
       LDX    #$FC    
       STX    $C6     
       STX    $C8     
       STX    $CA     
       STX    $CC     
       INX            
       STX    $D2     
       STX    $D6     
       INX            
       STX    $BD     
       INX            
       STX    $D4     
       LDA    #$05    
       STA    $DF     
       JSR    LF047   
       JMP    LF0A6   
LF047: LDY    #$02    
       LDA    $E0     
       STA    $BE     
LF04D: LDA    $BE     
       LSR    $BE     
       AND    #$3F    
       CMP    #$26    
       BCC    LF059   
       SBC    #$26    
LF059: TAX            
       LDA    LFC80,X 
       STA.wy $00EF,Y 
       LDA.wy $00E9,Y 
       BNE    LF072   
       CPX    #$11    
       BCC    LF072   
       CPX    #$15    
       BCS    LF072   
       LDA    #$01    
       STA.wy $00E9,Y 
LF072: DEY            
       BPL    LF04D   
       LDA    #$C0    
       STA    $94     
       LDA    #$01    
       STA    $80     
       LDA    #$5E    
       STA    $B2     
       LDA    #$11    
       STA    $B4     
       LDA    #$B3    
       STA    $B5     
       LDA    #$02    
       LDY    #$01    
LF08D: LDX    #$00    
       BIT    $E0     
       BEQ    LF095   
       LDX    #$09    
LF095: STX    $EC,Y   
       LSR            
       DEY            
       BPL    LF08D   
       LDA    #$2E    
       STA    $EE     
       LDA    #$80    
       STA    $E8     
       STA    $D5     
       RTS            

LF0A6: JSR    LF0B2   
       JSR    LF125   
       JSR    LF8C0   
       JMP    LF0A6   
LF0B2: INC    $B6     
       LDA    #$40    
       EOR    $B6     
       BNE    LF0BE   
       STA    $B6     
       INC    $B9     
LF0BE: STA    WSYNC   
       STA    VBLANK  
       LDA    $E4     
       BEQ    LF0E7   
       LDA    $E6     
       AND    #$07    
       AND    $B6     
       BNE    LF0E7   
       LDA    $E6     
       LSR            
       LSR            
       LSR            
       CMP    $E2     
       BEQ    LF0E1   
       LDX    $E2     
       INX            
       STX    $E2     
       STX    AUDF0   
       JMP    LF0E7   
LF0E1: LDX    #$00    
       STX    $E4     
       STX    AUDV0   
LF0E7: STA    WSYNC   
       LDX    $E5     
       BEQ    LF10D   
       LDA    $E7     
       BEQ    LF0FC   
       DEX            
       STX    $E5     
       STX    AUDV1   
       BNE    LF10D   
       STX    $E7     
       BEQ    LF10D   
LF0FC: LDX    $E3     
       DEX            
       STX    $E3     
       STX    AUDF1   
       CPX    #$0F    
       BNE    LF10D   
       LDX    #$00    
       STX    $E5     
       STX    AUDV1   
LF10D: STA    WSYNC   
       LDA    #$02    
       STA    WSYNC   
       STA    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    WSYNC   
       STA    VSYNC   
       LDA    #$19    
       STA    TIM64T  
       RTS            

LF125: JSR    LF18C   
       LDA    SWCHB   
       AND    #$01    
       BNE    LF182   
       STX    $E5     
       LDA    #$80    
       STA    $DE     
       LDA    #$05    
       STA    $DF     
       LDA    #$00    
       STA    $C1     
       STA    $C2     
       STA    $C3     
       STA    $C4     
LF143: LDX    #$31    
LF145: STA    $80,X   
       DEX            
       BPL    LF145   
       STA    $B3     
       STA    $D1     
       LDA    $E0     
       AND    #$07    
       STA    $E9     
       EOR    #$02    
       STA    $EA     
       EOR    #$06    
       STA    $EB     
       STA    CXCLR   
       LDY    #$07    
       LDA    $DD     
       AND    #$02    
       BNE    LF174   
       LDA    $DF     
       AND    #$01    
       ASL            
       TAX            
       LDA    $C2,X   
       CMP    #$05    
       BCS    LF174   
       LDY    #$0F    
LF174: STY    $E1     
       JSR    LF047   
       LDA    #$FF    
       STA    $D9     
       LDA    #$87    
       STA    $DA     
       RTS            

LF182: LDA    $DE     
       BMI    LF187   
       RTS            

LF187: LDA    $DF     
       BPL    LF1C6   
       RTS            

LF18C: LDA    SWCHB   
       AND    #$02    
       BNE    LF1A1   
       LDA    $DE     
       CMP    #$01    
       BEQ    LF1A0   
       JSR    LF1AA   
       LDA    #$01    
       STA    $DE     
LF1A0: RTS            

LF1A1: LDA    $DE     
       BMI    LF1A9   
       LDA    #$00    
       STA    $DE     
LF1A9: RTS            

LF1AA: LDA    #$50    
       STA    $C5     
       STA    $C7     
       STA    $C9     
       INC    $DD     
       LDY    $DD     
       CPY    #$04    
       BCC    LF1BE   
       LDY    #$00    
       STY    $DD     
LF1BE: INY            
       TYA            
       ASL            
       ASL            
       ASL            
       STA    $CB     
       RTS            

LF1C6: LDX    #$02    
       STX    $C0     
LF1CA: LDX    $C0     
       LDA    $EF,X   
       STA    $BF     
       LDY    $E9,X   
       INY            
       JSR    LF6B2   
       BEQ    LF21C   
       STX    $C5     
       JSR    LF3D7   
       BEQ    LF21C   
       LDA    #$01    
       STA    $C7     
LF1E3: LDX    $C7     
       LDA    #$C0    
       AND    $EC,X   
       BMI    LF238   
       BNE    LF1F2   
       TYA            
       CMP    $EC,X   
       BNE    LF238   
LF1F2: LDA    $B4,X   
       SEC            
       SBC    $BF     
       CMP    #$07    
       BCC    LF1FF   
       CMP    #$F9    
       BCC    LF238   
LF1FF: LDA    $BF     
       STA    $B4,X   
       LDA    $EC,X   
       ORA    #$40    
       STA    $EC,X   
       LDA    #$07    
       AND    $B6     
       BNE    LF238   
       INY            
       JSR    LF6B2   
       BEQ    LF21F   
       LDX    $C7     
       INC    $EC,X   
       JMP    LF237   
LF21C: JMP    LF284   
LF21F: LDX    $C7     
       LDA    $EC,X   
       ORA    #$80    
       STA    $EC,X   
       LDX    #$00    
       STX    $C9     
       INX            
       STX    $CB     
       LDA    $DF     
       AND    #$01    
       ASL            
       TAX            
       JSR    LF782   
LF237: DEY            
LF238: DEC    $C7     
       BPL    LF1E3   
       LDA    #$07    
       AND    $B6     
       BNE    LF284   
       LDX    $C5     
       LDA    LFED8,X 
       STA    $B7     
       LDA    LFEB0,X 
       EOR    #$FF    
       AND    ($B7),Y 
       STA    ($B7),Y 
       DEY            
       LDA    LFEB0,X 
       ORA    ($B7),Y 
       STA    ($B7),Y 
       DEX            
       LDA    LFED8,X 
       STA    $B7     
       LDA    LFEB0,X 
       ORA    ($B7),Y 
       STA    ($B7),Y 
       INY            
       LDA    LFEB0,X 
       EOR    #$FF    
       AND    ($B7),Y 
       STA    ($B7),Y 
       LDX    $C0     
       STY    $E9,X   
       LDA    #$08    
       STA    $E5     
       STA    AUDV1   
       LSR            
       STA    AUDC1   
       LDA    #$1F    
       STA    $E3     
       STA    AUDF1   
LF284: DEC    $C0     
       BMI    LF28B   
       JMP    LF1CA   
LF28B: LDX    $DA     
       CPX    #$88    
       BCC    LF2D2   
       BEQ    LF2CD   
       CPX    #$C0    
       BEQ    LF29B   
       DEX            
       STX    $DA     
       RTS            

LF29B: LDA    $B6     
       AND    #$0F    
       BNE    LF2CC   
       LDX    $D9     
       INX            
       CPX    #$0A    
       BEQ    LF2CA   
       STX    $D9     
       LDA    #$08    
       STA    $E4     
       STA    AUDV0   
       LDA    #$04    
       STA    AUDC0   
       LDA    #$01    
       STA    AUDF0   
       STA    $E2     
       LDA    #$A0    
       STA    $E6     
       LDA    #$10    
       STA    $C9     
       LDA    #$00    
       STA    $CB     
       JSR    LF782   
       RTS            

LF2CA: DEC    $DA     
LF2CC: RTS            

LF2CD: LDA    #$00    
       JMP    LF143   
LF2D2: LDX    $B3     
       CPX    #$10    
       BCC    LF303   
       CPX    #$70    
       BCS    LF315   
       LDA    $B6     
       AND    #$0F    
       BNE    LF329   
       CLC            
       TXA            
       ADC    #$10    
       STA    $B3     
       LDA    $D1     
       EOR    #$08    
       STA    $D1     
       LDA    #$08    
       STA    $E4     
       STA    AUDV0   
       LDA    #$01    
       STA    AUDC0   
       LDA    #$0F    
       STA    $E2     
       STA    AUDF0   
       LDA    #$FB    
       STA    $E6     
       RTS            

LF303: BIT    CXPPMM  
       BPL    LF32A   
       LDA    $B3     
       ORA    #$10    
       STA    $B3     
       LDA    #$70    
       STA    $D1     
       JSR    LF839   
       RTS            

LF315: LDA    $E4     
       BNE    LF329   
       LDA    $DD     
       LSR            
       BCS    LF320   
       DEC    $DF     
LF320: DEC    $DF     
       BMI    LF329   
       LDA    #$00    
       JMP    LF143   
LF329: RTS            

LF32A: LDX    $B2     
       LDY    $B3     
       LDA    SWCHA   
       AND    #$F0    
       STA    $BE     
       LDA    $DF     
       LSR            
       BCS    LF343   
       LDA    SWCHA   
       ASL            
       ASL            
       ASL            
       ASL            
       STA    $BE     
LF343: LDA    $BE     
       CMP    #$B0    
       BEQ    LF3A6   
       CMP    #$70    
       BEQ    LF363   
       LDA    $B6     
       AND    #$07    
       BEQ    LF356   
       JMP    LF3D4   
LF356: LDA    $BE     
       CMP    #$E0    
       BEQ    LF380   
       CMP    #$D0    
       BEQ    LF393   
       JMP    LF3D4   
LF363: CPX    #$B3    
       BCS    LF3D4   
       INX            
       TXA            
       AND    #$0F    
       BNE    LF36E   
       INX            
LF36E: TXA            
       JSR    LF745   
       BMI    LF3D4   
       STX    $B2     
       LDA    #$08    
       STA    $BA     
       JSR    LF87D   
       JMP    LF3C0   
LF380: CPY    #$01    
       BCC    LF3D4   
       DEY            
       TXA            
       JSR    LF745   
       BMI    LF3D4   
       STY    $B3     
       JSR    LF88C   
       JMP    LF3C0   
LF393: CPY    #$09    
       BCS    LF3D4   
       INY            
       TXA            
       JSR    LF745   
       BMI    LF3D4   
       STY    $B3     
       JSR    LF88C   
       JMP    LF3C0   
LF3A6: CPX    #$12    
       BCC    LF3D4   
       DEX            
       TXA            
       AND    #$0F    
       BNE    LF3B1   
       DEX            
LF3B1: TXA            
       JSR    LF745   
       BMI    LF3D4   
       STX    $B2     
       LDA    #$00    
       STA    $BA     
       JSR    LF87D   
LF3C0: LDA    $B2     
       JSR    LF770   
       LDY    $B3     
       STX    $BF     
       JSR    LF718   
       LDX    $BF     
       INX            
       LDY    $B3     
       JSR    LF718   
LF3D4: JMP    LF3F7   
LF3D7: LDA    #$80    
       STA    $BE     
       LDA    $B3     
       AND    #$0F    
       STA    $C7     
       CPY    $C7     
       BNE    LF3F4   
       LDA    $B2     
       SEC            
       SBC    $BF     
       CMP    #$08    
       BCC    LF3F2   
       CMP    #$F9    
       BCC    LF3F4   
LF3F2: ASL    $BE     
LF3F4: LDA    $BE     
       RTS            

LF3F7: LDX    #$01    
       STX    $C0     
LF3FB: LDX    $C0     
       LDA    $EC,X   
       BMI    LF41E   
       TAY            
       ASL            
       BMI    LF417   
       LDA    $B4,X   
       STA    $BF     
       JSR    LF6B2   
       BNE    LF414   
       JSR    LF6DD   
       JMP    LF417   
LF414: JSR    LF478   
LF417: DEC    $C0     
       BPL    LF3FB   
       JMP    LF7A4   
LF41E: LDA    $B6     
       AND    #$03    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    $DB,X   
       LDA    $B6     
       AND    #$0F    
       BNE    LF417   
       LDA    $EC,X   
       CMP    #$D0    
       BCS    LF44F   
       ADC    #$10    
       STA    $EC,X   
       CMP    #$D0    
       BCC    LF417   
       LDA    #$08    
       STA    AUDC1   
       STA    $E7     
       LDA    #$0F    
       STA    AUDV1   
       STA    $E5     
       LDA    #$1F    
       STA    AUDF1   
       JMP    LF417   
LF44F: ORA    #$0F    
       STA    $EC,X   
       LDA    $B9     
       AND    #$01    
       BNE    LF464   
       LDA    $EC,X   
       CLC            
       ADC    #$10    
       CMP    #$F0    
       BCS    LF467   
       STA    $EC,X   
LF464: JMP    LF417   
LF467: LDA    #$00    
       STA    $EC,X   
       LDA    #$11    
       LDX    $C0     
       BEQ    LF473   
       LDA    #$B3    
LF473: STA    $B4,X   
       JMP    LF417   
LF478: LDA    $E1     
       LSR            
       LSR            
       LSR            
       AND    $B6     
       BEQ    LF482   
       RTS            

LF482: LDX    $C0     
       LDA    $DB,X   
       CMP    #$10    
       BNE    LF48D   
       JMP    LF512   
LF48D: CMP    #$30    
       BNE    LF494   
       JMP    LF594   
LF494: CMP    #$00    
       BEQ    LF49B   
       JMP    LF612   
LF49B: LDA    #$07    
       AND    $E0     
       BEQ    LF4A7   
       LDA    $BF     
       CMP    $B2     
       BCS    LF4B5   
LF4A7: JSR    LF6A7   
       JSR    LF6B2   
       BEQ    LF4B2   
       JMP    LF675   
LF4B2: JSR    LF69C   
LF4B5: CPY    $B3     
       BCC    LF4FB   
       DEY            
       JSR    LF6B2   
       BEQ    LF4C2   
       JMP    LF638   
LF4C2: INY            
       INY            
       JSR    LF6B2   
       BEQ    LF4CC   
       JMP    LF644   
LF4CC: DEY            
LF4CD: LDA    $BF     
       CMP    $B2     
       BCC    LF4E1   
       JSR    LF6A7   
       JSR    LF6B2   
       BEQ    LF4DE   
       JMP    LF675   
LF4DE: JSR    LF69C   
LF4E1: LDA    #$01    
       ROR    $E0     
       AND    $E0     
       BNE    LF4F5   
       LDA    #$B3    
       CMP    $BF     
       BEQ    LF4F5   
       JSR    LF6A7   
       JMP    LF675   
LF4F5: JSR    LF69C   
       JMP    LF626   
LF4FB: INY            
       JSR    LF6B2   
       BEQ    LF504   
       JMP    LF644   
LF504: DEY            
       DEY            
       JSR    LF6B2   
       BEQ    LF50E   
       JMP    LF638   
LF50E: INY            
       JMP    LF4CD   
LF512: LDA    $E1     
       AND    $B6     
       BEQ    LF519   
       RTS            

LF519: LDA    #$07    
       AND    $E0     
       BEQ    LF525   
       CPY    $B3     
       BEQ    LF52F   
       BCC    LF52F   
LF525: DEY            
       JSR    LF6B2   
       BEQ    LF52E   
       JMP    LF638   
LF52E: INY            
LF52F: LDA    $BF     
       CMP    $B2     
       BCC    LF575   
       JSR    LF69C   
       JSR    LF6B2   
       BEQ    LF540   
       JMP    LF626   
LF540: JSR    LF6A7   
       JSR    LF6A7   
       JSR    LF6B2   
       BEQ    LF54E   
       JMP    LF675   
LF54E: JSR    LF69C   
LF551: CPY    $B3     
       BEQ    LF557   
       BCS    LF561   
LF557: DEY            
       JSR    LF6B2   
       BEQ    LF560   
       JMP    LF638   
LF560: INY            
LF561: LDA    #$01    
       ROR    $E0     
       AND    $E0     
       BNE    LF571   
       CPY    #$00    
       BEQ    LF571   
       DEY            
       JMP    LF638   
LF571: INY            
       JMP    LF644   
LF575: JSR    LF6A7   
       JSR    LF6B2   
       BEQ    LF580   
       JMP    LF675   
LF580: JSR    LF69C   
       JSR    LF69C   
       JSR    LF6B2   
       BEQ    LF58E   
       JMP    LF626   
LF58E: JSR    LF6A7   
       JMP    LF551   
LF594: LDA    $E1     
       AND    $B6     
       BEQ    LF59B   
       RTS            

LF59B: LDA    #$07    
       AND    $E0     
       BEQ    LF5A5   
       CPY    $B3     
       BCS    LF5AF   
LF5A5: INY            
       JSR    LF6B2   
       BEQ    LF5AE   
       JMP    LF644   
LF5AE: DEY            
LF5AF: LDA    $BF     
       CMP    $B2     
       BCC    LF5F3   
       JSR    LF69C   
       JSR    LF6B2   
       BEQ    LF5C0   
       JMP    LF626   
LF5C0: JSR    LF6A7   
       JSR    LF6A7   
       JSR    LF6B2   
       BEQ    LF5CE   
       JMP    LF675   
LF5CE: JSR    LF69C   
LF5D1: CPY    $B3     
       BCC    LF5DF   
       INY            
       JSR    LF6B2   
       BEQ    LF5DE   
       JMP    LF644   
LF5DE: DEY            
LF5DF: LDA    #$01    
       ROR    $E0     
       AND    $E0     
       BNE    LF5EF   
       CPY    #$09    
       BEQ    LF5EF   
       INY            
       JMP    LF644   
LF5EF: DEY            
       JMP    LF638   
LF5F3: JSR    LF6A7   
       JSR    LF6B2   
       BEQ    LF5FE   
       JMP    LF675   
LF5FE: JSR    LF69C   
       JSR    LF69C   
       JSR    LF6B2   
       BEQ    LF60C   
       JMP    LF626   
LF60C: JSR    LF6A7   
       JMP    LF5D1   
LF612: LDA    #$07    
       AND    $E0     
       BEQ    LF61E   
       LDA    $B2     
       CMP    $BF     
       BCS    LF62E   
LF61E: JSR    LF69C   
       JSR    LF6B2   
       BEQ    LF62B   
LF626: LDA    #$20    
       JMP    LF691   
LF62B: JSR    LF6A7   
LF62E: CPY    $B3     
       BCC    LF67A   
       DEY            
       JSR    LF6B2   
       BEQ    LF63D   
LF638: LDA    #$10    
       JMP    LF691   
LF63D: INY            
       INY            
       JSR    LF6B2   
       BEQ    LF649   
LF644: LDA    #$30    
       JMP    LF691   
LF649: DEY            
LF64A: LDA    $B2     
       CMP    $BF     
       BCC    LF65E   
       JSR    LF69C   
       JSR    LF6B2   
       BEQ    LF65B   
       JMP    LF626   
LF65B: JSR    LF6A7   
LF65E: LDA    #$01    
       ROR    $E0     
       AND    $E0     
       BNE    LF672   
       LDA    #$11    
       CMP    $BF     
       BEQ    LF672   
       JSR    LF69C   
       JMP    LF626   
LF672: JSR    LF6A7   
LF675: LDA    #$00    
       JMP    LF691   
LF67A: INY            
       JSR    LF6B2   
       BEQ    LF683   
       JMP    LF644   
LF683: DEY            
       DEY            
       JSR    LF6B2   
       BEQ    LF68D   
       JMP    LF638   
LF68D: INY            
       JMP    LF64A   
LF691: LDX    $C0     
       STA    $DB,X   
       LDA    $BF     
       STA    $B4,X   
       STY    $EC,X   
       RTS            

LF69C: DEC    $BF     
       LDA    #$0F    
       AND    $BF     
       BNE    LF6A6   
       DEC    $BF     
LF6A6: RTS            

LF6A7: INC    $BF     
       LDA    #$0F    
       AND    $BF     
       BNE    LF6B1   
       INC    $BF     
LF6B1: RTS            

LF6B2: LDA    $BF     
       CMP    #$0F    
       BEQ    LF6DC   
       CMP    #$B4    
       BEQ    LF6DC   
       CPY    #$FF    
       BEQ    LF6DC   
       CPY    #$0A    
       BEQ    LF6DC   
       JSR    LF770   
       JSR    LF73A   
       BEQ    LF6DC   
       LDA    $BF     
       AND    #$0F    
       CMP    #$09    
       LDA    $BF     
       ADC    #$07    
       JSR    LF770   
       JSR    LF73A   
LF6DC: RTS            

LF6DD: LDX    $C0     
       LDA    $B6     
       AND    #$03    
       BNE    LF717   
       LDA    $B4,X   
       CMP    $B2     
       BEQ    LF6FB   
       BCC    LF6F3   
       SBC    #$01    
       LDY    #$20    
       BNE    LF6F7   
LF6F3: ADC    #$01    
       LDY    #$00    
LF6F7: STA    $B4,X   
       BPL    LF715   
LF6FB: LDA    $B6     
       AND    #$0F    
       BNE    LF717   
       LDA    $EC,X   
       CMP    $B3     
       BEQ    LF717   
       BCC    LF70F   
       SBC    #$01    
       LDY    #$20    
       BNE    LF713   
LF70F: ADC    #$01    
       LDY    #$30    
LF713: STA    $EC,X   
LF715: STY    $DB,X   
LF717: RTS            

LF718: JSR    LF73A   
       BNE    LF739   
       LDA    ($B7),Y 
       ORA    LFEB0,X 
       STA    ($B7),Y 
       LDX    #$00    
       STX    $CB     
       INX            
       STX    $C9     
       JSR    LF782   
       LDX    $D9     
       BEQ    LF737   
       DEC    $D9     
       JMP    LF739   
LF737: DEC    $DA     
LF739: RTS            

LF73A: LDA    LFED8,X 
       STA    $B7     
       LDA    ($B7),Y 
       AND    LFEB0,X 
       RTS            

LF745: STA    $BE     
       LDA    #$80    
       STA    $BF     
       STY    $C0     
       LDY    #$02    
LF74F: LDA    $C0     
       CMP.wy $00E9,Y 
       BEQ    LF75D   
LF756: DEY            
       BPL    LF74F   
       ASL    $BF     
       BEQ    LF76B   
LF75D: LDA    $BE     
       SEC            
       SBC.wy $00EF,Y 
       CMP    #$09    
       BCC    LF76B   
       CMP    #$F9    
       BCC    LF756   
LF76B: LDY    $C0     
       LDA    $BF     
       RTS            

LF770: SEC            
       SBC    #$11    
       TAX            
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $BE     
       TXA            
       SEC            
       SBC    $BE     
       LSR            
       LSR            
       TAX            
       RTS            

LF782: SED            
       LDA    $DF     
       AND    #$01    
       ASL            
       TAX            
       CLC            
       LDA    $C1,X   
       ADC    $C9     
       STA    $C1,X   
       LDA    $C2,X   
       ADC    $CB     
       STA    $C2,X   
       CLD            
       LDX    $E1     
       CPX    #$07    
       BEQ    LF7A3   
       CMP    #$05    
       BCC    LF7A3   
       LSR    $E1     
LF7A3: RTS            

LF7A4: LDA    $E8     
       BPL    LF808   
       LDA    $DF     
       LSR            
       BCS    LF7B3   
       BIT    INPT5   
       BMI    LF807   
       BPL    LF7B7   
LF7B3: BIT    INPT4   
       BMI    LF807   
LF7B7: LDA    $B2     
       LDY    $B3     
       LDX    $BA     
       BNE    LF7CF   
       CMP    #$15    
       BCC    LF807   
       TAX            
       AND    #$0F    
       CMP    #$05    
       TXA            
       SBC    #$04    
       LDX    #$00    
       BEQ    LF7DD   
LF7CF: CMP    #$B3    
       BEQ    LF807   
       TAX            
       AND    #$0F    
       CMP    #$0C    
       TXA            
       ADC    #$04    
       LDX    #$08    
LF7DD: STX    $C0     
       STA    $BF     
       JSR    LF6B2   
       BEQ    LF807   
       LDA    $BF     
       STA    $EE     
       STY    $E8     
       LDA    $BC     
       AND    #$10    
       ORA    $C0     
       STA    $BC     
       LDA    #$08    
       STA    $E4     
       STA    AUDV0   
       LSR            
       STA    AUDC0   
       LDA    #$01    
       STA    AUDF0   
       STA    $E2     
       LDA    #$A0    
       STA    $E6     
LF807: RTS            

LF808: LDY    #$01    
LF80A: LDA.wy $00EC,Y 
       AND    #$0F    
       TAX            
       LDA    $E8     
       AND    #$0F    
       STA    $BE     
       CPX    $BE     
       BNE    LF833   
       LDA    $EE     
       SEC            
       SBC.wy $00B4,Y 
       CMP    #$08    
       BCC    LF828   
       CMP    #$F9    
       BCC    LF833   
LF828: LDA.wy $00EC,Y 
       BMI    LF830   
       JSR    LF869   
LF830: JSR    LF839   
LF833: DEY            
       BPL    LF80A   
       JMP    LF83E   
LF839: LDA    #$80    
       STA    $E8     
LF83D: RTS            

LF83E: LDY    $E8     
       BMI    LF83D   
       LDA    $BC     
       AND    #$08    
       BEQ    LF84F   
       LDA    $EE     
       ADC    #$04    
       JMP    LF853   
LF84F: LDA    $EE     
       SBC    #$03    
LF853: STA    $BF     
       JSR    LF6B2   
       BEQ    LF839   
       LDA    $BF     
       CMP    #$11    
       BCC    LF839   
       CMP    #$B4    
       BCS    LF839   
       STA    $EE     
       JMP    LF83D   
LF869: LDA.wy $00EC,Y 
       ORA    #$B0    
       STA.wy $00EC,Y 
       LDX    #$00    
       STX    $CB     
       LDA    #$10    
       STA    $C9     
       JSR    LF782   
       RTS            

LF87D: LDA    #$0F    
       AND    $B6     
       BNE    LF88B   
       LDA    $D1     
       EOR    #$20    
       AND    #$20    
       STA    $D1     
LF88B: RTS            

LF88C: LDA    $D1     
       EOR    #$20    
       ORA    #$40    
       STA    $D1     
       RTS            

LF895: .byte $F5,$F5,$F5,$F5,$F5,$F5,$F5,$F5,$F5,$F5,$F5,$F5,$F5,$F5,$F5,$F5
       .byte $F5,$F5,$F5,$F5,$F5,$F5,$F5,$F5,$F5,$F5,$F5,$F5,$F5,$F5,$F5,$F5
       .byte $F5,$F5,$F5,$F5,$F5,$F5,$F5,$F5,$F5,$F5,$F5
LF8C0: LDA    #$00    
       STA    HMP0    
       STA    HMP1    
       STA    HMM0    
       STA    HMM1    
       LDA    #$FC    
       STA    $C6     
       LDA    $E0     
       LSR            
       EOR    $E0     
       LSR            
       ROR    $E0     
       LDX    #$02    
       LDA    $B6     
       AND    #$01    
       STA    $BF     
       TAY            
       LDA.wy $00EE,Y 
       STA    $BE     
       INC    $BE     
       JSR    LFB9A   
       LDY    $BF     
       LDA.wy $00F0,Y 
       JSR    LFBE1   
       TXA            
       SEC            
       ADC    #$21    
       CMP    #$30    
       BCC    LF901   
       ADC    #$30    
       CMP    #$70    
       BCC    LF901   
       ADC    #$30    
LF901: STA    $BE     
       LDX    #$03    
       JSR    LFB9A   
       LDA    $B6     
       AND    #$0F    
       BNE    LF914   
       LDA    $D5     
       EOR    #$08    
       STA    $D5     
LF914: LDA    #$01    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDY    #$3A    
       LDX    $DE     
       BPL    LF95D   
       LDA    #$03    
       STA    NUSIZ0  
       LDA    $DF     
       BPL    LF932   
       LDA    $DD     
       AND    #$01    
       EOR    #$01    
       BNE    LF932   
       LDA    $B9     
LF932: AND    #$01    
       ASL            
       TAX            
       LDA    $C1,X   
       TAY            
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA    $CB     
       TYA            
       AND    #$F0    
       LSR            
       STA    $C9     
       LDA    $C2,X   
       TAY            
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA    $C7     
       TYA            
       AND    #$F0    
       LSR            
       STA    $C5     
       LDY    #$3A    
       TXA            
       BNE    LF95D   
       LDY    #$2A    
LF95D: STY    COLUP0  
       STY    COLUP1  
       LDA    #$00    
       STA    HMP0    
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
LF96B: LDA    INTIM   
       BNE    LF96B   
       STA    WSYNC   
       STA    VBLANK  
       LDX    #$08    
       STA    WSYNC   
LF978: DEX            
       BNE    LF978   
       STA    RESP0   
       STA    RESP1   
       LDA    #$10    
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       LDY    #$00    
LF989: STA    WSYNC   
       LDA    ($C5),Y 
       STA    GRP0    
       LDA    ($C7),Y 
       STA    GRP1    
       LDA    ($C9),Y 
       TAX            
       LDA    ($CB),Y 
       STA    $BE     
       STY    $C0     
       LDA    LFC00,Y 
       LDY    $BE     
       NOP            
       NOP            
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       LDY    $C0     
       INY            
       CPY    #$08    
       BNE    LF989   
       STA    WSYNC   
       LDX    #$00    
       STX    GRP0    
       STX    GRP1    
       LDX    #$30    
       STX    NUSIZ0  
       STX    NUSIZ1  
       LDX    #$02    
       LDY    #$80    
       LDA    $DF     
       BPL    LF9D0   
       LDA    $DD     
       AND    #$01    
       EOR    #$01    
       BNE    LF9D0   
       LDA    $B9     
LF9D0: AND    #$01    
       BNE    LF9D8   
       LDX    #$08    
       LDY    #$10    
LF9D8: STA    WSYNC   
LF9DA: DEX            
       BNE    LF9DA   
       NOP            
       STA    RESP0   
       STA    RESP1   
       NOP            
       STY    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$04    
       AND    $DF     
       STA    $C0     
       LDA    #$06    
       AND    $DF     
       STA    $BE     
       LDA    #$2D    
       STA    COLUPF  
       LDA    LFFE0,X 
LF9FC: STA    WSYNC   
       STA    COLUBK  
       LDA    LFF20,X 
       STA    PF0     
       LDA    LFF40,X 
       STA    PF1     
       LDA    LFF60,X 
       STA    PF2     
       LDY    LFD00,X 
       LDA    $BE     
       BEQ    LFA18   
       STY    GRP0    
LFA18: LDA    LFF80,X 
       STA    PF0     
       LDA    LFFA0,X 
       STA    PF1     
       LDA    LFFC0,X 
       STA    PF2     
       LDA    $C0     
       BEQ    LFA2D   
       STY    GRP1    
LFA2D: STA    WSYNC   
       LDA    LFF20,X 
       STA    PF0     
       LDA    LFF40,X 
       STA    PF1     
       LDA    LFF60,X 
       STA    PF2     
       LDA    LFF00,X 
       STA    COLUP0  
       STA    COLUP1  
       NOP            
       LDA    LFF80,X 
       STA    PF0     
       LDA    LFFA0,X 
       STA    PF1     
       LDA    LFFC0,X 
       STA    PF2     
       INX            
       LDA    LFFE0,X 
       CPX    #$15    
       BNE    LF9FC   
       STA    WSYNC   
       LDA    #$00    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       LDX    #$00    
       LDA    $B2     
       STA    $BE     
       JSR    LFB9A   
       STY    COLUBK  
       LDA    $BA     
       STA    REFP0   
       LDA    $BC     
       EOR    #$10    
       STA    $BC     
       INX            
       LDY    $BF     
       LDA.wy $00B4,Y 
       STA    $BE     
       JSR    LFB9A   
       LDA    #$AC    
       LDX    #$30    
       LDY    $BF     
       BEQ    LFA91   
       LDA    #$0C    
LFA91: STA    COLUP1  
       LDA.wy $00EC,Y 
       AND    #$0F    
       STA    $C0     
       LDA.wy $00E8,Y 
       STA    $BE     
       LDA.wy $00EA,Y 
       STA    $BF     
       LDA    $B3     
       AND    #$0F    
       STA    $C6     
       LDA    $D5     
       EOR    #$40    
       AND    #$C8    
       ORA.wy $00DB,Y 
       STA    $D5     
       LDX    #$00    
       LDY    #$00    
       STY    COLUPF  
       LDA    #$49    
LFABD: STA    WSYNC   
       STA    COLUBK  
       LDA    $80,X   
       STA    PF0     
       LDA    $8A,X   
       STA    PF1     
       LDA    $94,X   
       STA    PF2     
       LDA    $80,X   
       ASL            
       ASL            
       ASL            
       ASL            
       STA    PF0     
       LDA    $9E,X   
       STA    PF1     
       LDA    $A8,X   
       STA    PF2     
       LDA    #$00    
       CPX    $BE     
       BNE    LFAE5   
       LDA    ($BC),Y 
LFAE5: STA    ENAM0   
       LDA    #$00    
       STA    WSYNC   
       STA    COLUBK  
       CPX    $BF     
       BNE    LFAF3   
       LDA    #$02    
LFAF3: STA    ENAM1   
       LDA    #$00    
       CPX    $C6     
       BNE    LFAFD   
       LDA    ($D1),Y 
LFAFD: STA    GRP0    
       LDA    #$00    
       CPX    $C0     
       BNE    LFB07   
       LDA    ($D5),Y 
LFB07: STA    GRP1    
       LDA    ($D3),Y 
       STA    COLUP0  
       LDA    #$49    
       INY            
       CPY    #$08    
       BNE    LFABD   
       LDY    #$00    
       INX            
       CPX    #$0A    
       BNE    LFABD   
       STA    WSYNC   
       STY    GRP0    
       STY    GRP1    
       STY    HMP0    
       STY    HMP1    
       LDX    #$08    
       STA    WSYNC   
LFB29: DEX            
       BNE    LFB29   
       STA    RESP0   
       STA    RESP1   
       LDA    #$10    
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       STX    COLUBK  
       STX    PF0     
       STX    PF1     
       STX    PF2     
       STX    REFP0   
       STX    COLUP0  
       STX    COLUP1  
       STX    ENAM0   
       STX    ENAM1   
       LDA    #$03    
       STA    NUSIZ0  
       LDA    #$01    
       STA    NUSIZ1  
       LDA    #$00    
       STA    WSYNC   
       STA    COLUBK  
       LDA    $BE     
       NOP            
LFB5B: LDA    LFBB9,Y 
       STA    GRP0    
       LDA    LFBC1,Y 
       STA    GRP1    
       LDA    LFBC9,Y 
       STA    $BE     
       LDX    LFBD1,Y 
       LDA    LFBD9,Y 
       STY    $C0     
       LDY    $BE     
       STY    GRP0    
       STX    GRP1    
       STA    GRP0    
       INC    $C0     
       STA    WSYNC   
       LDY    $C0     
       CPY    #$08    
       BNE    LFB5B   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    COLUBK  
       STA    PF0     
       STA    PF1     
       STA    PF2     
       LDX    #$0A    
LFB94: STA    WSYNC   
       DEX            
       BPL    LFB94   
       RTS            

LFB9A: LDA    $BE     
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    $BE     
       EOR    #$07    
       STA    WSYNC   
       STA    HMCLR   
       ASL            
       ASL            
       ASL            
       ASL            
       STA    HMP0,X  
LFBAF: DEY            
       BNE    LFBAF   
       STA    RESP0,X 
       STA    WSYNC   
       STA    HMOVE   
       RTS            

LFBB9: .byte $00,$00,$FD,$52,$5A,$52,$5D,$00
LFBC1: .byte $00,$00,$A9,$2A,$3A,$2A,$AA,$00
LFBC9: .byte $0C,$04,$16,$AA,$AA,$AB,$91,$01
LFBD1: .byte $60,$40,$CC,$A9,$A9,$A5,$2D,$00
LFBD9: .byte $00,$00,$22,$55,$55,$55,$25,$00
LFBE1: SEC            
       SBC    #$11    
       TAX            
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $BE     
       TXA            
       SEC            
       SBC    $BE     
       LSR            
       LSR            
       TAX            
       RTS            

LFBF3: .byte $F5,$F5,$F5,$F5,$F5,$F5,$F5,$F5,$F5,$F5,$F5,$F5,$F5
LFC00: .byte $3C,$62,$66,$6A,$72,$62,$3C,$00,$38,$18,$18,$18,$18,$18,$3C,$00
       .byte $3C,$62,$02,$06,$18,$60,$7E,$00,$3C,$62,$02,$04,$02,$62,$3C,$00
       .byte $0C,$1C,$34,$64,$7E,$04,$04,$00,$7E,$60,$7C,$02,$02,$62,$3C,$00
       .byte $1E,$30,$60,$7C,$62,$62,$3C,$00,$7E,$06,$0C,$18,$30,$30,$30,$00
       .byte $3C,$62,$62,$3C,$62,$62,$3C,$00,$3C,$62,$62,$3E,$02,$04,$78,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD
       .byte $FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD
       .byte $FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD
LFC80: .byte $11,$15,$19,$1D,$22,$26,$2A,$2E,$33,$37,$3B,$3F,$44,$48,$4C,$51
       .byte $55,$59,$5D,$62,$66,$6A,$6E,$73,$77,$7B,$7F,$84,$88,$8C,$91,$95
       .byte $99,$9D,$A2,$A6,$AA,$AE,$B3,$B7,$0E,$1F,$0E,$12,$77,$0F,$07,$0D
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$FF,$00,$FF,$7E,$3C,$18,$00,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD
       .byte $FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD
       .byte $FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD
       .byte $FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD
LFD00: .byte $1C,$3E,$1C,$24,$EE,$1E,$04,$0C,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD
       .byte $1C,$3E,$1C,$24,$EE,$1F,$06,$0D,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD
       .byte $FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD
       .byte $1C,$3E,$1C,$08,$5E,$3C,$16,$30,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD
       .byte $FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD
       .byte $1C,$3E,$1C,$08,$1D,$1E,$34,$06,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $1C,$3E,$1C,$49,$3E,$1C,$1C,$36,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $A8,$54,$B9,$7E,$7E,$B9,$54,$A8,$2A,$54,$B9,$7E,$7E,$B9,$54,$2A
       .byte $24,$18,$5A,$BD,$7E,$BD,$5A,$A5,$24,$99,$5A,$BD,$7E,$BD,$5A,$24
       .byte $15,$2A,$9D,$7E,$7E,$9D,$2A,$15,$54,$2A,$9D,$7E,$7E,$9D,$2A,$54
       .byte $A5,$5A,$BD,$7E,$BD,$5A,$18,$24,$24,$5A,$BD,$7E,$BD,$5A,$99,$24
       .byte $00,$00,$00,$23,$52,$53,$54,$88,$00,$00,$00,$03,$12,$AB,$AA,$44
       .byte $14,$1C,$20,$40,$38,$04,$38,$40,$14,$3C,$40,$30,$08,$30,$40,$30
       .byte $00,$00,$00,$C4,$4A,$CA,$2A,$11,$00,$00,$00,$C0,$48,$D5,$55,$22
       .byte $40,$40,$3C,$02,$3C,$40,$3C,$13,$30,$40,$30,$08,$30,$40,$3E,$0A
       .byte $00,$00,$00,$00,$02,$00,$00,$00,$00,$00,$00,$00,$02,$00,$00,$00
       .byte $02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02
       .byte $FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD
       .byte $FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD
       .byte $FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD
       .byte $FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD
       .byte $FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD
       .byte $FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD
       .byte $FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD
       .byte $FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD
       .byte $FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD
LFEB0: .byte $10,$20,$40,$80,$80,$40,$20,$10,$08,$04,$02,$01,$01,$02,$04,$08
       .byte $10,$20,$40,$80,$01,$02,$04,$08,$80,$40,$20,$10,$08,$04,$02,$01
       .byte $01,$02,$04,$08,$10,$20,$40,$80
LFED8: .byte $80,$80,$80,$80,$8A,$8A,$8A,$8A,$8A,$8A,$8A,$8A,$94,$94,$94,$94
       .byte $94,$94,$94,$94,$80,$80,$80,$80,$9E,$9E,$9E,$9E,$9E,$9E,$9E,$9E
       .byte $A8,$A8,$A8,$A8,$A8,$A8,$A8,$A8
LFF00: .byte $2A,$2A,$47,$BB,$BB,$BB,$3A,$3A,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD
       .byte $FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD
LFF20: .byte $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$EF,$0F,$EF,$0F,$AF,$0F
       .byte $AF,$4F,$0F,$EF,$0F,$0F,$0F,$0F,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD
LFF40: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$FF,$00,$47,$20,$11,$22
       .byte $44,$34,$00,$FF,$00,$00,$00,$00,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD
LFF60: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$0F,$00,$04,$8C,$84,$86
       .byte $82,$84,$80,$8F,$00,$00,$00,$00,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD
LFF80: .byte $0F,$0F,$0F,$0F,$0F,$0F,$8F,$0F,$8F,$0F,$EF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$3F,$FF,$0F,$0F,$0F,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD
LFFA0: .byte $70,$00,$F8,$70,$A8,$70,$DC,$70,$FC,$00,$70,$F0,$F9,$F9,$F9,$FB
       .byte $FB,$FB,$FB,$FD,$0D,$00,$00,$00,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD
LFFC0: .byte $00,$00,$00,$04,$04,$04,$0E,$0E,$0E,$1F,$1F,$1F,$3F,$3F,$3F,$7F
       .byte $7F,$7F,$FF,$FF,$FF,$00,$00,$00,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD
LFFE0: .byte $B3,$B3,$A3,$B3,$A3,$B3,$A3,$B3,$93,$94,$95,$96,$97,$98,$99,$9A
       .byte $9B,$9C,$9D,$9E,$9F,$4F,$67,$4F,$FD,$FD,$FD,$FD,$00,$F0,$00,$F0
