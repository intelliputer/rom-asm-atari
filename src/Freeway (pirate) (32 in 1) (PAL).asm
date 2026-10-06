; Disassembly of roms/Freeway (pirate) (32 in 1) (PAL).bin
; Disassembled Tue Oct  6 15:21:48 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Freeway (pirate) (32 in 1) (PAL).bin
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
       LDA    #$FF    
       STA    PF0     
       STA    PF2     
       NOP            
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
       LDA    #$39    
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
       LDA    #$4B    
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
LF6A8: .byte $00,$00,$00,$00,$00,$00,$00,$00
LF6B0: .byte $00,$00,$00,$00,$00,$00,$00,$00
LF6B8: .byte $00,$00,$00,$00,$00,$00,$00,$00
LF6C0: .byte $00,$00,$00,$00,$00,$00,$00,$00
LF6C8: .byte $50,$40,$30,$20,$10,$10,$20,$30,$40,$50,$40,$31,$22,$13,$04,$15
       .byte $14,$23,$32,$41,$46,$36,$20,$16,$05,$00,$16,$20,$36,$46,$05,$15
       .byte $25,$15,$05,$05,$15,$25,$15,$05
LF6F0: .byte $76,$0E,$1A,$07,$00,$44
LF6F6: .byte $24,$82,$1A,$42,$88,$94,$0C,$4A,$44,$12,$3C,$66,$66,$66,$66,$66
       .byte $66,$3C,$3C,$18,$18,$18,$18,$18,$38,$18,$7E,$60,$60,$3C,$06,$06
       .byte $46,$3C,$3C,$46,$06,$0C,$0C,$06,$46,$3C,$0C,$0C,$0C,$7E,$4C,$2C
       .byte $1C,$0C,$7C,$46,$06,$06,$7C,$60,$60,$7E,$3C,$66,$66,$66,$7C,$60
       .byte $62,$3C,$18,$18,$18,$18,$0C,$06,$42,$7E,$3C,$66,$66,$3C,$3C,$66
       .byte $66,$3C,$3C,$46,$06,$3E,$66,$66,$66,$3C,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$62,$79,$3E,$5C,$03
       .byte $03,$1E,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$E6,$7C,$7F,$BB,$12
       .byte $04,$08,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$60,$87,$7C,$7F,$BB,$02
       .byte $02,$04,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$85,$FF,$85,$FD,$FD
       .byte $FD,$FD,$85,$FF,$85,$00,$66,$FE,$CF,$B3,$B3,$B3,$B3,$CF,$FE,$66
LF7D6: .byte $00,$0A,$14,$1E
LF7DA: .byte $00,$00,$00,$00,$00,$00,$10,$10,$00,$00,$00,$20,$00,$00,$10,$20
       .byte $00,$00,$00,$40,$00,$00,$00,$00,$00,$00,$20,$40
LF7F6: .byte $30,$68
LF7F8: .byte $10,$10,$11,$10,$00,$F0
LF7FE: .byte $40,$80
