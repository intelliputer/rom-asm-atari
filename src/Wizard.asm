; Disassembly of roms/Wizard.bin
; Disassembled Tue Oct  6 15:24:49 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Wizard.bin
;

      processor 6502
VSYNC   =  $00
VBLANK  =  $01
WSYNC   =  $02
COLUP0  =  $06
COLUP1  =  $07
COLUPF  =  $08
COLUBK  =  $09
CTRLPF  =  $0A
PF0     =  $0D
PF1     =  $0E
PF2     =  $0F
RESP0   =  $10
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
HMM0    =  $22
HMBL    =  $24
RESMP0  =  $28
RESMP1  =  $29
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXP0FB  =  $32
CXP1FB  =  $33
INPT4   =  $3C
INPT5   =  $3D
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
       INX            
       TXA            
LF007: STA    VSYNC,X 
       INX            
       BNE    LF007   
       LDA    #$CD    
       STA    $8A     
       JSR    LF510   
       DEC    $C6     
       INC    $E2     
       DEC    $F0     
       STX    $8A     
LF01B: INC    $8A     
       STA    WSYNC   
       BNE    LF030   
       INC    $8C     
       JSR    LF5AB   
       STA    $F2     
       LDA    $8C     
       CMP    $F1     
       BNE    LF030   
       DEC    $C6     
LF030: LDA    #$02    
       STA    WSYNC   
       STA    VBLANK  
       STA    VSYNC   
       STA    HMCLR   
       BIT    CXP0FB  
       BPL    LF04D   
       LDA    $9B     
       STA    $95     
       LDA    $9C     
       STA    $90     
       LDA    $9D     
       JSR    LF5BB   
       STA    HMP0    
LF04D: STA    WSYNC   
       STA    HMOVE   
       STA    WSYNC   
       BIT    CXP1FB  
       BVC    LF05E   
       BIT    SWCHB   
       BVC    LF05E   
       STX    $BA     
LF05E: STX    WSYNC   
       STX    VSYNC   
       STX    $9D     
       STX    HMCLR   
       LDA    #$2E    
       STA    TIM64T  
       LDA    SWCHB   
       JSR    LF5C1   
       LDX    #$06    
LF073: LDA    LF7E7,X 
       BIT    $C6     
       BPL    LF07E   
       EOR    $F2     
       AND    #$F7    
LF07E: BCS    LF082   
       AND    #$0F    
LF082: STA    $9F,X   
       DEX            
       BPL    LF073   
       STA    COLUP0  
       LDA    $8A     
       LSR            
       BCC    LF0BF   
       JSR    LF5AB   
       AND    #$03    
       CMP    #$02    
       BCC    LF09A   
       ORA    #$FC    
       CLC            
LF09A: ADC    $94     
       TAX            
       SEC            
       SBC    $A6     
       JSR    LF5BB   
       ASL            
       ASL            
       ASL            
       ASL            
       STA    HMBL    
       STX    $A6     
       JSR    LF5AB   
       AND    #$01    
       CLC            
       ADC    $99     
       STA    $A7     
       JSR    LF5AB   
       ORA    #$FE    
       CLC            
       ADC    $99     
       STA    $A8     
LF0BF: LDY    #$00    
       BIT    $C6     
       BPL    LF0CB   
       STY    AUDV0   
       STY    AUDV1   
       BMI    LF0CF   
LF0CB: BIT    $C7     
       BPL    LF0D2   
LF0CF: JMP    LF2EC   
LF0D2: LDA    #$B0    
       BIT    $BA     
       BPL    LF0DF   
       LDX    #$04    
       JSR    LF6E2   
       ADC    #$05    
LF0DF: CMP    $A9     
       BCS    LF0EE   
       BIT    $C9     
       BMI    LF0EE   
       LDA    $9F     
       ORA    #$0F    
       STA    COLUP0  
       DEY            
LF0EE: STY    $F4     
       LDY    #$FF    
       LDX    #$FF    
       DEC    $C1     
       BPL    LF107   
       LDA    $CB     
       JSR    LF5C1   
       TAX            
       INX            
       INX            
       STX    $C1     
       LDX    INPT4   
       LDY    SWCHA   
LF107: TYA            
       ORA    #$0F    
       EOR    #$FF    
       STA    $9A     
       TXA            
       BMI    LF129   
       BIT    $C3     
       BMI    LF129   
       LDA    $F4     
       BEQ    LF129   
       DEC    $C9     
       LDA    #$0C    
       STA    AUDC0   
       LDA    #$05    
       STA    AUDV0   
       LDA    #$1F    
       STA    $BF     
       STA    AUDF0   
LF129: LDA    $90     
       STA    $9C     
       LDA    $95     
       STA    $9B     
       LDX    $9A     
       BEQ    LF153   
       BIT    $9A     
       BVC    LF13D   
       DEC    $EA     
       BVS    LF13F   
LF13D: INC    $EA     
LF13F: LDA    $EA     
       AND    #$07    
       TAX            
       LDA    LF78A,X 
       STA    $D8     
       LDA    LF792,X 
       STA    $D7     
       LDX    #$00    
       JSR    LF61C   
LF153: LDA    $8A     
       AND    #$03    
       BNE    LF19B   
       BIT    $C3     
       BPL    LF169   
       DEC    $BF     
       BPL    LF163   
       INC    $BF     
LF163: LDY    $BF     
       STY    AUDF0   
       BVS    LF19B   
LF169: BIT    $C9     
       BPL    LF19B   
       LDA    $8A     
       AND    #$07    
       BNE    LF17B   
       DEC    $BF     
       BEQ    LF17F   
       LDY    $BF     
       STY    AUDF0   
LF17B: LDA    INPT4   
       BPL    LF19B   
LF17F: LDA    #$08    
       STA    AUDC0   
       LDA    #$20    
       SEC            
       SBC    $BF     
       LSR            
       LSR            
       STA    $C8     
       INC    $C9     
       STX    $A9     
       LDY    #$01    
       JSR    LF674   
       DEC    $C3     
       LDA    #$05    
       STA    AUDV0   
LF19B: BIT    $C4     
       BPL    LF1AD   
       LDA    $8A     
       AND    #$03    
       BNE    LF1EF   
       INC    $C0     
       LDY    $C0     
       STY    AUDF1   
       BNE    LF1EF   
LF1AD: DEC    $CD     
       BEQ    LF1C3   
       DEC    $DF     
       BPL    LF1EF   
       INC    $DF     
       DEC    $C5     
       BPL    LF1BD   
       INC    $C5     
LF1BD: LDA    $C5     
       STA    AUDV1   
       BPL    LF1EF   
LF1C3: LDA    $CE     
       EOR    #$01    
       STA    $CE     
       TAX            
       LDA    LF7FE,X 
       STA    $CD     
       LDA    #$02    
       STA    $DF     
       STA    AUDC1   
       LDY    $BC     
       CPY    #$09    
       BCC    LF1DD   
       LDY    #$08    
LF1DD: LDA    LF7C2,Y 
       LDY    #$0C    
       LDX    $CE     
       BNE    LF1E9   
       LSR            
       LDY    #$10    
LF1E9: STA    AUDV1   
       STA    $C5     
       STY    AUDF1   
LF1EF: LDX    #$00    
       JSR    LF478   
       BEQ    LF259   
       LDY    #$01    
       JSR    LF674   
       BIT    $C3     
       BPL    LF201   
       STX    AUDV0   
LF201: LDA    $A2     
       BIT    $F0     
       BMI    LF20D   
       BIT    INPT5   
       BMI    LF20D   
       LDA    $A4     
LF20D: BIT    $9E     
       BVS    LF251   
       BIT    $C3     
       BPL    LF24F   
       LDA    $8A     
       STA    $EB     
       DEC    $EB     
       LDA    $BC     
       SEC            
       ADC    $C8     
       TAX            
       LDA    $CC     
       SED            
LF224: ADC    #$01    
       BCC    LF234   
       DEC    $C7     
       INC    $E2     
       LDY    $E2     
       CPY    #$0A    
       BNE    LF234   
       DEC    $C6     
LF234: DEX            
       BNE    LF224   
       STA    $CC     
       CLD            
       LDX    #$10    
       BIT    SWCHB   
       BPL    LF245   
       CPX    $BB     
       BCC    LF24F   
LF245: LDA    #$C0    
       LDY    $F3     
       BNE    LF24F   
       INC    $F3     
       STA    $C2     
LF24F: LDA    $A0     
LF251: STA    COLUP1  
       LDY    #$00    
       STY    $C3     
       BEQ    LF25B   
LF259: STA    RESMP0  
LF25B: LDX    #$01    
       JSR    LF478   
       BEQ    LF290   
       LDY    #$00    
       JSR    LF674   
       LDY    #$00    
       LDA    $9E     
       STA    $CA     
       BPL    LF294   
       BIT    $C4     
       BPL    LF294   
       STY    ENAM1   
       STY    $C4     
       LDA    #$02    
       SED            
       CLC            
       ADC    $CB     
       STA    $CB     
       CLD            
       BCC    LF28E   
       DEC    $C6     
       LDX    #$07    
LF286: LDA    LF782,X 
       STA    $D7,X   
       DEX            
       BPL    LF286   
LF28E: BNE    LF294   
LF290: STA    RESMP1  
       BEQ    LF296   
LF294: STY    $C4     
LF296: DEC    $C2     
       BNE    LF2EC   
       LDA    #$00    
       STA    $F3     
       LDA    $CC     
       JSR    LF5C1   
       CLC            
       ADC    #$02    
       ASL            
       STA    $C2     
       BIT    $F0     
       BMI    LF2C5   
       JSR    LF5C6   
       LDA    SWCHA   
       ASL            
       ASL            
       ASL            
       ASL            
       EOR    #$FF    
       STA    $9A     
       BEQ    LF2EC   
       LDX    #$01    
       JSR    LF61C   
       JMP    LF2EC   
LF2C5: JSR    LF5C6   
       LDA    #$00    
       LDX    $90     
       CPX    $91     
       BCC    LF2D8   
       BEQ    LF2DC   
       INC    $91     
       LDA    #$F0    
       BMI    LF2DC   
LF2D8: DEC    $91     
       LDA    #$10    
LF2DC: STA    HMP1    
       LDX    $95     
       CPX    $96     
       BCC    LF2EA   
       BEQ    LF2EC   
       INC    $96     
       BCS    LF2EC   
LF2EA: DEC    $96     
LF2EC: LDA    $A5     
       STA    COLUBK  
       LDA    $E2     
       JSR    LF5E5   
LF2F5: LDA    LF702,X 
       AND    #$38    
       STA.wy $00E5,Y 
       DEX            
       DEY            
       BPL    LF2F5   
       LDA    #$80    
       STA    $E3     
       LDA    $CC     
       JSR    LF5F2   
       LDA    #$85    
       STA    $E3     
       LDA    $CB     
       JSR    LF5F2   
       LDX    #$04    
       STX    CTRLPF  
       INX            
LF318: LDA    INTIM   
       BNE    LF318   
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       STA    GRP1    
       STA    PF0     
       STA    PF2     
       STA    VBLANK  
       LDA    #$09    
       STA    $8B     
       STA    CXCLR   
LF331: STA    WSYNC   
       LSR            
       BCC    LF337   
       DEX            
LF337: LDA    $A3     
       STA    COLUPF  
       LDA    $E5,X   
       STA    PF2     
       LDA    $80,X   
       STA    PF1     
       LDY    #$03    
LF345: DEY            
       BNE    LF345   
       LDA    $85,X   
       STA    PF1     
       LDA    $A4     
       STA    COLUPF  
       STY    PF2     
       DEC    $8B     
       LDA    $8B     
       BPL    LF331   
       STY    PF1     
       LDA    $A1     
       STA    COLUPF  
       LDA    #$05    
       STA    CTRLPF  
       LDA    #$57    
       STA    $8B     
       LSR            
       LSR            
       STA    WSYNC   
       STA    WSYNC   
       LDX    $A2     
       STX    COLUBK  
       LDX    #$00    
LF372: STA    WSYNC   
       STX    GRP1    
       STY    GRP0    
       TAX            
       LDA    LF739,X 
       STA    PF0     
       LDA    LF74F,X 
       STA    PF1     
       LDA    LF765,X 
       STA    PF2     
       LDY    #$00    
       LDX    #$00    
       LDA    $8B     
       CMP    $97     
       BNE    LF394   
       LDX    $C3     
LF394: CMP    $98     
       BNE    LF39A   
       LDY    $C4     
LF39A: CMP    $A7     
       BNE    LF3A2   
       LDA    $BA     
       BMI    LF3AC   
LF3A2: CMP    $A8     
       BNE    LF3AA   
       LDA    $BA     
       BMI    LF3AC   
LF3AA: LDA    #$00    
LF3AC: STA    WSYNC   
       STA    ENABL   
       STY    ENAM1   
       STX    ENAM0   
       LDY    #$00    
       LDA    $8B     
       SEC            
       SBC    $95     
       TAX            
       AND    #$F8    
       BNE    LF3C2   
       LDY    $D7,X   
LF3C2: LDA    $8B     
       SEC            
       SBC    $96     
       TAX            
       AND    #$F8    
       BEQ    LF3D0   
       LDA    #$00    
       BEQ    LF3D2   
LF3D0: LDA    $CF,X   
LF3D2: TAX            
       DEC    $8B     
       LDA    $8B     
       BMI    LF3DE   
       LSR            
       LSR            
       JMP    LF372   
LF3DE: TAX            
       LDA    #$23    
       STA    WSYNC   
       STX    VBLANK  
       STA    TIM64T  
       LDX    #$01    
       JSR    LF6E2   
       STA    $BB     
       LSR            
       LSR            
       LSR            
       STA    $BC     
       LDA    $8A     
       AND    #$06    
       BNE    LF400   
       INC    $A9     
       BNE    LF400   
       DEC    $A9     
LF400: DEC    $EE     
       BPL    LF426   
       LDA    $CC     
       JSR    LF5C1   
       LSR            
       STA    $EE     
       INC    $EF     
       LDA    $EF     
       AND    #$06    
       ASL            
       ASL            
       TAY            
       BIT    $C7     
       BPL    LF41B   
       LDY    #$20    
LF41B: LDX    #$07    
LF41D: LDA    LF79A,Y 
       STA    $CF,X   
       INY            
       DEX            
       BPL    LF41D   
LF426: LDY    #$00    
       LDA    SWCHB   
       LSR            
       LSR            
       BCS    LF444   
       BIT    $ED     
       BMI    LF446   
       STX    $ED     
       LDA    $F0     
       EOR    #$FF    
       STA    $F0     
       CLC            
       ADC    #$02    
       STA    $E2     
       DEC    $C6     
       BMI    LF446   
LF444: STY    $ED     
LF446: LDA    SWCHB   
       LSR            
       BCS    LF457   
       BIT    $EC     
       BMI    LF459   
       STX    $EC     
       JSR    LF510   
       BEQ    LF470   
LF457: STY    $EC     
LF459: BIT    $C7     
       BPL    LF470   
       BIT    $C6     
       BMI    LF470   
       STY    COLUP1  
       STY    AUDV0   
       STY    AUDV1   
       LDA    $8A     
       CMP    $EB     
       BNE    LF470   
       JSR    LF534   
LF470: LDX    INTIM   
       BNE    LF470   
       JMP    LF01B   
LF478: LDY    #$40    
       STY    $9E     
       LDA    $B0,X   
       CLC            
       ADC    $AE,X   
       STA    $B0,X   
       LDA    $AC,X   
       CMP    $B0,X   
       TXA            
       TAY            
       BCS    LF494   
       LDA    $B0,X   
       SEC            
       SBC    $AC,X   
       STA    $B0,X   
       INY            
       INY            
LF494: LDA    $92,X   
       CLC            
       ADC.wy $00B2,Y 
       STA    $92,X   
       LDA.wy $00B2,Y 
       JSR    LF5BB   
       ASL            
       ASL            
       ASL            
       ASL            
       STA    HMM0,X  
       LDA    $97,X   
       CLC            
       ADC.wy $00B6,Y 
       STA    $97,X   
       LSR            
       LSR            
       TAY            
       LDA    $92,X   
       LSR            
       LSR            
       SEC            
       SBC    #$14    
       BPL    LF4BE   
       EOR    #$FF    
LF4BE: CMP    #$08    
       BCS    LF4CF   
       STA    $8E     
       LDA    #$08    
       SBC    $8E     
       STA    $8E     
       LDA    LF765,Y 
       BCS    LF4E7   
LF4CF: CMP    #$10    
       BCS    LF4DC   
       SBC    #$07    
       STA    $8E     
       LDA    LF74F,Y 
       BCS    LF4E7   
LF4DC: STA    $8E     
       LDA    #$17    
       SBC    $8E     
       STA    $8E     
       LDA    LF739,Y 
LF4E7: LDY    $8E     
       AND    LF6FA,Y 
       BEQ    LF4EF   
       RTS            

LF4EF: ASL    $9E     
       TXA            
       EOR    #$01    
       TAY            
       LDA    $92,X   
       SEC            
       SBC.wy $0090,Y 
       BEQ    LF50B   
       CMP    #$07    
       BCS    LF50B   
       LDA    $97,X   
       SEC            
       SBC.wy $0095,Y 
       CMP    #$07    
       BCC    LF50F   
LF50B: ASL    $9E     
       LDA    $9E     
LF50F: RTS            

LF510: LDA    #$00    
       STA    $E2     
       STA    $F5     
       LDA    $8A     
       STA    $E0     
       EOR    #$FF    
       STA    $E1     
       JSR    LF667   
       STA    $90     
       STY    $95     
       STY    CXCLR   
LF527: JSR    LF667   
       CMP    $90     
       BEQ    LF527   
       STA    $A6     
       STA    $94     
       STY    $99     
LF534: JSR    LF667   
       CMP    $90     
       BEQ    LF534   
       CMP    $94     
       BEQ    LF534   
       STA    $91     
       STY    $96     
       LDX    #$04    
LF545: LDA    #$02    
       CPX    #$02    
       BCS    LF54D   
       LDA    #$01    
LF54D: CLC            
       ADC    $90,X   
       LDY    #$02    
       SEC            
LF553: INY            
       SBC    #$0F    
       BCS    LF553   
       EOR    #$FF    
       SBC    #$06    
       ASL            
       ASL            
       ASL            
       ASL            
       STY    WSYNC   
LF562: DEY            
       BPL    LF562   
       STA    RESP0,X 
       STA    HMP0,X  
       DEX            
       BPL    LF545   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$08    
       STA    AUDC0   
       INY            
       LDX    $E2     
       LDA    LF7DD,X 
       STA    $CC     
       LDA    $CB     
       JSR    LF5C1   
       SED            
       CLC            
       ADC    $F5     
       CLD            
       STA    $F5     
       STA    $CB     
       LDX    #$07    
LF58C: LDA    LF77B,X 
       STA    $D7,X   
       STY    $C3,X   
       DEX            
       BPL    LF58C   
       STX    HMCLR   
       STX    $BA     
       INX            
       INY            
       JSR    LF674   
       INX            
       DEY            
       JSR    LF674   
       LDA    LF7EA   
       STA    COLUP1  
       DEX            
       RTS            

LF5AB: LDA    $E1     
       ASL            
       EOR    $E1     
       ASL            
       ASL            
       ROL    $E0     
       ROL    $E1     
       LDA    $E0     
       RTS            

LF5B9: BPL    LF5C0   
LF5BB: EOR    #$FF    
       CLC            
       ADC    #$01    
LF5C0: RTS            

LF5C1: LSR            
       LSR            
       LSR            
       LSR            
       RTS            

LF5C6: BIT    $C4     
       BMI    LF5E4   
       BIT    $CA     
       BPL    LF5E4   
       LDX    #$01    
       LDY    #$00    
       JSR    LF674   
       DEC    $C4     
       LDA    #$05    
       STA    $C5     
       STA    AUDV1   
       LDA    #$10    
       STA    $C0     
       LSR            
       STA    AUDC1   
LF5E4: RTS            

LF5E5: STA    $8D     
       ASL            
       ASL            
       CLC            
       ADC    $8D     
       ADC    #$04    
       TAX            
       LDY    #$04    
       RTS            

LF5F2: PHA            
       AND    #$0F    
       JSR    LF5E5   
LF5F8: LDA    LF702,X 
       AND    #$07    
       STA    ($E3),Y 
       DEX            
       DEY            
       BPL    LF5F8   
       PLA            
       JSR    LF5C1   
       JSR    LF5E5   
LF60A: LDA    LF702,X 
       AND    #$07    
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    ($E3),Y 
       STA    ($E3),Y 
       DEX            
       DEY            
       BPL    LF60A   
       RTS            

LF61C: LDA    #$00    
       LDY    $8C     
       BIT    $9A     
       BPL    LF634   
       INC    $90,X   
       LDA    $90,X   
       CMP    #$97    
       LDA    #$F0    
       BCC    LF632   
       DEC    $90,X   
       LDA    #$00    
LF632: STY    $F1     
LF634: BVC    LF646   
       DEC    $90,X   
       LDA    $90,X   
       CMP    #$C0    
       LDA    #$10    
       BCC    LF644   
       INC    $90,X   
       LDA    #$00    
LF644: STY    $F1     
LF646: STA    HMP0,X  
       STA    $9D,X   
       ASL    $9A     
       ASL    $9A     
       LDA    $95,X   
       BIT    $9A     
       BPL    LF65C   
       STY    $F1     
       CMP    #$01    
       BEQ    LF65C   
       DEC    $95,X   
LF65C: BVC    LF666   
       STY    $F1     
       CMP    #$51    
       BEQ    LF666   
       INC    $95,X   
LF666: RTS            

LF667: JSR    LF5AB   
       AND    #$07    
       TAX            
       LDA    LF7CD,X 
       LDY    LF7D5,X 
       RTS            

LF674: LDA    #$03    
       STA    RESMP0,X
       SEC            
       ADC    $90,X   
       STA    $92,X   
       LDA    $95,X   
       ADC    #$04    
       STA    $97,X   
       LDA.wy $0090,Y 
       CMP    $90,X   
       PHA            
       BNE    LF68F   
       LDA    #$00    
       BEQ    LF695   
LF68F: LDA    #$FF    
       BCC    LF695   
       LDA    #$01    
LF695: STA    $B4,X   
       PLA            
       SEC            
       SBC    $90,X   
       JSR    LF5B9   
       STA    $AA     
       LDA.wy $0095,Y 
       CMP    $95,X   
       BNE    LF6AB   
       LDA    #$00    
       BEQ    LF6B1   
LF6AB: LDA    #$FF    
       BCC    LF6B1   
       LDA    #$01    
LF6B1: STA    $B8,X   
       LDA.wy $0095,Y 
       SEC            
       SBC    $95,X   
       JSR    LF5B9   
       LDY    $AA     
       CMP    $AA     
       BCS    LF6D0   
       STA    $AE,X   
       STY    $AC,X   
       LDA    $B4,X   
       STA    $B2,X   
       LDA    #$00    
       STA    $B6,X   
       BEQ    LF6DC   
LF6D0: STA    $AC,X   
       STY    $AE,X   
       LDA    $B8,X   
       STA    $B6,X   
       LDA    #$00    
       STA    $B2,X   
LF6DC: LDA    $AC,X   
       LSR            
       STA    $B0,X   
       RTS            

LF6E2: LDA    $95,X   
       SEC            
       SBC    $95     
       JSR    LF5B9   
       STA    $8F     
       LDA    $90,X   
       SEC            
       SBC    $90     
       BCS    LF6F6   
       JSR    LF5BB   
LF6F6: LSR            
       ADC    $8F     
       RTS            

LF6FA: .byte $01,$02,$04,$08,$10,$20,$40,$80
LF702: .byte $3F,$2D,$2D,$2D,$3F,$3F,$12,$12,$12,$1E,$3F,$0C,$3F,$21,$3F,$3F
       .byte $21,$33,$21,$3F,$21,$21,$3F,$2D,$2D,$3F,$21,$3F,$0C,$3F,$3F,$2D
       .byte $3F,$0C,$3F,$21,$21,$21,$21,$3F,$3F,$2D,$3F,$2D,$3F,$3F,$21,$3F
       .byte $2D,$3F,$28,$00,$28,$28,$28
LF739: .byte $10,$10,$90,$90,$F0,$10,$10,$10,$10,$10,$30,$10,$10,$10,$10,$90
       .byte $10,$10,$10,$10,$10,$10
LF74F: .byte $00,$00,$00,$0A,$0A,$3A,$3A,$00,$00,$8A,$0A,$00,$40,$73,$41,$C1
       .byte $41,$61,$67,$00,$00,$78
LF765: .byte $0C,$0C,$0C,$00,$C0,$C2,$02,$06,$86,$86,$86,$80,$80,$F3,$10,$10
       .byte $00,$00,$00,$04,$04,$04
LF77B: .byte $42,$24,$18,$5A,$3C,$18,$00
LF782: .byte $00,$11,$12,$3C,$3C,$12,$11,$00
LF78A: .byte $24,$24,$28,$28,$18,$14,$14,$24
LF792: .byte $42,$44,$48,$28,$18,$14,$12,$22
LF79A: .byte $20,$23,$14,$08,$14,$62,$02,$00,$02,$44,$34,$08,$26,$21,$40,$00
       .byte $04,$08,$48,$3E,$09,$08,$10,$00,$08,$10,$16,$49,$34,$04,$08,$00
       .byte $00,$00,$20,$56,$09,$14,$24,$22
LF7C2: .byte $0F,$0D,$0B,$09,$07,$05,$03,$01,$00,$00,$00
LF7CD: .byte $14,$20,$43,$50,$54,$6F,$90,$94
LF7D5: .byte $0C,$3C,$28,$40,$08,$1F,$49,$07
LF7DD: .byte $63,$56,$49,$42,$35,$28,$21,$14,$07,$00
LF7E7: .byte $E6,$8A,$36
LF7EA: .byte $D2,$84,$32,$90,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$F0
LF7FE: .byte $00,$24
