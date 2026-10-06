; Disassembly of roms/Air Raiders.bin
; Disassembled Tue Oct  6 15:19:35 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Air Raiders.bin
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
RESM0   =  $12
RESM1   =  $13
AUDC0   =  $15
AUDC1   =  $16
AUDF0   =  $17
AUDF1   =  $18
AUDV0   =  $19
AUDV1   =  $1A
GRP0    =  $1B
GRP1    =  $1C
ENAM0   =  $1D
HMP0    =  $20
HMP1    =  $21
HMM0    =  $22
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296
T1024T  =  $0297

       ORG $F000
LF000: .byte $FE,$C6,$D6,$D6,$C6,$FE,$38,$18,$18,$18,$18,$7E,$7E,$66,$06,$7E
       .byte $60,$7E,$7E,$06,$3C,$06,$06,$7E,$66,$66,$66,$7E,$06,$06,$7E,$60
       .byte $7E,$06,$66,$7E,$7E,$60,$7E,$66,$66,$7E,$7E,$06,$0C,$18,$30,$30
       .byte $7E,$66,$3C,$66,$66,$7E,$7E,$66,$66,$7E,$06,$7E,$09,$15,$15,$1D
       .byte $15,$15,$15,$38,$10,$10,$10,$10,$10,$D0,$2A,$2A,$2A,$3A,$2A,$2A
       .byte $2A,$E4,$4A,$48,$44,$42,$4A,$44,$62,$95,$95,$F5,$95,$95,$95,$8C
       .byte $52,$52,$52,$52,$52,$4C
LF066: .byte $DC,$1B,$DF,$99,$89,$04,$E7,$01,$E6,$C0,$E2,$40,$E0,$12,$E3,$40
       .byte $DA,$16,$D4,$21,$D5,$9A,$01,$02

START:
LF07E: SEI            
       CLD            
       LDA    #$00    
       TAX            
LF083: STA    VSYNC,X 
       TXS            
       INX            
       BNE    LF083   
       LDY    #$17    
LF08B: LDA    LF066,Y 
       DEY            
       LDX    LF066,Y 
       STA    VSYNC,X 
       DEY            
       BPL    LF08B   
       LDA    INTIM   
       STA    $EA     
       ORA    #$80    
       STA    $EB     
LF0A0: JSR    LF517   
       LDA    SWCHB   
       LSR            
       BCC    LF0A0   
LF0A9: LDA    SWCHB   
       LSR            
       BCS    LF0B2   
       JMP    LF07E   
LF0B2: LDA    #$1B    
       STA    TIM64T  
       LDY    $E8     
       LDA    LF1FF,Y 
       STA    $E8     
       LSR            
       STA    $D0     
       LSR            
       STA    $D1     
       JSR    LF517   
       JSR    LF15A   
       BIT    $E2     
       BMI    LF0F3   
       BVS    LF0DC   
       DEC    $E2     
       BNE    LF101   
       INC    $E2     
       LDA    $E7     
       ORA    #$20    
       STA    $E7     
LF0DC: LDA    #$00    
       STA    AUDV0   
       STA    AUDV1   
       LDA    $E2     
       LSR            
       BCS    LF101   
       LDA    REFP1   
       BMI    LF101   
       LDA    #$C0    
       STA    $E2     
       LDA    #$0A    
       STA    $E4     
LF0F3: BVS    LF0FB   
       LDA    $D0     
       BNE    LF0FB   
       INC    $E2     
LF0FB: JSR    LF231   
       JSR    LFEBA   
LF101: LDA    #$2C    
       LDX    $DE     
       DEX            
       BMI    LF10F   
       STX    $DE     
       LDA    #$28    
       CLC            
       ADC    $E8     
LF10F: STA    $CE     
       JSR    LF981   
       JSR    LFADD   
       JSR    LF538   
       LDA    #$F7    
       STA    $F6     
       LDA    #$F4    
       STA    $9C     
       LDX    #$FF    
       STX    $B0     
       INX            
       STX    $C6     
       LDA    #$F3    
       STA    $F8     
       LDA    #$A9    
       SEC            
       SBC    $DA     
       STA    $F7     
       LDA    #$4E    
       LDX    $E3     
       BNE    LF13E   
       LDX    $F3     
       BNE    LF140   
LF13E: LDA    #$94    
LF140: CLC            
       ADC    $DA     
       STA    $D0     
       ADC    #$10    
       STA    $D1     
       EOR    #$FF    
       ADC    #$FF    
       STA    $CF     
LF14F: LDA    T1024T  
       BPL    LF14F   
       JSR    LF906   
       JMP    LF0A9   
LF15A: LDX    #$01    
       LDA    #$01    
       STA    $A7     
       BIT    $E2     
       BPL    LF1BD   
       LDA    $E3     
       BEQ    LF16E   
       AND    #$C0    
       BEQ    LF1B6   
       BNE    LF198   
LF16E: LDX    #$00    
       BIT    SWCHA   
       BVS    LF181   
       INC    $A7     
LF177: LDY    #$00    
       JSR    LF209   
       JSR    LF209   
       BCC    LF198   
LF181: BMI    LF18F   
       DEC    $A7     
LF185: LDY    #$01    
       JSR    LF209   
       JSR    LF209   
       BCC    LF198   
LF18F: JSR    LF223   
       BEQ    LF198   
       BPL    LF185   
       BMI    LF177   
LF198: LDX    #$01    
       BIT    $E2     
       BVC    LF1B6   
       LDA    $DC     
       BEQ    LF1B6   
       LDA    SWCHA   
       ASL            
       ASL            
       STA    $9B     
       BIT    $9B     
       BMI    LF1B4   
LF1AD: LDY    #$00    
       JSR    LF209   
       BCC    LF1C6   
LF1B4: BVS    LF1BD   
LF1B6: LDY    #$01    
       JSR    LF209   
       BCC    LF1C6   
LF1BD: JSR    LF223   
       BEQ    LF1C6   
       BPL    LF1B6   
       BMI    LF1AD   
LF1C6: LDA    $DA     
       CLC            
       ADC    #$96    
       STA    $EC     
       LDY    $A7     
       LDA    $E7     
       LSR            
       LSR            
       BEQ    LF1D6   
       TAY            
LF1D6: LDX    #$02    
       CPY    #$06    
LF1DA: LDA    LF1F6,Y 
       STA    $EF,X   
       BCS    LF1E4   
       INY            
       EOR    #$72    
LF1E4: STA    $F2,X   
       DEX            
       BPL    LF1DA   
       LDA    $E3     
       BEQ    LF1F5   
       LDA    $F3     
       BEQ    LF1F5   
       LDX    #$06    
       STX    $F3     
LF1F5: RTS            

LF1F6: .byte $D4,$A6,$A6,$A6,$D4,$D4,$36,$FE,$00
LF1FF: .byte $04,$05,$06,$07,$02,$03,$01,$00
LF207: .byte $10,$2C
LF209: LDA    $D0     
       BNE    LF221   
       LDA    $D9,X   
       CLC            
       ADC    LF7AE,Y 
       CMP    LFFFE,X 
       BMI    LF221   
       CMP    LF207,X 
       BEQ    LF21F   
       BPL    LF221   
LF21F: STA    $D9,X   
LF221: CLC            
       RTS            

LF223: LDA    $D9,X   
       ASL            
       STA    $9B     
       LDA    LF207,X 
       ADC    LFFFE,X 
       CMP    $9B     
       RTS            

LF231: LDX    $E3     
       BEQ    LF2A2   
       LDA    $E8     
       BNE    LF2A2   
       BIT    $E3     
       BMI    LF273   
       BVC    LF280   
       LDA    $DA     
       INX            
       CPX    #$58    
       BCS    LF24C   
       CMP    #$16    
       BEQ    LF2A0   
       BNE    LF253   
LF24C: TAY            
       BEQ    LF26D   
       CPX    #$7F    
       BCC    LF2A0   
LF253: LDA    #$30    
       STA    $E2     
       STA    $DE     
       LDA    #$18    
       STA    AUDF0   
       STA    AUDC0   
       LDA    #$0F    
       STA    AUDV0   
       LDX    #$00    
       STX    $D7     
       DEX            
       STX    $D4     
       JMP    LF101   
LF26D: STA    $E3     
       STA    $E4     
       BEQ    LF2A2   
LF273: INX            
       BEQ    LF253   
       LDA    $DA     
       CMP    #$2C    
       BNE    LF2A0   
       LDX    #$38    
       BNE    LF2A0   
LF280: DEX            
       BNE    LF2A0   
       LDX    #$41    
       SED            
       LDA    $DB     
       TAY            
       SEC            
       SBC    $E1     
       CLD            
       CMP    #$0A    
       BCC    LF29E   
       STA    $DF     
       LDA    #$1B    
       STA    $DC     
       LDA    #$00    
       STA    $DD     
       STY    $E1     
       DEX            
LF29E: STX    $E2     
LF2A0: STX    $E3     
LF2A2: LDA    $E3     
       BEQ    LF2A8   
       BPL    LF2F6   
LF2A8: LDA    $D9     
       LDY    #$00    
       CLC            
       ADC    $E8     
       LSR            
       LSR            
       LSR            
       EOR    #$10    
       SEC            
       SBC    #$10    
       BPL    LF2BA   
       DEY            
LF2BA: CLC            
       ADC    $E6     
       STA    $E6     
       TYA            
       ADC    $E7     
       AND    #$03    
       STA    $E7     
       BNE    LF2D0   
       LDA    #$FC    
       CMP    $EB     
       BMI    LF2D0   
       STA    $EB     
LF2D0: LDA    #$16    
       SEC            
       SBC    $DA     
       LSR            
       LSR            
       EOR    #$20    
       SEC            
       SBC    #$20    
       CLC            
       ADC    $E8     
       BPL    LF2EC   
       LDA    $E3     
       BMI    LF2F6   
       LDA    $E5     
       BNE    LF2F4   
       JMP    LF253   
LF2EC: CMP    #$08    
       BMI    LF2F6   
       INC    $E5     
       BNE    LF2F6   
LF2F4: DEC    $E5     
LF2F6: LDA    $E5     
       LSR            
       LSR            
       CLC            
       ADC    #$02    
       ADC    $E5     
       ROR            
       LSR            
       LSR            
       LDX    #$FF    
       SEC            
LF305: INX            
       SBC    #$0A    
       BPL    LF305   
       ADC    #$0A    
       STA    $9B     
       TXA            
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    $9B     
       STA    $D7     
       BNE    LF32B   
       LDX    $E3     
       BNE    LF335   
       LDA    $DA     
       CMP    #$16    
       BNE    LF32B   
       DEC    $E4     
       BNE    LF335   
       LDX    #$C0    
       BMI    LF333   
LF32B: LDX    $E3     
       BPL    LF335   
       LDX    #$00    
       STX    $E4     
LF333: STX    $E3     
LF335: LDA    $E8     
       BNE    LF34E   
       LDA    $DA     
       CLC            
       ADC    #$14    
       LSR            
       LSR            
       LSR            
       CLC            
       ADC    $DD     
       STA    $DD     
       BCC    LF34E   
       DEC    $DC     
       BPL    LF34E   
       INC    $DC     
LF34E: LDX    $D4     
       BPL    LF38F   
       LDA    $E3     
       BNE    LF37F   
       LDX    #$FF    
       LDA    REFP1   
       BMI    LF38D   
       LDA    $DF     
       BEQ    LF38F   
       INC    $D4     
       BPL    LF368   
       LDX    $D1     
       BEQ    LF36F   
LF368: SED            
       SEC            
       SBC    #$01    
       STA    $DF     
       CLD            
LF36F: LDY    #$01    
       LDA    $D6     
       CMP    #$23    
       BCS    LF379   
       STY    $D6     
LF379: LDA    #$9F    
       LDX    #$48    
       BNE    LF38B   
LF37F: DEC    $E4     
       BPL    LF38F   
       LDA    #$10    
       STA    $E4     
       LDA    #$8E    
       LDX    #$02    
LF38B: STA    $D5     
LF38D: STX    $D4     
LF38F: BIT    $E2     
       BVS    LF3A0   
       LDA    #$07    
       STA    AUDC1   
       LDA    $E2     
       LSR            
       AND    #$1F    
       LDX    #$0C    
       BNE    LF3E6   
LF3A0: LDA    #$03    
       STA    AUDC1   
       LDA    $E3     
       TAX            
       DEX            
       BMI    LF3C4   
       BIT    $E3     
       BVC    LF3B4   
       LDX    $DA     
       CPX    #$16    
       BNE    LF3C4   
LF3B4: AND    #$3F    
       CLC            
       ADC    #$04    
       LSR            
       LSR            
       EOR    #$FF    
       CLC            
       ADC    #$20    
       LDX    #$04    
       BNE    LF3D5   
LF3C4: LDA    #$C4    
       SEC            
       SBC    $DA     
       LSR            
       LSR            
       LSR            
       LDY    $DA     
       LDX    #$04    
       CPY    #$22    
       BMI    LF3D5   
       INX            
LF3D5: LDY    $DC     
       BEQ    LF3E4   
       DEY            
       BNE    LF3E6   
       LDY    $E8     
       BNE    LF3E8   
       LDY    $EA     
       BPL    LF3E6   
LF3E4: LDX    #$00    
LF3E6: STX    AUDV1   
LF3E8: STA    AUDF1   
       RTS            

LF3EB: .byte $00,$00,$00,$00,$00,$00,$38,$10,$10,$82,$82,$C6,$82,$82,$10,$10
       .byte $38,$00,$00,$00,$00,$B5,$A9,$85,$11,$85,$A6,$85,$3F,$C8,$B5,$B1
       .byte $85,$CE,$85,$3F,$A5,$EE,$85,$08,$B9,$20,$FF,$29,$03,$AA,$59,$20
       .byte $FF,$85,$F5,$A5,$ED,$6C,$F5,$00,$B5,$A9,$85,$A6,$C8,$85,$11,$4C
       .byte $09,$F4,$B5,$A9,$85,$A6,$B5,$B1,$85,$CE,$85,$11,$C8,$4C,$0D,$F4
       .byte $B5,$A9,$85,$A6,$B5,$B1,$85,$CE,$C8,$85,$3F,$85,$11,$4C,$0F,$F4
       .byte $B5,$A9,$85,$A6,$B5,$B1,$85,$CE,$85,$3F,$C8,$EA,$A5,$EE,$85,$11
       .byte $8D,$08,$00,$B9,$20,$FF,$29,$03,$AA,$59,$20,$FF,$85,$F5,$A5,$ED
       .byte $6C,$F5,$00,$B5,$A9,$85,$A6,$B5,$B1,$85,$CE,$B9,$21,$FF,$29,$FC
       .byte $85,$F5,$A6,$EE,$86,$08,$85,$11,$85,$3F,$C8,$59,$20,$FF,$AA,$A5
       .byte $ED,$6C,$F5,$00,$B5,$A9,$85,$A6,$B5,$B1,$85,$CE,$B9,$21,$FF,$29
       .byte $FC,$85,$F5,$C8,$A6,$EE,$86,$08,$85,$3F,$85,$11,$4C,$86,$F4,$B5
       .byte $A9,$85,$A6,$B5,$B1,$85,$CE,$B9,$21,$FF,$29,$FC,$85,$F5,$C8,$A6
       .byte $EE,$86,$08,$59,$20,$FF,$AA,$EA,$85,$11,$85,$3F,$A5,$ED,$6C,$F5
       .byte $00,$B5,$A9,$85,$A6,$B5,$B1,$85,$CE,$B9,$21,$FF,$29,$FC,$C8,$85
       .byte $F5,$A6,$EE,$86,$08,$59,$20,$FF,$AA,$8D,$3F,$00,$A5,$ED,$85,$11
       .byte $6C,$F5,$00,$4C,$F2,$F4,$EA,$B5,$A9,$85,$A6,$B5,$B1,$85,$CE,$C8
       .byte $B9,$20,$FF,$29,$FC,$A6,$EE,$86,$08,$18,$69,$02,$85,$F5,$E9,$01
       .byte $59,$20,$FF,$AA,$A5,$ED,$8D,$11,$00,$6C,$F5,$00
LF517: LDA    $EA     
       ASL            
       ASL            
       ASL            
       EOR    $EA     
       ASL            
       ROL    $EA     
       LDA    $E9     
       ASL            
       ASL            
       ASL            
       ASL            
       CLC            
       ADC    $E9     
       ASL            
       ASL            
       ASL            
       CLC            
       ADC    $E9     
       CLC            
       ADC    #$95    
       STA    $E9     
       EOR    $EA     
       RTS            

LF538: LDA    #$80    
       STA    $F8     
       LDA    #$0C    
       STA    $CF     
       LDY    #$09    
LF542: DEY            
       LDA.wy $0089,Y 
       AND    #$04    
       BEQ    LF542   
       LDX    $A8     
       INX            
       CPX    #$07    
       LDA    $EB     
       BMI    LF57B   
       BEQ    LF5A2   
       DEC    $EB     
       BNE    LF5CB   
       BCS    LF592   
       JSR    LF618   
       BCS    LF592   
       LDA    $F5     
       BMI    LF570   
       LDA    $F6     
       BMI    LF570   
       ADC    $F5     
       ADC    $E0     
       ORA    #$40    
       STA    $D8     
LF570: LDA    $E7     
       ORA    #$1C    
       STA    $E7     
       LDA    #$3D    
       STA    $D6     
       RTS            

LF57B: LDA    $E8     
       ORA    $E3     
       BNE    LF5CB   
       BCS    LF5CB   
       LDA    $E2     
       CMP    #$C0    
       BCC    LF5CB   
       INC    $EB     
       BMI    LF5CB   
       JSR    LF5CC   
       BCC    LF570   
LF592: JSR    LF517   
       ORA    #$80    
       AND    #$FC    
       STA    $EB     
       LDA    #$04    
       STA    $B0     
       JMP    LFCC5   
LF5A2: LDA.wy $0089,Y 
       SEC            
       SBC    #$08    
       STA.wy $0089,Y 
       BVC    LF5CB   
       ADC    #$27    
       STA.wy $0089,Y 
       LDA    $D8     
       CMP    #$40    
       BMI    LF5C0   
       ASL            
       STA    $E2     
       JSR    LFFE5   
       BNE    LF592   
LF5C0: JSR    LF517   
       AND    #$5A    
       BEQ    LF592   
       LDA    #$0E    
       STA    $EB     
LF5CB: RTS            

LF5CC: LDA    $D9     
       STA    $D8     
       JSR    LF517   
       AND    #$07    
       TAX            
       LDA    #$00    
       STA    $9B     
       LDA    LF610,X 
       BPL    LF5E1   
       DEC    $9B     
LF5E1: CLC            
       ADC    $E5     
       STA    $F7     
       BEQ    LF5EA   
       DEC    $F7     
LF5EA: LDA    $9B     
       ADC    #$00    
       SEC            
       BNE    LF5CB   
       LDA    LF608,X 
       ADC    #$45    
       CLC            
       ADC    $E6     
       STA    $C6     
       LDA    $E7     
       ADC    #$00    
       AND    #$03    
       ORA    #$1C    
       STA    $B0     
       JMP    LFC9B   
LF608: .byte $30,$30,$00,$D0,$D0,$D0,$00,$30
LF610: .byte $01,$31,$31,$31,$01,$CF,$CF,$CF
LF618: LDX    #$FF    
       STX    $F5     
       STX    $F6     
       INX            
       LDA    $D8     
       BIT    SWCHB   
       BVC    LF627   
       TXA            
LF627: ASL            
       BCC    LF62B   
       DEX            
LF62B: CLC            
       ADC.wy $0080,Y 
       STA    $C6     
       TXA            
       ADC.wy $0089,Y 
       STA    $B0     
       LDA    $D9     
       STA    $D8     
       LDA    $E6     
       SEC            
       SBC    $C6     
       PHA            
       LDA    $E7     
       SBC    $B0     
       STA    $9B     
       PLA            
       CLC            
       ADC    #$46    
       PHA            
       LDA    $9B     
       ADC    #$00    
       AND    #$03    
       LDX    #$0C    
       CMP    #$02    
       BCS    LF669   
       CMP    #$01    
       PLA            
       BCS    LF685   
       CMP    #$0D    
       BCC    LF680   
       CMP    #$14    
       BCS    LF685   
       SBC    #$0B    
       BNE    LF683   
LF669: LDX    #$F4    
       DEC    $B0     
       CMP    #$03    
       PLA            
       BCC    LF685   
       CMP    #$F4    
       BCS    LF680   
       CMP    #$ED    
       BCC    LF685   
       EOR    #$FF    
       SBC    #$0B    
       BNE    LF683   
LF680: TAX            
       LDA    #$00    
LF683: STA    $F5     
LF685: TXA            
       CLC            
       ADC    $C6     
       STA    $C6     
       LDA    $B0     
       ADC    #$00    
       AND    #$03    
       ORA    #$1C    
       STA    $B0     
       LDX    #$0D    
       LDA    $E5     
       SEC            
       SBC.wy $009D,Y 
       BCC    LF6AB   
       CMP    #$0D    
       BCC    LF6BB   
       CMP    #$14    
       BCS    LF6C0   
       SBC    #$0B    
       BNE    LF6BE   
LF6AB: LDX    #$F5    
       CMP    #$F4    
       BCS    LF6BB   
       CMP    #$ED    
       BCC    LF6C0   
       EOR    #$FF    
       SBC    #$0B    
       BNE    LF6BE   
LF6BB: TAX            
       LDA    #$00    
LF6BE: STA    $F6     
LF6C0: TXA            
       CLC            
       ADC.wy $009D,Y 
       STA    $F7     
       BEQ    LF6CB   
       DEC    $F7     
LF6CB: JMP    LFC9B   
LF6CE: .byte $00,$00,$80,$C0,$FE,$7F,$00,$00,$00,$00,$00,$00,$01,$03,$7F,$FE
       .byte $00,$00,$00,$00,$0C,$0C,$00,$00,$00,$00,$1C,$14,$1C,$00,$00,$00
       .byte $00,$1C,$22,$2A,$22,$1C,$00,$00,$00,$00,$1C,$14,$1C,$00,$00,$00
       .byte $00,$FF,$85,$02,$85,$2A,$85,$08,$B9,$21,$FF,$95,$0D,$B1,$F7,$85
       .byte $1B,$C8,$C4,$CE,$90,$03,$EA,$B0,$1D,$A5,$CF,$85,$F7,$4C,$07,$F8
       .byte $85,$02,$85,$2A,$85,$08,$B9,$21,$FF,$95,$0D,$B1,$A6,$85,$1C,$F0
       .byte $57,$B1,$F7,$85,$1B,$C8,$A5,$CF,$85,$F7,$85,$2B,$A5,$EE,$85,$08
       .byte $C4,$D0,$90,$04,$C4,$D1,$90,$08,$98,$49,$FF,$38,$69,$EB,$85,$F7
       .byte $A5,$ED,$85,$02,$85,$2A,$85,$08,$B1,$A6,$85,$1C,$B1,$F7,$85,$1B
LF75E: LDA    LFF21,Y 
       AND    #$03    
       TAX            
       EOR    LFF21,Y 
       CLC            
       ADC    #$1E    
LF76A: STA    $F5     
       INY            
       LDA    $EE     
       STA    COLUPF  
       CPY    $D3     
       BCC    LF779   
       LDA    #$00    
       BEQ    LF77F   
LF779: CPY    $D2     
       BCC    LF781   
       LDA    #$02    
LF77F: STA    ENAM0   
LF781: LDA    $ED     
       JMP.ind ($00F5)
LF786: .byte $B1,$F7,$85,$1B,$A6,$A8,$B5,$C7,$85,$9B,$A5,$EE,$85,$08,$C8,$C6
       .byte $A8,$EA,$B5,$B8,$85,$07,$B5,$BF,$85,$21,$B1,$F7,$85,$1B
LF7A4: STA    HMOVE   
       LDA    $ED     
       STA    COLUPF  
       JMP.ind ($009B)
LF7AD: .byte $FF
LF7AE: .byte $FE,$02,$85,$02,$85,$2A,$4C,$86,$F8
LF7B7: .byte $40,$85,$02,$85,$2A,$85,$08,$B9,$21,$FF,$95,$0D,$C8,$C4,$CE,$90
       .byte $03,$EA,$B0,$1D,$4C,$2E,$F8,$85,$02,$85,$2A,$4C,$96,$F8,$FF
LF7D6: STA    WSYNC   
       STA    HMOVE   
       STA    COLUPF  
       LDA    LFF21,Y 
       STA    PF0,X   
       LDA    ($A6),Y 
       STA    GRP1    
       BEQ    LF856   
       INY            
       JSR    LFEB9   
       NOP            
       STA    HMCLR   
       LDA    $EE     
       STA    COLUPF  
       CPY    $EC     
       BCS    LF83B   
       LDA    $ED     
       STA    WSYNC   
       STA    HMOVE   
       STA    COLUPF  
       LDA    ($A6),Y 
       STA    GRP1    
       DEC    $3F     
       JMP    LF75E   
LF807: .byte $8D,$2B,$00,$A5,$EE,$85,$08,$C4,$D0,$90,$04,$C4,$D1,$90,$08,$98
       .byte $49,$FF,$38,$69,$EB,$85,$F7,$A5,$ED,$85,$02,$85,$2A,$85,$08,$B1
       .byte $F7,$85,$1B,$EA,$18,$90,$1C,$20,$B9,$FE,$85,$3F,$85,$2B,$A5,$EE
       .byte $85,$08,$C4,$EC
LF83B: BCS    LF875   
       LDA    $ED     
       STA    WSYNC   
       STA    HMOVE   
       STA    COLUPF  
       JSR    LFEB9   
       DEC    $3F     
       LDA    LFF21,Y 
       AND    #$03    
       TAX            
       EOR    LFF21,Y 
       JMP    LF76A   
LF856: LDX    $A8     
       DEC    $A8     
       INY            
       PLA            
       PHA            
       LDA    $EE     
       STA    COLUPF  
       CPY    $EC     
       BCS    LF875   
       LDA    $C7,X   
       STA    $9B     
       LDA    $B8,X   
       STA    COLUP1  
       LDA    $BF,X   
       STA    HMP1    
       NOP            
       JMP    LF7A4   
LF875: LDX    #$00    
       LDA    #$F2    
       STA    WSYNC   
       STA    HMOVE   
       STA    COLUPF  
       STA    COLUBK  
       STX    GRP1    
       JMP    LFD3F   
LF886: .byte $85,$08,$B9,$21,$FF,$85,$0F,$A9,$B8,$C8,$C4,$CE,$B0,$0E,$90,$0E
       .byte $85,$08,$B1,$A6,$85,$1C,$B9,$21,$FF,$85,$0F,$C8,$A9,$D6,$85,$F5
       .byte $A9,$01,$85,$0A,$EA,$EA,$85,$2B,$A5,$EE,$85,$08,$A5,$F1,$85,$EE
       .byte $A5,$F2,$85,$F1,$A5,$EF,$85,$ED,$A6,$F4,$86,$EF,$A6,$F5,$85,$2A
       .byte $85,$08,$E0,$B8,$F0,$24,$B1,$A6,$85,$1C,$C0,$50,$B0,$28,$A5,$A6
       .byte $38,$E5,$DA,$85,$A6,$98,$38,$65,$DA,$A8,$A5,$EE,$8D,$08,$00,$B9
       .byte $20,$FF,$29,$03,$AA,$A5,$ED,$6C,$F5,$00,$68,$48,$C0,$50,$B0,$06
       .byte $EA,$EA,$EA,$EA,$90,$DF,$C6,$3F,$18,$C8,$A5,$F3,$85,$09,$90,$DA
LF906: STA    WSYNC   
       STA    HMOVE   
       LDA    #$00    
       STA    VBLANK  
       LDA    #$05    
       STA    CTRLPF  
       LDA    $A6     
       JSR    LFAB8   
       STA    HMM0    
       STA    WSYNC   
       STA    HMOVE   
       INY            
       INY            
LF91F: DEY            
       BPL    LF91F   
       STA.w  $0012   
       STA    WSYNC   
       STA    HMOVE   
       LDY    #$07    
LF92B: DEY            
       BNE    LF92B   
       STY    HMM0    
       STA    RESP0   
       LDA    #$10    
       STA    HMP0    
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$8A    
       STA    COLUP0  
       LDA    #$15    
       STA    NUSIZ0  
       LDY    #$00    
       STY    NUSIZ1  
       INY            
       LDX    #$02    
       LDA    #$D6    
       STA    $A6     
       LDA    #$F6    
       STA    $A7     
       LDA    $F0     
       STA    COLUBK  
       LDA    #$F2    
       STA    $ED     
       STA    $EE     
       STA    HMCLR   
       JMP    LF7D6   
LF960: DEY            
       STY    $A8     
LF963: STX    $A7     
       LDX    $CE     
       BEQ    LF97E   
LF969: LDA    T1024T  
       BPL    LF969   
       STX    TIM64T  
       LDX    #$03    
       STX    VSYNC   
LF975: STA    WSYNC   
       DEX            
       BNE    LF975   
       STX    VSYNC   
       STX    $CE     
LF97E: LDX    $A7     
       RTS            

LF981: LDY    #$FF    
       STY    $9C     
       INY            
       STY    $A6     
       LDX    #$09    
LF98A: DEX            
       BMI    LF960   
       LDA    INTIM   
       CMP    #$08    
       BCS    LF997   
       JSR    LF963   
LF997: LDA    $92,X   
       BPL    LF98A   
       ASL            
       BPL    LF9F3   
       LDA    $89,X   
       SEC            
       SBC    #$08    
       BVS    LF9B1   
       STA    $9B     
       LDA    $E8     
       BNE    LF9F3   
       LDA    $9B     
       STA    $89,X   
       BVC    LF9F3   
LF9B1: LDA    $D0     
       BNE    LF9F3   
       LDA    $92,X   
       ASL            
       ASL            
       BPL    LF9C3   
       INC    $9D,X   
       LDA    $9C,X   
       SBC    $9D,X   
       BCS    LF9C9   
LF9C3: DEC    $9D,X   
       LDA    $9D,X   
       SBC    $9E,X   
LF9C9: CMP    #$0A    
       BCS    LF9D7   
       LDA    $89,X   
       AND    #$83    
       STA    $89,X   
       LDA    #$20    
       BNE    LF9EF   
LF9D7: LDA.wy $009D,Y 
       AND    #$1F    
       BNE    LF9F3   
       JSR    LF517   
       STA    $9B     
       AND    #$78    
       ORA    $89,X   
       STA    $89,X   
       LDA    $9B     
       AND    #$80    
       LSR            
       LSR            
LF9EF: EOR    $92,X   
       STA    $92,X   
LF9F3: LDA    $89,X   
       AND    #$03    
       STA    $A7     
       EOR    $89,X   
       STA    $9B     
       LDA    $92,X   
       CLC            
       ADC    $D0     
       AND    #$1F    
       LSR            
       LSR            
       EOR    #$04    
       SEC            
       SBC    #$04    
       BPL    LFA0F   
       DEC    $A7     
LFA0F: CLC            
       ADC    $80,X   
       STA    $80,X   
       LDA    $A7     
       ADC    #$00    
       AND    #$03    
       ORA    $9B     
       STA    $89,X   
       CPY    #$07    
       BCS    LFA37   
       LDA    $80,X   
       SEC            
       SBC    $E6     
       STA.wy $00B8,Y 
       LDA    $89,X   
       SBC    $E7     
       AND    #$03    
       BNE    LFAA9   
       LDA.wy $00B8,Y 
       CMP    #$98    
LFA37: BCS    LFAA9   
       STY    $A8     
       CMP    #$8A    
       BCC    LFA41   
       ADC    #$0B    
LFA41: JSR    LFAB8   
       STX    $9B     
       ORA    $9B     
       STA    $9B     
       LDA    LFAAC,Y 
       LDY    $A8     
       STA.wy $00C7,Y 
       LDA    $9B     
       STA.wy $00BF,Y 
       LDA    $E5     
       SEC            
       SBC    $9D,X   
       BCS    LFA64   
       ADC    #$53    
       BCC    LFAA9   
       BCS    LFA6C   
LFA64: ADC    #$52    
       BCS    LFAA9   
       CMP    #$96    
       BCS    LFAA9   
LFA6C: CMP    #$41    
       BCC    LFA73   
       CLC            
       ADC    $DA     
LFA73: STA.wy $00B1,Y 
       LSR            
       ROL            
       EOR    #$FF    
       ADC    #$D0    
       STA    $9B     
       LDA    $89,X   
       BPL    LFA94   
       AND    #$04    
       BNE    LFA94   
       LDA    $92,X   
       AND    #$10    
       CMP    #$10    
       LDA    $9B     
       BCC    LFAA5   
       ADC    #$09    
       BCC    LFAA5   
LFA94: LDA    $89,X   
       AND    #$78    
       LSR            
       LSR            
       LSR            
       STX    $A7     
       TAX            
       LDA    LFAD8,X 
       ADC    $9B     
       LDX    $A7     
LFAA5: STA.wy $00A9,Y 
       INY            
LFAA9: JMP    LF98A   
LFAAC: .byte $00,$23,$2D,$3B,$4B,$6E,$8F,$AA,$CC,$F1,$EE,$EE
LFAB8: TAY            
       AND    #$0F    
       STA    $9B     
       TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       CLC            
       ADC    $9B     
       CMP    #$0F    
       BCC    LFACD   
       SBC    #$0F    
       INY            
LFACD: EOR    #$07    
       ASL            
       ASL            
       ASL            
       ASL            
       RTS            

LFAD4: .byte $32,$34,$38,$3C
LFAD8: .byte $12,$18,$1F,$28,$06
LFADD: LDA    $D4     
       BMI    LFB58   
       LDA    $E3     
       BNE    LFAF3   
       LDA    $D5     
       SEC            
       SBC    #$13    
       STA    $D5     
       ADC    $DA     
       TAX            
       LDA    #$EE    
       BMI    LFB14   
LFAF3: BPL    LFAF7   
       LDA    #$32    
LFAF7: AND    #$3F    
       LSR            
       PHA            
       DEC    $E4     
       CLC            
       ADC    $E8     
       LSR            
       LSR            
       LSR            
       CLC            
       ADC    $D5     
       STA    $D5     
       TAX            
       SBC    $DA     
       CMP    #$8F    
       PLA            
       BCS    LFB35   
       ADC    $D0     
       LSR            
       LSR            
LFB14: CLC            
       ADC    $D4     
       BMI    LFB35   
       CMP    #$4B    
       BCS    LFB35   
       STA    $D4     
       CLC            
       LDY    $D1     
       BEQ    LFB27   
       EOR    #$FF    
       SEC            
LFB27: ADC    #$4A    
       STA    $A6     
       TXA            
       STA    $D2     
       CLC            
       ADC    #$04    
       STA    $D3     
       BCC    LFB58   
LFB35: LDX    #$FF    
       STX    $D2     
       BIT    REFP1   
       BMI    LFB3E   
       DEX            
LFB3E: STX    $D4     
       LDX    $A8     
       BMI    LFB58   
LFB44: LDA    $D3     
       SEC            
       SBC    $B1,X   
       CMP    #$0D    
       BCS    LFB55   
       LDA    #$4B    
       SBC    $B8,X   
       CMP    #$09    
       BCC    LFB5B   
LFB55: DEX            
       BPL    LFB44   
LFB58: JMP    LFBC4   
LFB5B: LDA    $BF,X   
       AND    #$0F    
       TAY            
       LDA.wy $0089,Y 
       BPL    LFB55   
       AND    #$07    
       CMP    #$04    
       BCS    LFB55   
       ORA    #$18    
       STA.wy $0089,Y 
       LDA.wy $0092,Y 
       BPL    LFB55   
       ASL            
       ASL            
       LDX    #$81    
       BIT    LF7B7   
       BEQ    LFB80   
       LDX    #$9F    
LFB80: STX    $92,Y   
       BCS    LFBB1   
       PHA            
       TXA            
       LSR            
       AND    #$09    
       STA    $9B     
       STY    $A7     
       LDX    #$03    
       PLA            
       BMI    LFBAE   
LFB92: LDA.wy $0092,Y 
       DEY            
       AND    #$20    
       BEQ    LFB92   
LFB9A: INY            
       CPY    $A7     
       BEQ    LFBAE   
       JSR    LF517   
       AND    #$23    
       CLC            
       ADC    #$04    
       SBC    $9B     
       ORA    #$C0    
       STA.wy $0092,Y 
LFBAE: DEX            
       BNE    LFB9A   
LFBB1: LDA    $E7     
       ORA    #$18    
       STA    $E7     
       LDA    #$23    
       STA    $D6     
       SED            
       CLC            
       LDA    #$01    
       ADC    $DB     
       STA    $DB     
       CLD            
LFBC4: LDX    $A8     
       BMI    LFBE4   
LFBC8: LDA    $BF,X   
       AND    #$0F    
       TAY            
       LDA.wy $0089,Y 
       BMI    LFBDD   
       AND    #$78    
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    LFAD4,Y 
       BNE    LFBDF   
LFBDD: LDA    #$00    
LFBDF: STA    $B8,X   
       DEX            
       BPL    LFBC8   
LFBE4: LDA    $E8     
       BNE    LFC08   
       STA    $B0     
       LDY    #$08    
LFBEC: LDA.wy $0092,Y 
       BPL    LFC05   
       LDA.wy $0089,Y 
       BMI    LFC05   
       SEC            
       SBC    #$08    
       STA.wy $0089,Y 
       BPL    LFC05   
       STY    $A7     
       JSR    LFCC5   
       LDY    $A7     
LFC05: DEY            
       BPL    LFBEC   
LFC08: LDY    $E8     
       CPY    #$07    
       BNE    LFC24   
       LDX    #$03    
       LDY    #$08    
LFC12: LDA.wy $0092,Y 
       BMI    LFC21   
       LDA.wy $0089,Y 
       AND    #$04    
       BNE    LFC21   
       DEX            
       BEQ    LFC25   
LFC21: DEY            
       BPL    LFC12   
LFC24: RTS            

LFC25: LDA    #$18    
       STA    $CF     
       LDA    #$00    
       STA    $F8     
       JSR    LFC73   
       BCS    LFC24   
       ORA    #$20    
       STA    $F8     
       LDX    #$F8    
       AND    #$10    
       BEQ    LFC3E   
       LDX    #$08    
LFC3E: TXA            
       BPL    LFC43   
       DEC    $B0     
LFC43: ADC    $C6     
       STA    $C6     
       LDA    $B0     
       ADC    #$00    
       AND    #$03    
       STA    $B0     
       LDA    #$0C    
       STA    $CF     
       JSR    LFC5E   
       LDA    $F8     
       EOR    #$20    
       STA    $F8     
       LDA    #$E8    
LFC5E: CLC            
       ADC    $F7     
       STA    $F7     
LFC63: INY            
       LDA.wy $0092,Y 
       BMI    LFC63   
       LDA.wy $0089,Y 
       AND    #$04    
       BNE    LFC63   
       JMP    LFC9B   
LFC73: JSR    LF517   
       CLC            
       ADC    $E6     
       PHA            
       AND    #$01    
       ADC    $E7     
       STA    $B0     
       PLA            
       CLC            
       ADC    #$4A    
       STA    $C6     
       INC    $B0     
       LDA    $B0     
       ADC    #$00    
       AND    #$03    
       STA    $B0     
       JSR    LF517   
       CMP    #$FF    
       BNE    LFC99   
       LDA    #$80    
LFC99: STA    $F7     
LFC9B: LDA.wy $009D,Y 
       STA    $CE     
       LDA.wy $009C,Y 
       STA.wy $009D,Y 
       LDA    $F7     
       LDX    #$09    
LFCAA: DEX            
       CMP    $9D,X   
       BCS    LFCAA   
       SEC            
       SBC    $9E,X   
       CMP    $CF     
       BCC    LFCBE   
       LDA    $9D,X   
       SBC    $F7     
       CMP    $CF     
       BCS    LFCCE   
LFCBE: LDA    $CE     
       STA.wy $009D,Y 
       SEC            
       RTS            

LFCC5: LDX    #$00    
       STX    $F7     
       INX            
       STX    $F8     
       LDX    #$08    
LFCCE: STX    $9B     
       CPY    $9B     
       BEQ    LFD14   
       BPL    LFCF5   
LFCD6: LDA.wy $009E,Y 
       STA.wy $009D,Y 
       LDA.wy $008A,Y 
       STA.wy $0089,Y 
       LDA.wy $0081,Y 
       STA.wy $0080,Y 
       LDA.wy $0093,Y 
       STA.wy $0092,Y 
       INY            
       CPY    $9B     
       BNE    LFCD6   
       BEQ    LFD14   
LFCF5: INC    $9B     
LFCF7: LDA.wy $009C,Y 
       STA.wy $009D,Y 
       LDA.wy $0088,Y 
       STA.wy $0089,Y 
       LDA.wy $007F,Y 
       STA.wy $0080,Y 
       LDA.wy $0091,Y 
       STA.wy $0092,Y 
       DEY            
       CPY    $9B     
       BNE    LFCF7   
LFD14: LDA    $F7     
       STA.wy $009D,Y 
       LDA    $C6     
       STA.wy $0080,Y 
       LDA    $B0     
       ORA    #$80    
       STA.wy $0089,Y 
       LDA    $F8     
       BNE    LFD3A   
       LDA    $EA     
       AND    #$83    
       CLC            
       ADC    #$03    
       BPL    LFD38   
       EOR    #$7F    
       ADC    #$01    
       AND    #$1F    
LFD38: ORA    #$80    
LFD3A: STA.wy $0092,Y 
       CLC            
       RTS            

LFD3F: LDX    #$00    
       STX    GRP0    
       STX    GRP0    
       LDA    #$06    
       STA    NUSIZ1  
       STA    NUSIZ0  
       STA    RESP1   
       STA    RESP0   
       LDA    #$F0    
       STA    HMP1    
       STX    HMP0    
       LDA    #$FA    
       STA    COLUP1  
       STA    COLUP0  
       LDA    #$55    
       STA    $9C     
       STA    VDELP0  
       STA    VDELP1  
       LDX    #$08    
       LDY    #$F0    
LFD67: STA    WSYNC   
       STA    HMOVE   
       STY    $EE,X   
       STY    $F0,X   
       LDA    $D7,X   
       AND    #$F0    
       LSR            
       LSR            
       STA    $9B     
       LSR            
       ADC    $9B     
       STA    $ED,X   
       LDA    $D7,X   
       AND    #$0F    
       ASL            
       STA    $9B     
       ASL            
       ADC    $9B     
       STA    $EF,X   
       DEX            
       DEX            
       DEX            
       DEX            
       STA    HMCLR   
       BPL    LFD67   
       LDX    #$0C    
       LDY    #$00    
LFD94: STA    WSYNC   
       STA    HMOVE   
       LDA    ($ED),Y 
       STA    GRP1    
       LDA    ($EF),Y 
       STA    GRP0    
       LDA    ($F1),Y 
       STA    GRP1    
       LDA    $9C     
       ASL            
       LDA    ($F3),Y 
       STA    GRP0    
       LDA    ($F5),Y 
       STA    GRP1    
       LDA    ($F7),Y 
       STA    GRP0    
       STA    GRP1    
       ROL    $9C     
       BCC    LFDBA   
       INY            
LFDBA: DEX            
       BNE    LFD94   
       STA    WSYNC   
       STA    HMOVE   
       STX    GRP1    
       STX    GRP0    
       STX    GRP1    
       INC    $9C     
       BEQ    LFDF0   
       LDA    #$3C    
       STA    $ED     
       LDA    #$43    
       STA    $EF     
       LDA    #$4A    
       STA    $F1     
       LDA    #$51    
       STA    $F3     
       LDA    #$58    
       STA    $F5     
       LDA    #$5F    
       STA    $F7     
       STA    WSYNC   
       STA    HMOVE   
       LDY    #$FF    
       STY    $9C     
       INY            
       LDX    #$07    
       BNE    LFD94   
LFDF0: LDY    #$04    
LFDF2: STA    WSYNC   
       STA    HMOVE   
       LDA    #$00    
       STA    VDELP1  
       STA    VDELP0  
       STA    GRP1    
       STA    GRP0    
       STA    PF0     
       LDA    #$03    
       STA    PF1     
       LDA    #$FF    
       STA    PF2     
       LDA    #$FE    
       STA    $9C     
       DEY            
       BNE    LFDF2   
       LDY    #$04    
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$80    
       STA    COLUPF  
       LDA    $DC     
       LSR            
       BCS    LFE20   
LFE20: EOR    #$FF    
       CLC            
       ADC    #$3B    
       STA    $9B     
       LDA    #$46    
       NOP            
       JMP.ind ($009B)
LFE2D: .byte $EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$85,$08,$88
       .byte $D0,$D4,$85,$02,$85,$2A,$A9,$F2,$85,$08,$A5,$E7,$4A,$85,$9B,$A5
       .byte $E6,$6A,$46,$9B,$6A,$18,$69,$60,$4A,$18,$69,$04,$A2,$00,$86,$04
       .byte $A2,$03,$85,$02,$85,$2A,$CA,$D0,$F9,$A2,$04,$20,$B8,$FA,$85,$20
       .byte $85,$02,$85,$2A,$C8,$C8,$88,$10,$FD,$8D,$10,$00,$85,$02,$85,$2A
       .byte $A9,$01,$85,$1B,$A9,$00,$85,$08,$A9,$0F,$85,$06,$84,$0E,$85,$0F
       .byte $85,$2B,$A9,$34,$85,$09,$20,$B9,$FE,$20,$B9,$FE,$A9,$F2,$85,$09
       .byte $CA,$D0,$D9,$A0,$06,$85,$02,$85,$2A,$A9,$F2,$85,$08,$A9,$FF,$85
       .byte $0D,$85,$0F,$86,$1B,$88,$D0,$ED,$85,$02,$85,$01
LFEB9: RTS            

LFEBA: LDY    $D6     
LFEBC: LDA    LFED7,Y 
       BEQ    LFED2   
       INY            
       PHA            
       AND    #$03    
       ASL            
       TAX            
       PLA            
       LSR            
       LSR            
       LSR            
       STA    RESM1,X 
       BCS    LFEBC   
       STY    $D6     
       RTS            

LFED2: STA    $D6     
       STA    AUDV0   
       RTS            

LFED7: .byte $00,$45,$06,$7B,$0E,$63,$16,$4B,$1E,$43,$26,$3B,$2E,$33,$32,$3E
       .byte $2B,$42,$4E,$23,$52,$5E,$1B,$62,$6E,$13,$72,$7A,$82,$8E,$0B,$92
       .byte $9A,$A2,$00,$45,$E6,$73,$63,$5B,$53,$EE,$4B,$3B,$33,$2B,$F6,$23
       .byte $23,$1B,$1B,$FE,$1B,$13,$13,$13,$0B,$0B,$0B,$0B,$00,$45,$C6,$7B
       .byte $C2,$C2,$C2,$D6,$5B,$E6,$3B,$FE,$1B,$00
LFF21: .byte $BA,$FF,$BA,$FF,$BA,$3F,$BA,$0F,$BA,$03,$BA,$01,$BA,$00,$B9,$FE
       .byte $B9,$FC,$B9,$F8,$B9,$F0,$B9,$F0,$B9,$E0,$B9,$E0,$B9,$C0,$B9,$C0
       .byte $B9,$C0,$B9,$80,$B9,$80,$B9,$80,$B9,$00,$B9,$00,$B9,$00,$B9,$00
       .byte $B8,$70,$B8,$70,$B8,$70,$B8,$70,$B8,$70,$B8,$70,$B8,$00,$B0,$00
       .byte $B8,$00,$B8,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$10,$00,$30
       .byte $00,$70,$00,$F0,$01,$80,$01,$C0,$01,$E0,$01,$F0,$01,$F8,$01,$FC
       .byte $01,$FE,$01,$FF,$02,$01,$02,$03,$02,$07,$02,$0F,$BA,$1F,$BA,$3F
       .byte $BA,$7F,$B2,$FF,$BA,$7F,$BA,$3F,$BA,$1F,$BA,$0F,$BA,$07,$BA,$03
       .byte $BA,$01,$BA,$00,$B9,$FE,$B9,$FC,$B9,$F8,$B9,$F0,$B9,$E0,$B9,$C0
       .byte $B9,$80,$B9,$00,$B8,$70,$B8,$30,$B8,$10,$B8,$00,$B8,$00,$B8,$00
       .byte $B8,$00,$B8,$00
LFFE5: LDA    #$10    
       STA    $DE     
       LDX    $E0     
       DEX            
       BMI    LFFF0   
       STX    $E0     
LFFF0: RTS            

LFFF1: .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$7E,$F0,$7E,$F0
LFFFE: .byte $F0,$00
