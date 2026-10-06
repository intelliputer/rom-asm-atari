; Disassembly of roms/Bobby is Going Home (CCE).bin
; Disassembled Tue Oct  6 15:21:07 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Bobby is Going Home (CCE).bin
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
AUDC0   =  $15
AUDC1   =  $16
AUDF0   =  $17
AUDF1   =  $18
AUDV0   =  $19
AUDV1   =  $1A
GRP0    =  $1B
GRP1    =  $1C
ENAM1   =  $1E
HMP0    =  $20
HMM1    =  $23
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296
T1024T  =  $0297
LF115   =   $F115

       ORG $F000

START:
       CLD            
       LDX    #$00    
       LDA    #$00    
LF005: STA    VSYNC,X 
       TXS            
       INX            
       BNE    LF005   
LF00B: JSR    LFFD1   
       LDA    #$06    
       STA    $A9     
       LDA    #$02    
       STA    $80     
       LDA    #$01    
       STA    $C1     
       JSR    LFA70   
       JSR    LFFE0   
       JSR    LF71C   
       JSR    LFBCA   
LF026: LDA    INTIM   
       BNE    LF026   
       STA    WSYNC   
       STA    VBLANK  
       STA    HMCLR   
       LDA    #$15    
       STA    T1024T  
       LDA    $C5     
       BEQ    LF058   
       LDA    #$00    
       STA    COLUBK  
       JSR    LF858   
       LDA    $84     
       LDX    #$00    
       JSR    LFDD9   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$06    
       STA    CTRLPF  
       STA    NUSIZ1  
       JSR    LF934   
       JMP    LF23B   
LF058: LDY    $A2     
       LDA    LF552,Y 
       STA    COLUBK  
       JSR    LF858   
       LDX    #$00    
       LDA    $82     
       JSR    LFDD9   
       LDA    $AA     
       STA    $92     
       LDA    $AB     
       STA    $94     
       LDY    $A2     
       LDA    LF55A,Y 
       STA    $97     
       LDX    #$01    
       LDA    $86     
       JSR    LFDD9   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$05    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    $B0     
       STA    COLUP1  
       LDA    $B1     
       STA    COLUP0  
       LDY    $A2     
       LDA    LF562,Y 
       STA    $9A     
       LDA    LF56A,Y 
       STA    $9B     
       STA    HMCLR   
       JSR    LFBA6   
       LDA    $A2     
       AND    #$01    
       BEQ    LF0AE   
       JSR    LFC00   
       JMP    LF118   
LF0AE: LDX    #$00    
       LDY    #$1C    
LF0B2: STA    WSYNC   
       LDA    $9A     
       STA    CTRLPF  
       STA    COLUPF  
       LDA    LFC37,X 
       STA    PF0     
       LDA    LFC45,X 
       STA    PF1     
       LDA    LFC53,X 
       STA    PF2     
       LDA    LFC61,X 
       STA    PF1     
       LDA    #$01    
       STA    CTRLPF  
       LDA    $9B     
       STA    COLUPF  
       DEY            
       CPY    #$0C    
       BCC    LF0E2   
       TYA            
       LSR            
       BCC    LF0B2   
       INX            
       BNE    LF0B2   
LF0E2: LDA    $97     
       STA    COLUBK  
LF0E6: LDA    $9A     
       STA    WSYNC   
       STA    CTRLPF  
       STA    COLUPF  
       LDA    LFC37,X 
       STA    PF0     
       LDA    LFC45,X 
       STA    PF1     
       LDA    LFC53,X 
       STA    PF2     
       LDA    ($94),Y 
       STA    GRP0    
       LDA    LFC61,X 
       STA    PF1     
       LDA    #$01    
       STA    CTRLPF  
       LDA    $9B     
       STA    COLUPF  
LF10E: DEY            
       TYA            
       LSR            
       BCC    LF0E6   
       INX            
       CPX    #$0E    
       BCC    LF0E6   
LF118: LDX    #$00    
       STX    PF0     
       STX    PF1     
       STX    PF2     
       STX    GRP0    
       STX    GRP1    
       LDA    $84     
       JSR    LFDD9   
       LDY    $A2     
       LDA    $C3     
       STA    COLUPF  
       STA    $9B     
       LDA    LFEFA,Y 
       STA    PF0     
       STA    PF1     
       STA    PF2     
       LDA    $87     
       LDX    #$01    
       JSR    LFDD9   
       LDA    #$00    
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    WSYNC   
       STA    HMOVE   
       LDA    $A0     
       STA    REFP0   
       LDA    $AC     
       STA    $92     
       LDA    $B2     
       STA    COLUP1  
       LDY    #$0F    
       LDA    LFC6F,Y 
       STA    COLUP0  
       LDX    #$0A    
       LDA    $9B     
       STA    COLUBK  
       LDY    $A2     
       STA    HMCLR   
       LDA    #$00    
       STA    $96     
       STA    $9A     
       STA    PF0     
       STA    PF1     
       STA    PF2     
       STA    CXCLR   
       LDY    $A2     
       LDA    LF583,Y 
       STA    COLUPF  
       LDA    #$44    
       STA    $9F     
LF181: STA    WSYNC   
       CMP    $89     
       BNE    LF189   
       STX    $9A     
LF189: CMP    $83     
       BNE    LF194   
       LDY    #$0E    
       STY    $96     
       INY            
       BNE    LF1A0   
LF194: LDY    $96     
       DEC    $96     
       BPL    LF1A0   
       LDA    #$00    
       STA    $96     
       BEQ    LF1A7   
LF1A0: LDA    LFC6F,Y 
       STA    COLUP0  
       LDA    ($9D),Y 
LF1A7: STA    GRP0    
       LDY    $9A     
       LDA    ($92),Y 
       STA    GRP1    
       DEY            
       BMI    LF1B4   
       DEC    $9A     
LF1B4: DEC    $9F     
       LDA    $9F     
       CMP    #$0B    
       BNE    LF181   
       LDA    $85     
       LDX    #$01    
       JSR    LFDD9   
       STA    WSYNC   
       STA    HMOVE   
       LDA    $B6     
       STA    NUSIZ1  
       LDY    $96     
       LDA    $AD     
       STA    $94     
       LDA    $B3     
       STA    COLUP1  
       LDX    #$FF    
       LDA    $9F     
       STA    HMCLR   
LF1DB: STA    WSYNC   
       CMP    $83     
       BNE    LF1E8   
       LDY    #$0E    
       STY    $96     
       INY            
       BNE    LF1F4   
LF1E8: LDY    $96     
       DEC    $96     
       BPL    LF1F4   
       LDA    #$00    
       STA    $96     
       BEQ    LF1FB   
LF1F4: LDA    LFC6F,Y 
       STA    COLUP0  
       LDA    ($9D),Y 
LF1FB: STA    GRP0    
       LDY    $9F     
       LDA    ($94),Y 
       STA    GRP1    
       CPY    #$03    
       BCS    LF215   
       STX    PF0     
       STX    PF1     
       LDY    #$00    
       LDA    ($A3),Y 
       STA    PF2     
       LDA    $9B     
       STA    COLUBK  
LF215: DEC    $9F     
       LDA    $9F     
       BPL    LF1DB   
       LDY    #$00    
       STY    GRP0    
       STY    GRP1    
       STY    REFP0   
       STY    $9F     
LF225: STA    WSYNC   
       LDA    ($A3),Y 
       STA    PF2     
       INC    $9F     
       LDY    $9F     
       CPY    #$08    
       BEQ    LF237   
       STA    WSYNC   
       BNE    LF225   
LF237: LDA    WSYNC   
       STA    $A8     
LF23B: LDA    #$0F    
       LDX    #$00    
       JSR    LFDD9   
       LDA    #$6F    
       LDX    #$01    
       JSR    LFDD9   
       LDA    $C1     
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       ADC    #$08    
       STA    $9B     
       LDA    $C1     
       AND    #$F0    
       LSR            
       BEQ    LF25D   
       ADC    #$08    
LF25D: STA    $9A     
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    $AE     
       SEC            
       SBC    #$0B    
       STA    $92     
       LDA    $AF     
       STA    $94     
       LDY    #$12    
       STA    HMCLR   
LF278: STA    WSYNC   
       CPY    #$0B    
       BCC    LF28C   
       LDA    ($92),Y 
       STA    GRP1    
       STA    GRP0    
       LDA    $B4     
       STA    COLUP0  
       STA    COLUP1  
       BNE    LF298   
LF28C: LDA    ($94),Y 
       STA    GRP0    
       STA    GRP1    
       LDA    $B5     
       STA    COLUP0  
       STA    COLUP1  
LF298: DEY            
       BPL    LF278   
       LDA    #$40    
       LDX    #$00    
       JSR    LFCD3   
       STA    WSYNC   
       LDA    #$2A    
       STA    COLUP0  
       STA    COLUP1  
       LDA    $9A     
       STA    $8C     
       LDA    $9B     
       STA    $8E     
       LDA    #$00    
       STA    $8A     
       STA    $90     
       STA    $96     
       LDA    #$F8    
       LDY    #$07    
       JSR    LFD26   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       LDA    $A9     
       BNE    LF2D1   
       JSR    LFFD1   
       JMP    LF40D   
LF2D1: LDA    $99     
       BEQ    LF2FC   
       CMP    #$40    
       BCS    LF2DF   
       LDA    #$00    
       STA    AUDV1   
       BEQ    LF2FC   
LF2DF: LDY    $99     
       LDA    LF300,Y 
       STA    AUDF1   
       INC    $BD     
       LDY    #$0C    
       STY    AUDC1   
       LDX    $BE     
       STX    AUDV1   
       LDA    $BD     
       CMP    #$07    
       BCC    LF2FC   
       LDY    #$00    
       STY    $BD     
       DEC    $BE     
LF2FC: LDA    $A1     
       BEQ    LF339   
LF300: INC    $BF     
       LDA    $BF     
       CMP    #$07    
       BCC    LF30E   
       LDA    #$00    
       STA    $BF     
       INC    $C0     
LF30E: LDY.w  $00C0   
       LDA    LF333,Y 
       TAX            
       LDA    $BF     
       EOR    #$0F    
       CPY    #$06    
       BCC    LF329   
       LDX    #$11    
       LDA    #$00    
       CPY    #$08    
       BCS    LF329   
       TYA            
       EOR    #$0F    
       LSR            
LF329: STA    AUDV1   
       STX    AUDF1   
       LDA    #$04    
       STA    AUDC1   
       BNE    LF339   
LF333: ORA    $1115,X 
       ASL    $110E   
LF339: LDA    $98     
       BEQ    LF34F   
       LDY    #$00    
       CMP    #$48    
       BCC    LF34D   
       LDA    #$02    
       STA    AUDC1   
       LDA    #$03    
       STA    AUDF1   
       LDY    #$0F    
LF34D: STY    AUDV1   
LF34F: LDA    $99     
       ORA    $98     
       BEQ    LF360   
       LDA    #$00    
       STA    AUDV0   
       STA    $BC     
       STA    $BB     
       JMP    LF40D   
LF360: LDA    $A2     
       LSR            
       AND    #$03    
       TAY            
       LDA    LFEF6,Y 
       STA    $96     
       LDY    $BB     
       BNE    LF37B   
       LDA    #$80    
       LDX    $C4     
       BEQ    LF377   
       LDA    #$40    
LF377: STA    $BB     
       BNE    LF389   
LF37B: INC    $BC     
       LDA    $BC     
       CMP    $96     
       BNE    LF39F   
       LDA    #$00    
       STA    $BC     
       DEC    $BB     
LF389: LDY    $BB     
       LDA    #$04    
       STA    AUDC0   
       LDA    LF8B3,Y 
       LDX    $C4     
       BEQ    LF39D   
       LDA    #$0C    
       STA    AUDC0   
       LDA    LF797,Y 
LF39D: STA    AUDF0   
LF39F: LDY    $BB     
       LDA    LF8B3,Y 
       LDX    $C4     
       BEQ    LF3AF   
       LDA    LF797,Y 
       LDY    #$08    
       BNE    LF3B1   
LF3AF: LDY    #$06    
LF3B1: CMP    #$80    
       BCS    LF3CB   
       LDY    #$00    
       CMP    #$20    
       BCS    LF3CB   
       LDY    #$01    
       LDA    $BC     
       LSR            
       EOR    #$0F    
       LSR            
       AND    #$0E    
       SEC            
       SBC    #$02    
       BCC    LF3CB   
       TAY            
LF3CB: STY    AUDV0   
       LDA    $A1     
       BNE    LF40D   
       LDY    $BB     
       LDA    #$0C    
       STA    AUDC1   
       LDA    LFD58,Y 
       LDX    $C4     
       BEQ    LF3E1   
       LDA    LFF24,Y 
LF3E1: STA    AUDF1   
       LDY    $BB     
       LDA    LFD58,Y 
       LDX    $C4     
       BEQ    LF3EF   
       LDA    LFF24,Y 
LF3EF: LDY    #$05    
       CMP    #$80    
       BCS    LF40B   
       LDY    #$00    
       CMP    #$20    
       BCS    LF40B   
       LDY    #$01    
       LDA    $BC     
       LSR            
       EOR    #$0F    
       LSR            
       AND    #$0E    
       SEC            
       SBC    #$02    
       BCC    LF40B   
       TAY            
LF40B: STY    AUDV1   
LF40D: LDA    INTIM   
       BNE    LF40D   
       STA    COLUBK  
       STA    COLUPF  
       JSR    LFAE0   
       LDA    #$28    
       STA    TIM64T  
       INC    $9C     
       LDA    $A9     
       BNE    LF427   
       JMP    LF6DA   
LF427: LDA    $99     
       BNE    LF44A   
       LDA    $9C     
       AND    #$1F    
       BNE    LF44A   
       LDA    $A2     
       BEQ    LF44A   
       AND    #$03    
       BNE    LF44A   
       LDA    $A3     
       CLC            
       ADC    #$08    
       CMP    #$B0    
       BNE    LF444   
       LDA    #$80    
LF444: STA    $A3     
       LDA    #$00    
       STA    $AC     
LF44A: LDA    $9C     
       AND    #$0F    
       BNE    LF46C   
       LDA    $C4     
       BEQ    LF45B   
       DEC    $C4     
       BNE    LF45B   
       JMP    LF4D9   
LF45B: LDY    $82     
       INY            
       CPY    #$A0    
       BCC    LF464   
       LDY    #$08    
LF464: CPY    #$08    
       BCS    LF46A   
       LDY    #$08    
LF46A: STY    $82     
LF46C: LDA    $98     
       ORA    $99     
       ORA    $C4     
       BEQ    LF477   
       JMP    LF4F4   
LF477: INC    $A5     
       LDA    $A5     
       LDY    $A1     
       BNE    LF483   
       CMP    #$04    
       BCS    LF487   
LF483: CMP    #$04    
       BCC    LF4D6   
LF487: LDA    #$00    
       STA    $A5     
       LDY.w  $0084   
       LDA    SWCHA   
       ASL            
       ASL            
       BCS    LF4A2   
       LDA    $A0     
       ORA    #$08    
       STA    $A0     
       CPY    #$08    
       BCC    LF4B3   
       DEY            
       BNE    LF4B3   
LF4A2: LDA    SWCHA   
       ASL            
       BCS    LF4D6   
       LDA    $A0     
       AND    #$F7    
       STA    $A0     
       CPY    #$98    
       BCS    LF4D9   
       INY            
LF4B3: STY    $84     
       LDA    $C5     
       BEQ    LF4C5   
       CPY    #$84    
       BNE    LF4C5   
       LDA    #$3C    
       STA    $C4     
       LDA    #$00    
       STA    $BB     
LF4C5: LDA    $A1     
       BNE    LF4D6   
       LDA    $9D     
       CLC            
       ADC    #$10    
       CMP    #$40    
       BCC    LF4D4   
       LDA    #$00    
LF4D4: STA    $9D     
LF4D6: JMP    LF4F4   
LF4D9: LDA    $C5     
       BEQ    LF4E6   
       SED            
       LDA    $C1     
       CLC            
       ADC    #$01    
       STA    $C1     
       CLD            
LF4E6: INC    $A2     
       SED            
       LDA    $80     
       CLC            
       ADC    #$01    
       STA    $80     
       CLD            
       JSR    LF71C   
LF4F4: LDA    #$39    
       STA    $97     
       LDA    $99     
       BNE    LF54F   
       LDA    $A1     
       BNE    LF51F   
       LDA    $98     
       BNE    LF54F   
       LDA    $C5     
       BNE    LF54F   
       LDA    REFP1   
       ASL            
       BCS    LF54F   
       LDA    #$66    
       STA    $A1     
       LDA    #$00    
       STA    $C0     
       STA    $BF     
       LDA    #$40    
       STA    $9D     
       LDA    #$19    
       STA    $83     
LF51F: LDY    $83     
       LDA    $A1     
       AND    #$01    
       BNE    LF533   
       LDA    $A1     
       CMP    $97     
       BCC    LF530   
       INY            
       BNE    LF531   
LF530: DEY            
LF531: STY    $83     
LF533: LDA    $83     
       CMP    #$18    
       BCS    LF53D   
       LDA    #$0F    
       STA    $83     
LF53D: DEC    $A1     
       BNE    LF54F   
       LDA    #$00    
       STA    AUDV1   
       LDY    $98     
       BNE    LF54F   
       STA    $9D     
       LDA    #$0F    
       STA    $83     
LF54F: JMP    LF58B   
LF552: .byte $9F,$B5,$9F,$4E,$9C,$02,$00,$4C
LF55A: .byte $D3,$D3,$D3,$5A,$9C,$0C,$0F,$00
LF562: .byte $68,$38,$2F,$D3,$75,$2F,$76,$86
LF56A: .byte $B5,$94,$75,$95,$9C,$00,$25,$00
LF572: .byte $3A,$9B,$B5,$9A,$9C,$0A,$B7,$07,$07
LF57B: .byte $D3,$00,$D5,$00,$00,$D3,$A0,$00
LF583: .byte $54,$05,$0A,$74,$A6,$42,$28,$D9
LF58B: LDA    $9C     
       AND    #$3F    
       BNE    LF5AA   
       LDY    $A6     
       INY            
       CMP    #$29    
       BNE    LF59A   
       LDY    #$00    
LF59A: STY    $A6     
       LDY    $A7     
       DEY            
       DEY            
       DEY            
       BPL    LF5A8   
       TYA            
       CLC            
       ADC    #$40    
       TAY            
LF5A8: STY    $A7     
LF5AA: LDA    $9C     
       LSR            
       BCC    LF5B5   
       AND    #$01    
       TAX            
       JSR    LFB3C   
LF5B5: LDX    $A2     
       TXA            
       AND    #$03    
       CMP    #$02    
       BNE    LF60C   
       LDA    $9C     
       AND    #$03    
       BNE    LF60C   
       LDY    $85     
       DEY            
       CPY    #$7C    
       BNE    LF5D7   
       LDA    $B6     
       CMP    LF7D8,X 
       CLC            
       ADC    #$02    
       STA    $B6     
       BEQ    LF60A   
LF5D7: CPY    #$5C    
       BNE    LF5E7   
       LDA    $B6     
       CMP    LF7D8,X 
       BEQ    LF60A   
       CLC            
       ADC    #$04    
       STA    $B6     
LF5E7: CPY    #$04    
       BCS    LF60A   
       LDA    $B6     
       CMP    #$00    
       BEQ    LF604   
       SEC            
       SBC    #$02    
       CMP    #$03    
       BCC    LF5FB   
       SEC            
       SBC    #$02    
LF5FB: STA    $B6     
       TYA            
       CLC            
       ADC    #$20    
       TAY            
       BNE    LF60A   
LF604: LDA    #$00    
       STA    $B6     
       LDY    #$98    
LF60A: STY    $85     
LF60C: NOP            
       LDA    $98     
       NOP            
       ORA    $99     
       BNE    LF63F   
       LDA    COLUP1  
       ASL            
       BCS    LF630   
       LDA    $A1     
       BNE    LF63F   
       LDA    $A8     
       ASL            
       BCS    LF63F   
       LDX    #$0E    
       STX    $BE     
       LDA    #$94    
       STA    $99     
       LDA    #$60    
       STA    $9D     
       BNE    LF63F   
LF630: LDA    #$50    
       STA    $98     
       LDA    $83     
       SEC            
       SBC    #$04    
       STA    $83     
       LDX    #$50    
       STX    $9D     
LF63F: LDY    $98     
       BEQ    LF64E   
       DEC    $98     
       BNE    LF64E   
       LDA    #$00    
       STA    AUDV1   
       JSR    LFBCA   
LF64E: LDY    $99     
       BEQ    LF66F   
       LDA    $99     
       SEC            
       SBC    #$40    
       BCC    LF65E   
       LSR            
       LSR            
       LSR            
       STA    $83     
LF65E: DEC    $99     
       BNE    LF66F   
       LDA    #$00    
       STA    $BE     
       STA    AUDV1   
       STA    $BD     
       STA    $BC     
       JSR    LFBCA   
LF66F: LDY    $B7     
       LDA    $9C     
       AND    #$10    
       STA    $96     
       BNE    LF67A   
       INY            
LF67A: LDA    LFF65,Y 
       STA    $AA     
       LDY    $B8     
       LDA    $96     
       BNE    LF686   
       INY            
LF686: LDA    LFF8D,Y 
       STA    $AC     
       LDY    $B9     
       LDA    $96     
       BNE    LF692   
       INY            
LF692: LDA    LFFA5,Y 
       STA    $AD     
       LDY    $BA     
       LDA    $96     
       BNE    LF69E   
       INY            
LF69E: LDA    LFFB7,Y 
       STA    $AE     
       LDA    $9C     
       AND    #$0F    
       BNE    LF6DA   
       LDA    $80     
       ORA    $81     
       BNE    LF6BA   
       LDA    #$01    
       STA    $81     
       LDA    #$60    
       STA    $83     
       JSR    LFBCA   
LF6BA: SED            
       LDY    #$00    
       LDA    $98     
       ORA    $99     
       ORA    $C4     
       BNE    LF6C7   
       LDY    #$01    
LF6C7: STY    $96     
       LDX    #$01    
       SEC            
LF6CC: LDA    $80,X   
       SBC    $96     
       STA    $80,X   
       LDA    #$00    
       STA    $96     
       DEX            
       BPL    LF6CC   
       CLD            
LF6DA: JSR    LFB01   
       LDY    $A2     
       LDA    LF572,Y 
       TAX            
       AND    #$0F    
       CMP    #$06    
       BCS    LF6ED   
       TXA            
       ORA    #$06    
       TAX            
LF6ED: TXA            
       CMP    LF583,Y 
       BNE    LF6FD   
       CMP    #$06    
       BEQ    LF6FB   
       LDA    #$06    
       BNE    LF6FD   
LF6FB: LDA    #$C8    
LF6FD: STA    $C3     
       LDY    #$00    
       LDA    $A2     
       AND    #$07    
       CMP    #$07    
       BNE    LF70B   
       LDY    #$01    
LF70B: STY    $C5     
       LDA    SWCHB   
       LSR            
       BCC    LF716   
       LSR            
       BCS    LF719   
LF716: JMP    LF00B   
LF719: JMP    LF026   
LF71C: LDA    #$08    
       STA    $84     
       LDA    #$00    
       STA    $BC     
       LDA    $A2     
       AND    #$0F    
       TAY            
       LDA    LF7E8,Y 
       STA    $A3     
       LDA    LF7D8,Y 
       TAX            
       CMP    #$10    
       BCS    LF73A   
       LDA    #$98    
       LDX    #$00    
LF73A: STA    $85     
       STX    $B6     
       LDA    $A2     
       AND    #$07    
       TAY            
       ASL            
       TAX            
       LDA    LFF75,Y 
       STA    $B0     
       LDA    LFF85,Y 
       STA    $B1     
       LDA    LFF9D,Y 
       STA    $B2     
       LDA    LFF7D,Y 
       STA    $AB     
       STX    $B7     
       STX    $B8     
       LDA    $A2     
       AND    #$03    
       CMP    #$02    
       BNE    LF76E   
       LDA    $81     
       AND    #$01    
       CLC            
       ADC    #$04    
       BNE    LF774   
LF76E: LDA    $81     
       LSR            
       LSR            
       AND    #$03    
LF774: TAY            
       ASL            
       STA    $B9     
       LDA    LFFB1,Y 
       STA    $B3     
       LDA    $9C     
       LSR            
       LSR            
       AND    #$03    
       TAY            
       ASL            
       STA    $BA     
       LDA    LFFC3,Y 
       STA    $AF     
       LDA    LFFBF,Y 
       STA    $B4     
       LDA    LFFC7,Y 
       STA    $B5     
       RTS            

LF797: .byte $4E,$4E,$4E,$0E,$8E,$8E,$0C,$4A,$0A,$8A,$0B,$4A,$0A,$8A,$49,$09
       .byte $4B,$0B,$49,$49,$09,$89,$09,$4A,$0A,$8A,$0A,$4B,$0B,$8B,$0C,$0E
       .byte $4B,$4B,$4B,$0B,$8B,$8B,$0C,$4A,$0A,$8A,$0B,$4A,$0A,$8A,$49,$09
       .byte $4B,$0B,$49,$49,$09,$89,$09,$4A,$0A,$8A,$0A,$4B,$0B,$8B,$0C,$0E
       .byte $4E
LF7D8: .byte $20,$80,$02,$28,$78,$18,$06,$80,$28,$88,$06,$20,$78,$18,$06,$80
LF7E8: .byte $88,$B0,$C0,$B8,$80,$D0,$C8,$D8,$80,$B8,$C0,$D0,$80,$D8,$C8,$B0
LF7F8: .byte $30,$44
LF7FA: .byte $0C,$17,$FF,$FF,$FF,$FF,$00,$00,$00,$00,$00,$00,$00,$00
LF808: .byte $3C,$66,$66,$66,$66,$66,$66,$3C,$3C,$18,$18,$18,$18,$18,$38,$18
       .byte $7E,$60,$60,$3C,$06,$06,$46,$3C,$3C,$46,$06,$0C,$0C,$06,$46,$3C
       .byte $0C,$0C,$0C,$7E,$4C,$2C,$1C,$0C,$7C,$46,$06,$06,$7C,$60,$60,$7E
       .byte $3C,$66,$66,$66,$7C,$60,$62,$3C,$18,$18,$18,$18,$0C,$06,$42,$7E
       .byte $3C,$66,$66,$3C,$3C,$66,$66,$3C,$3C,$46,$06,$3E,$66,$66,$66,$3C
LF858: LDX    #$06    
LF85A: STA    WSYNC   
       DEX            
       BNE    LF85A   
       LDA    #$20    
       JSR    LFDD9   
       LDA    #$28    
       LDX    #$01    
       JSR    LFDD9   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$03    
       STA    NUSIZ0  
       LDA    #$01    
       STA    NUSIZ1  
       LDA    #$6B    
       STA    COLUP1  
       STA    COLUP0  
       LDY    #$07    
       STY    $96     
       NOP            
       STA    HMCLR   
LF884: LDY    $96     
       LDA    LF808,Y 
       STA    $97     
       STA.w  $0002   
       NOP            
       LDA    ($8A),Y 
       STA    GRP0    
       LDA    ($8C),Y 
       STA    GRP1    
       LDA    ($90),Y 
       TAX            
       LDA    ($8E),Y 
       LDY    $97     
       STA    GRP0    
       STX    GRP1    
       STY    GRP0    
       LDY    $96     
       DEC    $96     
       BPL    LF884   
       STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       RTS            

LF8B3: .byte $55,$55,$55,$55,$55,$55,$15,$95,$95,$17,$15,$13,$11,$15,$5D,$1D
       .byte $9D,$59,$59,$19,$99,$19,$55,$15,$95,$15,$11,$0E,$0C,$0E,$4E,$0E
       .byte $8E,$53,$53,$53,$53,$53,$13,$93,$93,$11,$0F,$11,$0E,$0C,$4C,$0C
       .byte $8C,$4E,$4E,$0E,$8E,$51,$51,$11,$91,$13,$0F,$11,$13,$13,$53,$13
       .byte $93,$55,$55,$55,$55,$55,$15,$95,$95,$17,$15,$13,$11,$15,$5D,$1D
       .byte $9D,$59,$59,$19,$99,$19,$55,$15,$95,$15,$11,$0E,$0C,$0E,$4E,$0E
       .byte $8E,$53,$53,$53,$53,$53,$13,$93,$93,$11,$0E,$15,$11,$15,$5D,$1D
       .byte $9D,$59,$59,$19,$99,$19,$55,$15,$95,$15,$11,$0E,$0C,$0E,$4E,$0E
       .byte $8E
LF934: LDA    #$00    
       STA    NUSIZ0  
       STA    $9F     
       LDA    #$C0    
       STA    $A3     
       LDA    #$98    
       LDX    #$03    
       STA    HMCLR   
       JSR    LFDD9   
       LDY    #$70    
       LDA    #$0F    
       STA    $96     
       STA    ENAM1   
LF94F: STA    WSYNC   
       STA    HMOVE   
       LDA    #$60    
       STA    HMM1    
       LDA    #$00    
       STA    COLUP1  
       LDA    $C2     
       ADC    #$12    
       STA    $C2     
       BCC    LF968   
       LDA    LFE72,Y 
       STA    COLUP1  
LF968: LDA    ($90),Y 
       STA    PF2     
       STA    PF1     
       STA    PF0     
       DEY            
       BPL    LF94F   
       LDY    #$00    
       STY    PF0     
LF977: STA    WSYNC   
       LDA    #$00    
       STA    PF1     
       STA    PF2     
       STA    ENAM1   
       LDA    $9F     
       CMP    #$14    
       BCS    LF989   
       BCC    LF98D   
LF989: LDY    #$CA    
       STY    COLUBK  
LF98D: LSR            
       LSR            
       TAY            
       LDA    LFCC5,Y 
       STA    COLUPF  
       LDA    LFCA9,Y 
       STA    PF1     
       LDA    LFCB7,Y 
       STA    PF2     
       LDA    $9F     
       CMP    #$1C    
       BEQ    LF9A9   
       INC    $9F     
       BNE    LF977   
LF9A9: STA    HMCLR   
LF9AB: STA    WSYNC   
       LDA    #$00    
       STA    PF1     
       STA    PF2     
       LDA    $9F     
       CMP    #$2C    
       BEQ    LF9DA   
       LSR            
       LSR            
       TAX            
       LDY    $96     
       LDA    LFC6F,Y 
       STA    COLUP0  
       LDA    ($9D),Y 
       STA    GRP0    
       DEY            
       BMI    LF9CC   
       DEC    $96     
LF9CC: LDA    LFCA9,X 
       STA    PF1     
       LDA    LFCB7,X 
       STA    PF2     
       INC    $9F     
       BNE    LF9AB   
LF9DA: STA    WSYNC   
       STA    WSYNC   
       LDA    #$07    
       STA    CTRLPF  
       STA    COLUPF  
       LDY    #$00    
LF9E6: STA    WSYNC   
       LDA    ($A3),Y 
       STA    PF0     
       STA    PF1     
       STA    PF2     
       STA    WSYNC   
       LDA    #$B6    
       STA    COLUBK  
       INY            
       CPY    #$08    
       BNE    LF9E6   
       LDA    #$80    
       STA    $A8     
       RTS            

LFA00: .byte $00,$77,$6E,$7C,$FF,$CF,$76,$3C,$18,$3C,$7E,$77,$3E,$78,$60,$80
       .byte $00,$1C,$38,$3C,$7E,$E7,$6E,$3C,$18,$3C,$7E,$77,$3E,$78,$60,$80
       .byte $00,$3B,$37,$7E,$7E,$F3,$6E,$3C,$18,$3C,$7E,$77,$3E,$78,$60,$80
       .byte $00,$C7,$EE,$7E,$7E,$E7,$76,$3C,$18,$3C,$7E,$77,$3E,$78,$60,$80
       .byte $00,$80,$C7,$66,$7E,$0F,$76,$3C,$18,$3C,$7E,$77,$3E,$7E,$7C,$C0
       .byte $00,$07,$1E,$38,$7E,$FF,$79,$38,$18,$7C,$FE,$F7,$7E,$7E,$7C,$C0
       .byte $00,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7E,$B1,$7C,$6E,$3C,$30,$40
LFA70: LDA    #$00    
       STA    $A2     
       STA    $81     
       STA    $BB     
       STA    $C4     
       STA    $C5     
       RTS            

LFA7D: .byte $FF,$FF,$FF,$FF,$FF,$1F,$0F,$07,$07,$03,$03,$3F,$1F,$1F,$07,$07
       .byte $03,$03,$03,$1F,$0F,$07,$07,$03,$03,$03,$03,$0F,$0F,$07,$03,$03
       .byte $03,$03,$03,$07,$07,$07,$03,$03,$03,$03,$03,$1F,$0F,$07,$07,$03
       .byte $03,$03,$03,$E3,$E3,$C1,$FF,$FF,$7F,$3F,$0F,$C7,$C7,$73,$3F,$9F
       .byte $3F,$63,$E3,$FF,$FF,$EF,$C7,$83,$83,$83,$83,$FF,$E7,$01,$E7,$81
       .byte $99,$81,$C3,$3C,$3C,$1C,$0F,$87,$C7,$E7,$FF,$31,$31,$3F,$FF,$DD
       .byte $AA,$DD,$AA
LFAE0: LDA    #$82    
       STA    WSYNC   
       STA    VBLANK  
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       RTS            

LFB01: LDX    #$01    
       LDY    #$04    
LFB05: LDA    $80,X   
       AND    #$F0    
       LSR            
       ADC    #$08    
       STA.wy $008A,Y 
       LDA    $80,X   
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       ADC    #$08    
       STA.wy $008C,Y 
       LDA    #$F8    
       STA.wy $008B,Y 
       STA.wy $008D,Y 
       DEY            
       DEY            
       DEY            
       DEY            
       DEX            
       BPL    LFB05   
       LDX    #$00    
LFB2C: LDA.wx $008A,X 
       EOR    #$08    
       BNE    LFB3B   
       STA    $8A,X   
       INX            
       INX            
       CPX    #$08    
       BCC    LFB2C   
LFB3B: RTS            

LFB3C: STX    $97     
       LDY    $A6,X   
       LDA    LFB7E,Y 
       STA    $96     
       LDY    $86,X   
       CPY    $96     
       BCS    LFB52   
       CPY    #$88    
       BCS    LFB57   
       INY            
       BNE    LFB57   
LFB52: CPY    #$08    
       BCC    LFB57   
       DEY            
LFB57: STY    $86,X   
       LDA    LF7F8,X 
       STA    $9A     
       LDA    LF7FA,X 
       STA    $9B     
       LDA    $96     
       AND    #$3F    
       STA    $96     
       LDY    $88,X   
       CPY    $96     
       BCS    LFB76   
       CPY    $9A     
       BCS    LFB7B   
       INY            
       BNE    LFB7B   
LFB76: CPY    $9B     
       BCC    LFB7B   
       DEY            
LFB7B: STY    $88,X   
       RTS            

LFB7E: .byte $3C,$2F,$26,$12,$20,$3C,$24,$4F,$36,$20,$3F,$4F,$59,$65,$78,$63
       .byte $57,$68,$7C,$8F,$78,$6A,$5F,$51,$61,$58,$4F,$38,$3F,$26,$2F,$49
       .byte $28,$1F,$28,$0F,$77,$2F,$77,$1F
LFBA6: LDA    #$00    
       STA    $96     
       LDA    #$30    
       STA    $9F     
LFBAE: STA    WSYNC   
       LDA    $9F     
       CMP    $88     
       BNE    LFBBA   
       LDA    #$0A    
       STA    $96     
LFBBA: LDY    $96     
       LDA    ($92),Y 
       STA    GRP1    
       DEY            
       BMI    LFBC5   
       DEC    $96     
LFBC5: DEC    $9F     
       BPL    LFBAE   
       RTS            

LFBCA: LDA    #$00    
       STA    $A1     
       STA    $98     
       STA    $99     
       LDA    $A2     
       AND    #$03    
       CMP    #$02    
       BNE    LFBE2   
       LDA    #$00    
       STA    $B6     
       LDA    #$98    
       STA    $85     
LFBE2: LDA    $A9     
       BEQ    LFBEA   
       DEC    $A9     
       BEQ    LFBFF   
LFBEA: LDA    #$0F    
       STA    $83     
       LDA    #$08    
       STA    $84     
       LDA    #$00    
       STA    $9D     
       SED            
       LDA    $80     
       CLC            
       ADC    #$01    
       STA    $80     
       CLD            
LFBFF: RTS            

LFC00: LDA    #$01    
       STA    CTRLPF  
       LDY    #$00    
LFC06: TYA            
       LSR            
       TAX            
       STA    WSYNC   
       LDA    $9A     
       STA    COLUPF  
       LDA    LFC7F,X 
       STA    PF0     
       LDA    LFC8D,X 
       STA    PF1     
       LDA    LFC9B,X 
       STA    PF2     
       LDA    LFCB7,X 
       STA    $97     
       LDA    LFCC5,X 
       STA    COLUPF  
       LDA    LFCA9,X 
       STA    PF2     
       LDA    $97     
       STA    PF1     
       INY            
       CPY    #$1D    
       BCC    LFC06   
       RTS            

LFC37: .byte $00,$00,$00,$00,$00,$80,$C0,$E0,$F0,$F0,$F0,$F0,$F0,$F0
LFC45: .byte $00,$00,$00,$00,$10,$38,$7C,$FE,$FF,$FF,$FF,$E7,$F2,$00
LFC53: .byte $00,$00,$00,$00,$00,$00,$00,$03,$0F,$1F,$3F,$7F,$FF,$00
LFC61: .byte $00,$20,$70,$F8,$FE,$FF,$FF,$FF,$FF,$FF,$F9,$80,$00,$00
LFC6F: .byte $2C,$2C,$2C,$2C,$00,$00,$00,$00,$2C,$2C,$2C,$2C,$00,$00,$00,$00
LFC7F: .byte $00,$00,$00,$00,$00,$00,$00,$00,$70,$70,$70,$F0,$70,$20
LFC8D: .byte $00,$00,$30,$03,$01,$00,$01,$01,$FF,$AA,$FF,$FF,$FF,$49
LFC9B: .byte $00,$00,$00,$00,$01,$00,$01,$01,$03,$03,$03,$03,$01,$FC
LFCA9: .byte $00,$00,$05,$0F,$07,$07,$07,$07,$07,$07,$07,$0D,$0E,$FF
LFCB7: .byte $06,$0F,$5F,$FF,$74,$74,$7F,$74,$74,$74,$7F,$EA,$F7,$FF
LFCC5: .byte $65,$65,$65,$65,$00,$00,$00,$00,$00,$00,$00,$D3,$D3,$D3
LFCD3: JSR    LFDD9   
       LDY    $A2     
       LDA    LF57B,Y 
       STA    COLUBK  
       STA    $C3     
       LDX    #$00    
       STX    PF0     
       STX    PF1     
       STX    PF2     
       STX    $96     
       LDA    #$48    
       INX            
       JSR    LFDD9   
       CLC            
       LDA    $96     
       DEX            
LFCF3: STA    $8A,X   
       ADC    #$09    
       INX            
       INX            
       CPX    #$08    
       BNE    LFCF3   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$01    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$2A    
       STA    COLUPF  
       LDY    #$08    
       LDX    $A2     
       BEQ    LFD17   
       LDX    $A9     
       BEQ    LFD17   
       LDA    $C3     
LFD17: STA    COLUP1  
       STA    COLUP0  
       LDX    $A9     
       LDA    LFFCB,X 
       STA    $96     
       STA    HMCLR   
       LDA    #$FF    
LFD26: STA    $8B     
       STA    $8D     
       STA    $8F     
       STA    $91     
LFD2E: STA    WSYNC   
       LDA    $96     
       STA    PF1     
       LDA    ($8A),Y 
       STA    GRP0    
       LDA    ($8C),Y 
       STA    GRP1    
       LDA    ($90),Y 
       NOP            
       NOP            
       LDA    ($90),Y 
       TAX            
       LDA    ($8E),Y 
       STA.w  $001B   
       STX    GRP1    
       LDA    #$00    
       STA    PF1     
       CPY    #$03    
       BCS    LFD54   
       STA    $96     
LFD54: DEY            
       BPL    LFD2E   
       RTS            

LFD58: .byte $4E,$4E,$4E,$4E,$4E,$4E,$0E,$8E,$8E,$0F,$11,$13,$0C,$53,$13,$4C
       .byte $0C,$57,$17,$51,$11,$57,$17,$51,$11,$53,$13,$4E,$0E,$53,$13,$4E
       .byte $0E,$53,$13,$4F,$0F,$53,$13,$4F,$0F,$51,$11,$4C,$0C,$51,$11,$4C
       .byte $0C,$53,$13,$4E,$0E,$53,$13,$4E,$0E,$53,$13,$4C,$0C,$53,$13,$4C
       .byte $0C,$4E,$4E,$4E,$4E,$4E,$0E,$8E,$8E,$0F,$11,$13,$0C,$53,$13,$4C
       .byte $0C,$56,$16,$4E,$0E,$56,$16,$4E,$0E,$53,$13,$4E,$0E,$53,$13,$4E
       .byte $0E,$53,$13,$4F,$0F,$53,$13,$4C,$0C,$53,$13,$4E,$0E,$53,$13,$4E
       .byte $0E,$57,$17,$51,$11,$57,$17,$51,$11,$53,$13,$4E,$0E,$53,$13,$4E
       .byte $0E
LFDD9: SEC            
       STA    WSYNC   
LFDDC: SBC    #$0F    
       BCS    LFDDC   
       EOR    #$07    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    HMP0,X  
       STA    RESP0,X 
       STA    WSYNC   
       RTS            

LFDED: LDA    #$0F    
       STA    $88     
       LDA    #$60    
       STA    $87     
       STA    $86     
       LDA    #$1E    
       STA    $A7     
       STA    $89     
       RTS            

LFDFE: .byte $FF,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $1C,$7E,$0B,$F8,$D8,$68,$38,$18,$08,$00,$00,$10,$36,$7F,$FF,$FF
       .byte $7B,$7A,$20,$00,$00,$00,$00,$18,$0C,$3C,$7E,$FC,$F6,$37,$22,$21
       .byte $60,$E0,$00,$84,$48,$30,$7C,$FE,$F4,$66,$32,$11,$30,$70,$00,$7E
       .byte $4C,$08,$C4,$F7,$FF,$6E,$6C,$FE,$6A,$4E,$00,$3C,$2C,$7E,$DE,$1E
       .byte $1A,$3A,$6F,$EB,$08,$00,$00,$7F,$3E,$1C,$3E,$3F,$7D,$FF,$9C,$3E
       .byte $1C,$08,$00,$7E,$18,$7E,$5A,$DB,$DB,$DB,$5A,$7E,$18,$7E,$00,$18
       .byte $18,$7E,$66,$66
LFE72: .byte $66,$66,$66,$7E,$18,$18,$00,$3C,$7E,$28,$08,$08,$18,$88,$88,$54
       .byte $52,$20,$00,$3C,$7E,$08,$08,$08,$08,$08,$4A,$54,$20,$00,$00,$E0
       .byte $79,$7F,$3C,$7C,$70,$40,$40,$C0,$00,$00,$02,$1E,$3E,$38,$7C,$5E
       .byte $46,$C7,$00,$00,$00,$14,$3E,$2A,$49,$55,$41,$22,$00,$00,$22,$41
       .byte $2A,$1C,$08,$14,$00,$00,$00,$03,$06,$3C,$FC,$5E,$17,$3B,$2E,$14
       .byte $00,$03,$06,$3C,$F0,$40,$80,$00,$00,$00,$00,$10,$44,$10,$BA,$38
       .byte $BA,$10,$44,$10,$00,$00,$00,$10,$38,$38,$38,$10,$00,$00,$00,$24
       .byte $99,$5A,$24,$00,$00,$00,$00,$00,$00,$24,$18,$18,$24,$24,$42,$81
       .byte $00,$00,$00,$00
LFEF6: .byte $0C,$0A,$0D,$0F
LFEFA: .byte $99,$EE,$FF,$FF,$FF,$FF,$00,$07,$0F,$4C,$AC,$4C,$0C,$0F,$07,$00
       .byte $C7,$EF,$EC,$0C,$0C,$EC,$EF,$C7,$00,$C7,$EF,$EC,$0C,$0F,$EC,$EF
       .byte $C7,$00,$C0,$E0,$E4,$0A,$E4,$E0,$E0,$C0
LFF24: .byte $4E,$4E,$4E,$0E,$8E,$8E,$4F,$0F,$4C,$0C,$0E,$4C,$0C,$8C,$4B,$0B
       .byte $4E,$0E,$4B,$4B,$0B,$8B,$0B,$4C,$0C,$8C,$0C,$4E,$0E,$8E,$0C,$0E
       .byte $4E,$4E,$4E,$0E,$8E,$8E,$4F,$0F,$4C,$0C,$0E,$4C,$0C,$8C,$4B,$0B
       .byte $4E,$0E,$4B,$4B,$0B,$8B,$0B,$4C,$0C,$8C,$0C,$4E,$0E,$8E,$0C,$0E
       .byte $4E
LFF65: .byte $90,$9A,$18,$18,$CC,$D6,$E0,$EA,$18,$18,$90,$9A,$E0,$EA,$CC,$D6
LFF75: .byte $96,$5F,$6A,$9C,$0F,$94,$86,$73
LFF7D: .byte $0C,$00,$18,$00,$0C,$00,$18,$00
LFF85: .byte $8F,$00,$0F,$00,$66,$00,$CE,$00
LFF8D: .byte $00,$00,$90,$9A,$B8,$C2,$A4,$AE,$00,$00,$B8,$C2,$90,$9A,$A4,$AE
LFF9D: .byte $00,$63,$8A,$93,$00,$A3,$00,$9F
LFFA5: .byte $54,$54,$3C,$3C,$78,$84,$48,$48,$24,$30,$60,$6C
LFFB1: .byte $AA,$8F,$CF,$93,$5F,$00
LFFB7: .byte $BA,$C5,$A7,$B1,$7D,$89,$3F,$3F
LFFBF: .byte $6A,$5F,$CE,$88
LFFC3: .byte $48,$54,$60,$48
LFFC7: .byte $9F,$68,$00,$58
LFFCB: .byte $00,$00,$80,$A0,$A8,$AA
LFFD1: LDA    #$00    
       STA    AUDC0   
       STA    AUDF0   
       STA    AUDV0   
       STA    AUDC1   
       STA    AUDF1   
       STA    AUDV1   
       RTS            

LFFE0: LDA    #$FE    
       STA    $93     
       STA    $95     
       LDA    #$FA    
       STA    $9E     
       STA    $A4     
       JSR    LFDED   
       RTS            

LFFF0: .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$00,$F0,$00,$F0
