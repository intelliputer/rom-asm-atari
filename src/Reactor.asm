; Disassembly of roms/Reactor.bin
; Disassembled Tue Oct  6 15:22:42 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Reactor.bin
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
INPT4   =  $3C
SWCHA   =  $0280
SWACNT  =  $0281
SWCHB   =  $0282
SWBCNT  =  $0283
INTIM   =  $0284
TIM64T  =  $0296
LF361   =   $F361
LF57F   =   $F57F
LF5DA   =   $F5DA
LF6B5   =   $F6B5
LFA59   =   $FA59
LFC4B   =   $FC4B
LFCC6   =   $FCC6

       ORG $F000
LF000: .byte $16,$74,$18,$14,$66,$5A,$46,$34,$9A,$A2,$42,$0E,$EA,$EA,$EA,$EA
       .byte $EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA
       .byte $EA,$EA,$EA,$EA,$EA,$EA,$95,$10,$85,$02,$85,$2A,$60
LF02D: EOR    #$FF    
       TAY            
       ORA    #$E0    
       CLC            
       ADC    #$27    
       STA    $F0     
       TYA            
       LSR            
       CLC            
       ADC    #$A0    
       STA    WSYNC   
       STA    HMCLR   
       STA    HMP0,X  
       LDA    #$F0    
       STA    $F1     
       JMP.ind ($00F0)
LF049: .byte $04,$D3,$04,$53,$00,$3C,$6E,$1B,$00,$1C,$6E,$0B,$00,$1C,$6E,$FC
       .byte $69,$00,$0F,$8A,$08,$4C,$00,$28,$66,$18,$44,$08,$22,$00,$1D,$54
       .byte $0B,$00,$00,$0D,$EC,$0D,$AD,$0D,$4E,$00,$37,$8F,$3B,$00,$37,$8F
       .byte $3B,$00,$00,$37,$97,$37,$94,$37,$91,$37,$8F,$00,$37,$91,$37,$94
       .byte $37,$8F,$37,$91,$00,$68,$F4,$48
LF091: .byte $D6,$00,$7C,$85,$7C,$85,$73,$73,$7C,$73,$73,$73,$85,$85,$7C

START:
       LDX    #$00    
       TXA            
LF0A3: STA    VSYNC,X 
       TXS            
       INX            
       BNE    LF0A3   
LF0A9: STX    SWACNT  
       STX    SWBCNT  
       LDA    #$11    
       STA    CTRLPF  
       JSR    LFC55   
       STX    $D8     
       INC    $99     
LF0BA: LDA    INTIM   
       BMI    LF0BA   
       JSR    LFFCC   
       LDA    #$06    
       CLC            
       SED            
       STA    WSYNC   
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDX    $A0     
       LDY    LFF18,X 
       LDA    ($AC),Y 
       STA    COLUP0  
       STA    COLUP1  
       LDA    $8F     
       ADC    $91     
       STA    RESP0   
       STA    RESP1   
       ADC    $93     
       CLD            
       TAY            
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       ADC    #$87    
       STA    $F4     
       TYA            
       AND    #$F0    
       LSR            
       BEQ    LF0F4   
       ADC    #$87    
LF0F4: STA    $F2     
       LDA    $95     
       AND    #$F0    
       LSR            
       BEQ    LF0FF   
       ADC    #$87    
LF0FF: STA    HMOVE   
       STA    $F6     
       LDA    $95     
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       ADC    #$87    
       STA    $F8     
       LDA    $97     
       AND    #$F0    
       LSR            
       BEQ    LF117   
       ADC    #$87    
LF117: STA    $FA     
       LDA    $97     
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       ADC    #$87    
       STA    $FC     
       LDA    $A1     
       BNE    LF14C   
       STA    $F2     
       LDY    #$1C    
       LDA    $9D     
       AND    #$E0    
       BEQ    LF134   
       LDY    #$26    
LF134: STY    $F8     
       LDY    #$78    
       LDA    $82     
       BPL    LF13E   
       LDY    #$63    
LF13E: STY    $F4     
       LDA    $B1     
       AND    #$03    
       TAY            
       LDA    LFF67,Y 
       ADC    #$FF    
       STA    $FC     
LF14C: JSR    LFFCC   
       LDA    $8D     
       AND    #$07    
       TAY            
       LDA    LFF83,Y 
       STA    $F4     
       LDA    ($AC),Y 
       STA    COLUP1  
       LDX    $83     
       BNE    LF167   
       LDY    #$08    
       LDA    $A7     
       ORA    ($AC),Y 
LF167: STA    COLUP0  
       LDA    $D8,X   
       PHA            
       LDA    $DA,X   
       LDX    #$01    
       JSR    LF02D   
       PLA            
       DEX            
       JSR    LF02D   
       STX    $F3     
       STX    $F2     
       STX    $F5     
       STX    $F6     
       STX    $F7     
       STX    $F8     
       STX    VDELP0  
       STX    VDELP1  
       DEX            
       BIT    $8A     
       STA    WSYNC   
       BMI    LF197   
       BVC    LF195   
       STX    PF0     
       STX    PF1     
LF195: STX    PF2     
LF197: STA    WSYNC   
       LDA    #$10    
       STA    NUSIZ1  
       ASL            
       STA    NUSIZ0  
       LDA    #$1A    
       STA    $F0     
       JMP    LF273   
LF1A7: LDY    $F5     
       LDX    LFE00,Y 
       LDY    $F6     
       LDA    LFE00,Y 
       LDY    $F1     
       STA    WSYNC   
       STX    GRP0    
       STA    GRP1    
       LDA    LFE00,Y 
       STA    PF0     
       LDA    LFEE0,Y 
       ORA    $F3     
       STA    PF1     
       LDA    $F2     
       STA    PF2     
       LDX    $F0     
       LDA    LFF12,X 
       STA    $F2     
       CLC            
       ADC    $86     
       STA    $F3     
       LDA    $F2     
       ADC    $85     
       STA    $F1     
       LDY    $F5     
       LDX    LFE01,Y 
       LDY    $F6     
       LDA    LFE01,Y 
       LDY    $F7     
       LSR    $F7     
       STX    GRP0    
       STA    GRP1    
       STY    ENAM0   
       LDA    $F8     
       STA    ENAM1   
       LSR    $F8     
       LDY    $F3     
       LDX    $F1     
       LDA    $84     
       CMP    $F2     
       BCC    LF217   
       BNE    LF20E   
       LDA    LFF3C,X 
       BIT    $89     
       BPL    LF215   
       AND    LFD81,Y 
LF20B: JMP    LF224   
LF20E: LDA    #$00    
       STA    $F1     
       STA    $F1     
       TAY            
LF215: BPL    LF20B   
LF217: LDA    LFD81,Y 
       AND    LFF3C,X 
       BIT    $89     
       BMI    LF20B   
       ORA    LFF4B,X 
LF224: STA    $F2     
       LDY    $F5     
       LDX    LFE02,Y 
       LDY    $F6     
       LDA    LFE02,Y 
       LDY    $83     
       STX    GRP0    
       STA    GRP1    
       LDA.wy $008B,Y 
       LDX    $F0     
       AND    LFED7,X 
       BEQ    LF242   
       LDA    #$02    
LF242: STA    ENABL   
       LDY    $F3     
       LDX    $F1     
       LDA    LFD08,Y 
       AND    LFF2D,X 
       BIT    $89     
       BMI    LF255   
       ORA    LFF54,X 
LF255: STA    $F3     
       LDY    $F5     
       LDX    LFE03,Y 
       LDY    $F6     
       LDA    LFE03,Y 
       LDY    $F7     
       STA    WSYNC   
       STX    GRP0    
       STA    GRP1    
       STY    ENAM0   
       LDA    $F8     
       STA    ENAM1   
       LSR    $F8     
       LSR    $F7     
LF273: BIT    $8A     
       BMI    LF281   
       BVC    LF285   
       LDX    $F0     
       DEX            
       STX    $F1     
       JMP    LF28C   
LF281: LDA    #$1A    
       BNE    LF28A   
LF285: LDA    #$1A    
       SEC            
       SBC    $F0     
LF28A: STA    $F1     
LF28C: DEC    $B5     
       BNE    LF294   
       LDA    $B3     
       STA    $F8     
LF294: LDY    $F5     
       LDX    LFE04,Y 
       LDY    $F6     
       LDA    LFE04,Y 
       LDY    #$00    
       STA    WSYNC   
       STX    GRP0    
       STA    GRP1    
       STY    ENABL   
       DEC    $B4     
       BNE    LF2B0   
       LDA    $B2     
       STA    $F7     
LF2B0: LDY    $F5     
       LDX    LFE05,Y 
       BNE    LF2BF   
       DEC    $B8     
       BEQ    LF2C5   
       STX    $F5     
       BNE    LF2C9   
LF2BF: TYA            
       CLC            
       ADC    #$06    
       BNE    LF2C7   
LF2C5: LDA    $B6     
LF2C7: STA    $F5     
LF2C9: LDY    $F6     
       LDA    LFE05,Y 
       BNE    LF2D6   
       DEC    $B9     
       BEQ    LF2DC   
       BNE    LF2DE   
LF2D6: TYA            
       CLC            
       ADC    #$06    
       BNE    LF2DE   
LF2DC: LDA    $B7     
LF2DE: STA    $F6     
       LDA    LFE05,Y 
       STA    WSYNC   
       STX    GRP0    
       STA    GRP1    
       LDA    $F7     
       STA    ENAM0   
       LDA    $F8     
       STA    ENAM1   
       LSR    $F7     
       LSR    $F8     
       DEC    $F0     
       BMI    LF2FC   
       JMP    LF1A7   
LF2FC: LDA    #$00    
       TAY            
       TAX            
       BIT    $8A     
       BMI    LF308   
       DEX            
       BVS    LF308   
       TXA            
LF308: STA    WSYNC   
       STA    PF0     
       STA    PF1     
       STX    PF2     
       STY    GRP0    
       STY    GRP1    
       STY    GRP0    
       STY    ENAM0   
       STY    ENAM1   
       STA    WSYNC   
       STA    WSYNC   
       LDX    #$04    
       LDY    $83     
       LDA    LFFC6,Y 
       JSR    LF02D   
       LDX    #$00    
       STX    PF0     
       STX    PF1     
       STX    PF2     
       LDA    #$9F    
       STA    TIM64T  
       LDA    $81     
       LDY    $A0     
       BNE    LF33C   
       ASL            
LF33C: STA    $F3     
       INC    $82     
       BNE    LF344   
       INC    $AF     
LF344: LDA    $82     
       AND    #$01    
       STA    $83     
       BEQ    LF3CA   
       LDX    #$0B    
LF34E: TXA            
       CMP    #$06    
       BCC    LF355   
       SBC    #$06    
LF355: TAY            
       BNE    LF361   
       LDA    #$18    
       BIT    $F3     
       BPL    LF363   
       LDA    #$10    
       CMP    LF4A5   
LF363: STA    $F1     
       LDA.wy $00DE,Y 
       BEQ    LF392   
       LDA    $E4,X   
       BPL    LF37F   
       CMP    #$D0    
       BCS    LF374   
       LDA    #$D0    
LF374: STA    $F0     
       EOR    #$FF    
       LSR            
       LSR            
       LSR            
       LSR            
       SEC            
       BCS    LF390   
LF37F: BEQ    LF3C4   
       CMP    #$31    
       BCC    LF387   
       LDA    #$30    
LF387: STA    $F0     
       LSR            
       LSR            
       LSR            
       LSR            
       CLC            
       EOR    #$FF    
LF390: ADC    $F0     
LF392: STA    $E4,X   
       CLC            
       ADC    $C6,X   
LF397: CMP    $F1     
       BCC    LF3C2   
       BMI    LF3B0   
       SBC    $F1     
       TAY            
       LDA    $D8,X   
       ADC    #$1F    
       CMP    #$C0    
       BCC    LF3AA   
       ADC    #$40    
LF3AA: STA    $D8,X   
       TYA            
       JMP    LF397   
LF3B0: CLC            
       ADC    $F1     
       TAY            
       SEC            
       LDA    $D8,X   
       SBC    #$20    
       CMP    #$C0    
       BCC    LF3AA   
       SBC    #$41    
       JMP    LF3AA   
LF3C2: STA    $C6,X   
LF3C4: DEX            
       BPL    LF34E   
LF3C7: JMP    LF48F   
LF3CA: LDA    $DE     
       BEQ    LF3C7   
       STX    $F8     
       JSR    LFA0F   
       LDX    #$05    
LF3D5: JSR    LFA2C   
       BMI    LF41E   
       STA    $A9     
       LDY    $F6     
       BIT    $B1     
       BPL    LF3E4   
       STY    $C0,X   
LF3E4: INC    $F8     
       STY    $A7     
       LDA    #$0F    
       STA    $A8     
       JSR    LFA7D   
       EOR    #$FF    
       LDY    #$10    
       CPY    $8D     
       BCS    LF3F8   
       ASL            
LF3F8: ADC    $E4     
       STA    $E4     
       LDA    $F1     
       EOR    #$FF    
       CPY    $8D     
       BCS    LF405   
       ASL            
LF405: ADC    $EA     
       STA    $EA     
       LDA    $F0     
       ASL            
       ASL            
       ADC    $E4,X   
       STA    $E4,X   
       LDA    $F1     
       ASL            
       ASL            
       ADC    $EA,X   
       STA    $EA,X   
LF419: DEX            
       BNE    LF3D5   
       BEQ    LF486   
LF41E: LDY    $C0,X   
       JSR    LFA7D   
       ADC    $E4,X   
       STA    $E4,X   
       LDA    $F1     
       CLC            
       ADC    $EA,X   
       STA    $EA,X   
       LDA    $D2     
       BEQ    LF43C   
       AND    #$1F    
       STA    $F1     
       LDA    $BA     
       AND    #$1F    
       BNE    LF442   
LF43C: LDA    $F5     
       STA    $F1     
       LDA    $F4     
LF442: STA    $F0     
       LDY    #$03    
       LDA    $D8,X   
       AND    #$1F    
       SEC            
       SBC    $F0     
       BPL    LF455   
       EOR    #$FF    
       ADC    #$01    
       DEY            
       DEY            
LF455: STA    $F0     
       LDA    $DE,X   
       AND    #$1F    
       SEC            
       SBC    $F1     
       BPL    LF465   
       EOR    #$FF    
       ADC    #$01    
       DEY            
LF465: STY    $F6     
       CMP    $F0     
       ROL    $F6     
       ADC    $F0     
       CMP    #$04    
       BCC    LF419   
       LDY    $F6     
       LDA    $BB     
       AND    LFEE0,X 
       BEQ    LF482   
       LDA    $82     
       LSR            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
LF482: STY    $C0,X   
       BPL    LF419   
LF486: LDA    $F8     
       BEQ    LF48F   
       INC    $B1     
       JSR    LFCB3   
LF48F: LDA    INTIM   
       BMI    LF48F   
       STA    WSYNC   
       LDA    #$42    
       STA    WSYNC   
       STA    VBLANK  
       LDX    $83     
       LDA    $DC,X   
       CLC            
       ADC    #$40    
       LDX    #$03    
LF4A5: JSR    LF02D   
       STA    WSYNC   
       STX    VSYNC   
       STA    WSYNC   
       LDA    $AC     
       STA    COLUBK  
       LDA    #$00    
       STA    WSYNC   
       STA    VSYNC   
       LDA    #$B0    
       STA    TIM64T  
       LDA    $82     
       AND    #$0F    
       TAY            
       LDA    LFF8B,Y 
       AND    #$07    
       TAX            
       LDA    $DE,X   
       BEQ    LF50F   
       STX    $F7     
       JSR    LFA0F   
       LDA    LFF8B,Y 
       LSR            
       LSR            
       LSR            
       TAX            
       JSR    LFA2C   
       CMP    #$0A    
       BCS    LF50F   
       LDY    $F6     
       LDA    LFF7B,Y 
       ASL            
       ASL            
       ASL            
       ASL            
       STA    $F0     
       ADC    $E4,X   
       STA    $E4,X   
       LDA    LFF7B,Y 
       AND    #$F0    
       STA    $F1     
       ADC    $EA,X   
       STA    $EA,X   
       LDY    $F7     
       LDA    $F0     
       EOR    #$FF    
       ADC.wy $00E4,Y 
       STA.wy $00E4,Y 
       LDA    $F1     
       EOR    #$FF    
       ADC.wy $00EA,Y 
       STA.wy $00EA,Y 
LF50F: LDY    $A6     
       BEQ    LF522   
       STY    $AA     
       LDA    $A2     
       BNE    LF53E   
       DEC    $A6     
       LDA    LF091,Y 
       STA    $A2     
       BNE    LF53E   
LF522: LDA    $AA     
       BEQ    LF53E   
       LDA    #$78    
       STA    $AE     
       LDA    $84     
       EOR    #$09    
       ORA    $A7     
       BNE    LF53E   
       STA    $AA     
       STA    $A9     
       LDA    #$30    
       STA    $A7     
       LDA    #$08    
       STA    $A8     
LF53E: LDA    $AE     
       BNE    LF57F   
       LDA    $A1     
       BMI    LF584   
       BEQ    LF58E   
       CMP    #$03    
       BNE    LF5A6   
       LDA    #$12    
       STA    $DE     
       STA    $D8     
       LDA    $98     
       BEQ    LF56A   
LF556: LDX    #$10    
LF558: LDA    $8D,X   
       LDY    $8E,X   
       STA    $8E,X   
       STY    $8D,X   
       DEX            
       DEX            
       BPL    LF558   
       LDA    $A0     
       EOR    #$01    
       STA    $A0     
LF56A: LDA    $97     
       BEQ    LF57C   
       SED            
       SEC            
       SBC    #$01    
       STA    $97     
       CLD            
       JSR    LFC6C   
       INC    $AA     
       LDA    #$80    
LF57C: STA    $A1     
       CMP    $AEC6   
       JMP    LF6DF   
LF584: LDA    $82     
       AND    #$1F    
       ORA    $AA     
       BNE    LF5DC   
       BEQ    LF5F1   
LF58E: LDA    $AF     
       AND    #$FC    
       BEQ    LF59C   
       DEC    $AE     
       LDA    $A2     
       BNE    LF59C   
       INC    $AC     
LF59C: LDA    $9A     
       ORA    $9C     
       ORA    $9E     
       BNE    LF556   
       BEQ    LF5DC   
LF5A6: LDA    $AC     
       BNE    LF5DA   
       LDA    $9F     
       BEQ    LF5BF   
       LDA    #$15    
       JSR    LFCB3   
       LDA    $A2     
       BNE    LF5B9   
       BRK            
       .byte $67 ;.RRA
LF5B9: DEC    $9F     
       LDA    #$01    
       BNE    LF5D5   
LF5BF: LDA    $97     
       BNE    LF5E9   
       LDA    $95     
       BEQ    LF5DF   
       SED            
       SBC    #$01    
       STA    $95     
       LDA    #$05    
       JSR    LFC99   
       BRK            
       JMP    ($0DA9) 
LF5D5: STA    $AC     
       STA    $AE     
       CMP    $ACC6   
LF5DC: JMP    LF6DF   
LF5DF: LDY    #$04    
       LDA    $98     
       BNE    LF5E7   
       LDY    #$0E    
LF5E7: STY    $A6     
LF5E9: LDA    #$3C    
       STA    $AE     
       LDA    #$03    
       BNE    LF57C   
LF5F1: LDA    $8D     
       AND    #$07    
       TAY            
       LDA    LFF6B,Y 
       AND    #$C0    
       ASL            
       ROL            
       ROL            
       ADC    #$03    
       STA    $F0     
       LDA    LFF73,Y 
       AND    #$C0    
       ASL            
       ROL            
       ROL            
       STA    $F1     
       LDX    #$03    
       LDY    #$00    
       LDA    $93     
       BEQ    LF61D   
       LDA    $DF     
       ORA    $E0     
       ORA    $E3     
       BEQ    LF651   
       INY            
LF61D: DEX            
       LDA    $91     
       BEQ    LF63F   
       TYA            
       BNE    LF634   
       LDA    $DF     
       ORA    $E3     
       BEQ    LF651   
       INY            
       CPY    $F1     
       BCS    LF63F   
       LDA    $E0     
       BEQ    LF651   
LF634: INY            
       CPY    $F1     
       BCS    LF63F   
       LDA    $E1     
       ORA    $E2     
       BEQ    LF651   
LF63F: DEX            
       LDA    $8F     
       BEQ    LF674   
       LDY    $F1     
       DEY            
LF647: INY            
       CPY    $F0     
       BCS    LF674   
       LDA.wy $00DF,Y 
       BNE    LF647   
LF651: STX    $BC,Y   
       LDA    LFF32,X 
       STA    $F0     
       TXA            
       ASL            
       TAX            
       SED            
       LDA    $8D,X   
       SEC            
       SBC    $F0     
       STA    $8D,X   
       CLD            
       LSR            
       TYA            
       ROL            
       TAX            
       LDA    LFFA5,X 
       STA.wy $00DF,Y 
       LDA    LFF9B,X 
       STA.wy $00D9,Y 
LF674: LDX    #$04    
LF676: LDA    $DF,X   
       BNE    LF6AE   
       DEX            
       BPL    LF676   
       INC    $8D     
       LDA    $8D     
       CMP    #$20    
       BCC    LF689   
       LDA    #$18    
       STA    $8D     
LF689: LDY    #$0B    
       AND    #$07    
       BEQ    LF691   
       LDY    #$03    
LF691: STY    $A6     
       TAY            
       LDA    #$3F    
       STA    $AE     
       AND    LFF6B,Y 
       STA    $8F     
       LDA    LFF73,Y 
       AND    #$3F    
       STA    $91     
       LDA    LFE7F,Y 
       AND    #$3F    
       STA    $93     
       JSR    LFC79   
LF6AE: LDA    $88     
       BNE    LF6B5   
       STA    $D2     
       CMP    $88C6   
       LDA    $A7     
       BNE    LF6CB   
       LDA    #$20    
       SBC    $88     
       STA    $A9     
       LDA    #$03    
       STA    $A8     
       LDA    #$0C    
       SBC    $84     
       STA    $A7     
LF6CB: DEC    $87     
       BPL    LF6DF   
       LDA    #$07    
       STA    $87     
       DEC    $84     
       LDY    $84     
       DEY            
       DEY            
       BPL    LF6DF   
       LDA    #$02    
       STA    $84     
LF6DF: LDX    $83     
       BEQ    LF72E   
LF6E3: DEC    $A4,X   
       BPL    LF712   
       LDY    #$00    
       STY    AUDV0,X 
       DEY            
       STY    $A4,X   
       LDY    $A2,X   
       BEQ    LF712   
       LDA    LF000,Y 
       BNE    LF6FB   
       STA    $A2,X   
       BEQ    LF712   
LF6FB: STA    AUDC0,X 
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $A4,X   
       INY            
       LDA    LF000,Y 
       INY            
       STY    $A2,X   
       STA    AUDF0,X 
       LSR            
       LSR            
       LSR            
       LSR            
       STA    AUDV0,X 
LF712: DEX            
       BPL    LF6E3   
       LDA    $A5     
       BPL    LF725   
       LDA    $A8     
       STA    AUDC1   
       LDA    $A9     
       STA    AUDF1   
       LDA    $A7     
       STA    AUDV1   
LF725: LDA    $A7     
       BEQ    LF74B   
       DEC    $A7     
       JMP    LF74B   
LF72E: LDA    $86     
       CLC            
       BIT    $89     
       BPL    LF741   
       SBC    #$0A    
       BMI    LF73D   
       CMP    #$16    
       BCS    LF749   
LF73D: LDA    #$6E    
       BNE    LF749   
LF741: ADC    #$0B    
       CMP    #$63    
       BCC    LF749   
       LDA    #$00    
LF749: STA    $86     
LF74B: LDA    $82     
       AND    #$07    
       BNE    LF793   
       INC    $B1     
       LDA    $8D     
       AND    #$18    
       LSR            
       LSR            
       LSR            
       LSR            
       LDY    #$09    
       BCC    LF760   
       INY            
LF760: LDX    $A6     
       BNE    LF76A   
       PHP            
       ASL    $89     
       PLP            
       ROR    $89     
LF76A: ASL    $8A     
       LSR            
       ROR    $8A     
       LDA    $AB     
       BEQ    LF777   
       DEC    $AB     
       DEC    $AB     
LF777: EOR    ($AC),Y 
       STA    COLUPF  
       LSR    $89     
       BCC    LF791   
       LDA    #$08    
       STA    $87     
       CMP    $84     
       BCC    LF791   
       STA    $A7     
       STA    $A8     
       INC    $84     
       LDA    $84     
       STA    $A9     
LF791: ROL    $89     
LF793: LDY    $84     
       LDA    LFCFF,Y 
       STA    $85     
       LDA    $81     
       LSR            
       TAX            
       BCC    LF7B8   
       LDA    #$00    
       STA    $99     
       LDA    $80     
       LSR            
       LDA    #$03    
       STA    $A1     
       STA    $95     
       STA    $97     
       BCC    LF7B8   
       STA    $96     
       STA    $98     
       LSR            
       STA    $A0     
LF7B8: LDA    SWCHB   
       EOR    #$03    
       STA    $81     
       AND    #$03    
       BEQ    LF7E7   
       LSR            
       BEQ    LF7D4   
       TXA            
       LSR            
       BCC    LF7CE   
       DEC    $88     
       BPL    LF7D4   
LF7CE: INC    $80     
       LDA    #$1E    
       STA    $88     
LF7D4: JSR    LFC55   
       LDA    $80     
       AND    #$07    
       STA    $99     
       INC    $99     
       AND    #$06    
       ASL            
       ASL            
       STA    $8D     
       STA    $8E     
LF7E7: LDA    SWCHA   
       LDX    $A0     
       BNE    LF7F2   
       LSR            
       LSR            
       LSR            
       LSR            
LF7F2: AND    #$0F    
       TAX            
       ASL    $B1     
       CLC            
       EOR    #$0F    
       BEQ    LF7FD   
       SEC            
LF7FD: ROR    $B1     
       LDA    LFEF8,X 
       BMI    LF80A   
       ADC    $E4     
       BMI    LF80E   
       BPL    LF811   
LF80A: ADC    $E4     
       BMI    LF811   
LF80E: ADC    LFEF8,X 
LF811: CLC            
       BEQ    LF81A   
       BMI    LF818   
       SBC    #$01    
LF818: ADC    #$01    
LF81A: STA    $E4     
       CLC            
       LDA    LFF03,X 
       BMI    LF828   
       ADC    $EA     
       BMI    LF82C   
       BPL    LF82F   
LF828: ADC    $EA     
       BMI    LF82F   
LF82C: ADC    LFF03,X 
LF82F: CLC            
       BEQ    LF838   
       BMI    LF836   
       SBC    #$01    
LF836: ADC    #$01    
LF838: STA    $EA     
       LDA    $D2     
       BNE    LF866   
       BIT    $A1     
       BPL    LF866   
       LDX    $A0     
       LDA    INPT4,X 
       BMI    LF866   
       LDA    $95     
       BEQ    LF866   
       SED            
       SEC            
       SBC    #$01    
       STA    $95     
       CLD            
       LDA    $D8     
       STA    $BA     
       LDX    #$02    
       ADC    #$3F    
       JSR    LF02D   
       LDA    $DE     
       STA    $D2     
       LDA    #$14    
       STA    $88     
LF866: LDY    $83     
       BEQ    LF86E   
       ASL    $B0     
       LSR    $B0     
LF86E: LDX    LFF26,Y 
LF871: LDA    $DE,X   
       BEQ    LF8F3   
       JSR    LFA0F   
       LDY    #$00    
       LDA    #$0D    
       CMP    $F4     
       BCS    LF889   
       INY            
       CPY    $F2     
       LDA    #$1A    
       SBC    $F4     
       STA    $F4     
LF889: STY    $F0     
       TXA            
       BEQ    LF8DC   
       LDA    $F4     
       CMP    #$03    
       BNE    LF8DC   
       LDA    $F2     
       CMP    #$03    
       BCS    LF8DC   
       LDA    $F3     
       LSR            
       LSR            
       BCC    LF8DC   
       LSR            
       BCS    LF8DC   
       LDA    #$1A    
       SBC    $F5     
       TAY            
       LDA    LFED7,Y 
       LDY    $F0     
       AND.wy $008B,Y 
       BEQ    LF8DC   
       EOR.wy $008B,Y 
       STA.wy $008B,Y 
       PHP            
       LDA    LFDFE,Y 
       STA    $E4,X   
       JSR    LFCB1   
       BRK            
       EOR    #$28    
       BNE    LF8DF   
LF8C6: JSR    LFC79   
       LDA    $8B     
       ORA    $8C     
       BNE    LF8DF   
       SED            
       LDA    $95     
       ADC    #$01    
       STA    $95     
       CLD            
       JSR    LFC6C   
       BCC    LF8DF   
LF8DC: JSR    LFB5A   
LF8DF: TXA            
       BEQ    LF8F3   
       LDA    $D2,X   
       BNE    LF8EC   
       LDA    $84     
       CMP    #$03    
       BCS    LF8F3   
LF8EC: INC    $D2,X   
       BNE    LF8F3   
       JSR    LFC7F   
LF8F3: DEX            
       DEX            
       BMI    LF8FA   
       JMP    LF871   
LF8FA: LDA    $B0     
       BMI    LF90C   
       LDY    #$00    
       LSR            
       BCC    LF905   
       STY    $E4     
LF905: LSR            
       BCC    LF90A   
       STY    $EA     
LF90A: STY    $B0     
LF90C: LDX    $83     
       LDA    $E2,X   
       AND    #$1F    
       STA    $B5     
       LDA    #$06    
       STA    $B3     
       LDA    $E2,X   
       ROL            
       ROL            
       ROL            
       AND    #$03    
       TAY            
LF920: ASL    $B3     
       DEY            
       BPL    LF920   
       LDY    $BD,X   
       BNE    LF92F   
       LDA    $82     
       LSR            
       AND    #$03    
       TAY            
LF92F: LDA    $E0,X   
       JSR    LFA24   
       EOR    #$FF    
       SEC            
       ADC    LFF63,Y 
       STA    $B7     
       LDA    $E0,X   
       AND    #$1F    
       STA    $B9     
       LDA    $DE,X   
       AND    #$1F    
       STA    $B8     
       TXA            
       BEQ    LF957   
       LDY    $BC     
       BNE    LF975   
       LDA    $82     
       LSR            
       AND    #$03    
       TAY            
       BPL    LF975   
LF957: LDA    #$0E    
       STA    $B2     
       LDA    $D2     
       AND    #$1F    
       STA    $B4     
       LDA    $D2     
       ROL            
       ROL            
       ROL            
       AND    #$03    
       TAY            
LF969: ASL    $B2     
       DEY            
       BPL    LF969   
       LDA    $B1     
       AND    #$03    
       ORA    #$04    
       TAY            
LF975: LDA    $DE,X   
       JSR    LFA24   
       EOR    #$FF    
       SEC            
       ADC    LFF63,Y 
       STA    $B6     
       STA    WSYNC   
       STA    HMCLR   
       LDA    #$FE    
       STA    $F3     
       STA    $F5     
       STA    $F7     
       STA    $F9     
       STA    $FB     
       STA    $FD     
       LDA    #$F0    
       STA    HMP0    
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    RESP0   
       STA    RESP1   
       STA    VDELP0  
       STA    VDELP1  
       LDA    $9D     
       AND    #$F0    
       LSR            
       ADC    #$87    
       STA    $F2     
       LDA    $9D     
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       ADC    #$87    
       STA    $F4     
       LDA    $9B     
       AND    #$F0    
       LSR            
       ADC    #$87    
       STA    HMOVE   
       STA    $F6     
       LDA    $9B     
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       ADC    #$87    
       STA    $F8     
       LDA    $99     
       AND    #$F0    
       LSR            
       ADC    #$87    
       STA    $FA     
       LDA    $99     
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       ADC    #$87    
       STA    $FC     
       LDY    #$00    
       LDX    #$00    
LF9E8: LDA    $F2,X   
       CMP    #$87    
       BNE    LF9F6   
       STY    $F2,X   
       INX            
       INX            
       CPX    #$0A    
       BNE    LF9E8   
LF9F6: LDY    #$0B    
       LDA    ($AC),Y 
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$D0    
       STA    HMP0    
       LDA    #$E0    
       STA    HMP1    
       LDA    #$00    
       STA    WSYNC   
       STA    VBLANK  
       JMP    LF0BA   
LFA0F: LDA    $D8,X   
       AND    #$1F    
       STA    $F4     
       LDA    $D8,X   
       JSR    LFA24   
       STA    $F2     
       LDA    $DE,X   
       AND    #$1F    
       STA    $F5     
       LDA    $DE,X   
LFA24: LSR            
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $F3     
       RTS            

LFA2C: LDA    $D8,X   
       AND    #$1F    
       SEC            
       SBC    $F4     
       TAY            
       INY            
       CPY    #$03    
       BCS    LFA7A   
       LDA    $DE,X   
       AND    #$1F    
       ADC    #$02    
       SBC    $F5     
       CMP    #$03    
       BCS    LFA7A   
       STA    $F1     
       LDA    $D8,X   
       AND    #$E0    
       ASL            
       ROL            
       ROL            
       ROL            
       ADC    LFDFB,Y 
       BPL    LFA59   
       EOR    #$FF    
       LDY    #$01    
       CMP.w  $00A0   
       STY    $F6     
       STA    $F0     
       LDA    $DE,X   
       AND    #$E0    
       ASL            
       ROL            
       ROL            
       ROL            
       LDY    $F1     
       ADC    LFDFB,Y 
       BPL    LFA71   
       EOR    #$FF    
       SEC            
LFA71: ROL    $F6     
       CMP    $F0     
       ROL    $F6     
       ADC    $F0     
       RTS            

LFA7A: LDA    #$FF    
       RTS            

LFA7D: LDA    LFF7B,Y 
       LSR            
       LSR            
       LSR            
       LSR            
       CMP    #$08    
       BCC    LFA8A   
       ORA    #$F0    
LFA8A: STA    $F1     
       LDA    LFF7B,Y 
       AND    #$0F    
       CMP    #$08    
       BCC    LFA98   
       ORA    #$F0    
       CLC            
LFA98: STA    $F0     
       RTS            

LFA9B: LDA    $F0     
       LSR            
       BNE    LFAA6   
       INC    $DE,X   
       LDA    #$20    
       BNE    LFAAA   
LFAA6: DEC    $DE,X   
       LDA    #$E0    
LFAAA: STA    $EA,X   
       RTS            

LFAAD: LDA    #$08    
       STA    $A8     
       LDA    $F5     
       CMP    $F4     
       ASL    $F0     
       ADC    $F4     
       CMP    #$16    
       BCC    LFAC0   
       JMP    LFC11   
LFAC0: ADC    #$0A    
       STA    $A9     
       LSR            
       LSR            
       STA    $A7     
       LDY    $F0     
       LDA    LFE08,Y 
       LSR            
       PHA            
       AND    #$01    
       BEQ    LFADD   
       LDA    $A9     
       BCC    LFAD9   
       EOR    #$FF    
LFAD9: ADC    $E4     
       STA    $E4     
LFADD: PLA            
       LSR            
       LSR            
       AND    #$01    
       BEQ    LFAEE   
       LDA    $A9     
       BCC    LFAEA   
       EOR    #$FF    
LFAEA: ADC    $EA     
       STA    $EA     
LFAEE: RTS            

LFAEF: LDA    #$83    
       STA    $B0     
       BIT    $89     
       BMI    LFAAD   
       BPL    LFB48   
LFAF9: TXA            
       BNE    LFB4B   
       LDA    #$82    
       STA    $B0     
LFB00: BIT    $89     
       BMI    LFAAD   
       BPL    LFB4B   
LFB06: TXA            
       BNE    LFB11   
       LDA    #$81    
       STA    $B0     
       BIT    $89     
       BMI    LFAAD   
LFB11: LDA    $F0     
       LSR            
       LDA    $F6     
       BCC    LFB1A   
       EOR    #$FF    
LFB1A: ADC    $E4,X   
       STA    $E4,X   
LFB1E: RTS            

LFB1F: LDA    $F0     
       EOR    #$03    
       STA    $F0     
       LDA    #$10    
       STA    $F6     
       DEC    $F5     
       LDA    $F5     
       CMP    $84     
       BCC    LFB1E   
       ADC    $85     
       TAY            
       LDA    $F4     
       CMP    LFFB7,Y 
       BCC    LFB1E   
       CMP    #$05    
       BEQ    LFB06   
       LDA    $F5     
       CMP    $84     
       BEQ    LFAF9   
       TXA            
       BEQ    LFAEF   
LFB48: JSR    LFB11   
LFB4B: LDA    $F0     
       CMP    #$02    
       LDA    $F6     
       BCC    LFB55   
       EOR    #$FF    
LFB55: ADC    $EA,X   
       STA    $EA,X   
       RTS            

LFB5A: LDA    #$0D    
       CMP    $F5     
       BCS    LFB6A   
       LDA    #$1B    
       SBC    $F5     
       STA    $F5     
       INC    $F0     
       INC    $F0     
LFB6A: LDA    #$05    
       STA    $F6     
       LDA    $F4     
       BEQ    LFBA0   
       LDY    $F5     
       BEQ    LFBB5   
       LDA    LFEE0,X 
       AND    $BB     
       BNE    LFBC1   
       CPY    #$09    
       BCC    LFB90   
       LDA    $F4     
       CMP    #$03    
       BCC    LFBA0   
       BNE    LFB1F   
       TXA            
       BNE    LFB11   
LFB8C: TXA            
       BNE    LFB48   
       RTS            

LFB90: LDA    LFFAE,Y 
       CMP    $F4     
       BCC    LFB1F   
       BEQ    LFB8C   
       CMP    #$06    
       BEQ    LFBF4   
LFB9D: JSR    LFA9B   
LFBA0: LDA    $F0     
       LSR            
       BCS    LFBAB   
       INC    $D8,X   
       LDA    #$20    
       BNE    LFBAF   
LFBAB: DEC    $D8,X   
       LDA    #$E0    
LFBAF: STA    $E4,X   
       LDA    $F5     
       BNE    LFBB8   
LFBB5: JSR    LFA9B   
LFBB8: ASL    $8A     
       LSR    $8A     
       TXA            
       BNE    LFC36   
       BEQ    LFC11   
LFBC1: LDA    $F0     
       EOR    #$03    
       STA    $F0     
       CPY    #$07    
       BCS    LFBB5   
       LDA    LFFAE,Y 
       SBC    #$02    
       CMP    $F4     
       BCS    LFBF3   
       CPY    #$01    
       BEQ    LFBA0   
       CMP    #$03    
       BNE    LFB9D   
       LDA    $F4     
       CMP    #$07    
       BCC    LFBF3   
       LDA    LFEE0,X 
       EOR    $BB     
       STA    $BB     
       ORA    $D2     
       BNE    LFBF3   
       LDA    $8A     
       EOR    #$40    
       STA    $8A     
LFBF3: RTS            

LFBF4: LDA    $8A     
       ASL            
       ASL            
       ROL            
       ASL            
       EOR    $F0     
       AND    #$02    
       BEQ    LFB9D   
       LDA    $F0     
       EOR    #$03    
       STA    $F0     
       LDA    LFEE0,X 
       ORA    $BB     
       STA    $BB     
       TXA            
       BNE    LFB9D   
       RTS            

LFC11: JSR    LFCD6   
       STX    $AE     
       BRK            
       STX    $40A9   
       STA    $A1     
       STA    $AC     
       LDX    #$05    
LFC20: STX    $84     
       LDA    $DE,X   
       BEQ    LFC31   
       SED            
       LDA    $8F     
       ADC    #$01    
       STA    $8F     
       CLD            
       JSR    LFCD6   
LFC31: DEX            
       BNE    LFC20   
       BEQ    LFC79   
LFC36: LDA    LFEE0,X 
       AND    $BB     
       BEQ    LFC7F   
       INC    $9F     
       BNE    LFC4B   
       DEC    $9F     
       LDA    #$10    
       JSR    LFCB3   
       BRK            
       .byte $67 ;.RRA
       CMP    $5B00   
       INC    $D2,X   
       LDY    $BB,X   
       DEY            
       BNE    LFC7F   
       RTS            

LFC55: LDX    #$68    
       LDA    #$00    
LFC59: STA    $8E,X   
       DEX            
       BNE    LFC59   
       LDA    #$F0    
       STA    $AD     
       LDA    #$12    
       STA    $8F     
       STA    $90     
       STA    $D8     
       STA    $DE     
LFC6C: LDA    $8D     
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    LFFC8,Y 
       STA    $8B     
       STA    $8C     
LFC79: LSR    $89     
       SEC            
       ROL    $89     
       RTS            

LFC7F: BRK            
       RTS            

LFC81: .byte $D6,$BB,$30,$4E,$F0,$16,$B4,$BB,$C0,$01,$F0,$15,$84,$BD,$A5,$DF
       .byte $85,$E0,$A5,$D9,$85,$DA,$A9,$02
LFC99: SED            
       CLC            
       BCC    LFCBB   
       LDA    #$FA    
LFC9F: STA    $D2,X   
       RTS            

LFCA2: .byte $E0,$01,$D0,$F1,$A5,$D9,$85,$DD,$A5,$DF,$85,$E3,$A9,$75,$CD
LFCB1: LDA    #$50    
LFCB3: SED            
       CLC            
       ADC    $99     
       STA    $99     
       LDA    #$00    
LFCBB: ADC    $9B     
       STA    $9B     
       BCC    LFCD1   
       LDA    #$00    
       ADC    $9D     
       STA    $9D     
       LDA    $97     
       ADC    #$01    
       STA    $97     
       LDA    #$4E    
       STA    $A2     
LFCD1: CLD            
       RTS            

LFCD3: .byte $20,$B1,$FC
LFCD6: LDA    LFEE0,X 
       EOR    #$FF    
       AND    $BB     
       STA    $BB     
       LDA    #$04    
       STA    $AB     
       LDA    #$00    
       STA    $DE,X   
       BEQ    LFC9F   
       PLP            
       STX    $F0     
       TSX            
       DEC    VBLANK,X
       LDA    $A1     
       BEQ    LFCFD   
       LDA    ($01,X) 
       LDX    $A2     
       BEQ    LFCFB   
       LDX    #$01    
LFCFB: STA    $A2,X   
LFCFD: LDX    $F0     
LFCFF: RTS            

LFD00: .byte $02,$01,$00,$FE,$FD,$FB,$FA,$F9
LFD08: .byte $F8,$00,$00,$00,$00,$00,$01,$02,$04,$08,$08,$08,$00,$00,$00,$01
       .byte $02,$04,$08,$10,$10,$10,$10,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$01,$01,$00,$00,$00,$00,$00,$00,$00,$01
       .byte $02,$04,$04,$00,$00,$00,$00,$00,$00,$00,$3F,$30,$18,$00,$00,$00
       .byte $00,$00,$00,$0E,$03,$00,$00,$00,$00,$00,$00,$00,$03,$01,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00
LFD81: .byte $00,$00,$00,$FC,$02,$01,$00,$00,$00,$C0,$20,$90,$00,$FE,$01,$00
       .byte $00,$00,$00,$C0,$20,$10,$90,$00,$00,$00,$00,$00,$00,$C0,$20,$10
       .byte $88,$48,$00,$00,$00,$00,$00,$E0,$10,$08,$04,$84,$84,$00,$00,$00
       .byte $00,$F0,$08,$04,$02,$01,$00,$C0,$00,$00,$00,$F8,$04,$02,$01,$00
       .byte $00,$80,$C0,$00,$00,$00,$00,$00,$00,$00,$01,$0F,$78,$C0,$00,$00
       .byte $00,$00,$00,$00,$01,$07,$1C,$70,$C0,$00,$00,$00,$01,$03,$07,$0E
       .byte $1C,$38,$F0,$40,$02,$06,$08,$18,$10,$30,$20,$60,$40,$C0,$80,$70
       .byte $10,$10,$30,$20,$20,$60,$40,$40,$C0,$80
LFDFB: .byte $F9,$00,$06
LFDFE: .byte $30,$D0
LFE00: .byte $00
LFE01: .byte $00
LFE02: .byte $00
LFE03: .byte $00
LFE04: .byte $00
LFE05: .byte $00,$00,$00
LFE08: .byte $83,$8B,$8C,$8F,$88,$8A,$8E,$82,$82,$80,$F0,$10,$10,$10,$10,$10
       .byte $10,$10,$00,$F0,$00,$00,$00,$3C,$3C,$3C,$3C,$00,$00,$00,$E9,$89
       .byte $8F,$89,$E9,$00,$00,$00,$00,$00,$30,$78,$78,$FC,$78,$78,$30,$00
       .byte $00,$00,$00,$00,$00,$48,$30,$30,$FC,$30,$30,$48,$00,$00,$00,$00
       .byte $00,$00,$84,$48,$B4,$78,$B4,$48,$84,$00,$00,$00,$00,$00,$00,$CC
       .byte $78,$30,$FC,$30,$78,$CC,$00,$00,$00,$00,$00,$00,$10,$BA,$D6,$D6
       .byte $BA,$10,$00,$00,$00,$00,$00,$00,$70,$F8,$70,$F8,$70,$00,$00,$00
       .byte $00,$00,$00,$30,$78,$78,$30
LFE7F: .byte $00,$00,$00,$00,$00,$00,$28,$28,$00,$7E,$72,$72,$42,$42,$42,$7E
       .byte $00,$1C,$1C,$1C,$08,$08,$08,$18,$00,$7E,$62,$60,$7E,$02,$02,$7E
       .byte $00,$7E,$06,$06,$3E,$04,$04,$7C,$00,$06,$06,$7E,$66,$60,$60,$60
       .byte $00,$7E,$46,$06,$7E,$40,$40,$7E,$00,$7E,$62,$62,$7E,$40,$44,$7C
       .byte $00,$30,$30,$30,$3E,$02,$42
LFEC6: .byte $7E,$00,$7E,$62,$62,$7E,$24,$24,$3C,$00,$06,$06,$06,$7E,$62,$62
       .byte $7E
LFED7: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00
LFEE0: .byte $01,$02,$04,$08,$10,$20,$40,$80,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$80,$40,$20,$10,$00,$00
LFEF8: .byte $02,$01,$00,$FF,$00,$03,$03,$04,$00,$FD,$FD
LFF03: .byte $FC,$00,$00,$00,$00,$04,$FC,$00,$00,$04,$FC,$00,$00,$06,$FA
LFF12: .byte $00,$00,$00,$01,$02,$03
LFF18: .byte $04,$05,$06,$07,$08,$09,$0A,$0B,$0B,$0A,$09,$08,$07,$06
LFF26: .byte $05,$04,$03,$02,$01,$00,$00
LFF2D: .byte $00,$00,$00,$00,$00
LFF32: .byte $00,$01,$03,$07,$0F,$1F,$1F,$1F,$1F,$1F
LFF3C: .byte $00,$F0,$F8,$FC,$FE,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
LFF4B: .byte $00,$10,$08,$04,$02,$01,$00,$00,$00
LFF54: .byte $00,$00,$00,$00,$00,$00,$01,$02,$04,$08,$10,$10,$10,$10,$10
LFF63: .byte $3D,$7B,$70,$64
LFF67: .byte $30,$3D,$4A,$57
LFF6B: .byte $12,$56,$A0,$52,$48,$40,$48,$40
LFF73: .byte $00,$00,$00,$52,$A4,$F6,$80,$D2
LFF7B: .byte $37,$73,$D7,$93,$39,$7D,$D9,$9D
LFF83: .byte $18,$15,$12,$11,$14,$10,$14,$0E
LFF8B: .byte $11,$19,$21,$29,$1A,$22,$2A,$23,$2B,$2C,$11,$19,$21,$1A,$22,$23
LFF9B: .byte $05,$95,$84,$95,$91,$48,$12,$48,$2D,$2D
LFFA5: .byte $48,$B1,$32,$68,$B7,$23,$A2,$B7,$39
LFFAE: .byte $42,$08,$07,$06,$06,$05,$05,$04,$03
LFFB7: .byte $0B,$0B,$0A,$09,$09,$08,$07,$07,$06,$05,$05,$04,$04,$04,$04
LFFC6: .byte $B7,$23
LFFC8: .byte $3C,$7E,$7F,$FF
LFFCC: LDA    #$07    
       STA    $F0     
LFFD0: LDY    $F0     
       LDA    ($F2),Y 
       STA    GRP0    
       STA    WSYNC   
       LDA    ($F4),Y 
       STA    GRP1    
       LDA    ($F6),Y 
       STA    GRP0    
       LDA    ($F8),Y 
       STA    $F1     
       LDA    ($FA),Y 
       TAX            
       LDA    ($FC),Y 
       TAY            
       LDA    $F1     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STY    GRP0    
       DEC    $F0     
       BPL    LFFD0   
       RTS            

LFFF9: .byte $00,$00,$00,$A0,$F0,$E9,$FC
