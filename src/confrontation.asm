; Disassembly of roms/confrontation.bin
; Disassembled Tue Oct  6 15:24:50 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/confrontation.bin
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
RESBL   =  $14
AUDC0   =  $15
AUDF0   =  $17
AUDV0   =  $19
AUDV1   =  $1A
GRP0    =  $1B
GRP1    =  $1C
ENAM0   =  $1D
ENABL   =  $1F
HMP0    =  $20
HMP1    =  $21
HMM0    =  $22
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

       ORG $1000

START:
       CLD            
       LDX    #$00    
       TXA            
L1004: STA    VSYNC,X 
       TXS            
       INX            
       BNE    L1004   
       LDX    #$A0    
       STX    $FD     
       LDX    #$51    
       STX    $F5     
       LDX    #$71    
       STX    $84     
       LDX    #$0D    
       STX    AUDV0   
       STX    AUDV1   
       LDA    #$60    
       STA    $F2     
       STA    $F3     
       LDA    #$1E    
       STA    $AB     
       LDA    #$1F    
       STA    $9C     
       STA    $F9     
       JMP    L13D1   
L102F: LDY    $98     
       LDA    L1FEE,X 
       CMP    ($96),Y 
       BNE    L103A   
L1038: SEC            
       RTS            

L103A: LDA    $F2,X   
       ROL            
       ROL            
       BCC    L1038   
       TXA            
       EOR    #$01    
       TAX            
       STY    $A4,X   
       LDX    $81     
       RTS            

L1049: LDA    INTIM   
       BNE    L1049   
       STA    GRP0    
       STA    GRP1    
       STA    $9D     
       STA    CXCLR   
       STA    WSYNC   
       NOP            
       NOP            
       LDA    #$00    
       STA    VBLANK  
       LDA    #$00    
       STA    COLUBK  
       STA    HMCLR   
       LDA    #$17    
       BIT    $FD     
       BMI    L106C   
       LDA    #$00    
L106C: STA.w  $0006   
       STA.w  $0007   
       LDX    #$06    
       LDY    #$00    
       STA    RESP0   
       STA    RESP1   
       STY    HMP0    
       LDA    #$10    
       STA    HMP1    
       LDY    #$06    
       NOP            
       ROR    $98     
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$03    
       STA    VDELP0  
       STA    VDELP1  
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    HMCLR   
       STY    $FE     
       STX    $FF     
       LDA    #$1F    
       STA    $9E     
L109D: LDY    $FE     
       LDA    L1F23,Y 
       STA    $93     
       STA    WSYNC   
       STA    HMOVE   
       LDX    L1F1C,Y 
       LDA    ($9D),Y 
       STA    GRP0    
       DEC    $FE     
       LDA    L1F07,Y 
       STA    GRP1    
       LDA    L1F0E,Y 
       STA    GRP0    
       LDA    L1F15,Y 
       LDY    $93     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       DEC    $FF     
       BPL    L109D   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    VDELP0  
       STA    VDELP1  
       STA    WSYNC   
       LDA    $8E     
       LDX    #$FF    
       STX    PF0     
       STX    PF1     
       STX    PF2     
       LDA    #$17    
       STA.w  $0008   
       LDX    #$20    
       STX    CTRLPF  
       STA.w  $0010   
       STA    RESP1   
       STX    NUSIZ1  
       INX            
       STX    NUSIZ0  
       LDA    #$84    
       STA.w  $0006   
       STA    COLUP1  
       STA    HMCLR   
       LDA    #$10    
       STA    HMP1    
       LDA    #$00    
       STA.w  $0009   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$02    
       STA    ENABL   
       LDX    #$04    
L1111: STA    WSYNC   
       LDA    $8E     
       LDA    L1EC3,X 
       STA    GRP0    
       LDA    L1EC8,X 
       STA    GRP1    
       LDA    L1ECD,X 
       LDY    $B7     
       STA    HMCLR   
       STY    PF2     
       STA    GRP0    
       LDA    #$84    
       STA.w  $0008   
       LDA    $B3     
       STA    PF0     
       LDA    $B5     
       STA    PF1     
       LDY    #$FF    
       STY    PF2     
       STY    PF0     
       LDA    #$17    
       STA.w  $0008   
       STY    PF1     
       DEX            
       BPL    L1111   
       INX            
       STX    GRP0    
       STX    GRP1    
       STX    ENABL   
       LDY    #$30    
       STY    NUSIZ0  
       STY    NUSIZ1  
       INY            
       STY    CTRLPF  
       LDX    $81     
       LDA    L1FF4,X 
       LDY    $F0,X   
       BPL    L1163   
       LDA    L1FF6,X 
L1163: STA    COLUP0  
       STA    WSYNC   
       LDA    $80     
       JSR    L1DDD   
       STY    $90     
       STY    $9E     
       STY    $91     
       LDA    #$16    
       STA    PF0     
       STA    COLUBK  
       STA    $96     
       INY            
       STY    PF1     
       STY    PF2     
       STY    $94     
       LDX    #$B6    
       STX    $80     
       JMP    L11C9   
L1188: LDA    $EE     
       STA    $96     
       CPX    $83     
       BNE    L11C9   
       LDA    #$03    
       STA    $82     
       BNE    L11C9   
L1196: LDA    L1EBC,Y 
       STA    $97     
       DEC    $91     
       JMP    L11D9   
L11A0: LDA    ($F8),Y 
       STA    $93     
       DEC    $90     
       JMP    L11E9   
L11A9: LDA    #$03    
       STA    $82     
       BNE    L11C5   
L11AF: LDX    $80     
       LDY    $82     
       BMI    L1188   
       LDA    $BB     
       STA    $96     
       CPX    $BE     
       BEQ    L11A9   
       DEC    $82     
       BPL    L11C9   
       LDA    $BE     
       STA    $83     
L11C5: LDA    $BF     
       STA    $BB     
L11C9: LDY    $91     
       BPL    L1196   
       LDA    #$00    
       STA    $97     
       CPX    $A8     
       BNE    L11D9   
       LDA    #$06    
       STA    $91     
L11D9: LDY    $90     
       BPL    L11A0   
       LDA    #$00    
       STA    $93     
       CPX    $84     
       BNE    L11E9   
       LDA    #$06    
       STA    $90     
L11E9: LDX    $80     
       DEX            
       DEX            
       DEX            
       STX    $80     
       LDY    $9E     
       STA    WSYNC   
       BMI    L1200   
       DEC    $9E     
       LDA    ($9B),Y 
       STA    $94     
       LDA    ($AA),Y 
       STA    $92     
L1200: LDY    $9D     
       LDA    $80     
       CMP    ($8E),Y 
       BNE    L121A   
       LDY    $90     
       BPL    L1240   
       LDA    #$00    
       STA    $95     
       CPX    $84     
       BNE    L1218   
       LDA    #$06    
       STA    $90     
L1218: LDA    #$00    
L121A: STA    $98     
       CPX    #$05    
       LDY    $97     
       LDA    $92     
       STA    WSYNC   
       LDX    $96     
       STA    COLUP1  
       STX    COLUBK  
       STY    ENAM0   
       LDA    $94     
       STA    GRP1    
       LDA    $93     
       STA    GRP0    
       BCC    L123D   
       LDA    $98     
       BEQ    L1249   
       JMP    L11AF   
L123D: JMP    L12D1   
L1240: LDA    ($F8),Y 
       STA    $95     
       DEC    $90     
       JMP    L1218   
L1249: LDX    $80     
       LDY    $82     
       BMI    L12B3   
       LDA    $BB     
       STA    $96     
       CPX    $BE     
       BEQ    L12C1   
       DEC    $82     
       BPL    L1263   
       LDA    $BE     
       STA    $83     
L125F: LDA    $BF     
       STA    $BB     
L1263: LDY    $91     
       BPL    L12C7   
       LDA    #$00    
       STA    $97     
       CPX    $A8     
       BNE    L1273   
       LDA    #$06    
       STA    $91     
L1273: STA    HMCLR   
       DEX            
       DEX            
       DEX            
       STX    $80     
       LDY    #$06    
       STY    $9E     
       LDX    $9D     
       LDA    $9F,X   
       STA    $AA     
       LDA    $88,X   
       LDX    $97     
       STA    HMP1    
       AND    #$0F    
       TAY            
       STA    WSYNC   
L128F: DEY            
       BPL    L128F   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       LDA    $96     
       STA    COLUBK  
       STX    ENAM0   
       LDX    $9D     
       CPX    #$04    
       BCS    L12A6   
       INC    $9D     
L12A6: LDA    $AE,X   
       STA    $9B     
       STA    HMCLR   
       LDA    $95     
       STA    GRP0    
       JMP    L11AF   
L12B3: LDA    $EE     
       STA    $96     
       CPX    $83     
       BNE    L1263   
       LDA    #$03    
       STA    $82     
       BNE    L1263   
L12C1: LDA    #$03    
       STA    $82     
       BNE    L125F   
L12C7: LDA    L1EBC,Y 
       STA    $97     
       DEC    $91     
       JMP    L1273   
L12D1: LDY    #$00    
       STY    GRP1    
       STY    ENAM0   
       LDA    $EE     
       STA    COLUBK  
       STA    WSYNC   
       STA    HMOVE   
       LDA    $AD     
       AND    #$0F    
       TAX            
       NOP            
       NOP            
L12E6: DEX            
       BPL    L12E6   
       NOP            
       STA    RESBL   
       LDA    $AD     
       STA    HMBL    
       STA    WSYNC   
       STA    HMOVE   
       LDX    #$FF    
       STX    PF0     
       STX    PF1     
       STX    PF2     
       LDA    #$17    
       STA.w  $0008   
       LDX    #$20    
       STX    CTRLPF  
       STA.w  $0010   
       STA    RESP1   
       STX    NUSIZ1  
       INX            
       STX    NUSIZ0  
       LDA    #$34    
       STA.w  $0006   
       STA    COLUP1  
       STA    HMCLR   
       LDA    #$10    
       STA    HMP1    
       LDA    #$00    
       STA.w  $0009   
       STA    WSYNC   
       STA    HMOVE   
       LDX    $81     
       BIT    VSYNC   
       BVC    L132F   
       LDA    #$FF    
       STA    $FB,X   
L132F: BIT    COLUP1  
       BPL    L1337   
       LDA    #$FF    
       STA    $F6,X   
L1337: STX    CXCLR   
       JSR    L1DDA   
       STA    HMCLR   
       STA    WSYNC   
       LDA    #$02    
       STA    ENABL   
       LDX    #$04    
L1346: STA    WSYNC   
       LDA    $8E     
       LDA    L1EC3,X 
       STA    GRP0    
       LDA    L1EC8,X 
       STA    GRP1    
       LDA    L1ECD,X 
       LDY    $B8     
       STA    HMCLR   
       STY    PF2     
       STA    GRP0    
       LDA    #$34    
       STA.w  $0008   
       LDA    $B4     
       STA    PF0     
       LDA    $B6     
       STA    PF1     
       LDY    #$FF    
       STY    PF2     
       STY    PF0     
       LDA    #$17    
       STA.w  $0008   
       STY    PF1     
       DEX            
       BPL    L1346   
       STA    WSYNC   
       INX            
       STX    GRP0    
       STX    GRP1    
       STX    ENABL   
       STA    WSYNC   
       STX    COLUBK  
       STX    PF0     
       STX    PF1     
       STX    PF2     
       STA    WSYNC   
       LDA    #$02    
       STA    VBLANK  
       LDA    #$10    
       STA    TIM64T  
L139A: LDY    INTIM   
       BNE    L139A   
       LDA    #$02    
       STA    WSYNC   
       STA    VBLANK  
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STX    VSYNC   
       LDA    #$25    
       STA    TIM64T  
       LDA    SWCHB   
       AND    #$01    
       BEQ    L13C7   
       LDA    $FD     
       AND    #$08    
       BEQ    L13F6   
L13C7: LDA    #$00    
       STA    $FD     
       LDX    #$E0    
       STX    $F2     
       STX    $F3     
L13D1: LDA    #$41    
       STA    $BD     
       LDA    #$89    
       STA    $BC     
       LDX    #$21    
L13DB: LDA    L1E96,X 
       STA    $CC,X   
       DEX            
       BPL    L13DB   
       INX            
       STX    $BA     
       STX    $B9     
       STX    $C0     
       STX    $C1     
       STX    $F0     
       STX    $F1     
       LDX    #$40    
       STX    $A4     
       STX    $A5     
L13F6: INC    $A9     
       LDA    $A9     
       AND    #$01    
       STA    $81     
       BEQ    L141F   
       LDX    #$CC    
       STX    $94     
       LDX    #$D1    
       STX    $96     
       LDX    #$DB    
       STX    $8E     
       LDX    #$E0    
       STX    $92     
       LDX    #$E5    
       STX    $90     
       LDX    #$04    
L1416: LDA    #$83    
       STA    $9F,X   
       DEX            
       BPL    L1416   
       BMI    L143C   
L141F: LDX    #$CC    
       STX    $8E     
       LDX    #$D1    
       STX    $92     
       LDX    #$DB    
       STX    $94     
       LDX    #$E0    
       STX    $96     
       LDX    #$D6    
       STX    $90     
       LDX    #$04    
L1435: LDA    #$7D    
       STA    $9F,X   
       DEX            
       BPL    L1435   
L143C: STX    $91     
       STX    $82     
       INX            
       STX    $93     
       STX    $8F     
       STX    $97     
       STX    $95     
       STX    $91     
       LDA    $FD     
       BMI    L1451   
       STX    $EE     
L1451: LDA    #$28    
       STA    $A7     
       LDX    $81     
       LDA    $C0,X   
       BPL    L1464   
       AND    #$0F    
       TAY            
       LDA    L1FF2,X 
       STA.wy $009F,Y 
L1464: LDA    $A4,X   
       ROL            
       BPL    L14A2   
       TXA            
       BEQ    L1474   
       BIT    $A6     
       BVS    L14A8   
       BMI    L149F   
       BPL    L147A   
L1474: BIT    $A6     
       BMI    L14A5   
       BVS    L149F   
L147A: LDY    $FD     
       BMI    L14C2   
       LDA    $F2,X   
       ROL            
       BCS    L149F   
L1483: LDA    $A9     
       AND    #$02    
       BNE    L14AB   
       LDA    SWCHA   
       LDX    $81     
       BNE    L1493   
       JSR    L1DD8   
L1493: AND    #$0F    
       CMP    #$0F    
       BEQ    L14AE   
       ROR            
       BCC    L14B1   
       ROR            
       BCC    L14B4   
L149F: JMP    L1A85   
L14A2: JMP    L1513   
L14A5: JMP    L15F0   
L14A8: JMP    L1612   
L14AB: JMP    L1882   
L14AE: JMP    L19F8   
L14B1: JMP    L1766   
L14B4: JMP    L1684   
L14B7: JMP    L18B8   
L14BA: LDA    $FD     
       ORA    #$08    
       STA    $FD     
       BNE    L149F   
L14C2: LDA    REFP1,X 
       BMI    L14CB   
       TYA            
       AND    #$03    
       BEQ    L14BA   
L14CB: TYA            
       AND    #$20    
       BNE    L149F   
       LDX    #$00    
       TYA            
       ROL            
       BPL    L14D8   
       LDX    #$01    
L14D8: TYA            
       AND    #$10    
       BNE    L14F0   
       DEC    $B9,X   
       BNE    L149F   
       TYA            
       ORA    #$10    
       STA    $FD     
       TAY            
       AND    #$03    
       BEQ    L149F   
       DEY            
       STY    $FD     
       BNE    L149F   
L14F0: INC    $B9,X   
       LDA    $B9,X   
       CMP    #$A6    
       BNE    L149F   
       TYA            
       AND    #$EF    
       STA    $FD     
       BNE    L149F   
L14FF: TXA            
       EOR    #$01    
       TAX            
       LDA    $F2,X   
       ROL            
       ROL            
       BCC    L14B7   
       LDX    $81     
       LDA    $98     
       STA    $A4,X   
       LDA    #$07    
       STA    $87     
L1513: LDY    #$10    
       TXA            
       BEQ    L151A   
       LDY    #$12    
L151A: STY    $A7     
       LDA    $A4,X   
       AND    #$0F    
       TAY            
       STA    $98     
       LDA    $A4,X   
       BPL    L155A   
       LDA    ($8E),Y 
       STA    $9A     
       LDA    ($92),Y 
       STA    $99     
       LDA    $EA,X   
       STA    $FF     
       LDA    $EC,X   
       LDX    $FF     
       JSR    L1DA0   
       BCC    L156D   
       STY    $FF     
       JSR    L1D47   
       LDY    $FF     
       BCC    L156D   
       TXA            
       EOR    #$01    
       TAY            
       LDX    $EA,Y   
       LDA.wy $00EC,Y 
       JSR    L1DA0   
       BCC    L156D   
       LDA    #$40    
       STA    $A4,X   
L1557: JMP    L1A85   
L155A: TXA            
       BNE    L1570   
L155D: LDA    ($92),Y 
       CMP    #$16    
       BCC    L1576   
L1563: SBC    #$02    
       STA    ($92),Y 
       CMP    #$16    
       BCS    L1557   
       BNE    L157E   
L156D: TXA            
       BNE    L155D   
L1570: LDA    ($92),Y 
       CMP    #$89    
       BCS    L1563   
L1576: ADC    #$02    
       STA    ($92),Y 
       CMP    #$87    
       BCC    L1557   
L157E: LDA    $A4,X   
       ORA    #$80    
       STA    $A4,X   
       BNE    L1557   
       JMP    L1483   
L1589: BIT    $F2     
       BVC    L1591   
       LDA    #$80    
       STA    $A6     
L1591: BIT    $F3     
       BVC    L15DB   
       LDA    #$40    
       ORA    $A6     
       STA    $A6     
       LDA    #$07    
       STA    $87     
       BNE    L15DB   
L15A1: LDA    $EC,X   
       STA    $99     
       LDA    $EA,X   
       STA    $9A     
       JSR    L1D47   
       BCC    L15EB   
       LDY    #$04    
L15B0: LDA    ($92),Y 
       SBC    $99     
       CMP    #$F9    
       BCS    L15BC   
       CMP    #$08    
       BCS    L15C9   
L15BC: LDA    ($8E),Y 
       SEC            
       SBC    $9A     
       CMP    #$EF    
       BCS    L15EB   
       CMP    #$12    
       BCC    L15EB   
L15C9: DEY            
       BPL    L15B0   
       LDX    $81     
       BNE    L15DE   
       ROL    $A6     
       CLC            
       ROR    $A6     
       LDA    $C2     
       AND    #$7D    
L15D9: STA    $C2     
L15DB: JMP    L1A85   
L15DE: LDA    $A6     
       AND    #$BF    
       STA    $A6     
       LDA    $C2     
       AND    #$BE    
       JMP    L15D9   
L15EB: TXA            
       BEQ    L162D   
       BNE    L160C   
L15F0: LDA    $C2     
       ROR            
       ROR            
       BCC    L163D   
       LDA    $C2     
       BMI    L15A1   
       LDA    $EC,X   
       CMP    #$4C    
       BEQ    L15A1   
       BCC    L162D   
       CMP    #$4F    
       BCS    L160C   
       LDA    $C2     
       ORA    #$80    
       STA    $C2     
L160C: DEC    $EC,X   
       DEC    $EC,X   
       BNE    L1631   
L1612: LDA    $C2     
       ROR            
       BCC    L165F   
       BIT    $C2     
       BVS    L15A1   
       LDA    $EC,X   
       CMP    #$4C    
       BEQ    L15A1   
       BCS    L160C   
       CMP    #$4A    
       BCC    L162D   
       LDA    $C2     
       ORA    #$40    
       STA    $C2     
L162D: INC    $EC,X   
       INC    $EC,X   
L1631: LDY    #$14    
       TXA            
       BEQ    L1638   
       LDY    #$16    
L1638: STY    $A7     
       JMP    L1A85   
L163D: LDA    $EA,X   
       CMP    #$B3    
       BEQ    L1657   
       LDA    $F0,X   
       BPL    L164D   
       LDA    $BC,X   
       ADC    #$03    
       STA    $BC,X   
L164D: LDA    $EA,X   
       ADC    #$03    
       STA    $EA,X   
       CMP    #$B3    
       BCC    L1631   
L1657: LDA    $C2     
       ORA    #$02    
       STA    $C2     
       BNE    L1631   
L165F: LDA    $EA,X   
       CMP    #$1A    
       BEQ    L1679   
       LDA    $F0,X   
       BPL    L166F   
       LDA    $BC,X   
       SBC    #$03    
       STA    $BC,X   
L166F: LDA    $EA,X   
       SBC    #$03    
       STA    $EA,X   
       CMP    #$1B    
       BCS    L1631   
L1679: LDA    $C2     
       ORA    #$01    
       STA    $C2     
       BNE    L1631   
L1681: JMP    L14FF   
L1684: INC    $F4     
       JSR    L1D24   
       BCC    L16D5   
       SBC    #$03    
       JSR    L1D8E   
       BCC    L1681   
       JSR    L1D47   
       BCC    L16CF   
       INY            
       LDA    $9A     
       SBC    ($8E),Y 
       CPY    #$05    
       BEQ    L16A4   
       CMP    #$15    
       BEQ    L171D   
L16A4: LDA    $9A     
       CMP    #$17    
       BEQ    L16CF   
       LDX    $84     
       LDA    $F5     
       JSR    L1DA0   
       BCC    L16D2   
       LDA    $EA,X   
       STA    $B7     
       LDA    $EC,X   
       LDX    $B7     
       JSR    L1DA0   
       BCC    L16CF   
       STA    ($8E),Y 
L16C2: LDA    $BC,X   
       SEC            
       SBC    #$03    
       CMP    #$11    
       BEQ    L1741   
       STA    $BC,X   
       BNE    L1741   
L16CF: JMP    L18B8   
L16D2: JMP    L17B1   
L16D5: JSR    L1DCC   
       BCC    L16C2   
       SBC    #$03    
       STA    $9A     
       JSR    L1D47   
       BCC    L172E   
       JSR    L1D70   
       BCC    L1735   
L16E8: LDA    $F5     
       LDX    $84     
       JSR    L1DA0   
       BCC    L16D2   
       LDA    $EC,X   
       STA    $99     
       LDY    #$04    
L16F7: LDA    ($92),Y 
       SBC    $99     
       CMP    #$F9    
       BCS    L1703   
       CMP    #$08    
       BCS    L1710   
L1703: LDA    ($8E),Y 
       SEC            
       SBC    $9A     
       CMP    #$EF    
       BCS    L16CF   
       CMP    #$12    
       BCC    L16CF   
L1710: DEY            
       BPL    L16F7   
       LDA    $9A     
       CMP    #$17    
       BEQ    L16CF   
       STA    $EA,X   
       BNE    L16C2   
L171D: LDY    #$08    
       TXA            
       BEQ    L1724   
       LDY    #$0A    
L1724: STY    $A7     
       LDA    $A9     
       AND    #$04    
       BNE    L1760   
       BEQ    L1758   
L172E: JSR    L102F   
       BCS    L16CF   
       BCC    L16E8   
L1735: JMP    L1589   
L1738: LDY    #$00    
       TXA            
       BEQ    L1756   
       LDY    #$02    
       BNE    L1756   
L1741: LDA    $A9     
       AND    #$04    
       BNE    L175A   
       LDA    $C0,X   
       BMI    L1738   
       LDA    $F0,X   
       BPL    L175A   
       LDY    #$04    
       TXA            
       BEQ    L1756   
       LDY    #$06    
L1756: STY    $A7     
L1758: DEC    $B9,X   
L175A: LDA    $F0,X   
       AND    #$DF    
       STA    $F0,X   
L1760: JMP    L1A85   
L1763: JMP    L14FF   
L1766: JSR    L1D24   
       BCC    L17CB   
       CLC            
       ADC    #$03    
       JSR    L1D8E   
       BCC    L1763   
       JSR    L1D47   
       BCC    L17AE   
       DEY            
       BMI    L1783   
       LDA    ($8E),Y 
       SBC    $9A     
       CMP    #$15    
       BEQ    L171D   
L1783: LDA    $9A     
       CMP    #$B6    
       BEQ    L17AE   
       LDX    $84     
       LDA    $F5     
       JSR    L1DA0   
       BCC    L17B1   
       LDA    $EA,X   
       STA    $B7     
       LDA    $EC,X   
       LDX    $B7     
       JSR    L1DA0   
       BCC    L17AE   
       STA    ($8E),Y 
L17A1: LDA    $BC,X   
       CLC            
       ADC    #$03    
       CMP    #$B6    
       BEQ    L1741   
       STA    $BC,X   
       BNE    L1741   
L17AE: JMP    L18B8   
L17B1: LDA    $85     
       BEQ    L17AE   
       LDA    $B9,X   
       CLC            
       ADC    #$04    
       CMP    #$A6    
       BCS    L17C0   
       STA    $B9,X   
L17C0: LDY    #$0E    
       TXA            
       BNE    L17C7   
       LDY    #$0C    
L17C7: STY    $A7     
       BNE    L175A   
L17CB: JSR    L1DCC   
       BCC    L17A1   
       CLC            
       ADC    #$03    
       STA    $9A     
       JSR    L1D47   
       BCC    L1814   
       JSR    L1D70   
       BCC    L1811   
L17DF: LDA    $F5     
       LDX    $84     
       JSR    L1DA0   
       BCC    L17B1   
       LDY    #$04    
L17EA: LDA    ($92),Y 
       SBC    $99     
       CMP    #$F9    
       BCS    L17F6   
       CMP    #$08    
       BCS    L1803   
L17F6: LDA    ($8E),Y 
       SEC            
       SBC    $9A     
       CMP    #$EF    
       BCS    L17AE   
       CMP    #$12    
       BCC    L17AE   
L1803: DEY            
       BPL    L17EA   
       LDA    $9A     
       CMP    #$B6    
       BEQ    L17AE   
       STA    $EA,X   
       JMP    L17A1   
L1811: JMP    L1589   
L1814: JSR    L102F   
       BCC    L17DF   
       BCS    L17AE   
L181B: JSR    L1DC0   
       BCS    L1823   
       JMP    L1A85   
L1823: SBC    #$02    
       STA    $99     
       INC    $F4     
       JSR    L1D47   
       BCC    L1868   
       JSR    L1D70   
       BCC    L1811   
L1833: LDA    $F5     
       LDX    $84     
       JSR    L1DA0   
       BCC    L1870   
       LDA    $EA,X   
       STA    $9A     
       LDY    #$04    
L1842: LDA    ($92),Y 
       SBC    $99     
       CMP    #$F9    
       BCS    L184E   
       CMP    #$08    
       BCS    L185B   
L184E: LDA    ($8E),Y 
       SEC            
       SBC    $9A     
       CMP    #$EF    
       BCS    L18B8   
       CMP    #$12    
       BCC    L18B8   
L185B: DEY            
       BPL    L1842   
       LDA    $99     
       CMP    #$06    
       BCC    L187C   
       STA    $EC,X   
       BCS    L18CE   
L1868: JSR    L102F   
       BCS    L18B8   
       JMP    L1833   
L1870: JMP    L17B1   
L1873: JMP    L14FF   
L1876: JMP    L19F8   
L1879: JMP    L1976   
L187C: TXA            
       BEQ    L18B8   
       JMP    L195B   
L1882: LDA    SWCHA   
       LDX    $81     
       BNE    L188C   
       JSR    L1DD8   
L188C: AND    #$0F    
       CMP    #$0F    
       BEQ    L1876   
       ROR            
       ROR            
       ROR            
       BCC    L189C   
       ROR            
       BCC    L1879   
       BCS    L18FC   
L189C: JSR    L1D35   
       BCS    L18A4   
       JMP    L181B   
L18A4: SBC    #$02    
       STA    $99     
       CMP    #$05    
       BNE    L18D1   
       LDA    $81     
       BEQ    L18B8   
       LDA.wy $00E5,Y 
       STA    $86     
       JMP    L19BA   
L18B8: LDY    #$0C    
       TXA            
       BEQ    L18BF   
       LDY    #$0E    
L18BF: STY    $A7     
       LDA    #$07    
       STA    $87     
       LDA    $A9     
       AND    #$04    
       BNE    L18FC   
       JMP    L1758   
L18CE: JMP    L1741   
L18D1: JSR    L1D94   
       BCC    L1873   
       JSR    L1D47   
       BCC    L18B8   
       LDA    ($8E),Y 
       STA    $9A     
       LDX    $84     
       LDA    $F5     
       JSR    L1DA0   
       BCC    L1870   
       LDA    $EA,X   
       STA    $B7     
       LDA    $EC,X   
       LDX    $B7     
       JSR    L1DA0   
       BCC    L18B8   
       LDA    $99     
       STA    ($92),Y 
       JMP    L1741   
L18FC: JMP    L1A85   
L18FF: JMP    L1589   
L1902: JSR    L1DC0   
       BCC    L18FC   
       CLC            
       ADC    #$02    
       STA    $99     
       JSR    L1D47   
       BCC    L194E   
       JSR    L1D70   
       BCC    L18FF   
L1916: LDA    $F5     
       LDX    $84     
       JSR    L1DA0   
       BCC    L194B   
       LDA    $EA,X   
       STA    $9A     
       LDY    #$04    
L1925: LDA    ($92),Y 
       SBC    $99     
       CMP    #$F9    
       BCS    L1931   
       CMP    #$08    
       BCS    L193E   
L1931: LDA    ($8E),Y 
       SEC            
       SBC    $9A     
       CMP    #$EF    
       BCS    L19AE   
       CMP    #$12    
       BCC    L19AE   
L193E: DEY            
       BPL    L1925   
       LDA    $99     
       CMP    #$98    
       BCS    L1958   
       STA    $EC,X   
L1949: BNE    L18CE   
L194B: JMP    L17B1   
L194E: JSR    L102F   
       BCS    L19AE   
       BCC    L1916   
L1955: JMP    L14FF   
L1958: TXA            
       BNE    L19AE   
L195B: LDA    $F2,X   
       ROL            
       ROL            
       BCS    L19AE   
       LDY    #$00    
       STY    $EA,X   
       LDY    #$83    
       TXA            
       BEQ    L196C   
       LDY    #$C3    
L196C: STY    $FD     
       LDA    L1FFA,X 
       STA    $EE     
       JMP    L1A85   
L1976: JSR    L1D35   
       BCC    L1902   
       CLC            
       ADC    #$02    
       STA    $99     
       CMP    #$99    
       BEQ    L19B1   
       JSR    L1D94   
       BCC    L1955   
       JSR    L1D47   
       BCC    L19AE   
       LDA    ($8E),Y 
       STA    $9A     
       LDX    $84     
       LDA    $F5     
       JSR    L1DA0   
       BCC    L194B   
       LDA    $EA,X   
       STA    $B7     
       LDA    $EC,X   
       LDX    $B7     
       JSR    L1DA0   
       BCC    L19AE   
       LDA    $99     
       STA    ($92),Y 
       BNE    L1949   
L19AE: JMP    L18B8   
L19B1: LDA    $81     
       BNE    L19AE   
       LDA.wy $00D6,Y 
       STA    $86     
L19BA: LDA    #$40    
       STA    $C0,X   
L19BE: INY            
       LDA    ($8E),Y 
       STA    $9A     
       LDA    ($92),Y 
       STA    $99     
       LDA    ($90),Y 
       DEY            
       STA    ($90),Y 
       LDA    $9A     
       STA    ($8E),Y 
       LDA    $99     
       STA    ($92),Y 
       CPY    #$04    
       BEQ    L19DB   
       INY            
       BNE    L19BE   
L19DB: LDA    $86     
       STA    ($90),Y 
       LDA    #$00    
       STA    ($8E),Y 
       LDY    #$00    
       LDA    ($8E),Y 
       BNE    L19EB   
       STA    $F2,X   
L19EB: LDA    #$A7    
       LDX    $81     
       BEQ    L19F3   
       LDA    #$C7    
L19F3: STA    $EF     
       JMP    L1A46   
L19F8: INC    $F4     
       LDX    $81     
       LDY    REFP1,X 
       BMI    L1A3A   
       LDY    #$04    
       TXA            
       BEQ    L1A0A   
       BIT    $C1     
       JMP    L1A0C   
L1A0A: BIT    $C0     
L1A0C: BVS    L1A46   
       BMI    L1A20   
L1A10: LDA    ($8E),Y 
       SEC            
       SBC    $BC,X   
       BEQ    L1A2A   
       CMP    #$07    
       BCC    L1A2A   
       DEY            
       BPL    L1A10   
       BMI    L1A49   
L1A20: LDA    #$40    
L1A22: STA    $C0,X   
       LDA    #$28    
       STA    $A7     
       BNE    L1A49   
L1A2A: TYA            
       ORA    #$C0    
       STA    $C0,X   
       LDY    #$22    
       TXA            
       BNE    L1A36   
       LDY    #$20    
L1A36: STY    $A7     
       BNE    L1A49   
L1A3A: LDA    $C0,X   
       AND    #$BF    
       STA    $C0,X   
       LDA    $F0,X   
       AND    #$BF    
       STA    $F0,X   
L1A46: JMP    L1A85   
L1A49: TXA            
       BEQ    L1A51   
       BIT    $F1     
       JMP    L1A53   
L1A51: BIT    $F0     
L1A53: BVS    L1A85   
       BMI    L1A7B   
       LDA    $EA,X   
       SEC            
       SBC    $BC,X   
       BEQ    L1A62   
       CMP    #$09    
       BCS    L1A85   
L1A62: LDA    $F0,X   
       ASL            
       ASL            
       BPL    L1A81   
       LDA    #$C0    
       STA    $F0,X   
       LDA    #$40    
       STA    $C0,X   
       LDY    #$26    
       TXA            
       BNE    L1A77   
       LDY    #$24    
L1A77: STY    $A7     
       BNE    L1A85   
L1A7B: LDA    #$40    
       STA    $F0,X   
       BNE    L1A22   
L1A81: LDA    #$60    
       STA    $F0,X   
L1A85: LDA    $BC     
       CMP    $BD     
       BCC    L1A9C   
       STA    $83     
       LDA    #$80    
       STA    $BB     
       LDA    #$40    
       STA    $BF     
       LDA    $BD     
       STA    $BE     
       JMP    L1AAA   
L1A9C: STA    $BE     
       LDA    #$80    
       STA    $BF     
       LDA    $BD     
       STA    $83     
       LDA    #$40    
       STA    $BB     
L1AAA: LDA    $A9     
       AND    #$03    
       BEQ    L1ACE   
       LDX    #$01    
L1AB2: LDA    $F6,X   
       BMI    L1ABF   
       LDA    $FB,X   
       BMI    L1ABF   
       DEX            
       BPL    L1AB2   
       BMI    L1ACE   
L1ABF: LDA    $FA     
       ROR            
       BCS    L1AF8   
       LDA    $FA     
       EOR    #$C0    
       ORA    #$01    
       STA    $FA     
       BNE    L1B38   
L1ACE: LDA    $FA     
       AND    #$FE    
       STA    $FA     
       LDA    $A9     
       AND    #$07    
       BEQ    L1ADC   
       BNE    L1B38   
L1ADC: LDA    $F4     
       AND    #$3F    
       CMP    #$10    
       BNE    L1AF8   
       LDA    $FA     
       EOR    #$80    
       STA    $FA     
       LDA    $F4     
       AND    #$3F    
       CMP    #$15    
       BNE    L1AF8   
       LDA    $FA     
       EOR    #$40    
       STA    $FA     
L1AF8: LDA    $FA     
       BIT    $FA     
       BMI    L1B0A   
       DEC    $F5     
       DEC    $F5     
       LDX    $F5     
       CPX    #$1F    
       BCC    L1B14   
       BCS    L1B18   
L1B0A: INC    $F5     
       INC    $F5     
       LDX    $F5     
       CPX    #$7D    
       BCC    L1B18   
L1B14: EOR    #$80    
       STA    $FA     
L1B18: BIT    $FA     
       LDA    $84     
       BVS    L1B29   
       SEC            
       SBC    #$03    
       CMP    #$1A    
       BCC    L1B32   
       STA    $84     
       BCS    L1B38   
L1B29: CLC            
       ADC    #$03    
       CMP    #$A1    
       STA    $84     
       BCC    L1B38   
L1B32: LDA    $FA     
       EOR    #$40    
       STA    $FA     
L1B38: LDX    $81     
       LDA    #$00    
       STA    $F6,X   
       STA    $FB,X   
       LDA    $F5     
       JSR    L1D01   
       STA    $80     
       ADC    $F4     
       STA    $F4     
       LDA    SWCHB   
       ROL            
       BCS    L1B58   
       LDX    $81     
       LDA    $F2,X   
       ROL            
       BCS    L1B5B   
L1B58: JMP    L1BDC   
L1B5B: AND    #$40    
       BNE    L1B62   
       JMP    L1BDC   
L1B62: LDY    #$04    
       LDA    ($8E),Y 
       BNE    L1BA4   
       LDY    $DA     
       TXA            
       BEQ    L1B6F   
       LDY    $E9     
L1B6F: STY    $AC     
       LDY    #$00    
       LDA    #$BF    
L1B75: SEC            
       SBC    ($8E),Y 
       CMP    #$30    
       BCS    L1BAA   
       LDA    ($8E),Y 
       INY            
       CPY    #$05    
       BNE    L1B75   
L1B83: INY            
       LDA    #$A7    
L1B86: STA    ($8E),Y 
       LDA    L1FF0,X 
       STA    ($92),Y 
       LDA    $AC     
       STA    ($90),Y 
       TYA            
       ORA    #$80    
       LDX    $81     
       STA    $A4,X   
       LDA    $C0,X   
       BPL    L1BA4   
       AND    #$0F    
       CMP    $98     
       BCC    L1BA4   
       INC    $C0,X   
L1BA4: LDA    #$C0    
       STA    $F2,X   
       BNE    L1BDC   
L1BAA: STY    $98     
       CPY    #$04    
       BEQ    L1BCF   
       LDY    #$03    
L1BB2: LDA    ($8E),Y 
       STA    $94     
       LDA    ($92),Y 
       STA    $95     
       LDA    ($90),Y 
       INY            
       STA    ($90),Y 
       LDA    $94     
       STA    ($8E),Y 
       LDA    $95     
       STA    ($92),Y 
       DEY            
       CPY    $98     
       BEQ    L1BCF   
       DEY            
       BPL    L1BB2   
L1BCF: LDY    $98     
       DEY            
       BMI    L1B83   
       LDA    ($8E),Y 
       INY            
       SEC            
       SBC    #$18    
       BNE    L1B86   
L1BDC: LDX    #$01    
L1BDE: BIT    $FD     
       BMI    L1C02   
       LDA    $F2,X   
       ROL            
       BCC    L1BF8   
       INC    $B9,X   
       LDA    $B9,X   
       CMP    #$A6    
       BNE    L1C02   
       LDA    $F2,X   
       AND    #$5F    
       STA    $F2,X   
       JMP    L1C02   
L1BF8: LDA    $B9,X   
       BNE    L1C02   
       LDA    $F2,X   
       ORA    #$A0    
       STA    $F2,X   
L1C02: LDA    $B9,X   
       LSR            
       CLC            
       ADC    #$01    
       STX    $95     
       JSR    L1D01   
       LDX    $95     
       STA    $AC,X   
       LDA    $B9,X   
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    L1ED2,Y 
       STA    $B3,X   
       LDA    L1EEB,Y 
       STA    $B5,X   
       LDA    L1ED6,Y 
       STA    $B7,X   
       DEX            
       BPL    L1BDE   
       LDX    $81     
       LDA    $F2,X   
       ROL            
       BCC    L1C41   
       LDA    $A9     
       AND    #$06    
       CLC            
       LDX    $81     
       BNE    L1C3D   
       ADC    #$2A    
       BNE    L1C3F   
L1C3D: ADC    #$32    
L1C3F: STA    $A7     
L1C41: LDA    $EF     
       BPL    L1C5F   
       CMP    #$B0    
       AND    #$07    
       BEQ    L1C5D   
       LDX    #$90    
       LDA    #$18    
       BCC    L1C55   
       LDX    #$40    
       LDA    #$1A    
L1C55: STA    $A7     
       STX    $EE     
       DEC    $EF     
       BNE    L1C5F   
L1C5D: STA    $EF     
L1C5F: LDA    $87     
       TAX            
       ROL            
       BMI    L1C7C   
       TXA            
       AND    #$07    
       BEQ    L1C78   
       DEC    $87     
       LDA    $A9     
       AND    #$01    
       BNE    L1C7C   
       LDA    #$09    
       STA    $EE     
       BNE    L1C7C   
L1C78: LDA    #$60    
       STA    $87     
L1C7C: LDX    $81     
       LDY    $A7     
       LDA    L1E44,Y 
       STA    AUDC0,X 
       INY            
       LDA    L1E44,Y 
       STA    AUDF0,X 
       LDY    #$04    
       LDA    $A9     
       AND    #$07    
       BNE    L1C97   
       INC    $F4     
       INC    $8D     
L1C97: LDA    $8D     
       CMP    #$04    
       BNE    L1CA1   
       LDA    #$00    
       STA    $8D     
L1CA1: TAX            
L1CA2: LDA    L1EB8,X 
       CLC            
       ADC    ($90),Y 
       STA.wy $00AE,Y 
       DEY            
       BPL    L1CA2   
       LDA    $A9     
       LDY    #$00    
       AND    #$80    
       BNE    L1CBE   
       LDA    $F4     
       CMP    #$20    
       BEQ    L1CBE   
       LDY    #$01    
L1CBE: STY    $85     
       LDA    L1EB8,X 
       CLC            
       ADC    L1FF8,Y 
       STA    $F8     
       LDY    #$04    
L1CCB: LDA    ($92),Y 
       JSR    L1D01   
       STA.wy $0088,Y 
       DEY            
       BPL    L1CCB   
       STA    WSYNC   
       STA    HMOVE   
       LDA    $AC     
       AND    #$0F    
       TAX            
       NOP            
       NOP            
L1CE1: DEX            
       BPL    L1CE1   
       NOP            
       STA    RESBL   
       LDA    $AC     
       STA    HMBL    
       STA    WSYNC   
       LDX    $81     
       LDA    $EA,X   
       STA    $A8     
       LDA    $EC,X   
       CLC            
       ADC    #$01    
       JSR    L1D01   
       JSR    L1DEE   
       JMP    L1049   
L1D01: CLC            
       ADC    #$2E    
       TAX            
       AND    #$0F    
       STA    $98     
       TXA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       CLC            
       ADC    $98     
       CMP    #$0F    
       BCC    L1D19   
       SBC    #$0F    
       INX            
L1D19: EOR    #$07    
       ASL            
       ASL            
       ASL            
       ASL            
       STX    $98     
       ORA    $98     
       RTS            

L1D24: LDA    $C0,X   
       BPL    L1D34   
       AND    #$0F    
       TAY            
       STA    $98     
       LDA    ($92),Y 
       STA    $99     
       LDA    ($8E),Y 
       SEC            
L1D34: RTS            

L1D35: CLC            
       LDA    $C0,X   
       BPL    L1D46   
       AND    #$0F    
       TAY            
       STA    $98     
       LDA    ($8E),Y 
       STA    $9A     
       LDA    ($92),Y 
       SEC            
L1D46: RTS            

L1D47: LDY    #$04    
L1D49: LDA    ($94),Y 
       SEC            
       SBC    $9A     
       CMP    #$EF    
       BCS    L1D56   
       CMP    #$12    
       BCS    L1D63   
L1D56: LDA    ($96),Y 
       SEC            
       SBC    $99     
       CMP    #$F9    
       BCS    L1D6C   
       CMP    #$08    
       BCC    L1D6C   
L1D63: DEY            
       BPL    L1D49   
       LDY    $98     
       LDA    $99     
       SEC            
       RTS            

L1D6C: STY    $98     
L1D6E: CLC            
       RTS            

L1D70: LDA    $81     
       EOR    #$01    
       TAX            
       LDA    $EC,X   
       SEC            
       SBC    $99     
       CMP    #$F9    
       BCS    L1D82   
       CMP    #$08    
       BCS    L1D8D   
L1D82: LDA    $EA,X   
       SEC            
       SBC    $9A     
       CMP    #$EF    
       BCS    L1D6E   
       CMP    #$12    
L1D8D: RTS            

L1D8E: STA    $9A     
       LDA    ($92),Y 
       STA    $99     
L1D94: LDA    $EC     
       LDX    $EA     
       LDY    $81     
       BNE    L1DA0   
       LDA    $ED     
       LDX    $EB     
L1DA0: SEC            
       SBC    $99     
       BCS    L1DA9   
       EOR    #$FF    
       ADC    #$01    
L1DA9: CMP    #$08    
       BCS    L1DB9   
       TXA            
       SEC            
       SBC    $9A     
       BCS    L1DB7   
       EOR    #$FF    
       ADC    #$01    
L1DB7: CMP    #$12    
L1DB9: LDA    $9A     
       LDY    $98     
       LDX    $81     
       RTS            

L1DC0: LDA    $F0,X   
       BPL    L1DCB   
       LDY    $EA,X   
       STY    $9A     
       LDA    $EC,X   
       SEC            
L1DCB: RTS            

L1DCC: LDA    $F0,X   
       BPL    L1DD7   
       LDA    $EA,X   
       LDY    $EC,X   
       STY    $99     
       SEC            
L1DD7: RTS            

L1DD8: LSR            
       LSR            
L1DDA: LSR            
       LSR            
       RTS            

L1DDD: STA    HMP0    
       AND    #$0F    
       TAY            
       STA    WSYNC   
L1DE4: DEY            
       BPL    L1DE4   
       STA    RESP0   
       STA    WSYNC   
       STA    HMOVE   
       RTS            

L1DEE: STA    HMM0    
       AND    #$0F    
       TAY            
       STA    WSYNC   
L1DF5: DEY            
       BPL    L1DF5   
       STA    RESM0   
       STA    WSYNC   
       STA    HMOVE   
       RTS            

L1DFF: .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF
L1E44: .byte $04,$1D,$04,$04,$08,$0C,$08,$04,$07,$0C,$07,$04,$0F,$0E,$0F,$04
       .byte $0F,$0D,$0F,$08,$0E,$05,$0E,$01,$02,$0B,$02,$05,$08,$0B,$08,$05
       .byte $02,$0D,$02,$04,$06,$0D,$06,$04,$00,$00,$07,$0E,$07,$0D,$07,$0C
       .byte $07,$0B,$07,$02,$07,$03,$07,$04,$07,$05,$92,$94,$96,$98,$9A,$9C
       .byte $42,$44,$46,$48,$4A,$4C,$9E,$9E,$9E,$9E,$9E,$9E,$3E,$3E,$3E,$3E
       .byte $3E,$3E
L1E96: .byte $98,$80,$68,$50,$38,$15,$15,$15,$15,$15,$2A,$46,$62,$7E,$9A,$98
       .byte $80,$68,$50,$38,$87,$87,$87,$87,$87,$62,$2A,$9A,$46,$7E,$B3,$1A
       .byte $4C,$4C
L1EB8: .byte $00,$07,$0E,$15
L1EBC: .byte $00,$FF,$FF,$FF,$FF,$FF,$FF
L1EC3: .byte $D2,$96,$DE,$9A,$D2
L1EC8: .byte $D5,$99,$D5,$95,$D9
L1ECD: .byte $D0,$50,$50,$38,$A8
L1ED2: .byte $00,$00,$00,$00
L1ED6: .byte $00,$01,$03,$07,$0F,$1F,$3F,$7F,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF
L1EEB: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$C0,$E0
       .byte $F0,$F8,$FC,$FE,$FF,$3C,$42,$5A,$52,$5A,$42,$3C
L1F07: .byte $1C,$09,$08,$08,$09,$19,$08
L1F0E: .byte $C6,$29,$29,$E6,$29,$29,$C6
L1F15: .byte $30,$48,$08,$10,$08,$48,$30
L1F1C: .byte $49,$4A,$78,$49,$4A,$4A,$31
L1F23: .byte $8C,$52,$50,$90,$10,$52,$8C,$00,$81,$42,$24,$24,$42,$81,$00,$81
       .byte $42,$3C,$3C,$42,$81,$00,$81,$7E,$66,$66,$7E,$81,$00,$FF,$C3,$A5
       .byte $A5,$C3,$FF,$00,$FF,$8F,$8F,$F1,$F1,$FF,$00,$FF,$C7,$C7,$E3,$E3
       .byte $FF,$00,$FF,$F1,$F1,$8F,$8F,$FF,$00,$FF,$FF,$81,$81,$FF,$FF,$00
       .byte $42,$81,$3C,$3C,$81,$42,$00,$0E,$80,$BC,$3D,$01,$70,$00,$1C,$3C
       .byte $A5,$BD,$00,$38,$00,$70,$3D,$25,$BC,$80,$1C,$00,$C3,$BD,$7E,$FF
       .byte $99,$FF,$00,$FF,$81,$FF,$FF,$99,$FF,$00,$7E,$BD,$C3,$FF,$99,$FF
       .byte $00,$FF,$81,$FF,$FF,$99,$FF,$00,$DB,$03,$CB,$D3,$C3,$D8,$00,$E7
       .byte $C3,$D3,$08,$C3,$E7,$00,$DB,$C0,$CB,$D3,$C3,$1B,$00,$E7,$C3,$D3
       .byte $08,$C3,$E7,$00,$9F,$EF,$9F,$F9,$F7,$F9,$00,$FF,$9F,$E9,$97,$F9
       .byte $FF,$00,$FF,$F9,$97,$E9,$9F,$FF,$00,$F9,$F7,$F9,$9F,$EF,$9F,$00
       .byte $FF,$81,$BF,$83,$BF,$81,$00,$FF,$80,$80,$FE,$80,$FF,$00,$FF,$81
       .byte $BF,$83,$BF,$81,$00,$FF,$80,$80,$FE,$80,$FF
L1FEE: .byte $87,$15
L1FF0: .byte $15,$87
L1FF2: .byte $89,$8F
L1FF4: .byte $96,$46
L1FF6: .byte $9E,$4E
L1FF8: .byte $B6,$D2
L1FFA: .byte $90,$40,$00,$10,$00,$10
