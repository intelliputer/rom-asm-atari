; Disassembly of roms/Laser Gates.bin
; Disassembled Tue Oct  6 15:21:51 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Laser Gates.bin
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
HMP0    =  $20
HMP1    =  $21
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
CXCLR   =  $2C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM8T   =  $0295
TIM64T  =  $0296
L1AD1   =   $1AD1
L1AFA   =   $1AFA

       ORG $1000

START:
       SEI            
       CLD            
       LDA    #$00    
       TAX            
L1005: TXS            
       PHA            
       INX            
       BNE    L1005   
       JMP    L1206   
L100D: LDX    #$04    
       STX    CTRLPF  
       LDX    #$02    
L1013: LDA    $8E,X   
       JSR    L1D4B   
       STA    HMP0,X  
       STA    WSYNC   
L101C: DEY            
       BPL    L101C   
       STA    RESP0,X 
       STA    WSYNC   
       DEX            
       BPL    L1013   
       STA    WSYNC   
       STA    HMOVE   
       LDA    $A1     
       BMI    L102F   
       INX            
L102F: STX    REFP0   
       LDA    $9B     
       STA    $85     
       LDY    #$0C    
       LDA    #$22    
       LDX    #$02    
       JSR    L1CEF   
       LDA    ($85),Y 
       JSR    L1CE6   
       STA    GRP0    
       LDA    $83     
       BNE    L1090   
       LDY    #$4F    
       LDX    #$12    
       JSR    L1B70   
       LDX    #$CD    
       TXS            
       LDA    $BD     
       STA    COLUP0  
       STA    COLUP1  
L1059: PLA            
       STA    WSYNC   
       STA.w  $001B   
       PLA            
       STA    GRP1    
       PLA            
       STA    GRP0    
       PLA            
       TAY            
       PLA            
       TAX            
       DEC    $87     
       PLA            
       STY    GRP1    
       STX    GRP0    
       STA    GRP1    
       STA    GRP0    
       LDX    $87     
       LDA    $B6,X   
       STA    COLUP0  
       STA    COLUP1  
       TXA            
       BNE    L1059   
       STA    WSYNC   
       STX    GRP0    
       STX    GRP1    
       STX    GRP0    
       LDX    #$13    
L1089: STA    WSYNC   
       DEX            
       BNE    L1089   
       BEQ    L10C2   
L1090: LDX    #$CD    
       TXS            
       LDX    #$01    
       BNE    L1099   
L1097: LDX    #$00    
L1099: LDA    $99,X   
       STA    $85     
       LDA    $9C,X   
       STA    $87     
       LDY    #$17    
L10A3: LDA    ($85),Y 
       TAX            
       LDA    ($87),Y 
       STA    WSYNC   
       STA    COLUP1  
       STX    GRP0    
       PLA            
       STA    GRP1    
       LDA    #$01    
       TSX            
       CPX    $89     
       BNE    L10B9   
       ASL            
L10B9: STA    ENAM0   
       DEY            
       BPL    L10A3   
       CPX    #$FD    
       BNE    L1097   
L10C2: INC    $8D     
       LDA    $98     
       STA    $85     
       LDY    #$17    
       LDA    #$28    
       LDX    #$FF    
       TXS            
       DEX            
       JSR    L1CEF   
       LDY    #$FF    
       JSR    L1CE6   
       STY    $8D     
       LDX    #$00    
       STX    $9E     
L10DE: LDA    $80,X   
       LSR            
       LSR            
       LSR            
       LSR            
       BNE    L10EE   
       LDY    $9E     
       BMI    L10F0   
       LDA    #$0B    
       BNE    L10F0   
L10EE: DEC    $9E     
L10F0: EOR    #$01    
       TAY            
       LDA    L1DC4,Y 
       TAY            
       LDA    L1F00,Y 
       AND    #$F0    
       STA    $D7,X   
       LDA    L1F01,Y 
       AND    #$F0    
       STA    $DD,X   
       LDA    L1F02,Y 
       AND    #$F0    
       STA    $E3,X   
       LDA    L1F03,Y 
       AND    #$F0    
       STA    $E9,X   
       LDA    L1F04,Y 
       AND    #$F0    
       STA    $EF,X   
       LDA    $80,X   
       AND    #$0F    
       TAY            
       BNE    L1129   
       LDA    $9E     
       BMI    L112B   
       LDY    #$0A    
       BNE    L112B   
L1129: DEC    $9E     
L112B: LDA    L1DC4,Y 
       TAY            
       LDA    L1F00,Y 
       AND    #$0F    
       ORA    $D7,X   
       STA    $D7,X   
       LDA    L1F01,Y 
       AND    #$0F    
       ORA    $DD,X   
       STA    $DD,X   
       LDA    L1F02,Y 
       AND    #$0F    
       ORA    $E3,X   
       STA    $E3,X   
       LDA    L1F03,Y 
       AND    #$0F    
       ORA    $E9,X   
       STA    $E9,X   
       LDA    L1F04,Y 
       AND    #$0F    
       ORA    $EF,X   
       STA    $EF,X   
       INX            
       CPX    #$03    
       BEQ    L1164   
       JMP    L10DE   
L1164: LDX    #$08    
       LDY    #$EF    
       JSR    L1B70   
       LDA    #$02    
       STA    COLUPF  
       LDY    #$00    
L1171: STY    $D0,X   
       DEX            
       BNE    L1171   
       LDX    #$09    
L1178: STY    $F4,X   
       DEX            
       BNE    L1178   
       LDX    #$26    
L117F: LDY    #$02    
L1181: LDA    L1F32,X 
       STA    $CE,X   
       DEX            
       DEY            
       BPL    L1181   
       DEX            
       DEX            
       DEX            
       BPL    L117F   
       LDX    #$06    
       LDA    #$84    
       LDY    $B0     
       BNE    L119E   
       LDY    $83     
       BNE    L119E   
       LDA    #$F6    
       TAX            
L119E: STX    COLUP0  
       STX    COLUP1  
       STA    $A8     
       LDA    $80     
       BNE    L11AE   
       LDA    $81     
       CMP    #$10    
       BCC    L11B6   
L11AE: LDA    #$10    
       STA    $F6     
       LDA    #$30    
       STA    $FC     
L11B6: JSR    L1C39   
       LDY    #$05    
       LDA    $A5     
       JSR    L1BBB   
       LDY    #$17    
       LDA    $A6     
       JSR    L1BBB   
       LDY    #$29    
       LDA    $A7     
       JSR    L1BBB   
       LDY    #$0A    
L11D0: DEY            
       STA    WSYNC   
       BNE    L11D0   
       LDA    #$25    
       STA    TIM64T  
       LDA    $83     
       CMP    #$01    
       BNE    L11E8   
       BIT    REFP1   
       BMI    L11E8   
       STA    $92     
       BPL    L11F5   
L11E8: ROR    SWCHB   
       BCS    L11F5   
       STY    $83     
       BCC    L11FD   
       BRK            
       BRK            
       BRK            
       BRK            
L11F5: LDA    $92     
       BEQ    L122A   
       DEC    $92     
       BNE    L124B   
L11FD: LDX    #$41    
L11FF: STY    $80,X   
       DEX            
       BPL    L11FF   
       STX    $83     
L1206: LDA    #$51    
       STA    $8A     
       STA    $95     
       LDA    #$1F    
       STA    $A6     
       STA    $86     
       STA    $96     
       STA    $A1     
       LDA    #$28    
       STA    $A7     
       STA    $A5     
       LDX    #$0B    
L121E: LDA    L1DB8,X 
       STA    $C2,X   
       STX    $AC     
       DEX            
       BPL    L121E   
       STX    $8D     
L122A: LDA    $83     
       BNE    L124B   
       LDA    $B0     
       BNE    L124B   
       LDX    $93     
       BNE    L124B   
       LDY    $AF     
       TXA            
       LDX    #$3D    
L123B: STA    $84,X   
       DEX            
       BNE    L123B   
       STY    $AF     
       INX            
       STX    $83     
       LDA    #$C4    
       STA    $84     
       BNE    L1206   
L124B: LDA    WSYNC   
       BPL    L1275   
       LDA    $A3     
       BEQ    L125E   
       LDA    $93     
       LSR            
       BCS    L125E   
       LDA    #$9B    
       STA    $8C     
       BNE    L1275   
L125E: LDA    $A1     
       AND    #$7F    
       LDX    #$04    
       CMP    #$30    
       BCC    L126A   
       LDX    #$FB    
L126A: STX    $9E     
       ADC    $9E     
       STA    $A1     
       LDA    #$01    
       JSR    L1AD1   
L1275: BIT    VSYNC   
       BVC    L1287   
       LDA    $93     
       LSR            
       BCC    L1287   
       LDA    #$01    
       JSR    L1AD1   
       LDA    #$00    
       STA    $89     
L1287: LDA    COLUP1  
       BMI    L128E   
L128B: JMP    L1336   
L128E: LDA    $A9     
       AND    #$C0    
       CMP    #$40    
       BEQ    L128B   
       LDA    $A3     
       BEQ    L129F   
       LDA    $93     
       LSR            
       BCC    L12CA   
L129F: LDA    #$06    
       LDY    #$00    
       LDX    $A9     
       BMI    L12BC   
       CPX    #$14    
       BNE    L12B1   
       LDX    #$45    
       STX    $8A     
       BNE    L12C5   
L12B1: CPX    #$13    
       BNE    L12BC   
       LDA    #$24    
       ADC    $A5     
       STA    $A5     
       TYA            
L12BC: STY    $A9     
       STY    $8F     
       STY    $89     
       TAY            
       BEQ    L1336   
L12C5: JSR    L1AD1   
       BNE    L1336   
L12CA: LDA    #$9B    
       STA    $8C     
       LDA    $A9     
       BMI    L1300   
       CMP    #$14    
       BNE    L131C   
       LDA    $A2     
       LDX    #$03    
L12DA: CMP    L1D61,X 
       BCC    L1336   
       CMP    L1D65,X 
       BCC    L12E9   
       DEX            
       BPL    L12DA   
       BMI    L1336   
L12E9: LDA    $B8,X   
       BMI    L12F6   
       LDY    $AE     
       LDA    L1ACE,Y 
       STA    $A7     
       BNE    L131C   
L12F6: LDA    #$06    
       JSR    L1AD1   
       ASL            
       STA    $B8,X   
       BMI    L1336   
L1300: CMP    #$B0    
       BCC    L1336   
       LDA    $A2     
       SBC    #$14    
       LSR            
       LSR            
       TAX            
       CPX    #$0C    
       BCS    L1336   
       LDA    $B6,X   
       CMP    #$10    
       BEQ    L1336   
       CLC            
       ADC    #$04    
       STA    $B6,X   
       BNE    L1336   
L131C: LDA    $A9     
       ORA    #$40    
       STA    $A9     
       AND    #$07    
       TAX            
       LDY    L1D9D,X 
       LDA    L1DA5,X 
       JSR    L1B9F   
       LDA    #$00    
       STA    $AB     
       LDA    $8F     
       STA    $B6     
L1336: LDX    $A1     
       LDA    SWCHA   
       LDY    $83     
       BMI    L1349   
       LDY    #$DF    
       LDA    $93     
       AND    #$20    
       BEQ    L1348   
       INY            
L1348: TYA            
L1349: AND    #$F0    
       LDY    #$00    
       ASL            
       BCS    L1356   
       LDX    #$00    
       LDY    #$01    
       BNE    L135C   
L1356: BMI    L135C   
       LDY    #$FF    
       LDX    #$80    
L135C: ASL            
       BMI    L1363   
       LDA    #$01    
       BNE    L1369   
L1363: ASL            
       ASL            
       BCS    L1369   
       LDA    #$FF    
L1369: STX    $98     
       CLC            
       ADC    $A1     
       ASL            
       CMP    #$14    
       BNE    L1375   
       LDA    #$16    
L1375: STA    $A1     
       TXA            
       ASL            
       ROR    $A1     
       LDA    $AE     
       LSR            
       EOR    #$01    
       AND    $93     
       TAX            
       LDA    $93     
       AND    #$03    
       CMP    #$03    
       BNE    L138C   
       INX            
L138C: STX    $A0     
       TYA            
       BNE    L1396   
       LDY    $A0     
       BNE    L13AF   
       DEY            
L1396: LDA    $8A     
       JSR    L1D2D   
       CMP    #$45    
       BCC    L13AF   
       CMP    #$B9    
       BCS    L13A7   
       STA    $8A     
       BNE    L13AF   
L13A7: LDA    $93     
       LSR            
       BCC    L13AF   
       JSR    L1CBB   
L13AF: LDA    $A0     
       BNE    L13B6   
       JSR    L1CBB   
L13B6: LDX    $A3     
       BNE    L13DC   
       LDA    $8C     
       BNE    L13DC   
       LDA    $83     
       BPL    L13C6   
       LDA    REFP1   
       BMI    L141A   
L13C6: LDA    $8A     
       LDY    #$07    
       LDX    $A1     
       BPL    L13D3   
       LDY    #$FF    
       SEC            
       SBC    #$10    
L13D3: STX    $A2     
       JSR    L1D2D   
       STA    $A3     
       INC    $8C     
L13DC: LDA    $93     
       LSR            
       BCC    L1407   
       LDY    $8C     
       BMI    L1403   
       CPY    #$0E    
       BCC    L13EB   
       LDY    #$0E    
L13EB: LDA    $A2     
       BPL    L13F4   
       TYA            
       EOR    #$FF    
       TAY            
       INY            
L13F4: LDA    $A3     
       BEQ    L1407   
       JSR    L1D2D   
       CMP    #$CA    
       BCS    L1403   
       CMP    #$31    
       BCS    L1405   
L1403: LDA    #$00    
L1405: STA    $A3     
L1407: LDX    $8C     
       BEQ    L141A   
       INX            
       TXA            
       TAY            
       AND    #$7F    
       CMP    #$20    
       BNE    L1418   
       LDX    #$00    
       STX    $A3     
L1418: STX    $8C     
L141A: LDA    #$90    
       LDX    #$03    
L141E: STA    $98,X   
       DEX            
       BPL    L141E   
       LDA    $93     
       LSR            
       BCC    L1442   
       LDA    $8C     
       BMI    L1442   
       CMP    #$0E    
       BCC    L1432   
       LDA    #$0E    
L1432: ORA    #$40    
       LDX    #$25    
       LDY    #$B2    
       STA    COLUP0  
       STX    NUSIZ0  
       LDA    $A2     
       LDX    $A3     
       BNE    L1450   
L1442: LDA    #$88    
       STA    COLUP0  
       LDA    #$20    
       STA    NUSIZ0  
       LDA    $A1     
       LDY    #$96    
       LDX    $8A     
L1450: STY    $9E     
       STX    $8E     
       AND    #$7F    
       LDX    #$03    
L1458: CMP    #$18    
       BCC    L1461   
       SBC    #$18    
       DEX            
       BPL    L1458   
L1461: CLC            
       ADC    $9E     
       STA    $98,X   
       CPY    #$96    
       BNE    L1470   
       CMP    #$A9    
       BCC    L1480   
       BCS    L147C   
L1470: CPY    #$B2    
       BNE    L1480   
       CMP    #$C6    
       BCC    L1480   
       LDY    #$90    
       STY    $98,X   
L147C: SBC    #$18    
       STA    $97,X   
L1480: LDA    INTIM   
       BNE    L1480   
       STA    VDELP0  
       STA    VDELP1  
       LDY    #$FF    
       STA    WSYNC   
       STY    VBLANK  
       STY    VSYNC   
       LDX    #$FD    
       TXS            
       LDX    #$0F    
L1496: PHA            
       PHA            
       PHA            
       DEX            
       BPL    L1496   
       TXS            
       INY            
       STY    VSYNC   
       STY    VBLANK  
       LDA    #$2C    
       STA    TIM64T  
       INC    $93     
       LDA    #$22    
       STA    COLUPF  
       LDA    $83     
       BNE    L14DD   
L14B1: LDX    #$2F    
       LDA    $B0     
       BNE    L14BF   
L14B7: LDA    L1DCF,X 
       STA    $CE,X   
       DEX            
       BPL    L14B7   
L14BF: LDX    #$08    
       STX    $87     
       LDA    $93     
       AND    #$07    
       BNE    L14D4   
       LDY    $AF     
L14CB: STY    $B6,X   
       INY            
       INY            
       DEX            
       BPL    L14CB   
       INC    $AF     
L14D4: LDA    #$90    
       STA    $98     
       STA    $9B     
       JMP    L19CD   
L14DD: LDA    $AD     
       TAX            
       CMP    #$40    
       BCC    L14EC   
       AND    #$0F    
       DEC    $AD     
       STA    COLUBK  
       STX    COLUP0  
L14EC: LDA    $95     
       STA    $9E     
       LDA    $94     
       STA    $9F     
       LDA    #$00    
       LDX    #$08    
L14F8: LSR    $9E     
       BCC    L14FF   
       CLC            
       ADC    $9F     
L14FF: ROR            
       ROR    $94     
       DEX            
       BNE    L14F8   
       CLC            
       LDA    $94     
       ADC    $96     
       STA    $94     
       INC    $8B     
       BNE    L152D   
L1510: TAX            
       ASL            
       SEC            
       ROL            
       STA    $95     
       TXA            
       SEC            
       ROL            
       STA    $96     
       BNE    L152D   
       LDA    $8A     
       AND    #$0E    
       BEQ    L1529   
       LDA    $A1     
       AND    #$0F    
       BNE    L152D   
L1529: LDA    $93     
       BNE    L1510   
L152D: LDX    $89     
       BEQ    L1551   
       LDA    $90     
       LDY    $C1     
       JSR    L1D2D   
       CMP    #$32    
       BCC    L154D   
       CMP    #$CE    
       BCS    L154D   
       STA    $90     
       TXA            
       ADC    $C0     
       CMP    #$FD    
       BCS    L154D   
       CMP    #$CE    
       BCS    L154F   
L154D: LDA    #$00    
L154F: STA    $89     
L1551: BIT    $A9     
       BMI    L15A6   
       BVC    L15A6   
       LDA    $B6     
       STA    $8F     
       LDA    #$A8    
       JSR    L1AEA   
       LDA    #$1E    
       STA    $BD     
       LDA    $93     
       AND    #$07    
       BNE    L157A   
       INC    $AB     
       LDA    $AB     
       CMP    #$0C    
       BNE    L157A   
       LDA    #$00    
       STA    $8F     
       STA    $A9     
       BEQ    L15A3   
L157A: LDA    $AB     
       LDY    #$E2    
       LDX    #$00    
       STX    NUSIZ1  
       INX            
       JSR    L1AF9   
       LDA    $AB     
       EOR    #$FF    
       LDY    #$EA    
       TSX            
       JSR    L1AF9   
       LDA    #$8D    
       LDY    $A9     
       CPY    #$52    
       BCC    L159E   
       LDA    #$87    
       CPY    #$57    
       BNE    L15A3   
L159E: LDX    $A4     
       JSR    L1B30   
L15A3: JMP    L19B4   
L15A6: LDA    $AC     
       BEQ    L15AD   
       JMP    L164E   
L15AD: INC    $84     
       INC    $84     
       BNE    L15B8   
       INC    $B0     
       JMP    L19BC   
L15B8: LDA    $84     
       TAY            
       ROL            
       ROL            
       ROL            
       AND    #$03    
       STA    $AE     
       LDA    #$14    
       STA    $B7     
       LDX    #$02    
       TYA            
       AND    #$3F    
       CMP    #$3E    
       BEQ    L15FD   
       AND    #$1F    
       BNE    L15DB   
       LDA    #$13    
       STA    $B7     
       LDX    #$02    
       BNE    L15FD   
L15DB: LDA    L1300,Y 
       BMI    L1607   
       LDY    $94     
       LDX    #$05    
L15E4: TYA            
       LSR            
       TAY            
       AND    #$07    
       CMP    #$03    
       BEQ    L15F1   
       CMP    #$04    
       BNE    L15F2   
L15F1: LSR            
L15F2: ORA    #$10    
       STA    $B6,X   
       DEX            
       BNE    L15E4   
       LDX    $AE     
       INX            
       INX            
L15FD: LDA    #$00    
       STX    $AC     
       STA    $A9     
       STA    $8F     
       BEQ    L164E   
L1607: LDA    #$02    
       STA    $AC     
       LDA    $94     
       LSR            
       AND    #$19    
       STA    $9E     
       LDA    $AE     
       ASL            
       ORA    $9E     
       TAY            
       LDA    L1D7D,Y 
       STA    $A9     
       ASL            
       BPL    L162B   
       LDA    #$00    
       LDX    #$0B    
L1624: STA    $B6,X   
       DEX            
       BPL    L1624   
       BMI    L164E   
L162B: ASL            
       BPL    L163D   
       TSX            
       LDA    $94     
       STX    $A4     
       AND    #$0F    
       STA    $AB     
       LDA    #$24    
       STA    $AA     
       BNE    L164E   
L163D: LDA    #$01    
       STA    $AA     
       LDY    $AE     
       BEQ    L1646   
       LSR            
L1646: STA    $AB     
       LDA    $94     
       AND    #$17    
       STA    $A4     
L164E: LDA    $8F     
       BNE    L1663   
       LDA    $AD     
       CMP    #$40    
       BCS    L165C   
       DEC    $AC     
       BNE    L165F   
L165C: JMP    L19B4   
L165F: LDY    #$D3    
       STY    $8F     
L1663: LDA    $A9     
       BMI    L166A   
       JMP    L1780   
L166A: LDY    $8F     
       LDA    $A9     
       AND    #$07    
       TAX            
       STX    NUSIZ1  
       BEQ    L167B   
       ORA    #$02    
       CMP    #$07    
       BNE    L168B   
L167B: CPY    #$34    
       BCS    L168B   
       LDA    #$00    
       STA    $8F     
       LDY    #$04    
       JSR    L1B9F   
       JMP    L164E   
L168B: DEX            
       DEX            
       BMI    L16DF   
       BNE    L169D   
       CPY    #$B1    
       BCS    L16DD   
       CPY    #$33    
       BCS    L16DF   
       LDY    #$54    
       BNE    L16D5   
L169D: DEX            
       DEX            
       BNE    L16AD   
       CPY    #$8F    
       BCS    L16DD   
       CPY    #$33    
       BCS    L16DF   
       LDY    #$76    
       BNE    L16D5   
L16AD: DEX            
       BNE    L16B8   
       CPY    #$CA    
       BCC    L16DF   
       LDA    #$C9    
       BNE    L16D1   
L16B8: DEX            
       BNE    L16DF   
       CPY    #$B1    
       BCS    L16DD   
       LDX    #$02    
       CPY    #$8F    
       BCS    L16DD   
       CPY    #$33    
       BCS    L16DF   
       LDA    $A9     
       AND    #$FA    
       LDY    #$54    
       BNE    L16D9   
L16D1: STA    $8F     
       BNE    L16DF   
L16D5: LDA    $A9     
       AND    #$F8    
L16D9: STA    $A9     
       STY    $8F     
L16DD: STX    NUSIZ1  
L16DF: LDA    $94     
       STA    COLUP1  
       DEC    $9C     
       INC    $9D     
       LDA    #$1A    
       STA    $88     
       TSX            
       STX    GRP1    
       LDA    $A9     
       ASL            
       BPL    L171B   
       LDX    #$FD    
       TXS            
       LDX    #$0B    
L16F8: LDY    $B6,X   
       LDA    L1FE0,Y 
       PHA            
       LDA    L1FDF,Y 
       PHA            
       LDA    L1FDE,Y 
       PHA            
       LDA    L1FDD,Y 
       PHA            
       DEX            
       BPL    L16F8   
       STX    GRP1    
       TXS            
       LDA    #$06    
       STA    COLUP1  
       LDA    #$1E    
       STA    $88     
       JMP    L1923   
L171B: ASL            
       BPL    L1736   
       DEC    $AB     
       BPL    L172C   
       LDA    $A4     
       EOR    #$FF    
       STA    $A4     
       LDY    $AA     
       STY    $AB     
L172C: LDA    $A4     
       STA    GRP1    
       LDX    #$00    
       LDY    #$2F    
       BNE    L1752   
L1736: ASL            
       BPL    L175B   
       LDA    $93     
       AND    #$04    
       BNE    L1744   
       LDA    #$21    
       JSR    L1B3F   
L1744: LDY    #$0E    
L1746: LDA    #$FF    
       LDX    #$30    
L174A: STA    $CD,X   
       DEX            
       BNE    L174A   
       TXA            
       LDX    $A4     
L1752: STA    $CE,X   
       INX            
       DEY            
       BPL    L1752   
       JMP    L19B4   
L175B: LDA    #$18    
       JSR    L1B3F   
       CPY    #$07    
       BCS    L1768   
       LDA    #$01    
       STA    $AA     
L1768: LDA    #$1A    
       STA    $88     
       DEC    $9C     
       INC    $9D     
       LDA    $94     
       STA    COLUP1  
       TSX            
       STX    GRP1    
       LDA    #$18    
       SEC            
       SBC    $A4     
       ASL            
       TAY            
       BNE    L1746   
L1780: LDA    #$1E    
       STA    $88     
       LDA    #$00    
       STA    NUSIZ1  
       JSR    L1B26   
       LDA    $A9     
       BEQ    L17E9   
       LDX    $89     
       BNE    L17E6   
       CPY    #$03    
       BNE    L17E6   
       LDX    $A4     
       CMP    #$17    
       BEQ    L17DC   
       CMP    #$12    
       BNE    L17E6   
       LDX    #$00    
       LDA    $8A     
       AND    #$F0    
       STA    $9E     
       LDA    $8F     
       AND    #$F0    
       CMP    $9E     
       BEQ    L17B9   
       BCS    L17B7   
       LDX    #$08    
       BNE    L17B9   
L17B7: LDX    #$FC    
L17B9: STX    $C1     
       TXA            
       BNE    L17C1   
       INX            
       BNE    L17C9   
L17C1: LDA    $A1     
       AND    #$03    
       TAY            
       LDX    L1FF8,Y 
L17C9: LDY    $A4     
       BEQ    L17D2   
       TXA            
       EOR    #$FF    
       TAX            
       INX            
L17D2: STX    $C0     
       LDX    #$0F    
       LDA    $A4     
       BEQ    L17DC   
       LDX    #$20    
L17DC: TXA            
       CLC            
       ADC    #$CE    
       STA    $89     
       LDA    $8F     
       STA    $90     
L17E6: JMP    L1857   
L17E9: LDX    $AC     
       LDA    $B6,X   
       STA    $A9     
       AND    #$07    
       CMP    #$02    
       BCC    L181A   
       CMP    #$04    
       BCC    L1829   
       BEQ    L1837   
       LDA    $94     
       AND    #$1F    
       STA    $A4     
       TSX            
       STX    $BE     
       LDA    $94     
       AND    #$03    
       TAY            
       LDA    L1DBD,Y 
       STA    $BF     
       TSX            
       TXA            
       EOR    $AE     
       ASL            
       STA    $C1     
       INX            
       STX    $C0     
       BEQ    L1857   
L181A: LDA    $94     
       AND    #$1F    
       STA    $A4     
       TSX            
       STX    $BE     
       INX            
       STX    $BF     
       JMP    L1857   
L1829: LDY    #$00    
       LDA    $84     
       AND    #$10    
       BNE    L1833   
       LDY    #$29    
L1833: STY    $A4     
       BNE    L1857   
L1837: LDA    #$03    
       TAX            
L183A: STA    $B8,X   
       DEX            
       BPL    L183A   
       LDA    $94     
       AND    $93     
       STA    $9E     
       LDY    $AE     
       BEQ    L1857   
L1849: LDA    $9E     
       AND    #$03    
       TAX            
       LDA    #$FF    
       STA    $B8,X   
       INC    $9E     
       DEY            
       BNE    L1849   
L1857: LDA    $8F     
       CMP    #$32    
       BCS    L1868   
       LDA    #$00    
       STA    $A9     
       STA    $8F     
       STA    $89     
       JMP    L19B4   
L1868: JSR    L1B26   
       LDA    $A9     
       AND    #$07    
       CMP    #$02    
       BCS    L1876   
       JMP    L196A   
L1876: BNE    L187B   
       JMP    L1942   
L187B: CMP    #$04    
       BCS    L1882   
       JMP    L1927   
L1882: BEQ    L1903   
       CMP    #$07    
       BNE    L1890   
       LDX    L1D69,Y 
       LDA    L1D6D,Y 
       BNE    L1895   
L1890: LDX    #$9B    
       LDA    L1FF0,Y 
L1895: STX    $9E     
       LDX    $A4     
       JSR    L1B30   
       JSR    L1AEC   
       TSX            
       LDA    $8A     
       CMP    $8F     
       BNE    L18B2   
       LDA    $A1     
       AND    #$7F    
       CMP    $A4     
       BCC    L18C1   
       LDX    #$01    
       BNE    L18C1   
L18B2: LDA    $93     
       AND    #$1F    
       BNE    L18C3   
       LDA    $94     
       LSR            
       AND    #$03    
       TAY            
       LDX    L1DBD,Y 
L18C1: STX    $BF     
L18C3: LDY    #$01    
       LDA    $8A     
       CMP    $8F     
       BCS    L18D2   
       DEY            
       ADC    #$20    
       CMP    $8F     
       BCS    L18D4   
L18D2: STY    $BE     
L18D4: LDA    $BE     
       LDY    $AE     
       CPY    #$02    
       BCC    L18DD   
       ASL            
L18DD: TAY            
       LDA    $8F     
       JSR    L1D2D   
       TSX            
       CMP    #$D3    
       BCC    L18EA   
       STX    $BE     
L18EA: STA    $8F     
       LDX    #$01    
       LDA    $BF     
       CLC            
       ADC    $A4     
       BMI    L18FE   
       TSX            
       CMP    #$25    
       BEQ    L18FE   
       LDX    $BF     
       STA    $A4     
L18FE: STX    $BF     
       JMP    L19B4   
L1903: LDA    $8F     
       BMI    L190B   
       LDA    #$81    
       STA    $8F     
L190B: LDX    #$0B    
       JSR    L1B62   
       LDX    #$17    
L1912: LDA    L1E6F,X 
       STA    $DA,X   
       DEX            
       BPL    L1912   
       LDX    #$2F    
       JSR    L1B62   
       LDA    #$06    
       STA    COLUP1  
L1923: LDY    #$93    
       BNE    L1964   
L1927: LDA    #$16    
       LDX    $A4     
       BEQ    L192F   
       LDA    #$FB    
L192F: JSR    L1B30   
       LDY    #$A9    
       LDA    $93     
       AND    #$10    
       BNE    L193C   
       LDY    #$93    
L193C: STY    $9C     
       STY    $9D     
       BNE    L19B4   
L1942: LDA    L1D71,Y 
       LDX    $A4     
       BEQ    L1952   
       LDX    #$22    
       JSR    L1B30   
       LDY    #$B3    
       BNE    L1964   
L1952: TAY            
       LDX    #$0D    
L1955: LDA    L1E00,Y 
       STA    $CE,X   
       INY            
       DEX            
       BPL    L1955   
       LDA    #$81    
       STA    GRP1    
       LDY    #$93    
L1964: STY    $9C     
       STY    $9D     
       BNE    L19B4   
L196A: LDX    $BF     
       LDA    $A4     
       CLC            
       ADC    $BF     
       CMP    #$02    
       BCS    L1978   
       LDX    #$01    
       TXA            
L1978: CMP    #$29    
       BCC    L197F   
       TSX            
       LDA    #$29    
L197F: STA    $A4     
       STX    $BF     
       TAX            
       LDA    #$48    
       JSR    L1B30   
       LDA    $8F     
       LDY    #$FF    
       JSR    L1D2D   
       STA    $8F     
       LDX    #$00    
       CMP    $8A     
       BCC    L19AD   
       SBC    #$28    
       CMP    $8A     
       BCS    L19AF   
       TSX            
       LDA    $A1     
       AND    #$7F    
       SBC    #$18    
       BMI    L19AD   
       CMP    $A4     
       BCC    L19AD   
       LDX    #$01    
L19AD: STX    $BF     
L19AF: LDA    #$AE    
       JSR    L1AEA   
L19B4: LDA    $93     
       BNE    L19C6   
       DEC    $A7     
       BNE    L19C6   
L19BC: LDX    #$00    
       STX    $83     
       INX            
       STX    $93     
       JMP    L14B1   
L19C6: ASL            
       BNE    L19CD   
       DEC    $A5     
       BEQ    L19BC   
L19CD: LDA    $83     
       BMI    L19D5   
       LDA    #$00    
       BEQ    L1A11   
L19D5: LDA    $AD     
       CMP    #$40    
       BCC    L19F3   
       LDX    #$09    
       AND    #$0F    
       EOR    #$0F    
       CMP    #$09    
       BCC    L19E7   
       LDA    #$09    
L19E7: TAY            
       LDA    L1DAC,Y 
       LDY    #$1E    
       BNE    L1A11   
       LDA    $83     
       BEQ    L1A11   
L19F3: LDX    #$08    
       LDA    $8C     
       BEQ    L1A06   
       BPL    L19FD   
       LDX    #$0F    
L19FD: AND    #$1F    
       TAY            
       EOR    #$1F    
       LSR            
       LSR            
       BPL    L1A11   
L1A06: LDA    $8A     
       LSR            
       LSR            
       LSR            
       LSR            
       EOR    #$1F    
       TAY            
       LDA    #$02    
L1A11: STA    AUDV0   
       STX    AUDC0   
       STY    AUDF0   
       LDA    $83     
       BPL    L1A7D   
       BIT    $A9     
       BMI    L1A8F   
       BVC    L1A2E   
       LDY    $AB     
       LDA    L1DAC,Y 
       STA    AUDV1   
       LDX    #$08    
       LDY    #$1E    
       BNE    L1A7F   
L1A2E: JSR    L1B26   
       LDA    $A9     
       CMP    #$12    
       BCS    L1A45   
       LDA    $8F     
       LSR            
       LSR            
       LSR            
       EOR    #$1F    
       TAY            
       LDA    #$08    
       LDX    #$06    
       BNE    L1A7F   
L1A45: BNE    L1A50   
       LDA    L1FF3,Y 
       LDX    #$0A    
       LDY    #$05    
       BNE    L1A7F   
L1A50: CMP    #$14    
       BCS    L1A63   
       LDX    #$0B    
       LDA    $93     
       AND    #$06    
       BNE    L1A7F   
       LDA    #$08    
       TAY            
       LDX    #$06    
       BNE    L1A7F   
L1A63: BEQ    L1A7D   
       CMP    #$17    
       BEQ    L1A73   
       LDA    $93     
       AND    #$0F    
       EOR    #$0F    
       LDX    #$04    
       BNE    L1A78   
L1A73: LDA    L1D79,Y 
       LDX    #$0E    
L1A78: TAY            
       LDA    #$0F    
       BNE    L1A7F   
L1A7D: LDA    #$00    
L1A7F: STA    AUDV1   
       STX    AUDC1   
       STY    AUDF1   
L1A85: LDA    INTIM   
       BNE    L1A85   
       STA    CXCLR   
       JMP    L100D   
L1A8F: LDA    $A9     
       ASL            
       BPL    L1AA4   
       LDA    $8F     
       LSR            
       LSR            
       LSR            
       EOR    #$1F    
       TAY            
       LDA    $93     
       AND    #$07    
       LDX    #$06    
       BNE    L1A7F   
L1AA4: ASL            
       BPL    L1AB8   
       LDA    $A4     
       BEQ    L1A7F   
       LDA    $AB     
       AND    #$1F    
       EOR    #$1F    
       TAY            
       LDX    #$0A    
       LDA    #$08    
       BNE    L1A7F   
L1AB8: ASL            
       BPL    L1AC5   
       LDA    $A4     
       LSR            
       TAY            
       LDA    #$08    
       LDX    #$0F    
       BNE    L1A7F   
L1AC5: LDA    $A4     
       EOR    #$1F    
       TAY            
       LDX    #$09    
       BNE    L1A7F   
L1ACE: BMI    L1AFA   
       BIT    $85     
       .byte $9E ;.SHX
       LDA    $A6     
       SEC            
       SBC    $9E     
       STA    $A6     
       BPL    L1AE5   
       LDX    #$00    
       STX    $A6     
       STX    $83     
       INX            
       STX    $93     
L1AE5: LDA    #$4F    
       STA    $AD     
       RTS            

L1AEA: STA    $9E     
L1AEC: LDA    $A4     
       CLC            
       ADC    $9E     
       STA    $9D     
       SEC            
       SBC    #$18    
       STA    $9C     
       RTS            

L1AF9: STA    $9E     
       STY    $BC     
       STX    $AA     
       LDA    $A4     
       STA    $9F     
       LDY    #$08    
L1B05: LDA    $9F     
       CLC            
       ADC    $9E     
       STA    $9F     
       TAX            
       BMI    L1B25   
       CPX    #$2F    
       BCS    L1B25   
       LDA    ($BC),Y 
       STA    $CE,X   
       TYA            
       LSR            
       BCC    L1B22   
       LDA    $AA     
       CLC            
       ADC    $9E     
       STA    $9E     
L1B22: DEY            
       BPL    L1B05   
L1B25: RTS            

L1B26: LDA    $93     
       AND    #$30    
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       RTS            

L1B30: TAY            
L1B31: LDA    L1E00,Y 
       CMP    #$99    
       BEQ    L1B3E   
       STA    $CE,X   
       INY            
       INX            
       BNE    L1B31   
L1B3E: RTS            

L1B3F: STA    $9E     
       LDA    $AB     
       AND    $93     
       BNE    L1B61   
       TAY            
       LDA    $AA     
       CLC            
       ADC    $A4     
       BMI    L1B57   
       TAY            
       CMP    $9E     
       BCC    L1B5F   
       LDY    $9E     
       DEY            
L1B57: LDA    $AA     
       EOR    #$FF    
       TAX            
       INX            
       STX    $AA     
L1B5F: STY    $A4     
L1B61: RTS            

L1B62: LDY    #$0B    
L1B64: LDA    L1EF3,Y 
       STA    $CE,X   
       DEX            
       DEY            
       BPL    L1B64   
       STA    GRP1    
       RTS            

L1B70: STA    WSYNC   
       DEX            
       BNE    L1B70   
       STX    GRP0    
       STX    GRP1    
       STX    GRP0    
       STX    REFP0   
       STX    REFP1   
       LDX    #$07    
       STX    VDELP0  
       STX    VDELP1  
       STA    WSYNC   
L1B87: DEX            
       BNE    L1B87   
       NOP            
       STA    RESP0   
       STA    RESP1   
       STY    HMP0    
       INY            
       STY    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       LDX    #$03    
       STX    NUSIZ0  
       STX    NUSIZ1  
       RTS            

L1B9F: SED            
       LDX    $83     
       BPL    L1BB9   
       CLC            
       ADC    $82     
       STA    $82     
       TYA            
       ADC    $81     
       STA    $81     
       BCC    L1BB9   
       INC    $80     
       CLD            
       LDA    #$05    
       ADC    $A6     
       STA    $A6     
L1BB9: CLD            
       RTS            

L1BBB: CMP    #$31    
       BCC    L1BC1   
       LDA    #$30    
L1BC1: STA    $9F     
       LDX    #$4A    
       STX    TIM8T   
       LDX    #$C4    
       CMP    #$07    
       BCS    L1BD8   
       LDX    #$34    
       LDA    $93     
       AND    #$08    
       BNE    L1BD8   
       LDX    #$0A    
L1BD8: LDA    $B0     
       ORA    $83     
       BNE    L1BE0   
       LDX    #$F6    
L1BE0: STX    $A8     
       LDX    #$01    
       LDA    #$FF    
L1BE6: PHA            
       PHA            
       PHA            
       PHA            
       PHA            
       PHA            
       DEX            
       BEQ    L1BE6   
       LDX    #$05    
L1BF1: LDA    #$00    
       PHA            
       PHA            
       PHA            
       LDA    L1F59,Y 
       PHA            
       LDA    L1F5F,Y 
       PHA            
       LDA    L1F65,Y 
       PHA            
       DEY            
       DEX            
       BPL    L1BF1   
       LDX    #$05    
       LDA    #$28    
       STA    $9E     
       LDY    #$00    
L1C0E: CMP    $9F     
       BCC    L1C1E   
       STY    $F2,X   
       STY    $F8,X   
       SEC            
       SBC    #$08    
       DEX            
       BPL    L1C0E   
       BMI    L1C31   
L1C1E: STA    $9E     
       LDA    $9F     
       SEC            
       SBC    $9E     
       TAY            
       LDA    #$00    
L1C28: SEC            
       ROR            
       DEY            
       BNE    L1C28   
       STA    $F2,X   
       STA    $F8,X   
L1C31: LDA    INTIM   
       BPL    L1C31   
       LDX    #$FD    
       TXS            
L1C39: LDA    #$02    
       STA    COLUBK  
       LDX    #$CD    
       STX    CTRLPF  
       TXS            
       LDA    $A8     
       STA    WSYNC   
       STA    COLUPF  
       LDX    #$00    
       STX    PF0     
       DEX            
       STX    PF1     
       STX    PF2     
       STA    WSYNC   
       LDX    #$01    
       STX    PF2     
       LDX    #$04    
L1C59: DEX            
       BNE    L1C59   
       STX    COLUBK  
       LDX    #$05    
L1C60: DEX            
       BNE    L1C60   
       LDA    #$02    
       STA    COLUBK  
L1C67: PLA            
       STA    WSYNC   
       STA    GRP0    
       PLA            
       STA    GRP1    
       PLA            
       STA    GRP0    
       PLA            
       TAY            
       PLA            
       TAX            
       LDA    #$00    
       STA    COLUBK  
       BEQ    L1C7C   
L1C7C: PLA            
       STY    GRP1    
       STX    GRP0    
       STA    GRP1    
       STA    GRP0    
       TSX            
       LDA    #$02    
       STA    COLUBK  
       CPX    #$FD    
       BNE    L1C67   
       STA    WSYNC   
       LDX    #$00    
       STX    GRP0    
       STX    GRP1    
       STX    GRP0    
       LDX    #$03    
L1C9A: DEX            
       BNE    L1C9A   
       STX    COLUBK  
       LDX    #$04    
L1CA1: DEX            
       BNE    L1CA1   
       LDA    #$02    
       DEX            
       STA    CTRLPF,X
       STA    WSYNC   
       STX    PF2     
       STA    WSYNC   
       LDA    #$02    
       STA    COLUPF  
       STX    PF0     
       STX    PF1     
       INX            
       STX    COLUBK  
       RTS            

L1CBB: INC    $91     
       LDX    #$01    
L1CBF: LDY    #$FF    
       LDA    $8F,X   
       BEQ    L1CCA   
       JSR    L1D2D   
       STA    $8F,X   
L1CCA: DEX            
       BPL    L1CBF   
       LDA    $91     
       AND    #$03    
       BEQ    L1CD4   
       RTS            

L1CD4: LDX    #$03    
L1CD6: LDA    $C2,X   
       ASL            
       ASL            
       ASL            
       ASL            
       ROR    $CA,X   
       ROL    $C6,X   
       ROR    $C2,X   
       DEX            
       BPL    L1CD6   
       RTS            

L1CE6: STA    WSYNC   
       STY    PF0     
       STY    PF1     
       STY    PF2     
       RTS            

L1CEF: STA    $9E     
       STX    $9F     
       LDA    ($85),Y 
       LDX    #$03    
       BNE    L1CFD   
L1CF9: LDA    ($85),Y 
       STA    WSYNC   
L1CFD: STA    GRP0    
       LDA    $C2,X   
       EOR    $8D     
       STA    PF0     
       LDA    $C6,X   
       EOR    $8D     
       STA    PF1     
       LDA    $CA,X   
       EOR    $8D     
       STA    PF2     
       DEY            
       LDA    ($85),Y 
       STA    WSYNC   
       STA    GRP0    
       DEY            
       LDA    ($85),Y 
       STA    WSYNC   
       STA    GRP0    
       LDA    $9E     
       CLC            
       ADC    $9F     
       STA    COLUPF  
       STA    $9E     
       DEY            
       DEX            
       BPL    L1CF9   
       RTS            

L1D2D: STY    $9F     
       TAY            
       AND    #$F0    
       STA    $9E     
       TYA            
       AND    #$0F    
       CLC            
       ADC    $9F     
       BEQ    L1D3E   
       BPL    L1D43   
L1D3E: TAY            
       DEY            
       TYA            
       BMI    L1D47   
L1D43: CMP    #$10    
       BCS    L1D48   
L1D47: CLC            
L1D48: ADC    $9E     
       RTS            

L1D4B: STA    $9E     
       LSR            
       LSR            
       LSR            
       LSR            
       CMP    #$0E    
       BCC    L1D57   
       LDA    #$07    
L1D57: TAY            
       LDA    $9E     
       ASL            
       ASL            
       ASL            
       ASL            
       EOR    #$70    
       RTS            

L1D61: .byte $3C,$30,$24,$18
L1D65: .byte $40,$34,$28,$1C
L1D69: .byte $B9,$C3,$CB,$C3
L1D6D: .byte $4E,$5A,$65,$5A
L1D71: .byte $1B,$2A,$39,$2A,$02,$03,$04,$03
L1D79: .byte $0A,$0B,$0C,$0B
L1D7D: .byte $90,$94,$95,$96,$90,$94,$96,$95,$A0,$A2,$A5,$A6,$A0,$A4,$A2,$A6
       .byte $88,$8C,$8A,$8E,$88,$8D,$8E,$8A,$C0,$C5,$C0,$C5,$C5,$C5,$C5,$C5
L1D9D: .byte $05,$05,$01,$00,$65,$03,$03,$03
L1DA5: .byte $25,$25,$15,$00,$07,$30,$30
L1DAC: .byte $25,$0F,$0F,$0E,$08,$06,$04,$02,$01,$01,$00,$00
L1DB8: .byte $F0,$30,$10,$00,$07
L1DBD: .byte $01,$00,$00,$FF,$FF,$FF,$7C
L1DC4: .byte $05,$00,$0F,$0A,$19,$14,$23,$1E,$2D,$28,$91
L1DCF: .byte $78,$5D,$DC,$94,$63,$26,$84,$55,$44,$AA,$94,$A9,$B4,$55,$44,$AA
       .byte $94,$28,$A4,$5D,$DC,$AA,$94,$28,$B4,$45,$44,$AA,$F5,$A8,$84,$45
       .byte $44,$AA,$94,$A9,$78,$5D,$DC,$AA,$93,$26,$00,$00,$00,$00,$00,$00
       .byte $00
L1E00: .byte $00,$00,$AA,$92,$54,$38,$99,$00,$28,$10,$10,$AA,$99,$28,$10,$10
       .byte $38,$44,$82,$82,$44,$99,$38,$6C,$6C,$38,$99,$30,$18,$EC,$18,$18
       .byte $38,$18,$7E,$C3,$E7,$BD,$A5,$C3,$81,$99,$18,$3C,$7E,$7E,$3C,$18
       .byte $18,$7E,$C3,$E7,$BD,$A5,$C3,$81,$99,$0C,$18,$37,$18,$18,$1C,$18
       .byte $7E,$C3,$E7,$BD,$A5,$C3,$81,$99,$03,$7B,$FE,$7B,$03,$99,$40,$20
       .byte $7E,$DF,$DB,$8B,$2B,$2B,$7F,$FE,$7E,$99,$00,$40,$20,$7E,$DF,$FB
       .byte $AB,$7F,$FE,$7E,$99,$00,$40,$20,$7E,$FF,$FB,$FF,$FF,$7E,$99
L1E6F: .byte $66,$5E,$42,$5A,$E7,$FF,$C3,$DF,$42,$7A,$42,$7E,$42,$5A,$5A,$5A
       .byte $C3,$FF,$C3,$FB,$72,$76,$76,$7E,$DB,$4A,$DB,$51,$DB,$99,$DB,$8A
       .byte $DB,$51,$DB,$99,$06,$06,$06,$06,$06,$06,$06,$06,$06,$06,$06,$06
       .byte $06,$06,$06,$06,$06,$06,$06,$06,$06,$06,$06,$06,$C8,$C8,$C8,$C8
       .byte $C8,$C8,$C8,$CE,$08,$08,$08,$08,$08,$08,$08,$8A,$8A,$8A,$8A,$8A
       .byte $8A,$8A,$88,$F4,$44,$F4,$88,$52,$54,$56,$58,$5A,$D6,$D6,$D4,$D2
       .byte $D0,$2F,$22,$24,$26,$D6,$D6,$D4,$D2,$D0,$26,$22,$24,$D6,$D6,$D4
       .byte $D2,$D0,$20,$24,$81,$10,$44,$12,$40,$04,$20,$10,$20,$04,$40,$12
       .byte $44,$10,$81,$24
L1EF3: .byte $7E,$7E,$7E,$7E,$FF,$FF,$FF,$FF,$7E,$7E,$7E,$7E,$99
L1F00: .byte $44
L1F01: .byte $AC
L1F02: .byte $A4
L1F03: .byte $A4
L1F04: .byte $4E,$44,$CA,$4A,$4A,$E4,$CC,$22,$E6,$82,$EC,$CC,$22,$6E,$28,$CE
       .byte $AE,$A8,$EE,$22,$2E,$EA,$8A,$EE,$22,$E2,$4E,$82,$E6,$A4,$44,$E4
       .byte $28,$6E,$4A,$44,$E4,$AA,$EE,$A2,$E4,$4E,$AA,$EE,$2A,$4E
L1F32: .byte $70,$00,$00,$00,$00,$00,$50,$00,$00,$00,$00,$00,$47,$77,$70,$00
       .byte $00,$00,$74,$55,$54,$00,$00,$00,$14,$54,$70,$00,$00,$00,$54,$54
       .byte $44,$00,$00,$00,$77,$74,$70
L1F59: .byte $75,$55,$77,$12,$72,$00
L1F5F: .byte $77,$55,$74,$44,$74,$00
L1F65: .byte $77,$45,$65,$45,$75,$00,$17,$14,$77,$51,$77,$00,$5D,$15,$5D,$51
       .byte $5D,$00,$74,$44,$77,$15,$75,$00,$17,$B4,$56,$54,$57,$00,$DD,$89
       .byte $89,$89,$9D,$00,$79,$68,$6A,$68,$78,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$E0,$4E,$7F,$FA,$4C,$E0,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00
L1FDD: .byte $FF
L1FDE: .byte $FF
L1FDF: .byte $FF
L1FE0: .byte $FF,$37,$1F,$2B,$1F,$0B,$0E,$07,$05,$02,$01,$01,$03,$00,$00,$00
L1FF0: .byte $00,$07,$0D
L1FF3: .byte $07,$06,$07,$08,$01
L1FF8: .byte $00,$01,$00,$02,$00,$10,$00,$00
