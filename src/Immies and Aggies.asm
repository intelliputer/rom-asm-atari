; Disassembly of roms/Immies and Aggies.bin
; Disassembled Tue Oct  6 15:21:50 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Immies and Aggies.bin
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
COLUBK  =  $09
CTRLPF  =  $0A
REFP1   =  $0C
PF0     =  $0D
PF2     =  $0F
RESP0   =  $10
RESP1   =  $11
RESM0   =  $12
RESM1   =  $13
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
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296
L159D   =   $159D
L15F3   =   $15F3
L1646   =   $1646
L164A   =   $164A
L164E   =   $164E

       ORG $1000

START:
       SEI            
       CLD            
       LDX    #$00    
       TXA            
L1005: STA    VSYNC,X 
       TXS            
       INX            
       BNE    L1005   
       LDX    #$06    
L100D: LDA    L101F,X 
       STA    $90,X   
       DEX            
       BPL    L100D   
       STA    $BB     
       STA    $82     
       JSR    L1A2A   
       JMP    L149A   
L101F: .byte $5A,$A8,$8A,$D6,$2E,$24,$36
L1026: .byte $00,$00,$34,$00,$08,$46,$C6,$6C,$9C,$8C
L1030: .byte $00,$00
L1032: .byte $00,$20,$A0,$A0,$A0
L1037: .byte $FB,$FD,$FE
L103A: .byte $80,$04,$00,$80,$06,$05,$07,$06,$02,$03,$01,$02,$80,$04,$00,$80
L104A: .byte $00,$FF
L104C: .byte $FF,$FF,$00,$01,$01,$01,$00,$FF
L1054: .byte $00,$FE
L1056: .byte $FD,$FE,$00,$02,$03,$02,$00
L105D: .byte $FE,$80,$5A,$4C,$40,$00,$35,$00,$31,$2D,$00,$00,$26,$00,$00,$00
L106D: .byte $20,$FF,$BF,$A0,$8F,$80,$78,$80,$6C,$68,$80,$80,$59,$80,$80,$80
       .byte $51
L107E: .byte $01
L107F: .byte $FF,$00,$E0,$E0,$C0,$C0,$C0
L1086: .byte $C0,$80,$80,$82,$80,$84,$82,$86
L108E: .byte $16,$12,$12,$12,$16,$1A,$1A,$1A
L1096: .byte $59,$59,$5D,$61,$61,$61,$5D,$59
L109E: .byte $00,$00,$00,$05,$07,$07,$05
L10A5: .byte $00,$00,$10,$20,$30,$30,$20,$10
L10AD: LDX    #$09    
L10AF: LDA    L1026,X 
       STA    $86,X   
       DEX            
       BPL    L10AF   
       STA    WSYNC   
       STA    COLUBK  
       LDX    $B0     
       DEC    $86     
       NOP            
       LDA    $8A,X   
       STA    COLUP0  
       STA    COLUP1  
       DEX            
       BMI    L10D0   
       DEC    $86     
       DEC    $86     
       NOP            
       NOP            
       NOP            
L10D0: STA    RESP0   
       STA    RESP1   
       SEC            
       STA    WSYNC   
       LDA    $97     
L10D9: SBC    #$0F    
       BCS    L10D9   
       EOR    #$07    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    HMBL    
       STA    RESBL   
       STA    WSYNC   
       STA    HMOVE   
       LDX    #$00    
       LDA    $E5     
       BEQ    L10F3   
       LDX    #$02    
L10F3: LDA    INTIM   
       BPL    L10F3   
       STA    WSYNC   
       STX    VBLANK  
       STA    WSYNC   
       STA    WSYNC   
       LDY    #$07    
       LDA    $B0     
       BNE    L1130   
L1106: STY    $86     
       LDA    ($F6),Y 
       TAX            
       LDA    ($F8),Y 
       STA    $8A     
       STA    WSYNC   
       LDA    ($EE),Y 
       STA    GRP0    
       LDA    ($F0),Y 
       STA    GRP1    
       LDA    ($F2),Y 
       STA    GRP0    
       LDA    ($F4),Y 
       LDY    $8A     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       LDY    $86     
       DEY            
       BPL    L1106   
       BMI    L1158   
L1130: STY    $86     
       STA    WSYNC   
       LDA    ($F6),Y 
       TAX            
       LDA    ($F8),Y 
       STA    $8A     
       LDA    ($EE),Y 
       STA    GRP0    
       LDA    ($F0),Y 
       STA    GRP1    
       LDA    ($F2),Y 
       STA    GRP0    
       LDA    ($F4),Y 
       LDY    $8A     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       LDY    $86     
       DEY            
       BPL    L1130   
L1158: STA    WSYNC   
       STA    HMCLR   
       INY            
       STY    GRP0    
       STY    GRP1    
       STY    VDELP0  
       STY    VDELP1  
       STY    CTRLPF  
       LDX    #$04    
L1169: STA    WSYNC   
       DEX            
       BPL    L1169   
       LDA    $8C     
       STA    COLUPF  
       LDY    #$06    
       LDX    $AC     
L1176: STA    WSYNC   
       LDA    L1032,X 
       STA    PF2     
       JSR    L1AE4   
       LDA    L1030,X 
       STA    PF0     
       JSR    L1AE7   
       LDA    #$00    
       STA    PF2     
       STA    PF0     
       DEY            
       BPL    L1176   
       LDX    #$04    
L1193: STA    WSYNC   
       DEX            
       BPL    L1193   
       LDA    #$01    
       STA    CTRLPF  
       LDY    $AE     
       LDX    #$07    
       LDA    $90     
       STA    $8A     
       LDA    #$1C    
       STA    $8B     
       LDA    $82     
       EOR    #$FF    
       AND    #$0C    
       LSR            
       LSR            
L11B0: STA    $86     
L11B2: STA    WSYNC   
       LDA    $8A     
       STA    COLUBK  
       LDA    #$F0    
       STA    PF2     
       LDA    $BB     
       DEY            
       BPL    L11C3   
       LDA    #$00    
L11C3: STA    COLUPF  
       DEC    $8B     
       BEQ    L11D6   
       DEC    $86     
       BPL    L11B2   
       LDA    $8F,X   
       STA    $8A     
       LDA    #$03    
       DEX            
       BPL    L11B0   
L11D6: STA    WSYNC   
       LDA    $87     
       STA    COLUBK  
       LDA    #$00    
       STA    PF2     
       LDA    $90     
       STA    COLUPF  
       LDA    #$FF    
       STA    $87     
       LDA    $98     
       STA    $F0     
       LDX    #$04    
L11EE: STA    CXCLR   
       LDY    #$01    
       DEC    $F0     
       BNE    L11F7   
       INY            
L11F7: STA    WSYNC   
       STY    ENABL   
       LDA    $D0,X   
       STA    HMP0    
       LDA    $D5,X   
       STA    HMP1    
       LDA    $DA,X   
       STA    HMM0    
       LDA    $DF,X   
       STA    RESP0   
       STA.w  $0023   
       LDA    $BC,X   
       STA    RESP1   
       STA.w  $0006   
       LDA    $C1,X   
       STA    RESM0   
       STA.w  $0007   
       LDA    $C6,X   
       STA    RESM1   
       STA    NUSIZ0  
       LDA    $CB,X   
       STA    NUSIZ1  
       LDY    #$01    
       STA    HMOVE   
       DEC    $F0     
       BNE    L122F   
       INY            
L122F: STY    ENABL   
       LDY    #$01    
       DEC    $F0     
       BNE    L1238   
       INY            
L1238: STA    WSYNC   
       STA    HMOVE   
       STY    ENABL   
       LDY    #$C0    
       LDA    $D0,X   
       AND    #$06    
       BEQ    L1248   
       STY    GRP0    
L1248: LDA    $D5,X   
       AND    #$06    
       BEQ    L1250   
       STY    GRP1    
L1250: LDY    #$02    
       LDA    $DA,X   
       AND    #$06    
       BEQ    L125A   
       STY    ENAM0   
L125A: LDA    $DF,X   
       AND    #$06    
       BEQ    L1262   
       STY    ENAM1   
L1262: LDY    #$0D    
L1264: STA    WSYNC   
       LDA    #$00    
       DEC    $F0     
       BNE    L126E   
       LDA    #$02    
L126E: STA    ENABL   
       DEY            
       BPL    L1264   
       INY            
       STY    GRP0    
       STY    GRP1    
       STY    ENAM0   
       STY    ENAM1   
       DEC    $F0     
       BNE    L1282   
       LDY    #$02    
L1282: STA    WSYNC   
       STY    ENABL   
       LDY    #$03    
L1288: LDA.wy $0002,Y 
       AND    #$40    
       BEQ    L1293   
       STY    $8C     
       STX    $87     
L1293: DEY            
       BPL    L1288   
       STA    WSYNC   
       INY            
       DEC    $F0     
       BNE    L129F   
       LDY    #$02    
L129F: STY    ENABL   
       DEX            
       BMI    L12A7   
       JMP    L11EE   
L12A7: INX            
       STX    NUSIZ0  
       LDA    $8D     
       STA    COLUP0  
       LDA    $8E     
       STA    COLUP1  
       LDY    $88     
       LDA    $9A     
       DEC    $F0     
       BNE    L12BC   
       LDX    #$02    
L12BC: STA    WSYNC   
       STX    ENABL   
       STY    COLUBK  
       SEC            
L12C3: SBC    #$0F    
       BCS    L12C3   
       EOR    #$07    
       ASL            
       ASL            
       ASL            
       ASL            
       STA.w  $0020   
       STA    RESP0   
       LDY    #$01    
       DEC    $F0     
       STA    WSYNC   
       STA    HMOVE   
       BNE    L12DD   
       INY            
L12DD: STY    ENABL   
       STA    CXCLR   
       LDX    $9B     
       LDA    $9D     
       STA    $86     
L12E7: LDY    #$01    
       DEC    $F0     
       BNE    L12EE   
       INY            
L12EE: LDA    #$00    
       DEX            
       CPX    #$08    
       BCS    L12F8   
       LDA    L1F50,X 
L12F8: DEC    $86     
       STA    HMCLR   
       STA    WSYNC   
       STA    GRP0    
       STY.w  $001F   
       BPL    L12E7   
       LDA    $A7     
       AND    #$0F    
       TAY            
L130A: DEY            
       BPL    L130A   
       STA    RESP1   
       STA    WSYNC   
       LDY    #$01    
       DEC    $F0     
       BNE    L1318   
       INY            
L1318: STY    ENABL   
       LDY    #$00    
       DEX            
       CPX    #$08    
       BCS    L1324   
       LDY    L1F50,X 
L1324: STY    GRP0    
       LDA    $A7     
       STA    HMP1    
       LDA    #$00    
       JSR    L197E   
       STA    WSYNC   
       STA    GRP0    
       STY    ENABL   
       LDA    $A8     
       STA    HMP1    
       AND    #$0F    
       TAY            
L133C: DEY            
       BPL    L133C   
       STA    RESP1   
       STA    WSYNC   
       LDY    #$01    
       DEC    $F0     
       BNE    L134A   
       INY            
L134A: STY    ENABL   
       LDY    #$00    
       DEX            
       CPX    #$08    
       BCS    L1356   
       LDY    L1F50,X 
L1356: STY    GRP0    
       LDA    #$01    
       JSR    L197E   
       STA    WSYNC   
       STA    GRP0    
       STY    ENABL   
       LDA    $A9     
       STA    HMP1    
       AND    #$0F    
       TAY            
L136A: DEY            
       BPL    L136A   
       STA    RESP1   
       STA    WSYNC   
       LDY    #$01    
       DEC    $F0     
       BNE    L1378   
       INY            
L1378: STY    ENABL   
       LDY    #$00    
       DEX            
       CPX    #$08    
       BCS    L1384   
       LDY    L1F50,X 
L1384: STY    GRP0    
       LDA    #$02    
       JSR    L197E   
       STA    WSYNC   
       STA    GRP0    
       STY    ENABL   
       SEC            
       LDA    #$21    
       SBC    $9D     
       STA    $86     
L1398: LDY    #$01    
       DEC    $F0     
       BNE    L139F   
       INY            
L139F: LDA    #$00    
       DEX            
       CPX    #$08    
       BCS    L13A9   
       LDA    L1F50,X 
L13A9: DEC    $86     
       STA    WSYNC   
       STA    GRP0    
       STY    ENABL   
       BPL    L1398   
       STA    HMCLR   
       STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    ENABL   
       STA    REFP1   
       LDA    $89     
       STA    COLUBK  
       LDA    $8F     
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$13    
       STA    RESP0   
       STA    RESP1   
       STA    HMP1    
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    VDELP0  
       STA    VDELP1  
       STA    WSYNC   
       STA    HMOVE   
       LDX    #$07    
       STX    $8B     
       LDA    $E4     
       AND    #$0F    
       CMP    #$08    
       BCS    L13EC   
       TAX            
L13EC: LDA    $80     
       CMP    #$40    
       BCS    L1427   
L13F2: STX    $86     
       LDY    L1F7F,X 
       STA    WSYNC   
       LDA    L1F87,X 
       STA    $8A     
       LDA    L1F5F,X 
       STA    GRP0    
       LDA    L1F67,X 
       STA    GRP1    
       LDA    L1F6F,X 
       STA    GRP0    
       LDA    L1F77,X 
       LDX    $8A     
       STA    GRP1    
       STY    GRP0    
       STX    GRP1    
       STA    GRP0    
       LDX    $86     
       DEX            
       BPL    L1421   
       LDX    #$07    
L1421: DEC    $8B     
       BPL    L13F2   
       BMI    L142D   
L1427: STA    WSYNC   
       DEC    $8B     
       BPL    L1427   
L142D: STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    GRP0    
       LDA    #$06    
       STA    TIM64T  
       INC    $82     
       LDA    $82     
       AND    #$0F    
       BNE    L1459   
       LDY    $96     
       LDX    #$05    
L1448: LDA    $90,X   
       STA    $91,X   
       DEX            
       BPL    L1448   
       STY    $90     
       LDA    $80     
       CMP    #$40    
       BCS    L1459   
       DEC    $E4     
L1459: LDA    SWCHB   
       LSR            
       BCS    L148F   
       LDX    #$01    
       STX    $80     
       STX    $AC     
       JSR    L1A08   
       STA    $B0     
       JSR    L1A14   
       JSR    L1A2A   
       JMP    L14B9   
L1473: .byte $08,$06,$04,$02,$08,$06,$04,$02,$02,$02,$06,$04,$02,$06
L1481: .byte $00,$00,$00,$00,$08,$06,$04,$02,$08,$04,$08,$08,$06,$04
L148F: LDY    #$00    
       LSR            
       BCS    L14B7   
       DEC    $84     
       BPL    L14B9   
       INC    $81     
L149A: JSR    L1A14   
       JSR    L1A08   
       TAY            
       LDA    $81     
       CMP    #$0E    
       BCC    L14AA   
       TYA            
       STA    $81     
L14AA: STY    $80     
       INY            
       STY    $B0     
       CMP    #$09    
       BCC    L14B5   
       STY    $B5     
L14B5: LDY    #$1E    
L14B7: STY    $84     
L14B9: BIT    $80     
       BPL    L14CC   
       BVS    L14C2   
       JMP    L1614   
L14C2: LDA    #$80    
       STA    $80     
       JSR    L1A46   
       JMP    L1792   
L14CC: INC    $85     
       BMI    L14DC   
       LDX    #$00    
       STX    $85     
       BIT    $80     
       BVC    L14DA   
       LDX    $B0     
L14DA: LDA    REFP1,X 
L14DC: BMI    L1558   
       LDX    #$0F    
       STX    $85     
       BVS    L1507   
       JSR    L1A08   
       STA    $B0     
       LDA    #$01    
       STA    $AC     
       LDY    $81     
       LDA    L1473,Y 
       STA    $B2     
       LDX    #$04    
       JSR    L19E2   
       STA    $B1     
       LDA    L1481,Y 
       STA    $B7     
       LDX    #$04    
       JSR    L19E2   
       STA    $B6     
L1507: LDA    #$C0    
       STA    $80     
       JSR    L1A2A   
       STA    $E7     
       STA    $E8     
       STA    $E5     
       LDA    #$01    
       STA    $AD     
       STA    $AE     
       LDA    #$F0    
       STA    $E6     
       LDA    SWCHB   
       LDX    $B0     
       BNE    L1526   
       ASL            
L1526: ASL            
       LDA    #$0F    
       BCS    L152D   
       LDA    #$1E    
L152D: STA    $AF     
       JSR    L1A46   
       LDX    #$04    
L1534: JSR    L1A8B   
       STA    $D0,X   
       JSR    L1A8B   
       STA    $D5,X   
       JSR    L1A8B   
       STA    $DA,X   
       JSR    L1A8B   
       STA    $DF,X   
       JSR    L1A7C   
       STA    $BC,X   
       JSR    L1A7C   
       STA    $C1,X   
       DEX            
       BPL    L1534   
       JMP    L188B   
L1558: LDA    $82     
       BNE    L1572   
       LDA    $80     
       CMP    #$02    
       BNE    L156B   
       LDA    $81     
       CMP    #$04    
       BCC    L156B   
       JSR    L1A68   
L156B: INC    $E6     
       BNE    L1572   
       SEC            
       ROR    $E6     
L1572: LDX    SWCHA   
       INX            
       BEQ    L157C   
       LDX    #$00    
       STX    $E6     
L157C: BIT    $E6     
       BPL    L1582   
       LDX    $E6     
L1582: STX    $E5     
       ASL    $E5     
       JSR    L1A46   
       LDX    $E7     
       BEQ    L15AE   
       DEC    $E9     
       BPL    L15E8   
       DEX            
       BNE    L1596   
       LDX    #$21    
L1596: STX    $E7     
       LDA    L15F3,X 
       JMP    L15C2   
L159E: .byte $13,$11,$0F,$0E,$0C,$0B,$9F,$09,$08
L15A7: .byte $07,$29,$28,$27,$28,$29,$2A
L15AE: LDX    $E8     
       BEQ    L15F1   
       DEC    $E9     
       BPL    L15E8   
       DEX            
       STX    $E8     
       BNE    L15BF   
       STX    AUDV0   
       BEQ    L15F1   
L15BF: LDA    L15A7,X 
L15C2: STA    $E9     
       AND    #$0F    
       TAX            
       LDA    L159D,X 
       STA    AUDF0   
       LDX    #$0C    
       ASL            
       BCC    L15D3   
       LDX    #$04    
L15D3: STX    AUDC0   
       LDA    #$67    
       STA    $ED     
       LDA    $E9     
       AND    #$F0    
       LSR            
       LSR            
       STA    $86     
       LSR            
       ADC    $86     
       TAX            
       DEX            
       STX    $E9     
L15E8: LDA    $ED     
       DEC    $ED     
       LSR            
       LSR            
       LSR            
       STA    AUDV0   
L15F1: JMP    L188B   
L15F4: .byte $21,$12,$13,$24,$13,$14,$25,$14,$13,$84,$23,$24,$43,$42,$44,$43
       .byte $85,$23,$44,$23,$22,$21,$23,$44,$23,$22,$21,$23,$44,$23,$22,$21
L1614: LDA    $87     
       BMI    L168D   
       LDX    #$0C    
       STX    $EB     
       LDA    $8C     
       ASL            
       ASL            
       ADC    $8C     
       ADC    $87     
       TAX            
       LDA    #$00    
       STA    $D0,X   
       LDA    $8C     
       LSR            
       LDA    $87     
       BCC    L1632   
       ADC    #$04    
L1632: TAX            
       LDA    $C6,X   
       LDY    $BC,X   
       LDX    $8C     
       CPX    #$02    
       BCC    L164E   
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       LDA    L1646,X 
       BPL    L1654   
       .byte $04 ;.NOP
       .byte $02 ;.JAM
       ORA    ($04,X) 
       .byte $02 ;.JAM
       BRK            
       ORA    ($29,X) 
       .byte $03 ;.SLO
       TAX            
       LDA    L164A,X 
L1654: SED            
       LDX    $AC     
       JSR    L19E2   
       CLD            
       CPY    $BB     
       SED            
       BEQ    L167E   
       LDX    #$02    
       LDY    #$00    
       SEC            
       STA    $86     
L1667: LDA    $B3,X   
       SBC    $86     
       STA    $B3,X   
       STY    $86     
       DEX            
       BPL    L1667   
       BCS    L167A   
       STY    $B3     
       STY    $B4     
       STY    $B5     
L167A: CLD            
       JMP    L1689   
L167E: LDX    $87     
       INX            
       JSR    L19E2   
       JSR    L19ED   
       BCS    L16CD   
L1689: LDA    #$80    
       STA    $99     
L168D: BIT    RSYNC   
       BVC    L16D8   
       BIT    $99     
       BMI    L16D8   
       LDA    $98     
       SEC            
       SBC    #$64    
       SBC    $9D     
       LDX    #$FF    
L169E: INX            
       SBC    #$0B    
       BPL    L169E   
       LDA    $97     
       ADC    #$47    
       SBC    $A4,X   
       LSR            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    L1037,Y 
       AND    $9E,X   
       STA    $9E,X   
       AND    #$07    
       BNE    L16BC   
       STA    $9E,X   
L16BC: LDA    #$0C    
       STA    $EB     
       LDA    #$10    
       LDX    $AC     
       SED            
       JSR    L19E2   
       JSR    L19ED   
       BCC    L16D4   
L16CD: LDA    #$00    
       STA    $B1     
       JMP    L175D   
L16D4: LDA    #$80    
       STA    $99     
L16D8: BIT    COLUP1  
       BMI    L1756   
       LDA    SWCHA   
       LDX    $B0     
       BNE    L16E7   
       LSR            
       LSR            
       LSR            
       LSR            
L16E7: AND    #$0F    
       TAX            
       LDA    L103A,X 
       BMI    L1710   
       STA    $9C     
       TAX            
       LDA    L104A,X 
       CLC            
       ADC    $9A     
       BMI    L1700   
       CMP    #$78    
       BCS    L1700   
       STA    $9A     
L1700: LDA    L104C,X 
       CLC            
       ADC    $9B     
       CMP    #$08    
       BCC    L1710   
       CMP    #$45    
       BCS    L1710   
       STA    $9B     
L1710: LDA    $99     
       BPL    L1724   
       JSR    L1AE9   
       BCC    L1724   
       LDA    #$0C    
       STA    $EA     
       LDA    $9C     
       STA    $99     
       JSR    L1B0D   
L1724: LDX    $99     
       BMI    L174A   
       LDA    $97     
       CLC            
       ADC    L1054,X 
       BEQ    L1746   
       CMP    #$A1    
       BCS    L1746   
       STA    $97     
       LDA    $98     
       CLC            
       ADC    L1056,X 
       BEQ    L1746   
       CMP    #$A4    
       BCS    L1746   
       STA    $98     
       BCC    L174A   
L1746: LDA    #$80    
       STA    $99     
L174A: DEC    $E6     
       BNE    L178B   
       LDA    #$F0    
       STA    $E6     
       DEC    $AF     
       BNE    L178B   
L1756: SEC            
       LDA    $B1     
       SBC    $B2     
       STA    $B1     
L175D: LDA    #$C4    
       STA    $85     
       LDA    $B6     
       BEQ    L1768   
       JSR    L1A68   
L1768: LDA    $B1     
       BNE    L1776   
       LDA    #$02    
       STA    $80     
       JSR    L1A14   
       JMP    L1558   
L1776: LDA    $B0     
       BNE    L177C   
       INC    $AC     
L177C: LDA    #$40    
       STA    $80     
       LDA    #$00    
       STA    $E6     
       LDA    #$07    
       STA    $E8     
       JMP    L1558   
L178B: JSR    L1A46   
       DEC    $E4     
       BNE    L1809   
L1792: LDA    $B1     
       STA    $E4     
       DEC    $AD     
       BNE    L17E5   
       LDA    #$07    
       STA    $AD     
       LDX    #$04    
L17A0: LDY    $D0,X   
       JSR    L1AB0   
       STA    $D0,X   
       LDA    L109E,Y 
       STA    $8B     
       BCS    L17B3   
       JSR    L1A7C   
       STA    $BC,X   
L17B3: LDY    $DA,X   
       JSR    L1AB0   
       STA    $DA,X   
       LDA    L10A5,Y 
       ORA    $8B     
       STA    $C6,X   
       LDY    $D5,X   
       JSR    L1AB0   
       STA    $D5,X   
       LDA    L109E,Y 
       STA    $8B     
       LDY    $DF,X   
       JSR    L1AB0   
       STA    $DF,X   
       LDA    L10A5,Y 
       ORA    $8B     
       STA    $CB,X   
       BCS    L17E2   
       JSR    L1A7C   
       STA    $C1,X   
L17E2: DEX            
       BPL    L17A0   
L17E5: DEC    $AE     
       BNE    L17F6   
       JSR    L1A7C   
       STA    $BB     
       LDA    #$10    
       STA    $EC     
       LDA    #$1C    
       STA    $AE     
L17F6: LDX    #$09    
       LDA    $BB     
L17FA: CMP    $BC,X   
       BEQ    L1809   
       DEX            
       BPL    L17FA   
       TAY            
       LDA    $83     
       AND    #$07    
       TAX            
       STY    $BD,X   
L1809: LDX    #$02    
       LDA    $B1     
       LSR            
       STA    $86     
       TAY            
       LDA    L106D,Y 
       ADC    $AB     
       STA    $AB     
       LDA    #$00    
       BCC    L181E   
       LDA    #$FF    
L181E: STA    $8A     
L1820: LDA    $9E,X   
       BNE    L1847   
       LDY    $86     
       LDA    L105D,Y 
       CMP    $83     
       BCC    L1844   
       JSR    L1AFC   
       AND    #$07    
       BEQ    L1844   
       LDA    $83     
       AND    #$0F    
       STA    $9E,X   
       LDY    #$00    
       AND    #$08    
       BEQ    L1842   
       LDY    #$D8    
L1842: STY    $A4,X   
L1844: JMP    L1861   
L1847: BIT    $8A     
       BPL    L1861   
       LDA    $9E,X   
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    L107E,Y 
       CLC            
       ADC    $A4,X   
       CMP    #$D9    
       BCC    L185F   
       LDA    #$00    
       STA    $9E,X   
L185F: STA    $A4,X   
L1861: DEX            
       BPL    L1820   
       LDA    $82     
       AND    #$03    
       BNE    L188B   
       BIT    $8A     
       BPL    L188B   
       LDA    $80     
       AND    #$01    
       TAX            
       LDA    L107E,X 
       CLC            
       ADC    $9D     
       CMP    #$22    
       BCS    L1885   
       STA    $9D     
       LDA    $83     
       AND    #$03    
       BNE    L188B   
L1885: LDA    $80     
       EOR    #$01    
       STA    $80     
L188B: LDX    #$02    
L188D: LDA    #$01    
       LDY    $A4,X   
       CPY    #$20    
       BCC    L18A9   
       LDA    #$03    
       CPY    #$40    
       BCC    L18A9   
       LDA    #$07    
       CPY    #$99    
       BCC    L18A9   
       LDA    #$06    
       CPY    #$B9    
       BCC    L18A9   
       LDA    #$04    
L18A9: LDY    #$00    
       AND    $9E,X   
       BEQ    L18C1   
       TAY            
       LDA    L107F,Y 
       CLC            
       ADC    $A4,X   
       JSR    L1AC9   
       ORA    $8A     
       STA    $A7,X   
       LDA    L1086,Y 
       TAY            
L18C1: STY    $A1,X   
       DEX            
       BPL    L188D   
       LDA    $82     
       AND    #$0C    
       ASL            
       ADC    #$8F    
       STA    $AA     
       LDA    $99     
       BPL    L18D6   
       JSR    L1B0D   
L18D6: BIT    $80     
       BPL    L1924   
       LDX    #$00    
       LDA    $A1     
       ORA    $A2     
       ORA    $A3     
       BPL    L18F6   
       LDX    #$05    
       LDY    #$1F    
       LDA    $82     
       ASL            
       ASL            
       BCC    L18F2   
       LDX    #$03    
       LDY    #$14    
L18F2: STX    AUDV0   
       LDX    #$08    
L18F6: LDA    $EA     
       BEQ    L1902   
       LDX    #$08    
       LDY    #$01    
       DEC    $EA     
       STA    AUDV0   
L1902: LDA    $EB     
       BEQ    L190E   
       LDX    #$08    
       DEC    $EB     
       LDY    #$0D    
       STA    AUDV0   
L190E: LDA    $EC     
       BEQ    L1920   
       STA    AUDV0   
       DEC    $EC     
       LDX    #$01    
       LDY    #$05    
       LSR            
       LSR            
       BCC    L1920   
       LDY    #$14    
L1920: STX    AUDC0   
       STY    AUDF0   
L1924: LDY    #$02    
L1926: TYA            
       ASL            
       ASL            
       TAX            
       LDA.wy $00B3,Y 
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       ADC    #$00    
       STA    $EE,X   
       LDA    #$1F    
       STA    $EF,X   
       TYA            
       BEQ    L194E   
       LDA.wy $00B3,Y 
       AND    #$F0    
       LSR            
       ADC    #$00    
       STA    $EC,X   
       LDA    #$1F    
       STA    $ED,X   
       DEY            
       BPL    L1926   
L194E: LDA    #$1F    
       STA    $F9     
       LDA    #$00    
       LDX    $80     
       BNE    L1967   
       LDX    $81     
       INX            
       TXA            
       CMP    #$0A    
       BCC    L1962   
       SBC    #$0A    
L1962: ASL            
       ASL            
       ASL            
       ADC    #$00    
L1967: STA    $F8     
       LDX    #$00    
       LDY    #$58    
L196D: LDA    $EE,X   
       CMP    #$00    
       BNE    L197B   
       STY    $EE,X   
       INX            
       INX            
       CPX    #$0A    
       BCC    L196D   
L197B: JMP    L10AD   
L197E: STA    $86     
       LDY    #$01    
       DEC    $F0     
       BNE    L1987   
       INY            
L1987: LDA    #$00    
       DEX            
       CPX    #$08    
       BCS    L1991   
       LDA    L1F50,X 
L1991: STA    WSYNC   
       STA    HMOVE   
       STY    ENABL   
       STA    GRP0    
       STX    $8A     
       LDX    $86     
       LDA    $9E,X   
       STA    REFP1   
       LDY    $AA     
       LDA    $A1,X   
       STA    NUSIZ1  
       BNE    L19AB   
       LDY    #$58    
L19AB: STY    $EE     
       LDX    $8A     
       LDY    #$07    
L19B1: LDA    #$00    
       DEC    $F0     
       BNE    L19B9   
       LDA    #$02    
L19B9: STA    WSYNC   
       STA    ENABL   
       LDA    ($EE),Y 
       STA    GRP1    
       LDA    #$00    
       DEX            
       CPX    #$08    
       BCS    L19CB   
       LDA    L1F50,X 
L19CB: STA    GRP0    
       DEY            
       BPL    L19B1   
       INY            
       DEC    $F0     
       BNE    L19D7   
       LDY    #$02    
L19D7: LDA    #$00    
       DEX            
       CPX    #$08    
       BCS    L19E1   
       LDA    L1F50,X 
L19E1: RTS            

L19E2: STA    $86     
       LDA    #$00    
L19E6: CLC            
       ADC    $86     
       DEX            
       BNE    L19E6   
       RTS            

L19ED: LDX    #$02    
L19EF: ADC    $B3,X   
       STA    $B3,X   
       LDA    #$00    
       DEX            
       BPL    L19EF   
       CLD            
       LDA    $B3     
       CMP    #$10    
       BCC    L1A07   
       LDA    #$99    
       STA    $B3     
       STA    $B4     
       STA    $B5     
L1A07: RTS            

L1A08: LDA    #$00    
       LDX    #$02    
L1A0C: STA    $B3,X   
       STA    $B8,X   
       DEX            
       BPL    L1A0C   
       RTS            

L1A14: LDA    #$00    
       LDX    #$08    
L1A18: STA    $E5,X   
       DEX            
       BPL    L1A18   
       LDA    #$21    
       STA    $E7     
       LDA    #$0F    
       STA    $E4     
       LDA    #$1C    
       STA    $AE     
       RTS            

L1A2A: LDA    #$80    
       STA    $99     
       LDA    #$3C    
       STA    $9A     
       LDA    #$26    
       STA    $9B     
       LDA    #$10    
       STA    $9D     
       LDA    #$00    
       STA    $9C     
       LDX    #$02    
L1A40: STA    $9E,X   
       DEX            
       BPL    L1A40   
       RTS            

L1A46: LDA    INTIM   
       BPL    L1A46   
       LDX    #$02    
       STX    WSYNC   
       STX    VBLANK  
       STX    VSYNC   
       LDX    #$0B    
L1A55: LDA    $BA,X   
       EOR    $E5     
       STA    $BA,X   
       DEX            
       BNE    L1A55   
       STX    WSYNC   
       STX    VSYNC   
       LDA    #$13    
       STA    TIM64T  
       RTS            

L1A68: LDX    #$04    
L1A6A: LDY    $B1,X   
       LDA    $B6,X   
       STA    $B1,X   
       STY    $B6,X   
       DEX            
       BPL    L1A6A   
       LDA    $B0     
       EOR    #$01    
       STA    $B0     
       RTS            

L1A7C: JSR    L1AFC   
       AND    #$07    
       BEQ    L1A88   
       TAY            
       LDA.wy $008F,Y 
       RTS            

L1A88: LDA    $93     
       RTS            

L1A8B: JSR    L1AFC   
       AND    #$07    
       STA    $86     
       LDA    $83     
       LSR            
       LSR            
       LSR            
       AND    #$0F    
       TAY            
       LDA    L1AA0,Y 
       ORA    $86     
       RTS            

L1AA0: .byte $00,$10,$20,$30,$40,$50,$60,$70,$00,$30,$60,$D0,$C0,$D0,$E0,$F0
L1AB0: INY            
       STY    $86     
       TYA            
       AND    #$07    
       CMP    #$02    
       SEC            
       BNE    L1AC3   
       JSR    L1A8B   
       STA    $86     
       CLC            
       AND    #$07    
L1AC3: TAY            
       LDA    $86     
       AND    #$F7    
       RTS            

L1AC9: STA    $8A     
       AND    #$0F    
       STA    $86     
       LDA    $8A     
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $8A     
       SEC            
       ADC    $86     
       CMP    #$0F    
       BCC    L1AE2   
       SBC    #$0F    
       INC    $8A     
L1AE2: EOR    #$07    
L1AE4: ASL            
       ASL            
       ASL            
L1AE7: ASL            
       RTS            

L1AE9: LDA    #$00    
       CLC            
       LDX    $B0     
       LDY    REFP1,X 
       BMI    L1AF9   
       DEC    $85     
       BPL    L1AFB   
       SEC            
       LDA    #$0F    
L1AF9: STA    $85     
L1AFB: RTS            

L1AFC: LSR    $83     
       ROL            
       EOR    $83     
       LSR            
       LDA    $83     
       BCS    L1B08   
       ORA    #$80    
L1B08: EOR    $82     
       STA    $83     
       RTS            

L1B0D: LDX    $9C     
       LDA    $9A     
       CLC            
       ADC    L108E,X 
       STA    $97     
       LDA    $9B     
       ADC    L1096,X 
       STA    $98     
       RTS            

L1B1F: .byte $A0,$E6,$C2,$A0,$B1,$CC,$CD,$A0,$A8,$A0,$A0,$C2,$A0,$A0,$A0,$AF
       .byte $A0,$D4,$B1,$A0,$89,$A0,$CC,$D4,$AD,$FF,$A0,$A0,$A0,$80,$A0,$93
       .byte $FF,$C3,$D2,$A0,$B8,$B0,$E7,$B8,$C8,$D0,$A0,$E0,$A0,$A2,$A0,$C5
       .byte $89,$B2,$A4,$A0,$A9,$A0,$A0,$B0,$A0,$91,$B8,$90,$A0,$CF,$A0,$D2
       .byte $A5,$A0,$F0,$C2,$A0,$B1,$C4,$C8,$A0,$96,$A0,$C4,$D8,$C3,$86,$A0
       .byte $A2,$A0,$A0,$A0,$A0,$92,$B7,$B8,$A0,$AD,$FF,$A0,$93,$A0,$80,$A0
       .byte $93,$FF,$D2,$D2,$C9,$B8,$B9,$E7,$B8,$A0,$D0,$A0,$83,$A0,$E8,$A0
       .byte $D4,$A9,$B3,$CA,$A0,$A0,$A0,$A0,$FE,$A0,$9F,$B9,$D3,$A0,$D4,$AA
       .byte $BA,$AA,$A0,$F0,$A0,$A0,$B1,$A0,$C8,$A0,$96,$A0,$A0,$D8,$A0,$86
       .byte $A0,$A2,$A0,$D3,$A0,$A0,$D8,$B7,$D2,$A0,$96,$FF,$C2,$A9,$A0,$95
       .byte $A0,$8B,$FF,$D2,$85,$A0,$A2,$B5,$A5,$A0,$A0,$A5,$A0,$83,$A0,$87
       .byte $B8,$A0,$A9,$B4,$AF,$B5,$DB,$A0,$A0,$FE,$A0,$85,$B9,$B9,$A0,$A0
       .byte $85,$BA,$85,$A0,$F0,$C2,$A0,$D4,$A0,$A0,$A0,$A4,$A0,$A0,$C2,$C1
       .byte $85,$A0,$A5,$A0,$A0,$B1,$A0,$D8,$A0,$B9,$C5,$FD,$FF,$A9,$B0,$E8
       .byte $A0,$C8,$A0,$A0,$8D,$BA,$D2,$B1,$E8,$FF,$CC,$85,$A0,$AA,$B4,$D5
       .byte $FF,$CE,$A9,$CE,$E8,$B8,$8C,$A0,$A0,$A0,$A0,$EF,$A0,$8A,$A0,$AE
       .byte $D1,$A0,$F5,$A0,$A5,$A0,$A0,$E0,$C3,$A5,$A0,$AF,$A0,$A0,$C2,$CC
       .byte $D0,$A0,$A0,$A0,$A0,$A0,$A0,$AC,$A0,$E8,$A0,$85,$B5,$A0,$B9,$B1
       .byte $A9,$A0,$E6,$BA,$A0,$A9,$A0,$D2,$D4,$C8,$FF,$CC,$85,$A0,$A2,$A0
       .byte $A0,$FF,$A0,$EA,$A0,$F9,$B8,$97,$A0,$A0,$D2,$A0,$FA,$B1,$97,$B8
       .byte $A0,$97,$A0,$A9,$A0,$A5,$B6,$A0,$82,$D2,$A5,$C1,$AF,$A0,$A0,$C2
       .byte $A0,$D0,$A0,$A8,$C3,$A0,$A0,$A0,$A5,$A0,$A9,$A0,$C9,$A0,$A0,$89
       .byte $B1,$85,$A0,$F5,$A0,$A0,$A9,$A0,$AF,$B1,$C8,$FF,$A0,$A5,$A0,$A2
       .byte $B4,$A0,$A0,$A0,$EA,$A0,$F9,$B8,$85,$A0,$C8,$D2,$A0,$CC,$B1,$A4
       .byte $B8,$D3,$A0,$A0,$D0,$A0,$8A,$A0,$A0,$FF,$D2,$82,$A0,$85,$B0,$A0
       .byte $C2,$C1,$86,$A0,$A8,$C4,$CF,$B0,$C2,$A5,$A0,$A9,$A0,$A0,$A0,$A0
       .byte $89,$B1,$89,$A0,$A4,$A0,$A0,$A2,$A0,$A5,$B1,$80,$FF,$A0,$A2,$A0
       .byte $D9,$A0,$98,$B0,$A0,$8A,$A0,$8D,$A0,$E0,$A0,$A0,$90,$A0,$CC,$B2
       .byte $FE,$D5,$A0,$A0,$A0,$B0,$A0,$A0,$A0,$D3,$FF,$CF,$D3,$A0,$89,$B0
       .byte $C4,$C2,$C1,$F0,$A0,$92,$C4,$CF,$A0,$C2,$CC,$A0,$A9,$A0,$A0,$C8
       .byte $A0,$85,$A0,$8A,$CC,$A0,$CB,$A0,$AB,$A0,$A2,$A0,$A0,$FF,$A0,$CF
       .byte $A0,$EF,$BA,$A5,$C1,$A0,$C9,$A0,$80,$C1,$85,$A0,$D3,$95,$B4,$E5
       .byte $A0,$EF,$C1,$A0,$AA,$A0,$8D,$B4,$C3,$B0,$A0,$CA,$A0,$E5,$A0,$C9
       .byte $FF,$B4,$85,$A0,$C8,$A0,$A0,$B8,$D2,$89,$C1,$94,$A0,$80,$A0,$A0
       .byte $AC,$A0,$82,$C1,$A0,$A0,$D0,$8F,$D4,$E6,$A0,$A4,$A0,$A0,$FF,$A0
       .byte $A9,$C9,$90,$BA,$A5,$A0,$A0,$9F,$A0,$E8,$A0,$85,$BA,$D3,$97,$B4
       .byte $E5,$B1,$EF,$A0,$A0,$8A,$A0,$8D,$B4,$90,$A0,$A0,$CA,$CC,$A9,$B6
       .byte $85,$FF,$B0,$A2,$A0,$85,$A0,$A0,$B8,$A0,$F0,$A0,$B1,$A0,$EF,$C1
       .byte $C8,$B1,$A0,$99,$A0,$A0,$C1,$D0,$97,$D4,$E6,$A0,$A4,$A0,$A0,$FF
       .byte $A0,$A9,$A0,$F0,$BA,$B7,$A0,$A0,$A0,$A0,$80,$A0,$E8,$BA,$A0,$A0
       .byte $B4,$B9,$B1,$A6,$B7,$A0,$F0,$A0,$A9,$D3,$90,$88,$A0,$89,$A0,$A9
       .byte $A0,$85,$FF,$C3,$A2,$A0,$85,$B2,$A4,$B8,$AE,$F0,$D3,$A5,$A0,$FA
       .byte $C1,$A0,$A0,$A0,$99,$A0,$E5,$A0,$A0,$80,$D4,$C0,$A0,$E9,$A0,$A0
       .byte $A0,$A0,$EE,$A0,$F0,$BA,$B9,$C3,$A0,$A0,$A0,$80,$A0,$A9,$BA,$C2
       .byte $A0,$A0,$89,$B1,$CC,$B7,$A0,$A0,$A0,$94,$D3,$E6,$80,$A0,$9E,$A0
       .byte $A5,$B6,$B0,$FF,$C3,$CF,$A0,$E5,$B0,$A4,$B8,$A0,$C8,$A5,$E9,$A0
       .byte $A9,$A0,$D4,$A0,$A0,$8A,$D4,$D0,$B0,$F4,$FF,$A0,$A5,$A0,$D6,$C2
       .byte $D0,$BA,$A0,$FE,$A0,$AF,$B6,$80,$C1,$CC,$84,$B5,$E5,$B4,$A4,$CC
       .byte $A0,$FF,$B6,$F0,$A0,$A2,$A0,$C5,$ED,$A0,$F2,$B1,$A5,$B1,$A0,$80
       .byte $C3,$CD,$A0,$84,$B2,$A0,$B1,$A0,$8A,$A0,$B1,$A0,$C6,$C2,$A0,$A5
       .byte $A0,$E0,$C5,$A0,$FF,$A0,$A0,$A0,$A2,$A0,$93,$FF,$A0,$D2,$A0,$96
       .byte $C2,$A5,$BA,$D3,$A7,$A0,$98,$B6,$80,$A0,$CC,$A5,$B5,$E5,$A0,$A4
       .byte $B5,$A0,$A9,$A0,$F0,$B5,$D5,$A0,$D3,$ED,$A0,$FE,$A0,$AC,$B1,$A0
       .byte $85,$C1,$C8,$A0,$F0,$B0,$AE,$AC,$C4,$F0,$A0,$A5,$A0,$A0,$D8,$A0
       .byte $85,$C1,$E0,$A0,$A0,$FF,$A0,$A0,$A0,$A2,$A0,$8B,$FF,$A0,$D2,$D4
       .byte $8A,$B0,$A5,$BA,$A0,$A3,$A0,$B0,$B6,$89,$B1,$C8,$C8,$B5,$A4,$B4
       .byte $96,$A0,$A0,$85,$A0,$A0,$B5,$D5,$A0,$D3,$CA,$D4,$FE,$B2,$AC,$A0
       .byte $A0,$85,$A0,$C8,$A0,$86,$B0,$A0,$AC,$A0,$AF,$A0,$96,$A0,$D0,$C2
       .byte $A0,$CC,$C1,$D3,$D4,$D3,$FF,$D2,$95,$A0,$F0,$A0,$8B,$FF,$A0,$E7
       .byte $A0,$8A,$B4,$B7,$A0,$A0,$A3,$A0,$B0,$A0,$90,$B1,$A0,$C8,$B5,$B0
       .byte $B4,$90,$A0,$A0,$91,$A0,$C0,$B5,$F7,$FF,$A0,$C0,$D4,$BF,$A0,$F5
       .byte $B1,$A0,$B9,$D3,$84,$A0,$86,$B2,$C8,$B1,$D4,$AF,$A0,$B1,$E2,$D4
       .byte $FD,$3C,$66,$66,$66,$66,$66,$66,$3C,$3C,$18,$18,$18,$18,$18,$38
       .byte $18,$7E,$60,$60,$3C,$06,$06,$46,$3C,$3C,$46,$06,$0C,$0C,$06,$46
       .byte $3C,$0C,$0C,$0C,$7E,$4C,$2C,$1C,$0C,$7C,$46,$06,$06,$7C,$60,$60
       .byte $7E,$3C,$66,$66,$66,$7C,$60,$62,$3C,$18,$18,$18,$18,$0C,$06,$42
       .byte $7E,$3C,$66,$66,$3C,$3C,$66,$66,$3C,$3C,$46,$06,$3E,$66,$66,$66
       .byte $3C
L1F50: .byte $00,$92,$54,$28,$D6,$28,$54,$92,$00,$00,$00,$00,$00,$00,$00
L1F5F: .byte $00,$00,$00,$00,$00,$00,$00,$00
L1F67: .byte $00,$00,$00,$00,$00,$00,$00,$00
L1F6F: .byte $00,$00,$00,$00,$00,$00,$00,$00
L1F77: .byte $00,$00,$00,$00,$00,$00,$00,$00
L1F7F: .byte $00,$00,$00,$00,$00,$00,$00,$00
L1F87: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$28,$74,$FA,$FA,$F6,$6C,$18
       .byte $00,$38,$78,$FA,$FC,$FA,$74,$30,$00,$38,$7C,$FE,$FE,$FE,$7C,$38
       .byte $00,$38,$3C,$DE,$EE,$DE,$3C,$38,$E5,$A0,$AC,$F5,$A0,$A9,$B6,$97
       .byte $B3,$A0,$A5,$C4,$80,$A0,$85,$C6,$BA,$A4,$A0,$C0,$AC,$A5,$B8,$A0
       .byte $C6,$C2,$9E,$A0,$88,$C1,$A0,$C3,$A0,$A9,$B2,$A5,$B8,$C5,$C4,$A0
       .byte $E0,$A0,$A8,$A0,$C8,$FF,$A0,$A0,$A0,$A0,$A0,$A6,$B2,$C2,$B8,$A0
       .byte $97,$A0,$98,$AC,$A0,$FF,$B2,$97,$B8,$E5,$A0,$AC,$A9,$A0,$A9,$A0
       .byte $97,$A4,$A0,$00,$10,$00,$10,$00,$10
