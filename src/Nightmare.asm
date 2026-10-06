; Disassembly of roms/Nightmare.bin
; Disassembled Tue Oct  6 15:22:40 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Nightmare.bin
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
REFP0   =  $0B
REFP1   =  $0C
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
CXCLR   =  $2C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296

       ORG $F000
LF000: CPX    $CE     
       NOP            
LF003: ASL    LF000   
       ASL    LF000,X 
       JMP    LF029   
LF00C: LDA    $9F     
       STA    WSYNC   
       STA    GRP0    
       ASL    LF000,X 
       LDA    #$00    
       CPX    $CE     
       BMI    LF000   
       LDY    $CF     
       BMI    LF003   
       LDA    LF845,Y 
       STA    COLUP0  
       LDA    ($D0),Y 
       DEY            
       STY    $CF     
LF029: STA    $9F     
       LDY    $D9     
       LDA    ($E5),Y 
       STA    ENAM0   
       LDA    ($E7),Y 
       STA    ENAM1   
       LDA    ($E9),Y 
       STA    ENABL   
       LDA.wy $008A,Y 
       STA    REFP1   
       LDA.wy $00B6,Y 
       STA    HMP1    
       AND    #$0F    
       LDY    $A1     
       BMI    LF05D   
       INX            
LF04A: DEY            
       BPL    LF04A   
       STA    RESP1   
       STA    NUSIZ1  
       LDY    $D6     
       LDA    ($D7),Y 
       STA    $A0     
       DEY            
       STY    $D6     
       JMP    LF073   
LF05D: STA    NUSIZ1  
       LDY    $D6     
       LDA    ($D7),Y 
       STA    $A0     
       INX            
       DEY            
       STY    $D6     
       ASL    LF000,X 
       LDY    $A1     
LF06E: INY            
       BMI    LF06E   
       STA    RESP1   
LF073: STA    WSYNC   
       STA    HMOVE   
LF077: LDA    $9F     
       STA    GRP0    
       ASL    LF000,X 
       LDA    #$00    
       CPX    $CE     
       BMI    LF0D2   
       LDY    $CF     
       BMI    LF0D5   
       LDA    LF845,Y 
       STA    COLUP0  
       LDA    ($D0),Y 
       DEY            
       STY    $CF     
LF092: STA    $9F     
       INX            
       LDY    $D6     
       BPL    LF0DE   
       LDY    #$07    
       STY    $D6     
       LDY    $D9     
       DEY            
       BMI    LF0F5   
       LDA    $A0     
LF0A4: LDA    $A0     
       STY    $D9     
       STA    GRP1    
       LDA.wy $00AC,Y 
       STA    $D7     
       LDA.wy $00A2,Y 
       STA    $A1     
       LDA    COLUP1  
       AND    #$80    
       STA.wy $00A2,Y 
       LDA    $EB     
       ORA    VSYNC   
       STA    $EB     
       LDA    $EC     
       ORA    VBLANK  
       STA    $EC     
       LDA    $ED     
       ORA    WSYNC   
       STA    $ED     
       STA    CXCLR   
       JMP    LF00C   
LF0D2: CPX    $CE     
       NOP            
LF0D5: ASL    LF000   
       ASL    LF000,X 
       JMP    LF092   
LF0DE: STA    WSYNC   
       LDA    $A0     
       STA    GRP1    
       LDA    ($D7),Y 
       STA    $A0     
       LDA    LF84D,Y 
       STA    COLUP1  
       DEY            
       STY    $D6     
       STA    WSYNC   
       JMP    LF077   
LF0F5: STA    WSYNC   
       LDA    #$D4    
       STA    COLUBK  
       LDA    #$00    
       STA    VDELP0  
       STA    GRP0    
       STA    GRP1    
       STA    ENAM0   
       STA    REFP0   
       NOP            
       STA    RESP0   
       STA    RESP1   
       STA    REFP1   
       LDA    #$10    
       STA    HMP1    
       LDA    #$00    
       STA    HMP0    
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       STA    GRP1    
       LDA    #$07    
       STA    $9F     
       STA    VDELP0  
       STA    VDELP1  
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$DC    
       STA    COLUP0  
       STA    COLUP1  
LF132: LDY    $9F     
       LDA    ($CA),Y 
       STA    $A0     
       LDA    ($C8),Y 
       TAX            
       LDA    ($C0),Y 
       STA    WSYNC   
       NOP            
       STA    GRP0    
       LDA    ($C2),Y 
       STA    GRP1    
       LDA    ($C4),Y 
       STA    GRP0    
       LDA    ($C6),Y 
       LDY    $A0     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       DEC    $9F     
       BPL    LF132   
       STA    WSYNC   
       LDA    #$00    
       STA    COLUBK  
       STA    VDELP0  
       STA    VDELP1  
       STA    GRP0    
       STA    GRP1    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    $EB     
       ORA    VSYNC   
       STA    $EB     
       LDA    $EC     
       ORA    VBLANK  
       STA    $EC     
       LDA    $ED     
       ORA    WSYNC   
       STA    $ED     
       LDA    #$01    
       BIT    $DC     
       BNE    LF197   
       BIT    COLUP1  
       BPL    LF197   
       LDA    #$81    
       ORA    $DC     
       STA    $DC     
       LDA    #$7F    
       STA    $9C     
       DEC    $9E     
       JSR    LF98C   
LF197: LDA    #$20    
       STA    TIM64T  
       BIT    $98     
       BPL    LF1B9   
       LDA    $EF     
       CMP    #$02    
       BEQ    LF1AC   
       JMP    LF2C3   
LF1A9: .byte $30,$30,$20
LF1AC: JSR    LFAF2   
       JSR    LFB7D   
       LDA    #$00    
       STA    $98     
       JMP    LF2BD   
LF1B9: LDA    $CD     
       CMP    #$08    
       BCS    LF1E2   
       LDA    $9A     
       AND    #$03    
       TAY            
       LDX    #$08    
LF1C6: LDA    $8A,X   
       AND    #$F0    
       CMP    LF1A9,Y 
       BNE    LF1E2   
       DEX            
       BNE    LF1C6   
       LDA    #$80    
       STA    $98     
       LDA    #$01    
       ORA    $DC     
       STA    $DC     
       JSR    LF97D   
       JMP    LF2C3   
LF1E2: LDA    #$01    
       BIT    $DC     
       BEQ    LF1F3   
       STA    $EB     
       STA    $EC     
       STA    $ED     
       STA    COLUP1  
       JMP    LF2BD   
LF1F3: JSR    LFA0E   
       BIT    $DC     
       BMI    LF222   
       LDA    $99     
       AND    #$0F    
       TAX            
       BEQ    LF27A   
       BIT    $97     
       BPL    LF20B   
       LDA    $DE     
       AND    #$01    
       BNE    LF225   
LF20B: LDA    $8A,X   
       AND    #$F0    
       CMP    #$20    
       BNE    LF225   
       LDA    #$81    
       ORA    $DC     
       STA    $DC     
       LDA    #$7F    
       STA    $9C     
       DEC    $9E     
       JSR    LF98C   
LF222: JMP    LF2C3   
LF225: LDA    $9A     
       AND    #$03    
       CMP    #$02    
       BEQ    LF237   
       CMP    #$01    
       BEQ    LF298   
       JSR    LFA3E   
       JMP    LF2C3   
LF237: BIT    $97     
       BPL    LF241   
       LDA    $DE     
       AND    #$01    
       BNE    LF282   
LF241: BIT    $99     
       BMI    LF27D   
       BIT    $DC     
       BVC    LF282   
       LDA    #$BF    
       AND    $97     
       ORA    #$80    
       STA    $97     
       LDA    $CC     
       STA    $E1     
       LDA    $CD     
       CLC            
       ADC    #$04    
       STA    $CD     
       SEC            
       SBC    #$0E    
       STA    $E2     
       LDA    #$8F    
       AND    $DC     
       STA    $DC     
       LDX    $99     
       LDA    $8A,X   
       LSR            
       AND    #$F8    
       CLC            
       ADC    #$08    
       STA    $E3     
       JSR    LFA7D   
       LDA    #$02    
       STA    $DB     
LF27A: JMP    LF282   
LF27D: JSR    LFA3E   
       BNE    LF2C3   
LF282: BIT    $97     
       BVC    LF295   
       LDA    $E2     
       BEQ    LF28F   
       DEC    $E2     
       JMP    LF2BD   
LF28F: LDA    #$3F    
       AND    $97     
       STA    $97     
LF295: JMP    LF2BD   
LF298: LDA    $99     
       AND    #$0F    
       TAX            
       LDA    $DE     
       AND    #$01    
       BNE    LF2A8   
       JSR    LFA3E   
       BNE    LF2C3   
LF2A8: LDA    $8A,X   
       AND    #$F0    
       CMP    #$20    
       BNE    LF2BD   
       BIT    SWCHA   
       BPL    LF2B7   
       BVS    LF2BD   
LF2B7: JSR    LFA7D   
       JSR    LF98C   
LF2BD: JSR    LF2C9   
       JMP    LF4D6   
LF2C3: JSR    LF2C9   
       JMP    LF731   
LF2C9: JSR    LFC11   
       AND    LFC3E,Y 
       BEQ    LF2D3   
       BNE    LF331   
LF2D3: LDX    #$02    
LF2D5: LDA    $EE     
       AND    LF328,X 
       BNE    LF2F8   
       CPX    #$01    
       BNE    LF2EE   
       LDA    $9A     
       LSR            
       LSR            
       TAY            
       LDA    $D2,X   
       CMP    LF32E,Y 
       BCS    LF31E   
       BCC    LF2F4   
LF2EE: LDA    $D2,X   
       CMP    #$90    
       BCS    LF31E   
LF2F4: INC    $D2,X   
       BNE    LF300   
LF2F8: LDA    $D2,X   
       CMP    #$10    
       BCC    LF31E   
       DEC    $D2,X   
LF300: LDA    $9A     
       AND    #$03    
       BNE    LF30B   
       DEX            
       BPL    LF2D5   
       BMI    LF331   
LF30B: DEX            
       BMI    LF331   
       CPX    #$01    
       BNE    LF2D5   
       LDA    $9A     
       LSR            
       LSR            
       TAY            
       LDA    LF32B,Y 
       STA    $D3     
       BNE    LF30B   
LF31E: LDA    $EE     
       EOR    LF328,X 
       STA    $EE     
       JMP    LF300   
LF328: .byte $01,$02,$04
LF32B: .byte $50,$3C,$2C
LF32E: .byte $90,$70,$50
LF331: BIT    $98     
       BPL    LF33F   
       LDA    #$10    
       STA    $EF     
       JSR    LFC7B   
       JMP    LF3F0   
LF33F: BIT    $DC     
       BPL    LF356   
       LDA    $CD     
       CMP    #$A2    
       BCS    LF34C   
       JMP    LF3D4   
LF34C: LDA    #$10    
       STA    $EF     
       JSR    LFC60   
       JMP    LF3F0   
LF356: LDA    $9E     
       BNE    LF360   
       JSR    LFC60   
       JMP    LF3F0   
LF360: LDA    #$20    
       AND    $DC     
       BEQ    LF37F   
       LDA    $9D     
       LSR            
       LSR            
       TAX            
       LDA    LF37B,X 
       STA    AUDF0   
       LDA    #$04    
       STA    AUDC0   
       LDA    #$0F    
       STA    AUDV0   
       JMP    LF3F0   
LF37B: .byte $13,$11,$15,$1D
LF37F: LDA    $E4     
       AND    #$0F    
       BEQ    LF392   
       ASL            
       STA    AUDV0   
       LDA    #$08    
       STA    AUDC0   
       LDA    #$02    
       STA    AUDF0   
       BNE    LF3F0   
LF392: LDA    $DB     
       ASL            
       BCC    LF3C1   
       BIT    SWCHA   
       BPL    LF39E   
       BVS    LF3EC   
LF39E: LDA    $CC     
       LDY    #$00    
LF3A2: TAX            
       LDA    #$01    
       BIT    $DC     
       BNE    LF3EC   
       TXA            
       STY    $9F     
       AND    #$03    
       TAY            
       LDA    LF4CE,Y 
       ORA    $9F     
       STA    AUDV0   
       LDA    LF4D2,Y 
       STA    AUDF0   
       LDA    #$0C    
       STA    AUDC0   
       BNE    LF3F0   
LF3C1: AND    #$38    
       BEQ    LF3D4   
       LDA    SWCHA   
       EOR    #$FF    
       AND    #$30    
       BEQ    LF3EC   
       LDA    $CD     
       LDY    #$0A    
       BNE    LF3A2   
LF3D4: LDA    $9C     
       BEQ    LF3EC   
       DEC    $9C     
       LDA    $9C     
       LSR            
       LSR            
       EOR    #$1F    
       STA    AUDF0   
       LDA    #$0C    
       STA    AUDC0   
       LDA    #$06    
       STA    AUDV0   
       BNE    LF3F0   
LF3EC: LDA    #$00    
       STA    AUDV0   
LF3F0: INC    $DE     
       LDA    #$01    
       BIT    $DC     
       BNE    LF417   
       LDA    $DE     
       AND    #$03    
       BNE    LF417   
       JSR    LF99C   
       BCS    LF417   
       LDA    #$81    
       ORA    $DC     
       STA    $DC     
       LDA    $9C     
       DEC    $9E     
       LDA    #$00    
       STA    $F4     
       STA    $F6     
       LDA    $F7     
       STA    $F5     
LF417: LDA    SWCHB   
       STA    $9F     
       LSR            
       BCS    LF42C   
       LDA    #$04    
       STA    $9E     
       LDA    #$02    
       STA    $EF     
       JSR    LFB2C   
       BNE    LF454   
LF42C: LDA    #$0F    
       AND    $DE     
       BNE    LF454   
       LDA    $9F     
       LSR            
       LSR            
       BCS    LF454   
       LDA    #$00    
       STA    $9E     
       LDA    #$04    
       STA    $EF     
       LDA    $E0     
       CMP    #$06    
       BNE    LF44F   
       LDY    #$01    
       STY    $E0     
       DEY            
       STY    $9A     
       BEQ    LF451   
LF44F: INC    $E0     
LF451: JSR    LFB2C   
LF454: LDA    $EF     
       BNE    LF467   
       LDX    #$0C    
       LDA    #$58    
LF45C: STA    $BE,X   
       CLC            
       ADC    #$08    
       DEX            
       DEX            
       BNE    LF45C   
       BEQ    LF4B3   
LF467: LSR            
       LSR            
       BCC    LF47A   
       LDA    $94     
       STA    $9F     
       LDA    $95     
       STA    $A0     
       LDA    $96     
       STA    $A1     
       JMP    LF4B0   
LF47A: LSR            
       BCC    LF48A   
       LDA    #$00    
       STA    $9F     
       STA    $A0     
       LDA    $E0     
       STA    $A1     
       JMP    LF4B0   
LF48A: LSR            
       BCC    LF49C   
       LDA    $F4     
       STA    $9F     
       LDA    $F5     
       STA    $A0     
       LDA    $F6     
       STA    $A1     
       JMP    LF4B0   
LF49C: LDA    #$00    
       STA    $9F     
       STA    $A0     
       LDA    $9E     
       STA    $A1     
       JSR    LFD07   
       LDA    #$88    
       STA    $C6     
       JMP    LF4B3   
LF4B0: JSR    LFD07   
LF4B3: LDA    INTIM   
       BNE    LF4B3   
       LDY    #$82    
       STY    WSYNC   
       STY    VBLANK  
       STY    VSYNC   
       STY    WSYNC   
       STY    WSYNC   
       STY    WSYNC   
       STA    VSYNC   
       LDA    #$3A    
       STA    TIM64T  
       RTS            

LF4CE: .byte $0A,$00,$0A,$00
LF4D2: .byte $0A,$08,$09,$07
LF4D6: LDA    REFP1   
       ASL            
       BCC    LF4E1   
       LDA    #$FD    
       AND    $DC     
       STA    $DC     
LF4E1: BIT    $DC     
       BVC    LF4E8   
       JMP    LF578   
LF4E8: LDA    #$02    
       BIT    $DB     
       BEQ    LF50D   
       LDA    $CD     
       CMP    #$A2    
       BNE    LF500   
       LDA    #$3F    
       AND    $97     
       STA    $97     
       JSR    LF98C   
       JMP    LF5D9   
LF500: LDA    $DE     
       AND    #$01    
       BNE    LF53D   
       INC    $CD     
       INC    $E2     
       JMP    LF53D   
LF50D: BMI    LF53D   
       LDA    $CD     
       CMP    #$A2    
       BCC    LF518   
       JMP    LF5D9   
LF518: BIT    $97     
       BPL    LF522   
       LDA    $DE     
       AND    #$01    
       BNE    LF539   
LF522: BIT    $EB     
       BVS    LF539   
       BIT    $EC     
       BMI    LF539   
       BIT    $ED     
       BMI    LF539   
       BVS    LF539   
       LDA    #$00    
       STA    $DB     
       INC    $CD     
       JMP    LF676   
LF539: LDA    $DB     
       BEQ    LF59F   
LF53D: LDA    $9E     
       BNE    LF544   
       JMP    LF6B5   
LF544: LDA    #$02    
       AND    $DC     
       BNE    LF56B   
       BIT    $DC     
       BMI    LF56B   
       LDA    REFP1   
       ASL            
       BCS    LF56B   
       JSR    LFE88   
       LDA    #$02    
       ORA    $DC     
       STA    $DC     
       LDA    #$02    
       BIT    $DB     
       BEQ    LF56E   
       LDA    #$40    
       ORA    $97     
       STA    $97     
       JMP    LF56E   
LF56B: JMP    LF634   
LF56E: LDA    #$60    
       ORA    $DC     
       STA    $DC     
       LDA    #$0F    
       STA    $9D     
LF578: LDA    $DC     
       AND    #$20    
       BEQ    LF5CD   
       LDA    $9D     
       BEQ    LF5A2   
       CMP    #$07    
       BNE    LF58A   
       LDA    #$00    
       STA    $DB     
LF58A: LDA    $CD     
       CMP    #$10    
       BCC    LF5A2   
       LDA    #$02    
       BIT    $DB     
       BNE    LF59A   
       DEC    $CD     
       DEC    $CD     
LF59A: JSR    LF905   
       DEC    $9D     
LF59F: JMP    LF5E6   
LF5A2: LDA    #$3F    
       STA    $9C     
       LDA    #$DF    
       AND    $DC     
       ORA    #$10    
       STA    $DC     
LF5AE: LDA    $9D     
       CMP    #$08    
       BEQ    LF5C4   
       LDA    $CD     
       CMP    #$A2    
       BCS    LF5D9   
       JSR    LF905   
       INC    $9D     
LF5BF: INC    $CD     
       JMP    LF5E6   
LF5C4: LDA    #$EF    
       AND    $DC     
       STA    $DC     
       JMP    LF5E6   
LF5CD: LDA    $DC     
       AND    #$10    
       BNE    LF5AE   
       LDA    $CD     
       CMP    #$A2    
       BCC    LF5BF   
LF5D9: LDA    #$80    
       STA    $DB     
       LDA    #$AF    
       AND    $DC     
       STA    $DC     
       JMP    LF634   
LF5E6: BIT    $97     
       BPL    LF5F0   
       LDA    $DE     
       AND    #$01    
       BNE    LF605   
LF5F0: BIT    $EB     
       BVS    LF611   
       BIT    $EC     
       BMI    LF61C   
       BIT    $ED     
       BVS    LF627   
       JMP    LF605   
LF5FF: LDA    #$8F    
       AND    $DC     
       STA    $DC     
LF605: LDA    #$1C    
       AND    $DB     
       BNE    LF60E   
       JMP    LF676   
LF60E: JMP    LF6F5   
LF611: LDA    #$10    
       AND    $DB     
       BNE    LF605   
       LDY    #$10    
       JMP    LF62F   
LF61C: LDA    #$08    
       AND    $DB     
       BNE    LF605   
       LDY    #$08    
       JMP    LF62F   
LF627: LDA    #$04    
       AND    $DB     
       BNE    LF605   
       LDY    #$04    
LF62F: STY    $DB     
       JMP    LF5FF   
LF634: LDA    $9E     
       BEQ    LF6B5   
       BIT    $DC     
       BMI    LF6B5   
       LDA    SWCHA   
       AND    #$F0    
       EOR    #$F0    
       STA    $9F     
       BEQ    LF6B5   
       LDA    $DA     
       CLC            
       ADC    #$01    
       CMP    #$04    
       BNE    LF652   
       LDA    #$01    
LF652: STA    $DA     
       CMP    #$01    
       BNE    LF685   
       LDA    #$1C    
       AND    $DB     
       BNE    LF69F   
       BIT    $9F     
       BPL    LF688   
       JSR    LFE88   
       LDA    #$F7    
       AND    $DC     
       STA    $DC     
       LDA    $CC     
       CLC            
       ADC    #$01    
       CMP    #$98    
       BCS    LF676   
       STA    $CC     
LF676: LDA    $CC     
       AND    #$01    
       BNE    LF681   
       LDA    #$50    
       JMP    LF683   
LF681: LDA    #$58    
LF683: STA    $DD     
LF685: JMP    LF715   
LF688: BVC    LF6BC   
       JSR    LFE88   
       LDA    #$08    
       ORA    $DC     
       STA    $DC     
       LDA    $CC     
       SEC            
       SBC    #$01    
       BCC    LF676   
       STA    $CC     
       JMP    LF676   
LF69F: BIT    $9F     
       BPL    LF6AA   
       LDA    #$F7    
       AND    $DC     
       JMP    LF6B0   
LF6AA: BVC    LF6BC   
       LDA    #$08    
       ORA    $DC     
LF6B0: STA    $DC     
       JMP    LF715   
LF6B5: LDA    #$00    
       STA    $DA     
       JMP    LF715   
LF6BC: LDA    #$02    
       AND    $DB     
       BNE    LF6B5   
       LDA    #$1C    
       AND    $DB     
       BNE    LF6E2   
       LDA    #$10    
       AND    $9F     
       BEQ    LF6B5   
       LDA    $CC     
       CMP    $D2     
       BCS    LF6B5   
       CLC            
       ADC    #$08    
       CMP    $D2     
       BCC    LF6B5   
       LDA    #$10    
       STA    $DB     
       JMP    LF6EC   
LF6E2: LDA    $9F     
       ASL            
       ASL            
       ASL            
       BCS    LF706   
       ASL            
       BCC    LF6B5   
LF6EC: LDA    $CD     
       SEC            
       SBC    #$02    
       BCC    LF6F5   
       STA    $CD     
LF6F5: LDA    $CD     
       AND    #$04    
       BNE    LF6FF   
       LDA    #$60    
       BNE    LF701   
LF6FF: LDA    #$68    
LF701: STA    $DD     
       JMP    LF715   
LF706: LDA    $CD     
       ADC    #$02    
       CMP    #$A2    
       BCC    LF710   
       LDA    #$A2    
LF710: STA    $CD     
       JMP    LF6F5   
LF715: JSR    LF9CA   
       BIT    $DC     
       BVC    LF720   
       LDA    #$58    
       BNE    LF72F   
LF720: LDA    $DD     
       CMP    #$58    
       BNE    LF731   
       BIT    SWCHA   
       BPL    LF731   
       BVC    LF731   
       LDA    #$50    
LF72F: STA    $DD     
LF731: BIT    $DC     
       BPL    LF740   
       LDA    $CD     
       CMP    #$A2    
       BCC    LF740   
       LDA    #$80    
       JMP    LF7CB   
LF740: BIT    $98     
       BPL    LF752   
       LDA    #$00    
       STA    $CD     
       LDA    $D4     
       SEC            
       SBC    #$04    
       STA    $CC     
       JMP    LF7C9   
LF752: BIT    $97     
       BPL    LF7C9   
       BVS    LF7B8   
       LDA    $9A     
       AND    #$03    
       CMP    #$01    
       BNE    LF7B4   
       LDA    SWCHA   
       ASL            
       BCC    LF774   
       ASL            
       BCC    LF774   
       LDA    #$00    
       STA    $E4     
LF76D: LDA    #$70    
       STA    $E3     
       JMP    LF78B   
LF774: BIT    $E4     
       BMI    LF783   
       LDA    #$87    
       STA    $E4     
       LDA    #$78    
       STA    $E3     
       JMP    LF78B   
LF783: LDA    $E4     
       AND    #$0F    
       BEQ    LF76D   
       DEC    $E4     
LF78B: LDA    $CD     
       SEC            
       SBC    #$08    
       STA    $E2     
       LDA    $E3     
       CMP    #$78    
       BNE    LF7B4   
       LDA    $DC     
       AND    #$08    
       BNE    LF7A9   
       LDA    $CC     
       CLC            
       ADC    #$06    
       CMP    #$98    
       BCS    LF7B0   
       BCC    LF7B6   
LF7A9: LDA    $CC     
       SEC            
       SBC    #$06    
       BCS    LF7B6   
LF7B0: LDA    #$70    
       STA    $E3     
LF7B4: LDA    $CC     
LF7B6: STA    $E1     
LF7B8: LDA    $DE     
       AND    #$01    
       BEQ    LF7C9   
       LDA    $E3     
       STA    $D0     
       LDA    $E2     
       LDY    $E1     
       JMP    LF7D1   
LF7C9: LDA    $DD     
LF7CB: STA    $D0     
       LDA    $CD     
       LDY    $CC     
LF7D1: STA    VDELP0  
       LSR            
       STA    $CE     
       TYA            
       LDX    #$00    
       JSR    LFD34   
       JSR    LFF90   
       LDA    $DC     
       STA    REFP0   
       JSR    LFC11   
       LDX    #$08    
       AND    LFC2C,Y 
       BNE    LF7F8   
LF7ED: JSR    LF941   
       JSR    LF922   
       DEX            
       BNE    LF7ED   
       BEQ    LF7FE   
LF7F8: JSR    LF922   
       DEX            
       BNE    LF7F8   
LF7FE: LDX    #$00    
       LDA    $DE     
       AND    #$03    
       BNE    LF80F   
       JSR    LF941   
       JSR    LF922   
       JMP    LF812   
LF80F: JSR    LF922   
LF812: LDX    #$09    
       LDA    $EE     
       ASL            
       AND    #$08    
       STA    $9F     
       BNE    LF824   
       LDA    $D4     
       SEC            
       SBC    #$0C    
       BNE    LF829   
LF824: LDA    $D4     
       SEC            
       SBC    #$07    
LF829: STA    $89     
       LDA    $93     
       AND    #$F7    
       ORA    $9F     
       STA    $93     
       JSR    LF922   
       JMP    LF878   
LF839: .byte $00,$0C,$18,$24,$30,$3C,$48,$5A,$66,$72
LF843: .byte $00,$20
LF845: .byte $A7,$A7,$A7,$67,$67,$67,$1A,$1A
LF84D: .byte $37,$37,$37,$A7,$37,$D7,$67,$17
LF855: .byte $8F,$99,$A3,$8F
LF859: .byte $AD,$B7,$C1,$AD
LF85D: .byte $CB,$D5,$DF,$CB

START:
       SEI            
       CLD            
       LDX    #$00    
       LDA    #$00    
LF867: STA    VSYNC,X 
       TXS            
       INX            
       BNE    LF867   
       JSR    LFB2C   
       LDA    #$5C    
       STA    $DF     
       LDA    #$01    
       STA    $E0     
LF878: LDA    #$D5    
       STA    COLUPF  
       LDA    #$00    
       STA    $EB     
       STA    $EC     
       STA    $ED     
       LDA    $D2     
       LDX    #$02    
       JSR    LFD34   
       JSR    LFF90   
       LDA    $D3     
       LDX    #$03    
       JSR    LFD34   
       JSR    LFF90   
       LDA    $D4     
       LDX    #$04    
       JSR    LFD34   
       JSR    LFF90   
       LDA    #$00    
       STA    COLUBK  
       LDA    $DE     
       AND    #$1F    
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $9F     
       LDA    $DE     
       AND    #$07    
       LSR            
       LSR            
       STA    $A1     
       LDX    #$09    
LF8BA: LDA    $8A,X   
       LSR            
       AND    #$F8    
       CMP    #$10    
       BCS    LF8CA   
LF8C3: STA    $AC,X   
       DEX            
       BPL    LF8BA   
       BMI    LF8DB   
LF8CA: CMP    #$20    
       BNE    LF8D3   
       LDY    $A1     
       JMP    LF8D5   
LF8D3: LDY    $9F     
LF8D5: CLC            
       ADC    LF843,Y 
       BNE    LF8C3   
LF8DB: LDA    INTIM   
       BNE    LF8DB   
       STA    WSYNC   
       STA    HMOVE   
       STA    WSYNC   
       STA    VBLANK  
       STA    HMCLR   
       STA    CXCLR   
       LDA    #$A7    
       STA    COLUP0  
       LDX    #$07    
       STX    $D6     
       STX    $CF     
       STX    ENABL   
       LDX    #$00    
       STX    $A0     
       STX    $9F     
       STX    NUSIZ0  
       LDY    #$09    
       JMP    LF0A4   
LF905: LDA    #$08    
       BIT    $DC     
       BNE    LF914   
       LDA    $CC     
       CMP    #$98    
       BCS    LF91B   
       INC    $CC     
       RTS            

LF914: LDA    $CC     
       BEQ    LF91B   
       DEC    $CC     
       RTS            

LF91B: LDA    #$08    
       EOR    $DC     
       STA    $DC     
       RTS            

LF922: LDA    $8A,X   
       AND    #$07    
       STA    $A0     
       LDA    $80,X   
       JSR    LFD34   
       ORA    $A0     
       STA    $B6,X   
       DEY            
       DEY            
       DEY            
       TYA            
       CMP    #$06    
       BCC    LF93E   
       SEC            
       SBC    #$06    
       EOR    #$FF    
LF93E: STA    $A2,X   
       RTS            

LF941: LDA    #$07    
       AND    $8A,X   
       TAY            
       LDA    #$08    
       AND    $8A,X   
       BEQ    LF958   
       LDA    $80,X   
       CMP    LF973,X 
       BCC    LF964   
       SBC    #$01    
       JMP    LF961   
LF958: LDA    $80,X   
       CMP    LF96B,Y 
       BCS    LF964   
       ADC    #$01    
LF961: STA    $80,X   
       RTS            

LF964: LDA    #$08    
       EOR    $8A,X   
       STA    $8A,X   
       RTS            

LF96B: .byte $98,$88,$78,$78,$58,$90,$58,$80
LF973: .byte $02,$18,$02,$18,$02,$18,$02,$18,$02,$02
LF97D: LDX    #$02    
       SED            
       CLC            
LF981: LDA    $F4,X   
       ADC    $94,X   
       STA    $94,X   
       DEX            
       BPL    LF981   
       CLD            
       RTS            

LF98C: CLC            
       SED            
       LDA    $F5     
       ADC    $F7     
       STA    $F5     
       LDA    $F6     
       ADC    #$00    
       STA    $F6     
       CLD            
       RTS            

LF99C: LDX    #$02    
       SED            
       SEC            
LF9A0: LDA    $F4,X   
       SBC    LF9AC,X 
       STA    $F4,X   
       DEX            
       BPL    LF9A0   
       CLD            
       RTS            

LF9AC: .byte $00,$00,$01,$A5,$DF,$29,$40,$4A,$85,$A0,$A5,$DF,$29,$20,$45,$A0
       .byte $D0,$03,$18,$90,$01,$38,$A5,$DF,$2A,$29,$7F,$85,$DF,$60
LF9CA: BIT    $DC     
       BVS    LFA0B   
       LDA    $DC     
       AND    #$0F    
       LSR            
       LSR            
       LSR            
       TAX            
       LDA    $DB     
       ASL            
       ASL            
       ASL            
       ASL            
       BCC    LF9E2   
       LDA    $D2     
       BNE    LF9EE   
LF9E2: ASL            
       BCC    LF9E9   
       LDA    $D3     
       BNE    LF9EE   
LF9E9: ASL            
       BCC    LFA0B   
       LDA    $D4     
LF9EE: TAY            
       CLC            
       ADC    #$2F    
       CMP    $CC     
       BCS    LF9FA   
       ADC    #$11    
       BNE    LFA05   
LF9FA: SBC    #$20    
       CMP    $CC     
       BCS    LFA04   
       ADC    #$11    
       BNE    LFA05   
LFA04: TYA            
LFA05: SEC            
       SBC    LFA0C,X 
       STA    $CC     
LFA0B: RTS            

LFA0C: .byte $04,$05
LFA0E: LDX    #$07    
       LDA    #$00    
       STA    $99     
LFA14: LDA    #$80    
       AND    $A2,X   
       BNE    LFA1E   
LFA1A: DEX            
       BPL    LFA14   
       RTS            

LFA1E: INX            
       LDA    $CD     
       CMP    LFA35,X 
       BCC    LFA2C   
       STX    $99     
       DEX            
       JMP    LFA1A   
LFA2C: TXA            
       ORA    #$80    
       STA    $99     
       DEX            
       JMP    LFA1A   
LFA35: .byte $00,$99,$87,$75,$63,$51,$3F,$2D,$1B
LFA3E: LDA    $99     
       AND    #$0F    
       TAX            
       LDA    $8A,X   
       AND    #$08    
       BEQ    LFA55   
       LDA    $CC     
       SEC            
       SBC    #$08    
       BCS    LFA60   
       LDA    #$00    
       JMP    LFA60   
LFA55: LDA    $CC     
       CLC            
       ADC    #$08    
       CMP    #$98    
       BCC    LFA60   
       LDA    #$98    
LFA60: STA    $CC     
       LDA    #$02    
       AND    $DB     
       BEQ    LFA6E   
       LDA    #$40    
       ORA    $97     
       STA    $97     
LFA6E: LDA    #$00    
       STA    $DB     
       LDA    #$8F    
       AND    $DC     
       STA    $DC     
       LDA    #$7F    
       STA    $9C     
       RTS            

LFA7D: LDA    $80,X   
       CLC            
       ADC    #$10    
       STA    $9F     
       ADC    #$20    
       STA    $A0     
       LDA    $8A,X   
       AND    #$07    
       BEQ    LFAD0   
       CMP    #$06    
       BNE    LFAB8   
       LDA    $CC     
       CMP    $A0     
       BCC    LFA9C   
       LDY    #$02    
       BNE    LFAAD   
LFA9C: CMP    $9F     
       BCC    LFAA4   
       LDY    #$04    
       BNE    LFAAD   
LFAA4: LDY    #$02    
LFAA6: LDA    #$20    
LFAA8: CLC            
       ADC    $80,X   
       STA    $80,X   
LFAAD: STY    $9F     
       LDA    $8A,X   
       AND    #$F8    
       ORA    $9F     
       STA    $8A,X   
       RTS            

LFAB8: LDY    #$00    
       CMP    #$04    
       BNE    LFAC8   
       LDA    $CC     
       CMP    $A0     
       BCS    LFAAD   
       LDA    #$40    
       BNE    LFAA8   
LFAC8: LDA    $CC     
       CMP    $9F     
       BCS    LFAAD   
       BCC    LFAA6   
LFAD0: LDA    $9A     
       AND    #$03    
       TAY            
       LDA    $8A,X   
       AND    #$F8    
       CLC            
       ADC    LFAEC,Y 
       STA    $9F     
       LDA    $9A     
       LSR            
       LSR            
       TAY            
       LDA    LFAEF,Y 
       ORA    $9F     
       STA    $8A,X   
       RTS            

LFAEC: .byte $00,$10,$20
LFAEF: .byte $00,$02,$06
LFAF2: LDA    $9A     
       LSR            
       LSR            
       BCC    LFB10   
       LDA    $9A     
       AND    #$0C    
       CMP    #$08    
       BNE    LFB0C   
       LDA    $E0     
       CMP    #$06    
       BCS    LFB08   
       INC    $E0     
LFB08: LDA    #$00    
       BEQ    LFB14   
LFB0C: ADC    #$04    
       BNE    LFB14   
LFB10: LDA    $9A     
       ADC    #$01    
LFB14: STA    $9A     
       RTS            

LFB17: LDA    $9A     
       AND    #$03    
       TAY            
       LDA    LF855,Y 
       STA    $E5     
       LDA    LF859,Y 
       STA    $E7     
       LDA    LF85D,Y 
       STA    $E9     
       RTS            

LFB2C: LDA    #$FF    
       LDX    #$0C    
LFB30: STA    $BF,X   
       DEX            
       DEX            
       BNE    LFB30   
       LDA    #$FE    
       STA    $D8     
       STA    $D1     
       LDA    #$FD    
       STA    $E6     
       STA    $E8     
       STA    $EA     
       LDA    #$FF    
       STA    $F2     
       LDX    #$09    
       LDA    #$00    
LFB4C: STA    $94,X   
       DEX            
       BPL    LFB4C   
       STA    $F0     
       STA    AUDV0   
       STA    AUDV1   
       LDA    #$C4    
       STA    $F1     
       LDA    #$01    
       STA    $DC     
       LDA    #$20    
       STA    $D2     
       LDA    #$50    
       STA    $D3     
       LDA    #$80    
       STA    $D4     
       LDA    #$02    
       STA    $EE     
       LDA    #$80    
       STA    $DB     
       LDX    #$09    
LFB75: LDA    LFC56,X 
       STA    $80,X   
       DEX            
       BPL    LFB75   
LFB7D: JSR    LFBEB   
       JSR    LFB17   
       LDA    #$00    
       STA    $F4     
       STA    $F6     
       LDA    $9A     
       AND    #$03    
       TAX            
       LDA    $9A     
       LSR            
       LSR            
       TAY            
       LDA    $E0     
       CPX    #$00    
       BNE    LFBA0   
       CLC            
       ADC    LFBE5,Y 
       JMP    LFBA4   
LFBA0: CLC            
       ADC    LFBE8,Y 
LFBA4: TAY            
       LDA    LFBC1,Y 
       STA    $F7     
       STA    $F5     
       LDA    #$45    
       STA    $93     
       LDA    #$50    
       STA    $8A     
       LDA    #$50    
       STA    $CC     
       LDA    #$A2    
       STA    $CD     
       LDA    #$50    
       STA    $DD     
       RTS            

LFBC1: .byte $03,$04,$04,$08,$08,$16,$06,$08,$08,$16,$16,$32,$12,$16,$16,$32
       .byte $32,$50,$02,$03,$03,$04,$04,$06,$03,$04,$05,$06,$07,$08,$05,$06
       .byte $07,$08,$09,$10
LFBE5: .byte $FF,$05,$0B
LFBE8: .byte $11,$17,$1D
LFBEB: LDA    $9A     
       LSR            
       LSR            
       TAY            
       LDA    LFC53,Y 
       STA    $9F     
       LDA    $9A     
       AND    #$03    
       TAY            
       LDA    #$00    
       CPY    #$01    
       BNE    LFC02   
       LDA    #$80    
LFC02: STA    $97     
       LDA    LFC50,Y 
       ORA    $9F     
       LDX    #$09    
LFC0B: STA    $8A,X   
       DEX            
       BPL    LFC0B   
       RTS            

LFC11: LDX    $E0     
       DEX            
       LDY    LFC24,X 
       STY    $9F     
       LDA    $9A     
       AND    #$03    
       CLC            
       ADC    $9F     
       TAY            
       LDA    $DE     
       RTS            

LFC24: .byte $00,$03,$06,$09,$0C,$0F,$12,$15
LFC2C: .byte $03,$07,$0F,$03,$03,$07,$01,$03,$03,$01,$01,$03,$00,$03,$03,$00
       .byte $00,$01
LFC3E: .byte $03,$03,$07,$01,$03,$03,$03,$01,$07,$00,$01,$03,$01,$00,$01,$00
       .byte $00,$03
LFC50: .byte $30,$20,$00
LFC53: .byte $00,$02,$06
LFC56: .byte $70,$50,$30,$60,$10,$80,$90,$20,$40,$70
LFC60: LDA    #$00    
       STA    $9F     
       LDA    #$03    
       STA    $A0     
       BIT    $DC     
       BPL    LFC8F   
       LDA    #$9C    
       CMP    $F1     
       BEQ    LFC8F   
       STA    $F1     
       LDA    #$11    
       STA    $F0     
       JMP    LFC8F   
LFC7B: LDA    #$10    
       STA    $9F     
       LDA    #$01    
       STA    $A0     
       LDA    #$AD    
       CMP    $F1     
       BEQ    LFC8F   
       STA    $F1     
       LDA    #$17    
       STA    $F0     
LFC8F: LDA    $9B     
       BNE    LFCD4   
       LDY    $F0     
       DEY            
       BPL    LFCC1   
       LDA    $F1     
       CMP    #$AD    
       BEQ    LFCA2   
       CMP    #$9C    
       BNE    LFCA6   
LFCA2: LDA    #$02    
       STA    $EF     
LFCA6: LDA    #$00    
       STA    AUDV0   
       STA    AUDV1   
       STA    $F1     
       LDA    #$7F    
       AND    $DC     
       STA    $DC     
       LDA    $9E     
       BNE    LFCC0   
       LDA    #$35    
       STA    $F0     
       LDA    #$C4    
       STA    $F1     
LFCC0: RTS            

LFCC1: STY    $F0     
       LDA    ($F1),Y 
       AND    #$0F    
       CLC            
       ADC    $9F     
       TAX            
       LDA    LFD6F,X 
       STA    $9B     
       LDA    #$0F    
       STA    $F3     
LFCD4: DEC    $9B     
       LDA    #$04    
       STA    AUDC0   
       LDA    #$0C    
       STA    AUDC1   
       LDY    $F0     
       LDA    ($F1),Y 
       AND    #$F0    
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       LDA    LFD53,X 
       STA    AUDF0   
       LDA    LFD61,X 
       STA    AUDF1   
       LDY    $F3     
       LDA    $DE     
       AND    $A0     
       BNE    LFD02   
       LDY    $F3     
       BEQ    LFD00   
       DEY            
LFD00: STY    $F3     
LFD02: STY    AUDV0   
       STY    AUDV1   
       RTS            

LFD07: LDX    #$02    
LFD09: TXA            
       ASL            
       ASL            
       TAY            
       LDA    $9F,X   
       AND    #$F0    
       LSR            
       STA.wy $00C0,Y 
       LDA    $9F,X   
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA.wy $00C2,Y 
       DEX            
       BPL    LFD09   
       INX            
LFD23: LDA    $C0,X   
       CMP    #$00    
       BNE    LFD33   
       LDA    #$50    
       STA    $C0,X   
       INX            
       INX            
       CPX    #$09    
       BCC    LFD23   
LFD33: RTS            

LFD34: CLC            
       ADC    #$2E    
       TAY            
       AND    #$0F    
       STA    $9F     
       TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       CLC            
       ADC    $9F     
       CMP    #$0F    
       BCC    LFD4C   
       SBC    #$0F    
       INY            
LFD4C: EOR    #$07    
       ASL            
       ASL            
       ASL            
       ASL            
       RTS            

LFD53: .byte $1D,$1A,$17,$15,$13,$11,$0F,$0E,$0D,$0C,$0A,$09,$08,$07
LFD61: .byte $1A,$1D,$1A,$17,$15,$13,$11,$0F,$0E,$0D,$0C,$0A,$09,$08
LFD6F: .byte $0A,$13,$1C,$25,$2E,$37,$40,$49,$52,$5B,$64,$6D,$76,$7F,$88,$91
       .byte $07,$0D,$13,$19,$1F,$25,$2B,$31,$37,$3D,$43,$49,$4F,$55,$5B,$61
       .byte $02,$02,$02,$00,$00,$00,$00,$00,$00,$00,$02,$02,$02,$02,$02,$00
       .byte $00,$02,$02,$00,$02,$02,$02,$02,$02,$02,$02,$02,$02,$00,$00,$00
       .byte $00,$02,$02,$02,$00,$00,$00,$00,$00,$00,$02,$02,$02,$02,$02,$00
       .byte $00,$00,$00,$02,$02,$02,$02,$02,$02,$02,$02,$00,$00,$00,$00,$00
       .byte $00,$00,$02,$02,$02,$02,$00,$02,$02,$00,$00,$02,$02,$02,$02,$02
       .byte $00,$02,$02,$02,$02,$02,$02,$02,$02,$02,$81,$C9,$FC,$D0,$08,$CC
       .byte $E2,$2E,$F0,$03,$99,$88,$C0,$20,$D6,$03,$A0,$15,$B1,$B0,$91,$AC
       .byte $88,$00,$40,$20,$10,$38,$7C,$7C,$38,$00,$10,$10,$10,$38,$7C,$7C
       .byte $38,$00,$00,$3C,$42,$FF,$5A,$3C,$42,$00,$00,$00,$18,$A5,$42,$00
       .byte $00,$00,$0C,$1E,$3F,$4E,$84,$1C,$07,$00,$38,$C4,$08,$10,$20,$20
       .byte $1C,$00,$00,$00,$7E,$FF,$5A,$3C,$42,$00,$00,$81,$42,$3C,$00,$00
       .byte $00,$00,$0C,$1E,$3F,$4E,$84,$07,$1C,$00,$38,$C4,$02,$04,$08,$08
       .byte $07,$2C,$38,$18,$18,$3C,$38,$18,$0C,$06,$04,$64,$98,$38,$5C,$3A
       .byte $0C,$08,$04,$38,$70,$70,$68,$34,$08,$00,$00,$08,$3C,$70,$7C,$68
       .byte $30,$02,$04,$08,$10,$A0,$40,$20,$10,$C0,$20,$11,$0A,$04,$08,$00
       .byte $00,$9F,$FF,$84,$00,$00,$3C,$42,$3C
LFE88: LDA    #$FE    
       AND    $DC     
       STA    $DC     
       LDA    #$08    
       STA    $EF     
       RTS            

LFE93: .byte $00,$00,$2E,$00,$00,$53,$9A,$53,$99,$53,$98,$00,$00,$00,$00,$06
       .byte $02,$06,$02,$C2,$C1,$CC,$CC,$AD,$CE,$D4,$D3,$C3,$B2,$AE,$B2,$AE
       .byte $CF,$C2,$CA,$B4,$A0,$A0,$A0,$A0,$A0,$A0,$A0,$A0,$A0,$A0,$A0,$A0
       .byte $A0,$C2,$C1,$CC,$CC,$AD,$CE,$D4,$D3,$C3,$B2,$AE,$B2,$A0,$A0,$A0
       .byte $A0,$A0,$A0,$A0,$A0,$A0,$A0,$A0,$A0,$A0,$A0,$A0,$A0,$A0,$A0,$60
       .byte $60,$04,$CC,$00,$C2,$C1,$CC,$CC,$AD,$CE,$D4,$D3,$C3,$B2,$AE,$B2
       .byte $A0,$A0,$A0,$A0,$A0,$A0,$A0,$A0,$A0,$A0,$A0,$A0,$A0,$3C,$66,$66
       .byte $66,$66,$66,$66,$3C,$3C,$18,$18,$18,$18,$18,$38,$18,$7E,$60,$60
       .byte $3C,$06,$06,$46,$3C,$3C,$46,$06,$0C,$0C,$06,$46,$3C,$0C,$0C,$0C
       .byte $7E,$4C,$2C,$1C,$0C,$7C,$46,$06,$06,$7C,$60,$60,$7E,$3C,$66,$66
       .byte $66,$7C,$60,$62,$3C,$18,$18,$18,$18,$0C,$06,$42,$7E,$3C,$66,$66
       .byte $3C,$3C,$66,$66,$3C,$3C,$46,$06,$3E,$66,$66,$66,$3C,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$ED,$A4,$EC,$A4,$EC,$00,$00,$00,$2E,$22
       .byte $2E,$2A,$2E,$00,$00,$00,$5C,$54,$54,$DC,$00,$00,$00,$00,$5D,$51
       .byte $51,$DD,$01,$01,$FD,$00,$BD,$A9,$A9,$BB,$00,$00,$FF,$00,$FD,$84
       .byte $B4,$A5,$B5,$85,$FD,$42,$24,$18,$18,$5A,$3C,$18,$18
LFF90: STA    HMP0,X  
       STA    WSYNC   
LFF94: DEY            
       BPL    LFF94   
       STA    RESP0,X 
       STA    WSYNC   
       RTS            

LFF9C: .byte $1B,$31,$31,$4B,$51,$51,$1B,$00,$12,$10,$22,$20,$32,$13,$10,$12
       .byte $13,$0F,$11,$21,$11,$11,$23,$41,$51,$41,$21,$41,$41,$15,$21,$15
       .byte $21,$23,$41,$51,$41,$21,$41,$41,$0F,$15,$25,$31,$40,$30,$00,$22
       .byte $47,$30,$52,$77,$00,$02,$47,$53,$43,$33,$00,$22,$47,$30,$52,$77
       .byte $00,$02,$77,$63,$43,$50,$62,$40,$12,$37,$20,$12,$13,$33,$20,$12
       .byte $47,$53,$51,$65,$73,$40,$22,$47,$20,$22,$47,$20,$22,$AD,$A0,$A0
       .byte $61,$F8,$E0,$88
