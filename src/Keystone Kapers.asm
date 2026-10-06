; Disassembly of roms/Keystone Kapers.bin
; Disassembled Tue Oct  6 15:21:50 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Keystone Kapers.bin
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
CXPPMM  =  $37
INPT4   =  $3C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296
LF11F   =   $F11F
LF19D   =   $F19D
LF1C6   =   $F1C6
LF2A6   =   $F2A6
LF32A   =   $F32A
LF32D   =   $F32D
LF3E6   =   $F3E6
LF54B   =   $F54B
LF587   =   $F587
LF58A   =   $F58A
LF8F6   =   $F8F6

       ORG $F000

START:
       SEI            
       CLD            
       LDX    #$FF    
       TXS            
       INX            
       TXA            
LF007: STA    VSYNC,X 
       INX            
       BNE    LF007   
       LDY    #$0C    
       JSR    LFA2C   
LF011: LDX    #$03    
       STX    WSYNC   
       STX    VBLANK  
       LDA    #$23    
       STA    TIM64T  
       LDY    #$FE    
LF01E: LDA    #$48    
       STA    $EC,X   
       LDA    #$05    
       STA    $B4,X   
       STY    $E8,X   
       DEX            
       BPL    LF01E   
       LDY    $8E     
       BIT    $87     
       BPL    LF061   
       LDY    #$05    
       LDA    $8E     
       AND    #$03    
       BNE    LF05F   
       JSR    LFEF4   
       BCS    LF042   
       INC    $97     
       BCC    LF07F   
LF042: LDA    #$01    
       STA    $8B     
       STA    $86     
       ROL            
       LDY    $97     
       CPY    #$10    
       BCS    LF057   
       TYA            
       AND    #$08    
       LSR            
       LSR            
       LSR            
       ADC    #$01    
LF057: JSR    LFDB6   
       LDA    #$0C    
       JSR    LFDE4   
LF05F: LDY    #$00    
LF061: LDA    $9D     
       CMP    #$11    
       BCC    LF069   
       LDY    #$00    
LF069: STY    $CA     
       LDY    #$07    
       BIT    $98     
       BMI    LF082   
       LDA    $87     
       ORA    $88     
       BMI    LF089   
       LDA    $89     
       CMP    #$09    
       BNE    LF082   
       DEC    $98     
LF07F: JMP    LF09A   
LF082: TYA            
       AND    $8E     
       BNE    LF089   
       DEC    $8A     
LF089: LDX    #$FF    
       CPX    SWCHA   
       BEQ    LF093   
       INX            
       STX    $99     
LF093: LSR    SWCHB   
       BCS    LF0AA   
       LDY    #$0C    
LF09A: LDX    #$41    
       LDA    #$00    
LF09E: STA    $4E,X   
       DEX            
       BNE    LF09E   
       JSR    LFA2C   
       DEC    $88     
       BMI    LF0B1   
LF0AA: JSR    LFCE7   
       BIT    $88     
       BMI    LF0B4   
LF0B1: JMP    LF33C   
LF0B4: LDY    $8B     
       CPY    #$06    
       BEQ    LF0D6   
       INC    $F2     
       BNE    LF0C0   
       INC    $F0     
LF0C0: LDA    #$7F    
       CPY    #$05    
       BNE    LF0C8   
       LDA    #$03    
LF0C8: AND    $8E     
       BNE    LF0D6   
       JSR    LFEF4   
       BMI    LF0D3   
       BNE    LF0D6   
LF0D3: JMP    LF327   
LF0D6: JSR    LFEBB   
       STA    $9F     
       CPY    #$05    
       BCC    LF0E2   
       JMP    LF338   
LF0E2: BIT    $80     
       BPL    LF132   
       BVC    LF110   
       TAY            
       ROL            
       ROL            
       ROL            
       SEC            
       ROL            
       ROL            
       STA    $91     
       LDA    $A0,X   
       STA.wy $00A0,Y 
       LDA    LFEC5,Y 
       STA    $92     
       LDA    $F2     
       BPL    LF0B1   
       CMP    #$F0    
       BCS    LF0B1   
       LDA    SWCHA   
       AND    #$20    
       BNE    LF0B1   
       DEC    $91     
       DEC    $91     
       BPL    LF12B   
LF110: LDY    $80     
       LDA    $8E     
       AND    #$03    
       BNE    LF0B1   
       CPY    #$A8    
       BEQ    LF11F   
       INC    $A0,X   
       BIT    $A0D6   
       INC    $91     
       LDA    $91     
       AND    #$1F    
       BNE    LF0B1   
       INC    $92     
LF12B: LDA    #$0F    
       AND    $80     
       JMP    LF1D3   
LF132: LDA    $E1     
       LDY    $8D     
       BNE    LF13B   
       LDA    SWCHA   
LF13B: BIT    $98     
       BPL    LF142   
       LDA    LFCF6,X 
LF142: STA    $9E     
       AND    #$20    
       BNE    LF14D   
       LDA    #$07    
       JMP    LF27E   
LF14D: LDA    $9E     
       ASL            
       BMI    LF175   
       LDA    #$08    
       STA    $80     
       DEC    $A0,X   
       LDA    #$07    
       CMP    $A0,X   
       BCC    LF166   
       CMP    $93     
       BNE    LF169   
       LDA    #$09    
       STA    $A0,X   
LF166: JMP    LF1D8   
LF169: LDA    #$9A    
       STA    $A0,X   
       TXA            
       LSR            
       BCS    LF194   
LF171: INC    $92     
       BNE    LF196   
LF175: BCS    LF1A5   
       LDA    #$00    
       STA    $80     
       LDY    $A0,X   
       INY            
       CPY    #$9B    
       BCC    LF188   
       LDA    $93     
       BNE    LF18C   
       LDY    #$99    
LF188: STY    $A0,X   
       BNE    LF1D8   
LF18C: LDY    #$08    
       STY    $A0,X   
       TXA            
       LSR            
       BCS    LF171   
LF194: DEC    $92     
LF196: LDA    $80     
       BNE    LF19D   
       DEC    $93     
       BIT    $93E6   
       JSR    LFA4D   
       JMP    LF1FB   
LF1A5: LDY    #$06    
       STY    $95     
       ASL            
       ASL            
       BMI    LF1D5   
       LDA    $93     
       CMP    #$04    
       BNE    LF1D5   
       LDA    $8D     
       BNE    LF1D5   
       LDA    $F2     
       BPL    LF1D5   
       CMP    #$F0    
       BCS    LF1D5   
       CPX    $9F     
       BNE    LF1D5   
       LDA    $A0,X   
       SBC    #$4C    
       CMP    #$03    
       BCS    LF1D5   
       INC    $91     
       INC    $91     
       LDA    #$E0    
       ORA    $80     
LF1D3: STA    $80     
LF1D5: JMP    LF280   
LF1D8: LDA    $A0,X   
       LSR            
       LDY    $95     
       BCC    LF1E8   
       INY            
       CPY    #$06    
       BCC    LF1E6   
       LDY    #$01    
LF1E6: STY    $95     
LF1E8: LDA    $8B     
       BNE    LF1FB   
       CPY    #$04    
       BNE    LF1FB   
       LDA    #$08    
       JSR    LFDE4   
       LDA    #$02    
       STA    $8B     
       STA    $86     
LF1FB: JSR    LFCE7   
       LDA    $93     
       CMP    LFD09,X 
       BNE    LF20F   
       LDA    $94     
       CMP    $92     
       BNE    LF280   
       DEC    $94     
       BPL    LF225   
LF20F: CMP    LFD0A,X 
       BNE    LF280   
       LDA    $94     
       SBC    $92     
       CMP    #$01    
       BEQ    LF225   
       TAY            
       BNE    LF239   
       INC    $94     
       LDA    #$50    
       STA    $90     
LF225: TXA            
       LSR            
       BCS    LF231   
       LDA    #$78    
       CMP    $90     
       BCC    LF239   
       BCS    LF237   
LF231: LDA    #$28    
       CMP    $90     
       BCS    LF239   
LF237: STA    $90     
LF239: LDA    $93     
       LSR            
       LDA    $91     
       AND    #$1F    
       BCC    LF244   
       EOR    #$FF    
LF244: CLC            
       ADC    LFBFA,X 
       CLC            
       EOR    #$FF    
       ADC    $A0,X   
       CMP    #$02    
       BCS    LF280   
       LSR            
       STA    $8D     
       LDA    #$FC    
       STA    $8C     
       AND    $91     
       STA    $91     
       LDA    $F2     
       LSR            
       LSR            
       AND    #$03    
       ORA    $91     
       STA    $91     
       AND    #$1F    
       CPX    #$01    
       BEQ    LF271   
       EOR    #$FF    
       CLC            
       ADC    #$03    
LF271: CLC            
       ADC    LFBFA,X 
       STA    $A0,X   
       LDA    LFBFD,X 
       STA    $80     
       LDA    #$06    
LF27E: STA    $95     
LF280: LDY    $8D     
       BEQ    LF2B8   
       LDA    $8B     
       CMP    #$03    
       BNE    LF28E   
       TYA            
       LSR            
       STA    AUDV0   
LF28E: TYA            
       SEC            
       SBC    #$06    
       CMP    #$06    
       BCS    LF29C   
       LDA    $8E     
       AND    #$03    
       BNE    LF2A8   
LF29C: DEY            
       STY    $8D     
       CPY    #$09    
       BCC    LF2A6   
       INC    $91     
       BIT    $91C6   
LF2A8: LDA    #$02    
       STA    $95     
       CPY    #$10    
       BCC    LF2DC   
       BIT    $E1     
       BPL    LF2DC   
       BVS    LF2D3   
       BMI    LF2DC   
LF2B8: LDY    #$00    
       LDA    INPT4   
       ORA    $98     
       BMI    LF2DA   
       BIT    $8C     
       BMI    LF2DC   
       LDX    #$03    
       STX    $8B     
       LDA    #$0C    
       STA    AUDC0   
       LDX    #$12    
       STX    $8D     
       DEX            
       STX    $86     
LF2D3: LDA    SWCHA   
       STA    $E1     
       LDY    #$FF    
LF2DA: STY    $8C     
LF2DC: JSR    LFCE7   
       BIT    $8F     
       BMI    LF327   
       LDA    $87     
       ORA    $80     
       BMI    LF33C   
       LDA    $81,X   
       BPL    LF33C   
       LDY    $AC,X   
       CPY    #$06    
       BCC    LF321   
       BIT    $98     
       BMI    LF33C   
       CPY    #$08    
       BCS    LF303   
       LDA    $91     
       AND    #$1F    
       CMP    #$06    
       BCS    LF33C   
LF303: CPY    #$0A    
       BCC    LF32D   
       CPY    #$0C    
       BCC    LF327   
       CPY    #$0F    
       BCC    LF33C   
       STX    $9E     
       STY    $F5,X   
       LDA    #$02    
       STA    $AC,X   
       TAX            
       LDA    #$50    
       JSR    LFDB8   
       LDX    $9E     
       BPL    LF32A   
LF321: DEC    $87     
       INC    $88     
       BEQ    LF33C   
LF327: LDA    #$06    
       BIT    $04A9   
       BIT    $05A9   
       STA    $8B     
       LDY    #$08    
       STY    $86     
       DEY            
       STY    AUDC0   
LF338: LDA    $86     
       STA    AUDV0   
LF33C: JSR    LFCE7   
       LDY    $95     
       LDA    $91     
       AND    #$1F    
       EOR    #$FF    
       STA    $9E     
       CLC            
       ADC    LFECA,Y 
       STA    $E4,X   
       LDA    #$35    
       CPY    #$07    
       BNE    LF357   
       ADC    #$02    
LF357: ADC    $9E     
       STA    $EC,X   
       LDY    $80     
       STY    $F9,X   
       LDA    $9E     
       CMP    #$F3    
       BCS    LF377   
       STY    $FA,X   
       LDA    $E4,X   
       ADC    #$20    
       STA    $E5,X   
       LDA    $EC,X   
       ADC    #$20    
       STA    $ED,X   
       LDA    $A0,X   
       STA    $A1,X   
LF377: LDY    $8B     
       BEQ    LF3BB   
       CPY    #$04    
       BCC    LF385   
       LDA    $8E     
       AND    #$03    
       BNE    LF3C1   
LF385: DEC    $86     
       BMI    LF39E   
       LDA    LFCF9,Y 
       STA    $9E     
       LDA    #$FC    
       STA    $9F     
       LDY    $86     
       LDA    ($9E),Y 
       BIT    $98     
       BMI    LF3C1   
       STA    AUDF0   
       BPL    LF3C1   
LF39E: CPY    #$04    
       BCC    LF3BB   
       CPY    #$06    
       BNE    LF3B9   
       LDY    $96     
       DEY            
       BPL    LF3B2   
       INC    $88     
       INY            
       STY    $89     
       BEQ    LF3BB   
LF3B2: STY    $96     
       LDY    #$05    
       JMP    LF09A   
LF3B9: STA    $AC,X   
LF3BB: LDA    #$00    
       STA    $8B     
       STA    AUDV0   
LF3C1: LDX    INTIM   
       BNE    LF3C1   
       LDY    #$82    
       STY    WSYNC   
       STY    VSYNC   
       STY    WSYNC   
       STY    WSYNC   
       STY    WSYNC   
       STX    VSYNC   
       INC    $8E     
       BNE    LF3E7   
       INC    $89     
       LDA    $89     
       AND    #$07    
       BNE    LF3E7   
       INC    $99     
       BNE    LF3E7   
       SEC            
       ROR    $99     
LF3E7: LDA    #$2D    
       STA    WSYNC   
       STA    TIM64T  
       BIT    $88     
       BPL    LF45A   
       BIT    $8F     
       BMI    LF45A   
       LDA    $8E     
       LSR            
       BCC    LF45A   
       LDY    $90     
       LDA    $CC     
       AND    #$08    
       BNE    LF428   
       INY            
       CPY    #$9C    
       BCC    LF449   
       LDA    $94     
       CMP    #$1F    
       BNE    LF412   
       DEC    $8F     
       BMI    LF45A   
LF412: LDY    #$04    
       LDA    $94     
       AND    #$08    
       BNE    LF435   
LF41A: DEC    $94     
       BPL    LF424   
       INC    $94     
       LDY    #$9A    
       BNE    LF449   
LF424: LDA    #$07    
       BPL    LF439   
LF428: DEY            
       CPY    #$04    
       BCS    LF449   
       LDY    #$9B    
       LDA    $94     
       AND    #$08    
       BNE    LF41A   
LF435: INC    $94     
       LDA    #$00    
LF439: STA    $85     
       LDA    #$07    
       AND    $94     
       CMP    $85     
       BNE    LF449   
       TYA            
       EOR    #$FF    
       ADC    #$9E    
       TAY            
LF449: STY    $90     
       TYA            
       LSR            
       BCC    LF45A   
       LDY    $E2     
       INY            
       CPY    #$06    
       BCC    LF458   
       LDY    #$01    
LF458: STY    $E2     
LF45A: LDA    $94     
       AND    #$0F    
       CMP    #$08    
       BCC    LF464   
       EOR    #$0F    
LF464: STA    $85     
       LDA    $94     
       AND    #$18    
       STA    $9E     
       EOR    #$08    
       STA    $CC     
       LDA    $92     
       AND    #$18    
       CMP    $9E     
       BEQ    LF480   
       BCC    LF48C   
       LDA    $CC     
       EOR    #$08    
       BCS    LF48A   
LF480: LDA    #$00    
       LDY    $85     
       CPY    $93     
       BCC    LF48A   
       LDA    #$08    
LF48A: STA    $CC     
LF48C: LDX    #$03    
LF48E: LDA    $94     
       LSR            
       LSR            
       LSR            
       STA    $9E     
       CPX    $9E     
       BNE    LF4D7   
       LDA    $85     
       CMP    $93     
       BNE    LF4D7   
       LDY    $E2     
       LDA    $94     
       CMP    $92     
       BEQ    LF4BF   
       LDA    $CC     
       STA    $F9,X   
       LDA    #$01    
       STA    $EC,X   
       CLC            
       ADC    LFFCE,Y 
       STA    $E4,X   
       LDA    #$FB    
       STA    $E8,X   
       LDA    $90     
       STA    $A0,X   
       BNE    LF4D7   
LF4BF: STY    $AC,X   
       LDY    #$08    
       LDA    $90     
       STA    $A4,X   
       CMP    $A0,X   
       BCC    LF4CD   
       LDY    #$00    
LF4CD: STY    $CC     
       STY    $B0,X   
       LDY    #$1A    
       STY    $A8,X   
       BNE    LF4FF   
LF4D7: LDA    $AC,X   
       CMP    #$06    
       BCC    LF4F8   
       CMP    #$08    
       BCS    LF502   
       LDA    #$01    
       JSR    LFD91   
       BCC    LF4F8   
       LDA    $8E     
       LSR            
       TAY            
       LDA    LF6D4,Y 
       AND    #$01    
       CLC            
       ADC    #$06    
       STA    $AC,X   
       BPL    LF4FF   
LF4F8: LDY    #$00    
       STY    $AC,X   
       INY            
       STY    $A4,X   
LF4FF: JMP    LF5B5   
LF502: BNE    LF554   
       LDA    #$00    
       JSR    LFD91   
       LDY    #$0D    
       CMP    #$04    
       BCS    LF514   
       LSR            
       BCS    LF514   
       LDY    #$03    
LF514: STY    $D9     
       TYA            
       CLC            
       ADC    #$08    
       ASL            
       STA    $9E     
       LDY    $F1     
       INY            
       CPY    $9E     
       BCC    LF526   
       LDY    #$00    
LF526: STY    $9F     
       TYA            
       SEC            
       SBC    $D9     
       CMP    #$10    
       BCS    LF53E   
       CMP    #$08    
       BCC    LF536   
       EOR    #$0F    
LF536: TAY            
       LDA    LFCDF,Y 
       AND    $8E     
       BNE    LF54D   
LF53E: LDY    $9F     
       STY    $F1     
       LSR    $9E     
       CPY    $9E     
       BCS    LF54B   
       DEC    $A8,X   
       BIT    $A8F6   
LF54D: LDA    $8E     
       LSR            
       BCC    LF4FF   
       BCS    LF587   
LF554: CMP    #$09    
       BNE    LF568   
       LDA    #$02    
       JSR    LFD91   
LF55D: BCC    LF4F8   
       CMP    #$03    
       BCS    LF587   
       LSR            
       BCS    LF58A   
       BCC    LF587   
LF568: CMP    #$0C    
       BCS    LF5B5   
       LDA    #$09    
       STA    $A8,X   
       LDA    $8E     
       AND    #$02    
       LSR            
       ADC    #$0A    
       STA    $AC,X   
       LDA    #$03    
       JSR    LFD91   
       BCC    LF55D   
       CMP    #$04    
       BCC    LF586   
       LDA    #$03    
LF586: BIT.w  $00A9   
       BIT    $01A9   
       STA    $9E     
LF58E: LDA    $8B     
       CMP    #$05    
       BCS    LF5B5   
       BIT    $88     
       BPL    LF5B5   
       LDY    #$01    
       LDA    #$08    
       AND    $B0,X   
       BNE    LF5A2   
       LDY    #$FF    
LF5A2: TYA            
       ADC    $A4,X   
       BNE    LF5A9   
       LDA    #$A0    
LF5A9: CMP    #$A1    
       BCC    LF5AF   
       LDA    #$01    
LF5AF: STA    $A4,X   
       DEC    $9E     
       BPL    LF58E   
LF5B5: DEX            
       BMI    LF5BB   
       JMP    LF48E   
LF5BB: LDY    #$18    
       LDA    $F2     
       LSR            
       LSR            
       AND    #$03    
       STA    $9E     
       LDX    $93     
       BEQ    LF5D1   
       CPX    #$07    
       BNE    LF5ED   
       ADC    #$03    
       LDY    #$31    
LF5D1: TAX            
       LDA    #$8A    
       SEC            
       SBC    $9E     
       STA    $F3     
       LDA    LFFC6,X 
       STA    $F4     
       LDX    #$18    
LF5E0: LDA    LFBC1,Y 
       CMP    #$FF    
       BEQ    LF5E9   
       STA    $A4,X   
LF5E9: DEY            
       DEX            
       BPL    LF5E0   
LF5ED: CPX    #$04    
       BEQ    LF5F4   
       JMP    LF686   
LF5F4: DEX            
       LDA    #$06    
LF5F7: STA    $B7,X   
       DEX            
       BNE    LF5F7   
       JSR    LFEBB   
       TAX            
       LDA    $F2     
       AND    #$7F    
       CMP    #$70    
       BCC    LF662   
       LSR            
       LSR            
       AND    #$03    
       CMP    #$03    
       BNE    LF63E   
       LDA    #$80    
       BIT    $F2     
       BPL    LF62A   
       LDA    $F0     
       AND    #$03    
       TAY            
       LDA    $94     
       CMP    LFEC6,Y 
       BNE    LF626   
       DEC    $F2     
       BNE    LF67E   
LF626: LDA    #$00    
       INC    $F0     
LF62A: STA    $F2     
       LDY    #$1A    
       STY    $A8,X   
       LDY    #$01    
       STY    $A4,X   
       LDY    $FD     
       STY    $B0,X   
       LDA    $F1     
       STA    $AC,X   
       BPL    LF676   
LF63E: BIT    $F2     
       BMI    LF646   
       EOR    #$03    
       SBC    #$00    
LF646: LDY    #$18    
       STY    $A8,X   
       LDY    #$4C    
       STY    $A4,X   
       LDY    #$04    
       STY    $B4,X   
       LDY    #$0E    
       STY    $AC,X   
       TAY            
       LDA    LFDFD,Y 
       STA    $B0,X   
       BNE    LF660   
       INC    $A4,X   
LF660: BNE    LF67A   
LF662: CMP    #$6F    
       BNE    LF676   
       LDA    $A4,X   
       CMP    #$03    
       BCC    LF66E   
       DEC    $F2     
LF66E: LDA    $AC,X   
       STA    $F1     
       LDA    $B0,X   
       STA    $FD     
LF676: BIT    $F2     
       BPL    LF67E   
LF67A: INC    $B8,X   
       BNE    LF686   
LF67E: BIT    $80     
       BPL    LF686   
       LDA    #$48    
       STA    $EC,X   
LF686: LDX    #$03    
LF688: TXA            
       ASL            
       ASL            
       TAY            
       LDA    $9A,X   
       AND    #$F0    
       LSR            
       STA.wy $00BD,Y 
       LDA    $9A,X   
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA.wy $00BF,Y 
       DEX            
       BPL    LF688   
       INX            
       LDY    #$58    
LF6A4: LDA    $BD,X   
       BNE    LF6B0   
       STY    $BD,X   
       INX            
       INX            
       CPX    #$0A    
       BCC    LF6A4   
LF6B0: JSR    LFCE7   
       LDA    $A0,X   
       LDY    $93     
       JSR    LFDA7   
       STA    $9E     
       LDA    $90     
       LDY    $85     
       JSR    LFDA7   
       STA    $9F     
       LDY    #$09    
LF6C7: LDA.wy $009E,Y 
       JSR    LFD0D   
       BPL    LF6C7   
       LDA    #$88    
       STA    COLUBK  
       NOP            
LF6D4: LDA    INTIM   
       BNE    LF6D4   
       STA    WSYNC   
       STA    HMOVE   
       BIT    $99     
       BPL    LF6E3   
       LDA    #$02    
LF6E3: STA    VBLANK  
       JSR    LFD24   
       TAX            
       LDA    $C9     
       STA    $C5     
       LDA    $CB     
       STA    $C7     
       LDY    #$40    
       STY    HMP0    
       STY    HMP1    
       LDY    $96     
       STA    WSYNC   
       STA    HMOVE   
LF6FD: LDA    #$58    
       DEY            
       BMI    LF704   
       LDA    #$50    
LF704: STA    $BD,X   
       INX            
       INX            
       CPX    #$06    
       BNE    LF6FD   
       STA    WSYNC   
       STA    HMOVE   
       INX            
       STX    $9F     
       LDA    #$58    
       STA    $C3     
       LDX    $CA     
       STX    COLUP0  
       STX    COLUP1  
       JSR    LFD5A   
       STA    VDELP1  
       STA    NUSIZ1  
       STA    CXCLR   
       LDA    #$FB    
       STA    $BE     
       LDA    #$FC    
       STA    $C8     
       STA    $C2     
       STA    $C0     
       LDY    #$03    
       BPL    LF73C   
LF736: JMP    LF8A6   
LF739: LDY    $C4     
       DEY            
LF73C: BMI    LF736   
       LDA.wy $00E4,Y 
       STA    $C5     
       LDA.wy $00E8,Y 
       STA    $C6     
       STY    $C4     
       LDX    #$22    
       STX    HMBL    
       LDA    #$31    
       STA    CTRLPF  
       LDA    #$00    
       STX    ENABL   
       STA    RESBL   
       STA    HMOVE   
       STA    GRP0    
       STA    GRP1    
       STA    PF1     
       STA    COLUPF  
       LDX    $B9,Y   
       CPX    #$08    
       BNE    LF76A   
       LDA    #$F0    
LF76A: STA    PF2     
       LDX    $AC,Y   
       LDA    LFE00,X 
       STA    $C3     
       LDA    LFFCE,X 
       STA    $BD     
       LDA    LFFDF,X 
       STA    $C1     
       LDA.wy $00F9,Y 
       STA    REFP1   
       LDA    CXPPMM  
       STA.wy $0082,Y 
       LDA.wy $00D9,Y 
       STA    WSYNC   
       STA    HMP1    
       LDA    #$00    
       STA    PF2     
       LDX    $CF,Y   
LF794: DEX            
       BPL    LF794   
       LDX    $D3,Y   
       STA    RESP1   
       STA    WSYNC   
       LDA.wy $00DD,Y 
       STA    HMP0    
       LDA    LFEDF,Y 
       STA    COLUBK  
LF7A7: DEX            
       BPL    LF7A7   
       NOP            
       STA    RESP0   
       STA    WSYNC   
       STA    HMOVE   
       STA    COLUPF  
       LDX    $B8,Y   
       LDA.wy $00EC,Y 
       STA    $C7     
       LDA    LFE22,X 
       STA    PF2     
       LDA    LFE1A,X 
       STA    PF1     
       LDA    LFE11,X 
       LDX    $B4,Y   
       NOP            
       STA    RESBL   
       BNE    LF7D0   
       STA    RESBL   
LF7D0: CPX    #$04    
       BCS    LF7D6   
       LDA    $F3     
LF7D6: STA    $BF     
       STA    HMCLR   
       LDA    #$21    
       STA    WSYNC   
       STA    HMOVE   
       STA    CTRLPF  
       LDA    LFFC0,X 
       STA    GRP0    
       LDA.wy $00B0,Y 
       STA    NUSIZ0  
       STA    REFP0   
       LDA    LFCDB,X 
       STA    ENABL   
       STA    HMP0    
       CPY    #$03    
       BEQ    LF819   
       NOP            
       LDA    #$C0    
       STA    COLUP0  
       STA    CXCLR   
       NOP            
       LDA    $F4     
       STA    HMBL    
       LDX    $A8,Y   
       LDY    #$1A    
       LDA    ($C7),Y 
       STA    COLUP1  
       NOP            
       LDA    #$C4    
       STA    COLUBK  
       STA    HMOVE   
       LDA    ($C7),Y 
       JMP    LF863   
LF819: LDA    $AB     
       SBC    #$06    
       STA    $9E     
       LDA    #$04    
       STA    COLUPF  
       LDY    #$1D    
LF825: DEY            
       LDA    ($C7),Y 
       TAX            
       AND    #$01    
       BEQ    LF82F   
       LDA    ($C5),Y 
LF82F: STA    WSYNC   
       STA    HMOVE   
       STA    GRP1    
       STX    COLUP1  
       LDX    LFCEC,Y 
       STX    COLUBK  
       LDA    LFE3C,Y 
       STA    PF0     
       STA    PF1     
       STA    PF2     
       LDX    $9E     
       CPY    #$14    
       BEQ    LF873   
       BNE    LF825   
LF84D: JSR    LFEFE   
       LDA    #$C0    
       BMI    LF883   
LF854: STA.w  $001C   
       BEQ    LF86B   
LF859: DEX            
       STA.w  $0006   
       STA    HMOVE   
       LDA    ($C7),Y 
       STA    COLUP1  
LF863: AND    #$01    
       BEQ    LF854   
       LDA    ($C5),Y 
       STA    GRP1    
LF86B: LDA    ($BF),Y 
       STA    COLUPF  
       AND    $BC     
       STA    HMBL    
LF873: STY    $9E     
       CPX    $C3     
       BCS    LF84D   
       TXA            
       TAY            
       LDA    ($BD),Y 
       STA    GRP0    
       LDA    ($C1),Y 
       LDY    $9E     
LF883: DEY            
       BNE    LF859   
       LDX    #$18    
       STA    COLUP0  
       STA    HMOVE   
       STX    COLUBK  
       LDA    ($C7),Y 
       STA    COLUP1  
       AND    #$01    
       BEQ    LF8A1   
       LDA    ($C5),Y 
       STA    GRP1    
LF89A: STY    ENABL   
       NOP            
       NOP            
       JMP    LF739   
LF8A1: STA.w  $001C   
       BEQ    LF89A   
LF8A6: INY            
       STA    WSYNC   
       STA    HMOVE   
       STY    PF1     
       STY    PF2     
       STY    GRP0    
       STY    GRP1    
       STY    GRP0    
       STY    REFP1   
       STY    REFP0   
       STY    VDELP0  
       STY    NUSIZ0  
       LDA    $91     
       LSR            
       LSR            
       LSR            
       EOR    #$FF    
       CLC            
       STA    RESBL   
       ADC    #$65    
       STA    $CF     
       LDA    CXPPMM  
       STA    $81     
       LDA    #$FC    
       STA    $D0     
       STA    $D4     
       STA    HMCLR   
       LDX    $CD     
       STA    WSYNC   
       STA    HMOVE   
       STA    $DA     
       LDA    #$0F    
       STA    COLUP1  
       LDA    $D7     
       NOP            
LF8E6: DEX            
       BPL    LF8E6   
       STA    RESM0   
       STA    HMCLR   
       STA    HMM0    
       STA    WSYNC   
       STA    HMOVE   
       STY    COLUP0  
       LDY    #$16    
       STY    COLUBK  
       NOP            
       LDX    $CE     
LF8FC: DEX            
       BPL    LF8FC   
       STA    RESM1   
       LDA    $D8     
       STA    HMCLR   
       STA    HMM1    
       STA    WSYNC   
       STA    HMOVE   
       STY    COLUPF  
       LDA    #$11    
       STA    CTRLPF  
       LDA    $F0     
       AND    #$03    
       TAY            
       LDA    LFBF6,Y 
       STA    $D9     
       LDA    $94     
       AND    #$18    
       LSR            
       EOR    #$FF    
       ADC    #$65    
       STA    $D3     
       LDY    #$10    
       LDA    #$FC    
       STA    PF1     
       STX    PF0     
       STA    HMCLR   
       STA    WSYNC   
       STA    HMOVE   
       TXA            
       LDX    #$0B    
LF937: STA    $BD,X   
       DEX            
       DEX            
       BPL    LF937   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$08    
       STA    COLUPF  
       BNE    LF975   
LF947: DEY            
       LDX    #$00    
       LDA    #$16    
       STA    WSYNC   
       STA    HMOVE   
       STA    COLUBK  
       STX    GRP0    
       STX    ENAM0   
       STX    ENAM1   
       JSR    LFEFF   
       LDA    #$90    
       STA    RESP0   
       STA    HMP0    
       TYA            
       AND    #$04    
       BNE    LF988   
       JSR    LFEFF   
       STA    RESP0   
       BPL    LF988   
LF96D: STA    WSYNC   
       STA    HMOVE   
       STX    GRP0    
       STA    ENABL   
LF975: LDA    ($D3),Y 
       STA    ENAM1   
       LDA    ($CF),Y 
       STA    ENAM0   
       LDA    LFEE3,Y 
       STA    COLUBK  
       STA    HMCLR   
       CMP    #$18    
       BEQ    LF947   
LF988: LDA    ($D9),Y 
       LDX    LFDEC,Y 
       DEY            
       BPL    LF96D   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$08    
       STA    COLUBK  
       INY            
       STY    PF1     
       STY    PF0     
       LDY    #$07    
       LDA    $8A     
       AND    #$1F    
       CMP    #$14    
       BCS    LF9AE   
       LDY    #$00    
       SBC    #$0B    
       BCC    LF9AE   
       TAY            
LF9AE: STY    $9F     
       TYA            
       EOR    #$07    
       STA    $85     
       LDA    #$85    
       LDX    #$08    
       SEC            
       STA    WSYNC   
       STA    HMOVE   
LF9BE: STA    $BF,X   
       SBC    #$08    
       STA    $BD,X   
       SBC    #$08    
       DEX            
       DEX            
       DEX            
       DEX            
       BPL    LF9BE   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$00    
       STA    COLUBK  
       STA    COLUPF  
       JSR    LFD28   
       LDA    #$78    
       STA    PF1     
       LDA    #$31    
       STA    CTRLPF  
       STA    NUSIZ1  
       STA    HMCLR   
       LSR            
       STA    HMBL    
       LDY    #$07    
       STY    ENABL   
LF9EC: LDX    LFFB8,Y 
       LDA    LFF98,Y 
       STA    GRP0    
       STA    WSYNC   
       STA    HMOVE   
       LDA    LFF8D,Y 
       STA    COLUPF  
       LDA    LFFA0,Y 
       STA    GRP1    
       LDA    LFFA8,Y 
       STA    GRP0    
       LDA    ($BD),Y 
       LDA    LFFB0,Y 
       STA    GRP1    
       STX    GRP0    
       STA    GRP1    
       LDA    #$00    
       STA    COLUPF  
       DEY            
       DEC    $85     
       BPL    LF9EC   
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       STA    GRP1    
       STA    GRP0    
       STA    PF1     
       STA    ENABL   
       JMP    LF011   
LFA2C: LDA    LFED2,Y 
       STA.wy $0090,Y 
       DEY            
       BPL    LFA2C   
       STA    $A0     
       LDA    #$50    
       STA    $9D     
       LDX    #$03    
LFA3D: LDY    $F1,X   
       LDA    LF011,Y 
       AND    #$07    
       TAY            
       LDA    LFCEE,Y 
       STA    $F5,X   
       DEX            
       BPL    LFA3D   
LFA4D: LDA    $93     
       AND    #$03    
       STA    $9E     
       STA    $B8     
       STA    $BA     
       CLC            
       ADC    #$02    
       STA    $B9     
       LDX    #$03    
LFA5E: LDA    $93     
       BEQ    LFA8D   
       CMP    $F5,X   
       BNE    LFA6D   
       TXA            
       AND    #$01    
       ADC    #$0E    
       BPL    LFA8D   
LFA6D: TXA            
       CLC            
       ADC    $9E     
       ADC    #$07    
       CMP    #$0B    
       BCC    LFA79   
       SBC    #$04    
LFA79: LDY    $9E     
       BNE    LFA83   
       CMP    #$09    
       BCS    LFA83   
       ADC    #$02    
LFA83: CPX    #$03    
       BNE    LFA8D   
       ROR            
       BCS    LFA8C   
       SBC    #$00    
LFA8C: ROL            
LFA8D: STA    $AC,X   
       LDY    #$00    
       STY    $BB     
       STY    $F1     
       STY    $B0,X   
       STY    $81,X   
       LDY    #$1A    
       STY    $A8,X   
       TAY            
       BEQ    LFAF3   
       CMP    #$0F    
       BCS    LFAEF   
       LDA    LFFE9,Y 
       STA    $BD     
       LDA    $97     
       LSR            
       LSR            
       STA    $85     
       LDA    $97     
       AND    #$03    
       CMP    LFF8D,Y 
       LDA    $85     
       BEQ    LFAC2   
       SBC    #$00    
       CMP    #$04    
       BCC    LFAC2   
       LDA    #$03    
LFAC2: TAY            
       LDA    ($BD),Y 
       LDY    #$04    
       CPY    $93     
       BNE    LFACD   
       LDA    #$00    
LFACD: ORA    $80     
       STA    $B0,X   
       LDY    $AC,X   
       CPY    #$07    
       BEQ    LFAE9   
       LDY    #$06    
       AND    #$08    
       BNE    LFAF1   
       LDY    #$9A    
       LDA    #$04    
       AND    $B0,X   
       BEQ    LFAF1   
       LDY    #$5A    
       BNE    LFAF1   
LFAE9: LDY    #$2D    
       AND    #$07    
       BNE    LFAF1   
LFAEF: LDY    #$4D    
LFAF1: STY    $A4,X   
LFAF3: DEX            
       BMI    LFAF9   
       JMP    LFA5E   
LFAF9: LDA    $8E     
       AND    #$F3    
       STA    $8E     
       RTS            

LFB00: .byte $00,$3C,$7E,$7E,$7E,$7E,$3C,$80,$80,$C6,$64,$6C,$7C,$38,$30,$7C
       .byte $7E,$72,$70,$30,$38,$38,$3C,$38,$38,$38,$38,$00,$00,$03,$62,$F2
       .byte $BE,$3C,$B8,$B8,$FC,$7E,$32,$32,$38,$38,$3C,$38,$38,$38,$38,$04
       .byte $86,$88,$E8,$28,$38,$38,$30,$7C,$7E,$72,$70,$30,$38,$38,$3C,$38
       .byte $38,$38,$38,$18,$50,$50,$7E,$16,$3C,$38,$3C,$3C,$38,$38,$30,$30
       .byte $38,$38,$3C,$38,$38,$38,$38,$20,$42,$44,$62,$66,$2E,$3C,$38,$3C
       .byte $3C,$38,$30,$30,$38,$38,$3C,$38,$38,$38,$38,$E7,$BD,$E7,$BD,$FF
       .byte $A5,$DB,$5A,$66,$3C,$42,$18,$00,$00,$E7,$BD,$E7,$BD,$FF,$A5,$DB
       .byte $5A,$66,$3C,$00,$00,$81,$24,$66,$7F,$09,$FE,$AA,$FE,$AA,$FE,$AA
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$24,$3C,$3E,$7F,$7F,$7F,$7F,$7F
       .byte $3E,$1C,$08,$1C,$36,$07,$0F,$13,$23,$43,$47,$7E,$7C,$00,$60,$20
       .byte $78,$76,$6F,$DF,$B3,$83,$78,$00,$60,$20,$78,$F6,$EF,$DF,$33,$03
       .byte $78
LFBC1: .byte $FF,$4C,$6C,$FF,$FF,$1A,$15,$FF,$FF,$0C,$0D,$FF,$FF,$05,$05,$FF
       .byte $FF,$00,$02,$FF,$03,$00,$08,$00,$40,$44,$24,$44,$22,$1A,$15,$1A
       .byte $15,$0C,$0D,$0C,$0D,$0D,$0D,$0D,$0D,$01,$03,$01,$03,$00,$08,$00
       .byte $08,$C0,$4D,$2D,$2D
LFBF6: .byte $81,$7D,$79,$7D
LFBFA: .byte $61,$38,$61
LFBFD: .byte $A8,$80,$A8,$01,$03,$03,$03,$03,$0D,$03,$0D,$03,$0D,$03,$0D,$03
       .byte $2B,$2B,$2B,$2B,$2B,$0D,$03,$0D,$14,$16,$18,$1A,$1C,$1E,$1C,$18
       .byte $10,$16,$18,$18,$18,$18,$16,$14,$00,$00,$00,$1C,$1C,$1C,$1C,$1C
       .byte $00,$42,$44,$46,$46,$44,$42,$83,$83,$83,$83,$83,$83,$83,$83,$83
       .byte $83,$2B,$2B,$2B,$2B,$2B,$01,$01,$01,$01,$01,$00,$00,$00,$0C,$0C
       .byte $0C,$0C,$0C,$0C,$0C,$0C,$0C,$0C,$0C,$0C,$0C,$0C,$0C,$0C,$0C,$0C
       .byte $0C,$0C,$0C,$0C,$0C,$0C,$0C,$0C,$FF,$FF,$FF,$18,$C0,$C0,$C0,$C0
       .byte $C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0
       .byte $C0,$C0,$C0,$C0,$C0,$C0,$C0,$FF,$FF,$FC,$0C,$0C,$0C,$FC,$0C,$0C
       .byte $0C,$FC,$0C,$0C,$0C,$FC,$0C,$0C,$0C,$FC,$0C,$0C,$0C,$FC,$0C,$0C
       .byte $0C,$FC,$0C,$0C,$0C,$FC,$0C,$0C,$0C,$FC,$18,$18,$B6,$B6,$B6,$B6
       .byte $B6,$B6,$B6,$B6,$B6,$B6,$B6,$B6,$B6,$B6,$B6,$B6,$B6,$B6,$B6,$B6
       .byte $B6,$B6,$BE,$BE,$96,$96,$96,$96,$96,$96,$96,$96,$9A,$9A,$C4,$C4
       .byte $C4,$C4,$C4,$C4,$C4,$C4,$C4,$C4,$C4,$C4,$C4,$C4,$C4,$C4
LFCDB: .byte $12,$F2,$10,$F0
LFCDF: .byte $01,$01,$01,$03,$03,$07,$07,$0F
LFCE7: LDA    $92     
       LSR            
       LSR            
       LSR            
LFCEC: TAX            
       RTS            

LFCEE: .byte $01,$01,$02,$03,$03,$05,$06,$06
LFCF6: .byte $BF,$7F,$BF
LFCF9: .byte $7F,$F1,$83,$87,$EE,$4B,$DF,$04,$18,$18,$28,$28,$38,$48,$58,$68
LFD09: .byte $68
LFD0A: .byte $07,$00,$07
LFD0D: LDX    #$FF    
       SEC            
LFD10: INX            
       SBC    #$0F    
       BCS    LFD10   
       STX    $CD,Y   
       EOR    #$0F    
       ASL            
       ASL            
       ASL            
       ASL            
       ADC    #$90    
       STA.wy $00D7,Y 
       DEY            
       RTS            

LFD24: LDA    #$07    
       STA    $9F     
LFD28: STA    WSYNC   
       STA    HMOVE   
       LDA    #$0F    
       STA    COLUP0  
       STA    COLUP1  
       LDX    #$F3    
       STX    NUSIZ0  
       STX    NUSIZ1  
       LDY    #$01    
       LDA    #$40    
       NOP            
       STA    RESP0   
       STA    RESP1   
       STA    RESBL   
       STY    CTRLPF  
       STA    HMBL    
       STX    HMP0    
       STA    WSYNC   
       STA    HMOVE   
       STY    VDELP0  
       STY    VDELP1  
       DEY            
       STY    GRP0    
       STY    GRP1    
       STY    GRP0    
       STA    $9E     
LFD5A: STA    HMCLR   
LFD5C: LDY    $9F     
       LDA    ($C7),Y 
       STA    $9E     
       LDA    ($C5),Y 
       TAX            
       LDA    ($BD),Y 
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       LDA    ($BF),Y 
       STA    GRP1    
       LDA    ($C1),Y 
       STA    GRP0    
       LDA    ($C3),Y 
       LDY    $9E     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       DEC    $9F     
       BPL    LFD5C   
       LDA    #$80    
       STA    HMP0    
       STA    HMP1    
       ASL            
       STA    WSYNC   
       STA    HMOVE   
       RTS            

LFD91: STA    $9E     
       LDA    $97     
       LSR            
       LSR            
       TAY            
       LDA    $97     
       AND    #$03    
       CMP    $9E     
       BCS    LFDA5   
       TYA            
       BEQ    LFDA5   
       SEC            
       DEY            
LFDA5: TYA            
       RTS            

LFDA7: LSR            
       LSR            
       LSR            
       LSR            
LFDAB: CLC            
       ADC    #$0A    
       INY            
       CPY    #$08    
       BCC    LFDAB   
       ADC    #$1F    
       RTS            

LFDB6: LDX    #$01    
LFDB8: BIT    $98     
       BMI    LFDE3   
       LDY    $9A     
       SED            
       CLC            
LFDC0: ADC    $9A,X   
       STA    $9A,X   
       LDA    #$00    
       DEX            
       BPL    LFDC0   
       CLD            
       BCC    LFDD6   
       LDA    #$AA    
       STA    $9C     
       STA    $9B     
       STA    $9A     
       INC    $88     
LFDD6: CPY    $9A     
       BEQ    LFDE3   
       LDX    $96     
       INX            
       CPX    #$04    
       BCS    LFDE3   
       STX    $96     
LFDE3: RTS            

LFDE4: BIT    $98     
       BMI    LFDEC   
       STA    AUDC0   
       STA    AUDV0   
LFDEC: RTS            

LFDED: .byte $00,$06,$0C,$18,$00,$60,$30,$18,$00,$06,$0C,$18,$00,$00,$00,$00
LFDFD: .byte $00,$05,$07
LFE00: .byte $01,$15,$15,$15,$15,$15,$0F,$0F,$07,$0B,$0A,$0A,$05,$04,$01,$0B
       .byte $0C
LFE11: .byte $4A,$4A,$C0,$C0,$C0,$4A,$67,$A6,$A6
LFE1A: .byte $00,$10,$1C,$03,$1C,$10,$00,$00
LFE22: .byte $00,$08,$00,$0F,$1C,$08,$80,$80,$00,$70,$78,$FE,$F6,$FC,$78,$38
       .byte $0C,$1C,$1C,$1E,$1C,$3F,$1E,$1E,$1E,$0C
LFE3C: .byte $3E,$34,$3E,$3E,$7E,$76,$7E,$76,$7E,$34,$18,$38,$38,$3C,$38,$7E
       .byte $3C,$3C,$3C,$18,$00,$7F,$7F,$5F,$5F,$5A,$1A,$00,$00,$00,$00,$B3
       .byte $FE,$36,$BE,$F4,$7E,$19,$39,$39,$3D,$39,$7E,$3C,$3C,$3C,$18,$80
       .byte $83,$FF,$7E,$7E,$36,$7E,$77,$7D,$34,$18,$38,$38,$3C,$38,$7E,$3C
       .byte $3C,$3C,$18,$02,$83,$FC,$FC,$3C,$34,$7E,$77,$7D,$34,$18,$38,$38
       .byte $3C,$38,$7E,$3C,$3C,$3C,$18,$18,$50,$7E,$7E,$3C,$3E,$3E,$3C,$3C
       .byte $34,$18,$38,$38,$3C,$38,$7E,$3C,$3C,$3C,$18,$20,$46,$7C,$7E,$7E
       .byte $34,$3E,$3E,$3C,$34,$18,$38,$38,$3C,$38,$7E,$3C,$3C,$3C,$18
LFEBB: LDA    $F0     
       AND    #$03    
       CMP    #$03    
       BNE    LFEC4   
       LSR            
LFEC4: RTS            

LFEC5: .byte $04
LFEC6: .byte $0B,$14,$0B,$04
LFECA: .byte $3D,$6C,$58,$80,$94,$A8,$3D,$2C
LFED2: .byte $4D,$00,$00,$00,$0B,$06,$03,$00,$00,$00,$00,$00,$00
LFEDF: .byte $16,$16,$16,$78
LFEE3: .byte $16,$18,$C4,$C4,$16,$18,$C4,$C4,$16,$18,$C4,$C4,$16,$18,$08,$08
       .byte $08
LFEF4: SED            
       LDA    $9D     
       SEC            
       SBC    #$01    
       BCC    LFEFE   
       STA    $9D     
LFEFE: CLD            
LFEFF: RTS            

LFF00: .byte $00,$3C,$66,$66,$66,$66,$66,$3C,$00,$3C,$18,$18,$18,$18,$38,$18
       .byte $00,$7E,$60,$60,$3C,$06,$46,$3C,$00,$3C,$46,$06,$0C,$06,$46,$3C
       .byte $00,$0C,$0C,$7E,$4C,$2C,$1C,$0C,$00,$7C,$46,$06,$7C,$60,$60,$7E
       .byte $00,$3C,$66,$66,$7C,$60,$62,$3C,$00,$18,$18,$18,$0C,$06,$42,$7E
       .byte $00,$3C,$66,$66,$3C,$66,$66,$3C,$00,$3C,$46,$06,$3E,$66,$66,$3C
       .byte $00,$3F,$1E,$1E,$1E,$1E,$0C,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $F7,$95,$87,$90,$F0,$00,$47,$41,$77,$55,$75,$00,$00,$00,$03,$00
       .byte $4B,$4A,$6B,$00,$08,$00,$80,$80,$AA,$AA,$BA,$27,$22,$00,$00,$00
       .byte $11,$11,$17,$15,$17,$00,$00,$00,$77,$51,$73,$51,$77
LFF8D: .byte $84,$D6,$D6,$1A,$26,$26,$44,$01,$00,$02,$03
LFF98: .byte $0C,$06,$03,$01,$00,$00,$00,$00
LFFA0: .byte $2D,$29,$E9,$A9,$ED,$61,$2F,$00
LFFA8: .byte $50,$58,$5C,$56,$53,$11,$F0,$00
LFFB0: .byte $BA,$8A,$BA,$A2,$3A,$80,$FE,$00
LFFB8: .byte $E9,$AB,$AF,$AD,$E9,$00,$00,$00
LFFC0: .byte $43,$43,$00,$00,$C0,$00
LFFC6: .byte $E0,$D0,$C0,$F0,$D0,$E0,$F0,$C0
LFFCE: .byte $00,$06,$1A,$2E,$42,$56,$6A,$78,$00,$86,$AD,$B7,$A4,$A9,$00,$8F
       .byte $99
LFFDF: .byte $2D,$00,$00,$00,$00,$00,$79,$79,$2D,$47
LFFE9: .byte $24,$24,$69,$69,$69,$1C,$14,$F4,$F8,$F8,$58,$00,$04,$06,$06,$00
       .byte $00,$04,$04,$00,$F0,$00,$F0
