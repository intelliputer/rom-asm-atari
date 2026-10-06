; Disassembly of roms/Targ (CBS).bin
; Disassembled Tue Oct  6 15:24:47 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Targ (CBS).bin
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
RESM0   =  $12
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
HMP1    =  $21
HMM0    =  $22
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
INPT4   =  $3C
INPT5   =  $3D
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM8T   =  $0295
TIM64T  =  $0296
L10FD   =   $10FD
L14C0   =   $14C0
L14CC   =   $14CC
L14DA   =   $14DA
L14DB   =   $14DB
L14F1   =   $14F1
L14FB   =   $14FB
L1503   =   $1503
L1518   =   $1518
L15E7   =   $15E7

       ORG $1000

START:
       CLD            
       SEI            
       LDX    #$FF    
       TXS            
       INX            
       TXA            
L1007: STA    VSYNC,X 
       INX            
       BNE    L1007   
       LDX    #$2D    
       JSR    L10C4   
       JSR    L11CA   
       LDA    #$01    
       STA    CTRLPF  
       LDA    #$80    
       STA    COLUPF  
       LDA    #$28    
       STA    COLUBK  
L1020: LDX    #$05    
       LDA    #$06    
L1024: STA    $E6,X   
       STA    $D4,X   
       LDY    #$1D    
       STY    $C8,X   
       DEX            
       BPL    L1024   
L102F: LDA    #$2A    
       STA    WSYNC   
       STA    VBLANK  
       STA    VSYNC   
       STA    TIM8T   
       INC    $AE     
       LDA    $AE     
       AND    #$03    
       BNE    L1044   
       INC    $AF     
L1044: LDA    $A5     
       CMP    #$02    
       BEQ    L104D   
       JSR    L110A   
L104D: LDA    INTIM   
       BNE    L104D   
       STA    WSYNC   
       STA    VSYNC   
       LDA    #$2D    
       STA    TIM64T  
       LDA    $AE     
       LSR            
       BCS    L1065   
       JSR    L1765   
       BEQ    L106B   
L1065: JSR    L15AF   
       JSR    L1642   
L106B: JSR    L1137   
       JSR    L1609   
       JSR    L17D0   
       JSR    L18AE   
       JSR    L190D   
       JSR    L11EC   
L107D: LDA    INTIM   
       BNE    L107D   
       STA    WSYNC   
       STA    VBLANK  
       JSR    L1241   
       LDA    #$FF    
       LDX    #$23    
       STA    WSYNC   
       STA    VBLANK  
       STX    TIM64T  
       LDA    SWCHB   
       AND    #$08    
       LDA    $A5     
       BPL    L10B8   
       LDA    $AE     
       LSR            
       BCS    L10AA   
       JSR    L14FB   
       JSR    L172D   
       BPL    L10B0   
L10AA: JSR    L169A   
       JSR    L16CC   
L10B0: JSR    L1461   
       JSR    L1137   
       BEQ    L10BB   
L10B8: JSR    L10CD   
L10BB: LDA    INTIM   
       BNE    L10BB   
       JMP    L102F   
L10C3: .byte $80
L10C4: LDA    L1A06,X 
       STA    $80,X   
       DEX            
       BPL    L10C4   
       RTS            

L10CD: LDA    $A5     
       BNE    L10D9   
       LDA    INPT4   
       BPL    L10DF   
       LDA    INPT5   
       BPL    L10DF   
L10D9: LDA    SWCHB   
       LSR            
       BCS    L10E7   
L10DF: LDX    #$2D    
       JSR    L10C4   
       STX    $A5     
       RTS            

L10E7: LSR            
       BCS    L1109   
       LDA    $AE     
       AND    #$0F    
       BNE    L1109   
       LDY    #$A1    
       LDX    #$00    
       STX    $A5     
       LDA    $AE     
       AND    #$10    
       BNE    L10FF   
       LDX    #$80    
       INY            
L10FF: STX    $A4     
       LDA    #$AA    
       STA    $9F     
       STA    $A0     
       STY    $A1     
L1109: RTS            

L110A: LDX    #$02    
L110C: TXA            
       LDA    $9F,X   
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA    $9C,X   
       LDA    $9F,X   
       AND    #$F0    
       LSR            
       STA    $99,X   
       DEX            
       BPL    L110C   
       LDY    #$50    
       INX            
L1123: LDA    $99,X   
       BNE    L1136   
       STY    $99,X   
       CPX    #$02    
       BEQ    L1136   
       LDA    $9C,X   
       BNE    L1136   
       STY    $9C,X   
       INX            
       BPL    L1123   
L1136: RTS            

L1137: LDY    #$00    
       LDA    $A5     
       BNE    L113E   
       RTS            

L113E: LDA    $B3     
       CMP    #$80    
       BNE    L114E   
       LDA    $B0     
       AND    #$0C    
       LDX    #$0C    
       LDY    #$0C    
       BNE    L1166   
L114E: LDA    $A5     
       BPL    L1166   
       LDA    $AF     
       LDX    $A7     
L1156: LSR            
       DEX            
       BPL    L1156   
       BCS    L1166   
       LDY    #$08    
       AND    #$0F    
       TAX            
       LDA    L11BA,X 
       LDX    #$0C    
L1166: STA    AUDF0   
       STX    AUDC0   
       STY    AUDV0   
       LDA    $82     
       BNE    L1178   
       LDA    $B0     
       LSR            
       LSR            
       LSR            
       LSR            
       BNE    L1191   
L1178: LDA    $A5     
       BPL    L119A   
       LDY    #$05    
L117E: LDX    $8F,Y   
       CPX    #$04    
       BCS    L118A   
       DEY            
       BPL    L117E   
       INY            
       BEQ    L1196   
L118A: LDA    #$0C    
       CPX    #$05    
       BNE    L1191   
       LSR            
L1191: TAY            
       LDX    #$02    
       LDA    #$0E    
L1196: CPY    #$00    
       BNE    L11B3   
L119A: LDA    $BA     
       AND    #$0E    
       TAY            
       BEQ    L11B3   
       EOR    #$0E    
       TAX            
       LDA    $AE     
       LSR            
       BCS    L11B0   
       LDA    $BA     
       SEC            
       SBC    #$02    
       STA    $BA     
L11B0: TXA            
       LDX    #$0C    
L11B3: STA    AUDF1   
       STX    AUDC1   
       STY    AUDV1   
       RTS            

L11BA: .byte $14,$14,$1F,$1F,$14,$14,$1F,$1F,$12,$12,$1C,$1C,$12,$12,$1C,$1C
L11CA: LDA    #$02    
       STA    $A5     
       LDX    #$06    
L11D0: LDA    L11DE,X 
       STA    $98,X   
       LDA    L11E5,X 
       STA    $B1,X   
       DEX            
       BPL    L11D0   
       RTS            

L11DE: .byte $1F,$50,$B0,$C0,$A8,$B8,$50
L11E5: .byte $1F,$50,$D0,$E0,$C8,$D8,$E8
L11EC: STA    WSYNC   
       STA    CXCLR   
       LDA    $C7     
       STA    $EC     
       LDA    $DF     
       STA    $EE     
       LDA    $D3     
       STA    COLUP0  
       LDA    #$32    
       STA    COLUP1  
       LDA    $D9     
       STA    HMP0    
       AND    #$0F    
       TAY            
       LDA    $EB     
       STA    HMP1    
       AND    #$0F    
       TAX            
       STA    WSYNC   
       LDA    #$05    
       STA    $F2     
       LDA    $CD     
       STA    $ED     
L1218: DEY            
       BNE    L1218   
       STA    RESP0   
       STA    WSYNC   
       NOP            
       NOP            
       LDA    #$10    
       STA    NUSIZ0  
       LDY    #$14    
L1227: DEX            
       BNE    L1227   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       LDA    $E5     
       STA    $EF     
       LSR            
       LSR            
       STA    REFP1   
       LDA    $CD     
       STA    $ED     
       LSR            
       LSR            
       STA    REFP0   
       RTS            

L1241: LDA    ($EE),Y 
       STA    GRP1    
       STA    WSYNC   
       LDA    ($EC),Y 
       STA    GRP0    
       LDA    L19AC,Y 
       STA    PF0     
       LDA    L19CA,Y 
       STA    PF1     
       STA    PF2     
       LDA    ($BB),Y 
       STA    ENAM0   
       LDA    ($BB),Y 
       STA    HMCLR   
       DEY            
       LDX    $F2     
       BNE    L126B   
       CPY    #$0A    
       BCS    L126B   
       JMP    L1315   
L126B: CPY    #$04    
       BNE    L1241   
       STA    WSYNC   
       LDA    ($EC),Y 
       STA    GRP0    
       LDA    ($EE),Y 
       STA    GRP1    
       LDA    ($BB),Y 
       STA    ENAM0   
       DEX            
       STX    $F2     
       LDA    $C8,X   
       STA    $F0     
       LDA    $D4,X   
       STA    HMP0    
       AND    #$0F    
       TAX            
       DEY            
       LDA    ($EE),Y 
       STA    $F1     
       LDA    ($EC),Y 
       BIT    $F0     
       BPL    L12A6   
       STA    WSYNC   
       STA    GRP0    
       LDA    $F1     
       STA    GRP1    
       DEY            
       LDX    #$00    
       STX    HMP0    
       JMP    L12B4   
L12A6: STA    WSYNC   
       STA    GRP0    
       LDA    $F1     
       STA    GRP1    
       DEY            
L12AF: DEX            
       BNE    L12AF   
       STA    RESP0   
L12B4: STA    WSYNC   
       STA    HMOVE   
       LDA    ($EC),Y 
       STA    GRP0    
       LDA    ($EE),Y 
       DEY            
       STA    GRP1    
       LDA    ($BB),Y 
       STA    ENAM0   
       LDA    ($EE),Y 
       STA    $F1     
       LDX    $F2     
       LDA    $DA,X   
       STA    $EE     
       LDA    $BD,X   
       STA    $BB     
       LDA    $E6,X   
       STA    HMP1    
       AND    #$0F    
       TAX            
       LDA    ($EC),Y 
       STA    WSYNC   
       STA    GRP0    
       LDA    $F1     
       STA    GRP1    
       DEY            
L12E5: DEX            
       BNE    L12E5   
       STA    RESP1   
       STX    HMP0    
       STA    WSYNC   
       STA    HMOVE   
       LDA    ($EC),Y 
       STA    GRP0    
       STX    GRP1    
       LDX    $F2     
       LDA    $E0,X   
       STA    $EF     
       LSR            
       LSR            
       STA    REFP1   
       LDA    $C2,X   
       STA    $EC     
       LDA    $C8,X   
       STA    $ED     
       LSR            
       LSR            
       STA    REFP0   
       LDA    $CE,X   
       STA    COLUP0  
       LDY    #$1D    
       JMP    L1241   
L1315: STA    WSYNC   
       LDX    #$00    
       STX    PF0     
       STX    PF1     
       STX    PF2     
       STX    GRP0    
       STX    GRP1    
       STX    ENAM1   
       LDX    #$07    
       STX    $ED     
       STA    WSYNC   
L132B: DEX            
       BNE    L132B   
       NOP            
       STA    RESP0   
       STA    RESP1   
       STA    HMCLR   
       LDA    #$10    
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       STX    REFP0   
       STX    REFP1   
       INX            
       STX    VDELP0  
       STX    VDELP1  
       LDX    #$03    
       STX    NUSIZ0  
       STX    NUSIZ1  
       LDX    #$05    
       LDY    $98     
L1350: LDA    $99,X   
       PHA            
       TXA            
       ASL            
       TAX            
       PLA            
       STA    $BB,X   
       STY    $BC,X   
       TXA            
       LSR            
       TAX            
       DEX            
       BPL    L1350   
       INX            
       LDA    $89     
       BNE    L136B   
       LDA    $B0     
       AND    #$0E    
       TAX            
L136B: LDA    L10C3,X 
       STA    COLUP0  
       STA    COLUP1  
       JSR    L139A   
       LDX    #$05    
       LDY    $B1     
L1379: LDA    $B2,X   
       PHA            
       TXA            
       ASL            
       TAX            
       PLA            
       STA    $BB,X   
       STY    $BC,X   
       TXA            
       LSR            
       TAX            
       DEX            
       BPL    L1379   
       LDY    #$07    
       STY    $ED     
       JSR    L139A   
       STA    VDELP0  
       STA    VDELP1  
       STA    NUSIZ0  
       STA    NUSIZ1  
       RTS            

L139A: LDY    $ED     
       LDA    ($BB),Y 
       STA    GRP0    
       STA    WSYNC   
       LDA    ($C1),Y 
       STA    GRP1    
       LDA    ($BD),Y 
       STA    GRP0    
       LDA    ($C3),Y 
       STA    $EE     
       LDA    ($BF),Y 
       TAX            
       LDA    ($C5),Y 
       TAY            
       LDA    $EE     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STY    GRP0    
       DEC    $ED     
       BPL    L139A   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    GRP0    
       RTS            

L13CB: .byte $A5,$AB,$85,$EC,$A5,$AA,$85,$ED,$A9,$00,$A2,$08,$46,$EC,$90,$03
       .byte $18,$65,$ED,$6A,$66,$AA,$CA,$D0,$F3,$18,$A5,$AA,$65,$AC,$85,$AA
       .byte $60
L13EC: STY    $ED     
       STA    $EC     
       CLC            
       ADC    $ED     
       LDY    $ED     
       BPL    L1403   
       LDY    $EC     
       BPL    L1412   
       TAY            
       BMI    L1412   
       CLC            
       ADC    #$F1    
       BNE    L1412   
L1403: LDY    $EC     
       BMI    L1412   
       TAY            
       AND    #$F0    
       CMP    #$70    
       TYA            
       BCC    L1412   
       CLC            
       ADC    #$0F    
L1412: TAY            
       JSR    L1426   
       CMP    #$25    
       BCC    L1420   
       CMP    #$BE    
       BCS    L1423   
       TYA            
       RTS            

L1420: LDA    #$12    
       RTS            

L1423: LDA    #$8B    
       RTS            

L1426: STA    $EC     
       EOR    #$F0    
       CLC            
       ADC    #$70    
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $ED     
       LDA    $EC     
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    $ED     
       RTS            

L143C: .byte $2C,$82,$02,$70,$1F,$A5,$AE,$29,$07,$D0,$0D,$2C,$82,$02,$30,$08
       .byte $E6,$AD,$30,$04,$A9,$80,$85,$AD,$A6,$AD,$86,$9F,$A9,$AA,$85,$A0
       .byte $B5,$00,$85,$A1,$60
L1461: LDA    $A4     
       AND    #$01    
       TAX            
       LDA    $A2,X   
       AND    #$0F    
       TAX            
       LDA    $AE     
       AND    L14F0,X 
       BNE    L14B6   
       LDX    #$05    
L1474: LDA    $89,X   
       BEQ    L14B3   
       LDA    $8F,X   
       CMP    #$04    
       BCS    L14B7   
       TAY            
       LDA    #$14    
       STA    $ED     
       LDA    L14F7,Y 
       STA    $EC     
       LDA    $A2     
       LSR            
       LSR            
       LSR            
       LSR            
       CPY    #$02    
       BCS    L149F   
       TAY            
       LDA    ($EC),Y 
       TAY            
       LDA    $83,X   
       JSR    L13EC   
       STA    $83,X   
       BNE    L14B3   
L149F: TAY            
       LDA    ($EC),Y 
       CLC            
       ADC    $89,X   
       CMP    #$A0    
       BCC    L14AB   
       LDA    #$A0    
L14AB: CMP    #$0A    
       BCS    L14B1   
       LDA    #$0A    
L14B1: STA    $89,X   
L14B3: DEX            
       BPL    L1474   
L14B6: RTS            

L14B7: LDA    $AE     
       AND    #$07    
       BNE    L14B3   
       INC    $8F,X   
       LDA    $8F,X   
L14C1: CMP    #$06    
       BNE    L14B3   
       LDA    #$00    
       STA    $89,X   
       STA    $8F,X   
       BEQ    L14B3   
       ORA    ($01,X) 
       ORA    ($02,X) 
       .byte $02 ;.JAM
       .byte $02 ;.JAM
       .byte $03 ;.SLO
       .byte $03 ;.SLO
       .byte $03 ;.SLO
       .byte $FF ;.ISB
       .byte $FF ;.ISB
       .byte $FF ;.ISB
L14D9: INC    $FEFE,X 
       SBC    $FDFD,X 
       BPL    L14F1   
       BPL    L1503   
       JSR    $3020   
       BMI    L1518   
       BEQ    L14DA   
       BEQ    L14CC   
       CPX    #$E0    
       BNE    L14C0   
L14F0: BNE    L14F2   
L14F2: ORA    ($01,X) 
       .byte $03 ;.SLO
       .byte $03 ;.SLO
       .byte $03 ;.SLO
L14F7: DEC    $D5E7,X 
       CPY    $AEA5   
       AND    #$04    
       STA    $EC     
       LSR            
       STA    $ED     
       LDY    #$03    
       LDX    $A9     
L1508: LDA    $8F,X   
       CMP    #$04    
       BCS    L1557   
L150E: LDA    $89,X   
       BEQ    L1557   
       CMP    L159F,Y 
       BNE    L1529   
L1517: LDA    $83,X   
       CMP    L15A3,Y 
       BNE    L1529   
       TYA            
       ORA    $EC     
       TAY            
       LDA    L15A7,Y 
       STA    $8F,X   
       BPL    L1557   
L1529: DEY            
       BPL    L150E   
       LDY    $8F,X   
       CPY    #$02    
       BCS    L153E   
       LDY    #$02    
       LDA    $83,X   
       CMP    #$8B    
       BEQ    L1550   
       CMP    #$12    
       BEQ    L1550   
L153E: LDY    $8F,X   
       CPY    #$02    
       BCC    L1557   
       LDY    #$00    
       LDA    $89,X   
       CMP    #$0A    
       BEQ    L1550   
       CMP    #$A0    
       BNE    L1557   
L1550: LDA    $ED     
       BEQ    L1555   
       INY            
L1555: STY    $8F,X   
L1557: DEX            
       DEX            
       BPL    L1508   
       LDY    $A9     
L155D: LDA.wy $008F,Y 
       CMP    #$04    
       BCS    L1569   
       LDA.wy $0089,Y 
       BNE    L156C   
L1569: DEY            
       BPL    L155D   
L156C: STA    $ED     
       LDA.wy $0083,Y 
       JSR    L1895   
       BNE    L159E   
       LDX    $ED     
       BNE    L1588   
L157A: LDX    #$02    
       LDA.wy $0089,Y 
       CMP    $81     
       BEQ    L1588   
       BCS    L159C   
       INX            
       BPL    L159C   
L1588: LDX    #$01    
       LDA.wy $0083,Y 
       AND    #$0F    
       STA    $EC     
       LDA    $80     
       AND    #$0F    
       CMP    $EC     
       BEQ    L157A   
       BCS    L159C   
       DEX            
L159C: STX    $8F,Y   
L159E: RTS            

L159F: .byte $A0,$A0,$0A,$0A
L15A3: .byte $12,$8B,$12,$8B
L15A7: .byte $01,$00,$01,$00,$02,$02,$03,$03
L15AF: LDA    $BA     
       LSR            
       BCS    L15D8   
L15B4: LDX    #$00    
       LDY    $A4     
       BEQ    L15BB   
       INX            
L15BB: LDA    $82     
       AND    #$F0    
       LDY    $A5     
       BPL    L15C9   
       LDY    INPT4,X 
       BMI    L15C9   
       ORA    #$0F    
L15C9: STA    $BA     
       LDA    $80     
       STA    $B9     
       LDA    $81     
       BEQ    L15D5   
       ADC    #$04    
L15D5: STA    $B8     
       RTS            

L15D8: LDY    #$E0    
       LDA    $BA     
       BPL    L15E3   
       ASL            
       BMI    L15F3   
       LDY    #$20    
L15E3: LDA    $B9     
       JSR    L13EC   
       STA    $B9     
       CMP    #$12    
       BEQ    L15B4   
       CMP    #$8B    
       BEQ    L15B4   
       RTS            

L15F3: LDY    #$02    
       ASL            
       BMI    L15FA   
       LDY    #$FE    
L15FA: CLC            
       TYA            
       ADC    $B8     
       STA    $B8     
       CMP    #$0D    
       BCC    L15B4   
       CMP    #$A5    
       BCS    L15B4   
       RTS            

L1609: LDX    #$04    
       LDA    #$17    
       STA    $BB     
L160F: STA    $BD,X   
       DEX            
       BPL    L160F   
       LDA    #$1C    
       STA    $BC     
       LDA    $82     
       BEQ    L1641   
       LDA    $B8     
L161E: INX            
       SEC            
       SBC    #$1E    
       BCS    L161E   
       EOR    #$FF    
       ADC    #$18    
       CPX    #$05    
       BEQ    L1630   
       STA    $BD,X   
       BNE    L1632   
L1630: STA    $BB     
L1632: STA    WSYNC   
       LDA    $B9     
       STA    HMM0    
       AND    #$0F    
       NOP            
       TAX            
L163C: DEX            
       BNE    L163C   
       STA    RESM0   
L1641: RTS            

L1642: LDA    $82     
       BEQ    L165B   
       LDA    $81     
       STA    $EF     
       LDA    $80     
       JSR    L1702   
       BMI    L1699   
       LDA    #$02    
       STA    $A5     
       LDA    #$00    
       STA    $82     
       STA    $B8     
L165B: DEC    $B0     
       DEC    $B0     
       BNE    L1699   
       LDY    L1879   
       LDA    $A2     
       AND    #$0F    
       TAX            
       DEX            
L166A: LDA    L1A0F,X 
       STA    $89,X   
       STY    $83,X   
       DEX            
       BPL    L166A   
       LDX    #$03    
       JSR    L10C4   
       STX    $A5     
       LDA    #$01    
       LDY    #$0F    
       LDX    $A4     
       BEQ    L1687   
       LDA    #$10    
       LDY    #$F0    
L1687: STA    $EC     
       STY    $ED     
       LDA    $A8     
       SEC            
       SBC    $EC     
       TAX            
       AND    $ED     
       BNE    L1697   
       STA    $A5     
L1697: STX    $A8     
L1699: RTS            

L169A: LDA    #$1F    
       STA    $B1     
       LDX    #$05    
       LDA    #$50    
L16A2: STA    $B2,X   
       DEX            
       BPL    L16A2   
       LDA    $A8     
       LDX    $A4     
       BEQ    L16B1   
       LSR            
       LSR            
       LSR            
       LSR            
L16B1: AND    #$0F    
       TAY            
       DEY            
       CPY    #$06    
       BCC    L16BB   
       LDY    #$05    
L16BB: LDA    #$A0    
L16BD: LDX    L16C6,Y 
       STA    $B2,X   
       DEY            
       BPL    L16BD   
       RTS            

L16C6: .byte $00,$03,$01,$04,$02,$05
L16CC: LDA    $BA     
       LSR            
       BCC    L1700   
       LDA    $B8     
       STA    $EF     
       LDA    $B9     
       JSR    L1702   
       BMI    L1701   
       LDA    #$00    
       STA    $BA     
       LDA    #$04    
       STA    $8F,X   
       SED            
       CLC            
       LDA    $A2     
       AND    #$F0    
       ADC    $A1     
       STA    $A1     
       BCC    L1700   
       LDA    $A0     
       ADC    #$00    
       STA    $A0     
       BCC    L1700   
       LDA    $9F     
       ADC    #$00    
       STA    $9F     
       INC    $A8     
L1700: CLD            
L1701: RTS            

L1702: JSR    L1426   
       STA    $EE     
       LDX    #$05    
L1709: LDA    $8F,X   
       CMP    #$04    
       BCS    L1727   
       LDA    $89,X   
       SBC    $EF     
       CMP    #$FA    
       BCC    L1727   
       LDA    $83,X   
       JSR    L1426   
       SEC            
       SBC    $EE     
       CMP    #$02    
       BCC    L172B   
       CMP    #$FA    
       BCS    L172B   
L1727: DEX            
       BPL    L1709   
       RTS            

L172B: TXA            
       RTS            

L172D: LDX    #$00    
       LDY    #$00    
L1731: LDA    $89,X   
       BEQ    L1743   
       STA.wy $0089,Y 
       LDA    $83,X   
       STA.wy $0083,Y 
       LDA    $8F,X   
       STA.wy $008F,Y 
       INY            
L1743: INX            
       CPX    #$06    
       BNE    L1731   
       STY    $EC     
       LDA    $A4     
       AND    #$01    
       TAX            
       LDA    $A2,X   
       AND    #$F0    
       ORA    $EC     
       STA    $A2,X   
       CPY    #$06    
       BEQ    L1764   
       LDX    #$00    
L175D: STX    $89,Y   
       INY            
       CPY    #$06    
       BNE    L175D   
L1764: RTS            

L1765: LDX    $A4     
       LDA    $A2,X   
       AND    #$0F    
       BNE    L17C8   
       LDA    #$02    
       STA    $A5     
       TAX            
L1772: LDA    $9F,X   
       STA    $EC,X   
       DEX            
       BPL    L1772   
       INX            
       STX    $A1     
       LDA    #$AA    
       STA    $9F     
       LDA    $A2     
       STA    $A0     
       JSR    L110A   
       LDX    #$02    
L1789: LDA    $EC,X   
       STA    $9F,X   
       DEX            
       BPL    L1789   
       LDX    #$06    
L1792: LDA    L17C9,X 
       STA    $B1,X   
       DEX            
       BPL    L1792   
       DEC    $B0     
       DEC    $B0     
       BNE    L17C8   
       SED            
       CLC            
       LDA    $A2     
       AND    #$F0    
       ADC    $A0     
       STA    $A0     
       BCC    L17B4   
       LDA    $9F     
       ADC    #$00    
       STA    $9F     
       INC    $A8     
L17B4: CLD            
       LDA    $A2     
       CMP    #$90    
       BCS    L17C0   
       CLC            
       ADC    #$10    
       STA    $A2     
L17C0: LDX    #$19    
       JSR    L10C4   
       STX    $A5     
       INX            
L17C8: RTS            

L17C9: .byte $1F,$50,$80,$90,$50,$88,$98
L17D0: LDA    #$1D    
       STA    $EE     
       LDA    $A5     
       BPL    L1832   
       LDA    SWCHA   
       LDX    $A4     
       BEQ    L17E3   
       ASL            
       ASL            
       ASL            
       ASL            
L17E3: AND    #$F0    
       TAY            
       CMP    #$F0    
       BEQ    L1832   
       TAX            
       LDA    $AE     
       ORA    #$01    
       STA    $AC     
       AND    #$FD    
       STA    $AB     
       TXA            
       LDX    #$FF    
       EOR    $82     
       BEQ    L1806   
       LDX    #$01    
       CMP    #$C0    
       BEQ    L1806   
       CMP    #$30    
       BNE    L1825   
L1806: STX    $EC     
       LDX    $A7     
       LDA    $AE     
       AND    L1883,X 
       BNE    L1832   
       TXA            
       CLC            
       ADC    $EC     
       BPL    L1819   
       LDA    #$00    
L1819: STA    $A7     
       CMP    #$03    
       BNE    L1832   
       STY    $82     
       DEC    $A7     
       BNE    L1832   
L1825: LDA    $81     
       STA    $ED     
       LDA    $80     
       JSR    L1895   
       BNE    L1832   
       STY    $82     
L1832: LDA    $82     
       BEQ    L1886   
       LDX    #$04    
L1838: DEX            
       ASL            
       BCS    L1838   
       LDA    L1871,X 
       STA    $C2     
       CPX    #$02    
       BNE    L1849   
       LDA    #$3D    
       STA    $EE     
L1849: LDA    $AE     
       AND    $A7     
       BNE    L1870   
       LDA    $A5     
       BPL    L1870   
       LDY    L1875,X 
       TYA            
       LSR            
       BCC    L1869   
       CLC            
       TYA            
       ADC    $81     
       CMP    #$A1    
       BCS    L1870   
       CMP    #$0A    
       BCC    L1870   
       STA    $81     
       RTS            

L1869: LDA    $80     
       JSR    L13EC   
       STA    $80     
L1870: RTS            

L1871: .byte $50,$28,$00,$00
L1875: .byte $01,$FF,$10,$F0
L1879: .byte $12,$03,$F4,$E5,$D6,$C7,$B8,$A9,$9A,$8B
L1883: .byte $1F,$0F,$07
L1886: LDA    #$1C    
       STA    $EE     
       LDX    #$B0    
       BIT    $B0     
       BVS    L1892   
       LDX    #$D8    
L1892: STX    $C2     
       RTS            

L1895: LDX    #$09    
L1897: CMP    L1879,X 
       BEQ    L18A1   
       DEX            
       BPL    L1897   
       BMI    L18AD   
L18A1: LDX    #$05    
       LDA    $ED     
L18A5: CMP    L1A0F,X 
       BEQ    L18AD   
       DEX            
       BPL    L18A5   
L18AD: RTS            

L18AE: LDA    $C2     
       STA    $EC     
       LDX    #$05    
L18B4: LDA    #$1D    
       STA    $C8,X   
       LDA    #$D6    
       STA    $CE,X   
       LDA    #$00    
       STA    $C2,X   
       DEX            
       BPL    L18B4   
       INX            
       LDY    $80     
       LDA    $81     
       BEQ    L190C   
L18CA: SEC            
       SBC    #$1E    
       BCC    L18D2   
       INX            
       BPL    L18CA   
L18D2: EOR    #$FF    
       PHA            
       SEC            
       ADC    $EC     
       STA    $C2,X   
       STY    $D4,X   
       LDA    $EE     
       STA    $C8,X   
       LDA    #$D6    
       STA    $CE,X   
       PLA            
       CMP    #$1A    
       BCC    L18ED   
       LDA    $EE     
       BNE    L1907   
L18ED: CMP    #$0A    
       BCS    L190C   
       SEC            
       ADC    #$1E    
       ADC    $EC     
       INX            
       CPX    #$06    
       BEQ    L190C   
       STA    $C2,X   
       STY    $D4,X   
       LDA    #$D6    
       STA    $CE,X   
       LDA    $EE     
       STA    $C8,X   
L1907: DEX            
       ORA    #$80    
       STA    $C8,X   
L190C: RTS            

L190D: LDA    $AE     
       AND    #$01    
       BNE    L191B   
       DEC    $A9     
       BPL    L191B   
       LDX    #$05    
       STX    $A9     
L191B: ORA    #$04    
       TAY            
L191E: LDX    #$FF    
       STX    $F2     
       INX            
       STX    $DA,Y   
L1925: LDA    #$00    
       STA    $EC,X   
       LDA    $89,X   
       BEQ    L193F   
       CMP    L199A,Y 
       BCC    L193F   
       CMP    L19A0,Y 
       BCS    L193F   
       TXA            
       INC    $F2     
       LDX    $F2     
       STA    $EC,X   
       TAX            
L193F: INX            
       CPX    #$06    
       BNE    L1925   
       LDX    $A9     
       LDA    $F2     
       BMI    L198F   
       BEQ    L1964   
       CMP    #$01    
       BNE    L1955   
       TXA            
       AND    #$01    
       BPL    L1964   
L1955: CMP    $A9     
       BCS    L1965   
       SEC            
L195A: SBC    $A9     
       EOR    #$FF    
       CMP    $F2     
       BEQ    L1964   
       BCS    L195A   
L1964: TAX            
L1965: LDA    $EC,X   
       TAX            
       LDA    $83,X   
       STA.wy $00E6,Y 
       LDA    $89,X   
       PHA            
       LDA    $8F,X   
       TAX            
       LDA    L1994,X 
       STA    $F2     
       LDA    #$1C    
       CPX    #$00    
       BNE    L1980   
       ORA    #$20    
L1980: STA.wy $00E0,Y 
       PLA            
       SEC            
       SBC    L19A6,Y 
       EOR    #$FF    
       ADC    $F2     
       STA.wy $00DA,Y 
L198F: DEY            
       DEY            
       BPL    L191E   
       RTS            

L1994: .byte $38,$39,$60,$88,$B0,$D8
L199A: .byte $01,$14,$33,$52,$71,$90
L19A0: .byte $1F,$3E,$5D,$7C,$9B,$AA
L19A6: .byte $1E,$3C,$5A,$78,$96,$B4
L19AC: .byte $60,$60,$60,$60,$60,$60,$60,$60,$60,$E0,$E0,$E0,$E0,$E0,$E0,$E0
       .byte $E0,$E0,$E0,$E0,$E0,$60,$60,$60,$60,$60,$60,$60,$60,$60
L19CA: .byte $66,$66,$66,$66,$66,$66,$66,$66,$66,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$66,$66,$66,$66,$66,$66,$66,$66,$66,$02,$02
       .byte $02,$02,$02,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$02,$02,$02,$02,$02,$02
L1A06: .byte $8B,$0A,$E0,$12,$12,$12,$12,$12,$12
L1A0F: .byte $A0,$82,$64,$46,$28,$0A,$01,$01,$01,$01,$01,$01,$00,$00,$00,$1F
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$16,$16,$00,$00,$00,$00,$44
       .byte $00,$7F,$1D,$A1,$00,$00,$00,$44,$00,$7F,$1D,$A1,$00,$00,$44,$00
       .byte $7F,$1D,$A1,$1D,$A1,$44,$00,$7F,$1D,$A1,$00,$00,$44,$00,$7F,$1D
       .byte $A1,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$02,$02,$02,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$C0,$E0,$F0,$78,$3C,$78,$F0,$E0
       .byte $C0,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$10
       .byte $10,$38,$38,$7C,$7C,$EE,$EE,$C6,$C6,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$C6,$C6,$EE,$EE,$7C,$7C,$38,$38,$10
       .byte $10,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$40
       .byte $09,$24,$00,$52,$18,$29,$40,$12,$04,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$82,$10,$41,$00,$04,$10,$42,$08,$80
       .byte $21,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $EE,$EE,$44,$FF,$FD,$FF,$44,$EE,$EE,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$38,$AA,$EE,$FE,$BA,$38,$BA,$FE,$FE
       .byte $BA,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$BA
       .byte $FE,$FE,$BA,$38,$BA,$FE,$EE,$AA,$38,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$F0,$F0,$12,$7A,$7D,$7D,$7A,$12,$F0
       .byte $F0,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$08
       .byte $14,$14,$08,$3E,$7F,$5D,$5D,$55,$41,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$41,$55,$5D,$5D,$7F,$3E,$08,$14,$14
       .byte $08,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
L1DFD: .byte $00
L1DFE: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$38,$AA,$EE,$FE,$BA,$38,$BA,$FE
       .byte $FE,$BA,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $BA,$FE,$FE,$BA,$38,$BA,$FE,$EE,$AA,$38,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$02,$02,$02,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00
L1EA5: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00
L1EFE: .byte $00,$00,$3C,$7E,$66,$66,$66,$66,$7E,$3C,$3C,$3C,$18,$18,$18,$18
       .byte $38,$18,$7E,$7E,$60,$7C,$3E,$06,$7E,$3C,$3C,$7E,$06,$0C,$0C,$06
       .byte $7E,$3C,$0C,$0C,$7E,$7E,$6C,$6C,$3C,$1C,$3C,$7E,$06,$7E,$7C,$60
       .byte $7E,$7E,$3C,$7E,$66,$7E,$7C,$60,$7E,$3C,$60,$30,$18,$0C,$06,$06
       .byte $7E,$7E,$3C,$7E,$66,$3C,$3C,$66,$7E,$3C,$3C,$7E,$06,$3E,$7E,$66
       .byte $7E,$3C,$00,$00,$00,$00,$00,$00,$00,$00,$7C,$7E,$66,$7C,$7C,$66
       .byte $7E,$7C,$3C,$7E,$66,$60,$60,$66,$7E,$3C,$7C,$7E,$66,$66,$66,$66
       .byte $7E,$7C,$7E,$7E,$60,$78,$78,$60,$7E,$7E,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$F9,$F9,$99,$F1,$F1,$99,$F9,$F9,$E4,$E4,$24,$25,$25,$27
       .byte $E6,$E6,$4F,$CF,$C8,$C8,$C8,$48,$48,$48,$9F,$9F,$81,$9F,$9F,$90
       .byte $9F,$9F,$5A,$7E,$5A,$18,$5A,$7E,$5A,$18,$18,$18,$0C,$0C,$06,$06
       .byte $1F,$0F,$CD,$CD,$7D,$6D,$2D,$3D,$9D,$CD,$86,$8E,$8C,$9C,$D9,$79
       .byte $33,$F3,$7C,$7C,$CC,$D8,$98,$80,$F0,$F0,$67,$F4,$D5,$87,$87,$D5
       .byte $F4,$67,$B8,$BC,$84,$1C,$38,$A0,$BC,$9C,$67,$F5,$97,$B1,$81,$97
       .byte $F0,$60,$54,$55,$55,$7D,$29,$00,$00,$00,$9C,$DC,$04,$DC,$50,$9C
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$10
       .byte $00,$00
