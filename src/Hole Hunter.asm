; Disassembly of roms/Hole Hunter.bin
; Disassembled Tue Oct  6 15:21:49 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Hole Hunter.bin
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
RESBL   =  $14
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
HMBL    =  $24
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
INPT4   =  $3C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296
LF501   =   $F501
LF538   =   $F538
LF929   =   $F929

       ORG $F000

START:
       CLD            
       SEI            
       LDX    #$FF    
       TXS            
       INX            
       TXA            
LF007: STA    VSYNC,X 
       INX            
       BNE    LF007   
       LDA    #$01    
       STA    TIM64T  
       STX    SWCHA   
       STX    SWCHB   
       LDA    #$FF    
       STA    $E7     
       STA    $E8     
       LDX    #$0A    
LF01F: STA    $89,X   
       DEX            
       DEX            
       BPL    LF01F   
       LDX    #$03    
       LDA    #$50    
       LDY    #$03    
       JSR    LF911   
LF02E: INC    $94     
       LDA    $96     
       LSR            
       EOR    $97     
       LSR            
       LSR            
       EOR    $97     
       LSR            
       EOR    $97     
       EOR    #$01    
       LSR            
       ROR    $96     
       ROR    $97     
       DEC    $95     
       BNE    LF087   
       LDA    #$3C    
       STA    $95     
       LDA    $E7     
       CMP    #$08    
       BEQ    LF087   
       CMP    #$09    
       BEQ    LF087   
       LDA    $D3     
       BEQ    LF05D   
       DEC    $D3     
       BPL    LF068   
LF05D: LDX    #$03    
LF05F: LDA    $D4,X   
       BEQ    LF065   
       DEC    $D4,X   
LF065: DEX            
       BPL    LF05F   
LF068: LDA    $80     
       ORA    $81     
       BEQ    LF086   
       SED            
       SEC            
       BIT    $87     
       BVC    LF086   
       LDA    $80     
       BNE    LF082   
       LDA    $81     
       SBC    #$01    
       STA    $81     
       LDA    #$59    
       BNE    LF084   
LF082: SBC    #$01    
LF084: STA    $80     
LF086: CLD            
LF087: LDA    $E7     
       BMI    LF0EC   
       CMP    $E8     
       BNE    LF093   
       BIT    $E2     
       BPL    LF0A8   
LF093: STA    $E8     
       ASL            
       STA    $ED     
       ASL            
       CLC            
       ADC    $ED     
       TAY            
       LDX    #$05    
LF09F: LDA    LF3E9,Y 
       STA    $E1,X   
       INY            
       DEX            
       BPL    LF09F   
LF0A8: LDA    $94     
       AND    $E6     
       BNE    LF0EC   
       LDA    $E1     
       LSR            
       BCS    LF0BD   
       LSR            
       BCS    LF0BD   
       LSR            
       BCC    LF0EC   
       LDY    $E3     
       BNE    LF0C2   
LF0BD: LDY    $E2     
       LDA    ($E3),Y 
       TAY            
LF0C2: LDA    $E5     
       AND    #$0F    
       TAX            
       TYA            
       BEQ    LF0DE   
       LDA    $E1     
       LSR            
       LSR            
       BCC    LF0D6   
       TYA            
       EOR    #$FF    
       JMP    LF0DE   
LF0D6: LDA    $E5     
       LSR            
       LSR            
       LSR            
       LSR            
       AND    #$0F    
LF0DE: DEC    $E2     
       BPL    LF0E6   
       LDA    #$80    
       STA    $E7     
LF0E6: STX    AUDC0   
       STY    AUDF0   
       STA    AUDV0   
LF0EC: LDX    #$02    
       LDA    $DE     
       BEQ    LF0FB   
LF0F2: LDA    $AF,X   
       AND    #$02    
       BNE    LF0FF   
       DEX            
       BPL    LF0F2   
LF0FB: LDA    #$00    
       BEQ    LF10D   
LF0FF: LDA    #$04    
       STA    AUDC1   
       LDA    $9C,X   
       LSR            
       LSR            
       LSR            
       STA    AUDF1   
       LSR            
       EOR    #$FF    
LF10D: STA    AUDV1   
       LSR    SWCHB   
       BCS    LF11A   
       JSR    LF506   
       JMP    LF141   
LF11A: BIT    $87     
       BVS    LF135   
       BMI    LF141   
       LDA    $D3     
       BNE    LF141   
       JSR    LF45C   
       JMP    LF141   
LF12A: STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    VSYNC   
       JMP    LFFF7   
LF135: LDA    #$FF    
       STA    $DE     
       STA    $DD     
       JSR    LF583   
       JSR    LF62C   
LF141: NOP            
LF142: LDX    INTIM   
       BNE    LF142   
       LDA    #$02    
       STA    WSYNC   
       STA    VBLANK  
       JMP    LF12A   
LF150: .byte $EA
LF151: STA    WSYNC   
       STA    WSYNC   
       STX    VSYNC   
       LDA    #$25    
       STA    TIM64T  
       LDA    #$00    
       STA    $ED     
       STA    $EE     
       BIT    $CD     
       BVC    LF16C   
       LDA    $D3     
       BEQ    LF187   
       BNE    LF180   
LF16C: BPL    LF198   
       LDA    $B7     
       BEQ    LF187   
       LDA    $94     
       AND    #$03    
       BNE    LF180   
       INC    $9F     
       INC    $9F     
       DEC    $B7     
       DEC    $B7     
LF180: LDA    #$00    
       STA    $DE     
       JMP    LF2AD   
LF187: DEC    $82     
       BPL    LF192   
       INC    $82     
       JSR    LF533   
       BNE    LF198   
LF192: JSR    LF474   
       JMP    LF1D6   
LF198: LDA    $E7     
       CMP    #$09    
       BNE    LF1A1   
       JMP    LF2AD   
LF1A1: LDA    SWCHA   
       AND    #$F0    
       EOR    #$F0    
       STA    $D1     
       BNE    LF1B6   
       LDX    $D8     
       BNE    LF1D2   
       LDA    #$00    
       STA    $AE     
       BEQ    LF1D2   
LF1B6: CMP    $D0     
       BEQ    LF1CC   
       LDX    $D0     
       BNE    LF1CC   
       LDX    #$06    
       LDA    $AE     
       CMP    #$06    
       BCS    LF1C8   
       LDX    #$00    
LF1C8: STX    $AE     
       BPL    LF1D6   
LF1CC: LDA    $94     
       AND    #$03    
       BEQ    LF1D6   
LF1D2: LDA    #$00    
       STA    $DD     
LF1D6: LDA    $D1     
       AND    $DD     
       BEQ    LF1F9   
       BIT    $E7     
       BPL    LF1E4   
       LDX    #$07    
       STX    $E7     
LF1E4: LDX    $AE     
       INX            
       CPX    #$0A    
       BCS    LF1ED   
       BNE    LF1F1   
LF1ED: LDX    #$07    
       BNE    LF1F7   
LF1F1: CPX    #$04    
       BNE    LF1F7   
       LDX    #$01    
LF1F7: STX    $AE     
LF1F9: ASL            
       BCC    LF20C   
       TAX            
       LDA    $CF     
       ORA    #$02    
       STA    $CF     
       TXA            
       LDX    #$02    
       STX    $ED     
       LDX    #$80    
       BNE    LF21D   
LF20C: ASL            
       BCC    LF21F   
       TAX            
       LDA    $CF     
       AND    #$FD    
       STA    $CF     
       TXA            
       LDX    #$FE    
       STX    $ED     
       LDX    #$00    
LF21D: STX    $CE     
LF21F: ASL            
       BCC    LF226   
       LDX    #$02    
       BNE    LF22B   
LF226: ASL            
       BCC    LF22D   
       LDX    #$FE    
LF22B: STX    $EE     
LF22D: LDA    $D1     
       STA    $D0     
       LDA    $D3     
       BNE    LF2AD   
       BIT    $87     
       BVC    LF2AD   
       LDA    $D4     
       CMP    #$0A    
       BCC    LF276   
       LDA    $AE     
       LDX    $D8     
       BNE    LF25E   
       BIT    INPT4   
       BMI    LF2AD   
       CLC            
       ADC    #$06    
       STA    $AE     
       LDA    #$05    
       STA    $E7     
       LDA    #$0A    
       STA    $D8     
       LDA    $CF     
       ORA    #$01    
       STA    $CF     
       BNE    LF2AD   
LF25E: DEX            
       STX    $D8     
       CPX    #$05    
       BCS    LF2AD   
       CMP    #$06    
       BCC    LF26D   
       SBC    #$06    
       STA    $AE     
LF26D: LDA    $CF     
       AND    PF1     
       STA    $CF     
       JMP    LF2AD   
LF276: DEC    $D8     
       BMI    LF28D   
       BEQ    LF282   
       LDX    #$00    
       LDY    #$05    
       BNE    LF286   
LF282: LDX    #$08    
       LDY    #$00    
LF286: STX    $EE     
       STY    $AE     
       JMP    LF2AD   
LF28D: INC    $D8     
       BIT    INPT4   
       BMI    LF2A9   
       BIT    $D2     
       BMI    LF2AD   
       LDA    #$28    
       STA    $D8     
       LDA    #$FF    
       STA    $D2     
       LDA    #$02    
       STA    $E7     
       LDX    #$F8    
       LDY    #$05    
       BNE    LF286   
LF2A9: LDA    #$00    
       STA    $D2     
LF2AD: CLC            
       LDA    $ED     
       ADC    $98     
       CMP    #$0E    
       BCS    LF2BA   
       LDA    #$0E    
       BNE    LF2C0   
LF2BA: CMP    #$95    
       BCC    LF2C0   
       LDA    #$94    
LF2C0: STA    $98     
       CLC            
       LDA    $EE     
       ADC    $9F     
       BMI    LF2CD   
       CMP    #$03    
       BCS    LF2D1   
LF2CD: LDA    #$02    
       BNE    LF2D7   
LF2D1: CMP    #$77    
       BCC    LF2D7   
       LDA    #$76    
LF2D7: STA    $9F     
       BIT    $87     
       BVC    LF325   
       BIT    $CD     
       BMI    LF325   
       LDA    $D4     
       BNE    LF317   
       BIT    $CF     
       BMI    LF30B   
       LDA    $97     
       AND    #$07    
       ASL            
       ASL            
       TAX            
       LDA    LFE4B,X 
       STA    $9A     
       INX            
       LDA    LFE4B,X 
       STA    $9B     
       INX            
       LDA    LFE4B,X 
       STA    $A0     
       INX            
       LDA    LFE4B,X 
       STA    $A1     
       LDA    #$80    
       STA    $CF     
LF30B: LDA    $94     
       AND    #$10    
       BEQ    LF325   
       JSR    LF55E   
       JMP    LF330   
LF317: CMP    #$0F    
       BCS    LF32D   
       CMP    #$0A    
       BCC    LF325   
       LDA    $94     
       AND    #$10    
       BNE    LF32D   
LF325: LDA    #$00    
       STA    $B8     
       STA    $B9     
       BEQ    LF330   
LF32D: JSR    LF542   
LF330: BIT    $87     
       BMI    LF33B   
       LDX    $B3     
       INX            
       CPX    #$03    
       BCC    LF33D   
LF33B: LDX    #$00    
LF33D: STX    $B3     
       LDA    #$00    
       STA    $DF     
       STA    $E0     
       JSR    LFAF9   
       LDA    $AF,X   
       CMP    #$04    
       BEQ    LF397   
       BCC    LF356   
       LDA    #$00    
       STA    $C1,X   
       BEQ    LF3B7   
LF356: BIT    $87     
       BPL    LF361   
       TAY            
       LDA    $94     
       LSR            
       BCS    LF3B7   
       TYA            
LF361: LDY    $D3     
       BNE    LF3B7   
       EOR    #$01    
       STA    $AF,X   
       CMP    #$02    
       BCS    LF387   
       LDA    $B4,X   
       ASL            
       BCS    LF37B   
       ASL            
       BCS    LF381   
       JSR    LFA77   
       JMP    LF3B7   
LF37B: JSR    LFA19   
       JMP    LF3B7   
LF381: JSR    LFAA0   
       JMP    LF3B7   
LF387: LDA    #$0C    
       STA    $C1,X   
       LDY    #$02    
       LDA    $B4,X   
       BMI    LF393   
       LDY    #$FE    
LF393: STY    $DF     
       BNE    LF3B7   
LF397: LDA    $D5,X   
       BNE    LF3AB   
       LDA    #$00    
       STA    $AF,X   
       LDA    #$02    
       STA    $C1,X   
       STA    $E0     
       LDA    #$44    
       STA    $B4,X   
       BNE    LF3B7   
LF3AB: TAY            
       LDA    $94     
       AND    LFE45,Y 
       BEQ    LF3B5   
       LDA    #$04    
LF3B5: STA    $C1,X   
LF3B7: CLC            
       LDA    $E0     
       AND    $DE     
       ADC    $A3,X   
       STA    $A3,X   
       CLC            
       LDA    $DF     
       AND    $DE     
       ADC    $9C,X   
       BEQ    LF3CD   
       CMP    #$9F    
       BCC    LF3E1   
LF3CD: BIT    $87     
       BPL    LF3D5   
       LDA    #$01    
       BNE    LF3D9   
LF3D5: LDA    $97     
       AND    #$07    
LF3D9: STA    $D5,X   
       LDA    #$05    
       STA    $AF,X   
       BNE    LF3E3   
LF3E1: STA    $9C,X   
LF3E3: JSR    LF4A0   
       JMP    LF69F   
LF3E9: .byte $07,$F6,$FB,$9D,$11,$01,$03,$06,$FB,$AF,$0A,$02,$01,$C4,$F4,$25
       .byte $0B,$01,$01,$04,$FE,$22,$04,$02,$03,$C3,$00,$1E,$03,$04,$03,$0C
       .byte $FE,$27,$02,$02,$03,$CE,$00,$08,$05,$04,$03,$62,$00,$08,$02,$04
       .byte $07,$CC,$F4,$31,$1E,$01,$07,$CC,$F4,$50,$0B,$01,$12,$12,$12,$12
       .byte $0E,$0E,$0E,$11,$13,$17,$1D,$1D,$13,$13,$13,$13,$0F,$0F,$13,$13
       .byte $0E,$0E,$0C,$0C,$09,$0A,$0B,$0B,$0C,$0C,$00,$0C,$0C,$0F,$0F,$11
       .byte $11,$0F,$0F,$11,$11,$0F,$0F,$0F,$0F,$0F,$0F,$11,$11,$11,$0C,$00
       .byte $0C,$0C,$0C
LF45C: LDA    #$80    
       STA    $87     
       LDA    #$FF    
       STA    $DE     
       LDA    #$02    
       STA    $E9     
       LDA    #$07    
       STA    $EA     
       LDA    #$08    
       STA    $E7     
       LDA    #$3B    
       STA    $EB     
LF474: LDA    #$78    
       STA    $D4     
       LDA    #$00    
       STA    $D0     
       STA    $CE     
       STA    $CD     
       STA    $CF     
       STA    $AE     
       STA    $D2     
       LDA    #$4A    
       STA    $98     
       LDA    #$77    
       STA    $9F     
       LDY    #$05    
       LDX    #$02    
LF492: STY    $AF,X   
       LDA    LF49D,X 
       STA    $D5,X   
       DEX            
       BPL    LF492   
       RTS            

LF49D: .byte $01,$09,$0F
LF4A0: LDX    #$00    
       BIT    $CE     
       BPL    LF4A8   
       LDX    #$08    
LF4A8: STX    $CA     
       LDX    $AE     
       LDA    LFFEB,X 
       STA    $D9     
       LDA    #$00    
       BIT    $87     
       BVC    LF4BE   
       BIT    $CD     
       BMI    LF4C0   
       LDA    LFFDF,X 
LF4BE: STA    $B7     
LF4C0: TXA            
       ASL            
       TAX            
       LDA    LFFB9,X 
       STA    $C4     
       INX            
       LDA    LFFB9,X 
       STA    $C5     
       LDX    $B3     
       LDY    #$00    
       LDA    $B4,X   
       AND    #$01    
       BEQ    LF4DA   
       LDY    #$08    
LF4DA: STY    $CB     
       LDA    $9C,X   
       STA    $99     
       LDA    $A3,X   
       STA    $A2     
       LDA    $C1,X   
       STA    $C0     
       LDA    $AF,X   
       ASL            
       TAX            
       LDA    LFFD1,X 
       STA    $C6     
       INX            
       LDA    LFFD1,X 
       STA    $C7     
       LDX    #$03    
LF4F9: LDA    $98,X   
       JSR    LF8F2   
       STA    $AA,X   
       STY    $A6,X   
       DEX            
       BPL    LF4F9   
       RTS            

LF506: LDA    #$00    
       STA    $84     
       STA    $85     
       STA    $86     
       STA    $80     
       STA    $83     
       STA    $D3     
       LDA    #$20    
       STA    $81     
       LDA    #$40    
       STA    $87     
       LDA    #$03    
       STA    $82     
       LDA    #$3C    
       STA    $95     
       LDA    #$09    
       STA    $E7     
       LDA    #$38    
       STA    $EB     
       LDA    #$FF    
       STA    $EC     
       JMP    LF474   
LF533: LDA    #$00    
       STA    $87     
       STA    $CD     
       STA    $DD     
       STA    $DE     
       LDA    #$01    
       STA    $D3     
       RTS            

LF542: LDA    $CF     
       ASL            
       TAX            
       LDY    #$01    
LF548: CLC            
       LDA    LFE12,X 
       ADC    $98     
       STA.wy $009A,Y 
       CLC            
       LDA    LFE1A,X 
       ADC    $9F     
       STA.wy $00A0,Y 
       INX            
       DEY            
       BPL    LF548   
LF55E: LDA    $CF     
       AND    #$01    
       ASL            
       ASL            
       ASL            
       TAX            
       LDY    #$07    
LF568: LDA    LF573,X 
       STA.wy $00B8,Y 
       INX            
       DEY            
       BPL    LF568   
       RTS            

LF573: .byte $FE,$06,$FE,$00,$00,$20,$0A,$02,$FE,$10,$FE,$02,$20,$00,$02,$04
LF583: LDA    $D4     
       BNE    LF599   
       BIT    VSYNC   
       BVS    LF58F   
       BIT    WSYNC   
       BVC    LF599   
LF58F: LDA    #$78    
       STA    $D4     
       LDA    $CF     
       AND    #$7F    
       STA    $CF     
LF599: LDX    $B3     
       BIT    COLUP1  
       BPL    LF5DC   
       LDA    $AF,X   
       CMP    #$04    
       BCS    LF5B9   
       CMP    #$02    
       BCC    LF5BA   
       BIT    $CD     
       BVS    LF5B9   
       LDA    #$00    
       STA    $E7     
       LDA    #$40    
       STA    $CD     
       LDA    #$03    
       STA    $D3     
LF5B9: RTS            

LF5BA: LDA    #$06    
       STA    $E7     
       SED            
       SEC            
       LDA    $84     
       SBC    #$02    
       STA    $84     
       LDA    $85     
       SBC    #$00    
       STA    $85     
       LDA    $86     
       SBC    #$00    
       BCS    LF5D8   
       LDA    #$00    
       STA    $84     
       STA    $85     
LF5D8: STA    $86     
       CLD            
       RTS            

LF5DC: BIT    VSYNC   
       BMI    LF5E1   
LF5E0: RTS            

LF5E1: LDA    $AE     
       CMP    #$06    
       BCC    LF5E0   
       LDA    $AF,X   
       CMP    #$04    
       BCS    LF5E0   
       SED            
       CMP    #$02    
       BCS    LF626   
       LDY    #$03    
       LDA    $83     
       CLC            
       ADC    #$01    
       BCC    LF5FD   
       LDA    #$99    
LF5FD: STA    $83     
       LDA    #$01    
LF601: STY    $E7     
       STA    $ED     
       LDA    $85     
       CLC            
       ADC    $ED     
       STA    $85     
       LDA    $86     
       ADC    #$00    
       BCC    LF618   
       LDA    #$99    
       STA    $84     
       STA    $85     
LF618: STA    $86     
       CLD            
       LDA    #$05    
       STA    $AF,X   
       LDA    $94     
       AND    #$0F    
       STA    $D5,X   
       RTS            

LF626: LDA    #$05    
       LDY    #$04    
       BNE    LF601   
LF62C: BIT    $CD     
       BMI    LF636   
       LDA    $AE     
       CMP    #$05    
       BNE    LF637   
LF636: RTS            

LF637: LDA    $AE     
       BEQ    LF655   
       CMP    #$06    
       BCC    LF643   
       SBC    #$06    
       BEQ    LF655   
LF643: LDA    $98     
       BIT    $CE     
       BPL    LF64C   
       CLC            
       ADC    #$07    
LF64C: STA    $ED     
       LDA    $9F     
       CLC            
       ADC    #$18    
       BNE    LF667   
LF655: CLC            
       LDA    $98     
       ADC    #$02    
       BIT    $CE     
       BPL    LF660   
       ADC    #$03    
LF660: STA    $ED     
       LDA    $9F     
       CLC            
       ADC    #$1A    
LF667: STA    $EE     
       LDY    #$07    
       SEC            
LF66C: LDA    $EE     
       SBC    LFC05,Y 
       CMP    #$02    
       BCC    LF679   
       DEY            
       BPL    LF66C   
       RTS            

LF679: LDA    $ED     
       CMP    #$50    
       BCS    LF689   
       SEC            
       SBC    LFBF5,Y 
       CMP    #$04    
       BCC    LF694   
       BCS    LF69E   
LF689: CLC            
       ADC    LFBF5,Y 
       SEC            
       SBC    #$9C    
       CMP    #$04    
       BCS    LF69E   
LF694: LDA    $CD     
       ORA    #$80    
       STA    $CD     
       LDA    #$01    
       STA    $E7     
LF69E: RTS            

LF69F: LDA    INTIM   
       BNE    LF69F   
       LDX    #$98    
       STA    WSYNC   
       STA    VBLANK  
       STX    COLUBK  
       STA    GRP0    
       STA    GRP1    
       STA    CXCLR   
       LDA    #$33    
       STA    VDELP0  
       STA    VDELP1  
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$04    
       STA    TIM64T  
       LDX    #$02    
LF6C3: TXA            
       ASL            
       ASL            
       TAY            
       LDA    $84,X   
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA.wy $0088,Y 
       LDA    $84,X   
       AND    #$F0    
       LSR            
       STA.wy $008A,Y 
       DEX            
       BPL    LF6C3   
       INX            
LF6DD: LDA    $92,X   
       BNE    LF6EB   
       LDA    #$50    
       STA    $92,X   
       DEX            
       DEX            
       CPX    #$F6    
       BNE    LF6DD   
LF6EB: LDA    INTIM   
       BNE    LF6EB   
       JSR    LF8C5   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    HMCLR   
       TAX            
       LDA    $80     
       JSR    LF8A7   
       LDX    #$06    
       LDA    $81     
       JSR    LF8A7   
       JSR    LF8B8   
       LDA    #$50    
       STA    $92     
       LDA    #$5A    
       STA    $8C     
       JSR    LF8C5   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       LDA    #$0B    
       STA    TIM64T  
       LDA    #$30    
       STA    NUSIZ1  
       LDX    #$02    
LF727: LDA    $AA,X   
       LDY    $A6,X   
       JSR    LF911   
       DEX            
       BPL    LF727   
       LDA    #$02    
       STA    ENAM1   
       LDA    #$00    
       STA    ENABL   
       LDX    #$04    
       LDA    $AD     
       LDY    $A9     
       JSR    LF911   
LF742: LDA    INTIM   
       BNE    LF742   
       LDY    #$08    
LF749: STA    WSYNC   
       LDA    #$00    
       STA    CTRLPF  
       LDA    LFF92,Y 
       STA    COLUBK  
       LDA    LFD04,Y 
       STA    PF0     
       LDA    LFD0D,Y 
       STA    PF1     
       LDA    LFD16,Y 
       STA    PF2     
       DEY            
       BPL    LF749   
       LDX    #$2C    
       LDA    #$00    
       STA    WSYNC   
       STA    HMOVE   
       STX    COLUBK  
       STA    PF0     
       STA    PF1     
       STA    PF2     
       LDA    #$88    
       STA    COLUPF  
       LDA    $CA     
       STA    REFP0   
       LDA    $CB     
       STA    REFP1   
       LDA    $BA     
       STA    NUSIZ0  
       LDA    $BB     
       ORA    #$01    
       STA    CTRLPF  
       STA    HMCLR   
       LDA    #$4A    
       STA    $EE     
       LDA    #$00    
       STA    $ED     
       TAX            
LF797: STA    WSYNC   
       STA    GRP1    
       LDY    $ED     
       STY    ENABL   
       LDY    $EE     
       LDA    LFD1F,Y 
       STA    PF0     
       LDA    LFD6A,Y 
       STA    PF1     
       LDA    LFDB5,Y 
       STA    PF2     
       INX            
       TXA            
       SEC            
       SBC    $9F     
       CMP    $B7     
       BCC    LF7BB   
       LDA    $D9     
LF7BB: STA    $ED     
       TXA            
       SEC            
       SBC    $A0     
       CMP    $B8     
       BCC    LF7CB   
       LDA    #$14    
       LDA    #$00    
       BEQ    LF7CE   
LF7CB: TAY            
       LDA    ($BC),Y 
LF7CE: LDY    $ED     
       STA    ENAM0   
       LDA    ($C4),Y 
       STA    GRP0    
       LDA    LFF9B,Y 
       STA    COLUP0  
       INX            
       TXA            
       SEC            
       SBC    $A1     
       CMP    $B9     
       BCC    LF7E8   
       LDA    #$00    
       BEQ    LF7EB   
LF7E8: TAY            
       LDA    ($BE),Y 
LF7EB: STA    $ED     
       TXA            
       SEC            
       SBC    $A2     
       CMP    $C0     
       BCC    LF7F9   
       LDA    #$00    
       BEQ    LF7FC   
LF7F9: TAY            
       LDA    ($C6),Y 
LF7FC: DEC    $EE     
       BPL    LF797   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$00    
       STA    ENAM0   
       STA    ENABL   
       STA    GRP0    
       STA    GRP1    
       STA    ENAM1   
       LDX    $EB     
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       STA    RESBL   
       STX    COLUBK  
       STA    COLUPF  
       STA    PF2     
       STA    COLUP0  
       LDA    #$50    
       STA    HMBL    
       LDA    #$02    
       STA    ENABL   
       LDA    #$30    
       STA    CTRLPF  
       STA    WSYNC   
       STA    HMOVE   
       STA    REFP0   
       STA    REFP1   
       BIT    $EC     
       BMI    LF84C   
       STA    WSYNC   
       LDY    #$05    
       LDX    #$00    
LF840: LDA    LF8A1,Y 
       STA    $88,X   
       INX            
       INX            
       DEY            
       BPL    LF840   
       BMI    LF866   
LF84C: LDA    #$50    
       STA    $8C     
       STA    $8E     
       LDA    $82     
       LDX    #$08    
       JSR    LF8A7   
       JSR    LF8B8   
       LDA    $83     
       LDX    #$00    
       JSR    LF8A7   
       JSR    LF8B8   
LF866: STA    HMCLR   
       STA    WSYNC   
       LDA    #$33    
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    VDELP0  
       STA    VDELP1  
       LDA    #$00    
       STA    COLUP0  
       STA    HMP0    
       LDA    #$10    
       STA    HMP1    
       NOP            
       NOP            
       STA    RESP0   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       JSR    LF8C5   
       LDA    #$00    
       STA    WSYNC   
       STA    VDELP0  
       STA    VDELP1  
       STA    GRP0    
       STA    GRP1    
       STA    HMCLR   
       LDA    #$25    
       STA    TIM64T  
       JMP    LF02E   
LF8A1: .byte $62,$6A,$72,$7A,$82,$8A
LF8A7: STA    $ED     
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA    $88,X   
       LDA    $ED     
       AND    #$F0    
       LSR            
       STA    $8A,X   
       RTS            

LF8B8: LDA    $8A,X   
       BEQ    LF8C0   
       NOP            
       NOP            
       BNE    LF8C4   
LF8C0: LDA    #$50    
       STA    $8A,X   
LF8C4: RTS            

LF8C5: LDA    #$07    
       STA    $ED     
LF8C9: LDY    $ED     
       LDA    ($88),Y 
       STA    $EE     
       LDA    ($92),Y 
       STA    WSYNC   
       STA    GRP0    
       LDA    ($90),Y 
       STA    GRP1    
       LDA    ($8E),Y 
       STA    GRP0    
       LDA    ($8C),Y 
       TAX            
       LDA    ($8A),Y 
       LDY    $EE     
       NOP            
       STX    GRP1    
       STA    GRP0    
       STY    GRP1    
       STY    GRP0    
       DEC    $ED     
       BPL    LF8C9   
       RTS            

LF8F2: CLC            
       ADC    #$2E    
       TAY            
       AND    #$0F    
       STA    $EE     
       TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       CLC            
       ADC    $EE     
       CMP    #$0F    
       BCC    LF90A   
       SBC    #$0F    
       INY            
LF90A: EOR    #$07    
       ASL            
       ASL            
       ASL            
       ASL            
       RTS            

LF911: STA    HMP0,X  
       STA    WSYNC   
LF915: DEY            
       BPL    LF915   
       STA    RESP0,X 
       RTS            

LF91B: SEC            
       LDA    $A3,X   
       SBC    $9F     
       SBC    #$0A    
       BPL    LF929   
       EOR    #$FF    
       CLC            
       ADC    $8501,Y 
       INC    $A538   
       TYA            
       SBC    $9C,X   
       BPL    LF937   
       EOR    #$FF    
       CLC            
       ADC    #$01    
LF937: CLC            
       ADC    $EE     
       RTS            

LF93B: STX    $ED     
       LDA    $9C,X   
       CMP    #$6E    
       BCC    LF947   
       LDY    #$0C    
       BNE    LF951   
LF947: CMP    #$32    
       BCC    LF94F   
       LDY    #$06    
       BNE    LF951   
LF94F: LDY    #$00    
LF951: LDX    #$00    
LF953: LDA    LF97D,Y 
       STA    $EE,X   
       INY            
       INX            
       CPX    #$06    
       BNE    LF953   
       LDX    $ED     
       LDY    #$10    
       LDA    $9C,X   
LF964: CMP    ($EE),Y 
       BEQ    LF96D   
LF968: DEY            
       BPL    LF964   
       SEC            
       RTS            

LF96D: LDA    $A3,X   
       CMP    ($F0),Y 
       BEQ    LF977   
       LDA    $9C,X   
       BNE    LF968   
LF977: LDA    ($F2),Y 
       STA    $ED     
       CLC            
       RTS            

LF97D: .byte $6B,$FE,$7C,$FE,$8D,$FE,$9E,$FE,$AF,$FE,$BB,$FE,$C7,$FE,$D8,$FE
       .byte $E8,$FE
LF98F: LDA    $A3,X   
       CMP    $9F     
       LDA    $ED     
       BCS    LF99C   
       AND    #$0D    
       JMP    LF99E   
LF99C: AND    #$0E    
LF99E: STA    $EE     
       LDA    $9C,X   
       CMP    $98     
       LDA    $EE     
       BCS    LF9AD   
       AND    #$07    
       JMP    LF9AF   
LF9AD: AND    #$0B    
LF9AF: STA    $EE     
       BIT    $96     
       BVC    LF9CE   
       AND    #$03    
       BNE    LF9C4   
LF9B9: LDA    $EE     
       BNE    LF9C4   
LF9BD: JSR    LF9D9   
       ORA    #$04    
       BNE    LF9CB   
LF9C4: LSR            
       TAY            
       LDA    #$84    
LF9C8: ORA    LF9D4,Y 
LF9CB: STA    $B4,X   
       RTS            

LF9CE: AND    #$0C    
       BEQ    LF9B9   
       BNE    LF9C4   
LF9D4: BRK            
       ORA    ($02,X) 
       BRK            
       .byte $03 ;.SLO
LF9D9: LDA    $B4,X   
       AND    #$03    
       TAY            
       BIT    $96     
       BMI    LF9E9   
LF9E2: LDA    LFA11,Y 
       AND    $ED     
       BNE    LFA0A   
LF9E9: LDA    LFA15,Y 
       AND    $ED     
       BEQ    LF9E2   
       CMP    #$0C    
       BNE    LF9FE   
       LDA    #$08    
       BIT    $97     
       BMI    LFA0A   
       LDA    #$04    
       BNE    LFA0A   
LF9FE: CMP    #$03    
       BNE    LFA0A   
       LDA    #$01    
       BIT    $97     
       BVC    LFA0A   
       LDA    #$02    
LFA0A: LSR            
       TAY            
       LDA    #$80    
       JMP    LF9C8   
LFA11: .byte $01,$02,$04,$08
LFA15: .byte $0C,$0C,$03,$03
LFA19: JSR    LF93B   
       BCS    LFA59   
       BIT    $87     
       BPL    LFA36   
       BIT    $ED     
       BPL    LFA36   
       LDA    #$03    
       STA    $E7     
       LDA    $EA     
       BNE    LFA34   
       LDA    #$07    
       STA    $EA     
       BNE    LFA51   
LFA34: DEC    $EA     
LFA36: LDA    $B4,X   
       AND    #$04    
       BEQ    LFA69   
       JSR    LF91B   
       CMP    #$18    
       BCC    LFA49   
       JSR    LF9BD   
       JMP    LFA59   
LFA49: BIT    $ED     
       BPL    LFA56   
       CMP    $DB     
       BCS    LFA56   
LFA51: LDA    #$20    
       STA    $B4,X   
       RTS            

LFA56: JSR    LF98F   
LFA59: LDA    $B4,X   
       AND    #$03    
       TAY            
       LDA    LFA6F,Y 
       STA    $DF     
       LDA    LFA73,Y 
       STA    $E0     
       RTS            

LFA69: JSR    LF9D9   
       JMP    LFA59   
LFA6F: .byte $00,$00,$FE,$02
LFA73: .byte $FE,$02,$00,$00
LFA77: LDA    $C1,X   
       CMP    #$12    
       BNE    LFA85   
       LDA    #$10    
       STA    $C1,X   
       LDA    #$08    
       BNE    LFA9D   
LFA85: SEC            
       SBC    #$04    
       BPL    LFA99   
       LDA    #$00    
       STA    $C1,X   
       LDA    $96     
       AND    #$03    
       STA    $D5,X   
       LDA    #$05    
       STA    $AF,X   
       RTS            

LFA99: STA    $C1,X   
       LDA    #$04    
LFA9D: STA    $E0     
       RTS            

LFAA0: LDA    $C1,X   
       CMP    #$0E    
       BNE    LFAE5   
       BIT    $87     
       BPL    LFAB8   
       LDA    $E9     
       BNE    LFAC3   
       LDA    #$02    
       STA    $E9     
       LDA    #$08    
       STA    $E7     
       BNE    LFABF   
LFAB8: JSR    LF91B   
       CMP    $DB     
       BCS    LFAC3   
LFABF: LDA    #$20    
       BNE    LFAD7   
LFAC3: LDA    $D5,X   
       BNE    LFADA   
       BIT    $87     
       BPL    LFACD   
       DEC    $E9     
LFACD: LDA    #$F6    
       STA    $E0     
       LDA    #$12    
       STA    $C1,X   
       LDA    $DC     
LFAD7: STA    $B4,X   
       RTS            

LFADA: LDY    #$42    
       CMP    #$02    
       BNE    LFAE2   
       LDY    #$43    
LFAE2: STY    $B4,X   
       RTS            

LFAE5: LDA    #$FC    
       STA    $E0     
       CLC            
       LDA    $C1,X   
       ADC    #$04    
       STA    $C1,X   
       CMP    #$0E    
       BNE    LFAF8   
       LDA    #$02    
       STA    $D5,X   
LFAF8: RTS            

LFAF9: LDA    $83     
       AND    #$F0    
       LSR            
       LSR            
       LSR            
       LSR            
       CMP    #$07    
       BCC    LFB07   
       LDA    #$07    
LFB07: TAY            
       LDA    LFB65,Y 
       STA    $DB     
       LDA    LFB6D,Y 
       STA    $DA     
       LDA    $AF,X   
       CMP    #$05    
       BNE    LFB45   
       LDA    $D5,X   
       BNE    LFB45   
       LDA    $97     
       CMP    $DA     
       BCS    LFB26   
       JSR    LFB75   
       RTS            

LFB26: LDA    #$02    
       STA    $AF,X   
       CLC            
       LDA    $9F     
       ADC    #$0D    
       STA    $A3,X   
       BIT    $97     
       BMI    LFB3D   
       LDA    #$00    
       STA    $9C,X   
       LDA    #$83    
       BNE    LFB43   
LFB3D: LDA    #$9C    
       STA    $9C,X   
       LDA    #$02    
LFB43: STA    $B4,X   
LFB45: BIT    $87     
       BMI    LFB5C   
       LDY    #$02    
LFB4B: LDA.wy $00AF,Y 
       CMP    #$02    
       BCS    LFB59   
       LDA.wy $00B4,Y 
       AND    #$04    
       BEQ    LFB60   
LFB59: DEY            
       BPL    LFB4B   
LFB5C: LDA    #$82    
       BNE    LFB62   
LFB60: LDA    #$86    
LFB62: STA    $DC     
       RTS            

LFB65: .byte $00,$0B,$0B,$0D,$0D,$0E,$0E,$0F
LFB6D: .byte $F0,$E0,$D0,$C0,$B0,$A0,$90,$80
LFB75: LDA    #$04    
       STA    $AF,X   
       LDA    #$04    
       STA    $D5,X   
       LDA    $96     
       AND    #$07    
       TAY            
       LDA    LFBFD,Y 
       STA    $A3,X   
       LDA    $96     
       AND    #$0F    
       CMP    #$08    
       LDA    LFBF5,Y 
       BCC    LFB97   
       LDA    #$9C    
       SBC    LFBF5,Y 
LFB97: SEC            
       SBC    #$02    
       STA    $9C,X   
       RTS            

LFB9D: .byte $14,$14,$14,$14,$14,$14,$14,$14,$1C,$1C,$1C,$1C,$18,$18,$18,$18
       .byte $18,$18,$1A,$1A,$1A,$17,$15,$12,$12,$12,$12,$12,$12,$00,$00,$1C
       .byte $1C,$1C,$1C,$04,$04,$9C,$9C,$5C,$5C,$3C,$3C,$1C,$1C,$1C,$1C,$18
       .byte $18,$18,$18,$18,$18,$38,$38,$18,$18,$38,$38,$00,$00,$1C,$1C,$1C
       .byte $1C,$04,$04,$9C,$9C,$5E,$5E,$3D,$3D,$1C,$1C,$1C,$1C,$18,$18,$28
       .byte $28,$1E,$1E,$0A,$0A,$18,$18,$00
LFBF5: .byte $18,$10,$1C,$18,$34,$34,$40,$3C
LFBFD: .byte $1E,$3E,$5C,$7C,$2E,$2E,$4C,$6E
LFC05: .byte $20,$40,$5E,$7E,$30,$30,$4E,$70,$00,$00,$1C,$1C,$1C,$1C,$04,$04
       .byte $9C,$9C,$9C,$9C,$7C,$7C,$1C,$1C,$1C,$1C,$24,$24,$42,$42,$41,$41
       .byte $81,$81,$00,$00,$00,$38,$38,$38,$38,$08,$08,$BC,$BC,$FA,$FA,$39
       .byte $39,$38,$38,$39,$39,$4A,$4A,$84,$84,$00,$00,$00,$1C,$1C,$1C,$1C
       .byte $04,$04,$1C,$1C,$1C,$1C,$FC,$FC,$1C,$1C,$1C,$1C,$18,$18,$18,$18
       .byte $18,$18,$38,$38,$18,$18,$38,$38,$00,$00,$1C,$1C,$1C,$1C,$04,$04
       .byte $1C,$1C,$1E,$1E,$FD,$FD,$1C,$1C,$1C,$1C,$18,$18,$28,$28,$1E,$1E
       .byte $0A,$0A,$18,$18,$00,$00,$1C,$1C,$1C,$1C,$04,$04,$1C,$1C,$1E,$1E
       .byte $FD,$FD,$1E,$1E,$1C,$1C,$7C,$7C,$44,$44,$47,$47,$C1,$C1,$00,$00
       .byte $1C,$1C,$1C,$1C,$04,$04,$1C,$1C,$1C,$1C,$FC,$FC,$1C,$1C,$1C,$1C
       .byte $24,$24,$42,$42,$41,$41,$81,$81,$00,$00,$00,$38,$38,$38,$38,$08
       .byte $08,$3C,$3C,$FA,$FA,$39,$39,$38,$38,$39,$39,$4A,$4A,$84,$84,$10
       .byte $10,$3C,$3C,$78,$78,$10,$10,$38,$38,$1C,$1C,$3C,$3C,$72,$72,$04
       .byte $04,$10,$10,$3C,$3C,$78,$78,$50,$50,$38,$38,$1C,$1C,$7E,$7E,$39
       .byte $39,$00,$00,$40,$40,$38,$38,$10,$10,$E1,$E1,$39,$39,$FF,$FF,$80
       .byte $80,$38,$38,$10,$10,$E2,$E2,$39,$39,$FF,$FF,$3C,$3C,$3C,$3C
LFD04: .byte $F0,$80,$00,$00,$00,$00,$00,$00,$00
LFD0D: .byte $FF,$FF,$7F,$1F,$0F,$07,$03,$01,$00
LFD16: .byte $FF,$7F,$9F,$0F,$07,$03,$01,$00,$00
LFD1F: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$80,$C0,$40,$80,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
LFD6A: .byte $00,$00,$00,$00,$00,$00,$00,$00,$20,$70,$D8,$88,$50,$20,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$10,$38,$6C,$44,$28,$10,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$80,$C0,$60,$20,$40,$80,$00,$00,$00
       .byte $00,$01,$01,$00,$00,$00,$00,$20,$70,$D8,$88,$50,$20,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
LFDB5: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$08
       .byte $1C,$36,$22,$14,$08,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $10,$38,$6C,$44,$28,$10,$00,$00,$00,$00,$00,$00,$00,$00,$00,$02
       .byte $07,$0D,$08,$05,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$02,$02,$02,$02,$02
       .byte $02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02
LFE12: .byte $00,$FE,$FC,$FD,$09,$08,$09,$0B
LFE1A: .byte $FF,$00,$0B,$0C,$FF,$00,$0B,$0C,$10,$0A,$08,$04,$04,$10,$14,$10
       .byte $00,$00,$1C,$1C,$1C,$1C,$04,$04,$9C,$9C,$5E,$5E,$3D,$3D,$1E,$1E
       .byte $1C,$1C,$7C,$7C,$44,$44,$47,$47,$C1,$C1,$00
LFE45: .byte $00,$04,$08,$10,$10,$00
LFE4B: .byte $90,$92,$0A,$09,$14,$16,$0A,$09,$24,$26,$40,$3F,$70,$72,$40,$3F
       .byte $4E,$50,$20,$1F,$4E,$50,$80,$7F,$8C,$8E,$66,$65,$24,$26,$66,$65
       .byte $08,$08,$08,$08,$0E,$16,$16,$1A,$24,$24,$24,$24,$24,$2A,$2A,$2A
       .byte $2A,$0A,$2A,$48,$68,$2A,$0A,$68,$48,$0A,$1A,$2A,$38,$48,$38,$5A
       .byte $68,$7E,$0A,$09,$0A,$09,$8C,$8C,$8C,$8C,$0E,$0B,$07,$0B,$05,$0E
       .byte $0B,$07,$09,$32,$3A,$3E,$4C,$4C,$4C,$4C,$4C,$5A,$5E,$66,$66,$00
       .byte $00,$00,$00,$00,$1A,$5A,$38,$0A,$1A,$38,$5A,$7E,$38,$5A,$1A,$0A
       .byte $8C,$8C,$8C,$0E,$0F,$0F,$0F,$0D,$8C,$8C,$85,$0E,$6E,$6E,$6E,$6E
       .byte $6E,$74,$74,$74,$7E,$82,$82,$8A,$98,$98,$98,$98,$00,$38,$48,$5A
       .byte $68,$7E,$0A,$2A,$38,$48,$0A,$68,$2A,$0A,$2A,$48,$68,$0E,$0B,$07
       .byte $0B,$05,$0E,$0B,$05,$8C,$8C,$8C,$8C,$06,$07,$07,$05,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$3C,$66,$66,$66,$66,$66,$3C,$00,$7E,$18
       .byte $18,$18,$38,$18,$08,$00,$7E,$62,$60,$3C,$06,$46,$3C,$00,$3C,$46
       .byte $06,$1C,$06,$46,$3C,$00,$0C,$0C,$7E,$4C,$2C,$1C,$0C,$00,$3C,$46
       .byte $06,$7C,$60,$60,$7E,$00,$3C,$66,$66,$7C,$60,$62,$3C,$00,$30,$30
       .byte $18,$0C,$06,$42,$7E,$00,$3C,$66,$66,$3C,$66,$66,$3C,$00,$3C,$46
       .byte $06,$3E,$66,$66,$3C,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$10,$10,$00,$10,$10,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00
LFF92: .byte $2E,$2C,$2A,$28,$68,$68,$98,$88,$A8
LFF9B: .byte $38,$38,$88,$88,$4C,$4C,$4C,$4C,$38,$38,$38,$38,$38,$38,$38,$38
       .byte $06,$06,$06,$06,$06,$06,$06,$06,$06,$06,$06,$06,$06,$06
LFFB9: .byte $BA,$FB,$D8,$FB,$2A,$FE,$0D,$FC,$27,$FC,$28,$FC,$3F,$FC,$5D,$FC
       .byte $79,$FC,$93,$FC,$AD,$FC,$AE,$FC
LFFD1: .byte $C4,$FC,$D6,$FC,$E8,$FC,$F4,$FC,$00,$FD,$F5,$FB,$FD,$FB
LFFDF: .byte $1E,$1C,$1A,$1A,$01,$16,$1E,$1C,$1A,$1A,$01,$16
LFFEB: .byte $3A,$1C,$1A,$31,$17,$16,$FF,$E1,$C5,$AB,$91,$90
LFFF7: STA    WSYNC   
       JMP    LF151   
LFFFC: .byte $00,$F0,$00,$F0
