; Disassembly of roms/Minesweeper.bin
; Disassembled Tue Oct  6 15:21:51 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Minesweeper.bin
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
REFP1   =  $0C
PF0     =  $0D
PF1     =  $0E
PF2     =  $0F
RESP0   =  $10
RESP1   =  $11
RESBL   =  $14
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
SWCHA   =  $0280
SWACNT  =  $0281
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296

       ORG $F000

START:
       SEI            
       CLD            
       LDA    #$6F    
       STA    $B8     
       STA    $B9     
       LDX    #$FF    
       TXS            
       LDA    #$00    
       STA    HMCLR   
       STA    ENAM0   
       STA    ENAM1   
       STA    ENABL   
       STA    GRP0    
       STA    GRP1    
       STA    COLUP0  
       STA    COLUP1  
       STA    COLUBK  
       LDA    #$00    
       STA    SWACNT  
       LDA    #$00    
       STA    $80     
       STA    $BB     
       LDA    #$00    
       STA    $B4     
       LDA    #$00    
       STA    $B5     
       LDA    #$FF    
       STA    $B6     
       LDA    #$04    
       STA    $81     
       LDA    #$05    
       STA    $B7     
       STA    $BC     
       LDX    #$00    
LF042: LDA    LFFAE,X 
       STA    $C0,X   
       STA    $E0,X   
       INX            
       CMP    #$60    
       BNE    LF042   
       LDX    #$23    
       LDA    #$40    
LF052: STA    $90,X   
       DEX            
       BPL    LF052   
LF057: LDA    $B8     
       ASL            
       EOR    $B8     
       ASL            
       ASL            
       PHP            
       ROL    $B9     
       ROL    $B8     
       PLP            
       LDA    #$02    
       STA    WSYNC   
       STA    VSYNC   
       STA    VBLANK  
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    VSYNC   
       LDX    #$35    
       LDA    SWCHB   
       AND    #$08    
       BNE    LF081   
       LDX    #$2B    
LF081: STX    TIM64T  
       LDA    #$00    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       LDA    #$31    
       STA    CTRLPF  
       LDA    #$00    
       STA    VDELP0  
       STA    VDELP1  
       STA    WSYNC   
       LDX    #$06    
LF09A: DEX            
       BNE    LF09A   
       STA    RESP0   
       LDX    #$02    
LF0A1: DEX            
       BNE    LF0A1   
       STA    RESP1   
       LDA    #$30    
       STA    HMP0    
       LDA    #$D0    
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       STA    WSYNC   
       STA    HMCLR   
       LDA    #$00    
       STA    $BA     
       LDA    SWCHB   
       AND    #$01    
       BNE    LF0DC   
LF0C1: LDA    #$03    
       STA    $81     
       LDA    #$00    
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$FF    
       STA    $B6     
       LDA    $BC     
       STA    $B7     
       LDX    #$23    
LF0D5: LDA    #$40    
       STA    $90,X   
       DEX            
       BPL    LF0D5   
LF0DC: LDA    $81     
       CMP    #$04    
       BNE    LF0E8   
       LDA    REFP1   
       AND    #$80    
       BEQ    LF0C1   
LF0E8: LDA    SWCHB   
       AND    #$02    
       BEQ    LF0F6   
       LDA    #$00    
       STA    $BD     
       JMP    LF11D   
LF0F6: LDA    $81     
       CMP    #$04    
       BEQ    LF104   
       LDA    #$04    
       STA    $81     
       LDA    #$0F    
       STA    $BD     
LF104: LDA    $BD     
       BEQ    LF10D   
       DEC    $BD     
       JMP    LF11D   
LF10D: LDA    #$0F    
       STA    $BD     
       INC    $BC     
       LDA    $BC     
       CMP    #$09    
       BMI    LF11D   
       LDA    #$01    
       STA    $BC     
LF11D: LDA    $81     
       CMP    #$03    
       BEQ    LF126   
       JMP    LF194   
LF126: LDA    #$00    
       STA    $BF     
       LDY    #$03    
LF12C: LDA    $B8     
       ASL            
       EOR    $B8     
       ASL            
       ASL            
       PHP            
       ROL    $B9     
       ROL    $B8     
       PLP            
       ROL    $BF     
       DEY            
       BNE    LF12C   
       LDA    $BF     
       CMP    #$06    
       BCS    LF126   
       STA    $B4     
       LDA    #$00    
       STA    $BF     
       LDY    #$03    
LF14C: LDA    $B8     
       ASL            
       EOR    $B8     
       ASL            
       ASL            
       PHP            
       ROL    $B9     
       ROL    $B8     
       PLP            
       ROL    $BF     
       DEY            
       BNE    LF14C   
       LDA    $BF     
       CMP    #$06    
       BCS    LF126   
       STA    $B5     
       LDA    $B5     
       ASL            
       CLC            
       ADC    $B5     
       ASL            
       ADC    $B4     
       TAX            
       LDA    $90,X   
       CMP    #$49    
       BEQ    LF194   
       LDA    #$49    
       STA    $90,X   
       DEC    $B7     
       BNE    LF194   
       LDA    $BC     
       STA    $B7     
       LDA    #$00    
       STA    $81     
       LDA    #$00    
       STA    $B4     
       STA    $B5     
       STA    COLUBK  
       LDA    #$0E    
       STA    COLUP0  
       STA    COLUP1  
LF194: LDA    SWCHB   
       AND    #$08    
       BEQ    LF1A8   
       LDA    #$54    
       LDX    $B6     
       BEQ    LF1A3   
       LDA    #$64    
LF1A3: STA    COLUPF  
       JMP    LF1B2   
LF1A8: LDA    #$B6    
       LDX    $B6     
       BEQ    LF1B0   
       LDA    #$34    
LF1B0: STA    COLUPF  
LF1B2: LDA    $81     
       BEQ    LF1B9   
       JMP    LF322   
LF1B9: LDA    SWCHA   
       AND    #$F0    
       CMP    #$F0    
       BNE    LF1C6   
       LDA    #$00    
       STA    $80     
LF1C6: LDA    REFP1   
       AND    #$80    
       BEQ    LF1D0   
       LDA    #$00    
       STA    $BB     
LF1D0: LDA    $80     
       BEQ    LF1DD   
       DEC    $80     
       LDA    $BB     
       BEQ    LF243   
       JMP    LF322   
LF1DD: LDA    SWCHA   
       TAX            
       AND    #$10    
       BNE    LF1F5   
       LDA    #$0F    
       STA    $80     
       LDA    #$00    
       STA    $BB     
       DEC    $B5     
       BPL    LF1F5   
       LDA    #$06    
       STA    $B5     
LF1F5: TXA            
       AND    #$20    
       BNE    LF20E   
       LDA    #$0F    
       STA    $80     
       LDA    #$00    
       STA    $BB     
       INC    $B5     
       LDA    $B5     
       CMP    #$07    
       BMI    LF20E   
       LDA    #$00    
       STA    $B5     
LF20E: TXA            
       AND    #$40    
       BNE    LF223   
       LDA    #$0F    
       STA    $80     
       LDA    #$00    
       STA    $BB     
       DEC    $B4     
       BPL    LF223   
       LDA    #$06    
       STA    $B4     
LF223: TXA            
       AND    #$80    
       BNE    LF23C   
       LDA    #$0F    
       STA    $80     
       LDA    #$00    
       STA    $BB     
       INC    $B4     
       LDA    $B4     
       CMP    #$07    
       BMI    LF23C   
       LDA    #$00    
       STA    $B4     
LF23C: LDA    $BB     
       BEQ    LF243   
       JMP    LF322   
LF243: LDA    REFP1   
       AND    #$80    
       BEQ    LF24C   
       JMP    LF322   
LF24C: LDA    #$0F    
       STA    $BB     
       LDA    $B4     
       CMP    #$06    
       BEQ    LF25C   
       LDA    $B5     
       CMP    #$06    
       BNE    LF265   
LF25C: LDA    $B6     
       EOR    #$FF    
       STA    $B6     
       JMP    LF322   
LF265: LDA    $B5     
       ASL            
       CLC            
       ADC    $B5     
       ASL            
       ADC    $B4     
       TAX            
       LDA    $90,X   
       AND    #$40    
       BNE    LF278   
       JMP    LF322   
LF278: LDA    $B6     
       BNE    LF285   
       LDA    $90,X   
       EOR    #$80    
       STA    $90,X   
       JMP    LF322   
LF285: LDA    $90,X   
       BPL    LF28C   
       JMP    LF322   
LF28C: LDA    $90,X   
       AND    #$3F    
       CMP    #$09    
       BNE    LF2A1   
       LDA    $90,X   
       AND    #$BF    
       STA    $90,X   
       LDA    #$01    
       STA    $81     
       JMP    LF322   
LF2A1: LDY    #$00    
       LDA    $B4     
       BEQ    LF2CC   
       LDA    $B5     
       BEQ    LF2B4   
       LDA    $89,X   
       AND    #$3F    
       CMP    #$09    
       BNE    LF2B4   
       INY            
LF2B4: LDA    $8F,X   
       AND    #$3F    
       CMP    #$09    
       BNE    LF2BD   
       INY            
LF2BD: LDA    $B5     
       CMP    #$05    
       BEQ    LF2CC   
       LDA    $95,X   
       AND    #$3F    
       CMP    #$09    
       BNE    LF2CC   
       INY            
LF2CC: LDA    $B4     
       CMP    #$05    
       BEQ    LF2F7   
       LDA    $B5     
       BEQ    LF2DF   
       LDA    $8B,X   
       AND    #$3F    
       CMP    #$09    
       BNE    LF2DF   
       INY            
LF2DF: LDA    $91,X   
       AND    #$3F    
       CMP    #$09    
       BNE    LF2E8   
       INY            
LF2E8: LDA    $B5     
       CMP    #$05    
       BEQ    LF2F7   
       LDA    $97,X   
       AND    #$3F    
       CMP    #$09    
       BNE    LF2F7   
       INY            
LF2F7: LDA    $B5     
       BEQ    LF304   
       LDA    $8A,X   
       AND    #$3F    
       CMP    #$09    
       BNE    LF304   
       INY            
LF304: LDA    $B5     
       CMP    #$05    
       BEQ    LF313   
       LDA    $96,X   
       AND    #$3F    
       CMP    #$09    
       BNE    LF313   
       INY            
LF313: STY    $90,X   
       LDX    $B7     
       INX            
       STX    $B7     
       CPX    #$24    
       BNE    LF322   
       LDA    #$02    
       STA    $81     
LF322: LDX    $B4     
       LDA    LFFA0,X 
       TAX            
       STA    WSYNC   
LF32A: DEX            
       BNE    LF32A   
       STA    RESBL   
       LDX    $B4     
       LDA    LFFA7,X 
       STA    HMBL    
       STA    WSYNC   
       STA    HMOVE   
       STA    WSYNC   
       STA    HMCLR   
LF33E: LDY    INTIM   
       BNE    LF33E   
       STY    WSYNC   
       STY    VBLANK  
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDX    #$E4    
       LDA    SWCHB   
       AND    #$08    
       BNE    LF358   
       LDX    #$C0    
LF358: STX    $82     
       STA    WSYNC   
       DEC    $82     
       LDA    #$1F    
       STA    PF1     
       LDA    #$FF    
       STA    PF2     
       LDX    #$07    
LF368: STA    WSYNC   
       DEC    $82     
       DEX            
       BNE    LF368   
       LDA    #$10    
       STA    PF1     
       LDA    #$00    
       STA    PF2     
       JMP    LF400   
LF37A: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00
LF400: LDY    #$00    
       STA    WSYNC   
       DEC    $82     
LF406: LDX    $BA     
       LDA    $90,X   
       BPL    LF40E   
       LDA    #$0B    
LF40E: TAX            
       AND    #$40    
       BEQ    LF415   
       LDX    #$0A    
LF415: TXA            
       AND    #$0F    
       ASL            
       TAX            
       LDA    LFE80,X 
       STA.wy $0084,Y 
       LDA    LFE81,X 
       INY            
       STA.wy $0084,Y 
       INC    $BA     
       INY            
       CPY    #$0C    
       BNE    LF406   
       STA    WSYNC   
       LDY    #$07    
       LDA    ($84),Y 
       STA    $C1     
       LDA    ($86),Y 
       STA    $C5     
       LDA    ($88),Y 
       STA    $CA     
       LDA    ($8A),Y 
       STA    $CE     
       LDA    ($8C),Y 
       STA    $D2     
       LDA    ($8E),Y 
       STA    $D6     
       DEY            
LF44B: STA    WSYNC   
       LDA    ($88),Y 
       STA    $EA     
       LDA    ($86),Y 
       STA    $E5     
       LDA    ($84),Y 
       JSR.w  $00C0   
       STA    $E1     
       STA    WSYNC   
       LDA    ($8A),Y 
       STA    $EE     
       LDA    ($8C),Y 
       STA    $F2     
       LDA    ($8E),Y 
       JSR.w  $00C0   
       STA    $F6     
       DEY            
       BMI    LF496   
       STA    WSYNC   
       LDA    ($88),Y 
       STA    $CA     
       LDA    ($86),Y 
       STA    $C5     
       LDA    ($84),Y 
       JSR.w  $00E0   
       STA    $C1     
       STA    WSYNC   
       LDA    ($8A),Y 
       STA    $CE     
       LDA    ($8C),Y 
       STA    $D2     
       LDA    ($8E),Y 
       JSR.w  $00E0   
       STA    $D6     
       DEY            
       JMP    LF44B   
LF496: STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       LDA    $82     
       CLC            
       SBC    #$13    
       STA    $82     
       STA    WSYNC   
       DEC    $82     
       LDA    $BA     
       LDX    #$FF    
LF4AD: INX            
       CLC            
       SBC    #$06    
       BPL    LF4AD   
       LDA    #$00    
       STA    WSYNC   
       DEC    $82     
       CPX    $B5     
       BNE    LF4CB   
       LDX    $B4     
       CPX    #$06    
       BEQ    LF4CB   
       LDX    $81     
       CPX    #$00    
       BNE    LF4CB   
       LDA    #$02    
LF4CB: STA    ENABL   
       STA    WSYNC   
       DEC    $82     
       STA    WSYNC   
       DEC    $82     
       LDA    #$00    
       STA    ENABL   
       LDA    $BA     
       CMP    #$24    
       BEQ    LF4E2   
       JMP    LF400   
LF4E2: LDX    #$05    
LF4E4: STA    WSYNC   
       DEC    $82     
       DEX            
       BNE    LF4E4   
       LDA    #$1F    
       STA    PF1     
       LDA    #$FF    
       STA    PF2     
       LDX    #$07    
LF4F5: STA    WSYNC   
       DEC    $82     
       DEX            
       BNE    LF4F5   
       LDA    #$00    
       STA    PF1     
       LDA    #$00    
       STA    PF2     
       LDA    $81     
       CMP    #$01    
       BNE    LF50D   
       JMP    LF584   
LF50D: CMP    #$02    
       BNE    LF514   
       JMP    LF5B7   
LF514: LDA    LFE92   
       STA    $84     
       LDA    LFE93   
       STA    $85     
       LDA    $BC     
       ASL            
       TAX            
       LDA    LFE80,X 
       STA    $86     
       LDA    LFE81,X 
       STA    $87     
       LDA    #$00    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$00    
       STA    CTRLPF  
       LDA    #$0E    
       STA    COLUPF  
       STA    COLUP0  
       STA    COLUP1  
       STA    WSYNC   
       LDY    #$06    
LF542: DEY            
       BNE    LF542   
       STA    RESP0   
       STA    RESBL   
       STA    RESP1   
       DEC    $82     
       LDA    #$30    
       STA    HMP0    
       LDA    #$50    
       STA    HMP1    
       LDA    #$00    
       STA    HMBL    
       STA    WSYNC   
       STA    HMOVE   
       DEC    $82     
       LDY    #$07    
       LDX    #$14    
LF563: STA    WSYNC   
       DEC    $82     
       LDA    ($84),Y 
       STA    GRP0    
       TXA            
       ROR            
       TAX            
       ROL            
       ROL            
       STA    ENABL   
       LDA    ($86),Y 
       STA    GRP1    
       STA    WSYNC   
       DEC    $82     
       DEY            
       BPL    LF563   
       STA    WSYNC   
       DEC    $82     
       JMP    LF651   
LF584: LDA    #$F8    
       STA    $84     
       LDA    #$FE    
       STA    $85     
       LDA    #$06    
       STA    $86     
       LDA    #$FF    
       STA    $87     
       LDA    #$14    
       STA    $88     
       LDA    #$FF    
       STA    $89     
       LDA    #$22    
       STA    $8A     
       LDA    #$FF    
       STA    $8B     
       LDA    #$30    
       STA    $8C     
       LDA    #$FF    
       STA    $8D     
       LDA    #$3E    
       STA    $8E     
       LDA    #$FF    
       STA    $8F     
       JMP    LF5E7   
LF5B7: LDA    #$4C    
       STA    $84     
       LDA    #$FF    
       STA    $85     
       LDA    #$5A    
       STA    $86     
       LDA    #$FF    
       STA    $87     
       LDA    #$68    
       STA    $88     
       LDA    #$FF    
       STA    $89     
       LDA    #$76    
       STA    $8A     
       LDA    #$FF    
       STA    $8B     
       LDA    #$84    
       STA    $8C     
       LDA    #$FF    
       STA    $8D     
       LDA    #$92    
       STA    $8E     
       LDA    #$FF    
       STA    $8F     
LF5E7: LDA    #$0D    
       STA    $BE     
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       LDA    #$01    
       STA    VDELP0  
       STA    VDELP1  
       DEC    $82     
       STA    WSYNC   
       LDY    #$07    
LF603: DEY            
       BNE    LF603   
       STA    RESP0   
       STA    RESP1   
       DEC    $82     
       LDA    #$E0    
       STA    HMP0    
       LDA    #$F0    
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
LF618: LDY    $BE     
       LDA    ($84),Y 
       STA    GRP0    
       STA    WSYNC   
       LDA    ($86),Y 
       STA    GRP1    
       LDA    ($88),Y 
       STA    GRP0    
       LDA    ($8A),Y 
       STA    $BF     
       LDA    ($8C),Y 
       TAX            
       LDA    ($8E),Y 
       TAY            
       LDA    $BF     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       DEC    $BE     
       BPL    LF618   
       LDA    #$00    
       STA    VDELP0  
       STA    VDELP1  
       STA    GRP0    
       STA    GRP1    
       LDA    $82     
       CLC            
       SBC    #$0E    
       STA    $82     
LF651: STA    WSYNC   
       DEC    $82     
       BNE    LF651   
       LDA    #$00    
       STA    COLUBK  
       STA    PF0     
       STA    PF1     
       STA    PF2     
       STA    GRP0    
       STA    GRP1    
       STA    WSYNC   
       LDX    #$29    
       LDA    SWCHB   
       AND    #$08    
       BNE    LF672   
       LDX    #$21    
LF672: STX    TIM64T  
LF675: LDA    INTIM   
       BNE    LF675   
       STA    WSYNC   
       JMP    LF057   
LF67F: .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
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
       .byte $FF
LFE80: .byte $98
LFE81: .byte $FE,$A0,$FE,$A8,$FE,$B0,$FE,$B8,$FE,$C0,$FE,$C8,$FE,$D0,$FE,$D8
       .byte $FE
LFE92: .byte $E8
LFE93: .byte $FE,$F0,$FE,$E0,$FE,$00,$3C,$66,$66,$66,$66,$66,$3C,$00,$7E,$18
       .byte $18,$18,$18,$78,$38,$00,$7E,$66,$60,$3C,$06,$66,$3C,$00,$3C,$66
       .byte $06,$1C,$06,$66,$3C,$00,$1E,$0C,$FF,$CC,$6C,$3C,$1C,$00,$3C,$66
       .byte $06,$3C,$60,$66,$7E,$00,$3C,$66,$66,$3C,$60,$66,$3C,$00,$18,$18
       .byte $18,$0C,$06,$66,$7E,$00,$3C,$66,$66,$3C,$66,$66,$3C,$00,$7E,$3C
       .byte $18,$18,$1C,$1E,$1C,$00,$3C,$7E,$7E,$7E,$3C,$10,$08,$00,$18,$00
       .byte $18,$0C,$06,$66,$3C,$72,$FA,$8A,$8A,$8A,$9B,$9B,$82,$82,$82,$8B
       .byte $89,$F9,$70,$28,$28,$28,$28,$28,$E8,$E8,$2A,$2A,$2F,$6D,$4D,$C8
       .byte $88,$BC,$BC,$A0,$A0,$A0,$A0,$B8,$B8,$A0,$A0,$A0,$A0,$BC,$BC,$38
       .byte $7C,$44,$44,$45,$45,$45,$45,$45,$45,$45,$45,$7D,$39,$47,$47,$E4
       .byte $A4,$B4,$14,$17,$17,$14,$14,$14,$14,$17,$17,$A5,$A5,$2C,$28,$39
       .byte $31,$39,$3D,$25,$25,$25,$25,$BD,$B9,$10,$10,$10,$10,$10,$10,$10
       .byte $38,$28,$6C,$44,$C6,$82,$82,$78,$FD,$85,$85,$85,$85,$85,$85,$85
       .byte $85,$85,$85,$FD,$79,$F0,$F8,$08,$08,$08,$08,$08,$08,$08,$08,$08
       .byte $08,$08,$08,$41,$63,$63,$77,$55,$5D,$49,$49,$41,$41,$41,$41,$41
       .byte $41,$7D,$7D,$11,$11,$11,$11,$11,$11,$11,$11,$11,$11,$7D,$7D,$05
       .byte $0D,$0C,$1C,$15,$35,$35,$65,$65,$45,$C5,$85,$85,$05
LFFA0: .byte $06,$07,$08,$09,$0A,$0C,$00
LFFA7: .byte $C0,$B0,$A0,$90,$80,$60,$00
LFFAE: .byte $A2,$FF,$86,$1B,$A2,$FF,$EA,$86,$1B,$A2,$FF,$86,$1B,$A2,$FF,$86
       .byte $1C,$A2,$FF,$86,$1C,$A2,$FF,$86,$1C,$60,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$00,$F0,$00,$F0
       .byte $00,$F0
