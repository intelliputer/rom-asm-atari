; Disassembly of roms/Ocean City Defender.bin
; Disassembled Tue Oct  6 15:22:40 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Ocean City Defender.bin
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
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
SWCHA   =  $0280
SWCHB   =  $0282
$0285   =  $0285
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
       STX    $D3     
       LDA    #$01    
       STA    $8E     
       STA    $C5     
       STA    $C6     
       STA    $EF     
       JSR    $1CAF   
LF01B: LDA    #$02    
       STA    VBLANK  
       STA    WSYNC   
       STA    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    VSYNC   
       LDA    #$2C    
       STA    TIM64T  
       LDA    SWCHB   
       ROR    $8E     
       BCS    LF03D   
       LSR            
       BCS    LF06B   
       ROL            
LF03D: LSR            
       ROL    $8E     
       LSR            
       BIT    $8C     
       BCC    LF049   
       ROL    $8C     
       BNE    LF0A3   
LF049: BPL    LF060   
LF04B: LDA    $FA     
       AND    #$1F    
       STA    $8C     
       INC    $8D     
       LDA    $8D     
       CMP    #$04    
       BNE    LF068   
       LDA    #$00    
       STA    $8D     
       JMP    $1068   
LF060: LDA    $8C     
       EOR    $FA     
       AND    #$1F    
       BEQ    LF04B   
LF068: JMP    $1075   
LF06B: LDA    #$01    
       STA    $8E     
       STA    $D3     
       STA    $F9     
       BNE    LF07B   
LF075: LDA    #$00    
       STA    $F9     
       STA    $D3     
LF07B: LDA    #$0A    
       STA    $F4     
       STA    $F0     
       LDA    #$01    
       STA    $F7     
       JSR    $1CAF   
       LDA    #$00    
       STA    $EF     
       STA    $EE     
       STA    $EC     
       STA    $F6     
       STA    $F5     
       STA    $A1     
       STA    $A2     
       STA    $A3     
       STA    $DB     
       LDX    #$06    
LF09E: STA    $D4,X   
       DEX            
       BPL    LF09E   
LF0A3: LDA    $D3     
       BMI    LF0AB   
       BNE    LF0D5   
       BEQ    LF0C5   
LF0AB: DEC    $F2     
       BNE    LF0C5   
       DEC    $F3     
       BNE    LF0C5   
       JSR    $1CAF   
       LDA    #$00    
       STA    $EE     
       STA    $D3     
       STA    $F5     
       LDX    #$06    
LF0C0: STA    $D4,X   
       DEX            
       BPL    LF0C0   
LF0C5: LDX    #$00    
       STX    $EC     
       STX    $BE     
       STX    $C4     
       LDA    $E0     
       BNE    LF0D5   
       LDA    REFP1   
       BPL    LF06B   
LF0D5: LDX    #$0A    
LF0D7: LDA    #$1F    
       STA    $81,X   
       LDA    #$64    
       STA    $80,X   
       DEX            
       DEX            
       BPL    LF0D7   
       LDA    $EF     
       BEQ    LF0F6   
       LDX    #$0A    
       LDA    #$6E    
LF0EB: STA    $80,X   
       CLC            
       ADC    #$0A    
       DEX            
       DEX            
       BPL    LF0EB   
       BMI    LF13F   
LF0F6: LDA    $F9     
       BNE    LF106   
       LDA    $8D     
       CLC            
       ADC    #$01    
       JSR    $1EE8   
       STA    $80     
       BNE    LF13F   
LF106: LDX    #$00    
       STX    $9E     
       LDX    #$02    
       LDY    #$08    
LF10E: LDA    $A1,X   
       LSR            
       LSR            
       LSR            
       LSR            
       JSR    $1EE8   
       BNE    LF11D   
       LDA    $9E     
       BEQ    LF124   
LF11D: INC    $9E     
       LDA    $8F     
       STA.wy $0082,Y 
LF124: LDA    $A1,X   
       AND    #$0F    
       JSR    $1EE8   
       BNE    LF131   
       LDA    $9E     
       BEQ    LF138   
LF131: INC    $9E     
       LDA    $8F     
       STA.wy $0080,Y 
LF138: DEX            
       DEY            
       DEY            
       DEY            
       DEY            
       BPL    LF10E   
LF13F: LDX    #$06    
       STX    $F1     
LF143: LDA    $D4,X   
       BEQ    LF17D   
       CMP    #$05    
       BEQ    LF155   
       LDA    $FA     
       AND    #$07    
       BNE    LF161   
       INC    $D4,X   
       BPL    LF161   
LF155: DEC    $F1     
       BPL    LF161   
       LDA    $F8     
       BNE    LF161   
       LDA    #$FF    
       STA    $D3     
LF161: LDY    $D4,X   
       DEY            
       CPX    #$06    
       BNE    LF174   
       LDA    $1E52,Y 
       STA    $9B     
       LDA    $1E57,Y 
       STA    $9C     
       BNE    LF196   
LF174: LDA    $1E4D,Y 
       STA    $91     
       STA    $95,X   
       BNE    LF196   
LF17D: LDY    $1E38,X 
       LDA    $FA     
       AND    $1E46,X 
       BNE    LF18A   
       LDY    $1E3F,X 
LF18A: STY    $91     
       STY    $95,X   
       CPX    #$06    
       BNE    LF196   
       LDA    #$08    
       STA    $9C     
LF196: DEX            
       BPL    LF143   
       LDA    #$1D    
       STA    $92     
       STA    $94     
       LDX    #$02    
LF1A1: LDY    #$98    
       LDA    $D3     
       BMI    LF1B1   
       LDY    #$80    
       LDA    $DD,X   
       BEQ    LF1B1   
       DEC    $DD,X   
       LDY    #$88    
LF1B1: STY    $93,X   
       DEX            
       DEX            
       BPL    LF1A1   
       LDA    #$05    
       STA    CTRLPF  
       LDA    #$30    
       STA    PF0     
       LDA    #$00    
       STA    COLUPF  
       STA    PF1     
       STA    PF2     
       LDA    #$03    
       STA    $A9     
LF1CB: LDX    $A9     
       LDA    $A4,X   
       SEC            
       SBC    #$08    
       CMP    #$F7    
       BCC    LF1D8   
       LDA    #$00    
LF1D8: LDX    #$00    
       JSR    $1E82   
       LDA    $A9     
       ASL            
       TAX            
       LDA    $8F     
       STA    $AA,X   
       LDA    $90     
       STA    $AB,X   
       LDX    $A9     
       LDA    $A4,X   
       LDX    #$01    
       JSR    $1E82   
       LDA    $A9     
       ASL            
       TAX            
       LDA    $8F     
       STA    $B2,X   
       LDA    $90     
       STA    $B3,X   
       DEC    $A9     
       BPL    LF1CB   
       LDA    $BE     
       BEQ    LF20A   
       LDA    $A4     
       STA    $BE     
LF20A: LDX    #$04    
LF20C: LDA    $BA,X   
       JSR    $1FC2   
       DEX            
       CPX    #$02    
       BCS    LF20C   
       STA    WSYNC   
       STA    HMOVE   
       STA    WSYNC   
       STA    HMCLR   
       LDA    $FA     
       AND    #$07    
       BNE    LF230   
       LDA    $C5     
       AND    #$06    
       BNE    LF22C   
       LDA    #$02    
LF22C: EOR    #$A0    
       STA    $A0     
LF230: LDY    #$00    
       LDA    $E0     
       BEQ    LF23E   
       AND    #$01    
       BEQ    LF23C   
       LDY    #$0F    
LF23C: DEC    $E0     
LF23E: STY    COLUBK  
       INC    $FA     
       BNE    LF24C   
       INC    $FB     
       BNE    LF24C   
       LDA    #$F3    
       STA    $FC     
LF24C: BIT    $0285   
       BPL    LF24C   
       STA    WSYNC   
       LDA    #$00    
       STA    CXCLR   
       STA    VBLANK  
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    $D3     
       BMI    LF268   
       LDA    $DB     
       BMI    LF26B   
       JMP    $1402   
LF268: JMP    $136E   
LF26B: LDA    $FA     
       AND    #$07    
       BNE    LF291   
       INC    $DB     
       LDA    $DB     
       CMP    #$85    
       BCC    LF291   
       LDX    #$03    
LF27B: LDA    #$07    
       STA    $C7,X   
       LDA    #$00    
       STA    $A4,X   
       DEX            
       BPL    LF27B   
       STA    $BE     
       STA    $DB     
       STA    $BC     
       STA    $BD     
       JMP    $1404   
LF291: LDA    $DB     
       AND    #$07    
       TAX            
       STA    WSYNC   
       LDA    $1C80,X 
       STA    $AA     
       LDA    $1C85,X 
       STA    $AC     
       LDA    #$1C    
       STA    $AB     
       STA    $AD     
       LDA    $1CA0,X 
       STA    $AE     
       LDA    $1CA5,X 
       STA    $B0     
       LDA    $1CAA,X 
       STA    $B2     
       LDY    $DC     
       LDA    $1FF8,Y 
       SEC            
       SBC    $1C99,X 
       STA    $B4     
       LDA    #$00    
       STA    PF0     
       LDA    #$08    
       STA    REFP1   
       STA    WSYNC   
       LDA    #$3E    
       CPX    #$04    
       BNE    LF2DA   
       LDA    $FA     
       AND    #$0E    
       EOR    #$0F    
       ORA    #$30    
LF2DA: STA    COLUP0  
       STA    COLUP1  
       STA    COLUPF  
       STA    WSYNC   
       LDA    $C0     
       CLC            
       ADC    $1C8A,X 
       STA    $BF     
       CLC            
       ADC    $1C8F,X 
       STA    $BD     
       SEC            
       SBC    $1C94,X 
       STA    $BE     
       SEC            
       SBC    $1C9B,X 
       STA    $BC     
       LDX    #$04    
       LDA    $C0     
       JSR    $1FC2   
       DEX            
       LDA    $BF     
       JSR    $1FC2   
       DEX            
       LDA    $BE     
       JSR    $1FC2   
       DEX            
       LDA    $BD     
       JSR    $1FC2   
       DEX            
       LDA    $BC     
       JSR    $1FC2   
       STA    WSYNC   
       STA    HMOVE   
       STA    WSYNC   
       LDX    #$C0    
LF323: STA    WSYNC   
LF325: TXA            
       SEC            
       SBC    $B4     
       TAY            
       AND    $AE     
       BNE    LF350   
       TYA            
       AND    $B0     
       BEQ    LF337   
       TYA            
       EOR    $B2     
       TAY            
LF337: LDA    ($AC),Y 
       STA    ENAM0   
       STA    ENAM1   
       ASL            
       STA    ENABL   
       LDA    ($AA),Y 
       DEX            
       CPX    #$6B    
       BEQ    LF357   
       STA    WSYNC   
       STA    GRP0    
       STA    GRP1    
       JMP    $1325   
LF350: DEX            
       CPX    #$6B    
       BNE    LF323   
       STA    WSYNC   
LF357: STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    ENAM0   
       STA    ENAM1   
       STA    ENABL   
       LDA    $E4     
       STA    COLUPF  
       STA    WSYNC   
       JMP    $1574   
LF36E: LDY    #$AA    
       LDA    $FA     
       AND    #$02    
       BEQ    LF378   
       LDY    #$B2    
LF378: STY    $AA     
       STA    WSYNC   
       LDA    #$1F    
       STA    $AB     
       LDA    #$DE    
       STA    COLUP0  
       LDA    #$00    
       STA    $E6     
       STA    $E7     
       STA    $E8     
       LDA    $FA     
       AND    #$0F    
       BNE    LF3A2   
       LDA    $E3     
       BEQ    LF398   
       DEC    $E3     
LF398: LDA    $E3     
       TAY            
       LDA    $1FBA,Y 
       STA    $E4     
       STA    $E5     
LF3A2: STA    WSYNC   
       LDA    $E2     
       BNE    LF3CA   
       LDA    $8D     
       CMP    #$03    
       BEQ    LF3B4   
       LDA    $A3     
       AND    #$F0    
       ORA    $8D     
LF3B4: STA    $A1     
       LDA    #$3F    
       STA    $E9     
       STA    $F3     
       LDA    #$8F    
       STA    $E0     
       STA    $EB     
       LDA    #$02    
       STA    $ED     
       LDA    #$4B    
       STA    $E1     
LF3CA: CMP    #$80    
       BCS    LF3D0   
       INC    $E2     
LF3D0: LDA    $E1     
       CMP    #$D2    
       BCS    LF3D8   
       INC    $E1     
LF3D8: LDX    #$00    
       STA    WSYNC   
       STX    PF0     
       LDA    $E2     
       JSR    $1FC2   
       STA    WSYNC   
       STA    HMOVE   
       STA    WSYNC   
       LDX    #$C0    
LF3EB: STA    WSYNC   
       TXA            
       SEC            
       SBC    $E1     
       TAY            
       AND    #$F8    
       BNE    LF3FA   
       LDA    ($AA),Y 
       STA    GRP0    
LF3FA: DEX            
       CPX    #$61    
       BNE    LF3EB   
       JMP    $1357   
LF402: STA    WSYNC   
LF404: STA    WSYNC   
       LDA    #$1D    
       STA    $90     
       STA    $9F     
       LDA    #$C0    
       STA    $C3     
       LDA    #$03    
       STA    $A9     
LF414: LDX    #$1E    
       TXS            
       LDA    $A9     
       ASL            
       TAX            
       LDY    $AA,X   
       LDA    $AB,X   
       DEC    $C3     
       LDX    $C3     
       STA    WSYNC   
       CPX    $BB     
       PHP            
       CPX.w  $00BA   
       PHP            
LF42C: DEY            
       BPL    LF42C   
       STA    HMP0    
       STA    RESP0   
       STA    WSYNC   
       PLA            
       PLA            
       DEC    $C3     
       LDX    $C3     
       CPX    $BB     
       PHP            
       CPX    $BA     
       PHP            
       PLA            
       PLA            
       LDA    $A9     
       ASL            
       TAX            
       LDY    $B2,X   
       LDA    $B3,X   
       DEC    $C3     
       LDX    $C3     
       STA    WSYNC   
       CPX    $BB     
       PHP            
       CPX.w  $00BA   
       PHP            
LF458: DEY            
       BPL    LF458   
       STA    HMP1    
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       PLA            
       PLA            
       DEC    $C3     
       LDX    $C3     
       CPX    $BB     
       PHP            
       CPX    $BA     
       PHP            
       PLA            
       PLA            
       LDX    #$FF    
       TXS            
       DEC    $C3     
       JSR    $1EB1   
       LDA    #$98    
       STA    $8F     
       STA    $9E     
       LDA    $C7     
       BPL    LF48E   
       AND    #$07    
       CMP    $A9     
       BNE    LF499   
       LDA    $CF     
       JMP    $14D9   
LF48E: AND    #$07    
       CMP    $A9     
       BNE    LF499   
       LDA    $CF     
       JMP    $14EC   
LF499: LDA    $C8     
       BPL    LF4A8   
       AND    #$07    
       CMP    $A9     
       BNE    LF4B3   
       LDA    $D0     
       JMP    $14D9   
LF4A8: AND    #$07    
       CMP    $A9     
       BNE    LF4B3   
       LDA    $D0     
       JMP    $14EC   
LF4B3: LDA    $C9     
       BPL    LF4C2   
       AND    #$07    
       CMP    $A9     
       BNE    LF4CD   
       LDA    $D1     
       JMP    $14D9   
LF4C2: AND    #$07    
       CMP    $A9     
       BNE    LF4CD   
       LDA    $D1     
       JMP    $14EC   
LF4CD: LDA    $CA     
       BPL    LF4E4   
       AND    #$07    
       CMP    $A9     
       BNE    LF4F5   
       LDA    $D2     
LF4D9: STA    $9E     
       CLC            
       ADC    #$08    
       STA    $8F     
       LDY    #$08    
       BNE    LF4F5   
LF4E4: AND    #$07    
       CMP    $A9     
       BNE    LF4F5   
       LDA    $D2     
LF4EC: STA    $8F     
       CLC            
       ADC    #$08    
       STA    $9E     
       LDY    #$00    
LF4F5: STY    REFP0   
       STY    REFP1   
       LDX    #$1E    
       TXS            
       LDX    $C3     
       LDY    #$07    
       LDA    $1E1F   
LF503: STA    WSYNC   
       STA    COLUP0  
       STA    COLUP1  
       LDA    ($8F),Y 
       STA    GRP0    
       LDA    ($9E),Y 
       STA    GRP1    
       CPX    $BB     
       PHP            
       CPX    $BA     
       PHP            
       PLA            
       PLA            
       LDA    $1E17,Y 
       DEX            
       DEY            
       BPL    LF503   
       STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       CPX    $BB     
       PHP            
       CPX    $BA     
       PHP            
       PLA            
       PLA            
       STX    $C3     
       DEC    $A9     
       BMI    LF539   
       JMP    $1414   
LF539: STA    WSYNC   
       DEC    $C3     
       LDX    $C3     
       CPX    $BB     
       PHP            
       CPX    $BA     
       PHP            
       PLA            
       PLA            
       LDA    #$10    
       STA    CTRLPF  
       LDY    #$02    
       LDA    $D3     
       BEQ    LF555   
       LDA    $BE     
       BNE    LF556   
LF555: TAY            
LF556: LDA    $FA     
       AND    #$01    
       BNE    LF55D   
       TAY            
LF55D: STY    ENABL   
       LDA    #$00    
       STA    PF0     
       LDA    $E4     
       AND    $FC     
       STA    COLUPF  
       DEC    $C3     
       LDX    #$FF    
       TXS            
       JSR    $1EB1   
       JSR    $1EB1   
LF574: LDX    #$1E    
       TXS            
       LDA    #$00    
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    ENAM0   
       STA    ENAM1   
       STA    REFP0   
       LDA    #$14    
       STA    CTRLPF  
       LDY    #$08    
       STY    REFP1   
       LDX    $C3     
       STA    WSYNC   
LF58F: DEY            
       BPL    LF58F   
       STA    RESP0   
       CPX    $BB     
       PHP            
       CPX    $BA     
       PHP            
       PLA            
       PLA            
       DEX            
       LDY    #$0D    
       STA    WSYNC   
LF5A1: DEY            
       BPL    LF5A1   
       STA    RESP1   
       CPX    $BB     
       PHP            
       CPX    $BA     
       PHP            
       PLA            
       PLA            
       DEX            
       LDA    #$60    
       STA    HMP0    
       LDA    #$10    
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       CPX    $BB     
       PHP            
       CPX    $BA     
       PHP            
       PLA            
       PLA            
       DEX            
       LDY    #$07    
       LDA    $1E2F   
       STA    COLUP0  
       LDA    $1E27   
LF5CE: STA    WSYNC   
       STA    COLUP1  
       LDA    ($91),Y 
       STA    GRP0    
       LDA    ($93),Y 
       STA    GRP1    
       CPX    $BB     
       PHP            
       CPX    $BA     
       PHP            
       PLA            
       PLA            
       LDA    $1E27,Y 
       STA    COLUP0  
       LDA    $1E1F,Y 
       DEX            
       DEY            
       BPL    LF5CE   
       STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       CPX    $BB     
       PHP            
       CPX    $BA     
       PHP            
       PLA            
       PLA            
       LDA    #$00    
       STA    REFP1   
       LDA    $E6     
       STA    PF2     
       LDY    #$08    
       LDX    #$FF    
       TXS            
       STA    WSYNC   
       STA    RESP0   
LF60F: DEY            
       BPL    LF60F   
       STA    RESP1   
       LDA    #$00    
       STA    ENAM0   
       STA    ENAM1   
       LDA    #$30    
       STA    HMP0    
       LDA    #$50    
       STA    HMP1    
       LDA    $95     
       STA    $91     
       LDA    $96     
       STA    $93     
       STA    WSYNC   
       STA    HMOVE   
       LDY    #$07    
       LDX    $1E37   
       LDA    $1E27   
LF636: STA    WSYNC   
       STA    COLUP0  
       STX    COLUP1  
       LDA    ($91),Y 
       STA    GRP0    
       LDA    ($93),Y 
       STA    GRP1    
       LDA    $1E1F,Y 
       LDX    $1E2F,Y 
       DEY            
       BPL    LF636   
       STA    WSYNC   
       LDA    $A0     
       STA    COLUBK  
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       LDA    $E7     
       STA    PF0     
       LDA    $E8     
       STA    PF2     
       LDA    $A0     
       EOR    #$04    
       LDY    #$06    
       STA    WSYNC   
       STA    COLUBK  
LF66B: DEY            
       BPL    LF66B   
       STA    RESP0   
       LDA    $A0     
       LDY    #$0C    
       STA    WSYNC   
       STA    COLUBK  
LF678: DEY            
       BPL    LF678   
       STA    RESP1   
       LDA    #$D0    
       STA    HMP0    
       LDA    #$50    
       STA    HMP1    
       LDA    #$A0    
       STA    COLUBK  
       LDA    $97     
       STA    $91     
       LDA    $98     
       STA    $93     
       STA    WSYNC   
       STA    HMOVE   
       LDA    $E5     
       AND    $FC     
       STA    COLUPF  
       LDA    #$BC    
       STA    COLUP0  
       LDA    #$7E    
       STA    COLUP1  
       LDY    #$07    
LF6A5: STA    WSYNC   
       LDA    ($91),Y 
       STA    GRP0    
       LDA    ($93),Y 
       STA    GRP1    
       DEY            
       BPL    LF6A5   
       STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       LDA    #$78    
       STA    PF2     
       LDA    #$08    
       STA    REFP1   
       LDY    #$05    
       STA    WSYNC   
LF6C6: DEY            
       BPL    LF6C6   
       STA    RESP0   
       STA    RESP1   
       LDA    #$B0    
       STA    HMP0    
       LDA    #$C0    
       STA    HMP1    
       LDA    $99     
       STA    $91     
       STA    WSYNC   
       STA    HMOVE   
       LDY    #$07    
LF6DF: STA    WSYNC   
       LDA    ($91),Y 
       STA    GRP0    
       STA    GRP1    
       LDA    $1E00,Y 
       STA    COLUP0  
       STA    COLUP1  
       DEY            
       BPL    LF6DF   
       STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       LDA    #$70    
       STA    PF0     
       LDA    #$03    
       STA    PF1     
       LDA    #$FB    
       STA    PF2     
       LDY    #$09    
       STA    WSYNC   
LF709: DEY            
       BPL    LF709   
       STA    RESP0   
       STA    RESP1   
       LDA    #$D0    
       STA    HMP0    
       LDA    #$E0    
       STA    HMP1    
       LDA    $9A     
       STA    $91     
       STA    WSYNC   
       STA    HMOVE   
       LDY    #$07    
LF722: STA    WSYNC   
       CPY    #$03    
       BCS    LF734   
       LDA    #$F0    
       STA    PF0     
       LDA    #$0F    
       STA    PF1     
       LDA    #$FF    
       STA    PF2     
LF734: LDA    ($91),Y 
       STA    GRP0    
       STA    GRP1    
       LDA    $1E08,Y 
       STA    COLUP0  
       STA    COLUP1  
       DEY            
       BPL    LF722   
       STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    REFP1   
       LDY    #$04    
       STA    WSYNC   
LF752: DEY            
       BPL    LF752   
       STA    RESP0   
       STA    RESP1   
       LDA    #$20    
       STA    HMP0    
       LDA    #$30    
       STA    HMP1    
       LDA    $9B     
       STA    $91     
       LDA    $9C     
       STA    $93     
       STA    WSYNC   
       STA    HMOVE   
       LDY    #$07    
LF76F: STA    WSYNC   
       LDA    ($91),Y 
       STA    GRP0    
       LDA    ($93),Y 
       STA    GRP1    
       LDA    $1E10,Y 
       STA    COLUP0  
       STA    COLUP1  
       DEY            
       BPL    LF76F   
       STA    WSYNC   
       STA    HMCLR   
       LDA    #$FF    
       STA    PF1     
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    ENAM0   
       STA    ENAM1   
       STA    ENABL   
       LDA    #$00    
       STA    COLUBK  
       LDY    #$06    
LF79D: STA    WSYNC   
       DEY            
       BPL    LF79D   
       LDA    #$00    
       STA    CTRLPF  
       LDA    #$3E    
       AND    $FC     
       STA    COLUP1  
       STA    COLUP0  
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDY    #$06    
       STA    WSYNC   
LF7B8: DEY            
       BPL    LF7B8   
       NOP            
       STA    RESP0   
       STA    RESP1   
       LDA    #$00    
       STA    HMP1    
       LDA    #$F0    
       STA    HMP0    
       LDA    #$01    
       STA    VDELP0  
       STA    VDELP1  
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$C2    
       AND    $FC     
       STA    COLUPF  
       LDA    #$09    
       STA    $91     
LF7DC: LDY    $91     
       LDA    ($8A),Y 
       STA    GRP0    
       STA    WSYNC   
       LDA    ($88),Y 
       STA    GRP1    
       LDA    ($86),Y 
       STA    GRP0    
       LDA    ($84),Y 
       STA    $93     
       LDA    ($82),Y 
       TAX            
       LDA    ($80),Y 
       TAY            
       LDA    $93     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STY    GRP0    
       DEC    $91     
       BPL    LF7DC   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    VDELP0  
       STA    VDELP1  
       LDA    #$1F    
       STA    TIM64T  
       LDA    $D3     
       CMP    #$01    
       BNE    LF86C   
       LDA    $DB     
       BMI    LF86C   
       LDA    REFP1   
       BPL    LF825   
       STA    $C4     
       BNE    LF857   
LF825: LDA    $C4     
       BPL    LF857   
       LDX    #$01    
       LDY    #$02    
       STY    $C4     
       CPY    $8D     
       BEQ    LF84F   
       LDA    SWCHA   
       BMI    LF83C   
       LDY    #$00    
       BEQ    LF84B   
LF83C: AND    #$40    
       BEQ    LF84B   
       LDA    $8D     
       CMP    #$01    
       BEQ    LF86C   
       LDA    $D4     
       BNE    LF86C   
       DEY            
LF84B: LDA    $BB     
       BEQ    LF854   
LF84F: DEX            
       LDA    $BA     
       BNE    LF857   
LF854: JSR    $1ECF   
LF857: LDA    $8D     
       CMP    #$02    
       BNE    LF86C   
       LDA    PF0     
       BMI    LF86C   
       LDX    #$01    
       LDY    #$00    
       LDA    $BB     
       BNE    LF86C   
       JSR    $1ECF   
LF86C: LDX    #$01    
LF86E: LDA    $BA,X   
       BEQ    LF891   
       LDA    $BC,X   
       CLC            
       ADC    $C1,X   
       STA    $BC,X   
       INC    $BA,X   
       INC    $BA,X   
       LDY    $C1,X   
       BNE    LF883   
       INC    $BA,X   
LF883: LDA    $BA,X   
       CMP    #$BC    
       BCC    LF891   
       LDA    #$00    
       STA    $BA,X   
       STA    $BC,X   
       BEQ    LF891   
LF891: DEX            
       BPL    LF86E   
       LDY    #$01    
LF896: LDX    #$03    
LF898: LDA    $A4,X   
       SEC            
       SBC.wy $00BC,Y 
       BPL    LF8A5   
       EOR    #$FF    
       CLC            
       ADC    #$01    
LF8A5: CMP    #$09    
       BCC    LF8AC   
       JMP    $1932   
LF8AC: LDA    $1E69,X 
       SEC            
       SBC.wy $00BA,Y 
       BPL    LF8BA   
       EOR    #$FF    
       CLC            
       ADC    #$01    
LF8BA: CMP    #$04    
       BCS    LF932   
       STY    $90     
       LDY    #$03    
LF8C2: LDA.wy $00C7,Y 
       AND    #$47    
       STA    $8F     
       CPX    $8F     
       BNE    LF927   
       LDA.wy $00CF,Y 
       CMP    #$50    
       BNE    LF8F8   
       LDA    #$10    
       JSR    $1CDB   
       LDA    #$80    
       STA    $DB     
       STX    $DC     
       LDA    $E0     
       BNE    LF8E7   
       LDA    #$20    
       STA    $E0     
LF8E7: LDA    $A4,X   
       STA    $C0     
       LDA    #$00    
       STA    $BA     
       STA    $BB     
       STA    $EC     
       SEC            
       LDA    #$3F    
       BNE    LF908   
LF8F8: LDA.wy $00C7,Y 
       ORA    #$40    
       STA.wy $00C7,Y 
       LDA    #$01    
       JSR    $1CDB   
       CLC            
       LDA    #$2F    
LF908: STA    $E9     
       LDY    $90     
       LDA.wy $00C1,Y 
       BEQ    LF91A   
       LDA    #$01    
       BCC    LF917   
       LDA    #$10    
LF917: JSR    $1CDB   
LF91A: CPX    #$00    
       BNE    LF920   
       STX    $BE     
LF920: LDA    #$00    
       STA.wy $00BA,Y 
       BEQ    LF92C   
LF927: DEY            
       BPL    LF8C2   
       LDY    $90     
LF92C: DEY            
       BMI    LF938   
       JMP    $1896   
LF932: DEX            
       BMI    LF92C   
       JMP    $1898   
LF938: LDA    $DB     
       BMI    LF973   
       LDX    #$06    
LF93E: LDA    $1E74,X 
       SEC            
       SBC    $BE     
       BPL    LF94B   
       EOR    #$FF    
       CLC            
       ADC    #$01    
LF94B: CMP    $1E7B,X 
       BCS    LF970   
       CPX    #$00    
       BEQ    LF958   
       LDA    $D4     
       BEQ    LF970   
LF958: LDA    $D4,X   
       BNE    LF970   
       STA    $BE     
       STA    $F0     
       INC    $D4,X   
       LDA    #$3F    
       STA    $E9     
       LDA    $E0     
       BNE    LF973   
       LDA    #$03    
       STA    $E0     
       BNE    LF973   
LF970: DEX            
       BPL    LF93E   
LF973: LDA    $DB     
       BMI    LF97B   
       LDA    $D3     
       BPL    LF97E   
LF97B: JMP    $1A68   
LF97E: LDY    #$03    
LF980: LDA    #$03    
       STA    $90     
       LDA.wy $00A4,Y 
       BEQ    LF98C   
       JMP    $1A24   
LF98C: LDX    $90     
       LDA    $C7,X   
       AND    #$03    
       STA    $8F     
       CPY    $8F     
       BEQ    LF99F   
LF998: DEC    $90     
       BPL    LF98C   
LF99C: JMP    $1A1E   
LF99F: LDA    $C7,X   
       AND    #$04    
       BEQ    LF998   
       CPY    #$03    
       BNE    LF9FB   
       LDA    $D3     
       BEQ    LF9B1   
       LDA    $F0     
       BEQ    LF998   
LF9B1: LDA    $FA     
       AND    #$1F    
       BNE    LF99C   
       LDA    $C5     
       AND    #$80    
       ORA    $C7,X   
       STA    $C7,X   
       DEC    $F0     
       LDA    $C5     
       AND    #$03    
       CLC            
       ADC    $EE     
       TAX            
       LDA    $1EF3,X 
       STA    $9E     
       LDA    $C6     
       AND    #$03    
       TAX            
LF9D3: LDA    $1E65,X 
       LDX    $90     
       STA    $CF,X   
       CMP    #$50    
       BNE    LF9EA   
       LDX    #$01    
       LDA    $F5     
       BEQ    LF9D3   
       INC    $9E     
       DEC    $F5     
       STA    $EC     
LF9EA: LDX    $90     
       LDA    $C7,X   
       BMI    LF9F7   
       LDA    #$00    
       SEC            
       SBC    $9E     
       STA    $9E     
LF9F7: LDA    $9E     
       STA    $CB,X   
LF9FB: LDA    $C7,X   
       AND    #$FB    
       STA    $C7,X   
       LDA    $C7,X   
       BPL    LFA09   
       LDA    #$08    
       BNE    LFA0B   
LFA09: LDA    #$98    
LFA0B: STA.wy $00A4,Y 
       CPY    #$00    
       BNE    LFA1E   
       STA    $BE     
       LDA    $CF,X   
       CMP    #$50    
       BNE    LFA1E   
       LDA    #$00    
       STA    $EC     
LFA1E: DEY            
       BMI    LFA68   
       JMP    $1980   
LFA24: LDX    $90     
       LDA    $C7,X   
       AND    #$07    
       STA    $8F     
       CPY    $8F     
       BNE    LFA62   
       LDA    $C7,X   
       AND    #$40    
       BNE    LFA1E   
       LDA.wy $00A4,Y 
       CLC            
       ADC    $CB,X   
       STA.wy $00A4,Y 
       CMP    #$08    
       BCC    LFA47   
       CMP    #$98    
       BCC    LFA1E   
LFA47: LDA    #$00    
       STA.wy $00A4,Y 
       CPY    #$00    
       BNE    LFA58   
       STA    $BE     
       LDA    #$07    
       STA    $C7,X   
       BNE    LFA1E   
LFA58: DEC    $C7,X   
       LDA    #$04    
       ORA    $C7,X   
       STA    $C7,X   
       BNE    LFA1E   
LFA62: DEC    $90     
       BPL    LFA24   
       BMI    LFA1E   
LFA68: CLC            
       LDA    $C6     
       AND    #$40    
       ROL            
       ROL            
       ROL            
       STA    $8F     
       LDA    $C5     
       AND    #$01    
       EOR    $8F     
       ROR            
       ROL    $C5     
       ROL    $C6     
       LDA    $C6     
       AND    #$7F    
       STA    $C6     
       LDY    #$00    
       LDA    $D3     
       CMP    #$01    
       BNE    LFA93   
       LDX    #$1F    
       LDY    #$02    
       LDA    #$0F    
       STA    AUDC0   
LFA93: LDA    $E9     
       BEQ    LFAA1   
       LSR            
       LSR            
       TAX            
       TAY            
       DEC    $E9     
       LDA    #$02    
       STA    AUDC0   
LFAA1: STX    AUDF0   
       STY    AUDV0   
       LDY    #$00    
       LDA    $EA     
       BEQ    LFABB   
       EOR    #$1F    
       TAX            
       LDA    $EA     
       LSR            
       LSR            
       TAY            
       DEC    $EA     
       LDA    #$06    
       STA    AUDC1   
       BNE    LFB0F   
LFABB: LDA    $EB     
       BEQ    LFACF   
       DEC    $EB     
       LDA    $EB     
       AND    $ED     
       BEQ    LFACF   
       LDA    #$04    
       STA    AUDC1   
       LDX    #$0A    
       LDY    #$08    
LFACF: LDA    $EC     
       BEQ    LFAED   
       LDA    $E9     
       BNE    LFAED   
       LDA    #$0D    
       STA    AUDC0   
       STA    AUDC1   
       LDY    #$06    
       STY    AUDV0   
       LDX    #$19    
       STX    AUDF0   
       LDA    $FA     
       AND    #$04    
       BNE    LFAED   
       LDX    #$18    
LFAED: LDA    $BE     
       BEQ    LFB0F   
       LDA    $D3     
       BEQ    LFB0F   
       LDA    $DB     
       BMI    LFB0F   
       LDA    #$01    
       STA    AUDC1   
       STA    AUDC0   
       LDY    #$06    
       STY    AUDV0   
       LDX    #$1F    
       STX    AUDF0   
       LDA    $FA     
       AND    #$04    
       BNE    LFB0F   
       LDX    #$1E    
LFB0F: STX    AUDF1   
       STY    AUDV1   
       LDA    $D3     
       CMP    #$02    
       BNE    LFB72   
       LDA    $F2     
       CMP    #$4F    
       BNE    LFB3E   
       LDA    $F8     
       BEQ    LFB36   
       LDX    #$00    
LFB25: LDA    $D4,X   
       BEQ    LFB31   
       LDA    #$00    
       STA    $D4,X   
       DEC    $F8     
       BEQ    LFB36   
LFB31: INX            
       CPX    #$07    
       BNE    LFB25   
LFB36: LDA    #$40    
       STA    $EB     
       LDA    #$08    
       STA    $ED     
LFB3E: DEC    $F2     
       BNE    LFB9F   
       JSR    $1CAF   
       LDA    #$01    
       STA    $D3     
       LDA    $F4     
       CLC            
       ADC    #$02    
       STA    $F4     
       STA    $F0     
       INC    $F6     
       LDA    $F6     
       STA    $F5     
       LDA    $8D     
       CMP    #$03    
       BNE    LFB64   
       LDA    $F5     
       AND    #$07    
       BNE    LFB9F   
LFB64: INC    $EE     
       LDA    $EE     
       CMP    #$08    
       BCC    LFB9F   
       LDA    #$08    
       STA    $EE     
       BNE    LFB9F   
LFB72: CMP    #$01    
       BNE    LFBA3   
       LDA    $F0     
       BNE    LFB9F   
       LDX    #$03    
LFB7C: LDA    $C7,X   
       CMP    #$07    
       BNE    LFB9F   
       DEX            
       BPL    LFB7C   
       LDA    #$02    
       STA    $D3     
       LDX    $F1     
       BMI    LFB97   
       LDA    $1E6D,X 
       JSR    $1CDB   
       LDA    #$18    
       STA    $EB     
LFB97: LDA    #$02    
       STA    $ED     
       LDA    #$9F    
       STA    $F2     
LFB9F: LDA    #$FF    
       STA    $FC     
LFBA3: LDX    #$03    
LFBA5: LDA    $C7,X   
       AND    #$40    
       BEQ    LFBDD   
       LDA    $FA     
       AND    #$07    
       BNE    LFBF3   
       LDA    $C7,X   
       CLC            
       ADC    #$08    
       STA    $C7,X   
       LSR            
       LSR            
       LSR            
       AND    #$07    
       CMP    #$04    
       BNE    LFBD7   
       LDA    $C7,X   
       AND    #$03    
       TAY            
       LDA    #$00    
       STA.wy $00A4,Y 
       CPY    #$00    
       BNE    LFBD1   
       STA    $BE     
LFBD1: LDA    #$07    
       STA    $C7,X   
       BNE    LFBF3   
LFBD7: TAY            
       LDA    $1E52,Y 
       STA    $CF,X   
LFBDD: LDA    $CF,X   
       CMP    #$20    
       BEQ    LFBE7   
       CMP    #$30    
       BNE    LFBF3   
LFBE7: LDY    #$20    
       LDA    $FA     
       AND    #$04    
       BNE    LFBF1   
       LDY    #$30    
LFBF1: STY    $CF,X   
LFBF3: DEX            
       BPL    LFBA5   
LFBF6: BIT    $0285   
       BPL    LFBF6   
       JMP    $101B   
LFBFE: .byte $00,$00,$00,$00,$00,$00,$01,$01,$02,$03,$00,$00,$00,$03,$03,$02
       .byte $03,$01,$00,$02,$00,$05,$12,$07,$0A,$07,$00,$00,$01,$02,$01,$03
       .byte $02,$01,$00,$00,$00,$00,$00,$00,$01,$04,$00,$16,$02,$49,$1C,$0B
       .byte $25,$8E,$00,$00,$00,$00,$00,$01,$00,$00,$02,$01,$00,$02,$02,$00
       .byte $01,$02,$00,$00,$00,$04,$21,$00,$02,$12,$40,$12,$09,$00,$46,$12
       .byte $88,$01,$00,$02,$00,$00,$01,$00,$02,$00,$00,$01,$02,$02,$00,$02
       .byte $01,$00,$00,$00,$00,$02,$00,$40,$00,$00,$00,$02,$00,$00,$20,$00
       .byte $02,$00,$00,$00,$02,$00,$00,$00,$00,$01,$00,$00,$00,$00,$02,$00
       .byte $01,$00
LFC80: .byte $00,$10,$20,$40,$60
LFC85: .byte $08,$18,$30,$50,$70
LFC8A: .byte $01,$01,$01,$02,$03
LFC8F: .byte $01,$01,$01,$02,$04
LFC94: .byte $03,$03,$03,$06,$0A
LFC99: .byte $00,$00
LFC9B: .byte $08,$08,$08,$09,$0B
LFCA0: .byte $F0,$F0,$E0,$E0,$E0
LFCA5: .byte $08,$08,$10,$10,$10
LFCAA: .byte $0F,$0F,$1F,$1F,$1F
LFCAF: LDX    #$03    
LFCB1: LDA    #$00    
       STA    $E1     
       STA    $E2     
       STA    $BE     
       STA    $A4,X   
       LDA    #$07    
       STA    $C7,X   
       STA    $E3     
       DEX            
       BPL    LFCB1   
       STX    $FC     
       LDA    #$BA    
       STA    $E4     
       LDA    #$C6    
       STA    $E5     
       LDA    #$C0    
       STA    $E6     
       LDA    #$30    
       STA    $E7     
       LDA    #$E0    
       STA    $E8     
       RTS            

LFCDB: SED            
       BIT    $D3     
       BMI    LFCFE   
       CLC            
       ADC    $A2     
       STA    $A2     
       LDA    $A3     
       ADC    #$00    
       STA    $A3     
       LDA    $A1     
       ADC    #$00    
       STA    $A1     
       LDA    $A3     
       CMP    $F7     
       BNE    LFCFE   
       CLC            
       ADC    #$01    
       STA    $F7     
       INC    $F8     
LFCFE: CLD            
       RTS            

LFD00: .byte $AA,$45,$42,$41,$03,$01,$01,$01,$AA,$44,$84,$04,$80,$00,$00,$00
       .byte $1F,$7F,$D5,$7F,$0F,$03,$01,$01,$F8,$7E,$7E,$63,$63,$61,$01,$01
       .byte $00,$0F,$1F,$AA,$1F,$0F,$03,$04,$00,$E0,$F0,$AA,$F0,$E0,$80,$80
       .byte $00,$0F,$1F,$D5,$1F,$0F,$03,$02,$00,$E0,$F0,$56,$F0,$E0,$80,$40
       .byte $41,$43,$E6,$BD,$BD,$E6,$43,$41,$82,$C2,$67,$BD,$BD,$67,$C2,$82
       .byte $00,$00,$00,$3F,$00,$00,$00,$00,$F8,$30,$72,$FE,$72,$30,$F8,$00
       .byte $10,$10,$34,$10,$34,$10,$34,$18,$08,$08,$2C,$08,$2C,$08,$2C,$18
       .byte $FE,$10,$D0,$F0,$58,$68,$3C,$0C,$FE,$10,$16,$1E,$34,$2C,$78,$60
       .byte $C3,$C3,$7E,$18,$1C,$0E,$06,$01,$FF,$FF,$F5,$3E,$1E,$0C,$06,$00
       .byte $7F,$55,$77,$55,$1C,$08,$08,$08,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$05,$0A,$05,$00,$00,$00,$00,$00,$50,$A8,$50,$00,$00
       .byte $00,$09,$12,$04,$12,$0C,$00,$00,$00,$48,$A4,$10,$A0,$04,$80,$00
       .byte $00,$12,$04,$09,$24,$11,$00,$08,$04,$90,$42,$08,$A0,$50,$A2,$00
       .byte $22,$05,$10,$04,$4A,$04,$22,$00,$02,$48,$A1,$04,$20,$48,$A1,$08
       .byte $45,$AA,$3A,$4D,$98,$22,$08,$00,$00,$25,$A8,$0A,$44,$20,$81,$08
       .byte $00,$12,$41,$24,$01,$44,$01,$14,$20,$01,$80,$00,$82,$00,$00,$41
LFE00: .byte $3C,$3C,$FC,$FC,$5A,$5A,$CC,$CC
LFE08: .byte $0C,$0C,$8A,$7A,$6A,$5A,$4A,$3A
LFE10: .byte $CA,$8A,$6A,$5A,$2A,$2A,$4E
LFE17: .byte $4E,$64,$A4,$78,$DA,$3A,$56,$18
LFE1F: .byte $98,$FE,$CA,$CA,$98,$56,$18,$3A
LFE27: .byte $3A,$1A,$2A,$3A,$4A,$68,$68,$68
LFE2F: .byte $68,$FC,$C8,$8A,$CB,$4A,$CB,$78
LFE37: .byte $CB
LFE38: .byte $90,$70,$60,$70,$10,$18,$00
LFE3F: .byte $90,$78,$68,$78,$10,$18,$00
LFE46: .byte $04,$04,$02,$04,$04,$04,$04
LFE4D: .byte $E0,$E8,$F0,$F8,$98
LFE52: .byte $A0,$B0,$C0,$D0,$98
LFE57: .byte $A8,$B8,$C8,$D8,$98
LFE5C: .byte $5C,$55,$52
LFE5F: .byte $9A,$4B,$05
LFE62: .byte $FD,$00,$03
LFE65: .byte $20,$40,$20,$50
LFE69: .byte $74,$88,$9C,$B0
LFE6D: .byte $05,$10,$15,$20,$25,$30,$35
LFE74: .byte $4C,$54,$3E,$90,$2E,$68,$1C
LFE7B: .byte $04,$02,$02,$02,$08,$08,$08
LFE82: STA    $8F     
       INC    $8F     
       CPX    #$02    
       BCC    LFE8C   
       INC    $8F     
LFE8C: LDA    $8F     
       PHA            
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $8F     
       TAY            
       PLA            
       AND    #$0F    
       CLC            
       ADC    $8F     
       CMP    #$0F    
       BCC    LFEA3   
       SBC    #$0F    
       INY            
LFEA3: SEC            
       SBC    #$08    
       EOR    #$FF    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    $90     
       STY    $8F     
       RTS            

LFEB1: LDY    #$06    
       TSX            
       STX    $8F     
       LDX    #$1E    
       TXS            
       LDX    $C3     
LFEBB: STA    WSYNC   
       CPX    $BB     
       PHP            
       CPX    $BA     
       PHP            
       PLA            
       PLA            
       DEX            
       DEY            
       BPL    LFEBB   
       STX    $C3     
       LDX    $8F     
       TXS            
       RTS            

LFECF: LDA    $1E5C,Y 
       STA    $BA,X   
       LDA    $1E5F,Y 
       STA    $BC,X   
       LDA    $1E62,Y 
       STA    $C1,X   
       LDA    #$1F    
       STA    $EA     
       LDA    #$03    
       STA.wy $00DD,Y 
       RTS            

LFEE8: ASL            
       STA    $8F     
       ASL            
       ASL            
       CLC            
       ADC    $8F     
       STA    $8F     
       RTS            

LFEF3: .byte $01,$01,$01,$01,$02,$02,$02,$02,$03,$03,$03,$03,$00,$00,$3C,$66
       .byte $66,$66,$66,$66,$3C,$00,$00,$00,$3C,$18,$18,$18,$18,$38,$18,$00
       .byte $00,$00,$7E,$60,$60,$3C,$06,$46,$3C,$00,$00,$00,$3C,$46,$06,$1C
       .byte $06,$46,$3C,$00,$00,$00,$0C,$0C,$7E,$6C,$3C,$1C,$0C,$00,$00,$00
       .byte $7C,$06,$06,$7C,$60,$60,$7E,$00,$00,$00,$3C,$66,$66,$7C,$60,$62
       .byte $3C,$00,$00,$00,$18,$18,$18,$0C,$06,$66,$7E,$00,$00,$00,$3C,$66
       .byte $66,$3C,$66,$66,$3C,$00,$00,$00,$3C,$46,$06,$3E,$66,$66,$3C,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$0A,$0A,$0B,$0A
       .byte $0B,$08,$0F,$00,$00,$00,$70,$00,$F0,$00,$D0,$50,$50,$00,$00,$00
       .byte $9D,$95,$95,$F5,$95,$80,$E0,$00,$00,$00,$28,$6C,$EE,$AA,$29,$00
       .byte $00,$00,$00,$00,$BA,$8A,$BA,$A2,$38,$82,$00,$00,$00,$00,$E9,$AB
       .byte $AF,$AD,$E9,$00,$00,$00,$00,$00,$18,$FF,$70,$FF,$18,$00,$00,$00
       .byte $18,$FF,$0E,$FF,$18,$00,$00
LFFBA: .byte $A0,$A2,$A4,$A6,$A8,$AA,$AC,$AE
LFFC2: STA    $8F     
       INC    $8F     
       CPX    #$02    
       BCC    LFFCC   
       INC    $8F     
LFFCC: LDA    $8F     
       PHA            
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $8F     
       TAY            
       PLA            
       AND    #$0F    
       CLC            
       ADC    $8F     
       CMP    #$0F    
       BCC    LFFE3   
       SBC    #$0F    
       INY            
LFFE3: SEC            
       SBC    #$08    
       EOR    #$FF    
       STA    WSYNC   
       ASL            
       ASL            
       ASL            
       ASL            
       STA    HMP0,X  
LFFF0: DEY            
       BPL    LFFF0   
       STA    $8F     
       STA    RESP0,X 
       RTS            

LFFF8: .byte $78,$8C,$A0,$AC,$00,$F0,$00,$10
