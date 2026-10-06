; Disassembly of roms/Beat 'Em and Eat 'Em.bin
; Disassembled Tue Oct  6 15:21:07 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Beat 'Em and Eat 'Em.bin
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
INPT2   =  $3A
SWCHA   =  $0280
SWACNT  =  $0281
SWCHB   =  $0282
SWBCNT  =  $0283
INTIM   =  $0284
TIM64T  =  $0296
L3141   =   $3141

       ORG $3000

START:
       JSR    L3046   
L3003: JSR    L3ED5   
       LDX    #$40    
       STX    $82     
       STX    $86     
       STX    $87     
       LDY    #$01    
       STY    $A7     
       STY    $CD     
       STY    $88     
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
L3031: JSR    L3069   
       JSR    L3839   
       JSR    L353D   
       LDA    #$82    
       STA    VBLANK  
       STA    WSYNC   
       JSR    L3087   
       JMP    L3031   
L3046: SEI            
       CLD            
       LDX    #$FF    
       TXS            
       INX            
       LDA    #$00    
L304E: STA    VSYNC,X 
       INX            
       BNE    L304E   
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
L3069: LDA    #$82    
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
       LDA    #$27    
       STA    TIM64T  
       RTS            

L3087: LDA    INTIM   
       BNE    L3087   
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
       LDA    #$25    
       AND    $AC     
       STA    COLUPF  
       STA    WSYNC   
L30AA: LDA    INPT0   
       BMI    L30B0   
       DEC    $A0     
L30B0: TXA            
       LSR            
       LSR            
       TAY            
       LDA    L3E48,Y 
       STA    WSYNC   
       STA    PF0     
       LDA    L3E50,Y 
       STA    PF1     
       LDA    L3E58,Y 
       STA    PF2     
       INX            
       CPX    #$20    
       BNE    L30AA   
       LDA    INPT0   
       BMI    L30D0   
       DEC    $A0     
L30D0: LDA    #$FF    
       STA    WSYNC   
       STA    PF0     
       STA    PF1     
       STA    PF2     
       LDA    INPT0   
       BMI    L30E0   
       DEC    $A0     
L30E0: LDA    #$05    
       AND    $AC     
       STA    COLUBK  
       STA    WSYNC   
       LDA    INPT0   
       BMI    L30EE   
       DEC    $A0     
L30EE: LDA    #$00    
       STA    WSYNC   
       STA    PF0     
       STA    PF1     
       STA    PF2     
       LDA    INPT0   
       BMI    L30FE   
       DEC    $A0     
L30FE: STA    WSYNC   
       LDX    #$1E    
       LDY    $80     
L3104: LDA    INPT0   
       BMI    L310A   
       DEC    $A0     
L310A: LDA    #$00    
       CPX    #$0E    
       STA    WSYNC   
       BNE    L3114   
       STA    COLUBK  
L3114: LDA    L3C00,Y 
       STA    GRP0    
       LDA    L3D10,Y 
       STA    GRP1    
       LDA    L3B00,X 
       STA    COLUP0  
       LDA    L3B40,X 
       STA    COLUP1  
       INY            
       DEX            
       BPL    L3104   
       LDA    INPT0   
       BMI    L3132   
       DEC    $A0     
L3132: JMP    L313E   
L3135: JMP    L31C5   
L3138: STA    $BA     
       LDY    #$0A    
       BNE    L3183   
L313E: LDA    $C7     
       STA    REFP0   
       STA    REFP1   
       LDA    $84     
       STA    WSYNC   
       STA    COLUPF  
       LDX    #$45    
L314C: STX    $BF     
       CPX    $BC     
       BNE    L3135   
       LDA    #$00    
       STA    $BB     
L3156: LDY    $BB     
       LDA.wy $00B0,Y 
       BEQ    L3138   
       STA    HMM0    
       AND    #$07    
       TAY            
       LDA    INPT0   
       BMI    L3168   
       DEC    $A0     
L3168: LDA    L3E00,X 
       STA    WSYNC   
       STA    PF0     
       STA    PF1     
       STA    PF2     
       LDA    #$02    
       STA    $BA     
       NOP            
       NOP            
       NOP            
       NOP            
       DEX            
L317C: DEY            
       BPL    L317C   
       STA    RESM0   
       LDY    #$09    
L3183: LDA    INPT0   
       BMI    L3189   
       DEC    $A0     
L3189: STA    WSYNC   
       STA    HMOVE   
       LDA    $BA     
       STA    ENAM0   
       LDA    L3E00,X 
       STA    PF0     
       STA    PF1     
       STA    PF2     
       DEX            
       DEY            
       STA    HMCLR   
       CPY    #$05    
       BNE    L3183   
       INC    $BB     
       LDA    $BB     
       CMP    #$06    
       BEQ    L31DA   
L31AA: LDA    INPT0   
       BMI    L31B0   
       DEC    $A0     
L31B0: STA    WSYNC   
       LDA    #$00    
       STA    ENAM0   
       LDA    L3E00,X 
       STA    PF0     
       STA    PF1     
       STA    PF2     
       DEX            
       DEY            
       BNE    L31AA   
       BEQ    L3156   
L31C5: LDA    INPT0   
       BMI    L31CB   
       DEC    $A0     
L31CB: STA    WSYNC   
       LDA    L3E00,X 
       STA    PF0     
       STA    PF1     
       STA    PF2     
       DEX            
       JMP    L314C   
L31DA: LDA    INPT0   
       BMI    L31E0   
       DEC    $A0     
L31E0: STA    WSYNC   
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
       BMI    L31FF   
       DEC    $A0     
L31FF: STA    WSYNC   
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       STY    $BD     
       LDY    $DC     
L320E: DEY            
       BPL    L320E   
       STA    RESP1   
       LDA    INPT0   
       BMI    L3219   
       DEC    $A0     
L3219: STA    WSYNC   
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
L322A: DEY            
       BPL    L322A   
       STA    RESP0   
       LDA    INPT0   
       BMI    L3235   
       DEC    $A0     
L3235: STA    WSYNC   
       STA    HMOVE   
       LDY    $BD     
L323B: DEY            
       BEQ    L324A   
       DEX            
       LDA    INPT0   
       BMI    L3245   
       DEC    $A0     
L3245: STA    WSYNC   
       JMP    L323B   
L324A: STX    $BF     
       LDA    #$0A    
       STA    $BD     
       STA    HMCLR   
       LDA    INPT0   
       BMI    L3258   
       DEC    $A0     
L3258: LDX    $BB     
       LDA    $B0,X   
       BEQ    L32AA   
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
L3270: DEY            
       BPL    L3270   
       STA    RESBL   
L3275: LDA    INPT0   
       BMI    L327B   
       DEC    $A0     
L327B: STA    WSYNC   
       STA    HMOVE   
       LDY    $BD     
       LDA    $BA     
       STA    ENABL   
L3285: DEY            
       DEX            
       BEQ    L32B3   
       CPY    #$06    
       BEQ    L3298   
       LDA    INPT0   
       BMI    L3293   
       DEC    $A0     
L3293: STA    WSYNC   
       JMP    L3285   
L3298: LDA    INPT0   
       BMI    L329E   
       DEC    $A0     
L329E: LDA    #$00    
       STA    WSYNC   
       STA    ENABL   
       DEY            
       DEX            
       BEQ    L32B3   
       BNE    L3298   
L32AA: STA    $BA     
       LDX    $BF     
       STA    WSYNC   
       DEX            
       BNE    L3275   
L32B3: LDX    #$1C    
       STX    $BF     
       STY    $BD     
       LDY    $82     
L32BB: DEC    $BD     
       BEQ    L3309   
       LDA    $BD     
       CMP    #$05    
       BEQ    L32E5   
L32C5: LDA    L3C00,Y 
       STA    WSYNC   
       STA    GRP0    
       LDA    L3D10,Y 
       STA    GRP1    
       LDX    $BF     
       LDA    L3B20,X 
       STA    COLUP0  
       LDA    L3B20,Y 
       STA    COLUP1  
       INY            
       DEC    $BF     
       BNE    L32BB   
       JMP    L3387   
L32E5: LDX    #$00    
       LDA    L3C00,Y 
       STA    WSYNC   
       STX    ENABL   
       STA    GRP0    
       LDA    L3D10,Y 
       STA    GRP1    
       LDX    $BF     
       LDA    L3B20,X 
       STA    COLUP0  
       LDA    L3B20,Y 
       STA    COLUP1  
       INY            
       DEC    $BF     
       BNE    L3363   
       JMP    L3387   
L3309: INC    $BB     
       LDX    $BB     
       LDA    #$0A    
       STA    $BD     
       LDA    $B0,X   
       BEQ    L32C5   
       STA    $DC     
       AND    #$07    
       TAX            
       STA    WSYNC   
       LDA    L3C00,Y 
       STA    GRP0    
       LDA    L3D10,Y 
       STA    GRP1    
       LDA    L3B20,Y 
       STA    COLUP1  
       LDA    $DC     
L332D: DEX            
       BPL    L332D   
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
       LDA    L3B20,X 
       STA    COLUP0  
       LDA    L3B20,Y 
       STA    COLUP1  
       DEC    $BD     
       DEC    $BF     
       BEQ    L3387   
       DEC    $BD     
       DEC    $BF     
       BEQ    L3387   
       INY            
       JMP    L32C5   
L3363: LDX    $BF     
       LDA    L3B20,X 
       STA    WSYNC   
       STA    COLUP0  
       LDA    L3B20,Y 
       STA    COLUP1  
       LDA    L3C00,Y 
       STA    GRP0    
       LDA    L3D10,Y 
       STA    GRP1    
       INY            
       DEC    $BF     
       BEQ    L3387   
       DEC    $BD     
       BNE    L3363   
       JMP    L3309   
L3387: LDA    #$00    
       LDY    #$05    
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
L339E: DEY            
       BPL    L339E   
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
L33B4: LDA    $B9     
       BEQ    L33BB   
       LDA    L3DF0,Y 
L33BB: STA    WSYNC   
       STA    GRP0    
       INY            
       DEX            
       BPL    L33B4   
       LDA    #$00    
       STA    REFP0   
       LDA    #$82    
       STA    WSYNC   
       STA    HMCLR   
       STA    VBLANK  
       LDA    #$78    
       AND    $AC     
       STA    COLUBK  
       LDA    #$0F    
       AND    $AC     
       STA    COLUP0  
       STA    COLUP1  
       JSR    L345B   
       JSR    L34B1   
       LDA    #$80    
       STA    WSYNC   
       STA    VBLANK  
       JSR    L347A   
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
L3406: LDA    L3F49,Y 
       STA    WSYNC   
       STA    PF0     
       LDA    L3F51,Y 
       STA    PF1     
       DEX            
       BPL    L3406   
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
       JSR    L344F   
       LDA    #$80    
       STA    WSYNC   
       STA    VBLANK  
       JSR    L347A   
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
L3449: STA    WSYNC   
       DEX            
       BPL    L3449   
       RTS            

L344F: LDX    #$0A    
       SEC            
L3452: STA    $D0,X   
       SBC    #$08    
       DEX            
       DEX            
       BPL    L3452   
       RTS            

L345B: LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    VDELP0  
       STA    VDELP1  
       LDA    #$F0    
       STA    HMP0    
       LDY    #$07    
       STA    WSYNC   
L346D: DEY            
       BNE    L346D   
       NOP            
       STA    RESP0   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       RTS            

L347A: LDA    #$06    
       STA    $BF     
L347E: LDY    $BF     
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
       BPL    L347E   
       STA    WSYNC   
       LDY    #$00    
       STY    GRP0    
       STY    GRP1    
       STY    GRP0    
       RTS            

L34B1: LDA    #$00    
       TAX            
       STA    $DC     
L34B6: STX    $DD     
       LDA.wy $00E0,Y 
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       BEQ    L34C4   
       INC    $DC     
L34C4: LDA    $DC     
       BNE    L34CA   
       LDX    #$0A    
L34CA: LDA    L3FE8,X 
       LDX    $DD     
       STA    $D0,X   
       INX            
       INX            
       STX    $DD     
       LDA.wy $00E0,Y 
       AND    #$0F    
       TAX            
       BEQ    L34DF   
       INC    $DC     
L34DF: LDA    $DC     
       BNE    L34E5   
       LDX    #$0A    
L34E5: LDA    L3FE8,X 
       LDX    $DD     
       STA    $D0,X   
       INX            
       INX            
       INY            
       CPY    #$03    
       BCC    L34B6   
       LDA    $DC     
       BNE    L34FB   
       LDA    #$98    
       STA    $DA     
L34FB: LDA    #$3F    
       LDX    #$0A    
L34FF: STA    $D1,X   
       DEX            
       DEX            
       BPL    L34FF   
       RTS            

L3506: LDA    #$00    
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
       JSR    L3599   
       LDA    $CD     
       BEQ    L3528   
       LDA    #$06    
       JSR    L3ACE   
L3528: RTS            

L3529: JSR    L35F8   
       CPX    #$00    
       BEQ    L353C   
       LDA    #$00    
       STA    $B0,X   
       JSR    L3754   
       LDA    #$04    
       JSR    L3ACE   
L353C: RTS            

L353D: BIT    $C6     
       BMI    L3549   
       LDA    $C0     
       BNE    L3549   
       LDA    #$06    
       STA    $C5     
L3549: LDX    $C5     
       LDA    L3E60,X 
       STA    $C3     
       LDA    L3E61,X 
       STA    $C4     
       LDA    $C0     
       BNE    L3564   
       BIT    $C2     
       BMI    L3598   
       SEC            
       ROR    $C2     
       STA    $C1     
       BCC    L3573   
L3564: DEC    $C0     
       BNE    L3598   
       LDA    #$04    
       STA    AUDV0   
       LSR            
       STA    AUDV0   
       LDA    #$00    
       STA    AUDV0   
L3573: LDX    #$00    
       LDY    $C1     
       BNE    L357E   
       LDA    ($C3),Y 
       STA    AUDC0   
       INY            
L357E: LDA    ($C3),Y 
       STA    AUDF0,X 
       INY            
       INX            
       INX            
       CPX    #$04    
       BNE    L357E   
       LDA    ($C3),Y 
       INY            
       STY    $C1     
       STA    $C0     
       CMP    #$00    
       BNE    L3598   
       STA    $C6     
       STA    $C2     
L3598: RTS            

L3599: LDA    $81     
       STA    WSYNC   
       STA    HMP0    
       STA    HMP1    
       AND    #$07    
       TAY            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
L35AA: DEY            
       BPL    L35AA   
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
       NOP            
       NOP            
       NOP            
L35C0: DEY            
       BPL    L35C0   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
L35C9: LDY    #$FF    
       SEC            
L35CC: INY            
       SBC    #$0F    
       BCS    L35CC   
       STY    $DC     
       EOR    #$FF    
       ADC    #$09    
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    $DC     
       RTS            

L35DE: .byte $A9,$86,$60
L35E1: STA    $DC     
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
L35F1: CLC            
       ADC    #$0F    
       DEY            
       BPL    L35F1   
       RTS            

L35F8: LDA    $BC     
       CMP    #$40    
       BCC    L363D   
L35FE: LDX    #$07    
       JSR    L3614   
       CPX    #$00    
       BNE    L3613   
       LDA    SWCHB   
       AND    #$40    
       BEQ    L3613   
       LDX    #$08    
       JSR    L3614   
L3613: RTS            

L3614: LDA    $B0,X   
       BEQ    L363A   
       JSR    L35E1   
       SEC            
       SBC    $A1     
       BCC    L363A   
       TAY            
       DEY            
       DEY            
       BMI    L362A   
       CPY    #$07    
       BCS    L362A   
L3629: RTS            

L362A: LDA    $85     
       BNE    L363A   
       TYA            
       SEC            
       SBC    #$0F    
       BCC    L363A   
       CMP    #$09    
       BCS    L363A   
       BCC    L3629   
L363A: LDX    #$00    
       RTS            

L363D: LDX    #$06    
       JSR    L3614   
       CPX    #$00    
       BNE    L3613   
       BEQ    L35FE   
L3648: LDA    $A0     
       ADC    $DC     
       JSR    L3652   
       JMP    L367B   
L3652: LDA    $A0     
       CMP    #$66    
       BCC    L365C   
       LDA    #$66    
       STA    $A0     
L365C: RTS            

L365D: LDY    #$05    
       JSR    L3652   
       CMP    #$03    
       BCC    L3679   
       SEC            
       SBC    $A1     
       BPL    L366F   
       LDY    #$FB    
       EOR    #$FF    
L366F: STY    $DC     
       CMP    #$03    
       BCC    L3691   
       CMP    #$06    
       BCS    L3648   
L3679: LDA    $A0     
L367B: CMP    $A1     
       STA    $A1     
       BCS    L3685   
       LDA    #$00    
       BEQ    L3689   
L3685: BEQ    L3691   
       LDA    #$08    
L3689: STA    $C7     
       LDA    $82     
       EOR    #$20    
       STA    $82     
L3691: LDA    $A1     
       RTS            

L3694: LDX    #$09    
L3696: LDA    $B0,X   
       STA    $B1,X   
       DEX            
       BPL    L3696   
       LDA    #$00    
       STA    $B0     
       CPY    #$00    
       BNE    L36A8   
       JSR    L372E   
L36A8: RTS            

L36A9: LDX    $CC     
       BEQ    L36B5   
       DEX            
       LDA    #$01    
L36B0: STX    $CC     
       JMP    L36C4   
L36B5: EOR    #$80    
       TAX            
       LDA    #$00    
       BEQ    L36B0   
L36BC: DEC    $A4     
       BPL    L36D3   
       LDA    $CB     
       BMI    L36A9   
L36C4: STA    $A4     
       LDX    $BC     
       CPX    #$3E    
       BCS    L36D4   
       JSR    L3694   
       LDX    #$45    
L36D1: STX    $BC     
L36D3: RTS            

L36D4: DEX            
       DEX            
       BNE    L36D1   
L36D8: LDA    $86     
       CMP    $87     
       BEQ    L36F1   
       CLC            
       ADC    $88     
       STA    $86     
       CMP    $87     
       BNE    L36F0   
       LDA    $CB     
       ASL            
       ASL            
       ASL            
       ADC    #$05    
       STA    $A3     
L36F0: RTS            

L36F1: DEC    $A3     
       BPL    L36F0   
       JSR    L36F9   
       RTS            

L36F9: LDX    $CA     
       LDY    $89     
       LDA    ($8A),Y 
       STA    $87     
       CMP    $86     
       BCS    L370F   
       TXA            
       EOR    #$FF    
       STA    $88     
       INC    $88     
       JMP    L3711   
L370F: STX    $88     
L3711: DEC    $89     
       BPL    L372D   
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
L372D: RTS            

L372E: LDX    $AA     
       CPX    #$30    
       BCS    L3738   
       DEC    $8C     
       BPL    L3753   
L3738: DEC    $C8     
       BMI    L3753   
       LDA    $DF     
       AND    #$3C    
       LSR            
       LSR            
       LSR            
       CPX    #$06    
       BEQ    L374D   
       LSR            
       CPX    #$07    
       BEQ    L374D   
       LSR            
L374D: STA    $8C     
       LDA    $81     
       STA    $B0     
L3753: RTS            

L3754: LDA    $CD     
       BNE    L3767   
       SED            
       CLC            
       LDA    $E2     
       ADC    #$01    
       STA    $E2     
       LDA    $E1     
       ADC    #$00    
       STA    $E1     
       CLD            
L3767: DEC    $C9     
       INC    $90     
       LDA    $90     
       CMP    #$45    
       BCC    L379F   
       LDA    #$00    
       STA    $90     
       LDX    $A5     
       INX            
       CPX    #$08    
       BNE    L377E   
       LDX    #$07    
L377E: STX    $A5     
       STX    $95     
       STX    $AE     
       LDA    #$FF    
       STA    $8D     
       LDX    #$09    
       LDA    #$00    
L378C: STA    $B0,X   
       DEX            
       BPL    L378C   
       STX    $C8     
       LDA    #$04    
       LDX    $A1     
       CPX    #$30    
       BCC    L379D   
       LDA    #$FC    
L379D: STA    $E3     
L379F: RTS            

L37A0: LDX    #$00    
       STX    $E1     
L37A4: STX    $A9     
       STX    $A8     
       STX    $AA     
       STX    $90     
       STX    $AE     
       STX    $80     
       STA    $A7     
       RTS            

L37B3: JMP    L38CA   
L37B6: LDA    SWCHA   
       BMI    L37BF   
       LDA    #$04    
       STA    $A5     
L37BF: JSR    L3994   
       BPL    L37B3   
       LDA    #$00    
       STA    $AD     
       STA    AUDV1   
       JSR    L37A0   
       STX    $E2     
       JMP    L3896   
L37D2: LDA    #$05    
       STA    $95     
       LDX    $85     
       INX            
       STX    $E2     
       LDA    #$40    
       STA    $82     
       LDA    #$04    
       STA    $A5     
       JSR    L37A0   
       STX    $AD     
       JSR    L3CE0   
       LDA    #$00    
       STA    $CD     
       LDX    #$09    
L37F1: STA    $B0,X   
       DEX            
       BPL    L37F1   
       STX    $C8     
       JMP    L37B6   
L37FB: DEC    $E4     
       BPL    L3809   
       LDA    #$1F    
       STA    $E4     
       LDA    $85     
       EOR    #$01    
       STA    $85     
L3809: LDX    $85     
       INX            
       STX    $E2     
       LDA    #$00    
       STA    $E1     
       STA    AUDV1   
       JMP    L3AEC   
L3817: JMP    L39DF   
L381A: JMP    L3A21   
L381D: TXA            
       LDX    #$05    
       SEC            
       SBC    #$10    
       AND    #$7F    
       JMP    L3899   
L3828: LDA    $AD     
       BNE    L3844   
       LDA    $DF     
       AND    #$03    
       BNE    L3844   
       STA    $80     
       BEQ    L3844   
L3836: JMP    L3A89   
L3839: LDA    $C8     
       BMI    L3828   
       LDA    $A8     
       BNE    L3828   
       JSR    L3CF7   
L3844: LDA    SWCHB   
       AND    #$03    
       CMP    #$02    
       BEQ    L37D2   
       CMP    #$01    
       BEQ    L37FB   
       LDA    #$00    
       STA    $E4     
       LDA    $CD     
       BNE    L3817   
       LDA    $AE     
       BNE    L381A   
L385D: LDA    $A9     
       BNE    L3836   
       LDA    $A8     
       BNE    L38E4   
       LDA    $A7     
       BEQ    L38AB   
       LDA    $AD     
       BEQ    L3877   
       LDA    $AA     
       BNE    L3877   
       LDA    $CD     
       BNE    L3877   
       STA    $E2     
L3877: JSR    L3994   
       BPL    L38CA   
       LDA    #$00    
       STA    $AD     
       STA    AUDV1   
       STA    $80     
       STA    $A7     
       LDX    $AA     
       CPX    #$05    
       BCC    L3896   
       CPX    #$14    
       BCS    L381D   
       TXA            
       LDX    #$04    
       JMP    L3899   
L3896: LDA    L3F38,X 
L3899: STA    $C8     
       STA    $C9     
       LDA    L3F43,X 
       STA    $CB     
       LDA    L3F3D,X 
       STA    $CA     
       LDA    #$40    
       STA    $82     
L38AB: LDA    $B9     
       BNE    L38E2   
       LDA    $C8     
       BPL    L38BF   
       LDX    #$09    
L38B5: LDA    $B0,X   
       BNE    L38BF   
       DEX            
       BPL    L38B5   
       JMP    L395A   
L38BF: JSR    L36D8   
       LDY    #$00    
       JSR    L36BC   
       JSR    L3529   
L38CA: LDA    $86     
       JSR    L35C9   
       STA    $81     
       JSR    L365D   
       JSR    L35C9   
       STA    $83     
       STA    HMCLR   
       LDA    #$8A    
       STA    $A0     
       JMP    L3506   
L38E2: STA    $A8     
L38E4: LDA    $A7     
       BNE    L3942   
       STA    AUDV0   
       LDY    #$01    
       JSR    L36BC   
       LDX    #$09    
       LDA    $B9     
       BEQ    L38FA   
       LDY    #$02    
       JSR    L3A7C   
L38FA: LDA    $B0,X   
       BNE    L3934   
       DEX            
       BPL    L38FA   
       LDX    $A5     
       CPX    #$01    
       BEQ    L393B   
       LDA    $92     
       CMP    #$1F    
       BCS    L393E   
       LDA    #$0A    
       JSR    L3ACE   
       LDA    #$01    
       STA    $94     
       LDA    $91     
       EOR    #$06    
       STA    $91     
       BNE    L3934   
       DEC    $92     
       LDA    $92     
       CMP    #$07    
       BNE    L3934   
       STX    $A7     
       DEC    $A5     
       LDA    #$00    
       STA    $94     
       STA    $AD     
       LDA    #$3F    
       STA    $92     
L3934: LDA    $A1     
       STA    $A0     
       JMP    L38CA   
L393B: JMP    L3A73   
L393E: DEC    $92     
       BNE    L3934   
L3942: JSR    L3994   
       BPL    L3985   
       LDA    $C9     
       STA    $C8     
       LDA    #$00    
       STA    AUDV1   
       STA    $AD     
       STA    $80     
       STA    $A7     
       STA    $A8     
       JMP    L38AB   
L395A: LDA    $DF     
       AND    #$0F    
       BNE    L3988   
       CLC            
       LDA    $82     
       ADC    #$20    
       STA    $82     
       CMP    #$D0    
       BCC    L3988   
       LDA    #$80    
       STA    $82     
       INC    $8D     
       LDA    $8D     
       CMP    #$02    
       BCC    L3988   
       LDA    #$40    
       STA    $82     
       INC    $A7     
       INC    $AA     
       LDA    #$00    
       STA    $8D     
       STA    $AD     
L3985: JMP    L38CA   
L3988: LDA    $A1     
       STA    $A0     
       LDY    #$08    
       JSR    L3A7C   
       JMP    L38CA   
L3994: LDA    $C5     
       CMP    #$10    
       BEQ    L39CE   
       LDA    $AD     
       BNE    L39B5   
       LDA    $CD     
       BNE    L39AB   
       LDA    SWCHA   
       BMI    L39CE   
       LDA    #$FF    
       STA    $AC     
L39AB: LDA    #$7F    
       STA    $AD     
       STA    $8D     
       LDA    #$04    
       STA    AUDC1   
L39B5: LDA    $CD     
       BNE    L39BC   
       JSR    L3ADA   
L39BC: JSR    L3CF7   
       LDA    $CD     
       BNE    L39C7   
       LDA    $A5     
       STA    $95     
L39C7: DEC    $8D     
       LDA    $8D     
       STA    $8C     
       RTS            

L39CE: LDA    #$00    
       RTS            

L39D1: LDA    SWCHA   
       BPL    L39EC   
       LDA    #$00    
       STA    $CD     
       STA    $E5     
       JMP    L37D2   
L39DF: LDA    $E5     
       BNE    L39D1   
       LDA    SWCHA   
       BMI    L39EC   
       LDA    #$01    
       STA    $E5     
L39EC: LDA    #$00    
       STA    $90     
       STA    $95     
       LDA    #$04    
       STA    $A5     
       LDA    $DF     
       AND    #$0F    
       BNE    L3A0E   
       CLC            
       LDA    $A1     
       ADC    $CE     
       STA    $A0     
       CMP    #$03    
       BCC    L3A15   
       CMP    #$66    
       BCS    L3A1B   
L3A0B: JMP    L385D   
L3A0E: LDA    $A1     
       STA    $A0     
       JMP    L385D   
L3A15: LDA    #$04    
       STA    $CE     
       BNE    L3A0B   
L3A1B: LDA    #$FC    
       STA    $CE     
       BNE    L3A0B   
L3A21: DEC    $8D     
       BEQ    L3A5E   
       LDX    $A1     
       LDA    $8D     
       CMP    #$E8    
       BCS    L3A50   
       LDA    $DF     
       AND    #$1F    
       BNE    L3A54   
       JSR    L3AB1   
       LDY    #$0C    
       JSR    L3A7C   
       LDA    #$80    
       STA    $82     
       LDA    $C7     
       EOR    #$08    
       STA    $C7     
       TXA            
       CLC            
       ADC    $E3     
       STA    $A1     
L3A4B: STA    $A0     
       JMP    L38CA   
L3A50: TXA            
       JMP    L3A4B   
L3A54: AND    #$0F    
       BNE    L3A5C   
       LDA    #$A0    
       STA    $82     
L3A5C: BNE    L3A50   
L3A5E: LDX    #$00    
       STX    $AE     
       STX    $A8     
       STX    $AD     
       JSR    L3CE0   
       INC    $AA     
       LDA    #$40    
       STA    $A7     
       STA    $82     
       BNE    L3A79   
L3A73: LDA    #$FF    
       STA    $8D     
       STA    $A9     
L3A79: JMP    L38CA   
L3A7C: STY    $DC     
       LDA    $C5     
       CMP    $DC     
       BEQ    L3A88   
       TYA            
       JSR    L3ACE   
L3A88: RTS            

L3A89: DEC    $8D     
       LDX    $8D     
       BEQ    L3ACB   
       CPX    #$10    
       BCC    L3AC2   
       LDA    #$0A    
       JSR    L3ACE   
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
       JSR    L3AB1   
L3AAE: JMP    L38CA   
L3AB1: AND    #$0F    
       BNE    L3AC1   
       LDA    $AF     
       EOR    #$0D    
       STA    $AF     
       LDA    $84     
       EOR    #$08    
       STA    $84     
L3AC1: RTS            

L3AC2: JSR    L3CE0   
       LDA    #$00    
       STA    $93     
       BEQ    L3AAE   
L3ACB: JMP    L3AE8   
L3ACE: STA    $C5     
       LDY    #$FF    
       STY    $C6     
       INY            
       STY    $C2     
       STY    $C0     
       RTS            

L3ADA: LDA    $8D     
       BEQ    L3AE5   
       LSR            
       STA    AUDV1   
       LSR            
       STA    AUDF1   
       RTS            

L3AE5: STA    AUDV1   
       RTS            

L3AE8: LDA    #$F5    
       STA    $AC     
L3AEC: JSR    L3CE4   
       TAX            
       JSR    L37A4   
       LDA    #$F5    
       STA    $CD     
       BNE    L3AAE   
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
L3B00: .byte $1F ;.SLO
       .byte $1F ;.SLO
       .byte $1F ;.SLO
       .byte $1F ;.SLO
       .byte $1F ;.SLO
       .byte $1F ;.SLO
       .byte $1F ;.SLO
       .byte $1F ;.SLO
       .byte $1F ;.SLO
       .byte $1F ;.SLO
       .byte $1F ;.SLO
       .byte $1F ;.SLO
       .byte $1F ;.SLO
       .byte $1F ;.SLO
       .byte $1F ;.SLO
       .byte $1F ;.SLO
       .byte $1F ;.SLO
       .byte $1F ;.SLO
       .byte $1F ;.SLO
       .byte $1F ;.SLO
       .byte $1F ;.SLO
       .byte $1F ;.SLO
       .byte $1F ;.SLO
       .byte $1F ;.SLO
       .byte $1F ;.SLO
       .byte $1F ;.SLO
       .byte $1F ;.SLO
       .byte $1F ;.SLO
       .byte $1F ;.SLO
       .byte $1F ;.SLO
       .byte $1F ;.SLO
       .byte $1F ;.SLO
L3B20: .byte $1F ;.SLO
       .byte $1F ;.SLO
       .byte $1F ;.SLO
       .byte $1F ;.SLO
       .byte $1F ;.SLO
       .byte $1F ;.SLO
       .byte $1F ;.SLO
       .byte $1F ;.SLO
       .byte $1F ;.SLO
       .byte $1F ;.SLO
       .byte $1F ;.SLO
       .byte $1F ;.SLO
       .byte $1F ;.SLO
       AND    VDELP0  
       AND    VDELP0  
       .byte $1F ;.SLO
       .byte $1F ;.SLO
       .byte $1F ;.SLO
       .byte $1F ;.SLO
       .byte $1F ;.SLO
       .byte $1F ;.SLO
       .byte $1F ;.SLO
       .byte $1F ;.SLO
       .byte $1F ;.SLO
       .byte $1F ;.SLO
       .byte $1F ;.SLO
       .byte $1F ;.SLO
       .byte $1F ;.SLO
       .byte $1F ;.SLO
       .byte $1F ;.SLO
L3B40: .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       AND    VDELP0  
       AND    INPT2   
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       AND    VDELP0  
       AND    INPT2   
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       AND    VDELP0  
       AND    INPT2   
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
       .byte $3A ;.NOP
L3C00: BRK            
       .byte $3C ;.NOP
       ROR    $C3     
       .byte $C3 ;.DCP
       STA    ($00,X) 
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
       .byte $3C ;.NOP
       ROR    $C3     
       .byte $C3 ;.DCP
       STA    ($00,X) 
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
       .byte $03 ;.SLO
       ORA    ($01,X) 
       ORA    ($03,X) 
       .byte $07 ;.SLO
       ASL    $1E1E   
       .byte $1C ;.NOP
       .byte $1C ;.NOP
       BRK            
       .byte $80 ;.NOP
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BPL    L3C55   
L3C55: BRK            
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
       .byte $03 ;.SLO
       ORA    ($01,X) 
       ORA    ($03,X) 
       .byte $07 ;.SLO
       ASL    $1E1E   
       .byte $1C ;.NOP
       .byte $1C ;.NOP
       BRK            
       .byte $80 ;.NOP
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BPL    L3C75   
L3C75: BRK            
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
       ROL    $4141,X 
       EOR    ($41,X) 
       EOR    ($41,X) 
       EOR    ($41,X) 
       BRK            
       BRK            
       BRK            
       .byte $80 ;.NOP
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BPL    L3C95   
L3C95: BRK            
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
       ROL    $4141,X 
       EOR    ($41,X) 
       EOR    ($41,X) 
       EOR    ($41,X) 
       BRK            
       BRK            
       BRK            
       .byte $80 ;.NOP
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BPL    L3CB5   
L3CB5: BRK            
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
       ROL    $4141,X 
       EOR    ($41,X) 
       EOR    ($41,X) 
       EOR    ($41,X) 
       BRK            
       BRK            
       BRK            
       .byte $80 ;.NOP
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BPL    L3CD5   
L3CD5: BRK            
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
L3CE0: LDA    #$FF    
       STA    $AC     
L3CE4: LDA    #$3F    
       STA    $92     
       STA    $93     
       LDA    #$8D    
       STA    $AF     
       LDA    #$07    
       STA    $84     
       LDA    #$00    
       STA    $91     
       RTS            

L3CF7: LDA    $DF     
       AND    #$03    
       BNE    L3D03   
       LDA    $80     
       EOR    #$20    
       STA    $80     
L3D03: RTS            

L3D04: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
L3D10: .byte $00,$00,$18,$3C,$18,$7E,$DB,$66,$3C,$7E,$FF,$BD,$BD,$BD,$BD,$BD
       .byte $99,$99,$FF,$DB,$7E,$18,$18,$18,$18,$3C,$3C,$18,$00,$00,$00,$00
       .byte $00,$00,$18,$3C,$18,$7E,$E7,$5A,$3C,$7E,$FF,$BD,$BD,$BD,$BD,$BD
       .byte $99,$99,$99,$99,$FF,$5A,$7E,$18,$18,$18,$18,$3C,$3C,$18,$00,$00
       .byte $00,$08,$4E,$4A,$7E,$7C,$38,$30,$00,$00,$00,$20,$7E,$7B,$79,$1A
       .byte $1C,$1E,$1E,$0E,$0C,$1C,$36,$61,$41,$41,$40,$C0,$00,$00,$00,$00
       .byte $00,$08,$4E,$4A,$7E,$7C,$38,$30,$00,$00,$00,$20,$7E,$7B,$79,$1A
       .byte $1C,$1E,$1E,$0E,$0C,$04,$04,$04,$04,$04,$04,$0C,$00,$00,$00,$00
       .byte $00,$00,$3E,$2A,$2E,$2E,$22,$3E,$3E,$00,$00,$3C,$7E,$7B,$79,$1A
       .byte $1C,$1E,$1E,$0E,$0C,$1C,$36,$61,$41,$41,$40,$C0,$00,$00,$00,$00
       .byte $00,$00,$3E,$2A,$36,$36,$22,$3E,$3E,$00,$00,$3C,$7E,$7B,$79,$1A
       .byte $1C,$1E,$1E,$0E,$0C,$1C,$36,$61,$41,$41,$40,$C0,$00,$00,$00,$00
       .byte $00,$00,$3E,$2A,$3A,$3A,$22,$3E,$3E,$00,$00,$3C,$7E,$7B,$79,$1A
       .byte $1C,$1E,$1E,$0E,$0C,$1C,$36,$61,$41,$41,$40,$C0,$00,$00,$00,$00
L3DF0: .byte $00,$00,$0C,$00,$00,$12,$00,$00,$21,$00,$00,$00,$00,$00,$00,$00
L3E00: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$C3,$C3,$C3,$C3,$C3,$C3,$C3,$C3,$C3
L3E1E: .byte $C3,$C3,$C3,$C3,$C3,$C3,$C3,$C3,$C3,$C3,$C3,$00,$00,$00,$C3,$C3
       .byte $C3,$C3,$C3,$C3,$C3,$C3,$C3,$C3,$C3,$C3,$C3,$C3,$C3,$C3,$C3,$C3
       .byte $C3,$C3,$00,$00,$00,$00,$00,$00,$00,$00
L3E48: .byte $00,$00,$00,$00,$80,$80,$C0,$D0
L3E50: .byte $00,$00,$11,$39,$B9,$B9,$B9,$BB
L3E58: .byte $00,$00,$80,$80,$91,$91,$93,$BB
L3E60: .byte $A6
L3E61: .byte $3E,$93,$3E,$A0,$3E,$A6,$3E,$AD,$3E,$91,$00,$6E,$3E,$04,$1B,$0A
       .byte $13,$14,$0A,$26,$14,$05,$01,$14,$0A,$13,$12,$0A,$26,$12,$05,$01
       .byte $12,$0A,$13,$10,$0A,$13,$0D,$0A,$13,$10,$0A,$13,$14,$0A,$26,$14
       .byte $05,$00,$0C,$03,$0F,$01,$01,$0F,$01,$01,$03,$0A,$00,$04,$00,$04
       .byte $1D,$0F,$01,$1C,$0F,$01,$1C,$00,$80,$00,$00,$00,$0D,$0E,$00,$2E
       .byte $0E,$0A,$10,$13,$0A,$05,$14,$0A,$05,$13,$0A,$05,$12,$0A,$10,$13
       .byte $0A,$08,$13,$00,$10,$0F,$0A,$08,$0E,$00,$08,$0E,$0A,$08,$0E,$00
       .byte $D0,$0E,$00,$00
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
L3F01: .byte $00,$F0,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$12
       .byte $12,$22,$62,$42,$62,$22,$22,$62,$22,$42,$22,$62,$62,$42,$62,$12
       .byte $62,$12,$62,$42,$62,$12,$62,$62,$62,$62,$42,$22,$12,$12,$22
L3F30: .byte $10,$14,$18,$1C,$20,$24,$28,$2C
L3F38: .byte $07,$09,$0B,$0D,$0F
L3F3D: .byte $01,$01,$02,$04,$08,$08
L3F43: .byte $04,$03,$02,$01,$81,$00
L3F49: .byte $00,$00,$20,$A0,$A0,$A0,$A0,$A0
L3F51: .byte $00,$00,$00,$00,$40,$50,$54,$55,$00,$00,$00,$00,$00,$00,$00,$89
       .byte $A8,$A8,$D8,$D9,$8A,$8A,$00,$C7,$88,$80,$87,$48,$28,$27,$00,$1C
       .byte $88,$88,$08,$08,$AA,$3E,$00,$71,$22,$22,$22,$22,$22,$71,$00,$A7
       .byte $48,$A8,$28,$28,$28,$C8,$00,$3E,$A0,$A0,$BC,$A0,$A0,$BE,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$3C,$66,$66,$66,$66,$66,$3C,$00,$7E
       .byte $18,$18,$18,$18,$18,$78,$38,$7E,$60,$60,$3C,$06,$46,$7C,$00,$3C
       .byte $46,$06,$0C,$06,$46,$3C,$00,$0C,$0C,$7E,$4C,$2C,$1C,$0C,$00,$7C
       .byte $46,$06,$7C,$60,$60,$7E,$00,$3C,$66,$66,$7C,$60,$62,$3C,$00,$18
       .byte $18,$08,$04,$02,$62,$7E,$00,$3C,$66,$66,$3C,$66,$66,$3C,$00,$3C
       .byte $46,$06,$3E,$66,$66,$3C,$00
L3FE8: .byte $98,$A0,$A8,$B0,$B8,$C0,$C8,$D0,$D8,$E0,$90,$00,$00,$00,$00,$00
       .byte $00,$30,$00,$30,$00,$30,$00,$30
