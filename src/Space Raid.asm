; Disassembly of roms/Space Raid.bin
; Disassembled Tue Oct  6 15:22:44 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Space Raid.bin
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
ENAM1   =  $1E
ENABL   =  $1F
HMP0    =  $20
HMP1    =  $21
HMBL    =  $24
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296

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
       JSR    LFF27   
       LDA    $82     
       BNE    LF01B   
       LDX    #$01    
       STX    $82     
       DEX            
       JMP    LF786   
LF01B: LDX    #$04    
LF01D: LDA    LFCEF,X 
       EOR    $86     
       AND    $87     
       STA    $88,X   
       DEX            
       BPL    LF01D   
       INX            
       STX    CTRLPF  
       LDA    $88     
       LDX    $DA     
       BNE    LF041   
       LDX    $D7     
       LDA    $9A,X   
       LDX    $EB     
       BEQ    LF041   
       LDA    LFD9A,X 
       EOR    $86     
       AND    $87     
LF041: STA    $D4     
       JSR    LFB8B   
       LDA    $DE     
       LSR            
       BCC    LF081   
       LDY    #$05    
LF04D: STY    $A7     
       LDA    #$00    
       CPY    $F7     
       BCC    LF058   
       LDA.wy $00B1,Y 
LF058: LSR            
       LSR            
       LSR            
       LSR            
       STA.wy $00C6,Y 
       BEQ    LF06C   
       TAX            
       LDA.wy $00F1,Y 
       CLC            
       ADC    LFD2A,X 
       JSR    LFBDA   
LF06C: JSR    LFF81   
       STA    $A2     
       TYA            
       SEC            
       SBC    #$03    
       ORA    $A2     
       LDY    $A7     
       STA.wy $00BE,Y 
       DEY            
       BPL    LF04D   
       BMI    LF0FA   
LF081: LDA    $F0     
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       LDA    $B1     
       AND    LFD16,X 
       STA    $C6     
       LDA    $B2     
       AND    LFD20,X 
       STA    $C7     
       LDA    $B3     
       AND    LFD16,X 
       STA    $C8     
       LDY    #$02    
LF09F: LDX    #$01    
LF0A1: STX    $A6     
       LDA.wy $00C6,Y 
       CPX    #$01    
       BEQ    LF0AE   
       LSR            
       LSR            
       LSR            
       LSR            
LF0AE: AND    #$07    
       BEQ    LF0C7   
       TAX            
       LDA    $F1     
       CLC            
       ADC    LFD2A,X 
       JSR    LFBDA   
       LDX    $A6     
       ADC    LFD37,X 
       ADC    LFD39,Y 
       JSR    LFBDA   
LF0C7: STA.wy $00CC,Y 
       LDX    $A6     
       BEQ    LF0D1   
       STA.wy $00D0,Y 
LF0D1: DEX            
       BPL    LF0A1   
       DEY            
       BPL    LF09F   
       LDX    #$02    
LF0D9: LDA    $CC,X   
       JSR    LFF81   
       STA    $A2     
       TYA            
       SEC            
       SBC    #$03    
       ORA    $A2     
       STA    $BE,X   
       LDA    $D0,X   
       JSR    LFF81   
       STA    $A2     
       TYA            
       SEC            
       SBC    #$03    
       ORA    $A2     
       STA    $C2,X   
       DEX            
       BPL    LF0D9   
LF0FA: LDA    $E6     
       BEQ    LF101   
       CLC            
       ADC    #$2E    
LF101: JSR    LFF81   
       STA    $AA     
       DEY            
       DEY            
       DEY            
       TYA            
       ORA    $AA     
       STA    $AA     
       LDA    $D6     
       JSR    LFF81   
       STA    $AE     
       DEY            
       DEY            
       DEY            
       TYA            
       ORA    $AE     
       STA    $AE     
       LDX    #$02    
       LDA    $EE     
       JSR    LFFA0   
       INX            
       LDA    $EF     
       JSR    LFFA0   
       INX            
       LDA    $BD     
       JSR    LFF79   
       JSR    LFF9F   
       JSR    LFF9F   
       STA    HMCLR   
LF138: LDA    INTIM   
       BNE    LF138   
       STA    WSYNC   
       STA    HMOVE   
       STA    VBLANK  
       STA    NUSIZ1  
       STA    WSYNC   
       STA    HMOVE   
       LDA    $88     
       STA    COLUBK  
       LDA    $8A     
       STA    COLUPF  
       LDA    $DE     
       LSR            
       BCC    LF159   
       JMP    LF2A5   
LF159: LDX    #$8F    
LF15B: STA    WSYNC   
       STA    HMOVE   
       DEX            
       TXA            
       SEC            
       SBC    $F9     
       AND    #$F8    
       BNE    LF16A   
       LDA    #$02    
LF16A: STA    ENABL   
       CPX    $A1     
       BCS    LF15B   
       LDY    #$02    
LF172: STY    $CF     
       LDA    #$00    
       STA    $A2     
       STA    $A3     
       STX    $A5     
       STA    WSYNC   
       STA    HMOVE   
       LDA.wy $00BE,Y 
       AND    #$0F    
       TAX            
       BNE    LF193   
       LDA    #$60    
       STA    $A2     
       NOP            
       NOP            
       STA    RESP0   
       JMP    LF199   
LF193: DEX            
       BPL    LF193   
       NOP            
       STA    RESP0   
LF199: STA    WSYNC   
       STA    HMOVE   
       LDA.wy $00C2,Y 
       AND    #$0F    
       TAX            
       BNE    LF1B0   
       LDA    #$60    
       STA    $A3     
       NOP            
       NOP            
       STA    RESP1   
       JMP    LF1B6   
LF1B0: DEX            
       BPL    LF1B0   
       NOP            
       STA    RESP1   
LF1B6: STA    WSYNC   
       STA    HMOVE   
       LDA.wy $00C6,Y 
       AND    #$07    
       TAX            
       STX    $A6     
       LDA    LFD2F,X 
       STA    NUSIZ1  
       LDA.wy $00C6,Y 
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       STX    $A7     
       LDA    LFD2F,X 
       STA    NUSIZ0  
       STA    WSYNC   
       STA    HMOVE   
       JSR    LFF9C   
       LDA.wy $00BE,Y 
       STA    HMP0    
       LDA.wy $00C2,Y 
       STA    HMP1    
       LDX    $9F     
       LDA    $A7     
       BNE    LF1EF   
       LDX    $D4     
LF1EF: STX    $A4     
       LDX    $9F     
       LDA    $A6     
       BNE    LF1F9   
       LDX    $D4     
LF1F9: SEC            
       STA    WSYNC   
       STA    HMOVE   
       LDA    $A4     
       STA    COLUP0  
       STX    COLUP1  
       LDA    $A5     
       SBC    #$04    
       TAX            
       LDA    $A2     
       STA    HMP0    
       LDA    $A3     
       STA    HMP1    
       LDY    #$08    
LF213: DEX            
       TXA            
       SEC            
       SBC    $EC     
       AND    #$F8    
       BNE    LF21E   
       LDA    #$02    
LF21E: STA    ENAM0   
       TXA            
       SEC            
       SBC    $ED     
       AND    #$F8    
       BNE    LF22A   
       LDA    #$02    
LF22A: STA    ENAM1   
       LDA    ($AF),Y 
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       STA    GRP1    
       TXA            
       SEC            
       SBC    $F9     
       AND    #$F8    
       BNE    LF240   
       LDA    #$02    
LF240: STA    ENABL   
       STA.w  $002B   
       DEY            
       BPL    LF213   
       LDY    $CF     
       BIT    WSYNC   
       BVS    LF250   
       STY    $E9     
LF250: BIT    RSYNC   
       BVS    LF256   
       STY    $EA     
LF256: DEY            
       BMI    LF25C   
       JMP    LF172   
LF25C: STA    WSYNC   
       STA    HMOVE   
       DEX            
       LDA    #$00    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    $D4     
       STA    COLUP0  
       STA    COLUP1  
       STA    COLUP1  
       JSR    LFF9C   
LF272: TXA            
       SEC            
       SBC    $EC     
       AND    #$F8    
       BNE    LF27C   
       LDA    #$02    
LF27C: STA    ENAM0   
       TXA            
       SEC            
       SBC    $ED     
       AND    #$F8    
       BNE    LF288   
       LDA    #$02    
LF288: STA    WSYNC   
       STA    HMOVE   
       STA    ENAM1   
       TXA            
       SEC            
       SBC    $F9     
       AND    #$F8    
       BNE    LF298   
       LDA    #$02    
LF298: STA    ENABL   
       JSR    LFF9E   
       DEX            
       CPX    #$18    
       BCS    LF272   
       JMP    LF3C2   
LF2A5: STA    WSYNC   
       STA    HMOVE   
       NOP            
       NOP            
       LDA    $AE     
       AND    #$0F    
       TAY            
LF2B0: DEY            
       BPL    LF2B0   
       NOP            
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       LDA    $D4     
       STA    COLUP1  
       LDA    $9F     
       STA    COLUP0  
       JSR    LFF9F   
       LDA    $AE     
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       LDX    #$90    
       LDY    #$05    
       STY    $CF     
LF2D3: DEX            
       BEQ    LF2FF   
       LDA.wy $00C6,Y 
       TAY            
       LDA    LFD2F,Y 
       STA    NUSIZ0  
       STA    HMCLR   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$00    
       CPX    #$15    
       BCS    LF2F0   
       STA    ENABL   
       LDA    LFC6A,X 
LF2F0: STA    GRP1    
       TXA            
       SEC            
       SBC    $ED     
       AND    #$F8    
       BNE    LF2FC   
       LDA    #$02    
LF2FC: STA    ENAM1   
       DEX            
LF2FF: BEQ    LF31B   
       LDY    $CF     
       LDA.wy $00BE,Y 
       AND    #$0F    
       TAY            
       LDA    #$00    
       CPX    #$15    
       BCS    LF314   
       STA    ENABL   
       LDA    LFC6A,X 
LF314: STA    WSYNC   
       STA    HMOVE   
       STA    GRP1    
       DEX            
LF31B: BEQ    LF37A   
       CPY    #$00    
       BNE    LF32E   
       NOP            
       NOP            
       NOP            
       NOP            
       STA    RESP0   
       LDA    #$60    
       STA    HMP0    
       JMP    LF334   
LF32E: DEY            
       BPL    LF32E   
       STA.w  $0010   
LF334: STA    WSYNC   
       STA    HMOVE   
       LDA    #$00    
       CPX    #$15    
       BCS    LF343   
       STA    ENABL   
       LDA    LFC6A,X 
LF343: STA    GRP1    
       TXA            
       SEC            
       SBC    $ED     
       AND    #$F8    
       BNE    LF34F   
       LDA    #$02    
LF34F: STA    ENAM1   
       LDY    $CF     
       LDA.wy $00BE,Y 
       NOP            
       STA    HMP0    
       LDA    #$18    
       CPY    #$05    
       BNE    LF361   
       LDA    $A9     
LF361: TAY            
       DEX            
       BEQ    LF3C0   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$00    
       CPX    #$15    
       BCS    LF374   
       STA    ENABL   
       LDA    LFC6A,X 
LF374: STA    GRP1    
       JSR    LFF9C   
LF379: DEX            
LF37A: BEQ    LF3C0   
       TXA            
       SEC            
       SBC    $ED     
       AND    #$F8    
       STA    HMCLR   
       BNE    LF388   
       LDA    #$02    
LF388: STA    ENAM1   
       LDA    ($AF),Y 
       AND    LFD7E,Y 
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       CPX    #$15    
       BCC    LF3B6   
       TXA            
       SEC            
       SBC    $F9     
       AND    #$F8    
       BNE    LF3A3   
       LDA    #$02    
LF3A3: STA    ENABL   
       DEY            
       BPL    LF379   
       LDY    $CF     
       BIT    WSYNC   
       BVS    LF3B0   
       STY    $E9     
LF3B0: DEY            
       STY    $CF     
       JMP    LF2D3   
LF3B6: LDA    LFC6A,X 
       STA    GRP1    
       LDA    #$00    
       JMP    LF3A3   
LF3C0: BEQ    LF410   
LF3C2: STA    WSYNC   
       STA    HMOVE   
       DEX            
       DEX            
       LDA    $AE     
       AND    #$0F    
       TAY            
LF3CD: DEY            
       BPL    LF3CD   
       NOP            
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       LDA    $D4     
       STA    COLUP1  
       JSR    LFF9C   
       LDA    $AE     
       STA    HMP1    
LF3E2: TXA            
       SEC            
       SBC    $EC     
       AND    #$F8    
       BNE    LF3EC   
       LDA    #$02    
LF3EC: STA    ENAM0   
       TXA            
       SEC            
       SBC    $ED     
       AND    #$F8    
       BNE    LF3F8   
       LDA    #$02    
LF3F8: STA    WSYNC   
       STA    HMOVE   
       STA    ENAM1   
       LDA    LFC6A,X 
       STA    GRP1    
       LDA    #$00    
       STA    ENABL   
       STA    ENABL   
       NOP            
       NOP            
       STA    HMCLR   
       DEX            
       BNE    LF3E2   
LF410: STA    WSYNC   
       STA    HMOVE   
       STX    GRP1    
       STX    ENAM0   
       STX    ENAM1   
       STX    GRP0    
       LDX    $EB     
       BNE    LF443   
       LDA    $EC     
       CMP    #$14    
       BCS    LF42C   
       BIT    VSYNC   
       BPL    LF42C   
       LDX    #$1F    
LF42C: LDA    $ED     
       CMP    #$14    
       BCS    LF438   
       BIT    VBLANK  
       BVC    LF438   
       LDX    #$1F    
LF438: LDA    $DE     
       LSR            
       BCC    LF443   
       BIT    COLUP1  
       BPL    LF443   
       LDX    #$1F    
LF443: STX    $EB     
       STA    WSYNC   
       STA    HMOVE   
       LDA    $AA     
       AND    #$0F    
       TAX            
       NOP            
       NOP            
LF450: DEX            
       BPL    LF450   
       NOP            
       STA    RESBL   
       LDA    $AA     
       STA    HMBL    
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$FF    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       LDA    $8C     
       STA    COLUPF  
       LDX    #$20    
       STX    CTRLPF  
       STA.w  $0010   
       STA    RESP1   
       STX    NUSIZ1  
       INX            
       STX    NUSIZ0  
       LDA    $88     
       STA    COLUP0  
       STA    COLUP1  
       STA    HMCLR   
       LDA    #$10    
       STA    HMP1    
       LDA    $89     
       STA    COLUBK  
       STA    WSYNC   
       STA    HMOVE   
       BIT    WSYNC   
       BVS    LF494   
       LDX    #$00    
       STX    $E9     
LF494: STX    CXCLR   
       JSR    LFF9D   
       STA    HMCLR   
       STA    WSYNC   
       STA    HMOVE   
       JSR    LFF9C   
       JSR    LFF9C   
       JSR    LFF9F   
       JSR    LFF9E   
       LDA    #$02    
       STA    ENABL   
       LDX    #$04    
LF4B1: STA    WSYNC   
       STA    HMOVE   
       LDA    LFCE0,X 
       STA    GRP0    
       LDA    LFCE5,X 
       STA    GRP1    
       LDA    LFCEA,X 
       LDY    $AD     
       STA    HMCLR   
       STY    PF2     
       STA    GRP0    
       LDA    $8B     
       STA    COLUPF  
       LDA    $AB     
       STA    PF0     
       LDA    $AC     
       STA    PF1     
       LDY    #$FF    
       STY    PF2     
       STY    PF0     
       LDA    $8C     
       STA    COLUPF  
       STY    PF1     
       DEX            
       BPL    LF4B1   
       STA    WSYNC   
       STA    HMOVE   
       INX            
       STX    GRP0    
       STX    GRP1    
       STX    ENABL   
       LDX    $D7     
       LDY    $9D,X   
       LDA    LFD6F,Y 
       STA    NUSIZ1  
       LSR            
       LSR            
       LSR            
       LSR            
       STA    NUSIZ0  
       STA    RESP0   
       STA    RESP1   
       LDA    #$F0    
       STA    HMP0    
       STA    WSYNC   
       STA    HMOVE   
       LDA    $9B,X   
       STA    COLUP0  
       STA    COLUP1  
       JSR    LFF9F   
       STA    HMCLR   
       TYA            
       TAX            
       LDY    #$09    
LF51A: LDA    LFD0C,Y 
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       STA    GRP1    
       LDA    #$00    
       CPX    #$02    
       BCS    LF52D   
       STA    GRP1    
LF52D: CPX    #$00    
       BNE    LF533   
       STA    GRP0    
LF533: DEY            
       BPL    LF51A   
       STA    WSYNC   
       STA    HMOVE   
       INY            
       STY    GRP0    
       STY    GRP1    
       STY    GRP1    
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       JSR    LFF9C   
       STA    HMCLR   
       LDX    $D7     
       LDA    $9B,X   
       STA    COLUP0  
       STA    COLUP1  
       LDY    #$07    
       STY    VDELP0  
       STY    VDELP1  
LF55E: STY    $A2     
       LDA    ($97),Y 
       STA    WSYNC   
       STA    HMOVE   
       STA    $A3     
       LDA    ($8D),Y 
       STA    GRP0    
       LDA    ($8F),Y 
       STA    GRP1    
       LDA    ($91),Y 
       STA    GRP0    
       LDA    ($95),Y 
       TAX            
       LDA    ($93),Y 
       LDY    $A3     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       LDY    $A2     
       DEY            
       BPL    LF55E   
       STA    WSYNC   
       STA    HMOVE   
       INY            
       STY    GRP0    
       STY    GRP1    
       STY    GRP0    
       STY    GRP1    
       NOP            
       NOP            
       NOP            
       NOP            
       STA    RESP0   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$00    
       STA    COLUBK  
       LDA    #$00    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       JSR    LFF9F   
       LDA    #$10    
       STA    HMP1    
       LDA    #$16    
       EOR    $86     
       AND    $87     
       STA    COLUP0  
       STA    COLUP1  
       LDX    #$03    
       STX    NUSIZ0  
       STX    NUSIZ1  
       LDY    #$0F    
       LDA    #$07    
       STA    $A3     
       STA    WSYNC   
       STA    HMOVE   
       STA    VDELP0  
       STA    VDELP1  
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    GRP0    
       LDA    $DA     
       LSR            
       LSR            
       LSR            
       CMP    #$00    
       BCS    LF5EC   
       LDY    #$07    
       CMP    #$0C    
       BCC    LF5EC   
       SBC    #$04    
       TAY            
LF5EC: STY    $A4     
       STA    HMCLR   
LF5F0: LDY    $A4     
       LDA    LFCD0,Y 
       STA    $A2     
       LDA    LFCC0,Y 
       TAX            
       LDA    LFC80,Y 
       STA    GRP0    
       STA    WSYNC   
       STA    HMOVE   
       DEC    $A4     
       LDA    LFC90,Y 
       STA    GRP1    
       LDA    LFCA0,Y 
       STA    GRP0    
       LDA    LFCB0,Y 
       LDY    $A2     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       DEC    $A3     
       BPL    LF5F0   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$00    
       STA    VDELP0  
       STA    VDELP1  
       STA    GRP0    
       STA    GRP1    
       LDA    $DA     
       BEQ    LF639   
       DEC    $DA     
       BNE    LF639   
       DEC    $DA     
LF639: LDA    #$40    
       LDX    #$82    
       STA    WSYNC   
       STA    TIM64T  
       STX    VBLANK  
       LDX    #$01    
LF646: LDY    $EC,X   
       TYA            
       CLC            
       ADC    #$10    
       CMP    #$F0    
       BCC    LF654   
       LDY    #$F0    
       BNE    LF65D   
LF654: DEY            
       DEY            
       LDA    $DE     
       CMP    #$10    
       BCC    LF65D   
       DEY            
LF65D: STY    $EC,X   
       DEX            
       BPL    LF646   
       LDY    #$02    
LF664: TYA            
       ASL            
       ASL            
       TAX            
       LDA.wy $00DB,Y 
       AND    #$F0    
       LSR            
       ADC    #$16    
       STA    $8D,X   
       LDA.wy $00DB,Y 
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       CLC            
       ADC    #$16    
       STA    $8F,X   
       DEY            
       BPL    LF664   
       LDX    #$00    
LF684: LDA    $8D,X   
       EOR    #$16    
       BNE    LF694   
       LDA    #$66    
       STA    $8D,X   
       INX            
       INX            
       CPX    #$0A    
       BCC    LF684   
LF694: LDY    #$05    
LF696: LDA.wy $00B1,Y 
       BNE    LF6B3   
       DEY            
       BPL    LF696   
       LDX    #$07    
       STX    $D9     
       DEX            
       STX    $F7     
       INC    $DE     
       LDA    $DE     
       AND    #$07    
       STA    $DF     
       LDX    #$00    
       STX    $D5     
       STX    $F0     
LF6B3: LDA    $DA     
       BEQ    LF6D8   
       LDA    #$00    
       STA    AUDV0   
       STA    AUDV1   
       LDA    $DD     
       AND    #$0F    
       BNE    LF6D5   
       LDA    $88     
       STA    $D4     
       LDA    $80     
       LSR            
       BCC    LF6D5   
       LDA    $81     
       AND    #$7F    
       BNE    LF6D5   
       JSR    LFBE4   
LF6D5: JMP    LF707   
LF6D8: LDY    $DF     
       LDX    $D5     
       LDA    $81     
       AND    #$03    
       BNE    LF6E8   
       DEX            
       BPL    LF6E8   
       LDX    LFD76,Y 
LF6E8: STX    $D5     
       JSR    LFC0A   
       LDX    $DF     
       LDA    $81     
       AND    LFDB2,X 
       BNE    LF6F8   
       INC    $A0     
LF6F8: LDA    $A0     
       AND    #$7E    
       CMP    #$40    
       BCC    LF702   
       EOR    #$7F    
LF702: CLC            
       ADC    #$50    
       STA    $A1     
LF707: LDA    $DE     
       AND    #$0F    
       TAX            
       LDA    LFCF4,X 
       EOR    $86     
       AND    $87     
       STA    $9F     
LF715: LDA    INTIM   
       BNE    LF715   
       LDY    #$82    
       STY    WSYNC   
       STY    VSYNC   
       STY    WSYNC   
       STY    WSYNC   
       STY    WSYNC   
       STA    VSYNC   
       INC    $81     
       BNE    LF733   
       INC    $D3     
       BNE    LF733   
       SEC            
       ROR    $D3     
LF733: LDY    #$FF    
       LDA    SWCHB   
       AND    #$08    
       BNE    LF73E   
       LDY    #$0F    
LF73E: TYA            
       LDY    #$00    
       BIT    $D3     
       BPL    LF749   
       AND    #$F7    
       LDY    $D3     
LF749: STY    $86     
       ASL    $86     
       STA    $87     
       LDA    #$31    
       STA    WSYNC   
       STA    TIM64T  
       LDA    SWCHA   
       TAY            
       AND    #$0F    
       STA    $85     
       TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $84     
       INY            
       BEQ    LF76C   
       LDA    #$00    
       STA    $D3     
LF76C: LDA    SWCHB   
       LSR            
       BCS    LF777   
       LDX    #$D3    
       JMP    LF004   
LF777: LDY    #$00    
       LSR            
       BCS    LF7A6   
       LDA    $83     
       BEQ    LF784   
       DEC    $83     
       BPL    LF7A8   
LF784: INC    $80     
LF786: LDA    $80     
       AND    #$03    
       STA    $80     
       STA    $D3     
       LDY    #$00    
       STY    $DB     
       STY    $DC     
       STY    $DF     
       STY    $E0     
       STY    AUDV0   
       STY    AUDV1   
       TAY            
       INY            
       STY    $DD     
       LDA    #$FF    
       STA    $DA     
       LDY    #$1E    
LF7A6: STY    $83     
LF7A8: LDA    $DA     
       BEQ    LF7AF   
       JMP    LF01B   
LF7AF: LDA    $F8     
       BEQ    LF7C5   
       DEC    $F8     
       LSR            
       STA    AUDV1   
       LDX    #$1F    
       LSR            
       BCS    LF7BF   
       LDX    #$00    
LF7BF: STX    AUDF1   
       LDA    #$06    
       STA    AUDC1   
LF7C5: LDA    $D9     
       LSR            
       BCS    LF824   
       LSR            
       BCS    LF7FB   
       LSR            
       BCS    LF7D3   
       JMP    LF85C   
LF7D3: INC    $E6     
       LDA    $E6     
       CMP    #$53    
       BCS    LF7EB   
       LSR            
       LSR            
       EOR    #$FF    
       STA    AUDF0   
       LDA    #$04    
       STA    AUDC0   
       LDA    #$08    
       STA    AUDV0   
       BNE    LF80B   
LF7EB: LDA    $D9     
       EOR    #$04    
       STA    $D9     
       LDA    #$00    
       STA    AUDV0   
       LDA    #$40    
       STA    $A0     
       BNE    LF80B   
LF7FB: LDA    $81     
       AND    #$01    
       BNE    LF80B   
       LDA    $E6     
       BNE    LF80E   
       LDA    $D9     
       EOR    #$02    
       STA    $D9     
LF80B: JMP    LFB88   
LF80E: AND    #$0F    
       EOR    #$FF    
       STA    AUDF0   
       LDA    #$04    
       STA    AUDV0   
       LDA    #$0C    
       STA    AUDC0   
       JSR    LFFAD   
       DEC    $E6     
       JMP    LFB4D   
LF824: LDA    $D9     
       EOR    #$01    
       STA    $D9     
       LDY    #$05    
LF82C: LDX    #$70    
       LDA    $DE     
       CMP    #$10    
       BCC    LF840   
       CMP    #$17    
       BEQ    LF83E   
       AND    #$07    
       CMP    #$03    
       BCS    LF840   
LF83E: LDX    #$50    
LF840: LSR            
       BCS    LF846   
       LDX    LFD6C,Y 
LF846: STX    $B1,Y   
       LDX    #$00    
       STX    $EB     
       STX    $F1,Y   
       DEY            
       BPL    LF82C   
       INY            
       STY    $F0     
       LDA    #$F0    
       STA    $EC     
       STA    $ED     
       BNE    LF8C9   
LF85C: LDX    $EB     
       BNE    LF86B   
       LDA    $E6     
       BEQ    LF867   
       JMP    LF8CC   
LF867: LDX    #$1F    
       STX    $EB     
LF86B: TXA            
       AND    #$1F    
       TAX            
       CMP    #$10    
       BCC    LF875   
       EOR    #$1F    
LF875: LSR            
       STA    AUDV0   
       LDY    #$08    
       LDA    $81     
       LSR            
       BCS    LF881   
       LDY    #$0F    
LF881: STY    AUDC0   
       LDA    #$F0    
       STA    $EC     
       STA    $ED     
       LDA    #$00    
       STA    AUDF0   
       STA    $E6     
       STA    $E9     
       STA    $EA     
       STA    $F9     
       CPX    #$09    
       BCS    LF8A5   
       STA    $F0     
       LDX    #$06    
       STX    $F7     
       DEX            
LF8A0: STA    $F1,X   
       DEX            
       BPL    LF8A0   
LF8A5: LDA    $81     
       AND    #$03    
       BNE    LF8C9   
       DEC    $EB     
       BNE    LF8C9   
       LDA    $9D     
       ORA    $9E     
       BNE    LF8BE   
       INC    $DA     
       LDA    $88     
       STA    $D4     
       JMP    LF8C9   
LF8BE: JSR    LFFCE   
       LDA    #$50    
       STA    $D6     
       LDA    #$04    
       STA    $D9     
LF8C9: JMP    LFB88   
LF8CC: LDA    $DE     
       LSR            
       BCC    LF8D4   
       JMP    LF919   
LF8D4: LDA    $A1     
       CMP    #$55    
       BCS    LF8DD   
       JMP    LF946   
LF8DD: LDA    $81     
       LSR            
       LSR            
       LSR            
       LSR            
       AND    #$01    
       TAX            
       LDY    #$00    
LF8E8: STY    $A7     
       LDA.wy $00B1,Y 
       AND    LFD0A,X 
       BEQ    LF911   
       LDA    $EC,X   
       CMP    #$F0    
       BNE    LF911   
       TXA            
       ASL            
       ASL            
       CLC            
       ADC    $A7     
       TAY            
       LDA.wy $00CC,Y 
       CLC            
       ADC    #$05    
       STA    $EE,X   
       LDA    $A1     
       SEC            
       LDY    $A7     
       SBC    LFD69,Y 
       STA    $EC,X   
LF911: INY            
       CPY    #$03    
       BCC    LF8E8   
       JMP    LF946   
LF919: LDA    $DF     
       EOR    #$07    
       BEQ    LF946   
       LDA    $F7     
       CMP    #$05    
       BCS    LF946   
       LDA    $ED     
       CMP    #$F0    
       BNE    LF946   
       LDA    $B5     
       BEQ    LF946   
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    $F5     
       CLC            
       ADC    #$05    
       CLC            
       ADC    LFD2A,Y 
       STA    $EF     
       LDA    #$70    
       SEC            
       SBC    $A9     
       STA    $ED     
LF946: LDY    $D7     
       LDX    $D6     
       LDA.wy $0084,Y 
       AND    #$08    
       BNE    LF956   
       CPX    #$84    
       BCS    LF956   
       INX            
LF956: LDA.wy $0084,Y 
       AND    #$04    
       BNE    LF962   
       CPX    #$18    
       BCC    LF962   
       DEX            
LF962: STX    $D6     
       LDA    $D6     
       CLC            
       ADC    #$05    
       TAX            
       LDA    $80     
       CMP    #$02    
       BCS    LF976   
       STX    $BD     
       LDA    #$FF    
       STA    $D8     
LF976: LDA    $F9     
       BNE    LF990   
       STX    $BD     
       STA    AUDV0   
       LDA.wy $000C,Y 
       TAY            
       EOR    $D8     
       AND    $D8     
       STY    $D8     
       BPL    LF9B7   
       LDA    #$04    
       STA    AUDV0   
       LDA    #$11    
LF990: STA    $A2     
       LDY    #$04    
       LDA    SWCHB   
       ASL            
       LDX    $D7     
       BNE    LF99D   
       ASL            
LF99D: BCC    LF9A0   
       DEY            
LF9A0: TYA            
       CLC            
       ADC    $A2     
       CMP    #$92    
       BCC    LF9AC   
       LDA    #$00    
       STA    AUDV0   
LF9AC: STA    $F9     
       LSR            
       LSR            
       LSR            
       STA    AUDF0   
       LDA    #$04    
       STA    AUDC0   
LF9B7: LDX    #$01    
LF9B9: STX    $A6     
       LDY    $E9,X   
       BEQ    LFA04   
       DEY            
       STY    $A7     
       LDX    $F1,Y   
       LDA    $DE     
       LSR            
       BCS    LF9D4   
       LDX    $A6     
       LDA    $F1     
       ADC    LFD37,X 
       JSR    LFBDA   
       TAX            
LF9D4: STX    $A2     
       LDA    $BD     
       SEC            
       SBC    $A2     
       BCS    LF9DF   
       ADC    #$A0    
LF9DF: LSR            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    LFD04,Y 
       LDX    $A6     
       CPX    #$00    
       BEQ    LF9F1   
       LDA    LFD07,Y 
LF9F1: LDY    $A7     
       AND.wy $00B1,Y 
       STA.wy $00B1,Y 
       LDA    #$20    
       STA    $F8     
       JSR    LFFAD   
       LDA    #$00    
       STA    $F9     
LFA04: LDX    $A6     
       DEX            
       BPL    LF9B9   
       LDA    $DF     
       CMP    #$05    
       BNE    LFA12   
       JMP    LFADE   
LFA12: LSR            
       BCS    LFA44   
       LDY    #$00    
       LDA    $DE     
       CMP    #$07    
       BCC    LFA29   
       LDA    $81     
       CMP    #$50    
       BCC    LFA41   
       CMP    #$80    
       BCS    LFA29   
       LDY    #$01    
LFA29: LDX    $F0     
       INC    $F1     
       LDA    $F1     
       CMP    #$A0    
       BCC    LFA35   
       SBC    #$A0    
LFA35: STA    $F1     
       CPX    #$91    
       BCS    LFA3C   
       INX            
LFA3C: STX    $F0     
       DEY            
       BPL    LFA29   
LFA41: JMP    LFB41   
LFA44: LDY    #$00    
       LDA    $DE     
       AND    #$0F    
       CMP    #$07    
       BNE    LFA50   
       LDY    #$01    
LFA50: LDA    $DE     
       CMP    #$10    
       BCC    LFA58   
       LDY    #$01    
LFA58: STY    $A7     
       LDX    $A9     
       LDA    $DE     
       CMP    #$07    
       BCS    LFA68   
       LDA    $81     
       AND    #$50    
       BNE    LFA69   
LFA68: INX            
LFA69: CPX    #$1D    
       BCC    LFAAD   
       LDA    $B1     
       STA    $A2     
       LDA    $F1     
       STA    $A3     
       LDY    #$01    
LFA77: LDA.wy $00F1,Y 
       STA.wy $00F0,Y 
       LDA.wy $00B1,Y 
       STA.wy $00B0,Y 
       INY            
       CPY    #$06    
       BCC    LFA77   
       LDA    $A2     
       STA    $B6     
       LDA    $A3     
       STA    $F6     
       LDA    $F7     
       BEQ    LFA96   
       DEC    $F7     
LFA96: LDA    $DF     
       CMP    #$05    
       BEQ    LFAA6   
       JSR    LFEFE   
       AND    #$7F    
       CLC            
       ADC    #$10    
       STA    $F6     
LFAA6: LDA    $A8     
       LSR            
       ROR    $A8     
       LDX    #$00    
LFAAD: STX    $A9     
       LDY    $A7     
       DEY            
       BPL    LFA58   
       LDA    $DF     
       CMP    #$01    
       BEQ    LFACA   
       CMP    #$03    
       BEQ    LFAC5   
       CMP    #$07    
       BEQ    LFB29   
       JMP    LFB41   
LFAC5: LDA    #$AA    
       JMP    LFB31   
LFACA: LDY    #$05    
LFACC: LDX    $F1,Y   
       INX            
       BIT    $81     
       BMI    LFAD5   
       DEX            
       DEX            
LFAD5: JSR    LFFDF   
       DEY            
       BPL    LFACC   
       JMP    LFB41   
LFADE: LDX    $A9     
       LDA    $81     
       AND    #$1F    
       BNE    LFAE9   
       JSR    LFEFE   
LFAE9: LDA    $81     
       AND    #$01    
       BNE    LFAF8   
       LDA    $82     
       AND    #$07    
       CMP    #$04    
       BCC    LFAF8   
       INX            
LFAF8: STX    $A2     
       LDY    #$05    
LFAFC: LDX    $F1,Y   
       TXA            
       SEC            
       SBC    #$1A    
       CMP    #$27    
       BCC    LFB08   
       LDX    #$20    
LFB08: BIT    $82     
       BMI    LFB15   
       INX            
       CPX    #$40    
       BCC    LFB1C   
       LDX    #$40    
       BNE    LFB1C   
LFB15: DEX            
       CPX    #$1A    
       BCS    LFB1C   
       LDX    #$1A    
LFB1C: STX    $F1,Y   
       DEY            
       BPL    LFAFC   
       INY            
       STY    $A7     
       LDX    $A2     
       JMP    LFA69   
LFB29: LDA    $DE     
       CMP    #$08    
       BCC    LFB41   
       LDA    $A8     
LFB31: LDY    #$05    
LFB33: LDX    $F1,Y   
       INX            
       ROL            
       BCC    LFB3B   
       DEX            
       DEX            
LFB3B: JSR    LFFDF   
       DEY            
       BPL    LFB33   
LFB41: LDA    $81     
       AND    #$1F    
       BNE    LFB4D   
       LDA    $E6     
       BEQ    LFB4D   
       DEC    $E6     
LFB4D: LDA    $E0     
       BEQ    LFB83   
       SED            
       CLC            
       ADC    $DD     
       STA    $DD     
       BCC    LFB83   
       LDA    $DC     
       ADC    #$00    
       STA    $DC     
       LDA    $DB     
       ADC    #$00    
       BCC    LFB6D   
       LDA    #$99    
       STA    $DC     
       STA    $DD     
       INC    $DA     
LFB6D: STA    $DB     
       LDA    $DC     
       AND    #$FF    
       BNE    LFB83   
       LDY    $D7     
       LDA.wy $009D,Y 
       CMP    #$06    
       BCS    LFB83   
       ADC    #$01    
       STA.wy $009D,Y 
LFB83: CLD            
       LDA    #$00    
       STA    $E0     
LFB88: JMP    LF01B   
LFB8B: LDX    #$06    
       LDA    $DE     
       LSR            
       BCS    LFB96   
       LDX    #$03    
       STX    $EA     
LFB96: STX    $E9     
       LDA    $E6     
       LSR            
       LSR            
       TAX            
       LDA    LFD3B,X 
       STA    $AB     
       LDA    LFD54,X 
       STA    $AC     
       LDA    LFD3F,X 
       STA    $AD     
       LDA    #$2C    
       EOR    $86     
       AND    $87     
       STA    $99     
       LDA    #$2C    
       EOR    $86     
       AND    $87     
       STA    $9B     
       LDX    #$CC    
       LDY    #$CC    
       LDA    SWCHB   
       AND    #$08    
       BNE    LFBCB   
       LDX    #$4C    
       LDY    #$4C    
LFBCB: TXA            
       EOR    $86     
       AND    $87     
       STA    $9A     
       TYA            
       EOR    $86     
       AND    $87     
       STA    $9C     
       RTS            

LFBDA: BCS    LFBE0   
       CMP    #$A0    
       BCC    LFBE2   
LFBE0: SBC    #$A0    
LFBE2: CLC            
       RTS            

LFBE4: LDX    #$05    
LFBE6: LDA    $B1,X   
       LDY    $B7,X   
       STY    $B1,X   
       STA    $B7,X   
       DEX            
       BPL    LFBE6   
       LDX    #$04    
LFBF3: LDA    $DB,X   
       LDY    $E1,X   
       STY    $DB,X   
       STA    $E1,X   
       DEX            
       BPL    LFBF3   
       LDA    $D7     
       EOR    #$01    
       STA    $D7     
       TAX            
       LDA    LFD76,X 
       STA    $D5     
LFC0A: LDA    $DF     
       ASL            
       TAY            
       LDA    LFDBA,Y 
       STA    $A2     
       JMP    LFFEE   
LFC16: .byte $3C,$66,$66,$66,$66,$66,$66,$3C,$3C,$18,$18,$18,$18,$18,$38,$18
       .byte $7E,$60,$60,$3C,$06,$06,$46,$3C,$3C,$46,$06,$0C,$0C,$06,$46,$3C
       .byte $0C,$0C,$0C,$7E,$4C,$2C,$1C,$0C,$7C,$46,$06,$06,$7C,$60,$60,$7E
       .byte $3C,$66,$66,$66,$7C,$60,$62,$3C,$18,$18,$18,$18,$0C,$06,$42,$7E
       .byte $3C,$66,$66,$3C,$3C,$66,$66,$3C,$3C,$46,$06,$3E,$66,$66,$66,$3C
       .byte $00,$00,$00,$00
LFC6A: .byte $00,$00,$00,$00,$00,$7F,$7F,$3E,$3E,$1C,$1C,$08,$08,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00
LFC80: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$72,$8A,$0A,$73,$82,$8A,$73
LFC90: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$12,$12,$1E,$92,$52,$52,$8C
LFCA0: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$67,$94,$84,$87,$84,$94,$67
LFCB0: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$84,$04,$05,$07,$04,$04,$87
LFCC0: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$A5,$A4,$3C,$24,$A4,$A4,$19
LFCD0: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$DC,$92,$92,$92,$92,$92,$DC
LFCE0: .byte $00,$00,$00,$00,$00
LFCE5: .byte $00,$00,$00,$00,$00
LFCEA: .byte $00,$00,$00,$00,$00
LFCEF: .byte $B0,$42,$44,$5A,$06
LFCF4: .byte $2A,$0A,$5C,$38,$2A,$1A,$3A,$1A,$C8,$3A,$58,$C8,$1A,$58,$C8,$1A
LFD04: .byte $3F,$5F,$6F
LFD07: .byte $F3,$F5,$F6
LFD0A: .byte $F0,$0F
LFD0C: .byte $00,$80,$C0,$E0,$F0,$E0,$C0,$80,$00,$00
LFD16: .byte $01,$01,$03,$03,$07,$07,$17,$17,$37,$37
LFD20: .byte $00,$02,$02,$06,$06,$16,$16,$36,$36,$77
LFD2A: .byte $00,$40,$20,$20,$00
LFD2F: .byte $00,$00,$00,$02,$00,$04,$02,$06
LFD37: .byte $00,$60
LFD39: .byte $00,$10
LFD3B: .byte $00,$00,$00,$00
LFD3F: .byte $00,$01,$03,$07,$0F,$1F,$3F,$7F,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF
LFD54: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$C0,$E0
       .byte $F0,$F8,$FC,$FE,$FF
LFD69: .byte $32,$29,$1B
LFD6C: .byte $37,$77,$37
LFD6F: .byte $00,$00,$00,$10,$11,$31,$33
LFD76: .byte $02,$02,$02,$02,$05,$02,$05,$0F
LFD7E: .byte $00,$18,$3C,$7E,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$7E,$3C,$18,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
LFD9A: .byte $70,$72,$72,$74,$74,$76,$78,$78,$7A,$7A,$7C,$7C,$0F,$0F,$0F,$0F
       .byte $0F,$0F,$0E,$0C,$0A,$08,$06,$04
LFDB2: .byte $FF,$FF,$0F,$0F,$07,$07,$00,$00
LFDBA: .byte $2B
LFDBB: .byte $FE,$00,$FE,$09,$FF,$9E,$FE,$CA,$FD,$49,$FE,$74,$FE,$CD,$FE,$D0
       .byte $D9,$E2,$EB,$E2,$D9,$00,$00,$FF,$7E,$3C,$18,$3C,$7E,$FF,$00,$00
       .byte $00,$FF,$3C,$18,$3C,$FF,$00,$00,$00,$00,$00,$FF,$18,$FF,$00,$00
       .byte $00,$00,$00,$00,$00,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$03,$0F,$1B,$00,$00,$00,$00,$00,$1C,$2A,$77
       .byte $49,$6B,$3E,$1C,$00,$00,$00,$00,$1C,$00,$2A,$77,$49,$6B,$3E,$1C
       .byte $00,$00,$00,$00,$1C,$14,$2A,$77,$49,$6B,$3E,$1C,$00,$00,$00,$00
       .byte $2E,$37,$40,$00,$18,$3C,$7E,$EF,$FF,$7E,$3C,$5A,$00,$18,$3C,$7E
       .byte $E7,$E7,$7E,$3C,$18,$00,$18,$3C,$66,$C3,$C3,$66,$3C,$5A,$4C,$58
       .byte $64,$00,$00,$00,$00,$1E,$12,$32,$66,$4C,$48,$78,$00,$00,$00,$00
       .byte $00,$3C,$24,$24,$24,$24,$24,$3C,$00,$00,$00,$00,$00,$78,$48,$4C
       .byte $66,$32,$12,$1E,$00,$00,$00,$00,$00,$7A,$83,$8C,$95,$8C,$83,$00
       .byte $00,$00,$18,$18,$00,$00,$00,$00,$00,$00,$3C,$24,$24,$3C,$00,$00
       .byte $00,$00,$7E,$42,$42,$42,$42,$7E,$00,$00,$00,$FF,$81,$81,$81,$81
       .byte $81,$81,$FF,$A1,$AE,$BB,$00,$00,$00,$00,$00,$00,$00,$18,$3C,$3C
       .byte $3C,$00,$00,$00,$00,$00,$00,$00,$00,$18,$3C,$7E,$7E,$7E,$66,$00
       .byte $00,$00,$00,$00,$18,$3C,$7E,$FF,$FF,$FF,$E7,$C3,$C3,$00,$00,$00
       .byte $00,$00,$EC,$EB,$EA,$E9,$E8,$E7,$E6,$E5,$E4,$E3,$E2,$E1,$E0,$DF
       .byte $DE,$DD,$00,$73,$73,$CE,$CE,$73,$73,$CE,$CE,$73,$73,$CE,$CE,$73
       .byte $73,$CE,$CE,$73,$73,$CE,$CE,$73,$73,$CE,$CE,$73,$73,$CE,$CE,$73
       .byte $73,$CE,$CE
LFEFE: LDA    $82     
       ASL            
       ASL            
       ASL            
       EOR    $82     
       ASL            
       ROL    $82     
       RTS            

LFF09: .byte $0C,$15,$1E,$00,$38,$38,$10,$18,$7E,$FE,$CB,$81,$00,$38,$38,$10
       .byte $18,$18,$18,$08,$00,$00,$38,$38,$11,$FF,$7E,$1C,$08,$00
LFF27: LDX    #$0B    
       LDA    #$FC    
LFF2B: STA    $8D,X   
       DEX            
       DEX            
       BPL    LFF2B   
       LDA    #$03    
       STA    $AF     
       LDA    #$FE    
       STA    $B0     
       LDA    #$AA    
       STA    $A8     
       LDA    #$F0    
       STA    $EC     
       STA    $ED     
       LDA    #$06    
       STA    $F7     
       STA    $D9     
       LDA    #$50    
       STA    $D6     
       LDA    #$40    
       STA    $A0     
       LDA    #$90    
       STA    $A1     
       LDX    #$05    
LFF57: LDA    LFD6C,X 
       STA    $B1,X   
       STA    $B7,X   
       DEX            
       BPL    LFF57   
       INX            
       STX    AUDV0   
       STX    AUDV1   
       LDA    #$16    
       STA    $A9     
       LDX    #$03    
       STX    $9D     
       INX            
       LDA    $80     
       LSR            
       BCS    LFF76   
       LDX    #$00    
LFF76: STX    $9E     
       RTS            

LFF79: JSR    LFFA0   
       STA    WSYNC   
       STA    HMOVE   
       RTS            

LFF81: CLC            
       ADC    #$2E    
       TAY            
       AND    #$0F    
       STA    $A2     
       TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       CLC            
       ADC    $A2     
       CMP    #$0F    
       BCC    LFF99   
       SBC    #$0F    
       INY            
LFF99: EOR    #$07    
       ASL            
LFF9C: ASL            
LFF9D: ASL            
LFF9E: ASL            
LFF9F: RTS            

LFFA0: JSR    LFF81   
       STA    HMP0,X  
       STA    WSYNC   
LFFA7: DEY            
       BPL    LFFA7   
       STA    RESP0,X 
       RTS            

LFFAD: LDX    #$08    
       LDA    $DE     
       CMP    #$08    
       BCS    LFFB6   
       TAX            
LFFB6: LDY    LFFC5,X 
       LDA    $D9     
       LSR            
       LSR            
       BCC    LFFC2   
       LDY    LFFC4,X 
LFFC2: STY    $E0     
LFFC4: RTS            

LFFC5: .byte $20,$30,$40,$50,$60,$70,$80,$90,$90
LFFCE: JSR    LFBE4   
       LDX    $D7     
       LDA    $9D,X   
       BNE    LFFDA   
       JSR    LFBE4   
LFFDA: LDX    $D7     
       DEC    $9D,X   
       RTS            

LFFDF: CPX    #$FF    
       BNE    LFFE5   
       LDX    #$9F    
LFFE5: CPX    #$A0    
       BCC    LFFEB   
       LDX    #$00    
LFFEB: STX    $F1,Y   
       RTS            

LFFEE: LDA    LFDBB,Y 
       STA    $A3     
       STA    $B0     
       LDY    $D5     
       LDA    ($A2),Y 
       STA    $AF     
       RTS            

LFFFC: .byte $00,$F0,$00,$F0
