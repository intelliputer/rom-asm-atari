; Disassembly of roms/Star Fox.bin
; Disassembled Tue Oct  6 15:24:46 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Star Fox.bin
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
HMP0    =  $20
RESMP1  =  $29
HMOVE   =  $2A
CXCLR   =  $2C
CXM0P   =  $30
CXM1P   =  $31
CXP1FB  =  $33
CXPPMM  =  $37
INPT4   =  $3C
INPT5   =  $3D
SWCHA   =  $0280
SWACNT  =  $0281
SWCHB   =  $0282
SWBCNT  =  $0283
$0285   =  $0285
LF3C3   =   $F3C3
LF485   =   $F485
LF643   =   $F643
LF69D   =   $F69D
LF6A5   =   $F6A5

       ORG $F000
LF000: .byte $7E
LF001: .byte $05

START:
       CLD            
       LDA    #$F0    
       STA    $95     
       LDA    #$01    
       STA    $94     
       LDX    #$00    
       STX    $96     
       STX    $97     
LF011: INC    $94     
       BEQ    LF02E   
LF015: LDA    ($94,X) 
       TAY            
       EOR    $96     
       LSR            
       BCC    LF01F   
       EOR    #$95    
LF01F: STA    $96     
       TYA            
       EOR    $97     
       ASL            
       BCC    LF029   
       EOR    #$65    
LF029: STA    $97     
       JMP    LF011   
LF02E: INC    $95     
       BNE    LF015   
       LDA    LF000   
       CMP    $96     
LF037: BNE    LF037   
       LDA    LF001   
       CMP    $97     
LF03E: BNE    LF03E   
       LDA    #$00    
       STA    SWACNT  
       STA    SWBCNT  
       TAX            
LF049: STA    VSYNC,X 
       TXS            
       INX            
       BNE    LF049   
       LDA    #$72    
       STA    $84     
LF053: STA    WSYNC   
       LDA    #$02    
       STA    VBLANK  
       STA    VSYNC   
       LDA    #$2A    
       STA    $029D   
       INC    $82     
       BNE    LF06C   
       INC    $81     
       BIT    $86     
       BMI    LF06C   
       DEC    $86     
LF06C: LDA    SWCHB   
       TAX            
       AND    #$03    
       CMP    #$03    
LF074: BNE    LF07A   
       CPX    $A1     
       BEQ    LF07E   
LF07A: LDA    #$07    
       STA    $86     
LF07E: TXA            
       BIT    LFFEC   
       BNE    LF090   
       LDA    $84     
       AND    #$1F    
       ORA    #$10    
       STA    $84     
       LDA    #$00    
       STA    $85     
LF090: TXA            
       BIT    LFFEB   
       BEQ    LF09C   
       LDA    #$00    
       STA    $83     
       BEQ    LF0D2   
LF09C: LDA    $83     
       BEQ    LF0A8   
       DEC    $83     
       TXA            
       ORA    #$02    
       TAX            
       BNE    LF0D2   
LF0A8: LDA    #$0F    
       STA    $83     
       LDA    #$00    
       STA    $85     
       LDA    $84     
       AND    #$07    
       CMP    #$02    
       BNE    LF0BC   
       LDA    #$00    
       BEQ    LF0CE   
LF0BC: CMP    #$01    
       BNE    LF0C4   
       LDA    #$04    
       BNE    LF0CE   
LF0C4: CMP    #$05    
       BCC    LF0CC   
       LDA    #$02    
       BNE    LF0CE   
LF0CC: ADC    #$01    
LF0CE: ORA    #$70    
       STA    $84     
LF0D2: STX    $A1     
       LDY    #$07    
       LDA    $84     
       BMI    LF0E2   
       LDX    INPT4   
       BMI    LF0E8   
       STY    $86     
       BNE    LF0E8   
LF0E2: LDX    INPT5   
       BMI    LF0E8   
       STY    $86     
LF0E8: AND    #$60    
       BEQ    LF10D   
       STA    $A2     
       LDA    $85     
       BNE    LF113   
       TXA            
       BMI    LF117   
       LDA    $84     
       AND    #$9F    
       ORA    #$08    
       STA    $84     
       LDA    $A2     
       AND    #$60    
       CMP    #$20    
       BNE    LF113   
       LDA    $84     
       ORA    #$10    
       STA    $84     
       BNE    LF113   
LF10D: LDX    SWCHA   
       INX            
       BEQ    LF117   
LF113: LDA    #$07    
       STA    $86     
LF117: LDA    $84     
       BIT    LFFE8   
       BNE    LF125   
       BIT    LFFE9   
       BNE    LF12B   
       BEQ    LF12E   
LF125: JSR    LFF68   
       JSR    LFFDB   
LF12B: JSR    LFD32   
LF12E: LDA    $84     
       AND    #$E7    
       STA    $84     
       LDA    #$00    
       BIT    $86     
       BPL    LF13C   
       LDA    $81     
LF13C: STA    $80     
LF13E: LDA    #$00    
       LDX    #$3F    
       BIT    $0285   
       BPL    LF13E   
       STA    WSYNC   
       STA    VSYNC   
       STX    $029E   
       LDA    $C7     
       TAX            
       AND    #$30    
       BEQ    LF161   
       SEC            
       SBC    #$10    
       STA    $A2     
       TXA            
       AND    #$CF    
       ORA    $A2     
       STA    $C7     
LF161: LDA    $AF     
       BMI    LF1D2   
       BIT    CXM1P   
       BPL    LF177   
       LDA    #$02    
       JSR    LFFBC   
       JSR    LFDB3   
       LDA    $C7     
       ORA    #$30    
       STA    $C7     
LF177: BIT    $B1     
       BPL    LF187   
       BIT    CXM0P   
       BVC    LF187   
       LDA    #$D0    
       STA    $AF     
       LDA    #$00    
       STA    $B1     
LF187: BIT    $B0     
       BMI    LF198   
       BIT    CXP1FB  
       BPL    LF198   
       LDA    #$01    
       JSR    LFFBC   
       LDA    #$D2    
       STA    $B0     
LF198: BIT    $B1     
       BPL    LF1B0   
       LDA    $C7     
       AND    #$0F    
       CMP    #$07    
       BCS    LF1B0   
       LDA    $A8     
       SBC    #$04    
       CMP    $AA     
       BNE    LF1B0   
       LDA    #$00    
       STA    $B1     
LF1B0: LDA    $AF     
       ORA    $B0     
       BMI    LF1D2   
       BIT    CXPPMM  
       BPL    LF1D2   
       LDA    #$10    
       JSR    LFFBC   
       LDX    #$E0    
       STX    $B0     
       LDA    $84     
       BIT    LFFEA   
       BEQ    LF1D2   
       LDX    #$D0    
       STX    $AF     
       LDX    #$E0    
       STX    $B0     
LF1D2: STA    CXCLR   
       LDX    $B2     
       BEQ    LF1DA   
       INC    $B2     
LF1DA: LDX    $B1     
       BPL    LF1E0   
       INC    $B1     
LF1E0: LDX    $B0     
       BPL    LF1E6   
       INC    $B0     
LF1E6: BNE    LF1EB   
       JSR    LFD66   
LF1EB: LDX    $AF     
       BPL    LF1F1   
       INC    $AF     
LF1F1: BNE    LF1F9   
       JSR    LFF7A   
       JSR    LFD32   
LF1F9: LDA    $82     
       AND    #$07    
       BNE    LF20C   
       LDA    $C8     
       BEQ    LF20C   
       BPL    LF20A   
       INC    $C8     
       JMP    LF20C   
LF20A: DEC    $C8     
LF20C: LDA    $84     
       AND    #$60    
       BEQ    LF227   
       CMP    #$60    
       BEQ    LF21C   
       JSR    LFD47   
       JMP    LF2B2   
LF21C: LDA    $82     
       EOR    $81     
       ROR            
       ROR            
       ROR            
       ROR            
       JMP    LF24A   
LF227: LDA    $AF     
       BPL    LF22E   
       JMP    LF2B2   
LF22E: LDA    SWCHA   
       BIT    $84     
       BMI    LF240   
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $A2     
       LDA    INPT4   
       JMP    LF246   
LF240: AND    #$0F    
       STA    $A2     
       LDA    INPT5   
LF246: AND    #$80    
       ORA    $A2     
LF24A: BIT    LFFEC   
       BNE    LF257   
       LDY    $A8     
       CPY    #$8C    
       BCS    LF257   
       INC    $A8     
LF257: BIT    LFFEB   
       BNE    LF264   
       LDY    $A8     
       CPY    #$17    
       BCC    LF264   
       DEC    $A8     
LF264: BIT    LFFEA   
       BNE    LF27F   
       LDX    $A8     
       CPX    #$2D    
       BCC    LF277   
       LDX    $C8     
       CPX    #$FD    
       BEQ    LF277   
       DEC    $C8     
LF277: TAX            
       LDA    $C7     
       AND    #$7F    
       STA    $C7     
       TXA            
LF27F: BIT    LFFE9   
       BNE    LF29A   
       LDX    $A8     
       CPX    #$2D    
       BCC    LF292   
       LDX    $C8     
       CPX    #$03    
       BEQ    LF292   
       INC    $C8     
LF292: TAX            
       LDA    $C7     
       ORA    #$80    
       STA    $C7     
       TXA            
LF29A: CMP    #$00    
       BMI    LF2B2   
       LDA    $C7     
       AND    #$07    
       CMP    #$07    
       BCC    LF2B2   
       LDA    $A8     
       CMP    #$32    
       BCC    LF2B2   
       LDA    $C7     
       AND    #$F0    
       STA    $C7     
LF2B2: LDA    $84     
       AND    #$60    
       BEQ    LF2BF   
       CMP    #$60    
       BEQ    LF2BF   
       JMP    LF47C   
LF2BF: BIT    $B0     
       BPL    LF2C6   
       JMP    LF47C   
LF2C6: LDA    $81     
       AND    #$07    
       BNE    LF2D0   
       LDA    #$0A    
       BNE    LF2FA   
LF2D0: LDA    #$00    
       STA    $A2     
       LDA    #$07    
       STA    $A3     
       LDA    $A8     
       CMP    #$32    
       BCC    LF2FC   
       LDA    $B0     
       AND    #$38    
       EOR    #$FF    
       ADC    #$3C    
       STA    $A3     
       BIT    $C7     
       BPL    LF2F8   
       LDA    $A3     
       EOR    #$FF    
       STA    $A3     
       LDA    #$FF    
       STA    $A2     
       BNE    LF2FC   
LF2F8: LDA    #$00    
LF2FA: STA    $A2     
LF2FC: SEC            
       LDA    $A3     
       SBC    $C2     
       STA    $A3     
       LDA    $A2     
       SBC    $C1     
       STA    $A2     
       BMI    LF328   
       BEQ    LF316   
       JSR    LF46D   
       JSR    LFD83   
       JMP    LF47C   
LF316: LDA    $A3     
       CMP    #$07    
       BCC    LF322   
       JSR    LF46D   
       JMP    LF389   
LF322: JSR    LF436   
       JMP    LF341   
LF328: CMP    #$FF    
       BEQ    LF335   
       JSR    LF45B   
       JSR    LFD83   
       JMP    LF47C   
LF335: LDA    $A3     
       CMP    #$F9    
       BCS    LF322   
       JSR    LF45B   
       JMP    LF389   
LF341: LDA    $C7     
       BIT    $C1     
       BMI    LF34B   
       ORA    #$40    
       BNE    LF34D   
LF34B: AND    #$BF    
LF34D: STA    $C7     
       LDA    $A8     
       CMP    #$32    
       BCC    LF36D   
       SEC            
       LDA    $A8     
       SBC    $A9     
       BNE    LF35F   
       JMP    LF3B0   
LF35F: BMI    LF367   
       JSR    LF449   
       JMP    LF3B0   
LF367: JSR    LF452   
       JMP    LF3B0   
LF36D: LDA    $B0     
       AND    #$06    
       LSR            
       TAY            
       LDA    LF385,Y 
       CMP    $A9     
       BCC    LF394   
       BNE    LF37F   
       JMP    LF3ED   
LF37F: JSR    LF449   
       JMP    LF47C   
LF385: .byte $7A,$68,$56,$44
LF389: LDA    $B0     
       AND    #$07    
       TAX            
       LDA    $A8     
       CMP    #$64    
       BCC    LF3A2   
LF394: LDA    $A9     
       SEC            
       SBC    LF3E7,X 
       CMP    #$35    
       BCS    LF3AE   
       LDA    #$35    
       BNE    LF3AE   
LF3A2: LDA    $A9     
       CLC            
       ADC    LF3E7,X 
       CMP    #$8C    
       BCC    LF3AE   
       LDA    #$8C    
LF3AE: STA    $A9     
LF3B0: LDX    $B1     
       BPL    LF3B7   
       JMP    LF47C   
LF3B7: CMP    #$0A    
       BCC    LF3C2   
       CMP    #$F5    
       BCS    LF3C2   
       JMP    LF47C   
LF3C2: LDA    #$04    
       BIT    $C7     
       BVC    LF3CA   
       LDA    #$FC    
LF3CA: STA    $CA     
       CLC            
       LDA    $A9     
       ADC    #$02    
       STA    $AA     
       LDA    LFF80   
       STA    $B1     
       LDA    #$00    
       STA    $CC     
       LDA    $C1     
       STA    $C3     
       LDA    $C2     
       STA    $C4     
       JMP    LF47C   
LF3E7: .byte $03,$04,$05,$06,$0A,$0E
LF3ED: LDA    $B1     
       BPL    LF3F4   
       JMP    LF47C   
LF3F4: LDA    $C1     
       BEQ    LF3FB   
       JMP    LF47C   
LF3FB: LDA    $C2     
       CMP    #$11    
       BCS    LF47C   
       LDA    $A9     
       CMP    $A8     
       BEQ    LF47C   
       BCC    LF47C   
       CLC            
       ADC    #$02    
       STA    $AA     
       CLC            
       LDA    $C2     
       ADC    #$02    
       STA    $C4     
       LDA    $C1     
       ADC    #$00    
       STA    $C3     
       LDA    $C8     
       STA    $CA     
       LDA    $B0     
       AND    #$07    
       TAX            
       LDA    LF430,X 
       STA    $CC     
       LDA    #$80    
       STA    $B1     
       JMP    LF47C   
LF430: .byte $FF,$FE,$FE,$FE,$FD,$FD
LF436: LDX    #$01    
       SEC            
       LDA    $C8     
       SBC    $C9     
       BEQ    LF448   
       BPL    LF445   
       JSR    LF45B   
       RTS            

LF445: JSR    LF46D   
LF448: RTS            

LF449: LDY    $A9     
       CPY    #$8C    
       BCS    LF451   
       INC    $A9     
LF451: RTS            

LF452: LDY    $A9     
       CPY    #$33    
       BCC    LF45A   
       DEC    $A9     
LF45A: RTS            

LF45B: LDY    #$FE    
       CPY    $C9     
       BEQ    LF463   
       DEC    $C9     
LF463: LDA    $C7     
       AND    #$BF    
       STA    $C7     
       LDA    SWCHA   
       RTS            

LF46D: LDY    #$02    
       CPY    $C9     
       BEQ    LF475   
       INC    $C9     
LF475: LDA    $C7     
       ORA    #$40    
       STA    $C7     
       RTS            

LF47C: LDA    $AB     
       BIT    $82     
       BPL    LF48A   
       CMP    #$15    
       BCC    LF490   
       DEC    $AB     
       BNE    LF490   
LF48A: CMP    #$23    
       BCS    LF490   
       INC    $AB     
LF490: LDX    #$01    
LF492: LDY    #$00    
       SEC            
       LDA    $C8,X   
       SBC    $C8     
       STA    $A3     
       BPL    LF49F   
       LDY    #$FF    
LF49F: STY    $A2     
       TXA            
       ASL            
       TAY            
       CLC            
       LDA.wy $00C0,Y 
       ADC    $A3     
       STA.wy $00C0,Y 
       LDA.wy $00BF,Y 
       ADC    $A2     
       BEQ    LF4CA   
       CMP    #$FF    
       BEQ    LF4CA   
       BPL    LF4C3   
       LDA    #$00    
       STA.wy $00C0,Y 
       LDA    #$FF    
       BNE    LF4CA   
LF4C3: LDA    #$FF    
       STA.wy $00C0,Y 
       LDA    #$00    
LF4CA: STA.wy $00BF,Y 
       INX            
       CPX    #$04    
       BCC    LF492   
       CLC            
       LDA    $AA     
       ADC    $CC     
       BEQ    LF4DB   
       STA    $AA     
LF4DB: LDA    $C8     
       BEQ    LF516   
       BPL    LF4EB   
       CLC            
       LDA    $BD     
       ADC    #$02    
       STA    $BD     
       JMP    LF4F0   
LF4EB: SEC            
       LDA    $BD     
       SBC    #$02    
LF4F0: STA    $BD     
       CMP    #$99    
       BCS    LF4F9   
       JMP    LF516   
LF4F9: CMP    #$D2    
       BCS    LF50B   
       LDA    #$00    
       STA    $BD     
       SEC            
       LDA    $BE     
       SBC    #$08    
       STA    $BE     
       JMP    LF516   
LF50B: LDA    #$98    
       STA    $BD     
       CLC            
       LDA    $BE     
       ADC    #$08    
       STA    $BE     
LF516: CLC            
       LDA    $C8     
       ADC    #$03    
       TAX            
       LDA    LF557,X 
       CMP    $B9     
       BEQ    LF52B   
       BCS    LF529   
       DEC    $B9     
       BNE    LF52B   
LF529: INC    $B9     
LF52B: LDY    #$01    
       LDA    $C1     
       STA    $A2     
       LDA    $C2     
       STA    $A3     
       JSR    LF55E   
       STX    $BA     
       LDA    $C3     
       STA    $A2     
       LDA    $C4     
       STA    $A3     
       JSR    LF55E   
       STX    $BB     
       LDA    $C5     
       STA    $A2     
       LDA    $C6     
       STA    $A3     
       JSR    LF55E   
       STX    $BC     
       JMP    LF56D   
LF557: .byte $1E,$2D,$3C,$4B,$5A,$69,$78
LF55E: CLC            
       LDA    $B9     
       ADC    $A3     
       TAX            
       LDA    #$00    
       ADC    $A2     
       BEQ    LF56C   
       LDX    #$FF    
LF56C: RTS            

LF56D: LDA    $AF     
       BMI    LF5A9   
       LDA    $C7     
       AND    #$07    
       CMP    #$03    
       BCS    LF5A9   
       INC    $C7     
       LDA    $B9     
       CLC            
       ADC    #$0F    
       LSR            
       LSR            
       TAY            
       BIT    $C7     
       BMI    LF598   
LF587: LDX    LF5BB,Y 
       LDA    $B3,X   
       ORA    LF5E3,Y 
       STA    $B3,X   
       DEY            
       CPY    #$FF    
       BNE    LF587   
       BEQ    LF60B   
LF598: LDX    LF5BB,Y 
       LDA    $B3,X   
       ORA    LF5E3,Y 
       STA    $B3,X   
       INY            
       CPY    #$28    
       BCC    LF598   
       BCS    LF60B   
LF5A9: CMP    #$07    
       BCS    LF5AF   
       INC    $C7     
LF5AF: LDA    #$00    
       LDX    #$06    
LF5B3: STA    $B2,X   
       DEX            
       BNE    LF5B3   
       JMP    LF60B   
LF5BB: .byte $00,$00,$00,$00,$01,$01,$01,$01,$01,$01,$01,$01,$02,$02,$02,$02
       .byte $02,$02,$02,$02,$03,$03,$03,$03,$04,$04,$04,$04,$04,$04,$04,$04
       .byte $05,$05,$05,$05,$05,$05,$05,$05
LF5E3: .byte $10,$20,$40,$80,$80,$40,$20,$10,$08,$04,$02,$01,$01,$02,$04,$08
       .byte $10,$20,$40,$80,$10,$20,$40,$80,$80,$40,$20,$10,$08,$04,$02,$01
       .byte $01,$02,$04,$08,$10,$20,$40,$80
LF60B: LDA    $AF     
       BMI    LF61F   
       LDX    $A8     
       LDY    #$0F    
       CPX    #$32    
       BCC    LF61B   
       LDA    #$00    
       BEQ    LF623   
LF61B: LDA    #$08    
       BNE    LF623   
LF61F: LDY    $82     
       EOR    $82     
LF623: STY    $A6     
       CLC            
       ADC    #$8D    
       STA    $A2     
       LDA    #$00    
       ADC    #$F6    
       STA    $A3     
       LDY    #$00    
       LDA    $B0     
       BPL    LF63D   
       LDY    $82     
       EOR    $82     
       JMP    LF63F   
LF63D: AND    #$38    
LF63F: STY    $A7     
       CLC            
       ADC    #$5D    
       STA    $A4     
       LDA    #$00    
       ADC    #$F6    
       STA    $A5     
       LDY    #$07    
LF64E: LDA    ($A2),Y 
       STA.wy $00CD,Y 
       LDA    ($A4),Y 
       STA.wy $00D5,Y 
       DEY            
       BPL    LF64E   
       BMI    LF69D   
       CLC            
       ROR    $C3C3,X 
       .byte $FF ;.ISB
       .byte $FF ;.ISB
       ROR.wx $0018,X 
       .byte $7C ;.NOP
       ROL    $0F79,X 
       ASL.wx $003C,X 
       BRK            
       CLC            
       .byte $3C ;.NOP
       .byte $C3 ;.DCP
       .byte $E7 ;.ISB
       .byte $3C ;.NOP
       BRK            
       BRK            
       BRK            
       BRK            
       .byte $42 ;.JAM
       .byte $E7 ;.ISB
       .byte $FF ;.ISB
       .byte $E7 ;.ISB
       .byte $42 ;.JAM
       BRK            
       BRK            
       BRK            
       CLC            
       .byte $FF ;.ISB
       STA.wy $0000,Y 
       BRK            
       BRK            
       BRK            
       CLC            
       BIT    AUDF1   
       BRK            
       BRK            
       BRK            
       BMI    LF6FF   
       INC    LFE87,X 
       .byte $74 ;.NOP
       BMI    LF6A5   
       .byte $FA ;.NOP
LF696: BVS    LF696   
       .byte $87 ;.SAX
       INC    $3074,X 
       BPL    LF643   
       STY    RESMP1  
       RTS            

       BEQ    LF6A6   
       JMP    LF746   
LF6A6: LDA    $AF     
       BPL    LF6C4   
       LSR            
       LSR            
       LSR            
       EOR    #$0F    
       AND    #$0F    
       CMP    #$0C    
       BNE    LF6B7   
       LDA    #$00    
LF6B7: STA    AUDV0   
       ADC    #$17    
       STA    AUDF0   
       LDA    #$08    
       STA    AUDC0   
       JMP    LF6F9   
LF6C4: LDA    $C7     
       AND    #$0F    
       CMP    #$08    
       BCS    LF6D7   
       STA    AUDF0   
       STA    AUDC0   
       LDA    #$01    
       STA    AUDV0   
       JMP    LF6F9   
LF6D7: LDA    $B2     
       BPL    LF6E9   
       LDA    #$02    
       STA    AUDC0   
       LDA    #$0F    
       STA    AUDF0   
       LDA    #$0F    
       STA    AUDV0   
       BNE    LF6F9   
LF6E9: LDA    #$06    
       STA    AUDC0   
       LDA    #$01    
       STA    AUDV0   
       LDA    $C8     
       BPL    LF6F7   
       EOR    #$FF    
LF6F7: STA    AUDF0   
LF6F9: LDA    $B0     
       BPL    LF715   
       LSR            
       LSR            
LF6FF: EOR    #$0F    
       AND    #$0F    
       CMP    #$0C    
       BNE    LF709   
       LDA    #$00    
LF709: STA    AUDV1   
       ADC    #$17    
       STA    AUDF1   
       LDA    #$08    
       STA    AUDC1   
       BNE    LF74C   
LF715: LDA    $B1     
       BPL    LF72B   
       CMP    #$92    
       BCS    LF72B   
       LDA    #$04    
       STA    AUDV1   
       LDA    #$06    
       STA    AUDC1   
       LDA    #$1E    
       STA    AUDF1   
       BNE    LF74C   
LF72B: LDA    #$0C    
       STA    AUDC1   
       LDA    #$01    
       STA    AUDV1   
       LDA    $A9     
       EOR    #$FF    
       TAX            
       LDA    $C7     
       BIT    LFFE7   
       BEQ    LF741   
       ADC    #$1F    
LF741: STX    AUDF1   
       JMP    LF74C   
LF746: LDA    #$00    
       STA    AUDV0   
       STA    AUDV1   
LF74C: LDX    $AA     
       CPX    #$14    
       BCC    LF75C   
       LDY    $BB     
       LDA    $B1     
       BPL    LF75C   
       CPY    #$99    
       BCC    LF760   
LF75C: LDX    #$00    
       STX    $B1     
LF760: STX    $AD     
       LDX    #$02    
       JSR    LFDD8   
       LDA    $AB     
       LDY    $BC     
       LDX    $B2     
       BNE    LF773   
       CPY    #$99    
       BCC    LF775   
LF773: LDA    #$00    
LF775: STA    $AE     
       LDX    #$03    
       LDY    $BC     
       JSR    LFDD8   
       LDA    #$80    
       STA    $87     
       LDA    $84     
       TAX            
       AND    #$60    
       CMP    #$60    
       BNE    LF78E   
       JMP    LF833   
LF78E: TXA            
       BIT    LFFEB   
       BNE    LF80C   
       BIT    LFFEC   
       BEQ    LF7A7   
       BIT    LFFE7   
       BEQ    LF7A4   
       BIT    $82     
       BPL    LF7A7   
       BMI    LF7B3   
LF7A4: TXA            
       BMI    LF7B3   
LF7A7: LDA    #$14    
       STA    $9F     
       LDA    $8B     
       LDX    $8D     
       LDY    #$1C    
       BNE    LF7BD   
LF7B3: LDA    #$64    
       STA    $9F     
       LDY    #$6C    
       LDA    $8C     
       LDX    $8E     
LF7BD: STY    $A0     
       STA    $A2     
       STX    $A3     
       LDA    #$00    
       LDX    #$03    
LF7C7: STA    $8E,X   
       STA    $96,X   
       DEX            
       BNE    LF7C7   
       LDY    #$04    
LF7D0: LDA    $A2     
       LSR            
       LSR            
       LSR            
       LSR            
       JSR    LF821   
       AND    #$F0    
       STA    $8A     
       LDA    $A2     
       AND    #$0F    
       JSR    LF821   
       AND    #$0F    
       ORA    $8A     
       STA.wy $0092,Y 
       LDA    $A3     
       LSR            
       LSR            
       LSR            
       LSR            
       JSR    LF821   
       AND    #$F0    
       STA    $8A     
       LDA    $A3     
       AND    #$0F    
       JSR    LF821   
       AND    #$0F    
       ORA    $8A     
       STA.wy $009A,Y 
       DEY            
       BPL    LF7D0   
       JMP    LF93E   
LF80C: LDA    #$14    
       STA    $9F     
       LDX    #$07    
       LDY    #$00    
LF814: LDA    LF8D6,X 
       STA    $8F,X   
       STY    $97,X   
       DEX            
       BPL    LF814   
       JMP    LF93E   
LF821: TAX            
       CLC            
       LDA    #$7E    
       ADC    LF86E,X 
       STA    $A4     
       LDA    #$F8    
       ADC    #$00    
       STA    $A5     
       LDA    ($A4),Y 
       RTS            

LF833: LDA    #$34    
       STA    $9F     
       LDA    #$43    
       STA    $A0     
       LDA    $84     
       BIT    LFFEB   
       BNE    LF84D   
       BIT    LFFEA   
       BNE    LF853   
       LDA    #$DE    
       LDX    #$F8    
       BNE    LF857   
LF84D: LDA    #$D6    
       LDX    #$F8    
       BNE    LF857   
LF853: LDA    #$CE    
       LDX    #$F8    
LF857: STA    $A2     
       STX    $A3     
       LDY    #$07    
LF85D: LDA    LF92E,Y 
       STA.wy $008F,Y 
       LDA    ($A2),Y 
       STA.wy $0097,Y 
       DEY            
       BPL    LF85D   
       JMP    LF93E   
LF86E: .byte $00,$05,$0A,$0F,$14,$19,$1E,$23,$28,$2D,$32,$37,$3C,$41,$46,$4B
       .byte $77,$55,$55,$55,$77,$22,$66,$22,$22,$77,$77,$11,$77,$44,$77,$77
       .byte $11,$33,$11,$77,$55,$55,$77,$11,$11,$77,$44,$77,$11,$77,$66,$44
       .byte $77,$55,$77,$77,$11,$22,$22,$22,$77,$55,$22,$55,$77,$77,$55,$77
       .byte $11,$11,$22,$55,$77,$55,$55,$66,$55,$66,$55,$77,$33,$44,$44,$44
       .byte $77,$66,$55,$55,$55,$66,$77,$44,$66,$44,$77,$77,$44,$66,$44,$44
       .byte $08,$1C,$3E,$7F,$3E,$1C,$08,$00
LF8D6: .byte $3C,$7E,$DB,$FF,$BD,$C3,$7E,$3C,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00
LF92E: .byte $10,$00,$7C,$BA,$38,$28,$28,$6C,$00,$08,$08,$08,$5C,$7F,$7F,$36
LF93E: LDA    $85     
       BEQ    LF952   
       DEC    $85     
       STA    AUDF0   
       STA    $80     
       LDA    #$05    
       STA    AUDV0   
       LDA    #$00    
       STA    AUDC0   
       STA    AUDV1   
LF952: LDA    $87     
       EOR    $80     
       STA    COLUBK  
       LDX    #$0F    
       BIT    LFFE9   
       BEQ    LF961   
       LDX    #$00    
LF961: STX    $A2     
       AND    #$F0    
       ORA    $A2     
       STA    $87     
       LDA    #$D2    
       STA    $8A     
       LDX    #$00    
       LDY    $9F     
       JSR    LFDD8   
       LDX    #$01    
       LDY    $A0     
       JSR    LFDD8   
       LDA    #$00    
LF97D: BIT    $0285   
       BPL    LF97D   
       STA    WSYNC   
       STA    HMOVE   
       STA    VBLANK  
       STA    WSYNC   
       STA    HMOVE   
       DEC    $8A     
       LDX    #$00    
       STX    NUSIZ1  
       LDA    $84     
       AND    #$61    
       CMP    #$61    
       BNE    LF99C   
       LDX    #$02    
LF99C: STX    NUSIZ0  
       LDA    $87     
       STA    COLUP0  
       STA    COLUP1  
       LDA    $8B     
       BIT    $84     
       BPL    LF9AC   
       LDA    $8C     
LF9AC: STA    $87     
       LDY    #$00    
LF9B0: LDA.wy $0097,Y 
       TAX            
       LDA.wy $008F,Y 
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       STX    GRP1    
       DEC    $8A     
       STA    WSYNC   
       STA    HMOVE   
       DEC    $8A     
       INY            
       CPY    #$08    
       BCC    LF9B0   
       LDA    #$00    
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       STA    GRP1    
       DEC    $8A     
       LDY    $88     
       LDA    $84     
       BIT    LFFE5   
       BEQ    LF9E3   
       LDY    $89     
LF9E3: AND    #$60    
       CMP    #$60    
       BEQ    LFA1F   
       CMP    #$20    
       BEQ    LFA1F   
       CMP    #$40    
       BEQ    LFA18   
       LDA    $84     
       BIT    LFFEB   
       BNE    LFA1F   
       STA    WSYNC   
       STA    HMOVE   
       DEC    $8A     
       CPY    #$02    
       BCC    LFA1F   
       LDX    #$00    
       CPY    #$03    
       BCC    LFA0F   
       INX            
       CPY    #$04    
       BCC    LFA0F   
       LDX    #$03    
LFA0F: STX    NUSIZ0  
       LDA    #$2E    
       LDX    #$F9    
       JMP    LFA23   
LFA18: LDA    #$36    
       LDX    #$F9    
       JMP    LFA23   
LFA1F: LDA    #$DE    
       LDX    #$F8    
LFA23: STA    $A2     
       STX    $A3     
       LDY    #$00    
LFA29: LDA    ($A2),Y 
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       DEC    $8A     
       STA    WSYNC   
       STA    HMOVE   
       DEC    $8A     
       INY            
       CPY    #$08    
       BCC    LFA29   
       LDA    #$00    
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       DEC    $8A     
       LDA    #$AF    
LFA4A: STA    WSYNC   
       STA    HMOVE   
       DEC    $8A     
       CMP    $8A     
       BCC    LFA4A   
       LDX    $80     
       LDA    #$94    
       EOR    $80     
       STA    WSYNC   
       STA    HMOVE   
       STA    COLUBK  
       STA    $A4     
       DEC    $8A     
       STX    COLUP0  
       LDX    #$00    
       LDY    $BD     
       JSR    LFDD8   
       STA    WSYNC   
       STA    HMOVE   
       DEC    $8A     
       LDA    $BE     
       AND    #$18    
       CLC            
       ADC    #$C0    
       STA    $A2     
       LDA    #$FA    
       ADC    #$00    
       STA    $A3     
       LDA    #$00    
       STA    NUSIZ0  
       LDY    #$00    
LFA88: LDA    ($A2),Y 
       INC    $A4     
       LDX    $A4     
       STA    WSYNC   
       STA    HMOVE   
       STX    COLUBK  
       STA    GRP0    
       DEC    $8A     
       INY            
       CPY    #$08    
       BCC    LFA88   
       LDA    #$07    
       EOR    $80     
       LDX    #$00    
       STX    WSYNC   
       STA    HMOVE   
       STA    COLUBK  
       STX    GRP0    
       STX    GRP1    
       LDA    $A6     
       STA    COLUP0  
       LDA    $A7     
       STA    COLUP1  
       DEC    $8A     
       STX    NUSIZ0  
       STX    NUSIZ1  
       STA    $A4     
       JMP    LFAE0   
LFAC0: .byte $10,$10,$30,$50,$10,$FF,$FF,$FF,$08,$18,$7E,$24,$FF,$24,$24,$24
       .byte $00,$0F,$09,$FF,$89,$FF,$89,$FF,$38,$38,$FE,$C6,$AA,$92,$AA,$C6
LFAE0: STA    CXCLR   
       STA    WSYNC   
       STA    HMOVE   
       DEC    $8A     
       LDX    #$00    
       LDY    $B9     
       JSR    LFDD8   
       LDA    $A9     
       LDX    #$01    
       LDY    $BA     
       CPY    #$99    
       BCC    LFAFB   
       LDA    #$00    
LFAFB: STA    $AC     
       JSR    LFDD8   
       STA    WSYNC   
       STA    HMOVE   
       DEC    $8A     
       LDA    $82     
       AND    #$01    
       BEQ    LFB0E   
       LDA    #$0F    
LFB0E: ORA    #$D0    
       EOR    $80     
       STA    COLUPF  
       STA    WSYNC   
       STA    HMOVE   
       DEC    $8A     
       LDA    #$08    
       BIT    $C7     
       BMI    LFB22   
       STA    REFP0   
LFB22: BIT    $C7     
       BVS    LFB28   
       STA    REFP1   
LFB28: LDA    #$00    
       STA    CTRLPF  
       LDX    #$35    
       BIT    $CC     
       BPL    LFB34   
       LDX    #$55    
LFB34: STX    NUSIZ0  
       LDX    #$50    
       STX    NUSIZ1  
       STA    WSYNC   
       STA    HMOVE   
       DEC    $8A     
       LDX    #$1D    
       TXS            
       SEC            
       LDA    $8A     
       SBC    $A8     
       TAX            
       LDA    $8A     
       SBC    $AC     
       TAY            
       STA    WSYNC   
       STA    HMOVE   
       DEC    $8A     
       LDA    $C7     
       AND    #$0F    
       CMP    #$03    
       BCC    LFB5F   
       JMP    LFC76   
LFB5F: LDA    $8A     
       CMP    #$31    
       BCS    LFB68   
       JMP    LFC9F   
LFB68: LDA    #$00    
       CPX    #$09    
       BCC    LFB89   
       LDA    #$00    
       CPY    #$08    
       BCS    LFB77   
       LDA.wy $00D5,Y 
LFB77: STA    WSYNC   
       STA    HMOVE   
       STA    GRP1    
       LDA    $8A     
       CMP    $AD     
       PHP            
       PLA            
       DEX            
       DEY            
       DEC    $8A     
       BNE    LFB5F   
LFB89: LDX    $8A     
       LDA    $D4     
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       LDA    #$00    
       CPY    #$08    
       BCS    LFB9C   
       LDA.wy $00D5,Y 
LFB9C: STA    GRP1    
       CPX    $AD     
       PHP            
       PLA            
       DEX            
       DEY            
       LDA    $D3     
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       LDA    #$00    
       CPY    #$08    
       BCS    LFBB5   
       LDA.wy $00D5,Y 
LFBB5: STA    GRP1    
       CPX    $AD     
       PHP            
       PLA            
       DEX            
       DEY            
       LDA    $D2     
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       LDA    #$00    
       CPY    #$08    
       BCS    LFBCE   
       LDA.wy $00D5,Y 
LFBCE: STA    GRP1    
       CPX    $AD     
       PHP            
       PLA            
       DEX            
       DEY            
       LDA    #$00    
       CPY    #$08    
       BCS    LFBDF   
       LDA.wy $00D5,Y 
LFBDF: STA    WSYNC   
       STA    HMOVE   
       STA    GRP1    
       LDA    $B3     
       STA    PF0     
       LDA    $B4     
       STA    PF1     
       LDA    $B5     
       STA    PF2     
       LDA    $B6     
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       STA    PF0     
       LDA    $B7     
       STA    PF1     
       LDA    $B8     
       STA    PF2     
       DEX            
       DEY            
       LDA    #$00    
       CPY    #$08    
       BCS    LFC0E   
       LDA.wy $00D5,Y 
LFC0E: STA    WSYNC   
       STA    HMOVE   
       STA    GRP1    
       LDA    #$00    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       CPX    $AD     
       PHP            
       PLA            
       DEX            
       DEY            
       LDA    $CF     
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       LDA    #$00    
       CPY    #$08    
       BCS    LFC33   
       LDA.wy $00D5,Y 
LFC33: STA    GRP1    
       CPX    $AD     
       PHP            
       PLA            
       DEX            
       DEY            
       LDA    $CE     
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       LDA    #$00    
       CPY    #$08    
       BCS    LFC4C   
       LDA.wy $00D5,Y 
LFC4C: STA    GRP1    
       CPX    $AD     
       PHP            
       PLA            
       DEX            
       DEY            
       LDA    #$00    
       CPY    #$08    
       BCS    LFC5D   
       LDA.wy $00D5,Y 
LFC5D: STA    WSYNC   
       STA    HMOVE   
       STA    GRP1    
       LDA    #$00    
       STA    GRP0    
       LDA    $8A     
       CMP    $AD     
       PHP            
       PLA            
       DEX            
       DEY            
       STX    $8A     
       LDX    #$FF    
       JMP    LFB5F   
LFC76: LDA    #$00    
       CPX    #$08    
       BCS    LFC7E   
       LDA    $CD,X   
LFC7E: STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       LDA    #$00    
       CPY    #$08    
       BCS    LFC8D   
       LDA.wy $00D5,Y 
LFC8D: STA    GRP1    
       LDA    $8A     
       CMP    $AD     
       PHP            
       PLA            
       DEX            
       DEY            
       DEC    $8A     
       LDA    $8A     
       CMP    #$31    
       BCS    LFC76   
LFC9F: STA    WSYNC   
       STA    HMOVE   
       DEC    $8A     
       DEC    $8A     
       TXA            
       LDX    #$1E    
       TXS            
       TAX            
       LDA    #$2F    
       EOR    $80     
       STA    $A2     
       LDA    $82     
       AND    #$0F    
       ORA    #$90    
       EOR    $80     
       STA    COLUP1  
LFCBC: LDY    #$00    
       CPX    #$09    
       BCS    LFCC4   
       LDY    $CD,X   
LFCC4: STA    WSYNC   
       STA    HMOVE   
       STY    GRP0    
       SEC            
       LDA    $AE     
       SBC    $8A     
       BEQ    LFCD3   
       CMP    #$01    
LFCD3: PHP            
       LDA    $8A     
       CMP    $AD     
       PHP            
       PLA            
       DEX            
       DEC    $8A     
       LDY    #$00    
       CPX    #$09    
       BCS    LFCE5   
       LDY    $CD,X   
LFCE5: LDA    $A2     
       STA    WSYNC   
       STA    HMOVE   
       STA    COLUBK  
       STY    GRP0    
       LDA    $AD     
       CMP    $8A     
       PHP            
       PLA            
       PLA            
       DEX            
       LDA    $A2     
       TAY            
       AND    #$0F    
       CMP    #$05    
       BCC    LFD06   
       TYA            
       SEC            
       SBC    #$02    
       STA    $A2     
LFD06: DEC    $8A     
       LDA    #$12    
       CMP    $8A     
       BCC    LFCBC   
       LDX    #$FF    
       TXS            
       STA    WSYNC   
       LDA    $80     
       STA    COLUBK  
       LDA    #$00    
       STA    NUSIZ0  
       STA    REFP0   
       STA    REFP1   
       STA    GRP0    
       STA    GRP1    
       STA    ENAM0   
       STA    ENAM1   
       DEC    $8A     
LFD29: STA    WSYNC   
       DEC    $8A     
       BNE    LFD29   
       JMP    LF053   
LFD32: JSR    LFD47   
       JSR    LFD66   
       JSR    LFDA4   
       JSR    LFDB3   
       LDA    #$00    
       STA    $BD     
       LDA    #$1A    
       STA    $BE     
       RTS            

LFD47: LDA    #$6E    
       STA    $A8     
       LDA    #$01    
       STA    $AF     
       LDA    #$0C    
       STA    $B3     
       LDA    #$00    
       STA    $B4     
       STA    $B5     
       STA    $B6     
       STA    $B7     
       STA    $B8     
       STA    $C8     
       LDA    #$50    
       STA    $B9     
       RTS            

LFD66: LDA    #$6E    
       STA    $A9     
       JSR    LFD83   
       BIT    $82     
       BPL    LFD76   
       LDA    #$FB    
       JMP    LFD78   
LFD76: LDA    #$05    
LFD78: STA    $C1     
       LDA    $82     
       STA    $C2     
       LDA    #$00    
       STA    $C9     
       RTS            

LFD83: LDA    $84     
       AND    #$04    
       BEQ    LFD8B   
       LDA    #$09    
LFD8B: ORA    #$40    
       STA    $B0     
       LDA    $87     
       LSR            
       LSR            
       TAX            
       LSR            
       LSR            
       LSR            
       STA    $A2     
       TXA            
       AND    #$38    
       ORA    $A2     
       CLC            
       ADC    $B0     
       STA    $B0     
       RTS            

LFDA4: LDA    #$00    
       STA    $AA     
       STA    $B1     
       STA    $C3     
       STA    $C4     
       STA    $CA     
       STA    $CC     
       RTS            

LFDB3: LDA    $82     
       AND    #$07    
       CLC            
       ADC    #$14    
       STA    $AB     
       LDA    #$F8    
       STA    $B2     
       LDA    $82     
       BPL    LFDC9   
       LDA    #$FD    
       JMP    LFDCB   
LFDC9: LDA    #$03    
LFDCB: STA    $C5     
       LDA    $82     
       EOR    #$FF    
       STA    $C6     
       LDA    #$00    
       STA    $CB     
       RTS            

LFDD8: STA    WSYNC   
       STA    HMOVE   
       CPY    #$99    
       BCC    LFDE2   
       LDY    #$4C    
LFDE2: LDA    LFECF,Y 
       STA    HMP0,X  
       LDA    LFE36,Y 
       AND    #$0F    
       STA    $A5     
       LDA    LFE36,Y 
       LSR            
       LSR            
       LSR            
       LSR            
       AND    #$07    
       TAY            
       LDA    LFE26,Y 
       STA    $A2     
       LDA    LFE2E,Y 
       STA    $A3     
       LDY    $A5     
       STA    WSYNC   
       STA    HMOVE   
       JMP.ind ($00A2)
LFE0B: .byte $EA,$4C,$17,$FE,$4C,$14,$FE,$EA,$EA,$88,$D0,$FD,$95,$10,$85,$02
       .byte $85,$2A,$C6,$8A,$C6,$8A,$A9,$00,$95,$20,$60
LFE26: .byte $0B,$0C,$0F,$12,$13,$14,$17,$17
LFE2E: .byte $FE,$FE,$FE,$FE,$FE,$FE,$FE,$FE
LFE36: .byte $01,$21,$61,$32,$01,$32,$32,$32,$53,$53,$53,$53,$53,$53,$43,$43
       .byte $43,$23,$23,$23,$33,$33,$33,$54,$54,$54,$54,$54,$54,$44,$44,$44
       .byte $24,$24,$24,$34,$34,$34,$55,$55,$55,$55,$55,$55,$45,$45,$45,$25
       .byte $25,$25,$35,$35,$35,$56,$56,$56,$56,$56,$46,$46,$46,$46,$26,$26
       .byte $26,$36,$36,$36,$57,$57,$57,$57,$57,$57,$47,$47,$47,$27,$27,$27
       .byte $37
LFE87: .byte $37,$37,$58,$58,$58,$58,$58,$58,$48,$48,$48,$28,$28,$28,$38,$38
       .byte $38,$59,$59,$59,$59,$59,$59,$49,$49,$49,$29,$29,$29,$39,$39,$39
       .byte $5A,$5A,$5A,$5A,$5A,$5A,$4A,$4A,$4A,$2A,$2A,$2A,$3A,$3A,$3A,$5B
       .byte $5B,$5B,$5B,$5B,$5B,$4B,$4B,$4B,$2B,$2B,$2B,$3B,$3B,$3B,$3B,$3B
       .byte $3B,$3B,$5C,$4C,$4C,$4C,$4C,$4C
LFECF: .byte $20,$20,$F0,$10,$F0,$F0,$E0,$D0,$F0,$E0,$D0,$C0,$B0,$A0,$F0,$E0
       .byte $D0,$F0,$E0,$D0,$F0,$E0,$D0,$F0,$E0,$D0,$C0,$B0,$A0,$F0,$E0,$D0
       .byte $F0,$E0,$D0,$F0,$E0,$D0,$F0,$E0,$D0,$C0,$B0,$A0,$F0,$E0,$D0,$F0
       .byte $E0,$D0,$F0,$E0,$D0,$F0,$E0,$D0,$C0,$B0,$00,$F0,$E0,$D0,$F0,$E0
       .byte $D0,$F0,$E0,$D0,$F0,$E0,$D0,$C0,$B0,$A0,$F0,$E0,$D0,$F0,$E0,$D0
       .byte $F0,$E0,$D0,$F0,$E0,$D0,$C0,$B0,$A0,$F0,$E0,$D0,$F0,$E0,$D0,$F0
       .byte $E0,$D0,$F0,$E0,$D0,$C0,$B0,$A0,$F0,$E0,$D0,$F0,$E0,$D0,$F0,$E0
       .byte $D0,$F0,$E0,$D0,$C0,$B0,$A0,$F0,$E0,$D0,$F0,$E0,$D0,$F0,$E0,$D0
       .byte $F0,$E0,$D0,$C0,$B0,$A0,$F0,$E0,$D0,$F0,$E0,$D0,$F0,$E0,$D0,$C0
       .byte $B0,$A0,$90,$B0,$00,$F0,$E0,$D0,$C0
LFF68: LDX    #$04    
       STX    $88     
       LDX    #$00    
       LDA    $84     
       BIT    LFFEC   
       BEQ    LFF77   
       LDX    #$04    
LFF77: STX    $89     
       RTS            

LFF7A: LDA    $84     
       AND    #$60    
       BNE    LFFBB   
LFF80: LDA    $84     
       BIT    LFFEB   
       BNE    LFFA3   
       BIT    LFFE5   
       BNE    LFF91   
       DEC    $88     
       JMP    LFF93   
LFF91: DEC    $89     
LFF93: CLC            
       LDA    $88     
       TAX            
       ADC    $89     
       BEQ    LFFAC   
       LDA    $84     
       AND    #$1F    
       CPX    $89     
       BCC    LFFA7   
LFFA3: ORA    #$40    
       BNE    LFFA9   
LFFA7: ORA    #$C0    
LFFA9: STA    $84     
       RTS            

LFFAC: LDA    $84     
       AND    #$07    
       ORA    #$20    
       STA    $84     
       LDA    #$FF    
       STA    $85     
       JSR    LFF68   
LFFBB: RTS            

LFFBC: LDX    #$00    
       BIT    $84     
       BPL    LFFC3   
       INX            
LFFC3: TAY            
       AND    #$F0    
       SED            
       CLC            
       ADC    $8D,X   
       STA    $8D,X   
       TYA            
       AND    #$0F    
       ADC    $8B,X   
       BCC    LFFD7   
       LDA    #$99    
       STA    $8D,X   
LFFD7: STA    $8B,X   
       CLD            
       RTS            

LFFDB: LDA    #$00    
       LDX    #$04    
LFFDF: STA    $8A,X   
       DEX            
       BPL    LFFDF   
       RTS            

LFFE5: .byte $80,$40
LFFE7: .byte $20
LFFE8: .byte $10
LFFE9: .byte $08
LFFEA: .byte $04
LFFEB: .byte $02
LFFEC: .byte $01,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$02,$F0
       .byte $02,$F0,$02,$F0
