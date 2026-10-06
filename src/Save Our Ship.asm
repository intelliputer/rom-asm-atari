; Disassembly of roms/Save Our Ship.bin
; Disassembled Tue Oct  6 15:22:42 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Save Our Ship.bin
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
HMP0    =  $20
HMP1    =  $21
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXPPMM  =  $37
INPT4   =  $3C
INPT5   =  $3D
SWCHA   =  $0280
SWACNT  =  $0281
SWCHB   =  $0282
SWBCNT  =  $0283
INTIM   =  $0284
TIM64T  =  $0296

       ORG $F000
LF000: .byte $BE,$D1,$84,$A0,$84,$4A,$84,$4C,$A9,$08,$85,$4B,$85,$4D,$E6,$4D

START:
       LDX    #$FF    
       TXS            
       CLD            
       LDX    #$00    
       LDA    #$00    
LF018: STA    VSYNC,X 
       DEX            
       BNE    LF018   
       LDA    #$50    
       STA    $93     
       STA    $95     
       STA    $97     
       LDA    #$08    
       STA    $99     
       LDX    #$FA    
       STX    $AB     
       STX    $B3     
       STX    $AF     
       STX    $B1     
       STX    $B5     
       INX            
       STX    $94     
       STX    $96     
       STX    $98     
       STX    $9A     
       STX    $BA     
       LDA    #$55    
       STA    $A4     
       STA    $A8     
       LDA    #$21    
       STA    $A5     
       LDX    #$00    
       STX    SWACNT  
       STX    SWBCNT  
       LDA    #$58    
       STA    $B9     
       LDA    #$2E    
       CLC            
LF059: STA    $88,X   
       ADC    #$09    
       INX            
       CPX    #$05    
       BCC    LF059   
       JSR    LF068   
       JMP    LF0A7   
LF068: LDX    #$00    
       STX    $8E     
       STX    $90     
       STX    $C3     
       STX    $C5     
       INX            
       STX    $8D     
       STX    $91     
       STX    $C6     
       INX            
       STX    $85     
       STX    $86     
       STX    $8F     
       STX    $C4     
       LDA    #$80    
       STA    $AE     
       LDA    #$A0    
       STA    $B4     
       LDA    #$40    
       STA    $B0     
       LDA    #$E0    
       STA    $B2     
       LDX    #$10    
       STX    $BD     
       STX    $BE     
       DEX            
       STX    $BB     
       STX    $BC     
       STX    $87     
       LDY    $8D     
       LDA    LFB84,Y 
       STA    $A9     
       RTS            

LF0A7: JSR    LF0B6   
       JSR    LF1C7   
       JSR    LF4B5   
       JSR    LF504   
       JMP    LF0A7   
LF0B6: INC    $80     
       LDA    #$60    
       EOR    $80     
       BNE    LF0C2   
       STA    $80     
       INC    $81     
LF0C2: STA    WSYNC   
       STA    VBLANK  
       JSR    LF15A   
       LDA    $80     
       AND    #$0F    
       BNE    LF0D7   
       LDA    $B9     
       EOR    #$04    
       STA    $B9     
       LDX    #$00    
LF0D7: STA    WSYNC   
       JSR    LF163   
       STA    WSYNC   
       JSR    LF19A   
       INX            
       LDA    #$02    
       STA    WSYNC   
       STA    VSYNC   
       JSR    LF19A   
       STA    WSYNC   
       JSR    LF163   
       STA    WSYNC   
       LDX    $C9     
       BEQ    LF122   
       LDA    $CB     
       BEQ    LF113   
       AND    #$07    
       AND    $80     
       BNE    LF122   
       LDA    $CB     
       LSR            
       LSR            
       LSR            
       CMP    $C7     
       BEQ    LF11C   
       LDX    $C7     
       INX            
       STX    $C7     
       STX    AUDF0   
       JMP    LF122   
LF113: DEX            
       STX    $C9     
       STX    AUDV0   
       CPX    #$03    
       BCS    LF122   
LF11C: LDX    #$00    
       STX    $C9     
       STX    AUDV0   
LF122: LDA    #$00    
       STA    WSYNC   
       STA    VSYNC   
       LDA    #$2F    
       STA    TIM64T  
       LDX    $CA     
       BEQ    LF159   
       LDA    $CC     
       BEQ    LF140   
       DEX            
       STX    $CA     
       STX    AUDV1   
       BNE    LF159   
       STX    $CC     
       BEQ    LF159   
LF140: LDX    $C8     
       CPX    #$1F    
       BEQ    LF14F   
       INX            
       STX    $C8     
       STX    AUDF1   
       CPX    #$1F    
       BNE    LF159   
LF14F: LDA    CXPPMM  
       BPL    LF159   
       LDX    #$00    
       STX    $CA     
       STX    AUDV1   
LF159: RTS            

LF15A: LDA    $B6     
       LSR            
       EOR    $B6     
       LSR            
       ROR    $B6     
       RTS            

LF163: LDA    $80     
       AND    #$03    
       BNE    LF199   
       LDY    $A4,X   
       LDA    $B7,X   
       BMI    LF17C   
       CPY    #$AF    
       BCS    LF193   
       INY            
       TYA            
       AND    #$0F    
       BNE    LF187   
       INY            
       BNE    LF187   
LF17C: CPY    #$19    
       BCC    LF193   
       DEY            
       TYA            
       AND    #$0F    
       BNE    LF187   
       DEY            
LF187: STY    $A4,X   
       LDA    $80     
       AND    #$3F    
       BNE    LF199   
       ROR    $B6     
       BCC    LF199   
LF193: LDA    $B7,X   
       EOR    #$80    
       STA    $B7,X   
LF199: RTS            

LF19A: LDA    $80     
       AND    #$03    
       BNE    LF1C6   
       LDY    $A6,X   
       LDA    $B7,X   
       AND    #$40    
       BNE    LF1AF   
       CPY    #$04    
       BCS    LF1C0   
       INY            
       BPL    LF1B4   
LF1AF: CPY    #$01    
       BCC    LF1C0   
       DEY            
LF1B4: STY    $A6,X   
       LDA    $80     
       AND    #$3F    
       BNE    LF1C6   
       ROR    $B6     
       BCC    LF1C6   
LF1C0: LDA    $B7,X   
       EOR    #$40    
       STA    $B7,X   
LF1C6: RTS            

LF1C7: JSR    LF207   
       LDA    SWCHB   
       AND    #$01    
       BNE    LF1FB   
       LDA    #$80    
       STA    $9F     
       LDA    #$48    
       STA    $88     
       LDX    #$00    
       CLC            
LF1DC: ADC    #$10    
       STA    $89,X   
       STA    $BF,X   
       INX            
       CPX    #$04    
       BCC    LF1DC   
       JSR    LF068   
       LDA    #$00    
       STA    $A0     
       STA    $A1     
       STA    $A2     
       STA    $A3     
       STA    $9B     
       STA    $82     
       STA    $92     
       RTS            

LF1FB: LDA    $9F     
       BMI    LF200   
       RTS            

LF200: LDX    $9B     
       LDA    $85,X   
       BPL    LF241   
       RTS            

LF207: LDA    SWCHB   
       AND    #$02    
       BNE    LF21C   
       LDA    $9F     
       CMP    #$01    
       BEQ    LF21B   
       JSR    LF225   
       LDA    #$01    
       STA    $9F     
LF21B: RTS            

LF21C: LDA    $9F     
       BMI    LF224   
       LDA    #$00    
       STA    $9F     
LF224: RTS            

LF225: LDA    #$50    
       STA    $93     
       STA    $95     
       STA    $97     
       INC    $9C     
       LDY    $9C     
       CPY    #$04    
       BCC    LF239   
       LDY    #$00    
       STY    $9C     
LF239: INY            
       TYA            
       ASL            
       ASL            
       ASL            
       STA    $99     
       RTS            

LF241: LDA    $82     
       BEQ    LF291   
       DEC    $82     
       BEQ    LF257   
       LDA    $80     
       AND    #$0F    
       BEQ    LF250   
       RTS            

LF250: LDA    $AA     
       EOR    #$20    
       STA    $AA     
       RTS            

LF257: LDA    #$55    
       STA    $A8     
       LDA    #$00    
       STA    $AA     
       LDX    $9B     
       DEC    $85,X   
       LDA    $9C     
       LSR            
       BCC    LF287   
       TXA            
       EOR    #$01    
       TAX            
       LDY    $85,X   
       BMI    LF287   
       STX    $9B     
       LDX    #$03    
LF274: LDY    $BF,X   
       LDA    $89,X   
       STA    $BF,X   
       STY    $89,X   
       LDY    $C3,X   
       LDA    $8E,X   
       STA    $C3,X   
       STY    $8E,X   
       DEX            
       BPL    LF274   
LF287: LDX    $9B     
       JSR    LF464   
       LDA    #$0F    
       STA    $87     
       RTS            

LF291: LDA    SWCHA   
       LDY    $9B     
       BNE    LF29C   
       LSR            
       LSR            
       LSR            
       LSR            
LF29C: AND    #$0F    
       LDX    $A8     
       CMP    #$0B    
       BEQ    LF2BF   
       CMP    #$07    
       BEQ    LF2AE   
       LDA    #$00    
       STA    AUDV0   
       BEQ    LF2F0   
LF2AE: CPX    #$AF    
       BCS    LF2F0   
       LDA    #$08    
       STA    $AC     
       INX            
       TXA            
       AND    #$0F    
       BNE    LF2CE   
       INX            
       BNE    LF2CE   
LF2BF: CPX    #$18    
       BCC    LF2F0   
       LDA    #$00    
       STA    $AC     
       DEX            
       TXA            
       AND    #$0F    
       BNE    LF2CE   
       DEX            
LF2CE: STX    $A8     
       LDA    $80     
       AND    #$07    
       BNE    LF2F0   
       LDA    #$08    
       STA    $C9     
       STA    AUDV0   
       LDA    #$01    
       STA    AUDC0   
       LDA    #$08    
       STA    AUDF0   
       STA    $C7     
       LDA    #$00    
       STA    $CB     
       LDA    $AA     
       EOR    #$08    
       STA    $AA     
LF2F0: LDX    $9B     
       BEQ    LF2F9   
       LDA    INPT5   
       JMP    LF2FB   
LF2F9: LDA    INPT4   
LF2FB: LDX    $92     
       BMI    LF311   
       TAY            
       BMI    LF31E   
       TXA            
       BNE    LF322   
       LDA    $AA     
       ORA    #$10    
       STA    $AA     
       LDA    #$8F    
       STA    $92     
       BNE    LF322   
LF311: DEC    $92     
       BMI    LF322   
       LDA    $AA     
       AND    #$EF    
       STA    $AA     
       JMP    LF322   
LF31E: LDA    #$00    
       STA    $92     
LF322: LDY    $88     
       BIT    CXPPMM  
       BPL    LF36E   
       CPY    #$2E    
       BNE    LF347   
       LDA    #$3F    
       STA    $82     
       LDA    #$08    
       STA    $C9     
       STA    AUDV0   
       LDA    #$01    
       STA    AUDC0   
       LDA    #$0F    
       STA    $C7     
       STA    AUDF0   
       LDA    #$FB    
       STA    $CB     
       JMP    LF45B   
LF347: LDA    $92     
       BPL    LF3AF   
       LDA    $AC     
       SEC            
       BEQ    LF35F   
       LDA    $A9     
       SBC    $A8     
       CMP    #$02    
       BCC    LF3AF   
       CMP    #$09    
       BCS    LF3AF   
       JMP    LF3EE   
LF35F: LDA    $A8     
       SBC    $A9     
       CMP    #$02    
       BCC    LF3AF   
       CMP    #$09    
       BCS    LF3AF   
       JMP    LF3EE   
LF36E: CPY    #$2E    
       BNE    LF3AF   
       LDY    $A9     
       CPY    $A8     
       BCC    LF381   
       DEY            
       TYA            
       AND    #$0F    
       BNE    LF388   
       DEY            
       BNE    LF388   
LF381: INY            
       TYA            
       AND    #$0F    
       BNE    LF388   
       INY            
LF388: STY    $A9     
       LDA    $CC     
       BEQ    LF3A0   
       LDA    #$00    
       STA    $CC     
       LDA    #$04    
       STA    AUDC1   
       STA    AUDF1   
       STA    $C8     
       LDA    #$08    
       STA    AUDV1   
       STA    $CA     
LF3A0: LDA    $80     
       AND    #$07    
       BNE    LF3EB   
       LDA    $AE     
       EOR    #$10    
       STA    $AE     
       JMP    LF45B   
LF3AF: DEC    $87     
       BNE    LF3EB   
       LDX    $9B     
       LDA    $BB,X   
       STA    $87     
       LDX    #$04    
LF3BB: DEC    $88,X   
       DEX            
       BPL    LF3BB   
       LDA    $B4     
       EOR    #$10    
       TAY            
       STA    $B4     
       LDA    #$01    
       STA    AUDC1   
       STA    $CC     
       LDA    #$07    
       STA    AUDV1   
       STA    $CA     
       LDA    #$17    
       CPY    #$A0    
       BEQ    LF3DB   
       LDA    #$1F    
LF3DB: STA    AUDF1   
       LDA    $88     
       CMP    #$2E    
       BNE    LF3EB   
       LDA    #$A0    
       STA    $AE     
       LDA    #$E8    
       STA    $B2     
LF3EB: JMP    LF45B   
LF3EE: LDA    #$08    
       STA    AUDC1   
       STA    $CC     
       LDA    #$0F    
       STA    AUDV1   
       STA    $CA     
       LDA    #$17    
       STA    AUDF1   
       LDX    $9B     
       SED            
       CLC            
       LDA    $A0,X   
       ADC    #$01    
       STA    $A0,X   
       BCC    LF410   
       LDA    $A2,X   
       ADC    #$00    
       STA    $A2,X   
LF410: CLD            
       LDA    $A0,X   
       LDY    $BD,X   
       CPY    #$09    
       BEQ    LF437   
       CPY    #$0C    
       BEQ    LF42A   
       CMP    #$10    
       BNE    LF454   
       JSR    LF45C   
       LDY    #$0C    
       STY    $BD,X   
       BNE    LF454   
LF42A: CMP    #$20    
       BNE    LF454   
       JSR    LF45C   
       LDY    #$09    
       STY    $BD,X   
       BCS    LF454   
LF437: CMP    #$50    
       BNE    LF454   
       LDA    $A2,X   
       BNE    LF454   
       INC    $85,X   
       LDA    #$04    
       STA    AUDC1   
       STA    $CC     
       LDA    #$17    
       STA    $C8     
       LDA    #$08    
       STA    $CA     
       STA    AUDV1   
       JSR    LF45C   
LF454: JSR    LF464   
       LDA    #$1F    
       STA    $87     
LF45B: RTS            

LF45C: SEC            
       LDA    $BB,X   
       SBC    #$02    
       STA    $BB,X   
       RTS            

LF464: LDY    #$00    
LF466: LDA.wy $0089,Y 
       STA.wy $0088,Y 
       LDA.wy $008E,Y 
       STA.wy $008D,Y 
       INY            
       CPY    #$04    
       BNE    LF466   
       LDY    $8D     
       LDA    LFB84,Y 
       STA    $A9     
       LDA    $8C     
       CLC            
       ADC    $BD,X   
       STA    $8C     
       LDA    $B6     
       AND    #$03    
       TAY            
       LDA    $9C     
       AND    #$02    
       BNE    LF4AA   
       LDA    $90     
       BEQ    LF498   
       CMP    #$03    
       BNE    LF4AA   
LF498: TYA            
       CLC            
       ADC    $90     
       CMP    #$03    
       BNE    LF4AA   
       JSR    LF15A   
       LDA    $B6     
       AND    #$03    
       TAY            
       BPL    LF498   
LF4AA: STY    $91     
       LDA    #$80    
       STA    $AE     
       LDA    #$E0    
       STA    $B2     
       RTS            

LF4B5: LDA    #$01    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDY    #$5A    
       LDX    $9F     
       BPL    LF4FF   
       LDA    #$03    
       STA    NUSIZ0  
       LDX    $9B     
       LDA    $85,X   
       BPL    LF4D8   
       LDA    $9C     
       AND    #$01    
       EOR    #$01    
       BNE    LF4D8   
       LDA    $81     
       AND    #$01    
       TAX            
LF4D8: LDA    $A0,X   
       TAY            
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA    $99     
       TYA            
       AND    #$F0    
       LSR            
       STA    $97     
       LDA    $A2,X   
       TAY            
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA    $95     
       TYA            
       AND    #$F0    
       LSR            
       STA    $93     
       LDY    #$5A    
       TXA            
       BEQ    LF4FF   
       LDY    #$4A    
LF4FF: STY    COLUP0  
       STY    COLUP1  
       RTS            

LF504: LDA    #$00    
       STA    CTRLPF  
       STA    WSYNC   
       STA    HMOVE   
LF50C: LDA    INTIM   
       BNE    LF50C   
       LDX    #$07    
       STA    WSYNC   
       STA    VBLANK  
       NOP            
LF518: DEX            
       BNE    LF518   
       STA    RESP0   
       STA    RESP1   
       LDA    #$10    
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       LDY    #$00    
LF529: STA    WSYNC   
       LDA    ($93),Y 
       STA    GRP0    
       LDA    ($95),Y 
       STA    GRP1    
       LDA    ($97),Y 
       TAX            
       LDA    ($99),Y 
       STA    $9D     
       STY    $9E     
       LDA    LFB00,Y 
       LDY    $9D     
       NOP            
       NOP            
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       LDY    $9E     
       INY            
       CPY    #$08    
       BNE    LF529   
       STA    WSYNC   
       LDX    #$00    
       STX    GRP0    
       STX    GRP1    
       STX    NUSIZ0  
       STX    NUSIZ1  
       LDX    #$02    
       LDA    #$80    
       PHA            
       LDY    $9B     
       LDA.wy $0085,Y 
       BPL    LF572   
       LDA    $9C     
       AND    #$01    
       EOR    #$01    
       BNE    LF57D   
       LDY    $81     
LF572: TYA            
       AND    #$01    
       BEQ    LF57D   
       LDX    #$08    
       PLA            
       LDA    #$10    
       PHA            
LF57D: PLA            
       STA    WSYNC   
LF580: DEX            
       BNE    LF580   
       NOP            
       STA    RESP0   
       STA    RESP1   
       NOP            
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       LDY    $9B     
       LDA.wy $0085,Y 
       STA    $9D     
       STA    $9E     
       BMI    LF5A9   
       CMP    #$03    
       BEQ    LF5A6   
       CMP    #$01    
       BNE    LF5A9   
       DEC    $9E     
       BEQ    LF5A9   
LF5A6: LSR            
       STA    NUSIZ0  
LF5A9: STA    WSYNC   
       LDY    LFB69,X 
       LDA    $9D     
       BEQ    LF5B4   
       STY    GRP0    
LF5B4: LDA    $9E     
       BEQ    LF5BA   
       STY    GRP1    
LF5BA: LDA    LFB60,X 
       STA    COLUP0  
       STA    COLUP1  
       INX            
       CPX    #$08    
       BCC    LF5A9   
       STA    WSYNC   
       LDX    #$00    
       STX    GRP0    
       STX    GRP1    
       STX    NUSIZ0  
       LDA    $A4     
       STA    $9D     
       JSR    LF8CC   
       INX            
       LDA    #$8C    
       STA    COLUP0  
       STA    COLUP1  
       LDA    $A5     
       STA    $9D     
       JSR    LF8CC   
       DEX            
       LDA    LFF80,X 
LF5E9: STA    WSYNC   
       STA    COLUBK  
       TXA            
       SEC            
       SBC    $A6     
       LDY    #$03    
       CMP    #$03    
       BCS    LF5F8   
       TAY            
LF5F8: LDA    ($B9),Y 
       STA    GRP0    
       SEC            
       TXA            
       SBC    $A7     
       LDY    #$03    
       CMP    #$03    
       BCS    LF607   
       TAY            
LF607: STA    WSYNC   
       LDA    ($B9),Y 
       STA    GRP1    
       INX            
       LDA    LFF80,X 
       CPX    #$08    
       BCC    LF5E9   
       LDY    #$05    
LF617: DEY            
       BNE    LF617   
       STA.w  $0010   
       LDA    LFC00,X 
LF620: STA    WSYNC   
       STA    COLUPF  
       LDA    LFC80,X 
       STA    PF0     
       LDA    LFD00,X 
       STA    PF1     
       LDA    LFD80,X 
       STA    PF2     
       LDY    #$08    
       TXA            
       SBC    #$13    
       CMP    #$08    
       BCS    LF63D   
       TAY            
LF63D: LDA    LFE00,X 
       STA    PF0     
       LDA    LFE80,X 
       STA    PF1     
       LDA    LFF00,X 
       STA    PF2     
       LDA    LF92E,Y 
       STA    COLUP0  
       LDA    LFF80,X 
       STA    WSYNC   
       STA    COLUBK  
       LDA    LFC80,X 
       STA    PF0     
       LDA    LFD00,X 
       STA    PF1     
       LDA    LFD80,X 
       STA    PF2     
       LDA    LF913,Y 
       STA    GRP0    
       LDA    LFE00,X 
       STA    PF0     
       LDA    LFE80,X 
       STA    PF1     
       LDA    LFF00,X 
       STA    PF2     
       INX            
       LDA    LFC00,X 
       CPX    #$20    
       SEC            
       BNE    LF620   
       STA    WSYNC   
       LDA    LFC80,X 
       STA    PF0     
       LDA    LFD00,X 
       STA    PF1     
       LDA    LFD80,X 
       STA    PF2     
       LDA    LFE00,X 
       LDY    LFE80,X 
       STA.w  $0010   
       STA    PF0     
       STY    PF1     
       LDA    LFF00,X 
       STA    PF2     
       STA    WSYNC   
       LDA    LFC80,X 
       STA    PF0     
       LDA    LFD00,X 
       STA    PF1     
       LDA    LFD80,X 
       STA    PF2     
       PHA            
       PLA            
       NOP            
       LDA    LFE00,X 
       STA    PF0     
       LDA    LFE80,X 
       STA    PF1     
       LDA    LFF00,X 
       STA    PF2     
       PHA            
       PLA            
       STA.w  $0011   
       INX            
LF6D0: STA    WSYNC   
       LDA    LFC80,X 
       STA    PF0     
       LDA    LFD00,X 
       STA    PF1     
       LDA    LFD80,X 
       STA    PF2     
       SEC            
       LDY    #$08    
       TXA            
       SBC    #$21    
       CMP    #$08    
       BCS    LF6EC   
       TAY            
LF6EC: LDA    LFE00,X 
       STA    PF0     
       LDA    LFE80,X 
       STA    PF1     
       LDA    LFF00,X 
       STA    PF2     
       LDA    LF937,Y 
       STA    COLUP0  
       LDA    LF91C,Y 
       STA    GRP0    
       STA    WSYNC   
       LDA    LFC80,X 
       STA    PF0     
       LDA    LFD00,X 
       STA    PF1     
       LDA    LFD80,X 
       STA    PF2     
       LDA    LF940,Y 
       STA    COLUP1  
       LDA    LF925,Y 
       STA    GRP1    
       LDA    LFE00,X 
       STA    PF0     
       LDA    LFE80,X 
       STA    PF1     
       LDA    LFF00,X 
       STA    PF2     
       INX            
       CPX    #$2E    
       BCC    LF6D0   
       STA    WSYNC   
       STX    $9E     
       LDX    #$00    
       LDA    $A8     
       STA    $9D     
       JSR    LF8CC   
       INX            
       LDA    $A9     
       STA    $9D     
       STA    CXCLR   
       JSR    LF8CC   
       LDA    $AC     
       STA    REFP0   
       LDA    $AD     
       STA    REFP1   
       LDY    #$00    
       LDA    $88     
       CMP    #$36    
       BCS    LF764   
       LDA    $9E     
       SEC            
       SBC    $88     
       CLC            
       ADC    #$08    
       TAY            
LF764: STY    $9E     
       LDX    #$00    
       LDA    LFC2E   
LF76B: STA    WSYNC   
       STA    COLUPF  
       LDA    LFCAE,X 
       STA    PF0     
       LDA    LFD2E,X 
       STA    PF1     
       LDA    LFDAE,X 
       STA    PF2     
       LDY    $9E     
       LDA    ($B2),Y 
       STA    COLUP1  
       LDA    LFE2E,X 
       STA    PF0     
       LDA    LFEAE,X 
       STA    PF1     
       LDA    LFF2E,X 
       STA    PF2     
       LDA    ($AE),Y 
       STA    GRP1    
       INC    $9E     
       TXA            
       STA    WSYNC   
       TAY            
       LDA    LFCAE,X 
       STA    PF0     
       LDA    LFD2E,X 
       STA    PF1     
       LDA    LFDAE,X 
       STA    PF2     
       LDA    ($B0),Y 
       STA    COLUP0  
       LDA    LFE2E,X 
       STA    PF0     
       LDA    LFEAE,X 
       STA    PF1     
       LDA    LFF2E,X 
       STA    PF2     
       LDA    ($AA),Y 
       STA    GRP0    
       INX            
       LDA    LFC2E,X 
       CPX    #$08    
       BNE    LF76B   
       LDY    #$00    
       STY    GRP0    
       STY    REFP1   
       STY    $9E     
       INY            
       STY    CTRLPF  
       LDX    #$36    
       LDA    LFC00,X 
       SEC            
LF7DC: LDY    LFF80,X 
       STA    COLUPF  
       STY    COLUBK  
       LDA    LFC80,X 
       STA    PF0     
       LDA    LFD00,X 
       STA    PF1     
       LDA    LFD80,X 
       STA    PF2     
       LDY    $9E     
       TXA            
       SBC.wy $0088,Y 
       LDY    #$08    
       CMP    #$08    
       BNE    LF800   
       INC    $9E     
LF800: BCS    LF803   
       TAY            
LF803: LDA    LFB72,Y 
       STA    COLUP1  
       LDA    ($B4),Y 
       STA    GRP1    
       STA    WSYNC   
       INX            
       CPX    #$54    
       BEQ    LF83A   
       LDY    $9E     
       LDA.wy $008D,Y 
       CMP    #$00    
       BEQ    LF830   
       CMP    #$01    
       BEQ    LF82C   
       CMP    #$02    
       BEQ    LF828   
       PHA            
       PLA            
       PHA            
       PLA            
LF828: PHA            
       PLA            
       NOP            
       NOP            
LF82C: PHA            
       PLA            
       LDA    $9D     
LF830: LDA    LFC00,X 
       STA    RESP1   
       SEC            
       STA    WSYNC   
       BCS    LF7DC   
LF83A: LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    COLUP0  
       STA    COLUP1  
       STA    REFP0   
       STA    REFP1   
       STA    HMP0    
       STA    HMP1    
       LDA    LFF80,X 
       LDY    LFC00,X 
LF852: STA    WSYNC   
       STA    COLUBK  
       STY    COLUPF  
       LDA    LFC80,X 
       STA    PF0     
       LDA    LFD00,X 
       STA    PF1     
       LDA    LFD80,X 
       STA    PF2     
       STA    WSYNC   
       INX            
       LDA    LFF80,X 
       LDY    LFC00,X 
       CPX    #$58    
       BNE    LF852   
       LDA    #$00    
       STA    COLUBK  
       STA    PF0     
       STA    PF1     
       STA    PF2     
       LDA    #$03    
       STA    NUSIZ0  
       LDA    #$01    
       STA    NUSIZ1  
       LDY    #$08    
       STA    WSYNC   
LF88A: DEY            
       BNE    LF88A   
       STA    RESP0   
       STA    RESP1   
       LDA    #$10    
       STA    HMP1    
       LDA    #$00    
       STA    WSYNC   
       STA    HMOVE   
       STA    COLUBK  
       NOP            
LF89E: LDA    LF8EB,Y 
       STA    GRP0    
       LDA    LF8F3,Y 
       STA    GRP1    
       LDA    LF8FB,Y 
       STA    $9D     
       LDX    LF903,Y 
       LDA    LF90B,Y 
       STY    $9E     
       LDY    $9D     
       STY    GRP0    
       STX    GRP1    
       STA    GRP0    
       INC    $9E     
       STA    WSYNC   
       LDY    $9E     
       CPY    #$08    
       BNE    LF89E   
       LDA    #$00    
       JMP    LF980   
LF8CC: LDA    $9D     
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    $9D     
       EOR    #$07    
       STA    WSYNC   
       STA    HMCLR   
       ASL            
       ASL            
       ASL            
       ASL            
       STA    HMP0,X  
LF8E1: DEY            
       BNE    LF8E1   
       STA    RESP0,X 
       STA    WSYNC   
       STA    HMOVE   
       RTS            

LF8EB: .byte $00,$00,$FD,$52,$5A,$52,$5D,$00
LF8F3: .byte $00,$00,$A9,$2A,$3A,$2A,$AA,$00
LF8FB: .byte $0C,$04,$16,$AA,$AA,$AB,$91,$01
LF903: .byte $60,$40,$CC,$A9,$A9,$A5,$2D,$00
LF90B: .byte $00,$00,$22,$55,$55,$55,$25,$00
LF913: .byte $10,$38,$AA,$EE,$FE,$FE,$D6,$BA,$00
LF91C: .byte $C3,$DB,$18,$7E,$18,$DB,$DB,$C3,$00
LF925: .byte $00,$E7,$A5,$E7,$18,$24,$DB,$00,$00
LF92E: .byte $4A,$4A,$4A,$2F,$2D,$9F,$9C,$9C,$00
LF937: .byte $2F,$2F,$2D,$4A,$4A,$2D,$2F,$2F,$00
LF940: .byte $00,$9C,$9C,$9C,$4A,$4A,$2F,$00,$00,$03,$A9,$A0,$20,$ED,$FD,$CA
       .byte $D0,$F8,$60,$38,$A5,$2F,$A4,$3B,$AA,$10,$01,$88,$65,$3A,$90,$01
       .byte $C8,$60,$04,$20,$54,$30,$0D,$80,$04,$90,$03,$22,$54,$33,$0D,$80
       .byte $04,$90,$04,$20,$54,$33,$0D,$80,$04,$90,$04,$20,$54,$3B,$0D,$80
LF980: STA    COLUBK  
       LDX    #$01    
LF984: STA    WSYNC   
       DEX            
       BNE    LF984   
       RTS            

LF98A: .byte $11,$22,$44,$33,$0D,$C8,$44,$A9,$01,$22,$44,$33,$0D,$80,$04,$90
       .byte $01,$22,$44,$33,$0D,$80,$04,$90,$26,$31,$87,$9A,$00,$21,$81,$82
       .byte $00,$00,$59,$4D,$91,$92,$86,$4A,$85,$9D,$AC,$A9,$AC,$A3,$A8,$A4
       .byte $D9,$00,$D8,$A4,$A4,$00,$1C,$8A,$1C,$23,$5D,$8B,$1B,$A1,$9D,$8A
       .byte $1D,$23,$9D,$8B,$1D,$A1,$00,$29,$19,$AE,$69,$A8,$19,$23,$24,$53
       .byte $1B,$23,$24,$53,$19,$A1,$00,$1A,$5B,$5B,$A5,$69,$24,$24,$AE,$AE
       .byte $A8,$AD,$29,$00,$7C,$00,$15,$9C,$6D,$9C,$A5,$69,$29,$53,$84,$13
       .byte $34,$11,$A5,$69,$23,$A0,$0C,$9E,$AB,$9E,$4C,$3E,$0F,$0F,$0C,$1E
       .byte $2B,$1E,$8C,$4E,$3F,$0F,$0C,$1E,$2B,$1E,$0F,$CF,$3E,$0E,$18,$3C
       .byte $56,$3C,$1E,$1E,$FC,$1C,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$67,$67,$4F,$4F,$B7,$B7,$B7,$C3,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$63,$63,$2C,$B9,$B9,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$65,$FF,$D8,$20,$84,$FE,$20,$2F,$FB,$20
       .byte $93,$FE,$20,$89,$FE,$AD,$58,$C0,$AD,$5A,$C0,$AD,$5D,$C0,$AD,$5F
       .byte $C0,$AD,$FF,$CF,$2C,$10,$00,$00,$00,$00,$00,$00,$00,$00,$1C,$1C
       .byte $28,$1C,$3C,$1C,$14,$00,$00,$00,$00,$00,$00,$00,$00,$00,$1C,$1C
       .byte $28,$1C,$1E,$1C,$14,$00,$1C,$1C,$28,$1C,$3C,$1C,$14,$10,$00,$38
       .byte $3C,$30,$3C,$7E,$38,$00,$1C,$1C,$28,$1C,$1E,$1C,$14,$04,$00,$38
       .byte $3C,$50,$78,$FC,$38,$00,$C9,$C0,$F0,$D7,$8D,$F8,$07,$B1,$00,$D9
       .byte $01,$FB,$D0,$EC,$88,$88,$10,$F5,$6C,$00,$00,$EA,$EA,$20,$8E,$FD
       .byte $A9,$45,$85,$40,$A9,$00,$00,$00,$00,$00,$00,$00,$00,$00,$B5,$B5
       .byte $4F,$57,$57,$00,$00,$00,$00,$67,$4F,$4F,$5A,$5A,$00,$00,$FD,$E8
       .byte $30,$E8,$60,$59,$FA,$00
LFB00: .byte $3C,$62,$66,$6A,$72,$62,$3C,$00,$38,$18,$18,$18,$18,$18,$3C,$00
       .byte $3C,$62,$02,$06,$18,$60,$7E,$00,$3C,$62,$02,$04,$02,$62,$3C,$00
       .byte $0C,$1C,$34,$64,$7E,$04,$04,$00,$7E,$60,$7C,$02,$02,$62,$3C,$00
       .byte $1E,$30,$60,$7C,$62,$62,$3C,$00,$7E,$06,$0C,$18,$30,$30,$30,$00
       .byte $3C,$62,$62,$3C,$62,$62,$3C,$00,$3C,$62,$62,$3E,$02,$04,$78,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$83,$6C,$10,$00,$00,$6C,$A3,$00
LFB60: .byte $67,$67,$4F,$4F,$B7,$B7,$B7,$C3,$00
LFB69: .byte $0C,$9E,$AB,$9E,$4C,$3E,$0F,$0F,$00
LFB72: .byte $B5,$B5,$4F,$57,$57,$00,$00,$00,$00,$1C,$1C,$28,$1C,$3C,$1C,$14
       .byte $10,$00
LFB84: .byte $1D,$4A,$7A,$A4,$1D,$4A,$7A,$A4,$FB,$C0,$83,$F0,$03,$2C,$10,$C0
       .byte $4C,$FD,$FB,$38,$4C,$2C,$FC,$A8,$B9,$48,$FA,$20,$97,$FB,$20,$0C
       .byte $FD,$C9,$CE,$B0,$EE,$C9,$C9,$90,$EA,$C9,$CC,$F0,$E6,$D0,$E8,$EA
       .byte $EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$48,$4A,$29
       .byte $03,$09,$04,$85,$29,$68,$29,$18,$90,$02,$69,$7F,$85,$28,$0A,$0A
       .byte $05,$28,$85,$28,$60,$C9,$87,$D0,$12,$A9,$40,$20,$A8,$FC,$A0,$C0
       .byte $A9,$0C,$20,$A8,$FC,$AD,$30,$C0,$88,$D0,$F5,$60,$A4,$24,$91,$28
       .byte $E6,$24,$A5,$24,$C5,$21,$B0,$66,$60,$C9,$A0,$B0
LFC00: .byte $00,$00,$00,$00,$00,$00,$00,$00,$69,$69,$69,$69,$69,$00,$5A,$5A
       .byte $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
       .byte $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
LFC2E: .byte $0D,$0D,$0B,$0B,$09,$67,$67,$67,$67,$67,$4A,$67,$4A,$4A,$4A,$67
       .byte $4A,$66,$66,$66,$4F,$66,$66,$66,$66,$66,$4F,$66,$66,$66,$66,$66
       .byte $66,$4F,$66,$66,$66,$66,$5D,$5B,$59,$57,$A5,$22,$85,$25,$A0,$00
       .byte $84,$24,$F0,$E4,$A9,$00,$85,$24,$E6,$25,$A5,$25,$C5,$23,$90,$B6
       .byte $C6,$25,$A5,$22,$48,$20,$24,$FC,$A5,$28,$85,$2A,$A5,$29,$85,$2B
       .byte $A4,$21
LFC80: .byte $00,$00,$00,$00,$00,$00,$00,$00,$10,$30,$30,$70,$F0,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
LFCAE: .byte $00,$00,$00,$20,$30,$F0,$70,$E0,$E0,$E0,$E0,$E0,$20,$A0,$20,$E0
       .byte $E0,$C0,$C0,$C0,$C0,$C0,$80,$80,$80,$80,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$E0,$E0,$C0,$80,$FC,$C8,$C8,$88,$D0,$FD
       .byte $90,$05,$A0,$32,$88,$D0,$FD,$AC,$20,$C0,$A0,$2C,$CA,$60,$A2,$08
       .byte $48,$20,$FA,$FC,$68,$2A,$A0,$3A,$CA,$D0,$F5,$60,$20,$FD,$FC,$88
       .byte $AD,$60
LFD00: .byte $00,$00,$00,$00,$00,$00,$00,$00,$01,$03,$07,$5F,$E0,$00,$00,$00
       .byte $00,$00,$00,$04,$06,$07,$07,$04,$04,$04,$04,$04,$1F,$1F,$1F,$3F
       .byte $3F,$3F,$3F,$3F,$7F,$7F,$7F,$7F,$7F,$7F,$7F,$3F,$3F,$3F
LFD2E: .byte $1F,$1F,$3F,$3F,$04,$0E,$1F,$FF,$7F,$FF,$7F,$FF,$FF,$7F,$FF,$FF
       .byte $7F,$FF,$7F,$FF,$7F,$FF,$7F,$FF,$7F,$FF,$FF,$7F,$FF,$7F,$FF,$7F
       .byte $BF,$BF,$3F,$97,$1B,$07,$F1,$F1,$E0,$E0,$E0,$F8,$90,$03,$20,$3A
       .byte $FF,$E8,$D0,$13,$A9,$DC,$20,$ED,$FD,$20,$8E,$FD,$A5,$33,$20,$ED
       .byte $FD,$A2,$01,$8A,$F0,$F3,$CA,$20,$35,$FD,$C9,$95,$D0,$02,$B1,$28
       .byte $C9,$E0
LFD80: .byte $00,$00,$00,$00,$00,$00,$00,$00,$02,$07,$0F,$9F,$C0,$00,$00,$82
       .byte $00,$00,$00,$00,$00,$00,$01,$00,$00,$80,$80,$80,$C3,$C3,$C3,$C3
       .byte $E3,$E3,$E1,$E1,$F1,$F1,$F0,$F0,$F0,$F0,$F0,$F1,$F1,$E1
LFDAE: .byte $E1,$E3,$E3,$E3,$00,$00,$00,$FF,$FB,$FF,$FB,$FF,$FB,$FF,$FB,$FF
       .byte $FB,$FF,$FB,$FF,$FB,$FF,$FB,$FF,$FB,$FF,$FF,$FB,$FF,$FB,$FF,$FF
       .byte $FB,$FF,$FF,$FB,$FF,$7F,$3F,$3F,$1F,$1E,$FD,$68,$48,$4A,$4A,$4A
       .byte $4A,$20,$E5,$FD,$68,$29,$0F,$09,$B0,$C9,$BA,$90,$02,$69,$06,$6C
       .byte $36,$00,$C9,$A0,$90,$02,$25,$32,$84,$35,$48,$20,$78,$FB,$68,$A4
       .byte $35,$60
LFE00: .byte $00,$00,$00,$00,$00,$00,$00,$00,$C0,$E0,$F0,$B0,$10,$00,$30,$30
       .byte $00,$20,$60,$E0,$E0,$20,$20,$20,$20,$F0,$F0,$F0,$F0,$F0,$F0,$F0
       .byte $F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0
LFE2E: .byte $F0,$F0,$F8,$F8,$F8,$20,$70,$F0,$F0,$F0,$F0,$F0,$D0,$20,$D0,$F0
       .byte $F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0
       .byte $F0,$F0,$F0,$F0,$F0,$E0,$C0,$C0,$80,$00,$20,$B4,$FC,$90,$D9,$60
       .byte $20,$75,$FE,$A9,$14,$48,$20,$D0,$F8,$20,$53,$F9,$85,$3A,$84,$3B
       .byte $68,$38,$E9,$01,$D0,$EF,$60,$8A,$F0,$07,$B5,$3C,$95,$3A,$CA,$10
       .byte $F9,$60
LFE80: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$81,$83,$AF,$FF,$00,$00,$00
       .byte $00,$00,$00,$00,$80,$01,$01,$01,$01,$E1,$E1,$E1,$E1,$E7,$C7,$C7
       .byte $C7,$C7,$8F,$8F,$8F,$8F,$0F,$1F,$1F,$1F,$1F,$1F,$8F,$8F
LFEAE: .byte $8F,$C7,$C7,$C7,$C3,$01,$03,$FF,$BF,$FF,$BF,$FF,$FF,$BF,$FF,$FF
       .byte $BF,$FF,$BF,$FF,$BF,$FF,$BF,$FF,$BF,$FF,$FF,$BF,$FF,$BF,$FF,$FF
       .byte $BF,$FF,$FF,$BD,$FC,$FD,$F8,$F8,$F0,$F0,$48,$A1,$3C,$20,$ED,$FE
       .byte $20,$BA,$FC,$A0,$1D,$68,$90,$EE,$A0,$22,$20,$ED,$FE,$F0,$4D,$A2
       .byte $10,$0A,$20,$D6,$FC,$D0,$FA,$60,$20,$00,$FE,$68,$68,$D0,$6C,$20
       .byte $FA,$FC
LFF00: .byte $00,$00,$00,$00,$00,$00,$00,$00,$50,$F8,$01,$03,$07,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$01,$03,$07,$0F,$00,$00,$00,$0F,$0F,$0F
       .byte $0F,$0F,$0F,$07,$07,$07,$07,$03,$03,$03,$03,$03,$07,$07
LFF2E: .byte $0F,$0F,$0F,$0F,$0F,$C0,$E0,$FF,$F7,$FF,$77,$7F,$77,$7F,$77,$7F
       .byte $77,$7F,$7F,$77,$7F,$3F,$37,$3F,$3F,$3F,$3F,$3F,$1F,$1F,$1F,$0F
       .byte $0F,$07,$0F,$07,$03,$03,$7F,$7F,$3E,$3C,$60,$20,$84,$FE,$20,$2F
       .byte $FB,$20,$93,$FE,$20,$89,$FE,$D8,$20,$3A,$FF,$A9,$AA,$85,$33,$20
       .byte $67,$FD,$20,$C7,$FF,$20,$A7,$FF,$84,$34,$A0,$17,$88,$30,$E8,$D9
       .byte $CC,$FF
LFF80: .byte $97,$99,$9B,$9D,$9F,$9F,$9F,$9F,$2F,$2D,$4A,$4F,$4F,$4F,$91,$93
       .byte $95,$97,$99,$9B,$9D,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F
       .byte $9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F
       .byte $9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F
       .byte $9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F
       .byte $9C,$9C,$9C,$9C,$9C,$98,$96,$94,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F
       .byte $9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$8C,$C3,$96,$AF,$17,$17,$2B,$1F
       .byte $83,$7F,$5D,$CC,$B5,$FC,$17,$17,$F5,$03,$FB,$03,$10,$F0,$10,$F0
