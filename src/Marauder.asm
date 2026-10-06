; Disassembly of roms/Marauder.bin
; Disassembled Tue Oct  6 15:21:51 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Marauder.bin
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
CTRLPF  =  $0A
REFP1   =  $0C
PF1     =  $0E
PF2     =  $0F
RESP0   =  $10
RESP1   =  $11
RESM0   =  $12
RESM1   =  $13
RESBL   =  $14
AUDC0   =  $15
AUDC1   =  $16
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
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXM0P   =  $30
CXM1P   =  $31
CXP0FB  =  $32
CXP1FB  =  $33
CXM0FB  =  $34
CXM1FB  =  $35
CXBLPF  =  $36
CXPPMM  =  $37
INPT4   =  $3C
SWCHB   =  $0282
$0285   =  $0285
$0288   =  $0288
TIM64T  =  $0296
LF020   =   $F020
LF232   =   $F232
LF666   =   $F666
LF765   =   $F765

       ORG $F000
LF000: LDA    $0285   
       BPL    LF000   
LF005: LDA    #$02    
       STA    TIM64T  
LF00A: LDA    $0285   
       BPL    LF00A   
       LDX    #$FF    
       STX    TIM64T  
       TXS            
       CLD            
       LDA    #$00    
       LDX    #$ED    
LF01A: STA    VSYNC,X 
       DEX            
       BNE    LF01A   
LF01F: LDA    LF716,X 
       STA    $83,X   
       INX            
       CPX    #$15    
       BNE    LF01F   
       LDA    #$01    
       STA    CTRLPF  
       LDX    #$05    
LF02F: JSR    LF121   
       TYA            
       LDY    $EF     
       ORA    LF735,Y 
       STA    $CA,X   
       DEX            
       BPL    LF02F   
       JSR    LF564   
LF040: LDA    $0285   
       BPL    LF040   
       LDA    #$00    
       LDX    #$36    
       STX    TIM64T  
       LDX    #$02    
       STX    WSYNC   
       STX    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    VSYNC   
       STA    GRP0    
       STA    GRP1    
       JSR    LFDF6   
       NOP            
       JSR    LF701   
       LDX    $96     
       STX    $AC     
       LDA    $93     
       CMP    #$07    
       BCS    LF07A   
       LDA    LFDE4,X 
       LDX    #$4E    
LF074: STX    $93     
       STA    $96     
       BNE    LF09F   
LF07A: CMP    #$50    
       BCC    LF085   
       LDA    LFDE4,X 
       LDX    #$09    
       BNE    LF074   
LF085: LDA    $95     
       CMP    #$25    
       BNE    LF092   
       LDA    LFDEA,X 
       LDX    #$1D    
       BNE    LF09B   
LF092: CMP    #$0D    
       BNE    LF0A5   
       LDA    LFDF0,X 
       LDX    #$15    
LF09B: STX    $95     
       STA    $96     
LF09F: JSR    LF536   
       JMP    LF196   
LF0A5: LDA    SWCHB   
       AND    #$02    
       BNE    LF0C6   
       LDA    $A3     
       BPL    LF0CA   
       LDA    #$00    
       STA    $F8     
       INC    $F0     
       LDA    $F0     
       CMP    #$04    
       BNE    LF0BE   
       LDA    #$00    
LF0BE: STA    $F0     
       STA    $EE     
LF0C2: LDA    #$00    
       BEQ    LF0EF   
LF0C6: LDA    #$80    
       STA    $A3     
LF0CA: LDA    SWCHB   
       AND    #$01    
       BEQ    LF0F4   
       LDA    $F6     
       BEQ    LF0F8   
       BMI    LF0F8   
       LDA    $EE     
       STA    $F0     
       LDA    #$00    
       STA    $EF     
       LDA    #$80    
LF0E1: STA    $F8     
       LDX    #$01    
       STX    $F5     
       LDX    #$00    
       STX    $F1     
       STX    $F2     
       STX    $F9     
LF0EF: STA    $F6     
LF0F1: JMP    LF000   
LF0F4: LDA    #$01    
       STA    $F6     
LF0F8: LDA    $A1     
       BEQ    LF104   
       BMI    LF0C2   
       LDA    $D5     
       BNE    LF104   
       BEQ    LF0F1   
LF104: LDA    $F6     
       BMI    LF148   
       LDA    INPT4   
       BPL    LF110   
       STA    $ED     
       BNE    LF114   
LF110: LDA    $ED     
       BMI    LF114   
LF114: JMP    LF196   

START:
       LDA    #$00    
       TAX            
LF11A: STA    $EE,X   
       INX            
       BNE    LF11A   
       BEQ    LF0E1   
LF121: JSR    LFDF6   
       AND    #$07    
       TAY            
       CPY    #$06    
       BCC    LF12D   
       DEY            
       DEY            
LF12D: LDA    $AA     
       AND    LFBEE,Y 
       BEQ    LF13B   
       DEY            
       BPL    LF12D   
       LDY    #$05    
       BNE    LF12D   
LF13B: LDA    $AA     
       ORA    LFBEE,Y 
       STA    $AA     
       RTS            

LF143: DEC    $B5     
       JMP    LF196   
LF148: JSR    LF3A7   
       JSR    LF5FF   
       JSR    LF738   
       LDA    $84     
       LSR            
       BCC    LF169   
       LDA    $95     
       JSR    LFC08   
       SBC    #$43    
       TAY            
       LDA    $93     
       JSR    LFA55   
       JSR    LF316   
       JMP    LF196   
LF169: JSR    LF9FE   
       LDA    $B5     
       BNE    LF143   
       LDY    $F0     
       LDA    LFF79,Y 
       STA    $B5     
       JSR    LF4BB   
       JSR    LF4F4   
       LDY    #$01    
       LDX    #$00    
       LDA    CXM1P   
       AND    #$40    
       BNE    LF193   
       INY            
       LDA    CXP1FB  
       AND    #$40    
       BNE    LF193   
       INY            
       LDA    CXPPMM  
       BPL    LF196   
LF193: JSR    LF41F   
LF196: LDA    $8A     
       STA    HMM0    
       AND    #$0F    
       TAX            
       STX    WSYNC   
LF19F: DEX            
       BNE    LF19F   
       STX    RESM0   
       STX    WSYNC   
       LDA    $8C     
       STA    HMBL    
       AND    #$0F    
       TAY            
       LDA    $8B     
       STA    HMM1    
       AND    #$0F    
       TAX            
       STX    WSYNC   
       PHA            
       PLA            
       PHA            
       PLA            
       NOP            
       NOP            
LF1BC: DEX            
       BNE    LF1BC   
       STX    RESM1   
       STX    WSYNC   
       TYA            
       TAX            
       PHA            
       PLA            
       PHA            
       PLA            
LF1C9: DEX            
       BNE    LF1C9   
       STX    RESBL   
       STX    WSYNC   
       STA    HMOVE   
       JSR    LF695   
       STA    HMCLR   
       LDX    #$05    
       STX    WSYNC   
LF1DB: DEX            
       BNE    LF1DB   
       STX    RESP0   
       STX    RESP1   
       STX    REFP1   
       INX            
       STX    VDELP0  
       STX    VDELP1  
       STX    NUSIZ1  
       LDA    #$10    
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$03    
       STA    NUSIZ0  
       LDA    #$A8    
       JSR    LF6F7   
       STA    COLUP1  
       STA    COLUP0  
       LDY    #$06    
       STY    $A2     
       STY    HMCLR   
LF206: LDA    $0285   
       BPL    LF206   
       STA    WSYNC   
       STA    VBLANK  
LF20F: LDA    ($99),Y 
       STA    GRP0    
       LDA    ($AE),Y 
       STA    $AC     
       LDA    ($9B),Y 
       STA    WSYNC   
       TAX            
       LDA    ($9F),Y 
       STA    $AA     
       LDA    ($9D),Y 
       LDY    $AC     
       NOP            
       STX    GRP1    
       STA    GRP0    
       LDA    $AA     
       STA    GRP1    
       STY    GRP0    
       STA    GRP1    
       DEC    $A2     
       LDY    $A2     
       BPL    LF20F   
       INY            
       STY    GRP0    
       STY    GRP1    
       STY    VDELP0  
       STY    VDELP1  
       STY    NUSIZ0  
       STY    NUSIZ1  
       LDA    #$2F    
       LDX    $D6     
       CPX    #$02    
       BCC    LF24E   
       LDA    $84     
LF24E: JSR    LF6F7   
       STA    COLUP0  
       LDA    $95     
       STA    HMP0    
       AND    #$0F    
       TAX            
       STX    WSYNC   
LF25C: DEX            
       BNE    LF25C   
       STX    RESP0   
       STX    WSYNC   
       STA    HMOVE   
       STX    $9A     
       LDA    $E6     
       JSR    LF6F7   
       STA    COLUPF  
       LDA    $97     
       PHA            
       LDX    $D7     
       STX    $AE     
       LDA    $93     
       PHA            
       INC    $93     
       INC    $90     
       LDY    #$53    
       STA    WSYNC   
       STA    CXCLR   
       STA    HMCLR   
       JSR    LFC75   
       DEC    $90     
       PLA            
       STA    $93     
       PLA            
       STA    $97     
       STA    WSYNC   
       STY    PF1     
       STY    PF2     
       STY    COLUP1  
       LDA    #$8E    
       JSR    LF6F7   
       STA    COLUP0  
       LDY    $F5     
       BMI    LF2AA   
       CPY    #$02    
       BCC    LF2AD   
       LDY    #$03    
       BNE    LF2AD   
LF2AA: INY            
       STY    COLUP0  
LF2AD: STY    NUSIZ0  
       LDA    #$80    
       STA    HMP0    
       LDA    $83     
       JSR    LF6F7   
       STA    COLUPF  
       LDA    $88     
       STA    HMP1    
       AND    #$0F    
       TAX            
       STX    WSYNC   
LF2C3: DEX            
       BNE    LF2C3   
       STX    RESP1   
       STX    WSYNC   
       STX    HMOVE   
       LDX    #$05    
       STX    WSYNC   
LF2D0: DEX            
       BNE    LF2D0   
       STX    RESP0   
LF2D5: STA    WSYNC   
       LDA    #$00    
       STA    PF1     
       STA    PF2     
       LDA    LFF30,X 
       STA    GRP0    
       INX            
       CPX    #$06    
       BEQ    LF2FB   
       LDA    #$FF    
       STA    GRP1    
       PHA            
       PLA            
       PHA            
       PLA            
       NOP            
       LDA    $86     
       STA    PF2     
       LDA    $87     
       STA    PF1     
       JMP    LF2D5   
LF2FB: LDA    #$22    
       STA    TIM64T  
       STA    WSYNC   
       LDA    #$02    
       STA    WSYNC   
       STA    VBLANK  
       LDA    $F6     
       BPL    LF313   
       LDA    $A8     
       BNE    LF313   
       JSR    LF816   
LF313: JMP    LF040   
LF316: LDA    $D3     
       BEQ    LF34C   
       LDA    $97     
       CMP    #$2A    
       BEQ    LF327   
       CLC            
       ADC    #$06    
       STA    $97     
       BNE    LF32B   
LF327: LDA    #$00    
       STA    $97     
LF32B: DEC    $D3     
       BNE    LF33D   
       LDA    #$1D    
       STA    $95     
       LDA    #$2A    
       STA    $93     
       LDA    $F5     
       BPL    LF33E   
       STA    $A1     
LF33D: RTS            

LF33E: DEC    $F5     
       LDA    $96     
       STA    $AC     
       LDA    #$00    
       STA    $96     
       JMP    LF536   
LF34B: .byte $60
LF34C: LDA    $0288   
       TAY            
       LDX    $AF     
       AND    #$80    
       BNE    LF367   
       TXA            
       AND    #$01    
       BNE    LF367   
       LDA    $95     
       SEC            
       SBC    #$10    
       BVC    LF365   
       SEC            
       SBC    #$0F    
LF365: STA    $95     
LF367: TYA            
       AND    #$40    
       BNE    LF37C   
       TXA            
       AND    #$02    
       BNE    LF37C   
       LDA    $95     
       CLC            
       ADC    #$10    
       BVC    LF37A   
       ADC    #$0F    
LF37A: STA    $95     
LF37C: TYA            
       AND    #$20    
       BNE    LF388   
       TXA            
       AND    #$04    
       BNE    LF388   
       DEC    $93     
LF388: TYA            
       AND    #$10    
       BNE    LF394   
       TXA            
       AND    #$08    
       BNE    LF394   
       INC    $93     
LF394: TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       LDY    LFFC1,X 
       BMI    LF3A6   
       STY    $8D     
       LDA    LFF7C,Y 
       STA    $97     
LF3A6: RTS            

LF3A7: LDA    $94     
       AND    #$01    
       BNE    LF3B2   
       LDA    INPT4   
       BPL    LF3BA   
       RTS            

LF3B2: LDA    INPT4   
       BMI    LF3E1   
       LDA    $B4     
       BNE    LF3E5   
LF3BA: LDA    #$77    
       STA    $D4     
       LDA    $93     
       STA    $B4     
       LDY    $8D     
       SEC            
       SBC    LFF9A,Y 
       STA    $90     
       LDX    LFFA2,Y 
       LDA    $95     
LF3CF: SEC            
       SBC    #$10    
       BVC    LF3D7   
       SEC            
       SBC    #$0F    
LF3D7: STA    $8A     
       DEX            
       BNE    LF3CF   
       LDA    #$01    
       JMP    LF4DE   
LF3E1: LDA    #$00    
       STA    $B4     
LF3E5: LDA    CXM0FB  
       BMI    LF3F5   
       DEC    AUDV0   
       LDA    CXM0P   
       BPL    LF403   
       LDX    #$00    
       LDY    #$00    
       BEQ    LF41F   
LF3F5: LDX    #$00    
LF3F7: LDA    $94     
       AND    LF494,X 
       STA    $94     
       LDA    #$A0    
       STA    $90,X   
       RTS            

LF403: LDX    #$00    
       JSR    LF497   
       CMP    #$45    
       BEQ    LF482   
       CMP    #$9D    
       BEQ    LF482   
LF410: RTS            

LF411: CPY    #$03    
       BNE    LF3F5   
       LDA    #$0A    
       STA    $D6     
       LDA    #$8F    
       STA    $D5     
       BNE    LF448   
LF41F: LDA.wy $0090,Y 
       CLC            
       ADC    #$06    
       SEC            
       SBC    $BD,X   
       INX            
       CMP    #$0B    
       BCC    LF433   
       CPX    #$06    
       BNE    LF41F   
       BEQ    LF47C   
LF433: DEX            
       LDA    $D8,X   
       AND    #$08    
       BNE    LF411   
       CPY    #$03    
       BNE    LF442   
       LDA    $D6     
       BEQ    LF3F5   
LF442: LDA    $D8,X   
       AND    #$40    
       BNE    LF485   
LF448: LDA    $D8,X   
       AND    #$03    
LF44C: BNE    LF3F5   
       LDA    $D8,X   
       ORA    #$03    
       STA    $D8,X   
       LDA    #$05    
LF456: SED            
       CLC            
       ADC    $F1     
       STA    $F1     
       LDA    $F2     
       ADC    #$00    
       STA    $F2     
       CLD            
       LDA    $F2     
       CMP    $F4     
       BEQ    LF476   
       BCC    LF47C   
LF46B: LDA    $F2     
       STA    $F4     
       LDA    $F1     
       STA    $F3     
       JMP    LF47C   
LF476: LDA    $F1     
       CMP    $F3     
       BCS    LF46B   
LF47C: TYA            
       TAX            
       CPX    #$03    
       BEQ    LF410   
LF482: JMP    LF3F7   
LF485: LDA    $A8     
       BNE    LF47C   
       TYA            
       BNE    LF47C   
       LDA    #$02    
       STA    $A8     
       STA    $84     
       BNE    LF44C   
LF494: INC    $BB77,X 
LF497: LDA    $90,X   
       CLC            
       ADC    $B0,X   
       STA    $90,X   
       CMP    #$04    
       BCC    LF482   
       CMP    #$50    
       BCS    LF482   
       LDA    $8A,X   
       CLC            
       ADC    $80,X   
       BVC    LF4B8   
       LDY    $80,X   
       BMI    LF4B5   
       ADC    #$0F    
       BNE    LF4B8   
LF4B5: SEC            
       SBC    #$0F    
LF4B8: STA    $8A,X   
       RTS            

LF4BB: LDA    $94     
       LDX    #$01    
       AND    #$08    
       BNE    LF4D0   
       LDA    $94     
       BMI    LF4CC   
       LDA    #$A0    
       STA    $91     
       RTS            

LF4CC: LDA    #$08    
       BNE    LF4DE   
LF4D0: LDA    CXM1FB  
       BMI    LF527   
       LDA    CXM1P   
       BPL    LF4EF   
       JSR    LF50B   
       JMP    LF527   
LF4DE: ORA    $94     
       STA    $94     
       LDY    $8D,X   
       LDA    LFFE8,Y 
       STA    $80,X   
       LDA    LFF71,Y 
       STA    $B0,X   
       RTS            

LF4EF: JSR    LF497   
       BNE    LF52D   
LF4F4: LDA    $94     
       LDX    #$02    
       AND    #$04    
       BNE    LF51A   
       LDA    $94     
       AND    #$40    
       BNE    LF507   
       LDA    #$A0    
       STA    $92     
       RTS            

LF507: LDA    #$04    
       BNE    LF4DE   
LF50B: LDA    $D3     
       ORA    $D6     
       BNE    LF519   
       LDA    #$50    
       STA    $D3     
       LDA    #$7B    
       STA    $D5     
LF519: RTS            

LF51A: LDA    CXBLPF  
       BMI    LF527   
       LDA    CXP0FB  
       AND    #$40    
       BEQ    LF52A   
       JSR    LF50B   
LF527: JMP    LF3F7   
LF52A: JSR    LF497   
LF52D: CMP    #$41    
       BEQ    LF527   
       CMP    #$DA    
       BEQ    LF527   
       RTS            

LF536: LDX    #$05    
       LDA    #$A0    
       STA    $90     
       LDA    #$8B    
       STA    $D4     
       LDA    #$00    
       STA    AUDC1   
       STA    $94     
LF546: LDY    $C3,X   
       BEQ    LF54D   
       CLC            
       ADC    #$10    
LF54D: LDY    #$B0    
       STY    $D8,X   
       LDY    #$F0    
       STY    $B6,X   
       DEX            
       BPL    LF546   
       STA    $AA     
       LDX    $AC     
       LDA    $CA,X   
       AND    #$0F    
       ORA    $AA     
       STA    $CA,X   
LF564: LDX    $96     
       LDA    $CA,X   
       LDY    #$00    
       STY    $AA     
       PHA            
       AND    #$0F    
       TAY            
       LDA    LFFAA,Y 
       STA    $D7     
       LDA    LFFDA,Y 
       STA    $E6     
       LDA    LFF7C,Y 
       STA    $AC     
       PLA            
       CPY    #$01    
       BEQ    LF5E4   
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       DEX            
       BMI    LF592   
LF58C: JSR    LF121   
       DEX            
       BPL    LF58C   
LF592: LDY    #$00    
LF594: INX            
       LSR    $AA     
       BCS    LF59D   
       BEQ    LF5BB   
       BNE    LF594   
LF59D: LDA    LFFB0,X 
       STA.wy $00BD,Y 
       JSR    LFDF6   
       AND    #$07    
       CLC            
       ADC    #$02    
       NOP            
       NOP            
       NOP            
       NOP            
       STA.wy $00C3,Y 
       LDA    #$08    
       STA.wy $00E7,Y 
       INY            
       BNE    LF594   
LF5BA: INY            
LF5BB: LDA    #$00    
       CPY    #$06    
       BEQ    LF5C9   
       STA.wy $00C3,Y 
       STA.wy $00BD,Y 
       BNE    LF5BA   
LF5C9: JSR    LFDF6   
       BMI    LF5DD   
       AND    #$07    
       TAY            
       DEY            
       DEY            
       BMI    LF5DD   
       LDA.wy $00D8,Y 
       ORA    #$08    
       STA.wy $00D8,Y 
LF5DD: LDX    $F6     
       BNE    LF5E3   
       STX    $BD     
LF5E3: RTS            

LF5E4: LDY    #$05    
LF5E6: LDA    LFFBC,Y 
       STA.wy $00BD,Y 
       LDA    LFFB6,Y 
       STA.wy $00C3,Y 
       LDA    #$F0    
       STA    $DA     
       DEY            
       BPL    LF5E6   
       LDA    #$E1    
       STA    $B8     
       BNE    LF5DD   
LF5FF: LDA    $A8     
       BEQ    LF62F   
       LDA    $A5     
       BNE    LF631   
       LDA    #$8F    
       STA    $D5     
       LDX    #$10    
       STX    $A5     
       STX    $D2     
       INC    $EF     
       LDA    $EF     
       CMP    #$03    
       BNE    LF625   
       LDX    $F0     
       CPX    #$03    
       BEQ    LF621   
       INC    $F0     
LF621: LDA    #$00    
       STA    $EF     
LF625: LDA    $F9     
       EOR    #$01    
       STA    $F9     
       BNE    LF62F   
       INC    $F5     
LF62F: DEC    $D2     
LF631: DEC    $84     
       BNE    LF694   
       LDA    #$60    
       LDX    $D6     
       BEQ    LF63D   
       DEC    $D6     
LF63D: LDX    $A8     
       BEQ    LF656   
       LDA    $86     
       BEQ    LF656   
       LDY    #$01    
       LDA    #$02    
       JSR    LF456   
       LDA    $D2     
       BEQ    LF654   
       DEC    $D2     
       INC    AUDF0   
LF654: LDA    #$02    
LF656: STA    $84     
       LDA    $88     
       CLC            
       ADC    #$10    
       BVC    LF661   
       ADC    #$0F    
LF661: STA    $88     
       DEC    $89     
       BNE    LF694   
       LDA    #$04    
       STA    $89     
       LSR    $87     
       BCS    LF694   
       ASL    $86     
       BEQ    LF687   
       LDA    $86     
       CMP    #$FC    
       BCC    LF67A   
       RTS            

LF67A: LDA    $A8     
       BNE    LF694   
       LDA    #$0F    
       STA    $83     
       LDA    #$73    
       STA    $D5     
       RTS            

LF687: LDA    $A8     
       BNE    LF692   
       LDA    #$FF    
       STA    $F5     
       JMP    LF50B   
LF692: STA    $A1     
LF694: RTS            

LF695: LDA    #$F7    
       STA    $9A     
       STA    $9C     
       STA    $9E     
       STA    $A0     
       STA    $AF     
       LDX    #$00    
       LDA    $F8     
       BNE    LF6BA   
       LDA    #$F6    
       STA    $99     
       STA    $9B     
       STA    $9D     
       STA    $9F     
       LDX    $F0     
       INX            
       LDA    LF72B,X 
       STA    $AE     
       RTS            

LF6BA: LDA    LF72B,X 
       STA    $AE     
       LDY    $A6     
       LDA.wy $00F2,Y 
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       LDA    LF72B,X 
       STA    $99     
       LDA.wy $00F2,Y 
       AND    #$0F    
       TAX            
       LDA    LF72B,X 
       STA    $9B     
       LDA.wy $00F1,Y 
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       LDA    LF72B,X 
       STA    $9D     
       LDA.wy $00F1,Y 
       AND    #$0F    
       TAX            
       LDA    LF72B,X 
       STA    $9F     
       RTS            

LF6F2: DEC    $AB     
       BEQ    LF70A   
       RTS            

LF6F7: EOR    $BC     
       LDX    $BC     
       BEQ    LF6FF   
       AND    #$F8    
LF6FF: RTS            

LF700: .byte $FF
LF701: LDX    $F6     
       BEQ    LF6F2   
       LDA    #$00    
       STA    $BC     
       RTS            

LF70A: JSR    LFDF6   
       STA    $BC     
       LDA    $A6     
       EOR    #$02    
       STA    $A6     
       RTS            

LF716: .byte $34,$60,$01,$FF,$FF,$BD,$04,$24,$24,$24,$06,$06,$06,$A0,$A0,$A0
       .byte $2A,$00,$1D,$00,$24
LF72B: .byte $B0,$B7,$BE,$C5,$CC,$D3,$DA,$E1,$E8,$EF
LF735: .byte $40,$50,$60
LF738: LDX    #$00    
LF73A: LDY    $D4,X   
       LDA    $DE,X   
       BEQ    LF745   
       DEC    $DE,X   
       JMP    LF763   
LF745: LDA    LF700,Y 
       CMP    #$FF    
       BEQ    LF769   
       STA    AUDV0,X 
       LSR            
       LSR            
       LSR            
       LSR            
       STA    AUDC0,X 
       INY            
       LDA    LF700,Y 
       STA    AUDF0,X 
       INY            
       LDA    LF700,Y 
       STA    $DE,X   
       INY            
       STY    $D4,X   
LF763: INX            
       CPX    #$01    
       BEQ    LF73A   
       RTS            

LF769: LDA    #$00    
       STA    AUDC0,X 
       STA    $D4,X   
       BEQ    LF763   
       BEQ    LF765   
       CPY    $060A   
       .byte $FF ;.ISB
       SEC            
       .byte $03 ;.SLO
       PHP            
       .byte $FF ;.ISB
       ROL    $1805   
       INY            
       .byte $1F ;.SLO
       ASL.wx $0000,X 
       PHP            
       INY            
       .byte $1F ;.SLO
       .byte $0F ;.SLO
       INY            
       .byte $14 ;.NOP
       .byte $3C ;.NOP
       .byte $FF ;.ISB
       CPY    RSYNC   
       .byte $03 ;.SLO
       .byte $FF ;.ISB
       STY    $1005   
       DEX            
       .byte $1F ;.SLO
       PHP            
       DEX            
       .byte $1A ;.NOP
       PHP            
       DEX            
       .byte $14 ;.NOP
       PHP            
       DEX            
       .byte $0F ;.SLO
       PHP            
       BRK            
       BRK            
       PHP            
       DEX            
       .byte $14 ;.NOP
       PHP            
       DEX            
       .byte $0F ;.SLO
       JSR    $2DFF   
       ASL    COLUP0  
       .byte $FF ;.ISB
       ROL    VBLANK,X
       .byte $03 ;.SLO
       .byte $FF ;.ISB
       ROL    $3232,X 
       .byte $22 ;.JAM
       .byte $22 ;.JAM
       .byte $22 ;.JAM
       ROL    $0E0E,X 
       ASL    $0404   
       .byte $04 ;.NOP
       .byte $0C ;.NOP
       ROL    $2020,X 
       ROL    $0202,X 
       ROL    $063E,X 
       ASL    $3E     
       .byte $04 ;.NOP
       .byte $04 ;.NOP
       .byte $3C ;.NOP
       ASL    COLUP0  
       ROR    $6666,X 
       RTS            

LF7D2: .byte $60,$3E,$02,$02,$3E,$20,$20,$3E,$3E,$22,$3E,$20,$20,$28,$38,$08
       .byte $08,$08,$0E,$02,$22,$3E,$7E,$66,$66,$7E,$24,$24,$3C,$06,$06,$06
       .byte $3E,$22,$22,$3E
LF7F6: .byte $00,$00,$00,$00,$00,$00,$00,$00,$14,$14,$14,$14,$14,$14,$14
LF805: .byte $14,$14,$14,$14,$14,$14,$14,$14,$14,$00,$00,$00,$00,$00,$00,$00
       .byte $00
LF816: LDX    $D0     
       BMI    LF825   
       DEC    $A4     
       BMI    LF829   
       LDA    $C3,X   
       BNE    LF83E   
LF822: JMP    LF9F5   
LF825: LDA    #$05    
       STA    $D0     
LF829: LDY    $F0     
       DEC    $A9     
       LDA    $A9     
       LSR            
       BCC    LF836   
       INY            
       INY            
       INY            
       INY            
LF836: LDA    LFA4D,Y 
       STA    $A4     
       JMP    LF9FA   
LF83E: LDY    $E0,X   
       LDA    $D8,X   
       AND    #$40    
       BNE    LF822   
       LDA    $D8,X   
       AND    #$03    
       BEQ    LF892   
       CMP    #$01    
       BEQ    LF863   
       LDA    $D8,X   
       AND    #$08    
       BNE    LF863   
       LDA    #$A8    
       STA    $D5     
       DEC    $D8,X   
       LDA    LFEF8,Y 
       STA    $B6,X   
       BNE    LF822   
LF863: TXA            
       TAY            
LF865: INX            
       CPX    #$06    
       BEQ    LF888   
       BCS    LF822   
       LDA    $BD,X   
       STA.wy $00BD,Y 
       LDA    $E0,X   
       STA.wy $00E0,Y 
       LDA    $C3,X   
LF878: STA.wy $00C3,Y 
       LDA    $B6,X   
       STA.wy $00B6,Y 
       LDA    $D8,X   
       STA.wy $00D8,Y 
       INY            
       BNE    LF865   
LF888: LDA    #$00    
       STA.wy $00BD,Y 
       STA.wy $00E0,Y 
       BEQ    LF878   
LF892: LDA    $C3,X   
       JSR    LFC08   
       PHA            
       SEC            
       SBC    #$0C    
       TAY            
       LDA    $BD,X   
       JSR    LFA55   
       LDX    $D0     
       PLA            
       CLC            
       ADC    #$37    
       STA    $99     
       JSR    LFDF6   
       BMI    LF8FE   
       LDA    $95     
       JSR    LFC08   
       LDY    #$00    
       CMP    $99     
       BEQ    LF8C1   
       BCS    LF8BF   
       LDY    #$06    
       BNE    LF8C1   
LF8BF: LDY    #$03    
LF8C1: LDA    $93     
       SEC            
       SBC    $BD,X   
       BCC    LF8CE   
       CMP    #$02    
       BCC    LF8D4   
       BCS    LF8D3   
LF8CE: CMP    #$FF    
       BCS    LF8D4   
       INY            
LF8D3: INY            
LF8D4: LDA    LFA44,Y 
       SEC            
       SBC    $E0,X   
       BEQ    LF8FE   
       BCC    LF8F0   
       CMP    #$04    
       BCS    LF8F4   
LF8E2: INC    $E0,X   
       LDA    $E0,X   
       CMP    #$08    
       BNE    LF8FE   
       LDA    #$00    
       STA    $E0,X   
       BEQ    LF8FE   
LF8F0: CMP    #$FC    
       BCC    LF8E2   
LF8F4: LDA    $E0,X   
       BNE    LF8FC   
       LDA    #$08    
       STA    $E0,X   
LF8FC: DEC    $E0,X   
LF8FE: LDY    $E0,X   
       LDA    $D8,X   
       BPL    LF910   
       LDY    #$F0    
       STY    $B6,X   
       LDA    $D8,X   
       AND    #$08    
       BNE    LF91A   
       BEQ    LF928   
LF910: LDA    $D8,X   
       AND    #$08    
       BEQ    LF91D   
       LDA    #$94    
       STA    $B6,X   
LF91A: JMP    LF9F5   
LF91D: LDA    LFEF0,Y 
       STA    $B6,X   
       LDA    $E7,X   
       BEQ    LF92B   
       DEC    $E7,X   
LF928: JMP    LF97D   
LF92B: LDA    $94     
       AND    #$88    
       BNE    LF971   
       TAY            
       LDA    #$80    
LF934: ORA    $94     
       STA    $94     
       STY    $AC     
       LDA    #$04    
       STA    $E7,X   
       LDA    $E0,X   
       STA.wy $008E,Y 
       TAY            
       LDA    $BD,X   
       SEC            
       SBC    LFF84,Y 
       PHA            
       LDA    LFF8C,Y 
       TAY            
       LDA    $C3,X   
LF951: DEY            
       BMI    LF95E   
       SEC            
       SBC    #$10    
       BVC    LF95C   
       SEC            
       SBC    #$0F    
LF95C: BNE    LF951   
LF95E: LDY    $AC     
       STA.wy $008B,Y 
       PLA            
       STA.wy $0091,Y 
       LDA    $D5     
       BNE    LF97D   
       LDA    #$AC    
       STA    $D5     
       BNE    LF97D   
LF971: LDA    $94     
       AND    #$44    
       BNE    LF97D   
       LDA    #$40    
       LDY    #$01    
       BNE    LF934   
LF97D: LDY    $E0,X   
       LDA    LFFD2,Y 
       STA    $9C     
       LDA    LFFF1,Y 
       STA    $9A     
       BMI    LF99B   
       BEQ    LF9B9   
       LDA    $AF     
       AND    #$02    
       BNE    LF9B9   
       LDA    $C3,X   
       CMP    #$C1    
       BEQ    LF9B9   
       BNE    LF9A7   
LF99B: LDA    $AF     
       AND    #$01    
       BNE    LF9B9   
       LDA    $C3,X   
       CMP    #$C9    
       BEQ    LF9B9   
LF9A7: CLC            
       ADC    $9A     
       BVC    LF9B7   
       LDY    $9A     
       BMI    LF9B4   
       ADC    #$0F    
       BNE    LF9B7   
LF9B4: SEC            
       SBC    #$0F    
LF9B7: STA    $C3,X   
LF9B9: LDA    $9C     
       BMI    LF9C7   
       BEQ    LF9F5   
       LDA    $AF     
       AND    #$04    
       BNE    LF9F5   
       BEQ    LF9CD   
LF9C7: LDA    $AF     
       AND    #$08    
       BNE    LF9F5   
LF9CD: LDA    $9C     
       BPL    LF9E4   
       CPX    #$00    
       BEQ    LF9E0   
       DEX            
       LDA    $BD,X   
       INX            
       SEC            
       SBC    $BD,X   
       CMP    #$0D    
       BCC    LF9F5   
LF9E0: INC    $BD,X   
       BNE    LF9F5   
LF9E4: LDA    $BD,X   
       INX            
       LDY    $C3,X   
       BEQ    LF9F2   
       SEC            
       SBC    $BD,X   
       CMP    #$0D    
       BCC    LF9F5   
LF9F2: DEX            
       DEC    $BD,X   
LF9F5: DEC    $D0     
       JMP    LF816   
LF9FA: RTS            

LF9FB: .byte $16,$E8,$60
LF9FE: LDX    $98     
       LDA    $C3,X   
       BEQ    LFA3B   
       JSR    LFC08   
       SBC    #$0F    
       LSR            
       LSR            
       STA    $99     
       LDA    $BD,X   
       LSR            
       LSR            
       STA    $9B     
       LDA    $95     
       JSR    LFC08   
       SBC    #$46    
       LSR            
       LSR            
       STA    $9A     
       LDA    $93     
       LSR            
       LSR            
       STA    $9C     
       JSR    LFB18   
       LDX    $98     
       LDA    $D8,X   
       LDY    $AF     
       BEQ    LFA37   
       LDY    #$08    
       STY    $E7,X   
       ORA    #$80    
       BNE    LFA39   
LFA37: AND    #$7F    
LFA39: STA    $D8,X   
LFA3B: DEC    $98     
       BPL    LFA43   
       LDA    #$05    
       STA    $98     
LFA43: RTS            

LFA44: .byte $04,$00,$04,$02,$01,$03,$06,$07,$05
LFA4D: .byte $01,$01,$02,$02,$00,$01,$01,$02
LFA55: STA    $AA     
       ASL            
       AND    #$07    
       STA    $AE     
       LDX    #$00    
       STX    $A2     
       STX    $AF     
       LSR            
       AND    #$03    
       CMP    #$03    
       BNE    LFA6B   
       LDX    #$18    
LFA6B: LDA    $AA     
       LSR            
       LSR            
       CLC            
       ADC    LFB14,X 
       STA    $AA     
       LDA    #$14    
       SEC            
       SBC    $AA     
       STA    $AA     
       TYA            
       LSR            
       ROL    $A2     
       LSR            
       ROL    $A2     
       TAX            
       INX            
       LDY    #$00    
LFA87: LDA    LFBE6,X 
       STA.wy $0099,Y 
       LDA    LF7F6,X 
       CLC            
       ADC    $D7     
       ADC    $AA     
       STA.wy $009D,Y 
       DEX            
       INY            
       CPY    #$04    
       BNE    LFA87   
       LDX    #$00    
       LDA    $A2     
       CMP    #$03    
       BCC    LFAC4   
LFAA6: LDY    $9D,X   
       LDA    LFE00,Y 
       AND    $99,X   
       BNE    LFB00   
       LDY    $9D,X   
       LDA    $AE     
       BEQ    LFAC4   
       CMP    #$06    
       BNE    LFABC   
       INY            
       BNE    LFABD   
LFABC: DEY            
LFABD: LDA    LFE00,Y 
       AND    $99,X   
       BNE    LFB00   
LFAC4: CPX    #$03    
       BEQ    LFAD0   
       LDX    #$03    
       LDA    $A2     
       CMP    #$02    
       BCC    LFAA6   
LFAD0: LDX    #$00    
       LDA    $AE     
       CMP    #$02    
       BCS    LFAF4   
LFAD8: LDA    $9E     
       CLC            
       ADC    LFB12,X 
       TAY            
       LDA    LFE00,Y 
       AND    $9A     
       BNE    LFB09   
       LDA    $9F     
       CLC            
       ADC    LFB12,X 
       TAY            
       LDA    LFE00,Y 
       AND    $9B     
       BNE    LFB09   
LFAF4: INX            
       CPX    #$01    
       BNE    LFAFF   
       LDA    $AE     
       CMP    #$05    
       BCC    LFAD8   
LFAFF: RTS            

LFB00: LDA    $AF     
       ORA    LFB12,X 
       STA    $AF     
       BNE    LFAC4   
LFB09: LDA    $AF     
       ORA    LFB16,X 
       STA    $AF     
       BNE    LFAF4   
LFB12: ORA    ($FF,X) 
LFB14: BRK            
       .byte $02 ;.JAM
LFB16: .byte $04 ;.NOP
       PHP            
LFB18: LDA    #$14    
       SEC            
       SBC    $9B     
       STA    $9B     
       LDA    #$14    
       SBC    $9C     
       STA    $9C     
       LDA    #$00    
       STA    $9F     
       LDA    $99     
       LDY    #$01    
       TAX            
       SBC    $9A     
       STA    $9D     
       BCC    LFB57   
       LDA    #$FF    
       STA    $AA     
       LDA    $9C     
       SBC    $9B     
       STA    $9E     
       BCC    LFB47   
       STY    $AC     
       CMP    $9D     
       JMP    LFB7B   
LFB47: LDA    #$FF    
       STA    $AC     
       LDA    #$00    
       SEC            
       SBC    $9E     
       STA    $9E     
       CMP    $9D     
       JMP    LFB7B   
LFB57: STY    $AA     
       LDA    #$00    
       SEC            
       SBC    $9D     
       STA    $9D     
       LDA    $9C     
       SEC            
       SBC    $9B     
       STA    $9E     
       BCC    LFB70   
       STY    $AC     
       CMP    $9D     
       JMP    LFB7B   
LFB70: LDA    #$FF    
       STA    $AC     
       SEC            
       SBC    $9E     
LFB77: STA    $9E     
       CMP    $9D     
LFB7B: BCS    LFBB3   
LFB7D: CPX    $9A     
       BEQ    LFBAE   
       TXA            
       CLC            
       ADC    $AA     
       TAX            
       LDA    $9F     
       CLC            
       ADC    $9E     
       STA    $9F     
       SEC            
       SBC    $9D     
       BCC    LFB9B   
       STA    $9F     
       LDA    $9B     
       CLC            
       ADC    $AC     
       STA    $9B     
LFB9B: LDA    $9B     
       CLC            
       ADC    $D7     
       ADC    LF7F6,X 
       TAY            
       LDA    LFE00,Y 
       AND    LFBE6,X 
       BEQ    LFB7D   
       BNE    LFBB0   
LFBAE: LDA    #$00    
LFBB0: STA    $AF     
       RTS            

LFBB3: LDA    $9B     
       CMP    $9C     
       BEQ    LFBAE   
       LDA    $9B     
       CLC            
       ADC    $AC     
       STA    $9B     
       LDA    $9F     
       CLC            
       ADC    $9D     
       STA    $9F     
       SEC            
       SBC    $9E     
       BCC    LFBD3   
       STA    $9F     
       TXA            
       CLC            
       ADC    $AA     
       TAX            
LFBD3: LDA    $9B     
       CLC            
       ADC    $D7     
       ADC    LF7F6,X 
       TAY            
       LDA    LFE00,Y 
       AND    LFBE6,X 
       BEQ    LFBB3   
       BNE    LFBB0   
LFBE6: .byte $80 ;.NOP
       RTI            

LFBE8: .byte $20,$10,$08,$04,$02,$01
LFBEE: .byte $01,$02,$04,$08,$10,$20,$40,$80,$80,$40,$20,$10,$08,$04,$02,$01
       .byte $01,$02,$04,$08,$10,$20,$40,$80,$00,$00
LFC08: PHA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       PLA            
       AND    #$0F    
       STA    $AA     
       ASL            
       ASL            
       ASL            
       ASL            
       SEC            
       SBC    $AA     
       CLC            
       ADC    LFC20,Y 
       SEC            
       RTS            

LFC20: .byte $00,$FF,$FE,$FD,$FC,$FB,$FA,$F9,$07,$07,$06,$05,$04,$03,$02,$01
LFC30: STA    GRP1    
       CPY    $90     
       PHP            
       PLA            
       STA    ENAM0   
       CPY    $92     
       PHP            
       PLA            
       STA    ENABL   
       CPY    $91     
       PHP            
       PLA            
       STA    ENAM1   
       CPY    $93     
       BEQ    LFC4C   
       LDA    #$00    
       BEQ    LFC57   
LFC4C: LDX    $97     
       INC    $97     
       LDA    LFF1E,X 
       BEQ    LFC57   
       DEC    $93     
LFC57: DEY            
       STA    WSYNC   
       INC    $AE     
       STA    GRP0    
       LDA    #$00    
       CPY    $99     
       BNE    LFC85   
       LDX    $B3     
       INC    $B3     
       LDA    LFF00,X 
       BEQ    LFC73   
       STA    $AA     
       DEC    $99     
       BNE    LFC85   
LFC73: INC    $9A     
LFC75: LDX    $9A     
       LDA    $C3,X   
       BEQ    LFC85   
       STA    $9B     
       LDA    $BD,X   
       STA    $99     
       LDA    #$00    
       STA    $AA     
LFC85: STA    WSYNC   
       STA    GRP1    
       CPY    $90     
       PHP            
       PLA            
       STA    ENAM0   
       CPY    $92     
       PHP            
       PLA            
       STA    ENABL   
       CPY    $91     
       PHP            
       PLA            
       STA    ENAM1   
       CPY    $93     
       BEQ    LFCA3   
       LDA    #$00    
       BEQ    LFCAE   
LFCA3: LDX    $97     
       INC    $97     
       LDA    LFF1E,X 
       BEQ    LFCAE   
       DEC    $93     
LFCAE: DEY            
       STA    WSYNC   
       STA    GRP0    
       LDA    $AA     
       STA    $AC     
       BNE    LFCCF   
       LDA    $9B     
       AND    #$0F    
       TAX            
LFCBE: DEX            
       BNE    LFCBE   
       STX    RESP1   
       LDX    $9A     
       STA    WSYNC   
       LDA    $B6,X   
       STA    $B3     
       LDA    #$00    
       BEQ    LFCF8   
LFCCF: LDA    #$00    
       CPY    $99     
       BNE    LFCF6   
       LDX    $B3     
       INC    $B3     
       LDA    LFF00,X 
       BEQ    LFCE4   
       STA    $AA     
       DEC    $99     
       BNE    LFCF6   
LFCE4: INC    $9A     
       LDX    $9A     
       LDA    $C3,X   
       BEQ    LFCF6   
       STA    $9B     
       LDA    $BD,X   
       STA    $99     
       LDA    #$00    
       STA    $AA     
LFCF6: STA    WSYNC   
LFCF8: STA    GRP1    
       CPY    $90     
       PHP            
       PLA            
       STA    ENAM0   
       CPY    $92     
       PHP            
       PLA            
       STA    ENABL   
       CPY    $91     
       PHP            
       PLA            
       STA    ENAM1   
       CPY    $93     
       BEQ    LFD16   
       LDA    #$00    
       STA    WSYNC   
       BEQ    LFD23   
LFD16: LDX    $97     
       INC    $97     
       LDA    LFF1E,X 
       STA    WSYNC   
       BEQ    LFD23   
       DEC    $93     
LFD23: DEY            
       STA    GRP0    
       STA    HMCLR   
       LDA    $AC     
       BNE    LFD52   
       LDA    $9B     
       STA    HMP1    
       STA    $AA     
       LDX    $9A     
       LDA    $D8,X   
       LDX    #$58    
       AND    #$48    
       BEQ    LFD3E   
       LDX    $D2     
LFD3E: STX    COLUP1  
       LDX    $9A     
       LDA    $E0,X   
       LDX    #$00    
       CMP    #$05    
       BCC    LFD4C   
       LDX    #$08    
LFD4C: STX    REFP1   
LFD4E: LDA    #$00    
       BEQ    LFD78   
LFD52: CPY    $99     
       BNE    LFD4E   
       LDX    $B3     
       INC    $B3     
       LDA    LFF00,X 
       BEQ    LFD66   
       STA    $AA     
       DEC    $99     
       JMP    LFD78   
LFD66: INC    $9A     
       LDX    $9A     
       LDA    $C3,X   
       BEQ    LFD78   
       STA    $9B     
       LDA    $BD,X   
       STA    $99     
       LDA    #$00    
       STA    $AA     
LFD78: STA    WSYNC   
       STA    HMOVE   
       STA    GRP1    
       CPY    $90     
       PHP            
       PLA            
       STA    ENAM0   
       CPY    $92     
       PHP            
       PLA            
       STA    ENABL   
       CPY    $91     
       PHP            
       PLA            
       STA    ENAM1   
       CPY    $93     
       BEQ    LFD98   
       LDA    #$00    
       BEQ    LFDA3   
LFD98: LDX    $97     
       INC    $97     
       LDA    LFF1E,X 
       BEQ    LFDA3   
       DEC    $93     
LFDA3: DEY            
       STA    WSYNC   
       BEQ    LFDE3   
       STA    GRP0    
       LDX    $AE     
       LDA    LFE00,X 
       STA    PF1     
       LDA    LFE14,X 
       STA    PF2     
       LDA    #$00    
       CPY    $99     
       BNE    LFDDE   
       LDX    $B3     
       INC    $B3     
       LDA    LFF00,X 
       BEQ    LFDCC   
       STA    $AA     
       DEC    $99     
       JMP    LFDDE   
LFDCC: INC    $9A     
       LDX    $9A     
       LDA    $C3,X   
       BEQ    LFDDE   
       STA    $9B     
       LDA    $BD,X   
       STA    $99     
       LDA    #$00    
       STA    $AA     
LFDDE: STA    WSYNC   
       JMP    LFC30   
LFDE3: RTS            

LFDE4: .byte $03,$04,$05,$00,$01,$02
LFDEA: .byte $01,$02,$00,$04,$05,$03
LFDF0: .byte $02,$00,$01,$05,$03,$04
LFDF6: LDA    $F7     
       ASL            
       BCS    LFDFD   
       EOR    #$4D    
LFDFD: STA    $F7     
LFDFF: RTS            

LFE00: .byte $FF,$80,$80,$80,$8F,$88,$88,$88,$00,$00,$00,$00,$88,$88,$88,$8F
       .byte $80,$80,$80,$FF
LFE14: .byte $3F,$00,$00,$00,$3F,$00,$00,$00,$8E,$00,$00,$8E,$00,$00,$00,$3F
       .byte $00,$00,$00,$3F,$FF,$80,$80,$84,$8E,$84,$80,$80,$00,$00,$00,$00
       .byte $80,$80,$84,$8E,$84,$80,$80,$FF,$3F,$00,$00,$00,$E0,$00,$00,$04
       .byte $04,$04,$04,$04,$04,$00,$00,$E0,$00,$00,$00,$3F,$FF,$80,$80,$80
       .byte $80,$84,$84,$84,$04,$04,$04,$04,$84,$84,$84,$84,$84,$84,$84,$FF
       .byte $3F,$00,$00,$00,$FC,$00,$00,$00,$FC,$00,$00,$F8,$08,$08,$38,$3E
       .byte $00,$00,$00,$3F,$FF,$80,$80,$80,$80,$87,$84,$FC,$00,$00,$00,$00
       .byte $84,$84,$87,$80,$80,$80,$80,$FF,$3F,$00,$00,$00,$00,$3F,$00,$00
       .byte $C0,$40,$C0,$00,$00,$00,$FF,$00,$00,$00,$00,$3F,$FF,$80,$80,$80
       .byte $8F,$88,$88,$88,$00,$00,$00,$00,$88,$88,$88,$8F,$80,$80,$80,$FF
       .byte $3F,$00,$00,$00,$F1,$10,$10,$1F,$00,$00,$00,$0F,$80,$80,$C0,$FF
       .byte $00,$00,$00,$3F,$FF,$88,$88,$88,$88,$88,$88,$8F,$00,$00,$00,$00
       .byte $FF,$80,$80,$80,$84,$84,$84,$FF,$3F,$08,$08,$08,$00,$00,$00,$3F
       .byte $00,$00,$00,$00,$08,$08,$08,$08,$08,$08,$08,$3F
LFEF0: .byte $00,$06,$0C,$12,$18,$12,$0C,$06
LFEF8: .byte $6A,$55,$5C,$63,$4E,$63,$5C,$55
LFF00: .byte $08,$14,$3E,$1C,$00,$00,$3C,$34,$1C,$0C,$00,$00,$10,$38,$34,$38
       .byte $10,$00,$0C,$1C,$34,$3C,$00,$00,$1C,$3E,$14,$08,$00,$00
LFF1E: .byte $04,$14,$7C,$38,$00,$00,$30,$3A,$1C,$0C,$00,$00,$30,$78,$70,$38
       .byte $00,$00
LFF30: .byte $0C,$1C,$38,$30,$08,$00,$38,$7C,$50,$40,$00,$00,$60,$70,$B8,$18
       .byte $00,$00,$70,$38,$78,$30,$00,$00,$10,$0C,$1C,$38,$30,$00,$54,$28
       .byte $38,$38,$2C,$40,$00,$08,$18,$7E,$2C,$38,$08,$00,$44,$3C,$58,$3C
       .byte $42,$00,$00,$08,$38,$2C,$7E,$18,$08,$00,$04,$68,$38,$38,$28,$54
       .byte $00
LFF71: .byte $01,$01,$00,$FF,$FF,$FF,$00,$01
LFF79: .byte $02,$01,$00
LFF7C: .byte $00,$06,$0C,$12,$18,$1E,$24,$2A
LFF84: .byte $FD,$FD,$02,$06,$06,$06,$02,$FD
LFF8C: .byte $05,$0A,$0A,$0A,$05,$00,$00,$00,$38,$EE,$82,$C6,$7C,$00
LFF9A: .byte $01,$02,$03,$04,$03,$02,$01,$00
LFFA2: .byte $06,$07,$05,$05,$02,$01,$02,$04
LFFAA: .byte $00,$28,$50,$78,$A0,$C8
LFFB0: .byte $4B,$41,$34,$25,$19,$0B
LFFB6: .byte $77,$83,$C5,$87,$83,$00
LFFBC: .byte $49,$3D,$2B,$1B,$0F
LFFC1: .byte $FF,$FF,$FF,$FF,$FF,$03,$01,$02,$FF,$05,$07,$06,$FF,$04,$00,$FF
       .byte $00
LFFD2: .byte $F0,$F0,$00,$10,$10,$10,$00,$F0
LFFDA: .byte $67,$0D,$45,$16,$9A,$C4,$00,$1C,$3E,$7F,$3E,$1C,$00,$20
LFFE8: .byte $00,$F0,$F0,$F0,$00,$10,$10,$10,$00
LFFF1: .byte $00,$F0,$F0,$F0,$00,$10,$10,$10,$00,$17,$F1,$17,$F1,$17,$F1
