; Disassembly of roms/Laser Blast (2).bin
; Disassembled Tue Oct  6 15:21:51 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Laser Blast (2).bin
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
CTRLPF  =  $0A
REFP1   =  $0C
PF0     =  $0D
PF1     =  $0E
PF2     =  $0F
RESP0   =  $10
RESP1   =  $11
RESBL   =  $14
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
HMBL    =  $24
VDELP0  =  $25
VDELP1  =  $26
RESMP0  =  $28
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
       JSR    LF67A   
LF00F: LDX    #$05    
LF011: LDA    LF7A5,X 
       EOR    $86     
       AND    $87     
       STA    $88,X   
       CPX    #$04    
       BCS    LF020   
       STA    COLUP0,X
LF020: DEX            
       BPL    LF011   
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$34    
       STA    CTRLPF  
LF02D: LDA    INTIM   
       BNE    LF02D   
       STA    WSYNC   
       STA    VBLANK  
       STA    COLUPF  
       STA    CXCLR   
       STA    HMCLR   
       STA    $9F     
       LDA    #$07    
       STA    $FB     
       STA    VDELP0  
       STA    VDELP1  
LF046: LDY    $FB     
       LDA    ($E1),Y 
       STA    $FA     
       LDA    ($DF),Y 
       TAX            
       LDA    ($D7),Y 
       STA    WSYNC   
       NOP            
       STA    GRP0    
       LDA    ($D9),Y 
       STA    GRP1    
       LDA    ($DB),Y 
       STA    GRP0    
       LDA    ($DD),Y 
       LDY    $FA     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       DEC    $FB     
       BPL    LF046   
       LDA    #$80    
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       LDY    #$00    
       STY    VDELP0  
       STY    VDELP1  
       STY    GRP0    
       STY    GRP1    
       LDA    $8C     
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$06    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDX    $A3     
       BPL    LF092   
       LDX    #$00    
LF092: LDA    LF7F4,X 
       STA    NUSIZ0  
       STA    $FA     
       LDA    LF7F3,X 
       STA    NUSIZ1  
       STA    $FB     
       LDY    #$07    
LF0A2: STA    WSYNC   
       LDA    LF784,Y 
       BIT    $FA     
       BMI    LF0AD   
       STA    GRP0    
LF0AD: BIT    $FB     
       BMI    LF0B3   
       STA    GRP1    
LF0B3: DEY            
       BNE    LF0A2   
       STA    WSYNC   
       STY    GRP0    
       STY    GRP1    
       LDA    $F8     
       AND    $87     
       STA    COLUP1  
       LDA    $EA     
       BIT    $F1     
       BMI    LF0CA   
       LDA    $8C     
LF0CA: AND    $87     
       STA    COLUP0  
       STA    WSYNC   
       STY    $93     
       STY    $94     
       STY    NUSIZ0  
       STY    NUSIZ1  
       LDY    #$02    
       STY    RESMP0  
       STY    ENABL   
       LDA    $F7     
       AND    #$0F    
       BNE    LF0E6   
       LDY    #$00    
LF0E6: STY    ENAM0   
       LDY    #$02    
       LDA    $F8     
       AND    #$0F    
       BNE    LF0F2   
       LDY    #$00    
LF0F2: STY    $9E     
       LDA    $F7     
       AND    $87     
       STA    $FC     
       LDA    $8F     
       LDX    #$00    
       JSR    LF699   
       LDX    #$03    
       LDA    $9D     
       CLC            
       ADC    #$04    
       JSR    LF699   
       LDA    $A4     
       AND    #$01    
       ASL            
       ASL            
       ASL            
       ADC    #$95    
       STA    $E7     
       SEC            
       LDA    $9B     
       SBC    $9C     
       ASL            
       ASL            
       CLC            
       ADC    $A4     
       LDX    $90     
       CLC            
       ADC    LF6D5,X 
       TAY            
       LDA    LF7D6,X 
       CPY    #$60    
       BCC    LF130   
       AND    #$F2    
LF130: CPY    #$80    
       BCC    LF136   
       AND    #$F0    
LF136: STA    $91     
       TYA            
       CMP    #$A0    
       BCC    LF13F   
       LDA    #$00    
LF13F: STA    $FB     
       LDX    #$01    
       JSR    LF699   
       STA    WSYNC   
       STA    HMOVE   
       LDA    $FB     
       CMP    #$86    
       BCS    LF152   
       STA    WSYNC   
LF152: DEX            
       STX    $FA     
       LDA    $9E     
       STA    ENAM1   
       STA    WSYNC   
       LDA    $F1     
       AND    #$02    
       LSR            
       EOR    #$01    
       ORA    #$8A    
       TAX            
LF165: CLC            
       LDA    $94     
       ADC    $96     
       STA    $94     
       STA    HMCLR   
       BCC    LF174   
       LDA    $98     
       STA    HMM1    
LF174: TXA            
       SEC            
       SBC    $8E     
       BCC    LF18C   
       TAY            
       AND    #$F8    
       BEQ    LF181   
       LDY    #$07    
LF181: STA    WSYNC   
       STA    HMOVE   
       LDA    ($E3),Y 
       STA    GRP0    
       DEX            
       BNE    LF165   
LF18C: LDA    #$00    
       STA    RESMP0  
       LDY    $EF     
LF192: STA    WSYNC   
       STA    HMOVE   
       DEY            
       BNE    LF1A2   
       STY    GRP0    
       LDA    $FC     
       STA    COLUP0  
       JMP    LF1AA   
LF1A2: BIT    NUSIZ0  
       BVC    LF1AA   
       LDA    #$00    
       STA    ENAM0   
LF1AA: CLC            
       LDA    $94     
       ADC    $96     
       STA    $94     
       STA    HMCLR   
       BCC    LF1B9   
       LDA    $98     
       STA    HMM1    
LF1B9: CLC            
       LDA    $93     
       ADC    $95     
       STA    $93     
       BCC    LF1CA   
       LDA    $97     
       STA    HMM0    
       STA    HMP0    
       INC    $9F     
LF1CA: DEX            
       BNE    LF192   
       LDY    #$07    
LF1CF: STA    WSYNC   
       STA    HMOVE   
       LDA    #$10    
       STA    NUSIZ1  
       LDA    $F3     
       STA    ENAM1   
       LDA    $8D     
       STA    COLUP1  
       CLC            
       LDA    $93     
       ADC    $95     
       STA    $93     
       STA    HMCLR   
       BCC    LF1F0   
       LDA    $97     
       STA    HMM0    
       STA    HMP0    
LF1F0: CLC            
       LDA    $94     
       ADC    $96     
       STA    $94     
       BCC    LF1FD   
       LDA    $98     
       STA    HMM1    
LF1FD: DEY            
       BPL    LF1CF   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$3C    
       STA    GRP1    
       STX    ENAM0   
       STX    ENAM1   
       LDA    $8A     
       STA    COLUPF  
       LDA    $91     
       STA    NUSIZ1  
       LDA    $88     
       STA    COLUP0  
       LDA    #$30    
       STA    CTRLPF  
       BIT    NUSIZ0  
       BVC    LF224   
       LDA    #$58    
       STA    $E5     
LF224: LDY    #$07    
LF226: LDA    ($E7),Y 
       TAX            
       LDA    ($E5),Y 
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       STX    GRP1    
       LDA.wy $00A7,Y 
       STA    PF0     
       LDA.wy $00AF,Y 
       STA    PF1     
       LDA.wy $00B7,Y 
       STA    PF2     
       LDA.wy $00BF,Y 
       STA    PF0     
       LDA.wy $00C7,Y 
       STA    PF1     
       LDA.wy $00CF,Y 
       STA    PF2     
       STA    HMCLR   
       DEY            
       BPL    LF226   
       STA    WSYNC   
       STA    HMOVE   
       LDA    $F1     
       AND    #$02    
       LSR            
       ORA    #$06    
       TAX            
LF262: STA    WSYNC   
       STA    HMOVE   
       STY    PF0     
       STY    PF1     
       STY    PF2     
       DEX            
       BPL    LF262   
       STA    WSYNC   
       STA    HMOVE   
       STA    RESBL   
       INX            
       STX    PF0     
       STX    PF1     
       STX    PF2     
       STX    COLUPF  
       INX            
       STX    NUSIZ0  
       STA    RESP0   
       STA    RESP1   
       STX    NUSIZ1  
       LDA    #$30    
       STA    HMCLR   
       STA    HMBL    
       LSR            
       STA    HMP1    
       LDA    $88     
       STA    COLUP1  
       LDX    #$07    
LF296: STA    WSYNC   
       STA    HMOVE   
       LDA    LF6E0,X 
       STA    GRP0    
       LDA    LF6E8,X 
       STA    GRP1    
       NOP            
       LDA    LF6F8,X 
       TAY            
       LDA    LF6F0,X 
       STA    GRP0    
       STY    GRP1    
       STA    HMCLR   
       DEX            
       BPL    LF296   
       LDA    #$1C    
       STA    TIM64T  
       LDA    $F1     
       CMP    #$01    
       BNE    LF2C9   
       JSR    LF7C9   
       DEC    $A3     
       BPL    LF2C9   
       INC    $EB     
LF2C9: LDX    #$02    
LF2CB: TXA            
       ASL            
       ASL            
       TAY            
       LDA    $EC,X   
       AND    #$F0    
       LSR            
       STA.wy $00D7,Y 
       LDA    $EC,X   
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA.wy $00D9,Y 
       DEX            
       BPL    LF2CB   
       LDX    #$01    
LF2E6: LDA    $F7,X   
       AND    #$0F    
       BEQ    LF2EE   
       DEC    $F7,X   
LF2EE: LDA    $F4,X   
       BEQ    LF2F4   
       DEC    $F4,X   
LF2F4: LDA    $F1,X   
       BEQ    LF2FC   
       BMI    LF2FC   
       DEC    $F1,X   
LF2FC: LDA    $F7,X   
       AND    #$0F    
       STA    AUDV0,X 
       CPX    #$00    
       BNE    LF315   
       TAY            
       BNE    LF30D   
       LDA    #$58    
       BNE    LF312   
LF30D: AND    #$0C    
       ASL            
       ADC    #$5D    
LF312: STA    $E5     
       TYA            
LF315: EOR    #$0F    
       ADC    LF7FE,X 
       STA    AUDF0,X 
       LDA    #$0F    
       STA    AUDC0,X 
       DEX            
       BPL    LF2E6   
       LDA    $F6     
       BEQ    LF337   
       DEC    $F6     
       LDA    $F6     
       AND    #$03    
       BNE    LF36E   
       LDA    #$0C    
       STA    AUDV0   
       STA    AUDC0   
       BNE    LF36C   
LF337: LDA    $F2     
       BNE    LF35A   
       LDA    $F1     
       BEQ    LF36E   
       BPL    LF35A   
       LDY    #$02    
       STY    AUDV0   
       LDA    #$04    
       STA    AUDC0   
       LDA    $EA     
       LSR            
       PHP            
       SEC            
       LDA    #$82    
       SBC    $8E     
       LSR            
       LSR            
       LSR            
       PLP            
       ADC    #$0F    
       BNE    LF36C   
LF35A: LSR            
       STA    $FA     
       STA    AUDV0   
       AND    #$03    
       ORA    #$08    
       STA    AUDC0   
       LDA    #$10    
       SEC            
       SBC    $FA     
       ORA    #$10    
LF36C: STA    AUDF0   
LF36E: INX            
LF36F: LDA    $D7,X   
       CMP    #$00    
       BNE    LF37F   
       LDA    #$58    
       STA    $D7,X   
       INX            
       INX            
       CPX    #$09    
       BCC    LF36F   
LF37F: LDA    #$58    
       LDY    $EB     
       BNE    LF39B   
       LDA    $EA     
       LSR            
       BCS    LF39D   
       INC    $92     
       LDA    $92     
       CMP    #$03    
       BCC    LF396   
       LDA    #$00    
       STA    $92     
LF396: ASL            
       ASL            
       ASL            
       ADC    #$7D    
LF39B: STA    $E3     
LF39D: LDA    INTIM   
       BNE    LF39D   
       LDY    #$82    
       STY    WSYNC   
       STY    VBLANK  
       STY    VSYNC   
       STY    WSYNC   
       STY    WSYNC   
       STY    WSYNC   
       STA    VSYNC   
       INC    $EA     
       BNE    LF3BD   
       INC    $E9     
       BNE    LF3BD   
       SEC            
       ROR    $E9     
LF3BD: LDY    #$FF    
       LDA    SWCHB   
       AND    #$08    
       BNE    LF3C8   
       LDY    #$0F    
LF3C8: TYA            
       LDY    #$00    
       BIT    $E9     
       BPL    LF3D3   
       AND    #$F7    
       LDY    $E9     
LF3D3: STY    $86     
       ASL    $86     
       STA    $87     
       LDA    #$27    
       STA    WSYNC   
       STA    TIM64T  
       LDA    $81     
       BEQ    LF3FE   
       LDA    SWCHB   
       LSR            
       BCS    LF3EF   
LF3EA: LDX    #$E9    
       JMP    LF004   
LF3EF: LDY    #$00    
       LSR            
       BCS    LF418   
       LDA    $82     
       BEQ    LF3FC   
       DEC    $82     
       BPL    LF41A   
LF3FC: INC    $80     
LF3FE: LDA    $80     
       AND    #$03    
       STA    $80     
       TAY            
       INY            
       STY    $EE     
       LDA    #$00    
       STA    $F1     
       STA    $E9     
       STA    $EC     
       STA    $ED     
       LDY    #$1E    
       STY    $EB     
       STY    $81     
LF418: STY    $82     
LF41A: LDA    SWCHA   
       TAY            
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $84     
       INY            
       BEQ    LF42B   
       LDA    #$00    
       STA    $E9     
LF42B: LDA    $EB     
       BEQ    LF437   
       LDA    $84     
       LSR            
       BCC    LF3EA   
       JMP    LF00F   
LF437: LDA    COLUP1  
       EOR    #$80    
       ORA    $F1     
       BPL    LF442   
LF43F: JMP    LF4C7   
LF442: LDA    $A5     
       BNE    LF43F   
       LDY    $ED     
       SEC            
       LDA    $A6     
       SBC    #$3A    
       ASL            
       SED            
       LDX    #$02    
LF451: ADC    $EC,X   
       STA    $EC,X   
       LDA    #$00    
       DEX            
       BPL    LF451   
       CLD            
       BCC    LF467   
       LDA    #$AA    
       STA    $EC     
       STA    $ED     
       STA    $EE     
       STA    $EB     
LF467: LDA    #$1E    
       STA    $F2     
       TYA            
       EOR    $ED     
       AND    #$F0    
       BEQ    LF47E   
       LDA    $A3     
       CMP    #$06    
       BCS    LF47E   
       LDA    #$3F    
       STA    $F6     
       INC    $A3     
LF47E: LDA    $9F     
       BIT    $97     
       BMI    LF489   
       EOR    #$FF    
       CLC            
       ADC    #$01    
LF489: CLC            
       ADC    $8F     
       CLC            
       ADC    #$30    
       SEC            
       SBC    $A4     
       SEC            
       SBC    #$24    
       LSR            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    $90     
       AND    LF6DD,Y 
       STA    $90     
       BNE    LF4C7   
       STA    $9C     
       LDA    #$07    
       STA    $90     
       LDA    #$28    
       STA    $9B     
       LDA    $A6     
       CMP    #$82    
       BCS    LF4B8   
       ADC    #$08    
       STA    $A6     
LF4B8: LDX    $80     
LF4BA: LDA    $F0     
       CMP    LF6CB,X 
       BCS    LF4C7   
       INC    $F0     
       CPX    #$03    
       BEQ    LF4BA   
LF4C7: LDX    $F0     
       LDA    LF7ED,X 
       STA    $A0     
       LDA    LF6CF,X 
       STA    $A1     
       BIT    VBLANK  
       BPL    LF4DD   
       LDA    #$80    
       STA    $F1     
       STA    $F7     
LF4DD: LDY    #$3F    
       LDA    $F1     
       BEQ    LF4FE   
       STY    $F5     
       BPL    LF4F3   
       DEC    $8E     
       LDA    $8E     
       CMP    #$03    
       BCS    LF4FE   
       LDA    #$1E    
       STA    $F1     
LF4F3: AND    #$18    
       CLC            
       ADC    #$5D    
       STA    $E5     
       LDA    #$58    
       STA    $E3     
LF4FE: LDA    REFP1   
       AND    #$80    
       CMP    $83     
       STA    $83     
       BEQ    LF524   
       CMP    #$00    
       BEQ    LF524   
       LDA    $A5     
       BNE    LF524   
       LDA    $F4     
       BNE    LF524   
       LDA    #$00    
       STA    $E9     
       LDA    $F1     
       BNE    LF524   
       LDA    #$4F    
       STA    $F7     
       LDA    #$00    
       STA    $F4     
LF524: LDA    #$01    
       STA    $EF     
       LDA    $F1     
       BNE    LF555   
       LDA    $F7     
       AND    #$0F    
       BNE    LF573   
       LDY    #$00    
       LDA    REFP1   
       BMI    LF555   
       LDA    #$0A    
       STA    $EF     
       LDA    $84     
       LSR            
       LSR            
       LSR            
       BCS    LF547   
       LDY    #$10    
       LDX    #$35    
LF547: LSR            
       BCS    LF54E   
       LDY    #$F0    
       LDX    #$35    
LF54E: STY    $97     
       STX    $95     
       JMP    LF593   
LF555: LDA    $84     
       LDY    $F1     
       BEQ    LF55F   
       BPL    LF585   
       ORA    #$03    
LF55F: LSR            
       BCS    LF564   
       INC    $8E     
LF564: LSR            
       BCS    LF569   
       DEC    $8E     
LF569: LSR            
       BCS    LF56E   
       DEC    $8F     
LF56E: LSR            
       BCS    LF573   
       INC    $8F     
LF573: LDY    $F1     
       BNE    LF585   
       LDA    #$82    
       CMP    $8E     
       BCC    LF583   
       LDA    $A6     
       CMP    $8E     
       BCC    LF585   
LF583: STA    $8E     
LF585: LDA    #$85    
       CMP    $8F     
       BCC    LF591   
       LDA    #$0F    
       CMP    $8F     
       BCC    LF593   
LF591: STA    $8F     
LF593: LDA    $A5     
       BNE    LF5C4   
       BIT    $E9     
       BMI    LF5C4   
       LDA    $F5     
       BNE    LF5C4   
       LDA    $EA     
       AND    $A0     
       BNE    LF5C4   
       LDA    $A2     
       BNE    LF5C4   
LF5A9: INC    $F9     
       LDA    $F9     
       CMP    #$03    
       BCC    LF5B5   
       LDA    #$00    
       STA    $F9     
LF5B5: JSR    LF6C1   
       BEQ    LF5A9   
       LDA    $8F     
       STA    $9D     
       LDA    #$1F    
       STA    $A2     
       STA    $F3     
LF5C4: LDA    $F9     
       ASL            
       ASL            
       ASL            
       ASL            
       ASL            
       ADC    $A4     
       LDY    #$F0    
       SEC            
       SBC    $9D     
       BPL    LF5DB   
       LDY    #$10    
       EOR    #$FF    
       CLC            
       ADC    #$01    
LF5DB: STA    $FA     
       LSR            
       LSR            
       CLC            
       ADC    $FA     
       LSR    $FA     
       ADC    $FA     
       STA    $96     
       STY    $98     
       JSR    LF6C1   
       BNE    LF5F5   
       STA    $F3     
       STA    $F8     
       STA    $A2     
LF5F5: LDA    $EA     
       AND    $A1     
       BNE    LF61C   
       LDA    $F1     
       BNE    LF61C   
       LDA    $90     
       LDY    $8F     
       CPY    #$50    
       BCC    LF609   
       ORA    #$08    
LF609: TAX            
       SEC            
       TYA            
       SBC    LF7DD,X 
       SEC            
       SBC    $A4     
       BEQ    LF61C   
       BMI    LF61A   
       INC    $A4     
       INC    $A4     
LF61A: DEC    $A4     
LF61C: LDA    $A2     
       BEQ    LF62C   
       DEC    $A2     
       LDA    $A2     
       CMP    #$0F    
       BNE    LF62C   
       LDA    #$8F    
       STA    $F8     
LF62C: LDA    $9B     
       EOR    $9C     
       STA    $A5     
       BEQ    LF677   
       LDA    #$30    
       STA    $A4     
       LDY    #$00    
       STY    $F3     
       STY    $F8     
       STY    $A2     
       STY    $F4     
       LDA    $A0     
       LSR            
       LSR            
       LSR            
       LSR            
       LSR            
       AND    $EA     
       BNE    LF677   
       INC    $9C     
       LDA    $F1     
       BEQ    LF65A   
       LDA    $8F     
       SEC            
       SBC    #$04    
       STA    $8F     
LF65A: LDX    #$07    
LF65C: LDA    $A7,X   
       AND    #$10    
       CMP    #$10    
       ROR    $CF,X   
       ROL    $C7,X   
       ROR    $BF,X   
       LDA    $BF,X   
       AND    #$08    
       CMP    #$08    
       ROR    $B7,X   
       ROL    $AF,X   
       ROR    $A7,X   
       DEX            
       BPL    LF65C   
LF677: JMP    LF00F   
LF67A: LDX    #$11    
       LDA    #$F7    
LF67E: STA    $D7,X   
       DEX            
       DEX            
       BPL    LF67E   
       LDX    #$30    
LF686: LDY    #$07    
LF688: LDA    LF7AB,Y 
       STA    $A6,X   
       DEX            
       DEY            
       BPL    LF688   
       TXA            
       BNE    LF686   
       STX    $9C     
       JMP    LF7B3   
LF699: CLC            
       ADC    #$2E    
       TAY            
       AND    #$0F    
       STA    $FA     
       TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       CLC            
       ADC    $FA     
       CMP    #$0F    
       BCC    LF6B1   
       SBC    #$0F    
       INY            
LF6B1: EOR    #$07    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    HMP0,X  
       STA    WSYNC   
LF6BB: DEY            
       BPL    LF6BB   
       STA    RESP0,X 
       RTS            

LF6C1: LDX    $F9     
       LDA    LF6DD,X 
       EOR    #$07    
       AND    $90     
       RTS            

LF6CB: .byte $03,$04,$05,$05
LF6CF: .byte $0F,$07,$03,$01,$01,$01
LF6D5: .byte $00,$40,$20,$20,$00,$00,$00,$00
LF6DD: .byte $03,$05,$06
LF6E0: .byte $00,$AD,$A9,$E9,$A9,$ED,$41,$0F
LF6E8: .byte $00,$50,$58,$5C,$56,$53,$11,$F0
LF6F0: .byte $00,$BA,$8A,$BA,$A2,$3A,$80,$FE
LF6F8: .byte $00,$E9,$AB,$AF,$AD,$E9,$00,$00,$3C,$66,$66,$66,$66,$66,$66,$3C
       .byte $3C,$18,$18,$18,$18,$18,$38,$18,$7E,$60,$60,$3C,$06,$06,$46,$3C
       .byte $3C,$46,$06,$0C,$0C,$06,$46,$3C,$0C,$0C,$0C,$7E,$4C,$2C,$1C,$0C
       .byte $7C,$46,$06,$06,$7C,$60,$60,$7E,$3C,$66,$66,$66,$7C,$60,$62,$3C
       .byte $18,$18,$18,$18,$0C,$06,$42,$7E,$3C,$66,$66,$3C,$3C,$66,$66,$3C
       .byte $3C,$46,$06,$3E,$66,$66,$66,$3C,$00,$18,$00,$18,$18,$18,$18,$18
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$04,$20,$81,$44,$00,$00,$00,$08
       .byte $20,$81,$04,$40,$00,$00,$08,$10,$42,$08,$40,$00,$00,$00,$18,$42
       .byte $08,$20,$00,$00,$00,$18,$3C,$B6,$B6,$B6,$3C,$18
LF784: .byte $00,$18,$3C,$DB,$DB,$DB,$3C,$18,$00,$18,$3C,$6D,$6D,$6D,$3C,$18
       .byte $00,$00,$42,$E7,$42,$7E,$7E,$7E,$3C,$00,$A5,$42,$A5,$7E,$7E,$7E
       .byte $3C
LF7A5: .byte $0C,$0C,$D4,$00,$1A,$06
LF7AB: .byte $FF,$FF,$DF,$8F,$07,$03,$01,$00
LF7B3: INX            
       STX    $EF     
       LDA    #$28    
       STA    $9B     
       LDA    #$58    
       STA    $E5     
       LDA    #$42    
       STA    $A6     
       LDA    #$07    
       STA    $90     
       LSR            
       STA    $A3     
LF7C9: LDA    #$0F    
       STA    $8F     
       LDA    #$82    
       STA    $8E     
       LDA    #$80    
       STA    $83     
       RTS            

LF7D6: .byte $10,$10,$10,$12,$10,$14,$12
LF7DD: .byte $16,$40,$20,$20,$00,$00,$00,$00,$00,$40,$20,$40,$00,$40,$20,$40
LF7ED: .byte $7F,$7F,$7F,$7F,$3F,$1F
LF7F3: .byte $80
LF7F4: .byte $80,$00,$00,$02,$02,$06,$06,$00,$00,$F0
LF7FE: .byte $00,$04,$78,$D8,$A2,$00,$A9,$00,$95,$00,$9A,$E8,$D0,$FA,$20,$7A
       .byte $F6,$A2,$05,$BD,$A5,$F7,$45,$86,$25,$87,$95,$88,$E0,$04,$B0,$02
       .byte $95,$06,$CA,$10,$EE,$A9,$03,$85,$04,$85,$05,$A9,$34,$85,$0A,$AD
       .byte $84,$02,$D0,$FB,$85,$02,$85,$01,$85,$08,$85,$2C,$85,$2B,$85,$9F
       .byte $A9,$07,$85,$FB,$85,$25,$85,$26,$A4,$FB,$B1,$E1,$85,$FA,$B1,$DF
       .byte $AA,$B1,$D7,$85,$02,$EA,$85,$1B,$B1,$D9,$85,$1C,$B1,$DB,$85,$1B
       .byte $B1,$DD,$A4,$FA,$85,$1C,$86,$1B,$84,$1C,$85,$1B,$C6,$FB,$10,$D8
       .byte $A9,$80,$85,$21,$85,$02,$85,$2A,$A0,$00,$84,$25,$84,$26,$84,$1B
       .byte $84,$1C,$A5,$8C,$85,$06,$85,$07,$A9,$06,$85,$04,$85,$05,$A6,$A3
       .byte $10,$02,$A2,$00,$BD,$F4,$F7,$85,$04,$85,$FA,$BD,$F3,$F7,$85,$05
       .byte $85,$FB,$A0,$07,$85,$02,$B9,$84,$F7,$24,$FA,$30,$02,$85,$1B,$24
       .byte $FB,$30,$02,$85,$1C,$88,$D0,$EC,$85,$02,$84,$1B,$84,$1C,$A5,$F8
       .byte $25,$87,$85,$07,$A5,$EA,$24,$F1,$30,$02,$A5,$8C,$25,$87,$85,$06
       .byte $85,$02,$84,$93,$84,$94,$84,$04,$84,$05,$A0,$02,$84,$28,$84,$1F
       .byte $A5,$F7,$29,$0F,$D0,$02,$A0,$00,$84,$1D,$A0,$02,$A5,$F8,$29,$0F
       .byte $D0,$02,$A0,$00,$84,$9E,$A5,$F7,$25,$87,$85,$FC,$A5,$8F,$A2,$00
       .byte $20,$99,$F6,$A2,$03,$A5,$9D,$18,$69,$04,$20,$99,$F6,$A5,$A4,$29
       .byte $01,$0A,$0A,$0A,$69,$95,$85,$E7,$38,$A5,$9B,$E5,$9C,$0A,$0A,$18
       .byte $65,$A4,$A6,$90,$18,$7D,$D5,$F6,$A8,$BD,$D6,$F7,$C0,$60,$90,$02
       .byte $29,$F2,$C0,$80,$90,$02,$29,$F0,$85,$91,$98,$C9,$A0,$90,$02,$A9
       .byte $00,$85,$FB,$A2,$01,$20,$99,$F6,$85,$02,$85,$2A,$A5,$FB,$C9,$86
       .byte $B0,$02,$85,$02,$CA,$86,$FA,$A5,$9E,$85,$1E,$85,$02,$A5,$F1,$29
       .byte $02,$4A,$49,$01,$09,$8A,$AA,$18,$A5,$94,$65,$96,$85,$94,$85,$2B
       .byte $90,$04,$A5,$98,$85,$23,$8A,$38,$E5,$8E,$90,$12,$A8,$29,$F8,$F0
       .byte $02,$A0,$07,$85,$02,$85,$2A,$B1,$E3,$85,$1B,$CA,$D0,$D9,$A9,$00
       .byte $85,$28,$A4,$EF,$85,$02,$85,$2A,$88,$D0,$09,$84,$1B,$A5,$FC,$85
       .byte $06,$4C,$AA,$F1,$24,$04,$50,$04,$A9,$00,$85,$1D,$18,$A5,$94,$65
       .byte $96,$85,$94,$85,$2B,$90,$04,$A5,$98,$85,$23,$18,$A5,$93,$65,$95
       .byte $85,$93,$90,$08,$A5,$97,$85,$22,$85,$20,$E6,$9F,$CA,$D0,$C5,$A0
       .byte $07,$85,$02,$85,$2A,$A9,$10,$85,$05,$A5,$F3,$85,$1E,$A5,$8D,$85
       .byte $07,$18,$A5,$93,$65,$95,$85,$93,$85,$2B,$90,$06,$A5,$97,$85,$22
       .byte $85,$20,$18,$A5,$94,$65,$96,$85,$94,$90,$04,$A5,$98,$85,$23,$88
       .byte $10,$CF,$85,$02,$85,$2A,$A9,$3C,$85,$1C,$86,$1D,$86,$1E,$A5,$8A
       .byte $85,$08,$A5,$91,$85,$05,$A5,$88,$85,$06,$A9,$30,$85,$0A,$24,$04
       .byte $50,$04,$A9,$58,$85,$E5,$A0,$07,$B1,$E7,$AA,$B1,$E5,$85,$02,$85
       .byte $2A,$85,$1B,$86,$1C,$B9,$A7,$00,$85,$0D,$B9,$AF,$00,$85,$0E,$B9
       .byte $B7,$00,$85,$0F,$B9,$BF,$00,$85,$0D,$B9,$C7,$00,$85,$0E,$B9,$CF
       .byte $00,$85,$0F,$85,$2B,$88,$10,$D0,$85,$02,$85,$2A,$A5,$F1,$29,$02
       .byte $4A,$09,$06,$AA,$85,$02,$85,$2A,$84,$0D,$84,$0E,$84,$0F,$CA,$10
       .byte $F3,$85,$02,$85,$2A,$85,$14,$E8,$86,$0D,$86,$0E,$86,$0F,$86,$08
       .byte $E8,$86,$04,$85,$10,$85,$11,$86,$05,$A9,$30,$85,$2B,$85,$24,$4A
       .byte $85,$21,$A5,$88,$85,$07,$A2,$07,$85,$02,$85,$2A,$BD,$E0,$F6,$85
       .byte $1B,$BD,$E8,$F6,$85,$1C,$EA,$BD,$F8,$F6,$A8,$BD,$F0,$F6,$85,$1B
       .byte $84,$1C,$85,$2B,$CA,$10,$E1,$A9,$1C,$8D,$96,$02,$A5,$F1,$C9,$01
       .byte $D0,$09,$20,$C9,$F7,$C6,$A3,$10,$02,$E6,$EB,$A2,$02,$8A,$0A,$0A
       .byte $A8,$B5,$EC,$29,$F0,$4A,$99,$D7,$00,$B5,$EC,$29,$0F,$0A,$0A,$0A
       .byte $99,$D9,$00,$CA,$10,$E7,$A2,$01,$B5,$F7,$29,$0F,$F0,$02,$D6,$F7
       .byte $B5,$F4,$F0,$02,$D6,$F4,$B5,$F1,$F0,$04,$30,$02,$D6,$F1,$B5,$F7
       .byte $29,$0F,$95,$19,$E0,$00,$D0,$0F,$A8,$D0,$04,$A9,$58,$D0,$05,$29
       .byte $0C,$0A,$69,$5D,$85,$E5,$98,$49,$0F,$7D,$FE,$F7,$95,$17,$A9,$0F
       .byte $95,$15,$CA,$10,$C3,$A5,$F6,$F0,$10,$C6,$F6,$A5,$F6,$29,$03,$D0
       .byte $3F,$A9,$0C,$85,$19,$85,$15,$D0,$35,$A5,$F2,$D0,$1F,$A5,$F1,$F0
       .byte $2F,$10,$19,$A0,$02,$84,$19,$A9,$04,$85,$15,$A5,$EA,$4A,$08,$38
       .byte $A9,$82,$E5,$8E,$4A,$4A,$4A,$28,$69,$0F,$D0,$12,$4A,$85,$FA,$85
       .byte $19,$29,$03,$09,$08,$85,$15,$A9,$10,$38,$E5,$FA,$09,$10,$85,$17
       .byte $E8,$B5,$D7,$C9,$00,$D0,$0A,$A9,$58,$95,$D7,$E8,$E8,$E0,$09,$90
       .byte $F0,$A9,$58,$A4,$EB,$D0,$16,$A5,$EA,$4A,$B0,$13,$E6,$92,$A5,$92
       .byte $C9,$03,$90,$04,$A9,$00,$85,$92,$0A,$0A,$0A,$69,$7D,$85,$E3,$AD
       .byte $84,$02,$D0,$FB,$A0,$82,$84,$02,$84,$01,$84,$00,$84,$02,$84,$02
       .byte $84,$02,$85,$00,$E6,$EA,$D0,$07,$E6,$E9,$D0,$03,$38,$66,$E9,$A0
       .byte $FF,$AD,$82,$02,$29,$08,$D0,$02,$A0,$0F,$98,$A0,$00,$24,$E9,$10
       .byte $04,$29,$F7,$A4,$E9,$84,$86,$06,$86,$85,$87,$A9,$27,$85,$02,$8D
       .byte $96,$02,$A5,$81,$F0,$1A,$AD,$82,$02,$4A,$B0,$05,$A2,$E9,$4C,$04
       .byte $F0,$A0,$00,$4A,$B0,$24,$A5,$82,$F0,$04,$C6,$82,$10,$1E,$E6,$80
       .byte $A5,$80,$29,$03,$85,$80,$A8,$C8,$84,$EE,$A9,$00,$85,$F1,$85,$E9
       .byte $85,$EC,$85,$ED,$A0,$1E,$84,$EB,$84,$81,$84,$82,$AD,$80,$02,$A8
       .byte $4A,$4A,$4A,$4A,$85,$84,$C8,$F0,$04,$A9,$00,$85,$E9,$A5,$EB,$F0
       .byte $08,$A5,$84,$4A,$90,$B6,$4C,$0F,$F0,$A5,$07,$49,$80,$05,$F1,$10
       .byte $03,$4C,$C7,$F4,$A5,$A5,$D0,$F9,$A4,$ED,$38,$A5,$A6,$E9,$3A,$0A
       .byte $F8,$A2,$02,$75,$EC,$95,$EC,$A9,$00,$CA,$10,$F7,$D8,$90,$0A,$A9
       .byte $AA,$85,$EC,$85,$ED,$85,$EE,$85,$EB,$A9,$1E,$85,$F2,$98,$45,$ED
       .byte $29,$F0,$F0,$0C,$A5,$A3,$C9,$06,$B0,$06,$A9,$3F,$85,$F6,$E6,$A3
       .byte $A5,$9F,$24,$97,$30,$05,$49,$FF,$18,$69,$01,$18,$65,$8F,$18,$69
       .byte $30,$38,$E5,$A4,$38,$E9,$24,$4A,$4A,$4A,$4A,$4A,$A8,$A5,$90,$39
       .byte $DD,$F6,$85,$90,$D0,$23,$85,$9C,$A9,$07,$85,$90,$A9,$28,$85,$9B
       .byte $A5,$A6,$C9,$82,$B0,$04,$69,$08,$85,$A6,$A6,$80,$A5,$F0,$DD,$CB
       .byte $F6,$B0,$06,$E6,$F0,$E0,$03,$F0,$F3,$A6,$F0,$BD,$ED,$F7,$85,$A0
       .byte $BD,$CF,$F6,$85,$A1,$24,$01,$10,$06,$A9,$80,$85,$F1,$85,$F7,$A0
       .byte $3F,$A5,$F1,$F0,$1B,$84,$F5,$10,$0C,$C6,$8E,$A5,$8E,$C9,$03,$B0
       .byte $0F,$A9,$1E,$85,$F1,$29,$18,$18,$69,$5D,$85,$E5,$A9,$58,$85,$E3
       .byte $A5,$0C,$29,$80,$C5,$83,$85,$83,$F0,$1C,$C9,$00,$F0,$18,$A5,$A5
       .byte $D0,$14,$A5,$F4,$D0,$10,$A9,$00,$85,$E9,$A5,$F1,$D0,$08,$A9,$4F
       .byte $85,$F7,$A9,$00,$85,$F4,$A9,$01,$85,$EF,$A5,$F1,$D0,$29,$A5,$F7
       .byte $29,$0F,$D0,$41,$A0,$00,$A5,$0C,$30,$1D,$A9,$0A,$85,$EF,$A5,$84
       .byte $4A,$4A,$4A,$B0,$04,$A0,$10,$A2,$35,$4A,$B0,$04,$A0,$F0,$A2,$35
       .byte $84,$97,$86,$95,$4C,$93,$F5,$A5,$84,$A4,$F1,$F0,$04,$10,$28,$09
       .byte $03,$4A,$B0,$02,$E6,$8E,$4A,$B0,$02,$C6,$8E,$4A,$B0,$02,$C6,$8F
       .byte $4A,$B0,$02,$E6,$8F,$A4,$F1,$D0,$0E,$A9,$82,$C5,$8E,$90,$06,$A5
       .byte $A6,$C5,$8E,$90,$02,$85,$8E,$A9,$85,$C5,$8F,$90,$06,$A9,$0F,$C5
       .byte $8F,$90,$02,$85,$8F,$A5,$A5,$D0,$2D,$24,$E9,$30,$29,$A5,$F5,$D0
       .byte $25,$A5,$EA,$25,$A0,$D0,$1F,$A5,$A2,$D0,$1B,$E6,$F9,$A5,$F9,$C9
       .byte $03,$90,$04,$A9,$00,$85,$F9,$20,$C1,$F6,$F0,$EF,$A5,$8F,$85,$9D
       .byte $A9,$1F,$85,$A2,$85,$F3,$A5,$F9,$0A,$0A,$0A,$0A,$0A,$65,$A4,$A0
       .byte $F0,$38,$E5,$9D,$10,$07,$A0,$10,$49,$FF,$18,$69,$01,$85,$FA,$4A
       .byte $4A,$18,$65,$FA,$46,$FA,$65,$FA,$85,$96,$84,$98,$20,$C1,$F6,$D0
       .byte $06,$85,$F3,$85,$F8,$85,$A2,$A5,$EA,$25,$A1,$D0,$21,$A5,$F1,$D0
       .byte $1D,$A5,$90,$A4,$8F,$C0,$50,$90,$02,$09,$08,$AA,$38,$98,$FD,$DD
       .byte $F7,$38,$E5,$A4,$F0,$08,$30,$04,$E6,$A4,$E6,$A4,$C6,$A4,$A5,$A2
       .byte $F0,$0C,$C6,$A2,$A5,$A2,$C9,$0F,$D0,$04,$A9,$8F,$85,$F8,$A5,$9B
       .byte $45,$9C,$85,$A5,$F0,$43,$A9,$30,$85,$A4,$A0,$00,$84,$F3,$84,$F8
       .byte $84,$A2,$84,$F4,$A5,$A0,$4A,$4A,$4A,$4A,$4A,$25,$EA,$D0,$2A,$E6
       .byte $9C,$A5,$F1,$F0,$07,$A5,$8F,$38,$E9,$04,$85,$8F,$A2,$07,$B5,$A7
       .byte $29,$10,$C9,$10,$76,$CF,$36,$C7,$76,$BF,$B5,$BF,$29,$08,$C9,$08
       .byte $76,$B7,$36,$AF,$76,$A7,$CA,$10,$E5,$4C,$0F,$F0,$A2,$11,$A9,$F7
       .byte $95,$D7,$CA,$CA,$10,$FA,$A2,$30,$A0,$07,$B9,$AB,$F7,$95,$A6,$CA
       .byte $88,$10,$F7,$8A,$D0,$F2,$86,$9C,$4C,$B3,$F7,$18,$69,$2E,$A8,$29
       .byte $0F,$85,$FA,$98,$4A,$4A,$4A,$4A,$A8,$18,$65,$FA,$C9,$0F,$90,$03
       .byte $E9,$0F,$C8,$49,$07,$0A,$0A,$0A,$0A,$95,$20,$85,$02,$88,$10,$FD
       .byte $95,$10,$60,$A6,$F9,$BD,$DD,$F6,$49,$07,$25,$90,$60,$03,$04,$05
       .byte $05,$0F,$07,$03,$01,$01,$01,$00,$40,$20,$20,$00,$00,$00,$00,$03
       .byte $05,$06,$00,$AD,$A9,$E9,$A9,$ED,$41,$0F,$00,$50,$58,$5C,$56,$53
       .byte $11,$F0,$00,$BA,$8A,$BA,$A2,$3A,$80,$FE,$00,$E9,$AB,$AF,$AD,$E9
       .byte $00,$00,$3C,$66,$66,$66,$66,$66,$66,$3C,$3C,$18,$18,$18,$18,$18
       .byte $38,$18,$7E,$60,$60,$3C,$06,$06,$46,$3C,$3C,$46,$06,$0C,$0C,$06
       .byte $46,$3C,$0C,$0C,$0C,$7E,$4C,$2C,$1C,$0C,$7C,$46,$06,$06,$7C,$60
       .byte $60,$7E,$3C,$66,$66,$66,$7C,$60,$62,$3C,$18,$18,$18,$18,$0C,$06
       .byte $42,$7E,$3C,$66,$66,$3C,$3C,$66,$66,$3C,$3C,$46,$06,$3E,$66,$66
       .byte $66,$3C,$00,$18,$00,$18,$18,$18,$18,$18,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$04,$20,$81,$44,$00,$00,$00,$08,$20,$81,$04,$40,$00,$00
       .byte $08,$10,$42,$08,$40,$00,$00,$00,$18,$42,$08,$20,$00,$00,$00,$18
       .byte $3C,$B6,$B6,$B6,$3C,$18,$00,$18,$3C,$DB,$DB,$DB,$3C,$18,$00,$18
       .byte $3C,$6D,$6D,$6D,$3C,$18,$00,$00,$42,$E7,$42,$7E,$7E,$7E,$3C,$00
       .byte $A5,$42,$A5,$7E,$7E,$7E,$3C,$0C,$0C,$D4,$00,$1A,$06,$FF,$FF,$DF
       .byte $8F,$07,$03,$01,$00,$E8,$86,$EF,$A9,$28,$85,$9B,$A9,$58,$85,$E5
       .byte $A9,$42,$85,$A6,$A9,$07,$85,$90,$4A,$85,$A3,$A9,$0F,$85,$8F,$A9
       .byte $82,$85,$8E,$A9,$80,$85,$83,$60,$10,$10,$10,$12,$10,$14,$12,$16
       .byte $40,$20,$20,$00,$00,$00,$00,$00,$40,$20,$40,$00,$40,$20,$40,$7F
       .byte $7F,$7F,$7F,$3F,$1F,$80,$80,$00,$00,$02,$02,$06,$06,$00,$00,$F0
       .byte $00,$04
