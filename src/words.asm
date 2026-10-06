; Disassembly of roms/words.bin
; Disassembled Tue Oct  6 15:24:51 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/words.bin
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
ENABL   =  $1F
HMP0    =  $20
HMP1    =  $21
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXPPMM  =  $37
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296
LF3CB   =   $F3CB
LF3CF   =   $F3CF
LF3D1   =   $F3D1

       ORG $F000

START:
LF000: JMP    LF3D1   
LF003: LDA    $AD     
       AND    #$01    
       TAX            
       JSR    LF44F   
       LDA    #$FF    
       JSR    LF870   
       LDX    #$04    
       JSR    LF50A   
       LDA    #$00    
       STA    WSYNC   
       STA    COLUBK  
       LDA    #$3C    
       STA    COLUP0  
       LDA    #$AC    
       STA    COLUPF  
       LDA    #$02    
       NOP            
       STA    $E6     
       LDY    $F6     
       LDA    LF3CB,Y 
       STA    $E5     
       STA    $E5     
       LDA    LF3CD,Y 
       STA    NUSIZ0  
       LDA    #$00    
       STA    $80     
       LDY    #$0C    
       STY    $E7     
       LDX    #$00    
       ASL    LF000,X 
       JMP    LF09A   
LF046: STY    $E4     
LF048: LDA    #$00    
       CPX    $D4     
       BCC    LF057   
       LDY    $E5     
       BMI    LF057   
       LDA    #$02    
       DEY            
       STY    $E5     
LF057: STA    $80     
       LDA    #$00    
       CPX    $D5     
       BCC    LF068   
       LDY    $E6     
       BMI    LF068   
       LDA    #$02    
       DEY            
       STY    $E6     
LF068: INX            
       LDY    $E4     
       STA    WSYNC   
       STA    ENABL   
       LDA    ($E8),Y 
       STA    GRP1    
       LDA    $80     
       STA    ENAM0   
       DEY            
       BPL    LF046   
       LDA    #$00    
       CPX    $D4     
       BCC    LF0D4   
       LDY    $E5     
       BMI    LF0D7   
       LDA    #$02    
       DEY            
       STY    $E5     
LF089: STA    $80     
       LDA    #$00    
       CPX    $D5     
       BCC    LF0DC   
       LDY    $E6     
       BMI    LF0DF   
       LDA    #$02    
       DEY            
       STY    $E6     
LF09A: LDY    $E7     
       DEY            
       BMI    LF0C5   
       STY    $E7     
       INX            
       STA    ENABL   
       LDA    $80     
       STA    ENAM0   
       LDA.wy $00D8,Y 
       TAY            
       BMI    LF0E4   
LF0AE: DEY            
       BPL    LF0AE   
       STA.w  $0011   
       LDY    $E7     
       LDA.wy $00BC,Y 
       STA    NUSIZ1  
       STA    HMP1    
       LDA    LF0C8,Y 
       STA    COLUP1  
       JMP    LF0FD   
LF0C5: JMP    LF144   
LF0C8: .byte $47,$A7,$D7,$67,$37,$87,$E7,$A7,$27,$C7,$47,$47
LF0D4: CPX    $D4     
       NOP            
LF0D7: CPX    $D4     
       JMP    LF089   
LF0DC: CPX    $D4     
       NOP            
LF0DF: CPX    $D4     
       JMP    LF09A   
LF0E4: LDY    $E7     
       LDA.wy $00BC,Y 
       STA    NUSIZ1  
       STA    HMP1    
       LDA    LF0C8,Y 
       STA    COLUP1  
       NOP            
       NOP            
       LDA.wy $00D8,Y 
       TAY            
LF0F8: INY            
       BMI    LF0F8   
       STA    RESP1   
LF0FD: STA    WSYNC   
       STA    HMOVE   
       INX            
       LDY    $E7     
       LDA.wy $00C8,Y 
       STA    $E8     
       LDA    #$07    
       STA    $E4     
       LDA    #$00    
       CPX    $D4     
       BCC    LF11C   
       LDY    $E5     
       BMI    LF11C   
       LDA    #$02    
       DEY            
       STY    $E5     
LF11C: STA    $80     
       LDA    #$00    
       CPX    $D5     
       BCC    LF12D   
       LDY    $E6     
       BMI    LF12D   
       LDA    #$02    
       DEY            
       STY    $E6     
LF12D: STA    HMCLR   
       INX            
       STA    WSYNC   
       STA    ENABL   
       LDA    $80     
       STA    ENAM0   
       JSR    LF996   
       JSR    LF996   
       JSR    LF996   
       JMP    LF048   
LF144: STA    WSYNC   
       LDA    #$D4    
       STA    COLUBK  
       LDA    #$00    
       STA    GRP1    
       LDX    #$05    
       JSR    LF50A   
       LDA    #$FE    
       JSR    LF870   
       LDA    $AD     
       AND    #$01    
       TAX            
       INX            
       INX            
       JSR    LF44F   
       LDA    #$38    
       STA    TIM64T  
       LDX    #$0B    
       LDA    $D4     
LF16B: CMP    LF3BF,X 
       BCC    LF173   
       DEX            
       BNE    LF16B   
LF173: BIT    VSYNC   
       BPL    LF18C   
       CPX    #$0B    
       BEQ    LF18C   
       LDA    $F6     
       BNE    LF183   
       CPX    #$00    
       BNE    LF18C   
LF183: LDA    #$FF    
       STA    $D4     
       LDY    #$00    
       JSR    LF5F5   
LF18C: LDX    #$0B    
       LDA    $D5     
LF190: CMP    LF3BF,X 
       BCC    LF19A   
       DEX            
       BNE    LF190   
       BEQ    LF1A7   
LF19A: BIT    RSYNC   
       BVC    LF1A7   
       LDA    #$FF    
       STA    $D5     
       LDY    #$01    
       JSR    LF5F5   
LF1A7: LDA    $EA     
       ASL            
       ASL            
       ASL            
       ASL            
       STA    $A7     
       LDA    $EB     
       ASL            
       ASL            
       ASL            
       ASL            
       STA    $AA     
       LDA    $AD     
       AND    #$03    
       STA    $80     
       LDX    #$0A    
LF1BF: TXA            
       AND    #$03    
       CMP    $80     
       BNE    LF1CB   
       LSR            
       TAY            
       JSR    LF76D   
LF1CB: DEX            
       BNE    LF1BF   
       LDX    #$01    
LF1D0: LDA    $ED,X   
       STA    $80     
       AND    #$1F    
       BEQ    LF21F   
       BIT    $80     
       BMI    LF1FA   
       BVS    LF200   
       LDY    #$00    
       LDA    #$0C    
LF1E2: STA    AUDC0,X 
       LDA    #$05    
       STA    AUDF0,X 
       LDA    $80     
       SEC            
       SBC    #$01    
       STA    $ED,X   
       AND    #$0F    
       STA    AUDV0,X 
       BNE    LF21C   
       STY    $ED,X   
       JMP    LF21C   
LF1FA: LDA    #$08    
       LDY    #$5F    
       BNE    LF1E2   
LF200: LDA    #$01    
       STA    AUDC0,X 
       LDA    $AD     
       AND    #$01    
       BNE    LF21C   
       LDA    $80     
       SEC            
       SBC    #$01    
       STA    $ED,X   
       AND    #$1F    
       EOR    #$1F    
       STA    AUDF0,X 
       EOR    #$1F    
       LSR            
       STA    AUDV0,X 
LF21C: JMP    LF235   
LF21F: LDA    $D4,X   
       CMP    #$FF    
       BNE    LF229   
       LDA    #$00    
       BEQ    LF233   
LF229: LSR            
       LSR            
       STA    AUDF0,X 
       LDA    #$04    
       STA    AUDC0,X 
       LDA    #$0F    
LF233: STA    AUDV0,X 
LF235: DEX            
       BPL    LF1D0   
       LDA    $ED     
       AND    #$1F    
       BNE    LF2A1   
       LDA    $EE     
       AND    #$1F    
       BNE    LF2A1   
       LDA    $F6     
       BEQ    LF24C   
       LDA    $EA     
       BEQ    LF250   
LF24C: LDA    $EB     
       BNE    LF2A1   
LF250: LDX    #$01    
LF252: LDA    $EF,X   
       BNE    LF276   
       LDY    $F3,X   
       DEY            
       BPL    LF265   
       CPX    #$00    
       BNE    LF262   
       JSR    LF890   
LF262: LDY    LF992,X 
LF265: STY    $F3,X   
       JSR    LF910   
       AND    #$0F    
       TAY            
       LDA    LF91E,Y 
       STA    $EF,X   
       LDA    #$0F    
       STA    $F1,X   
LF276: DEC    $EF,X   
       LDA    #$0C    
       STA    AUDC0,X 
       LDY    $F3,X   
       JSR    LF910   
       AND    #$F0    
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    LF92E,Y 
       STA    AUDF0,X 
       LDY    $F1,X   
       LDA    $AD     
       AND    #$01    
       BNE    LF29C   
       LDY    $F1,X   
       BEQ    LF29A   
       DEY            
LF29A: STY    $F1,X   
LF29C: STY    AUDV0,X 
       DEX            
       BPL    LF252   
LF2A1: JMP    LF2C0   
LF2A4: .byte $A2,$01,$BC,$94,$F9,$B9,$A8,$00,$C9,$01,$D0,$0D,$A9,$00,$99,$A8
       .byte $00,$B5,$EA,$C9,$08,$F0,$02,$F6,$EA,$CA,$10,$E6
LF2C0: LDA    INTIM   
       BNE    LF2C0   
       LDY    #$82    
       STY    WSYNC   
       STY    VBLANK  
       STY    VSYNC   
       STY    WSYNC   
       STY    WSYNC   
       STY    WSYNC   
       STA    VSYNC   
       LDA    #$25    
       STA    TIM64T  
       INC    $AD     
       LDA    SWCHB   
       AND    #$01    
       BNE    LF306   
       JSR    LF879   
       JSR    LF8B0   
       LDA    #$08    
       STA    $EB     
       LDY    $F6     
       BNE    LF2F3   
       LDA    #$00    
LF2F3: STA    $EA     
       CLC            
       LDA    SWCHB   
       AND    #$80    
       ROL            
       ROL            
       STA    $F6     
       LDA    #$7F    
       STA    $F7     
       JMP    LF40C   
LF306: NOP            
       LDA    SWCHA   
       STA    $81     
       ASL            
       ASL            
       ASL            
       ASL            
       STA    $80     
       LDA    $F6     
       BNE    LF31A   
       LDA    $F7     
       STA    $80     
LF31A: LDX    #$01    
LF31C: LDA    $D4,X   
       CMP    #$FF    
       BNE    LF34F   
       LDA    $F6     
       BEQ    LF32A   
       LDA    $EA     
       BEQ    LF3A1   
LF32A: LDA    $EB     
       BEQ    LF3A1   
       CPX    #$00    
       BNE    LF33F   
       LDA    $F6     
       BNE    LF33F   
       LDA    $BB     
       CLC            
       ADC    #$03    
       STA    $D6     
       BNE    LF34A   
LF33F: TXA            
       EOR    #$01    
       TAY            
       LDA.wy $000C,Y 
       AND    #$80    
       BNE    LF36E   
LF34A: LDA    LF3B7,X 
       BNE    LF36C   
LF34F: LDA    $AD     
       CPX    #$00    
       BNE    LF359   
       LDY    $F6     
       BEQ    LF35D   
LF359: AND    #$01    
       BNE    LF3A1   
LF35D: LDA    $D4,X   
       CMP    LF3B9,X 
       BNE    LF368   
       LDA    #$FF    
       BNE    LF36C   
LF368: CLC            
       ADC    LF3BB,X 
LF36C: STA    $D4,X   
LF36E: LDA    $F6     
       BEQ    LF376   
       LDA    $EA     
       BEQ    LF3A1   
LF376: LDA    $EB     
       BEQ    LF3A1   
       LDA    LF3BD,X 
       TAY            
       LDA    $80,X   
       AND    #$80    
       BNE    LF38F   
       LDA.wy $00B0,Y 
       CMP    #$8E    
       BCS    LF3AB   
       ADC    #$01    
       BNE    LF39E   
LF38F: LDA    $80,X   
       AND    #$40    
       BNE    LF3A1   
       LDA.wy $00B0,Y 
       CMP    #$01    
       BCC    LF3B1   
       SBC    #$01    
LF39E: STA.wy $00B0,Y 
LF3A1: DEX            
       BMI    LF3A7   
       JMP    LF31C   
LF3A7: NOP            
       JMP    LF3E2   
LF3AB: LDA    #$BF    
       STA    $F7,X   
       BNE    LF3A1   
LF3B1: LDA    #$7F    
       STA    $F7,X   
       BNE    LF3A1   
LF3B7: .byte $07 ;.SLO
       .byte $A3 ;.LAX
LF3B9: .byte $A3 ;.LAX
       .byte $03 ;.SLO
LF3BB: ORA    ($FF,X) 
LF3BD: .byte $0B ;.ANC
       BRK            
LF3BF: .byte $A7 ;.LAX
       STA    $7D8B,Y 
       .byte $6F ;.RRA
       ADC    ($53,X) 
       EOR    CXPPMM  
       AND    #$1B    
       ORA    $0202   
LF3CD: .byte $13 ;.SLO
       BPL    LF3D3   
       ORA    $78     
       CLD            
LF3D3: LDA    #$00    
       TAX            
LF3D6: STA    VSYNC,X 
       TXS            
       INX            
       BNE    LF3D6   
       JSR    LF8C3   
       JSR    LF879   
LF3E2: LDA    #$11    
       STA    CTRLPF  
       LDX    #$02    
       LDY    $F6     
       BNE    LF3F1   
       LDA    $D6     
       JMP    LF3F6   
LF3F1: LDA    $BB     
       CLC            
       ADC    #$0A    
LF3F6: JSR    LF744   
       JSR    LF763   
       LDX    #$04    
       LDA    $B0     
       CLC            
       ADC    #$0A    
       JSR    LF744   
       JSR    LF763   
       JSR    LF5C4   
LF40C: LDA    INTIM   
       BNE    LF40C   
       STA    WSYNC   
       STA    HMOVE   
       STA    REFP1   
       LDX    #$07    
LF419: DEX            
       BPL    LF419   
       STA    HMCLR   
       STA    WSYNC   
       STA    WSYNC   
       STA    HMOVE   
       STA    VBLANK  
       STA    WSYNC   
       STA    HMOVE   
       STA    CXCLR   
       JMP    LF003   
LF42F: LDA    #$07    
       STA    $80     
       STA    WSYNC   
       STA    HMOVE   
       STA    VDELP0  
       STA    VDELP1  
       LDA    #$00    
       STA    GRP0    
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDX    $82     
       LDA    LF5BA,X 
       STA    COLUP0  
       STA    COLUP1  
       RTS            

LF44F: STA    WSYNC   
       STX    $82     
       LDA    LF5AE,X 
       STA    $AE     
       LDX    #$0C    
       LDY    #$05    
LF45C: LDA    ($AE),Y 
       STA    $81,X   
       DEY            
       DEX            
       DEX            
       BNE    LF45C   
       LDX    $82     
       LDA    LF5B4,X 
       STA    WSYNC   
       STA    COLUBK  
       LDA    #$00    
       STA    COLUPF  
       LDA    #$0F    
       STA    PF1     
       LDA    #$FF    
       STA    PF2     
       STA    WSYNC   
       LDA    LF5B4,X 
       STA    COLUBK  
       LDA    #$10    
       STA    HMP0    
       LDA    #$20    
       STA    HMP1    
       STA    HMP1    
       LDA    $82     
       LSR            
       BCC    LF495   
       LDA    $82     
       JSR    LF761   
LF495: STA.w  $0010   
       STA    RESP1   
       JSR    LF42F   
       TXA            
       LSR            
       BCC    LF4CC   
LF4A1: LDY    $80     
       STA    WSYNC   
       LDA    ($8D),Y 
       STA    $81     
       LDA    ($8B),Y 
       TAX            
       LDA    ($83),Y 
       NOP            
       STA    GRP0    
       LDA    ($85),Y 
       STA    GRP1    
       LDA    ($87),Y 
       STA    GRP0    
       LDA    ($89),Y 
       LDY    $81     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       DEC    $80     
       BPL    LF4A1   
       JMP    LF4F7   
LF4CC: LDY    $80     
       LDA    ($8D),Y 
       STA.w  $0081   
       LDA    ($8B),Y 
       TAX            
       STA    WSYNC   
       LDA    ($83),Y 
       STA.w  $001B   
       LDA    ($85),Y 
       STA    GRP1    
       LDA    ($87),Y 
       STA    GRP0    
       LDA    ($89),Y 
       LDY    $81     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       DEC    $80     
       BPL    LF4CC   
       STA    WSYNC   
LF4F7: LDA    #$00    
       STA    VDELP0  
       STA    VDELP1  
       STA    GRP0    
       STA    GRP1    
       STA    GRP0    
       STA    GRP1    
       STA    PF1     
       STA    PF2     
       RTS            

LF50A: STA    WSYNC   
       LDA    #$05    
       STA    TIM64T  
       STX    $82     
       LDA    LF5AE,X 
       STA    $AE     
       LDY    #$02    
LF51A: TYA            
       ASL            
       ASL            
       TAX            
       LDA    ($AE),Y 
       AND    #$F0    
       LSR            
       STA    $83,X   
       LDA    ($AE),Y 
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA    $85,X   
       DEY            
       BPL    LF51A   
       INY            
LF532: LDA.wy $0083,Y 
       CMP    #$00    
       BNE    LF544   
       LDA    #$7D    
       STA.wy $0083,Y 
       INY            
       INY            
       CPY    #$0B    
       BCC    LF532   
LF544: LDA    #$7D    
       STA    $85     
       LDX    $82     
LF54A: LDA    INTIM   
       BNE    LF54A   
       TXA            
       SEC            
       SBC    #$04    
       TAY            
       LDA.wy $00ED,Y 
       STA    $80     
       ROL            
       ROL            
       ROL            
       AND    #$01    
       TAY            
       LDA    $80     
       AND    LF5C2,Y 
       TAY            
       LDA    LF5C0,Y 
       STA    WSYNC   
       ORA    LF5B4,X 
       STA    COLUBK  
       LDA    #$10    
       STA    HMP0    
       LDA    #$20    
       STA    HMP1    
       JSR    LF75E   
       STA    RESP0   
       STA    RESP1   
       JSR    LF42F   
LF581: LDY    $80     
       LDA    ($8D),Y 
       STA    $81     
       STA    WSYNC   
       LDA    ($8B),Y 
       TAX            
       NOP            
       LDA    ($83),Y 
       STA    GRP0    
       LDA    ($85),Y 
       STA    GRP1    
       LDA    ($87),Y 
       STA    GRP0    
       LDA    ($89),Y 
       LDY    $81     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       DEC    $80     
       BPL    LF581   
       STA    WSYNC   
       JMP    LF4F7   
LF5AE: .byte $8F,$95,$9B,$A1,$A7,$AA
LF5B4: .byte $C4,$C4,$A4,$A4,$24,$54
LF5BA: .byte $CC,$CC,$AC,$AC,$2C,$5C
LF5C0: .byte $00,$0F
LF5C2: .byte $00,$01
LF5C4: LDY    $F6     
       LDA    LF3CF,Y 
       STA    $C7     
       LDX    #$0B    
LF5CD: LDA    $BC,X   
       AND    #$07    
       STA    $81     
       LDA    $B0,X   
       CMP    #$99    
       BCC    LF5DB   
       LDA    #$00    
LF5DB: JSR    LF744   
       ORA    $81     
       STA    $BC,X   
       DEY            
       DEY            
       DEY            
       TYA            
       CMP    #$06    
       BCC    LF5EF   
       SEC            
       SBC    #$06    
       EOR    #$FF    
LF5EF: STA    $D8,X   
       DEX            
       BPL    LF5CD   
       RTS            

LF5F5: STX    $81     
       STY    $82     
       LDA    $C8,X   
       CMP    #$E8    
       BCC    LF61A   
       LDA    #$50    
       STA    $DA     
       CPX    #$00    
       BNE    LF60B   
       LDA    $F6     
       BEQ    LF60E   
LF60B: JSR    LF69B   
LF60E: TYA            
       EOR    #$01    
       TAY            
       LDA    #$5F    
       STA.wy $00ED,Y 
       JMP    LF627   
LF61A: CMP    #$D0    
       BCC    LF62E   
       LDA    #$8F    
       STA.wy $00ED,Y 
       LDA    #$01    
       STA    $DA     
LF627: JSR    LF675   
       JSR    LF643   
       RTS            

LF62E: LDA    #$0F    
       STA.wy $00ED,Y 
       LDA    #$01    
       STA    $DA     
       JSR    LF69B   
       JSR    LF65B   
       LDX    $81     
       JSR    LF6AE   
       RTS            

LF643: LDA    LF659,Y 
       STA    $AE     
       LDY    #$0A    
LF64A: LDA    ($AE),Y 
       INY            
       STA    ($AE),Y 
       DEY            
       DEY            
       BPL    LF64A   
       LDA    #$F8    
       INY            
       STA    ($AE),Y 
       RTS            

LF659: .byte $8F,$9B
LF65B: LDA    LF659,Y 
       STA    $AE     
       LDY    #$01    
LF662: LDA    ($AE),Y 
       DEY            
       STA    ($AE),Y 
       INY            
       INY            
       CPY    #$0C    
       BNE    LF662   
       DEY            
       LDX    $81     
       LDA    $C8,X   
       STA    ($AE),Y 
       RTS            

LF675: SED            
       SEC            
       LDX    LF699,Y 
       LDA    $A9,X   
       SBC    $DA     
       STA    $A9,X   
       LDA    $A8,X   
       SBC    #$00    
       BCS    LF68A   
       LDA    #$00    
       STA    $A9,X   
LF68A: STA    $A8,X   
       CLD            
       LDA.wy $00EA,Y 
       BEQ    LF698   
       SEC            
       SBC    #$01    
       STA.wy $00EA,Y 
LF698: RTS            

LF699: .byte $00,$03
LF69B: SED            
       CLC            
       LDX    LF699,Y 
       LDA    $A9,X   
       ADC    $DA     
       STA    $A9,X   
       LDA    $A8,X   
       ADC    #$00    
       STA    $A8,X   
       CLD            
       RTS            

LF6AE: LDY    $82     
       LDA    LF3BD,Y 
       TAY            
       LDA.wy $00B0,Y 
       CLC            
       ADC    #$0B    
       STA    $82     
       LDA    $B0,X   
       STA    $D8     
       CLC            
       ADC    #$20    
       STA    $D9     
       CLC            
       ADC    #$20    
       STA    $DA     
       LDX    #$02    
LF6CC: LDA    $D8,X   
       CMP    #$A0    
       BCC    LF6D5   
       CLC            
       SBC    #$A0    
LF6D5: STA    $D8,X   
       DEX            
       BPL    LF6CC   
       LDX    #$02    
LF6DC: LDA    $D8,X   
       CMP    #$98    
       BCS    LF6ED   
       CMP    $82     
       BCS    LF6ED   
       CLC            
       ADC    #$09    
       CMP    $82     
       BCS    LF6F0   
LF6ED: DEX            
       BNE    LF6DC   
LF6F0: STX    $DB     
       LDX    $81     
       LDA    $BC,X   
       AND    #$07    
       BEQ    LF72D   
       LDX    $DB     
       CMP    #$06    
       BNE    LF709   
       LDY    LF732,X 
       LDA    LF735,X 
       JMP    LF71C   
LF709: CMP    #$04    
       BNE    LF716   
       LDY    LF738,X 
       LDA    LF73B,X 
       JMP    LF71C   
LF716: LDY    LF73E,X 
       LDA    LF741,X 
LF71C: LDX    $81     
       STY    $BC,X   
       CLC            
       ADC    $B0,X   
       CMP    #$A0    
       BCC    LF72A   
       SEC            
       SBC    #$A0    
LF72A: STA    $B0,X   
       RTS            

LF72D: LDA    #$F8    
       STA    $C8,X   
       RTS            

LF732: .byte $02,$04,$02
LF735: .byte $20,$00,$00
LF738: .byte $00,$04,$00
LF73B: .byte $40,$00,$00
LF73E: .byte $00,$00,$00
LF741: .byte $20,$00,$00
LF744: CLC            
       ADC    #$2E    
       TAY            
       AND    #$0F    
       STA    $80     
       TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       CLC            
       ADC    $80     
       CMP    #$0F    
       BCC    LF75C   
       SBC    #$0F    
       INY            
LF75C: EOR    #$07    
LF75E: ASL            
       ASL            
       ASL            
LF761: ASL            
       RTS            

LF763: STA    HMP0,X  
       STA    WSYNC   
LF767: DEY            
       BPL    LF767   
       STA    RESP0,X 
       RTS            

LF76D: STY    $81     
       LDA    $B0,X   
       CLC            
       ADC    LF814,Y 
       STA    $B0,X   
       CMP    #$99    
       BCC    LF782   
       LDA    #$F8    
       STA    $C8,X   
       JMP    LF7F6   
LF782: CMP    LF816,Y 
       BNE    LF791   
       JSR    LF83B   
       STA    $C8,X   
       LDA    #$00    
       JMP    LF7F4   
LF791: CMP    LF818,Y 
       BNE    LF7B2   
       CPY    #$00    
       BNE    LF7AD   
       LDA    $BC,X   
       AND    #$07    
       TAY            
       CPY    #$04    
       BCS    LF7F6   
       LDA    #$00    
       STA    $B0,X   
       LDA    LF834,Y 
       JMP    LF7F4   
LF7AD: LDA    #$02    
       JMP    LF7F4   
LF7B2: CMP    LF81A,Y 
       BNE    LF7D5   
       CPY    #$00    
       BNE    LF7CA   
       LDA    $BC,X   
       AND    #$07    
       BNE    LF7F6   
       LDA    #$00    
       STA    $B0,X   
       LDA    #$04    
       JMP    LF7F4   
LF7CA: LDA    $BC,X   
       AND    #$07    
       TAY            
       LDA    LF81C,Y 
       JMP    LF7F4   
LF7D5: CPY    #$00    
       BEQ    LF7F7   
       CMP    #$00    
       BNE    LF7F6   
       LDA    $BC,X   
       AND    #$07    
       TAY            
       BNE    LF7E9   
       LDA    #$A0    
       STA    $B0,X   
       RTS            

LF7E9: LDA    $B0,X   
       CLC            
       ADC    LF826,Y 
       STA    $B0,X   
       LDA    LF81F,Y 
LF7F4: STA    $BC,X   
LF7F6: RTS            

LF7F7: LDA    $BC,X   
       AND    #$07    
       TAY            
       LDA    LF82D,Y 
       CMP    $B0,X   
       BNE    LF7F6   
       CPY    #$00    
       BNE    LF80E   
       LDA    #$F8    
       STA    $B0,X   
       STA    $C8,X   
       RTS            

LF80E: LDA    LF81F,Y 
       STA    $BC,X   
       RTS            

LF814: .byte $01,$FF
LF816: .byte $00,$98
LF818: .byte $20,$78
LF81A: .byte $40,$58
LF81C: .byte $04,$04,$06
LF81F: .byte $00,$00,$00,$00,$00,$00,$02
LF826: .byte $00,$00,$20,$00,$40,$00,$20
LF82D: .byte $98,$98,$78,$98,$58,$98,$58
LF834: .byte $02,$02,$06,$02,$04,$02,$06
LF83B: LDY    $EC     
       DEY            
       DEY            
       DEY            
       BPL    LF847   
       TYA            
       CLC            
       ADC    #$23    
       TAY            
LF847: STY    $EC     
       LDA    LF84D,Y 
       RTS            

LF84D: .byte $00,$C8,$D0,$78,$90,$28,$18,$D8,$48,$88,$08,$E0,$B8,$E0,$10,$40
       .byte $B0,$D8,$20,$80,$D8,$30,$38,$A0,$50,$D0,$A8,$58,$60,$D0,$70,$68
       .byte $98,$C0,$D0
LF870: LDX    #$0C    
LF872: STA    $82,X   
       DEX            
       DEX            
       BNE    LF872   
       RTS            

LF879: JSR    LF89B   
       JSR    LF890   
       LDA    #$FE    
       STA    $E9     
       LDA    #$50    
       STA    $B0     
       STA    $BB     
       LDA    #$FF    
       STA    $D4     
       STA    $D5     
       RTS            

LF890: LDY    #$07    
       LDA    #$00    
LF894: STA.wy $00ED,Y 
       DEY            
       BPL    LF894   
       RTS            

LF89B: LDX    #$0B    
LF89D: LDA    LF8CE,X 
       STA    $B0,X   
       LDA    LF8DA,X 
       STA    $BC,X   
       LDA    LF8E6,X 
       STA    $C8,X   
       DEX            
       BPL    LF89D   
       RTS            

LF8B0: LDX    #$17    
       LDA    #$F8    
LF8B4: STA    $8F,X   
       DEX            
       BPL    LF8B4   
       LDX    #$05    
       LDA    #$00    
LF8BD: STA    $A7,X   
       DEX            
       BPL    LF8BD   
       RTS            

LF8C3: LDX    #$1D    
LF8C5: LDA    LF8F2,X 
       STA    $8F,X   
       DEX            
       BPL    LF8C5   
       RTS            

LF8CE: .byte $48,$30,$60,$70,$40,$10,$80,$30,$50,$20,$60,$48
LF8DA: .byte $05,$06,$06,$06,$06,$06,$06,$06,$06,$06,$06,$05
LF8E6: .byte $E8,$C0,$C8,$D0,$D8,$E0,$D0,$00,$08,$10,$18,$F0
LF8F2: .byte $F8,$10,$70,$78,$C0,$F8,$88,$40,$30,$38,$98,$F8,$90,$00,$68,$10
       .byte $38,$70,$F8,$10,$70,$88,$78,$F8,$00,$19,$83,$00,$19,$83
LF910: CPX    #$00    
       BNE    LF91A   
       LDA    LF93C,Y 
       JMP    LF91D   
LF91A: LDA    LF966,Y 
LF91D: RTS            

LF91E: .byte $0A,$13,$1C,$25,$2E,$37,$40,$49,$52,$5B,$64,$6D,$76,$7F,$88,$91
LF92E: .byte $1D,$1A,$17,$15,$13,$11,$0F,$0E,$0C,$0B,$0A,$09,$08,$07
LF93C: .byte $73,$81,$81,$91,$91,$A1,$A1,$B3,$C1,$C1,$B1,$B1,$71,$71,$83,$91
       .byte $91,$A1,$A1,$B1,$B1,$83,$91,$91,$A1,$A1,$B1,$B1,$73,$81,$81,$91
       .byte $91,$A1,$A1,$B3,$C1,$C1,$B1,$B1,$71,$71
LF966: .byte $03,$13,$03,$13,$41,$21,$41,$01,$41,$21,$41,$01,$41,$31,$41,$11
       .byte $41,$31,$41,$11,$41,$31,$41,$11,$41,$31,$41,$11,$41,$21,$41,$01
       .byte $41,$21,$41,$01,$41,$21,$41,$01,$41,$21,$41,$01
LF992: .byte $29,$2B,$00,$03
LF996: LDA    #$00    
       CPX    $D4     
       BCC    LF9A5   
       LDY    $E5     
       BMI    LF9A5   
       LDA    #$02    
       DEY            
       STY    $E5     
LF9A5: STA    $80     
       LDA    #$00    
       CPX    $D5     
       BCC    LF9B6   
       LDY    $E6     
       BMI    LF9B6   
       LDA    #$02    
       DEY            
       STY    $E6     
LF9B6: STA    HMCLR   
       INX            
       STA    WSYNC   
       STA    ENABL   
       LDA    $80     
       STA    ENAM0   
       RTS            

LF9C2: .byte $AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$8D,$AA,$AA,$AA,$AA,$AA
       .byte $AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA
       .byte $AA,$AA,$AA,$8D,$AA,$D4,$C1,$C7,$A0,$C4,$C5,$CC,$C5,$D4,$C5,$A0
       .byte $C3,$CF,$CE,$D4,$D2,$CF,$CC,$A0,$D3,$D5,$C2,$AA,$8D,$AA,$AA,$AA
       .byte $AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA
       .byte $AA,$AA,$AA,$AA,$AA,$8D,$D4,$C4,$C3,$D3,$A0,$CC,$C4,$D9,$A0,$C2
       .byte $D5,$C6,$C6,$B3,$8D,$A0,$CC,$C4,$C1,$A0,$C7,$D5,$CE,$C9,$CE,$C4
       .byte $D4,$AC,$D9,$8D,$A0,$D4,$C1,$D9,$8D,$A0,$CC,$C4,$C1,$A0,$D4,$C1
       .byte $C7,$D8,$B1,$AC,$D9,$8D,$A0,$C3,$CC,$C3,$8D,$A0,$C1,$C4,$C3,$A0
       .byte $A3,$A4,$B0,$C2,$8D,$A0,$D3,$D4,$C1,$A0,$C2,$D5,$C6,$C6,$B3,$8D
       .byte $AA,$AA,$AA,$AA,$AA,$8D,$D4,$C4,$C3,$D3,$C1,$A0,$CC,$C4,$C1,$A0
       .byte $D4,$C1,$C7,$D8,$B1,$AC,$D8,$8D,$A0,$D3,$D4,$C1,$A0,$C2,$D5,$C6
       .byte $C6,$B4,$8D,$A0,$C3,$CC,$C3,$8D,$A0,$C1,$C4,$C3,$A0,$A3,$A4,$B2
       .byte $B0,$8D,$A0,$D3,$D4,$C1,$A0,$C2,$D5,$C6,$C6,$B5,$8D,$A0,$C3,$CC
       .byte $C3,$8D,$A0,$C1,$C4,$C3,$A0,$A3,$A4,$B2,$B0,$8D,$A0,$D3,$D4,$C1
       .byte $A0,$C2,$D5,$C6,$C6,$B6,$8D,$A0,$CC,$C4,$D8,$A0,$A3,$A4,$B0,$B2
       .byte $8D,$D4,$C4,$C3,$D3,$C1,$B2,$A0,$CC,$C4,$C1,$A0,$C2,$D5,$C6,$C6
       .byte $B4,$AC,$D8,$A0,$8D,$A0,$C3,$CD,$D0,$A0,$A3,$A4,$C1,$B0,$A0,$8D
       .byte $A0,$C2,$C3,$C3,$A0,$D4,$C4,$C3,$D3,$C1,$B1,$8D,$A0,$C3,$CC,$C3
       .byte $8D,$A0,$D3,$C2,$C3,$A0,$A3,$A4,$C1,$B0,$A0,$8D,$D4,$C4,$C3,$D3
       .byte $C1,$B1,$A0,$D3,$D4,$C1,$A0,$C2,$D5,$C6,$C6,$B4,$AC,$D8,$8D,$A0
       .byte $C4,$C5,$D8,$8D,$A0,$C2,$D0,$CC,$A0,$D4,$C4,$C3,$D3,$C1,$B2,$8D
       .byte $A0,$CC,$C4,$D8,$A0,$A3,$A4,$B0,$B2,$8D,$D4,$C4,$C3,$D3,$C1,$B5
       .byte $A0,$CC,$C4,$C1,$A0,$C2,$D5,$C6,$C6,$B4,$AC,$D8,$8D,$A0,$C3,$CD
       .byte $D0,$A0,$A3,$A4,$B9,$B8,$8D,$A0,$C2,$C3,$D3,$A0,$D4,$C4,$C3,$D3
       .byte $C1,$B3,$8D,$A0,$C3,$CD,$D0,$A0,$C2,$D5,$C6,$C6,$B3,$8D,$A0,$C2
       .byte $C3,$D3,$A0,$D4,$C4,$C3,$D3,$C1,$B3,$8D,$A0,$C3,$CC,$C3,$8D,$A0
       .byte $C1,$C4,$C3,$A0,$A3,$A4,$B0,$B9,$8D,$A0,$C3,$CD,$D0,$A0,$C2,$D5
       .byte $C6,$C6,$B3,$8D,$A0,$C2,$C3,$D3,$A0,$D4,$C4,$C3,$D3,$C1,$B4,$8D
       .byte $D4,$C4,$C3,$D3,$C1,$B3,$A0,$C4,$C5,$D8,$8D,$A0,$C2,$CE,$C5,$A0
       .byte $D4,$C4,$C3,$D3,$C1,$B5,$8D,$D4,$C4,$C3,$D3,$C1,$B4,$A0,$D3,$D4
       .byte $D8,$A0,$C2,$D5,$C6,$C6,$B7,$8D,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA
       .byte $8D,$A0,$CC,$C4,$D8,$A0,$C2,$D5,$C6,$C6,$B2,$8D,$A0,$CC,$C4,$C1
       .byte $A0,$D4,$C1,$C7,$C6,$B1,$AC,$D8,$8D,$A0,$C1,$CE,$C4,$A0,$A3,$A4
       .byte $B0,$B7,$8D,$A0,$C2,$C5,$D1,$A0,$D4,$C4,$C3,$D3,$B1,$8D,$A0,$CC
       .byte $C4,$D8,$A0,$C2,$D5,$C6,$C6,$B7,$8D,$A0,$C3,$CD,$D0,$A0,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00
LFD8B: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$66,$66,$7E,$66,$66,$3C,$18,$00,$7C,$66
       .byte $66,$7C,$66,$66,$7C,$00,$3C,$76,$60,$60,$60,$76,$3C,$00,$78,$6C
       .byte $66,$66,$66,$6C,$78,$00,$7E,$60,$64,$7C,$64,$60,$7E,$00,$60,$60
       .byte $64,$7C,$64,$60,$7E,$00,$3E,$76,$66,$7E,$60,$76,$3C,$00,$66,$66
       .byte $66,$7E,$66,$66,$66,$00,$3C,$18,$18,$18,$18,$18,$3C,$00,$30,$58
       .byte $18,$18,$18,$18,$3C,$00,$66,$6C,$78,$70,$78,$6C,$66,$00,$7C,$66
       .byte $60,$60,$60,$60,$60,$00,$66,$66,$66,$7E,$7E,$66,$42,$00,$66,$6E
       .byte $6E,$7E,$76,$76,$66,$00,$3C,$66,$66,$66,$66,$66,$3C,$00,$60,$60
       .byte $60,$7C,$66,$66,$7C,$00,$3E,$66,$6E,$76,$66,$66,$3C,$00,$66,$6C
       .byte $78,$7C,$66,$66,$7C,$00,$3C,$66,$06,$3C,$60,$66,$3C,$00,$18,$18
       .byte $18,$18,$18,$18,$7E,$00,$3C,$66,$66,$66,$66,$66,$66,$00,$18,$18
       .byte $3C,$24,$66,$42,$42,$00,$24,$3C,$7E,$5A,$5A,$5A,$42,$00,$66,$66
       .byte $3C,$18,$3C,$66,$66,$00,$18,$18,$18,$3C,$24,$24,$66,$00,$7E,$66
       .byte $30,$18,$0C,$66,$7E,$00,$08,$1C,$3E,$7F,$7F,$77,$22,$00,$F0,$78
       .byte $FC,$9C,$07,$03,$03,$00,$08,$10,$08,$14,$28,$54,$2A,$22,$2A,$7F
       .byte $5D,$49,$08,$08,$00,$00,$08,$08,$49,$5D,$7F,$2A,$22,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$3C,$66,$66,$66,$66,$66,$66,$3C,$3C,$18,$18
       .byte $18,$18,$18,$38,$18,$7E,$60,$60,$3C,$06,$06,$46,$3C,$3C,$46,$06
       .byte $0C,$0C,$06,$46,$3C,$0C,$0C,$0C,$7E,$4C,$2C,$1C,$0C,$7C,$46,$06
       .byte $06,$7C,$60,$60,$7E,$3C,$66,$66,$66,$7C,$60,$62,$3C,$18,$18,$18
       .byte $18,$0C,$06,$42,$7E,$3C,$66,$66,$3C,$3C,$66,$66,$3C,$3C,$46,$06
       .byte $3E,$66,$66,$66,$3C,$B8,$88,$B8,$88,$B8,$02,$02,$00,$53,$52,$53
       .byte $52,$73,$00,$00,$00,$D7,$55,$D5,$95,$D7,$00,$10,$00,$92,$2A,$AA
       .byte $AA,$AA,$00,$02,$00,$AB,$AA,$AB,$AA,$53,$00,$00,$00,$A4,$AA,$AA
       .byte $AA,$E4,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$F0,$00,$00
