; Disassembly of roms/Darkcvrn.bin
; Disassembled Tue Oct  6 15:21:09 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Darkcvrn.bin
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
HMP0    =  $20
HMP1    =  $21
HMM0    =  $22
HMBL    =  $24
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296
LFE5C   =   $FE5C

       ORG $F000
LF000: .byte $7E,$66,$66,$66,$66,$7E,$7E,$18,$18,$18,$18,$78,$7E,$60,$7E,$06
       .byte $66,$7E,$7E,$06,$06,$7C,$06,$7E,$06,$06,$7E,$66,$66,$66,$7E,$66
       .byte $06,$7E,$60,$7E,$7E,$66,$66,$7E,$60,$7E,$20,$30,$18,$0C,$06,$7E
       .byte $7E,$66,$66,$3C,$66,$7E,$7E,$06,$7E,$66,$66,$7E
LF03C: .byte $3C,$0E,$06,$06,$06,$09,$09,$09,$09,$28
LF046: .byte $32,$0C,$04,$04,$04,$07,$07,$07,$07,$21
LF050: .byte $01,$03,$01,$03
LF054: .byte $60,$0E,$80,$80,$80,$80,$80,$80,$80,$80,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00
LF069: .byte $80,$80,$80,$80,$80,$80,$80,$80,$94,$94,$94,$94,$80,$90,$94,$80
       .byte $A8,$A8,$A8,$A8,$80,$80,$A8,$A8,$94,$94,$A4,$A8,$80,$90,$A4,$A8
       .byte $BC,$BC,$BC,$BC,$8C,$80,$BC,$BC,$BC,$94,$94,$BC,$8C,$90,$94,$BC
       .byte $BC,$A8,$A8,$B8,$8C,$80,$A8
LF0A0: .byte $B8,$BC,$94,$A4,$B8,$89,$99,$80,$85,$C9,$D9,$88,$85,$84,$8C,$85
       .byte $80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$82,$82,$80
       .byte $69,$69
LF0C2: .byte $00
LF0C3: .byte $06,$0C,$12,$18,$1E,$24,$2A,$30,$36,$3C
LF0CD: LDX    #$04    
       LDA    $C0     
       LSR            
       BCC    LF0D6   
       LDX    #$08    
LF0D6: LDA    $9E,X   
       BMI    LF0E9   
       JSR    LF4E0   
       BCC    LF0E9   
       CMP    $A8,X   
       BNE    LF0E9   
       LDA    $9E,X   
       ORA    #$80    
       STA    $9E,X   
LF0E9: DEX            
       CPX    #$01    
       BEQ    LF0F2   
       CPX    #$04    
       BNE    LF0D6   
LF0F2: RTS            

LF0F3: ADC    $B2     
       LSR            
       LSR            
       LSR            
       LSR            
       EOR    #$08    
       SEC            
       SBC    #$08    
       CLC            
       RTS            

LF100: STA    HMCLR   
       LDX    $DD     
       TYA            
       CMP    $94,X   
       BCC    LF13A   
       LDA    $B2,X   
       STA    $E6     
       LDA    $D4,X   
       NOP            
LF110: STA    $DE     
LF112: LDA    LFB54,Y 
       STA    PF1     
       NOP            
       LDA    LFB00,Y 
       STA    PF0     
       LDA    LFBA8,Y 
       STA    PF2     
       STA    HMOVE   
       LDA    ($EE),Y 
       BPL    LF12F   
       LDA    ($E4),Y 
       STA    GRP1    
       JMP.ind ($00E0)
LF12F: BEQ    LF134   
       NOP            
       BNE    LF137   
LF134: STA.w  $00EE   
LF137: JMP.ind ($00E0)
LF13A: JSR    LFEC2   
       BCC    LF112   
       STA    RESM0   
       STA    HMCLR   
       LDX    $DD     
       BPL    LF14F   
       LDX    $DD     
       NOP            
       STA    RESM0   
       STA.w  $002B   
LF14F: LDA    $8A,X   
LF151: STA.w  $0022   
       LDA    #$FC    
       NOP            
       BNE    LF110   
       STA    HMCLR   
       LDX    $DD     
       LDA    $8A,X   
       STA    RESM0   
       JMP    LF151   
LF164: .byte $85,$2B,$A6,$DD,$B5,$8A,$85,$22,$EA,$85,$12,$EA,$EA,$A9,$FC,$D0
       .byte $9B,$85,$2B,$A6,$DD,$B5,$8A,$85,$22,$C6,$3F,$A9,$FC,$85,$12,$8D
       .byte $DE,$00,$D0,$8A,$85,$2B,$A6,$DD,$B5,$8A,$85,$22,$A9,$FC,$85,$DE
       .byte $A5,$3F,$B9,$54,$FB,$85,$12,$85,$3F,$4C,$15,$F1,$85,$2B,$A6,$DD
       .byte $B5,$8A,$85,$22,$A9,$FC,$85,$DE,$B9,$54,$FB,$85,$0E,$C6,$3F,$85
       .byte $12,$A5,$3F,$4C,$18,$F1,$85,$2B,$A6,$DD,$B5,$8A,$85,$22,$A9,$FC
       .byte $85,$DE,$B9,$54,$FB,$85,$0E,$B9,$00,$FB,$EA,$EA,$EA,$85,$12,$EA
       .byte $4C,$1B,$F1,$85,$2B,$A6,$DD,$B5,$8A,$85,$22,$A9,$FC,$85,$DE,$B9
       .byte $54,$FB,$8D,$0E,$00,$B9,$00,$FB,$85,$0D,$68,$48,$85,$12,$4C,$1D
       .byte $F1,$4C,$0E,$F3,$FF,$FF,$FF,$FF,$B1,$EE,$30,$06,$A5,$DD,$A2,$00
       .byte $F0,$03,$B1,$E4,$AA,$EA,$B9,$54,$FB,$85,$0E,$B9,$00,$FB,$85,$0D
       .byte $B9,$A8,$FB,$85,$0F,$85,$2B,$B1,$E6,$D0,$11,$EA,$A9,$00,$85,$DE
       .byte $85,$2A,$86,$1C,$EA,$85,$1D,$C6,$DD,$6C,$E0,$00,$85,$3F,$85,$22
       .byte $85,$2A,$86,$1C,$85,$1D,$0A,$0A,$85,$04,$6C,$E0,$00,$B1,$F0,$10
       .byte $35,$85,$1F,$C0,$53,$B0,$35,$C8,$85,$2B,$A6,$D9,$98,$D5,$94,$90
       .byte $08,$B5,$B2,$85,$E8,$B5,$D4,$85,$E0,$B1,$EC,$85,$02,$85,$2A,$EA
       .byte $EA,$10,$07,$B1,$E2,$85,$1B,$6C,$DE,$00,$EA,$D0,$05,$85,$EC,$6C
       .byte $DE,$00,$EA,$6C,$DE,$00,$85,$F0,$C0,$53,$90,$CB,$4C,$B2,$FE,$B1
       .byte $F0,$B1,$F0,$B1,$F0,$85,$13,$85,$2B,$B1,$F0,$85,$1F,$C8,$A6,$D9
       .byte $B5,$8A,$85,$23,$A9,$DF,$85,$E0,$B1,$EC,$85,$02,$8D,$2A,$00,$4C
       .byte $65,$F2,$B1,$F0,$B1,$F0,$85,$2B,$B1,$F0,$85,$1F,$C8,$A6,$D9,$B5
       .byte $8A,$85,$13,$85,$23,$A9,$DF,$D0,$9E,$B1,$F0,$B1,$F0,$85,$2B,$B1
       .byte $F0,$85,$1F,$C8,$A6,$D9,$B5,$8A,$85,$23,$A9,$DF,$85,$E0,$B1,$EC
       .byte $18,$85,$13,$90,$86,$85,$23,$0A,$0A,$D0,$15,$B1,$F0,$85,$1F,$30
       .byte $02,$85,$F0,$C8,$85,$2B,$B1,$E8,$D0,$EB,$C6,$D9,$A2,$41,$86,$E0
       .byte $AA,$B1,$EC,$30,$04,$A9,$00,$F0,$02,$B1,$E2,$85,$02,$85,$2A,$85
       .byte $1B,$86,$05,$B1,$E8,$85,$1E,$6C,$DE,$00,$85,$2B,$A6,$DD,$B5,$8A
       .byte $85,$22,$A9,$FC,$85,$DE,$B9,$54,$FB,$85,$0E,$B9,$00,$FB,$85,$0D
       .byte $B9,$A8,$FB,$85,$0F,$A5,$3F,$85,$12,$EA,$4C,$22,$F1
LF331: .byte $3F,$47,$59,$64,$75,$88,$A0,$BA,$D7,$F5
LF33B: .byte $89,$87,$85,$83,$AA,$A8,$A6,$C1,$BF,$BD
LF345: TAY            
       AND    #$0F    
       STA    $D6     
       TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       SEC            
       ADC    $D6     
       CMP    #$10    
       BCC    LF35A   
       SBC    #$0F    
       INY            
LF35A: EOR    #$07    
       ASL            
       ASL            
       ASL            
       ASL            
       STY    $D6     
       ORA    $D6     
       RTS            

LF365: LDA    $8F     
       LDY    $8A,X   
       STY    $8F     
       STA    $8A,X   
       LDA    $85     
       LDY    $80,X   
       STY    $85     
       STA    $80,X   
       LDA    $A3     
       LDY    $9E,X   
       STY    $A3     
       STA    $9E,X   
       LDA    $AD     
       LDY    $A8,X   
       STY    $AD     
       STA    $A8,X   
       LDA    $BB     
       LDY    $B6,X   
       STY    $BB     
       STA    $B6,X   
       LDA    $99     
       SEC            
       SBC    #$02    
       LDY    $94,X   
       INY            
       INY            
       STY    $99     
       STA    $94,X   
       RTS            

LF39B: LDA    $8A,X   
       STA.wy $008A,Y 
       LDA    $80,X   
       STA.wy $0080,Y 
       LDA    $9E,X   
       STA.wy $009E,Y 
       LDA    $A8,X   
       STA.wy $00A8,Y 
       CPX    #$05    
       BCC    LF3BC   
       LDA    $B6,X   
       STA.wy $00B6,Y 
       LDA    #$00    
       STA    $B6,X   
LF3BC: LDA    $94,X   
       STA.wy $0094,Y 
       RTS            

LF3C2: LDA    $C9     
       BEQ    LF3CA   
       DEC    $C9     
       BNE    LF43A   
LF3CA: LDA    $BF     
       LSR            
       BCS    LF43A   
       LDA    $9F     
       AND    #$03    
       STA    $D9     
       LDA    SWCHA   
       LSR            
       LSR            
       LSR            
       LSR            
       AND    SWCHA   
       TAY            
       LDA    LF0A0,Y 
       LSR            
       PHP            
       LSR            
       PLP            
       BCC    LF3FE   
       LSR            
       BCS    LF3FC   
       PHA            
       LDA    $9F     
       BPL    LF3F3   
       LDA    $C0     
LF3F3: LSR            
       PLA            
       BCS    LF3F9   
       LSR            
       LSR            
LF3F9: JMP    LF3FE   
LF3FC: LDA    $C4     
LF3FE: AND    #$03    
       STA    $DA     
       STA    $C4     
       LDX    #$01    
       JSR    LF4E0   
       BCS    LF427   
       BIT    $BF     
       BMI    LF426   
       TAY            
       LDA    $D9     
       CMP    $DA     
       BEQ    LF41E   
       EOR    #$02    
       CMP    $DA     
       BEQ    LF41E   
       STY    $DA     
LF41E: LDA    $9F     
       AND    #$7C    
       ORA    $DA     
       STA    $9F     
LF426: RTS            

LF427: TAY            
       CPY    #$22    
       BEQ    LF430   
       ASL    $BF     
       LSR    $BF     
LF430: LDA    LFB00,Y 
       LDY    $DA     
       AND    LFFBB,Y 
       BNE    LF41E   
LF43A: LDA    #$80    
       ORA    $9F     
       STA    $9F     
       RTS            


START:
LF441: CLD            
       LDX    #$00    
       TXA            
LF445: STA    VSYNC,X 
       TXS            
       INX            
       BNE    LF445   
       LDA    #$20    
       STA    $C1     
       LDA    #$06    
       STA    $C2     
       LDX    #$09    
LF455: LDA    #$C0    
       STA    $8A,X   
       LDA    #$80    
       STA    $9E,X   
       LDA    #$07    
       STA    $A8,X   
       LDA    #$54    
       STA    $94,X   
       DEX            
       BPL    LF455   
       LDA    #$56    
       STA    $99     
       JSR    LF760   
LF46F: LDA    #$21    
       STA    TIM64T  
       LDA    $C0     
       LSR            
       BCS    LF47C   
       JSR    LFFC3   
LF47C: INC    $C0     
       JSR    LF786   
       JSR    LF66D   
       JSR    LF3C2   
       JSR    LF9E1   
       JSR    LF0CD   
       JSR    LFEC3   
       JSR    LF5A4   
       JSR    LF876   
       LDA    SWCHB   
       LSR            
       BCC    LF441   
       ROL            
       ORA    $C6     
       STA    $C6     
LF4A1: LDA    INTIM   
       BPL    LF4A1   
       STA    WSYNC   
       LDX    #$03    
       STX    VSYNC   
LF4AC: STA    WSYNC   
       DEX            
       BNE    LF4AC   
       STX    VSYNC   
       LDA    #$2C    
       STA    TIM64T  
       JSR    LFA8B   
       JSR    LFC00   
       JSR    LFC0F   
       JSR    LF93C   
       JSR    LF8C1   
       JSR    LF697   
       LDA    $C0     
       LSR            
       BCS    LF4D2   
       JSR    LFFC3   
LF4D2: JSR    LFFD4   
LF4D5: LDA    INTIM   
       BPL    LF4D5   
       JSR    LFD00   
       JMP    LF46F   
LF4E0: LDA    $9E,X   
       AND    #$03    
       TAY            
       LDA    LF539,Y 
       STA    $D8     
       LDA    $94,X   
       CPX    #$05    
       BEQ    LF4F4   
       CPX    #$01    
       BNE    LF4F6   
LF4F4: SBC    #$02    
LF4F6: SBC    #$01    
       LDY    #$FF    
LF4FA: INY            
       SBC    #$0C    
       BCS    LF4FA   
       CMP    #$F4    
       BEQ    LF50E   
       CMP    $D8     
       BCC    LF50B   
       CLC            
       LDA    #$01    
       RTS            

LF50B: LDA    #$03    
       RTS            

LF50E: STY    $D7     
       LDA    $80,X   
       SEC            
       SBC    #$08    
       BCC    LF523   
       CMP    #$3E    
       BCC    LF523   
       ADC    #$01    
       CMP    #$4E    
       BCC    LF523   
       ADC    #$01    
LF523: STA    $D6     
       AND    #$0F    
       BEQ    LF532   
       CMP    $D8     
       LDA    #$00    
       ROL            
       ASL            
       EOR    #$02    
       RTS            

LF532: LDA    $D6     
       LSR            
       ORA    $D7     
       SEC            
       RTS            

LF539: .byte $04,$F7,$0C,$FD
LF53D: AND    #$01    
       TAY            
       LDA    #$01    
       BIT    $BF     
       BNE    LF5A3   
       BVS    LF5A3   
       BIT    $A7     
       BPL    LF5A3   
       LDA    $95     
       SEC            
       SBC    $94,X   
       STA.wy $00D6,Y 
       TYA            
       EOR    #$01    
       TAY            
       LDA    $81     
       SEC            
       SBC    $80,X   
       STA.wy $00D6,Y 
       LDA    $D6     
       BPL    LF566   
       EOR    #$FF    
LF566: CMP    #$07    
       BCS    LF5A3   
       LDA    $9E,X   
       LSR            
       LSR            
       LDA    $D7     
       BCC    LF576   
       EOR    #$FF    
       STA    $D7     
LF576: BPL    LF57D   
       LDA    $9E,X   
       ASL            
       BPL    LF5A3   
LF57D: LDA    #$28    
       STA    $D4     
       LDA    $9E,X   
       AND    #$03    
       BIT    $D7     
       BPL    LF58B   
       EOR    #$02    
LF58B: STA    $A7     
       LDA    #$06    
       STA    $CB     
       LDY    $94,X   
       INY            
       INY            
       STY    $9D     
       LDA    $80,X   
       CLC            
       ADC    #$04    
       STA    $89     
       JSR    LF345   
       STA    $93     
LF5A3: RTS            

LF5A4: LDA    $C0     
       LSR            
       BCC    LF5A3   
       AND    #$03    
       CLC            
       ADC    #$05    
       TAX            
       LDA    $9E,X   
       BPL    LF53D   
       LDA    $94,X   
       CMP    #$54    
       BCS    LF5A3   
       LDA    #$0F    
       STA    $D8     
       CPX    #$05    
       BNE    LF5C7   
       JSR    LFEF5   
       JMP    LFEE8   
LF5C7: LDY    #$08    
       JSR    LFF51   
       LDA    $D9     
       AND    #$7F    
       STA    $D9     
       LDA.wy $00A8,Y 
       AND    #$07    
       STA    $D7     
       LDA.wy $009E,Y 
       LDY    $D7     
       LSR            
       BCC    LF602   
       LSR            
       BCC    LF5E7   
       INY            
       BNE    LF5E8   
LF5E7: DEY            
LF5E8: LDA    LFFBB,Y 
       LDY    $D7     
       AND    $D9     
       BEQ    LF602   
       LDA    $A8,X   
       AND    #$07    
       CMP    $D7     
       BNE    LF611   
       LDA    LFFBB,Y 
       AND    $D9     
       BEQ    LF63E   
       BNE    LF611   
LF602: LDA    LFFBB,Y 
       AND    $D9     
       BEQ    LF64A   
       LDA    $A8,X   
       AND    #$07    
       CMP    $D7     
       BEQ    LF63E   
LF611: LDA    $A8,X   
       AND    #$07    
       TAY            
       LDA    LFFBB,Y 
       EOR    $DA     
       STA    $D9     
       JSR    LFF94   
       JSR    LFEF5   
       STA    $D6     
       STY    $D7     
       AND    #$07    
       TAY            
       LDA    LFFBB,Y 
       AND    $D9     
       BNE    LF63D   
       LDA    $D6     
       STA    $A8,X   
       LDA    $9E,X   
       AND    #$7C    
       ORA    $D7     
       STA    $9E,X   
LF63D: RTS            

LF63E: JSR    LFEF5   
       JSR    LFEE8   
       LSR            
       BCC    LF63D   
       JMP    LF365   
LF64A: LDA    $A8,X   
       AND    #$07    
       TAY            
       LDA    LFFBB,Y 
       EOR    $D9     
       STA    $D9     
       JSR    LFEF5   
       JSR    LFEE8   
       LDA    $A8,X   
       AND    #$07    
       TAY            
       LDA    LFFBB,Y 
       AND    $D9     
       BEQ    LF63D   
       LDX    #$07    
       JMP    LF365   
LF66D: LDA    $C0     
       AND    #$01    
       BNE    LF696   
       LDX    #$08    
LF675: LDA    $B6,X   
       BEQ    LF691   
       DEC    $B6,X   
       BNE    LF691   
       DEC    $D5     
       LDA    $D3     
       CMP    #$30    
       BCS    LF687   
       INC    $D3     
LF687: LDA    $9E,X   
       ASL            
       BPL    LF68E   
       DEC    $D1     
LF68E: JMP    LF80A   
LF691: DEX            
       CPX    #$05    
       BCS    LF675   
LF696: RTS            

LF697: LDA    $99     
       SEC            
       SBC    #$02    
       LDX    #$08    
       CMP    $94,X   
       BCS    LF6A4   
       BCC    LF6AC   
LF6A4: LDX    #$06    
       CMP    $94,X   
       BEQ    LF6AF   
       BCC    LF6AF   
LF6AC: JSR    LF365   
LF6AF: LDX    #$01    
       BIT    $BF     
       BVC    LF6C2   
       LDA    $9F     
       EOR    #$08    
       STA    $9F     
       DEC    $C9     
       BNE    LF6CF   
       JSR    LF760   
LF6C2: JSR    LF734   
       LDA    $9E,X   
       BPL    LF6CF   
       LDA    #$18    
       LDY    #$03    
       BNE    LF6F4   
LF6CF: LDA    $9E,X   
       LSR            
       LSR            
       LSR            
       LSR            
       AND    #$03    
       TAY            
       LDA    $C0     
       CPY    #$00    
       BEQ    LF6EA   
       LSR            
       LSR            
       CPY    #$01    
       BEQ    LF6EA   
       LSR            
       CPY    #$03    
       BEQ    LF6EA   
       LSR            
LF6EA: AND    LF050,Y 
       ASL            
       ASL            
       CPY    #$02    
       BEQ    LF6F4   
       ASL            
LF6F4: CLC            
       ADC    LF758,Y 
       SEC            
       SBC    $94,X   
       STA    $B2,X   
       INX            
       CPX    #$05    
       BNE    LF6CF   
LF702: JSR    LF734   
       LDA    $9E,X   
       ASL            
       ASL            
       AND    #$20    
       STA    $D6     
       LDA    $C0     
       AND    #$0C    
       BCC    LF715   
       AND    #$04    
LF715: ASL            
       LDY    $B6,X   
       BEQ    LF71F   
       TYA            
       AND    #$01    
       ORA    #$18    
LF71F: CPX    #$05    
       BEQ    LF725   
       ORA    $D6     
LF725: CLC            
       ADC    LF757,X 
       SEC            
       SBC    $94,X   
       STA    $B2,X   
       INX            
       CPX    #$09    
       BNE    LF702   
       RTS            

LF734: LDA    $9E,X   
       ASL            
       BMI    LF74B   
       LSR            
       LSR            
       BCS    LF74A   
       LSR            
       LDA    $9E,X   
       BCS    LF746   
       AND    #$F7    
       BCC    LF748   
LF746: ORA    #$08    
LF748: STA    $9E,X   
LF74A: RTS            

LF74B: LDA    $9E,X   
       AND    #$F7    
       EOR    $C0     
       AND    #$F7    
       EOR    $C0     
       STA    $9E,X   
LF757: RTS            

LF758: .byte $CA,$DA,$F9,$4B,$6B,$8A,$8A,$8A
LF760: LDA    #$46    
       STA    $81     
       LDA    #$C4    
       STA    $8B     
       LDA    #$B0    
       STA    $9F     
       LDA    #$01    
       STA    $C4     
       DEC    $C2     
       BEQ    LF77D   
       LDA    #$1B    
       STA    $95     
       LDA    #$80    
       STA    $BF     
       RTS            

LF77D: LDA    #$56    
       STA    $95     
       LDA    #$01    
       STA    $BF     
       RTS            

LF786: LDA    $C0     
       LSR            
       LDX    #$00    
       BCC    LF78F   
       LDX    #$09    
LF78F: STX    $D7     
       LDA    $9E,X   
       BMI    LF7B7   
       BIT    COLUP0  
       BMI    LF801   
       CPX    #$00    
       BEQ    LF7A5   
       BIT    WSYNC   
       BVS    LF7B8   
       DEC    $CB     
       BPL    LF7B3   
LF7A5: BIT    RSYNC   
       BVC    LF7AC   
       JSR    LF7C2   
LF7AC: BIT    NUSIZ1  
       BVC    LF7B3   
       JSR    LF7C6   
LF7B3: BIT    NUSIZ0  
       BVS    LF81C   
LF7B7: RTS            

LF7B8: LDA    #$40    
       STA    $BF     
       LDA    #$F0    
       STA    $C9     
       BNE    LF801   
LF7C2: LDX    #$05    
       BNE    LF7CB   
LF7C6: LDA    #$08    
       JSR    LF835   
LF7CB: LDA    $B6,X   
       BNE    LF7EA   
       JSR    LF84F   
       LDA    #$15    
       STA    $B6,X   
       INC    $D5     
       LDA    #$32    
       DEC    $CE     
       BEQ    LF7E8   
       LDA    $C8     
       ASL            
       ASL            
       EOR    #$FF    
       ADC    #$AA    
       BCC    LF7EA   
LF7E8: STA    $CA     
LF7EA: RTS            

LF7EB: CPX    #$07    
       BEQ    LF7F7   
       BCC    LF7FD   
LF7F1: TXA            
       TAY            
       DEX            
       JSR    LF39B   
LF7F7: TXA            
       TAY            
       DEX            
       JSR    LF39B   
LF7FD: LDA    #$07    
       STA    $A8,X   
LF801: LDA    #$80    
       STA    $9E,X   
       LDA    #$54    
       STA    $94,X   
LF809: RTS            

LF80A: CPX    #$05    
       BNE    LF7EB   
       LDX    #$06    
       LDY    #$05    
       JSR    LF39B   
       CLC            
       ADC    #$02    
       STA    $99     
       BNE    LF7FD   
LF81C: LDA    #$04    
       JSR    LF835   
       LDA    $9E,X   
       AND    #$20    
       BNE    LF809   
       DEC    $CD     
       LDA    #$37    
       STA    $D4     
LF82D: CPX    #$03    
       BEQ    LF7F7   
       BCC    LF7FD   
       BCS    LF7F1   
LF835: STA    $D6     
       LDA    $94,X   
       LDX    $D6     
       SEC            
       SBC    #$09    
LF83E: BCC    LF84A   
       CMP    $94,X   
       BCC    LF84A   
       DEX            
       CMP    $94,X   
       BCC    LF84A   
       DEX            
LF84A: RTS            

LF84B: .byte $10,$20,$30,$50
LF84F: LDA    $CF     
       SEC            
       SBC    $CE     
       TAY            
       CPY    #$03    
       BNE    LF861   
       LDA    $C2     
       CMP    #$09    
       BEQ    LF861   
       INC    $C2     
LF861: LDA    LF84B,Y 
       LDY    $D7     
       BNE    LF875   
       SED            
       CLC            
       ADC    $CC     
       STA    $CC     
       LDA    $C8     
       ADC    #$00    
       STA    $C8     
       CLD            
LF875: RTS            

LF876: LDA    REFP1   
       AND    PF0     
       BMI    LF8BC   
       LDA    $C5     
       BNE    LF8BB   
       BIT    $9E     
       BPL    LF8BB   
       BIT    $9F     
       BMI    LF8BB   
       LDA    $C9     
       BNE    LF8BB   
       LDA    #$01    
       BIT    $BF     
       BNE    LF8BB   
       BMI    LF8BB   
       LDA    $C1     
       BEQ    LF8BB   
       SED            
       SEC            
       SBC    #$01    
       STA    $C1     
       CLD            
       LDA    #$28    
       STA    $D4     
       INC    $C5     
       LDA    $C4     
       STA    $9E     
       LDY    $95     
       INY            
       INY            
       STY    $94     
       LDA    $81     
       CLC            
       ADC    #$04    
       STA    $80     
       JSR    LF345   
       STA    $8A     
LF8BB: RTS            

LF8BC: LDA    #$00    
       STA    $C5     
       RTS            

LF8C1: BIT    $BF     
       BVS    LF91D   
       LDX    #$04    
       STX    $D7     
       LDA    $C0     
       LSR            
       BCS    LF8D9   
       LDX    #$09    
       LDA    $B2     
       CLC            
       ADC    #$0B    
       AND    #$0F    
       STA    $B2     
LF8D9: LDA    $9E,X   
       BMI    LF918   
       LSR            
       BCS    LF8FD   
       LSR            
       LDA    LF03C,X 
       AND    #$7F    
       BCC    LF8EA   
       EOR    #$FF    
LF8EA: JSR    LF0F3   
       ADC    $80,X   
       STA    $80,X   
       CMP    #$94    
       BCS    LF914   
       JSR    LF345   
       STA    $8A,X   
       JMP    LF918   
LF8FD: LSR            
       LDA    LF046,X 
       AND    #$7F    
       BCC    LF907   
       EOR    #$FF    
LF907: JSR    LF0F3   
       STA    $D6     
       ADC    $94,X   
       STA    $94,X   
       CMP    #$50    
       BCC    LF918   
LF914: LDA    #$00    
       STA    $94,X   
LF918: DEX            
       DEC    $D7     
       BPL    LF8D9   
LF91D: RTS            

LF91E: .byte $31,$31,$01,$01,$0D,$19,$19,$31,$49,$49
LF928: .byte $01,$90,$18,$74,$46,$08,$84,$46,$28,$64
LF932: .byte $04,$44,$08,$38,$21,$02,$42,$24,$16,$36
LF93C: LDA    $C0     
       LSR            
       BCS    LF984   
       LDA    $CE     
       ADC    $D5     
       CMP    $CF     
       BEQ    LF980   
       LDA    $CA     
       BNE    LF981   
       LDY    #$08    
       JSR    LF99F   
       BCS    LF980   
       INC    $CE     
       LDA    $D1     
       CMP    $D2     
       LDA    #$00    
       STA    $B6,X   
       BCS    LF964   
       INC    $D1     
       LDA    #$40    
LF964: LSR            
       ORA    $DC     
       ASL            
       STA    $9E,X   
LF96A: LDY    $DC     
       LDA    LF91E,Y 
       STA    $94,X   
       LDA    LF932,Y 
       STA    $A8,X   
       LDA    LF928,Y 
       STA    $80,X   
       JSR    LF345   
       STA    $8A,X   
LF980: RTS            

LF981: DEC    $CA     
       RTS            

LF984: LDA    $CD     
       CMP    #$02    
       BEQ    LF980   
       BIT    $BF     
       BMI    LF980   
       LDY    #$04    
       JSR    LF99F   
       BCS    LF980   
       INC    $CD     
       JSR    LFC00   
       AND    #$10    
       JMP    LF964   
LF99F: JSR    LFC00   
       AND    #$01    
       STA    $DC     
LF9A6: STY    $DB     
       LDA    #$02    
       JSR    LFF53   
       LDY    $DC     
       LDA    LF932,Y 
       AND    #$07    
       TAY            
       LDX    $DB     
       LDA    LFFBB,Y 
       BIT    $D9     
       BNE    LF9CF   
       SEC            
       SBC    #$01    
       BIT    $D9     
       BEQ    LF9D1   
       DEX            
       EOR    #$FF    
       BIT    $D9     
       BNE    LF9D9   
       DEX            
       BNE    LF9DF   
LF9CF: SEC            
       RTS            

LF9D1: DEX            
       TXA            
       TAY            
       DEY            
       JSR    LF39B   
       INX            
LF9D9: TXA            
       TAY            
       DEY            
       JSR    LF39B   
LF9DF: CLC            
       RTS            

LF9E1: LDA    #$00    
       STA    $C7     
       BIT    $BF     
       BVS    LFA35   
       BMI    LFA35   
       LDA    $C0     
       AND    #$0F    
       BNE    LFA49   
       BIT    $A8     
       BPL    LFA0E   
       INC    $A8     
       BMI    LFA35   
       LDX    #$04    
       LDA    #$20    
       BIT    $A2     
       BNE    LFA07   
       DEX            
       BIT    $A1     
       BNE    LFA07   
       DEX            
LFA07: LDA    #$5A    
       STA    $A8     
       JMP    LF82D   
LFA0E: LDA    $BF     
       LSR            
       BCS    LFA35   
       DEC    $A8     
       BPL    LFA35   
       JSR    LFC00   
       AND    #$07    
       CLC            
       ADC    #$02    
       STA    $DC     
       LDY    #$04    
       JSR    LF9A6   
       BCS    LFA33   
       LDA    #$A0    
       STA    $9E,X   
       LDA    #$E0    
       STA    $A8     
       JMP    LF96A   
LFA33: INC    $A8     
LFA35: RTS            

LFA36: LDA    #$F8    
       STA    $D4     
       SED            
       LDA    $C1     
       CLC            
       ADC    #$10    
       BCC    LFA44   
       LDA    #$99    
LFA44: STA    $C1     
       CLD            
       BNE    LFA07   
LFA49: LDA    $D4     
       CMP    #$37    
       BEQ    LFA35   
       BIT.w  $0000   
       BVC    LFA35   
       LDX    #$04    
       LDA    $95     
       SEC            
       SBC    #$0D    
       JSR    LF83E   
       LDA    $80,X   
       SEC            
       SBC    $81     
       BCS    LFA67   
       EOR    #$FF    
LFA67: CMP    #$0A    
       BCC    LFA6C   
       DEX            
LFA6C: LDA    $9E,X   
       AND    #$30    
       CMP    #$10    
       BEQ    LFA7B   
       BCS    LFA36   
       LDA    #$51    
       STA    $C9     
       RTS            

LFA7B: SED            
       LDA    $C1     
       SEC            
       SBC    #$01    
       CLD            
       BCC    LFA35   
       STA    $C1     
       ASL            
       ASL            
       STA    $C7     
       RTS            

LFA8B: LDA    $D4     
       BEQ    LFA9C   
       BPL    LFA98   
       INC    $D4     
       ASL            
       ADC    #$00    
       BNE    LFA9C   
LFA98: DEC    $D4     
       LSR            
       LSR            
LFA9C: ORA    $C7     
       STA    AUDV0   
       LDA    #$08    
       EOR    $C7     
       STA    AUDC0   
       STA    AUDF0   
       LDA    #$01    
       BIT    $BF     
       BNE    LFAC3   
       BVS    LFADE   
       LDA    $D5     
       BNE    LFAED   
       LDA    $CE     
       BEQ    LFAC3   
       LDA    #$0A    
       SEC            
       SBC    $CE     
       SBC    $D1     
       STA    AUDF1   
       LDA    #$04    
LFAC3: AND    #$FE    
       STA    AUDV1   
       LDX    #$02    
       BIT    $A8     
       BPL    LFADB   
       LDA    $C0     
       AND    #$03    
       BNE    LFADB   
       LDA    $C0     
       AND    #$10    
       LSR            
       ADC    #$04    
       TAX            
LFADB: STX    AUDC1   
       RTS            

LFADE: LDA    #$04    
       STA    AUDC1   
       ASL            
       STA    AUDV1   
       LDA    $C0     
       ASL            
       AND    #$0E    
       STA    AUDF1   
       RTS            

LFAED: CLC            
       ADC    #$08    
       STA    AUDV1   
       LDA    #$02    
       STA    AUDC1   
       LDA    $C0     
       AND    #$04    
       ADC    #$02    
       STA    AUDF1   
       RTS            

LFAFF: .byte $FF
LFB00: .byte $F3,$79,$73,$7A,$7B,$7A,$79,$70,$75,$76,$7D,$73,$7E,$7B,$7C,$70
       .byte $76,$79,$77,$7E,$79,$77,$79,$F0,$F3,$7F,$7E,$79,$77,$7C,$75,$70
       .byte $75,$75,$78,$77,$7F,$7A,$7D,$70,$76,$7F,$7B,$7C,$77,$79,$75,$70
       .byte $73,$5C,$07,$0B,$0C,$07,$0C,$00,$05,$03,$5D,$76,$7B,$7E,$79,$70
       .byte $76,$7C,$76,$7A,$7E,$7A,$7C,$70,$70,$70,$70,$70,$70,$70,$70,$70
       .byte $70,$70,$70,$F0
LFB54: .byte $FF,$AA,$00,$00,$00,$00,$00,$00,$00,$00,$2A,$3E,$3E,$2A,$02,$02
       .byte $02,$02,$02,$02,$02,$02,$A2,$E3,$E3,$A2,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$2A,$3E,$3E,$2A,$20,$20,$20,$20,$20,$20,$20,$20,$22,$22
       .byte $22,$22,$02,$02,$02,$02,$02,$02,$02,$02,$22,$23,$23,$22,$20,$20
       .byte $20,$20,$20,$20,$20,$20,$22,$22,$22,$22,$02,$02,$02,$02,$02,$02
       .byte $02,$02,$AA,$FF
LFBA8: .byte $FF,$55,$04,$04,$04,$04,$04,$04,$04,$04,$44,$C4,$C4,$44,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$45,$47,$C7,$C5,$40,$C0,$40,$C0,$40,$C0
       .byte $C0,$C0,$C4,$C4,$C4,$44,$04,$04,$04,$04,$04,$04,$04,$04,$54,$7C
       .byte $7C,$54,$00,$00,$00,$00,$00,$00,$00,$00,$45,$47,$47,$45,$40,$40
       .byte $40,$40,$40,$40,$40,$40,$54,$7C,$7C,$54,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$55,$FF
LFBFC: .byte $08,$01,$F8,$FF
LFC00: LDA    $B1     
       ASL            
       ASL            
       ASL            
       EOR    $B1     
       ASL            
       ROL    $B1     
       LDA    $B1     
       EOR    $C0     
       RTS            

LFC0F: BIT    $BF     
       BMI    LFC2E   
       LDY    #$06    
       BIT    $C6     
       BVS    LFC1F   
       LDA    $D3     
       LSR            
       LSR            
       LSR            
       TAY            
LFC1F: LDA    LFC43,Y 
       PHA            
       AND    #$03    
       STA    $CF     
       INC    $CF     
       PLA            
       LSR            
       LSR            
       STA    $D2     
LFC2E: LDA    $CE     
       BEQ    LFC38   
       LDA    #$00    
       BIT    $BF     
       BPL    LFC40   
LFC38: LDA    $C0     
       AND    #$20    
       BEQ    LFC40   
       LDA    #$01    
LFC40: STA    $C3     
       RTS            

LFC43: .byte $01,$02,$06,$07,$0B,$0F,$13,$FF,$0C,$1C,$38,$1E,$38,$28,$08,$00
       .byte $0C,$1C,$38,$38,$30,$30,$20,$00,$0C,$1C,$38,$1E,$38,$6C,$40,$00
       .byte $0C,$3D,$5E,$18,$3C,$E2,$02,$00,$3C,$30,$3C,$18,$3C,$3C,$0C,$00
       .byte $3C,$30,$3C,$18,$3C,$0C,$3C,$00,$3C,$30,$3C,$18,$3C,$30,$3C,$00
       .byte $3C,$30,$3C,$18,$3C,$3C,$30,$00,$00,$DA,$06,$0A,$F6,$1A,$0A,$E6
       .byte $00,$DA,$06,$0A,$F6,$1A,$E6,$2A,$00,$DA,$06,$0A,$F6,$1A,$06,$0A
       .byte $00,$DA,$06,$0A,$F6,$1A,$0A,$06,$00,$DA,$E6,$2A,$F6,$1A,$0A,$06
       .byte $00,$DA,$E6,$2A,$F6,$1A,$06,$0A,$00,$DA,$E6,$2A,$F6,$1A,$E6,$2A
       .byte $00,$DA,$E6,$2A,$F6,$1A,$0A,$E6,$00,$E2,$02,$FA,$F6,$1A,$FA,$D2
       .byte $00,$92,$02,$4A,$F6,$1A,$1A,$02,$00,$BA,$2A,$2A,$EA,$EA,$2A,$2A
       .byte $00,$DA,$2E,$EA,$F6,$1A,$2E,$EA,$00,$FA,$EA,$EA,$2A,$2A,$EA,$EA
       .byte $00,$DA,$F6,$1A,$2E,$EA,$F6,$00,$0E,$FA,$06,$06,$00
LFD00: LDA    #$BD    
       SEC            
       SBC    $94     
       STA    $F0     
       LDA    $95     
       PHA            
       EOR    #$FF    
       SEC            
       ADC    #$56    
       STA    $EC     
       LDA    $99     
       PHA            
       EOR    #$FF    
       SEC            
       ADC    #$56    
       STA    $EE     
       LDX    #$02    
LFD1D: LDA    $8C,X   
       AND    #$0F    
       TAY            
       LDA    LF331,Y 
       STA    $D6,X   
       LDA    $90,X   
       AND    #$0F    
       TAY            
       LDA    LF33B,Y 
       STA    $DA,X   
       DEX            
       BPL    LFD1D   
       STX    $95     
       STX    $99     
       STA    WSYNC   
       LDA    #$FF    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       LDA    #$06    
       STA    COLUPF  
       LDA    #$A0    
       STA    COLUBK  
       LDA    #$00    
       STA    CTRLPF  
       LDA    #$D0    
       STA    HMP0    
       LDA    #$E0    
       STA    HMP1    
       STA    RESP0   
       STA    RESP1   
       LDA    #$00    
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$01    
       STA    VDELP0  
       STA    VDELP1  
       LDA    #$00    
       STA    WSYNC   
       STA    HMOVE   
       STA    VBLANK  
       STA    GRP0    
       STA    GRP1    
       STA    GRP0    
       STA    REFP0   
       STA    REFP1   
       LDY    #$05    
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    HMCLR   
LFD82: LDA    ($EA),Y 
       TAX            
       LDA    ($E0),Y 
       STA    WSYNC   
       STA    HMOVE   
       STY    $ED     
       STA    GRP0    
       LDA    ($E2),Y 
       STA    GRP1    
       LDA    ($E4),Y 
       STA    GRP0    
       LDA    ($E6),Y 
       STA    $EF     
       LDA    ($E8),Y 
       LDY    $EF     
       STY    GRP1    
       STA    GRP0    
       STX    GRP1    
       STX    GRP0    
       LDY    $ED     
       DEY            
       BPL    LFD82   
       LDX    $C3     
       LDA    LF054,X 
       STA    COLUP0  
       STA    COLUP1  
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$00    
       STA    VDELP0  
       STA    VDELP1  
       STA    GRP0    
       STA    GRP1    
       LDA    $C1,X   
       AND    #$0F    
       TAY            
       LDA    LF0C3,Y 
       STA    $E2     
       LDA    $C1,X   
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    LF0C3,Y 
       STA    $E0     
       LDA    #$20    
       STA    HMP0    
       LDA    #$30    
       STA    RESP0   
       STA    RESP1   
       STA    HMP1    
       LDY    #$06    
LFDE7: STA    WSYNC   
       STA    HMOVE   
       DEC    $E0     
       LDX    $E0     
       LDA    LF000,X 
       STA    GRP0    
       DEC    $E2     
       LDX    $E2     
       LDA    LF000,X 
       STA    GRP1    
       LDA    #$00    
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    HMCLR   
       DEY            
       BNE    LFDE7   
       LDA    $B3     
       STA    $E2     
       LDA    $B7     
       STA    $E4     
       STA    WSYNC   
       STA    HMOVE   
       STY    GRP0    
       STY    GRP1    
       LDA    #$04    
       STA    $DD     
       ASL            
       STA    $D9     
       LDA    #$F0    
       STA    $ED     
       STA    $EF     
       STA    $F1     
       LDA    #$FC    
       STA    $E3     
       STA    $E5     
       STA    $E7     
       STA    $E9     
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$AA    
       STA    COLUP0  
       LDA    $CF     
       SEC            
       SBC    $CE     
       SBC    $D5     
       TAY            
       LDA    LFE60,Y 
       STA    COLUP1  
       LDA    #$15    
       STA    CTRLPF  
       LDA    $9F     
       STA    REFP0   
       LDA    $A3     
       STA    REFP1   
       LDA    $8F     
       LDY    #$03    
       STA    WSYNC   
       STA.w  $002A   
       BNE    LFE6B   
       .byte $14 ;.NOP
       BPL    LFE71   
LFE60: ROR            
       LSR            
       DEX            
       NOP            
LFE64: STA    WSYNC   
       STA    HMOVE   
       LDA.wy $0089,Y 
LFE6B: LDX    LFE5C,Y 
       AND    #$0F    
       SEC            
LFE71: SBC    #$01    
       BPL    LFE71   
       DEY            
       STA    VSYNC,X 
       BNE    LFE64   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$00    
       STA    $DE     
       LDA    #$F1    
       STA    $DF     
       LDA    #$41    
       STA    $E0     
       LDA    #$F2    
       STA    $E1     
       LDA    $8A     
       STA    HMBL    
       LDA    $8B     
       STA    HMP0    
       LDA    $8F     
       STA    HMP1    
       STA    CXCLR   
       STA    WSYNC   
       STA    HMOVE   
       LDA    ($EC),Y 
       BPL    LFEAC   
       LDA    ($E2),Y 
       STA.w  $001B   
       JMP    LF100   
LFEAC: NOP            
       NOP            
       NOP            
       JMP.ind ($00DE)
LFEB2: .byte $85,$02,$85,$2A,$85,$02,$A9,$02,$85,$01,$68,$85,$99,$68,$85,$95
LFEC2: RTS            

LFEC3: LDA    $C0     
       LSR            
       BCS    LFEF4   
       AND    #$03    
       CLC            
       ADC    #$01    
       TAX            
       LDA    $9E,X   
       BPL    LFEF4   
       AND    #$20    
       BNE    LFEF4   
       LDA    $94,X   
       CMP    #$54    
       BCS    LFEF4   
       LDY    #$04    
       JSR    LFF51   
       LDA    #$0F    
       STA    $D8     
       JMP    LF611   
LFEE8: STA    $A8,X   
       STY    $D7     
       LDA    $9E,X   
       AND    #$7C    
       ORA    $D7     
       STA    $9E,X   
LFEF4: RTS            

LFEF5: LDA    $9E,X   
       AND    #$03    
       EOR    #$02    
       STA    $D7     
       TAY            
       LDA    LFFBB,Y 
       EOR    #$FF    
       AND    $D8     
       LDY    $A8,X   
       AND    LFB00,Y 
       BEQ    LFF48   
       ASL            
       ASL            
       STA    $D8     
       JSR    LFC00   
       STA    $D7     
       LDA    $9E,X   
       ASL            
       BMI    LFF1E   
       CPX    #$05    
       BCS    LFF2F   
LFF1E: LDA    $95     
       CMP    $94,X   
       LDA    #$00    
       ROL            
       LDY    $80,X   
       CPY    $81     
       BCC    LFF32   
       EOR    #$03    
       BCS    LFF32   
LFF2F: LDA    $D7     
       LSR            
LFF32: AND    #$03    
       ORA    $D8     
       TAY            
       LDA    LF069,Y 
       LSR            
       LSR            
       LSR    $D7     
       BCS    LFF42   
       LSR            
       LSR            
LFF42: AND    #$03    
       TAY            
       JMP    LFF4A   
LFF48: LDY    $D7     
LFF4A: LDA    LFBFC,Y 
       CLC            
       ADC    $A8,X   
       RTS            

LFF51: LDA    #$03    
LFF53: STX    $D6     
       LDX    #$00    
       STX    $D9     
       STX    $DA     
       STA    $D7     
LFF5D: LDA.wy $00A8,Y 
       AND    #$07    
       TAX            
       LDA    LFFBB,X 
       ORA    $D9     
       STA    $D9     
       LDA    LFFBB,X 
       ORA    $DA     
       STA    $DA     
       LDA.wy $009E,Y 
       BMI    LFF8C   
       EOR    #$02    
       AND    #$03    
       TAX            
       LDA    LFBFC,X 
       CLC            
       ADC.wy $00A8,Y 
       AND    #$07    
       TAX            
       LDA    LFFBB,X 
       ORA    $D9     
       STA    $D9     
LFF8C: DEY            
       DEC    $D7     
       BNE    LFF5D   
       LDX    $D6     
       RTS            

LFF94: LDA    $A8,X   
       AND    #$07    
       TAY            
       BEQ    LFFA8   
       DEY            
       LDA    LFFBB,Y 
       INY            
       AND    $D9     
       BEQ    LFFA8   
       LDA    #$07    
       STA    $D8     
LFFA8: CPY    #$06    
       BEQ    LFFBA   
       INY            
       LDA    LFFBB,Y 
       AND    $D9     
       BEQ    LFFBA   
       LDA    #$0D    
       AND    $D8     
       STA    $D8     
LFFBA: RTS            

LFFBB: .byte $01,$02,$04,$08,$10,$20,$40,$80
LFFC3: LDA    $8A     
       LDY    $93     
       STA    $93     
       STY    $8A     
       LDA    $94     
       LDY    $9D     
       STA    $9D     
       STY    $94     
       RTS            

LFFD4: LDX    #$08    
LFFD6: LDA    #$F0    
       STA    $E1,X   
       STA    $E3,X   
       LDA    $C8,X   
       AND    #$0F    
       TAY            
       LDA    LF0C2,Y 
       STA    $E2,X   
       LDA    $C8,X   
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    LF0C2,Y 
       STA    $E0,X   
       DEX            
       DEX            
       DEX            
       DEX            
       BPL    LFFD6   
       RTS            

LFFF9: .byte $FF,$41,$F4,$41,$F4,$41,$F4
