; Disassembly of roms/Piece o' Cake.bin
; Disassembled Tue Oct  6 15:22:41 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Piece o' Cake.bin
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
HMM0    =  $22
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM8T   =  $0295
TIM64T  =  $0296
T1024T  =  $0297

       ORG $B000

START:
       JMP    LB0AB   
LB003: .byte $00,$38,$44,$44,$44,$44,$44,$38,$00,$38,$10,$10,$10,$10,$30,$10
       .byte $00,$7C,$40,$40,$38,$04,$44,$38,$00,$38,$44,$04,$18,$04,$44,$38
       .byte $00,$08,$08,$7C,$48,$28,$18,$08,$00,$38,$44,$04,$04,$78,$40,$7C
       .byte $00,$38,$44,$44,$78,$40,$20,$1C,$00,$20,$20,$20,$10,$08,$04,$7C
       .byte $00,$38,$44,$44,$38,$44,$44,$38,$00,$70,$08,$04,$3C,$44,$44,$38
       .byte $00,$7C,$7C,$44,$44,$44,$44,$44,$00,$F8,$F8,$08,$08,$F8,$80,$F8
       .byte $00,$FA,$FA,$4B,$5A,$42,$4B,$F8,$00,$A2,$A2,$A2,$AA,$B6,$A2,$00
       .byte $00,$EE,$82,$82,$CE,$88,$EE,$00,$00,$00,$01,$02,$02,$02,$01,$00
       .byte $00,$F0,$08,$64,$44,$64,$08,$F0,$00,$21,$21,$21,$2F,$29,$29,$2F
       .byte $00,$7B,$4A,$4A,$79,$48,$4A,$7B,$00,$C0,$00,$00,$00,$80,$40,$C0
       .byte $00,$00,$00,$00,$00,$00,$00,$00
LB0AB: SEI            
       CLD            
       LDX    #$FF    
       TXS            
       LDA    #$00    
LB0B2: STA    VSYNC,X 
       DEX            
       BNE    LB0B2   
       LDX    #$09    
LB0B9: LDA    #$B0    
       STA    $80,X   
       DEX            
       LDA    #$03    
       STA    $80,X   
       DEX            
       BPL    LB0B9   
LB0C5: LDX    #$73    
       LDA    #$00    
LB0C9: STA    $90,X   
       STA    NUSIZ0,X
       DEX            
       BPL    LB0C9   
       DEC    $BB     
LB0D2: JSR    LB1FA   
       INC    $8E     
       LDA    $8E     
       BNE    LB0DD   
       INC    $8F     
LB0DD: LDA    $8F     
       CMP    #$07    
       BNE    LB0E6   
       JMP    LB198   
LB0E6: JSR    LBCAD   
       LDA    #$01    
       STA    CTRLPF  
       LDA    #$FF    
       STA    PF0     
       LDX    #$09    
LB0F3: LDA    $80,X   
       STA    $90,X   
       DEX            
       BPL    LB0F3   
       INC    $DA     
       BNE    LB107   
       INC    $D9     
       LDX    $D9     
       LDA    LB107,X 
       STA    COLUBK  
LB107: LDX    #$03    
       JSR    LBAF2   
       LDA    #$73    
       STA    $88     
       LDY    #$33    
       LDA    $BB     
       AND    #$0F    
       BNE    LB125   
       LDA    SWCHA   
       BPL    LB198   
       LDA    SWCHB   
       ROR            
       BCS    LB127   
       BCC    LB198   
LB125: DEC    $BB     
LB127: JSR    LBC9E   
LB12A: STA    WSYNC   
       DEY            
       BNE    LB12A   
       STA    WSYNC   
       JSR    LBC3C   
       LDX    #$07    
       JSR    LBAF2   
       LDA    #$9B    
       STA    $88     
       STA    WSYNC   
       JSR    LBC3C   
       LDX    #$0F    
       JSR    LBAF2   
       LDA    $80     
       STA    $88     
       LDA    SWCHB   
       AND    #$02    
       BNE    LB169   
       LDA    $8D     
       BPL    LB15E   
       DEC    $8A     
       LDA    $8A     
       AND    #$3F    
       BNE    LB16D   
LB15E: LDA    $8D     
       ORA    #$80    
       STA    $8D     
       INC    $8B     
       JMP    LB16D   
LB169: LDA    #$00    
       STA    $8D     
LB16D: LDA    $8B     
       BNE    LB173   
       LDA    #$01    
LB173: AND    #$07    
       STA    $8B     
       TAX            
       LDA    LBF42,X 
       STA    $84     
       JSR    LBC3C   
       LDX    #$09    
LB182: LDA    $90,X   
       STA    $80,X   
       DEX            
       BPL    LB182   
       LDA    #$03    
       STA    $88     
       STA    WSYNC   
       JSR    LBC3C   
       JSR    LB9FA   
       JMP    LB0D2   
LB198: LDX    #$0B    
       JSR    LBAF2   
       LDA    LBF42   
       STA    $88     
       JSR    LB1D9   
       LDX    #$FF    
       STX    $DC     
       STX    $8A     
       INX            
       JSR    LBA83   
LB1AF: LDA    $E9     
       BEQ    LB1BA   
       INC    $E9     
       BNE    LB1BA   
       JMP    LB0C5   
LB1BA: LDA    $8A     
       AND    #$3F    
       STA    $8A     
       BNE    LB1CD   
       LDA    SWCHB   
       ROR            
       BCS    LB1CD   
       DEC    $8A     
       JMP    LB0C5   
LB1CD: LDA    $8A     
       BEQ    LB1D3   
       DEC    $8A     
LB1D3: JSR    LB20A   
       JMP    LB1AF   
LB1D9: LDX    #$15    
LB1DB: LDA    LBD4B,X 
       STA    $90,X   
       DEX            
       BPL    LB1DB   
       STX    $A4     
       LDA    #$3B    
       STA    $C0     
       CLC            
       ADC    #$0A    
       STA    $C3     
       LDA    #$17    
       STA    $D9     
       LDA    #$0B    
       SEC            
       SBC    $8B     
       STA    $9D     
       RTS            

LB1FA: LDA    #$02    
       STA    WSYNC   
       STA    VBLANK  
       STA    VSYNC   
       LDA    #$29    
       STA    TIM8T   
       LDA    #$00    
       RTS            

LB20A: JSR    LB1FA   
       LDA    #$82    
       STA    VBLANK  
       LDA    #$00    
       STA    $CD     
       LDA    $C4     
       BEQ    LB23E   
       LDA    $95     
       ADC    #$57    
       ADC    $C7     
       EOR    #$FF    
       ADC    #$02    
       AND    #$1F    
       STA    $C7     
       LDA    $95     
       CMP    $EB     
       BEQ    LB256   
       BCC    LB233   
       LDX    #$09    
       BNE    LB235   
LB233: LDX    #$02    
LB235: STX    $EA     
       LDA    $95     
       STA    $EB     
       JMP    LB256   
LB23E: LDA    $A6     
       BEQ    LB255   
       LDX    #$00    
       STX    $C2     
       LDA    $C5     
       CMP    #$04    
       BCS    LB256   
       LDA    $C3     
       CMP    $97     
       BCC    LB255   
       JSR    LBA00   
LB255: NOP            
LB256: NOP            
       JSR    LBCAD   
       INC    $DA     
       LDX    $A5     
       BEQ    LB267   
       JSR    LBA83   
       LDX    #$00    
       STX    $A5     
LB267: LDA    $C4     
       BNE    LB26E   
       JMP    LB2D9   
LB26E: INC    $8C     
       LDX    $9D     
       LDA    $8C     
       AND    LBF99,X 
       BNE    LB285   
       LDA    $D7     
       INC    $D7     
       CMP    #$05    
       BNE    LB285   
       LDA    #$00    
       STA    $D7     
LB285: LDA    #$00    
       STA    $C4     
       LDA    $94     
       CMP    #$99    
       BCC    LB293   
       LDA    #$99    
       BNE    LB299   
LB293: CMP    #$14    
       BCS    LB299   
       LDA    #$14    
LB299: JSR    LB9FF   
       STA    $94     
       LDY    $E9     
       BNE    LB2A4   
       STA    $95     
LB2A4: LDA    $A7     
       BNE    LB2D6   
       LDA    $D3     
       AND    #$08    
       BNE    LB2D6   
       LDA    $95     
       CMP    #$94    
       BCS    LB2D6   
       CMP    #$84    
       BCC    LB2D6   
       BIT    SWCHA   
       BMI    LB2D6   
       LDA    $95     
       STA    $96     
       LDX    #$01    
       STX    $A7     
       LDA    #$10    
       STA    $A3     
       TXA            
       ORA    $D3     
       STA    $D3     
       DEX            
       STX    $A0     
       LDX    #$0A    
       JSR    LBA83   
LB2D6: JMP    LB43D   
LB2D9: LDX    #$01    
       STX    $C4     
       LDA    $C5     
       CMP    #$04    
       BCC    LB2EE   
       DEX            
       STX    $A6     
       STX    $AC     
       STX    $AD     
       STX    $AE     
       STX    $AF     
LB2EE: LDA    $A6     
       BNE    LB2F5   
       CLC            
       BCC    LB325   
LB2F5: LDA    $C3     
       CMP    $98     
       BCC    LB30B   
       LDX    #$01    
       JSR    LBA00   
       LDX    $A5     
       BEQ    LB30B   
       JSR    LBA83   
       LDX    #$00    
       STX    $A5     
LB30B: LDA    $C3     
       CMP    $99     
       BCC    LB321   
       LDX    #$02    
       JSR    LBA00   
       LDX    $A5     
       BEQ    LB321   
       JSR    LBA83   
       LDX    #$00    
       STX    $A5     
LB321: LDA    $C3     
       CMP    $9A     
LB325: BCC    LB337   
       LDX    #$03    
       JSR    LBA00   
       LDX    $A5     
       BEQ    LB337   
       JSR    LBA83   
       LDX    #$00    
       STX    $A5     
LB337: LDA    $C2     
       BEQ    LB35B   
LB33B: LDX    $C2     
       LDA    $D6     
       CLC            
       ADC    #$05    
       STA    $D6     
       DEX            
       BNE    LB33B   
       LDA    $D6     
       CLC            
       ADC    $C0     
       STA    $C0     
       LDX    #$00    
       STX    $D6     
       LDA    $C2     
       CLC            
       ADC    $C5     
       STA    $C5     
       STX    $C2     
LB35B: LDA    $D3     
       AND    #$08    
       BNE    LB39F   
       LDA    $A7     
       BNE    LB368   
       JMP    LB420   
LB368: LDA    $95     
       CMP    #$18    
       BCS    LB371   
       JMP    LB426   
LB371: LDA    SWCHA   
       ASL            
       BCC    LB37A   
       JMP    LB426   
LB37A: LDA    $95     
       CMP    #$98    
       BCC    LB389   
       LDA    $D3     
       AND    #$FE    
       STA    $D3     
       JMP    LB3E8   
LB389: LDA    #$05    
       STA    $EA     
       LDA    $95     
       STA    $EB     
       LDX    $95     
       CPX    #$98    
       BCC    LB399   
       STA    $96     
LB399: LDA    $95     
       CMP    #$80    
       BCC    LB3A2   
LB39F: JMP    LB42E   
LB3A2: DEC    $9B     
       BPL    LB3AA   
       LDA    #$03    
       STA    $9B     
LB3AA: LDA    #$01    
       LDX    $9B     
       STA    $AC,X   
       LDA    $95     
       CLC            
       ADC    #$06    
       STA    $A8,X   
       LDA    $A3     
       STA    $C9,X   
       LDX    #$04    
LB3BD: DEX            
       CMP    LBF86,X 
       BNE    LB3BD   
       LDA    LBE1C,X 
       LDX    $9B     
       STA    $CF,X   
       STA    $A1     
       LDA    $D3     
       ROR            
       BCC    LB3E8   
       LDA    $D3     
       ORA    #$0A    
       AND    #$FE    
       STA    $D3     
       LDX    $9B     
       STX    $D4     
       LDX    #$05    
       JSR    LBA83   
       LDA    #$00    
       STA    $A7     
       BEQ    LB42E   
LB3E8: LDX    #$05    
       JSR    LBA83   
       LDA    #$10    
       STA    $96     
       LDA    #$00    
       STA    $A7     
       LDA    $C7     
       AND    #$03    
       TAX            
       LDA    LBE18,X 
       STA    $A0     
       CMP    #$30    
       BCC    LB40B   
       LDA    #$FF    
       STA    $A3     
       LDX    #$02    
       BNE    LB41B   
LB40B: DEX            
       CMP    #$18    
       BCC    LB416   
       LDA    #$3C    
       STA    $A3     
       BNE    LB41B   
LB416: DEX            
       LDA    #$18    
       STA    $A3     
LB41B: LDA    LBE1C,X 
       BNE    LB42E   
LB420: LDA    $95     
       CMP    #$18    
       BCS    LB42E   
LB426: LDA    $95     
       STA    $96     
       LDA    #$01    
       STA    $A7     
LB42E: LDA    $A3     
       LDX    #$04    
LB432: DEX            
       CMP    LBF86,X 
       BNE    LB432   
       LDA    LBE1C,X 
       STA    $A2     
LB43D: JSR    LBC9E   
       STA    WSYNC   
       STA    WSYNC   
       STA    RESBL   
       LDA    #$35    
       STA    CTRLPF  
       LDA    #$80    
       STA    COLUBK  
       JSR    LBC3C   
       STA    NUSIZ1  
       LDX    #$02    
       LDA    #$40    
       JSR    LBA54   
       STA    WSYNC   
       DEY            
       LDX    #$FF    
       LDY    $9F     
       BNE    LB464   
       INX            
LB464: LDA    LBD47,Y 
       STA    NUSIZ0  
       STX    ENAM0   
       STA    WSYNC   
       DEY            
       LDX    #$00    
       STX    ENAM0   
       STX    NUSIZ0  
       LDA    AUDC0   
       STA    NUSIZ1  
       STX    PF1     
       STX    PF2     
       STA    WSYNC   
       DEY            
       LDA    $C6     
       BEQ    LB48B   
       STX    $C5     
       STX    $C6     
       LDA    #$3B    
       STA    $C0     
LB48B: LDY    #$C7    
LB48D: STA    WSYNC   
       BIT    COLUPF  
       BMI    LB495   
       STY    $94     
LB495: DEY            
       CPY    #$C6    
       BEQ    LB4A8   
       CPY    $C0     
       BEQ    LB4A5   
       CPY    #$00    
       BNE    LB48D   
       JMP    LB9D1   
LB4A5: JMP    LB72F   
LB4A8: STA    WSYNC   
       BIT    COLUPF  
       BMI    LB4B0   
       STY    $94     
LB4B0: DEY            
       LDA    $C0     
       CLC            
       ADC    #$0A    
       STA    $C3     
       LDA    $C0     
       SEC            
       SBC    #$03    
       STA    $C1     
       LDX    #$00    
       LDA    $95     
       CLC            
       ADC    $EA     
       JSR    LBA54   
       STA    WSYNC   
       INX            
       LDA    $95     
       JSR    LBA54   
       STA    WSYNC   
       INX            
       INX            
       LDA    $96     
       CMP    #$1A    
       BMI    LB4DD   
       ADC    #$07    
LB4DD: JSR    LBA54   
       STA    WSYNC   
       STA    HMOVE   
       BIT    COLUPF  
       BMI    LB4EA   
       STY    $94     
LB4EA: DEY            
       LDA    #$00    
       STA    NUSIZ0  
       LDA    #$05    
       STA    NUSIZ1  
       LDX    #$2C    
LB4F5: STA    WSYNC   
       LDA    LBDF7,X 
       STA    COLUP0  
       LDA    LBD74,X 
       STA    COLUP1  
       LDA    LBDA1,X 
       STA    GRP1    
       LDA    LBDCE,X 
       STA    GRP0    
       JSR    LB727   
       DEX            
       CPX    #$0F    
       BNE    LB4F5   
       LDA    #$FF    
       STA    WSYNC   
       STA    PF0     
       LDA    LBDCE,X 
       STA    GRP0    
       LDA    LBDA1,X 
       STA    GRP1    
       LDA    LBD74,X 
       STA    COLUP1  
       JSR    LB727   
       LDA    #$00    
       STA    PF0     
       DEX            
LB530: LDA    #$FF    
       STA    WSYNC   
       STA    PF0     
       LDA    LBDF7,X 
       STA    COLUP0  
       LDA    LBDCE,X 
       STA    GRP0    
       LDA    LBDA1,X 
       STA    GRP1    
       LDA    LBD74,X 
       STA    COLUP1  
       JSR    LB727   
       LDA    #$00    
       STA    PF0     
       DEX            
       CPX    #$05    
       BNE    LB530   
       LDA    #$08    
       STA    WSYNC   
       DEY            
       ORA    $A0     
       STA    NUSIZ1  
       LDA    #$2C    
       STA    COLUBK  
       LDA    #$FF    
       STA    PF0     
       LDA    LBD74,X 
       STA    COLUP1  
       LDA    #$00    
       STA    GRP1    
       STA    GRP0    
       STA    COLUPF  
       LDA    #$00    
       STA    PF0     
       DEX            
       LDA    $D3     
       ROR            
       BCC    LB5AB   
LB57E: STA    WSYNC   
       LDA    #$FF    
       STA    PF0     
       LDA    #$00    
       STA    PF1     
       STA    COLUPF  
       STA    COLUP1  
       BIT    COLUPF  
       BMI    LB592   
       STY    $94     
LB592: DEY            
       LDA    #$4F    
       STA    COLUPF  
       CMP    ($50,X) 
       LDA    LBDF7,X 
       STA    COLUP0  
       LDA    #$00    
       STA    COLUPF  
       STA    PF0     
       DEX            
       CPX    #$02    
       BEQ    LB5DC   
       BNE    LB57E   
LB5AB: LDA    $D3     
       AND    #$08    
       BEQ    LB5DC   
LB5B1: STA    WSYNC   
       LDA    #$FF    
       STA    PF0     
       LDA    #$00    
       STA    PF1     
       STA    GRP1    
       STA    COLUPF  
       BIT    COLUPF  
       BMI    LB5C5   
       STY    $94     
LB5C5: DEY            
       CMP    ($50,X) 
       LDA    #$4F    
       STA    COLUPF  
       LDA    LBDF7,X 
       STA    COLUP0  
       LDA    #$00    
       STA    COLUPF  
       STA    PF0     
       DEX            
       BNE    LB5B1   
       BEQ    LB609   
LB5DC: STA    WSYNC   
       LDA    #$FF    
       STA    PF0     
       LDA    #$00    
       STA    PF1     
       STA    COLUPF  
       LDA    $A2     
       STA    COLUP1  
       LDA    #$02    
       STA    ENAM1   
       BIT    COLUPF  
       BMI    LB5F6   
       STY    $94     
LB5F6: DEY            
       LDA    #$46    
       STA    COLUPF  
       LDA    LBE26,X 
       STA    PF1     
       LDA    #$00    
       STA    PF0     
       DEX            
       BNE    LB5DC   
       STX    PF1     
LB609: DEX            
       STA    WSYNC   
       STX    PF0     
       INX            
       STX    COLUPF  
       JSR    LB727   
       LDA    #$A0    
       STA    COLUPF  
       LDA    #$F8    
       STA    PF1     
       STX    PF0     
       STA    WSYNC   
       DEX            
       STX    PF0     
       INX            
       STX    COLUPF  
       STX    ENAM1   
       LDX    #$00    
       STX    COLUPF  
       LDX    #$E0    
       STX    PF1     
       LDA    #$A0    
       STA    COLUPF  
       LDA    #$70    
       STA    PF1     
       BIT    COLUPF  
       BMI    LB63E   
       STY    $94     
LB63E: DEY            
       LDA    #$00    
       STA    COLUPF  
       STA    WSYNC   
       LDA    #$E0    
       STA    PF1     
       JSR    LB727   
       LDA    #$00    
       STA    COLUPF  
       LDA    #$70    
       STA    PF1     
       LDX    #$02    
LB656: LDA    #$E0    
       STA    WSYNC   
       STA    PF1     
       JSR    LB727   
       CMP    ($50,X) 
       NOP            
       LDA    #$20    
       STA    PF1     
       DEX            
       BNE    LB656   
       LDX    #$03    
LB66B: LDA    #$FF    
       STA    WSYNC   
       STA    PF1     
       STA    PF2     
       LDA    #$FF    
       STA    PF0     
       JSR    LB727   
       DEX            
       BNE    LB66B   
       STX    WSYNC   
       DEY            
       STX    PF1     
       STX    PF2     
       LDA    #$70    
       STA    PF0     
       STA    RESBL   
       LDA    #$02    
       STA    ENABL   
       LDX    #$0F    
       STX    COLUBK  
       STA    WSYNC   
       JSR    LB727   
       LDX    #$00    
       STX    NUSIZ0  
       STX    NUSIZ1  
       STA    WSYNC   
       DEY            
       LDX    #$31    
       STX    CTRLPF  
       LDX    #$02    
       LDA    #$2A    
       JSR    LBA54   
       STA    WSYNC   
       DEY            
       INX            
       LDA    #$1A    
       JSR    LBA54   
       STA    WSYNC   
       DEY            
       STA    WSYNC   
       JSR    LB727   
       LDA    $A6     
       BEQ    LB717   
       LDA    #$00    
       STA    GRP0    
LB6C4: STA    WSYNC   
       BIT    COLUPF  
       BMI    LB6CC   
       STY    $94     
LB6CC: DEY            
       CPY    $97     
       BNE    LB6DE   
       LDA    $AC     
       BEQ    LB6DE   
       DEC    $97     
       LDX    #$00    
       STX    $C8     
       JSR    LBB00   
LB6DE: CPY    $98     
       BNE    LB6EF   
       LDA    $AD     
       BEQ    LB6EF   
       DEC    $98     
       LDX    #$01    
       STX    $C8     
       JSR    LBB00   
LB6EF: CPY    $99     
       BNE    LB700   
       LDA    $AE     
       BEQ    LB700   
       DEC    $99     
       LDX    #$02    
       STX    $C8     
       JSR    LBB00   
LB700: CPY    $9A     
       BNE    LB711   
       LDA    $AF     
       BEQ    LB711   
       DEC    $9A     
       LDX    #$03    
       STX    $C8     
       JSR    LBB00   
LB711: CPY    $C0     
       BNE    LB6C4   
       BEQ    LB72F   
LB717: LDX    #$00    
       STX    GRP0    
       STA    WSYNC   
       LDA    COLUPF  
       BMI    LB723   
       STY    $94     
LB723: DEY            
       JMP    LB48D   
LB727: BIT    COLUPF  
       BMI    LB72D   
       STY    $94     
LB72D: DEY            
       RTS            

LB72F: LDX    $9B     
       LDA    LBE1C,X 
       STA    $A1     
       STA    WSYNC   
       JSR    LB727   
       CPY    $C1     
       BNE    LB72F   
       JSR    LBB8C   
       STA    WSYNC   
       LDY    $8D     
       DEY            
       DEY            
       JSR    LB727   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       LDA    $C5     
       BNE    LB758   
       JMP    LB7CA   
LB758: LDX    $C5     
       LDA    $D3     
       AND    #$10    
       BNE    LB7A4   
       STA    NUSIZ0  
LB762: STA    WSYNC   
       LDA    $B5,X   
       STA    COLUP1  
       LDA    #$2C    
       STA    COLUP0  
       LDA    $B1,X   
       STA    GRP1    
       CMP    #$3C    
       BCC    LB77A   
       BEQ    LB77E   
       LDA    #$5A    
       BNE    LB780   
LB77A: LDA    #$08    
       BNE    LB780   
LB77E: LDA    #$24    
LB780: STA    GRP0    
       BIT    COLUPF  
       BMI    LB788   
       STY    $94     
LB788: DEY            
       LDA    #$04    
       STA    $D5     
LB78D: STA    WSYNC   
       JSR    LB727   
       DEC    $D5     
       BNE    LB78D   
       LDA    #$08    
       STA    COLUP0  
       LDA    $B1,X   
       STA    GRP0    
       DEX            
LB79F: BNE    LB762   
       JMP    LB7CA   
LB7A4: STA    WSYNC   
       JSR    LB727   
       STA    WSYNC   
       JSR    LB727   
       STA    WSYNC   
       JSR    LB727   
       LDX    $C5     
       STA    WSYNC   
       LDA    $B1,X   
       STA    GRP0    
       LDA    #$4A    
       STA    COLUP0  
       JSR    LB727   
       STA    WSYNC   
       JSR    LB727   
       DEX            
       BNE    LB79F   
LB7CA: TXA            
       LDX    #$04    
       STA    GRP1    
       STA    COLUP0  
LB7D1: STA    WSYNC   
       LDA    $B0     
       CMP    #$82    
       BCS    LB7DE   
LB7D9: LDA    LBE13,X 
       BNE    LB7E4   
LB7DE: LDA    $D3     
       AND    #$20    
       BNE    LB7D9   
LB7E4: STA    GRP0    
       JSR    LB727   
       DEX            
       BNE    LB7D1   
       STX    GRP0    
       LDA    #$1E    
       STA    HMM0    
       STX    COLUP0  
       TSX            
       STX    $8F     
       LDX    $D7     
       LDA    LBF8D,X 
       STA    COLUP0  
       LDA    LBF93,X 
       STA    COLUP1  
       LDX    #$05    
       LDA    #$36    
       STA    NUSIZ1  
       STA    NUSIZ0  
LB80B: STA    WSYNC   
       LDA    #$6B    
       STA    COLUBK  
       LDA    #$FF    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       STA    ENAM1   
       STA    ENAM0   
       DEY            
       LDA    $D8     
       BNE    LB82A   
       LDA    $D3     
       AND    #$10    
       BNE    LB835   
       BEQ    LB82C   
LB82A: ASL    $50     
LB82C: LDA    #$81    
       STA    PF1     
       DEX            
       BNE    LB80B   
       BEQ    LB83E   
LB835: LDA    $D3     
       ORA    #$20    
       STA    $D3     
       DEX            
       BNE    LB80B   
LB83E: STA    WSYNC   
       DEY            
       DEX            
       STX    PF1     
       INX            
       STX    ENAM0   
       STX    ENAM1   
       STX    NUSIZ0  
       JSR    LB9FF   
       LDA    #$81    
       STA    COLUP0  
       STA    PF1     
       CMP    $B0     
       BNE    LB862   
       LDA    $D3     
       AND    #$20    
       BNE    LB862   
       LDX    #$11    
       STX    $EC     
LB862: LDA    $EC     
       BEQ    LB879   
       LDA    $DA     
       ROR            
       BCS    LB879   
       DEC    $EC     
       BNE    LB879   
       LDA    #$06    
       STA    $B0     
       LDA    #$00    
       STA    $D3     
       STA    $C5     
LB879: LDX    #$10    
       STX    PF0     
       STA    WSYNC   
       BNE    LB8A6   
LB881: BIT    COLUPF  
       BMI    LB887   
       STY    $94     
LB887: DEY            
       TXA            
       CPX    $EC     
       BNE    LB896   
       SEC            
       SBC    #$04    
       BPL    LB894   
       LDA    #$00    
LB894: STA    $8F     
LB896: LDA    #$81    
       STA    PF1     
       LDA    #$00    
       CPX    $8F     
       BCC    LB8A2   
       LDA    #$FF    
LB8A2: STA    WSYNC   
       STA    GRP0    
LB8A6: LDA    #$00    
       STA    PF1     
       STA    PF2     
       DEX            
       BNE    LB881   
       STX    COLUBK  
       STX    GRP0    
       STX    COLUP0  
       STA    WSYNC   
       STX    PF0     
       STX    PF1     
       STX    PF2     
       JSR    LB727   
       LDA    $D3     
       AND    #$04    
       BEQ    LB8C9   
       JMP    LB99C   
LB8C9: STA    WSYNC   
       JSR    LB727   
       LDA    $B0     
       CMP    #$81    
       BEQ    LB8F6   
       DEC    $9C     
       BNE    LB8E2   
       LDA    $E9     
       BNE    LB8E2   
       INC    $B0     
       LDA    $9D     
       STA    $9C     
LB8E2: LDA    $B0     
       CMP    #$9A    
       BNE    LB8F3   
       LDA    #$06    
       STA    $B0     
       LDA    #$00    
       STA    $DB     
       JMP    LB988   
LB8F3: JMP    LB9CC   
LB8F6: LDA    $D3     
       AND    #$20    
       BEQ    LB96C   
       LDA    $B0     
       CMP    #$9A    
       BCS    LB96C   
       DEC    $9C     
       BNE    LB969   
       INC    $B0     
       LDA    $9D     
       STA    $9C     
       LDA    $DB     
       BNE    LB969   
       INC    $DB     
       LDX    $C5     
       STX    $8E     
LB916: LDX    #$04    
       JSR    LBCBC   
       DEC    $8E     
       BNE    LB916   
       LDA    $C5     
       CMP    #$04    
       BNE    LB945   
       LDX    $9D     
       LDA    LBFA4,X 
       STA    $8E     
       LDA    $ED     
       BNE    LB932   
       ASL    $8E     
LB932: LDA    #$02    
       CPX    #$06    
       BCC    LB93A   
       LDA    #$04    
LB93A: STA    $8F     
LB93C: LDX    $8F     
       JSR    LBCBC   
       DEC    $8E     
       BNE    LB93C   
LB945: LDX    #$02    
       JSR    LBA83   
       INC    $E8     
       DEC    $9E     
       BNE    LB969   
       LDA    #$03    
       STA    $9E     
       BIT    SWCHB   
       BVC    LB965   
       LDA    #$02    
       CMP    $9D     
       BCC    LB965   
       BNE    LB969   
       DEC    $9D     
       BNE    LB969   
LB965: LSR    $9D     
       INC    $9D     
LB969: JMP    LB9CC   
LB96C: LDA    #$00    
       STA    $DB     
       LDA    $E8     
       BNE    LB984   
       LDX    #$03    
       JSR    LBA83   
       LDA    $9F     
       BEQ    LB984   
       DEC    $9F     
       BNE    LB984   
       JSR    LBAE6   
LB984: LDA    #$83    
       STA    $B0     
LB988: LDX    #$FF    
       STX    $A4     
       INX            
       STX    $D8     
       STX    $ED     
       STX    $E8     
       INX            
       STX    $C6     
       LDA    $D3     
       AND    #$08    
       BEQ    LB9CC   
LB99C: STA    WSYNC   
       JSR    LB727   
       LDA    #$00    
       STA    $D3     
       LDA    #$10    
       STA    $96     
       LDA    $C7     
       AND    #$03    
       TAX            
       LDA    LBE18,X 
       STA    $A0     
       CMP    #$30    
       BCC    LB9BD   
       LDA    #$FF    
       STA    $A3     
       BMI    LB9CB   
LB9BD: CMP    #$20    
       BCC    LB9C7   
       LDA    #$3C    
       STA    $A3     
       BNE    LB9CB   
LB9C7: LDA    #$18    
       STA    $A3     
LB9CB: NOP            
LB9CC: STA    WSYNC   
       JSR    LB727   
LB9D1: STA    WSYNC   
       JSR    LB727   
       LDA    $C4     
       BNE    LB9EE   
       LDX    $96     
       CPX    #$17    
       BCS    LB9E2   
       INC    $96     
LB9E2: LDA    $AC     
       ORA    $AD     
       ORA    $AE     
       ORA    $AF     
       STA    $A6     
       STA    WSYNC   
LB9EE: LDA    COLUPF  
       ASL            
       BCS    LB9F7   
       LDY    #$14    
       STY    $94     
LB9F7: JSR    LBCD2   
LB9FA: LDA    INTIM   
       BNE    LB9FA   
LB9FF: RTS            

LBA00: STX    $CE     
       LDA    #$77    
       STA    $97,X   
       LDA    #$00    
       STA    $AC,X   
       LDA    $A8,X   
       CMP    #$80    
       BCS    LBA4F   
       CMP    #$18    
       BCC    LBA4F   
       LDA    $B0     
       SEC            
       SBC    $A8,X   
       BPL    LBA1F   
       CMP    #$FC    
       BCS    LBA27   
LBA1F: CMP    #$08    
       BCC    LBA27   
       LDX    #$04    
       BNE    LBA4C   
LBA27: LDX    #$00    
       STX    $E7     
       INC    $C2     
       INX            
       STX    $CD     
       LDX    $9B     
       LDA    $C9,X   
       AND    #$F0    
       LDX    #$03    
LBA38: DEX            
       CMP    LBF8A,X 
       BNE    LBA38   
       TXA            
       TAY            
       CLC            
       ADC    #$07    
       TAX            
       LDA    LBE1D,Y 
       LDY    $C5     
       STA.wy $00B6,Y 
LBA4C: STX    $A5     
       RTS            

LBA4F: LDX    #$00    
       STX    $A5     
       RTS            

LBA54: BIT    COLUPF  
       BMI    LBA5A   
       STY    $94     
LBA5A: DEY            
       DEY            
       STY    $8D     
       STA    $8E     
       LSR            
       LSR            
       LSR            
       LSR            
       CLC            
       ADC    #$03    
       STA    $8F     
       LDA    $8E     
       AND    #$0F    
       TAY            
       LDA    LBD67,Y 
       LDY    $8F     
       STA    WSYNC   
LBA75: DEY            
       BPL    LBA75   
       STA    RESP0,X 
       STA    WSYNC   
       STA    HMP0,X  
       LDA    $8E     
       LDY    $8D     
       RTS            

LBA83: STA    WSYNC   
       LDA    $DC     
       BMI    LBA8F   
       CPX    $DC     
       BCC    LBA8F   
       BNE    LBAE5   
LBA8F: CPX    #$04    
       BNE    LBAA9   
       INC    $E7     
       LDY    $E7     
       CPY    #$03    
       BNE    LBAA9   
       LDY    #$00    
       STY    $E7     
       LDA    $9F     
       BEQ    LBAA9   
       DEC    $9F     
       BEQ    LBAE6   
       LDX    #$06    
LBAA9: STX    $DC     
       INC    $DD     
       LDA    LBF37,X 
       STA    $DE     
       LDA    LBF2C,X 
       STA    AUDC0   
       LDA    #$09    
       STA    $E0     
       TXA            
       BNE    LBACF   
       LDA    #$1A    
       STA    $E0     
       LDA    #$0C    
       STA    $E2     
       STA    AUDV1   
       LDA    #$0C    
       STA    AUDC1   
       STA    AUDV0   
       TXA            
LBACF: ASL            
       TAX            
       LDA    LBF5A,X 
       STA    $E5     
       LDA    LBF5B,X 
       STA    $E6     
       LDA    LBF70,X 
       STA    $E3     
       LDA    LBF71,X 
       STA    $E4     
LBAE5: RTS            

LBAE6: INC    $E9     
       LDX    #$01    
       JSR    LBA83   
       LDA    #$08    
       STA    $D3     
       RTS            

LBAF2: LDY    #$06    
LBAF4: LDA    LBF4A,X 
       STA.wy $0080,Y 
       DEX            
       DEY            
       DEY            
       BPL    LBAF4   
LBAFF: RTS            

LBB00: LDA    $A8,X   
       CMP    #$87    
       BCS    LBAFF   
       CMP    #$18    
       BCC    LBAFF   
       DEY            
       STA    WSYNC   
       LDX    #$01    
       STY    $8D     
       STA    $8E     
       LSR            
       LSR            
       LSR            
       LSR            
       CLC            
       ADC    #$03    
       STA    $8F     
       LDA    $8E     
       AND    #$0F    
       TAY            
       LDA    LBD67,Y 
       LDY    $8F     
       DEX            
       STA    WSYNC   
LBB29: DEY            
       BPL    LBB29   
       STA    RESP1,X 
       STA    HMP1,X  
       STA    WSYNC   
       LDA    $8E     
       DEC    $8D     
       DEC    $8D     
       LDY    $8D     
       STA    WSYNC   
       STA    HMOVE   
       STA    HMCLR   
       JSR    LB727   
       LDA    $D3     
       AND    #$02    
       BEQ    LBB4F   
       LDX    $C8     
       CPX    $D4     
       BEQ    LBB71   
LBB4F: STA    WSYNC   
       DEY            
       LDX    $C8     
       LDA    $C9,X   
       STA    GRP1    
       LDA    $CF,X   
       STA    COLUP1  
       LDX    #$05    
LBB5E: STA    WSYNC   
       BIT    COLUPF  
       BMI    LBB66   
       STY    $94     
LBB66: DEY            
       DEX            
       BNE    LBB5E   
       LDA    #$00    
       STA    GRP1    
       STA    COLUP1  
       RTS            

LBB71: STA    WSYNC   
       DEY            
       STA    WSYNC   
       DEY            
       STA    WSYNC   
       DEY            
       STA    WSYNC   
       DEY            
       LDX    $C8     
       LDA    $C9,X   
       STA    GRP1    
       LDA    $CF,X   
       STA    COLUP1  
       LDX    #$02    
       JMP    LBB5E   
LBB8C: STA    WSYNC   
       DEY            
       STY    $8D     
       LDA    $B0     
       STA    $8E     
       LSR            
       LSR            
       LSR            
       LSR            
       CLC            
       ADC    #$03    
       STA    $8F     
       LDA    $8E     
       AND    #$0F    
       TAY            
       TAX            
       LDA    LBD67,Y 
       LDY    $8F     
       STY    WSYNC   
LBBAB: DEY            
       BPL    LBBAB   
       STA    RESP0   
       STA    WSYNC   
       DEY            
       STA    HMP0    
       LDA    LBD67,X 
       LDY    $8F     
       STA    WSYNC   
LBBBC: DEY            
       BPL    LBBBC   
       STA    RESP1   
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       DEC    $8D     
       DEC    $8D     
       LDA    #$00    
       STA    GRP1    
       STA    GRP0    
       STA    WSYNC   
       LDA    $D3     
       AND    #$02    
       BEQ    LBBDF   
       LDA    $D4     
       CMP    $CE     
       BEQ    LBC14   
LBBDF: LDX    $CD     
       BEQ    LBC13   
       LDX    $CE     
       LDA    $C9,X   
       LDX    $C5     
       BEQ    LBC11   
       STA    WSYNC   
       STA    $B1,X   
       TAY            
       LDA    $A4     
       CMP    $B1,X   
       BEQ    LBC03   
       BCC    LBC0D   
       LDX    $C5     
       CPX    #$03    
       BNE    LBC05   
       INC    $ED     
       JMP    LBC05   
LBC03: DEC    $ED     
LBC05: LDX    #$06    
       JSR    LBCBC   
LBC0A: STY    $A4     
       RTS            

LBC0D: INC    $D8     
       BNE    LBC0A   
LBC11: STA    WSYNC   
LBC13: RTS            

LBC14: LDX    $CD     
       BNE    LBC1F   
       LDA    $D3     
       ORA    #$04    
       STA    $D3     
       RTS            

LBC1F: LDX    $C5     
       BEQ    LBC35   
       LDY    $CE     
       LDA.wy $00C9,Y 
       STA    $B1,X   
       LDA.wy $00CF,Y 
       STA    $B6,X   
       LDA    $D3     
       ORA    #$10    
       STA    $D3     
LBC35: LDA    $D3     
       AND    #$FD    
       STA    $D3     
       RTS            

LBC3C: LDA    #$00    
       STA    HMP0    
       STA    REFP0   
       STA    REFP1   
       LDA    #$10    
       STA    HMP1    
       LDA    #$03    
       STA    NUSIZ0  
       STA    VDELP1  
       LSR            
       STA    NUSIZ1  
       LDX    $D9     
       LDA    LB107,X 
       EOR    #$FF    
       STA    COLUP0  
       STA    COLUP1  
       LDY    #$08    
       STA    WSYNC   
LBC60: DEY            
       BNE    LBC60   
       STA    RESP0   
       STA    RESP1   
       LDY    #$07    
LBC69: LDA    ($88),Y 
       TAX            
       STA    WSYNC   
       STA    HMOVE   
       PHA            
       PLA            
       PHA            
       LDA    ($82),Y 
       STA    GRP1    
       LDA    ($80),Y 
       STA    GRP0    
       PLA            
       LDA    ($86),Y 
       STA    GRP1    
       LDA    ($84),Y 
       STA    GRP0    
       STX    GRP0    
       STA    HMCLR   
       DEY            
       BPL    LBC69   
       LDA    #$00    
       STA    VDELP1  
       STA    GRP0    
       STA    GRP1    
       STA    HMP0    
       STA    HMP1    
       STA    RESP0   
       STA    RESP1   
       STA    WSYNC   
       RTS            

LBC9E: LDA    INTIM   
       BNE    LBC9E   
       STA    WSYNC   
       STA    VBLANK  
       LDA    #$11    
       STA    T1024T  
       RTS            

LBCAD: LDA    INTIM   
       BNE    LBCAD   
       STA    WSYNC   
       STA    VSYNC   
       LDA    #$31    
       STA    TIM64T  
       RTS            

LBCBC: NOP            
LBCBD: LDA    $80,X   
       CMP    #$4B    
       BEQ    LBCC9   
       CLC            
       ADC    #$08    
       STA    $80,X   
       RTS            

LBCC9: LDA    #$03    
       STA    $80,X   
       DEX            
       DEX            
       BPL    LBCBD   
       RTS            

LBCD2: LDA    $DD     
       BEQ    LBD11   
       LDA    $DF     
       DEC    $DF     
       BPL    LBD11   
       LDY    $E0     
       DEY            
       LDA    $DE     
       STA    $DF     
       LDA    $DC     
       BNE    LBCF4   
       LDA    LBEE0,Y 
       STA    AUDF0   
       LDA    LBEFA,Y 
       STA    AUDF1   
       JMP    LBCFC   
LBCF4: LDA    ($E5),Y 
       STA    AUDV0   
       LDA    ($E3),Y 
       STA    AUDF0   
LBCFC: DEC    $E0     
       BPL    LBD11   
       LDY    #$09    
       STY    $E0     
       LDX    #$00    
       STX    $DD     
       STX    AUDV0   
       STX    AUDF0   
       STX    AUDC0   
       DEX            
       STX    $DC     
LBD11: LDA    $DC     
       BEQ    LBD3B   
       LDA    $E9     
       BNE    LBD3C   
       DEC    $E1     
       BPL    LBD3B   
       LDA    $9D     
       ADC    #$01    
       STA    $E1     
       LDY    $E2     
       LDA    LBF14,Y 
       STA    AUDF1   
       LDA    LBF20,Y 
       STA    AUDC1   
       LDA    #$03    
       STA    AUDV1   
       DEC    $E2     
       BPL    LBD3B   
       LDA    #$0B    
       STA    $E2     
LBD3B: RTS            

LBD3C: CMP    #$06    
       BNE    LBD3B   
       LDA    #$00    
       STA    AUDV0   
       STA    AUDV1   
       RTS            

LBD47: .byte $00,$20,$21,$23
LBD4B: .byte $FF,$E7,$C3,$00,$50,$50,$10,$77,$77,$77,$77,$03,$05,$0A,$02,$03
       .byte $30,$8B,$FF,$FF,$20,$00,$00,$3C,$FC,$62,$90,$91
LBD67: .byte $70,$60,$50,$40,$30,$20,$10,$00,$F0,$E0,$D0,$C0,$B0
LBD74: .byte $A0,$90,$80,$00,$00,$00,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$4C,$4E,$4F
       .byte $4F,$4F,$4F,$4F,$4F,$4F,$4F,$4F,$4F,$4F,$4F,$4F,$4F,$8E,$DF,$0F
       .byte $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
LBDA1: .byte $00,$00,$00,$00,$00,$00,$FF,$FF,$FF,$FF,$FF,$FF,$7E,$3C,$3C,$3C
       .byte $3C,$7E,$7E,$7E,$7E,$7E,$7E,$7E,$7E,$7E,$7E,$3C,$3C,$3C,$3C,$3C
       .byte $3C,$3C,$3C,$3C,$3C,$3C,$3C,$7E,$7E,$FF,$FF,$7E,$3C
LBDCE: .byte $00,$00,$00,$00,$00,$00,$24,$24,$66,$81,$81,$00,$00,$00,$00,$00
       .byte $00,$24,$18,$42,$E7,$7E,$3C,$24,$24,$00,$42,$24,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00
LBDF7: .byte $00,$00,$00,$00,$96,$96,$98,$9C,$00,$98,$96,$42,$00,$8C,$4F,$00
       .byte $00,$4E,$4C,$48,$48,$48,$48,$4C,$96,$4F,$46,$46
LBE13: .byte $00,$18,$3C,$FF,$FF
LBE18: .byte $10,$30,$20,$30
LBE1C: .byte $58
LBE1D: .byte $B8,$88,$46,$70,$70,$00,$20,$20,$00
LBE26: .byte $00,$F8,$F8,$70,$20,$00,$1D,$1A,$18,$15,$13,$12,$13,$14,$13,$00
       .byte $00,$13,$13,$13,$17,$1D,$00,$1D,$0A,$15,$0A,$15,$0A,$15,$0A,$15
       .byte $01,$05,$06,$07,$08,$09,$0A,$0B,$0C,$0F,$0F,$0D,$0B,$09,$07,$05
       .byte $03,$01,$01,$1F,$05,$0A,$1C,$0F,$03,$1F,$08,$06,$08,$08,$08,$08
       .byte $09,$0A,$0A,$0A,$0A,$19,$18,$17,$16,$17,$18,$19,$18,$17,$10,$13
       .byte $12,$12,$10,$13,$12,$11,$10,$03,$04,$05,$06,$05,$06,$06,$06,$05
       .byte $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$00,$00,$0F,$0F,$0F,$0F,$0F
       .byte $0F,$0F,$05,$07,$09,$0A,$0C,$0F,$0E,$0D,$0C,$05,$07,$09,$0B,$0C
       .byte $0D,$0E,$0F,$0F,$07,$08,$09,$0A,$0B,$0C,$0D,$0E,$0F,$0A,$0C,$0C
       .byte $0E,$0E,$0F,$0F,$0F,$0F,$05,$07,$09,$0B,$0C,$0D,$0E,$0F,$0F,$05
       .byte $07,$09,$0B,$0C,$0D,$0E,$0F,$0F,$05,$07,$09,$0B,$0C,$0D,$0E,$0F
       .byte $0F,$00,$00,$00,$05,$07,$09,$0B,$00,$00
LBEE0: .byte $13,$13,$13,$13,$13,$13,$17,$1D,$1D,$00,$1D,$1D,$1A,$17,$17,$16
       .byte $13,$13,$11,$13,$13,$00,$13,$13,$00,$00
LBEFA: .byte $13,$13,$13,$13,$13,$13,$17,$1D,$1D,$00,$13,$13,$17,$17,$17,$1D
       .byte $1D,$13,$1D,$1D,$1D,$1D,$1D,$1D,$06,$06
LBF14: .byte $09,$00,$0D,$09,$00,$0D,$09,$00,$0D,$09,$00,$0D
LBF20: .byte $01,$01,$01,$04,$04,$01,$01,$04,$01,$01,$04,$01
LBF2C: .byte $04,$0C,$04,$08,$08,$0D,$08,$0D,$0D,$01,$04
LBF37: .byte $04,$0C,$08,$06,$01,$01,$03,$01,$01,$01,$02
LBF42: .byte $03,$0B,$13,$1B,$23,$2B,$33,$3B
LBF4A: .byte $53,$5B,$63,$6B,$7B,$83,$8B,$93,$03,$03,$03,$03,$A3,$A3,$A3,$A3
LBF5A: .byte $FF
LBF5B: .byte $B9,$86,$BE,$8F,$BE,$98,$BE,$A1,$BE,$AA,$BE,$B3,$BE,$BC,$BE,$C5
       .byte $BE,$CE,$BE,$D7,$BE
LBF70: .byte $FF
LBF71: .byte $B9,$2C,$BE,$35,$BE,$3E,$BE,$47,$BE,$50,$BE,$59,$BE,$62,$BE,$6B
       .byte $BE,$74,$BE,$7D,$BE
LBF86: .byte $10,$18,$3C,$FF
LBF8A: .byte $10,$30,$F0
LBF8D: .byte $00,$88,$88,$88,$2A,$2A
LBF93: .byte $88,$00,$2A,$2A,$88,$88
LBF99: .byte $03,$03,$03,$03,$07,$07,$07,$0F,$0F,$0F,$0F
LBFA4: .byte $00,$00,$04,$03,$02,$01,$05,$04,$03,$02,$01,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$B0,$00,$B0
