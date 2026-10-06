; Disassembly of roms/Raft Rider.bin
; Disassembled Tue Oct  6 15:22:41 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Raft Rider.bin
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
RESP0   =  $10
RESP1   =  $11
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
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXP1FB  =  $33
CXPPMM  =  $37
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM8T   =  $0295
TIM64T  =  $0296
T1024T  =  $0297

       ORG $B000

START:
       JMP    LB5DF   
LB003: .byte $00,$00,$00,$00,$00,$FF,$FF,$FF,$3F,$79,$3B,$B3,$93,$87,$C7,$CF
       .byte $31,$B2,$B6,$BC,$F8,$70,$00,$30,$30,$28,$78,$30,$30,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00
LB077: .byte $00,$00,$00,$00,$00,$00,$00,$01,$00,$00,$01,$00,$01,$00,$01,$01
       .byte $01,$01,$01,$01,$00
LB08C: .byte $00
LB08D: .byte $08,$29,$56,$19,$35,$70,$23,$43
LB095: .byte $04,$0B,$07,$0D,$01,$01,$01,$01,$01,$00
LB09F: .byte $00,$00,$08,$08,$1C,$7E,$7E,$89,$08,$3E,$7E,$49,$0C,$1C,$1E,$2A
       .byte $09,$1C,$2A,$08,$08,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$FF,$FF,$DF,$BD,$BB,$BB,$B3
       .byte $93,$87,$C7,$CF,$30,$38,$74,$BC,$F8,$70,$00,$30,$30,$30,$78,$30
       .byte $30,$00,$38,$44,$44,$44,$44,$44,$38,$00,$38,$10,$10,$10,$10,$30
       .byte $10,$00,$7C,$40,$40,$38,$04,$44,$38,$00,$38,$44,$04,$18,$04,$44
       .byte $38,$00,$08,$08,$7C,$48,$28,$18,$08,$00,$38,$44,$04,$04,$78,$40
       .byte $7C,$00,$38,$44,$44,$78,$40,$20,$1C,$00,$20,$20,$20,$10,$08,$04
       .byte $7C,$00,$38,$44,$44,$38,$44,$44,$38,$00,$70,$08,$04,$3C,$44,$44
       .byte $38
LB170: LDA    $F3     
       BMI    LB17D   
       CMP    #$03    
       BCS    LB17F   
       ASL            
       ORA    #$01    
       BCC    LB17F   
LB17D: LDA    #$00    
LB17F: STA    $F3     
       RTS            

LB182: .byte $00,$82,$44,$7E,$7F,$FF,$BF,$8A,$8E,$88,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00
LB1DC: LDY    $E2     
       BEQ    LB1E2   
       DEC    $E2     
LB1E2: LDA    ($EC),Y 
       STA    AUDV0   
       LDA    ($E4),Y 
       STA    AUDF0   
       LDA    ($E8),Y 
       STA    AUDC0   
       LDY    $E3     
       BEQ    LB1F4   
       DEC    $E3     
LB1F4: LDA    LB500,Y 
       STA    AUDV1   
       LDA    ($E6),Y 
       STA    AUDF1   
       LDA    ($EA),Y 
       STA    AUDC1   
       RTS            

LB202: LDX    $DD     
       BEQ    LB216   
       DEC    $DD     
       LDA    $86     
       CMP    #$20    
       BCC    LB210   
       DEC    $86     
LB210: CPY    $96     
       BCS    LB216   
       INC    $96     
LB216: RTS            

LB217: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$F2,$F2,$F2
       .byte $F2,$F2,$F2,$F2,$F2,$F2,$F2,$F2,$F2,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$F2,$F2,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00
LB2DC: LDX    #$08    
LB2DE: LDA    $D2,X   
       CMP    #$68    
       BEQ    LB2EA   
       CLC            
       ADC    #$08    
       STA    $D2,X   
LB2E9: RTS            

LB2EA: LDA    #$20    
       STA    $D2,X   
       DEX            
       DEX            
       BMI    LB2E9   
       JMP    LB2DE   
LB2F5: CLC            
       ADC    #$2E    
       TAY            
       AND    #$0F    
       STA    $CF     
       TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       CLC            
       ADC    $CF     
       CMP    #$0F    
       BCC    LB30D   
       SBC    #$0F    
       INY            
LB30D: EOR    #$07    
       ASL            
       ASL            
       ASL            
       ASL            
       DEY            
       DEY            
       DEY            
       RTS            

LB317: STA    WSYNC   
LB319: DEY            
       BPL    LB319   
       STA    RESP0,X 
       STA    HMP0,X  
       STA    WSYNC   
       STA    HMOVE   
       RTS            

LB325: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$F2
       .byte $F2,$F2,$F2,$F2,$F2,$F2,$F2,$F2,$F2,$F2,$F2,$F2,$F2,$F2,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$F2,$F2,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00
LB40F: LDX    #$01    
LB411: LDA    $A5,X   
       CMP    #$07    
       BCS    LB42F   
       LDA    #$93    
       STA    $A5,X   
       JSR    LBDCC   
       PHA            
       AND    #$01    
       STA    $CE,X   
       PLA            
       LSR            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    LB08D,Y 
       STA    $C0,X   
LB42F: DEX            
       BPL    LB411   
       RTS            

LB433: .byte $FF,$FF,$FF,$FF
LB437: LDA    #$02    
       STA    WSYNC   
       STA    VBLANK  
       STA    VSYNC   
       LDA    #$29    
       STA    TIM8T   
       RTS            

LB445: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$FF,$CF,$DF,$DF,$99,$9B,$B3,$93,$87,$C7,$CF,$30,$30
       .byte $30,$FE,$FE,$B2,$82,$B2,$B2,$B8,$FA,$30,$30,$00,$00,$00,$00,$FE
       .byte $FE,$FE,$7C,$7C,$38,$10
LB4BB: .byte $00,$00,$00,$00,$00,$00,$7E,$7E,$1C,$08,$00,$00,$00,$2A,$2A,$3E
       .byte $FE,$FF,$4C,$20,$90,$70,$60,$80,$00,$00,$00,$00,$00,$7C,$38,$10
       .byte $00,$00,$00,$00,$00
LB4E0: LDX    $E2     
       BNE    LB4F4   
       LDX    #$09    
       STX    $E2     
       LDX    #$32    
       STX    $E4     
       LDX    #$28    
       STX    $E8     
       LDX    #$46    
       STX    $EC     
LB4F4: LDX    #$00    
       RTS            

LB4F7: STA    $D2,X   
       DEX            
       DEX            
       BPL    LB4F7   
       RTS            

LB4FE: .byte $00,$00
LB500: .byte $00,$09,$09,$0A,$0B,$0C,$0B,$0A,$0F,$0F,$00,$09,$08,$07,$06,$05
       .byte $04,$03,$09,$09,$00,$00,$07,$07,$07,$07,$0A,$0A,$0A,$0A,$00,$0C
       .byte $0C,$0C,$0C,$0C,$0C,$0C,$08,$08,$00,$08,$08,$08,$08,$08,$08,$08
       .byte $08,$08,$00,$00,$09,$09,$08,$07,$06,$05,$04,$03,$00,$00,$07,$07
       .byte $07,$07,$07,$07,$07,$07,$00,$03,$04,$05,$06,$07,$06,$05,$04,$03
       .byte $00,$08,$07,$06,$07,$06,$00,$00,$00,$00,$00,$0F,$0F,$0F,$0F,$0F
       .byte $0F,$0F,$0F,$0F
LB564: .byte $1D,$1D,$1D,$1D,$1D,$00,$1A,$00,$1A,$17,$15,$1D,$17,$1D,$1A,$1D
       .byte $13
LB575: .byte $17,$17,$17,$17,$17,$1A,$15,$17,$15,$13,$13,$1D,$1D,$13,$13,$1D
       .byte $1D
LB586: .byte $03,$02,$45,$27,$9A,$A0,$B3,$B0,$93,$80,$07,$04,$0D,$0C,$35,$25
       .byte $BB,$BB,$BB,$B5,$B5,$B5,$B5,$B5,$B4,$B4,$B4
LB5A1: .byte $8E,$EE,$89,$8A,$D1,$08,$94,$8F,$93,$92,$F6,$15,$19,$16,$0A,$86
       .byte $99,$9B,$9D,$E5,$E7,$E9,$EB,$ED,$9A,$9C,$9E
LB5BC: STX    $EE     
       STX    $F8     
       STX    $F9     
       INX            
       STX    $F7     
       LDX    #$08    
       LDA    #$FC    
LB5C9: STA    $D2,X   
       SEC            
       SBC    #$10    
       DEX            
       DEX            
       BPL    LB5C9   
       LDA    #$B3    
       STA    $DA     
       STA    $DB     
       LDA    #$0F    
       STA    $F6     
       JMP    LB654   
LB5DF: SEI            
       CLD            
       LDX    #$FF    
       TXS            
       LDA    #$00    
LB5E6: STA    VSYNC,X 
       DEX            
       BNE    LB5E6   
       CPY    #$55    
       BEQ    LB602   
LB5EF: LDX    #$09    
       LDA    #$BF    
       JSR    LB4F7   
       LDX    #$FF    
       STX    $91     
       STX    $F3     
       STX    PF0     
       STX    CTRLPF  
       BNE    LB5BC   
LB602: LDA    SWCHB   
       INX            
       AND    #$01    
       BEQ    LB602   
       STX    $80     
       STX    $81     
       LDX    #$09    
       STX    $DC     
       LDA    #$B1    
       JSR    LB4F7   
       LDX    #$08    
       LDA    #$20    
       JSR    LB4F7   
       LDX    #$1A    
LB620: LDA    LB586,X 
       LDY    LB5A1,X 
       STA.wy $0000,Y 
       DEX            
       BPL    LB620   
       LDX    #$10    
LB62E: LDA    LB564,X 
       STA    AUDF0   
       LDA    LB575,X 
       STA    AUDF1   
       LDA    #$0A    
       STA    AUDV1   
       STA    $F5     
LB63E: LDY    #$FF    
       STY    $F3     
       STY    $F8     
LB644: DEY            
       STY    WSYNC   
       BNE    LB644   
       DEC    $F5     
       BPL    LB63E   
       DEX            
       BPL    LB62E   
       LDA    #$F0    
       STA    PF0     
LB654: JSR    LB437   
       JSR    LBDF1   
       LDA    $98     
       CMP    #$03    
       BNE    LB680   
       LDX    SWCHB   
       BPL    LB67D   
       LDX    #$09    
       LDY    #$C7    
       CPY    $99     
       BNE    LB673   
       CPX    $A0     
       BCS    LB673   
       DEC    $A0     
LB673: CPY    $9B     
       BNE    LB67D   
       CPX    $A2     
       BCS    LB67D   
       DEC    $A2     
LB67D: JSR    LB40F   
LB680: CMP    #$02    
       BNE    LB691   
       JSR    LBC37   
       LDY    $F7     
       BEQ    LB68F   
       DEC    $F7     
       BNE    LB691   
LB68F: DEC    $F8     
LB691: LDY    $D2     
       CPY    #$BC    
       BNE    LB69B   
       DEC    $F9     
       BEQ    LB6C7   
LB69B: CMP    #$01    
       BNE    LB6B3   
       LDX    #$05    
LB6A1: LDY    $9F,X   
       CPY    $86     
       BNE    LB6AA   
       JSR    LB4E0   
LB6AA: DEX            
       BPL    LB6A1   
       JSR    LB1DC   
       JSR    LBCFB   
LB6B3: LDA    $98     
       BNE    LB6BE   
       LDA    #$04    
       STA    $98     
       JSR    LBED8   
LB6BE: DEC    $98     
       LDA    SWCHB   
       AND    #$01    
       BNE    LB6CC   
LB6C7: LDY    #$55    
       JMP    LB5DF   
LB6CC: LDX    $97     
       DEX            
       BPL    LB6F0   
       LDY    #$0F    
       JSR    LB202   
       LDA    $EE     
       BMI    LB6EE   
       JSR    LBDA4   
       STX    $F7     
       JSR    LB2DC   
       LDA    #$10    
       CMP    $E0     
       BNE    LB6EE   
       INC    $A7     
       EOR    $E1     
       STA    $E1     
LB6EE: LDX    $96     
LB6F0: STX    $97     
       LDX    #$00    
       LDA    $D1     
       LDY    $F7     
       BNE    LB714   
       DEC    $D1     
       LDY    $D2     
       CPY    #$BC    
       BEQ    LB708   
       LDY    $D2     
       CPY    #$28    
       BCS    LB70A   
LB708: AND    #$F1    
LB70A: STA    COLUBK  
       STX    COLUPF  
       JSR    LBE00   
       JMP    LBB33   
LB714: STA    $D0     
       STA    COLUBK  
       LDY    #$D3    
       CPY    $99     
       BNE    LB722   
       DEC    $C3     
       STX    $C9     
LB722: CPY    $9B     
       BNE    LB72A   
       DEC    $C5     
       STX    $CB     
LB72A: LDX    $89     
       LDA    $8C     
       BEQ    LB732   
       LDX    $8A     
LB732: STX    $8B     
       JSR    LBE00   
       LDA    #$75    
       CMP    $86     
       BCS    LB73F   
       STA    $86     
LB73F: LDA    $87     
       LDY    $88     
       JSR    LB317   
       STA    WSYNC   
       STX    HMP0    
       LDA    $87     
       LDY    $88     
       LDX    #$04    
       JSR    LB317   
       INX            
       STX    CXCLR   
LB756: LDA    $D0     
       STA    COLUBK  
       SEC            
       SBC    #$10    
       STA    $D0     
       LDA    $9F,X   
       JSR    LB2F5   
       STA    $B1,X   
       STY    $A8,X   
       DEX            
       BPL    LB756   
       INX            
       STX    HMBL    
       STX    NUSIZ0  
       LDA    $86     
       JSR    LB2F5   
       INY            
       INY            
       INY            
       STA    $87     
       STY    $88     
       STA    WSYNC   
       LDA    $92     
       STA    HMBL    
       LDA    $8D     
       STA    REFP0   
       INX            
       LDA    $B7     
       LDY    $AE     
       JSR    LB317   
       LDA    #$B9    
       STA    COLUP1  
       LDA    $CE     
       STA    NUSIZ1  
       STX    VDELP0  
       LDX    #$14    
LB79A: LDY    $8B     
       LDA    ($8E),Y 
       STA    GRP0    
       LDA    LB09F,X 
       STA    WSYNC   
       STA    GRP1    
       LDA    LBD87,Y 
       STA    COLUP0  
       DEC    $8B     
       CPX    #$0C    
       BEQ    LB7BE   
       CPX    #$06    
       BNE    LB7C2   
       STX    HMBL    
       LDA    #$1B    
       STA    COLUBK  
       BNE    LB7C2   
LB7BE: LDA    #$17    
       STA    COLUBK  
LB7C2: DEX            
       BNE    LB79A   
       STX    VDELP0  
       LDX    #$05    
       STX    $85     
LB7CB: LDY    $8B     
       DEC    $8B     
       LDA    ($8E),Y 
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       LDA    ($93),Y 
       STA    ENABL   
       AND    $91     
       STA    HMBL    
       LDA    LBD87,Y 
       STA    COLUP0  
       DEC    $85     
       BPL    LB7CB   
       STA    WSYNC   
       LDA    #$97    
       STA    COLUBK  
       STA    VDELP1  
       LDY    $C8     
       STY    NUSIZ1  
       LDY    $C2     
       STY    COLUP1  
       LDY    $8B     
       DEC    $8B     
       LDX    LBD87,Y 
       LDA    ($8E),Y 
       STY    WSYNC   
       STA    GRP0    
       STX    COLUP0  
       LDY    $B1     
       LDY    $B1     
       LDX    $A8     
LB80D: DEX            
       BPL    LB80D   
       STY    RESP1   
       STY    HMP1    
       LDY    $8B     
       STY    WSYNC   
       STY    HMOVE   
       LDX    LBD87,Y 
       LDA    ($8E),Y 
       STA    GRP0    
       LDA    ($93),Y 
       STX    COLUP0  
       STA    ENABL   
       DEC    $8B     
       LDX    #$0C    
       STX    $85     
       STX    HMP1    
LB82F: LDY    $85     
       AND    $91     
       STA    HMBL    
       LDA    LB4BB,Y 
       LDY    $8B     
       STA    GRP1    
       LDA    ($8E),Y 
       DEC    $8B     
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       LDA    ($93),Y 
       STA    ENABL   
       LDX    LBD87,Y 
       STX    COLUP0  
       LDY    CXPPMM  
       BMI    LB855   
       STX    $95     
LB855: DEC    $85     
       BPL    LB82F   
       LDY    $C9     
       STY    NUSIZ1  
       LDY    $C3     
       STY    COLUP1  
       LDY    $8B     
       DEC    $8B     
       LDX    LBD87,Y 
       LDA    ($8E),Y 
       STY    WSYNC   
       STA    GRP0    
       STX    COLUP0  
       LDY    $B1     
       LDY    $B2     
       LDX    $A9     
LB876: DEX            
       BPL    LB876   
       STY    RESP1   
       STY    HMP1    
       LDY    $8B     
       STY    WSYNC   
       STY    HMOVE   
       LDX    LBD87,Y 
       LDA    ($8E),Y 
       STA    GRP0    
       LDA    ($93),Y 
       STX    COLUP0  
       STA    ENABL   
       DEC    $8B     
       LDX    #$0C    
       STX    $85     
       STX    HMP1    
LB898: LDY    $85     
       AND    $91     
       STA    HMBL    
       LDA    ($99),Y 
       LDY    $8B     
       STA    GRP1    
       LDA    ($8E),Y 
       DEC    $8B     
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       LDA    ($93),Y 
       STA    ENABL   
       LDX    LBD87,Y 
       STX    COLUP0  
       LDY    CXPPMM  
       BMI    LB8BD   
       STX    $95     
LB8BD: DEC    $85     
       BPL    LB898   
       LDY    $CA     
       STY    NUSIZ1  
       LDY    $C4     
       STY    COLUP1  
       LDY    $8B     
       DEC    $8B     
       LDX    LBD87,Y 
       LDA    ($8E),Y 
       STY    WSYNC   
       STA    GRP0    
       STX    COLUP0  
       LDY    $B1     
       LDY    $B3     
       LDX    $AA     
LB8DE: DEX            
       BPL    LB8DE   
       STY    RESP1   
       STY    HMP1    
       LDY    $8B     
       STY    WSYNC   
       STY    HMOVE   
       LDX    LBD87,Y 
       LDA    ($8E),Y 
       STA    GRP0    
       LDA    ($93),Y 
       STX    COLUP0  
       STA    ENABL   
       DEC    $8B     
       LDX    #$0C    
       STX    $85     
       STX    HMP1    
LB900: LDY    $85     
       AND    $91     
       STA    HMBL    
       LDA    LB4BB,Y 
       LDY    $8B     
       STA    GRP1    
       LDA    ($8E),Y 
       DEC    $8B     
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       LDA    ($93),Y 
       STA    ENABL   
       LDX    LBD87,Y 
       STX    COLUP0  
       LDY    CXPPMM  
       BMI    LB926   
       STX    $95     
LB926: DEC    $85     
       BPL    LB900   
       LDY    $CB     
       STY    NUSIZ1  
       LDY    $C5     
       STY    COLUP1  
       LDY    $8B     
       DEC    $8B     
       LDX    LBD87,Y 
       LDA    ($8E),Y 
       STY    WSYNC   
       STA    GRP0    
       STX    COLUP0  
       LDY    $B1     
       LDY    $B4     
       LDX    $AB     
LB947: DEX            
       BPL    LB947   
       STY    RESP1   
       STY    HMP1    
       LDY    $8B     
       STY    WSYNC   
       STY    HMOVE   
       LDX    LBD87,Y 
       LDA    ($8E),Y 
       STA    GRP0    
       LDA    ($93),Y 
       STX    COLUP0  
       STA    ENABL   
       DEC    $8B     
       LDX    #$0C    
       STX    $85     
       STX    HMP1    
LB969: LDY    $85     
       AND    $91     
       STA    HMBL    
       LDA    ($9B),Y 
       LDY    $8B     
       STA    GRP1    
       LDA    ($8E),Y 
       DEC    $8B     
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       LDA    ($93),Y 
       STA    ENABL   
       LDX    LBD87,Y 
       STX    COLUP0  
       LDY    CXPPMM  
       BMI    LB98E   
       STX    $95     
LB98E: DEC    $85     
       BPL    LB969   
       LDY    $CC     
       STY    NUSIZ1  
       LDY    $C6     
       STY    COLUP1  
       LDY    $8B     
       DEC    $8B     
       LDX    LBD87,Y 
       LDA    ($8E),Y 
       STY    WSYNC   
       STA    GRP0    
       STX    COLUP0  
       LDY    $B1     
       LDY    $B5     
       LDX    $AC     
LB9AF: DEX            
       BPL    LB9AF   
       STY    RESP1   
       STY    HMP1    
       LDY    $8B     
       STY    WSYNC   
       STY    HMOVE   
       LDX    LBD87,Y 
       LDA    ($8E),Y 
       STA    GRP0    
       LDA    ($93),Y 
       STX    COLUP0  
       STA    ENABL   
       DEC    $8B     
       LDX    #$0C    
       STX    $85     
       STX    HMP1    
LB9D1: LDY    $85     
       AND    $91     
       STA    HMBL    
       LDA    LB4BB,Y 
       LDY    $8B     
       STA    GRP1    
       LDA    ($8E),Y 
       DEC    $8B     
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       LDA    ($93),Y 
       STA    ENABL   
       LDX    LBD87,Y 
       STX    COLUP0  
       LDY    CXPPMM  
       BMI    LB9F7   
       STX    $95     
LB9F7: DEC    $85     
       BPL    LB9D1   
       LDY    $CD     
       STY    NUSIZ1  
       LDY    $C7     
       STY    COLUP1  
       LDY    $8B     
       DEC    $8B     
       LDX    LBD87,Y 
       LDA    ($8E),Y 
       STY    WSYNC   
       STA    GRP0    
       STX    COLUP0  
       LDY    $B1     
       LDY    $B6     
       LDX    $AD     
LBA18: DEX            
       BPL    LBA18   
       STY    RESP1   
       STY    HMP1    
       LDY    $8B     
       STY    WSYNC   
       STY    HMOVE   
       LDX    LBD87,Y 
       LDA    ($8E),Y 
       STA    GRP0    
       LDA    ($93),Y 
       STX    COLUP0  
       STA    ENABL   
       DEC    $8B     
       LDX    #$0C    
       STX    $85     
       STX    HMP1    
LBA3A: LDY    $85     
       AND    $91     
       STA    HMBL    
       LDA    ($9D),Y 
       LDY    $8B     
       STA    GRP1    
       LDA    ($8E),Y 
       DEC    $8B     
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       LDA    ($93),Y 
       STA    ENABL   
       LDX    LBD87,Y 
       STX    COLUP0  
       LDY    CXPPMM  
       BMI    LBA5F   
       STX    $95     
LBA5F: DEC    $85     
       BPL    LBA3A   
       LDX    #$02    
LBA65: LDY    $8B     
       DEC    $8B     
       LDA    ($8E),Y 
       STA    WSYNC   
       STA    GRP0    
       LDA    LBD87,Y 
       STA    COLUP0  
       DEX            
       BNE    LBA65   
       STA    WSYNC   
       STX    GRP0    
       STX    ENABL   
       STX    VDELP1  
       LDA    #$1C    
       STA    COLUBK  
       LDA    $B8     
       LDY    $AF     
       INX            
       JSR    LB317   
       LDA    #$B5    
       STA    COLUP1  
       LDX    #$15    
       STA    NUSIZ1  
       DEX            
LBA94: LDA    LB09F,X 
       STA    WSYNC   
       STA    GRP1    
       DEX            
       BNE    LBA94   
       LDY    $B0     
       LDA    $B9     
       JSR    LB317   
       LDY    #$09    
LBAA7: LDA    #$16    
       STA    REFP0   
       STA    WSYNC   
       STA    COLUP0  
       LDA    LB182,Y 
       LDX    $E1     
       BNE    LBAB9   
       LDA    LBE5F,Y 
LBAB9: STA    GRP0    
       DEY            
       BPL    LBAA7   
       LDA    CXPPMM  
       BPL    LBB0F   
       LDA    $95     
       AND    #$F0    
       CMP    #$30    
       BNE    LBB0F   
       LDX    $EE     
       BEQ    LBADF   
       BMI    LBB2D   
       LDX    #$07    
       LDY    #$00    
       LDA    #$05    
LBAD6: STA    $9F,X   
       STY    $C8,X   
       DEX            
       BPL    LBAD6   
       DEC    $86     
LBADF: LDA    #$00    
       STA    $DE     
       LDA    #$B3    
       STA    $8F     
       LDY    #$B0    
       STY    $8E     
       LDA    #$28    
       STA    $97     
       STA    $8C     
       LDX    #$F0    
       STX    $92     
       INY            
       STY    $94     
       DEC    $EE     
       BPL    LBB02   
       LDA    #$1E    
       LDX    #$01    
       STX    $86     
LBB02: JSR    LBC29   
       LDA    #$8D    
       STA    $93     
       LDX    #$05    
       STX    CTRLPF  
       STX    $91     
LBB0F: LDX    #$05    
       LDA    $89     
       CMP    #$29    
       BCC    LBB24   
       CMP    #$7A    
       BCC    LBB2D   
LBB1B: DEC    $89     
       DEC    $8A     
       DEX            
       BPL    LBB1B   
       BMI    LBADF   
LBB24: INC    $89     
       INC    $8A     
       DEX            
       BPL    LBB24   
       BMI    LBADF   
LBB2D: STA    WSYNC   
       LDX    #$A0    
       STX    COLUBK  
LBB33: JSR    LBE87   
       LDA    $F3     
       BPL    LBB42   
       LDX    #$B2    
       STX    $F0     
       STX    $EF     
       BNE    LBB4A   
LBB42: LDX    #$BE    
       STX    $F0     
       LDX    #$3A    
       STX    $EF     
LBB4A: LDA    $F4     
       BPL    LBB56   
       LDX    #$B2    
       STX    $F2     
       STX    $F1     
       BNE    LBB5E   
LBB56: LDX    #$BE    
       STX    $F2     
       LDX    #$17    
       STX    $F1     
LBB5E: LDA    $F4     
       STA    NUSIZ1  
       LDA    $F3     
       STA    NUSIZ0  
       LDA    $D1     
       ORA    #$F0    
       STA    COLUP1  
       AND    #$EF    
       STA    COLUP0  
       STA    WSYNC   
       NOP            
       LDX    #$03    
LBB75: DEX            
       BPL    LBB75   
       STA    RESP0   
       LDX    #$04    
LBB7C: DEX            
       BPL    LBB7C   
       STA    RESP1   
       LDY    #$0F    
LBB83: LDA    ($EF),Y 
       STA    WSYNC   
       STA    GRP0    
       LDA    ($F1),Y 
       STA    GRP1    
       DEY            
       BPL    LBB83   
       INY            
       LDX    #$D3    
       BIT    CXP1FB  
       BVC    LBBCA   
       LDA    #$93    
       CMP    $93     
       BNE    LBBCA   
       LDA    $89     
       CMP    #$3D    
       BCC    LBBCA   
       CMP    #$42    
       BCS    LBBAF   
       CPX    $99     
       BNE    LBBCA   
       STY    $99     
       BEQ    LBBBB   
LBBAF: AND    #$FC    
       CMP    #$5C    
       BNE    LBBCA   
       CPX    $9B     
       BNE    LBBCA   
       STY    $9B     
LBBBB: LDA    #$50    
       STA    $E6     
       LDA    #$5A    
       STA    $EA     
       LDA    #$09    
       STA    $E3     
       JSR    LB170   
LBBCA: LDX    #$02    
LBBCC: LDA    $A5,X   
       JSR    LB2F5   
       INY            
       INY            
       INY            
       STA    $B7,X   
       STY    $AE,X   
       DEX            
       BPL    LBBCC   
       LDY    #$03    
       CPY    $F4     
       BEQ    LBBF6   
       CPY    $F3     
       BNE    LBBF6   
       DEY            
       STY    $E3     
       LDX    #$0A    
       STX    $E6     
       LDX    #$1E    
       STX    $EA     
       INC    $EE     
       LDA    #$FF    
       STA    $F3     
LBBF6: LDX    #$03    
       CPX    $EE     
       BEQ    LBC10   
       LDA    $EE     
       BMI    LBC0E   
       LDY    #$02    
       LDX    #$01    
       CPY    $EE     
       BEQ    LBC10   
       DEX            
       DEY            
       CPY    $EE     
       BEQ    LBC10   
LBC0E: LDX    #$FF    
LBC10: STX    $F4     
       LDA    $A7     
       CMP    #$93    
       BNE    LBC1C   
       INC    $A7     
       STA    $E0     
LBC1C: JSR    LBE11   
       LDA    $F8     
       BEQ    LBC26   
       JMP    LB654   
LBC26: JMP    LB5EF   
LBC29: STA    $E8     
       LDY    #$09    
       STY    $E2     
       INY            
       STY    $E4     
       LDA    #$00    
       STA    $EC     
       RTS            

LBC37: LDA    $EE     
       BMI    LBC60   
       LDX    #$05    
       LDY    #$00    
       LDA    SWCHA   
       AND    #$F0    
       CMP    #$70    
       BNE    LBC4A   
       BEQ    LBC61   
LBC4A: CMP    #$B0    
       BNE    LBC50   
       BEQ    LBC69   
LBC50: CMP    #$E0    
       BNE    LBC58   
       STY    $90     
       BEQ    LBC77   
LBC58: CMP    #$D0    
       BNE    LBC60   
       STY    $90     
       BEQ    LBCA1   
LBC60: RTS            

LBC61: STY    $8D     
       LDA    #$80    
       STA    $92     
       BNE    LBCC9   
LBC69: STY    $DE     
LBC6B: LDA    #$08    
       STA    $8D     
       STA    $91     
       LDA    #$70    
       STA    $92     
       BNE    LBCC9   
LBC77: LDA    $DE     
       BNE    LBCA0   
       STY    $DF     
       LDA    $DC     
       STA    $DD     
LBC81: LDA    #$08    
       STA    $8D     
       LDA    #$B2    
       STA    $94     
       JSR    LBCE2   
       BNE    LBC98   
       LDA    #$0F    
       STA    $91     
       LDA    #$E0    
       STA    $92     
       BNE    LBCF7   
LBC98: LDA    #$70    
       STA    $92     
       LDA    #$FF    
       STA    $91     
LBCA0: RTS            

LBCA1: LDA    $DE     
       BNE    LBCA0   
       LDA    $DC     
       STA    $DD     
       STA    $DF     
LBCAB: STY    $8D     
       LDA    #$B1    
       STA    $94     
       JSR    LBCE2   
       BNE    LBCC0   
       LDA    #$C0    
       STA    $92     
       LDA    #$0F    
       STA    $91     
       BNE    LBCF7   
LBCC0: LDA    #$F0    
       STA    $92     
       LDA    #$1F    
       STA    $91     
       RTS            

LBCC9: LDA    #$03    
       STA    $8E     
       LDA    #$B0    
       STA    $8F     
       LDY    #$00    
       STY    $8C     
       LDA    #$35    
       STA    CTRLPF  
       LDA    #$B3    
       STA    $94     
       LDA    #$93    
       STA    $93     
       RTS            

LBCE2: LDA    #$20    
       STA    $8E     
       LDA    #$B0    
       STA    $8F     
       STA    $8C     
       LDA    #$8D    
       STA    $93     
       LDA    #$05    
       STA    CTRLPF  
       LDA    $90     
       RTS            

LBCF7: LDY    #$14    
       STY    $DE     
LBCFB: LDY    $DD     
       BEQ    LBD02   
       JMP    LBD86   
LBD02: LDY    $DE     
       CPY    #$0D    
       BNE    LBD1A   
       JSR    LB4E0   
       STY    $90     
       LDX    $DF     
       BEQ    LBD17   
       JSR    LBCAB   
       JMP    LBD1A   
LBD17: JSR    LBC81   
LBD1A: CPY    #$04    
       BNE    LBD21   
       JSR    LBC6B   
LBD21: LDY    $DE     
       LDA    LBE4A,Y 
       TAY            
       BIT    SWCHB   
       BVC    LBD38   
       LDX    $D2     
       CPX    #$28    
       BCS    LBD4B   
       LDX    $D4     
       CPX    #$28    
       BCS    LBD4B   
LBD38: LDX    $D6     
       CPX    #$37    
       BCC    LBD4F   
       CPX    #$49    
       BCC    LBD4D   
       CPX    #$67    
       BCC    LBD4C   
       BIT    SWCHB   
       BVC    LBD4C   
LBD4B: DEY            
LBD4C: DEY            
LBD4D: DEY            
       TYA            
LBD4F: STA    $96     
       LDY    $DE     
       CPY    #$14    
       BNE    LBD59   
       STA    $DC     
LBD59: LDA    LB077,Y 
       BEQ    LBD66   
       BMI    LBD64   
       INC    $86     
       BNE    LBD66   
LBD64: DEC    $86     
LBD66: LDA    $DF     
       BEQ    LBD6F   
       LDA    LB08C,Y 
       BPL    LBD72   
LBD6F: LDA    LBE26,Y 
LBD72: BEQ    LBD80   
       BMI    LBD7C   
       INC    $89     
       INC    $8A     
       BNE    LBD80   
LBD7C: DEC    $89     
       DEC    $8A     
LBD80: LDA    $DE     
       BEQ    LBD86   
       DEC    $DE     
LBD86: RTS            

LBD87: .byte $3D,$38,$3D,$38,$3D,$38,$3D,$38,$3D,$38,$3D,$38,$3D,$38,$3D,$38
       .byte $73,$73,$73,$73,$73,$73,$FE,$FE,$FE,$FE,$A0,$A0,$A0
LBDA4: CLC            
       LDX    #$07    
LBDA7: LDY    $BA,X   
       BNE    LBDB5   
       LDY    $9F,X   
       BEQ    LBDB1   
       DEC    $9F,X   
LBDB1: DEX            
       BPL    LBDA7   
       RTS            

LBDB5: DEC    $BA,X   
       BCC    LBDB1   
       .byte $FF ;.ISB
LBDBA: LDY    #$00    
       STY    $E0     
       STY    $C8,X   
       LDY    #$30    
       STY    $C2,X   
       LDA    #$28    
       JSR    LBC29   
       JMP    LBF9F   
LBDCC: LDA    $80     
       STA    $82     
       LDA    $81     
       STA    $83     
       ASL            
       ROL    $80     
       ASL            
       ROL    $80     
       CLC            
       ADC    $83     
       STA    $81     
       LDA    #$00    
       ADC    $80     
       CLC            
       ADC    $82     
       STA    $80     
       LDA    #$00    
       INC    $81     
       ADC    $80     
       STA    $80     
       RTS            

LBDF1: LDA    INTIM   
       BNE    LBDF1   
       STA    WSYNC   
       STA    VSYNC   
       LDA    #$31    
       STA    TIM64T  
       RTS            

LBE00: LDX    INTIM   
       BNE    LBE00   
       STX    WSYNC   
       STX    VBLANK  
       LDA    #$11    
       STA    T1024T  
       STA    WSYNC   
       RTS            

LBE11: LDA    INTIM   
       BNE    LBE11   
       RTS            

LBE17: .byte $00,$00,$10,$38,$7C,$6C,$54,$7C,$7C,$54,$7C,$7C,$38,$10,$00
LBE26: .byte $00,$C0,$F0,$98,$88,$80,$C0,$EC,$B0,$88,$C8,$C0,$A0,$90,$80,$80
       .byte $80,$80,$80,$00,$00,$08,$14,$22,$49,$5D,$45,$5D,$51,$5D,$49,$22
       .byte $14,$08,$1C,$3E
LBE4A: .byte $03,$03,$03,$03,$02,$02,$02,$03,$03,$03,$04,$04,$04,$04,$05,$05
       .byte $06,$07,$08,$09,$0A
LBE5F: .byte $00,$28,$44,$7E,$7F,$FF,$BF,$8A,$8E,$88,$00,$3D,$38,$3D,$38,$3D
       .byte $38,$3D,$38,$3D,$38,$3D,$38,$3D,$38,$3D,$38,$73,$73,$73,$73,$73
       .byte $73,$FE,$FE,$FE,$FE,$A0,$A0,$A0
LBE87: LDX    #$00    
       STX    HMP0    
       STX    REFP0   
       LDA    #$10    
       STA    HMP1    
       LDA    #$03    
       STA    NUSIZ0  
       STA    VDELP1  
       INX            
       STX    NUSIZ1  
       LDA    $D1     
       ORA    #$04    
       STA    COLUP0  
       STA    COLUP1  
       LDY    #$08    
       STA    WSYNC   
LBEA6: DEY            
       BNE    LBEA6   
       STA    RESP0   
       STA    RESP1   
       LDY    $F6     
LBEAF: LDA    ($DA),Y 
       TAX            
       STA    WSYNC   
       STA    HMOVE   
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       LDA    ($D4),Y 
       STA    GRP1    
       LDA    ($D2),Y 
       STA    GRP0    
       NOP            
       NOP            
       LDA    ($D8),Y 
       STA    GRP1    
       LDA    ($D6),Y 
       STA    GRP0    
       STX    GRP0    
       STA    HMCLR   
       DEY            
       BPL    LBEAF   
       INY            
       STY    VDELP1  
       RTS            

LBED8: LDX    $84     
       LDA    $9F,X   
       CMP    #$03    
       BCC    LBEE3   
       JMP    LBF9F   
LBEE3: LDA    #$93    
       STA    $9F,X   
       CMP    $E0     
       BNE    LBF04   
       LDA    #$26    
       LDY    #$BE    
       CPX    #$05    
       BNE    LBEFA   
       STA    $9D     
       STY    $9E     
LBEF7: JMP    LBDBA   
LBEFA: CPX    #$03    
       BNE    LBF16   
       STA    $9B     
       STY    $9C     
       BEQ    LBEF7   
LBF04: LDA    #$B0    
       LDY    #$B4    
       CPX    #$05    
       BNE    LBF10   
       STA    $9D     
       STY    $9E     
LBF10: CPX    #$03    
       BNE    LBF16   
       STY    $9C     
LBF16: LDA    #$B0    
       CPX    #$01    
       BNE    LBF1E   
       STA    $99     
LBF1E: CPX    #$03    
       BNE    LBF24   
       STA    $9B     
LBF24: JSR    LBDCC   
       PHA            
       AND    #$F0    
       CMP    #$10    
       BNE    LBF44   
       CMP    $E0     
       BEQ    LBF44   
       STA    $E0     
       STA    $A7     
       LDA    #$46    
       STA    $E8     
       STA    $E4     
       LDA    #$07    
       STA    $E2     
       LDA    #$1E    
       STA    $EC     
LBF44: AND    #$70    
       CMP    #$70    
       BNE    LBF4E   
       LDY    #$D3    
       BNE    LBF54   
LBF4E: CMP    #$40    
       BNE    LBF7D   
       LDY    #$C7    
LBF54: CPX    #$01    
       BEQ    LBF60   
       CPX    #$03    
       BNE    LBF7D   
       STY    $9B     
       BEQ    LBF62   
LBF60: STY    $99     
LBF62: PLA            
       CPY    #$D3    
       BEQ    LBF9F   
       LDA    #$09    
       STA    $E3     
       LDA    #$14    
       STA    $E6     
       LDA    #$3C    
       STA    $EA     
       LDA    #$05    
       STA    $C8,X   
       LDA    #$32    
       STA    $C2,X   
       BNE    LBF9F   
LBF7D: PLA            
       PHA            
       AND    #$05    
       CMP    #$04    
       BNE    LBF87   
       LDA    #$00    
LBF87: STA    $C8,X   
       PLA            
       LSR            
       LSR            
       LSR            
       PHA            
       AND    #$03    
       TAY            
       LDA    LB095,Y 
       STA    $C2,X   
       PLA            
       LSR            
       LSR            
       TAY            
       LDA    LB08D,Y 
       STA    $BA,X   
LBF9F: DEX            
       BPL    LBFA4   
       LDX    #$05    
LBFA4: STX    $84     
       RTS            

LBFA7: .byte $A6,$F4,$D0,$05,$CA,$86,$F4,$30,$02,$46,$F4,$60,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$03,$04,$09,$09,$09,$04,$03,$00,$EE,$EE
       .byte $A2,$A2,$AE,$A8,$AE,$00,$C1,$21,$91,$11,$91,$21,$C1,$00,$7A,$7A
       .byte $4A,$5B,$42,$4A,$7B,$00,$17,$15,$15,$77,$55,$55,$77,$00,$A2,$A2
       .byte $A2,$AA,$BE,$B6,$A2,$00,$70,$40,$40,$20,$10,$50,$70,$00,$EE,$82
       .byte $82,$CE,$88,$88,$EE,$00,$B0,$00,$B0
