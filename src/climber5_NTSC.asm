; Disassembly of roms/climber5_NTSC.bin
; Disassembled Tue Oct  6 15:24:50 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/climber5_NTSC.bin
;

      processor 6502
VSYNC   =  $00
VBLANK  =  $01
WSYNC   =  $02
RSYNC   =  $03
NUSIZ0  =  $04
NUSIZ1  =  $05
COLUP0  =  $06
COLUP1  =  $07
COLUPF  =  $08
COLUBK  =  $09
CTRLPF  =  $0A
REFP0   =  $0B
REFP1   =  $0C
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
ENABL   =  $1F
HMP0    =  $20
HMP1    =  $21
HMM0    =  $22
VDELP0  =  $25
VDELP1  =  $26
VDELBL  =  $27
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296
LF04A   =   $F04A
LF091   =   $F091
LF0F0   =   $F0F0
LF131   =   $F131
LF1BF   =   $F1BF
LF1DA   =   $F1DA
LF1E0   =   $F1E0
LF301   =   $F301
LF356   =   $F356
LF371   =   $F371
LF400   =   $F400
LF652   =   $F652
LFA86   =   $FA86
LFCE6   =   $FCE6

       ORG $F000
LF000: PHA            
       PLA            
       LDA    #$00    
       BEQ    LF02A   
       NOP            
       NOP            
       BCC    LF03B   
LF00A: LDX    $83     
LF00C: LDA    #$11    
       .byte $C7 ;.DCP
       .byte $CF ;.DCP
       LDA    #$00    
LF012: STA    ENABL   
       LDA    $E6     
       STA    PF1     
       LDA    #$99    
       STA    COLUPF  
       STA    HMOVE   
       STA    ENAM0   
       STX    COLUBK  
       BCC    LF000   
       LDA    ($BA),Y 
       STA    COLUP1  
       LDA    ($B8),Y 
LF02A: STA    GRP1    
       LDA    $E7     
       STA    PF2     
       DEY            
LF031: LDA    #$08    
       .byte $C7 ;.DCP
       BNE    LFFC6   
       .byte $CF ;.DCP
       LDA    ($BC),Y 
       STA    GRP0    
LF03B: LDA    #$11    
       .byte $C7 ;.DCP
       .byte $CF ;.DCP
       LDX    $E4     
       LDA    $D0,X   
       STA    $E9     
       ORA    $CF,X   
       STA    $E6     
       STA    HMOVE   
       BCS    LF054   
       PHA            
       PLA            
       NOP            
LF050: LDA    #$00    
       BEQ    LF05A   
LF054: LDA    ($BA),Y 
       STA    COLUP1  
       LDA    ($B8),Y 
LF05A: STA    GRP1    
       DEY            
       LDA    #$08    
       .byte $C7 ;.DCP
       BNE    LF012   
LF062: .byte $03 ;.SLO
       LDA    #$00    
       BIT    $BCB1   
       STA    GRP0    
       LDA    $85,X   
       TAX            
       LDA    #$11    
       .byte $C7 ;.DCP
       .byte $CF ;.DCP
       BCS    LF07B   
       NOP            
       NOP            
       NOP            
       LDA    #$00    
       PHA            
       BEQ    LF080   
LF07B: LDA    ($BA),Y 
       PHA            
       LDA    ($B8),Y 
LF080: DEY            
       STA    GRP1    
       STA    HMOVE   
       PLA            
       STA    COLUP1  
       TXA            
       CMP    #$4B    
       BCS    LF0A6   
       SEC            
LF08E: SBC    #$0F    
       BCS    LF08E   
       STA    RESM0   
       TAX            
       LDA    #$08    
       .byte $C7 ;.DCP
       BNE    LF04A   
       .byte $03 ;.SLO
       LDA    #$00    
       BIT    $BCB1   
       STA    GRP0    
LF0A2: LDA    #$11    
       BNE    LF0BF   
LF0A6: SBC    #$4B    
LF0A8: SBC    #$0F    
       BCS    LF0A8   
       TAX            
       LDA    #$08    
       .byte $C7 ;.DCP
       BNE    LF062   
       .byte $03 ;.SLO
       LDA    #$00    
       BIT    $BCB1   
       STA    GRP0    
       LDA    #$11    
       NOP            
       STA    RESM0   
LF0BF: STA    WSYNC   
       STA    HMOVE   
LF0C3: .byte $C7 ;.DCP
       .byte $CF ;.DCP
       BCS    LF0CE   
       PHA            
       PLA            
       NOP            
       LDA    #$00    
       BEQ    LF0D4   
LF0CE: LDA    ($BA),Y 
       STA    COLUP1  
       LDA    ($B8),Y 
LF0D4: STA    GRP1    
       LDA    LF400,X 
       STA    HMM0    
       DEY            
       LDA    #$08    
       .byte $C7 ;.DCP
       BNE    LF091   
       .byte $03 ;.SLO
       LDA    #$00    
       BIT    $BCB1   
       STA    GRP0    
       LDA    #$11    
       .byte $C7 ;.DCP
       .byte $CF ;.DCP
       LDX    $E4     
       LDA    #$00    
       STA    PF1     
       LDA    $91,X   
       STA    ENAM0   
       STA    HMOVE   
       LDA    $91     
       STA    COLUBK  
       BCC    LF151   
       LDA    ($BA),Y 
       STA    COLUP1  
       LDA    ($B8),Y 
LF105: STA    GRP1    
       LDA    #$00    
       STA    PF2     
       STA    HMCLR   
       DEY            
       LDA    #$08    
       .byte $C7 ;.DCP
       BNE    LF0C3   
       .byte $03 ;.SLO
       LDA    #$00    
       BIT    $BCB1   
       STA    GRP0    
       LDA    #$11    
       .byte $C7 ;.DCP
       .byte $CF ;.DCP
       LDA    $D7,X   
       STA    $EA     
       ORA    $D6,X   
       STA    $E7     
       STA    HMOVE   
       BCS    LF132   
       PHA            
       PLA            
       NOP            
       LDA    #$00    
       BEQ    LF138   
LF132: LDA    ($BA),Y 
       STA    COLUP1  
       LDA    ($B8),Y 
LF138: STA    GRP1    
       DEY            
       LDA    #$08    
       .byte $C7 ;.DCP
       BNE    LF0F0   
       .byte $03 ;.SLO
       LDA    #$00    
       BIT    $BCB1   
       STA    GRP0    
       NOP            
       DEC    $E4     
       LDA    #$00    
       LDX    #$12    
       BNE    LF190   
LF151: NOP            
       NOP            
       NOP            
       LDA    #$00    
       BEQ    LF105   
LF158: PHA            
       PLA            
       LDA    #$00    
       BEQ    LF175   
LF15E: LDA    #$11    
LF160: .byte $C7 ;.DCP
       .byte $CF ;.DCP
       LDA    $E9     
       STA    PF1     
       LDA    #$99    
       STA.w  $0008   
       STA    HMOVE   
       BCC    LF158   
       LDA    ($BA),Y 
       STA    COLUP1  
       LDA    ($B8),Y 
LF175: STA    GRP1    
       LDA    $EA     
       STA    PF2     
       DEY            
       LDA    #$08    
       .byte $C7 ;.DCP
       BNE    LF131   
       .byte $03 ;.SLO
       LDA    #$00    
       BIT    $BCB1   
       STA.w  $001B   
       DEX            
       TXA            
       AND    #$03    
       BNE    LF15E   
LF190: STA    PF2     
       LDA    #$11    
       .byte $C7 ;.DCP
       .byte $CF ;.DCP
       LDA    #$00    
       STA    PF1     
       LDA    #$0F    
       STA    COLUPF  
       STA    HMOVE   
       BCC    LF1C5   
       LDA    ($BA),Y 
       STA    COLUP1  
       LDA    ($B8),Y 
LF1A8: STA    GRP1    
       DEY            
       LDA    #$08    
       .byte $C7 ;.DCP
       BNE    LF160   
       .byte $03 ;.SLO
       LDA    #$00    
       BIT    $BCB1   
       STA    GRP0    
       LDA    #$02    
       CPY    $AF     
       BNE    LF1BF   
       BIT    $4A     
       STA    ENABL   
       DEX            
       BNE    LF216   
LF1C5: PHA            
       PLA            
       LDA    #$00    
       BEQ    LF1A8   
LF1CB: LDA    #$02    
       STA    $82     
       LDA    #$02    
       LDX    #$0C    
LF1D3: CPX    #$05    
       BCS    LF1DA   
       STY    $8D,X   
       BIT    $8D95   
       DEX            
       BPL    LF1D3   
       STY    $AE     
       INY            
       STY    $B1     
       LDA    LFD60   
       STA    $83     
       JSR    LFC37   
       INX            
       STX    $AA     
       LDA    SWCHB   
       AND    #$08    
       STA    $C0     
LF1F6: LDY    #$00    
       STY    $B5     
       STY    AUDV0   
       STY    AUDV1   
       RTS            

LF1FF: LDA    #$1E    
       STA    $AA     
       LDA    #$7E    
       STA    $85     
       RTS            

LF208: STA    WSYNC   
       STA    HMOVE   
       DEX            
       BNE    LF208   
       RTS            

LF210: PHA            
       PLA            
       LDA    #$00    
       BEQ    LF226   
LF216: LDA    #$11    
       .byte $C7 ;.DCP
       .byte $CF ;.DCP
       STA    WSYNC   
       STA    HMOVE   
       BCC    LF210   
       LDA    ($BA),Y 
       STA    COLUP1  
       LDA    ($B8),Y 
LF226: STA    GRP1    
       DEY            
       BEQ    LF246   
       LDA    #$08    
       .byte $C7 ;.DCP
       BNE    LF1E0   
       .byte $03 ;.SLO
       LDA    #$00    
       BIT    $BCB1   
       STA    GRP0    
       DEX            
       BNE    LF23E   
       JMP    LF00A   
LF23E: TXA            
       AND    #$03    
       BNE    LF216   
       JMP    LF15E   
LF246: LDA    $83     
       STY    GRP0    
       STY    ENABL   
       STA    WSYNC   
       STA    HMOVE   
       STA    COLUBK  
       STY    PF1     
       STY    GRP1    
       STY    GRP0    
       STY    ENAM0   
       STY    PF2     
       LDA    #$13    
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    VDELP1  
       STA    HMP0    
       ASL            
       STA    RESP0   
       STA    RESP1   
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       STX    COLUP0  
       STX    COLUP1  
       STX    REFP0   
       STX    REFP1   
       PHA            
       PLA            
       NOP            
       STA    HMCLR   
       JSR    LF2FE   
       LDX    #$06    
       LDA    #$5D    
       SEC            
LF286: STA    $C3,X   
       SBC    #$05    
       DEX            
       DEX            
       BPL    LF286   
       LDA    $B1     
       AND    #$0F    
       TAY            
       STA    WSYNC   
       STA    HMOVE   
       LDA    LFD72,Y 
       STA    $CD     
       LDA    $B1     
       LSR            
       LSR            
       LSR            
       LSR            
       LDX    #$6A    
       TAY            
       BEQ    LF2AA   
       LDX    LFD72,Y 
LF2AA: STX    $CB     
       JSR    LF2FE   
       LDX    $82     
       BMI    LF2BA   
       DEX            
       BPL    LF2D9   
       LDX    #$11    
       BNE    LF2F8   
LF2BA: LDX    #$0B    
LF2BC: LDY    #$03    
       STA    WSYNC   
       STA    HMOVE   
LF2C2: LDA    LF427,X 
       STA    $C3,X   
       DEX            
       DEY            
       BPL    LF2C2   
       TXA            
       BPL    LF2BC   
       STA    WSYNC   
       STA    HMOVE   
       JSR    LF2FE   
       LDX    #$07    
       BNE    LF2F8   
LF2D9: LDA    #$08    
       STA    RESP0   
       STA    REFP0   
       LDA    LFB77,X 
       STA    NUSIZ0  
       STY    VDELP0  
       LDY    #$0A    
LF2E8: STA    WSYNC   
       STA    HMOVE   
       LDA    LFDA9,Y 
       STA    GRP0    
       DEY            
       BNE    LF2E8   
       STY    GRP0    
       LDX    #$07    
LF2F8: JSR    LF208   
       JMP    LF9FF   
LF2FE: LDY    #$04    
       BIT    $E6A4   
LF303: LDA    ($CB),Y 
       TAX            
       LDA    ($CD),Y 
       STA    WSYNC   
       STA    HMOVE   
       STY    $E6     
       STA    $B3     
       LDA    ($C3),Y 
       STA    GRP0    
       LDA    ($C5),Y 
       STA    GRP1    
       LDA    ($C7),Y 
       STA    GRP0    
       LDA    ($C9),Y 
       LDY    $B3     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       LDY    $E6     
       DEY            
       BPL    LF303   
       INY            
       STY    GRP0    
       STY    GRP1    
       STY    GRP0    
       STA    WSYNC   
       STA    HMOVE   
       RTS            

LF339: LDA    $B1     
       CMP    #$06    
       BCC    LF382   
       BIT    VSYNC   
       BVC    LF359   
       LDX    #$07    
       LDA    #$A8    
       SEC            
LF348: SBC    #$18    
       DEX            
       CMP    $AD     
       BCS    LF348   
       LDA    #$80    
       LDY    $99,X   
       BPL    LF356   
       BIT    $4A     
       STA    $E3     
LF359: LDY    $B0     
       LDA    $AB     
       SEC            
       ADC    LF401,Y 
       BCC    LF382   
       LDX    $A4     
       BIT    $E3     
       BMI    LF371   
       BVC    LF382   
       CPX    #$91    
       BCS    LF376   
       INX            
       BIT    $04E0   
       BCC    LF376   
       DEX            
LF376: STX    $A4     
       LDA    $B1     
       CMP    #$11    
       BCS    LF382   
       LDA    #$00    
       STA    $E3     
LF382: RTS            

LF383: LDA    #$A6    
       STA    AUDV1   
       LDA    #$0C    
       STA    AUDC1   
       STX    AUDF1   
       DEC    $B6     
       RTS            

LF390: .byte $2B,$3D
LF392: .byte $12,$2A,$42,$5A,$72,$8A,$A2,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $78,$DF,$DF,$DF,$DF,$DF,$DF,$DF,$DF,$3C,$3C,$3C,$3C,$3C,$3C,$DF
       .byte $DF,$DF,$78,$DF,$DF,$DF,$DF,$DF,$DF,$DF,$DF,$DF,$DF,$DF,$3C,$3C
       .byte $DF,$DF,$DF,$DF,$DF,$DF,$3C,$3C,$3C,$3C,$3C,$3C,$DF,$DF,$DF,$0F
       .byte $0F,$0F,$FE,$BE,$32,$3A,$F9,$3F,$1C,$3E,$7F,$7F,$5F,$3E,$FE,$3E
       .byte $1C,$14,$42,$28,$FE,$BE,$32,$3A,$F9,$3F,$1C,$3E,$7F,$7F,$5F,$3E
       .byte $FE,$3E,$1C,$28,$42,$14
LF3F8: LDA    $80     
       LSR            
       BCC    LF3FF   
       EOR    #$B2    
LF3FF: STA    $80     
LF401: RTS            

LF402: .byte $32,$3F,$54,$7F
LF406: .byte $F9,$0B,$1D,$0B
LF40A: .byte $07,$0B,$1F,$07,$0E,$00,$FE,$20,$FE,$40,$FE,$60,$FE,$7F,$FE,$9F
       .byte $FE,$B0,$FB,$5F,$FF,$66,$FF,$74,$FF,$7C,$FF,$6D,$FF
LF427: .byte $84,$FF,$89,$FF,$8E,$FF,$93,$FF,$98,$FF,$9D,$FF
LF433: .byte $80,$40,$20,$10,$08,$04,$02,$01,$BF,$FE,$CE,$FE,$00,$FF,$0C,$FF
       .byte $16,$FF,$22,$FF,$6A,$FB,$DD,$FE,$E4,$FE,$EB,$FE,$F2,$FE,$6A,$FB
       .byte $2F,$FF,$3B,$FF,$47,$FF,$53,$FF,$6A,$FB,$C0,$FF,$C5,$FF,$CA,$FF
       .byte $CF,$FF,$6A,$FB,$A2,$FF,$A7,$FF,$AC,$FF,$B1,$FF,$B6,$FF,$BB,$FF
       .byte $D4,$FF,$D9,$FF,$DE,$FF,$E3,$FF,$E8,$FF,$6A,$FB
LF47F: .byte $12,$09,$3F,$1B,$36,$24,$2D
LF486: .byte $2F,$41
LF488: SED            
       BNE    LF48E   
LF48B: INX            
       SBC    #$05    
LF48E: CMP    #$06    
       BCS    LF48B   
       CLD            
       RTS            

LF494: LDX    #$06    
LF496: LDA    #$02    
       STA    $92,X   
       DEX            
       BPL    LF496   
       RTS            

LF49E: .byte $01,$03,$05,$07,$09,$11,$13,$15,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$3C,$7E,$E7,$FF,$DB
LF4B5: .byte $5A,$FF,$99,$66,$00,$1E,$7F,$BF,$BF,$BF,$BF,$BF,$7F,$00,$3C,$42
       .byte $A5,$DB,$A5,$99,$42,$3C,$00,$18,$18,$18,$98,$BD,$BE,$BC,$98,$00
       .byte $00,$00,$FF,$FF,$FF,$FF,$FF,$FF,$00,$FF,$C3,$DF,$DF,$FF,$42,$42
       .byte $3C,$00,$18,$DB,$E7,$66,$18,$66,$E7,$DB,$24,$70,$60,$50,$40,$30
       .byte $20,$10,$00,$F0,$E0,$D0,$C0,$B0,$A0,$90,$80

START:
       CLD            
       LDY    INTIM   
       LDX    #$00    
       TXA            
LF507: DEX            
       TXS            
       PHA            
       BNE    LF507   
       LDA    #$02    
       STA    $81     
       STY    $80     
       LDX    #$11    
       STX    CTRLPF  
       LDX    #$80    
       STX    $8D     
       LDA    #$F3    
       STA    $BB     
LF51E: LDY    #$00    
       LDX    SWCHB   
       LDA    $8D     
       CMP    #$02    
       BEQ    LF540   
       TXA            
       AND    #$08    
       STA    $C1     
       CMP    $C2     
       BEQ    LF540   
       CMP    $C0     
       BNE    LF540   
       BIT    $85     
       BMI    LF572   
       LDA    $8D     
       EOR    #$40    
       STA    $8D     
LF540: TXA            
       LSR            
       BCC    LF5B4   
       LSR            
       BCC    LF55C   
       BIT    $8D     
       BPL    LF557   
       LDA    SWCHA   
       ASL            
       ASL            
       STA    $A0     
       BPL    LF55C   
       ASL            
       BPL    LF55C   
LF557: STY    $90     
       JMP    LF592   
LF55C: BIT    $90     
       BPL    LF566   
       LDA    $AA     
       AND    #$3F    
       BNE    LF592   
LF566: STY    $AA     
       DEY            
       STY    $90     
       JSR    LF1F6   
       STY    $B1     
       BIT    $85     
LF572: BMI    LF5E1   
       BIT    $8D     
       BMI    LF57E   
       LDA    #$80    
       STA    $8D     
       BMI    LF592   
LF57E: LDX    $81     
       BIT    $A0     
       BVC    LF589   
       DEX            
       BPL    LF590   
       LDX    #$01    
LF589: INX            
       CPX    #$03    
       BNE    LF590   
       LDX    #$00    
LF590: STX    $81     
LF592: LDA    $8D     
       CMP    #$02    
       BEQ    LF5EB   
       LDA    $AA     
       AND    #$3F    
       BEQ    LF5DA   
       LDA    $A9     
       AND    #$C0    
       BNE    LF5D8   
       LDA    REFP1   
       BMI    LF5D8   
       CMP    $B4     
       BEQ    LF5DA   
       STA    $B4     
       BIT    $8D     
       BVS    LF5E1   
       BPL    LF5BA   
LF5B4: LDA    #$01    
       STA    $8D     
       BPL    LF5E1   
LF5BA: LDA    $81     
       LSR            
       BNE    LF5D8   
       LDA    #$0C    
       STA    $B7     
       LDA    #$05    
       JSR    LFBF1   
       LDX    #$06    
LF5CA: LDA    $99,X   
       EOR    #$FF    
       CLC            
       ADC    #$01    
       STA    $99,X   
       DEX            
       BPL    LF5CA   
       BMI    LF5E1   
LF5D8: STY    $B4     
LF5DA: LDA    SWCHA   
       CMP    #$FF    
       BEQ    LF5EB   
LF5E1: BIT    $8D     
       BPL    LF5E9   
       LDA    $B1     
       BNE    LF5EB   
LF5E9: STY    $85     
LF5EB: LDA    $C1     
       STA    $C2     
       LDA    $8D     
       CMP    #$01    
       BNE    LF5F8   
       JSR    LF1CB   
LF5F8: LDY    INTIM   
       BNE    LF5F8   
       LDX    #$26    
       LDA    #$02    
       STA    WSYNC   
       STA    VSYNC   
       INC    $AA     
       BNE    LF60F   
       BIT    $85     
       BMI    LF60F   
       INC    $85     
LF60F: LSR            
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    VSYNC   
       STX    TIM64T  
       LDA    $8D     
       CMP    #$02    
       BNE    LF62A   
       LDA    $85     
       BPL    LF679   
       STA    $8D     
       JSR    LF1FF   
LF62A: BIT    $8D     
       BPL    LF671   
       LDX    #$05    
       JSR    LF3F8   
       STA    WSYNC   
LF635: DEX            
       BPL    LF635   
       LDA    #$13    
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    RESP0   
       STA    RESP1   
       STA    VDELP0  
       STA    VDELP1  
       STA    HMP0    
       ASL            
       STA    HMP1    
       STA    REFP0   
       STA    REFP1   
       STA    WSYNC   
       STA    HMOVE   
       LDA    $B1     
       BEQ    LF664   
       BIT    $85     
       BPL    LF666   
       LDA    #$02    
       STA    $8D     
       JSR    LF1FF   
       BPL    LF679   
LF664: STA    $85     
LF666: LDA    #$24    
       STA    COLUPF  
       LDA    #$98    
       STA    COLUBK  
       JMP    LF94C   
LF671: BVC    LF67C   
       JSR    LF1F6   
LF676: DEY            
       STY    $A0     
LF679: JMP    LF7D1   
LF67C: STY    $85     
       BIT    $A9     
       BVS    LF676   
       LDY    $B0     
       LDA    $AB     
       CLC            
       SBC    LF401,Y 
       STA    $AB     
       BCS    LF6FD   
       LDX    #$06    
LF690: LDA    $81     
       LSR            
       BNE    LF6BB   
       DEC    $99,X   
       BMI    LF6AA   
       LDA    #$0F    
       JSR    LFC1C   
       CMP    #$95    
       BCC    LF6A6   
LF6A2: LDA    #$02    
LF6A4: STA    $86,X   
LF6A6: INC    $86,X   
       BNE    LF6FA   
LF6AA: LDA    #$8E    
       JSR    LFC1C   
       CMP    #$03    
       BCS    LF6B7   
       LDA    #$95    
       STA    $86,X   
LF6B7: DEC    $86,X   
       BNE    LF6FA   
LF6BB: LDY    $86,X   
       LDA    $99,X   
       BEQ    LF6C5   
       DEC    $99,X   
       BPL    LF6FA   
LF6C5: CPY    #$95    
       BCC    LF6A6   
       JSR    LF3F8   
       AND    #$0F    
       STA    $99,X   
       LDY    $98,X   
       STY    $B3     
       SEC            
       BNE    LF6DF   
       LDA    $85,X   
       SBC    #$03    
       STA    $B3     
       LDA    $99,X   
LF6DF: SBC    $B3     
       BCS    LF6E7   
       EOR    #$FF    
       ADC    #$01    
LF6E7: CMP    #$1B    
       BCS    LF6A2   
       LDA    #$1B    
       CMP    $B3     
       BCS    LF6F3   
       LDA    #$E5    
LF6F3: CLC            
       ADC    $B3     
       STA    $99,X   
       BPL    LF6A2   
LF6FA: DEX            
       BPL    LF690   
LF6FD: LDA    $AA     
       AND    #$7F    
       BNE    LF70A   
       LDA    #$01    
       JSR    LFBF1   
       DEC    $A3     
LF70A: LDX    #$00    
       LDA    $A0     
       CMP    #$FF    
       BEQ    LF71D   
       LDA    $A7     
       AND    #$03    
       BNE    LF71D   
       LDA    $BF     
       BNE    LF71D   
       INX            
LF71D: STX    $BF     
       LDY    $B1     
       INY            
       CPY    #$05    
       BCC    LF728   
       LDY    #$03    
LF728: LDA    $AC     
       CLC            
       SBC    LF401,Y 
       STA    $AC     
       BCS    LF79B   
       INC    $A7     
       BIT    $A9     
       BPL    LF752   
       LDA    $A0     
       AND    #$20    
       BNE    LF740   
       DEC    $A6     
LF740: LDA    #$F3    
       STA    $B9     
       LDA    $A7     
       AND    #$01    
       TAX            
       LDA    LF390,X 
       STA    $DF     
       LDY    #$19    
       BNE    LF7B5   
LF752: LDA    $82     
       BPL    LF758   
       STA    $A0     
LF758: LDA    SWCHA   
       ORA    $A0     
       EOR    #$FF    
       BNE    LF763   
       STA    $BF     
LF763: LDX    $A5     
       BIT    $A0     
       BMI    LF772   
       CPX    #$91    
       BCS    LF7B9   
       INX            
       LDA    #$0F    
       BNE    LF77B   
LF772: BVS    LF781   
       CPX    #$03    
       BCC    LF7B9   
       DEX            
       LDA    #$00    
LF77B: STA    $B2     
       STX    $A5     
       BPL    LF7B9   
LF781: LDA    $A0     
       AND    #$20    
       BNE    LF791   
       LDA    $A6     
       CMP    #$13    
       BCC    LF7D1   
       DEC    $A6     
       BNE    LF79F   
LF791: LDA    $A0     
       AND    #$10    
       BNE    LF7D1   
       LDA    $A6     
       CMP    #$A2    
LF79B: BCS    LF7D1   
       INC    $A6     
LF79F: LDX    #$00    
       STX    $B2     
       LDA    $A7     
       LSR            
       LSR            
       AND    #$01    
       TAX            
       LDA    LF486,X 
       STA    $DF     
       LDA    #$FD    
       STA    $B9     
       LDY    #$0B    
LF7B5: STY    $E0     
       BNE    LF7D1   
LF7B9: LDA    $A7     
       AND    #$03    
       TAX            
       LDA    LF406,X 
       STA    $DF     
       LDA    #$FD    
       STA    $B9     
       LDA    #$F9    
       STA    $E0     
       LDA    #$F3    
       STA    $BB     
       BMI    LF781   
LF7D1: LDX    #$0A    
       LDA    #$FB    
       LDY    #$6A    
LF7D7: STA    $C4,X   
       STY    $C3,X   
       DEX            
       DEX            
       BPL    LF7D7   
       LDA    $81     
       LSR            
       BEQ    LF7E7   
       JMP    LF8B9   
LF7E7: LDA    $A3     
       BPL    LF804   
       LDA    #$0C    
       STA    $A3     
       JSR    LF3F8   
       SBC    #$09    
       ADC    #$95    
       BCS    LF7FA   
       SBC    #$95    
LF7FA: STA    $A8     
       AND    #$07    
       TAX            
       LDA    LFD6A,X 
       STA    $AF     
LF804: LDY    #$01    
       STY    $E5     
       BIT    $AE     
       BMI    LF81A   
       DEC    $E5     
       LDX    #$02    
       LDA    #$A9    
       STA    $C5     
       LDA    #$A4    
       STA    $C3     
       LDY    #$14    
LF81A: LDX    #$08    
       LDA    #$7A    
       STA    $CD     
       STA    $CB     
LF822: DEX            
       DEX            
       STY    $B3     
       LDA.wy $008E,Y 
       PHA            
       AND    #$0F    
       TAY            
       LDA    LFD72,Y 
       STA    $C3,X   
       DEX            
       DEX            
       PLA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    LFD72,Y 
       STA    $C3,X   
       LDY    $B3     
       DEY            
       DEC    $E5     
       BPL    LF822   
       BIT    $AE     
       BMI    LF84C   
       LDX    #$04    
LF84C: LDA    $C3,X   
       CMP    #$7A    
       BNE    LF85C   
       LDA    #$6A    
       STA    $C3,X   
       INX            
       INX            
       CPX    #$08    
       BCC    LF84C   
LF85C: LDA    $82     
       BMI    LF8B9   
       LDA    $8D     
       ORA    $A9     
       ASL            
       BMI    LF8B9   
       LDA    $AD     
       BNE    LF89E   
       DEC    $E2     
       BPL    LF8B9   
       LDA    $81     
       BNE    LF8B9   
       JSR    LF3F8   
       LSR            
       CMP    #$07    
       BCS    LF8B9   
       STA    $84     
       TAX            
       LDA    #$80    
       STA    $E2     
       ASL            
       STA    $E3     
       LDA    #$F4    
       STA    $BD     
       LDA    LF47F,X 
       STA    $E1     
       LDA    $A5     
       ADC    #$09    
       CMP    #$91    
       BCC    LF898   
       SBC    #$12    
LF898: STA    $A4     
       LDA    #$A8    
       STA    $AD     
LF89E: LDA    #$04    
       STA    AUDC0   
       STA    AUDV0   
       JSR    LF339   
       DEC    $AD     
       LDA    $AD     
       EOR    #$FF    
       CLC            
       ADC    #$01    
LF8B0: LSR            
       LSR            
       LSR            
       STA    AUDF0   
       BNE    LF8B9   
       STA    AUDV0   
LF8B9: LDA    $B2     
       STA    REFP1   
       BIT    $A9     
       BMI    LF8DF   
       BVS    LF8DF   
       LDA    $8D     
       CMP    #$02    
       BEQ    LF8DF   
       ASL            
       BMI    LF8DF   
       LDX    $BF     
       LDA    LFBB7,X 
       STA    AUDC1   
       LDA    LFBB9,X 
       STA    AUDV1   
       LDA    LFBBB,X 
       STA    AUDF1   
       BNE    LF8EF   
LF8DF: LDA    $B7     
       BMI    LF8EF   
       DEC    $B7     
       STA    AUDV1   
       LDA    #$0B    
       STA    AUDF1   
       LDA    #$07    
       STA    AUDC1   
LF8EF: LDY    #$10    
       STY    NUSIZ0  
       STY    NUSIZ1  
       STY    VDELP1  
       LDA    $B1     
       JSR    LF488   
       TAX            
       LDA    LFD5F,X 
       STA    $83     
       LDA    LFD5A,X 
       STA    $91     
       STA    COLUBK  
       LDX    #$05    
LF90B: STA    WSYNC   
       LDA    #$07    
       STA    $E4     
       LDA    #$99    
       STA.w  $0008   
       LDA    $A3,X   
       SEC            
LF919: SBC    #$0F    
       BCS    LF919   
       STA    PF2,X   
       TAY            
       LDA    LF400,Y 
       STA    ENABL,X 
       DEX            
       BNE    LF90B   
       LDA    #$5C    
       STA    WSYNC   
       STA    HMOVE   
       STA    COLUP0  
       STX    $E6     
       STX    $E7     
       STX    REFP0   
       SEC            
       LDA    #$A8    
       TAY            
       SBC    $A6     
       ADC    #$11    
       STA    $CF     
       CLC            
       ADC    $DF     
       STA    $B8     
       LDA    $CF     
       CLC            
       ADC    $E0     
       STA    $BA     
LF94C: STA    HMCLR   
       STA    CXCLR   
LF950: LDX    INTIM   
       BNE    LF950   
       STX    WSYNC   
       STX    HMOVE   
       BIT    $85     
       BPL    LF95F   
       LDX    #$02    
LF95F: STX    VBLANK  
       BIT    $8D     
       BMI    LF97E   
       SEC            
       TYA            
       SBC    $AD     
       ADC    #$08    
       STA    $D0     
       CLC            
       ADC    $E1     
       STA    $BC     
       LDX    $91     
       LDA    #$01    
       STA    VDELP0  
       STA    VDELBL  
       NOP            
       JMP    LF00C   
LF97E: LDA    #$04    
       STA    $E4     
       STA    WSYNC   
       STA    HMOVE   
       LSR            
       STA    $E5     
       JSR    LFD10   
       LDX    #$02    
       STX    $E5     
       INX            
       JSR    LF208   
       LDA    #$FE    
       STA    PF2     
       LDX    #$02    
       JSR    LF208   
       JSR    LFD10   
       LDX    #$08    
       JSR    LF208   
       STX    PF2     
       LDX    #$15    
       JSR    LF208   
       LDA    #$F4    
       STA    $E8     
       LDA    #$01    
       STA    $EB     
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$73    
       STA    $E7     
       LDA    #$04    
       STA    $E6     
       LDA    #$0F    
       LDY    $81     
       CPY    #$02    
       BNE    LF9CA   
       LDA    #$40    
LF9CA: INC    $E4     
       INC    $E5     
       JSR    LFD2E   
LF9D1: STA    WSYNC   
       STA    HMOVE   
       LDY    $EB     
       LDA    LFBAE,Y 
       STA    $E7     
       LDA    #$04    
       STA    $E6     
       LDA    #$0F    
       CPY    $81     
       BNE    LF9E8   
       LDA    #$40    
LF9E8: INC    $E4     
       INC    $E5     
       JSR    LFD2E   
       DEC    $EB     
       BPL    LF9D1   
       LDX    #$13    
       JSR    LF208   
       STX    $E4     
       INC    $E5     
       JSR    LFD10   
LF9FF: LDA    #$1F    
       LDX    #$02    
       STA    WSYNC   
       STX    VBLANK  
       STA    TIM64T  
       LDA    $8D     
       BEQ    LFA11   
       JMP    LFB4B   
LFA11: LDX    #$06    
       LDA    $A6     
LFA15: CMP    LF392,X 
       BEQ    LFA2A   
       DEX            
       BPL    LFA15   
       LDA    #$DF    
       BIT    $A9     
       BMI    LFA8B   
       LDA    SWCHA   
       ORA    #$C0    
       BMI    LFA8B   
LFA2A: LDA    #$F0    
       BIT    $A9     
       BMI    LFA8B   
       AND    SWCHA   
       STA    $A0     
       LDA    $A5     
       CMP    #$87    
       BCS    LFA86   
       CMP    #$07    
       BCC    LFA86   
       SBC    #$07    
       LDY    #$FF    
LFA43: INY            
       SBC    #$20    
       BCS    LFA43   
       ADC    #$20    
       LSR            
       LSR            
       STY    $EA     
       TAY            
       LDA    $EA     
       BEQ    LFA61   
       CMP    #$03    
       BCS    LFA61   
       LDA    $D8,X   
       STA    $E8     
       LDA    $D7,X   
       STA    $E9     
       BCC    LFA69   
LFA61: LDA    $D1,X   
       STA    $E8     
       LDA    $D0,X   
       STA    $E9     
LFA69: LSR    $EA     
       BCC    LFA71   
       TYA            
       EOR    #$07    
       TAY            
LFA71: LDA    $E8     
       AND    LF433,Y 
       BNE    LFA7A   
       LDX    #$10    
LFA7A: LDA    $E9     
       AND    LF433,Y 
       BNE    LFA88   
       TXA            
       ORA    #$20    
       TAX            
       BIT    $30A2   
LFA88: TXA            
       ORA    $A0     
LFA8B: ORA    #$0F    
       STA    $A0     
       LDA    $A9     
       BMI    LFAE2   
       ORA    RSYNC   
       AND    #$40    
       BNE    LFB12   
       LDA    $81     
       LSR            
       BNE    LFAD0   
       LDA    $A2     
       BNE    LFAD0   
       LDA    #$80    
       BMI    LFAD6   
LFAA6: LDA    COLUP1  
       BPL    LFAE4   
       LDX    $84     
       CPX    #$04    
       BCS    LFAD6   
       LDA    #$00    
       STA    AUDV0   
       LDX    $84     
       CPX    $A1     
       BNE    LFAC2   
       CPX    #$03    
       BCS    LFAC3   
       INC    $A1     
       BNE    LFAC5   
LFAC2: TAX            
LFAC3: STA    $A1     
LFAC5: STA    $AD     
       JSR    LFBBD   
       LDA    #$80    
       STA    $E2     
       BMI    LFB4B   
LFAD0: LDA    VSYNC   
       AND    #$80    
       BPL    LFAA6   
LFAD6: STA    $A9     
       LDA    #$15    
       STA    $B6     
       JSR    LF1F6   
       INY            
       STY    $BE     
LFAE2: DEC    $BE     
LFAE4: BPL    LFB4B   
       LDA    #$0A    
       STA    $BE     
       LDX    $B5     
       INC    $B5     
       JSR    LF383   
       BNE    LFB4B   
       LDA    #$00    
       STA    $A9     
       STA    $BF     
       DEC    $82     
       BMI    LFB02   
       JSR    LFC8A   
       BNE    LFB48   
LFB02: LDA    #$02    
       STA    $8D     
       JSR    LF494   
       LDA    #$80    
       STA    $AE     
       JSR    LF1FF   
       BNE    LFB48   
LFB12: BIT    $A9     
       BVS    LFB26   
       STA    $A9     
       LDA    $A2     
       JSR    LFBCB   
       JSR    LF1F6   
       STY    $BE     
       LDA    #$06    
       STA    $B6     
LFB26: LDX    #$FF    
       STX    $A0     
       DEC    $BE     
       BPL    LFB4B   
       LDA    #$09    
       STA    $BE     
       LDX    $B6     
       JSR    LF383   
       BNE    LFB4B   
       LDA    $B1     
       CMP    #$99    
       BCS    LFB45   
       SED            
       ADC    #$01    
       STA    $B1     
       CLD            
LFB45: JSR    LFC37   
LFB48: JSR    LF1F6   
LFB4B: JMP    LF51E   
LFB4E: .byte $1F,$10,$10,$10,$10,$7C,$40,$79,$41,$7D,$47,$A4,$17,$14,$17,$DF
       .byte $10,$90
LFB60: .byte $10,$D0,$04,$50,$0C,$88,$91,$12,$00,$09,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00
LFB77: .byte $00,$01,$03,$3C,$66,$66,$66,$3C,$46,$0C,$46,$3C,$66,$7C,$60,$3C
       .byte $66,$3C,$66,$3C,$06,$3E,$66,$3C,$18,$18,$38,$18,$18,$0C,$06,$7E
       .byte $60,$3C,$06,$7C,$06,$7C,$60,$7E,$0C,$0C,$7E,$4C,$4C,$4A,$4A,$4A
       .byte $4A,$EB,$AE,$A8,$AE,$A8,$EE
LFBAE: .byte $67,$5B,$38,$44,$BA,$A2,$BA,$44,$38
LFBB7: .byte $00,$0E
LFBB9: .byte $00,$06
LFBBB: .byte $00,$08
LFBBD: LDA    $B1     
       CMP    #$20    
       BCC    LFBC5   
       LDA    #$20    
LFBC5: JSR    LF488   
       LDA    LF49E,X 
LFBCB: LDY    $81     
       CPY    #$02    
       BEQ    LFC1B   
       SED            
       ADC    $8F     
       STA    $8F     
       LDA    #$00    
       ADC    $8E     
       STA    $8E     
       CLD            
       BEQ    LFBEA   
       LDA    $AE     
       LSR            
       BCS    LFBEA   
       INC    $82     
       LDA    #$81    
       BNE    LFBEE   
LFBEA: LDA    #$80    
LFBEC: ORA    $AE     
LFBEE: STA    $AE     
       RTS            

LFBF1: LDY    #$00    
       LDX    $A2     
       BEQ    LFC1B   
       BIT    $A9     
       BVS    LFC1B   
       CMP    $A2     
       BCS    LFC13   
       STA    $B3     
       TXA            
       SED            
       SEC            
       SBC    $B3     
       STA    $A2     
       CLD            
       BIT    $AE     
       BVS    LFC15   
       BPL    LFC1B   
       LDA    #$C0    
       BMI    LFBEC   
LFC13: STY    $A2     
LFC15: LDA    #$01    
       AND    $AE     
       STA    $AE     
LFC1B: RTS            

LFC1C: BIT    SWCHB   
       SEC            
       BVS    LFC2C   
       SBC    $99,X   
       BCS    LFC2A   
       EOR    #$FF    
       ADC    #$01    
LFC2A: CMP    #$0F    
LFC2C: LDA    #$02    
       BCS    LFC32   
       EOR    $92,X   
LFC32: STA    $92,X   
       LDA    $86,X   
       RTS            

LFC37: LDA    #$93    
       STA    $AF     
       LDA    #$09    
       STA    $A8     
       LDX    $B1     
       INX            
       CPX    #$04    
       BCC    LFC48   
       LDX    #$04    
LFC48: STX    $B0     
       JSR    LF3F8   
       STA    $B3     
       LDX    #$05    
LFC51: TXA            
       LSR            
       LDA    #$00    
       LDY    $81     
       BCS    LFC71   
       CPY    #$02    
       BNE    LFC65   
       LDA    #$0C    
       STA    $D8,X   
       LDA    #$C0    
       BMI    LFC6D   
LFC65: STA    $D8,X   
       JSR    LFD7C   
       LDA    LFD8D,Y 
LFC6D: STA    $D1,X   
       BNE    LFC87   
LFC71: CPY    #$02    
       BNE    LFC7D   
       LDA    #$06    
       STA    $D1,X   
       LDA    #$80    
       BMI    LFC85   
LFC7D: STA    $D1,X   
       JSR    LFD7C   
       LDA    LFD93,Y 
LFC85: STA    $D8,X   
LFC87: DEX            
       BPL    LFC51   
LFC8A: LDX    #$07    
       LDA    $81     
       LSR            
       BEQ    LFCBB   
       LDY    $B1     
       CPY    #$04    
       BCC    LFC99   
       LDY    #$04    
LFC99: LDA    LFDFB,Y 
       STA    $B3     
       LDY    #$01    
LFCA0: JSR    LF3F8   
       AND    $B3     
       CMP    #$1B    
       BCS    LFCAB   
       LDA    #$1A    
LFCAB: STA    $98,X   
       LDA    #$03    
       STA    $85,X   
LFCB1: DEX            
       BEQ    LFCE8   
       STY    $98,X   
       STA    $85,X   
       DEX            
       BPL    LFCA0   
LFCBB: JSR    LF3F8   
       CMP    $99,X   
       BNE    LFCC6   
       EOR    #$FF    
       ADC    #$00    
LFCC6: STA    $98,X   
       SEC            
       SBC    $86,X   
       ADC    #$8D    
       BCS    LFCD1   
       SBC    #$8D    
LFCD1: STA    $85,X   
       DEX            
       BNE    LFCBB   
       LDA    $86,X   
       CMP    #$4A    
       LDY    $99,X   
       BPL    LFCE6   
       BCS    LFCE8   
LFCE0: TYA            
       EOR    #$FF    
       STA    $99,X   
       BIT    LF8B0   
LFCE8: LDX    #$0E    
LFCEA: CPX    #$09    
       BEQ    LFCF3   
       LDA    LFB60,X 
       STA    $9F,X   
LFCF3: DEX            
       BNE    LFCEA   
       LDA    #$01    
       AND    $AE     
       STA    $AE     
       LDA    #$FD    
       STA    $B9     
       LDA    LF406   
       STA    $DF     
       STX    REFP1   
       LDA    #$F9    
       STA    $E0     
       LDA    #$F3    
       STA    $BB     
       RTS            

LFD10: STA    WSYNC   
       STA    HMOVE   
       LDY    $E4     
       LDA    LFD56,Y 
       STA    $E7     
       LDA    #$F4    
       STA    $E8     
       LDA    LF40A,Y 
       STA    $E6     
       LDA    #$65    
       STA    $E9     
       LDA    #$FD    
       STA    $EA     
       LDA    ($E9),Y 
LFD2E: STA    COLUP0  
       STA    COLUP1  
       LDY    #$0B    
       LDX    #$02    
LFD36: STA    WSYNC   
       STA    HMOVE   
LFD3A: LDA    ($E7),Y 
       STA.wy $00C3,Y 
       DEY            
       DEX            
       BPL    LFD3A   
       LDX    #$02    
       TYA            
       BPL    LFD36   
       STA    WSYNC   
       STA    HMOVE   
       JSR    LF301   
       DEC    $E4     
       DEC    $E5     
       BNE    LFD10   
       RTS            

LFD56: .byte $1B,$51,$0F,$47
LFD5A: .byte $3B,$00,$B2,$64,$60
LFD5F: .byte $7B
LFD60: .byte $3F,$7D,$BB,$2F,$0F,$0F,$28,$28,$0F,$82
LFD6A: .byte $03,$1B,$33,$4B,$63,$7B,$93,$93
LFD72: .byte $7A,$8E,$96,$7E,$9F,$9A,$82,$92,$86,$8A
LFD7C: LDA    $B3     
       AND    INTIM   
LFD81: CMP    #$0A    
       BCC    LFD89   
       SBC    #$09    
       BCS    LFD81   
LFD89: DEC    $B3     
       TAY            
       RTS            

LFD8D: .byte $C0,$CC,$C3,$30,$33,$0C
LFD93: .byte $30,$33
LFD95: .byte $0C,$03,$80,$98,$86,$60,$66,$63,$00,$00,$00,$00,$00,$36,$12,$36
       .byte $36,$3E,$32,$3A
LFDA9: .byte $F9,$3F,$1C,$3E,$7F,$7F,$5F,$3E,$FE,$3E,$1C,$61,$27,$6F,$6E,$7E
       .byte $72,$23,$2B,$3E,$1C,$3E,$7F,$7F,$5F,$3E,$FE,$3E,$1C,$03,$07,$66
       .byte $2F,$7E,$76,$3A,$FF,$FF,$9C,$3E,$7F,$7F,$5F,$3E,$FE,$3E,$1C,$04
       .byte $0E,$6E,$FE,$FE,$FE,$F2,$7B,$13,$37,$73,$FE,$DC,$BE,$3E,$3E,$3E
       .byte $1C,$20,$70,$76,$7F,$7F,$7F,$4F,$EE,$C8,$DC,$CE,$7F,$3B,$7D,$7C
       .byte $7C,$7C
LFDFB: .byte $38,$3F,$2F,$1F,$0F,$38,$7C,$7C,$EE,$C6,$C6,$C6,$C0,$C0,$C0,$C0
       .byte $C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0,$C6,$C6
       .byte $C6,$EE,$7C,$7C,$38,$F6,$F6,$F6,$C6,$C6,$C6,$C6,$C6,$C6
LFE29: .byte $C6,$C6,$C6,$C6,$C6,$C6,$C6,$C6,$C6,$C6,$C6,$C6,$C6,$C6,$C6,$C6
       .byte $C6,$C6,$C6,$C6,$C6,$C6,$C6,$CC,$CC,$CC,$CC,$CC,$CC,$CC,$CC,$CC
       .byte $CC,$CC,$CC,$CC,$CC,$CC,$CC,$CC,$CC,$CC,$CC,$CC,$CC,$CC,$CC,$CC
       .byte $CC,$CC,$FF,$FF,$7F,$7F,$33,$CE,$DF,$DF,$DB,$D9,$D9,$D9,$D9,$D9
       .byte $D9,$D9,$D9,$D9,$D9,$DB,$DF,$DE,$DF,$DB,$D9,$D9,$D9,$D9,$D9,$D9
       .byte $D9,$D9,$D9,$DB,$9F,$9F,$0E,$1F,$1F,$98,$D8,$D8,$D8,$D8,$D8,$D8
       .byte $D8,$D8,$D8,$D8,$98,$1F,$1F,$1F,$98,$D8,$D8,$D8,$D8,$D8,$D8,$D8
       .byte $D8,$D8,$98,$1F,$1F,$0E,$67,$67,$67,$67,$67,$67,$67,$67,$67,$67
       .byte $67,$67,$67,$67,$6E,$7C,$78,$6C,$6E,$67,$67,$67,$67,$67,$67,$67
       .byte $67,$67,$6E,$6C,$7C,$38,$0F,$10,$2F,$5F,$BF,$AF,$B7,$BA,$AD,$B7
       .byte $BA,$5D,$2F,$10,$0F,$80,$40,$A0,$D0,$E8,$A8,$68,$E8,$A8,$68,$E8
       .byte $D0,$A0,$40,$80,$40,$40,$74,$54,$54,$54,$76,$00,$00,$EE,$82,$EE
       .byte $A8,$EE,$00,$00,$EA,$8A,$EA,$AA,$EE,$00,$00,$6E,$42,$4E,$48,$EE
       .byte $40,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$A2,$A4,$A4,$E4
       .byte $AE,$A4,$40,$00,$00,$00,$00,$00,$74,$94,$74,$16,$65,$00,$00,$00
       .byte $00,$00,$2A,$2A,$2A,$AE,$2A,$0A,$24,$00,$00,$00,$60,$90,$13,$74
       .byte $97,$75,$02,$00,$00,$00,$00,$00,$01,$01,$00,$00,$01,$01,$01,$01
       .byte $01,$01,$3F,$3F,$F8,$F8,$00,$00,$FF,$FF,$F8,$F8,$FF,$FF,$FC,$FC
       .byte $1F,$1F,$1F,$1F,$FC,$FC,$00,$00,$FF,$FF,$00,$00,$80,$80,$80,$80
       .byte $00,$00,$00,$00,$80,$80,$00,$EE,$8A,$EA,$2A
LFF64: INC.w  $0000   
       .byte $E2 ;.NOP
       LDX    #$AE    
       TAX            
       NOP            
       BRK            
       BRK            
       .byte $A7 ;.LAX
       LDA    $A5     
       LDA    $B7     
       BRK            
       BRK            
       .byte $6B ;.ARR
       .byte $52 ;.JAM
       .byte $52 ;.JAM
       .byte $52 ;.JAM
       .byte $52 ;.JAM
       .byte $52 ;.JAM
       .byte $63 ;.RRA
       BRK            
       .byte $3B ;.RLA
       LDX    #$BA    
       TAX            
       .byte $BB ;.LAS
       .byte $82 ;.NOP
       .byte $02 ;.JAM
       .byte $3A ;.NOP
       LSR            
       .byte $5B ;.SRE
       .byte $42 ;.JAM
       AND    $5151,Y 
       CMP    $5B,X   
       STA    ($78),Y 
       RTI            

LFF90: .byte $70,$40,$78,$0C,$12,$12,$12,$0C,$23,$52,$8B,$8A,$8B,$D2,$12,$9C
       .byte $12,$DC,$09,$09,$0F,$09,$06,$70,$49,$4A,$4A,$72,$89,$49,$2F,$29
       .byte $26,$49,$4A,$5A,$6A,$49,$9E,$50,$1C,$50,$9E,$E0,$90,$90,$90,$E0
       .byte $49,$4A,$5A,$6A,$49,$92
LFFC6: .byte $52 ;.JAM
       .byte $5C ;.NOP
       .byte $52 ;.JAM
       .byte $9C ;.SHY
       TXA            
       TAX            
       .byte $AB ;.LXA
       .byte $DA ;.NOP
       .byte $89 ;.NOP
       LSR    $D050,X 
       BVC    LFF64   
       BRK            
       ORA    ($01,X) 
       ORA    ($00,X) 
       CMP    #$29    
       ROL    $CE29   
       LSR    $5652   
       BVC    LF031   
       LDA    $A5     
       LDA    $A4B5   
       .byte $2F ;.RLA
       PLP            
       INX            
       PLP            
       INY            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       SBC    VSYNC,X 
       .byte $F5
