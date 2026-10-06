; Disassembly of roms/Freeway (2).bin
; Disassembled Tue Oct  6 15:21:48 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Freeway (2).bin
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
CXCLR   =  $2C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296

       ORG $F000

START:
       SEI            
       CLD            
       LDX    #$00    
LF004: LDA    #$00    
LF006: STA    VSYNC,X 
       TXS            
       INX            
       BNE    LF006   
       JSR    LF5B0   
LF00F: LDX    #$05    
LF011: LDA    LF6F0,X 
       EOR    $86     
       AND    $87     
       STA    $88,X   
       CPX    #$04    
       BCS    LF020   
       STA    COLUP0,X
LF020: DEX            
       BPL    LF011   
       STX    $90     
       STX    $91     
       STA    WSYNC   
       STA    RESBL   
       LDA    #$22    
       STA    HMBL    
       STA    ENABL   
       LDA    #$28    
       INX            
       STX    COLUPF  
       JSR    LF617   
       LDA    #$30    
       STA    CTRLPF  
       INX            
       JSR    LF617   
       LDA    #$04    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    $88     
       LDY    $E6     
       BNE    LF05D   
       LDY    $E9     
       CPY    #$20    
       BCC    LF055   
       INC    $E6     
LF055: CPY    #$1E    
       BCC    LF05D   
       LDA    $81     
       AND    $87     
LF05D: STA    COLUP0  
       STA    COLUP1  
LF061: LDA    INTIM   
       BNE    LF061   
       STA    WSYNC   
       STA    HMOVE   
       STA    VBLANK  
       STA    CXCLR   
       LDY    #$07    
LF070: STA    WSYNC   
       STA    HMCLR   
       LDA    ($DD),Y 
       STA    GRP0    
       LDA    ($E1),Y 
       STA    GRP1    
       JSR    LF613   
       LDA    ($DF),Y 
       STA    GRP0    
       LDA    ($E3),Y 
       STA    GRP1    
       DEY            
       BPL    LF070   
       LDA    #$40    
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       INY            
       STY    GRP0    
       STY    GRP1    
       LDA    #$08    
       STA    REFP0   
       LDA    $C0     
       STA    $D9     
       LDA    $CC     
       STA    $DB     
       LDY    #$09    
       STA    HMCLR   
       STA    WSYNC   
       STA    HMOVE   
       LDA    $8C     
       STA    COLUBK  
       LDA    $89     
       STA    COLUP1  
LF0B3: STA    WSYNC   
       LDA    $8D     
       CPY    #$01    
       BNE    LF0BD   
       LDA    $8C     
LF0BD: STA    COLUBK  
       LDA    ($D9),Y 
       STA    GRP1    
       JSR    LF615   
       LDA    ($DB),Y 
       STA    GRP1    
       DEY            
       BNE    LF0B3   
       STA    WSYNC   
       STA    HMOVE   
       LDA    $8B     
       STA    COLUBK  
       LDA    #$09    
       STA    $95     
       LDA    ($D9),Y 
       STA    GRP1    
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       LDA    ($DB),Y 
       STA    GRP1    
       LDX    $95     
       LDA    $B6,X   
       STA    $D9     
       LDA    $C2,X   
       STA    $DB     
LF0F0: LDY    #$0F    
       LDA    #$00    
       STA    WSYNC   
       STA    HMOVE   
       STA    PF1     
       STA    PF2     
       STA    COLUPF  
       LDA    ($D9),Y 
       STA    GRP1    
       LDA    $CD,X   
       STA    $94     
       LDA    $AB,X   
       AND    #$0F    
       STA    $F6     
       LDA    ($DB),Y 
       DEY            
       STA    GRP1    
       LDA    $97,X   
       AND    #$07    
       STA    NUSIZ0  
       CMP    #$05    
       BNE    LF11F   
       LDA    #$C8    
       BNE    LF122   
LF11F: LDA    #$BD    
       NOP            
LF122: STA    $D7     
       LDA    ($D9),Y 
       STA    GRP1    
       LDA    $97,X   
       BMI    LF14A   
       LDX    $F6     
       CPX    #$03    
       LDA    ($DB),Y 
LF132: DEX            
       BPL    LF132   
       STA    RESP0   
       BCS    LF13C   
       JSR    LF616   
LF13C: DEY            
       STA    GRP1    
       LDX    $95     
       LDA    $AB,X   
       STA    HMP0    
       LDA    $8C     
       JMP    LF166   
LF14A: NOP            
       NOP            
       STA    CXCLR   
       LDX    $95     
       LDA    $AB,X   
       STA    HMP0    
       LDA    $F6     
       SEC            
       SBC    #$06    
       TAX            
       LDA    ($DB),Y 
       DEY            
       STA    GRP1    
       LDA    $8C     
LF161: DEX            
       BPL    LF161   
       STA    RESP0   
LF166: STA    WSYNC   
LF168: STA    HMOVE   
       STA    COLUP0  
       LDA    ($D7),Y 
       STA    GRP0    
       LDA    $93     
       ORA    COLUP1  
       STA    $93     
       STA    CXCLR   
       LDA    ($D9),Y 
       STA    GRP1    
       CPY    #$06    
       LDA    $92     
       ORA    COLUP1  
       STA    $92     
       STA    CXCLR   
       LDA    ($DB),Y 
       STA    GRP1    
       BCC    LF199   
       DEY            
       STA.w  $002B   
       LDA    $94     
       EOR    $86     
       AND    $87     
       JMP    LF168   
LF199: LDA    $8C     
       DEY            
       STA    WSYNC   
       STA    HMOVE   
       STA    COLUP0  
       LDA    ($D7),Y 
       STA    GRP0    
       LDA    $93     
       ORA    COLUP1  
       STA    $93     
       STA    CXCLR   
       LDA    ($D9),Y 
       STA    GRP1    
       NOP            
       LDA    $92     
       ORA    COLUP1  
       STA    $92     
       STA    CXCLR   
       LDA    ($DB),Y 
       STA    GRP1    
       DEY            
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$00    
       STA    GRP0    
       LDA    ($D9),Y 
       STA    GRP1    
       LDX    $95     
       BIT    $92     
       BPL    LF1D4   
       STX    $90     
LF1D4: LDA    $93     
       ORA    COLUP1  
       BPL    LF1DC   
       STX    $91     
LF1DC: LDA    ($DB),Y 
       STA    GRP1    
       STA    CXCLR   
       DEY            
       LDA    $95     
       BEQ    LF252   
       LDX    $8B     
       CMP    #$05    
       BNE    LF1EF   
       LDX    $89     
LF1EF: STA    WSYNC   
       STA    HMOVE   
       LDA    #$AA    
       STA    PF0     
       STA    PF2     
       LSR            
       STA    PF1     
       STX    COLUPF  
       LDA    ($D9),Y 
       STA    GRP1    
       DEC    $95     
       LDA    ($DB),Y 
       STA    GRP1    
       DEY            
       STA    WSYNC   
       STA    HMOVE   
       CPX    $89     
       BNE    LF21A   
       LDA    #$00    
       STA    REFP0   
       LDA    $8B     
       JMP    LF21C   
LF21A: LDA    $8A     
LF21C: STA    COLUPF  
       LDA    ($D9),Y 
       STA    GRP1    
       JSR    LF616   
       LDA    ($DB),Y 
       STA    GRP1    
       DEY            
       STA    WSYNC   
       STA    HMOVE   
       STX    COLUPF  
       LDA    ($D9),Y 
       STA    GRP1    
       LDX    $95     
       LDA    $B6,X   
       STA    $D9     
       LDA    $C2,X   
       STA    $F6     
       NOP            
       LDA    ($DB),Y 
       STA    GRP1    
       LDA    $F6     
       STA    $DB     
       LDA    #$00    
       STA    $92     
       STA    $93     
       STA    PF0     
       JMP    LF0F0   
LF252: STA    WSYNC   
       STA    HMOVE   
       LDA    ($D9),Y 
       STA    GRP1    
       JSR    LF615   
       JSR    LF616   
       LDA    ($DB),Y 
       STA    GRP1    
       DEY            
       BPL    LF252   
       LDY    #$0F    
LF269: LDA    $8D     
       STA    WSYNC   
       STA    HMOVE   
       CPY    #$0F    
       BNE    LF275   
       LDA    $8C     
LF275: STA    COLUBK  
       LDA    $B5     
       STA    $D9     
       LDA    $C1     
       STA    $DB     
       LDA    ($D9),Y 
       STA    GRP1    
       LDA    ($DB),Y 
       DEY            
       STA    GRP1    
       CPY    #$06    
       BCS    LF269   
       STA    WSYNC   
       STA    HMOVE   
       LDA    $8C     
       STA    COLUBK  
       LDX    #$00    
       STX    GRP1    
       STX    HMCLR   
       INX            
       STX    NUSIZ0  
       STX    NUSIZ1  
       STA    RESP0   
       STA    RESP1   
       LDA    #$10    
       STA    HMP1    
       LDA    $88     
       STA    COLUP0  
       STA    COLUP1  
       LDX    #$07    
LF2AF: STA    WSYNC   
       STA    HMOVE   
       LDA    LF6A8,X 
       STA    GRP0    
       LDA    LF6B0,X 
       STA    GRP1    
       NOP            
       LDA    LF6C0,X 
       TAY            
       LDA    LF6B8,X 
       STA    GRP0    
       STY    GRP1    
       STA    HMCLR   
       DEX            
       BPL    LF2AF   
       LDA    #$1A    
       STA    TIM64T  
       LDA    $81     
       AND    #$01    
       TAX            
       ASL            
       TAY            
       LDA    $E7,X   
       AND    #$F0    
       LSR            
       BNE    LF2E3   
       LDA    #$50    
LF2E3: STA.wy $00DD,Y 
       LDA    $E7,X   
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA.wy $00E1,Y 
       LDY    #$00    
       JSR    LF69E   
       BPL    LF317   
       LDA    $EA,X   
       BEQ    LF34C   
       AND    #$40    
       BEQ    LF330   
       LDA    #$04    
       STA    AUDC0,X 
       DEC    $EA,X   
       LDA    $EA,X   
       AND    #$1F    
       CMP    #$10    
       BCC    LF317   
       PHA            
       AND    #$03    
       ADC    #$02    
       STA    AUDF0,X 
       PLA            
       LDY    #$04    
LF317: STY    AUDV0,X 
       CMP    #$00    
       BNE    LF321   
       LDA    #$00    
       STA    $EA,X   
LF321: LDA    SWCHB   
       AND    LF7FE,X 
       BEQ    LF32D   
       LDA    #$06    
       STA    $8E,X   
LF32D: JMP    LF42F   
LF330: LDA    $EA,X   
       STA    AUDV0,X 
       LDA    #$0C    
       STA    AUDC0,X 
       TXA            
       ADC    #$06    
       STA    AUDF0,X 
       DEC    $EA,X   
       LDA    $EA,X   
       AND    #$0F    
       BNE    LF349   
       LDA    #$00    
       STA    $EA,X   
LF349: JMP    LF42F   
LF34C: LDA    $83     
       CMP    #$08    
       LDA    #$02    
       BCS    LF376   
       LDA    $E6     
       BEQ    LF35E   
       LDA    #$00    
       STA    AUDV0,X 
       BEQ    LF349   
LF35E: LDA    $EA     
       ORA    $EB     
       BNE    LF38D   
       LDA    $82     
       EOR    #$40    
       CMP    #$E0    
       BCC    LF38D   
       LDA    $82     
       EOR    $81     
       AND    #$3F    
       BEQ    LF38D   
       LDA    $82     
LF376: AND    #$03    
       ORA    #$04    
       STA    AUDF0   
       SEC            
       SBC    #$01    
       STA    AUDF1   
       LDA    #$01    
       STA    AUDC0   
       STA    AUDC1   
       STA    AUDV0   
       STA    AUDV1   
       BNE    LF349   
LF38D: LDA    $8E,X   
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       CPY    #$0A    
       BCC    LF39A   
       LDY    #$09    
LF39A: LDA    #$00    
       CPY    #$05    
       BCC    LF3A2   
       LDA    #$01    
LF3A2: STA    $FB     
       LDA.wy $0097,Y 
       STA    $FA     
       LSR            
       LSR            
       LSR            
       LSR            
       AND    #$07    
       STA    $F8     
       CMP    #$02    
       LDA    #$20    
       BCC    LF3BD   
       LDA    #$FF    
       STA    $FB     
       LDA    #$10    
LF3BD: STA    $F7     
       LDA    #$03    
       STA    AUDC0,X 
       LDA.wy $00EC,Y 
       STA    $F9     
       LDA    #$7F    
       STA    $FD     
       LDA    $FB     
       STA    $FE     
       LDA    $FA     
       AND    #$07    
       ASL            
       ASL            
       ORA    #$03    
       TAY            
LF3D9: LDA    $FB     
       STA    $F6     
       CLC            
       LDA    LF7DA,Y 
       ADC    $F9     
       CMP    #$A0    
       BCC    LF3E9   
       SBC    #$A0    
LF3E9: STA    $FC     
       LDA    LF7F6,X 
       SEC            
       SBC    $FC     
       BCS    LF3F7   
       EOR    #$FF    
       INC    $F6     
LF3F7: CMP    $FD     
       BCS    LF401   
       STA    $FD     
       LDA    $F6     
       STA    $FE     
LF401: DEY            
       TYA            
       AND    #$03    
       BNE    LF3D9   
       LDA    $FD     
       CMP    $F7     
       BCC    LF41C   
       LDA    #$0F    
       STA    AUDC0,X 
       LDA    #$1F    
       STA    AUDF0,X 
       LDA    #$01    
       STA    AUDV0,X 
       JMP    LF42F   
LF41C: DEC    $F7     
       EOR    $F7     
       LSR            
       LSR            
       STA    AUDV0,X 
       LDY    $FE     
       INY            
       LDA    LF7F8,Y 
       CLC            
       ADC    $F8     
       STA    AUDF0,X 
LF42F: LDA    $81     
       AND    #$1F    
       BNE    LF43F   
       LDA    $82     
       ASL            
       ASL            
       ASL            
       EOR    $82     
       ASL            
       ROL    $82     
LF43F: LDA    $E6     
       BNE    LF451   
       LDX    #$09    
       LDA    #$FF    
       STA    $96     
LF449: JSR    LF624   
       DEX            
       CPX    #$05    
       BCS    LF449   
LF451: LDA    INTIM   
       BNE    LF451   
       LDY    #$82    
       STY    WSYNC   
       STY    VBLANK  
       STY    VSYNC   
       STY    WSYNC   
       STY    WSYNC   
       STY    WSYNC   
       STA    VSYNC   
       INC    $81     
       BNE    LF473   
       INC    $E9     
       INC    $E5     
       BNE    LF473   
       SEC            
       ROR    $E5     
LF473: LDY    #$FF    
       LDA    SWCHB   
       AND    #$08    
       BNE    LF47E   
       LDY    #$0F    
LF47E: TYA            
       LDY    #$00    
       BIT    $E5     
       BPL    LF489   
       AND    #$F7    
       LDY    $E5     
LF489: STY    $86     
       ASL    $86     
       STA    $87     
       LDA    #$2C    
       STA    WSYNC   
       STA    TIM64T  
       LDA    $E6     
       BNE    LF4A6   
       LDX    #$04    
       LDA    #$01    
       STA    $96     
LF4A0: JSR    LF624   
       DEX            
       BPL    LF4A0   
LF4A6: LDA    SWCHA   
       TAY            
       AND    #$0F    
       STA    $85     
       TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $84     
       INY            
       BEQ    LF4BC   
       LDA    #$00    
       STA    $E5     
LF4BC: LDA    $82     
       BNE    LF4C4   
       INC    $82     
       BNE    LF4DC   
LF4C4: JSR    LF69E   
       BMI    LF4CE   
       LDX    #$E5    
       JMP    LF004   
LF4CE: LDY    #$00    
       BCS    LF4F5   
       LDA    $83     
       BEQ    LF4DA   
       DEC    $83     
       BPL    LF4F7   
LF4DA: INC    $80     
LF4DC: JSR    LF5B0   
       LDA    $80     
       AND    #$07    
       STA    $80     
       STA    $E5     
       ORA    #$A0    
       TAY            
       INY            
       STY    $E7     
       LDA    #$AA    
       STA    $E8     
       LDY    #$1E    
       STY    $E6     
LF4F5: STY    $83     
LF4F7: LDA    $E6     
       BEQ    LF4FE   
       JMP    LF00F   
LF4FE: LDX    #$01    
LF500: LDA    $EA,X   
       BEQ    LF50A   
       AND    #$10    
       BNE    LF528   
       BEQ    LF534   
LF50A: LDA    $84,X   
       LSR            
       BCS    LF525   
       INC    $8E,X   
       LDY    $8E,X   
       CPY    #$B2    
       BCC    LF525   
       SED            
       LDA    $E7,X   
       ADC    #$00    
       STA    $E7,X   
       CLD            
       LDA    #$8F    
       STA    $EA,X   
       BNE    LF530   
LF525: LSR            
       BCS    LF534   
LF528: DEC    $8E,X   
       LDA    $8E,X   
       CMP    #$06    
       BCS    LF534   
LF530: LDA    #$06    
       STA    $8E,X   
LF534: LDA    $EA,X   
       AND    #$1F    
       CMP    #$17    
       BCS    LF544   
       LDA    $90,X   
       BMI    LF544   
       LDA    #$5C    
       STA    $EA,X   
LF544: DEX            
       BPL    LF500   
       LDX    #$00    
       JSR    LF671   
       STA.wy $00B5,Y 
       CPY    #$0B    
       BEQ    LF559   
       CLC            
       ADC    #$10    
       STA.wy $00B6,Y 
LF559: INX            
       JSR    LF671   
       STA.wy $00C1,Y 
       CPY    #$0B    
       BEQ    LF56A   
       CLC            
       ADC    #$10    
       STA.wy $00C2,Y 
LF56A: LDA    $81     
       AND    #$70    
       BNE    LF5AD   
       LDA    $80     
       AND    #$04    
       BEQ    LF5AD   
       LDA    $81     
       AND    #$0F    
       TAX            
       CPX    #$0A    
       BCS    LF5AD   
       LDA    $97,X   
       LSR            
       LSR            
       LSR            
       LSR            
       AND    #$07    
       TAY            
       LDA    $81     
       EOR    $82     
       LSR            
       BCC    LF594   
       DEY            
       BPL    LF594   
       LDY    #$00    
LF594: LSR            
       BCC    LF59E   
       INY            
       CPY    #$06    
       BCC    LF59E   
       LDY    #$05    
LF59E: TYA            
       ASL            
       ASL            
       ASL            
       ASL            
       STA    $F6     
       LDA    $97,X   
       AND    #$8F    
       ORA    $F6     
       STA    $97,X   
LF5AD: JMP    LF00F   
LF5B0: LDA    $81     
       AND    #$01    
       STA    $81     
       LDX    #$01    
LF5B8: LDA    #$06    
       STA    $8E,X   
       LDA    #$00    
       STA    AUDV0,X 
       DEX            
       BPL    LF5B8   
       LDX    #$0D    
       LDA    #$F7    
LF5C7: STA    $D7,X   
       DEX            
       DEX            
       BPL    LF5C7   
       LDX    #$09    
LF5CF: LDA    #$01    
       STA    $A1,X   
       LDA    LF6F6,X 
       STA    $CD,X   
       CLC            
       LDA    $80     
       AND    #$03    
       TAY            
       TXA            
       ADC    LF7D6,Y 
       TAY            
       LDA    LF6C8,Y 
       STA    $97,X   
       LDA    #$60    
       STA    $AB,X   
       LDA    #$50    
       STA    $B5,X   
       STA    $B9,X   
       STA    $C3,X   
       DEX            
       BPL    LF5CF   
       RTS            

LF5F8: CLC            
       ADC    #$2E    
       TAY            
       AND    #$0F    
       STA    $F6     
       TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       CLC            
       ADC    $F6     
       CMP    #$0F    
       BCC    LF610   
       SBC    #$0F    
       INY            
LF610: EOR    #$07    
       ASL            
LF613: ASL            
       ASL            
LF615: ASL            
LF616: RTS            

LF617: JSR    LF5F8   
       STA    HMP0,X  
       STA    WSYNC   
LF61E: DEY            
       BPL    LF61E   
       STA    RESP0,X 
       RTS            

LF624: DEC    $A1,X   
       BPL    LF653   
       LDA    $97,X   
       LSR            
       LSR            
       LSR            
       LSR            
       AND    #$07    
       SEC            
       SBC    #$01    
       BPL    LF63E   
       LDA    $EC,X   
       CLC            
       ADC    $96     
       STA    $EC,X   
       LDA    #$00    
LF63E: STA    $A1,X   
       LDA    $EC,X   
       CLC            
       ADC    $96     
       CMP    #$C8    
       BCC    LF64B   
       LDA    #$9F    
LF64B: CMP    #$A0    
       BCC    LF651   
       LDA    #$00    
LF651: STA    $EC,X   
LF653: LDA    $EC,X   
       JSR    LF5F8   
       STA    $F6     
       DEY            
       DEY            
       DEY            
       ASL    $97,X   
       CPY    #$06    
       ROR    $97,X   
       TYA            
       ORA    $F6     
       STA    $AB,X   
       LDA    #$50    
       STA    $B5,X   
       STA    $C3,X   
       STA    $B9,X   
       RTS            

LF671: LDA    $8E,X   
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    $8E,X   
       AND    #$0F    
       STA    $F6     
       LDA    $EA,X   
       BEQ    LF68F   
       AND    #$40    
       BEQ    LF68F   
       LDA    $8E,X   
       LSR            
       LSR            
       LSR            
       LDA    #$A0    
       BCC    LF69A   
LF68F: LDA    $F6     
       LSR            
       LSR            
       LSR            
       LDA    #$60    
       BCC    LF69A   
       LDA    #$80    
LF69A: SEC            
       SBC    $F6     
       RTS            

LF69E: LDA    SWCHB   
       LSR            
       ROR            
       RTS            

LF6A4: .byte $25,$0C,$25,$0D
LF6A8: .byte $00,$AD,$A9,$E9,$A9,$ED,$41,$0F
LF6B0: .byte $00,$50,$58,$5C,$56,$53,$11,$F0
LF6B8: .byte $00,$BA,$8A,$BA,$A2,$3A,$80,$FE
LF6C0: .byte $00,$E9,$AB,$AF,$AD,$E9,$00,$00
LF6C8: .byte $50,$40,$30,$20,$10,$10,$20,$30,$40,$50,$40,$31,$22,$13,$04,$15
       .byte $14,$23,$32,$41,$46,$36,$20,$16,$05,$00,$16,$20,$36,$46,$05,$15
       .byte $25,$15,$05,$05,$15,$25,$15,$05
LF6F0: .byte $4A,$1E,$0C,$06,$00,$08
LF6F6: .byte $1A,$D8,$44,$88,$24,$82,$4A,$12,$DC,$42,$3C,$66,$66,$66,$66,$66
       .byte $66,$3C,$3C,$18,$18,$18,$18,$18,$38,$18,$7E,$60,$60,$3C,$06,$06
       .byte $46,$3C,$3C,$46,$06,$0C,$0C,$06,$46,$3C,$0C,$0C,$0C,$7E,$4C,$2C
       .byte $1C,$0C,$7C,$46,$06,$06,$7C,$60,$60,$7E,$3C,$66,$66,$66,$7C,$60
       .byte $62,$3C,$18,$18,$18,$18,$0C,$06,$42,$7E,$3C,$66,$66,$3C,$3C,$66
       .byte $66,$3C,$3C,$46,$06,$3E,$66,$66,$66,$3C,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$30,$60,$78,$F8,$B8,$0C
       .byte $06,$04,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$18,$30,$78,$F8,$B8,$18
       .byte $0C,$08,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$60,$30,$78,$F8,$B8,$3C
       .byte $28,$40,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$66,$FE,$CF,$B3,$B3
       .byte $B3,$B3,$CF,$FE,$66,$00,$85,$FF,$85,$FD,$FD,$FD,$FD,$85,$FF,$85
LF7D6: .byte $00,$0A,$14,$1E
LF7DA: .byte $00,$00,$00,$00,$00,$00,$10,$10,$00,$00,$00,$20,$00,$00,$10,$20
       .byte $00,$00,$00,$40,$00,$00,$00,$00,$00,$00,$20,$40
LF7F6: .byte $30,$68
LF7F8: .byte $10,$10,$11,$10,$00,$F0
LF7FE: .byte $40,$80,$78,$D8,$A2,$00,$A9,$00,$95,$00,$9A,$E8,$D0,$FA,$20,$B0
       .byte $F5,$A2,$05,$BD,$F0,$F6,$45,$86,$25,$87,$95,$88,$E0,$04,$B0,$02
       .byte $95,$06,$CA,$10,$EE,$86,$90,$86,$91,$85,$02,$85,$14,$A9,$22,$85
       .byte $24,$85,$1F,$A9,$28,$E8,$86,$08,$20,$17,$F6,$A9,$30,$85,$0A,$E8
       .byte $20,$17,$F6,$A9,$04,$85,$04,$85,$05,$A5,$88,$A4,$E6,$D0,$10,$A4
       .byte $E9,$C0,$20,$90,$02,$E6,$E6,$C0,$1E,$90,$04,$A5,$81,$25,$87,$85
       .byte $06,$85,$07,$AD,$84,$02,$D0,$FB,$85,$02,$85,$2A,$85,$01,$85,$2C
       .byte $A0,$07,$85,$02,$85,$2B,$B1,$DD,$85,$1B,$B1,$E1,$85,$1C,$20,$13
       .byte $F6,$B1,$DF,$85,$1B,$B1,$E3,$85,$1C,$88,$10,$E6,$A9,$40,$85,$21
       .byte $85,$02,$85,$2A,$C8,$84,$1B,$84,$1C,$A9,$08,$85,$0B,$A5,$C0,$85
       .byte $D9,$A5,$CC,$85,$DB,$A0,$09,$85,$2B,$85,$02,$85,$2A,$A5,$8C,$85
       .byte $09,$A5,$89,$85,$07,$85,$02,$A5,$8D,$C0,$01,$D0,$02,$A5,$8C,$85
       .byte $09,$B1,$D9,$85,$1C,$20,$15,$F6,$B1,$DB,$85,$1C,$88,$D0,$E6,$85
       .byte $02,$85,$2A,$A5,$8B,$85,$09,$A9,$09,$85,$95,$B1,$D9,$85,$1C,$EA
       .byte $EA,$EA,$EA,$EA,$B1,$DB,$85,$1C,$A6,$95,$B5,$B6,$85,$D9,$B5,$C2
       .byte $85,$DB,$A0,$0F,$A9,$00,$85,$02,$85,$2A,$85,$0E,$85,$0F,$85,$08
       .byte $B1,$D9,$85,$1C,$B5,$CD,$85,$94,$B5,$AB,$29,$0F,$85,$F6,$B1,$DB
       .byte $88,$85,$1C,$B5,$97,$29,$07,$85,$04,$C9,$05,$D0,$04,$A9,$C8,$D0
       .byte $03,$A9,$BD,$EA,$85,$D7,$B1,$D9,$85,$1C,$B5,$97,$30,$1E,$A6,$F6
       .byte $E0,$03,$B1,$DB,$CA,$10,$FD,$85,$10,$B0,$03,$20,$16,$F6,$88,$85
       .byte $1C,$A6,$95,$B5,$AB,$85,$20,$A5,$8C,$4C,$66,$F1,$EA,$EA,$85,$2C
       .byte $A6,$95,$B5,$AB,$85,$20,$A5,$F6,$38,$E9,$06,$AA,$B1,$DB,$88,$85
       .byte $1C,$A5,$8C,$CA,$10,$FD,$85,$10,$85,$02,$85,$2A,$85,$06,$B1,$D7
       .byte $85,$1B,$A5,$93,$05,$07,$85,$93,$85,$2C,$B1,$D9,$85,$1C,$C0,$06
       .byte $A5,$92,$05,$07,$85,$92,$85,$2C,$B1,$DB,$85,$1C,$90,$0D,$88,$8D
       .byte $2B,$00,$A5,$94,$45,$86,$25,$87,$4C,$68,$F1,$A5,$8C,$88,$85,$02
       .byte $85,$2A,$85,$06,$B1,$D7,$85,$1B,$A5,$93,$05,$07,$85,$93,$85,$2C
       .byte $B1,$D9,$85,$1C,$EA,$A5,$92,$05,$07,$85,$92,$85,$2C,$B1,$DB,$85
       .byte $1C,$88,$85,$02,$85,$2A,$A9,$00,$85,$1B,$B1,$D9,$85,$1C,$A6,$95
       .byte $24,$92,$10,$02,$86,$90,$A5,$93,$05,$07,$10,$02,$86,$91,$B1,$DB
       .byte $85,$1C,$85,$2C,$88,$A5,$95,$F0,$6B,$A6,$8B,$C9,$05,$D0,$02,$A6
       .byte $89,$85,$02,$85,$2A,$A9,$AA,$85,$0D,$85,$0F,$4A,$85,$0E,$86,$08
       .byte $B1,$D9,$85,$1C,$C6,$95,$B1,$DB,$85,$1C,$88,$85,$02,$85,$2A,$E4
       .byte $89,$D0,$09,$A9,$00,$85,$0B,$A5,$8B,$4C,$1C,$F2,$A5,$8A,$85,$08
       .byte $B1,$D9,$85,$1C,$20,$16,$F6,$B1,$DB,$85,$1C,$88,$85,$02,$85,$2A
       .byte $86,$08,$B1,$D9,$85,$1C,$A6,$95,$B5,$B6,$85,$D9,$B5,$C2,$85,$F6
       .byte $EA,$B1,$DB,$85,$1C,$A5,$F6,$85,$DB,$A9,$00,$85,$92,$85,$93,$85
       .byte $0D,$4C,$F0,$F0,$85,$02,$85,$2A,$B1,$D9,$85,$1C,$20,$15,$F6,$20
       .byte $16,$F6,$B1,$DB,$85,$1C,$88,$10,$EB,$A0,$0F,$A5,$8D,$85,$02,$85
       .byte $2A,$C0,$0F,$D0,$02,$A5,$8C,$85,$09,$A5,$B5,$85,$D9,$A5,$C1,$85
       .byte $DB,$B1,$D9,$85,$1C,$B1,$DB,$88,$85,$1C,$C0,$06,$B0,$DD,$85,$02
       .byte $85,$2A,$A5,$8C,$85,$09,$A2,$00,$86,$1C,$86,$2B,$E8,$86,$04,$86
       .byte $05,$85,$10,$85,$11,$A9,$10,$85,$21,$A5,$88,$85,$06,$85,$07,$A2
       .byte $07,$85,$02,$85,$2A,$BD,$A8,$F6,$85,$1B,$BD,$B0,$F6,$85,$1C,$EA
       .byte $BD,$C0,$F6,$A8,$BD,$B8,$F6,$85,$1B,$84,$1C,$85,$2B,$CA,$10,$E1
       .byte $A9,$1A,$8D,$96,$02,$A5,$81,$29,$01,$AA,$0A,$A8,$B5,$E7,$29,$F0
       .byte $4A,$D0,$02,$A9,$50,$99,$DD,$00,$B5,$E7,$29,$0F,$0A,$0A,$0A,$99
       .byte $E1,$00,$A0,$00,$20,$9E,$F6,$10,$20,$B5,$EA,$F0,$51,$29,$40,$F0
       .byte $31,$A9,$04,$95,$15,$D6,$EA,$B5,$EA,$29,$1F,$C9,$10,$90,$0A,$48
       .byte $29,$03,$69,$02,$95,$17,$68,$A0,$04,$94,$19,$C9,$00,$D0,$04,$A9
       .byte $00,$95,$EA,$AD,$82,$02,$3D,$FE,$F7,$F0,$04,$A9,$06,$95,$8E,$4C
       .byte $2F,$F4,$B5,$EA,$95,$19,$A9,$0C,$95,$15,$8A,$69,$06,$95,$17,$D6
       .byte $EA,$B5,$EA,$29,$0F,$D0,$04,$A9,$00,$95,$EA,$4C,$2F,$F4,$A5,$83
       .byte $C9,$08,$A9,$02,$B0,$22,$A5,$E6,$F0,$06,$A9,$00,$95,$19,$F0,$EB
       .byte $A5,$EA,$05,$EB,$D0,$29,$A5,$82,$49,$40,$C9,$E0,$90,$21,$A5,$82
       .byte $45,$81,$29,$3F,$F0,$19,$A5,$82,$29,$03,$09,$04,$85,$17,$38,$E9
       .byte $01,$85,$18,$A9,$01,$85,$15,$85,$16,$85,$19,$85,$1A,$D0,$BC,$B5
       .byte $8E,$4A,$4A,$4A,$4A,$A8,$C0,$0A,$90,$02,$A0,$09,$A9,$00,$C0,$05
       .byte $90,$02,$A9,$01,$85,$FB,$B9,$97,$00,$85,$FA,$4A,$4A,$4A,$4A,$29
       .byte $07,$85,$F8,$C9,$02,$A9,$20,$90,$06,$A9,$FF,$85,$FB,$A9,$10,$85
       .byte $F7,$A9,$03,$95,$15,$B9,$EC,$00,$85,$F9,$A9,$7F,$85,$FD,$A5,$FB
       .byte $85,$FE,$A5,$FA,$29,$07,$0A,$0A,$09,$03,$A8,$A5,$FB,$85,$F6,$18
       .byte $B9,$DA,$F7,$65,$F9,$C9,$A0,$90,$02,$E9,$A0,$85,$FC,$BD,$F6,$F7
       .byte $38,$E5,$FC,$B0,$04,$49,$FF,$E6,$F6,$C5,$FD,$B0,$06,$85,$FD,$A5
       .byte $F6,$85,$FE,$88,$98,$29,$03,$D0,$D2,$A5,$FD,$C5,$F7,$90,$0F,$A9
       .byte $0F,$95,$15,$A9,$1F,$95,$17,$A9,$01,$95,$19,$4C,$2F,$F4,$C6,$F7
       .byte $45,$F7,$4A,$4A,$95,$19,$A4,$FE,$C8,$B9,$F8,$F7,$18,$65,$F8,$95
       .byte $17,$A5,$81,$29,$1F,$D0,$0A,$A5,$82,$0A,$0A,$0A,$45,$82,$0A,$26
       .byte $82,$A5,$E6,$D0,$0E,$A2,$09,$A9,$FF,$85,$96,$20,$24,$F6,$CA,$E0
       .byte $05,$B0,$F8,$AD,$84,$02,$D0,$FB,$A0,$82,$84,$02,$84,$01,$84,$00
       .byte $84,$02,$84,$02,$84,$02,$85,$00,$E6,$81,$D0,$09,$E6,$E9,$E6,$E5
       .byte $D0,$03,$38,$66,$E5,$A0,$FF,$AD,$82,$02,$29,$08,$D0,$02,$A0,$0F
       .byte $98,$A0,$00,$24,$E5,$10,$04,$29,$F7,$A4,$E5,$84,$86,$06,$86,$85
       .byte $87,$A9,$2C,$85,$02,$8D,$96,$02,$A5,$E6,$D0,$0C,$A2,$04,$A9,$01
       .byte $85,$96,$20,$24,$F6,$CA,$10,$FA,$AD,$80,$02,$A8,$29,$0F,$85,$85
       .byte $98,$4A,$4A,$4A,$4A,$85,$84,$C8,$F0,$04,$A9,$00,$85,$E5,$A5,$82
       .byte $D0,$04,$E6,$82,$D0,$18,$20,$9E,$F6,$30,$05,$A2,$E5,$4C,$04,$F0
       .byte $A0,$00,$B0,$23,$A5,$83,$F0,$04,$C6,$83,$10,$1D,$E6,$80,$20,$B0
       .byte $F5,$A5,$80,$29,$07,$85,$80,$85,$E5,$09,$A0,$A8,$C8,$84,$E7,$A9
       .byte $AA,$85,$E8,$A0,$1E,$84,$E6,$84,$83,$A5,$E6,$F0,$03,$4C,$0F,$F0
       .byte $A2,$01,$B5,$EA,$F0,$06,$29,$10,$D0,$20,$F0,$2A,$B5,$84,$4A,$B0
       .byte $16,$F6,$8E,$B4,$8E,$C0,$B2,$90,$0E,$F8,$B5,$E7,$69,$00,$95,$E7
       .byte $D8,$A9,$8F,$95,$EA,$D0,$0B,$4A,$B0,$0C,$D6,$8E,$B5,$8E,$C9,$06
       .byte $B0,$04,$A9,$06,$95,$8E,$B5,$EA,$29,$1F,$C9,$17,$B0,$08,$B5,$90
       .byte $30,$04,$A9,$5C,$95,$EA,$CA,$10,$B9,$A2,$00,$20,$71,$F6,$99,$B5
       .byte $00,$C0,$0B,$F0,$06,$18,$69,$10,$99,$B6,$00,$E8,$20,$71,$F6,$99
       .byte $C1,$00,$C0,$0B,$F0,$06,$18,$69,$10,$99,$C2,$00,$A5,$81,$29,$70
       .byte $D0,$3D,$A5,$80,$29,$04,$F0,$37,$A5,$81,$29,$0F,$AA,$E0,$0A,$B0
       .byte $2E,$B5,$97,$4A,$4A,$4A,$4A,$29,$07,$A8,$A5,$81,$45,$82,$4A,$90
       .byte $05,$88,$10,$02,$A0,$00,$4A,$90,$07,$C8,$C0,$06,$90,$02,$A0,$05
       .byte $98,$0A,$0A,$0A,$0A,$85,$F6,$B5,$97,$29,$8F,$05,$F6,$95,$97,$4C
       .byte $0F,$F0,$A5,$81,$29,$01,$85,$81,$A2,$01,$A9,$06,$95,$8E,$A9,$00
       .byte $95,$19,$CA,$10,$F5,$A2,$0D,$A9,$F7,$95,$D7,$CA,$CA,$10,$FA,$A2
       .byte $09,$A9,$01,$95,$A1,$BD,$F6,$F6,$95,$CD,$18,$A5,$80,$29,$03,$A8
       .byte $8A,$79,$D6,$F7,$A8,$B9,$C8,$F6,$95,$97,$A9,$60,$95,$AB,$A9,$50
       .byte $95,$B5,$95,$B9,$95,$C3,$CA,$10,$D8,$60,$18,$69,$2E,$A8,$29,$0F
       .byte $85,$F6,$98,$4A,$4A,$4A,$4A,$A8,$18,$65,$F6,$C9,$0F,$90,$03,$E9
       .byte $0F,$C8,$49,$07,$0A,$0A,$0A,$0A,$60,$20,$F8,$F5,$95,$20,$85,$02
       .byte $88,$10,$FD,$95,$10,$60,$D6,$A1,$10,$2B,$B5,$97,$4A,$4A,$4A,$4A
       .byte $29,$07,$38,$E9,$01,$10,$09,$B5,$EC,$18,$65,$96,$95,$EC,$A9,$00
       .byte $95,$A1,$B5,$EC,$18,$65,$96,$C9,$C8,$90,$02,$A9,$9F,$C9,$A0,$90
       .byte $02,$A9,$00,$95,$EC,$B5,$EC,$20,$F8,$F5,$85,$F6,$88,$88,$88,$16
       .byte $97,$C0,$06,$76,$97,$98,$05,$F6,$95,$AB,$A9,$50,$95,$B5,$95,$C3
       .byte $95,$B9,$60,$B5,$8E,$4A,$4A,$4A,$4A,$A8,$B5,$8E,$29,$0F,$85,$F6
       .byte $B5,$EA,$F0,$0D,$29,$40,$F0,$09,$B5,$8E,$4A,$4A,$4A,$A9,$A0,$90
       .byte $0B,$A5,$F6,$4A,$4A,$4A,$A9,$60,$90,$02,$A9,$80,$38,$E5,$F6,$60
       .byte $AD,$82,$02,$4A,$6A,$60,$25,$0C,$25,$0D,$00,$AD,$A9,$E9,$A9,$ED
       .byte $41,$0F,$00,$50,$58,$5C,$56,$53,$11,$F0,$00,$BA,$8A,$BA,$A2,$3A
       .byte $80,$FE,$00,$E9,$AB,$AF,$AD,$E9,$00,$00,$50,$40,$30,$20,$10,$10
       .byte $20,$30,$40,$50,$40,$31,$22,$13,$04,$15,$14,$23,$32,$41,$46,$36
       .byte $20,$16,$05,$00,$16,$20,$36,$46,$05,$15,$25,$15,$05,$05,$15,$25
       .byte $15,$05,$4A,$1E,$0C,$06,$00,$08,$1A,$D8,$44,$88,$24,$82,$4A,$12
       .byte $DC,$42,$3C,$66,$66,$66,$66,$66,$66,$3C,$3C,$18,$18,$18,$18,$18
       .byte $38,$18,$7E,$60,$60,$3C,$06,$06,$46,$3C,$3C,$46,$06,$0C,$0C,$06
       .byte $46,$3C,$0C,$0C,$0C,$7E,$4C,$2C,$1C,$0C,$7C,$46,$06,$06,$7C,$60
       .byte $60,$7E,$3C,$66,$66,$66,$7C,$60,$62,$3C,$18,$18,$18,$18,$0C,$06
       .byte $42,$7E,$3C,$66,$66,$3C,$3C,$66,$66,$3C,$3C,$46,$06,$3E,$66,$66
       .byte $66,$3C,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$30,$60,$78,$F8,$B8,$0C,$06,$04,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$18,$30,$78,$F8,$B8,$18,$0C,$08,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$60,$30,$78,$F8,$B8,$3C,$28,$40,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$66,$FE,$CF,$B3,$B3,$B3,$B3,$CF,$FE,$66,$00,$85,$FF
       .byte $85,$FD,$FD,$FD,$FD,$85,$FF,$85,$00,$0A,$14,$1E,$00,$00,$00,$00
       .byte $00,$00,$10,$10,$00,$00,$00,$20,$00,$00,$10,$20,$00,$00,$00,$40
       .byte $00,$00,$00,$00,$00,$00,$20,$40,$30,$68,$10,$10,$11,$10,$00,$F0
       .byte $40,$80
