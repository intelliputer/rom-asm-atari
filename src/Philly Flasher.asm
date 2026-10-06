; Disassembly of roms/Philly Flasher.bin
; Disassembled Tue Oct  6 15:22:41 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Philly Flasher.bin
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
RESBL   =  $14
AUDC0   =  $15
AUDC1   =  $16
AUDF0   =  $17
AUDF1   =  $18
AUDV0   =  $19
AUDV1   =  $1A
GRP0    =  $1B
GRP1    =  $1C
ENAM0   =  $1D
ENABL   =  $1F
HMP0    =  $20
HMP1    =  $21
HMM0    =  $22
HMBL    =  $24
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
INPT0   =  $38
SWCHA   =  $0280
SWACNT  =  $0281
SWCHB   =  $0282
SWBCNT  =  $0283
INTIM   =  $0284
TIM64T  =  $0296
L3B00   =   $3B00
L3B21   =   $3B21
L3B23   =   $3B23
L3B25   =   $3B25
L3B27   =   $3B27
L3B29   =   $3B29
L3B2B   =   $3B2B
L3B2D   =   $3B2D
L3B2F   =   $3B2F
L3B61   =   $3B61
L3B63   =   $3B63
L3B65   =   $3B65
L3B68   =   $3B68
L3B6A   =   $3B6A
L3B6D   =   $3B6D
L3B6F   =   $3B6F
L3C00   =   $3C00
L3C05   =   $3C05
L3C0B   =   $3C0B
L3C0D   =   $3C0D
L3C0F   =   $3C0F
L3C21   =   $3C21
L3C25   =   $3C25
L3C2B   =   $3C2B
L3C2D   =   $3C2D
L3C2F   =   $3C2F

       ORG $3000

START:
       JSR    L3048   
L3003: JSR    L3ED5   
       LDX    #$40    
       STX    $82     
       STX    $86     
       STX    $87     
       LDY    #$01    
       STY    $A7     
       STY    $CD     
       STY    $88     
       STY    $CA     
       STY    $89     
       DEX            
       STX    $8B     
       STX    $A6     
       LDA    #$04    
       STA    $CE     
       STA    $A5     
       LDA    #$45    
       STA    $BC     
       DEY            
       STY    $80     
       LDY    #$10    
       STY    $8A     
       JSR    L3CE0   
L3033: JSR    L306B   
       JSR    L3831   
       JSR    L352E   
       LDA    #$82    
       STA    VBLANK  
       STA    WSYNC   
       JSR    L3089   
       JMP    L3033   
L3048: SEI            
       CLD            
       LDX    #$FF    
       TXS            
       INX            
       LDA    #$00    
L3050: STA    VSYNC,X 
       INX            
       BNE    L3050   
       DEX            
       STX    $AC     
       STA    SWACNT  
       STA    SWBCNT  
       LDA    #$3F    
       STA    $92     
       STA    $93     
       LDA    #$01    
       STA    $E2     
       JMP    L3003   
L306B: LDA    #$82    
       STA    WSYNC   
       STA    VBLANK  
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    WSYNC   
       STA    VSYNC   
       LDA    #$20    
       STA    TIM64T  
       RTS            

L3089: LDA    INTIM   
       BNE    L3089   
       STA    WSYNC   
       STA    VBLANK  
       STA    WSYNC   
       STA    CXCLR   
       LDX    #$00    
       STX    PF0     
       STX    PF1     
       STX    PF2     
       LDA    $AF     
       AND    $AC     
       STA    COLUBK  
       LDA    #$34    
       AND    $AC     
       STA    COLUPF  
       STA    WSYNC   
L30AC: LDA    INPT0   
       BMI    L30B2   
       DEC    $A0     
L30B2: TXA            
       LSR            
       LSR            
       TAY            
       LDA    L3E48,Y 
       LDA    L3E48,Y 
       LDA    L3E48,Y 
       STA    WSYNC   
       STA    PF0     
       STA    PF1     
       STA    PF2     
       INX            
       CPX    #$22    
       BNE    L30AC   
       LDA    INPT0   
       BMI    L30D2   
       DEC    $A0     
L30D2: LDA    #$FF    
       STA    WSYNC   
       STA    PF0     
       STA    PF1     
       STA    PF2     
       LDA    INPT0   
       BMI    L30E2   
       DEC    $A0     
L30E2: LDA    #$64    
       AND    $AC     
       STA    COLUBK  
       STA    WSYNC   
       LDA    INPT0   
       BMI    L30F0   
       DEC    $A0     
L30F0: LDA    #$00    
       STA    WSYNC   
       STA    PF0     
       STA    PF1     
       STA    PF2     
       LDA    INPT0   
       BMI    L3100   
       DEC    $A0     
L3100: STA    WSYNC   
       LDX    #$1D    
       LDY    $80     
L3106: LDA    INPT0   
       BMI    L310C   
       DEC    $A0     
L310C: STA    WSYNC   
       LDA    L3C00,Y 
       STA    GRP0    
       LDA    L3D10,Y 
       STA    GRP1    
       LDA    L3B00,X 
       STA    COLUP0  
       LDA    L3B40,X 
       STA    COLUP1  
       INY            
       DEX            
       BPL    L3106   
       LDA    INPT0   
       BMI    L312C   
       DEC    $A0     
L312C: LDA    $C7     
       STA    REFP0   
       LDA    #$06    
       STA    NUSIZ1  
       LDX    #$00    
       LDA    #$44    
       STA    HMP1    
       STA    WSYNC   
       STX    COLUBK  
       STX    COLUP1  
       AND    #$0F    
       TAY            
L3143: DEY            
       BPL    L3143   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       INY            
       JMP    L3159   
L3150: JMP    L31DD   
L3153: STA    $BA     
       LDY    #$0A    
       BNE    L319B   
L3159: LDA    $84     
       STA    WSYNC   
       STY    HMP1    
       STA    COLUPF  
       LDX    #$45    
L3163: STX    $BF     
       CPX    $BC     
       BNE    L3150   
       LDA    #$00    
       STA    $BB     
L316D: LDY    $BB     
       LDA.wy $00B0,Y 
       BEQ    L3153   
       STA    HMM0    
       AND    #$07    
       TAY            
       LDA    INPT0   
       BMI    L317F   
       DEC    $A0     
L317F: LDA    L3E00,X 
       STA    WSYNC   
       STA    PF2     
       AND    #$7F    
       STA    PF1     
       LDA    #$02    
       STA    $BA     
       STA    $BA     
       NOP            
       NOP            
       NOP            
       DEX            
L3194: DEY            
       BPL    L3194   
       STA    RESM0   
       LDY    #$09    
L319B: LDA    INPT0   
       BMI    L31A1   
       DEC    $A0     
L31A1: STA    WSYNC   
       STA    HMOVE   
       LDA    $BA     
       STA    ENAM0   
       LDA    L3E00,X 
       STA    PF2     
       AND    #$7F    
       STA    PF1     
       DEX            
       DEY            
       STA    HMCLR   
       CPY    #$05    
       BNE    L319B   
       INC    $BB     
       LDA    $BB     
       CMP    #$06    
       BEQ    L31F2   
L31C2: LDA    INPT0   
       BMI    L31C8   
       DEC    $A0     
L31C8: STA    WSYNC   
       LDA    #$00    
       STA    ENAM0   
       LDA    L3E00,X 
       STA    PF2     
       AND    #$7F    
       STA    PF1     
       DEX            
       DEY            
       BNE    L31C2   
       BEQ    L316D   
L31DD: LDA    INPT0   
       BMI    L31E3   
       DEC    $A0     
L31E3: STA    WSYNC   
       LDA    L3E00,X 
       STA    PF2     
       AND    #$7F    
       STA    PF1     
       DEX            
       JMP    L3163   
L31F2: LDA    INPT0   
       BMI    L31F8   
       DEC    $A0     
L31F8: STA    WSYNC   
       LDA    #$1F    
       STA    COLUPF  
       LDA    #$00    
       STA    ENAM0   
       LDA    $83     
       STA    HMP0    
       STA    HMP1    
       AND    #$07    
       STA    $DC     
       DEY            
       DEY            
       DEY            
       DEX            
       DEX            
       LDA    INPT0   
       BMI    L3217   
       DEC    $A0     
L3217: STA    WSYNC   
       LDA    #$00    
       STA    GRP1    
       LDA    #$3A    
       STA    COLUP1  
       LDA    $C7     
       STA    REFP1   
       NOP            
       STY    $BD     
       LDY    $DC     
L322A: DEY            
       BPL    L322A   
       STA    RESP1   
       LDA    INPT0   
       BMI    L3235   
       DEC    $A0     
L3235: STA    WSYNC   
       DEX            
       LDA    $85     
       EOR    #$01    
       STA    NUSIZ0  
       STA    NUSIZ1  
       NOP            
       NOP            
       NOP            
       NOP            
       LDY    $DC     
L3246: DEY            
       BPL    L3246   
       STA    RESP0   
       LDA    INPT0   
       BMI    L3251   
       DEC    $A0     
L3251: STA    WSYNC   
       STA    HMOVE   
       LDY    $BD     
L3257: DEY            
       BEQ    L3266   
       DEX            
       LDA    INPT0   
       BMI    L3261   
       DEC    $A0     
L3261: STA    WSYNC   
       JMP    L3257   
L3266: STX    $BF     
       LDA    #$0A    
       STA    $BD     
       STA    HMCLR   
       LDA    INPT0   
       BMI    L3274   
       DEC    $A0     
L3274: LDX    $BB     
       LDA    $B0,X   
       BEQ    L32C6   
       STA    WSYNC   
       STA    HMCLR   
       STA    HMBL    
       AND    #$07    
       TAY            
       LDA    #$02    
       STA    $BA     
       NOP            
       NOP            
       LDX    $BF     
       DEX            
L328C: DEY            
       BPL    L328C   
       STA    RESBL   
L3291: LDA    INPT0   
       BMI    L3297   
       DEC    $A0     
L3297: STA    WSYNC   
       STA    HMOVE   
       LDY    $BD     
       LDA    $BA     
       STA    ENABL   
L32A1: DEY            
       DEX            
       BEQ    L32CF   
       CPY    #$06    
       BEQ    L32B4   
       LDA    INPT0   
       BMI    L32AF   
       DEC    $A0     
L32AF: STA    WSYNC   
       JMP    L32A1   
L32B4: LDA    INPT0   
       BMI    L32BA   
       DEC    $A0     
L32BA: LDA    #$00    
       STA    WSYNC   
       STA    ENABL   
       DEY            
       DEX            
       BEQ    L32CF   
       BNE    L32B4   
L32C6: STA    $BA     
       LDX    $BF     
       STA    WSYNC   
       DEX            
       BNE    L3291   
L32CF: LDX    #$1C    
       STX    $BF     
       STY    $BD     
       LDY    $82     
L32D7: DEC    $BD     
       BEQ    L330F   
       LDA    $BD     
       CMP    #$05    
       BEQ    L32F5   
L32E1: LDA    L3C00,Y 
       STA    WSYNC   
       STA    GRP0    
       LDA    L3D10,Y 
       STA    GRP1    
       INY            
       DEC    $BF     
       BNE    L32D7   
       JMP    L3378   
L32F5: LDX    #$00    
       LDA    L3C00,Y 
       STA    WSYNC   
       STX    ENABL   
       STA    GRP0    
       LDA    L3D10,Y 
       STA    GRP1    
       LDX    $BF     
       INY            
       DEC    $BF     
       BNE    L335E   
       JMP    L3378   
L330F: INC    $BB     
       LDX    $BB     
       LDA    #$0A    
       STA    $BD     
       LDA    $B0,X   
       BEQ    L32E1   
       STA    $DC     
       AND    #$07    
       TAX            
       STA    WSYNC   
       LDA    L3C00,Y 
       STA    GRP0    
       LDA    L3D10,Y 
       STA    GRP1    
       LDA    $DC     
       LDA    $DC     
       NOP            
       NOP            
L3332: DEX            
       BPL    L3332   
       STA    RESBL   
       LDX    $BF     
       STA    HMBL    
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$02    
       STA    ENABL   
       INY            
       LDA    L3C00,Y 
       STA    GRP0    
       LDA    L3D10,Y 
       STA    GRP1    
       DEC    $BD     
       DEC    $BF     
       BEQ    L3378   
       DEC    $BD     
       DEC    $BF     
       BEQ    L3378   
       INY            
       JMP    L32E1   
L335E: LDX    $BF     
       STA    WSYNC   
       LDA    L3C00,Y 
       STA    GRP0    
       LDA    L3D10,Y 
       STA    GRP1    
       INY            
       DEC    $BF     
       BEQ    L3378   
       DEC    $BD     
       BNE    L335E   
       JMP    L330F   
L3378: LDA    #$00    
       LDY    #$E6    
       LDX    #$03    
       STA    WSYNC   
       STA    GRP1    
       STA    ENABL   
       STY    COLUBK  
       LDA    $B9     
       STA    HMP0    
       AND    #$07    
       TAY            
       STA    $3F     
L338F: DEY            
       BPL    L338F   
       STA    RESP0   
       LDA    $BE     
       ASL            
       ASL            
       TAY            
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$00    
       STA    NUSIZ0  
       STA    REFP0   
       STA    REFP1   
L33A5: LDA    $B9     
       BEQ    L33AC   
       LDA    L3DF0,Y 
L33AC: STA    WSYNC   
       STA    GRP0    
       INY            
       DEX            
       BPL    L33A5   
       LDA    #$00    
       STA    REFP0   
       LDA    #$82    
       STA    WSYNC   
       STA    HMCLR   
       STA    VBLANK  
       LDA    #$62    
       AND    $AC     
       STA    COLUBK  
       LDA    #$0F    
       AND    $AC     
       STA    COLUP0  
       STA    COLUP1  
       JSR    L344C   
       JSR    L34A2   
       LDA    #$80    
       STA    WSYNC   
       STA    VBLANK  
       JSR    L346B   
       LDA    #$80    
       STA    WSYNC   
       STA    VBLANK  
       LDA    #$02    
       STA    CTRLPF  
       AND    $AC     
       STA    COLUBK  
       STA    COLUP1  
       LDA    $A6     
       AND    $AC     
       STA    COLUP0  
       LDY    $95     
       LDX    #$04    
L33F7: LDA    L3F49,Y 
       STA    WSYNC   
       STA    PF0     
       LDA    L3F51,Y 
       STA    PF1     
       DEX            
       BPL    L33F7   
       LDA    #$00    
       STA    PF0     
       STA    PF1     
       AND    $AC     
       STA    COLUBK  
       LDA    #$26    
       AND    $AC     
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$88    
       JSR    L3440   
       LDA    #$80    
       STA    WSYNC   
       STA    VBLANK  
       JSR    L346B   
       LDA    #$82    
       STA    WSYNC   
       STA    VBLANK  
       LDA    #$00    
       STA    VDELP0  
       STA    VDELP1  
       LDA    #$82    
       STA    WSYNC   
       STA    VBLANK  
       LDX    #$0E    
L343A: STA    WSYNC   
       DEX            
       BPL    L343A   
       RTS            

L3440: LDX    #$0A    
       SEC            
L3443: STA    $D0,X   
       SBC    #$08    
       DEX            
       DEX            
       BPL    L3443   
       RTS            

L344C: LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    VDELP0  
       STA    VDELP1  
       LDA    #$F0    
       STA    HMP0    
       LDY    #$07    
       STA    WSYNC   
L345E: DEY            
       BNE    L345E   
       NOP            
       STA    RESP0   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       RTS            

L346B: LDA    #$06    
       STA    $BF     
L346F: LDY    $BF     
       LDA    ($D0),Y 
       STA    GRP0    
       STA    WSYNC   
       LDA    ($D2),Y 
       STA    GRP1    
       LDA    ($D4),Y 
       STA    GRP0    
       LDA    ($D6),Y 
       STA    $DE     
       LDA    ($D8),Y 
       TAX            
       LDA    ($DA),Y 
       TAY            
       LDA    $DE     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STY    GRP0    
       DEC    $BF     
       BPL    L346F   
       STA    WSYNC   
       LDY    #$00    
       STY    GRP0    
       STY    GRP1    
       STY    GRP0    
       RTS            

L34A2: LDA    #$00    
       TAX            
       STA    $DC     
L34A7: STX    $DD     
       LDA.wy $00E0,Y 
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       BEQ    L34B5   
       INC    $DC     
L34B5: LDA    $DC     
       BNE    L34BB   
       LDX    #$0A    
L34BB: LDA    L3FE8,X 
       LDX    $DD     
       STA    $D0,X   
       INX            
       INX            
       STX    $DD     
       LDA.wy $00E0,Y 
       AND    #$0F    
       TAX            
       BEQ    L34D0   
       INC    $DC     
L34D0: LDA    $DC     
       BNE    L34D6   
       LDX    #$0A    
L34D6: LDA    L3FE8,X 
       LDX    $DD     
       STA    $D0,X   
       INX            
       INX            
       INY            
       CPY    #$03    
       BCC    L34A7   
       LDA    $DC     
       BNE    L34EC   
       LDA    #$98    
       STA    $DA     
L34EC: LDA    #$3F    
       LDX    #$0A    
L34F0: STA    $D1,X   
       DEX            
       DEX            
       BPL    L34F0   
       RTS            

L34F7: LDA    #$00    
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    WSYNC   
       LDA    #$01    
       STA    CTRLPF  
       LDA    $DF     
       LSR            
       LSR            
       AND    #$03    
       STA    $BE     
       INC    $DF     
       JSR    L358A   
       LDA    $CD     
       BEQ    L3519   
       LDA    #$06    
       JSR    L3B60   
L3519: RTS            

L351A: JSR    L35E7   
       CPX    #$00    
       BEQ    L352D   
       LDA    #$00    
       STA    $B0,X   
       JSR    L3743   
       LDA    #$04    
       JSR    L3B60   
L352D: RTS            

L352E: BIT    $C6     
       BMI    L353A   
       LDA    $C0     
       BNE    L353A   
       LDA    #$06    
       STA    $C5     
L353A: LDX    $C5     
       LDA    L3E52,X 
       STA    $C3     
       LDA    L3E53,X 
       STA    $C4     
       LDA    $C0     
       BNE    L3555   
       BIT    $C2     
       BMI    L3589   
       SEC            
       ROR    $C2     
       STA    $C1     
       BCC    L3564   
L3555: DEC    $C0     
       BNE    L3589   
       LDA    #$04    
       STA    AUDV0   
       LSR            
       STA    AUDV0   
       LDA    #$00    
       STA    AUDV0   
L3564: LDX    #$00    
       LDY    $C1     
       BNE    L356F   
       LDA    ($C3),Y 
       STA    AUDC0   
       INY            
L356F: LDA    ($C3),Y 
       STA    AUDF0,X 
       INY            
       INX            
       INX            
       CPX    #$04    
       BNE    L356F   
       LDA    ($C3),Y 
       INY            
       STY    $C1     
       STA    $C0     
       CMP    #$00    
       BNE    L3589   
       STA    $C6     
       STA    $C2     
L3589: RTS            

L358A: LDA    $81     
       STA    WSYNC   
       STA    HMP0    
       STA    HMP1    
       AND    #$07    
       TAY            
       NOP            
       NOP            
       NOP            
       PHA            
       PLA            
L359A: DEY            
       BPL    L359A   
       STA    RESP0   
       LDA    $81     
       STA    WSYNC   
       STA    $DC     
       AND    #$07    
       TAY            
       STA    $DC     
       NOP            
       NOP            
       NOP            
       PHA            
       PLA            
L35AF: DEY            
       BPL    L35AF   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
L35B8: LDY    #$FF    
       SEC            
L35BB: INY            
       SBC    #$0F    
       BCS    L35BB   
       STY    $DC     
       EOR    #$FF    
       ADC    #$09    
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    $DC     
       RTS            

L35CD: .byte $A9,$86,$60
L35D0: STA    $DC     
       AND    #$0F    
       TAY            
       LDA    $DC     
       CLC            
       ADC    #$70    
       LSR            
       LSR            
       LSR            
       LSR            
       EOR    #$FF    
L35E0: CLC            
       ADC    #$0F    
       DEY            
       BPL    L35E0   
       RTS            

L35E7: LDA    $BC     
       CMP    #$40    
       BCC    L362C   
L35ED: LDX    #$07    
       JSR    L3603   
       CPX    #$00    
       BNE    L3602   
       LDA    SWCHB   
       AND    #$40    
       BEQ    L3602   
       LDX    #$08    
       JSR    L3603   
L3602: RTS            

L3603: LDA    $B0,X   
       BEQ    L3629   
       JSR    L35D0   
       SEC            
       SBC    $A1     
       BCC    L3629   
       TAY            
       DEY            
       DEY            
       BMI    L3619   
       CPY    #$07    
       BCS    L3619   
L3618: RTS            

L3619: LDA    $85     
       BNE    L3629   
       TYA            
       SEC            
       SBC    #$0F    
       BCC    L3629   
       CMP    #$09    
       BCS    L3629   
       BCC    L3618   
L3629: LDX    #$00    
       RTS            

L362C: LDX    #$06    
       JSR    L3603   
       CPX    #$00    
       BNE    L3602   
       BEQ    L35ED   
L3637: LDA    $A0     
       ADC    $DC     
       JSR    L3641   
       JMP    L366A   
L3641: LDA    $A0     
       CMP    #$66    
       BCC    L364B   
       LDA    #$66    
       STA    $A0     
L364B: RTS            

L364C: LDY    #$05    
       JSR    L3641   
       CMP    #$03    
       BCC    L3668   
       SEC            
       SBC    $A1     
       BPL    L365E   
       LDY    #$FB    
       EOR    #$FF    
L365E: STY    $DC     
       CMP    #$03    
       BCC    L3680   
       CMP    #$06    
       BCS    L3637   
L3668: LDA    $A0     
L366A: CMP    $A1     
       STA    $A1     
       BCS    L3674   
       LDA    #$00    
       BEQ    L3678   
L3674: BEQ    L3680   
       LDA    #$08    
L3678: STA    $C7     
       LDA    $82     
       EOR    #$20    
       STA    $82     
L3680: LDA    $A1     
       RTS            

L3683: LDX    #$09    
L3685: LDA    $B0,X   
       STA    $B1,X   
       DEX            
       BPL    L3685   
       LDA    #$00    
       STA    $B0     
       CPY    #$00    
       BNE    L3697   
       JSR    L371D   
L3697: RTS            

L3698: LDX    $CC     
       BEQ    L36A4   
       DEX            
       LDA    #$01    
L369F: STX    $CC     
       JMP    L36B3   
L36A4: EOR    #$80    
       TAX            
       LDA    #$00    
       BEQ    L369F   
L36AB: DEC    $A4     
       BPL    L36C2   
       LDA    $CB     
       BMI    L3698   
L36B3: STA    $A4     
       LDX    $BC     
       CPX    #$3E    
       BCS    L36C3   
       JSR    L3683   
       LDX    #$45    
L36C0: STX    $BC     
L36C2: RTS            

L36C3: DEX            
       DEX            
       BNE    L36C0   
L36C7: LDA    $86     
       CMP    $87     
       BEQ    L36E0   
       CLC            
       ADC    $88     
       STA    $86     
       CMP    $87     
       BNE    L36DF   
       LDA    $CB     
       ASL            
       ASL            
       ASL            
       ADC    #$05    
       STA    $A3     
L36DF: RTS            

L36E0: DEC    $A3     
       BPL    L36DF   
       JSR    L36E8   
       RTS            

L36E8: LDX    $CA     
       LDY    $89     
       LDA    ($8A),Y 
       STA    $87     
       CMP    $86     
       BCS    L36FE   
       TXA            
       EOR    #$FF    
       STA    $88     
       INC    $88     
       JMP    L3700   
L36FE: STX    $88     
L3700: DEC    $89     
       BPL    L371C   
       LDA    $A1     
       AND    #$03    
       TAX            
       STX    $89     
       LDA    $DF     
       AND    #$38    
       LSR            
       LSR            
       LSR            
       TAX            
       LDA    L3F30,X 
       STA    $8A     
       LDA    #$3F    
       STA    $8B     
L371C: RTS            

L371D: LDX    $AA     
       CPX    #$30    
       BCS    L3727   
       DEC    $8C     
       BPL    L3742   
L3727: DEC    $C8     
       BMI    L3742   
       LDA    $DF     
       AND    #$3C    
       LSR            
       LSR            
       LSR            
       CPX    #$06    
       BEQ    L373C   
       LSR            
       CPX    #$07    
       BEQ    L373C   
       LSR            
L373C: STA    $8C     
       LDA    $81     
       STA    $B0     
L3742: RTS            

L3743: LDA    $CD     
       BNE    L3756   
       SED            
       CLC            
       LDA    $E2     
       ADC    #$01    
       STA    $E2     
       LDA    $E1     
       ADC    #$00    
       STA    $E1     
       CLD            
L3756: DEC    $C9     
       INC    $90     
       LDA    $90     
       CMP    #$45    
       BCC    L3792   
       LDA    #$00    
       STA    $90     
       LDX    $A5     
       INX            
       CPX    #$08    
       BNE    L376D   
       LDX    #$07    
L376D: STX    $A5     
       STX    $95     
       STX    $AE     
       LDA    #$FF    
       STA    $8D     
       LDX    #$09    
       LDA    #$00    
L377B: STA    $B0,X   
       DEX            
       BPL    L377B   
       STX    $C8     
       LDA    #$04    
       LDX    $A1     
       CPX    #$30    
       BCC    L378C   
       LDA    #$FC    
L378C: STA    $E3     
       LDA    #$80    
       STA    $82     
L3792: RTS            

L3793: LDX    #$00    
       STX    $E1     
L3797: STX    $A9     
       STX    $A8     
       STX    $AA     
       STX    $90     
       STX    $AE     
       STX    $80     
       STA    $A7     
       RTS            

L37A6: JMP    L38C2   
L37A9: LDA    SWCHA   
       BMI    L37B2   
       LDA    #$04    
       STA    $A5     
L37B2: JSR    L398C   
       BPL    L37A6   
       LDA    #$00    
       STA    $AD     
       STA    AUDV1   
       JSR    L3793   
       STX    $E2     
       JMP    L388E   
L37C5: LDX    #$05    
       STX    $95     
       DEX            
       STX    $A5     
       LDX    $85     
       INX            
       STX    $E2     
       LDA    #$40    
       STA    $82     
       JSR    L3793   
       STX    $AD     
       JSR    L3CE0   
       STA    AUDV1   
       STA    $CD     
       LDX    #$09    
L37E3: STA    $B0,X   
       DEX            
       BPL    L37E3   
       STX    $C8     
       JMP    L37A9   
L37ED: DEC    $E4     
       BPL    L37FB   
       LDA    #$1F    
       STA    $E4     
       LDA    $85     
       EOR    #$01    
       STA    $85     
L37FB: LDX    $85     
       INX            
       STX    $E2     
       LDA    #$00    
       STA    $E1     
       STA    AUDV1   
       LDA    #$40    
       STA    $82     
       JMP    L3AC6   
L380D: JMP    L39D0   
L3810: JMP    L3A12   
L3813: TXA            
       LDX    #$05    
       SEC            
       SBC    #$10    
       AND    #$7F    
       JMP    L3891   
L381E: LDA    $AD     
       BNE    L383C   
       LDA    $DF     
       AND    #$03    
       BNE    L383C   
       STA    $80     
       STA    AUDV1   
       BEQ    L383C   
L382E: JMP    L3A7D   
L3831: LDA    $C8     
       BMI    L381E   
       LDA    $A8     
       BNE    L381E   
       JSR    L3B87   
L383C: LDA    SWCHB   
       AND    #$03    
       CMP    #$02    
       BEQ    L37C5   
       CMP    #$01    
       BEQ    L37ED   
       LDA    #$00    
       STA    $E4     
       LDA    $CD     
       BNE    L380D   
       LDA    $AE     
       BNE    L3810   
L3855: LDA    $A9     
       BNE    L382E   
       LDA    $A8     
       BNE    L38DC   
       LDA    $A7     
       BEQ    L38A3   
       LDA    $AD     
       BEQ    L386F   
       LDA    $AA     
       BNE    L386F   
       LDA    $CD     
       BNE    L386F   
       STA    $E2     
L386F: JSR    L398C   
       BPL    L38C2   
       LDA    #$00    
       STA    $AD     
       STA    AUDV1   
       STA    $80     
       STA    $A7     
       LDX    $AA     
       CPX    #$05    
       BCC    L388E   
       CPX    #$14    
       BCS    L3813   
       TXA            
       LDX    #$04    
       JMP    L3891   
L388E: LDA    L3F38,X 
L3891: STA    $C8     
       STA    $C9     
       LDA    L3F43,X 
       STA    $CB     
       LDA    L3F3D,X 
       STA    $CA     
       LDA    #$40    
       STA    $82     
L38A3: LDA    $B9     
       BNE    L38DA   
       LDA    $C8     
       BPL    L38B7   
       LDX    #$09    
L38AD: LDA    $B0,X   
       BNE    L38B7   
       DEX            
       BPL    L38AD   
       JMP    L3952   
L38B7: JSR    L36C7   
       LDY    #$00    
       JSR    L36AB   
       JSR    L351A   
L38C2: LDA    $86     
       JSR    L35B8   
       STA    $81     
       JSR    L364C   
       JSR    L35B8   
       STA    $83     
       STA    HMCLR   
       LDA    #$8B    
       STA    $A0     
       JMP    L34F7   
L38DA: STA    $A8     
L38DC: LDA    $A7     
       BNE    L393A   
       STA    AUDV0   
       LDY    #$01    
       JSR    L36AB   
       LDX    #$09    
       LDA    $B9     
       BEQ    L38F2   
       LDY    #$02    
       JSR    L3A70   
L38F2: LDA    $B0,X   
       BNE    L392C   
       DEX            
       BPL    L38F2   
       LDX    $A5     
       CPX    #$01    
       BEQ    L3933   
       LDA    $92     
       CMP    #$1F    
       BCS    L3936   
       LDA    #$0A    
       JSR    L3B60   
       LDA    #$01    
       STA    $94     
       LDA    $91     
       EOR    #$06    
       STA    $91     
       BNE    L392C   
       DEC    $92     
       LDA    $92     
       CMP    #$07    
       BNE    L392C   
       STX    $A7     
       DEC    $A5     
       LDA    #$00    
       STA    $94     
       STA    $AD     
       LDA    #$3F    
       STA    $92     
L392C: LDA    $A1     
       STA    $A0     
       JMP    L38C2   
L3933: JMP    L3A67   
L3936: DEC    $92     
       BNE    L392C   
L393A: JSR    L398C   
       BPL    L397D   
       LDA    $C9     
       STA    $C8     
       LDA    #$00    
       STA    AUDV1   
       STA    $AD     
       STA    $80     
       STA    $A7     
       STA    $A8     
       JMP    L38A3   
L3952: LDA    $DF     
       AND    #$03    
       BNE    L3980   
       CLC            
       LDA    $82     
       ADC    #$20    
       STA    $82     
       CMP    #$D0    
       BCC    L3980   
       LDA    #$80    
       STA    $82     
       INC    $8D     
       LDA    $8D     
       CMP    #$08    
       BCC    L3980   
       LDA    #$40    
       STA    $82     
       INC    $A7     
       INC    $AA     
       LDA    #$00    
       STA    $8D     
       STA    $AD     
L397D: JMP    L38C2   
L3980: LDA    $A1     
       STA    $A0     
       LDY    #$08    
       JSR    L3A70   
       JMP    L38C2   
L398C: LDA    $C5     
       CMP    #$10    
       BEQ    L39BF   
       LDA    $AD     
       BNE    L39AD   
       LDA    $CD     
       BNE    L39A3   
       LDA    SWCHA   
       BMI    L39BF   
       LDA    #$FF    
       STA    $AC     
L39A3: LDA    #$7F    
       STA    $AD     
       STA    $8D     
       LDA    #$04    
       STA    AUDC1   
L39AD: JSR    L3B87   
       LDA    $CD     
       BNE    L39B8   
       LDA    $A5     
       STA    $95     
L39B8: DEC    $8D     
       LDA    $8D     
       STA    $8C     
       RTS            

L39BF: LDA    #$00    
       RTS            

L39C2: LDA    SWCHA   
       BPL    L39DD   
       LDA    #$00    
       STA    $CD     
       STA    $E5     
       JMP    L37C5   
L39D0: LDA    $E5     
       BNE    L39C2   
       LDA    SWCHA   
       BMI    L39DD   
       LDA    #$01    
       STA    $E5     
L39DD: LDA    #$00    
       STA    $90     
       STA    $95     
       LDA    #$04    
       STA    $A5     
       LDA    $DF     
       AND    #$0F    
       BNE    L39FF   
       CLC            
       LDA    $A1     
       ADC    $CE     
       STA    $A0     
       CMP    #$03    
       BCC    L3A06   
       CMP    #$66    
       BCS    L3A0C   
L39FC: JMP    L3855   
L39FF: LDA    $A1     
       STA    $A0     
       JMP    L3855   
L3A06: LDA    #$04    
       STA    $CE     
       BNE    L39FC   
L3A0C: LDA    #$FC    
       STA    $CE     
       BNE    L39FC   
L3A12: DEC    $8D     
       BEQ    L3A52   
       LDX    $A1     
       STX    $A0     
       LDA    $8D     
       CMP    #$E8    
       BCS    L3A4F   
       LDA    $DF     
       AND    #$1F    
       BNE    L3A37   
       JSR    L3AA5   
       LDA    $C7     
       EOR    #$08    
       STA    $C7     
       TXA            
       CLC            
       ADC    $E3     
       STA    $A0     
       STA    $A1     
L3A37: LDY    #$0C    
       JSR    L3A70   
       LDA    $DF     
       AND    #$03    
       BNE    L3A4F   
       CLC            
       LDA    $82     
       ADC    #$21    
       CMP    #$D0    
       BCC    L3A4D   
       LDA    #$80    
L3A4D: STA    $82     
L3A4F: JMP    L38C2   
L3A52: LDX    #$00    
       STX    $AE     
       STX    $A8     
       STX    $AD     
       JSR    L3CE0   
       INC    $AA     
       LDA    #$40    
       STA    $A7     
       STA    $82     
       BNE    L3A6D   
L3A67: LDA    #$FF    
       STA    $8D     
       STA    $A9     
L3A6D: JMP    L38C2   
L3A70: STY    $DC     
       LDA    $C5     
       CMP    $DC     
       BEQ    L3A7C   
       TYA            
       JSR    L3B60   
L3A7C: RTS            

L3A7D: DEC    $8D     
       LDX    $8D     
       BEQ    L3ABF   
       CPX    #$10    
       BCC    L3AB6   
       LDA    #$0A    
       JSR    L3B60   
       LDA    #$08    
       STA    $91     
       LDA    #$01    
       STA    $94     
       TXA            
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $93     
       LDA    $DF     
       STA    $92     
       JSR    L3AA5   
L3AA2: JMP    L38C2   
L3AA5: AND    #$0F    
       BNE    L3AB5   
       LDA    $AF     
       EOR    #$04    
       STA    $AF     
       LDA    $84     
       EOR    #$08    
       STA    $84     
L3AB5: RTS            

L3AB6: JSR    L3CE0   
       LDA    #$00    
       STA    $93     
       BEQ    L3AA2   
L3ABF: JMP    L3AC2   
L3AC2: LDA    #$F5    
       STA    $AC     
L3AC6: JSR    L3CE4   
       TAX            
       JSR    L3797   
       LDA    #$F5    
       STA    $CD     
       BNE    L3AA2   
       BMI    L3B05   
       BMI    L3B07   
       BMI    L3B09   
       BMI    L3B0B   
       BMI    L3B0D   
       BMI    L3B0F   
       BMI    L3B11   
       BMI    L3B13   
       BMI    L3B15   
       BMI    L3B17   
       BMI    L3B19   
       BMI    L3B1B   
       BMI    L3B1D   
       BMI    L3B1F   
       BMI    L3B21   
       BMI    L3B23   
       BMI    L3B25   
       BMI    L3B27   
       BMI    L3B29   
       BMI    L3B2B   
       BMI    L3B2D   
       BMI    L3B2F   
       BMI    L3B20   
       BRK            
       BRK            
       BRK            
       BRK            
L3B05: BRK            
       .byte $1F ;.SLO
L3B07: .byte $1F ;.SLO
       .byte $1F ;.SLO
L3B09: .byte $1F ;.SLO
       .byte $1F ;.SLO
L3B0B: AND    VDELP0  
L3B0D: AND    PF2     
L3B0F: .byte $0F ;.SLO
       .byte $0F ;.SLO
L3B11: .byte $0F ;.SLO
       .byte $0F ;.SLO
L3B13: .byte $0F ;.SLO
       BRK            
L3B15: BRK            
       BRK            
L3B17: BRK            
       BRK            
L3B19: BRK            
       BRK            
L3B1B: BRK            
       BRK            
L3B1D: BRK            
       BRK            
L3B1F: BRK            
L3B20: BMI    L3B52   
       BMI    L3B54   
       BMI    L3B56   
       BMI    L3B58   
       BMI    L3B5A   
       BMI    L3B5C   
       BMI    L3B5E   
       BMI    L3B60   
       BMI    L3B62   
       BMI    L3B64   
       BMI    L3B66   
       BMI    L3B68   
       BMI    L3B6A   
       BMI    L3B6C   
       BMI    L3B6E   
       BMI    L3B70   
L3B40: .byte $64 ;.NOP
       .byte $FA ;.NOP
       .byte $FA ;.NOP
       .byte $FA ;.NOP
       .byte $FA ;.NOP
       .byte $FA ;.NOP
       .byte $FA ;.NOP
       .byte $FA ;.NOP
       .byte $FA ;.NOP
       .byte $FA ;.NOP
       .byte $FA ;.NOP
       .byte $FA ;.NOP
       .byte $FA ;.NOP
       .byte $FA ;.NOP
       .byte $FA ;.NOP
       .byte $FA ;.NOP
       .byte $FA ;.NOP
       .byte $FA ;.NOP
L3B52: .byte $FA ;.NOP
L3B53: .byte $FA ;.NOP
L3B54: .byte $FA ;.NOP
L3B55: .byte $FA ;.NOP
L3B56: .byte $FA ;.NOP
L3B57: .byte $FA ;.NOP
L3B58: .byte $FA ;.NOP
L3B59: .byte $FA ;.NOP
L3B5A: .byte $FA ;.NOP
L3B5B: .byte $FA ;.NOP
L3B5C: .byte $FA ;.NOP
L3B5D: .byte $FA ;.NOP
L3B5E: .byte $FA ;.NOP
L3B5F: .byte $FA ;.NOP
L3B60: STA    $C5     
L3B62: LDY    #$FF    
L3B64: STY    $C6     
L3B66: INY            
L3B67: STY    $C2     
L3B69: STY    $C0     
L3B6B: RTS            

L3B6C: LDA    #$00    
L3B6E: BEQ    L3B84   
L3B70: LDA    $CD     
       BNE    L3B6C   
       LDA    $DF     
       LSR            
       LSR            
       AND    #$0F    
       CMP    #$08    
       BCC    L3B80   
       EOR    #$0F    
L3B80: STA    AUDF1   
       LDA    #$08    
L3B84: STA    AUDV1   
       RTS            

L3B87: LDA    $DF     
       AND    #$03    
       BNE    L3B93   
       LDA    $80     
       EOR    #$20    
       STA    $80     
L3B93: JSR    L3B70   
       RTS            

L3B97: .byte $30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30
L3BA5: BMI    L3BD7   
       BMI    L3BD9   
       BMI    L3BDB   
       BMI    L3BDD   
       BMI    L3BDF   
       BMI    L3BE1   
       BMI    L3BE3   
       BMI    L3BE5   
       BMI    L3BE7   
       BMI    L3BE9   
       BMI    L3BEB   
       BMI    L3BED   
       BMI    L3BEF   
       BMI    L3BF1   
       BMI    L3BF3   
       BMI    L3BF5   
       BMI    L3BF7   
       BMI    L3BF9   
       BMI    L3BFB   
       BMI    L3BFD   
       BMI    L3BFF   
       BMI    L3C01   
       BMI    L3C03   
       BMI    L3C05   
       BMI    L3C07   
L3BD7: BMI    L3C09   
L3BD9: BMI    L3C0B   
L3BDB: BMI    L3C0D   
L3BDD: BMI    L3C0F   
L3BDF: BMI    L3C11   
L3BE1: BMI    L3C13   
L3BE3: BMI    L3C15   
L3BE5: BMI    L3C17   
L3BE7: BMI    L3C19   
L3BE9: BMI    L3C1B   
L3BEB: BMI    L3C1D   
L3BED: BMI    L3C1F   
L3BEF: BMI    L3C21   
L3BF1: BMI    L3C23   
L3BF3: BMI    L3C25   
L3BF5: BMI    L3C27   
L3BF7: BMI    L3C29   
L3BF9: BMI    L3C2B   
L3BFB: BMI    L3C2D   
L3BFD: BMI    L3C2F   
L3BFF: BMI    L3C02   
L3C01: .byte $03 ;.SLO
L3C02: .byte $07 ;.SLO
L3C03: ASL    $1C1E   
       .byte $3C ;.NOP
L3C07: .byte $3C ;.NOP
       BRK            
L3C09: INC    $0606,X 
       ASL    COLUP0  
       ASL    WSYNC   
       BRK            
L3C11: BRK            
       BRK            
L3C13: BRK            
       RTI            

L3C15: CPY    #$00    
L3C17: BRK            
       BRK            
L3C19: BRK            
       BRK            
L3C1B: BRK            
       BRK            
L3C1D: BRK            
L3C1E: BRK            
L3C1F: BRK            
       ORA    ($03,X) 
       .byte $07 ;.SLO
L3C23: ASL    $1C1E   
       .byte $3C ;.NOP
L3C27: .byte $3C ;.NOP
       BRK            
L3C29: INC    $0606,X 
       ASL    COLUP0  
       ASL    WSYNC   
       BRK            
       BRK            
       BRK            
       BRK            
       RTI            

L3C35: .byte $C0,$02,$04,$08,$10,$20,$40,$00,$00,$00,$00,$00,$00,$03,$01,$01
       .byte $01,$01,$03,$06,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$03,$01,$01
       .byte $01,$01,$03,$06,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$3C,$66,$C3
       .byte $C3,$81,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$3C,$66,$C3
       .byte $C3,$81,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$3C,$66,$C3
       .byte $C3,$81,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
L3CE0: LDA    #$FF    
       STA    $AC     
L3CE4: LDA    #$3F    
       STA    $92     
       STA    $93     
       LDA    #$82    
       STA    $AF     
       LDA    #$8A    
       STA    $84     
       LDA    #$00    
       STA    $91     
       STA    AUDV1   
       RTS            

L3CF9: .byte $30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30
       .byte $30,$30,$30,$30,$30,$30,$30
L3D10: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$38,$18,$78,$88,$38,$78
       .byte $08,$1C,$3E,$3B,$39,$3A,$3C,$1A,$16,$2C,$4C,$8C,$1E,$81,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$38,$18,$78,$A8,$78,$08
       .byte $08,$1C,$3E,$3B,$39,$39,$3A,$1C,$1A,$94,$0C,$0C,$5E,$81,$00,$00
       .byte $00,$00,$08,$2E,$2A,$3E,$3E,$1C,$18,$00,$9C,$AA,$01,$19,$01,$1C
       .byte $00,$1E,$00,$3E,$60,$DC,$86,$11,$01,$11,$00,$30,$00,$00,$00,$00
       .byte $00,$00,$08,$4E,$4A,$7E,$7E,$3C,$38,$00,$08,$1C,$A2,$D9,$02,$1A
       .byte $00,$1C,$80,$DE,$70,$3C,$10,$0C,$00,$0C,$00,$1C,$00,$00,$00,$00
       .byte $00,$00,$00,$18,$3C,$18,$7E,$DB,$66,$3C,$00,$1C,$22,$19,$22,$1A
       .byte $20,$BE,$C0,$7E,$30,$1C,$00,$0C,$00,$0C,$00,$1C,$00,$00,$00,$00
       .byte $00,$00,$00,$18,$3C,$18,$7E,$DB,$66,$3C,$00,$1C,$22,$39,$42,$1A
       .byte $40,$9E,$C0,$7E,$30,$1C,$00,$8C,$00,$0C,$00,$1C,$00,$00,$00,$00
       .byte $00,$00,$00,$18,$3C,$18,$7E,$DB,$66,$3C,$00,$1C,$22,$39,$42,$1A
       .byte $40,$9E,$C0,$7E,$30,$1C,$00,$0C,$00,$0C,$80,$1C,$00,$00,$00,$00
L3DF0: .byte $00,$00,$0C,$00,$00,$12,$00,$00,$21,$00,$00,$00,$00,$00,$00,$00
L3E00: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $C3,$C3,$00,$00,$C3,$C3,$00,$00,$C3,$C3,$00,$00,$C3,$C3,$00,$00
       .byte $C3,$C3,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$C3,$C3
       .byte $00,$00,$C3,$C3,$00,$00,$C3,$C3,$00,$00,$C3,$C3,$00,$00,$C3,$C3
       .byte $00,$00,$00,$00,$00,$00,$30,$30
L3E48: .byte $00,$00,$00,$10,$14,$16,$9E,$BF,$BF,$FF
L3E52: .byte $95
L3E53: .byte $3E,$82,$3E,$8F,$3E,$95,$3E,$9C,$3E,$91,$00,$60,$3E,$04,$11,$0A
       .byte $20,$14,$0A,$20,$17,$0A,$20,$1A,$0A,$20,$17,$0A,$18,$1A,$0A,$08
       .byte $1F,$0A,$18,$1B,$0A,$08,$1A,$0A,$20,$1A,$05,$08,$1A,$05,$00,$0C
       .byte $03,$0F,$01,$01,$0F,$01,$01,$03,$0A,$00,$04,$00,$04,$1D,$0F,$01
       .byte $1C,$0F,$01,$1C,$00,$80,$00,$00,$00,$0D,$0E,$00,$10,$0E,$0A,$10
       .byte $13,$0A,$05,$14,$0A,$05,$13,$0A,$05,$12,$0A,$10,$13,$0A,$08,$13
       .byte $00,$10,$0F,$0A,$08,$0E,$00,$08,$0E,$0A,$08,$0E,$00,$D0,$0E,$00
       .byte $00,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30
       .byte $30,$30
L3ED5: LDA    #$30    
       STA    $98     
L3ED9: LDY    #$00    
       LDA    ($97),Y 
       CLC            
       ADC    $99     
       STA    $99     
       INC    $97     
       BNE    L3ED9   
       INC    $98     
       LDA    $98     
       CMP    #$40    
       BNE    L3ED9   
       LDA    L3F01   
       CMP    $99     
       BNE    L3EF6   
       RTS            

L3EF6: LDA    #$09    
       STA    AUDC0   
       STA    AUDF0   
       STA    AUDV0   
       JMP    L3EF6   
L3F01: .byte $00,$18,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$12
       .byte $12,$22,$62,$42,$62,$22,$22,$62,$22,$42,$22,$62,$62,$42,$62,$12
       .byte $62,$12,$62,$42,$62,$12,$62,$62,$62,$62,$42,$22,$12,$12,$22
L3F30: .byte $10,$14,$18,$1C,$20,$24,$28,$2C
L3F38: .byte $07,$09,$0B,$0D,$0F
L3F3D: .byte $01,$01,$02,$04,$08,$08
L3F43: .byte $04,$03,$02,$01,$81,$00
L3F49: .byte $00,$00,$20,$A0,$A0,$A0,$A0,$A0
L3F51: .byte $00,$00,$00,$00,$40,$50,$54,$55,$30,$30,$30,$30,$30,$30,$30,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$82,$82,$82,$F2,$9A,$9A,$F2,$00,$6E
       .byte $A2,$AE,$6A,$0A,$00,$00,$00,$94,$94,$F6,$95,$90,$F0,$60,$00,$23
       .byte $55,$55,$25,$00,$00,$00,$00,$53,$55,$55,$63,$01,$01,$01,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$3C,$66,$66,$66,$66,$66,$3C,$00,$7E
       .byte $18,$18,$18,$18,$18,$78,$38,$7E,$60,$60,$3C,$06,$46,$7C,$00,$3C
       .byte $46,$06,$0C,$06,$46,$3C,$00,$0C,$0C,$7E,$4C,$2C,$1C,$0C,$00,$7C
       .byte $46,$06,$7C,$60,$60,$7E,$00,$3C,$66,$66,$7C,$60,$62,$3C,$00,$18
       .byte $18,$08,$04,$02,$62,$7E,$00,$3C,$66,$66,$3C,$66,$66,$3C,$00,$3C
       .byte $46,$06,$3E,$66,$66,$3C,$00
L3FE8: .byte $98,$A0,$A8,$B0,$B8,$C0,$C8,$D0,$D8,$E0,$90,$1C,$00,$B3,$C8,$00
       .byte $00,$30,$00,$30,$00,$30,$00,$30
