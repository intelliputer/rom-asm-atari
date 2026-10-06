; Disassembly of roms/VenetianBlinds_NTSC.bin
; Disassembled Tue Oct  6 15:24:49 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/VenetianBlinds_NTSC.bin
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
PF2     =  $0F
RESP0   =  $10
RESP1   =  $11
AUDV0   =  $19
GRP0    =  $1B
GRP1    =  $1C
ENAM0   =  $1D
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
       LDA    #$01    
       STA    CTRLPF  
       JSR    LF1F6   
       LDA    $82     
       BNE    LF01B   
       LDX    #$01    
       STX    $82     
LF01B: LDX    #$04    
LF01D: LDA    LF740,X 
       EOR    $86     
       AND    $87     
       STA    $88,X   
       CPX    #$04    
       BCS    LF02C   
       STA    COLUP0,X
LF02C: DEX            
       BPL    LF01D   
       LDA    #$36    
       LDX    #$00    
       JSR    LF231   
       LDA    #$3F    
       INX            
       JSR    LF231   
       LDA    #$50    
       LDX    #$02    
       JSR    LF20A   
LF043: LDA    INTIM   
       BNE    LF043   
       STA    WSYNC   
       STA    VBLANK  
       STA    HMCLR   
       STA    CXCLR   
       LDX    #$03    
LF052: STA    WSYNC   
       DEX            
       BPL    LF052   
       LDA    #$00    
       STA    NUSIZ0  
       LDA    #$07    
       STA    NUSIZ1  
       LDA    #$00    
       STA    COLUP0  
       LDA    #$14    
       STA    COLUP1  
       STA    WSYNC   
       LDA    #$24    
       STA    GRP0    
       LDA    #$81    
       STA    GRP1    
       LDA    #$FF    
       STA    PF2     
       LDY    #$00    
       LDX    #$B0    
LF079: LDA    $C2     
       AND    #$F8    
       STA    $C3     
       CPX    $C3     
       BCC    LF092   
       STA    WSYNC   
       TYA            
       AND    #$07    
       ASL            
       STA    COLUPF  
       INY            
       DEX            
       BNE    LF079   
       JMP    LF0E9   
LF092: LDA    $C2     
       AND    #$07    
       TAY            
       ASL            
       ASL            
       ASL            
       STA    $8D     
LF09C: STA    WSYNC   
       LDA    ($8D),Y 
       STA    COLUPF  
       DEX            
       BEQ    LF0E9   
       INY            
       CPY    #$08    
       BCC    LF09C   
       LDA    $C2     
       LSR            
       LSR            
       LSR            
       TAY            
LF0B0: STA    WSYNC   
       LDA    #$0E    
       STA    COLUPF  
       TYA            
       LSR            
       BCC    LF0BE   
       LDA    #$00    
       STA    COLUPF  
LF0BE: DEX            
       BEQ    LF0E9   
       DEY            
       BPL    LF0B0   
LF0C4: LDA    #$00    
       CPX    #$7C    
       BCS    LF0D0   
       CPX    #$10    
       BCC    LF0D0   
       LDA    #$02    
LF0D0: STA    WSYNC   
       STA    ENAM0   
       LDA    LF2CE,X 
       STA    GRP1    
       LDA    LF23E,X 
       STA    COLUP1  
       LDA    #$12    
       STA    COLUPF  
       LDA    #$0E    
       STA    PF2     
       DEX            
       BNE    LF0C4   
LF0E9: STA    WSYNC   
       LDA    #$18    
       STA    GRP0    
       STA    WSYNC   
       STX    GRP0    
       STX    GRP1    
       STX    PF2     
       STX    ENAM0   
       LDX    #$03    
LF0FB: STA    WSYNC   
       DEX            
       BPL    LF0FB   
       LDA    $88     
       STA    COLUP0  
       STA    COLUP1  
       STA    WSYNC   
       LDA    $8C     
       STA    COLUBK  
       LDX    #$00    
       STX    HMCLR   
       STX    REFP0   
       STX    REFP1   
       INX            
       STX    NUSIZ0  
       STX    NUSIZ1  
       STA    RESP0   
       STA    RESP1   
       LDA    #$10    
       STA    HMP1    
       LDX    #$07    
LF123: STA    WSYNC   
       STA    HMOVE   
       LDA    LF35E,X 
       STA    GRP0    
       LDA    LF366,X 
       STA    GRP1    
       NOP            
       LDA    LF376,X 
       TAY            
       LDA    LF36E,X 
       STA    GRP0    
       STY    GRP1    
       STA    HMCLR   
       DEX            
       BPL    LF123   
       LDA    #$20    
       STA    TIM64T  
       LDA    $81     
       AND    #$01    
       TAX            
       LDA    $82     
       ASL            
       ASL            
       ASL            
       EOR    $82     
       ASL            
       ROL    $82     
LF156: LDA    INTIM   
       BNE    LF156   
       LDY    #$82    
       STY    WSYNC   
       STY    VBLANK  
       STY    VSYNC   
       STY    WSYNC   
       STY    WSYNC   
       STY    WSYNC   
       STA    VSYNC   
       INC    $81     
       LDY    #$FF    
       LDA    SWCHB   
       AND    #$08    
       BNE    LF178   
       LDY    #$0F    
LF178: TYA            
       LDY    #$00    
       BIT    $C0     
       BPL    LF183   
       AND    #$F7    
       LDY    $C0     
LF183: STY    $86     
       ASL    $86     
       STA    $87     
       LDA    #$30    
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
       BEQ    LF1A6   
       LDA    #$00    
       STA    $C0     
LF1A6: LDA    SWCHB   
       LSR            
       BCS    LF1B1   
       LDX    #$C0    
       JMP    LF004   
LF1B1: LDY    #$00    
       LSR            
       BCS    LF1CC   
       LDA    $83     
       BEQ    LF1BE   
       DEC    $83     
       BPL    LF1CE   
LF1BE: INC    $80     
       LDA    $80     
       AND    #$01    
       STA    $80     
       STA    $C0     
       LDY    #$1E    
       STY    $C1     
LF1CC: STY    $83     
LF1CE: LDA    $C1     
       BEQ    LF1D5   
       JMP    LF01B   
LF1D5: LDA    $84     
       LSR            
       BCS    LF1DC   
       INC    $C2     
LF1DC: LSR            
       BCS    LF1E9   
       DEC    $C2     
       LDY    $C2     
       CPY    #$FF    
       BNE    LF1E9   
       INC    $C2     
LF1E9: LDA    $C2     
       CMP    #$A0    
       BCC    LF1F3   
       LDA    #$A0    
       STA    $C2     
LF1F3: JMP    LF01B   
LF1F6: LDX    #$01    
LF1F8: LDA    #$04    
       STA    AUDV0,X 
       DEX            
       BPL    LF1F8   
       LDX    #$01    
       LDA    #$F7    
LF203: STA    $8D,X   
       DEX            
       DEX            
       BPL    LF203   
       RTS            

LF20A: JSR    LF231   
       STA    WSYNC   
       STA    HMOVE   
       RTS            

LF212: CLC            
       ADC    #$2E    
       TAY            
       AND    #$0F    
       STA    $C3     
       TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       CLC            
       ADC    $C3     
       CMP    #$0F    
       BCC    LF22A   
       SBC    #$0F    
       INY            
LF22A: EOR    #$07    
       ASL            
       ASL            
       ASL            
       ASL            
       RTS            

LF231: JSR    LF212   
       STA    HMP0,X  
       STA    WSYNC   
LF238: DEY            
       BPL    LF238   
       STA    RESP0,X 
       RTS            

LF23E: .byte $12,$12,$12,$12,$12,$12,$12,$12,$12,$12,$12,$12,$12,$12,$12,$12
       .byte $D4,$D4,$D4,$D4,$D4,$D4,$D4,$D4,$D4,$D4,$D4,$D4,$D4,$D4,$D4,$D4
       .byte $D4,$D4,$D4,$D4,$D4,$D4,$D4,$D4,$D4,$D4,$D4,$D4,$D4,$D4,$D4,$D4
       .byte $D4,$D4,$D4,$D4,$D4,$D4,$D4,$D4,$D4,$D4,$D4,$D4,$D4,$D4,$D4,$D4
       .byte $D4,$D4,$D4,$D4,$10,$10,$D4,$D4,$D4,$D4,$D4,$D4,$D4,$D4,$D4,$D4
       .byte $D4,$D4,$D4,$D4,$D4,$D4,$E4,$E4,$E4,$E4,$F4,$F4,$F4,$F4,$24,$24
       .byte $28,$28,$38,$38,$48,$48,$58,$58,$68,$68,$78,$78,$88,$88,$88,$88
       .byte $88,$88,$88,$88,$88,$88,$88,$88,$88,$88,$88,$88,$12,$12,$12,$12
       .byte $12,$12,$12,$12,$12,$12,$12,$12,$12,$12,$12,$12,$12,$12,$12,$12
LF2CE: .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$00,$00
       .byte $80,$C4,$EE,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
LF35E: .byte $00,$AD,$A9,$E9,$A9,$ED,$41,$0F
LF366: .byte $00,$50,$58,$5C,$56,$53,$11,$F0
LF36E: .byte $00,$BA,$8A,$BA,$A2,$3A,$80,$FE
LF376: .byte $00,$E9,$AB,$AF,$AD,$E9,$00,$00,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$00,$02,$04,$06,$08,$0A
       .byte $0C,$0E,$00,$00,$02,$04,$06,$08,$0A,$0E,$00,$00,$00,$02,$04,$08
       .byte $0A,$0E,$00,$00,$00,$00,$02,$06,$0A,$0E,$00,$00,$00,$00,$00,$02
       .byte $0A,$0E,$00,$00,$00,$00,$00,$00,$06,$0E,$00,$00,$00,$00,$00,$00
       .byte $00,$0E,$00,$00,$00,$00,$00,$00,$00,$00
LF740: .byte $48,$48,$00,$24,$00,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$00,$F0,$FF,$FF
