; Disassembly of roms/Blackjack (2).bin
; Disassembled Tue Oct  6 15:21:07 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Blackjack (2).bin
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
HMP0    =  $20
HMP1    =  $21
HMOVE   =  $2A
INPT0   =  $38
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
       LDX    #$0F    
       STX    AUDV1   
       STX    AUDF1   
       INX            
LF013: LDA    LF7F3,X 
       STA    $D0,X   
       LDY    #$F6    
       STY    $86,X   
       STY    $B1,X   
       INY            
       STY    $B7,X   
       DEX            
       BPL    LF013   
       STY    AUDV0   
       JSR    LF3DD   
       JSR    LF2E9   
       LDA    #$81    
       STA    PF2     
       LDA    #$01    
       LDX    #$06    
       STA    PF1     
       STA    CTRLPF  
       STX    NUSIZ0  
       STX    NUSIZ1  
       STA    WSYNC   
       DEX            
LF03F: DEX            
       BPL    LF03F   
       STA    RESP1   
       STA    RESP0   
       LDA    #$30    
       STA    HMP1    
       LDA    #$40    
       STA    HMP0    
       STA    WSYNC   
       STA    HMOVE   
LF052: LDA    #$02    
       LDY    #$82    
       STA    WSYNC   
       STY    VSYNC   
       STY    VBLANK  
       STA    WSYNC   
       STA    WSYNC   
       LDY    #$00    
       STA    WSYNC   
       STY    VSYNC   
       LDX    #$28    
       STX    TIM64T  
       JSR    LF27D   
       INC    $A7     
       LDA    $A7     
       BNE    LF07C   
       DEC    $F2     
       BNE    LF07C   
       LDX    #$FF    
       STX    $F3     
LF07C: AND    #$03    
       STA    $AF     
       BNE    LF08E   
       LDA    SWCHA   
       TAY            
       EOR    $E5     
       AND    $E5     
       STY    $E5     
       STA    $E6     
LF08E: DEC    $A3     
       BPL    LF09A   
       LDA    $E4     
       ORA    #$02    
       STA    $E4     
       INC    $A3     
LF09A: LDA    $E8     
       ASL            
       EOR    $E8     
       ASL            
       ASL            
       ROL    $E9     
       ROL    $E8     
       LDX    $9B     
       BEQ    LF0DA   
       LDA    $A3     
       BNE    LF0DA   
       CLC            
       ADC    #$03    
       STA    $A3     
       LDA    $E9     
       AND    #$07    
       TAY            
       STA    $AB     
       LDA    $E8     
       EOR    #$07    
       AND    #$07    
       TAX            
       ASL            
       ASL            
       ASL            
       ORA    $AB     
       AND    #$FD    
       STA    $AB     
       CMP    #$34    
       BCS    LF0DA   
       LDA    $EA,X   
       AND    LF7E4,Y 
       BEQ    LF0DA   
       EOR    $EA,X   
       STA    $EA,X   
       DEC    $9B     
LF0DA: LDA    INTIM   
       BNE    LF0DA   
       STA    VBLANK  
       LDY    #$80    
       STY    $C8     
       LDA    #$01    
       JSR    LF1E4   
       LDA    $CB     
       TAX            
       JSR    LF13B   
       LDX    $CC     
       JSR    LF13F   
       LDA    $CC     
       TAX            
       LDY    #$37    
       JSR    LF13B   
       LDA    #$02    
       STA    $C2     
       LDA    #$05    
       JSR    LF1E4   
       STA    $C2     
       LDA    $E6     
       BEQ    LF110   
       STY    $F2     
       STY    $F3     
LF110: DEY            
       LDA    SWCHB   
       AND    #$08    
       LSR            
       BNE    LF11B   
       LDY    #$0F    
LF11B: STY    $B0     
       ORA    #$03    
       TAY            
       LDX    #$03    
LF122: LDA    $F2     
       AND    $F3     
       AND    $B0     
       EOR    LF7EC,Y 
       STA    $CA,X   
       DEY            
       DEX            
       BPL    LF122   
       LDX    #$16    
LF133: STA    WSYNC   
       DEX            
       BPL    LF133   
       JMP    LF052   
LF13B: STY    $B0     
       STA    COLUP1  
LF13F: STX    COLUP0  
       LDX    $C8     
       LDY    #$10    
LF145: LDA    VSYNC,X 
       STA    $B2     
       ASL            
       ASL            
       ADC    $B2     
       ADC    $B0     
       ASL            
       CMP    #$60    
       ROR            
       EOR    #$80    
       STA.wy $00B6,Y 
       INX            
       DEY            
       DEY            
       CPY    #$0C    
       BCS    LF145   
LF15F: LDA    VSYNC,X 
       AND    #$0F    
       STA    $B2     
       ASL            
       ASL            
       ADC    $B2     
       ADC    $B0     
       ORA    #$80    
       STA.wy $00B6,Y 
       DEY            
       DEY            
       LDA    VSYNC,X 
       AND    #$F0    
       LSR            
       LSR            
       STA    $B2     
       LSR            
       LSR            
       ADC    $B2     
       ADC    $B0     
       STA.wy $00B6,Y 
       INX            
       DEY            
       DEY            
       BPL    LF15F   
       STX    $C8     
       LDY    #$04    
       LDA    ($B8),Y 
       ORA    ($B6),Y 
       PHA            
       LDA    ($C6),Y 
       STA    WSYNC   
       BCC    LF19E   
LF197: LDA    ($B8),Y 
       ORA    ($B6),Y 
       PHA            
       LDA    ($C6),Y 
LF19E: STA    GRP1    
       LDA    ($C0),Y 
       ORA    ($BE),Y 
       STA    GRP0    
       LDA    ($C4),Y 
       TAX            
       LDA    ($BC),Y 
       ORA    ($BA),Y 
       STX    GRP1    
       STA    GRP0    
       LDA    ($C2),Y 
       STA    GRP1    
       PLA            
       STA    GRP0    
       LDA    $B6     
       LDA    ($B8),Y 
       ORA    ($B6),Y 
       PHA            
       LDA    ($C6),Y 
       STA    GRP1    
       LDA    ($C0),Y 
       ORA    ($BE),Y 
       STA    GRP0    
       LDA    ($C4),Y 
       TAX            
       LDA    ($BC),Y 
       ORA    ($BA),Y 
       STX    GRP1    
       STA    GRP0    
       LDA    ($C2),Y 
       STA    GRP1    
       PLA            
       STA    GRP0    
       DEY            
       BPL    LF197   
       INY            
       STY    GRP0    
       STY    GRP1    
       RTS            

LF1E4: STA    $C6     
LF1E6: STA    WSYNC   
       LDA    $CD     
       STA    COLUP0  
       LDA    #$FF    
       STA    GRP0    
       LDA    $CB     
       STA    COLUPF  
       LDX    #$04    
LF1F6: LDY    #$00    
       LDA    ($C8),Y 
       AND    #$FC    
       STA    $B0,X   
       EOR    ($C8),Y 
       TAY            
       LDA.wy $00CA,Y 
       STA    $B6,X   
       DEX            
       INC    $C8     
       DEX            
       BPL    LF1F6   
       LDY    #$88    
       CPY    $C8     
       BCS    LF214   
       INC    $C8     
LF214: SED            
LF215: STA    WSYNC   
       LDA    ($B4),Y 
       STA    GRP0    
       LDA    $BA     
       STA    COLUP0  
       LDX    $AF     
       LDA    INPT0,X 
       EOR    #$FF    
       ASL            
       LDA    ($B0),Y 
       TAX            
       LDA    ($B2),Y 
       STA    GRP0    
       LDA    $B8     
       STA    COLUP0  
       LDA    $B6     
       STA    COLUP0  
       STX    GRP0    
       DEY            
       STA    WSYNC   
       LDA    ($B4),Y 
       STA    GRP0    
       LDA    $BA     
       STA    COLUP0  
       LDA    $C2     
       ADC    $C9     
       STA    $C2     
       LDA    ($B0),Y 
       CPY    #$81    
       TAX            
       LDA    ($B2),Y 
       STA    GRP0    
       LDA    $B8     
       STA    COLUP0  
       LDA    $B6     
       STA    COLUP0  
       STX    GRP0    
       BCS    LF215   
       CLD            
       DEC    $C6     
       BMI    LF265   
       JMP    LF1E6   
LF265: LDY    #$00    
       STY    GRP0    
       LDA    $CD     
       STA    COLUBK  
       STA    COLUPF  
       LDA    $C2     
LF271: LSR            
       PHA            
       AND    #$08    
       CMP    #$02    
       PLA            
       BCC    LF27C   
       SBC    #$03    
LF27C: RTS            

LF27D: STY    AUDC1   
       LDX    $F1     
       TXA            
       BEQ    LF291   
       LDA    $E7     
       AND    LF6E8,X 
       BNE    LF28E   
       INX            
       INX            
       INX            
LF28E: LDA    LF7B1,X 
LF291: STA    AUDC0   
       LSR            
       LSR            
       LSR            
       CPX    #$03    
       BEQ    LF2A0   
       CPX    #$06    
       BNE    LF2A6   
       STX    AUDC0   
LF2A0: LDA    #$1F    
       AND    $E7     
       ADC    #$0C    
LF2A6: LSR            
       STA    AUDF0   
       LDX    $E7     
       BEQ    LF2CB   
       DEX            
       STX    $E7     
       BNE    LF2C4   
       LDA    $F1     
       CMP    #$03    
       BNE    LF2C2   
       LDA    $E9     
       ORA    $E8     
       BEQ    LF2CB   
       LDA    $D2     
       STA    $81     
LF2C2: STX    $F1     
LF2C4: TXA            
       LSR            
       BCC    LF27C   
       JMP    LF4BD   
LF2CB: LDA    $D4     
       CMP    #$1E    
       BCS    LF2D4   
       JMP    LF379   
LF2D4: LDA    SWCHB   
       TAX            
       EOR    $E4     
       AND    $E4     
       STX    $E4     
       CLC            
       AND    #$43    
       ROR            
       ROR            
       BCC    LF328   
       LDA    #$3F    
       STA    $A3     
LF2E9: CLC            
       LDA    $D5     
       ADC    #$20    
       CMP    #$E0    
       BCC    LF2F4   
       LDA    #$10    
LF2F4: STA    $D5     
       STA    $D1     
       LDX    #$02    
LF2FA: LDA    $86,X   
       CMP    #$0A    
       BCS    LF306   
       STA    $D6,X   
       LDA    $89,X   
       STA    $E1,X   
LF306: LDA    #$0B    
       STA    $86,X   
       TAY            
       LDA    #$BB    
       STA    $89,X   
       STA    $8F,X   
       LDA    $D5     
       AND    LF7E4,X 
       BNE    LF322   
       LDA    $D6,X   
       STA    $86,X   
       LDA    $E1,X   
       STA    $89,X   
       LDY    #$14    
LF322: STY    $8C,X   
       DEX            
       BPL    LF2FA   
       RTS            

LF328: ASL            
       BNE    LF345   
       BCC    LF348   
       STY    $F2     
       STY    $F3     
       TAX            
       LDA    $D5     
       STA    $C4     
       LDA    #$02    
LF338: ASL    $C4     
       BCS    LF340   
       STA    $86,X   
       STY    $89,X   
LF340: INX            
       CPX    #$03    
       BCC    LF338   
LF345: DEY            
       STY    $D3     
LF348: LDA    $D3     
       BPL    LF379   
       LDA    #$3C    
       STA    $E7     
       LDA    #$03    
       STA    $F1     
       LDA    #$6F    
       STA    $81     
       LDX    #$01    
       LDA    $E9     
       ORA    $E8     
       BNE    LF367   
       BCS    LF365   
       STX    $E7     
       RTS            

LF365: INC    $E8     
LF367: STX    $9B     
       LDX    #$06    
       STX    AUDC1   
       LDA    #$FF    
LF36F: STA    $EA,X   
       DEX            
       BPL    LF36F   
       LDX    #$21    
       STX    $D3     
       RTS            

LF379: CLC            
       LDA    $D1     
       CMP    #$F0    
       BCS    LF3D5   
       LDX    $AF     
       LDA    LF7E4,X 
       BIT    $D1     
       BNE    LF3D5   
       TAY            
       LDA    LF6FD,X 
       AND    $E6     
       BEQ    LF3A0   
       LDA    #$0B    
       STA    $8C,X   
       LDA    #$00    
       STA    $92,X   
       STA    $95,X   
       LDA    #$04    
       STA    AUDC1   
       TYA            
LF3A0: ORA    $D1     
       STA    $D1     
       LSR            
       LDA    $C2     
       BCS    LF3C1   
       LDY    $86,X   
       BNE    LF3B3   
       CMP    $89,X   
       BCC    LF3B3   
       LDA    $89,X   
LF3B3: STA    $8F,X   
       LDA    $D1     
       CMP    #$F0    
       BCC    LF3D5   
       LDA    #$00    
       STA    $D4     
       BEQ    LF3D5   
LF3C1: LDY    #$01    
       CMP    #$01    
       BEQ    LF3D1   
       INY            
       CMP    #$25    
       BCS    LF3D1   
       LDA    $CE,X   
       BNE    LF3D1   
       INY            
LF3D1: STY    $92,X   
       STY    $95,X   
LF3D5: LDA    $A3     
       BNE    LF426   
       LDY    $D4     
       BNE    LF40E   
LF3DD: LDY    #$19    
       LDA    #$77    
LF3E1: LDX    LF662,Y 
       STA    $80,X   
       DEY            
       BNE    LF3E1   
       STY    $9F     
       LDX    #$02    
LF3ED: LDA    $86,X   
       BNE    LF3FB   
       LDA    $89,X   
       JSR    LF271   
       SEC            
       SBC    $8F,X   
       BMI    LF3FC   
LF3FB: TYA            
LF3FC: STA    $CE,X   
       STY    $92,X   
       STY    $95,X   
       LDA    LF7E4,X 
       AND    $D5     
       BNE    LF40B   
       INC    $9F     
LF40B: DEX            
       BPL    LF3ED   
LF40E: LDY    $D4     
       CPY    #$08    
       BCS    LF417   
       JMP    LF546   
LF417: LDA    $DC     
       CPY    #$1D    
       BCS    LF424   
       CPY    #$14    
       BCS    LF427   
       JMP    LF5C8   
LF424: BEQ    LF46F   
LF426: RTS            

LF427: BNE    LF435   
       LDX    $D2     
       STX    $81     
       DEC    $9F     
       BMI    LF43F   
       INC    $D4     
       BNE    LF451   
LF435: CMP    #$16    
       BCC    LF445   
       LDX    #$00    
       STX    $DC     
       STX    $E0     
LF43F: LDA    #$1D    
       STA    $D4     
       BNE    LF46C   
LF445: JSR    LF641   
       LDX    LF663,Y 
       STA    $80,X   
       LDX    #$03    
       BRK            
       BRK            
LF451: CMP    #$11    
       BCS    LF464   
       LDX    #$30    
       CLC            
       ADC    $E0     
       CMP    #$11    
       BCC    LF46C   
       BNE    LF464   
       LDY    $E4     
       BMI    LF46C   
LF464: CMP    #$16    
       BCS    LF46C   
       STA    $DC     
       BNE    LF43F   
LF46C: STX    $A3     
       RTS            

LF46F: LDX    #$02    
LF471: LDA    LF7E4,X 
       AND    $D5     
       BNE    LF4A0   
       LDA    $92,X   
       CMP    #$04    
       BCS    LF4A0   
       LDA    $D9,X   
       CMP    #$0C    
       BCS    LF486   
       ADC    $DD,X   
LF486: STA    $C2     
       LDA    $DC     
       LDY    #$08    
       CMP    $C2     
       BNE    LF498   
       STY    $92,X   
       STY    $95,X   
       LDA    $E4     
       BMI    LF4A0   
LF498: DEY            
       BCS    LF49C   
       DEY            
LF49C: TYA            
       JSR    LF651   
LF4A0: DEX            
       BPL    LF471   
       LDA    $D5     
       STA    $D1     
       INX            
       LDY    #$14    
LF4AA: ASL            
       BCS    LF4AF   
       STY    $8C,X   
LF4AF: INX            
       CPX    #$03    
       BCC    LF4AA   
       LDA    $E4     
       ORA    #$40    
       STA    $E4     
       INC    $D4     
       RTS            

LF4BD: LDX    #$02    
LF4BF: SED            
       LDA    $F4,X   
       ASL            
       LDA    $F7,X   
       BEQ    LF51B   
       BCS    LF4E3   
       SBC    #$00    
       STA    $F7,X   
       LDA    $89,X   
       ADC    #$00    
       STA    $89,X   
       CLD            
       LDA    $86,X   
       ADC    #$00    
       STA    $86,X   
       EOR    #$0A    
       BNE    LF519   
       LDA    $F7,X   
       JMP    LF4F8   
LF4E3: SBC    #$01    
       STA    $F7,X   
       LDA    $89,X   
       SBC    #$01    
       STA    $89,X   
       CLD            
       LDA    $86,X   
       SBC    #$00    
       STA    $86,X   
       BNE    LF519   
       LDA    $89,X   
LF4F8: BNE    LF519   
       STA    $E1,X   
       LDA    #$02    
       STA    $D6,X   
       LDA    #$0B    
       LDY    #$BB    
       BCC    LF50A   
       STA    $86,X   
       STY    $89,X   
LF50A: STY    $8F,X   
       STA    $8C,X   
       LDA    LF7E4,X 
       ORA    $D5     
       STA    $D5     
       ORA    $D1     
       STA    $D1     
LF519: LDY    #$02    
LF51B: DEX            
       BPL    LF4BF   
       TYA            
       BNE    LF528   
       LDX    $F1     
       BNE    LF528   
       INY            
       STY    $E7     
LF528: AND    $E7     
       ASL            
       STA    AUDC1   
       CLD            
       RTS            

LF52F: LDA    LF663,Y 
       CMP    #$06    
       AND    #$03    
       BCC    LF543   
       TAX            
       LDA    LF7E4,X 
       AND    $D5     
       BEQ    LF543   
       INY            
       BNE    LF52F   
LF543: STY    $D4     
       RTS            

LF546: JSR    LF52F   
       JSR    LF641   
       LDX    #$30    
       STX    $A3     
       LDX    LF663,Y 
       STA    $80,X   
       DEX            
       BEQ    LF559   
       RTS            

LF559: STA    $D2     
       LDA    #$75    
       STA    $81     
       TXA            
       LDX    #$07    
LF562: STA    $D9,X   
       DEX            
       BPL    LF562   
       LDX    #$03    
       LDA    $80     
       BRK            
       BRK            
       LDA    $D2     
       BRK            
       BRK            
       CLC            
       ADC    $E0     
       STA    $B2     
       LDX    #$02    
LF578: LDA    $98,X   
       BRK            
       BRK            
       LDA    $9C,X   
       BRK            
       BRK            
       LDY    $E4     
       BPL    LF58E   
       CMP    #$0A    
       BCC    LF58C   
       CMP    #$0C    
       BCC    LF58E   
LF58C: STA    $CE,X   
LF58E: CLC            
       ADC    $DD,X   
       CMP    #$15    
       BNE    LF5AC   
       CMP    $B2     
       BEQ    LF5AC   
       LDA    $8F,X   
       JSR    LF271   
       CLC            
       SED            
       ADC    $8F,X   
       CLD            
       STA    $8F,X   
       LDA    #$04    
       LDY    #$02    
       JSR    LF64F   
LF5AC: DEX            
       BPL    LF578   
       LDA    $B2     
       CMP    #$15    
       BNE    LF5C5   
       STA    $DC     
       LDA    $D2     
       STA    $81     
       LDA    #$1D    
       STA    $D4     
       LDA    #$01    
       STA    $F1     
       STA    $A3     
LF5C5: JMP    LF624   
LF5C8: LDA    LF663,Y 
       AND    #$03    
       TAX            
       LDA    $D1     
       CMP    #$F0    
       BCC    LF640   
       STY    $CE,X   
       LDA    $92,X   
       LDX    LF663,Y 
       CMP    #$02    
       BEQ    LF61C   
       JSR    LF641   
       STA    $80,X   
       PHA            
       TXA            
       AND    #$03    
       TAX            
       PLA            
       BRK            
       BRK            
       CMP    #$16    
       LDA    $92,X   
       EOR    #$03    
       PHP            
       BNE    LF5FE   
       SED            
       CLC            
       LDA    $8F,X   
       ADC    $8F,X   
       STA    $8F,X   
       CLD            
LF5FE: LDA    #$05    
       LDY    #$01    
       PLP            
       BCS    LF616   
       BEQ    LF619   
       LDA    $E4     
       BMI    LF624   
       LDA    $AC,X   
       CMP    #$77    
       BEQ    LF624   
       LDA    #$06    
       LDY    #$00    
       CLC            
LF616: JSR    LF64F   
LF619: LDY    $D4     
       DEY            
LF61C: TYA            
       CLC            
       ADC    #$04    
       AND    #$FC    
       STA    $D4     
LF624: LDY    $D4     
       CPY    #$14    
       BCS    LF637   
       JSR    LF52F   
       BCC    LF637   
       LDA    $92,X   
       CMP    #$04    
       BEQ    LF61C   
       BNE    LF639   
LF637: LDX    #$04    
LF639: LDA    LF7E4,X 
       EOR    #$F9    
       STA    $D1     
LF640: RTS            

LF641: LDA    #$06    
       STA    AUDC1   
       DEC    $D3     
       LDA    $AB     
       ASL            
       INC    $9B     
       INC    $D4     
       RTS            

LF64F: STY    $F1     
LF651: STA    $92,X   
       STA    $95,X   
       ROR            
       STA    $F4,X   
       LDA    $8F,X   
       STA    $F7,X   
       LDA    #$6C    
       STA    $E7     
       DEC    $9F     
LF662: RTS            

LF663: .byte $1A,$19,$18,$00,$1E,$1D,$1C,$01,$22,$26,$2A,$2E,$21,$25,$29,$2D
       .byte $20,$24,$28,$2C,$01,$02,$03,$04,$05,$00,$01,$02,$03,$00,$22,$22
       .byte $22,$3E,$22,$22,$1C,$00,$3E,$20,$20,$3E,$02,$02,$3E,$00,$3E,$02
       .byte $02,$0E,$02,$02,$3E,$00,$04,$04,$04,$3E,$24,$24,$20,$00,$3E,$02
       .byte $02,$3E,$20,$20,$3E,$00,$3E,$22,$22,$3E,$20,$20,$3E,$00,$02,$02
       .byte $02,$02,$02,$02,$3E,$00,$3E,$22,$22,$3E,$22,$22,$3E,$00,$3E,$02
       .byte $02,$3E,$22,$22,$3E,$00,$2E,$2A,$2A,$2A,$2A,$2A,$2E,$00,$3C,$24
       .byte $04,$04,$04,$04,$0E,$00,$02,$3C,$2C,$24,$24,$24,$3C,$00,$22,$24
       .byte $28,$30,$28,$24,$22
LF6E8: .byte $00,$60,$10,$21,$FF,$3F,$7F,$3F,$C7,$D5,$D5,$F8,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF
LF6FD: .byte $80,$40,$08,$70,$50,$50,$50,$70,$20,$20,$20,$20,$20,$70,$40,$70
       .byte $10,$70,$70,$10,$30,$10,$70,$10,$10,$70,$50,$40,$70,$10,$70,$40
       .byte $70,$70,$50,$70,$40,$70,$10,$10,$10,$10,$70,$70,$50,$70,$50,$70
       .byte $70,$10,$70,$50,$70,$17,$15,$15,$15,$17,$00,$00,$00,$00,$00,$94
       .byte $94,$F4,$94,$95,$E4,$24,$E4,$84,$EE,$EE,$AA,$AE,$AA,$EE,$07,$05
       .byte $07,$05,$07,$77,$55,$75,$55,$75,$6D,$55,$45,$45,$45,$77,$45,$45
       .byte $45,$47,$25,$25,$25,$25,$75,$20,$00,$30,$10,$70,$4A,$4A,$4A,$C9
       .byte $0A,$90,$02,$A9,$09,$C9,$00,$D0,$04,$A0,$0A,$94,$DD,$38,$75,$D9
       .byte $95,$D9,$40,$07,$05,$05,$05,$07,$02,$02,$02,$02,$02,$07,$04,$07
       .byte $01,$07,$07,$01,$03,$01,$07,$01,$01,$07,$05,$04,$07,$01,$07,$04
       .byte $07,$07,$05,$07,$04,$07,$01,$01,$01,$01,$07,$07,$05,$07,$05,$07
       .byte $07,$01,$07,$05
LF7B1: .byte $07,$3E,$31,$F0,$FE,$51,$00,$00,$00,$00,$00,$80,$80,$80,$80,$C0
       .byte $A4,$A4,$E4,$AE,$EA,$EE,$88,$8C,$88,$8E,$70,$50,$10,$10,$38,$72
       .byte $12,$72,$42,$77,$44,$4C,$54,$64,$44,$77,$14,$76,$44,$77,$C0,$00
       .byte $80,$00,$C0
LF7E4: .byte $80,$40,$20,$10,$08,$04,$02,$01
LF7EC: .byte $08,$0E,$00,$06,$36,$0C,$D0
LF7F3: .byte $D6,$50,$77,$FF,$1E,$50,$02,$02,$02,$00,$F0,$69,$F7,$78,$D8,$A2
       .byte $FF,$9A,$E8,$8A,$95,$00,$E8,$D0,$FB,$A2,$0F,$86,$1A,$86,$18,$E8
       .byte $BD,$F3,$F7,$95,$D0,$A0,$F6,$94,$86,$94,$B1,$C8,$94,$B7,$CA,$10
       .byte $EF,$84,$19,$20,$DD,$F3,$20,$E9,$F2,$A9,$81,$85,$0F,$A9,$01,$A2
       .byte $06,$85,$0E,$85,$0A,$86,$04,$86,$05,$85,$02,$CA,$CA,$10,$FD,$85
       .byte $11,$85,$10,$A9,$30,$85,$21,$A9,$40,$85,$20,$85,$02,$85,$2A,$A9
       .byte $02,$A0,$82,$85,$02,$84,$00,$84,$01,$85,$02,$85,$02,$A0,$00,$85
       .byte $02,$84,$00,$A2,$28,$8E,$96,$02,$20,$7D,$F2,$E6,$A7,$A5,$A7,$D0
       .byte $08,$C6,$F2,$D0,$04,$A2,$FF,$86,$F3,$29,$03,$85,$AF,$D0,$0C,$AD
       .byte $80,$02,$A8,$45,$E5,$25,$E5,$84,$E5,$85,$E6,$C6,$A3,$10,$08,$A5
       .byte $E4,$09,$02,$85,$E4,$E6,$A3,$A5,$E8,$0A,$45,$E8,$0A,$0A,$26,$E9
       .byte $26,$E8,$A6,$9B,$F0,$31,$A5,$A3,$D0,$2D,$18,$69,$03,$85,$A3,$A5
       .byte $E9,$29,$07,$A8,$85,$AB,$A5,$E8,$49,$07,$29,$07,$AA,$0A,$0A,$0A
       .byte $05,$AB,$29,$FD,$85,$AB,$C9,$34,$B0,$0D,$B5,$EA,$39,$E4,$F7,$F0
       .byte $06,$55,$EA,$95,$EA,$C6,$9B,$AD,$84,$02,$D0,$FB,$85,$01,$A0,$80
       .byte $84,$C8,$A9,$01,$20,$E4,$F1,$A5,$CB,$AA,$20,$3B,$F1,$A6,$CC,$20
       .byte $3F,$F1,$A5,$CC,$AA,$A0,$37,$20,$3B,$F1,$A9,$02,$85,$C2,$A9,$05
       .byte $20,$E4,$F1,$85,$C2,$A5,$E6,$F0,$04,$84,$F2,$84,$F3,$88,$AD,$82
       .byte $02,$29,$08,$4A,$D0,$02,$A0,$0F,$84,$B0,$09,$03,$A8,$A2,$03,$A5
       .byte $F2,$25,$F3,$25,$B0,$59,$EC,$F7,$95,$CA,$88,$CA,$10,$F1,$A2,$16
       .byte $85,$02,$CA,$10,$FB,$4C,$52,$F0,$84,$B0,$85,$07,$86,$06,$A6,$C8
       .byte $A0,$10,$B5,$00,$85,$B2,$0A,$0A,$65,$B2,$65,$B0,$0A,$C9,$60,$6A
       .byte $49,$80,$99,$B6,$00,$E8,$88,$88,$C0,$0C,$B0,$E6,$B5,$00,$29,$0F
       .byte $85,$B2,$0A,$0A,$65,$B2,$65,$B0,$09,$80,$99,$B6,$00,$88,$88,$B5
       .byte $00,$29,$F0,$4A,$4A,$85,$B2,$4A,$4A,$65,$B2,$65,$B0,$99,$B6,$00
       .byte $E8,$88,$88,$10,$D7,$86,$C8,$A0,$04,$B1,$B8,$11,$B6,$48,$B1,$C6
       .byte $85,$02,$90,$07,$B1,$B8,$11,$B6,$48,$B1,$C6,$85,$1C,$B1,$C0,$11
       .byte $BE,$85,$1B,$B1,$C4,$AA,$B1,$BC,$11,$BA,$86,$1C,$85,$1B,$B1,$C2
       .byte $85,$1C,$68,$85,$1B,$A5,$B6,$B1,$B8,$11,$B6,$48,$B1,$C6,$85,$1C
       .byte $B1,$C0,$11,$BE,$85,$1B,$B1,$C4,$AA,$B1,$BC,$11,$BA,$86,$1C,$85
       .byte $1B,$B1,$C2,$85,$1C,$68,$85,$1B,$88,$10,$B9,$C8,$84,$1B,$84,$1C
       .byte $60,$85,$C6,$85,$02,$A5,$CD,$85,$06,$A9,$FF,$85,$1B,$A5,$CB,$85
       .byte $08,$A2,$04,$A0,$00,$B1,$C8,$29,$FC,$95,$B0,$51,$C8,$A8,$B9,$CA
       .byte $00,$95,$B6,$CA,$E6,$C8,$CA,$10,$EA,$A0,$88,$C4,$C8,$B0,$02,$E6
       .byte $C8,$F8,$85,$02,$B1,$B4,$85,$1B,$A5,$BA,$85,$06,$A6,$AF,$B5,$38
       .byte $49,$FF,$0A,$B1,$B0,$AA,$B1,$B2,$85,$1B,$A5,$B8,$85,$06,$A5,$B6
       .byte $85,$06,$86,$1B,$88,$85,$02,$B1,$B4,$85,$1B,$A5,$BA,$85,$06,$A5
       .byte $C2,$65,$C9,$85,$C2,$B1,$B0,$C0,$81,$AA,$B1,$B2,$85,$1B,$A5,$B8
       .byte $85,$06,$A5,$B6,$85,$06,$86,$1B,$B0,$B8,$D8,$C6,$C6,$30,$03,$4C
       .byte $E6,$F1,$A0,$00,$84,$1B,$A5,$CD,$85,$09,$85,$08,$A5,$C2,$4A,$48
       .byte $29,$08,$C9,$02,$68,$90,$02,$E9,$03,$60,$84,$16,$A6,$F1,$8A,$F0
       .byte $0D,$A5,$E7,$3D,$E8,$F6,$D0,$03,$E8,$E8,$E8,$BD,$B1,$F7,$85,$15
       .byte $4A,$4A,$4A,$E0,$03,$F0,$06,$E0,$06,$D0,$08,$86,$15,$A9,$1F,$25
       .byte $E7,$69,$0C,$4A,$85,$17,$A6,$E7,$F0,$1E,$CA,$86,$E7,$D0,$12,$A5
       .byte $F1,$C9,$03,$D0,$0A,$A5,$E9,$05,$E8,$F0,$0D,$A5,$D2,$85,$81,$86
       .byte $F1,$8A,$4A,$90,$B4,$4C,$BD,$F4,$A5,$D4,$C9,$1E,$B0,$03,$4C,$79
       .byte $F3,$AD,$82,$02,$AA,$45,$E4,$25,$E4,$86,$E4,$18,$29,$43,$6A,$6A
       .byte $90,$43,$A9,$3F,$85,$A3,$18,$A5,$D5,$69,$20,$C9,$E0,$90,$02,$A9
       .byte $10,$85,$D5,$85,$D1,$A2,$02,$B5,$86,$C9,$0A,$B0,$06,$95,$D6,$B5
       .byte $89,$95,$E1,$A9,$0B,$95,$86,$A8,$A9,$BB,$95,$89,$95,$8F,$A5,$D5
       .byte $3D,$E4,$F7,$D0,$0A,$B5,$D6,$95,$86,$B5,$E1,$95,$89,$A0,$14,$94
       .byte $8C,$CA,$10,$D3,$60,$0A,$D0,$1A,$90,$1B,$84,$F2,$84,$F3,$AA,$A5
       .byte $D5,$85,$C4,$A9,$02,$06,$C4,$B0,$04,$95,$86,$94,$89,$E8,$E0,$03
       .byte $90,$F3,$88,$84,$D3,$A5,$D3,$10,$2D,$A9,$3C,$85,$E7,$A9,$03,$85
       .byte $F1,$A9,$6F,$85,$81,$A2,$01,$A5,$E9,$05,$E8,$D0,$07,$B0,$03,$86
       .byte $E7,$60,$E6,$E8,$86,$9B,$A2,$06,$86,$16,$A9,$FF,$95,$EA,$CA,$10
       .byte $FB,$A2,$21,$86,$D3,$60,$18,$A5,$D1,$C9,$F0,$B0,$55,$A6,$AF,$BD
       .byte $E4,$F7,$24,$D1,$D0,$4C,$A8,$BD,$FD,$F6,$25,$E6,$F0,$0F,$A9,$0B
       .byte $95,$8C,$A9,$00,$95,$92,$95,$95,$A9,$04,$85,$16,$98,$05,$D1,$85
       .byte $D1,$4A,$A5,$C2,$B0,$18,$B4,$86,$D0,$06,$D5,$89,$90,$02,$B5,$89
       .byte $95,$8F,$A5,$D1,$C9,$F0,$90,$1A,$A9,$00,$85,$D4,$F0,$14,$A0,$01
       .byte $C9,$01,$F0,$0A,$C8,$C9,$25,$B0,$05,$B5,$CE,$D0,$01,$C8,$94,$92
       .byte $94,$95,$A5,$A3,$D0,$4D,$A4,$D4,$D0,$31,$A0,$19,$A9,$77,$BE,$62
       .byte $F6,$95,$80,$88,$D0,$F8,$84,$9F,$A2,$02,$B5,$86,$D0,$0A,$B5,$89
       .byte $20,$71,$F2,$38,$F5,$8F,$30,$01,$98,$95,$CE,$94,$92,$94,$95,$BD
       .byte $E4,$F7,$25,$D5,$D0,$02,$E6,$9F,$CA,$10,$DF,$A4,$D4,$C0,$08,$B0
       .byte $03,$4C,$46,$F5,$A5,$DC,$C0,$1D,$B0,$07,$C0,$14,$B0,$06,$4C,$C8
       .byte $F5,$F0,$49,$60,$D0,$0C,$A6,$D2,$86,$81,$C6,$9F,$30,$0E,$E6,$D4
       .byte $D0,$1C,$C9,$16,$90,$0C,$A2,$00,$86,$DC,$86,$E0,$A9,$1D,$85,$D4
       .byte $D0,$27,$20,$41,$F6,$BE,$63,$F6,$95,$80,$A2,$03,$00,$00,$C9,$11
       .byte $B0,$0F,$A2,$30,$18,$65,$E0,$C9,$11,$90,$0E,$D0,$04,$A4,$E4,$30
       .byte $08,$C9,$16,$B0,$04,$85,$DC,$D0,$D3,$86,$A3,$60,$A2,$02,$BD,$E4
       .byte $F7,$25,$D5,$D0,$28,$B5,$92,$C9,$04,$B0,$22,$B5,$D9,$C9,$0C,$B0
       .byte $02,$75,$DD,$85,$C2,$A5,$DC,$A0,$08,$C5,$C2,$D0,$08,$94,$92,$94
       .byte $95,$A5,$E4,$30,$08,$88,$B0,$01,$88,$98,$20,$51,$F6,$CA,$10,$CE
       .byte $A5,$D5,$85,$D1,$E8,$A0,$14,$0A,$B0,$02,$94,$8C,$E8,$E0,$03,$90
       .byte $F6,$A5,$E4,$09,$40,$85,$E4,$E6,$D4,$60,$A2,$02,$F8,$B5,$F4,$0A
       .byte $B5,$F7,$F0,$54,$B0,$1A,$E9,$00,$95,$F7,$B5,$89,$69,$00,$95,$89
       .byte $D8,$B5,$86,$69,$00,$95,$86,$49,$0A,$D0,$3B,$B5,$F7,$4C,$F8,$F4
       .byte $E9,$01,$95,$F7,$B5,$89,$E9,$01,$95,$89,$D8,$B5,$86,$E9,$00,$95
       .byte $86,$D0,$23,$B5,$89,$D0,$1F,$95,$E1,$A9,$02,$95,$D6,$A9,$0B,$A0
       .byte $BB,$90,$04,$95,$86,$94,$89,$94,$8F,$95,$8C,$BD,$E4,$F7,$05,$D5
       .byte $85,$D5,$05,$D1,$85,$D1,$A0,$02,$CA,$10,$A1,$98,$D0,$07,$A6,$F1
       .byte $D0,$03,$C8,$84,$E7,$25,$E7,$0A,$85,$16,$D8,$60,$B9,$63,$F6,$C9
       .byte $06,$29,$03,$90,$0B,$AA,$BD,$E4,$F7,$25,$D5,$F0,$03,$C8,$D0,$EC
       .byte $84,$D4,$60,$20,$2F,$F5,$20,$41,$F6,$A2,$30,$86,$A3,$BE,$63,$F6
       .byte $95,$80,$CA,$F0,$01,$60,$85,$D2,$A9,$75,$85,$81,$8A,$A2,$07,$95
       .byte $D9,$CA,$10,$FB,$A2,$03,$A5,$80,$00,$00,$A5,$D2,$00,$00,$18,$65
       .byte $E0,$85,$B2,$A2,$02,$B5,$98,$00,$00,$B5,$9C,$00,$00,$A4,$E4,$10
       .byte $0A,$C9,$0A,$90,$04,$C9,$0C,$90,$02,$95,$CE,$18,$75,$DD,$C9,$15
       .byte $D0,$17,$C5,$B2,$F0,$13,$B5,$8F,$20,$71,$F2,$18,$F8,$75,$8F,$D8
       .byte $95,$8F,$A9,$04,$A0,$02,$20,$4F,$F6,$CA,$10,$C9,$A5,$B2,$C9,$15
       .byte $D0,$10,$85,$DC,$A5,$D2,$85,$81,$A9,$1D,$85,$D4,$A9,$01,$85,$F1
       .byte $85,$A3,$4C,$24,$F6,$B9,$63,$F6,$29,$03,$AA,$A5,$D1,$C9,$F0,$90
       .byte $6C,$94,$CE,$B5,$92,$BE,$63,$F6,$C9,$02,$F0,$3D,$20,$41,$F6,$95
       .byte $80,$48,$8A,$29,$03,$AA,$68,$00,$00,$C9,$16,$B5,$92,$49,$03,$08
       .byte $D0,$09,$F8,$18,$B5,$8F,$75,$8F,$95,$8F,$D8,$A9,$05,$A0,$01,$28
       .byte $B0,$11,$F0,$12,$A5,$E4,$30,$19,$B5,$AC,$C9,$77,$F0,$13,$A9,$06
       .byte $A0,$00,$18,$20,$4F,$F6,$A4,$D4,$88,$98,$18,$69,$04,$29,$FC,$85
       .byte $D4,$A4,$D4,$C0,$14,$B0,$0D,$20,$2F,$F5,$90,$08,$B5,$92,$C9,$04
       .byte $F0,$E7,$D0,$02,$A2,$04,$BD,$E4,$F7,$49,$F9,$85,$D1,$60,$A9,$06
       .byte $85,$16,$C6,$D3,$A5,$AB,$0A,$E6,$9B,$E6,$D4,$60,$84,$F1,$95,$92
       .byte $95,$95,$6A,$95,$F4,$B5,$8F,$95,$F7,$A9,$6C,$85,$E7,$C6,$9F,$60
       .byte $1A,$19,$18,$00,$1E,$1D,$1C,$01,$22,$26,$2A,$2E,$21,$25,$29,$2D
       .byte $20,$24,$28,$2C,$01,$02,$03,$04,$05,$00,$01,$02,$03,$00,$22,$22
       .byte $22,$3E,$22,$22,$1C,$00,$3E,$20,$20,$3E,$02,$02,$3E,$00,$3E,$02
       .byte $02,$0E,$02,$02,$3E,$00,$04,$04,$04,$3E,$24,$24,$20,$00,$3E,$02
       .byte $02,$3E,$20,$20,$3E,$00,$3E,$22,$22,$3E,$20,$20,$3E,$00,$02,$02
       .byte $02,$02,$02,$02,$3E,$00,$3E,$22,$22,$3E,$22,$22,$3E,$00,$3E,$02
       .byte $02,$3E,$22,$22,$3E,$00,$2E,$2A,$2A,$2A,$2A,$2A,$2E,$00,$3C,$24
       .byte $04,$04,$04,$04,$0E,$00,$02,$3C,$2C,$24,$24,$24,$3C,$00,$22,$24
       .byte $28,$30,$28,$24,$22,$00,$60,$10,$21,$FF,$3F,$7F,$3F,$C7,$D5,$D5
       .byte $F8,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$80,$40,$08,$70,$50,$50
       .byte $50,$70,$20,$20,$20,$20,$20,$70,$40,$70,$10,$70,$70,$10,$30,$10
       .byte $70,$10,$10,$70,$50,$40,$70,$10,$70,$40,$70,$70,$50,$70,$40,$70
       .byte $10,$10,$10,$10,$70,$70,$50,$70,$50,$70,$70,$10,$70,$50,$70,$17
       .byte $15,$15,$15,$17,$00,$00,$00,$00,$00,$94,$94,$F4,$94,$95,$E4,$24
       .byte $E4,$84,$EE,$EE,$AA,$AE,$AA,$EE,$07,$05,$07,$05,$07,$77,$55,$75
       .byte $55,$75,$6D,$55,$45,$45,$45,$77,$45,$45,$45,$47,$25,$25,$25,$25
       .byte $75,$20,$00,$30,$10,$70,$4A,$4A,$4A,$C9,$0A,$90,$02,$A9,$09,$C9
       .byte $00,$D0,$04,$A0,$0A,$94,$DD,$38,$75,$D9,$95,$D9,$40,$07,$05,$05
       .byte $05,$07,$02,$02,$02,$02,$02,$07,$04,$07,$01,$07,$07,$01,$03,$01
       .byte $07,$01,$01,$07,$05,$04,$07,$01,$07,$04,$07,$07,$05,$07,$04,$07
       .byte $01,$01,$01,$01,$07,$07,$05,$07,$05,$07,$07,$01,$07,$05,$07,$3E
       .byte $31,$F0,$FE,$51,$00,$00,$00,$00,$00,$80,$80,$80,$80,$C0,$A4,$A4
       .byte $E4,$AE,$EA,$EE,$88,$8C,$88,$8E,$70,$50,$10,$10,$38,$72,$12,$72
       .byte $42,$77,$44,$4C,$54,$64,$44,$77,$14,$76,$44,$77,$C0,$00,$80,$00
       .byte $C0,$80,$40,$20,$10,$08,$04,$02,$01,$08,$0E,$00,$06,$36,$0C,$D0
       .byte $D6,$50,$77,$FF,$1E,$50,$02,$02,$02,$00,$F0,$69,$F7
