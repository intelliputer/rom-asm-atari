; Disassembly of roms/Spider-Man.bin
; Disassembled Tue Oct  6 15:22:44 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Spider-Man.bin
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
PF0     =  $0D
PF1     =  $0E
PF2     =  $0F
RESP0   =  $10
RESP1   =  $11
AUDC0   =  $15
AUDF0   =  $17
AUDV0   =  $19
AUDV1   =  $1A
GRP0    =  $1B
GRP1    =  $1C
HMP0    =  $20
HMP1    =  $21
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
CXCLR   =  $2C
CXP0FB  =  $32
CXPPMM  =  $37
INPT4   =  $3C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296
LF0A9   =   $F0A9
LF1D3   =   $F1D3
LF1DE   =   $F1DE
LF1E0   =   $F1E0
LF420   =   $F420
LF8D0   =   $F8D0
LFA4E   =   $FA4E
LFC27   =   $FC27

       ORG $F000

START:
       CLD            
       LDX    #$00    
       TXA            
LF004: STA    VSYNC,X 
       TXS            
       INX            
       BNE    LF004   
       INX            
       STX    CTRLPF  
       STX    $ED     
       LDX    #$40    
       STX    $EE     
       INX            
       STX    $F5     
       JSR    LFBAD   
LF019: LDA    #$42    
       STA    WSYNC   
       STA    VBLANK  
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    WSYNC   
       STA    VSYNC   
       INC    $94     
       LDA    #$9C    
       STA    TIM64T  
       LDA    $E9     
       BEQ    LF03F   
       JMP    LF19D   
LF03F: BIT    $EE     
       BVC    LF04F   
       LDA    $94     
       AND    #$1F    
       BNE    LF04F   
       INC    $E4     
       BNE    LF04F   
       INC    $EA     
LF04F: LDA    $8E     
       BPL    LF0C9   
       LDA    $8D     
       BEQ    LF0C9   
       LDA    $89     
       ASL            
       ASL            
       STA    $F6     
       LDA    $8A     
       ASL            
       ASL            
       STA    $F7     
       LDA    $8E     
       LSR            
       BCS    LF07C   
       LDA    $F6     
       ADC    $8C     
       LDX    $8D     
       BMI    LF076   
       BCC    LF088   
       DEC    $8A     
       BCS    LF088   
LF076: BCC    LF0A8   
       INC    $8A     
       BCS    LF0A8   
LF07C: LDA    $8C     
       SBC    $F6     
       LDX    $8D     
       BPL    LF0A4   
       BCS    LF088   
       DEC    $8A     
LF088: STA    $8C     
       LDA    $F7     
       CLC            
       ADC    $8B     
       BCC    LF093   
       INC    $89     
LF093: STA    $8B     
       LDA    $8A     
       BPL    LF0A2   
       TXA            
       EOR    #$E0    
       STA    $8D     
       LDA    #$00    
       STA    $8A     
LF0A2: BPL    LF0C9   
LF0A4: BCS    LF0A8   
       INC    $8A     
LF0A8: STA    $8C     
       LDA    $8B     
       SEC            
       SBC    $F7     
       BCS    LF0B3   
       DEC    $89     
LF0B3: STA    $8B     
       LDA    $8A     
       CMP    $87     
       BCC    LF0C9   
       LDA    $8E     
       EOR    #$01    
       STA    $8E     
       LDA    $88     
       STA    $89     
       LDA    $87     
       STA    $8A     
LF0C9: JSR    LFB3F   
       LDX    #$05    
LF0CE: LDY    #$00    
       LDA    $CC,X   
       DEC    $DE,X   
       BNE    LF11F   
       CMP    #$0F    
       BCS    LF0DD   
       JMP    LF165   
LF0DD: CMP    #$16    
       BCC    LF0F0   
       CMP    #$32    
       BCC    LF0FF   
       CMP    #$40    
       BCC    LF0ED   
       CMP    #$4E    
       BCC    LF112   
LF0ED: JMP    LF155   
LF0F0: JSR    LF8FB   
       STY    $DE,X   
       TAY            
       LDA    LFF7C,Y 
       STA    $C6,X   
       LDY    #$00    
       BEQ    LF155   
LF0FF: CMP    #$24    
       BCS    LF107   
       ADC    #$0E    
       BNE    LF11B   
LF107: CMP    #$2B    
       BCS    LF10D   
       ADC    #$07    
LF10D: CLC            
       ADC    #$15    
       BNE    LF115   
LF112: CLC            
       ADC    #$07    
LF115: LDY    #$06    
       STY    $DE,X   
       LDY    #$05    
LF11B: STA    $CC,X   
       BNE    LF155   
LF11F: CMP    #$0F    
       BCC    LF165   
       CMP    #$16    
       BCC    LF155   
       CMP    #$32    
       BCS    LF13B   
       LDY    #$01    
       CMP    #$1D    
       BCC    LF150   
       CMP    #$24    
       BCC    LF14B   
       CMP    #$2B    
       BCC    LF150   
       BCS    LF14B   
LF13B: CMP    #$40    
       BCS    LF155   
       PHA            
       LDA    $E5     
       EOR    #$40    
       STA    $E5     
       PLA            
       BIT    $E5     
       BVS    LF150   
LF14B: SEC            
       SBC    #$07    
       BNE    LF153   
LF150: CLC            
       ADC    #$07    
LF153: STA    $CC,X   
LF155: STX    $F6     
       JSR    LFB1E   
       LDX    $F6     
       DEX            
       BEQ    LF162   
       JMP    LF0CE   
LF162: JMP    LF19D   
LF165: LDA    $94     
       AND    #$03    
       BNE    LF155   
       STX    $F7     
       LDX    $EF     
       LDA    $AF     
       LDY    $AE     
       BMI    LF17B   
       CLC            
       ADC    LFED4,X 
       BNE    LF17F   
LF17B: SEC            
       SBC    LFED4,X 
LF17F: STA    $AF     
LF181: CMP    #$56    
       BCS    LF189   
       CMP    #$05    
       BCS    LF190   
LF189: TYA            
       EOR    #$80    
       STA    $AE     
       LDA    $AF     
LF190: JSR    LF91C   
       TAY            
       DEY            
       LDX    $F7     
       STY    $C6,X   
       LDY    #$00    
       BEQ    LF155   
LF19D: BIT    $E6     
       BVC    LF1B2   
       LDA    $E7     
       ORA    $E8     
       BNE    LF1DE   
       LDA    $B0     
       BNE    LF1DE   
       INC    $EF     
       LDX    #$6A    
       JSR    LFBA2   
LF1B2: BIT    $E5     
       BPL    LF1DE   
       LDY    #$0C    
       JSR    LFB1E   
       DEC    $E4     
       BNE    LF1DE   
       LDA    $E5     
       AND    #$02    
       BNE    LF1C9   
       INC    $E5     
       BNE    LF1DE   
LF1C9: INC    $E9     
       LDY    $B6     
       CPY    #$08    
       BNE    LF1D6   
       JSR    LFBDA   
       BNE    LF1DE   
LF1D6: INC    $B6     
       LDA    #$0A    
       STA    $E4     
       BRK            
       BMI    LF181   
       ORA    ($B4,X) 
       BCS    LF1D3   
       AND    #$D6    
       .byte $82 ;.NOP
LF1E6: BPL    LF20D   
       LDA    $B2,X   
       STA    $82,X   
       LDA    $B4,X   
       STA    AUDC0,X 
       LDA    LFFA2,Y 
       BEQ    LF209   
       LSR            
       LSR            
       LSR            
       STA    AUDF0,X 
       LDA    LFFA2,Y 
       AND    #$07    
       TAY            
       LDA    LFF9A,Y 
       STA    AUDV0,X 
       INC    $B0,X   
       BNE    LF20D   
LF209: STA    AUDV0,X 
       STA    $B0,X   
LF20D: DEX            
       BPL    LF1E0   
LF210: LDA    INTIM   
       BMI    LF210   
       INX            
       STX    VBLANK  
       STA    WSYNC   
       LDA    #$98    
       STA    TIM64T  
       INX            
       LDA    $8A     
       ASL            
       STA    $F9     
LF225: SEC            
       SBC    $89     
       STA    $F6,X   
       DEX            
       BPL    LF225   
       LDA    $86     
       BPL    LF23D   
       AND    #$20    
       BEQ    LF239   
       LDA    #$2E    
       BNE    LF24D   
LF239: LDA    #$27    
       BNE    LF24D   
LF23D: LDX    $8D     
       BEQ    LF247   
       BMI    LF24B   
       LDA    #$00    
       BEQ    LF24D   
LF247: LDA    #$1A    
       BNE    LF24D   
LF24B: LDA    #$0D    
LF24D: STA    $85     
       LDX    $89     
       STX    $F8     
       LDY    $99     
       CPY    #$04    
       BCS    LF263   
       LDA    $E5     
       AND    #$03    
       TAX            
       LDA    LFED1,X 
       BNE    LF26C   
LF263: LDA    $EF     
       CLC            
       ADC    $EA     
       TAX            
       LDA    LFF8E,X 
LF26C: STA    COLUPF  
       STY    $9A     
       JSR    LF9B8   
       STY    $BD     
       LDY    $9D     
       STY    $9B     
       LDX    #$01    
LF27B: LDA    $C0,X   
       BPL    LF282   
       INX            
       BPL    LF27B   
LF282: STA    $B9     
       LDA    $CC,X   
       STA    $B7     
       LDA    $C6,X   
       STA    $BA     
       INX            
       STX    $BF     
       STA    $BB     
       LDX    #$02    
       STA    WSYNC   
       JSR    LFA7F   
LF298: LDY    INTIM   
       BMI    LF298   
       STY    WSYNC   
       LDX    #$AB    
       TXS            
       TAX            
       LDA    $92     
       JSR    LF931   
       STA    WSYNC   
       STA    HMOVE   
       STA    WSYNC   
       STX    HMP0    
       STX    COLUBK  
       LDA    $B6     
       CLC            
       ADC    $EA     
       TAY            
       STA    CXCLR   
       LDA    LFECB,Y 
       STA    WSYNC   
       STA    COLUBK  
       LDY    $9E     
       BEQ    LF2DF   
       LDY    $9B     
       LDA    ($97),Y 
       STA    PF1     
       INY            
       LDA    ($97),Y 
       STA    PF2     
       STA    WSYNC   
       CPY    $9C     
       BCC    LF2D9   
       JSR    LF9B8   
LF2D9: INY            
       STY    $9B     
       JMP    LF3AC   
LF2DF: STA    WSYNC   
       LDA    $BA     
       STA    HMP1    
       BEQ    LF2F6   
       AND    #$0F    
       TAY            
       NOP            
       NOP            
       NOP            
       NOP            
LF2EE: DEY            
       BNE    LF2EE   
       STA.wy $0011,Y 
       STY    $BA     
LF2F6: STA    WSYNC   
       LDY    $9B     
       LDA    ($97),Y 
       STA    PF1     
       INY            
       LDA    ($97),Y 
       STA    PF2     
       INX            
       CPY    $9C     
       BCC    LF321   
       LDY    $9A     
       LDA    ($95),Y 
       STA    $97     
       INY            
       LDA    ($95),Y 
       STA    $98     
       INY            
       STY    $9A     
       LDY    #$00    
       LDA    ($97),Y 
       STA    $9C     
       INY            
       STY    $9B     
       BNE    LF355   
LF321: INY            
       STY    $9B     
       LDA    $BB     
       BEQ    LF340   
       CPX    $B9     
       BCC    LF355   
       LDY    $B7     
       LDA    LFE00,Y 
       STA    $BD     
       LDA    LFE55,Y 
       BEQ    LF33C   
       INC    $B7     
       BNE    LF355   
LF33C: STA    $BB     
       BEQ    LF355   
LF340: LDY    $BF     
       LDA.wy $00C0,Y 
       STA    $B9     
       LDA.wy $00CC,Y 
       STA    $B7     
       LDA.wy $00C6,Y 
       STA    $BA     
       INC    $BF     
       STA    $BB     
LF355: STA    WSYNC   
       STA    HMOVE   
       STA    COLUP1  
       LDA    $BD     
       STA    GRP1    
       CPX    $91     
       BCC    LF3A4   
       DEC    $F8     
       BEQ    LF385   
       BMI    LF391   
       LDY    #$10    
       STY    GRP0    
       LDA    $F7     
       CMP    #$01    
       CLC            
       BPL    LF37A   
       ADC    $F9     
       LDY    #$00    
       BEQ    LF37E   
LF37A: LDY    $8D     
       ADC    $F6     
LF37E: STA    $F7     
       STY    HMP0    
       JMP    LF3A4   
LF385: LDA    CXPPMM  
       STA    $8F     
       STA    CXCLR   
       LDA    #$00    
       STA    HMP0    
       BEQ    LF3A4   
LF391: LDY    $85     
       LDA    LFDCC,Y 
       STA    COLUP0  
       LDA    LFD98,Y 
       STA    GRP0    
       BEQ    LF3A4   
       INC    $85     
       LDA    CXPPMM  
       PHA            
LF3A4: INX            
       CPX    #$A0    
       BCC    LF3AC   
       JMP    LF44D   
LF3AC: STA    WSYNC   
       INX            
       LDA    $BA     
       STA    HMP1    
       BEQ    LF3C5   
       AND    #$0F    
       TAY            
       NOP            
       NOP            
       NOP            
LF3BB: DEY            
       BNE    LF3BB   
       STA.wy $0011,Y 
       STY    $BA     
       BEQ    LF3EB   
LF3C5: LDY    #$04    
       CPY    $9A     
       BCS    LF3D5   
       LDA    $EF     
       ADC    $EA     
       TAY            
       LDA    LFF8E,Y 
       STA    COLUPF  
LF3D5: CPX    $B9     
       BCC    LF3EB   
       LDY    $B7     
       LDA    LFE00,Y 
       STA    $BD     
       LDA    LFE55,Y 
       BEQ    LF3E9   
       INC    $B7     
       BNE    LF3EB   
LF3E9: STA    $BB     
LF3EB: STA    WSYNC   
       STA    HMOVE   
       STA    COLUP1  
       LDA    $BD     
       STA    GRP1    
       CPX    $91     
       BCS    LF400   
       LDY    #$05    
LF3FB: DEY            
       BPL    LF3FB   
       BMI    LF441   
LF400: DEC    $F8     
       BEQ    LF422   
       BMI    LF42E   
       LDY    #$10    
       STY    GRP0    
       LDA    $F7     
       CMP    #$01    
       CLC            
       BPL    LF417   
       ADC    $F9     
LF413: LDY    #$00    
       BEQ    LF41B   
LF417: LDY    $8D     
       ADC    $F6     
LF41B: STA    $F7     
       STY    HMP0    
       JMP    LF441   
LF422: LDA    CXPPMM  
       STA    $8F     
       STA    CXCLR   
       LDA    #$00    
       STA    HMP0    
       BEQ    LF441   
LF42E: LDY    $85     
       LDA    LFDCC,Y 
       STA    COLUP0  
       LDA    LFD98,Y 
       STA    GRP0    
       BEQ    LF441   
       INC    $85     
       LDA    CXPPMM  
       PHA            
LF441: LDA    #$00    
       STA    HMP1    
       INX            
       CPX    #$A0    
       BCS    LF44D   
       JMP    LF2F6   
LF44D: STA    WSYNC   
       LDA    #$9C    
       STA    TIM64T  
       LDX    #$00    
       STX    PF1     
       STX    PF2     
       STX    GRP0    
       STX    GRP1    
       STX    COLUBK  
       STA    WSYNC   
       DEX            
       TXS            
       LDX    $EA     
       LDA    LFDC1,X 
       STA    COLUBK  
       STA    COLUPF  
       LDA    CXP0FB  
       STA    $AC     
       BIT    $F5     
       BVS    LF485   
       BIT    $EE     
       BVC    LF485   
       LDA    $F5     
       LSR            
       BCS    LF485   
       LDX    #$07    
       JSR    LFA7F   
       BMI    LF4CB   
LF485: LDA    $EE     
       AND    #$C0    
       BEQ    LF48D   
       LDA    #$C8    
LF48D: STA    COLUP1  
       LDA    #$44    
       STA    COLUP0  
       STA    WSYNC   
       LDA    #$05    
       STA    CTRLPF  
       LDA    #$07    
       STA    NUSIZ0  
       LDX    #$01    
       LDA    #$44    
       JSR    LF931   
       LDA    $AD     
       DEX            
       JSR    LF931   
       INY            
       LDA    #$F0    
       STA    PF0     
       LDA    $EE     
       STA    NUSIZ1  
       STA    WSYNC   
       STA    HMOVE   
LF4B7: STA    WSYNC   
       LDA    LFEAA,Y 
       STA    GRP1    
       BEQ    LF4CB   
       INY            
       LDA    LFEC6,X 
       STA    GRP0    
       BEQ    LF4C9   
       INX            
LF4C9: BPL    LF4B7   
LF4CB: STA    PF0     
       STA    GRP0    
       TAY            
       LDX    #$0B    
LF4D2: LDA    $A0,X   
       BMI    LF4DC   
       INY            
       DEX            
       BPL    LF4D2   
       LDY    #$FF    
LF4DC: STY    $81     
       LDX    $9A     
       DEX            
       DEX            
       STX    $AA     
       LDA    #$01    
       STA    CTRLPF  
LF4E8: LDA    INTIM   
       BMI    LF4E8   
       LDA    #$99    
       STA    TIM64T  
       BIT    $EE     
       BVC    LF4F9   
LF4F6: JMP    LF8EC   
LF4F9: BIT    $E6     
       BVC    LF504   
       DEC    $E4     
       BPL    LF4F6   
       JMP    LF6A7   
LF504: BMI    LF51F   
       LDA    $94     
       LDX    $EF     
       AND    LFF94,X 
       BNE    LF51F   
       LDY    $BE     
       INY            
       CPY    #$90    
       STY    $BE     
       BCC    LF51F   
       JSR    LF93E   
       LDA    #$80    
       STA    $E6     
LF51F: BIT    $86     
       BVC    LF526   
       JMP    LF8C6   
LF526: BIT    $E6     
       BMI    LF534   
       LDX    $BC     
       BEQ    LF537   
       DEC    $BC     
       DEC    $91     
       DEC    $91     
LF534: JMP    LF7EB   
LF537: LDA    $94     
       LSR            
       BCC    LF53F   
       JMP    LF627   
LF53F: LDA    SWCHA   
       BIT    $F5     
       BPL    LF54B   
       INX            
       ASL            
       ASL            
       ASL            
       ASL            
LF54B: STA    $F6     
       LDY    INPT4,X 
       BMI    LF5C8   
       LDA    $8E     
       BPL    LF558   
LF555: JMP    LF61D   
LF558: AND    #$16    
       BNE    LF5A0   
       LDA    $8E     
       AND    #$08    
       BNE    LF598   
       LDA    $F6     
       ASL            
       BCC    LF573   
       ASL            
       BCC    LF57B   
       ASL            
       BCC    LF587   
       ASL            
       BCC    LF59A   
LF570: JMP    LF620   
LF573: LDA    $8E     
       ORA    #$02    
       LDX    #$10    
       BNE    LF581   
LF57B: LDA    $8E     
       ORA    #$05    
       LDX    #$F0    
LF581: STX    $8D     
       STA    $8E     
       BNE    LF5A0   
LF587: LDA    $99     
       CMP    $9F     
       BEQ    LF570   
       JSR    LF9D9   
       LDA    $8E     
       BPL    LF555   
       EOR    #$88    
       STA    $8E     
LF598: BNE    LF5E0   
LF59A: LDA    $8E     
       ORA    #$10    
       STA    $8E     
LF5A0: LDA    $88     
       CMP    #$19    
       BCS    LF620   
       BRK            
       .byte $14 ;.NOP
       DEC    $91     
       DEC    $91     
       LDA    $8D     
       BEQ    LF5BF   
       BMI    LF5B6   
       INC    $93     
       BNE    LF5B8   
LF5B6: DEC    $93     
LF5B8: LDA    $93     
       JSR    LF91C   
       STA    $92     
LF5BF: LDX    #$03    
LF5C1: INC    $87,X   
       DEX            
       BPL    LF5C1   
       BMI    LF620   
LF5C8: LDA    $8E     
       BMI    LF5D5   
       BEQ    LF620   
       JSR    LF9D9   
       LDA    $8E     
       BPL    LF61D   
LF5D5: LDA    #$10    
       BIT    $F6     
       BEQ    LF600   
       ASL            
       BIT    $F6     
       BNE    LF620   
LF5E0: LDA    $99     
       CMP    $9F     
       BEQ    LF620   
       LDA    $88     
       CMP    #$19    
       BCS    LF620   
       INC    $87     
       INC    $88     
       INC    $89     
       LDA    $8A     
       CMP    #$02    
       BCC    LF5FA   
       INC    $8A     
LF5FA: DEC    $91     
       DEC    $91     
       BNE    LF624   
LF600: DEC    $89     
       DEC    $88     
       BNE    LF60C   
       LDX    #$00    
       STX    $87     
       BEQ    LF61D   
LF60C: LDA    $8A     
       CMP    #$02    
       BCC    LF614   
       DEC    $8A     
LF614: DEC    $87     
       INC    $91     
       INC    $91     
       JMP    LF6FB   
LF61D: JSR    LF944   
LF620: LDA    $86     
       BPL    LF650   
LF624: JMP    LF7EB   
LF627: LDA    $86     
       BMI    LF624   
       ASL    $81     
       BCS    LF641   
       LDA    $89     
       ASL            
       ADC    $91     
       ADC    $81     
       LDX    #$04    
LF638: CMP    $C0,X   
       BCS    LF653   
       DEX            
       BNE    LF638   
       BEQ    LF650   
LF641: LDA    $8F     
       BMI    LF64D   
       LDA    $8E     
       BNE    LF650   
       LDA    $AC     
       BMI    LF650   
LF64D: JSR    LF93E   
LF650: JMP    LF8EC   
LF653: LDA    $CC,X   
       CMP    #$0F    
       BCC    LF64D   
       CMP    #$16    
       BCC    LF675   
       CMP    #$24    
       BCC    LF679   
       CMP    #$32    
       BCC    LF67D   
       CMP    #$40    
       BCS    LF64D   
       INC    $E9     
       BRK            
       .byte $3B ;.RLA
       LDA    $E6     
       EOR    #$40    
       STA    $E6     
       BNE    LF6A7   
LF675: LDA    #$30    
       BNE    LF67F   
LF679: LDA    #$50    
       BNE    LF67F   
LF67D: LDA    #$80    
LF67F: BIT    $90     
       BMI    LF68F   
       DEC    $90     
       BPL    LF68F   
       LDY    #$80    
       STY    $E5     
       LDY    #$FF    
       STY    $E4     
LF68F: SED            
       STA    $F6     
       ADC    $E8     
       STA    $E8     
       LDA    $E7     
       ADC    #$00    
       STA    $E7     
       LDA    #$4E    
       STA    $CC,X   
       LDY    #$09    
       JSR    LFB1E   
       BNE    LF6C5   
LF6A7: LDA    #$06    
       STA    $E4     
       SED            
       LDA    $E8     
       BEQ    LF6B7   
       SEC            
       SBC    #$0A    
       STA    $E8     
       BNE    LF6C1   
LF6B7: LDA    $E7     
       BEQ    LF6F7   
       DEC    $E7     
       LDA    #$90    
       STA    $E8     
LF6C1: LDA    #$0A    
       STA    $F6     
LF6C5: LDA    $EB     
       PHA            
       LDA    $F6     
       LDX    #$02    
LF6CC: CLC            
       ADC    $EB,X   
       STA    $EB,X   
       BCC    LF6D8   
       LDA    #$01    
       DEX            
       BPL    LF6CC   
LF6D8: PLA            
       CMP    $EB     
       BEQ    LF6E9   
       CLC            
       LDA    $EE     
       BMI    LF6E7   
       CMP    #$03    
       BEQ    LF6E9   
       SEC            
LF6E7: ROL    $EE     
LF6E9: CLD            
       LDA    $BE     
       SEC            
       SBC    #$03    
       CMP    #$70    
       BCS    LF6F5   
       LDA    #$70    
LF6F5: STA    $BE     
LF6F7: CLD            
LF6F8: JMP    LF8EC   
LF6FB: LDX    $9D     
       LDY    $99     
       BNE    LF705   
       CPX    #$01    
       BEQ    LF6F8   
LF705: LDA    $9E     
       BEQ    LF70F   
       LDA    #$00    
       STA    $9E     
       BEQ    LF72B   
LF70F: LDA    #$02    
       STA    $9E     
       CPX    #$01    
       BEQ    LF71D   
       DEX            
       DEX            
       STX    $9D     
       BNE    LF72B   
LF71D: DEY            
       DEY            
       STY    $99     
       STY    $9A     
       JSR    LF9B8   
       LDX    $9C     
       DEX            
       STX    $9D     
LF72B: LDY    $C0     
       INY            
       INY            
       BNE    LF734   
       JSR    LF755   
LF734: LDX    #$00    
       STX    $F6     
       BEQ    LF74A   
LF73A: JSR    LF910   
       BNE    LF74A   
       LDY    $CC,X   
       LDA    LFE54,Y 
       BEQ    LF74A   
       DEC    $CC,X   
       BNE    LF74E   
LF74A: INC    $C0,X   
       INC    $C0,X   
LF74E: INX            
       CPX    #$06    
       BNE    LF73A   
       BEQ    LF6F8   
LF755: LDA    $D1     
       CMP    #$0F    
       BCS    LF75F   
       LDY    #$00    
       STY    $AE     
LF75F: LDX    #$22    
LF761: LDA    $C0,X   
       STA    $C1,X   
       DEX            
       BPL    LF761   
       LDY    $99     
       BEQ    LF76E   
       DEY            
       DEY            
LF76E: LDA    ($95),Y 
       JSR    LF9CD   
       LDY    #$00    
       CPX    #$04    
       BCC    LF7B4   
       BEQ    LF781   
       LDA    $EF     
       CMP    #$02    
       BCC    LF793   
LF781: BIT    $AE     
       BVS    LF793   
       LDA    #$40    
       STA    $AE     
       LDA    #$05    
       STA    $AF     
       LDA    #$0D    
       STA    $CC     
       BNE    LF7D0   
LF793: BIT    $90     
       BMI    LF7C4   
       CPX    #$0E    
       BCC    LF7A8   
       LDA    #$14    
       STA    $CC     
       JSR    LF8FB   
       TAY            
       LSR            
       BCC    LF7CF   
       BCS    LF7D0   
LF7A8: LDY    #$06    
       CPX    #$08    
       BCS    LF7B0   
       LDY    #$08    
LF7B0: LDA    #$1B    
       BNE    LF7C6   
LF7B4: CPX    #$02    
       BCC    LF7C4   
       LDY    #$0A    
       LDA    $E5     
       AND    #$83    
       STA    $E5     
       LDA    #$37    
       BNE    LF7C6   
LF7C4: LDA    #$53    
LF7C6: STA    $CC     
       LDA    $94     
       AND    #$02    
       BEQ    LF7D0   
       INY            
LF7CF: INX            
LF7D0: LDA    $C1     
       SEC            
       SBC    LFF58,X 
       SEC            
       SBC    $D3     
       STA    $C0     
       LDA    LFF6A,X 
       STA    $D2     
       LDA    LFF58,X 
       STA    $D8     
       LDA    LFF7C,Y 
       STA    $C6     
       RTS            

LF7EB: LDX    $99     
       CPX    $9F     
       BNE    LF7FC   
       BIT    $86     
       BPL    LF851   
       LDA    #$DF    
       STA    $86     
       JMP    LF8C6   
LF7FC: LDA    #$02    
       CMP    $9E     
       BEQ    LF806   
       STA    $9E     
       BPL    LF823   
LF806: LDA    #$00    
       STA    $9E     
       STX    $9A     
       JSR    LF9B8   
       LDX    $9D     
       INX            
       CPX    $9C     
       BCC    LF81F   
       INC    $99     
       INC    $99     
       INY            
       STY    $9D     
       BPL    LF823   
LF81F: INC    $9D     
       INC    $9D     
LF823: LDA    $BF     
       CMP    #$06    
       BCC    LF832   
       LDX    $C5     
       CPX    #$A1    
       BCS    LF832   
       JSR    LF854   
LF832: LDX    #$00    
       STX    $F6     
       BEQ    LF848   
LF838: JSR    LF910   
       BNE    LF848   
       LDY    $CC,X   
       LDA    LFE56,Y 
       BEQ    LF848   
       INC    $CC,X   
       BNE    LF84C   
LF848: DEC    $C0,X   
       DEC    $C0,X   
LF84C: INX            
       CPX    #$06    
       BNE    LF838   
LF851: JMP    LF8EC   
LF854: LDX    #$00    
       LDA    $CC     
       CMP    #$0F    
       BCS    LF85E   
       STX    $AE     
LF85E: INX            
LF85F: LDA    $C0,X   
       STA    $BF,X   
       INX            
       CPX    #$24    
       BNE    LF85F   
       LDY    $AA     
       CPY    $9F     
       BEQ    LF870   
       INY            
       INY            
LF870: LDA    ($95),Y 
       JSR    LF9CD   
       BIT    $90     
       BMI    LF87F   
       CPX    #$0E    
       BCC    LF88D   
       BEQ    LF883   
LF87F: LDA    #$4E    
       BNE    LF885   
LF883: LDA    #$0F    
LF885: STA    $D1     
       JSR    LF8FB   
       TAY            
       BPL    LF8A1   
LF88D: LDA    #$16    
       STA    $D1     
       LDY    #$06    
       CPX    #$08    
       BCS    LF899   
       LDY    #$08    
LF899: LDA    $94     
       AND    #$02    
       BNE    LF8A1   
       INY            
       INX            
LF8A1: LDA    $C4     
       CLC            
       ADC    LFF6A,X 
       CLC            
       ADC    $DC     
       PHA            
       LDA    $D0     
       CMP    #$0F    
       PLA            
       BCS    LF8B4   
       ADC    #$0E    
LF8B4: STA    $C5     
       LDA    LFF58,X 
       STA    $DD     
       LDA    LFF6A,X 
       STA    $D7     
       LDA    LFF7C,Y 
       STA    $CB     
       RTS            

LF8C6: LDX    $91     
       CPX    #$94    
       BCC    LF8D0   
       BNE    LF8D9   
       BRK            
       BIT    $4420   
       SBC    $91E6,Y 
       INC    $91     
       BNE    LF8EC   
LF8D9: DEC    $86     
       LDA    $86     
       ORA    #$20    
       STA    $86     
       AND    #$1F    
       BNE    LF8EC   
       BIT    $EE     
       BVS    LF8EC   
       JSR    LFBDA   
LF8EC: LDA    $BE     
       JSR    LF91C   
       STA    $AD     
LF8F3: LDA    INTIM   
       BMI    LF8F3   
       JMP    LF019   
LF8FB: LDA    $B8     
       ASL            
       ASL            
       ASL            
       ASL            
       SEC            
       ADC    $B8     
       STA    $B8     
       TAY            
       AND    #$07    
LF909: CMP    #$06    
       BCC    LF90F   
       SBC    #$03    
LF90F: RTS            

LF910: LDY    $C0,X   
       BMI    LF91B   
       LDA    $F6     
       BNE    LF91B   
       INC    $F6     
       TYA            
LF91B: RTS            

LF91C: LDY    #$02    
       SEC            
LF91F: INY            
       SBC    #$0F    
       BCS    LF91F   
       EOR    #$FF    
       SBC    #$06    
       ASL            
       ASL            
       ASL            
       ASL            
       STY    $F6     
       ORA    $F6     
       RTS            

LF931: STA    HMP0,X  
       AND    #$0F    
       TAY            
       STA    WSYNC   
LF938: DEY            
       BPL    LF938   
       STA    RESP0,X 
       RTS            

LF93E: BRK            
       JSR    $80A9   
       STA    $86     
LF944: LDX    $8E     
       BEQ    LF979   
       LDA    $8A     
       BEQ    LF963   
       LDX    $8D     
       BMI    LF959   
       BEQ    LF963   
       LDA    $93     
       SEC            
       SBC    $8A     
       BNE    LF95C   
LF959: CLC            
       ADC    $93     
LF95C: STA    $93     
       JSR    LF91C   
       STA    $92     
LF963: LDA    $89     
       ASL            
       ADC    $91     
       STA    $91     
       SEC            
       SBC    #$50    
       BPL    LF975   
       LDA    #$00    
       LDX    #$50    
       STX    $91     
LF975: STA    $BC     
       LSR    $BC     
LF979: LDA    #$00    
       LDX    #$08    
LF97D: STA    $87,X   
       DEX            
       BPL    LF97D   
       RTS            

LF983: LDA    #$00    
       STA    $9E     
       LDX    $EF     
       CPX    #$06    
       BCC    LF991   
       LDX    #$05    
       STX    $EF     
LF991: DEX            
       BMI    LF999   
       CLC            
       ADC    #$04    
       BNE    LF991   
LF999: TAX            
       LDA    LFC24,X 
       STA    $95     
       LDA    LFC25,X 
       STA    $96     
       LDA    LFC26,X 
       STA    $99     
       STA    $9A     
       STA    $9F     
       LDA    LFC27,X 
       STA    $90     
       LDA    #$01    
       STA    $9B     
       STA    $9D     
LF9B8: LDY    $9A     
       LDA    ($95),Y 
       STA    $97     
       INY            
       LDA    ($95),Y 
       STA    $98     
       INY            
       STY    $9A     
       LDY    #$00    
       LDA    ($97),Y 
       STA    $9C     
       RTS            

LF9CD: LDX    #$00    
LF9CF: CMP    LFC12,X 
       BEQ    LF9D8   
       INX            
       INX            
       BNE    LF9CF   
LF9D8: RTS            

LF9D9: LDA    $93     
       CLC            
       ADC    #$03    
       STA    $F8     
       CMP    #$11    
       BCC    LFA3F   
       CMP    #$91    
       BCS    LFA3F   
       LDA    $91     
       JSR    LFA4E   
       LDA    $F8     
       CMP    #$71    
       BCS    LF9F7   
       CMP    #$31    
       BCS    LFA0E   
LF9F7: LDX    #$00    
       CMP    #$71    
       BCC    LFA06   
       SBC    #$60    
       LDY    #$01    
       STY    $F8     
       DEY            
       BEQ    LFA22   
LFA06: LDY    #$80    
       STY    $F8     
       LDY    #$00    
       BPL    LFA2E   
LFA0E: LDX    #$08    
       LDY    #$01    
       CMP    #$51    
       BCC    LFA20   
       SBC    #$20    
       LDY    #$80    
       STY    $F8     
       LDY    #$01    
       BPL    LFA2E   
LFA20: STY    $F8     
LFA22: CMP    LFEB6,X 
       BCC    LFA38   
       INX            
       ASL    $F8     
       BNE    LFA22   
       BEQ    LFA38   
LFA2E: CMP    LFEB6,X 
       BCC    LFA38   
       INX            
       LSR    $F8     
       BNE    LFA2E   
LFA38: LDA    $F8     
       AND.wy $00F6,Y 
       BNE    LFA42   
LFA3F: JMP    LF93E   
LFA42: LDA    #$00    
       STA    $86     
       LDA    $8E     
       ORA    #$80    
LFA4A: STA    $8E     
       BRK            
       ORA    $AA4A,X 
       INX            
       LDA    $99     
       STA    $9A     
       JSR    LF9B8   
       LDY    $9D     
       LDA    $9E     
       CMP    #$02    
       BNE    LFA63   
       INY            
       INY            
       DEX            
LFA63: CPY    $9C     
       BCC    LFA6B   
       JSR    LF9B8   
       INY            
LFA6B: DEX            
       DEX            
       BEQ    LFA75   
       BMI    LFA75   
       INY            
       INY            
       BNE    LFA63   
LFA75: LDA    ($97),Y 
       STA    $F6     
       INY            
       LDA    ($97),Y 
       STA    $F7     
       RTS            

LFA7F: LDY    #$0B    
       LDA    #$00    
       STA    COLUP0  
       STA    COLUP1  
LFA87: LDA    #$FF    
       STA.wy $00A0,Y 
       DEY            
       LDA    $EB,X   
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA.wy $00A0,Y 
       DEY            
       LDA    #$FF    
       STA.wy $00A0,Y 
       DEY            
       LDA    $EB,X   
       AND    #$F0    
       LSR            
       STA.wy $00A0,Y 
       DEX            
       DEY            
       BPL    LFA87   
       LDX    #$00    
       LDY    #$50    
LFAAE: LDA    $A0,X   
       CMP    #$00    
       BNE    LFABC   
       STY    $A0,X   
       INX            
       INX            
       CPX    #$0A    
       BNE    LFAAE   
LFABC: STA    WSYNC   
       LDA    #$03    
       STA    WSYNC   
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    VDELP0  
       STA    VDELP1  
       LDA    #$10    
       STA    HMP0    
       ASL            
       STA    HMP1    
       PHA            
       PLA            
       PHA            
       PLA            
       STA    RESP0   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$07    
       STA    $FA     
LFAE1: LDY    $FA     
       LDA    ($A0),Y 
       STA    GRP0    
       STA    WSYNC   
       LDA    ($A2),Y 
       STA    GRP1    
       LDA    ($A4),Y 
       STA    GRP0    
       LDA    ($A6),Y 
       STA    $FB     
       LDA    ($A8),Y 
       TAX            
       LDA    ($AA),Y 
       TAY            
       LDA    $FB     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STY    GRP0    
       DEC    $FA     
       BPL    LFAE1   
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    VDELP0  
       STA    VDELP1  
       RTS            

LFB12: .byte $28,$BA,$E8,$D6,$00,$A1,$00,$A8,$A2,$00,$F0,$02
LFB1E: LDX    #$01    
       TYA            
       CMP    $B0,X   
       BCC    LFB3E   
       BEQ    LFB3E   
       LDA    LFFA2,Y 
       AND    #$F0    
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $B2,X   
       STA    $82,X   
       LDA    LFFA2,Y 
       AND    #$0F    
       STA    $B4,X   
       INY            
       STY    $B0,X   
LFB3E: RTS            

LFB3F: LDA    SWCHB   
       TAY            
       EOR    $80     
       BNE    LFB79   
       TYA            
       AND    #$02    
       BNE    LFB83   
       DEC    $E4     
       BNE    LFB83   
LFB50: LDA    #$40    
       STA    $EE     
       LDA    $F5     
       AND    #$0F    
       TAX            
       CPX    #$06    
       BNE    LFB5F   
       LDX    #$00    
LFB5F: INX            
       STX    $ED     
       TXA            
       ORA    #$40    
       STA    $F5     
       LDX    #$00    
       STX    $EB     
       STX    $EC     
       STX    $EA     
       LDA    #$1E    
       STA    $E4     
       LDA    $F5     
       AND    #$0F    
       BNE    LFB97   
LFB79: STY    $80     
       TYA            
       AND    #$02    
       BEQ    LFB50   
       TYA            
       AND    #$01    
LFB83: BNE    LFBD9   
       LDX    #$74    
       JSR    LFBA2   
       BRK            
       .byte $3B ;.RLA
       INX            
       STX    $EE     
       STX    $F3     
       LDA    $F5     
       AND    #$0F    
       STA    $F5     
LFB97: TAX            
       LSR            
       BCS    LFB9C   
       DEX            
LFB9C: DEX            
       STX    $EF     
       STX    $F4     
       RTS            

LFBA2: LDA    #$00    
       STA    AUDV0   
       STA    AUDV1   
LFBA8: STA    $80,X   
       DEX            
       BNE    LFBA8   
LFBAD: LDA    #$50    
       STA    $91     
       STA    $93     
       LDA    #$28    
       STA    $92     
       JSR    LF983   
       LDA    #$70    
       STA    $BE     
       LDX    #$05    
       STX    $AF     
LFBC2: LDA    LFF88,X 
       STA    $C0,X   
       LDA    LFF7C,X 
       STA    $C6,X   
       LDA    #$0F    
       STA    $CC,X   
       DEX            
       BPL    LFBC2   
       LDA    #$14    
       STA    $CC     
       STA    $D2     
LFBD9: RTS            

LFBDA: LSR    $EE     
       BCS    LFBE6   
       BIT    $EE     
       BVS    LFBE6   
       LDX    #$80    
       STX    $EE     
LFBE6: LDA    $F5     
       LSR            
       BCS    LFC0E   
       BIT    $F3     
       BVC    LFBF7   
       BIT    $EE     
       BVC    LFC0E   
       BIT    $F5     
       BPL    LFC0E   
LFBF7: LDX    #$04    
LFBF9: LDA    $EB,X   
       STA    $F6,X   
       LDA    $F0,X   
       STA    $EB,X   
       LDA    $F6,X   
       STA    $F0,X   
       DEX            
       BPL    LFBF9   
       LDA    $F5     
       EOR    #$80    
       STA    $F5     
LFC0E: LDX    #$6A    
       BNE    LFBA2   
LFC12: .byte $DA ;.NOP
       INC    LFD1D,X 
       .byte $32 ;.JAM
       SBC    LFD4B,X 
       .byte $62 ;.JAM
       SBC    LFD7D,X 
       SBC    $FC     
       BRK            
       SBC    LFC94,X 
LFC24: .byte $3C ;.NOP
LFC25: .byte $FC ;.NOP
LFC26: ASL    COLUBK,X
       .byte $54 ;.NOP
       .byte $FC ;.NOP
       JSR    $5413   
       .byte $FC ;.NOP
       JSR    $761D   
       .byte $FC ;.NOP
       .byte $1C ;.NOP
       ORA    LFC54,X 
       JSR    $761D   
       .byte $FC ;.NOP
       .byte $1C ;.NOP
       .byte $27 ;.RLA
       .byte $DA ;.NOP
       INC    LFD1D,X 
       .byte $32 ;.JAM
       SBC    LFD4B,X 
       .byte $62 ;.JAM
       SBC    LFD7D,X 
       SBC    $FC     
       BRK            
       SBC    LFD00,X 
       BRK            
       SBC    LFD00,X 
       STY    $FC,X   
LFC54: .byte $DA ;.NOP
       INC    LFD1D,X 
       .byte $32 ;.JAM
       SBC    LFD4B,X 
       .byte $62 ;.JAM
       SBC    LFD62,X 
       ADC    $7DFD,X 
       SBC    LFCE5,X 
       BRK            
       SBC    LFD00,X 
       BRK            
       SBC    LFD00,X 
       BRK            
       SBC    LFD00,X 
       BRK            
       SBC    LFC94,X 
       .byte $DA ;.NOP
       INC    LFD1D,X 
       .byte $32 ;.JAM
       SBC    LFD4B,X 
       .byte $4B ;.ASR
       SBC    LFD62,X 
       .byte $62 ;.JAM
       SBC    LFD7D,X 
       ADC    $7DFD,X 
       SBC    LFCE5,X 
       SBC    $FC     
       SBC    $FC     
       BRK            
       SBC    LFC94,X 
LFC94: BVC    LFC9F   
       STA    $9909,Y 
       ORA    #$99    
       ORA    #$99    
       ORA    #$99    
LFC9F: .byte $0F ;.SLO
       .byte $FF ;.ISB
       .byte $0F ;.SLO
       .byte $FF ;.ISB
       ORA    #$99    
       ORA    #$99    
       ORA    #$99    
       ORA    #$99    
       ORA    #$99    
       .byte $0F ;.SLO
       .byte $FF ;.ISB
       .byte $0F ;.SLO
       .byte $FF ;.ISB
       ORA    #$99    
       ORA    #$99    
       ORA    #$99    
       ORA    #$99    
       ORA    #$99    
       .byte $0F ;.SLO
       .byte $FF ;.ISB
       .byte $0F ;.SLO
       .byte $FF ;.ISB
       ORA    #$99    
       ORA    #$99    
       ORA    #$99    
       ORA    #$99    
       ORA    #$99    
       .byte $0F ;.SLO
       .byte $FF ;.ISB
       .byte $0F ;.SLO
       .byte $FF ;.ISB
       ORA    #$39    
       ORA    #$39    
       ORA    #$39    
       ORA    #$39    
       ORA    #$39    
       .byte $0F ;.SLO
       .byte $3F ;.RLA
       .byte $0F ;.SLO
       .byte $3F ;.RLA
       .byte $0F ;.SLO
       .byte $3F ;.RLA
       .byte $0F ;.SLO
       .byte $3F ;.RLA
       .byte $0F ;.SLO
       .byte $3F ;.RLA
       .byte $0F ;.SLO
       .byte $3F ;.RLA
       .byte $0F ;.SLO
       .byte $3F ;.RLA
LFCE5: .byte $1A ;.NOP
       .byte $0C ;.NOP
       .byte $80 ;.NOP
       ASL            
       RTI            

LFCEA: .byte $09,$20,$08,$11,$08,$0E,$08,$0E,$08,$0E,$08,$11,$09,$20,$0A,$40
       .byte $0C,$80,$0F,$FF,$0F,$FF
LFD00: .byte $1C,$09,$99,$09,$99,$09,$99,$09,$99,$09,$99,$0F,$FF,$0F,$FF,$09
       .byte $99,$09,$99,$09,$99,$09,$99,$09,$99,$0F,$FF,$0F,$FF
LFD1D: .byte $14,$00,$00,$00,$00,$00,$F0,$00,$F0,$00,$F0,$00,$70,$00,$70,$00
       .byte $70,$00,$F0,$00,$FF,$18,$00,$FF,$00,$83,$00,$43,$00,$25,$00,$19
       .byte $00,$19,$00,$19,$00,$25,$00,$43,$00,$83,$00,$FF,$01,$FF
LFD4B: .byte $16,$01,$81,$01,$42,$01,$24,$01,$18,$01,$18,$01,$18,$01,$24,$01
       .byte $42,$01,$81,$01,$FF,$03,$FF
LFD62: .byte $1A,$03,$80,$03,$40,$02,$21,$02,$12,$02,$0C,$02,$0C,$02,$0C,$02
       .byte $12,$02,$21,$03,$40,$03,$80,$03,$FF,$07,$FF
LFD7D: .byte $1A,$06,$80,$05,$40,$04,$21,$04,$12,$04,$0C,$04,$0C,$04,$0C,$04
       .byte $12,$04,$21,$05,$40,$06,$80,$07,$FF,$0F,$FF
LFD98: .byte $C0,$C8,$10,$E0,$C0,$C0,$C0,$C0,$60,$30,$18,$04,$00,$03,$13,$08
       .byte $07,$03,$03,$03,$03,$06,$0C,$18,$20,$00,$40,$59,$59,$26,$18,$18
       .byte $18,$38,$28,$28,$08,$08,$00,$03,$8B
LFDC1: .byte $C8,$66,$36,$1C,$00,$80,$C2,$C4,$FB,$7B,$00
LFDCC: .byte $48,$48,$48,$48,$96,$96,$48,$96,$96,$96,$48,$48,$00,$48,$48,$48
       .byte $48,$96,$96,$48,$96,$96,$96,$48,$48,$00,$48,$48,$48,$48,$96,$96
       .byte $48,$96,$96,$96,$48,$48,$00,$48,$48,$48,$96,$96,$96,$00,$48,$48
       .byte $48
LFDFD: .byte $96,$96,$00
LFE00: .byte $00,$18,$19,$02,$3C,$58,$98,$18,$24,$42,$42,$3C,$5A,$81,$00,$18
       .byte $18,$00,$3C,$5A,$5A,$00,$08,$18,$3C,$7E,$7E,$3C,$00,$10,$0C,$3C
       .byte $7E,$7E,$3C,$00,$08,$18,$3C,$7E,$7E,$3C,$00,$10,$0C,$3C,$7E,$7E
       .byte $3C,$00,$AA,$55,$AA,$55,$AA,$55,$00,$55,$AA,$55,$AA,$55,$AA,$00
       .byte $2A,$1C,$7F,$1C,$2A,$00,$00,$49,$2A,$1C,$1C,$2A,$49,$00,$00,$00
       .byte $00,$00,$00,$00
LFE54: .byte $00
LFE55: .byte $00
LFE56: .byte $C6,$C6,$C6,$C6,$C6,$C6,$34,$34,$34,$34,$02,$02,$02,$00,$02,$02
       .byte $02,$48,$48,$48,$00,$2A,$2A,$02,$02,$02,$02,$00,$1E,$1E,$02,$02
       .byte $02,$02,$00,$2A,$2A,$48,$48,$48,$48,$00,$1E,$1E,$48,$48,$48,$48
       .byte $00,$3C,$3C,$3C,$3C,$3C,$3C,$00,$6E,$6E,$6E,$6E,$6E,$6E,$00,$2C
       .byte $2C,$4E,$2C,$2C,$2C,$00,$3A,$3A,$1E,$1E,$3A,$3A,$00,$02,$02,$02
       .byte $02,$02,$02,$00
LFEAA: .byte $41,$49,$7F,$1C,$7F,$1C,$7F,$1C,$3E,$5D,$49,$00
LFEB6: .byte $15,$19,$1D,$21,$25,$29,$2D,$31,$35,$39,$3D,$41,$45,$49,$4D,$51
LFEC6: .byte $FF,$FF,$FF,$FF,$00
LFECB: .byte $8A,$2C,$AE,$4A,$DC,$3E
LFED1: .byte $D6,$86,$46
LFED4: .byte $01,$02,$01,$02,$03,$03,$24,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$D0,$00,$1C,$22,$63
       .byte $63,$63,$22,$1C,$00,$7F,$0C,$0C,$0C,$1C,$0C,$04,$00,$7F,$60,$60
       .byte $3E,$03,$03,$3E,$00,$7E,$03,$03,$3E,$03,$03,$7E,$00,$06,$7F,$26
       .byte $16,$0E,$06,$02,$00,$7E,$03,$03,$3E,$60,$60,$7E,$00,$3E,$63,$63
       .byte $7E,$60,$60,$3E,$00,$30,$18,$0C,$06,$03,$61,$7F,$00,$3E,$63,$63
       .byte $3E,$63,$63,$3E,$00,$3E,$03,$03,$3F,$63,$63,$3E,$00,$00,$00,$00
       .byte $00,$00,$00,$00
LFF58: .byte $34,$34,$08,$08,$08,$08,$08,$08,$08,$24,$08,$24,$08,$24,$08,$24
       .byte $08,$24
LFF6A: .byte $14,$14,$20,$20,$28,$28,$24,$24,$2C,$10,$2C,$10,$2C,$10,$30,$14
       .byte $30,$14
LFF7C: .byte $22,$13,$04,$05,$E6,$D7,$E3,$26,$A3,$95,$94,$94
LFF88: .byte $DA,$08,$40,$5C,$B0,$CC
LFF8E: .byte $1C,$4C,$2C,$0C,$5C,$3C
LFF94: .byte $FF,$7F,$7F,$3F,$3F,$3F
LFF9A: .byte $01,$03,$05,$07,$09,$0B,$0D,$0F
LFFA2: .byte $00,$6B,$5D,$A2,$00,$88,$96,$7F,$00,$AC,$B3,$00,$46,$9B,$A5,$9B
       .byte $75,$6B,$75,$00,$68,$EB,$C3,$AB,$93,$83,$6C,$3D,$00,$28,$3D,$00
       .byte $44,$7E,$83,$8A,$91,$99,$A1,$B1,$C1,$D1,$E9,$00,$28,$77,$92,$00
       .byte $F8,$AE,$B5,$BD,$C5,$C6,$CF,$D6,$E4,$EB,$00,$AC,$FD,$D3,$A4,$D3
       .byte $BD,$D3,$FC,$10,$BD,$9B,$7C,$9B,$8D,$9B,$BC,$10,$74,$BB,$9B,$73
       .byte $7C,$8B,$9B,$A3,$BC,$10,$FB,$10,$BC,$00,$00,$F0,$12,$FB
