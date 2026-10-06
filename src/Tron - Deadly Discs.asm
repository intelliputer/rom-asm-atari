; Disassembly of roms/Tron - Deadly Discs.bin
; Disassembled Tue Oct  6 15:24:48 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Tron - Deadly Discs.bin
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
AUDC0   =  $15
AUDF0   =  $17
AUDV0   =  $19
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
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296
LFEE7   =   $FEE7

       ORG $F000
LF000: LDX    #$03    
       LDY    #$01    
       BNE    LF00A   
LF006: LDX    #$07    
       LDY    #$06    
LF00A: STY    $DF     
LF00C: TXA            
       TAY            
       DEY            
LF00F: LDA    $88,X   
       CMP.wy $0088,Y 
       BCC    LF043   
       BEQ    LF043   
       STX    $E1     
       STY    $E2     
       LDA    #$08    
       CPX    #$04    
       BMI    LF024   
       SBC    #$02    
LF024: STA    $E0     
LF026: LDA    $80,X   
       PHA            
       LDA.wy $0080,Y 
       STA    $80,X   
       PLA            
       STA.wy $0080,Y 
       TXA            
       CLC            
       ADC    #$08    
       TAX            
       TYA            
       ADC    #$08    
       TAY            
       DEC    $E0     
       BPL    LF026   
       LDX    $E1     
       LDY    $E2     
LF043: DEY            
       CPY    $DF     
       BPL    LF00F   
       DEX            
       CPX    $DF     
       BNE    LF00C   
       RTS            

LF04E: LSR            
       BCC    LF077   
       LSR            
       BCS    LF078   
       AND    #$03    
       STA    $DF     
       LDX    #$03    
LF05A: LDY    $DF     
       LDA    $98,X   
       BNE    LF065   
       LDA    $A0,X   
       BNE    LF065   
       TAY            
LF065: LDA    LF095,Y 
       CPX    #$00    
       BEQ    LF06F   
       LDA    LF099,Y 
LF06F: SEC            
       SBC    $88,X   
       STA    $A8,X   
       DEX            
       BPL    LF05A   
LF077: RTS            

LF078: LSR            
       BCC    LF077   
       LDA    $80     
       BEQ    LF077   
       LDA    $B0     
       LSR            
       BCS    LF077   
       DEC    $B8     
       LDA    $B8     
       AND    #$0B    
       BNE    LF077   
       TAX            
       JSR    LF8A5   
       LDX    #$04    
       JMP    LF8A5   
LF095: .byte $A0,$B0,$C0,$D0
LF099: .byte $D7,$D8,$E7
LF09C: .byte $E8
LF09D: .byte $03,$02,$01,$0C,$0E,$00,$78,$58,$5F,$18,$00,$18,$3C,$24,$66,$C2
       .byte $82,$03,$00,$06,$07,$00,$0C,$1C,$1C,$1E,$18,$18,$18,$78,$48,$48
       .byte $08,$0C,$00,$06,$07,$00,$0C,$1C,$1C,$1E,$18,$1C,$3E,$22,$2E,$28
       .byte $20,$10,$00,$0C,$0E,$00,$78,$58,$5F,$18,$00,$18,$3F,$21,$62,$42
       .byte $C0,$80,$00,$00,$00,$00,$00,$02,$02,$02,$02,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$02,$00,$02,$02,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$A6,$E6,$B5,$90,$85,$13,$85,$2B,$EA,$85,$23,$A9,$EB
       .byte $85,$EC,$4C,$11,$F2,$A6,$E6,$B5,$90,$85,$2B,$EA,$85,$13,$85,$23
       .byte $A9,$EB,$85,$EC,$4C,$11,$F2,$A6,$E6,$B5,$90,$85,$2B,$85,$23,$EA
       .byte $A9,$EB,$85,$13,$85,$EC,$4C,$11,$F2,$A6,$E6,$B5,$90,$85,$2B,$85
       .byte $23,$A9,$EB,$85,$EC,$BE,$00,$FD,$85,$13,$EA,$4C,$14,$F2,$A6,$E6
       .byte $B5,$90,$85,$2B,$85,$23,$A9,$EB,$85,$EC,$BE,$00,$FD,$B5,$01,$8D
       .byte $13,$00,$8D,$08,$00,$4C,$18,$F2,$A6,$E6,$B5,$90,$85,$2B,$85,$23
       .byte $A9,$EB,$85,$EC,$BE,$00,$FD,$B5,$01,$85,$E8,$85,$08,$85,$13,$EA
       .byte $4C,$1A,$F2,$A6,$E6,$B5,$90,$85,$2B,$85,$23,$A9,$EB,$85,$EC,$BE
       .byte $00,$FD,$B5,$01,$85,$E8,$85,$08,$B1,$F6,$85,$13,$EA,$4C,$1C,$F2
       .byte $A6,$E6,$B5,$90,$85,$2B,$85,$23,$BE,$00,$FD,$B5,$01,$85,$E8,$85
       .byte $08,$B1,$F6,$10,$0E,$B1,$EE,$85,$1B,$85,$13,$A9,$EB,$85,$EC,$EA
       .byte $4C,$22,$F2,$EA,$EA,$10,$F2,$A6,$E6,$B5,$90,$85,$2B,$85,$23,$A9
       .byte $EB,$85,$EC,$BE,$00,$FD,$B5,$01,$85,$E8,$85,$08,$B1,$F6,$10,$0A
       .byte $B1,$EE,$85,$1B,$85,$13,$EA,$4C,$22,$F2,$EA,$EA,$10,$F6,$B1,$F4
       .byte $85,$1E,$85,$2B,$A9,$6E,$85,$EC,$A9,$F2,$85,$ED,$EA,$4C,$11,$F2
       .byte $FF,$FF,$FF,$A6,$E6,$A9,$3C,$85,$EC,$85,$2B,$B5,$A8,$85,$F4,$B5
       .byte $B0,$8D,$05,$00,$BE,$00,$FD,$B5,$01,$85,$08,$85,$E8,$B1,$F6,$10
       .byte $10,$B1,$EE,$85,$1B,$B5,$00,$85,$2A,$85,$08,$85,$E7,$C8,$6C,$EA
       .byte $00,$EA,$EA,$10,$F0,$EA,$EA,$EA,$C0,$77,$90,$D8,$4C,$41,$FF,$A6
       .byte $E6,$98,$D5,$88,$85,$2B,$90,$ED,$B5,$DE,$85,$EC,$A9,$F1,$85,$ED
       .byte $BE,$00,$FD,$B5,$01,$85,$08,$85,$E8,$B1,$F6,$10,$10,$B1,$EE,$85
       .byte $1B,$B5,$00,$85,$2A,$85,$08,$85,$E7,$C8,$6C,$EA,$00,$EA,$EA,$10
       .byte $F0,$B1,$F4,$85,$1E,$85,$2B,$D0,$09,$C6,$E6,$A9,$00,$85,$EC,$4C
       .byte $11,$F2,$68,$48,$EA,$4C,$11,$F2,$B1,$F2,$85,$1C,$85,$2B,$A9,$95
       .byte $8D,$EA,$00,$C6,$E2,$4C,$FA,$F2,$B1,$F2,$85,$1C,$85,$2B,$D0,$09
       .byte $A9,$EA,$85,$EA,$EA,$EA,$4C,$FA,$F2,$85,$3F,$4C,$A2,$F2
LF2AB: LDA    $DE,X   
       STA    $E9     
       JMP    LF2FA   
LF2B2: LDX    $E2     
       TYA            
       CMP    $88,X   
       STA    HMCLR   
       BCC    LF2AB   
       LDA    $E9     
       STA    $EA     
       LDA    #$FA    
       STA    $EB     
       LDA    $E8     
       STA    COLUPF  
       LDA    ($F8),Y 
       BPL    LF2E1   
       LDA    ($F0),Y 
       STA    ENAM0   
LF2CF: LDA    ($F6),Y 
       BPL    LF2E5   
       LDA    ($EE),Y 
       STA    GRP0    
LF2D7: STA    HMOVE   
       LDA    $E7     
       STA    COLUPF  
       INY            
       JMP.ind ($00EC)
LF2E1: NOP            
       NOP            
       BPL    LF2CF   
LF2E5: NOP            
       NOP            
       JMP    LF2D7   
LF2EA: .byte $A6,$E2,$A9,$B2,$85,$EA,$85,$2B,$B5,$A8,$85,$F2,$B5,$B0,$85,$0C
LF2FA: LDA    $E8     
       STA    COLUPF  
       LDA    ($F8),Y 
       BPL    LF318   
       LDA    ($F0),Y 
       STA    ENAM0   
LF306: LDA    ($F6),Y 
       BPL    LF31D   
       LDA    ($EE),Y 
       STA    GRP0    
LF30E: STA    HMOVE   
       LDA    $E7     
       STA    COLUPF  
       INY            
       JMP.ind ($00EC)
LF318: NOP            
       NOP            
       JMP    LF306   
LF31D: NOP            
       NOP            
       JMP    LF30E   
LF322: .byte $00,$12,$24,$38,$52,$70,$A6,$D6,$FC
LF32B: .byte $00,$12,$24,$36,$4B,$65,$80,$9D,$C4

START:
LF334: CLD            
       LDX    #$00    
       TXA            
LF338: STA    VSYNC,X 
       TXS            
       INX            
       BNE    LF338   
       LDX    #$07    
LF340: JSR    LF8A5   
       DEX            
       BPL    LF340   
       LDX    #$0D    
       LDA    #$76    
LF34A: STA    $D1,X   
       DEX            
       BPL    LF34A   
       BIT    SWCHB   
       BVC    LF358   
       LDX    #$28    
       STX    $CB     
LF358: LDX    #$00    
       LDA    #$46    
       JSR    LFFCE   
       LDA    #$34    
       STA    $88     
       LDA    #$6C    
       STA    $A8     
       LDA    #$82    
       STA    $B8     
       DEC    $CC     
       LDA    REFP1   
       ORA    PF0     
       LSR            
       LSR            
       AND    #$20    
       EOR    #$21    
       STA    $B0     
LF379: LDA    #$2F    
       STA    TIM64T  
       LDA    $C4     
       LSR            
       BCS    LF3A0   
       JSR    LF04E   
       JSR    LF61B   
       JSR    LF7E7   
       JSR    LF74A   
       LDA    $C7     
       BEQ    LF3A9   
       JSR    LFB3E   
       BIT    $B0     
       BVC    LF3A9   
       JSR    LF5AB   
       JMP    LF3A9   
LF3A0: JSR    LF54F   
       LDA    SWCHB   
       LSR            
       BCC    LF334   
LF3A9: LDA    INTIM   
       STA    WSYNC   
       BPL    LF3A9   
       LDX    #$02    
       STX    VSYNC   
LF3B4: STA    WSYNC   
       DEX            
       BPL    LF3B4   
       INX            
       STX    VSYNC   
       LDA    #$38    
       STA    TIM64T  
       LDA    #$20    
       AND    $B0     
       BEQ    LF3D9   
       LDA    $C4     
       AND    #$0F    
       CMP    #$0C    
       BCS    LF3D9   
       TAX            
       JSR    LFBAF   
       AND    #$F0    
       ORA    #$08    
       STA    $D1,X   
LF3D9: INC    $C4     
       LDA    $C4     
       LSR            
       BCS    LF3EC   
       JSR    LFDB7   
       JSR    LFF89   
       JSR    LF8C0   
       JMP    LF3F2   
LF3EC: JSR    LF694   
       JSR    LF402   
LF3F2: JSR    LFD87   
LF3F5: LDA    INTIM   
       STA    WSYNC   
       BPL    LF3F5   
       JSR    LFE00   
       JMP    LF379   
LF402: LDA    #$10    
       BIT    $B0     
       BMI    LF40B   
       JMP    LF48A   
LF40B: BEQ    LF411   
       BIT    VSYNC   
       BMI    LF42F   
LF411: LDX    #$04    
       JSR    LF826   
       BEQ    LF42C   
       BMI    LF41D   
       JMP    LF49D   
LF41D: LDA.wy $00D1,Y 
       CMP    #$48    
       BNE    LF42C   
       LDA    #$E8    
       STA.wy $00D1,Y 
       JSR    LF7CF   
LF42C: JMP    LFB86   
LF42F: LDX    #$03    
LF431: LDA    $88,X   
       SEC            
       SBC    $8C     
       CMP    #$04    
       BPL    LF487   
       CMP    #$F5    
       BMI    LF487   
       JSR    LF8A5   
       INC    $CB     
       LDX    $CA     
       LDA    #$7F    
       STA    $CC     
       DEC    $C9     
       BNE    LF46A   
       INC    $CC     
       LSR            
       STA    $CD     
       LDA    #$10    
       EOR    $B0     
       STA    $B0     
       CPX    #$07    
       BEQ    LF45E   
       INC    $CA     
LF45E: LDY    $C8     
       BEQ    LF46A   
       DEY            
       STY    $C8     
       LDA    LF53D,Y 
       STA    $B8     
LF46A: SED            
       CLC            
       LDA    $BF     
       ADC    LF530,X 
       STA    $BF     
       LDA    $BE     
       ADC    LF535,X 
       STA    $BE     
       LDA    $BD     
       ADC    #$00    
       STA    $BD     
       CLD            
       JSR    LF000   
       JMP    LF7D5   
LF487: DEX            
       BNE    LF431   
LF48A: BIT    VSYNC   
       BVC    LF49D   
       BIT    $B0     
       BVC    LF49D   
       LDA    $B0     
       EOR    #$40    
       STA    $B0     
       LDX    #$04    
       JSR    LF8A5   
LF49D: BIT    VBLANK  
       BPL    LF4DA   
       LDX    #$07    
LF4A3: LDA    $88,X   
       SEC            
       SBC    $88     
       CMP    #$0A    
       BPL    LF4D5   
       CMP    #$F8    
       BMI    LF4D5   
       INC    $C8     
       LDY    $C8     
       LDA    LF53D,Y 
       STA    $B8     
       CPY    #$05    
       BMI    LF4CC   
       LDA    $B0     
       AND    #$FE    
       STA    $B0     
       LDA    #$00    
       STA    $98     
       STA    $A0     
       JSR    LF7E1   
LF4CC: JSR    LF7DB   
       JSR    LF8A5   
       JMP    LF006   
LF4D5: DEX            
       CPX    #$05    
       BNE    LF4A3   
LF4DA: LDX    #$00    
       JSR    LF826   
       BPL    LF51B   
       LDA    LF543,Y 
       TAX            
       LDA    #$20    
       AND    $B0     
       BNE    LF4FD   
       LDA.wy $00D1,Y 
       CMP    #$E8    
       BNE    LF51B   
       LDA    $D1,X   
       CMP    #$E8    
       BNE    LF51B   
       LDA    #$76    
       STA.wy $00D1,Y 
LF4FD: LDA    #$1E    
       STA    $CE     
       LDA    LFC57,X 
       CPX    #$08    
       BMI    LF50A   
       ADC    #$05    
LF50A: STA    $88     
       LDA    #$A0    
       SEC            
       SBC    $88     
       STA    $A8     
       LDA    LF736,X 
       LDX    #$00    
       JMP    LFFCE   
LF51B: LDX    #$07    
LF51D: JSR    LF826   
       CPY    #$0D    
       BEQ    LF52A   
       JSR    LF8A5   
       JSR    LF006   
LF52A: DEX            
       CPX    #$05    
       BNE    LF51D   
       RTS            

LF530: .byte $10,$20,$40,$75,$50
LF535: .byte $00,$00,$00,$00,$01,$03,$05,$08
LF53D: .byte $82,$64,$54,$48,$28,$2C
LF543: .byte $08,$09,$0A,$0B,$05,$04,$07,$06,$00,$01,$02,$03
LF54F: LDA    $C0     
       CLC            
       ADC    #$09    
       AND    #$0F    
       STA    $C0     
       LDX    #$07    
       LDY    #$00    
LF55C: LDA    $80,X   
       BEQ    LF58F   
       LDA    $A0,X   
       JSR    LF819   
       ASL            
       STA    $E0     
       CLC            
       ADC    $88,X   
LF56B: CMP    #$F0    
       BCS    LF573   
       CMP    #$02    
       BCS    LF57B   
LF573: CLC            
       ADC    #$01    
       INC    $E0     
       JMP    LF56B   
LF57B: CMP    LFD77,X 
       BCC    LF586   
       SBC    #$01    
       DEC    $E0     
       BCS    LF57B   
LF586: STA    $88,X   
       LDA    $A8,X   
       SEC            
       SBC    $E0     
       STA    $A8,X   
LF58F: LDA    $98,X   
       JSR    LF819   
       CLC            
       ADC    $80,X   
       CMP    #$0A    
       BCC    LF5A7   
LF59B: CMP    LFD7F,X 
       BCC    LF5A4   
       SBC    #$01    
       BCS    LF59B   
LF5A4: JSR    LFFCE   
LF5A7: DEX            
       BPL    LF55C   
       RTS            

LF5AB: LDX    #$04    
       TXA            
       CLC            
       ADC    $80     
       STA    $E8     
       LDA    $88     
       STA    $E9     
LF5B7: LDA    $E8     
       SEC            
       SBC    $80,X   
       STA    $E0     
       LDA    $E9     
       SEC            
       SBC    $88,X   
       STA    $E1     
       JSR    LF9BC   
       CMP    #$55    
       BCS    LF5E3   
       CMP    #$3C    
       BCS    LF5F2   
       CMP    #$28    
       BCS    LF60D   
       ASL    $E0     
       ASL    $E1     
       CMP    #$12    
       BCS    LF60D   
       ASL    $E0     
       ASL    $E1     
       JMP    LF60D   
LF5E3: TAY            
       LDA    $E0     
       ROL            
       ROR    $E0     
       LDA    $E1     
       ROL            
       ROR    $E1     
       CPY    #$64    
       BCC    LF60D   
LF5F2: STX    $E2     
       LDX    #$01    
LF5F6: LDA    $E0,X   
       STA    $DF     
       TAY            
       ROL            
       ROR    $DF     
       TYA            
       ROL            
       ROR    $DF     
       TYA            
       SEC            
       SBC    $DF     
       STA    $E0,X   
       DEX            
       BPL    LF5F6   
       LDX    $E2     
LF60D: LDA    $E0     
       STA    $98,X   
       LDA    $E1     
       ASL            
       ROR    $E1     
       LDA    $E1     
       STA    $A0,X   
       RTS            

LF61B: LDA    $CB     
       LDY    #$04    
LF61F: CMP    LF68F,Y 
       BCC    LF627   
       DEY            
       BNE    LF61F   
LF627: LDA    $C4     
       LSR            
       AND    #$03    
       BEQ    LF68E   
       TAX            
       LDA    #$0D    
       STA    $DF     
       LDA    #$82    
       STA    $E0     
LF637: LDA    $98,X   
       CLC            
       ADC    $B8,X   
       PHP            
       CMP    LFC63,Y 
       BPL    LF649   
       CMP    LFC7D,Y 
       BMI    LF649   
       STA    $98,X   
LF649: CPX    #$08    
       BPL    LF659   
       LDA    $B0,X   
       AND    #$F7    
       PLP            
       PHP            
       BPL    LF657   
       ORA    #$08    
LF657: STA    $B0,X   
LF659: PLP            
       LDA    $80,X   
       CMP    $DF     
       BCS    LF666   
       LDA    $98,X   
       BPL    LF678   
       BMI    LF670   
LF666: CMP    $E0     
       BCC    LF678   
       LDA    $98,X   
       BMI    LF678   
       BEQ    LF678   
LF670: LDA    #$00    
       STA    $98,X   
       SBC    $B8,X   
       STA    $B8,X   
LF678: LDA    #$03    
       STA    $DF     
       LDA    #$6C    
       STA    $E0     
       TXA            
       CLC            
       ADC    #$08    
       TAX            
       TYA            
       CLC            
       ADC    #$05    
       TAY            
       CPX    #$0C    
       BMI    LF637   
LF68E: RTS            

LF68F: .byte $78,$50,$32,$1E,$0F
LF694: LDX    $CD     
       DEX            
       BMI    LF69C   
       STX    $CD     
       RTS            

LF69C: LDX    $CC     
       DEX            
       BMI    LF6A5   
       STX    $CC     
       BNE    LF6E4   
LF6A5: LDX    #$03    
       CPX    $C9     
       BEQ    LF6E5   
       JSR    LFBAF   
       BPL    LF6E4   
       LDA    $C7     
       BEQ    LF6E4   
LF6B4: LDA    #$00    
       STA    $DF,X   
       LDY    #$03    
LF6BA: LDA.wy $0088,Y 
       CMP    LFC47,X 
       BCC    LF6C9   
       CMP    LFC4B,X 
       BCS    LF6C9   
       INC    $DF,X   
LF6C9: DEY            
       BNE    LF6BA   
       DEX            
       BPL    LF6B4   
       JSR    LFBAF   
       AND    #$03    
       TAY            
       LDX    #$03    
LF6D7: LDA.wy $00DF,Y 
       BEQ    LF6EC   
       DEY            
       BPL    LF6E1   
       LDY    #$03    
LF6E1: DEX            
       BPL    LF6D7   
LF6E4: RTS            

LF6E5: LDA    #$10    
       ORA    $B0     
       STA    $B0     
       RTS            

LF6EC: LDA    LFC4F,Y 
       STA    $E3     
       JSR    LFBAF   
       AND    LFC53,Y 
       CLC            
       ADC    $E3     
       LDY    $C9     
       LDX    LF09D,Y 
       TAY            
       INC    $C9     
       LDA    LF736,Y 
       JSR    LFFCE   
       LDA    LFC57,Y 
       STA    $88,X   
       LDA    #$D7    
       SEC            
       SBC    $88,X   
       STA    $A8,X   
       LDX    $CA     
       LDA    LF742,X 
       STA    $BC     
       LDA    #$E8    
       CMP.wy $00D1,Y 
       BEQ    LF727   
       LDA    #$48    
       STA.wy $00D1,Y 
LF727: BIT    $CC     
       BPL    LF733   
       LDX    $C9     
       CPX    #$03    
       BNE    LF733   
       STX    $CC     
LF733: JMP    LF000   
LF736: .byte $22,$36,$56,$6A,$0A,$82,$0A,$82,$22,$36,$56,$6A
LF742: .byte $EA,$C4,$88,$0E,$C8,$02,$22,$F8
LF74A: LDA    $CF     
       BEQ    LF782   
       DEC    $D0     
       BEQ    LF765   
       LSR            
       BCS    LF76B   
       LSR            
       BCS    LF783   
       LSR            
       BCS    LF7A6   
       LSR            
       BCS    LF790   
       BCC    LF79C   
LF760: LDA    $CF     
       LSR            
       BCC    LF782   
LF765: LDA    #$00    
       STA    $CF     
       BEQ    LF780   
LF76B: LDA    #$0E    
       STA    AUDC0   
       LDA    $D0     
       EOR    #$FF    
       LSR            
       LSR            
       SEC            
       SBC    #$06    
       STA    AUDF0   
       EOR    #$3F    
       LSR            
       SEC            
       SBC    #$03    
LF780: STA    AUDV0   
LF782: RTS            

LF783: LDA    #$04    
       STA    AUDC0   
       ASL            
       STA    AUDF0   
       LDA    $D0     
       ASL            
       ASL            
       BPL    LF780   
LF790: LDA    #$06    
       STA    AUDC0   
       LDA    $D0     
       ASL            
       STA    AUDV0   
       LSR            
       BPL    LF7AF   
LF79C: LDA    #$06    
       STA    AUDC0   
       LDA    $D0     
       LSR            
       LSR            
       BPL    LF7AC   
LF7A6: LDA    #$08    
       STA    AUDC0   
       LDA    $D0     
LF7AC: LSR            
       STA    AUDV0   
LF7AF: LSR            
       EOR    #$FF    
       CLC            
       ADC    #$04    
       STA    $DF     
       LDA    $D0     
       AND    #$01    
       ASL            
       ASL            
       ADC    $DF     
       STA    AUDF0   
       RTS            

LF7C2: LDY    #$3F    
       LDA    #$01    
LF7C6: CMP    $CF     
       BCC    LF7CE   
       STY    $D0     
       STA    $CF     
LF7CE: RTS            

LF7CF: LDY    #$04    
       LDA    #$02    
       BNE    LF7C6   
LF7D5: LDY    #$19    
       LDA    #$04    
       BNE    LF7C6   
LF7DB: LDY    #$07    
       LDA    #$08    
       BNE    LF7C6   
LF7E1: LDY    #$7F    
       LDA    #$10    
       BNE    LF7C6   
LF7E7: LDA    SWCHA   
       LSR            
       LSR            
       LSR            
       LSR            
       AND    SWCHA   
       TAY            
       CPY    #$0F    
       BEQ    LF7F8   
       STY    $C7     
LF7F8: LDA    $B0     
       LSR            
       BCC    LF818   
       LDA    LFCC1,Y 
       ASL            
       STA    $A0     
       LDA    $B0     
       AND    #$F7    
       STA    $DF     
       LDA    LFCB6,Y 
       ASL            
       STA    $98     
       LSR            
       BEQ    LF818   
       AND    #$08    
       ORA    $DF     
       STA    $B0     
LF818: RTS            

LF819: CLC            
       ADC    $C0     
       LSR            
       LSR            
       LSR            
       LSR            
       EOR    #$08    
       SEC            
       SBC    #$08    
       RTS            

LF826: LDY    #$0D    
       LDA    $80,X   
       CMP    #$0D    
       BCS    LF836   
       LDA    $98,X   
       BPL    LF858   
       LDY    #$04    
       BNE    LF843   
LF836: CMP    LF89D,X 
       BCC    LF858   
       LDA    $98,X   
       BMI    LF858   
       BEQ    LF858   
       LDY    #$05    
LF843: LDA    $88,X   
       CMP    #$1D    
       BCC    LF898   
       CMP    #$2B    
       BCC    LF89A   
       INY            
       INY            
       CMP    #$3D    
       BCC    LF898   
       CMP    #$4B    
       BCS    LF898   
       RTS            

LF858: LDA    $88,X   
       CMP    #$05    
       BCS    LF866   
       LDA    $A0,X   
       BPL    LF89A   
       LDY    #$00    
       BEQ    LF873   
LF866: CMP    LFCD1,X 
       BCC    LF89A   
       LDA    $A0,X   
       BMI    LF89A   
       BEQ    LF89A   
       LDY    #$08    
LF873: LDA    $80,X   
       CMP    #$1E    
       BCC    LF898   
       CMP    #$2A    
       BCC    LF89A   
       INY            
       CMP    #$32    
       BCC    LF898   
       CMP    #$3E    
       BCC    LF89A   
       INY            
       CMP    #$52    
       BCC    LF898   
       CMP    #$5E    
       BCC    LF89A   
       INY            
       CMP    #$66    
       BCC    LF898   
       CMP    #$72    
       BCC    LF89A   
LF898: LDY    #$0C    
LF89A: CPY    #$0C    
       RTS            

LF89D: .byte $82,$00,$00,$00,$87,$86,$86,$86
LF8A5: LDA    #$7C    
       STA    $88,X   
       LDY    #$00    
       TXA            
       AND    #$03    
       BNE    LF8B2   
       STA    $88,X   
LF8B2: CPX    #$05    
       BCC    LF8B8   
       STY    $B0,X   
LF8B8: STY    $98,X   
       STY    $A0,X   
       TYA            
       JMP    LFFCE   
LF8C0: DEC    $CE     
       BPL    LF91B   
       LDA    #$08    
       STA    $CE     
       LDY    $C9     
       BEQ    LF91B   
LF8CC: JSR    LFBAF   
       LSR            
       LSR            
       AND    #$03    
       CMP    LF09C,Y 
       BCC    LF8CC   
       TAY            
       LDA    $B0     
       LSR            
       BCC    LF91B   
       BIT    $CB     
       BMI    LF8ED   
       BVS    LF8ED   
       LDA    $CB     
       ASL            
       ADC    #$50    
       CMP    $C5     
       BCC    LF91B   
LF8ED: LDX    #$07    
       BIT    $B7     
       BPL    LF8FE   
       DEX            
       BIT    $B6     
       BMI    LF91B   
       LDA    $CA     
       CMP    #$02    
       BMI    LF91B   
LF8FE: LDA.wy $0088,Y 
       CLC            
       ADC    #$04    
       CPX    #$06    
       BNE    LF91E   
       STA    $E7     
       LDA    $8F     
       SEC            
       SBC    #$18    
       BMI    LF915   
       CMP    $E7     
       BCS    LF91C   
LF915: ADC    #$30    
       CMP    $E7     
       BCC    LF91C   
LF91B: RTS            

LF91C: LDA    $E7     
LF91E: STA    $88,X   
       CLC            
       EOR    #$FF    
       ADC    #$F9    
       STA    $A8,X   
       LDA.wy $0080,Y 
       STA    $80,X   
       LDA    #$03    
       JSR    LFFCB   
       LDA    #$A0    
       STA    $B0,X   
       LDA    #$00    
       SEC            
       SBC    $CB     
       LSR            
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $E6     
       LDY    #$01    
LF943: JSR    LFBAF   
       CMP    $E6     
       BCC    LF94C   
       LDA    $E6     
LF94C: BIT    $C5     
       BPL    LF952   
       EOR    #$FF    
LF952: STA.wy $00E8,Y 
       DEY            
       BPL    LF943   
       LDA    $80     
       CLC            
       ADC    $E8     
       STA    $E8     
       LDA    $88     
       CLC            
       ADC    $E9     
       STA    $E9     
       JSR    LF5B7   
       LDA    $98,X   
       STA    $E0     
       LDA    $A0,X   
       STA    $E1     
       JSR    LF9BC   
       BEQ    LF9B6   
       LDA    $CB     
       LSR            
       LSR            
       LSR            
       CLC            
       ADC    #$1E    
       STA    $E6     
       LSR            
       STA    $E5     
LF983: LDA    $DF     
       CMP    $E6     
       BCC    LF997   
       LDA    $98,X   
       ASL            
       ROR    $98,X   
       LDA    $A0,X   
       ASL            
       ROR    $A0,X   
       LSR    $DF     
       BNE    LF983   
LF997: CMP    $E5     
       BCS    LF9A3   
       ASL    $98,X   
       ASL    $A0,X   
       ASL    $DF     
       BNE    LF983   
LF9A3: CPX    #$06    
       BNE    LF9B9   
       LDA    $8E     
       SBC    $8F     
       STA    $DF     
       LDA    $A6     
       SEC            
       SBC    $A7     
       EOR    $DF     
       BPL    LF9B9   
LF9B6: JMP    LF8A5   
LF9B9: JMP    LF006   
LF9BC: LDA    $E0     
       BPL    LF9C2   
       EOR    #$FF    
LF9C2: STA    $DF     
       LDA    $E1     
       BPL    LF9CA   
       EOR    #$FF    
LF9CA: CMP    $DF     
       BCS    LF9D3   
       LDY    $DF     
       STA    $DF     
       TYA            
LF9D3: LSR    $DF     
       CLC            
       ADC    $DF     
       STA    $DF     
       RTS            

LF9DB: .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$A5,$E8,$85,$08,$4C,$18,$F3,$A5,$E8,$8D,$11,$00,$85,$08
       .byte $85,$3F,$4C,$6B,$FA,$A6,$E2,$B5,$90,$8D,$11,$00,$85,$2B,$A2,$94
       .byte $86,$EA,$85,$21,$4C,$FA,$F2,$A6,$E2,$B5,$90,$85,$2B,$85,$21,$85
       .byte $11,$A9,$94,$8D,$EA,$00,$4C,$FA,$F2,$A6,$E2,$B5,$90,$85,$2B,$85
       .byte $21,$A9,$94,$85,$EA,$85,$11,$AD,$E8,$00,$4C,$FC,$F2,$A6,$E2,$B5
       .byte $90,$85,$2B,$85,$21,$A9,$94,$85,$EA,$B1,$F8,$85,$11,$10,$A3,$A5
       .byte $E8,$8D,$08,$00,$4C,$02,$F3,$A6,$E2,$B5,$90,$85,$2B,$85,$21,$A2
       .byte $94,$B1,$F8,$10,$94,$B1,$F0,$8D,$11,$00,$85,$1D,$A5,$E8,$85,$08
       .byte $86,$EA,$4C,$06,$F3,$A6,$E2,$B5,$90,$85,$2B,$85,$21,$A2,$94,$A5
       .byte $E8,$85,$08,$B1,$F8,$10,$0A,$B1,$F0,$85,$11,$8E,$EA,$00,$4C,$04
       .byte $F3,$86,$EA,$8D,$11,$00,$4C,$18,$F3,$B1,$F2,$85,$1C,$85,$2B,$A9
       .byte $85,$85,$EA,$A9,$F2,$8D,$EB,$00,$4C,$FA,$F2,$A6,$E2,$B5,$90,$85
       .byte $2B,$85,$21,$B1,$F8,$10,$7A,$B1,$F0,$85,$1D,$B1,$F6,$10,$0E,$A5
       .byte $E8,$85,$11,$85,$08,$A9,$94,$8D,$EA,$00,$4C,$0A,$F3,$A9,$94,$85
       .byte $11,$85,$EA,$A5,$E8,$8D,$08,$00,$4C,$1D,$F3,$A6,$E2,$B5,$90,$85
       .byte $2B,$85,$21,$A2,$94,$B1,$F8,$10,$4B,$B1,$F0,$85,$1D,$B1,$F6,$10
       .byte $46,$B1,$EE,$8D,$11,$00,$85,$1B,$A5,$E8,$85,$08,$86,$EA,$4C,$0E
       .byte $F3,$A6,$E2,$B5,$90,$85,$2B,$85,$21,$A2,$94,$A5,$E8,$85,$08,$B1
       .byte $F8,$10,$12,$B1,$F0,$85,$1D,$B1,$F6,$10,$0E,$B1,$EE,$85,$11,$8E
       .byte $EA,$00,$4C,$0C,$F3,$EA,$EA,$10,$EE,$86,$EA,$8D,$11,$00,$4C,$1D
       .byte $F3,$EA,$10,$87,$EA,$10,$B6,$A5,$E8,$8D,$11,$00,$85,$08,$85,$3F
       .byte $4C,$F7,$FA
LFB3E: LDA    $B0     
       LSR            
       BCC    LFBAE   
       LSR            
       BCS    LFBA1   
       LDA    REFP1   
       EOR    PF0     
       ASL            
       BCC    LFBAE   
       LDA    $B0     
       EOR    #$02    
       STA    $B0     
       BIT    $B0     
       BMI    LFB86   
       BVS    LFBAE   
       LDA    $B0     
       EOR    #$80    
       STA    $B0     
       LDA    $80     
       CLC            
       ADC    #$04    
       STA    $84     
       LDA    $88     
       STA    $8C     
       LDA    #$F0    
       SEC            
       SBC    $8C     
       STA    $AC     
       LDA    #$20    
       STA    $B4     
       LDX    $C7     
       LDA    LFCD4,X 
       ASL            
       STA    $9C     
       LDA    LFCDE,X 
       ASL            
       STA    $A4     
       JMP    LF7C2   
LFB86: LDA    $B0     
       EOR    #$C0    
       STA    $B0     
       LDA    $AC     
       SEC            
       SBC    #$10    
       STA    $AC     
       LDA    $84     
       CLC            
       ADC    #$01    
       STA    $84     
       LDA    #$10    
       STA    $B4     
       JMP    LF760   
LFBA1: LDA    REFP1   
       EOR    PF0     
       ASL            
       BCS    LFBAE   
       LDA    $B0     
       AND    #$FD    
       STA    $B0     
LFBAE: RTS            

LFBAF: LDA    $C5     
       ASL            
       ASL            
       ASL            
       ASL            
       CLC            
       ADC    $C5     
       ASL            
       ASL            
       ASL            
       CLC            
       ADC    $C5     
       CLC            
       ADC    #$95    
       EOR    $C4     
       STA    $C5     
       RTS            

LFBC6: .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$0C,$0C,$1C,$1C,$38,$38,$1E,$38,$38,$30,$28
       .byte $30,$08,$20,$00,$00,$0C,$0C,$1C,$3D,$38,$5E,$1E,$18,$38,$3C,$6C
       .byte $E2,$40,$02,$00,$00,$02,$02,$02,$00,$00,$7E,$66,$66,$66,$66,$7E
       .byte $7E,$18,$18,$18,$18,$78,$7E,$60,$7E,$06,$66,$7E,$7E,$06,$06,$7C
       .byte $06,$7E,$06,$06,$7E,$66,$66,$66,$7E,$66,$06,$7E,$60,$7E,$7E,$66
       .byte $66,$7E,$60,$7E,$20,$30,$18,$0C,$06,$7E,$7E,$66,$66,$3C,$66,$7E
       .byte $7E,$06,$7E,$66,$66,$7E
LFC3C: .byte $00,$06,$0C,$12,$18,$1E,$24,$2A,$30,$36,$3C
LFC47: .byte $00,$04,$24,$44
LFC4B: .byte $20,$40,$5E,$68
LFC4F: .byte $00,$04,$06,$08
LFC53: .byte $03,$01,$01,$03
LFC57: .byte $02,$02,$02,$02,$22,$22,$42,$42,$60,$60,$60,$60
LFC63: .byte $10,$0C,$08,$06,$04,$08,$06,$04,$03,$02,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$80,$80,$80,$80,$80,$80
LFC7D: .byte $F0,$F4,$F8,$FA,$FC,$F8,$FA,$FC,$FD,$FE,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00
LFCB6: .byte $00,$00,$00,$00,$00,$05,$05,$07,$00,$7B,$7B
LFCC1: .byte $79,$00,$00,$00,$00,$03,$7D,$00,$00,$03,$7D,$00,$00,$05,$7B,$00
LFCD1: .byte $66,$00,$00
LFCD4: .byte $00,$6E,$6C,$6C,$6C,$0F,$0F,$15,$00,$71
LFCDE: .byte $71,$6B,$00,$00,$00,$0B,$75,$00,$00,$0B,$75,$00,$00,$0F,$71,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$00,$DD,$00,$DD,$00,$DD,$00,$DD,$00,$DD,$00,$DD,$00,$DD
       .byte $00,$DD,$00,$DD,$00,$DD,$00,$DD,$00,$DD,$00,$DD,$00,$DD,$00,$DD
       .byte $00,$DD,$00,$DD,$00,$D5,$00,$D5,$00,$D5,$00,$D5,$00,$D5,$00,$D5
       .byte $00,$D5,$00,$D5,$00,$DD,$00,$DD,$00,$DD,$00,$DD,$00,$DD,$00,$DD
       .byte $00,$DD,$00,$DD,$00,$D7,$00,$D7,$00,$D7,$00,$D7,$00,$D7,$00,$D7
       .byte $00,$D7,$00,$D7,$00,$DD,$00,$DD,$00,$DD,$00,$DD,$00,$DD,$00,$DD
       .byte $00,$DD,$00,$DD,$00,$DD,$00,$DD,$00,$DD,$00,$DD,$00,$DD,$00,$DD
       .byte $00,$DD,$00,$DD,$00,$DD,$00,$DD,$00
LFD77: .byte $67,$61,$61,$61,$6F,$6D,$6D,$6D
LFD7F: .byte $84,$84,$84,$84,$88,$8A,$8A,$8A
LFD87: LDX    #$02    
LFD89: TXA            
       ASL            
       ASL            
       TAY            
       LDA    #$FC    
       STA.wy $00EB,Y 
       STA.wy $00ED,Y 
       STY    $DF     
       LDA    $BD,X   
       AND    #$0F    
       TAY            
       LDA    LFC3C,Y 
       LDY    $DF     
       STA.wy $00EC,Y 
       LDA    $BD,X   
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    LFC3C,Y 
       LDY    $DF     
       STA.wy $00EA,Y 
       DEX            
       BPL    LFD89   
       RTS            

LFDB7: AND    #$3F    
       BNE    LFDE6   
       LDA    #$03    
       TAX            
       INC    $C6     
       AND    $C6     
       STA    $C6     
       ASL            
       ADC    $C6     
       TAY            
LFDC8: LDA    $80,X   
       CMP    $80     
       LDA    LFDE7,Y 
       BCC    LFDD3   
       EOR    #$FF    
LFDD3: STA    $B8,X   
       LDA    $88,X   
       CMP    $88     
       LDA    LFDF3,Y 
       BCC    LFDE0   
       EOR    #$FF    
LFDE0: STA    $C0,X   
       INY            
       DEX            
       BNE    LFDC8   
LFDE6: RTS            

LFDE7: .byte $04,$04,$04,$FC,$FC,$FC,$00,$04,$02,$04,$02,$02
LFDF3: .byte $02,$02,$02,$FE,$FE,$FE,$00,$02,$02,$02,$02,$FE,$FF
LFE00: LDA    $88     
       PHA            
       EOR    #$FF    
       SEC            
       ADC    #$77    
       STA    $F6     
       LDA    $8C     
       PHA            
       EOR    #$FF    
       SEC            
       ADC    #$77    
       STA    $F8     
       LDX    #$02    
LFE16: LDA    $95,X   
       AND    #$0F    
       TAY            
       LDA    LF32B,Y 
       STA    $E3,X   
       LDA    $91,X   
       AND    #$0F    
       TAY            
       LDA    LF322,Y 
       STA    $DF,X   
       DEX            
       BPL    LFE16   
       STX    $88     
       STX    $8C     
       STA    WSYNC   
       INX            
       STX    PF0     
       STX    PF1     
       STX    PF2     
       LDA    #$D4    
       STA    COLUBK  
       LDA    #$05    
       STA    CTRLPF  
       STA    VDELP0  
       STA    VDELP1  
       LDA    #$00    
       STA    HMP0    
       LDA    #$10    
       STA    HMP1    
       STA    RESP0   
       STA    RESP1   
       LDA    #$E8    
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$76    
       STA    $E8     
       STA    $E7     
       LDA    #$00    
       STA    WSYNC   
       STA    HMOVE   
       STA    VBLANK  
       STA    GRP0    
       STA    GRP1    
       STA    GRP0    
       STA    ENAM0   
       STA    REFP0   
       STA    REFP1   
       LDY    #$05    
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    HMCLR   
LFE7C: LDA    ($F4),Y 
       TAX            
       LDA    ($EA),Y 
       STA    WSYNC   
       STA    HMOVE   
       STY    $E2     
       STA    GRP0    
       LDA    ($EC),Y 
       STA    GRP1    
       LDA    ($EE),Y 
       STA    GRP0    
       LDA    ($F0),Y 
       STA    $E6     
       LDA    ($F2),Y 
       LDY    $E6     
       STY    GRP1    
       STA    GRP0    
       STX    GRP1    
       STX    GRP0    
       LDY    $E2     
       DEY            
       BPL    LFE7C   
       INY            
       STY    VDELP0  
       STY    VDELP1  
       LDA    #$F2    
       STA    WSYNC   
       STA    HMOVE   
       STA    $ED     
       STY    GRP0    
       STY    GRP1    
       LDA    $A8     
       STA    $EE     
       LDA    $AC     
       STA    $F0     
       LDA    $AB     
       STA    $F2     
       LDA    #$07    
       STA    $E6     
       LDA    #$03    
       STA    $E2     
       LDA    #$FC    
       STA    $F7     
       STA    $F9     
       LDA    $B8     
       STA    COLUP0  
       LDA    $B4     
       STA    NUSIZ0  
       LDA    $B3     
       STA    REFP1   
       LDA    $94     
       LDY    #$02    
       STA    WSYNC   
       STA.w  $002A   
       BNE    LFEF1   
       BPL    LFEFC   
LFEEA: STA    WSYNC   
       STA    HMOVE   
       LDA.wy $008F,Y 
LFEF1: LDX    LFEE7,Y 
       AND    #$0F    
       SEC            
LFEF7: SBC    #$01    
       BPL    LFEF7   
       DEY            
LFEFC: STA    VSYNC,X 
       BNE    LFEEA   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$06    
       STA    COLUBK  
       LDA    #$B2    
       STA    $EA     
       LDA    #$F2    
       STA    $EB     
       LDA    #$00    
       STA    $EC     
       LDA    #$F0    
       STA    $EF     
       STA    $F1     
       LDA    #$FB    
       STA    $F3     
       STA    $F5     
       LDA    $B0     
       STA    REFP0   
       STA    CXCLR   
       LDA    $90     
       STA    HMP0    
       LDA    $94     
       STA    HMM0    
       LDX    #$00    
       JSR    LFF57   
       STY    PF1     
       STA    HMOVE   
       STY    PF2     
       LDA    $BC     
       STA.w  $0007   
       JMP    LF2B2   
LFF41: .byte $A2,$08,$A9,$00,$85,$1B,$85,$1C,$20,$57,$FF,$A9,$02,$85,$01,$68
       .byte $85,$8C,$68,$85,$88,$60
LFF57: LDY    #$10    
LFF59: STA    WSYNC   
       STA    HMOVE   
       NOP            
       LDA    #$76    
       STA    COLUPF  
       LDA    #$C0    
       STA    PF0     
       LDA    #$FC    
       STA    PF1     
       LDA    #$E7    
       STA    PF2     
       LDA    $D1,X   
       STA    COLUBK  
       LDA    $D2,X   
       STA    COLUBK  
       LDA    $D3,X   
       STA    COLUBK  
       STA    HMCLR   
       NOP            
       LDA    $D4,X   
       STA    COLUBK  
       LDA    #$06    
       STA    COLUBK  
       DEY            
       BNE    LFF59   
       RTS            

LFF89: LDX    #$03    
       LDY    #$02    
       STY    $E1     
LFF8F: LDA.wy $0088,Y 
       CMP    #$7C    
       BEQ    LFFCA   
       SEC            
       SBC    $88,X   
       CMP    #$20    
       BCS    LFFC0   
       LDA    $A0,X   
       BMI    LFFAA   
       EOR    #$FF    
       CLC            
       ADC    #$01    
       STA    $A0,X   
       DEC    $DF,X   
LFFAA: LDA.wy $00A0,Y 
       BPL    LFFC0   
       EOR    #$FF    
       CLC            
       ADC    #$01    
       STA.wy $00A0,Y 
       LDA.wy $00DF,Y 
       SEC            
       SBC    #$01    
       STA.wy $00DF,Y 
LFFC0: DEX            
       DEY            
       BNE    LFF8F   
       LDA    $E1     
       BNE    LFFCA   
       STA    $A2     
LFFCA: RTS            

LFFCB: CLC            
       ADC    $80,X   
LFFCE: STA    $80,X   
       TXA            
       AND    #$03    
       PHP            
       LDA    $80,X   
       PLP            
       BEQ    LFFDC   
       SEC            
       SBC    #$06    
LFFDC: STA    $E0     
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $E1     
       LDA    $E0     
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    $E1     
       CLC            
       ADC    $E0     
       AND    #$F0    
       ADC    $E1     
       EOR    #$70    
       STA    $90,X   
       RTS            

LFFF8: .byte $FF,$FF,$34,$F3,$34,$F3,$34,$F3
