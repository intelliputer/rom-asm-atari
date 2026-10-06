; Disassembly of roms/Beany Bopper.bin
; Disassembled Tue Oct  6 15:21:07 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Beany Bopper.bin
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
AUDC0   =  $15
AUDC1   =  $16
AUDF0   =  $17
AUDF1   =  $18
AUDV0   =  $19
AUDV1   =  $1A
GRP0    =  $1B
GRP1    =  $1C
ENAM0   =  $1D
HMP0    =  $20
HMP1    =  $21
HMM0    =  $22
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXM0P   =  $30
CXP0FB  =  $32
CXP1FB  =  $33
CXM0FB  =  $34
CXPPMM  =  $37
INPT4   =  $3C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM1T   =  $0294
TIM8T   =  $0295
TIM64T  =  $0296

       ORG $F000

START:
LF000: SEI            
       CLD            
       LDA    #$00    
       TAX            
LF005: STA    VSYNC,X 
       INX            
       BNE    LF005   
       DEX            
       TXS            
       STA    TIM1T   
       STA    WSYNC   
       LDA    INTIM   
       STA    $80     
       LDA    #$80    
       STA    $D1     
LF01A: LDA    SWCHB   
       LSR            
       LSR            
       LSR            
       LSR            
       LDY    #$00    
       BCS    LF027   
       LDY    #$80    
LF027: STY    $DD     
       LDA    #$0C    
       STA    $BF     
       LDA    #$00    
       STA    $D3     
       STA    $B7     
       LDA    #$21    
       STA    $B8     
       LDA    #$00    
       LDX    #$16    
LF03B: STA    $E9,X   
       DEX            
       BNE    LF03B   
       LDA    #$03    
       LDX    #$0C    
LF044: STA    $E4,X   
       DEX            
       BNE    LF044   
       STX    $E0     
       STX    $E1     
       STX    $E2     
       STX    $E3     
       STX    $E4     
       LDA    #$04    
       STA    $B5     
       LDA    #$01    
       STA    CTRLPF  
       LDA    #$03    
       STA    $C4     
LF05F: LDA    #$00    
       STA    $BB     
       STA    $DB     
       LDA    #$04    
       STA    $CA     
       LDA    #$0E    
       STA    $DC     
       DEC    $C4     
       LDA    $C4     
       CMP    #$FE    
       BNE    LF08E   
       LDA    #$80    
       STA    $D1     
       LDA    #$20    
       STA    $B0     
       LDA    #$04    
       STA    AUDC1   
       LDA    #$1F    
       STA    $B1     
       STA    $B2     
       LDA    #$FA    
       STA    $B4     
       JMP    LF01A   
LF08E: LDA    #$DD    
       STA    $83     
       LDA    #$FC    
       STA    $84     
       LDA    #$95    
       STA    $89     
       STA    $A5     
       LDA    #$74    
       STA    $8C     
       STA    $A6     
       LDA    #$0E    
       STA    $B9     
       LDA    #$FF    
       STA    $C3     
       LDA    #$00    
       STA    $D0     
       LDA    #$00    
       STA    $CF     
       LDX    #$00    
LF0B4: LDA    #$00    
       STA    $99,X   
       STA    $90,X   
       STA    $8D     
       STA    $96,X   
       STA    $93,X   
       LDA    #$95    
       STA    $94,X   
       STA    $8F,X   
       STA    $8A     
       LDA    #$01    
       STA    $91,X   
       STA    $98,X   
       TXA            
       EOR    #$0B    
       TAX            
       BNE    LF0B4   
       LDA    #$01    
       STA    $92     
       STA    $97     
       LDA    #$FE    
       STA    $9D     
       STA    $A2     
       LDA    #$98    
       STA    $BC     
       STA    $85     
       LDA    #$FD    
       STA    $86     
       LDA    #$66    
       STA    $C0     
       STA    $87     
       LDA    #$FE    
       STA    $88     
       STA    $C1     
       LDA    #$00    
       STA    $C2     
       STA    $A8     
       STA    $8E     
       LDA    #$95    
       STA    $8B     
       STA    $A7     
LF104: LDA    INTIM   
       BNE    LF104   
LF109: LDX    #$2A    
       LDA    #$02    
       STA    WSYNC   
       STA    VBLANK  
       STA    VSYNC   
       STX    TIM8T   
       CLD            
       LDA    #$00    
       STA    COLUBK  
       STA    $BA     
       STA    $CD     
       BIT    $D1     
       BPL    LF132   
       LDA    $BE     
       AND    #$1F    
       BNE    LF132   
       LDA    $D2     
       CLC            
       ADC    #$02    
       ORA    #$07    
       STA    $D2     
LF132: LDA    #$00    
       STA    $DA     
       LDA    SWCHB   
       LSR            
       BCS    LF151   
       BIT    $DE     
       BMI    LF155   
LF140: LDA    #$00    
       STA    $CB     
       STA    $CC     
       STA    $D1     
       LDA    #$80    
       STA    $DE     
       STA    $D0     
       JMP    LF181   
LF151: LDY    #$00    
       STY    $DE     
LF155: LSR            
       BCS    LF16A   
       BIT    $DF     
       BMI    LF16E   
       TAY            
       LDA    $CE     
       EOR    #$80    
       STA    $CE     
       TYA            
       LDA    #$80    
       STA    $DF     
       BNE    LF16E   
LF16A: LDY    #$00    
       STY    $DF     
LF16E: LSR            
       LSR            
       TAY            
       BCC    LF177   
       LDA    #$00    
       BEQ    LF179   
LF177: LDA    #$80    
LF179: CMP    $DD     
       BEQ    LF181   
       LDA    #$80    
       STA    $DA     
LF181: LDY    $B7     
       LDA    $CC     
       CMP    LFC45,Y 
       BCC    LF18C   
       INC    $B7     
LF18C: CMP    #$08    
       BCC    LF194   
       LDA    #$08    
       STA    $DB     
LF194: LDA    $82     
       EOR    #$80    
       STA    $82     
       LDY    $C3     
       BMI    LF1D9   
       LDX    #$34    
LF1A0: LDA    INTIM   
       BNE    LF1A0   
       STA    WSYNC   
       STA    VSYNC   
       STX    TIM64T  
       LDA    $B5     
       BEQ    LF1B3   
       JMP    LF3DE   
LF1B3: BIT    $82     
       BMI    LF1BA   
       JMP    LF3DE   
LF1BA: TYA            
       ASL            
       TAX            
       LDA    LFD3C,X 
       STA    $83     
       LDA    LFD3D,X 
       STA    $84     
       DEC    $C3     
       BMI    LF1D2   
       LDA    #$80    
       STA    $CF     
       JMP    LF3DE   
LF1D2: LDA    #$40    
       STA    $D0     
       JMP    LF3DE   
LF1D9: LDX    #$34    
LF1DB: LDA    INTIM   
       BNE    LF1DB   
       STA    WSYNC   
       STA    VSYNC   
       STX    TIM64T  
       BIT    $DA     
       BPL    LF1EE   
       JMP    LF402   
LF1EE: LDA    $D1     
       ORA    INPT4   
       BMI    LF245   
       LDA    $81     
       BNE    LF245   
       LDA    #$80    
       STA    $C2     
       LDA    #$08    
       STA    $81     
       LDA    #$E0    
       STA    $87     
       STA    $C0     
       LDA    #$FD    
       STA    $88     
       STA    $C1     
       LDA    $89     
       CLC            
       ADC    #$03    
       STA    $8B     
       STA    $A7     
       LDA    $8C     
       STA    $8E     
       STA    $A8     
       LDX    $DC     
       CPX    #$0F    
       BNE    LF221   
LF221: LDA    LFC85,X 
       STA    $A9     
       LDA    LFC95,X 
       STA    $AA     
       LDA    #$08    
       STA    AUDC0   
       LDA    #$01    
       STA    AUDF0   
       STA    $AC     
       STA    $AF     
       LDA    #$04    
       STA    $AB     
       LDA    #$0A    
       STA    AUDV0   
       STA    $AD     
       LDA    #$FE    
       STA    $AE     
LF245: LDA    CXP0FB  
       BPL    LF2A9   
       LDA    $B9     
       EOR    #$FF    
       AND    #$0F    
       STA    $BA     
       LDY    $89     
       CPY    #$E3    
       BCS    LF288   
       CPY    #$48    
       BCC    LF288   
       BIT    $BD     
       BMI    LF268   
       CMP    #$01    
       BNE    LF288   
       LDY    #$04    
       LSR            
       BCC    LF26A   
LF268: LDY    #$05    
LF26A: TYA            
       CLC            
       ADC    $A6     
       STA    $A6     
       CMP    #$75    
       BCC    LF288   
       LDA    #$0E    
       STA    $DC     
       LDA    #$DD    
       STA    $83     
       LDA    #$FC    
       STA    $84     
       LDA    #$95    
       STA    $A5     
       LDA    #$74    
       STA    $A6     
LF288: LDA    #$0C    
       STA    AUDC0   
       LDA    #$08    
       STA    $AB     
       LDA    #$1F    
       STA    AUDF0   
       STA    $AC     
       STA    AUDV0   
       LDA    #$FF    
       STA    $AE     
       STA    $AF     
       LDA    $A5     
       STA    $89     
       LDA    $A6     
       STA    $8C     
       JMP    LF3DE   
LF2A9: BIT    $D1     
       BMI    LF2F4   
       LDA    $89     
       STA    $A5     
       LDA    $8C     
       STA    $A6     
       LDA    SWCHA   
       LSR            
       LSR            
       LSR            
       LSR            
       CMP    #$0F    
       BEQ    LF2CE   
       LDY    #$00    
       CMP    $B9     
       BEQ    LF2C7   
       INY            
LF2C7: STA    $B9     
       DEY            
       BEQ    LF2F4   
       ORA    $BA     
LF2CE: ASL            
       TAY            
       LDA    LFCA5,Y 
       STA    $D4     
       LDA    LFCA6,Y 
       STA    $D5     
       LDY    $8C     
       LDA    $89     
       JMP.ind ($00D4)
LF2E1: .byte $C0,$00,$F0,$0F,$C6,$8C,$A9,$0D,$A9,$DD,$A0,$FC,$A2,$0E,$86,$DC
       .byte $4C,$DA,$F3
LF2F4: JMP    LF3DE   
LF2F7: .byte $C9,$45,$90,$F9,$C6,$89,$A5,$89,$29,$0F,$C9,$0F,$D0,$02,$C6,$89
       .byte $A9,$07,$A9,$D1,$A0,$FC,$A2,$0B,$86,$DC,$4C,$DA,$F3,$C9,$E3,$B0
       .byte $DC,$E6,$89,$A5,$89,$29,$0F,$C9,$0F,$D0,$02,$E6,$89,$A9,$0B,$A9
       .byte $C5,$A0,$FC,$A2,$07,$86,$DC,$4C,$DA,$F3,$C0,$74,$F0,$BF,$E6,$8C
       .byte $A9,$0E,$A9,$00,$A0,$FD,$A2,$0D,$86,$DC,$4C,$DA,$F3,$C0,$00,$F0
       .byte $AF,$C9,$45,$90,$95,$C6,$8C,$C6,$89,$A5,$89,$29,$0F,$C9,$0F,$D0
       .byte $02,$C6,$89,$A9,$05,$A9,$0C,$A0,$FD,$A2,$0A,$86,$DC,$4C,$DA,$F3
       .byte $4C,$14,$F3,$4C,$E1,$F2,$4C,$F7,$F2,$4C,$31,$F3,$C0,$00,$F0,$9D
       .byte $A5,$89,$C9,$E3,$B0,$ED,$C6,$8C,$E6,$89,$A5,$89,$29,$0F,$C9,$0F
       .byte $D0,$02,$E6,$89,$A9,$09,$A9,$18,$A0,$FD,$A2,$06,$86,$DC,$4C,$DA
       .byte $F3,$C0,$74,$F0,$D1,$C9,$45,$90,$91,$E6,$8C,$C6,$89,$A5,$89,$29
       .byte $0F,$C9,$0F,$D0,$02,$C6,$89,$A9,$06,$A9,$24,$A0,$FD,$A2,$09,$86
       .byte $DC,$D0,$20,$C0,$74,$F0,$A9,$C9,$E3,$B0,$AE,$E6,$8C,$E6,$89,$A5
       .byte $89,$29,$0F,$C9,$0F,$D0,$02,$E6,$89,$A9,$0A,$A9,$30,$A0,$FD,$A2
       .byte $05,$86,$DC,$85,$83,$84,$84
LF3DE: LDA    $80     
       LSR            
       AND    #$0F    
       TAX            
       LDY    $B7     
       LDA    LFC4D,Y 
LF3E9: ROR            
       DEX            
       BNE    LF3E9   
       AND    #$3F    
       STA    $B6     
       BIT    $D7     
       BVS    LF3FC   
       LDA    #$0C    
       CLC            
       ADC    $B7     
       STA    $D6     
LF3FC: LDA    $81     
       BEQ    LF402   
       DEC    $81     
LF402: LDX    #$00    
       BIT    $82     
       BPL    LF40A   
       LDX    #$0B    
LF40A: BIT    $D1     
       BMI    LF481   
       LDA    $C3     
       BPL    LF481   
       LDA    #$00    
       STA    $CF     
       BIT    CXPPMM  
       BPL    LF481   
       LDA    #$0A    
       STA    COLUBK  
       LDA    $99,X   
       BEQ    LF457   
       LDY    $B7     
       LDA    LFC34,Y 
       BIT    $BB     
       BPL    LF42C   
       ASL            
LF42C: STA    $CD     
       LDA    #$01    
       STA    $96,X   
       STA    $8A     
       LDA    #$00    
       STA    $8D     
       STA    $92,X   
       STA    $B3     
       LDA    #$0C    
       STA    AUDC1   
       LDA    #$1F    
       STA    AUDF1   
       STA    $B1     
       LDA    #$10    
       STA    $B0     
       LDA    #$0F    
       STA    AUDV1   
       STA    $B2     
       LDA    #$FE    
       STA    $B4     
       JMP    LF4E0   
LF457: LDA    $91,X   
       ORA    $92,X   
       BEQ    LF484   
       LDA    #$01    
       STA    AUDC1   
       STA    AUDF1   
       STA    $B1     
       STA    AUDV1   
       STA    $B2     
       STA    $B4     
       STA    $B3     
       LDA    #$20    
       STA    $B0     
       LDA    #$78    
       STA    $96     
       STA    $A1     
       LDA    #$00    
       STA    $92     
       STA    $9D     
       LDA    #$0F    
       STA    $C3     
LF481: JMP    LF4E0   
LF484: LDA    #$05    
       STA    $96,X   
       STA    $8A     
       LDA    #$FF    
       STA    $99,X   
       LDA    #$00    
       STA    $8D     
       STA    $92,X   
       LDA    #$07    
       STA    AUDC1   
       LDA    #$08    
       STA    $B0     
       STA    $B1     
       LDA    #$0F    
       STA    $B2     
       LDA    #$01    
       STA    $B4     
       LDA    #$FC    
       STA    $B3     
       LDA    #$10    
       ORA    $CD     
       ADC    $B7     
       STA    $CD     
       DEC    $CA     
       BNE    LF4E0   
       LDA    #$04    
       STA    $CA     
       LDA    $C4     
       CMP    #$02    
       BEQ    LF4DC   
       INC    $C4     
       LDA    #$10    
       STA    $AB     
       LDA    #$01    
       STA    AUDF0   
       STA    $AC     
       LDA    #$FE    
       STA    $AF     
       STA    $AE     
       LDA    #$0F    
       STA    AUDV1   
       STA    $B2     
       LDA    #$04    
       STA    AUDC0   
LF4DC: LDA    #$80    
       STA    $BB     
LF4E0: BIT    $BD     
       BPL    LF50A   
       LDA    $9C     
       ORA    $9D     
       BNE    LF4F7   
       LDA    $9B     
       CLC            
       ADC    #$04    
       STA    $9B     
       BIT    $82     
       BPL    LF4F7   
       STA    $8D     
LF4F7: LDA    $91     
       ORA    $92     
       BNE    LF50A   
       LDA    $90     
       CLC            
       ADC    #$04    
       STA    $90     
       BIT    $82     
       BMI    LF50A   
       STA    $8D     
LF50A: BIT    $DA     
       BPL    LF511   
       JMP    LF58F   
LF511: BIT    CXM0P   
       BPL    LF52F   
       LDA    $91,X   
       ORA    $92,X   
       BEQ    LF52F   
       LDA    $CD     
       BNE    LF529   
       LDA    #$02    
       BIT    $BB     
       BPL    LF527   
       LDA    #$10    
LF527: STA    $CD     
LF529: LDA    #$00    
       STA    $91,X   
       STA    $92,X   
LF52F: BIT    $CE     
       BMI    LF58F   
       LDA    CXP1FB  
       BPL    LF58F   
       LDA    $94,X   
       STA    $8A     
       LDA    $93,X   
       STA    $8D     
       LDA    $97,X   
       STA    $92,X   
       LDA    $98,X   
       STA    $91,X   
       LDA    $95,X   
       BEQ    LF57D   
       BMI    LF55D   
       LDA    #$80    
       STA    $95,X   
LF551: LDA    $92,X   
       EOR    #$FF    
       CLC            
       ADC    #$01    
       STA    $92,X   
       JMP    LF59B   
LF55D: LDA    #$01    
       STA    $95,X   
LF561: LDA    $91,X   
       EOR    #$FF    
       CLC            
       ADC    #$01    
       STA    $91,X   
       BMI    LF57A   
       LDA    $8D     
       CLC            
       ADC    #$09    
       STA    $8D     
       LDA    $93,X   
       CLC            
       ADC    #$09    
       STA    $93,X   
LF57A: JMP    LF59B   
LF57D: LDA    $80     
       AND    #$03    
       BEQ    LF589   
       LDA    #$80    
       STA    $95,X   
       BNE    LF551   
LF589: LDA    #$01    
       STA    $95,X   
       BNE    LF561   
LF58F: LDA    #$00    
       STA    $95,X   
       LDA    $8A     
       STA    $94,X   
       LDA    $8D     
       STA    $93,X   
LF59B: LDA    $8A     
       STA    $8F,X   
       LDA    $8D     
       STA    $90,X   
       LDA    $92,X   
       STA    $97,X   
       LDA    $91,X   
       STA    $98,X   
       TXA            
       TAY            
       EOR    #$0B    
       TAX            
       LDA    $96,X   
       BEQ    LF5C4   
       CMP    #$03    
       BCS    LF5C1   
       LDA.wy $0096,Y 
       BNE    LF601   
       LDA    $99,X   
       BNE    LF601   
LF5C1: JMP    LF68C   
LF5C4: LDA    $90,X   
       BIT    $DA     
       BMI    LF5CD   
       CLC            
       ADC    $91,X   
LF5CD: CMP    #$74    
       BCS    LF5D4   
       JMP    LF662   
LF5D4: LDY    #$02    
       LDA    $91,X   
       BMI    LF5F0   
       LDA    $99,X   
       BEQ    LF5EE   
       LDA    #$00    
       STA    $99,X   
       LDA    $85     
       CMP    #$00    
       BEQ    LF5EC   
       LDA    #$00    
       STA    $BB     
LF5EC: LDA    #$00    
LF5EE: LDY    #$72    
LF5F0: ORA    $92,X   
       BEQ    LF601   
       LDA    $91,X   
       EOR    #$FF    
       CLC            
       ADC    #$01    
       STA    $91,X   
       TYA            
       JMP    LF662   
LF601: LDA    $80     
       AND    #$07    
       ORA    $DB     
       TAY            
       LDA    LFC75,Y 
       STA    $92,X   
       STA    $97,X   
       LDA    $80     
       LSR            
       LSR            
       LSR            
       AND    #$07    
       LDY    $CC     
       CPY    #$25    
       BCC    LF61E   
       ORA    $DB     
LF61E: TAY            
       LDA    LFC65,Y 
       STA    $91,X   
       STA    $98,X   
       STY    $D9     
       LDA    $80     
       AND    #$03    
       TAY            
       LDA    LFEE6,Y 
       LDY    $D9     
       STA    $94,X   
       STA    $8F,X   
       LDA    $99,X   
       BEQ    LF65E   
       LDA    $B7     
       LSR            
       LSR            
       CLC            
       LDY    $BB     
       BPL    LF645   
       ADC    #$02    
LF645: ADC    #$01    
       CMP    #$03    
       BCC    LF64D   
       LDA    #$02    
LF64D: STA    $91,X   
       LDA    $80     
       LSR            
       LSR            
       LSR            
       AND    #$07    
       TAY            
       LDA    LFEE6,Y 
       STA    $8F,X   
       STA    $94,X   
LF65E: LDA    #$00    
       STA    $93,X   
LF662: STA    $90,X   
       STA    $8D     
       LDA    $8F,X   
       STA    $8A     
       BIT    $DA     
       BMI    LF671   
       CLC            
       ADC    $92,X   
LF671: TAY            
       AND    #$0F    
       CMP    #$0F    
       BNE    LF67F   
       INY            
       LDA    $92,X   
       BPL    LF67F   
       DEY            
       DEY            
LF67F: TYA            
       CMP    #$E3    
       BCS    LF68F   
       CMP    #$45    
       BCC    LF68F   
       STA    $8F,X   
       STA    $8A     
LF68C: JMP    LF698   
LF68F: LDA    $92,X   
       EOR    #$FF    
       CLC            
       ADC    #$01    
       STA    $92,X   
LF698: LDA    $96,X   
       BEQ    LF6A2   
       DEC    $96,X   
       LDA    #$80    
       STA    $CF     
LF6A2: LDY    #$FD    
       LDA    #$8C    
       CMP    $BC     
       BEQ    LF6B0   
       LDY    #$FD    
       LDA    #$98    
       STA    $BC     
LF6B0: STA    $85     
       STY    $86     
       LDA    $BE     
       AND    #$03    
       BNE    LF6CE   
       LDA    #$FD    
       STA    $86     
       LDA    #$8C    
       CMP    $BC     
       BNE    LF6CA   
       LDA    #$98    
       LDY    #$FD    
       STY    $86     
LF6CA: STA    $BC     
       STA    $85     
LF6CE: LDA    $99,X   
       BEQ    LF712   
       BIT    $BB     
       BMI    LF70A   
       LDA    #$00    
       STA    $92,X   
       LDA    $CC     
       CMP    #$03    
       BCS    LF6E6   
       LDX    #$BC    
       LDY    #$FD    
       BNE    LF70E   
LF6E6: CMP    #$10    
       BCS    LF6F0   
       LDX    #$C8    
       LDY    #$FD    
       BNE    LF70E   
LF6F0: CMP    #$20    
       BCS    LF6FA   
       LDX    #$A4    
       LDY    #$FD    
       BNE    LF70E   
LF6FA: CMP    #$50    
       BCS    LF704   
       LDX    #$B0    
       LDY    #$FD    
       BNE    LF70E   
LF704: LDX    #$D4    
       LDY    #$FD    
       BNE    LF70E   
LF70A: LDX    #$00    
       LDY    #$FD    
LF70E: STX    $85     
       STY    $86     
LF712: LDA    $C0     
       STA    $87     
       LDA    $C1     
       STA    $88     
       BIT    $C2     
       BPL    LF762   
       BIT    CXM0FB  
       BMI    LF752   
       BIT    CXM0P   
       BMI    LF752   
       BIT    $DA     
       BMI    LF762   
       LDA    $A7     
       CLC            
       ADC    $AA     
       CMP    #$45    
       BCC    LF752   
       CMP    #$EB    
       BCS    LF752   
       STA    $A7     
       STA    $8B     
       LDA    $A8     
       CLC            
       ADC    $A9     
       BIT    $BD     
       BPL    LF747   
       CLC            
       ADC    #$04    
LF747: CMP    #$7F    
       BCS    LF752   
       STA    $A8     
       STA    $8E     
       JMP    LF762   
LF752: LDA    #$00    
       STA    $C2     
       LDA    #$66    
       STA    $C0     
       STA    $87     
       LDA    #$FE    
       STA    $C1     
       STA    $88     
LF762: BIT    $DA     
       BPL    LF769   
       JMP    LF7C5   
LF769: LDA    #$00    
       STA    $BD     
       DEC    $B8     
       BNE    LF7C5   
       LDA    $80     
       LSR            
       AND    #$0F    
       CMP    #$0F    
       BNE    LF77E   
       LDA    $B6     
       STA    $D8     
LF77E: LDA    #$80    
       STA    $BD     
       LDX    $B7     
       LDA    LFC5D,X 
       STA    $B8     
       LDX    #$1E    
LF78B: LDA    $E0,X   
       STA    $E1,X   
       DEX            
       LDA    $E0,X   
       STA    $E1,X   
       DEX            
       BPL    LF78B   
       LDY    $D8     
       BIT    $D7     
       BVS    LF7AD   
       LDA    $80     
       LSR            
       LSR            
       LSR            
       LSR            
       AND    #$01    
       BNE    LF7AD   
       LDA    #$80    
       STA    $D7     
       STA    $B6     
LF7AD: BIT    $D7     
       BPL    LF7B5   
       LDA    #$40    
       STA    $D7     
LF7B5: BVC    LF7C3   
       LDA    #$00    
       DEC    $D6     
       BEQ    LF7C1   
       LDY    #$00    
       LDA    #$40    
LF7C1: STA    $D7     
LF7C3: STY    $E0     
LF7C5: LDA    $8B     
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       STA    WSYNC   
LF7CE: DEX            
       BNE    LF7CE   
       STA    RESM0   
       LDX    $C0     
       STX    $87     
       LDA    $D9     
       LDA    $C1     
       STA    $88     
       LDA    #$7F    
       SEC            
       CPX    #$66    
       BEQ    LF7F1   
       SBC    $8E     
       CLC            
       ADC    $87     
       STA    $87     
       LDA    #$00    
       ADC    $88     
       STA    $88     
LF7F1: LDA    INTIM   
       BNE    LF7F1   
       STA    WSYNC   
       STA    VBLANK  
       STA    CXCLR   
       LDA    #$FD    
       STA    TIM64T  
       LDA    $D2     
       BIT    $D1     
       BMI    LF809   
       LDA    #$68    
LF809: STA    COLUP0  
       LDX    $83     
       LDY    $84     
       STX    $D4     
       STY    $D5     
       STA    WSYNC   
       LDX    #$06    
       NOP            
       NOP            
       NOP            
LF81A: DEX            
       BNE    LF81A   
       STA    RESP0   
       LDY    #$00    
       LDX    $C4     
       BMI    LF82D   
       LDA    LFC44,X 
       STA    NUSIZ0  
       JMP    LF835   
LF82D: LDA    #$66    
       STA    $D4     
       LDA    #$FE    
       STA    $D5     
LF835: STA    WSYNC   
       NOP            
       NOP            
       LDA    ($D4),Y 
       STA    GRP0    
       INY            
       CPY    #$0D    
       BNE    LF835   
       LDA    #$00    
       STA    GRP0    
       STA    NUSIZ0  
       LDA    #$0F    
       BIT    $D1     
       BPL    LF850   
       LDA    $D2     
LF850: STA    COLUP0  
       STA    COLUP1  
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       LDX    #$04    
       STA    WSYNC   
LF85E: DEX            
       BNE    LF85E   
       NOP            
       ROL    LF000,X 
       BIT    $FF     
       LDA    #$10    
       STA    HMP1    
       STA    RESP0   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$34    
       STA    CTRLPF  
       LDA    #$07    
       STA    $D5     
       STA    VDELP0  
       STA    VDELP1  
LF885: LDY    $D5     
       LDA    LFD84,Y 
       STA.w  $00D4   
       STA    WSYNC   
       LDA    LFD7C,Y 
       TAX            
       LDA    LFD5C,Y 
       NOP            
       NOP            
       STA    GRP0    
       LDA    LFD64,Y 
       STA.w  $001C   
       LDA    LFD6C,Y 
       STA.w  $001B   
       LDA    LFD74,Y 
       LDY.w  $00D4   
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       DEC    $D5     
       BPL    LF885   
       LDA    #$00    
       STA    VDELP0  
       STA    VDELP1  
       STA    GRP0    
       STA    GRP1    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$01    
       STA    CTRLPF  
       LDA    $89     
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       STA    WSYNC   
LF8D3: DEX            
       BNE    LF8D3   
       STA    RESP0   
       STA    WSYNC   
       LDA    $8A     
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       STA    WSYNC   
LF8E3: DEX            
       BNE    LF8E3   
       STA    RESP1   
       STA    WSYNC   
       LDY    $C9     
       STY    COLUP1  
       LDA    $D2     
       BIT    $D1     
       BMI    LF8F6   
       LDA    #$68    
LF8F6: STA    COLUP0  
       LDA    $89     
       AND    #$0F    
       TAX            
       LDA    LFFEC,X 
       STA    HMP0    
       LDA    $8A     
       AND    #$0F    
       TAX            
       LDA    LFFEC,X 
       STA    HMP1    
       LDA    $8B     
       AND    #$0F    
       TAX            
       LDA    LFFEC,X 
       STA    HMM0    
       STA    WSYNC   
       STA    HMOVE   
       BIT    $CF     
       BPL    LF929   
       LDA    #$66    
       STA    $85     
       LDA    #$FE    
       STA    $86     
       JMP    LF943   
LF929: LDX    #$0B    
       BIT    $82     
       BPL    LF931   
       LDX    #$00    
LF931: LDA    $92,X   
       ORA    $91,X   
       BNE    LF943   
       LDA    $99,X   
       BNE    LF943   
       LDA    #$8C    
       STA    $85     
       LDA    #$FD    
       STA    $86     
LF943: BIT    $CE     
       BPL    LF957   
       LDA    $D2     
       BIT    $D1     
       BMI    LF94F   
       LDA    #$68    
LF94F: STA    COLUPF  
       LDA    #$FF    
       STA    PF1     
       STA    PF2     
LF957: STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       STA    WSYNC   
       LDA    $D2     
       STA    COLUPF  
       LDA    #$FF    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       STA    WSYNC   
       LDA    #$10    
       STA    PF0     
       LDX    $B7     
       LDA    #$00    
       STA    PF1     
       STA    PF2     
       LDA    $99     
       ORA    $A4     
       BEQ    LF98E   
       LDA    $BE     
       AND    #$F0    
       ORA    #$07    
       JMP    LF991   
LF98E: LDA    LFC55,X 
LF991: BIT    $D1     
       BPL    LF997   
       LDA    $D2     
LF997: STA    WSYNC   
       STA    COLUPF  
       STA    $D2     
       LDA    #$20    
       STA    NUSIZ0  
       LDA    #$00    
       STA    $D4     
       TAY            
LF9A6: STY    $D9     
       TYA            
       SEC            
       SBC    $8C     
       TAY            
       LDA    #$00    
       BCC    LF9B7   
       CPY    #$0C    
       BCS    LF9B7   
       LDA    ($83),Y 
LF9B7: TAX            
       LDA    $D9     
       SEC            
       SBC    $8D     
       TAY            
       LDA    #$00    
       BCC    LF9C8   
       CPY    #$0C    
       BCS    LF9C8   
       LDA    ($85),Y 
LF9C8: STA    WSYNC   
       STA    GRP1    
       STX    GRP0    
       LDY    $D9     
       LDA    ($87),Y 
       STA    ENAM0   
       INY            
       STY    $D9     
       TYA            
       SEC            
       SBC    $8C     
       TAY            
       LDA    #$00    
       BCC    LF9E6   
       CPY    #$0C    
       BCS    LF9E6   
       LDA    ($83),Y 
LF9E6: TAX            
       LDA    $D9     
       SEC            
       SBC    $8D     
       TAY            
       LDA    #$00    
       BCC    LF9F7   
       CPY    #$0C    
       BCS    LF9F7   
       LDA    ($85),Y 
LF9F7: STA    WSYNC   
       STA    GRP1    
       STX    GRP0    
       LDX    $D4     
       LDA    $E0,X   
       STA    PF1     
       STA    PF2     
       INC    $D9     
       LDA    $D9     
       SEC            
       SBC    $8C     
       TAY            
       LDA    #$00    
       BCC    LFA17   
       CPY    #$0C    
       BCS    LFA17   
       LDA    ($83),Y 
LFA17: TAX            
       LDA    $D9     
       SEC            
       SBC    $8D     
       TAY            
       LDA    #$00    
       BCC    LFA28   
       CPY    #$0C    
       BCS    LFA28   
       LDA    ($85),Y 
LFA28: STA    WSYNC   
       STA    GRP1    
       STX    GRP0    
       LDY    $D9     
       LDA    ($87),Y 
       STA    ENAM0   
       INY            
       STY    $D9     
       TYA            
       SEC            
       SBC    $8C     
       TAY            
       LDA    #$00    
       BCC    LFA46   
       CPY    #$0C    
       BCS    LFA46   
       LDA    ($83),Y 
LFA46: TAX            
       LDA    $D9     
       SEC            
       SBC    $8D     
       TAY            
       LDA    #$00    
       BCC    LFA57   
       CPY    #$0C    
       BCS    LFA57   
       LDA    ($85),Y 
LFA57: STA    WSYNC   
       STA    GRP1    
       STX    GRP0    
       INC    $D4     
       LDY    $D9     
       INY            
       CPY    #$7F    
       BCS    LFA69   
       JMP    LF9A6   
LFA69: STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    ENAM0   
       LDA    #$FF    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       LDA    $D2     
       STA    COLUPF  
       STA    WSYNC   
       LDY    #$00    
       STY    PF1     
       STY    PF2     
       STY    PF0     
       STA    WSYNC   
       STA    HMCLR   
       LDA    $D2     
       BIT    $D1     
       BMI    LFA9B   
       LDA    #$68    
       BIT    $D3     
       BMI    LFA9B   
       LDA    #$0F    
LFA9B: STA    COLUP0  
       STA    COLUP1  
       LDX    #$04    
       LDA    #$10    
       STA    HMP1    
       STA    WSYNC   
       LDA    #$00    
       STA    CTRLPF  
       STA    REFP1   
       BIT    $FF     
       BIT    $FF     
       BIT    $FF     
LFAB3: DEX            
       BNE    LFAB3   
       STA    RESP0   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$07    
       STA    $D4     
       LDA    #$FF    
       STA    $D5     
       LDA    #$03    
       STA    NUSIZ0  
       LDA    #$01    
       STA    NUSIZ1  
LFACE: LDY    $C5     
       LDA    ($D4),Y 
       TAX            
       LDY    $C8     
       STA    WSYNC   
       LDA    ($D4),Y 
       LDY    $C7     
       STA    GRP0    
       LDA    ($D4),Y 
       STA    GRP1    
       LDY    $C6     
       LDA    ($D4),Y 
       STA    $D9     
       LDY    #$00    
       LDA    ($D4),Y 
       LDY    $D9     
       STY    GRP0    
       STX    GRP1    
       STA    GRP0    
       DEC    $D4     
       BPL    LFACE   
       LDA    #$00    
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    GRP0    
       STA    GRP1    
       STA    WSYNC   
       SED            
       LDA    $CD     
       BEQ    LFB1B   
       LDA    $CB     
       CLC            
       ADC    $CD     
       STA    $CB     
       LDA    $CC     
       ADC    #$00    
       STA    $CC     
       BCC    LFB1B   
       LDA    #$80    
       STA    $D3     
LFB1B: CLD            
       LDA    $CB     
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA    $C5     
       LDA    $CB     
       AND    #$F0    
       LSR            
       STA    $C6     
       LDA    $CC     
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA    $C7     
       LDA    $CC     
       AND    #$F0    
       LSR            
       STA    $C8     
       BIT    $D1     
       BMI    LFB78   
       LDA    $B0     
       BNE    LFB78   
       LDA    $99     
       ORA    $96     
       BEQ    LFB53   
LFB4A: LDA    $A4     
       ORA    $A1     
       BEQ    LFB5A   
       JMP    LFB78   
LFB53: LDA    $92     
       BNE    LFB5E   
       JMP    LFB4A   
LFB5A: LDA    $9D     
       BEQ    LFB78   
LFB5E: LDA    #$0B    
       STA    AUDC1   
       LDA    #$08    
       STA    $B2     
       STA    AUDV1   
       LDA    #$01    
       STA    $B0     
       LDA    #$00    
       STA    $B3     
       STA    $B4     
       LDA    #$1F    
       STA    AUDF1   
       STA    $B1     
LFB78: LDX    #$00    
       BIT    $82     
       BPL    LFB80   
       LDX    #$0B    
LFB80: LDA    $99,X   
       BEQ    LFB93   
       LDA    #$28    
       BIT    $BB     
       BMI    LFB95   
       LDY    $B7     
       LDA    LFC3C,Y 
       STA    $C9     
       BNE    LFB95   
LFB93: LDA    #$4C    
LFB95: STA    $C9     
       LDX    #$00    
       LDY    #$00    
LFB9B: DEC    $B5     
       BPL    LFBD5   
       LDA    #$04    
       STA    $B5     
       LDA    $AB,X   
       BEQ    LFBD5   
       DEC    $AB,X   
       BNE    LFBC1   
       LDA    #$00    
       STA.wy $0015,Y 
       STA.wy $0017,Y 
       STA.wy $0019,Y 
       STA    $AF,X   
       STA    $AE,X   
       STA    $AC,X   
       STA    $AD,X   
       JMP    LFBD5   
LFBC1: LDA    $AF,X   
       CLC            
       ADC    $AC,X   
       STA    $AC,X   
       STA.wy $0017,Y 
       LDA    $AE,X   
       CLC            
       ADC    $AD,X   
       STA    $AD,X   
       STA.wy $0019,Y 
LFBD5: LDY    #$01    
       TXA            
       EOR    #$05    
       TAX            
       BNE    LFB9B   
       INC    $BE     
       BNE    LFBE3   
       INC    $BF     
LFBE3: LDA    $BE     
       ADC    $80     
       ADC    $8F     
       ADC    $9A     
       ADC    $90     
       ADC    $9B     
       ADC    INTIM   
       ADC    $CB     
       ADC    $CC     
       ADC    $89     
       ADC    $8C     
       ROR            
       STA    $80     
       BIT    $D0     
       BPL    LFC04   
       JMP    LF01A   
LFC04: BVC    LFC09   
       JMP    LF05F   
LFC09: BIT    $D1     
       BPL    LFC2C   
       BIT    INPT4   
       BMI    LFC2C   
       LDA    $B0     
       ORA    $AB     
       BNE    LFC2C   
LFC17: LDA    INTIM   
       BNE    LFC17   
       LDX    #$2A    
       LDA    #$02    
       STA    WSYNC   
       STA    VBLANK  
       STA    VSYNC   
       STX    TIM8T   
       JMP    LF140   
LFC2C: LDA    INTIM   
       BNE    LFC2C   
       JMP    LF109   
LFC34: .byte $10,$12,$14,$18,$25,$35,$45,$49
LFC3C: .byte $BC,$BC,$1C,$1C,$0F,$FF,$FF,$0F
LFC44: .byte $00
LFC45: .byte $01,$03,$05,$10,$20,$30,$50,$99
LFC4D: .byte $70,$03,$03,$20,$30,$03,$40,$20
LFC55: .byte $24,$74,$CF,$4F,$5B,$0F,$8D,$04
LFC5D: .byte $21,$1F,$1D,$19,$17,$15,$11,$0D
LFC65: .byte $01,$01,$01,$01,$01,$01,$02,$02,$02,$02,$03,$03,$03,$04,$04,$04
LFC75: .byte $01,$FF,$01,$FF,$02,$FE,$02,$FE,$02,$FE,$03,$FD,$03,$FD,$03,$FD
LFC85: .byte $00,$00,$00,$00,$00,$05,$FB,$00,$00,$05,$FB,$00,$00,$06,$FA,$00
LFC95: .byte $00,$00,$00,$00,$00,$05,$05,$05,$00,$FB,$FB,$FB,$00,$00,$00,$00
LFCA5: .byte $DE
LFCA6: .byte $F3,$DE,$F3,$DE,$F3,$DE,$F3,$DE,$F3,$BA,$F3,$73,$F3,$14,$F3,$DE
       .byte $F3,$98,$F3,$44,$F3,$F7,$F2,$DE,$F3,$31,$F3,$E1,$F2,$DE,$F3,$3C
       .byte $7E,$7E,$FB,$FB,$F1,$F1,$FB,$FB,$7E,$7E,$3C,$3C,$7E,$7E,$DF,$DF
       .byte $8F,$8F,$DF,$DF,$7E,$7E,$3C,$3C,$66,$42,$66,$FF,$FF,$FF,$FF,$FF
       .byte $7E,$7E,$3C,$7E,$DF,$DF,$8F,$8F,$DF,$DF,$7E,$7E,$3C,$3C,$66,$42
       .byte $66,$FF,$FF,$FF,$FF,$FF,$7E,$7E,$3C,$3C,$3C,$7E,$7E,$FF,$FF,$FF
       .byte $FF,$FF,$66,$42,$66,$3C,$3C,$7E,$4E,$CF,$8F,$8F,$FF,$FF,$FF,$7E
       .byte $7E,$3C,$3C,$7E,$72,$F3,$F1,$F1,$FF,$FF,$FF,$7E,$7E,$3C,$3C,$7E
       .byte $7E,$FF,$FF,$FF,$8F,$8F,$CF,$4E,$7E,$3C,$3C,$7E,$7E,$FF,$FF,$FF
       .byte $F1,$F1,$F3,$72,$7E,$3C
LFD3C: .byte $66
LFD3D: .byte $FE,$66,$FE,$50,$FF,$50,$FF,$5C,$FF,$68,$FF,$74,$FF,$80,$FF,$8C
       .byte $FF,$98,$FF,$A4,$FF,$B0,$FF,$BC,$FF,$C8,$FF,$D4,$FF,$E0,$FF
LFD5C: .byte $CE,$A8,$CE,$A8,$CE,$00,$00,$00
LFD64: .byte $A9,$AB,$EF,$AD,$49,$00,$00,$00
LFD6C: .byte $20,$20,$20,$50,$50,$00,$00,$00
LFD74: .byte $C4,$AA,$CA,$AA,$C4,$00,$00,$00
LFD7C: .byte $88,$88,$CC,$AA,$CC,$00,$00,$00
LFD84: .byte $E5,$85,$E6,$85,$E6,$00,$00,$00,$FF,$FF,$18,$18,$3C,$7E,$5A,$FF
       .byte $C3,$BD,$FF,$00,$18,$18,$18,$18,$3C,$7E,$5A,$FF,$C3,$BD,$FF,$00
       .byte $10,$7C,$FE,$FE,$82,$44,$28,$10,$10,$38,$10,$28,$99,$BD,$99,$FF
       .byte $18,$18,$18,$18,$24,$24,$24,$36,$92,$92,$7C,$38,$38,$38,$38,$38
       .byte $38,$38,$10,$10,$7E,$3C,$18,$99,$DB,$7E,$3C,$18,$18,$18,$00,$00
       .byte $38,$38,$FE,$44,$82,$AA,$82,$BA,$82,$7C,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00
LFEE6: .byte $91,$99,$E1,$4B,$E1,$4B,$E1,$4B,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$3E,$63,$63,$63,$63,$63
       .byte $63,$3E,$1E,$0C,$0C,$0C,$0C,$0C,$1C,$0C,$7F,$60,$60,$3E,$03,$03
       .byte $43,$3E,$3E,$43,$03,$03,$1E,$03,$43,$3E,$06,$06,$06,$3F,$26,$16
       .byte $0E,$06,$3E,$43,$03,$03,$7E,$60,$60,$7F,$3E,$63,$63,$63,$7E,$60
       .byte $60,$3E,$30,$30,$10,$08,$04,$02,$41,$7F,$3E,$63,$63,$63,$3E,$63
       .byte $63,$3E,$3E,$43,$03,$3F,$63,$63,$63,$3E,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$AC,$00,$00,$00,$00,$00,$00,$00,$00,$00,$40
       .byte $43,$7F,$00,$00,$00,$00,$00,$00,$00,$00,$00,$42,$41,$7F,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$42,$00,$41,$7F,$00,$00,$00,$00,$00,$10
       .byte $00,$42,$00,$41,$01,$7F,$00,$00,$00,$00,$10,$00,$42,$00,$41,$00
       .byte $91,$7F,$00,$00,$10,$00,$42,$00,$41,$00,$91,$4A,$21,$56,$10,$00
       .byte $42,$00,$41,$00,$91,$4A,$21,$02,$40,$14,$10,$00,$42,$20,$55,$68
       .byte $95,$EA,$21,$36,$48,$14,$14,$20,$42,$20,$5D,$EA,$B7,$EA,$2D,$76
       .byte $5C,$34,$14,$62,$42,$20,$FF,$EE,$BF,$FA,$6F,$76,$5C,$3C,$1C,$66
       .byte $42,$62,$FF,$FF,$BF,$FB,$FF,$7E,$5C,$3C,$3C,$66,$42,$66,$FF,$FF
       .byte $FF,$FF,$FF,$7E,$7E,$3C
LFFEC: .byte $70,$60,$50,$40,$30,$20,$10,$00,$F0,$E0,$D0,$C0,$B0,$A0,$90,$90
       .byte $00,$F0,$00,$00
