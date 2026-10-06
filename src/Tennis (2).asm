; Disassembly of roms/Tennis (2).bin
; Disassembled Tue Oct  6 15:24:47 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Tennis (2).bin
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
PF1     =  $0E
PF2     =  $0F
RESP0   =  $10
RESP1   =  $11
AUDC0   =  $15
AUDF0   =  $17
AUDV0   =  $19
GRP0    =  $1B
GRP1    =  $1C
ENAM0   =  $1D
ENAM1   =  $1E
ENABL   =  $1F
HMP0    =  $20
HMP1    =  $21
HMM0    =  $22
HMM1    =  $23
HMOVE   =  $2A
HMCLR   =  $2B
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296

       ORG $F000

START:
       SEI            
       CLD            
       LDX    #$00    
LF004: LDY    #$00    
LF006: STY    VSYNC,X 
       TXS            
       INX            
       BNE    LF006   
       STX    AUDV0   
       LDA    #$11    
       STA    CTRLPF  
       JSR    LF5E7   
LF015: LDA    #$36    
       LDX    #$02    
       JSR    LF4A3   
       LDA    #$7D    
       JSR    LF4A3   
       LDA    $90     
       CLC            
       ADC    #$08    
       JSR    LF4A3   
       LDX    #$05    
LF02B: LDA    SWCHB   
       AND    #$08    
       BNE    LF037   
       LDA    LF757,X 
       BNE    LF03A   
LF037: LDA    LF751,X 
LF03A: EOR    $82     
       AND    $83     
       STA    $BB,X   
       DEX            
       BPL    LF02B   
       STA    COLUBK  
       LDX    $86     
       LDA    LF72D,X 
       STA    $B0     
       LDA    LF73F,X 
       STA    $B2     
LF051: LDA    INTIM   
       BNE    LF051   
       STA    WSYNC   
       STA    HMOVE   
       STA    VBLANK  
       LDX    $87     
       LDA    LF72D,X 
       STA    $AC     
       LDA    LF73F,X 
       STA    $AE     
       STA    HMCLR   
       LDX    #$01    
       LDA    $D1     
       BNE    LF072   
       LDX    #$04    
LF072: JSR    LF4FC   
       LDX    $D0     
       BEQ    LF082   
       LDA    $BE     
       LDY    $BD     
       STA    $BD     
       STY    $BE     
       DEX            
LF082: JSR    LF618   
       BEQ    LF0C0   
LF087: STA    WSYNC   
       STA    HMOVE   
       STY    COLUPF  
       STY    ENABL   
       STX    GRP0    
       STA    GRP1    
       LDA    $BA     
       CMP    #$0C    
       BEQ    LF0F6   
       CMP    #$8C    
       BEQ    LF0FC   
       LDX    #$00    
       STX    PF1     
       STX    PF2     
       BIT    $A1     
       BEQ    LF0AD   
       CMP    #$5A    
       BEQ    LF110   
       BNE    LF0B5   
LF0AD: LDX    #$F0    
       STX    HMM1    
       LDX    #$10    
       STX    HMM0    
LF0B5: LDY    $8A     
       LDA    ($A8),Y 
       TAX            
       LDA    ($AA),Y 
       DEC    $BA     
       LDY    $BC     
LF0C0: STA    WSYNC   
       STA    HMOVE   
       STX    GRP0    
       STA    GRP1    
       LDA    $BA     
       CMP    $B6     
       BNE    LF0D1   
       INY            
       BNE    LF0D7   
LF0D1: CMP    $B7     
       BNE    LF0D7   
       LDY    #$02    
LF0D7: STY    $8B     
       LDA    $BA     
       SEC            
       SBC    $B5     
       CMP    #$19    
       BCS    LF10A   
       TAY            
       BEQ    LF10A   
       LDA    ($A4),Y 
       TAX            
       LDA    ($A6),Y 
LF0EA: STY    $8A     
       STA    HMCLR   
       LDY    $8B     
       DEC    $BA     
       BNE    LF087   
       BEQ    LF149   
LF0F6: LDX    #$3F    
       STX    PF1     
       BNE    LF100   
LF0FC: LDA    #$03    
       STA    PF1     
LF100: LDX    #$FF    
       STX    PF2     
       STA    ENAM0   
       STA    ENAM1   
       BNE    LF0B5   
LF10A: LDX    #$00    
       TXA            
       TAY            
       BEQ    LF0EA   
LF110: INX            
       STX    ENAM0   
       STX    ENAM1   
       STX    ENABL   
       LDA    #$FF    
       LDY    #$0F    
       STA    WSYNC   
       STA    HMOVE   
       STY    PF1     
       STA    PF2     
       LDA    $BC     
       STA    COLUPF  
       JSR    LF618   
       LDX    #$E0    
       STX    HMM1    
       LDX    #$20    
       STX    HMM0    
       STA    WSYNC   
       STA    HMOVE   
       LDX    #$06    
LF138: STA    WSYNC   
       STA    HMCLR   
       STA    HMOVE   
       DEX            
       BPL    LF138   
       STX    ENAM0   
       STX    ENAM1   
       INX            
       JMP    LF0C0   
LF149: STA    WSYNC   
       STA    HMOVE   
       STA    ENABL   
       SEC            
       LDA    #$F6    
       LDX    #$06    
LF154: STA    $AC,X   
       SBC    #$07    
       DEX            
       DEX            
       BPL    LF154   
       JSR    LF4EE   
       LDY    #$18    
LF161: STA    WSYNC   
       STA    HMOVE   
       DEY            
       BNE    LF161   
       LDX    #$03    
       STX    WSYNC   
       STX    VSYNC   
       STX    VBLANK  
       INC    $84     
       BNE    LF17B   
       INC    $88     
       BNE    LF17B   
       SEC            
       ROR    $88     
LF17B: DEY            
       LDA    SWCHB   
       PHA            
       AND    #$08    
       BNE    LF186   
       LDY    #$0F    
LF186: LDA    #$00    
       BIT    $88     
       BPL    LF195   
       STX    $90     
       TYA            
       AND    #$F7    
       TAY            
       LDA    $88     
       ASL            
LF195: STA    $82     
       STY    $83     
LF199: STA    WSYNC   
       DEX            
       BNE    LF199   
       STX    VSYNC   
       LDY    #$2D    
       STY    TIM64T  
       PLA            
       LSR            
       BCS    LF1AE   
       LDX    #$85    
LF1AB: JMP    LF004   
LF1AE: LSR            
       BCS    LF1D6   
       LDA    $A3     
       BEQ    LF1B9   
       DEC    $A3     
       BPL    LF1D8   
LF1B9: LDY    $80     
       INY            
       CPY    #$04    
       BCC    LF1C2   
       LDY    #$00    
LF1C2: STY    $80     
       TYA            
       AND    #$01    
       STA    $81     
       INY            
       STY    $86     
       LDA    #$11    
       STA    $87     
       LDX    #$88    
       STX    $85     
       BNE    LF1AB   
LF1D6: STX    $A3     
LF1D8: LDA    $CB     
       BMI    LF1E4   
       BEQ    LF1E1   
LF1DE: JMP    LF47C   
LF1E1: JSR    LF5E7   
LF1E4: LDA    $80     
       CMP    #$02    
       BCC    LF1F0   
       LDA    $84     
       AND    #$01    
       BNE    LF1DE   
LF1F0: LDX    #$01    
       STX    $89     
LF1F4: LDA    $89     
       EOR    $D0     
       TAX            
       LDA    SWCHB   
       AND    LF7FE,X 
       STA    $D3,X   
       STX    $D5     
       LDA    SWCHA   
       LDX    $89     
       CPX    $D0     
       BEQ    LF258   
       AND    #$0F    
       LDY    $81     
       BNE    LF25C   
       LDA    #$02    
       BIT    $84     
       BVS    LF21A   
       LDA    #$01    
LF21A: STA    $8B     
       CPX    $B4     
       BNE    LF22C   
       LDA    $98     
       SBC    $99     
       CMP    #$30    
       BCC    LF22C   
       LDA    #$58    
       BNE    LF22E   
LF22C: LDA    $90     
LF22E: STA    $8A     
       TXA            
       EOR    #$01    
       TAY            
       LDA.wy $009A,Y 
       CMP    #$50    
       BCS    LF23F   
       LDA    #$F5    
       BNE    LF241   
LF23F: LDA    #$FC    
LF241: ADC    $8A     
       SEC            
       SBC    $9A,X   
       BCC    LF24E   
       BNE    LF252   
       LDA    #$0F    
       BNE    LF254   
LF24E: LDA    #$0B    
       BNE    LF254   
LF252: LDA    #$07    
LF254: EOR    $8B     
       BNE    LF25C   
LF258: LSR            
       LSR            
       LSR            
       LSR            
LF25C: LDY    #$00    
       STY    $CD     
       ROR            
       BCS    LF264   
       INY            
LF264: ROR            
       BCS    LF268   
       DEY            
LF268: STY    $CE     
       LDY    #$00    
       ROR            
       BCS    LF270   
       DEY            
LF270: ROR            
       BCS    LF274   
       INY            
LF274: STY    $CF     
       TYA            
       BEQ    LF285   
       LDY    #$4E    
       BIT    $88     
       BPL    LF281   
       STY    $90     
LF281: LDY    #$00    
       STY    $88     
LF285: CLC            
       LDY    $CE     
       TYA            
       BEQ    LF295   
       LDA    $98,X   
       LSR            
       LSR            
       AND    #$03    
       STA    $CD     
       CLC            
       TYA            
LF295: ADC    $98,X   
       TAY            
       CMP    #$95    
       BNE    LF29D   
       DEY            
LF29D: CMP    #$01    
       BNE    LF2A2   
       INY            
LF2A2: BIT    $A0     
       BMI    LF2A8   
       STY    $98,X   
LF2A8: LDY    $98     
       CPY    #$5B    
       BCS    LF2B1   
       INY            
       STY    $98     
LF2B1: LDY    $99     
       CPY    #$36    
       BCC    LF2BA   
       DEY            
       STY    $99     
LF2BA: LDA    $CF     
       BEQ    LF2C4   
       LDA    $9A,X   
       LSR            
       LSR            
       AND    #$03    
LF2C4: PHA            
       LDA    $9A,X   
       CLC            
       LDY    $B8,X   
       BEQ    LF2CE   
       ADC    #$08    
LF2CE: CLC            
       ADC    #$01    
       SEC            
       SBC    $90     
       BCC    LF2EB   
       LDA    #$FF    
       CMP    $B8,X   
       BEQ    LF2E5   
       STA    $B8,X   
       LDA    $9A,X   
       CLC            
       ADC    #$F8    
       STA    $9A,X   
LF2E5: PLA            
       EOR    #$03    
       JMP    LF2FB   
LF2EB: LDA    #$00    
       CMP    $B8,X   
       BEQ    LF2FA   
       STA    $B8,X   
       LDA    $9A,X   
       CLC            
       ADC    #$08    
       STA    $9A,X   
LF2FA: PLA            
LF2FB: LDX    $CF     
       BNE    LF301   
       LDA    $CD     
LF301: TAX            
       LDA    LF700,X 
       PHA            
       LDX    $89     
       LDA    $C1,X   
       TAY            
       LDA    LF704,Y 
       LDY    $B8,X   
       BMI    LF319   
       STA    $9C,X   
       PLA            
       STA    $9E,X   
       BNE    LF31E   
LF319: STA    $9E,X   
       PLA            
       STA    $9C,X   
LF31E: CLC            
       LDA    $CF     
       ADC    $9A,X   
       TAY            
       CMP    #$8F    
       BCC    LF329   
       DEY            
LF329: CMP    #$11    
       BCS    LF32E   
       INY            
LF32E: STY    $9A,X   
       LDA    $C1,X   
       BEQ    LF33E   
       DEC    $C3,X   
       BNE    LF34B   
       LDA    #$04    
       STA    $C3,X   
       DEC    $C1,X   
LF33E: LDA    $98,X   
       SEC            
       SBC    $8F     
       CMP    #$08    
       BCC    LF34E   
       CMP    #$F8    
       BCS    LF34E   
LF34B: JMP    LF405   
LF34E: LDA    $A0     
       BMI    LF356   
       CPX    $B4     
       BEQ    LF34B   
LF356: LDA    $90     
       SEC            
       SBC    $9A,X   
       BCC    LF34B   
       CMP    #$10    
       BCS    LF34B   
       STA    $8A     
       BIT    $A0     
       BPL    LF37A   
       LDA    $CA     
       EOR    $D0     
       BEQ    LF375   
       LDY    $81     
       BNE    LF375   
       DEC    $A2     
       BEQ    LF37A   
LF375: TAX            
       LDY    REFP1,X 
       BMI    LF34B   
LF37A: LDX    $89     
       STX    $B4     
       LDY    #$03    
       STY    $C3,X   
       STY    $C1,X   
       STY    $C9     
       LDA    $9A,X   
       LSR            
       LSR            
       LSR            
       STA    $8B     
       CMP    #$0D    
       BCC    LF393   
       LDA    #$0C    
LF393: CLC            
       ADC    #$02    
       EOR    #$0F    
       CMP    $8A     
       BCC    LF39E   
       STA    $8A     
LF39E: LDA    $8B     
       CMP    #$05    
       BCS    LF3A6   
       LDA    #$05    
LF3A6: SEC            
       SBC    #$05    
       EOR    #$0F    
       CMP    $8A     
       BCC    LF3B1   
       LDA    $8A     
LF3B1: LDY    #$FE    
       STY    $93     
       LDX    #$00    
       STX    $A0     
       STX    $88     
       LDX    $D5     
       LDY    $D3,X   
       BEQ    LF3CD   
       CMP    #$0B    
       BCC    LF3C7   
       LDA    #$0B    
LF3C7: CMP    #$04    
       BCS    LF3CD   
       LDA    #$04    
LF3CD: TAY            
       LDX    $89     
       LDA    #$68    
LF3D2: CLC            
       ADC    #$30    
       BCC    LF3D9   
       INC    $93     
LF3D9: DEY            
       BPL    LF3D2   
       STA    $96     
       DEX            
       STX    $95     
       LDA    #$0C    
       STA    $91     
       LDA    #$80    
       STA    $97     
       LDA    #$02    
       STA    $94     
       LDY    #$FF    
       STY    $CC     
       DEY            
       LDA    $99,X   
       CMP    #$6E    
       BCS    LF3FC   
       CMP    #$2A    
       BCS    LF3FD   
LF3FC: DEY            
LF3FD: TYA            
       INX            
       BEQ    LF403   
       EOR    #$FF    
LF403: STA    $92     
LF405: DEC    $89     
       BMI    LF40C   
       JMP    LF1F4   
LF40C: LDX    #$02    
LF40E: CLC            
       LDA    $8C,X   
       ADC    $95,X   
       STA    $8C,X   
       LDA    $8F,X   
       ADC    $92,X   
       STA    $8F,X   
       DEX            
       BPL    LF40E   
       CLC            
       LDA    $97     
       ADC    #$E0    
       STA    $97     
       LDA    $94     
       ADC    #$FF    
       STA    $94     
       LDA    $91     
       BPL    LF441   
       LDA    #$80    
       STA    $97     
       LDA    #$02    
       STA    $94     
       STA    $C9     
       LDA    #$00    
       STA    $91     
       INC    $CC     
       BNE    LF451   
LF441: LDA    $8F     
       CMP    #$A1    
       BCS    LF44D   
       LDA    $90     
       CMP    #$9B    
       BCC    LF458   
LF44D: LDA    #$02    
       STA    $90     
LF451: BIT    $A0     
       BMI    LF458   
       JSR    LF53B   
LF458: LDA    $8F     
       ORA    #$01    
       STA    $B7     
       LDA    $8F     
       CLC            
       ADC    $91     
       ORA    #$01    
       STA    $B6     
       LDX    #$01    
LF469: LDA    $B6,X   
       CMP    #$8D    
       BEQ    LF477   
       CMP    #$0B    
       BEQ    LF477   
       CMP    #$0D    
       BNE    LF479   
LF477: INC    $B6,X   
LF479: DEX            
       BPL    LF469   
LF47C: LDA    $C9     
       BMI    LF48C   
       DEC    $C9     
       LDX    $88     
       CPX    #$10    
       BCC    LF48A   
       LDA    #$00    
LF48A: STA    AUDV0   
LF48C: LDA    $CB     
       CMP    #$7F    
       BCS    LF494   
       DEC    $CB     
LF494: JMP    LF015   
LF497: STA    ENABL,X 
       STA    WSYNC   
LF49B: DEY            
       BPL    LF49B   
       STA    PF2,X   
       RTS            

LF4A1: LDX    #$FE    
LF4A3: CLC            
       ADC    #$25    
       TAY            
       AND    #$0F    
       STA    $89     
       TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       CLC            
       ADC    $89     
       CMP    #$0F    
       BCC    LF4BB   
       SBC    #$0F    
       INY            
LF4BB: EOR    #$07    
       ASL            
       ASL            
       ASL            
       ASL            
       INX            
       BPL    LF497   
       PHA            
       CPY    #$03    
       BCS    LF4CD   
       STA    WSYNC   
       STA    HMOVE   
LF4CD: STA    WSYNC   
       STA    HMOVE   
LF4D1: DEY            
       BPL    LF4D1   
       STA    RESP1   
       STA    RESP0   
       STA    WSYNC   
       STA    HMOVE   
       LDY    $BC     
       LDX    #$00    
       STX    NUSIZ0  
       STX    NUSIZ1  
       CLC            
       PLA            
       STA    HMP0    
       ADC    #$F0    
       STA    HMP1    
       TXA            
       RTS            

LF4EE: STA    WSYNC   
       STA    HMOVE   
       LDA    #$2A    
       JSR    LF4A1   
       STX    REFP0   
       STX    REFP1   
       INX            
LF4FC: STX    NUSIZ0  
       STX    NUSIZ1  
       LDY    #$06    
       LDA    ($B2),Y 
       STA    $8A     
LF506: STA    WSYNC   
       STA    HMOVE   
       LDA    $BF     
       STA    COLUP1  
       STA    COLUP0  
       LDA    ($AC),Y 
       STA    GRP1    
       LDA    ($AE),Y 
       STA    GRP0    
       LDA    ($B0),Y 
       LDX    $8A     
       STA    GRP1    
       STX    GRP0    
       LDA    $C0     
       STA    COLUP1  
       STA    COLUP0  
       DEY            
       LDA    ($B2),Y 
       STA    $8A     
       TYA            
       STA    HMCLR   
       BPL    LF506   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$00    
       STA    GRP1    
       STA    GRP0    
       RTS            

LF53B: LDA    #$7E    
       STA    $CB     
       LDA    $B4     
       EOR    $D0     
       TAX            
       INC    $C5,X   
       EOR    #$01    
       TAY            
       LDA    LF75D,X 
       STA    AUDF0   
       LDA    #$0D    
       STA    AUDC0   
       STA    $C9     
       LDA    $C5,X   
       CMP    #$05    
       BEQ    LF59C   
       CMP    #$03    
       BCC    LF570   
       CMP.wy $00C5,Y 
       BEQ    LF57D   
       LDA.wy $00C5,Y 
       CMP    #$03    
       BEQ    LF58B   
       LDA    $C5,X   
       CMP    #$04    
       BCS    LF59C   
LF570: LDA    $C5     
       CLC            
       ADC    #$0D    
       TAX            
       LDA    $C6     
       CLC            
       ADC    #$0D    
       BNE    LF5E2   
LF57D: LDA    #$03    
       STA    $D1     
       STA    $C5     
       STA    $C6     
       LDX    #$08    
       LDA    #$09    
       BNE    LF5E2   
LF58B: TXA            
       EOR    $D0     
       LDX    #$0A    
       STX    $D1     
       LDY    #$0B    
       CMP    $CA     
       BEQ    LF599   
       INY            
LF599: TYA            
       BNE    LF5E2   
LF59C: INC    $C7,X   
       LDA    #$30    
       STA    $C9     
       LDA    #$00    
       STA    $D1     
       STA    $C5     
       STA    $C6     
       LDA    $D2     
       BEQ    LF5B8   
       LDA    $C7,X   
       SEC            
       SBC.wy $00C7,Y 
       CMP    #$02    
       BEQ    LF5CE   
LF5B8: LDA    $C7,X   
       CMP    #$07    
       BEQ    LF5CE   
       CMP    #$06    
       BCC    LF5DE   
       CMP.wy $00C7,Y 
       BEQ    LF5D6   
       LDA.wy $00C7,Y 
       CMP    #$05    
       BCS    LF5DE   
LF5CE: LDA    #$60    
       STA    $C9     
       INC    $CB     
       BNE    LF5DE   
LF5D6: LDA    #$00    
       STA    $C8     
       STA    $C7     
       INC    $D2     
LF5DE: LDA    $C8     
       LDX    $C7     
LF5E2: STX    $87     
       STA    $86     
       RTS            

LF5E7: LDX    #$23    
LF5E9: LDA    LF709,X 
       STA    $90,X   
       DEX            
       BPL    LF5E9   
       CLC            
       LDA    $C7     
       ADC    $C8     
       LDY    #$8E    
       ROR            
       AND    #$01    
       STA    $CA     
       EOR    #$01    
       STA    $B4     
       EOR    #$01    
       BEQ    LF607   
       LDY    #$07    
LF607: STY    $8F     
       ROL            
       ADC    #$01    
       LSR            
       AND    #$01    
       STA    $D0     
       LDA    #$02    
       STA    AUDC0   
       STA    AUDF0   
       RTS            

LF618: STA    WSYNC   
       STA    HMOVE   
       LDA    $BD,X   
       STA    COLUP0  
       STA    COLUP1  
       LDA    $98,X   
       STA    $B5     
       LDA    $B8,X   
       STA    REFP0   
       STA    REFP1   
       LDY    $9C,X   
       STY    $A4     
       DEY            
       STY    $A8     
       LDY    $9E,X   
       STY    $A6     
       DEY            
       STY    $AA     
       LDA    LF708,X 
       STA    $BA     
       LDA    $9A,X   
       STA    WSYNC   
       STA    HMOVE   
       JSR    LF4A1   
       RTS            

LF649: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$30,$78,$48,$C8,$48,$78
       .byte $30,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$06,$0F,$09,$F9,$09
       .byte $0F,$06,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $0C,$9E,$52,$32,$12,$1E,$0C,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$A0,$70,$50,$50,$50
       .byte $70,$20,$00,$00,$C0,$80,$86,$84,$C4,$C4,$6C,$6C,$78,$38,$30,$B1
       .byte $B3,$B7,$BE,$FC,$F8,$70,$30,$38,$38,$30,$38,$00,$00,$03,$02,$02
       .byte $82,$86,$E6,$EC,$2C,$38,$38,$30,$B1,$B3,$B7,$BE,$FC,$F8,$70,$30
       .byte $38,$38,$30,$38,$00,$00,$0C,$08,$08,$08,$28,$28,$3C,$3C,$3C,$38
       .byte $30,$B1,$B3,$B7,$BE,$FC,$F8,$70,$30,$38,$38,$30,$38,$00,$00,$30
       .byte $20,$20,$20,$2C,$28,$28,$28,$38,$38,$30,$B1,$B3,$B7,$BE,$FC,$F8
       .byte $70,$30,$38,$38,$30,$38,$00
LF700: .byte $9C,$B5,$CE,$E7
LF704: .byte $84,$6C,$5B,$4A
LF708: .byte $AB
LF709: .byte $4D,$00,$00,$00,$02,$00,$00,$80,$8E,$07,$48,$48,$84,$84,$9C,$9C
       .byte $FF,$07,$40,$20,$4A,$F6,$4A,$F6,$4A,$F6,$4A,$F6,$6A,$F7,$6A,$F7
       .byte $6A,$F7,$6A,$F7
LF72D: .byte $DA,$DA,$DA,$DA,$DA,$DA,$DA,$DA,$A2,$B0,$B7,$C5,$CC,$DA,$71,$7F
       .byte $86,$DA
LF73F: .byte $6A,$71,$78,$7F,$86,$8D,$94,$9B,$A9,$DA,$BE,$DA,$D3,$6A,$8D,$6A
       .byte $6A,$DA
LF751: .byte $D4,$0D,$4C,$8C,$4C,$8C
LF757: .byte $04,$09,$0F,$01,$0F,$01
LF75D: .byte $0C,$06,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$3C,$66,$66
       .byte $66,$66,$66,$3C,$3C,$18,$18,$18,$18,$38,$18,$7E,$60,$60,$3C,$06
       .byte $46,$3C,$3C,$46,$06,$0C,$06,$46,$3C,$0C,$0C,$7E,$4C,$2C,$1C,$0C
       .byte $7C,$46,$06,$7C,$60,$60,$7E,$3C,$66,$66,$7C,$60,$62,$3C,$18,$18
       .byte $18,$0C,$06,$42,$7E,$E7,$94,$94,$97,$94,$94,$E7,$98,$25,$25,$25
       .byte $25,$25,$A4,$CF,$28,$08,$0E,$08,$28,$CF,$97,$94,$F4,$94,$94,$94
       .byte $67,$00,$80,$80,$80,$80,$80,$00,$A2,$A6,$A6,$AA,$B2,$B2,$A2,$63
       .byte $94,$94,$94,$94,$94,$64,$08,$88,$88,$88,$88,$88,$BE,$00,$00,$00
       .byte $00,$00,$00,$00,$AD,$A9,$E9,$A9,$ED,$41,$0F,$50,$58,$5C,$56,$53
       .byte $11,$F0,$BA,$8A,$BA,$A2,$3A,$80,$FE,$E9,$AB,$AF,$AD,$E9,$00,$00
       .byte $F0
LF7FE: .byte $40,$80,$78,$D8,$A2,$00,$A0,$00,$94,$00,$9A,$E8,$D0,$FA,$86,$19
       .byte $A9,$11,$85,$0A,$20,$E7,$F5,$A9,$36,$A2,$02,$20,$A3,$F4,$A9,$7D
       .byte $20,$A3,$F4,$A5,$90,$18,$69,$08,$20,$A3,$F4,$A2,$05,$AD,$82,$02
       .byte $29,$08,$D0,$05,$BD,$57,$F7,$D0,$03,$BD,$51,$F7,$45,$82,$25,$83
       .byte $95,$BB,$CA,$10,$E8,$85,$09,$A6,$86,$BD,$2D,$F7,$85,$B0,$BD,$3F
       .byte $F7,$85,$B2,$AD,$84,$02,$D0,$FB,$85,$02,$85,$2A,$85,$01,$A6,$87
       .byte $BD,$2D,$F7,$85,$AC,$BD,$3F,$F7,$85,$AE,$85,$2B,$A2,$01,$A5,$D1
       .byte $D0,$02,$A2,$04,$20,$FC,$F4,$A6,$D0,$F0,$09,$A5,$BE,$A4,$BD,$85
       .byte $BD,$84,$BE,$CA,$20,$18,$F6,$F0,$39,$85,$02,$85,$2A,$84,$08,$84
       .byte $1F,$86,$1B,$85,$1C,$A5,$BA,$C9,$0C,$F0,$5D,$C9,$8C,$F0,$5F,$A2
       .byte $00,$86,$0E,$86,$0F,$24,$A1,$F0,$06,$C9,$5A,$F0,$65,$D0,$08,$A2
       .byte $F0,$86,$23,$A2,$10,$86,$22,$A4,$8A,$B1,$A8,$AA,$B1,$AA,$C6,$BA
       .byte $A4,$BC,$85,$02,$85,$2A,$86,$1B,$85,$1C,$A5,$BA,$C5,$B6,$D0,$03
       .byte $C8,$D0,$06,$C5,$B7,$D0,$02,$A0,$02,$84,$8B,$A5,$BA,$38,$E5,$B5
       .byte $C9,$19,$B0,$28,$A8,$F0,$25,$B1,$A4,$AA,$B1,$A6,$84,$8A,$85,$2B
       .byte $A4,$8B,$C6,$BA,$D0,$93,$F0,$53,$A2,$3F,$86,$0E,$D0,$04,$A9,$03
       .byte $85,$0E,$A2,$FF,$86,$0F,$85,$1D,$85,$1E,$D0,$AB,$A2,$00,$8A,$A8
       .byte $F0,$DA,$E8,$86,$1D,$86,$1E,$86,$1F,$A9,$FF,$A0,$0F,$85,$02,$85
       .byte $2A,$84,$0E,$85,$0F,$A5,$BC,$85,$08,$20,$18,$F6,$A2,$E0,$86,$23
       .byte $A2,$20,$86,$22,$85,$02,$85,$2A,$A2,$06,$85,$02,$85,$2B,$85,$2A
       .byte $CA,$10,$F7,$86,$1D,$86,$1E,$E8,$4C,$C0,$F0,$85,$02,$85,$2A,$85
       .byte $1F,$38,$A9,$F6,$A2,$06,$95,$AC,$E9,$07,$CA,$CA,$10,$F8,$20,$EE
       .byte $F4,$A0,$18,$85,$02,$85,$2A,$88,$D0,$F9,$A2,$03,$86,$02,$86,$00
       .byte $86,$01,$E6,$84,$D0,$07,$E6,$88,$D0,$03,$38,$66,$88,$88,$AD,$82
       .byte $02,$48,$29,$08,$D0,$02,$A0,$0F,$A9,$00,$24,$88,$10,$09,$86,$90
       .byte $98,$29,$F7,$A8,$A5,$88,$0A,$85,$82,$84,$83,$85,$02,$CA,$D0,$FB
       .byte $86,$00,$A0,$2D,$8C,$96,$02,$68,$4A,$B0,$05,$A2,$85,$4C,$04,$F0
       .byte $4A,$B0,$25,$A5,$A3,$F0,$04,$C6,$A3,$10,$1F,$A4,$80,$C8,$C0,$04
       .byte $90,$02,$A0,$00,$84,$80,$98,$29,$01,$85,$81,$C8,$84,$86,$A9,$11
       .byte $85,$87,$A2,$88,$86,$85,$D0,$D5,$86,$A3,$A5,$CB,$30,$08,$F0,$03
       .byte $4C,$7C,$F4,$20,$E7,$F5,$A5,$80,$C9,$02,$90,$06,$A5,$84,$29,$01
       .byte $D0,$EE,$A2,$01,$86,$89,$A5,$89,$45,$D0,$AA,$AD,$82,$02,$3D,$FE
       .byte $F7,$95,$D3,$86,$D5,$AD,$80,$02,$A6,$89,$E4,$D0,$F0,$4C,$29,$0F
       .byte $A4,$81,$D0,$4A,$A9,$02,$24,$84,$70,$02,$A9,$01,$85,$8B,$E4,$B4
       .byte $D0,$0C,$A5,$98,$E5,$99,$C9,$30,$90,$04,$A9,$58,$D0,$02,$A5,$90
       .byte $85,$8A,$8A,$49,$01,$A8,$B9,$9A,$00,$C9,$50,$B0,$04,$A9,$F5,$D0
       .byte $02,$A9,$FC,$65,$8A,$38,$F5,$9A,$90,$06,$D0,$08,$A9,$0F,$D0,$06
       .byte $A9,$0B,$D0,$02,$A9,$07,$45,$8B,$D0,$04,$4A,$4A,$4A,$4A,$A0,$00
       .byte $84,$CD,$6A,$B0,$01,$C8,$6A,$B0,$01,$88,$84,$CE,$A0,$00,$6A,$B0
       .byte $01,$88,$6A,$B0,$01,$C8,$84,$CF,$98,$F0,$0C,$A0,$4E,$24,$88,$10
       .byte $02,$84,$90,$A0,$00,$84,$88,$18,$A4,$CE,$98,$F0,$0A,$B5,$98,$4A
       .byte $4A,$29,$03,$85,$CD,$18,$98,$75,$98,$A8,$C9,$95,$D0,$01,$88,$C9
       .byte $01,$D0,$01,$C8,$24,$A0,$30,$02,$94,$98,$A4,$98,$C0,$5B,$B0,$03
       .byte $C8,$84,$98,$A4,$99,$C0,$36,$90,$03,$88,$84,$99,$A5,$CF,$F0,$06
       .byte $B5,$9A,$4A,$4A,$29,$03,$48,$B5,$9A,$18,$B4,$B8,$F0,$02,$69,$08
       .byte $18,$69,$01,$38,$E5,$90,$90,$15,$A9,$FF,$D5,$B8,$F0,$09,$95,$B8
       .byte $B5,$9A,$18,$69,$F8,$95,$9A,$68,$49,$03,$4C,$FB,$F2,$A9,$00,$D5
       .byte $B8,$F0,$09,$95,$B8,$B5,$9A,$18,$69,$08,$95,$9A,$68,$A6,$CF,$D0
       .byte $02,$A5,$CD,$AA,$BD,$00,$F7,$48,$A6,$89,$B5,$C1,$A8,$B9,$04,$F7
       .byte $B4,$B8,$30,$07,$95,$9C,$68,$95,$9E,$D0,$05,$95,$9E,$68,$95,$9C
       .byte $18,$A5,$CF,$75,$9A,$A8,$C9,$8F,$90,$01,$88,$C9,$11,$B0,$01,$C8
       .byte $94,$9A,$B5,$C1,$F0,$0A,$D6,$C3,$D0,$13,$A9,$04,$95,$C3,$D6,$C1
       .byte $B5,$98,$38,$E5,$8F,$C9,$08,$90,$07,$C9,$F8,$B0,$03,$4C,$05,$F4
       .byte $A5,$A0,$30,$04,$E4,$B4,$F0,$F5,$A5,$90,$38,$F5,$9A,$90,$EE,$C9
       .byte $10,$B0,$EA,$85,$8A,$24,$A0,$10,$13,$A5,$CA,$45,$D0,$F0,$08,$A4
       .byte $81,$D0,$04,$C6,$A2,$F0,$05,$AA,$B4,$0C,$30,$D1,$A6,$89,$86,$B4
       .byte $A0,$03,$94,$C3,$94,$C1,$84,$C9,$B5,$9A,$4A,$4A,$4A,$85,$8B,$C9
       .byte $0D,$90,$02,$A9,$0C,$18,$69,$02,$49,$0F,$C5,$8A,$90,$02,$85,$8A
       .byte $A5,$8B,$C9,$05,$B0,$02,$A9,$05,$38,$E9,$05,$49,$0F,$C5,$8A,$90
       .byte $02,$A5,$8A,$A0,$FE,$84,$93,$A2,$00,$86,$A0,$86,$88,$A6,$D5,$B4
       .byte $D3,$F0,$0C,$C9,$0B,$90,$02,$A9,$0B,$C9,$04,$B0,$02,$A9,$04,$A8
       .byte $A6,$89,$A9,$68,$18,$69,$30,$90,$02,$E6,$93,$88,$10,$F6,$85,$96
       .byte $CA,$86,$95,$A9,$0C,$85,$91,$A9,$80,$85,$97,$A9,$02,$85,$94,$A0
       .byte $FF,$84,$CC,$88,$B5,$99,$C9,$6E,$B0,$04,$C9,$2A,$B0,$01,$88,$98
       .byte $E8,$F0,$02,$49,$FF,$85,$92,$C6,$89,$30,$03,$4C,$F4,$F1,$A2,$02
       .byte $18,$B5,$8C,$75,$95,$95,$8C,$B5,$8F,$75,$92,$95,$8F,$CA,$10,$F0
       .byte $18,$A5,$97,$69,$E0,$85,$97,$A5,$94,$69,$FF,$85,$94,$A5,$91,$10
       .byte $12,$A9,$80,$85,$97,$A9,$02,$85,$94,$85,$C9,$A9,$00,$85,$91,$E6
       .byte $CC,$D0,$10,$A5,$8F,$C9,$A1,$B0,$06,$A5,$90,$C9,$9B,$90,$0B,$A9
       .byte $02,$85,$90,$24,$A0,$30,$03,$20,$3B,$F5,$A5,$8F,$09,$01,$85,$B7
       .byte $A5,$8F,$18,$65,$91,$09,$01,$85,$B6,$A2,$01,$B5,$B6,$C9,$8D,$F0
       .byte $08,$C9,$0B,$F0,$04,$C9,$0D,$D0,$02,$F6,$B6,$CA,$10,$ED,$A5,$C9
       .byte $30,$0C,$C6,$C9,$A6,$88,$E0,$10,$90,$02,$A9,$00,$85,$19,$A5,$CB
       .byte $C9,$7F,$B0,$02,$C6,$CB,$4C,$15,$F0,$95,$1F,$85,$02,$88,$10,$FD
       .byte $95,$0F,$60,$A2,$FE,$18,$69,$25,$A8,$29,$0F,$85,$89,$98,$4A,$4A
       .byte $4A,$4A,$A8,$18,$65,$89,$C9,$0F,$90,$03,$E9,$0F,$C8,$49,$07,$0A
       .byte $0A,$0A,$0A,$E8,$10,$D3,$48,$C0,$03,$B0,$04,$85,$02,$85,$2A,$85
       .byte $02,$85,$2A,$88,$10,$FD,$85,$11,$85,$10,$85,$02,$85,$2A,$A4,$BC
       .byte $A2,$00,$86,$04,$86,$05,$18,$68,$85,$20,$69,$F0,$85,$21,$8A,$60
       .byte $85,$02,$85,$2A,$A9,$2A,$20,$A1,$F4,$86,$0B,$86,$0C,$E8,$86,$04
       .byte $86,$05,$A0,$06,$B1,$B2,$85,$8A,$85,$02,$85,$2A,$A5,$BF,$85,$07
       .byte $85,$06,$B1,$AC,$85,$1C,$B1,$AE,$85,$1B,$B1,$B0,$A6,$8A,$85,$1C
       .byte $86,$1B,$A5,$C0,$85,$07,$85,$06,$88,$B1,$B2,$85,$8A,$98,$85,$2B
       .byte $10,$D6,$85,$02,$85,$2A,$A9,$00,$85,$1C,$85,$1B,$60,$A9,$7E,$85
       .byte $CB,$A5,$B4,$45,$D0,$AA,$F6,$C5,$49,$01,$A8,$BD,$5D,$F7,$85,$17
       .byte $A9,$0D,$85,$15,$85,$C9,$B5,$C5,$C9,$05,$F0,$42,$C9,$03,$90,$12
       .byte $D9,$C5,$00,$F0,$1A,$B9,$C5,$00,$C9,$03,$F0,$21,$B5,$C5,$C9,$04
       .byte $B0,$2C,$A5,$C5,$18,$69,$0D,$AA,$A5,$C6,$18,$69,$0D,$D0,$65,$A9
       .byte $03,$85,$D1,$85,$C5,$85,$C6,$A2,$08,$A9,$09,$D0,$57,$8A,$45,$D0
       .byte $A2,$0A,$86,$D1,$A0,$0B,$C5,$CA,$F0,$01,$C8,$98,$D0,$46,$F6,$C7
       .byte $A9,$30,$85,$C9,$A9,$00,$85,$D1,$85,$C5,$85,$C6,$A5,$D2,$F0,$0A
       .byte $B5,$C7,$38,$F9,$C7,$00,$C9,$02,$F0,$16,$B5,$C7,$C9,$07,$F0,$10
       .byte $C9,$06,$90,$1C,$D9,$C7,$00,$F0,$0F,$B9,$C7,$00,$C9,$05,$B0,$10
       .byte $A9,$60,$85,$C9,$E6,$CB,$D0,$08,$A9,$00,$85,$C8,$85,$C7,$E6,$D2
       .byte $A5,$C8,$A6,$C7,$86,$87,$85,$86,$60,$A2,$23,$BD,$09,$F7,$95,$90
       .byte $CA,$10,$F8,$18,$A5,$C7,$65,$C8,$A0,$8E,$6A,$29,$01,$85,$CA,$49
       .byte $01,$85,$B4,$49,$01,$F0,$02,$A0,$07,$84,$8F,$2A,$69,$01,$4A,$29
       .byte $01,$85,$D0,$A9,$02,$85,$15,$85,$17,$60,$85,$02,$85,$2A,$B5,$BD
       .byte $85,$06,$85,$07,$B5,$98,$85,$B5,$B5,$B8,$85,$0B,$85,$0C,$B4,$9C
       .byte $84,$A4,$88,$84,$A8,$B4,$9E,$84,$A6,$88,$84,$AA,$BD,$08,$F7,$85
       .byte $BA,$B5,$9A,$85,$02,$85,$2A,$20,$A1,$F4,$60,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$30,$78,$48,$C8,$48,$78,$30,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$06,$0F,$09,$F9,$09,$0F,$06,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$0C,$9E,$52,$32,$12
       .byte $1E,$0C,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$80,$A0,$70,$50,$50,$50,$70,$20,$00,$00,$C0
       .byte $80,$86,$84,$C4,$C4,$6C,$6C,$78,$38,$30,$B1,$B3,$B7,$BE,$FC,$F8
       .byte $70,$30,$38,$38,$30,$38,$00,$00,$03,$02,$02,$82,$86,$E6,$EC,$2C
       .byte $38,$38,$30,$B1,$B3,$B7,$BE,$FC,$F8,$70,$30,$38,$38,$30,$38,$00
       .byte $00,$0C,$08,$08,$08,$28,$28,$3C,$3C,$3C,$38,$30,$B1,$B3,$B7,$BE
       .byte $FC,$F8,$70,$30,$38,$38,$30,$38,$00,$00,$30,$20,$20,$20,$2C,$28
       .byte $28,$28,$38,$38,$30,$B1,$B3,$B7,$BE,$FC,$F8,$70,$30,$38,$38,$30
       .byte $38,$00,$9C,$B5,$CE,$E7,$84,$6C,$5B,$4A,$AB,$4D,$00,$00,$00,$02
       .byte $00,$00,$80,$8E,$07,$48,$48,$84,$84,$9C,$9C,$FF,$07,$40,$20,$4A
       .byte $F6,$4A,$F6,$4A,$F6,$4A,$F6,$6A,$F7,$6A,$F7,$6A,$F7,$6A,$F7,$DA
       .byte $DA,$DA,$DA,$DA,$DA,$DA,$DA,$A2,$B0,$B7,$C5,$CC,$DA,$71,$7F,$86
       .byte $DA,$6A,$71,$78,$7F,$86,$8D,$94,$9B,$A9,$DA,$BE,$DA,$D3,$6A,$8D
       .byte $6A,$6A,$DA,$D4,$0D,$4C,$8C,$4C,$8C,$04,$09,$0F,$01,$0F,$01,$0C
       .byte $06,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$3C,$66,$66,$66
       .byte $66,$66,$3C,$3C,$18,$18,$18,$18,$38,$18,$7E,$60,$60,$3C,$06,$46
       .byte $3C,$3C,$46,$06,$0C,$06,$46,$3C,$0C,$0C,$7E,$4C,$2C,$1C,$0C,$7C
       .byte $46,$06,$7C,$60,$60,$7E,$3C,$66,$66,$7C,$60,$62,$3C,$18,$18,$18
       .byte $0C,$06,$42,$7E,$E7,$94,$94,$97,$94,$94,$E7,$98,$25,$25,$25,$25
       .byte $25,$A4,$CF,$28,$08,$0E,$08,$28,$CF,$97,$94,$F4,$94,$94,$94,$67
       .byte $00,$80,$80,$80,$80,$80,$00,$A2,$A6,$A6,$AA,$B2,$B2,$A2,$63,$94
       .byte $94,$94,$94,$94,$64,$08,$88,$88,$88,$88,$88,$BE,$00,$00,$00,$00
       .byte $00,$00,$00,$AD,$A9,$E9,$A9,$ED,$41,$0F,$50,$58,$5C,$56,$53,$11
       .byte $F0,$BA,$8A,$BA,$A2,$3A,$80,$FE,$E9,$AB,$AF,$AD,$E9,$00,$00,$F0
       .byte $40,$80
