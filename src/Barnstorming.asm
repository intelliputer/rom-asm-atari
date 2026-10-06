; Disassembly of roms/Barnstorming.bin
; Disassembled Tue Oct  6 15:21:06 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Barnstorming.bin
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
AUDC0   =  $15
GRP0    =  $1B
GRP1    =  $1C
ENAM0   =  $1D
ENAM1   =  $1E
HMP0    =  $20
HMP1    =  $21
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
       JSR    LFD47   
       LDA    $82     
       BNE    LF01B   
       LDX    #$01    
       STX    $82     
       DEX            
       JMP    LF64F   
LF01B: LDX    #$07    
LF01D: LDA    LF0AD,X 
       EOR    $85     
       AND    $86     
       STA    $87,X   
       CPX    #$01    
       BCS    LF02C   
       STA    COLUBK,X
LF02C: DEX            
       BPL    LF01D   
       LDA    #$21    
       LDX    #$00    
       JSR    LFDBD   
       LDA    #$28    
       INX            
       STX    CTRLPF  
       JSR    LFDBD   
       LDA    $DD     
       INX            
       JSR    LFDBD   
       LDA    $DD     
       CLC            
       ADC    #$40    
       CMP    #$A0    
       BCC    LF04F   
       SBC    #$A0    
LF04F: INX            
       JSR    LFD96   
       STA    WSYNC   
       STA    HMCLR   
       LDX    #$03    
LF059: LDA    $E8,X   
       JSR    LFD9E   
       STA    $F5     
       LDA    $E0,X   
       AND    #$0F    
       ORA    $F5     
       STA    $E0,X   
       STA    $E0,X   
       DEY            
       DEY            
       DEY            
       DEY            
       STY    $E4,X   
       DEX            
       BPL    LF059   
       LDA    $8B     
       STA    COLUBK  
LF077: LDY    INTIM   
       BNE    LF077   
       STA    WSYNC   
       STA    HMOVE   
       STY    VBLANK  
       STY    NUSIZ0  
       STY    NUSIZ1  
       LDA    #$02    
       EOR    $85     
       AND    $86     
       STA    COLUP0  
       STA    COLUP1  
       LDX    #$01    
LF092: STA    WSYNC   
       STA    HMOVE   
       DEX            
       BPL    LF092   
       LDY    #$07    
LF09B: STA    WSYNC   
       STA    HMOVE   
       LDA    ($92),Y 
       STA    GRP0    
       LDA    ($94),Y 
       STA    GRP1    
       DEY            
       BPL    LF09B   
       JMP    LF0F1   
LF0AD: .byte $D6,$00,$D0,$1A,$88,$0E,$14,$12
LF0B5: .byte $42,$42,$42,$42,$42,$42,$42,$42,$42,$42,$42,$42,$42,$42,$42,$42
       .byte $42,$42,$42,$42,$42,$42,$42,$42,$D0,$06,$06,$06,$06,$06,$06,$06
       .byte $04,$04,$04,$04,$04,$04,$04,$02,$02,$02,$02,$02,$02,$02,$D0,$D6
LF0E5: .byte $FF,$FF,$EE,$88,$00,$00,$00,$00
LF0ED: .byte $10,$15,$15,$25
LF0F1: STA    WSYNC   
       STA    HMOVE   
       INY            
       STY    GRP0    
       STY    GRP1    
       INY            
       STY    NUSIZ1  
       LDY    #$03    
       STY    NUSIZ0  
       NOP            
       STA    $F9     
       STA    RESP0   
       STA    RESP1   
       LDX    #$01    
LF10A: STA    WSYNC   
       STA    HMOVE   
       LDY    #$00    
       STA    $F9     
       DEC    $F5     
       LDA    #$07    
       STA    $F5     
       LDA    $BB     
       CMP    #$50    
       DEX            
       STA    HMCLR   
       BPL    LF10A   
       BCC    LF128   
       STY    NUSIZ0  
       STY    NUSIZ1  
       DEX            
LF128: STX    $F7     
LF12A: LDY    $F5     
       LDA    ($B9),Y 
       ORA    LFDD7,Y 
       AND    $F7     
       STA    GRP0    
       LDA    ($BB),Y 
       STA    GRP1    
       STA    WSYNC   
       STA    HMOVE   
       LDA    ($C1),Y 
       STA    $F6     
       LDA    ($BF),Y 
       TAX            
       LDA    ($BD),Y 
       ORA    LFDDC,Y 
       LDY    $F6     
       STA    GRP0    
       STX    GRP1    
       STY    GRP0    
       DEC    $F5     
       BPL    LF12A   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       JMP    LF170   
LF162: .byte $14,$14,$0E,$14,$14,$0E,$14,$14,$14,$14,$14,$14,$14,$14
LF170: LDX    #$0C    
LF172: LDA    LFF93,X 
       EOR    $85     
       AND    $86     
       CPX    #$08    
       BCS    LF199   
       STA    WSYNC   
       STA    HMOVE   
       STA    COLUBK  
       LDA    $8E     
       STA    COLUPF  
       LDA    LF0E5,X 
       STA    PF0     
       LDA    LFDE4,X 
       STA    PF1     
       LDA    LFDEC,X 
       STA    PF2     
       JMP    LF19F   
LF199: STA    WSYNC   
       STA    HMOVE   
       STA    COLUBK  
LF19F: DEX            
       BPL    LF172   
       LDX    #$00    
       LDY    $87     
       LDA    $8A     
       STA    WSYNC   
       STA    HMOVE   
       STA    COLUPF  
       STY    COLUBK  
       STX    PF0     
       STX    PF1     
       STX    PF2     
       STX    NUSIZ1  
       STX    CTRLPF  
       LDA    $89     
       STA    RESP1   
       STA    COLUP1  
       LDA    #$F0    
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       JSR    LFDBC   
       JSR    LFDBC   
       STA    HMCLR   
       LDX    #$04    
       STX    $DB     
       LDY    $8F     
LF1D6: STA    WSYNC   
       STA    HMOVE   
       CPY    #$15    
       BCS    LF207   
       LDA    ($9A),Y 
       STA    GRP1    
       LDA    LFF45,Y 
       STA    PF1     
LF1E7: DEX            
       STX    $DB     
       LDA    $E0,X   
       STA    NUSIZ0  
       STA    $EC     
       LDA    #$00    
       STA    PF1     
       DEY            
       CPY    #$15    
       BCS    LF212   
       LDA    ($9A),Y 
       STA    GRP1    
       LDA    LFF45,Y 
LF200: STY    $F5     
       STA    PF1     
       JMP    LF21B   
LF207: LDA    #$00    
       STA    PF1     
       STA    GRP1    
       STA    $F9     
       JMP    LF1E7   
LF212: LDA    #$00    
       STA    PF1     
       STA    GRP1    
       JMP    LF200   
LF21B: STA    WSYNC   
       STA    HMOVE   
       LDA    $E4,X   
       TAX            
       BMI    LF245   
       CPX    #$05    
       BCS    LF271   
       CPX    #$02    
       BCS    LF255   
LF22C: DEX            
       BPL    LF22C   
       NOP            
       STA    RESP0   
LF232: JSR    LFDBC   
       LDA    #$00    
       STA    PF1     
       DEY            
       CPY    #$15    
       BCS    LF242   
       LDA    ($9A),Y 
       STA    GRP1    
LF242: JMP    LF291   
LF245: STA    $F9     
       STA    $F9     
       STA    $F9     
       STA.w  $0010   
       LDA    #$60    
       STA    HMP0    
       JMP    LF232   
LF255: STA    $F9     
       DEX            
       DEX            
       STA    $F9     
LF25B: DEX            
       BPL    LF25B   
       STA.w  $0010   
       LDA    #$00    
       STA    PF1     
       DEY            
       CPY    #$15    
       BCS    LF26E   
       LDA    ($9A),Y 
       STA    GRP1    
LF26E: JMP    LF291   
LF271: SBC    #$05    
       TAX            
       DEY            
       CPY    #$15    
       BCC    LF280   
       STA    $F9     
       DEC    $F5     
       JMP    LF285   
LF280: LDA    ($9A),Y 
       NOP            
       STA    GRP1    
LF285: LDA    #$00    
       STA    PF1     
       STA    $F9     
LF28B: DEX            
       BPL    LF28B   
       STA.w  $0010   
LF291: STA    WSYNC   
       STA    HMOVE   
       CPY    #$15    
       BCC    LF29F   
       NOP            
       STA    $F9     
       JMP    LF2A4   
LF29F: LDA    LFF45,Y 
       STA    PF1     
LF2A4: LDX    $DB     
       BEQ    LF308   
       LDA.w  $00F1   
       STA    $9C     
       LDA    $EC     
       STA    HMP0    
       LDA    $8C     
       STA.w  $0006   
       LDX    #$0C    
LF2B8: LDA    $DE     
       STA    PF1     
       DEY            
       CPY    #$15    
       BCS    LF2FB   
       LDA    ($9A),Y 
       STA    GRP1    
       LDA    LFF45,Y 
       STA    PF1     
       STY    $F5     
       TXA            
       TAY            
LF2CE: STA    HMOVE   
       LDX    $DB     
       LDA    $ED,X   
       STA    $9C     
       LDA    ($9C),Y 
       STA    GRP0    
       TYA            
       TAX            
       LDY    $F5     
       LDA    COLUP1  
       STA    $F9     
       STA    HMCLR   
       DEX            
       BPL    LF2B8   
       LDX    #$00    
       STX    $EC     
       STX    PF1     
       LDX    $DB     
       DEY            
       ORA    WSYNC   
       ORA    $B1,X   
       STA    $B1,X   
       STA    CXCLR   
       JMP    LF1D6   
LF2FB: STA    GRP1    
       STY    $F5     
       TXA            
       TAY            
       NOP            
       NOP            
       NOP            
       NOP            
       JMP    LF2CE   
LF308: LDA    $EC     
       STA    HMP0    
       STA    $F9     
       STA    $F9     
       LDX    #$47    
       DEY            
       CPY    #$15    
       BCS    LF32A   
       LDA    #$00    
       STA    PF1     
       LDA    ($9A),Y 
       STA    GRP1    
       LDA    LFF45,Y 
       NOP            
       NOP            
       NOP            
       STA    PF1     
       JMP    LF330   
LF32A: LDA    #$00    
       STA    PF1     
       STA    GRP1    
LF330: STA    WSYNC   
       STA    HMOVE   
       JSR    LFDBA   
       JSR    LFDBC   
       STA    HMCLR   
       LDA    #$00    
       STA    PF1     
       INC    $F5     
       DEC    $F5     
       DEY            
       CPY    #$15    
       BCS    LF355   
       LDA    ($9A),Y 
       STA    GRP1    
       LDA    LFF45,Y 
       STA    PF1     
       JMP    LF35E   
LF355: LDA    #$00    
       STA    GRP1    
       STA    PF1     
       JMP    LF35E   
LF35E: STA    WSYNC   
       STA    HMOVE   
       LDA    $F3     
       BNE    LF3AC   
       JSR    LFDBC   
       LDA    $89     
       STA    COLUP0  
       NOP            
       NOP            
       NOP            
       NOP            
LF371: DEY            
       LDA    #$00    
       STA    PF1     
       CPY    #$15    
       BCC    LF381   
       STY    $F5     
       TXA            
       TAY            
       JMP    LF390   
LF381: LDA    ($9A),Y 
       STA    GRP1    
       LDA    LFF45,Y 
       STY    $F5     
       STX    $F6     
       LDY    $F6     
       STA    PF1     
LF390: STA    WSYNC   
       STA    HMOVE   
       CPX    #$39    
       BCS    LF39E   
       LDA    LFF5A,Y 
       JMP    LF3A0   
LF39E: LDA    ($A6),Y 
LF3A0: AND    $F4     
       STA    GRP0    
       LDY    $F5     
       DEX            
       BPL    LF371   
       JMP    LF483   
LF3AC: JSR    LFDB9   
       NOP            
       NOP            
       STA    $F9     
LF3B3: DEY            
       LDA    #$00    
       STA    PF1     
       CPY    #$15    
       BCC    LF3C5   
       STA    GRP1    
       STY    $F5     
       TXA            
       TAY            
       JMP    LF3D4   
LF3C5: LDA    ($9A),Y 
       STA    GRP1    
       LDA    LFF45,Y 
       STY    $F5     
       STX    $F6     
       LDY    $F6     
       STA    PF1     
LF3D4: STA    WSYNC   
       STA    HMOVE   
       LDA    $8C     
       STA    COLUP0  
       LDA    LFF01,Y 
       AND    $F4     
       STA    GRP0    
       LDY    $F5     
       NOP            
       NOP            
       NOP            
       CPX    #$30    
       BEQ    LF40A   
       DEX            
       BPL    LF3B3   
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
LF403: STA    GRP1    
       STY    $F5     
       JMP    LF420   
LF40A: DEX            
LF40B: DEY            
       LDA    #$00    
       STA    PF1     
       CPY    #$15    
       BCS    LF403   
       LDA    ($9A),Y 
       STA    GRP1    
       LDA    LFF45,Y 
       STY    $F5     
       NOP            
       STA    PF1     
LF420: TXA            
       TAY            
       LDA    #$07    
       STA    WSYNC   
       STA    HMOVE   
       STA    NUSIZ0  
       LDA    LF0B5,Y 
       EOR    $85     
       AND    $86     
       STA    COLUP0  
       LDA    $A2     
       STA    GRP0    
       LDY    $F5     
       DEX            
       CPX    #$18    
       BCS    LF40B   
       LDA    #$E0    
       STA    HMP0    
LF442: DEY            
       LDA    #$00    
       STA    PF1     
       CPY    #$15    
       BCS    LF478   
       LDA    ($9A),Y 
       STA    GRP1    
       LDA    LFF45,Y 
       STY    $F5     
       STA    PF1     
LF456: TXA            
       TAY            
       LDA    #$07    
       NOP            
       STA    HMOVE   
       STA    NUSIZ0  
       LDA    LF0B5,Y 
       EOR    $85     
       AND    $86     
       STA    COLUP0  
       LDA    $A3     
       STA    GRP0    
       LDY    $F5     
       STA    HMCLR   
       STA    $F9     
       DEX            
       BPL    LF442   
       JMP    LF483   
LF478: STA    GRP1    
       STY    $F5     
       NOP            
       NOP            
       NOP            
       NOP            
       JMP    LF456   
LF483: LDA    COLUP1  
       ORA    WSYNC   
       ORA    $B1     
       STA    $B1     
       STA    CXCLR   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$00    
       STA    GRP1    
       STA    GRP0    
       LDA    $89     
       STA    COLUBK  
       LDA    $8C     
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$06    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDY    #$0C    
LF4A9: CPY    #$07    
       LDX    #$00    
       BCS    LF4B1   
       LDX    #$02    
LF4B1: STA    WSYNC   
       STA    HMOVE   
       STX    ENAM0   
       STX    ENAM1   
       LDA    LF162,Y 
       EOR    $85     
       AND    $86     
       STA    COLUBK  
       DEY            
       BPL    LF4A9   
       LDY    #$02    
LF4C7: LDA    #$00    
       LDX    $8D     
       STA    WSYNC   
       STA    HMOVE   
       STA    ENAM0   
       STA    ENAM1   
       STX    COLUBK  
       DEY            
       BPL    LF4C7   
       STA    WSYNC   
       STA    HMOVE   
       LDA    $88     
       STA    COLUBK  
       STA    WSYNC   
       STA    HMOVE   
       STA    $F9     
       LDX    #$00    
       STX    HMCLR   
       STX    REFP0   
       STX    REFP1   
       INX            
       STX    NUSIZ0  
       STA    $F9     
       STA    RESP0   
       STA    RESP1   
       INX            
       INX            
       STX    NUSIZ1  
       LDA    #$10    
       STA    HMP1    
       LDY    #$07    
LF501: LDA    ($96),Y 
       STA    $F5     
       STA    WSYNC   
       STA    HMOVE   
       LDA    LFE58,Y 
       STA    GRP0    
       LDA    LFE60,Y 
       STA    GRP1    
       NOP            
       LDA    LFE70,Y 
       TAX            
       LDA    LFE68,Y 
       STA    GRP0    
       STX    GRP1    
       LDA    $F5     
       STA    GRP1    
       STA    HMCLR   
       DEY            
       BPL    LF501   
       INY            
       STY    GRP0    
       STY    GRP1    
       LDA    #$21    
       LDX    #$82    
       STA    WSYNC   
       STA    TIM64T  
       STX    VBLANK  
       LDA    #$FE    
       STA    $93     
       STA    $95     
       STA    $97     
       LDA    $D3     
       AND    #$F0    
       LSR            
       BNE    LF549   
       LDA    #$50    
LF549: STA    $92     
       LDX    $80     
       INX            
       TXA            
       ASL            
       ASL            
       ASL            
       STA    $96     
       LDA    $D3     
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA    $94     
       LDY    #$08    
       LDX    #$02    
LF561: LDA    $B5,X   
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA.wy $00B9,Y 
       DEX            
       BMI    LF57C   
       DEY            
       DEY            
       LDA    $B6,X   
       AND    #$F0    
       LSR            
       STA.wy $00B9,Y 
       DEY            
       DEY            
       BPL    LF561   
LF57C: CLD            
       LDA    $D1     
       BNE    LF585   
       LDA    $A8     
       BMI    LF585   
LF585: LDA    $81     
       AND    #$07    
       BNE    LF599   
       LDX    $DC     
       INX            
       TXA            
       AND    #$07    
       STA    $DC     
       TAY            
       LDA    LFEBA,Y 
       STA    $F1     
LF599: LDY    #$00    
       LDA    $81     
       AND    #$01    
       BNE    LF5A3   
       LDY    #$20    
LF5A3: STY    $F2     
       LDX    #$05    
LF5A7: LDY    #$00    
       LDA    $A8     
       CMP    #$20    
       BCS    LF5B5   
       LDA    $D1     
       BNE    LF5B5   
       LDY    $C9,X   
LF5B5: STY    AUDC0,X 
       DEX            
       BPL    LF5A7   
       LDA    $AB     
       BNE    LF5CC   
       LDA    $D6     
       CMP    #$0A    
       BCS    LF5CC   
       LDA    $8F     
       CMP    #$7D    
       BCS    LF5CC   
       INC    $8F     
LF5CC: LDA    INTIM   
       BNE    LF5CC   
       LDY    #$82    
       STY    WSYNC   
       STY    VSYNC   
       STY    WSYNC   
       STY    WSYNC   
       STY    WSYNC   
       STA    VSYNC   
       INC    $81     
       BNE    LF5EA   
       INC    $A8     
       BNE    LF5EA   
       SEC            
       ROR    $A8     
LF5EA: LDY    #$FF    
       LDA    SWCHB   
       AND    #$08    
       BNE    LF5F5   
       LDY    #$0F    
LF5F5: TYA            
       LDY    #$00    
       BIT    $A8     
       BPL    LF600   
       AND    #$F7    
       LDY    $A8     
LF600: STY    $85     
       ASL    $85     
       STA    $86     
       LDA    #$30    
       STA    WSYNC   
       STA    TIM64T  
       LDA    SWCHA   
       TAY            
       LDX    $AC     
       BEQ    LF617   
       LDY    #$0F    
LF617: TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $84     
       INY            
       BEQ    LF628   
LF621: LDA    #$00    
       STA    $A8     
       JMP    LF62C   
LF628: BIT    REFP1   
       BPL    LF621   
LF62C: LDA    SWCHB   
       LSR            
       BCS    LF637   
       LDX    #$A8    
       JMP    LF004   
LF637: LDY    #$00    
       LSR            
       BCS    LF66B   
       LDA    $83     
       BEQ    LF644   
       DEC    $83     
       BPL    LF66D   
LF644: INC    $80     
       LDA    $80     
       CMP    #$03    
       BNE    LF64F   
       JSR    LFDCA   
LF64F: LDA    $80     
       AND    #$03    
       STA    $80     
       STA    $A8     
       LDA    #$AA    
       STA    $D3     
       STA    $B5     
       STA    $B6     
       STA    $B7     
       STA    $B8     
       LDA    #$50    
       STA    $BB     
       LDY    #$1E    
       STY    $D1     
LF66B: STY    $83     
LF66D: LDA    $A8     
       BMI    LF675   
       LDA    $D1     
       BEQ    LF678   
LF675: JMP    LF01B   
LF678: LDA    $CF     
       BNE    LF689   
       BIT    REFP1   
       BPL    LF683   
       JMP    LF01B   
LF683: LDA    #$01    
       STA    $CF     
       STA    $81     
LF689: BIT    $B0     
       BPL    LF6C9   
       LDA    $EB     
       ORA    $E9     
       ORA    $EA     
       BNE    LF6A1   
       LDA    $8F     
       CMP    #$7D    
       BNE    LF6A1   
       LDA    #$C2    
       STA    $9A     
       INC    $D1     
LF6A1: LDA    $81     
       LDX    $D6     
       BEQ    LF6BA   
       CPX    #$1A    
       BCS    LF6B4   
       AND    #$03    
       BNE    LF6BA   
       DEC    $D6     
       JMP    LF6BA   
LF6B4: AND    #$01    
       BNE    LF6BA   
       DEC    $D6     
LF6BA: LDA    $81     
       AND    #$03    
       BNE    LF6C6   
       LDA    $D4     
       BEQ    LF6C6   
       DEC    $D4     
LF6C6: JMP    LF756   
LF6C9: LDA    $B5     
       CMP    #$05    
       BNE    LF6D4   
       INC    $D1     
       JMP    LF756   
LF6D4: CLC            
       LDA    $B8     
       ADC    #$AB    
       STA    $B8     
       LDA    #$01    
       SED            
       ADC    $B7     
       STA    $B7     
       LDA    $B6     
       ADC    #$00    
       STA    $B6     
       CLD            
       CMP    #$60    
       BCC    LF6F3   
       LDA    #$00    
       STA    $B6     
       INC    $B5     
LF6F3: LDA    $81     
       AND    #$01    
       BNE    LF72A   
       BIT    REFP1   
       BMI    LF713   
       LDX    $D6     
       INX            
       CPX    #$25    
       BCC    LF706   
       LDX    #$25    
LF706: STX    $D6     
       LDA    $81     
       AND    #$07    
       BNE    LF710   
       INC    $D4     
LF710: JMP    LF72A   
LF713: LDA    $81     
       AND    #$07    
       BNE    LF71B   
       DEC    $D4     
LF71B: LDX    $D6     
       CPX    #$18    
       BCS    LF726   
       INC    $D6     
       JMP    LF72A   
LF726: BEQ    LF72A   
       DEC    $D6     
LF72A: LDA    $D4     
       BPL    LF730   
       LDA    #$00    
LF730: CMP    #$08    
       BCC    LF736   
       LDA    #$07    
LF736: STA    $D4     
       LDX    #$00    
       LDA    $81     
       AND    #$01    
       BNE    LF756   
       LDA    $84     
       EOR    #$0F    
       AND    #$03    
       BEQ    LF754   
       LDA    $D5     
       CLC            
       ADC    #$05    
       CMP    #$17    
       BCC    LF753   
       LDA    #$17    
LF753: TAX            
LF754: STX    $D5     
LF756: NOP            
       LDA    $D0     
       LDX    #$03    
LF75B: STA    $F5     
       AND    #$01    
       BEQ    LF7DE   
       LDA    $E8,X   
       BNE    LF767   
       LDA    #$A0    
LF767: LDY    $D8     
       DEY            
       STY    $F6     
       SEC            
       SBC    $F6     
       STA    $F7     
       BEQ    LF79C   
       CMP    #$A1    
       BCS    LF79C   
       LDA    $E0,X   
       AND    #$F0    
       STA    $E0,X   
       LDY    $C5,X   
       LDA    $F7     
       CMP    LFD06,Y 
       BCS    LF7DC   
       LDA    $E0,X   
       ORA    $C5,X   
       STA    $E0,X   
       LDA    $F7     
       JMP    LF7DC   
LF791: .byte $B5,$E0,$15,$C5,$95,$E0,$A5,$F7,$4C,$DC,$F7
LF79C: LDA    $E0,X   
       AND    #$0F    
       CMP    #$00    
       BEQ    LF7B7   
       TAY            
       LDA    LFD01,Y 
       STA    $E8,X   
       LDA    $E0,X   
       AND    #$F0    
       STA    $E0,X   
       LDA    #$00    
       STA    $C5,X   
       JMP    LF7DE   
LF7B7: INC    $C2,X   
       LDA    $C2,X   
       AND    #$03    
       STA    $C2,X   
       TAY            
       STX    $F8     
       LDX    $80     
       LDA    #$FD    
       STA    $99     
       LDA    LFCEC,X 
       STA    $98     
       LDA    ($98),Y 
       LDX    $F8     
       STA    $C5,X   
       LDA    LFCF0,X 
       EOR    $D0     
       STA    $D0     
       LDA    #$00    
LF7DC: STA    $E8,X   
LF7DE: LDA    $F5     
       LSR            
       DEX            
       BEQ    LF7E7   
       JMP    LF75B   
LF7E7: LDA    $D1     
       BNE    LF827   
       LDA    $81     
       AND    #$01    
       BNE    LF7FD   
       BIT    REFP1   
       BPL    LF7FB   
       LDA    $81     
       AND    #$03    
       BNE    LF7FD   
LF7FB: INC    $90     
LF7FD: LDX    $90     
       CPX    #$03    
       BCC    LF807   
       LDX    #$00    
       STX    $90     
LF807: LDA    LFE78,X 
       STA    $9A     
       LDA    $81     
       AND    #$03    
       BNE    LF814   
       INC    $91     
LF814: LDX    $91     
       CPX    #$03    
       BCC    LF81C   
       LDX    #$00    
LF81C: STX    $91     
       LDA    LFED7,X 
       STA    $A6     
       LDA    #$FF    
       STA    $A7     
LF827: LDX    $AB     
       BEQ    LF82E   
       DEX            
       STX    $AB     
LF82E: LDX    $D2     
       BEQ    LF835   
       DEX            
       STX    $D2     
LF835: LDX    #$03    
LF837: LDA    $F1     
       STA    $ED,X   
       DEX            
       BNE    LF837   
       STX    $CE     
       LDA    #$1F    
       SEC            
       SBC    $D4     
       STA    $CB     
       LDA    #$0A    
       STA    $C9     
       LDA    $81     
       AND    #$03    
       BNE    LF85D   
       INC    $A9     
       LDA    $A9     
       CMP    #$03    
       BCC    LF85B   
       LDA    #$03    
LF85B: STA    $A9     
LF85D: LDA    $A9     
       TAY            
       BIT    REFP1   
       BMI    LF865   
       INY            
LF865: STY    $CD     
       LDY    $A4     
       LDA    #$FC    
       STA    $99     
       LDX    $80     
       LDA    LFCE4,X 
       STA    $98     
       LDA    ($98),Y 
       STA    $F5     
       LDA    $E8     
       CMP    #$40    
       BCS    LF89B   
       LDY    #$0A    
       STY    $CA     
       LDY    #$15    
       STY    $CC     
       CMP    #$20    
       BCC    LF88E   
       DEC    $CC     
       EOR    #$3F    
LF88E: LSR            
       LDY    $8F     
       CPY    #$55    
       BCC    LF897   
       LDA    #$00    
LF897: AND    $F4     
       STA    $CE     
LF89B: LDX    $AC     
       BEQ    LF8A5   
       DEX            
       STX    $AC     
       JMP    LF903   
LF8A5: DEX            
       STX    $AA     
       BIT    $B1     
       BMI    LF8AF   
       JMP    LF999   
LF8AF: LDA    $F5     
       LSR            
       BCS    LF8FC   
       LDA    $DF     
       SEC            
       SBC    #$18    
       CMP    #$22    
       BCS    LF8C5   
       LDA    #$01    
       STA    $CD     
       LDA    #$00    
       STA    $CE     
LF8C5: LDA    $DF     
       CMP    #$0C    
       BCC    LF8DC   
       LDA    #$64    
       BIT    SWCHB   
       BVC    LF8D4   
       LDA    #$79    
LF8D4: STA    $F8     
       LDA    $8F     
       CMP    $F8     
       BCC    LF8FC   
LF8DC: LDY    $D2     
       BNE    LF8F8   
       LDA    #$50    
       STA    $D2     
       LDA    $DF     
       CMP    #$30    
       BCC    LF8F8   
       LDA    $D3     
       BEQ    LF8F8   
       SED            
       SEC            
       SBC    #$01    
       STA    $D3     
       BNE    LF8F8   
       DEC    $B0     
LF8F8: CLD            
       JMP    LF999   
LF8FC: LDA    #$46    
       STA    $AB     
       LSR            
       STA    $AC     
LF903: LDA    #$08    
       STA    $CA     
       LDX    #$00    
       STX    $CD     
       STX    $D4     
       STX    $B1     
       LDA    $AC     
       LSR            
       STA    $CE     
       LDA    $AA     
       BMI    LF956   
       LDA    $8F     
       LDX    $AA     
       CPX    #$01    
       BEQ    LF932   
       CLC            
       ADC    #$04    
       TAX            
       LDA    $81     
       AND    #$01    
       BNE    LF92F   
       TXA            
       SEC            
       SBC    #$09    
       TAX            
LF92F: JMP    LF948   
LF932: CLC            
       ADC    #$05    
       TAX            
       LDA    $81     
       AND    #$01    
       BNE    LF948   
       TXA            
       SEC            
       SBC    #$06    
       CMP    #$64    
       BCS    LF947   
       CLC            
       ADC    #$02    
LF947: TAX            
LF948: STX    $8F     
       LDA    $AA     
       BMI    LF956   
       BEQ    LF976   
       LSR            
       BCS    LF967   
       JMP    LF98B   
LF956: LDA    $F5     
       LSR            
       BCS    LF985   
       LDA    $DF     
       CMP    #$39    
       BCS    LF98B   
       LDA    $8F     
       CMP    #$5A    
       BCC    LF976   
LF967: LDA    #$01    
       STA    $AA     
       LDA    #$01    
       STA    $D8     
       LDA    #$04    
       STA    $D6     
       JMP    LF999   
LF976: LDA    #$01    
       STA    $D8     
       LDA    #$04    
       STA    $D6     
       LDA    #$00    
       STA    $AA     
       JMP    LF999   
LF985: LDA    $E8     
       CMP    #$20    
       BCC    LF976   
LF98B: LDX    #$00    
       STX    $D6     
       DEX            
       STX    $D8     
       LDA    #$02    
       STA    $AA     
       JMP    LF999   
LF999: LDX    #$03    
LF99B: LDY    $AC,X   
       BEQ    LF9C5   
       DEY            
       STY    $AC,X   
       CPY    #$27    
       BCC    LF9B2   
       LDA    #$0C    
       STA    $CA     
       LDA    #$1F    
       STA    $CC     
       LDA    #$05    
       STA    $CE     
LF9B2: LDY    $E8,X   
       BEQ    LF9D5   
       INY            
       INY            
       STY    $E8,X   
       LDA    $F2     
       STA    $ED,X   
       LDA    #$00    
       STA    $B1,X   
       JMP    LF9D5   
LF9C5: LDA    $B1,X   
       BPL    LF9D5   
       LDA    #$00    
       STA    $D4     
       LDA    #$10    
       STA    $D6     
       LDA    #$30    
       STA    $AC,X   
LF9D5: DEX            
       BNE    LF99B   
       LDX    #$01    
       LDA    $AC     
       BEQ    LF9E0   
       LDX    #$00    
LF9E0: LDA    $D5,X   
       CPX    #$01    
       BNE    LF9FB   
       LDA    $84     
       AND    #$03    
       CMP    #$03    
       LDA    $D6     
       BCS    LF9FB   
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $F5     
       SEC            
       LDA    $D6     
       SBC    $F5     
LF9FB: STA    $F6     
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $D7,X   
       LDA    $F6     
       AND    #$0F    
       CLC            
       ADC    $D9,X   
       CMP    #$10    
       BCC    LFA10   
       INC    $D7,X   
LFA10: AND    #$0F    
       STA    $D9,X   
       DEX            
       BPL    LF9E0   
       BIT    $B0     
       BMI    LFA45   
       LDA    $84     
       AND    #$02    
       BNE    LFA28   
       LDA    $8F     
       CLC            
       ADC    $D7     
       STA    $8F     
LFA28: LDA    $84     
       AND    #$01    
       BNE    LFA35   
       LDA    $8F     
       SEC            
       SBC    $D7     
       STA    $8F     
LFA35: LDA    $8F     
       CMP    #$14    
       BCS    LFA3D   
       LDA    #$14    
LFA3D: CMP    #$7E    
       BCC    LFA43   
       LDA    #$7D    
LFA43: STA    $8F     
LFA45: LDA    $DD     
       SEC            
       SBC    $D8     
       STA    $F5     
       CMP    #$A0    
       BNE    LFA55   
       LDA    #$00    
       JMP    LFA65   
LFA55: CMP    #$F0    
       BCC    LFA65   
       SEC            
       LDA    #$00    
       SBC    $F5     
       STA    $F5     
       SEC            
       LDA    #$A0    
       SBC    $F5     
LFA65: STA    $DD     
       LDA    $F3     
       BEQ    LFA82   
       SEC            
       LDA    $DF     
       SBC    $D8     
       CMP    #$F0    
       BCC    LFA78   
       LDA    #$00    
       STA    $E8     
LFA78: STA    $DF     
       BNE    LFA7F   
       JMP    LFA94   
LFA7F: JMP    LFADD   
LFA82: SEC            
       LDA    $E8     
       SBC    $D8     
       CMP    #$F0    
       BCC    LFA8D   
       LDA    #$00    
LFA8D: STA    $E8     
       BEQ    LFA94   
       JMP    LFB22   
LFA94: LDX    #$00    
       STX    $B1     
       DEX            
       STX    $F4     
       INC    $A4     
       LDA    $A4     
       AND    #$3F    
       STA    $A4     
       TAY            
       LDA    #$FC    
       STA    $99     
       LDX    $80     
       LDA    LFCE4,X 
       STA    $98     
       LDA    ($98),Y 
       BEQ    LFAB9   
       LSR            
       BCS    LFAC6   
       JMP    LFAD4   
LFAB9: LDA    #$00    
       STA    $F3     
       STA    $F4     
       LDA    #$9F    
       STA    $E8     
       JMP    LFB22   
LFAC6: LDX    #$00    
       STX    $F3     
       DEX            
       STX    $F4     
       LDA    #$9F    
       STA    $E8     
       JMP    LFB22   
LFAD4: STA    $F3     
       LDA    #$B7    
       STA    $DF     
       JMP    LFADD   
LFADD: LDA    #$FF    
       STA    $A2     
       LDA    #$FE    
       STA    $A3     
       LDA    $DF     
       CMP    #$A0    
       BCC    LFAF3   
       SBC    #$A0    
       LSR            
       LSR            
       TAX            
       JMP    LFB06   
LFAF3: CMP    #$18    
       BCC    LFAFC   
       LDX    #$06    
       JMP    LFB06   
LFAFC: LDX    #$00    
       STX    $F4     
       LSR            
       LSR            
       CLC            
       ADC    #$07    
       TAX            
LFB06: LDY    #$01    
LFB08: LDA.wy $00A2,Y 
       AND    LFCF4,X 
       STA.wy $00A2,Y 
       DEY            
       BPL    LFB08   
       LDA    $DF     
       SEC            
       SBC    #$18    
       CMP    #$E0    
       BCC    LFB20   
       SEC            
       SBC    #$60    
LFB20: STA    $E8     
LFB22: LDX    $D6     
       CPX    #$20    
       BCC    LFB52   
       LDA    #$3F    
       BIT    SWCHB   
       BPL    LFB30   
       LSR            
LFB30: STA    $F5     
       LDA    $81     
       AND    $F5     
       BNE    LFB3A   
       INC    $A5     
LFB3A: LDA    $A5     
       AND    #$0F    
       STA    $A5     
       TAY            
       LDX    $80     
       LDA    #$FD    
       STA    $99     
       LDA    LFCE8,X 
       STA    $98     
       LDA    ($98),Y 
       ORA    $D0     
       STA    $D0     
LFB52: JMP    LF01B   
LFB55: .byte $EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA
       .byte $EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA
       .byte $EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA
       .byte $EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA
       .byte $EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA
       .byte $EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA
       .byte $EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA
       .byte $EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA
       .byte $EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA
       .byte $EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA
       .byte $EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$03,$03,$02,$03,$02
       .byte $03,$02,$03,$00,$03,$02,$03,$03,$03,$02,$03,$02,$03,$03,$02,$02
       .byte $03,$02,$03,$03,$03,$02,$00,$02,$02,$02,$00,$02,$02,$02,$00,$02
       .byte $02,$03,$00,$03,$03,$03,$02,$02,$02,$03,$02,$03,$02,$03,$02,$03
       .byte $03,$03,$02,$03,$03,$03,$02,$03,$03,$03,$03,$03,$03,$02,$02,$03
       .byte $03,$03,$02,$03,$02,$03,$02,$03,$02,$02,$03,$03,$03,$02,$03,$03
       .byte $03,$02,$02,$02,$02,$02,$03,$03,$03,$02,$03,$03,$03,$02,$03,$03
       .byte $03,$02,$03,$03,$03,$02,$03,$03,$02,$02,$03,$03,$02,$02,$03,$03
       .byte $03,$02,$03,$03,$03,$02,$03,$03,$03,$03,$02,$02,$03,$02,$00,$03
       .byte $03,$02,$02,$03,$03,$02,$03,$03,$03,$02,$03,$03,$03,$02,$03,$03
       .byte $03,$02,$03,$03,$03,$02,$03,$03,$03,$02,$03,$03,$03,$02,$03,$03
       .byte $03,$02,$03,$02,$02,$02,$02,$00,$03,$02,$03,$02,$03,$03,$03,$00
       .byte $02,$03,$03,$02,$03,$02,$02,$03,$03,$03,$03,$02,$03,$02,$02,$03
       .byte $03,$02,$03,$02,$02,$03,$03,$02,$03,$02,$03,$02,$02,$02,$03,$00
       .byte $03,$03,$03,$02,$03,$02,$02,$00,$02,$02,$03,$03,$03,$03,$02
LFCE4: .byte $00,$26,$6C,$AC
LFCE8: .byte $17,$17,$27,$37
LFCEC: .byte $0B,$0B,$0F,$13
LFCF0: .byte $00,$04,$02,$01
LFCF4: .byte $FC,$F8,$F0,$E0,$C0,$80,$FF,$03,$07,$0F,$1F,$3F,$7F
LFD01: .byte $00,$10,$20,$20,$40
LFD06: .byte $00,$90,$80,$80,$60,$04,$04,$04,$04,$04,$04,$04,$04,$04,$00,$02
       .byte $04,$00,$01,$02,$04,$05,$02,$01,$02,$01,$04,$02,$01,$04,$02,$01
       .byte $02,$00,$02,$02,$04,$04,$02,$02,$02,$02,$04,$01,$01,$04,$02,$01
       .byte $02,$00,$01,$02,$04,$05,$02,$01,$02,$01,$04,$02,$01,$04,$02,$01
       .byte $02
LFD47: LDA    #$00    
       STA    $9C     
       STA    $F1     
       LDA    #$FF    
       STA    $9D     
       LDA    #$C2    
       STA    $9A     
       LDA    #$FE    
       STA    $9B     
       LDA    #$FE    
       STA    $BA     
       STA    $BC     
       STA    $BE     
       STA    $C0     
       STA    $C2     
       STA    $93     
       STA    $95     
       LDA    #$00    
       LDX    $80     
       CPX    #$03    
       BNE    LFD75   
       LDA    $82     
       AND    #$3F    
LFD75: STA    $A4     
       AND    #$0F    
       STA    $A5     
       LDA    LF0ED,X 
       STA    $D3     
       LDA    #$7D    
       STA    $8F     
       LDA    #$01    
       STA    $C3     
       STA    $C4     
       STA    $C5     
       LDX    #$03    
LFD8E: LDA    #$00    
       STA    $F1,X   
       DEX            
       BPL    LFD8E   
       RTS            

LFD96: JSR    LFDBD   
       STA    WSYNC   
       STA    HMOVE   
       RTS            

LFD9E: CLC            
       ADC    #$2E    
       TAY            
       AND    #$0F    
       STA    $F5     
       TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       CLC            
       ADC    $F5     
       CMP    #$0F    
       BCC    LFDB6   
       SBC    #$0F    
       INY            
LFDB6: EOR    #$07    
       ASL            
LFDB9: ASL            
LFDBA: ASL            
       ASL            
LFDBC: RTS            

LFDBD: JSR    LFD9E   
       STA    HMP0,X  
       STA    WSYNC   
LFDC4: DEY            
       BPL    LFDC4   
       STA    RESP0,X 
       RTS            

LFDCA: LDA    $82     
       ASL            
       ASL            
       ASL            
       EOR    $82     
       ASL            
       ROL    $82     
       LDA    $82     
       RTS            

LFDD7: .byte $00,$01,$01,$00,$00
LFDDC: .byte $01,$01,$00,$00,$00,$00,$00,$00
LFDE4: .byte $FF,$FF,$FF,$FF,$7F,$1F,$0E,$04
LFDEC: .byte $7F,$7F,$3F,$0F,$03,$00,$00,$00,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA
       .byte $EA,$EA,$EA,$EA,$78,$CC,$CC,$CC,$CC,$CC,$CC,$78,$78,$30,$30,$30
       .byte $30,$30,$70,$30,$FC,$C0,$C0,$78,$0C,$0C,$8C,$78,$78,$8C,$0C,$18
       .byte $18,$0C,$8C,$78,$18,$18,$18,$FC,$98,$58,$38,$18,$F8,$8C,$0C,$0C
       .byte $F8,$C0,$C0,$FC,$78,$CC,$CC,$CC,$F8,$C0,$C4,$78,$30,$30,$30,$30
       .byte $18,$0C,$84,$FC,$78,$CC,$CC,$78,$78,$CC,$CC,$78,$78,$8C,$0C,$7C
       .byte $CC,$CC,$CC,$78,$00,$00,$00,$00,$00,$00,$00,$00
LFE58: .byte $00,$AD,$A9,$E9,$A9,$ED,$41,$0F
LFE60: .byte $00,$50,$58,$5C,$56,$53,$11,$F0
LFE68: .byte $00,$BA,$8A,$BA,$A2,$3A,$80,$FE
LFE70: .byte $00,$E9,$AB,$AF,$AD,$E9,$00,$00
LFE78: .byte $7B,$90,$A5,$00,$04,$0A,$0A,$0C,$18,$30,$FC,$FD,$A1,$40,$11,$21
       .byte $08,$31,$65,$B0,$31,$04,$7E,$7E,$00,$04,$0A,$0A,$0C,$18,$30,$FD
       .byte $FD,$A0,$41,$11,$20,$09,$B1,$64,$31,$31,$04,$7E,$7E,$00,$04,$0A
       .byte $0A,$0C,$18,$30,$FD,$FC,$A1,$41,$10,$21,$09,$30,$E5,$31,$30,$04
       .byte $7E,$7E
LFEBA: .byte $10,$10,$10,$00,$20,$20,$00,$10,$00,$04,$0A,$0A,$0C,$18,$30,$FC
       .byte $FD,$A1,$41,$11,$20,$09,$31,$E5,$31,$30,$04,$7E,$7E
LFED7: .byte $6B,$7B,$8B,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA
       .byte $EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA
       .byte $EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$00
LFF01: .byte $00,$00,$40,$30,$78,$FC,$06,$04,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$C0,$60,$30,$78,$FC,$07,$02,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$40,$30,$78,$FC,$36,$E4,$00,$00,$00,$00,$00,$00,$00,$80
       .byte $11,$53,$FE,$53,$11,$10,$38,$3C,$3E,$62,$20,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00
LFF45: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$78,$F8,$F8,$F8,$F8,$F8,$A8
       .byte $80,$80,$80,$00,$00
LFF5A: .byte $82,$82,$82,$82,$82,$82,$82,$82,$82,$FE,$82,$C6,$82,$AA,$82,$92
       .byte $82,$AA,$82,$C6,$82,$FE,$44,$44,$44,$6C,$44,$54,$44,$54,$54,$54
       .byte $44,$54,$44,$6C,$44,$44,$44,$44,$44,$7C,$28,$28,$28,$28,$28,$28
       .byte $28,$38,$28,$28,$28,$28,$28,$28,$FE
LFF93: .byte $10,$1A,$18,$28,$28,$38,$38,$48,$48,$58,$68,$68,$78,$78,$88,$88
       .byte $FE,$10,$10,$90,$91,$12,$97,$8E,$7F,$8E,$87,$02,$81,$80,$00,$00
       .byte $FE,$10,$10,$90,$11,$92,$97,$0E,$FF,$8E,$07,$82,$81,$00,$00,$00
       .byte $FE,$10,$10,$10,$91,$92,$17,$8E,$FF,$0E,$87,$82,$01,$80,$00,$00
       .byte $EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA
       .byte $EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA
       .byte $EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$00,$F0,$00,$F0
