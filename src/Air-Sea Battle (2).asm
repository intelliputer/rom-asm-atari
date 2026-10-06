; Disassembly of roms/Air-Sea Battle (2).bin
; Disassembled Tue Oct  6 15:19:35 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Air-Sea Battle (2).bin
;

      processor 6502
VSYNC   =  $00
VBLANK  =  $01
WSYNC   =  $02
NUSIZ0  =  $04
COLUP0  =  $06
COLUP1  =  $07
COLUBK  =  $09
CTRLPF  =  $0A
REFP0   =  $0B
REFP1   =  $0C
PF1     =  $0E
RESP0   =  $10
RESP1   =  $11
AUDC0   =  $15
AUDF0   =  $17
AUDV0   =  $19
GRP0    =  $1B
GRP1    =  $1C
ENAM0   =  $1D
ENAM1   =  $1E
HMP0    =  $20
HMP1    =  $21
HMM0    =  $22
RESMP0  =  $28
RESMP1  =  $29
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
INPT4   =  $3C
SWCHA   =  $0280
SWCHB   =  $0282
SWBCNT  =  $0283
INTIM   =  $0284
TIM64T  =  $0296

       ORG $F000

START:
       SEI            
       CLD            
       LDA    #$00    
       TAX            
LF005: STA    VSYNC,X 
       INX            
       BNE    LF005   
       LDA    #$0A    
       STA    REFP1   
       STA    CTRLPF  
       STA    $97     
       LDA    #$10    
       STA    SWBCNT  
LF017: LDA    #$02    
       STA    WSYNC   
       STA    VBLANK  
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    VSYNC   
       INC    $80     
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    WSYNC   
       STA    VSYNC   
       LDA    #$2C    
       STA    TIM64T  
       LDX    #$FF    
       TXS            
       JSR    LF175   
       LDA    #$99    
       STA    $81     
LF040: LDA    INTIM   
       BNE    LF040   
       STA    WSYNC   
       STA    HMOVE   
       STA    VBLANK  
LF04B: STA    WSYNC   
       STA    HMCLR   
       INC    $81     
       STA    WSYNC   
       LDA    $81     
       CMP    $84     
       BCC    LF04B   
       CMP    #$9C    
       BCS    LF0AC   
LF05D: STA    WSYNC   
       LDA    $85     
       STA    PF1     
       LDY    $8F     
       LDA    LF663,Y 
       AND    #$F0    
       STA    $85     
       LDY    $8D     
       LDA    LF663,Y 
       AND    #$0F    
       ORA    $85     
       STA    $85     
       LDA    $86     
       STA    PF1     
       LDY    $90     
       LDA    LF663,Y 
       AND    #$F0    
       STA    $86     
       LDY    $8E     
       LDA    LF663,Y 
       AND    $9B     
       ORA    $86     
       STA    $86     
       STA    WSYNC   
       INC    $81     
       LDA    $81     
       CMP    #$A0    
       BCS    LF0AC   
       LDA    $85     
       STA    PF1     
       INC    $8D     
       INC    $8F     
       INC    $8E     
       INC    $90     
       LDA    $86     
       STA    PF1     
       JMP    LF05D   
LF0AC: LDX    #$00    
       STX    PF1     
       STX    $B1     
LF0B2: LDA    $B2,X   
       STA    NUSIZ0  
       STA    REFP0   
       LDA    VSYNC   
       LSR            
       LSR            
       ORA    VBLANK  
       STA    $D9,X   
       LDA    $E2,X   
       STA    COLUP0  
       STA    COLUP1  
       LDA    $EC,X   
       STA    COLUBK  
       STA    WSYNC   
       LDA    $C6,X   
       STA    HMP0    
       LDA    $C6,X   
       AND    #$0F    
       TAY            
LF0D5: DEY            
       BPL    LF0D5   
       STA    RESP0   
       STA    WSYNC   
       STA    HMOVE   
       BMI    LF0E2   
LF0E0: STA    WSYNC   
LF0E2: TXA            
       LDX    #$1E    
       TXS            
       TAX            
       SEC            
       LDA    $81     
       SBC    $94     
       AND    $AC     
       PHP            
       SEC            
       LDA    $81     
       SBC    $93     
       AND    $AB     
       STA    $87     
       LDA    $D0,X   
       BPL    LF105   
       ASL            
       BPL    LF103   
       LDA    #$00    
       BEQ    LF10B   
LF103: LDA    $9E     
LF105: ORA    $B1     
       TAY            
       LDA    LF695,Y 
LF10B: INC    $81     
       STA    WSYNC   
       STA    GRP0    
       LDA    $87     
       PHP            
       INC    $B1     
       LDA    $B1     
       AND    #$07    
       BNE    LF0E0   
       STA    $B1     
       INX            
       CPX    #$09    
       BCC    LF0B2   
       STA    HMP0    
       STA    WSYNC   
       LDA    $C6,X   
       STA    HMP1    
       LDA    $C6,X   
       AND    #$0F    
       TAY            
LF130: DEY            
       BPL    LF130   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$00    
       STA    ENAM0   
       STA    ENAM1   
       LDA    $EB     
       STA    COLUP1  
       BIT    $9A     
       BMI    LF16A   
       LDY    $A3     
       LDX    $A4     
LF14B: STA    WSYNC   
       LDA    LF71C,Y 
       STA    GRP0    
       LDA    LF71C,X 
       STA    GRP1    
       STA    WSYNC   
       INY            
       INX            
       INC    $81     
       TXA            
       AND    #$07    
       BNE    LF14B   
       STA    GRP0    
       STA    GRP1    
       LDA    $F5     
       STA    COLUBK  
LF16A: STA    WSYNC   
       STA    WSYNC   
       INC    $81     
       BNE    LF16A   
       JMP    LF017   
LF175: LDA    $97     
       STA    SWCHB   
       CMP    #$0A    
       BEQ    LF1D8   
       LDA    SWCHB   
       ROR            
       BCS    LF1A1   
       LDA    #$FF    
       STA    $97     
       LDA    #$00    
       STA    $8B     
       STA    $8C     
       STA    $83     
       LDA    #$80    
       STA    $82     
       LDA    $80     
       AND    #$01    
       STA    $80     
       LDA    #$0F    
       STA    $9B     
       JMP    LF231   
LF1A1: LDY    #$9A    
       LDA    $82     
       AND    $97     
       CMP    #$F0    
       BCC    LF1B3   
       LDA    $80     
       AND    #$30    
       BNE    LF1B3   
       LDY    #$A0    
LF1B3: STY    $84     
       LDA    $80     
       AND    #$3F    
       BNE    LF1C3   
       STA    $83     
       INC    $82     
       BNE    LF1C3   
       STA    $97     
LF1C3: LDA    SWCHB   
       AND    #$02    
       BEQ    LF1CE   
       STA    $83     
       BNE    LF247   
LF1CE: BIT    $83     
       BMI    LF247   
       LDA    #$FF    
       STA    $83     
       INC    $98     
LF1D8: LDA    $99     
       STA    $8B     
       LDX    #$00    
       STX    $8C     
       STX    $9B     
       STX    $97     
       STX    $80     
       LDA    $98     
       CMP    #$1B    
       BCC    LF1F0   
       STX    $8B     
       STX    $98     
LF1F0: LDY    #$FF    
       JSR    LF790   
       LDA    $8B     
       STA    $99     
       LDX    #$08    
       LDA    #$FE    
LF1FD: STA    $D0,X   
       DEX            
       BPL    LF1FD   
       LDX    $98     
       LDA    LF600,X 
       STA    $9A     
       BMI    LF215   
       LDY    #$01    
       AND    #$0A    
       BEQ    LF225   
       LDA    #$C0    
       BNE    LF225   
LF215: ROL            
       ROL            
       ROL            
       ROL            
       AND    #$03    
       TAY            
       LDA    LF61B,Y 
       CPX    #$18    
       BCC    LF225   
       AND    #$E7    
LF225: STA    $A0     
       LDA    LF61F,Y 
       STA    $A1     
       LDA    LF623,Y 
       STA    $A2     
LF231: LDA    #$E2    
       STA    $CE     
       STA    RESMP0  
       STA    RESMP1  
       LDA    #$08    
       STA    $CF     
       LDA    #$20    
       STA    $C4     
       LDA    #$78    
       STA    $C5     
       BNE    LF265   
LF247: LDX    #$01    
LF249: LDA    VSYNC,X 
       AND    LF746,X 
       BEQ    LF262   
       LDY    #$FF    
LF252: INY            
       CPY    #$08    
       BCS    LF262   
       LDA.wy $00DA,Y 
       AND    LF744,X 
       BEQ    LF252   
       JSR    LF790   
LF262: DEX            
       BPL    LF249   
LF265: STA    CXCLR   
       LDA    $9A     
       AND    #$10    
       TAY            
       LDA    #$F0    
       CPY    #$00    
       BNE    LF277   
       LDA    SWCHA   
       AND    #$F0    
LF277: LSR            
       LSR            
       LSR            
       LSR            
       STA    $A5     
       LDA    SWCHA   
       AND    #$0F    
       STA    $A6     
       LDA    $80     
       AND    #$01    
       TAX            
       LDA    SWCHB   
       EOR    #$FF    
       AND    LF746,X 
       BEQ    LF295   
       LDA    #$20    
LF295: STA    $BA,X   
       STA    NUSIZ0,X
       LDA    $9A     
       BPL    LF2A5   
       AND    #$01    
       BNE    LF2A5   
       LDA    $93,X   
       BNE    LF30A   
LF2A5: LDA    $A5,X   
       AND    #$03    
       TAY            
       LDA    LF651,Y 
       STA    $9C,X   
       CLC            
       ADC    #$40    
       TAY            
       LDA    #$08    
       BIT    $9A     
       BNE    LF2C6   
       BVC    LF301   
       TXA            
       BNE    LF2C4   
       LDA    $9A     
       AND    #$20    
       BNE    LF30A   
LF2C4: STY    $9C,X   
LF2C6: BIT    $9A     
       BMI    LF30A   
       LDA    $A5,X   
       AND    #$08    
       BEQ    LF2E5   
       LDA    $A5,X   
       AND    #$04    
       BNE    LF2F9   
       SEC            
       LDA    $C4,X   
       SBC    #$02    
       CMP    LF748,X 
       BCS    LF2F2   
       LDA    LF748,X 
       BNE    LF2F2   
LF2E5: CLC            
       LDA    $C4,X   
       ADC    #$02    
       CMP    LF74A,X 
       BCC    LF2F2   
       LDA    LF74A,X 
LF2F2: STA    $C4,X   
       JSR    LF74C   
       STA    $CE,X   
LF2F9: LDA    $9A     
       AND    #$0C    
       CMP    #$04    
       BEQ    LF307   
LF301: LDA    $A5,X   
       AND    #$03    
       ASL            
       ASL            
LF307: ASL            
       STA    $A3,X   
LF30A: LDA    $9A     
       AND    #$01    
       BEQ    LF314   
       LDA    $A5,X   
       STA    $A7,X   
LF314: LDA    $93,X   
       BNE    LF36E   
       BIT    $97     
       BPL    LF329   
       LDA    INPT4,X 
       BPL    LF32C   
       LDA    $9A     
       AND    #$10    
       BEQ    LF329   
       TXA            
       BEQ    LF32C   
LF329: JMP    LF3F6   
LF32C: LDA    $9A     
       AND    #$20    
       TAY            
       LDA    #$E7    
       BIT    $9A     
       BPL    LF347   
       LDA    LF627,X 
       BVC    LF347   
       CPX    #$00    
       BNE    LF344   
       CPY    #$00    
       BNE    LF347   
LF344: CLC            
       ADC    #$30    
LF347: STA    $93,X   
       LDA    #$00    
       STA    RESMP0,X
       LDA    $A5,X   
       STA    $A7,X   
       LDA    #$1F    
       STA    $AD,X   
       LDA    #$FF    
       STA    $AB,X   
       LDA    $C4,X   
       STA    $A9,X   
       BIT    $9A     
       BVC    LF36E   
       TXA            
       BNE    LF36A   
       LDA    $9A     
       AND    #$20    
       BNE    LF36E   
LF36A: LDA    #$FC    
       STA    $AB,X   
LF36E: LDA    $A1,X   
       BMI    LF378   
       TAY            
       LDA.wy $00D0,Y 
       BMI    LF3EA   
LF378: LDA    $A9,X   
       STA    $87     
       LDY    #$02    
       BIT    $9A     
       BMI    LF38B   
       BVC    LF392   
       LDA    $9A     
       AND    #$01    
       TAY            
       BEQ    LF3AC   
LF38B: LDA    $C4,X   
       STA    $87     
       JMP    LF3AC   
LF392: LDA    $A7,X   
       AND    #$03    
       TAY            
       LDA    LF73C,Y 
       CPX    #$00    
       BEQ    LF3A3   
       CLC            
       EOR    #$FF    
       ADC    #$01    
LF3A3: CLC            
       ADC    $A9,X   
       STA    $87     
       CMP    #$97    
       BCS    LF3EA   
LF3AC: SEC            
       LDA    $A9,X   
       SBC    $87     
       CMP    #$FC    
       BCS    LF3B9   
       CMP    #$05    
       BCS    LF3EA   
LF3B9: ASL            
       ASL            
       ASL            
       ASL            
       STA    HMM0,X  
       LDA    $87     
       STA    $A9,X   
       LDA    #$20    
       BIT    $9A     
       BPL    LF3DE   
       BVC    LF3D0   
       BEQ    LF3DE   
       TXA            
       BNE    LF3DE   
LF3D0: CLC            
       LDA    LF740,Y 
       ADC    $93,X   
       STA    $93,X   
       CMP    #$E0    
       BCS    LF3EA   
       BCC    LF3F6   
LF3DE: SEC            
       LDA    $93,X   
       SBC    LF740,Y 
       STA    $93,X   
       CMP    #$A0    
       BCS    LF3F6   
LF3EA: LDA    #$02    
       STA    RESMP0,X
       LDA    #$00    
       STA    $93,X   
       LDA    #$FF    
       STA    $AD,X   
LF3F6: JSR    LF781   
       TXA            
       BNE    LF40F   
       LDA    $95     
       STA    $96     
       LDY    #$05    
LF402: LDA.wy $00D0,Y 
       CMP    #$E0    
       ROR            
       BPL    LF40D   
       DEY            
       BPL    LF402   
LF40D: STA    $9F     
LF40F: LDA    LF746,X 
       STA    $89     
       TXA            
       ORA    #$06    
       TAX            
LF418: LDA    $B2,X   
       AND    #$0F    
       ORA    $BA     
       STA    $B2,X   
       ROR            
       LDA    #$8C    
       BCS    LF427   
       LDA    #$95    
LF427: STA    $88     
       LDY    #$01    
       CPX    $A2     
       BEQ    LF435   
       DEY            
       CPX    $A1     
       BEQ    LF435   
       DEY            
LF435: STY    $8A     
       LDA    $D0,X   
       BMI    LF43E   
       JMP    LF4DF   
LF43E: CMP    #$E1    
       BCS    LF444   
       INC    $D0,X   
LF444: LDA    #$04    
       BIT    $9A     
       BPL    LF44C   
       BNE    LF454   
LF44C: BIT    $9F     
       BMI    LF45B   
       CPX    #$06    
       BCC    LF458   
LF454: INC    $D0,X   
       BPL    LF45B   
LF458: JMP    LF550   
LF45B: LDA    $BA     
       STA    $B2,X   
       LDA    $9A     
       AND    #$02    
       BNE    LF469   
       LDA    $95     
       STA    $96     
LF469: LDA    $A0     
       AND    $89     
       BNE    LF4B0   
       LDY    $8A     
       BMI    LF47B   
       LDA.wy $009C,Y 
       AND    #$40    
       JMP    LF4BB   
LF47B: LDA    $9A     
       AND    #$0C    
       TAY            
       CMP    #$08    
       BNE    LF491   
       LDA    $96     
       AND    #$18    
       CLC            
       ADC    #$28    
       CMP    #$40    
       BCC    LF4BB   
       BCS    LF4B0   
LF491: BIT    $9A     
       BMI    LF49D   
       CPX    #$06    
       BCC    LF49D   
       LDA    #$20    
       BNE    LF4B4   
LF49D: LDA    $98     
       CMP    #$18    
       BCC    LF4A7   
       LDA    #$68    
       BNE    LF4BB   
LF4A7: LDA    $95     
       LSR            
       LDA    $96     
       AND    #$18    
       BCS    LF4B4   
LF4B0: LDA    #$C0    
       BNE    LF4BB   
LF4B4: CPY    #$00    
       BEQ    LF4BB   
       CLC            
       ADC    #$40    
LF4BB: STA    $D0,X   
       AND    #$08    
       BNE    LF4C7   
       LDA    #$05    
       ORA    $BA     
       STA    $B2,X   
LF4C7: LDY    #$00    
       LDA    $96     
       AND    #$04    
       BEQ    LF4D8   
       ASL            
       ORA    $B2,X   
       STA    $B2,X   
       LDA    #$8D    
       LDY    #$A9    
LF4D8: STA    $BC,X   
       STY    $C6,X   
       JMP    LF550   
LF4DF: LDY    $8A     
       BMI    LF4E6   
       LDA.wy $009C,Y 
LF4E6: LDY    #$02    
       STY    $87     
       AND    #$30    
       BEQ    LF4FA   
       DEC    $87     
       CMP    #$20    
       BCC    LF4FA   
       LDA    $80     
       AND    #$02    
       BNE    LF550   
LF4FA: LDA    $9A     
       AND    #$0C    
       TAY            
       CMP    #$08    
       BNE    LF513   
       LDA    $80     
       AND    #$7C    
       BNE    LF513   
       BIT    $95     
       BVC    LF513   
       LDA    $B2,X   
       EOR    #$08    
       STA    $B2,X   
LF513: LDA    $B2,X   
       AND    #$08    
       BEQ    LF524   
       LDA    $BC,X   
       SEC            
       SBC    $87     
       BCS    LF53D   
       LDA    $88     
       BNE    LF52F   
LF524: CLC            
       LDA    $BC,X   
       ADC    $87     
       CMP    $88     
       BCC    LF53D   
       LDA    #$00    
LF52F: CPY    #$04    
       BNE    LF53D   
       BIT    $9A     
       BMI    LF53D   
       LDA    #$C0    
       STA    $D0,X   
       BNE    LF550   
LF53D: STA    $BC,X   
       JSR    LF74C   
       STA    $C6,X   
       LDY    $8A     
       BMI    LF550   
       STA.wy $00CE,Y 
       LDA    $BC,X   
       STA.wy $00C4,Y 
LF550: DEX            
       DEX            
       BMI    LF55E   
       LSR    $89     
       LSR    $89     
       JSR    LF781   
       JMP    LF418   
LF55E: LDX    #$01    
LF560: STX    $87     
       LDA    $9A     
       AND    #$0C    
       LSR            
       ORA    $87     
       TAY            
       LDA    #$00    
       STA    AUDV0,X 
       STA    $85,X   
       LDA    $AD,X   
       BMI    LF581   
       STA    AUDF0,X 
       LDA    LF715,Y 
       STA    AUDC0,X 
       LDA    #$08    
       STA    AUDV0,X 
       DEC    $AD,X   
LF581: LDA    $AF,X   
       BMI    LF594   
       EOR    #$1F    
       STA    AUDF0,X 
       LDA    LF716,Y 
       STA    AUDC0,X 
       LDA    #$08    
       STA    AUDV0,X 
       DEC    $AF,X   
LF594: LDA    $8B,X   
       AND    #$0F    
       STA    $87     
       ASL            
       ASL            
       CLC            
       ADC    $87     
       STA    $8D,X   
       LDA    $8B,X   
       AND    #$F0    
       LSR            
       LSR            
       STA    $87     
       LSR            
       LSR            
       CLC            
       ADC    $87     
       STA    $8F,X   
       DEX            
       BPL    LF560   
       LDA    $97     
       EOR    #$FF    
       AND    $82     
       STA    $8A     
       LDA    #$0F    
       STA    $89     
       LDX    #$09    
       LDY    #$09    
       LDA    SWCHB   
       AND    #$08    
       BEQ    LF5D0   
       LDA    #$FF    
       STA    $89     
       LDY    #$13    
LF5D0: LDA    LF63D,Y 
       EOR    $8A     
       AND    $89     
       STA    $E2,X   
       DEY            
       DEX            
       BPL    LF5D0   
       LDX    #$09    
       LDY    #$09    
       BIT    $9A     
       BPL    LF5E7   
       LDY    #$13    
LF5E7: LDA    LF629,Y 
       EOR    $8A     
       AND    $89     
       STA    $EC,X   
       DEY            
       DEX            
       BPL    LF5E7   
       STA    COLUBK  
       LDA    $80     
       AND    #$04    
       ASL            
       ORA    #$70    
       STA    $9E     
       RTS            

LF600: .byte $02,$03,$12,$00,$01,$10,$46,$47,$56,$44,$45,$54,$08,$09,$18,$C0
       .byte $C1,$D0,$84,$85,$94,$E4,$E5,$F4,$E4,$E5,$F4
LF61B: .byte $0C,$00,$30,$7E
LF61F: .byte $00,$FF,$06,$00
LF623: .byte $01,$FF,$07,$07
LF627: .byte $A5,$AD
LF629: .byte $80,$82,$82,$84,$86,$88,$8A,$8C,$8E,$E8,$82,$82,$82,$82,$86,$88
       .byte $8A,$8C,$8E,$E8
LF63D: .byte $0C,$06,$0A,$0C,$0E,$00,$06,$00,$08,$06,$A8,$38,$16,$CC,$9C,$66
       .byte $A6,$38,$A8,$38
LF651: .byte $20,$20,$00,$10
LF655: .byte $03,$04,$01,$02,$00,$03,$01,$02,$03,$04,$01,$02,$00,$00
LF663: .byte $0E,$0A,$0A,$0A,$0E,$22,$22,$22,$22,$22,$EE,$22,$EE,$88,$EE,$EE
       .byte $22,$66,$22,$EE,$AA,$AA,$EE,$22,$22,$EE,$88,$EE,$22,$EE,$EE,$88
       .byte $EE,$AA,$EE,$EE,$22,$22,$22,$22,$EE,$AA,$EE,$AA,$EE,$EE,$AA,$EE
       .byte $22,$EE
LF695: .byte $00,$80,$86,$FF,$FF,$38,$30,$00,$00,$BE,$88,$FF,$FF,$08,$3E,$00
       .byte $00,$80,$C0,$FE,$0F,$18,$30,$00,$1F,$84,$CF,$7D,$0D,$0F,$00,$00
       .byte $7E,$C3,$DB,$C3,$DB,$7E,$18,$00,$00,$00,$08,$44,$3A,$7C,$46,$00
       .byte $7E,$DB,$FF,$E7,$BD,$81,$FF,$00,$00,$00,$0C,$0B,$44,$FE,$7E,$00
       .byte $00,$10,$38,$FF,$FE,$7E,$00,$00,$00,$10,$54,$7F,$FE,$FC,$3C,$00
       .byte $10,$10,$36,$FF,$7E,$3C,$00,$00,$28,$28,$28,$AB,$FF,$7E,$7C,$00
       .byte $2A,$1C,$1C,$2A,$08,$30,$C0,$00,$18,$5A,$3C,$FF,$3C,$5A,$18,$00
       .byte $18,$24,$42,$81,$42,$24,$18,$00,$42,$81,$99,$24,$99,$81,$42,$00
LF715: .byte $08
LF716: .byte $09,$04,$0C,$03,$01,$08
LF71C: .byte $1C,$1C,$38,$38,$70,$70,$FF,$FF,$70,$70,$70,$70,$70,$70,$FF,$FF
       .byte $00,$01,$07,$1E,$3C,$70,$FF,$FF,$1C,$1C,$38,$38,$70,$70,$FF,$FF
LF73C: .byte $01,$00,$02,$01
LF740: .byte $02,$02,$01,$02
LF744: .byte $10,$80
LF746: .byte $40,$80
LF748: .byte $02,$4D
LF74A: .byte $45,$90
LF74C: STA    $87     
       BPL    LF758   
       CMP    #$9E    
       BCC    LF758   
       LDA    #$00    
       STA    $87     
LF758: LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    $87     
       AND    #$0F    
       STY    $87     
       CLC            
       ADC    $87     
       CMP    #$0F    
       BCC    LF76D   
       SBC    #$0F    
       INY            
LF76D: CMP    #$08    
       EOR    #$0F    
       BCS    LF776   
       ADC    #$01    
       DEY            
LF776: INY            
       ASL            
       ASL            
       ASL            
       ASL            
       STA    $87     
       TYA            
       ORA    $87     
       RTS            

LF781: LSR    $95     
       ROL            
       EOR    $95     
       LSR            
       LDA    $95     
       BCS    LF78F   
       ORA    #$40    
       STA    $95     
LF78F: RTS            

LF790: STY    $87     
       LDY    #$02    
       LDA    $87     
       BMI    LF7C3   
       CMP    $A1,X   
       BEQ    LF7F6   
       TXA            
       EOR    #$01    
       TAY            
       LDA    $87     
       CMP.wy $00A1,Y 
       BNE    LF7B1   
       LDA    $9A     
       AND    #$20    
       BEQ    LF7F6   
       LDY    #$02    
       BNE    LF7C3   
LF7B1: LDY    $87     
       LDA.wy $00D0,Y 
       BMI    LF7F6   
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    $9A     
       AND    #$02    
       BEQ    LF7C3   
       TAY            
LF7C3: LDA    LF655,Y 
       SED            
       CLC            
       ADC    $8B,X   
       STA    $8B,X   
       CLD            
       BCS    LF7D3   
       CMP    #$99    
       BNE    LF7DF   
LF7D3: LDA    #$00    
       STA    $97     
       STA    $82     
       STA    $80     
       LDA    #$99    
       STA    $8B,X   
LF7DF: LDY    $87     
       LDA    #$1F    
       STA    $AF,X   
       CPY    #$08    
       BCS    LF7EE   
       LDA    #$A0    
       STA.wy $00D0,Y 
LF7EE: LDA    #$00    
       STA    $93,X   
       LDA    #$02    
       STA    RESMP0,X
LF7F6: LDY    $87     
       RTS            

LF7F9: .byte $6A,$00,$F0,$00,$F0,$00,$F0,$78,$D8,$A9,$00,$AA,$95,$00,$E8,$D0
       .byte $FB,$A9,$0A,$85,$0C,$85,$0A,$85,$97,$A9,$10,$8D,$83,$02,$A9,$02
       .byte $85,$02,$85,$01,$85,$02,$85,$02,$85,$02,$85,$00,$E6,$80,$85,$02
       .byte $85,$02,$A9,$00,$85,$02,$85,$00,$A9,$2C,$8D,$96,$02,$A2,$FF,$9A
       .byte $20,$75,$F1,$A9,$99,$85,$81,$AD,$84,$02,$D0,$FB,$85,$02,$85,$2A
       .byte $85,$01,$85,$02,$85,$2B,$E6,$81,$85,$02,$A5,$81,$C5,$84,$90,$F2
       .byte $C9,$9C,$B0,$4F,$85,$02,$A5,$85,$85,$0E,$A4,$8F,$B9,$63,$F6,$29
       .byte $F0,$85,$85,$A4,$8D,$B9,$63,$F6,$29,$0F,$05,$85,$85,$85,$A5,$86
       .byte $85,$0E,$A4,$90,$B9,$63,$F6,$29,$F0,$85,$86,$A4,$8E,$B9,$63,$F6
       .byte $25,$9B,$05,$86,$85,$86,$85,$02,$E6,$81,$A5,$81,$C9,$A0,$B0,$13
       .byte $A5,$85,$85,$0E,$E6,$8D,$E6,$8F,$E6,$8E,$E6,$90,$A5,$86,$85,$0E
       .byte $4C,$5D,$F0,$A2,$00,$86,$0E,$86,$B1,$B5,$B2,$85,$04,$85,$0B,$A5
       .byte $00,$4A,$4A,$05,$01,$95,$D9,$B5,$E2,$85,$06,$85,$07,$B5,$EC,$85
       .byte $09,$85,$02,$B5,$C6,$85,$20,$B5,$C6,$29,$0F,$A8,$88,$10,$FD,$85
       .byte $10,$85,$02,$85,$2A,$30,$02,$85,$02,$8A,$A2,$1E,$9A,$AA,$38,$A5
       .byte $81,$E5,$94,$25,$AC,$08,$38,$A5,$81,$E5,$93,$25,$AB,$85,$87,$B5
       .byte $D0,$10,$09,$0A,$10,$04,$A9,$00,$F0,$08,$A5,$9E,$05,$B1,$A8,$B9
       .byte $95,$F6,$E6,$81,$85,$02,$85,$1B,$A5,$87,$08,$E6,$B1,$A5,$B1,$29
       .byte $07,$D0,$C4,$85,$B1,$E8,$E0,$09,$90,$8F,$85,$20,$85,$02,$B5,$C6
       .byte $85,$21,$B5,$C6,$29,$0F,$A8,$88,$10,$FD,$85,$11,$85,$02,$85,$2A
       .byte $A9,$00,$85,$1D,$85,$1E,$A5,$EB,$85,$07,$24,$9A,$30,$23,$A4,$A3
       .byte $A6,$A4,$85,$02,$B9,$1C,$F7,$85,$1B,$BD,$1C,$F7,$85,$1C,$85,$02
       .byte $C8,$E8,$E6,$81,$8A,$29,$07,$D0,$E9,$85,$1B,$85,$1C,$A5,$F5,$85
       .byte $09,$85,$02,$85,$02,$E6,$81,$D0,$F8,$4C,$17,$F0,$A5,$97,$8D,$82
       .byte $02,$C9,$0A,$F0,$5A,$AD,$82,$02,$6A,$B0,$1D,$A9,$FF,$85,$97,$A9
       .byte $00,$85,$8B,$85,$8C,$85,$83,$A9,$80,$85,$82,$A5,$80,$29,$01,$85
       .byte $80,$A9,$0F,$85,$9B,$4C,$31,$F2,$A0,$9A,$A5,$82,$25,$97,$C9,$F0
       .byte $90,$08,$A5,$80,$29,$30,$D0,$02,$A0,$A0,$84,$84,$A5,$80,$29,$3F
       .byte $D0,$08,$85,$83,$E6,$82,$D0,$02,$85,$97,$AD,$82,$02,$29,$02,$F0
       .byte $04,$85,$83,$D0,$79,$24,$83,$30,$75,$A9,$FF,$85,$83,$E6,$98,$A5
       .byte $99,$85,$8B,$A2,$00,$86,$8C,$86,$9B,$86,$97,$86,$80,$A5,$98,$C9
       .byte $1B,$90,$04,$86,$8B,$86,$98,$A0,$FF,$20,$90,$F7,$A5,$8B,$85,$99
       .byte $A2,$08,$A9,$FE,$95,$D0,$CA,$10,$FB,$A6,$98,$BD,$00,$F6,$85,$9A
       .byte $30,$0A,$A0,$01,$29,$0A,$F0,$14,$A9,$C0,$D0,$10,$2A,$2A,$2A,$2A
       .byte $29,$03,$A8,$B9,$1B,$F6,$E0,$18,$90,$02,$29,$E7,$85,$A0,$B9,$1F
       .byte $F6,$85,$A1,$B9,$23,$F6,$85,$A2,$A9,$E2,$85,$CE,$85,$28,$85,$29
       .byte $A9,$08,$85,$CF,$A9,$20,$85,$C4,$A9,$78,$85,$C5,$D0,$1E,$A2,$01
       .byte $B5,$00,$3D,$46,$F7,$F0,$12,$A0,$FF,$C8,$C0,$08,$B0,$0B,$B9,$DA
       .byte $00,$3D,$44,$F7,$F0,$F3,$20,$90,$F7,$CA,$10,$E4,$85,$2C,$A5,$9A
       .byte $29,$10,$A8,$A9,$F0,$C0,$00,$D0,$05,$AD,$80,$02,$29,$F0,$4A,$4A
       .byte $4A,$4A,$85,$A5,$AD,$80,$02,$29,$0F,$85,$A6,$A5,$80,$29,$01,$AA
       .byte $AD,$82,$02,$49,$FF,$3D,$46,$F7,$F0,$02,$A9,$20,$95,$BA,$95,$04
       .byte $A5,$9A,$10,$08,$29,$01,$D0,$04,$B5,$93,$D0,$65,$B5,$A5,$29,$03
       .byte $A8,$B9,$51,$F6,$95,$9C,$18,$69,$40,$A8,$A9,$08,$24,$9A,$D0,$0D
       .byte $50,$46,$8A,$D0,$06,$A5,$9A,$29,$20,$D0,$46,$94,$9C,$24,$9A,$30
       .byte $40,$B5,$A5,$29,$08,$F0,$15,$B5,$A5,$29,$04,$D0,$23,$38,$B5,$C4
       .byte $E9,$02,$DD,$48,$F7,$B0,$12,$BD,$48,$F7,$D0,$0D,$18,$B5,$C4,$69
       .byte $02,$DD,$4A,$F7,$90,$03,$BD,$4A,$F7,$95,$C4,$20,$4C,$F7,$95,$CE
       .byte $A5,$9A,$29,$0C,$C9,$04,$F0,$06,$B5,$A5,$29,$03,$0A,$0A,$0A,$95
       .byte $A3,$A5,$9A,$29,$01,$F0,$04,$B5,$A5,$95,$A7,$B5,$93,$D0,$56,$24
       .byte $97,$10,$0D,$B5,$3C,$10,$0C,$A5,$9A,$29,$10,$F0,$03,$8A,$F0,$03
       .byte $4C,$F6,$F3,$A5,$9A,$29,$20,$A8,$A9,$E7,$24,$9A,$10,$10,$BD,$27
       .byte $F6,$50,$0B,$E0,$00,$D0,$04,$C0,$00,$D0,$03,$18,$69,$30,$95,$93
       .byte $A9,$00,$95,$28,$B5,$A5,$95,$A7,$A9,$1F,$95,$AD,$A9,$FF,$95,$AB
       .byte $B5,$C4,$95,$A9,$24,$9A,$50,$0D,$8A,$D0,$06,$A5,$9A,$29,$20,$D0
       .byte $04,$A9,$FC,$95,$AB,$B5,$A1,$30,$06,$A8,$B9,$D0,$00,$30,$72,$B5
       .byte $A9,$85,$87,$A0,$02,$24,$9A,$30,$09,$50,$0E,$A5,$9A,$29,$01,$A8
       .byte $F0,$21,$B5,$C4,$85,$87,$4C,$AC,$F3,$B5,$A7,$29,$03,$A8,$B9,$3C
       .byte $F7,$E0,$00,$F0,$05,$18,$49,$FF,$69,$01,$18,$75,$A9,$85,$87,$C9
       .byte $97,$B0,$3E,$38,$B5,$A9,$E5,$87,$C9,$FC,$B0,$04,$C9,$05,$B0,$31
       .byte $0A,$0A,$0A,$0A,$95,$22,$A5,$87,$95,$A9,$A9,$20,$24,$9A,$10,$15
       .byte $50,$05,$F0,$11,$8A,$D0,$0E,$18,$B9,$40,$F7,$75,$93,$95,$93,$C9
       .byte $E0,$B0,$0E,$90,$18,$38,$B5,$93,$F9,$40,$F7,$95,$93,$C9,$A0,$B0
       .byte $0C,$A9,$02,$95,$28,$A9,$00,$95,$93,$A9,$FF,$95,$AD,$20,$81,$F7
       .byte $8A,$D0,$13,$A5,$95,$85,$96,$A0,$05,$B9,$D0,$00,$C9,$E0,$6A,$10
       .byte $03,$88,$10,$F5,$85,$9F,$BD,$46,$F7,$85,$89,$8A,$09,$06,$AA,$B5
       .byte $B2,$29,$0F,$05,$BA,$95,$B2,$6A,$A9,$8C,$B0,$02,$A9,$95,$85,$88
       .byte $A0,$01,$E4,$A2,$F0,$06,$88,$E4,$A1,$F0,$01,$88,$84,$8A,$B5,$D0
       .byte $30,$03,$4C,$DF,$F4,$C9,$E1,$B0,$02,$F6,$D0,$A9,$04,$24,$9A,$10
       .byte $02,$D0,$08,$24,$9F,$30,$0B,$E0,$06,$90,$04,$F6,$D0,$10,$03,$4C
       .byte $50,$F5,$A5,$BA,$95,$B2,$A5,$9A,$29,$02,$D0,$04,$A5,$95,$85,$96
       .byte $A5,$A0,$25,$89,$D0,$41,$A4,$8A,$30,$08,$B9,$9C,$00,$29,$40,$4C
       .byte $BB,$F4,$A5,$9A,$29,$0C,$A8,$C9,$08,$D0,$0D,$A5,$96,$29,$18,$18
       .byte $69,$28,$C9,$40,$90,$2C,$B0,$1F,$24,$9A,$30,$08,$E0,$06,$90,$04
       .byte $A9,$20,$D0,$17,$A5,$98,$C9,$18,$90,$04,$A9,$68,$D0,$14,$A5,$95
       .byte $4A,$A5,$96,$29,$18,$B0,$04,$A9,$C0,$D0,$07,$C0,$00,$F0,$03,$18
       .byte $69,$40,$95,$D0,$29,$08,$D0,$06,$A9,$05,$05,$BA,$95,$B2,$A0,$00
       .byte $A5,$96,$29,$04,$F0,$09,$0A,$15,$B2,$95,$B2,$A9,$8D,$A0,$A9,$95
       .byte $BC,$94,$C6,$4C,$50,$F5,$A4,$8A,$30,$03,$B9,$9C,$00,$A0,$02,$84
       .byte $87,$29,$30,$F0,$0C,$C6,$87,$C9,$20,$90,$06,$A5,$80,$29,$02,$D0
       .byte $56,$A5,$9A,$29,$0C,$A8,$C9,$08,$D0,$10,$A5,$80,$29,$7C,$D0,$0A
       .byte $24,$95,$50,$06,$B5,$B2,$49,$08,$95,$B2,$B5,$B2,$29,$08,$F0,$0B
       .byte $B5,$BC,$38,$E5,$87,$B0,$1D,$A5,$88,$D0,$0B,$18,$B5,$BC,$65,$87
       .byte $C5,$88,$90,$10,$A9,$00,$C0,$04,$D0,$0A,$24,$9A,$30,$06,$A9,$C0
       .byte $95,$D0,$D0,$13,$95,$BC,$20,$4C,$F7,$95,$C6,$A4,$8A,$30,$08,$99
       .byte $CE,$00,$B5,$BC,$99,$C4,$00,$CA,$CA,$30,$0A,$46,$89,$46,$89,$20
       .byte $81,$F7,$4C,$18,$F4,$A2,$01,$86,$87,$A5,$9A,$29,$0C,$4A,$05,$87
       .byte $A8,$A9,$00,$95,$19,$95,$85,$B5,$AD,$30,$0D,$95,$17,$B9,$15,$F7
       .byte $95,$15,$A9,$08,$95,$19,$D6,$AD,$B5,$AF,$30,$0F,$49,$1F,$95,$17
       .byte $B9,$16,$F7,$95,$15,$A9,$08,$95,$19,$D6,$AF,$B5,$8B,$29,$0F,$85
       .byte $87,$0A,$0A,$18,$65,$87,$95,$8D,$B5,$8B,$29,$F0,$4A,$4A,$85,$87
       .byte $4A,$4A,$18,$65,$87,$95,$8F,$CA,$10,$AD,$A5,$97,$49,$FF,$25,$82
       .byte $85,$8A,$A9,$0F,$85,$89,$A2,$09,$A0,$09,$AD,$82,$02,$29,$08,$F0
       .byte $06,$A9,$FF,$85,$89,$A0,$13,$B9,$3D,$F6,$45,$8A,$25,$89,$95,$E2
       .byte $88,$CA,$10,$F3,$A2,$09,$A0,$09,$24,$9A,$10,$02,$A0,$13,$B9,$29
       .byte $F6,$45,$8A,$25,$89,$95,$EC,$88,$CA,$10,$F3,$85,$09,$A5,$80,$29
       .byte $04,$0A,$09,$70,$85,$9E,$60,$02,$03,$12,$00,$01,$10,$46,$47,$56
       .byte $44,$45,$54,$08,$09,$18,$C0,$C1,$D0,$84,$85,$94,$E4,$E5,$F4,$E4
       .byte $E5,$F4,$0C,$00,$30,$7E,$00,$FF,$06,$00,$01,$FF,$07,$07,$A5,$AD
       .byte $80,$82,$82,$84,$86,$88,$8A,$8C,$8E,$E8,$82,$82,$82,$82,$86,$88
       .byte $8A,$8C,$8E,$E8,$0C,$06,$0A,$0C,$0E,$00,$06,$00,$08,$06,$A8,$38
       .byte $16,$CC,$9C,$66,$A6,$38,$A8,$38,$20,$20,$00,$10,$03,$04,$01,$02
       .byte $00,$03,$01,$02,$03,$04,$01,$02,$00,$00,$0E,$0A,$0A,$0A,$0E,$22
       .byte $22,$22,$22,$22,$EE,$22,$EE,$88,$EE,$EE,$22,$66,$22,$EE,$AA,$AA
       .byte $EE,$22,$22,$EE,$88,$EE,$22,$EE,$EE,$88,$EE,$AA,$EE,$EE,$22,$22
       .byte $22,$22,$EE,$AA,$EE,$AA,$EE,$EE,$AA,$EE,$22,$EE,$00,$80,$86,$FF
       .byte $FF,$38,$30,$00,$00,$BE,$88,$FF,$FF,$08,$3E,$00,$00,$80,$C0,$FE
       .byte $0F,$18,$30,$00,$1F,$84,$CF,$7D,$0D,$0F,$00,$00,$7E,$C3,$DB,$C3
       .byte $DB,$7E,$18,$00,$00,$00,$08,$44,$3A,$7C,$46,$00,$7E,$DB,$FF,$E7
       .byte $BD,$81,$FF,$00,$00,$00,$0C,$0B,$44,$FE,$7E,$00,$00,$10,$38,$FF
       .byte $FE,$7E,$00,$00,$00,$10,$54,$7F,$FE,$FC,$3C,$00,$10,$10,$36,$FF
       .byte $7E,$3C,$00,$00,$28,$28,$28,$AB,$FF,$7E,$7C,$00,$2A,$1C,$1C,$2A
       .byte $08,$30,$C0,$00,$18,$5A,$3C,$FF,$3C,$5A,$18,$00,$18,$24,$42,$81
       .byte $42,$24,$18,$00,$42,$81,$99,$24,$99,$81,$42,$00,$08,$09,$04,$0C
       .byte $03,$01,$08,$1C,$1C,$38,$38,$70,$70,$FF,$FF,$70,$70,$70,$70,$70
       .byte $70,$FF,$FF,$00,$01,$07,$1E,$3C,$70,$FF,$FF,$1C,$1C,$38,$38,$70
       .byte $70,$FF,$FF,$01,$00,$02,$01,$02,$02,$01,$02,$10,$80,$40,$80,$02
       .byte $4D,$45,$90,$85,$87,$10,$08,$C9,$9E,$90,$04,$A9,$00,$85,$87,$4A
       .byte $4A,$4A,$4A,$A8,$A5,$87,$29,$0F,$84,$87,$18,$65,$87,$C9,$0F,$90
       .byte $03,$E9,$0F,$C8,$C9,$08,$49,$0F,$B0,$03,$69,$01,$88,$C8,$0A,$0A
       .byte $0A,$0A,$85,$87,$98,$05,$87,$60,$46,$95,$2A,$45,$95,$4A,$A5,$95
       .byte $B0,$04,$09,$40,$85,$95,$60,$84,$87,$A0,$02,$A5,$87,$30,$2B,$D5
       .byte $A1,$F0,$5A,$8A,$49,$01,$A8,$A5,$87,$D9,$A1,$00,$D0,$0A,$A5,$9A
       .byte $29,$20,$F0,$49,$A0,$02,$D0,$12,$A4,$87,$B9,$D0,$00,$30,$3E,$4A
       .byte $4A,$4A,$A8,$A5,$9A,$29,$02,$F0,$01,$A8,$B9,$55,$F6,$F8,$18,$75
       .byte $8B,$95,$8B,$D8,$B0,$04,$C9,$99,$D0,$0C,$A9,$00,$85,$97,$85,$82
       .byte $85,$80,$A9,$99,$95,$8B,$A4,$87,$A9,$1F,$95,$AF,$C0,$08,$B0,$05
       .byte $A9,$A0,$99,$D0,$00,$A9,$00,$95,$93,$A9,$02,$95,$28,$A4,$87,$60
       .byte $6A,$00,$F0,$00,$F0,$00,$F0
