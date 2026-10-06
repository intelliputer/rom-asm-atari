; Disassembly of roms/Strawberry Shortcake Musical Match-Ups.bin
; Disassembled Tue Oct  6 15:24:47 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Strawberry Shortcake Musical Match-Ups.bin
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
AUDC0   =  $15
AUDC1   =  $16
AUDF0   =  $17
AUDF1   =  $18
AUDV0   =  $19
AUDV1   =  $1A
GRP0    =  $1B
GRP1    =  $1C
HMP0    =  $20
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
INPT4   =  $3C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296

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
       LDA    #$80    
       STA    $E3     
       JSR    L14E1   
       LDA    #$FF    
       STA    $D3     
       LDA    #$01    
       STA    $9D     
       STA    CTRLPF  
       STA    $DF     
       STA    $CC     
       LDA    #$0E    
       STA    $8A     
       LDA    #$3F    
       STA    $86     
       LDA    #$86    
       STA    $B5     
L102C: STA    WSYNC   
       LDA    #$02    
       STA    WSYNC   
       STA    VBLANK  
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    VSYNC   
       LDA    $B5     
       STA    COLUBK  
       STA    WSYNC   
       LDA    #$00    
       STA    WSYNC   
       STA    VSYNC   
       STA    WSYNC   
       LDA    #$08    
       STA    TIM64T  
L104F: LDA    INTIM   
       BNE    L104F   
       STA    $80     
       LDA    #$40    
       STA    WSYNC   
       STA    VBLANK  
L105C: STA    WSYNC   
       INC    $80     
       LDA    $80     
       CMP    $8A     
       BEQ    L1078   
L1066: LDA    $80     
       CMP    $86     
       BNE    L106F   
       JMP    L119F   
L106F: LDA    $80     
       CMP    #$3F    
       BNE    L105C   
       JMP    L12EF   
L1078: LDX    #$08    
       STX    REFP1   
       LDA    $CF     
       STA    $87     
       ADC    #$06    
       STA    $88     
       JSR    L1FB2   
       LDA    #$2A    
       STA    COLUP0  
       STA    COLUP1  
       LDX    #$00    
       STX    NUSIZ0  
       STX    NUSIZ1  
L1093: STA    WSYNC   
       LDA    L1ED4,X 
       STA    GRP0    
       STA    GRP1    
       INC    $80     
       INX            
       CPX    #$13    
       BNE    L1093   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    REFP1   
       INX            
       STA    NUSIZ0  
       LDA    #$4C    
       STA    $88     
       JSR    L1FB2   
       LDY    #$00    
L10B7: INC    $80     
       STA    WSYNC   
       LDA    L1E9B,Y 
       STA    PF0     
       LDA    L1EAE,Y 
       STA    PF1     
       LDA    L1EC1,Y 
       STA    PF2     
       INY            
       CPY    #$12    
       BNE    L10B7   
       LDA    #$D4    
       STA    WSYNC   
       STA    COLUBK  
       INC    $80     
       LDA    #$00    
       STA    WSYNC   
       STA    PF0     
       STA    PF1     
       STA    PF2     
       LDA    #$56    
       STA    COLUPF  
       STA    COLUP0  
       LDX    #$0A    
L10E9: INC    $80     
       LDA    L1F10,X 
       TAY            
       LDA    L1F1B,X 
       STA    WSYNC   
       STY    GRP1    
       STA    COLUP1  
       DEX            
       BPL    L10E9   
       INX            
L10FC: LDA    L1EE6,X 
       STA    PF1     
       LDA    L1EE7,X 
       STA    PF2     
       INX            
       INX            
       STA    WSYNC   
       CPX    #$1C    
       BNE    L10FC   
       LDA    #$00    
       STA    GRP1    
       LDX    #$03    
       STX    NUSIZ0  
       STX    NUSIZ1  
       LDX    #$41    
       STX    $88     
       LDX    #$39    
       STX    $87     
       JSR    L1FB2   
       STA    WSYNC   
       LDA    L1F02   
       STA    PF1     
       LDA    L1F03   
       STA    PF2     
       JSR    L1FA3   
       STA    WSYNC   
       LDA    L1F04   
       STA    PF1     
       LDA    L1F05   
       STA    PF2     
       LDX    #$00    
       STX    GRP0    
       STX    GRP1    
       STX    GRP0    
       STX    GRP1    
       STX    NUSIZ1  
       INX            
       STX    NUSIZ0  
       LDX    #$46    
       STX    $87     
       LDX    #$4E    
       STX    $88     
       JSR    L1FB2   
       JMP    L1066   
L115B: .byte $5E,$5E,$5E,$44,$44,$2A,$2A,$2A,$44,$44,$86,$86,$9A,$9A,$66,$9A
       .byte $66,$66,$66,$66,$58,$66,$D6,$D6,$66,$66,$00,$00,$00,$4A,$00,$00
       .byte $00,$4A
L117D: .byte $D8,$5E,$44,$44,$4A,$D8,$70,$2A,$44,$4A,$D8,$86,$9A,$4A,$4A,$4A
       .byte $D8,$66,$58,$66,$58,$66,$D6,$4A,$66,$62,$62,$00,$4A,$4A,$4A,$00
       .byte $4A,$4A
L119F: LDA    $B6     
       STA    WSYNC   
       STA    COLUPF  
       LDY    #$24    
       STY    $D6     
       LDY    $B2     
       STY    $D7     
L11AD: LDX    L16A6,Y 
L11B0: STA    WSYNC   
       LDA    #$00    
       STA    REFP0   
       LDY    $D7     
       LDA    L115B,Y 
       STA    COLUP0  
       LDA    L117D,Y 
       STA    COLUP1  
       LDY    $D6     
       LDA    ($8C),Y 
       STA    GRP0    
       LDA    ($8E),Y 
       STA    GRP1    
       LDA    #$08    
       DEY            
       STA    REFP0   
       STY    $D6     
       BMI    L11DE   
       DEX            
       BNE    L11B0   
       INC    $D7     
       LDY    $D7     
       BPL    L11AD   
L11DE: LDA    $B7     
       STA    WSYNC   
       STA    COLUPF  
       LDY    #$18    
       STY    $D6     
       LDY    $B0     
       STY    $D7     
L11EC: LDX    L16C8,Y 
L11EF: STA    WSYNC   
       LDA    #$00    
       STA    REFP0   
       LDY    $D7     
       LDA    L16E4,Y 
       STA    COLUP0  
       LDA    L1700,Y 
       STA    COLUP1  
       LDY    $D6     
       LDA    ($90),Y 
       STA    GRP0    
       LDA    ($92),Y 
       STA    GRP1    
       LDA    #$08    
       DEY            
       STA    REFP0   
       STY    $D6     
       BMI    L121D   
       DEX            
       BNE    L11EF   
       INC    $D7     
       LDY    $D7     
       BPL    L11EC   
L121D: LDY    #$00    
L121F: STA    WSYNC   
       LDX    #$00    
       STX    REFP0   
       LDA    $B8     
       STA    COLUPF  
       LDA    ($AD),Y 
       STA    COLUP0  
       LDA    ($AD),Y 
       STA    COLUP1  
       LDA    ($94),Y 
       STA    GRP0    
       LDA    ($96),Y 
       STA    GRP1    
       LDA    #$08    
       STA    REFP0   
       INY            
       CPY    #$14    
       BNE    L121F   
       JSR    L18F2   
       LDA    L1F06   
       STA    WSYNC   
       STX    COLUPF  
       STA    PF1     
       LDA    L1F07   
       STA    PF2     
       LDA    #$39    
       STA    $87     
       LDA    #$41    
       STA    $88     
       JSR    L1FB2   
       LDA    L1F08   
       LDX    L1F09   
       STA    WSYNC   
       STA    PF1     
       STX    PF2     
       LDY    #$56    
       STY    COLUP0  
       STY    COLUP1  
       LDY    #$03    
       STY    NUSIZ0  
       STY    NUSIZ1  
       LDA    $DC     
       BNE    L127D   
       JMP    L1FDC   
L127D: BIT    $E4     
       BPL    L1285   
       LDY    #$44    
       BPL    L1287   
L1285: LDY    #$00    
L1287: STY    COLUP0  
       STY    COLUP1  
       STA    VDELP0  
       STA    VDELP1  
       LDA    $CD     
       STA    $84     
L1293: LDY    $84     
       LDA    ($C0),Y 
       STA    GRP0    
       STA    WSYNC   
       LDA    ($C2),Y 
       STA    GRP1    
       LDA    ($C4),Y 
       STA    GRP0    
       LDA    ($C6),Y 
       STA    $85     
       LDA    ($C8),Y 
       TAX            
       LDA    ($CA),Y 
       TAY            
       LDA    $85     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STY    GRP0    
       DEC    $84     
       BPL    L1293   
       LDY    $CE     
L12BD: STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    GRP0    
       STA    GRP1    
       DEY            
       BNE    L12BD   
L12CC: LDA    L1F06   
       LDX    L1F07   
       STA    WSYNC   
       STA    PF1     
       STX    PF2     
       LDX    #$04    
L12DA: STA    WSYNC   
       DEX            
       BPL    L12DA   
       JSR    L1FE7   
       STA    WSYNC   
       STY    PF1     
       STY    PF2     
       LDA    #$D4    
       STA    COLUPF  
       JMP    L106F   
L12EF: LDY    #$12    
       STY    TIM64T  
       INC    $DE     
       LDA    $E7     
       BEQ    L1303   
       JSR    L1664   
       JSR    L1F53   
       JMP    L14B6   
L1303: LDA    $DB     
       BPL    L130A   
       JMP    L15C5   
L130A: LDA    SWCHB   
       STA    $84     
       EOR    $D3     
       STA    $85     
       LDA    $85     
       AND    #$01    
       BEQ    L132E   
       LDA    $84     
       AND    #$01    
       BEQ    L1324   
       JSR    L1664   
       BPL    L1382   
L1324: JSR    L1F53   
L1327: LDA    $84     
       STA    $D3     
       JMP    L14B6   
L132E: LDA    $85     
       AND    #$02    
       BEQ    L1382   
       LDA    $84     
       AND    #$02    
       BEQ    L1382   
       LDX    #$80    
       STX    $E4     
       INC    $D2     
       LDA    $D2     
       CMP    #$06    
       BNE    L134A   
       LDA    #$00    
       STA    $D2     
L134A: LDX    #$00    
       STX    $E3     
       LDY    #$FF    
L1350: LDA    #$10    
       STA    $C0,X   
       LDA    #$1F    
       STA    $C1,X   
       INX            
       INX            
       INY            
       CPY    $D2     
       BNE    L1350   
       CPY    #$05    
       BEQ    L1372   
L1363: LDA    #$73    
       STA    $C0,X   
       LDA    #$18    
       STA    $C1,X   
       INX            
       INX            
       INY            
       CPY    #$05    
       BNE    L1363   
L1372: LDX    #$01    
       STX    $DF     
       STX    $DC     
       LDX    #$0A    
       STX    $CD     
       LDX    #$07    
       STX    $CE     
       BPL    L1327   
L1382: LDA    $84     
       STA    $D3     
       BIT    $E4     
       BPL    L138D   
       JMP    L14B6   
L138D: BIT    $E3     
       BPL    L1394   
       JMP    L1F7A   
L1394: LDA    $DD     
       BEQ    L13D9   
       LDA    $A9     
       CMP    #$01    
       BEQ    L13A1   
       JMP    L14B6   
L13A1: LDX    $9A     
       LDA    $D5     
       BNE    L13C0   
       INC    $D5     
       LDA    L1E32,X 
       STA    $94     
       LDA    L1E50,X 
       STA    $95     
       LDA    L1E37,X 
       STA    $96     
       LDA    L1E55,X 
       STA    $97     
       JMP    L14B6   
L13C0: DEC    $D5     
       LDA    L1E1E,X 
       STA    $94     
       LDA    L1E3C,X 
       STA    $95     
       LDA    L1E23,X 
       STA    $96     
       LDA    L1E41,X 
       STA    $97     
       JMP    L14B6   
L13D9: LDA    INPT4   
       BMI    L1418   
       BIT    $DB     
       BMI    L1418   
       LDX    #$01    
       STX    $DF     
       STX    $DD     
       STX    $E0     
       DEX            
       STX    $D5     
       STX    $E1     
       STX    $E2     
       LDA    #$80    
       STA    $DB     
       LDA    #$0B    
       STA    $A9     
       LDA    $9C     
       BIT    $D8     
       BMI    L1400   
       LDA    $9B     
L1400: CMP    $98     
       BNE    L1411   
       CMP    $99     
       BNE    L1411   
       CMP    $9A     
       BNE    L1411   
       STX    $E5     
       INX            
       STX    $CF     
L1411: STX    $DC     
       STX    $DA     
       JMP    L14B6   
L1418: LDA    #$14    
       CMP    $DE     
       BNE    L147F   
       BIT    $DB     
       BMI    L147F   
       LDX    #$00    
       STX    $DE     
       LDA    SWCHA   
       CLC            
       ROL            
       BCS    L1446   
       LDY    #$00    
       LDA    $9D     
L1431: CLC            
       ROR            
       BCS    L143A   
       INX            
       CPX    #$03    
       BNE    L1431   
L143A: INC    $98,X   
       LDA    #$05    
       CMP    $98,X   
       BNE    L147C   
       STY    $98,X   
       BPL    L147C   
L1446: ROL            
       BCS    L1460   
       LDY    #$04    
       LDX    #$00    
       LDA    $9D     
L144F: CLC            
       ROR            
       BCS    L1458   
       INX            
       CPX    #$03    
       BNE    L144F   
L1458: DEC    $98,X   
       BPL    L147C   
       STY    $98,X   
       BNE    L147C   
L1460: ROL            
       BCS    L146F   
       LDA    $9D     
       CMP    #$04    
       BEQ    L147F   
       CLC            
       ROL            
       STA    $9D     
       BPL    L147F   
L146F: ROL            
       BCS    L147F   
       LDA    $9D     
       CMP    #$01    
       BEQ    L147F   
       CLC            
       ROR            
       STA    $9D     
L147C: JSR    L14E1   
L147F: BIT    $E4     
       BMI    L14B6   
       LDA    $E0     
       BNE    L14B6   
       LDA    $DB     
       BMI    L14B6   
       LDA    $D2     
       CMP    #$02    
       BCC    L14B6   
       INC    $E5     
       LDY    #$00    
       LDX    #$0A    
       ROR            
       BCC    L149C   
       LDX    #$05    
L149C: CPX    $E5     
       BNE    L14B6   
       STY    $E5     
       INC    $CF     
       LDA    #$91    
       CMP    $CF     
       BNE    L14B6   
       LDA    #$80    
       STA    $E3     
       LDA    #$70    
       STA    $B5     
       LDA    #$01    
       STA    $E0     
L14B6: LDX    #$56    
       STX    $B6     
       STX    $B7     
       STX    $B8     
       LDA    $DF     
       BNE    L14D9   
       LDA    $9D     
       LDX    #$5A    
       ROR            
       BCC    L14CD   
       STX    $B6     
       BCS    L14D9   
L14CD: ROR            
       BCC    L14D4   
       STX    $B7     
       BCS    L14D9   
L14D4: ROR            
       BCC    L14D9   
       STX    $B8     
L14D9: LDA    INTIM   
       BNE    L14D9   
       JMP    L102C   
L14E1: LDX    $98     
       LDA    L1DE2,X 
       STA    $8C     
       LDA    L1DF6,X 
       STA    $8D     
       LDA    L1DE7,X 
       STA    $8E     
       LDA    L1DFB,X 
       STA    $8F     
       LDA    L1DEC,X 
       STA    $B2     
       LDX    $99     
       LDA    L1E05,X 
       STA    $90     
       LDA    L1E0A,X 
       STA    $92     
       LDA    #$19    
       STA    $91     
       STA    $93     
       LDA    L1E0F,X 
       STA    $B0     
       LDX    $9A     
       LDA    L1E1E,X 
       STA    $94     
       LDA    L1E3C,X 
       STA    $95     
       LDA    L1E23,X 
       STA    $96     
       LDA    L1E41,X 
       STA    $97     
       LDA    L1E28,X 
       STA    $AD     
       LDA    L1E46,X 
       STA    $AE     
       LDX    $9C     
       BIT    $D8     
       BMI    L153B   
       LDX    $98     
L153B: LDA    L1DF1,X 
       STA    $A0     
       LDA    L1E00,X 
       STA    $A1     
       LDA    L1E5A,X 
       STA    $A6     
       BIT    $D8     
       BMI    L1550   
       LDX    $99     
L1550: LDA    L1E14,X 
       STA    $A2     
       LDA    L1E19,X 
       STA    $A3     
       LDA    L1E5A,X 
       STA    $A7     
       BIT    $D8     
       BMI    L1565   
       LDX    $9A     
L1565: LDA    L1E2D,X 
       STA    $A4     
       LDA    L1E4B,X 
       STA    $A5     
       LDA    L1E5A,X 
       STA    $A8     
       LDX    $9B     
       BIT    $D9     
       BMI    L157E   
       LDX    $9A     
       STX    $9B     
L157E: LDA    L1E5F,X 
       STA    $C0     
       LDA    L1E7D,X 
       STA    $C1     
       LDA    L1E64,X 
       STA    $C2     
       LDA    L1E82,X 
       STA    $C3     
       LDA    L1E69,X 
       STA    $C4     
       LDA    L1E87,X 
       STA    $C5     
       LDA    L1E6E,X 
       STA    $C6     
       LDA    L1E8C,X 
       STA    $C7     
       LDA    L1E73,X 
       STA    $C8     
       LDA    L1E91,X 
       STA    $C9     
       LDA    L1E78,X 
       STA    $CA     
       LDA    L1E96,X 
       STA    $CB     
       LDA    L1DDD,X 
       STA    $CD     
       LDA    L1DD8,X 
       STA    $CE     
       RTS            

L15C5: DEC    $A9     
       BEQ    L15CC   
       JMP    L1FC8   
L15CC: LDA    #$0F    
       STA    $AA     
       STA    $AB     
       LDY    $E1     
       BIT    $E2     
       BMI    L15F8   
       BVS    L15E9   
       LDA    $A6     
       STA    $AC     
       LDA    ($A0),Y 
       INY            
       TAX            
       LDA    ($A0),Y 
       BMI    L1626   
       JMP    L1604   
L15E9: LDA    $A7     
       STA    $AC     
       LDA    ($A2),Y 
       INY            
       TAX            
       LDA    ($A2),Y 
       BMI    L1626   
       JMP    L1604   
L15F8: LDA    $A8     
       STA    $AC     
       LDA    ($A4),Y 
       INY            
       TAX            
       LDA    ($A4),Y 
       BMI    L1626   
L1604: BNE    L160A   
       STA    $AA     
       STX    $AB     
L160A: STA    AUDF0   
       STX    AUDF1   
       LDA    $AC     
       STA    AUDC0   
       STA    AUDC1   
       LDA    $AA     
       LDX    $AB     
       STA    AUDV0   
       STX    AUDV1   
       INY            
       STY    $E1     
       LDA    #$0B    
       STA    $A9     
       JMP    L1394   
L1626: LDA    #$01    
       BIT    $E2     
       BMI    L1646   
       BVS    L1634   
       BEQ    L163D   
       LDA    #$40    
       BNE    L163D   
L1634: LDA    #$41    
       LDX    #$80    
       CMP    $E2     
       BNE    L163D   
       TXA            
L163D: STA    $E2     
       LDA    #$00    
       STA    $E1     
       JMP    L15CC   
L1646: LDA    #$00    
       STA    AUDV0   
       STA    AUDV1   
       LDX    #$05    
L164E: STA    $DB,X   
       DEX            
       BPL    L164E   
       BIT    $8B     
       BPL    L165B   
       STA    $8B     
       BEQ    L1661   
L165B: LDA    $DA     
       BEQ    L1661   
       STA    $E7     
L1661: JMP    L14B6   
L1664: LDX    $D2     
       BEQ    L1681   
       CPX    #$04    
       BCC    L1672   
       LDX    #$80    
       STX    $DB     
       BMI    L1681   
L1672: LDX    #$01    
       STX    $DC     
       STX    $D8     
       LDA    #$80    
       STA    $D9     
       DEX            
       STX    $8B     
       BEQ    L168B   
L1681: STX    $D8     
       STX    $8B     
       LDX    #$00    
       STX    $DC     
       STX    $D9     
L168B: LDY    #$06    
L168D: STX    $DF,Y   
       DEY            
       BPL    L168D   
       INX            
       STX    $CF     
       LDX    #$86    
       STX    $B5     
       JSR    L14E1   
       LDA    #$00    
       STA    $E7     
       RTS            

L16A1: .byte $44,$43,$53,$C5,$00
L16A6: .byte $02,$15,$01,$02,$0B,$04,$03,$10,$03,$0B,$08,$10,$02,$05,$03,$03
       .byte $0B,$01,$04,$01,$06,$01,$02,$0B,$0E,$01,$06,$01,$02,$04,$01,$01
       .byte $03,$04
L16C8: .byte $01,$06,$01,$01,$03,$07,$03,$03,$01,$01,$01,$01,$01,$09,$0B,$05
       .byte $03,$03,$05,$01,$05,$03,$06,$0D,$01,$05,$0D,$0C
L16E4: .byte $0E,$44,$44,$44,$4A,$44,$44,$0E,$D8,$D8,$66,$66,$66,$66,$4A,$86
       .byte $86,$4A,$86,$86,$86,$0E,$4A,$C8,$58,$58,$4A,$4A
L1700: .byte $0E,$0E,$0A,$0E,$0E,$0E,$44,$0E,$D8,$0E,$D8,$0E,$D8,$70,$70,$66
       .byte $86,$86,$86,$86,$86,$0E,$C8,$C8,$C8,$58,$86,$62,$D8,$D8,$0E,$0E
       .byte $D8,$D8,$0E,$0E,$D8,$D8,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30
       .byte $70,$70,$70,$70,$70,$70,$70,$70,$70,$70,$0E,$0E,$0E,$0E,$0E,$44
       .byte $44,$44,$44,$44,$D8,$0E,$0E,$D8,$D8,$0E,$0E,$D8,$D8,$0E,$0E,$86
       .byte $86,$86,$86,$86,$86,$86,$86,$86,$C8,$C8,$0E,$C8,$C8,$0E,$C8,$C8
       .byte $0E,$C8,$C8,$0E,$C8,$C8,$5A,$5A,$5A,$66,$66,$66,$62,$62,$62,$62
       .byte $62,$62,$62,$62,$62,$62,$62,$62,$62,$62,$62,$62,$62,$62,$62,$62
       .byte $00,$00,$06,$0C,$06,$03,$1C,$36,$1B,$03,$0E,$19,$05,$18,$0F,$07
       .byte $03,$01,$07,$3F,$7F,$7F,$7F,$7F,$39,$1B,$1F,$3F,$3C,$1D,$0F,$0F
       .byte $07,$03,$00,$00,$00,$18,$7E,$E7,$DB,$FF,$FF,$DB,$DB,$FF,$FF,$7E
       .byte $C5,$6B,$EB,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$9F,$BC,$FE,$E7,$EF,$F9
       .byte $9D,$BF,$FF,$F7,$E3,$C1,$E3,$76,$1C,$36,$00,$00,$00,$00,$00,$03
       .byte $05,$02,$04,$05,$06,$03,$03,$01,$07,$0B,$0E,$1D,$1F,$37,$3B,$1F
       .byte $01,$01,$01,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$3C
       .byte $7E,$E7,$DB,$FF,$FF,$FF,$DB,$DB,$FF,$7E,$49,$B6,$6D,$6F,$F7,$BB
       .byte $F5,$AF,$7F,$D5,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$7E,$3C,$04,$08,$04
       .byte $0A,$09,$10,$00,$00,$0E,$04,$0A,$15,$0A,$04,$0E,$1F,$1F,$1F,$0F
       .byte $07,$00,$1F,$1B,$31,$01,$01,$01,$01,$01,$01,$01,$03,$07,$07,$03
       .byte $01,$00,$00,$00,$00,$00,$00,$00,$00,$18,$3C,$7E,$E7,$DB,$FF,$FF
       .byte $DB,$DB,$FF,$7E,$FF,$FF,$00,$FF,$FF,$FF,$5A,$5A,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$BF,$BF,$40,$A0,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $01,$03,$06,$04,$0E,$0E,$0E,$0F,$0F,$06,$03,$0F,$0F,$03,$03,$03
       .byte $03,$03,$03,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$18,$3C,$7E,$E7,$DB,$FF,$FF,$DB,$DB,$FF,$7E,$F1,$BA
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$66,$7E,$66
       .byte $42,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$0C,$12,$21,$20
       .byte $10,$01,$03,$03,$02,$10,$0D,$02,$09,$06,$01,$02,$14,$08,$01,$03
       .byte $07,$0F,$0F,$0F,$07,$07,$03,$00,$01,$01,$00,$00,$00,$18,$3C,$3C
       .byte $24,$24,$42,$7E,$FF,$FF,$FF,$FF,$DB,$81,$81,$FF,$FF,$7F,$6B,$6B
       .byte $55,$55,$6B,$6B,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $7F,$3E
L18F2: JSR    L1FE7   
       STX    REFP0   
       STX    $84     
       STX    $D6     
       STX    $D7     
       LDX    #$56    
       RTS            

L1900: .byte $03,$07,$07,$0F,$0F,$0F,$07,$07,$07,$03,$03,$01,$01,$30,$1A,$0C
       .byte $1C,$1C,$1C,$0E,$0F,$07,$07,$03,$01,$E7,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$DB,$24,$DB,$FF,$FF,$FF,$FF,$FF,$7E,$7E,$7E,$FF,$FF,$FF,$FF
       .byte $C3,$C3,$00,$00,$00,$00,$00,$00,$00,$60,$34,$18,$18,$1C,$1C,$1C
       .byte $0E,$0E,$0E,$0E,$07,$07,$07,$07,$03,$01,$01,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$7E,$3C
       .byte $7E,$FF,$FF,$E7,$01,$03,$03,$03,$03,$03,$03,$03,$03,$01,$01,$01
       .byte $01,$00,$E0,$74,$38,$3C,$34,$2C,$1A,$0D,$0B,$05,$02,$24,$FF,$FF
       .byte $FF,$AA,$55,$AA,$55,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$7E,$7E
       .byte $7E,$C3,$E7,$FF,$FF,$E7,$00,$04,$28,$28,$55,$37,$2E,$1E,$6C,$0C
       .byte $0C,$18,$18,$18,$38,$30,$30,$18,$18,$18,$1C,$1F,$0F,$07,$00,$7E
       .byte $7E,$7E,$7E,$7E,$3C,$3C,$3C,$3C,$3C,$3C,$3C,$3C,$3C,$3C,$3C,$3C
       .byte $3C,$3C,$3C,$3C,$FF,$FF,$FF,$FF,$00,$00,$00,$07,$07,$0D,$0F,$3F
       .byte $72,$4A,$29,$24,$13,$0F,$03,$00,$00,$00,$00,$04,$1E,$FF,$3B,$21
       .byte $00,$42,$E7,$FF,$FF,$E9,$3F,$E6,$95,$B7,$56,$2B,$DD,$BE,$7F,$FE
       .byte $7E,$7E,$7E,$7E,$7E,$FF,$FF,$FF,$FF,$3C,$01,$01,$01,$01,$03,$03
       .byte $03,$03,$03,$03,$02,$02,$02,$02,$02,$01,$03,$07,$07,$07,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$03,$07,$0F,$0F,$0F,$07
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$01,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$0E,$1F,$3F,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$07,$0F,$07,$00,$00,$00,$FF,$FF,$E7,$E7,$E7,$E7
       .byte $E7,$E7,$E7,$E7,$A5,$A5,$A5,$A5,$A5,$E7,$E7,$E7,$E7,$E7,$E7,$E7
       .byte $E7,$E7,$E7,$E7,$E7,$E7,$E7,$E7,$E7,$E7,$E7,$E7,$C3,$C3,$81,$00
       .byte $00,$00,$66,$66,$66,$C3,$C3,$C3,$C3,$C3,$C3,$C3,$C3,$C3,$C3,$C3
       .byte $66,$66,$66,$7E,$FF,$EF,$66,$66,$66,$66,$66,$66,$66,$66,$66,$66
       .byte $66,$66,$66,$66,$99,$FF,$E7,$00,$00,$00,$13,$10,$15,$12,$18,$13
       .byte $13,$10,$80,$80,$1D,$12,$1D,$12,$1D,$12,$18,$13,$1A,$15,$00,$00
       .byte $1A,$1A,$00,$00,$80,$80,$12,$0E,$12,$0E,$13,$10,$1A,$12,$18,$13
       .byte $80,$80,$1D,$0B,$00,$0B,$13,$0B,$00,$09,$80,$80,$1F,$0C,$00,$0D
       .byte $13,$0C,$00,$0B,$1F,$0A,$00,$0B,$13,$0C,$00,$0A,$80,$80,$13,$07
       .byte $0E,$08,$0F,$09,$15,$0F,$17,$0E,$80,$80,$0B,$00,$09,$07,$0F,$00
       .byte $09,$07,$80,$80,$0C,$00,$08,$07,$0F,$00,$08,$07,$0C,$00,$00,$00
       .byte $00,$03,$00,$00,$80,$80,$0C,$00,$0F,$00,$0D,$00,$0C,$00,$0B,$00
       .byte $00,$00,$17,$00,$80,$80,$17,$1D,$15,$1A,$13,$17,$17,$1D,$11,$15
       .byte $11,$15,$13,$17,$00,$00,$80,$80,$0E,$11,$11,$15,$0F,$13,$13,$17
       .byte $80,$80,$17,$1D,$13,$1F,$11,$1A,$0F,$15,$0E,$17,$00,$00,$0E,$1D
       .byte $80,$80,$17,$1D,$00,$00,$17,$1D,$00,$00,$13,$17,$11,$15,$00,$00
       .byte $10,$13,$00,$00,$10,$13,$00,$00,$10,$13,$11,$15,$00,$00,$13,$17
       .byte $00,$00,$11,$15,$00,$00,$11,$15,$00,$00,$13,$17,$15,$1D,$00,$00
       .byte $13,$17,$00,$00,$00,$00,$00,$00,$80,$80,$13,$17,$0E,$13,$00,$00
       .byte $10,$15,$13,$17,$00,$00,$00,$00,$00,$00,$80,$80,$13,$17,$11,$15
       .byte $00,$00,$11,$15,$00,$00,$0E,$13,$0E,$15,$00,$00,$0E,$17,$80,$80
       .byte $03,$03,$07,$0F,$0F,$0F,$0F,$1E,$1E,$1C,$3C,$7C,$F8,$F0,$F0,$60
       .byte $00,$00,$00,$00,$0F,$1F,$3F,$3F,$7E,$7F,$7F,$3F,$1F,$0F,$0A,$0A
       .byte $0A,$0A,$0A,$07,$0F,$1F,$1F,$0E,$00,$00,$00,$00,$00,$00,$01,$01
       .byte $01,$03,$03,$03,$06,$06,$06,$0E,$1C,$1C,$18,$10,$00,$00,$00,$01
       .byte $03,$07,$07,$0F,$0E,$0E,$07,$03,$00,$00,$00,$01,$0B,$06,$00,$00
       .byte $E7,$C3,$81,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$FF,$FF,$E7,$00,$00,$00,$81,$81,$81,$81,$81,$81
       .byte $81,$81,$81,$81,$81,$00,$00,$00,$66,$66,$66,$C3,$C3,$C3,$81,$81
       .byte $81,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$7E,$7E,$E7,$C3
       .byte $81,$00,$00,$00,$00,$00,$00,$81,$FF,$FF,$E7,$C3,$00,$00,$00,$00
       .byte $64,$94,$14,$27,$44,$84,$94,$60,$00,$62,$95,$14,$24,$4E,$84,$90
       .byte $60,$99,$A5,$A5,$19,$00,$00,$00,$00,$00,$41,$42,$6A,$51,$00,$00
       .byte $00,$00,$04,$0A,$A8,$48,$1C,$08,$00,$00,$00,$94,$AA,$A2,$A2,$00
       .byte $00,$00,$00,$73,$85,$85,$73,$00,$00,$00,$00,$00,$E3,$96,$95,$E3
       .byte $80,$80,$80,$00,$49,$53,$62,$51,$40,$40,$40,$00,$00,$A1,$21,$35
       .byte $A9,$00,$00,$00,$00,$C0,$00,$80,$C0,$00,$00,$06,$09,$01,$07,$09
       .byte $A9,$49,$00,$00,$00,$00,$02,$02,$02,$03,$02,$02,$02,$03,$00,$92
       .byte $95,$95,$F5,$90,$90,$90,$13,$16,$15,$93,$40,$40,$40,$90,$00,$35
       .byte $45,$46,$35,$04,$04,$04,$80,$00,$00,$80,$00,$00,$00,$00,$00,$4D
       .byte $59,$55,$4D,$41,$41,$41,$00,$00,$00,$00,$00,$00,$00,$00,$00,$8D
       .byte $59,$55,$8D,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$08
       .byte $08,$AD,$4A,$00,$00,$00,$00,$00,$00,$00,$00,$00,$30,$48,$08,$38
       .byte $48,$48,$48,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$F2
       .byte $8A,$8A,$8A,$F2,$8A,$8A,$F0,$41,$41,$41,$41,$49,$55,$63,$41,$00
       .byte $63,$95,$94,$93,$00,$00,$00,$00,$31,$49,$49,$4B,$01,$01,$00,$00
       .byte $00,$B8,$25,$A5,$B8,$20,$20,$20,$00,$11,$11,$11,$B9,$10,$54,$89
       .byte $00,$00,$E8,$88,$4D,$EA,$00,$00,$00,$00,$48,$48,$68,$50,$00,$01
       .byte $02,$02,$00,$43,$42,$6A,$52,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $80,$40,$40,$40,$C0,$40,$40,$40,$00,$00,$00,$00,$F5,$85,$85,$85
       .byte $80,$80,$84,$80,$13,$56,$55,$B3,$00,$00,$00,$00,$0C,$12,$20,$20
       .byte $20,$20,$12,$0C,$94,$94,$94,$E5,$80,$80,$84,$00,$88,$89,$89,$DC
       .byte $88,$AA,$44,$00,$C9,$29,$2D,$CA,$00,$00,$00,$00,$00,$00,$84,$8A
       .byte $8A,$8A,$E0,$90,$90,$E0,$08,$08,$8E,$89,$C9,$AE,$00,$00,$00,$00
       .byte $00,$00,$89,$8B,$8A,$89,$E0,$90,$90,$E0,$00,$00,$A2,$2A,$AA,$B6
       .byte $00,$00,$00,$00,$00,$00,$4C,$58,$54,$4C,$40,$40,$40,$00,$00,$00
       .byte $69,$A9,$AD,$6A,$00,$00,$00,$00
L1DD8: .byte $01,$02,$01,$0A,$08
L1DDD: .byte $10,$0F,$10,$07,$09
L1DE2: .byte $80,$CA,$14,$5E,$A8
L1DE7: .byte $A5,$EF,$39,$83,$CD
L1DEC: .byte $00,$05,$0A,$10,$18
L1DF1: .byte $9A,$42,$C2,$16,$EA
L1DF6: .byte $17,$17,$18,$18,$18
L1DFB: .byte $17,$17,$18,$18,$18
L1E00: .byte $1A,$1B,$1A,$1B,$1A
L1E05: .byte $00,$32,$64,$C8,$96
L1E0A: .byte $19,$4B,$7D,$E1,$AF
L1E0F: .byte $00,$08,$0F,$16,$1A
L1E14: .byte $A4,$7A,$CC,$28,$F4
L1E19: .byte $1A,$1B,$1A,$1B,$1A
L1E1E: .byte $0E,$FA,$0E,$36,$22
L1E23: .byte $5E,$4A,$5E,$86,$72
L1E28: .byte $1C,$30,$44,$58,$6C
L1E2D: .byte $B6,$8C,$DE,$32,$06
L1E32: .byte $A0,$B4,$A0,$C8,$DC
L1E37: .byte $F0,$04,$F0,$18,$2C
L1E3C: .byte $1A,$19,$1A,$1A,$1A
L1E41: .byte $1A,$1A,$1A,$1A,$1A
L1E46: .byte $17,$17,$17,$17,$17
L1E4B: .byte $1A,$1B,$1A,$1B,$1B
L1E50: .byte $1B,$1B,$1B,$1B,$1B
L1E55: .byte $1B,$1C,$1B,$1C,$1C
L1E5A: .byte $04,$04,$0C,$04,$01
L1E5F: .byte $40,$A6,$06,$6C,$9C
L1E64: .byte $51,$B6,$17,$74,$A6
L1E69: .byte $62,$C6,$28,$7C,$C4
L1E6E: .byte $73,$D6,$39,$84,$B0
L1E73: .byte $84,$E6,$4A,$8C,$BA
L1E78: .byte $95,$F6,$5B,$94,$CE
L1E7D: .byte $1C,$1C,$1D,$1D,$1D
L1E82: .byte $1C,$1C,$1D,$1D,$1D
L1E87: .byte $1C,$1C,$1D,$1D,$1D
L1E8C: .byte $1C,$1C,$1D,$1D,$1D
L1E91: .byte $1C,$1C,$1D,$1D,$1D
L1E96: .byte $1C,$1C,$1D,$1D,$1D
L1E9B: .byte $00,$00,$00,$00,$00,$00,$00,$20,$70,$70,$70,$F0,$F0,$F0,$F0,$F0
       .byte $F0,$F0,$F0
L1EAE: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$84,$8E
       .byte $DF,$FF,$FF
L1EC1: .byte $80,$C0,$C0,$E0,$E0,$F0,$F0,$F8,$F8,$F8,$F8,$FC,$FC,$FC,$FC,$FE
       .byte $FE,$FF,$FF
L1ED4: .byte $01,$03,$3C,$3B,$37,$2F,$2D,$5D,$DF,$DB,$5D,$2E,$2F,$37,$3B,$3C
       .byte $03,$01
L1EE6: .byte $00
L1EE7: .byte $80,$00,$C0,$00,$E0,$00,$E0,$00,$F0,$00,$F0,$00,$F8,$00,$F8,$00
       .byte $FC,$00,$FC,$00,$FE,$00,$FE,$00,$FE,$00,$FF
L1F02: .byte $01
L1F03: .byte $03
L1F04: .byte $00
L1F05: .byte $03
L1F06: .byte $01
L1F07: .byte $FF
L1F08: .byte $01
L1F09: .byte $03
L1F0A: .byte $22,$55,$88,$88,$55,$22
L1F10: .byte $00,$18,$3C,$3C,$7E,$7E,$7E,$3C,$18,$24,$66
L1F1B: .byte $56,$44,$44,$44,$44,$44,$44,$44,$D8,$D8,$D8
L1F26: STA    $82     
       LSR            
       LSR            
       LSR            
       LSR            
       SEC            
       ADC    $82     
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $83     
       CLC            
       ADC    $82     
       EOR    #$FF    
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    $83     
       CLC            
       ADC    #$83    
       RTS            

L1F44: STA    HMP0,X  
       AND    #$0F    
       TAY            
       STA    WSYNC   
L1F4B: DEY            
       BPL    L1F4B   
       STA    RESP0,X 
       STA    WSYNC   
       RTS            

L1F53: LDX    #$04    
L1F55: JSR    L1F61   
       STA    $98,X   
       DEX            
       BPL    L1F55   
       JSR    L14E1   
       RTS            

L1F61: CLC            
       LDA    $CC     
       TAY            
       ADC    $D1     
       STY    $D1     
       AND    #$07    
       STA    $CC     
       CMP    #$03    
       BCC    L1F79   
       LDY    #$03    
       AND    #$02    
       BNE    L1F78   
       INY            
L1F78: TYA            
L1F79: RTS            

L1F7A: INC    $B4     
       LDA    $B4     
       CMP    #$FF    
       BEQ    L1F85   
       JMP    L14B6   
L1F85: LDA    #$05    
       LDX    #$02    
       LDY    #$00    
       STY    $DE     
       INC    $98     
       CMP    $98     
       BNE    L1F95   
       STY    $98     
L1F95: LDA    $98     
       STA    $99     
       STA    $9A     
       STA    $9B     
       INY            
       STY    $DC     
       JMP    L147C   
L1FA3: LDX    #$05    
L1FA5: LDA    L1F0A,X 
       STA    WSYNC   
       STA    GRP0    
       STA    GRP1    
       DEX            
       BPL    L1FA5   
       RTS            

L1FB2: LDX    #$01    
       LDA    $88     
       BNE    L1FBA   
L1FB8: LDA    $87     
L1FBA: JSR    L1F26   
       JSR    L1F44   
       DEX            
       BPL    L1FB8   
       STA    WSYNC   
       STA    HMOVE   
       RTS            

L1FC8: LDX    $A9     
       DEX            
       BNE    L1FD9   
       STX    AUDV0   
       STX    AUDV1   
       STX    AUDF0   
       STX    AUDF1   
       STX    AUDC0   
       STX    AUDC1   
L1FD9: JMP    L1394   
L1FDC: LDY    #$03    
L1FDE: JSR    L1FA3   
       DEY            
       BNE    L1FDE   
       JMP    L12CC   
L1FE7: LDX    #$00    
       STX    GRP1    
       STX    GRP0    
       STX    GRP1    
       STX    GRP1    
       STX    VDELP0  
       STX    VDELP1  
       RTS            

L1FF6: .byte $50,$42,$31,$39,$38,$33,$00,$10,$00,$10
