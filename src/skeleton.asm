; Disassembly of roms/skeleton.bin
; Disassembled Tue Oct  6 15:24:50 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/skeleton.bin
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
ENABL   =  $1F
HMP0    =  $20
HMP1    =  $21
HMBL    =  $24
HMOVE   =  $2A
HMCLR   =  $2B
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296

       ORG $1000
L1000: .byte $53,$6B,$65,$6C,$65,$74,$6F,$6E,$20,$28,$63,$29,$32,$30,$30,$32
       .byte $20,$45,$72,$69,$63,$20,$42,$61,$6C,$6C,$00
L101B: STA    WSYNC   
       LDA    ($80),Y 
       STA    PF0     
       CPY    $96     
       BCC    L102B   
       CPY    $97     
       BCS    L102B   
       LDA    #$02    
L102B: STA    ENABL   
       STX    PF1     
       STX    PF2     
       LDA    ($88),Y 
       STA    PF0     
       INY            
       LDA    $98     
       CMP    #$01    
       BEQ    L1042   
       CPY    #$14    
       BNE    L101B   
       BEQ    L1061   
L1042: CPY    #$0F    
       BCC    L101B   
       LDX    #$FF    
       CPY    #$14    
       BNE    L101B   
       STA    WSYNC   
       LDA    #$80    
       STA    PF0     
       LDA    #$00    
       STA    PF1     
       STA    PF2     
       LDX    #$96    
       JSR    L167C   
       DEX            
       JMP    L11C4   
L1061: STA    WSYNC   
       TXA            
       AND    #$0F    
       ORA    ($82),Y 
       STA    PF1     
       STX    PF2     
       LDX    #$80    
       STX    PF0     
       LDX    #$04    
L1072: DEX            
       BNE    L1072   
       AND    #$0F    
       ORA    ($8A),Y 
       STA    PF1     
       INY            
       LDA    $98     
       CMP    #$02    
       BEQ    L1088   
       CPY    #$28    
       BNE    L1061   
       BEQ    L10A4   
L1088: CPY    #$23    
       BCC    L1061   
       DEX            
       CPY    #$28    
       BNE    L1061   
       STA    WSYNC   
       LDA    #$10    
       STA    PF1     
       LDA    #$00    
       STA    PF2     
       LDX    #$6E    
       JSR    L167C   
       DEX            
       JMP    L1198   
L10A4: STA    WSYNC   
       LDA    ($84),Y 
       STA    PF1     
       STX    PF2     
       LDX    #$05    
       CPY    $94     
       BCC    L10BC   
       LDA    ($90),Y 
       STA    GRP0    
       LDA    ($92),Y 
       STA    GRP1    
       LDX    #$02    
L10BC: DEX            
       BNE    L10BC   
       LDA    ($8C),Y 
       STA    PF1     
       INY            
       LDA    $98     
       CMP    #$03    
       BEQ    L10D2   
       CPY    #$3C    
       BNE    L10A4   
       LDA    #$00    
       BEQ    L1107   
L10D2: CPY    #$37    
       BCC    L10A4   
       DEX            
       CPY    #$3C    
       BNE    L10A4   
       STA    WSYNC   
       LDA    #$11    
       STA    PF1     
       LDA    #$00    
       STA    PF2     
       LDX    #$46    
       JSR    L167C   
       DEX            
       JMP    L116C   
L10EE: INX            
       TYA            
       CLC            
       ADC    $AC     
       CMP    $AE     
       BNE    L10F9   
       STX    $99     
L10F9: TAY            
       LDA    $B2     
       AND    L1800,Y 
       RTS            

L1100: LDX    #$03    
L1102: DEX            
       BNE    L1102   
       BEQ    L1121   
L1107: STA    WSYNC   
       AND    #$F0    
       ORA    ($86),Y 
       STA    PF2     
       LDX    #$11    
       STX    PF1     
       CPY    $94     
       BCC    L1100   
       TAX            
       LDA    ($90),Y 
       STA    GRP0    
       LDA    ($92),Y 
       STA    GRP1    
       TXA            
L1121: AND    #$F0    
       ORA    ($8E),Y 
       STA    PF2     
       INY            
       LDA    $98     
       CMP    #$04    
       BEQ    L1134   
       CPY    #$50    
       BNE    L1107   
       BEQ    L113E   
L1134: CPY    #$4B    
       BCC    L1107   
       LDA    #$FF    
       CPY    #$50    
       BNE    L1107   
L113E: STA    WSYNC   
       LDA    #$08    
       STA    PF2     
       LDX    #$1E    
       JSR    L167C   
       DEX            
L114A: STA    WSYNC   
       LDA    ($86),Y 
       STA    PF2     
       LDX    #$04    
       CPY    $95     
       BCS    L1160   
       LDA    ($90),Y 
       STA    GRP0    
       LDA    ($92),Y 
       STA    GRP1    
       LDX    #$01    
L1160: DEX            
       BPL    L1160   
       LDA    ($8E),Y 
       STA    PF2     
       INY            
       CPY    #$82    
       BNE    L114A   
L116C: STA    WSYNC   
       LDA    ($84),Y 
       STA    PF1     
       STX    PF2     
       LDX    #$04    
       CPY    $95     
       BCS    L1184   
       LDA    ($90),Y 
       STA    GRP0    
       LDA    ($92),Y 
       STA    GRP1    
       LDX    #$01    
L1184: DEX            
       BPL    L1184   
       LDA    ($8C),Y 
       STA    PF1     
       INY            
       CPY    #$87    
       BCC    L116C   
       LDX    #$00    
       CPY    #$96    
       BNE    L116C   
       LDX    #$FF    
L1198: STA    WSYNC   
       LDA    ($82),Y 
       STA    PF1     
       STX    PF2     
       LDX    #$04    
       CPY    $95     
       BCS    L11B0   
       LDA    ($90),Y 
       STA    GRP0    
       LDA    ($92),Y 
       STA    GRP1    
       LDX    #$01    
L11B0: DEX            
       BPL    L11B0   
       LDA    ($8A),Y 
       STA    PF1     
       INY            
       CPY    #$9B    
       BCC    L1198   
       LDX    #$00    
       CPY    #$AA    
       BNE    L1198   
       LDX    #$FF    
L11C4: STA    WSYNC   
       LDA    ($80),Y 
       STA    PF0     
       CPY    $96     
       BCC    L11D4   
       CPY    $97     
       BCS    L11D4   
       LDA    #$02    
L11D4: STA    ENABL   
       STX    PF1     
       STX    PF2     
       LDA    ($88),Y 
       STA    PF0     
       INY            
       CPY    #$AF    
       BCC    L11C4   
       LDX    #$00    
       CPY    #$BE    
       BNE    L11C4   
L11E9: LDA    #$24    
       STA    WSYNC   
       STA    TIM64T  
       STX    PF0     
       LDX    $9B     
       BEQ    L11FD   
       DEX            
       BNE    L11FD   
       STX    AUDV0   
       STX    AUDV1   
L11FD: STX    $9B     
       LDA    $A4     
       BPL    L120C   
       LDX    $9C     
       LDA    L1E00,X 
       BNE    L121B   
       BEQ    L121B   
L120C: LDA    $9C     
       CMP    #$37    
       BCS    L121F   
       LDA    $B3     
       STA    COLUPF  
       LDX    $A4     
       LDA    L1D00,X 
L121B: STA    COLUP0  
       STA    COLUP1  
L121F: LDA    REFP1   
       AND    #$80    
       CMP    $9D     
       BNE    L127D   
       LDX    $9E     
       STA    $9E     
       BPL    L127D   
       ASL            
       BCS    L127D   
       LDA    $9C     
       BNE    L127D   
       STA    AUDF0   
       STA    AUDF1   
       LDA    #$08    
       STA    AUDC0   
       STA    AUDC1   
       STA    AUDV0   
       STA    AUDV1   
       STA    $9B     
       LDA    $99     
       AND    #$03    
       BEQ    L1271   
       LDA    #$00    
       SEC            
       SBC    $AC     
       STA    $A1     
       LDA    $9A     
       AND    #$0F    
       STA    $9C     
       LDA    $A4     
       SEC            
       SBC    $9C     
       STA    $A4     
       LDA    $9C     
       ASL            
       ASL            
       ASL            
       ASL            
       STA    $9C     
       LDX    $A4     
       LDA    L1D00,X 
       ORA    $9C     
       STA    COLUP0  
       STA    COLUP1  
L1271: LDA    $B3     
       AND    #$0F    
       STA    COLUPF  
       LDA    #$3C    
       STA    $9C     
       BNE    L127D   
L127D: LDA    SWCHA   
       ORA    #$0F    
       CMP    $9F     
       BNE    L12D4   
       LDX    $A0     
       CPX    #$FF    
       BNE    L12A7   
       CMP    #$EF    
       BEQ    L12BE   
       CMP    #$7F    
       BEQ    L12AF   
       CMP    #$BF    
       BNE    L12D4   
       STA    $A0     
       LDX    $AC     
       LDA    #$00    
       SEC            
       SBC    $AD     
       STX    $AD     
       STA    $AC     
       BNE    L12D4   
L12A7: CMP    #$FF    
       BNE    L12D4   
       STA    $A0     
       BEQ    L12D4   
L12AF: STA    $A0     
       LDX    $AD     
       LDA    #$00    
       SEC            
       SBC    $AC     
       STX    $AC     
       STA    $AD     
       BNE    L12D4   
L12BE: STA    $A0     
       LDA    $98     
       CMP    #$01    
       BEQ    L12D4   
       LDA    $AB     
       CLC            
       ADC    $AC     
       STA    $AB     
       CMP    $AE     
       BNE    L12D4   
       JMP    L176D   
L12D4: LDA    $A4     
       BMI    L12DC   
       DEC    $A6     
       BEQ    L12DF   
L12DC: JMP    L1437   
L12DF: LDA    $A8     
       SEC            
       SBC    $A7     
       STA    $A8     
       BCS    L1308   
       ADC    #$3C    
       STA    $A8     
       LDA    $A9     
       SEC            
       SBC    $A7     
       STA    $A9     
       BCS    L1308   
       ADC    #$57    
       STA    $A9     
       LDA    $AA     
       SEC            
       SBC    $A7     
       STA    $AA     
       BCS    L1308   
       ADC    #$57    
       STA    $AA     
       DEC    $A7     
L1308: LDA    $A7     
       STA    $A6     
       LDA    $A1     
       BEQ    L133F   
       LDX    #$00    
       STX    $A1     
       CMP    $AF     
       BNE    L131B   
       JMP    L13F9   
L131B: STA    $AF     
       CMP    #$01    
       BEQ    L1329   
       BMI    L132F   
       LDA    #$FF    
       STA    $B0     
       BNE    L12DC   
L1329: LDA    #$10    
       STA    $B0     
       BNE    L12DC   
L132F: CMP    #$FF    
       BEQ    L1339   
       LDA    #$01    
       STA    $B0     
       BNE    L12DC   
L1339: LDA    #$F0    
       STA    $B0     
       BNE    L12DC   
L133F: LDX    #$00    
       LDA    $AE     
       CLC            
       ADC    $AF     
       TAY            
       LDA    $B2     
       AND    L1800,Y 
       BNE    L137A   
       INX            
       LDA    #$01    
       BIT    $AF     
       BNE    L1361   
       LDA    $AB     
       SEC            
       SBC    $AE     
       AND    #$0F    
       BNE    L137A   
       JMP    L13F9   
L1361: BMI    L136F   
       LDA    $AB     
       SEC            
       SBC    $AE     
       AND    #$F0    
       BNE    L137A   
       JMP    L13F9   
L136F: LDA    $AE     
       SEC            
       SBC    $AB     
       AND    #$F0    
       BNE    L137A   
       BEQ    L13F9   
L137A: LDA    $AE     
       CLC            
       ADC    $B0     
       TAY            
       LDA    $B2     
       AND    L1800,Y 
       BNE    L1389   
       INX            
       INX            
L1389: LDA    $AE     
       SEC            
       SBC    $B0     
       TAY            
       LDA    $B2     
       AND    L1800,Y 
       BNE    L139A   
       INX            
       INX            
       INX            
       INX            
L139A: CPX    #$00    
       BEQ    L13B6   
       DEX            
       BEQ    L13F9   
       DEX            
       BEQ    L13C7   
       DEX            
       BEQ    L13D7   
       DEX            
       BEQ    L13DD   
       DEX            
       BEQ    L13ED   
       DEX            
       BEQ    L13F3   
       BIT    $9A     
       BPL    L13F9   
       BMI    L13F3   
L13B6: LDA    #$00    
       SEC            
       SBC    $AF     
       STA    $AF     
       LDA    #$00    
       SEC            
       SBC    $B0     
       STA    $B0     
       JMP    L1437   
L13C7: LDX    $B0     
       LDA    #$00    
       SEC            
       SBC    $AF     
       STX    $AF     
       STA    $B0     
       STX    $A1     
       JMP    L1437   
L13D7: BIT    $9A     
       BPL    L13F9   
       BMI    L13C7   
L13DD: LDX    $AF     
       LDA    #$00    
       SEC            
       SBC    $B0     
       STX    $B0     
       STA    $AF     
       STA    $A1     
       JMP    L1437   
L13ED: BIT    $9A     
       BPL    L13F9   
       BMI    L13DD   
L13F3: BIT    $9A     
       BVC    L13C7   
       BVS    L13DD   
L13F9: LDA    $AE     
       CLC            
       ADC    $AF     
       STA    $AE     
       CMP    $AB     
       BNE    L1407   
       JMP    L176D   
L1407: LDA    $9B     
       BNE    L1437   
       JSR    L16B7   
       JSR    L15B2   
       JSR    L1691   
       LDA    #$01    
       STA    AUDC0   
       STA    AUDC1   
       LDA    $9A     
       ORA    #$1E    
       STA    AUDF0   
       STA    AUDF1   
       CPX    #$F1    
       BPL    L1428   
       LDX    #$F1    
L1428: STX    AUDV0   
       CPY    #$F1    
       BPL    L1430   
       LDY    #$F1    
L1430: STY    AUDV1   
       LDA    $A6     
       LSR            
       STA    $9B     
L1437: JSR    L1639   
       LDA    $A4     
       BPL    L1492   
       LDA    $9C     
       BNE    L1492   
       LDX    $A5     
       INX            
       STX    $A5     
       STX    $A4     
       LDX    $B3     
       INX            
       TXA            
       AND    #$0F    
       CMP    #$0D    
       BEQ    L147B   
       STX    $B3     
       LDA    #$00    
       STA    $AE     
       JSR    L16B7   
       BPL    L1463   
       EOR    #$FF    
       CLC            
       ADC    #$01    
L1463: BIT    $A3     
       BPL    L146C   
       SEC            
       SBC    $A3     
       BPL    L146F   
L146C: CLC            
       ADC    $A3     
L146F: CMP    #$07    
       BPL    L1477   
       LDA    #$78    
       STA    $AE     
L1477: LDX    #$05    
       BNE    L148A   
L147B: TXA            
       CLC            
       ADC    #$16    
       STA    $B3     
       LDX    #$0B    
       ASL    $B2     
       BNE    L148A   
       JMP    L1773   
L148A: LDA    L1C2B,X 
       STA    $A5,X   
       DEX            
       BNE    L148A   
L1492: LDX    #$00    
       STX    $99     
       LDY    $AB     
       JSR    L10EE   
       BNE    L14AD   
       JSR    L10EE   
       BNE    L14AD   
       JSR    L10EE   
       BNE    L14AD   
       JSR    L10EE   
       BNE    L14AD   
       INX            
L14AD: STX    $98     
       LDA    $AB     
       CLC            
       ADC    $AD     
       LDX    #$8B    
L14B6: JSR    L1789   
       CPX    #$90    
       BNE    L14B6   
       LDA    $AB     
       SEC            
       SBC    $AD     
       LDX    #$83    
L14C4: JSR    L1789   
       CPX    #$88    
       BNE    L14C4   
       LDX    #$8B    
       LDY    #$88    
L14CF: JSR    L15E0   
       CPY    #$90    
       BNE    L14CF   
       LDX    #$83    
       LDY    #$80    
L14DA: JSR    L15E0   
       CPY    #$88    
       BNE    L14DA   
       LDA    SWCHB   
       AND    #$40    
       BEQ    L14EE   
       STA    $96     
       STA    $97     
       BNE    L14F7   
L14EE: JSR    L16B7   
       JSR    L15B2   
       JSR    L15FE   
L14F7: LDA    $99     
       AND    #$03    
       BNE    L1506   
       STA    $95     
       SBC    #$01    
       STA    $94     
       JMP    L1594   
L1506: SEC            
       SBC    #$01    
       ASL            
       ASL            
       ASL            
       ASL            
       TAY            
       LDA    L1C00,Y 
       STA    HMCLR   
       STA    HMP0    
       LDA    L1C01,Y 
       STA    $94     
       LDA    L1C02,Y 
       STA    $95     
       LDA    L1C03,Y 
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    $AC     
       CMP    $AF     
       BEQ    L154D   
       CMP    $B0     
       BEQ    L155F   
       CLC            
       ADC    $AF     
       BEQ    L1577   
       LDA    L1C08,Y 
       STA    $92     
       LDA    L1C09,Y 
       STA    $93     
       LDA    L1C0A,Y 
       STA    $90     
       LDA    L1C0B,Y 
       STA    $91     
       LDA    #$18    
       BNE    L1587   
L154D: LDA    L1C06,Y 
       STA    $90     
       STA    $92     
       LDA    L1C07,Y 
       STA    $91     
       STA    $93     
       LDA    #$08    
       BNE    L1587   
L155F: LDA    L1C08,Y 
       STA    $90     
       LDA    L1C09,Y 
       STA    $91     
       LDA    L1C0A,Y 
       STA    $92     
       LDA    L1C0B,Y 
       STA    $93     
       LDA    #$00    
       BEQ    L1587   
L1577: LDA    L1C04,Y 
       STA    $90     
       STA    $92     
       LDA    L1C05,Y 
       STA    $91     
       STA    $93     
       LDA    #$08    
L1587: STA    WSYNC   
       STA    HMOVE   
       STA    REFP1   
       LSR            
       STA    REFP0   
       STA    WSYNC   
       STA    HMOVE   
L1594: JSR    L17B0   
       LDA    REFP1   
       AND    #$80    
       STA    $9D     
       LDX    $9C     
       BEQ    L15A4   
       DEX            
       STX    $9C     
L15A4: LDA    SWCHA   
       ORA    #$0F    
       STA    $9F     
       LDY    #$00    
       LDX    #$00    
       JMP    L101B   
L15B2: LDA    #$01    
       BIT    $AC     
       BEQ    L15CC   
       BMI    L15BF   
       LDX    $A2     
       LDY    $A3     
       RTS            

L15BF: LDA    $A2     
       EOR    #$FF    
       TAX            
       INX            
       LDA    $A3     
       EOR    #$FF    
       TAY            
       INY            
       RTS            

L15CC: BMI    L15D7   
       LDX    $A3     
       LDA    $A2     
       EOR    #$FF    
       TAY            
       INY            
       RTS            

L15D7: LDA    $A3     
       EOR    #$FF    
       TAX            
       INX            
       LDY    $A2     
       RTS            

L15E0: LDA    VSYNC,X 
       BEQ    L15E8   
       LDA    #$19    
       BNE    L15F2   
L15E8: LDA    VBLANK,X
       BEQ    L15F0   
       LDA    #$1A    
       BNE    L15F2   
L15F0: LDA    #$1B    
L15F2: INX            
       STA.wy $0001,Y 
       LDA    #$00    
       STA.wy $0000,Y 
       INY            
       INY            
       RTS            

L15FE: TXA            
       BEQ    L1607   
       BMI    L160B   
       LDA    #$03    
       BNE    L160D   
L1607: LDA    #$5A    
       BNE    L160D   
L160B: LDA    #$B2    
L160D: STA    $96     
       CLC            
       ADC    #$09    
       STA    $97     
       TYA            
       BEQ    L161F   
       BPL    L1625   
       LDA    #$60    
       LDY    #$03    
       BNE    L1629   
L161F: LDA    #$40    
       LDY    #$06    
       BNE    L1629   
L1625: LDA    #$20    
       LDY    #$09    
L1629: STY    WSYNC   
       STY    RESBL   
L162D: DEY            
       STY    RESBL   
       BNE    L162D   
       STA    WSYNC   
       STA    HMBL    
       STA    HMOVE   
       RTS            

L1639: JSR    L17B0   
       LDA    #$02    
       STA    VSYNC   
       JSR    L17A4   
       LDA    #$31    
       STA    CTRLPF  
       STA    WSYNC   
       LDX    #$08    
L164B: DEX            
       BNE    L164B   
       STA    RESP0   
       LDA    #$60    
       STA    RESP1   
       STA    HMP0    
       LDA    #$40    
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$2E    
       STA    WSYNC   
       STA    TIM64T  
       LDA    #$00    
       STA    VSYNC   
       STA    HMCLR   
       RTS            

L166C: STA    WSYNC   
       LDA    #$00    
       CPY    $96     
       BCC    L167A   
       CPY    $97     
       BCS    L167A   
       LDA    #$02    
L167A: STA    ENABL   
L167C: CPY    $94     
       BCC    L168C   
       CPY    $95     
       BCS    L168C   
       LDA    ($90),Y 
       STA    GRP0    
       LDA    ($92),Y 
       STA    GRP1    
L168C: INY            
       DEX            
       BNE    L166C   
       RTS            

L1691: STY    $A3     
       TXA            
       BMI    L169D   
       EOR    #$FF    
       CLC            
       ADC    #$01    
       BMI    L169E   
L169D: ASL            
L169E: STA    $A2     
       TYA            
       BPL    L16AC   
       CLC            
       ADC    $A2     
       TAX            
       CLC            
       ADC    $A3     
       TAY            
       RTS            

L16AC: LDA    $A2     
       SEC            
       SBC    $A3     
       TAY            
       SEC            
       SBC    $A3     
       TAX            
       RTS            

L16B7: LDA    $AE     
       SEC            
       SBC    $AB     
       STA    $A2     
       LSR            
       LSR            
       LSR            
       LSR            
       BIT    $B1     
       BEQ    L16C8   
       ORA    #$F0    
L16C8: STA    $A3     
       LDA    $A2     
       BIT    $B1     
       BEQ    L16D6   
       INC    $A3     
       ORA    #$F0    
       BMI    L16D8   
L16D6: AND    #$0F    
L16D8: STA    $A2     
       RTS            


START:
       SEI            
       CLD            
       LDA    #$00    
       LDX    #$44    
L16E1: STA    VSYNC,X 
       INX            
       BNE    L16E1   
       STX    $A2     
       DEX            
       TXS            
       STX    COLUPF  
       LDA    #$55    
       STA    $99     
       LDY    #$0B    
       STY    $A3     
       LDA    #$25    
       STA    $95     
       LDA    #$30    
       STA    $94     
       JMP    L16FF   
L16FF: LDA    #$02    
       STA    VSYNC   
       STA    WSYNC   
       JSR    L17A4   
       STA    WSYNC   
       LDA    $94     
       STA    WSYNC   
       STA    TIM64T  
       LDA    #$00    
       STA    VSYNC   
       LDX    $A2     
       JSR    L17B0   
L171A: STA    WSYNC   
       LDA    L1F01,X 
       STA    PF1     
       LDA    L1F02,X 
       STA    PF2     
       LDA    L1F00,X 
       STA    PF0     
       ASL            
       ASL            
       ASL            
       ASL            
       STA    PF0     
       LDA    L1F03,X 
       STA    PF1     
       LDA    L1F04,X 
       DEY            
       BNE    L1743   
       LDY    $A3     
       INX            
       INX            
       INX            
       INX            
       INX            
L1743: STA    PF2     
       CPX    $99     
       BNE    L171A   
       LDA    $95     
       STA    WSYNC   
       STA    TIM64T  
       LDA    #$00    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       STA    AUDV0   
       STA    AUDV1   
       LDA    SWCHB   
       AND    #$03    
       CMP    #$03    
       BEQ    L1768   
       JMP    L1797   
L1768: JSR    L17B0   
       BEQ    L16FF   
L176D: LDY    #$8C    
       LDX    #$55    
       BNE    L1777   
L1773: LDY    #$AA    
       LDX    #$73    
L1777: STY    $99     
       STX    $A2     
       LDY    #$0F    
       STY    $A3     
       LDA    #$32    
       STA    $95     
       LDA    #$3D    
       STA    $94     
       BNE    L1768   
L1789: TAY            
       LDA    $B2     
       AND    L1800,Y 
       STA    VSYNC,X 
       INX            
       TYA            
       CLC            
       ADC    $AC     
       RTS            

L1797: LDX    #$0E    
L1799: LDA    L1C2B,X 
       STA    $A5,X   
       DEX            
       BNE    L1799   
       JMP    L11E9   
L17A4: LDA    $9A     
       BEQ    L17AB   
       LSR            
       BCC    L17AD   
L17AB: EOR    #$A9    
L17AD: STA    $9A     
       RTS            

L17B0: STA    WSYNC   
       LDA    INTIM   
       BNE    L17B0   
       RTS            

L17B8: .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
L1800: .byte $00,$00,$05,$61,$75,$0B,$CA,$51,$93,$01,$1E,$40,$A8,$61,$C9,$BA
       .byte $45,$FA,$1E,$82,$0D,$BD,$62,$24,$1D,$E4,$2A,$D3,$9C,$33,$55,$26
       .byte $41,$C2,$03,$70,$42,$05,$31,$8E,$5C,$77,$20,$74,$50,$21,$89,$81
       .byte $39,$36,$09,$95,$3A,$8A,$40,$61,$D4,$50,$88,$53,$CB,$67,$72,$16
       .byte $44,$84,$6A,$04,$45,$E9,$16,$98,$1A,$23,$05,$37,$43,$58,$90,$29
       .byte $CA,$31,$D1,$92,$7C,$43,$17,$64,$41,$84,$5C,$92,$0B,$A4,$13,$C5
       .byte $10,$3F,$7D,$11,$C0,$42,$AA,$66,$BB,$02,$21,$60,$76,$60,$AA,$0E
       .byte $30,$F4,$01,$87,$68,$55,$93,$50,$00,$44,$9F,$08,$C1,$A8,$35,$40
       .byte $E9,$E2,$08,$71,$E2,$43,$3D,$54,$FB,$40,$76,$22,$96,$06,$52,$D8
       .byte $7F,$03,$16,$D0,$5C,$81,$09,$82,$45,$81,$08,$83,$6C,$41,$A9,$74
       .byte $46,$80,$68,$41,$3B,$B5,$57,$B2,$2C,$B6,$75,$12,$20,$92,$06,$8B
       .byte $41,$B9,$16,$C7,$07,$50,$1B,$42,$21,$61,$58,$D0,$4D,$31,$C8,$30
       .byte $14,$4B,$82,$BA,$01,$F8,$B6,$4A,$97,$C9,$46,$71,$C7,$46,$46,$49
       .byte $86,$23,$57,$0C,$42,$55,$14,$05,$21,$30,$84,$49,$75,$4C,$F1,$30
       .byte $40,$38,$94,$24,$F3,$DC,$7E,$D3,$09,$CE,$11,$23,$83,$4A,$62,$2D
       .byte $C3,$7C,$97,$48,$C2,$00,$35,$31,$3D,$40,$E0,$6D,$33,$07,$94,$10
       .byte $10,$10,$10,$10,$10,$20,$20,$20,$20,$20,$40,$40,$40,$40,$40,$80
       .byte $80,$80,$80,$80,$80,$80,$80,$80,$80,$40,$40,$40,$40,$40,$20,$20
       .byte $20,$20,$20,$10,$10,$10,$10,$10,$18,$18,$18,$18,$18,$14,$14,$14
       .byte $14,$14,$12,$12,$12,$12,$12,$11,$11,$11,$11,$11,$01,$01,$01,$01
       .byte $01,$02,$02,$02,$02,$02,$04,$04,$04,$04,$04,$08,$08,$08,$08,$08
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$F8,$F8
       .byte $F8,$F8,$F8,$04,$04,$04,$04,$04,$02,$02,$02,$02,$02,$01,$01,$01
       .byte $01,$01,$11,$11,$11,$11,$11,$12,$12,$12,$12,$12,$14,$14,$14,$14
       .byte $14,$18,$18,$18,$18,$18,$1F,$1F,$1F,$1F,$1F,$20,$20,$20,$20,$20
       .byte $40,$40,$40,$40,$40,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$40
       .byte $40,$40,$40,$40,$20,$20,$20,$20,$20,$10,$10,$10,$10,$10,$03,$03
       .byte $07,$07,$05,$05,$06,$06,$03,$03,$02,$02,$01,$01,$3F,$3F,$41,$41
       .byte $4F,$4F,$41,$41,$4F,$4F,$41,$41,$2F,$2F,$21,$21,$27,$27,$53,$53
       .byte $51,$51,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$04,$04
       .byte $02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$1E,$1E,$00,$FF,$FF,$FF
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$F0
       .byte $F0,$F0,$F0,$F0,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$F0,$F0,$F0,$F0,$F0,$10,$10,$10,$10,$10,$10,$10,$10
       .byte $10,$10,$10,$10,$10,$10,$10,$1F,$1F,$1F,$1F,$1F,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$0F,$0F,$0F,$0F,$0F
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$FF,$FF
       .byte $FF,$FF,$FF,$04,$04,$04,$04,$04,$02,$02,$02,$02,$02,$01,$01,$01
       .byte $01,$01,$1F,$1F,$1F,$1F,$1F,$12,$12,$12,$12,$12,$14,$14,$14,$14
       .byte $14,$18,$18,$18,$18,$18,$FF,$FF,$FF,$FF,$FF,$20,$20,$20,$20,$20
       .byte $40,$40,$40,$40,$40,$80,$80,$80,$80,$80,$F0,$F0,$F0,$F0,$F0,$40
       .byte $40,$40,$40,$40,$20,$20,$20,$20,$20,$10,$10,$10,$10,$10,$03,$03
       .byte $07,$07,$07,$07,$07,$07,$03,$03,$03,$03,$01,$01,$3F,$3F,$5F,$5F
       .byte $4F,$4F,$41,$41,$4F,$4F,$41,$41,$2F,$2F,$21,$21,$27,$27,$53,$53
       .byte $51,$51,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$04,$04
       .byte $02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$1E,$1E,$00,$FF,$FF,$FF
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80
       .byte $80,$80,$80,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10
       .byte $10,$10,$10,$10,$10,$10,$10,$11,$11,$11,$11,$11,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$08,$08,$08,$08,$08
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$FF,$FF
       .byte $FF,$FF,$FF,$04,$04,$04,$04,$04,$02,$02,$02,$02,$02,$01,$01,$01
       .byte $01,$01,$1F,$1F,$1F,$1F,$1F,$12,$12,$12,$12,$12,$14,$14,$14,$14
       .byte $14,$18,$18,$18,$18,$18,$FF,$FF,$FF,$FF,$FF,$20,$20,$20,$20,$20
       .byte $40,$40,$40,$40,$40,$80,$80,$80,$80,$80,$F0,$F0,$F0,$F0,$F0,$40
       .byte $40,$40,$40,$40,$20,$20,$20,$20,$20,$10,$10,$10,$10,$10,$70,$70
       .byte $F8,$F8,$B8,$B8,$F8,$F8,$78,$78,$D0,$D0,$10,$10,$78,$78,$F8,$F8
       .byte $F8,$F8,$08,$08,$F8,$F8,$08,$08,$38,$38,$08,$08,$38,$38,$38,$38
       .byte $38,$38,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$20,$20
       .byte $10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$70,$70,$00,$FF,$FF,$FF
L1C00: .byte $70
L1C01: .byte $43
L1C02: .byte $A1
L1C03: .byte $07
L1C04: .byte $00
L1C05: .byte $1C
L1C06: .byte $5E
L1C07: .byte $1C
L1C08: .byte $00
L1C09: .byte $1E
L1C0A: .byte $0D
L1C0B: .byte $1D,$45,$72,$69,$63,$F0,$4F,$8E,$05,$6F,$19,$6F,$1A,$42,$1E,$6F
       .byte $1B,$42,$61,$6C,$6C,$B0,$59,$79,$00,$55,$1D,$75,$1D,$6F,$1E,$51
L1C2B: .byte $1F,$3C,$3C,$1E,$2C,$2B,$00,$01,$10,$88,$01,$10,$08,$01,$13,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$03,$03,$03,$07,$07,$07,$05,$05
       .byte $05,$06,$06,$06,$03,$03,$03,$02,$02,$02,$01,$01,$01,$3F,$3F,$3F
       .byte $41,$41,$41,$4F,$4F,$4F,$41,$41,$41,$4F,$4F,$4F,$41,$41,$41,$2F
       .byte $2F,$2F,$21,$21,$21,$27,$27,$27,$53,$53,$53,$51,$51,$51,$02,$02
       .byte $02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02
       .byte $04,$04,$04,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02
       .byte $02,$02,$1E,$1E,$1E,$00,$03,$03,$03,$07,$07,$07,$07,$07,$07,$07
       .byte $07,$07,$03,$03,$03,$03,$03,$03,$01,$01,$01,$3F,$3F,$3F,$5F,$5F
       .byte $5F,$4F,$4F,$4F,$41,$41,$41,$4F,$4F,$4F,$41,$41,$41,$2F,$2F,$2F
       .byte $21,$21,$21,$27,$27,$27,$53,$53,$53,$51,$51,$51,$02,$02,$02,$02
       .byte $02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$04,$04
       .byte $04,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02
       .byte $1E,$1E,$1E,$00,$FF
L1D00: .byte $02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$04,$04,$04,$04
       .byte $04,$04,$04,$04,$04,$04,$04,$06,$06,$06,$06,$06,$06,$06,$06,$06
       .byte $06,$06,$06,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$0A,$0A
       .byte $0A,$0A,$0A,$0A,$0A,$0A,$0A,$0A,$0A,$0A,$0C,$0C,$0C,$0C,$0C,$0C
       .byte $0C,$0C,$0C,$0C,$0C,$0E,$0E,$0E,$0E,$0E,$0E,$0E,$0E,$0E,$0E,$0E
       .byte $70,$70,$70,$F8,$F8,$F8,$B8,$B8,$B8,$F8,$F8,$F8,$78,$78,$78,$D0
       .byte $D0,$D0,$10,$10,$10,$78,$78,$78,$F8,$F8,$F8,$F8,$F8,$F8,$08,$08
       .byte $08,$F8,$F8,$F8,$08,$08,$08,$38,$38,$38,$08,$08,$08,$38,$38,$38
       .byte $38,$38,$38,$38,$38,$38,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10
       .byte $10,$10,$10,$10,$10,$10,$10,$10,$20,$20,$20,$10,$10,$10,$10,$10
       .byte $10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$70,$70,$70,$00,$03,$07
       .byte $05,$06,$03,$02,$01,$3F,$41,$4F,$41,$4F,$41,$2F,$21,$27,$53,$51
       .byte $02,$02,$02,$02,$02,$02,$04,$02,$02,$02,$02,$02,$1E,$00,$03,$07
       .byte $07,$07,$03,$03,$01,$3F,$5F,$4F,$41,$4F,$41,$2F,$21,$27,$53,$51
       .byte $02,$02,$02,$02,$02,$02,$04,$02,$02,$02,$02,$02,$1E,$00,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
L1E00: .byte $00,$10,$20,$30,$41,$51,$61,$71,$82,$92,$A2,$B2,$C3,$D3,$E3,$F3
       .byte $14,$24,$34,$44,$55,$65,$75,$85,$96,$A6,$B6,$C6,$D7,$E7,$F7,$17
       .byte $28,$38,$48,$58,$69,$79,$89,$99,$AA,$BA,$CA,$DA,$EB,$FB,$1B,$2B
       .byte $3C,$4C,$5C,$6C,$7D,$8D,$9D,$AD,$BE,$CE,$DE,$EE,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$3F,$3F,$3F,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$3F,$3F,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $3F,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
L1F00: .byte $FF
L1F01: .byte $4B
L1F02: .byte $0B
L1F03: .byte $7D
L1F04: .byte $89,$11,$52,$08,$12,$9A,$F7,$63,$09,$12,$AA,$81,$52,$08,$12,$CA
       .byte $FF,$4B,$7B,$11,$89,$00,$00,$00,$00,$00,$01,$00,$38,$80,$00,$01
       .byte $00,$48,$80,$00,$0A,$00,$38,$00,$00,$04,$00,$48,$00,$00,$04,$00
       .byte $38,$00,$00,$00,$00,$00,$00,$00,$FE,$73,$39,$19,$10,$12,$49,$04
       .byte $A5,$10,$7E,$71,$04,$3D,$10,$12,$49,$04,$A5,$10,$FE,$4B,$39,$25
       .byte $F7,$FF,$FF,$F8,$FF,$F8,$30,$00,$CC,$60,$CC,$30,$3F,$78,$60,$78
       .byte $30,$03,$E0,$60,$E0,$F0,$FF,$E0,$60,$E0,$00,$00,$00,$00,$00,$33
       .byte $03,$FC,$03,$FC,$33,$03,$0C,$03,$0C,$F3,$FF,$0C,$03,$0C,$03,$60
       .byte $0C,$03,$0C,$0F,$60,$FC,$FF,$FC,$00,$00,$00,$00,$00,$33,$03,$FC
       .byte $07,$FC,$33,$63,$80,$1B,$80,$B3,$9B,$80,$63,$80,$7B,$07,$80,$83
       .byte $80,$37,$03,$FC,$03,$FC,$70,$F8,$B8,$F8,$78,$D0,$10,$78,$F8,$F8
       .byte $08,$F8,$08,$38,$08,$38,$38,$38,$10,$10,$10,$10,$10,$10,$20,$10
       .byte $10,$10,$10,$10,$70,$00,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$31,$53,$4C,$31,$DB,$16,$DB,$16
