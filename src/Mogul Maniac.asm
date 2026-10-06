; Disassembly of roms/Mogul Maniac.bin
; Disassembled Tue Oct  6 15:21:52 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Mogul Maniac.bin
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
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296

       ORG $F000
LF000: LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       DEC    $9C     
       BMI    LF04A   
       LDA    $F2     
       STA    COLUP0  
       STA    COLUP1  
       LDY    #$09    
       STY    $99     
       LDX    #$0A    
LF016: LDA    $AE,X   
       STA    $A2,X   
       DEX            
       DEX            
       BPL    LF016   
       STA    WSYNC   
LF020: LDA    ($A2),Y 
       STA    GRP0    
LF024: LDA    ($A4),Y 
       STA    GRP1    
       LDA    ($AC),Y 
       TAX            
LF02B: TXS            
LF02C: LDA    ($A8),Y 
LF02E: TAX            
       LDA    ($A6),Y 
       STA    $9A     
       LDA    ($AA),Y 
       TAY            
       LDA    $9A     
       STA    GRP0    
       STX    GRP1    
       STY    GRP0    
       TSX            
       STX    GRP1    
       DEC    $99     
       LDY.w  $0099   
       BPL    LF020   
       BMI    LF000   
LF04A: LDX    #$FF    
       TXS            
       STA    HMCLR   
       JMP    LFC9A   
LF052: PHP            
LF053: PLP            
       ADC    $91,X   
       PHP            
       CPX    #$02    
       BEQ    LF065   
       CMP    #$60    
       BCC    LF065   
       SEC            
       SBC    #$60    
       PLP            
       SEC            
       PHP            
LF065: STA    $91,X   
       LDA    #$00    
       DEX            
       BPL    LF053   
       PLP            
       LDA    $91     
       CMP    #$10    
       BCC    LF097   
       LDA    #$09    
       STA    $91     
       LDA    #$59    
       STA    $92     
       LDA    #$91    
       STA    $93     
       LDA    $8A     
       AND    #$0F    
       CMP    #$0F    
       BEQ    LF097   
       INC    $8A     
       LDA    #$0A    
       JMP    LFA38   
LF08E: TAX            
       LDA    LFF40,X 
       STA.wy $00A2,Y 
       INY            
       INY            
LF097: RTS            

LF098: LDA    #$04    
       STA    AUDC0   
       STA    AUDC1   
       LDX    $BB     
       LDA    #$0A    
       STA    AUDV1   
       STA    AUDV0   
       LDA    LFFC0,X 
       DEC    $DE     
       BPL    LF0BD   
       LDA    #$00    
       STA    AUDC1   
       STA    AUDC0   
       INC    $BB     
       LDA    LFC3B,X 
       STA    $DE     
       LDA    LFFC1,X 
LF0BD: PHA            
       AND    #$1F    
       STA    AUDF1   
       PLA            
       SEC            
       ROR            
       LSR            
       LSR            
       LSR            
       STA    AUDF0   
       RTS            

LF0CB: LDA    #$80    
       STA    $8A     
       STA    $82     
LF0D1: LDA    #$00    
       LDX    #$1E    
LF0D5: STA    $AE,X   
       DEX            
       BPL    LF0D5   
       STA    $96     
       STA    $DD     
       STA    $DE     
       LDA    #$F8    
       STA    $B3     
       LDA    #$F0    
       STA    $B5     
       LDA    #$FF    
       STA    $B7     
       LDA    #$50    
       STA    $DC     
       LDA    $A1     
       AND    #$FE    
       STA    $A1     
       LDA    #$30    
       STA    $8B     
       JSR    LF115   
       LDA    #$4C    
       STA    $9E     
       LDX    #$04    
       LDA    #$00    
       BEQ    LF10B   
LF107: LDA    $89     
       LDX    #$03    
LF10B: CLC            
       ADC    #$96    
       ROR            
       STA    $85,X   
       DEX            
       BPL    LF10B   
       RTS            

LF115: LDX    $84     
       LDY    LFB48,X 
       STY    $BD     
       LDY    LFB3F,X 
       LDX    #$03    
LF121: LDA    LFA72,Y 
       ASL            
       STA    $C0,X   
       INY            
       CPY    #$4E    
       BNE    LF12E   
       LDY    #$00    
LF12E: DEX            
       BPL    LF121   
       STY    $9D     
       RTS            

LF134: LDY    #$00    
LF136: LDX    #$05    
LF138: STY    $91,X   
       DEX            
       BPL    LF138   
       RTS            

LF13E: LDY    #$00    
LF140: STA    WSYNC   
       LDA    ($80),Y 
       STA    COLUPF  
       LDA    LF180,X 
       STA    PF0     
       LDA    LF18C,X 
       STA    PF1     
       LDA    LF198,X 
       STA    PF2     
       LDA    LF1A4,X 
       STA    PF0     
       LDA    LF1B0,X 
       STA    PF1     
       LDA    LF1BC,X 
       STA    PF2     
       INY            
       CPY    #$06    
       BNE    LF140   
       INX            
       CPX    #$06    
       BEQ    LF172   
       CPX    #$0C    
       BNE    LF13E   
LF172: LDX    #$13    
LF174: STA    WSYNC   
LF176: LDA    #$38    
       STA    COLUBK  
       STA    COLUPF  
       DEX            
       BPL    LF174   
       RTS            

LF180: .byte $40,$C0,$40,$40,$00,$00,$00,$00,$00,$00,$00,$00
LF18C: .byte $20,$60,$A7,$28,$0F,$08,$44,$6C,$54,$45,$01,$00
LF198: .byte $44,$5C,$74,$45,$01,$01,$C0,$20,$27,$C8,$08,$07
LF1A4: .byte $00,$00,$F0,$40,$40,$F0,$30,$00,$B0,$90,$80,$00
LF1B0: .byte $1C,$22,$BE,$22,$00,$80,$04,$04,$14,$17,$10,$E0
LF1BC: .byte $00,$00,$1E,$01,$01,$1E,$00,$00,$00,$03,$00,$00

START:
       SEI            
       CLD            
       LDX    #$FF    
       TXS            
       INX            
       TXA            
LF1CF: STA    VSYNC,X 
       INX            
       BNE    LF1CF   
       LDA    #$F3    
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    $81     
LF1DC: LDA    #$2E    
       STA    TIM64T  
       LDA    #$82    
       STA    VBLANK  
       STA    WSYNC   
       LDY    #$07    
       STA    WSYNC   
LF1EB: DEY            
       BPL    LF1EB   
       STA    RESP0   
       STA    RESP1   
       LDY    #$F0    
       STY    HMP0    
       STA    WSYNC   
       STA    VSYNC   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$00    
       STA    WSYNC   
       STA    VSYNC   
LF204: LDA    INTIM   
       BNE    LF204   
       STA    VBLANK  
       JSR    LF172   
       LDX    #$06    
       JSR    LF13E   
       INX            
       JSR    LF13E   
       LDY    #$0F    
LF219: STA    WSYNC   
       STY    $99     
       LDA    ($80,X) 
       LDA    LFF00,Y 
       STA    GRP0    
       LDA    LFF10,Y 
       STA    GRP1    
       LDX    LFF20,Y 
       LDA    LFA4E,Y 
       STA    $A4     
       LDA    LFF30,Y 
       TAY            
       LDA    $A4     
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       LDX    #$00    
       STX    GRP1    
       STX    GRP0    
       LDY    $99     
       DEY            
       BPL    LF219   
       LDX    #$2E    
       JSR    LF176   
       LDA    #$22    
       STA    TIM64T  
       STA    WSYNC   
       INX            
       STX    COLUBK  
       STX    COLUPF  
       JSR    LF098   
       CPX    #$13    
       BEQ    LF26A   
       INC    $80     
LF262: LDA    INTIM   
       BNE    LF262   
       JMP    LF1DC   
LF26A: LDA    #$09    
       STA    $9F     
       LDA    #$59    
       STA    $A0     
       LDA    #$90    
       STA    $A1     
       LDA    #$A1    
       STA    $84     
       LDA    #$3F    
       STA    CTRLPF  
       LDA    #$B0    
       STA    $9B     
       JMP    LF5C3   
LF285: LDA    #$2E    
       STA    TIM64T  
       LDA    #$82    
       STA    VBLANK  
       STA    WSYNC   
       STA    ENABL   
       STA    WSYNC   
       STA    WSYNC   
       STA    VSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    WSYNC   
       STA    VSYNC   
       ASL    $98     
       LDA    SWCHB   
       ROR            
       BCC    LF2AC   
       INC    $98     
       BNE    LF2B8   
LF2AC: LDA    $98     
       CMP    #$FE    
       BNE    LF2B8   
       LDA    #$03    
       AND    $9B     
       STA    $9B     
LF2B8: ASL    $81     
       LDA    SWCHB   
       AND    #$02    
       BEQ    LF2C5   
       INC    $81     
       BNE    LF2EC   
LF2C5: LDA    $81     
       BNE    LF2CF   
       LDA    $83     
       CMP    #$1E    
       BEQ    LF2D3   
LF2CF: CMP    #$FE    
       BNE    LF2EC   
LF2D3: LDA    $9B     
       ORA    #$B0    
       STA    $9B     
       CLC            
       LDA    $84     
       ADC    #$01    
       CMP    #$AA    
       BNE    LF2E4   
       LDA    #$A1    
LF2E4: STA    $84     
       STA    $82     
       LDA    #$00    
       STA    $83     
LF2EC: LDA    #$00    
       STA    COLUPF  
       LDA    $F3     
       STA    COLUBK  
       LDA    $F1     
       STA    COLUP0  
       STA    COLUP1  
       BIT    $9B     
       BMI    LF300   
       STA    $F2     
LF300: INC    $83     
       BNE    LF310   
       INC    $82     
       BNE    LF310   
       LDA    $9B     
       AND    #$DF    
       ORA    #$80    
       STA    $9B     
LF310: LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       AND    $90     
       TAX            
       STX    $A2     
       LDA    $85,X   
       TAY            
       LDA    LFA7F,Y 
       ASL            
       TAX            
       STX    $FC     
       LDA    LFB12,X 
       STA    $99     
       LDA    LFB13,X 
       STA    $9A     
       LDX    $A2     
       LDY    #$00    
       LDA    ($99),Y 
       LDY    $A2     
       STA.wy $00CC,Y 
       CLC            
       LDA    #$02    
       ADC    $99     
       STA    $DF,X   
       STA    $E3,X   
       LDA    #$00    
       ADC    $9A     
       STA    $E7,X   
       STA    $EB,X   
       LDY    #$01    
       LDA    ($99),Y 
       STA    $8C,X   
       LDA    $94     
       CMP    #$04    
       BCC    LF3B3   
LF357: LDA    $80     
       BPL    LF3B0   
       LDA    #$6F    
       STA    $DF     
       STA    $E3     
       LDA    #$FF    
       STA    $E7     
       STA    $EB     
       LDA    #$00    
       STA    $CC     
       STA    $C8     
       STA    $C4     
       LDX    $9D     
       LDA    $BD     
       AND    #$1F    
       CMP    #$1F    
       BEQ    LF389   
       CMP    #$0F    
       BEQ    LF395   
       AND    #$07    
       CMP    #$07    
       BEQ    LF389   
       AND    #$03    
       CMP    #$01    
       BNE    LF395   
LF389: LDA    $DC     
       ASL            
       BIT    LF506   
       BEQ    LF39D   
LF391: ORA    #$10    
       BNE    LF39D   
LF395: LDA    $DC     
       ASL            
       BIT    LF506   
       BEQ    LF391   
LF39D: STA    $DC     
       LDA    LFA72,X 
       ROL            
       STA    $C0     
       ROL    $BD     
       INX            
       CPX    #$4E    
       BNE    LF3AE   
       LDX    #$00    
LF3AE: STX    $9D     
LF3B0: JMP    LF3D1   
LF3B3: LDA    $BD     
       AND    #$03    
       BNE    LF357   
       LDA    $80     
       BPL    LF3D1   
       ASL    $BD     
       ASL    $DC     
       LDA    #$6F    
       STA    $DF     
       STA    $E3     
       LDA    #$FF    
       STA    $E7     
       STA    $EB     
       LDA    #$A0    
       STA    $C4     
LF3D1: LDA    $90     
       AND    #$03    
       TAX            
       STX    $AC     
       LDA    $C0,X   
       SEC            
       SBC    $8B     
       STA    $A2     
       LDA    $C4,X   
       SBC    $BF     
       STA    $A3     
       BEQ    LF3EC   
       EOR    #$FF    
       JMP    LF3EE   
LF3EC: LDA    $A2     
LF3EE: CMP    #$AF    
       BCC    LF3F4   
       LDA    #$AF    
LF3F4: LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    $C8,X   
       CMP    #$07    
       BCC    LF415   
       LDA    LFBF2,Y 
       CLC            
       ADC    $C0,X   
       STA    $C0,X   
       LDA    $C4,X   
       ADC    LFBFD,Y 
       STA    $C4,X   
       LDA    $C8,X   
       SEC            
       SBC    #$07    
       STA    $C8,X   
LF415: LDA    $8C,X   
       AND    #$0F    
       TAY            
       LDA    $A3     
       BNE    LF425   
       LDA    $A2     
       CMP    LFC18,Y 
       BCC    LF44C   
LF425: LDA    $A2     
       CMP    LFC18,Y 
       BCS    LF444   
       LDA    $E3,X   
       LDY    $FC     
       LDA    LFBC1,Y 
       STA    $E3,X   
       LDA    LFBC2,Y 
       STA    $EB,X   
       LDA    $F8,X   
       SEC            
       SBC    #$01    
       STA    $CC,X   
       JMP    LF44C   
LF444: LDA    #$6F    
       STA    $E3,X   
       LDA    #$FF    
       STA    $EB,X   
LF44C: LDA    $A2     
       LDX    #$00    
       JSR    LFC56   
       LDX    $AC     
       STA    $D0,X   
       TYA            
       ASL            
       ASL            
       ASL            
       ASL            
       STA    $D8,X   
       LDA    $90     
       AND    #$03    
       TAY            
       LDA    $BD     
LF465: LSR            
       DEY            
       BPL    LF465   
       LDA    $A3     
       BCS    LF47D   
       LDA    #$94    
       SEC            
       SBC    $85,X   
       CLC            
       ADC    $A2     
       STA    $A2     
       LDA    $A3     
       ADC    #$00    
       STA    $A3     
LF47D: BNE    LF48B   
       LDA    $8C,X   
       AND    #$0F    
       TAY            
       LDA    $A2     
       CMP    LFC18,Y 
       BCC    LF4C5   
LF48B: LDA    $8C,X   
       AND    #$0F    
       TAY            
       LDA    $A2     
       CMP    LFC18,Y 
       BCS    LF4AF   
       LDA    $DF,X   
       LDY    $FC     
       LDA    LFBC1,Y 
       STA    $DF,X   
       LDA    LFBC2,Y 
       STA    $E7,X   
       LDA    $F8,X   
       SEC            
       SBC    #$01    
       STA    $CC,X   
       JMP    LF4C5   
LF4AF: LDA    #$6F    
       STA    $DF,X   
       LDA    #$FF    
       STA    $E7,X   
       LDA    $DF,X   
       CMP    $E3,X   
       BNE    LF4C5   
       CMP    #$6F    
       BNE    LF4C5   
       LDA    #$00    
       STA    $CC,X   
LF4C5: LDA    $A2     
       LDX    #$00    
       JSR    LFC56   
       LDX    $AC     
       STA    $D4,X   
       TYA            
       ORA    $D8,X   
       STA    $D8,X   
       LDX    #$03    
LF4D7: LDA    $D8,X   
       AND    #$0F    
       CMP    #$09    
       BCS    LF4E1   
       INC    $F8,X   
LF4E1: LDA    $D8,X   
       AND    #$F0    
       CMP    #$A0    
       BCS    LF4EB   
       INC    $F8,X   
LF4EB: DEX            
       BPL    LF4D7   
       LDY    #$00    
       STY    HMP0    
       LDX    #$00    
LF4F4: TXA            
       PHA            
       ASL            
       TAX            
       LDA    #$FE    
       STA    $A3,X   
       TXA            
       ROR            
       TAX            
       LDA    $91,X   
       PHA            
       LSR            
       LSR            
       LSR            
       LSR            
LF506: JSR    LF08E   
       PLA            
       AND    #$0F    
       JSR    LF08E   
       PLA            
       TAX            
       INX            
       CPX    #$06    
       BNE    LF4F4   
       LDA    $9B     
       AND    #$10    
       BNE    LF54C   
       LDA    $A4     
       STA    $A2     
       LDA    $AA     
       STA    $AC     
       LDA    #$E9    
       STA    $A4     
       LDA    #$EF    
       STA    $AA     
       LDA    $9B     
       BPL    LF546   
       BIT    $90     
       BVC    LF54C   
       LDA    $B0     
       STA    $AE     
       LDA    $B6     
       STA    $B8     
       LDA    #$E9    
       STA    $B0     
       LDA    #$EF    
       STA    $B6     
       BNE    LF54C   
LF546: LDA    #$F2    
       STA    $B2     
       STA    $B4     
LF54C: LDA    $85     
       STA    $80     
       LDA    $F5     
       STA    $85     
       LDX    #$03    
       LDA    $DC     
LF558: ASL            
       LDY    $85     
       BCS    LF55F   
       LDY    $F4     
LF55F: STY    $F4,X   
       STY    $85,X   
       DEX            
       BPL    LF558   
       LDY    #$C4    
       LDX    #$03    
LF56A: LDA    $E7,X   
       CMP    #$FF    
       BCC    LF572   
       STY    $85,X   
LF572: LDA    $EB,X   
       CMP    #$FF    
       BCC    LF57A   
       STY    $F4,X   
LF57A: DEX            
       BPL    LF56A   
LF57D: LDA    INTIM   
       BNE    LF57D   
       STA    WSYNC   
       STA    VBLANK  
       LDX    #$03    
LF588: INC    $E02B,X 
       DEX            
       BNE    LF588   
       INC    $E02C   
       STA    RESP0   
       STA    RESP1   
       LDY    #$09    
       STY    $99     
       LDA    #$10    
       STA    HMP1    
       LDA    #$01    
       STA.w  $009C   
       LDA    ($A2),Y 
       STA    GRP0    
       STA    HMOVE   
       NOP            
       JMP    LF024   
LF5AC: .byte $00,$01,$02,$03,$04,$06,$08,$09,$09,$08,$06,$04,$03,$02,$01,$00
LF5BC: LDA    #$22    
       STA    TIM64T  
       STA    WSYNC   
LF5C3: LDX    #$FF    
       TXS            
       INX            
       STX    COLUPF  
       STX    GRP0    
       STX    GRP1    
       STX    COLUBK  
       STX    REFP1   
       LDA    #$00    
       LDX    #$04    
       JSR    LFC56   
       STA    WSYNC   
LF5DA: DEY            
       BPL    LF5DA   
       STA    RESP0,X 
       STA    WSYNC   
       STA    HMOVE   
       DEC    $90     
       LDA    $9B     
       AND    #$10    
       BEQ    LF603   
       STA    $8A     
       JSR    LF0D1   
       LDY    #$AA    
       JSR    LF136   
       LDX    $84     
       STX    $91     
       LDA    LFB7F,X 
       STA    $94     
       LDA    LFB91,X 
       STA    $96     
LF603: LDA    $98     
       CMP    #$FE    
       BNE    LF61B   
       JSR    LF134   
       LDA    $9B     
       AND    #$E5    
       ORA    #$04    
       STA    $9B     
       LDX    $84     
       LDA    LFB7F,X 
       STA    $94     
LF61B: LDA    $9B     
       AND    #$04    
       BEQ    LF68F   
       LDA    #$00    
       STA    AUDV0   
       STA    AUDV1   
       STA    $BA     
       STA    $BE     
       LDX    $84     
       LDA    $94     
       CMP    LFB7F,X 
       BEQ    LF646   
       INC    $BB     
       LDA    $BB     
       CMP    #$B4    
       BNE    LF68F   
       LDA    $9B     
       EOR    #$08    
       STA    $9B     
       AND    #$08    
       BEQ    LF64D   
LF646: LDA    LFB7F,X 
       STA    $94     
       BNE    LF682   
LF64D: LDA    $9B     
       BMI    LF682   
       ORA    #$A0    
       STA    $9B     
       LDA    #$80    
       STA    $82     
       LDA    $91     
       CMP    $9F     
       BEQ    LF663   
       BCC    LF673   
       BCS    LF682   
LF663: LDA    $92     
       CMP    $A0     
       BEQ    LF66D   
       BCS    LF682   
       BCC    LF673   
LF66D: LDA    $93     
       CMP    $A1     
       BCS    LF682   
LF673: LDX    #$02    
LF675: LDA    $91,X   
       STA    $9F,X   
       DEX            
       BPL    LF675   
       LDA    #$02    
       ORA    $9B     
       STA    $9B     
LF682: LDA    $9B     
       AND    #$FA    
       STA    $9B     
       JSR    LF0CB   
       LDA    #$FF    
       STA    $90     
LF68F: LDA    $9B     
       BPL    LF6B0   
       AND    #$02    
       BNE    LF6A1   
       STA    $BC     
       STA    AUDC1   
       STA    AUDF1   
       STA    AUDV1   
       BEQ    LF6B0   
LF6A1: JSR    LF098   
       CPX    #$13    
       BNE    LF6C3   
       LDA    #$FD    
       AND    $9B     
       STA    $9B     
       BNE    LF68F   
LF6B0: LDX    $BC     
       LDA    LFFD4,X 
       BNE    LF6B9   
       STA    $BC     
LF6B9: INC    $BC     
       STA    AUDV0   
       LSR            
       LSR            
       LSR            
       LSR            
       STA    AUDF0   
LF6C3: LDA    $9B     
       AND    #$B4    
       BEQ    LF6EF   
       AND    #$10    
       BNE    LF707   
       LDA    $9B     
       AND    #$04    
       BNE    LF707   
       BIT    $90     
       BVS    LF6E1   
       LDA    #$AA    
       STA    $94     
       STA    $95     
       STA    $96     
       BNE    LF6ED   
LF6E1: LDA    $A0     
       STA    $95     
       LDA    $A1     
       STA    $96     
       LDA    $9F     
       STA    $94     
LF6ED: BNE    LF707   
LF6EF: BIT    $8A     
       BMI    LF707   
       LDA    $94     
       BEQ    LF707   
       SED            
       LDX    #$02    
       CLC            
       LDA    #$67    
       ADC    $97     
       STA    $97     
       LDA    #$01    
       JSR    LF052   
       CLD            
LF707: LDX    #$06    
       ROL    $9B     
       BIT    $9B     
LF70D: LDA    LFA47,X 
       BCC    LF718   
       BVS    LF718   
       EOR    $82     
       AND    #$F7    
LF718: STA    $EF,X   
       DEX            
       BPL    LF70D   
       ROR    $9B     
       LDA    $9B     
       AND    #$B4    
       BNE    LF79F   
       LDA    $A1     
       ROR            
       BCC    LF751   
       LDA    $90     
       EOR    $EF     
       STA    $EF     
       EOR    $F0     
       STA    $F0     
       LDA    #$00    
       STA    $BA     
       STA    $BE     
       LDA    #$18    
       JSR    LFA38   
       LDA    $90     
       AND    #$03    
       BNE    LF79F   
       LDA    $96     
       BNE    LF791   
       STA    $BC     
       LDA    $A1     
       AND    #$FE    
       STA    $A1     
LF751: LDA    $90     
       AND    #$07    
       BNE    LF79F   
       LDA    SWCHA   
       STA    $99     
       CMP    #$FF    
       BEQ    LF764   
       LDX    #$00    
       STX    $82     
LF764: BIT    $99     
       BVC    LF7A2   
       BPL    LF7BF   
       LDX    #$00    
       STX    AUDV1   
       STX    $BE     
       AND    #$10    
       BNE    LF785   
       LDA    #$7F    
       AND    $8A     
       STA    $8A     
       LDX    $84     
       LDA    $BA     
       CMP    LFB88,X 
       BEQ    LF7F8   
       INC    $BA     
LF785: LDA    $99     
       AND    #$20    
       BNE    LF795   
       LDA    $BA     
       BEQ    LF7F8   
       DEC    $BA     
LF791: LDA    #$98    
       BNE    LF7F1   
LF795: LDA    $99     
       AND    #$10    
       BNE    LF7F8   
       LDA    #$02    
       BPL    LF7F1   
LF79F: JMP    LF800   
LF7A2: LDA    SWCHB   
       AND    #$08    
       BEQ    LF7C6   
LF7A9: LDA    $BE     
       BMI    LF7B5   
       LDA    #$00    
       STA    $BE     
       LDA    #$07    
       STA    $DD     
LF7B5: LDA    $90     
       AND    #$0F    
       BNE    LF7DC   
       DEC    $BE     
       BMI    LF7DC   
LF7BF: LDA    SWCHB   
       AND    #$08    
       BEQ    LF7A9   
LF7C6: LDA    $BE     
       BEQ    LF7D0   
       BPL    LF7D4   
       LDA    #$00    
       STA    $BE     
LF7D0: LDA    #$07    
       STA    $DD     
LF7D4: LDA    $90     
       AND    #$0F    
       BNE    LF7DC   
       INC    $BE     
LF7DC: LDA    #$08    
       STA    AUDC1   
       LDA    $DD     
       STA    AUDV1   
       BEQ    LF7E8   
       DEC    $DD     
LF7E8: LDA    #$05    
       CLC            
       ADC    $DD     
       STA    AUDF1   
       LDA    #$00    
LF7F1: CLC            
       SED            
       ADC    $96     
       CLD            
       STA    $96     
LF7F8: LDA    $96     
       BNE    LF800   
       STA    $BE     
       STA    AUDV1   
LF800: LDA    $90     
       AND    #$03    
       CMP    #$03    
       BNE    LF81C   
       LDA    $8B     
       SEC            
       SBC    $BE     
       STA    $8B     
       LDA    $BF     
       BIT    $BE     
       BPL    LF818   
       SBC    #$FF    
       SEC            
LF818: SBC    #$00    
       STA    $BF     
LF81C: LDA    $90     
       AND    #$0F    
       BNE    LF842   
       LDA    #$00    
       LDY    $8B     
       LDX    $BF     
       BPL    LF834   
       CPX    #$FF    
       BCS    LF842   
       STA    $8B     
       INC    $BF     
       BNE    LF840   
LF834: CPX    #$01    
       BCC    LF842   
       CPY    #$A0    
       BCC    LF842   
       LDY    #$9F    
       STY    $8B     
LF840: STA    $BE     
LF842: LDA    #$01    
       LDX    $BE     
       CPX    #$03    
       BCC    LF8B1   
       CPX    #$FE    
       BCS    LF8B1   
       BIT    $BE     
       BPL    LF854   
       LDA    #$FF    
LF854: CLC            
       ADC    $9E     
       CMP    #$C8    
       BCC    LF85D   
       LDA    #$9F    
LF85D: CMP    #$A0    
       BCC    LF863   
       LDA    #$00    
LF863: STA    $9E     
       AND    #$03    
       BNE    LF8B1   
       BIT    $BE     
       BPL    LF894   
       CLC            
       LDX    #$06    
       BNE    LF874   
LF872: LDX    #$00    
LF874: ROR    $B3,X   
       ROL    $B1,X   
       ROR    $AF,X   
       LDA    $AF,X   
       CLC            
       AND    #$08    
       BEQ    LF882   
       SEC            
LF882: LDA    $AF,X   
       AND    #$F0    
       STA    $AF,X   
       DEX            
       BPL    LF872   
       BCC    LF892   
       ROL    $B9     
       SEC            
       ROR    $B9     
LF892: BNE    LF8B1   
LF894: CLC            
       ROL    $AF     
       ROR    $B1     
       ROL    $B3     
       LDA    $B5     
       BCC    LF8A2   
       CLC            
       ORA    #$08    
LF8A2: ROL            
       STA    $B5     
       ROR    $B7     
       ROL    $B9     
       BCC    LF8B1   
       LDA    $AF     
       ORA    #$10    
       STA    $AF     
LF8B1: STY    HMCLR   
       LDA    $9B     
       AND    #$04    
       BNE    LF8EE   
       LDA    $90     
       AND    #$03    
       TAX            
       LDA    $BA     
       BEQ    LF8EE   
       LDA    $BB     
       CLC            
       ADC    #$10    
       STA    $BB     
       BCC    LF8EE   
       PHA            
       CPX    #$02    
       BCS    LF8D9   
       BEQ    LF8D8   
       CPX    #$00    
       BCS    LF8D7   
       LSR            
LF8D7: LSR            
LF8D8: LSR            
LF8D9: CLC            
       ADC    $C8,X   
       STA    $C8,X   
       LDX    $BA     
       LDA    LFA5D,X 
       STA    $BB     
       TSX            
       SEC            
       LDA    $89     
       SBC    VBLANK,X
       STA    $89     
       PLA            
LF8EE: LDA    $89     
       STA    $80     
       BPL    LF8F6   
       ADC    #$4B    
LF8F6: STA    $89     
       JSR    LF107   
       LDA    $85     
       SEC            
       SBC    $86     
       CMP    #$06    
       BCS    LF90A   
       LDA    #$06    
       ADC    $86     
       STA    $85     
LF90A: LDX    #$02    
LF90C: LDA    $85,X   
       SEC            
       SBC    $86,X   
       SBC    #$05    
       STA    $F8,X   
       DEX            
       BPL    LF90C   
       LDA    $88     
       LDX    $89     
       CPX    #$12    
       BCC    LF928   
       SBC    $89     
       SBC    #$05    
       BPL    LF92B   
       LDA    $88     
LF928: SEC            
       SBC    #$17    
LF92B: STA    $FB     
       LDA    SWCHB   
       BPL    LF94D   
       LDA    $BA     
       BEQ    LF94D   
       LDA    $90     
       LSR            
       LSR            
       AND    #$0F    
       TAX            
       LDA    LF5AC,X 
       CLC            
       ADC    $FB     
       STA    $FB     
       LDA    $FA     
       SEC            
       SBC    LF5AC,X 
       STA    $FA     
LF94D: LDA    $80     
       BMI    LF954   
       JMP    LFA30   
LF954: LDA    $C3     
       SEC            
       SBC    $8B     
       STA    $A2     
       LDA    $C7     
       SBC    $BF     
       STA    $A3     
       LDA    $BD     
       AND    #$08    
       BEQ    LF99B   
       LDA    $9B     
       ROR            
       BCC    LF984   
       ROR            
       PHP            
       LDA    $A3     
       BMI    LF97A   
       BNE    LF97F   
       LDA    $A2     
       CMP    #$4B    
       BCS    LF97F   
LF97A: PLP            
       BCC    LF9A5   
       BCS    LF9C2   
LF97F: PLP            
       BCC    LF9C2   
       BCS    LF9A5   
LF984: INC    $9B     
       LDA    $A3     
       BMI    LF998   
       BNE    LF992   
       LDA    $A2     
       CMP    #$4B    
       BCC    LF998   
LF992: LDA    #$02    
       ORA    $9B     
       STA    $9B     
LF998: JMP    LF9FB   
LF99B: LDA    $A3     
       BNE    LF9A5   
       LDA    $A2     
       CMP    #$46    
       BCC    LF9C2   
LF9A5: LDA    SWCHB   
       ASL            
       BPL    LF9B3   
       LDA    #$09    
       STA    $91     
       LDA    #$59    
       STA    $92     
LF9B3: SED            
       LDX    #$01    
       CLC            
       LDA    #$05    
       JSR    LF052   
       CLD            
       LDA    #$1D    
       JSR    LFA38   
LF9C2: BIT    SWCHA   
       BPL    LF9DF   
       BVC    LF9DF   
       LDA    $DB     
       AND    #$F0    
       CMP    #$70    
       BEQ    LF9D9   
       LDA    $DB     
       AND    #$0F    
       CMP    #$07    
       BNE    LF9DF   
LF9D9: LDA    #$01    
       ORA    $A1     
       STA    $A1     
LF9DF: LDA    #$03    
       JSR    LFA38   
       LDA    $9B     
       AND    #$FC    
       STA    $9B     
       LDA    $94     
       SED            
       SEC            
       SBC    #$01    
       STA    $94     
       CLD            
       BNE    LF9FB   
       LDA    #$04    
       ORA    $9B     
       STA    $9B     
LF9FB: LDX    #$02    
LF9FD: LDA    $C0,X   
       STA    $C1,X   
       LDA    $C4,X   
       STA    $C5,X   
       LDA    $C8,X   
       STA    $C9,X   
       LDA    $D0,X   
       STA    $D1,X   
       LDA    $D4,X   
       STA    $D5,X   
       LDA    $D8,X   
       STA    $D9,X   
       LDA    $CC,X   
       STA    $CD,X   
       LDA    $DF,X   
       STA    $E0,X   
       LDA    $E7,X   
       STA    $E8,X   
       LDA    $E3,X   
       STA    $E4,X   
       LDA    $EB,X   
       STA    $EC,X   
       LDA    $8C,X   
       STA    $8D,X   
       DEX            
       BPL    LF9FD   
LFA30: LDA    INTIM   
       BNE    LFA30   
       JMP    LF285   
LFA38: CMP    $BC     
       BEQ    LFA46   
       BCC    LFA46   
       STA    $BC     
       TAX            
       LDA    LFFD3,X 
       STA    AUDC0   
LFA46: RTS            

LFA47: .byte $0C,$08,$1F,$CF,$88,$86,$36
LFA4E: .byte $10,$10,$30,$90,$D0,$70,$30,$10,$00,$00,$00,$00,$00,$00,$00
LFA5D: .byte $00,$31,$41,$51,$61,$71,$81,$91,$A1,$B1,$C1,$D1,$D1,$E1,$F1,$F1
       .byte $C3,$E2,$D5,$D5,$F2
LFA72: .byte $37,$3B,$37,$3E,$BB,$BF,$B6,$B5,$32,$3A,$30,$38,$B3
LFA7F: .byte $B6,$28,$B0,$B5,$2D,$3B,$3A,$40,$C9,$D0,$49,$D1,$D8,$50,$57,$4F
       .byte $54,$CE,$D0,$CD,$C9,$49,$40,$47,$C6,$C8,$46,$3C,$49,$40,$45,$C9
       .byte $CE,$CE,$C9,$55,$4F,$D5,$D8,$D2,$CE,$50,$47,$55,$47,$CA,$D1,$47
       .byte $3C,$36,$3F,$34,$B5,$B9,$B8,$BB,$3B,$36,$3B,$47,$3F,$47,$3C,$46
       .byte $49,$0C,$0C,$0C,$0C,$0C,$0C,$0C,$0C,$0C,$0C,$0C,$0C,$0C,$0C,$0C
       .byte $0C,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0A,$0A,$0A,$0A,$0A,$0A,$0A
       .byte $0A,$09,$09,$09,$09,$09,$09,$09,$09,$09,$08,$08,$08,$08,$08,$08
       .byte $08,$08,$07,$07,$07,$07,$06,$06,$06,$06,$05,$05,$05,$05,$04,$04
       .byte $04,$04,$03,$03,$03,$03,$02,$02,$02,$02,$01,$01,$01,$01,$00,$00
       .byte $00,$00,$00
LFB12: .byte $2C
LFB13: .byte $FB,$2F,$FB,$34,$FB,$3A,$FB,$41,$FB,$49,$FB,$52,$FB,$5C,$FB,$67
       .byte $FB,$74,$FB,$84,$FB,$96,$FB,$AA,$FB,$00,$00,$80,$02,$10,$C0,$C0
       .byte $C0,$03,$10,$E0,$E0,$E0,$E0,$04,$10,$90,$F0,$F0
LFB3F: .byte $F0,$90,$05,$20,$88,$F8,$F8,$F8,$88
LFB48: .byte $88,$06,$20,$84,$FC,$FC,$FC,$FC,$84,$84,$07,$20,$82,$FE,$FE,$FE
       .byte $FE,$FE,$82,$82,$08,$30,$81,$FF,$FF,$FF,$FF,$FF,$FF,$81,$81,$0A
       .byte $05,$88,$F8,$F8,$F8,$F8,$F8,$F8,$F8,$F8,$88,$88,$0D,$05,$84,$FC
       .byte $FC,$FC,$FC,$FC,$FC,$FC,$FC
LFB7F: .byte $FC,$FC,$84,$84,$84,$0F,$05,$82,$FE
LFB88: .byte $FE,$FE,$FE,$FE,$FE,$FE,$FE,$FE,$FE
LFB91: .byte $FE,$FE,$82,$82,$82,$11,$05,$81,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$81,$81,$81,$14,$07,$88,$F8,$F8,$F8,$F8
       .byte $F8,$F8,$F8,$F8,$F8,$F8,$F8,$F8,$F8,$F8,$F8,$88,$88,$88,$88,$88
LFBC1: .byte $6E
LFBC2: .byte $FF,$6C,$FF,$6B,$FF,$6A,$FF,$69,$FF,$68,$FF,$67,$FF,$66,$FF,$62
       .byte $FF,$5C,$FF,$56,$FF,$50,$FF,$4B,$FF
LFBDB: .byte $FF,$7E,$3C,$18,$08,$47,$1B,$00,$37,$4C,$28,$12,$3C,$09,$C0,$61
       .byte $00,$E1,$00,$60,$61,$30,$E1
LFBF2: .byte $F9,$FB,$FD,$FE,$FF,$00,$01,$02,$03,$05,$07
LFBFD: .byte $FF,$FF,$FF,$FF,$FF,$00,$00,$00,$00,$00,$00
LFC08: .byte $FF,$7F,$3F,$3F,$1F,$1F,$1F,$0F,$0F,$0F,$0F,$07,$07,$05,$05,$02
LFC18: .byte $9E,$9E,$9E,$9E,$9E,$90,$90,$80,$35,$63,$63,$63,$63,$63,$25,$25
       .byte $25,$0B,$0D,$0F,$11,$12,$14,$0F,$0F,$14,$22,$26,$30,$34,$36,$40
       .byte $30,$30,$40
LFC3B: .byte $21,$26,$08,$10,$11,$10,$11,$10,$09,$0A,$11,$10,$11,$0B,$0B,$11
       .byte $10,$3C,$00,$00,$00,$00,$00,$00,$00
LFC54: STY    WSYNC   
LFC56: CMP    #$A0    
       BCC    LFC5C   
       LDA    #$02    
LFC5C: STA    $A4     
       STX    $A8     
       AND    #$0F    
       STA    $A6     
       LDA    $A4     
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $AA     
       CLC            
       ADC    $A6     
       TAX            
       LDA    LFC81,X 
       LDX    $A8     
       STA    HMP0,X  
       STA    $A4     
       AND    #$0F    
       ADC    $AA     
       TAY            
       LDA    $A4     
       RTS            

LFC81: .byte $53,$43,$33,$23,$13,$03,$F3,$E3,$D3,$C3,$B3,$A3,$93,$74,$64,$54
       .byte $44,$34,$24,$14,$04,$F4,$E4,$D4,$C4
LFC9A: LDA    $F0     
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$07    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    $9E     
       LDX    #$00    
       JSR    LFC54   
       CPY    #$0D    
       BCS    LFCB3   
       STA    WSYNC   
LFCB3: STA    WSYNC   
LFCB5: DEY            
       BPL    LFCB5   
       STA    RESP0,X 
       LDY    #$0D    
LFCBC: DEY            
       BPL    LFCBC   
       NOP            
       STA    RESP1   
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       LDY    #$A3    
       INC    $E02E   
       NOP            
       INC    $E02E   
       INC    $E02E   
       STA    HMCLR   
LFCD6: STA    WSYNC   
       DEY            
       CPY    #$A2    
       BNE    LFCD6   
       LDX    #$04    
LFCDF: STA    WSYNC   
       STA    HMOVE   
       LDA    LFBDB,X 
       STA    GRP0    
       STA    GRP1    
       DEY            
       DEX            
       BPL    LFCDF   
       NOP            
       LDA    #$70    
       STA    HMP0    
       LDA    #$90    
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       DEY            
       STA    WSYNC   
       STA    HMOVE   
       DEY            
       LDX    $F0     
       INX            
       INX            
       STX    COLUPF  
LFD07: STA    WSYNC   
       STA    HMOVE   
       LDA    #$00    
       STA    CTRLPF  
       LDA    $AF     
       STA    PF0     
       LDA    $B1     
       STA    PF1     
       LDA    $B3     
       STA    PF2     
       LDA    $B5     
       STA    PF0     
       LDA    $B7     
       STA    PF1     
       DEY            
       LDA    LF000,X 
       LDA    LF000,X 
       LDA    $B9     
       STA    PF2     
       CPY    #$97    
       BNE    LFD07   
       STA    WSYNC   
       STA    HMOVE   
       LDA    $EF     
       STA    COLUPF  
       LDA    #$FF    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       STA    CTRLPF  
LFD44: STA    WSYNC   
       LDA    #$00    
       STA    PF0     
       STA    PF1     
       STA    COLUPF  
       STA    GRP0    
       STA    GRP1    
       LDX    $EF     
       STX    COLUBK  
       STA    PF2     
       DEY            
       CPY    $80     
       BNE    LFD44   
       LDX    #$00    
LFD5F: STX    $A2     
       LDA    $DF,X   
       STA    $FC     
       LDA    $E3,X   
       STA    $FE     
       STA    WSYNC   
       LDA    #$00    
       STA    PF0     
       STA    PF1     
       STA    GRP0    
       STA    GRP1    
       STA    COLUPF  
       LDY    $EF     
       STY    COLUBK  
       STA    PF2     
       LDA    $E7,X   
       STA    $FD     
       LDA    $EB,X   
       STA    $FF     
       LDA    $F4,X   
       STA    COLUP0  
       LDA    $85,X   
       STA    COLUP1  
       LDA    $D8,X   
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    $D0,X   
       STA    WSYNC   
LFD98: DEY            
       BPL    LFD98   
       STA.w  $0010   
       STA.w  $0020   
       LDA    $D8,X   
       AND    #$0F    
       TAY            
       LDA    $D4,X   
       STA    WSYNC   
LFDAA: DEY            
       BPL    LFDAA   
       STA.w  $0011   
       STA    HMP1    
       LDA    $8C,X   
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDY    $CC,X   
LFDBA: LDA    ($FE),Y 
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       LDA    ($FC),Y 
       STA    GRP1    
       DEC    $F8,X   
       BMI    LFDF6   
       CPX    #$02    
       BNE    LFDD2   
       BIT    $8A     
       BMI    LFDDA   
LFDD2: STA    HMCLR   
       DEY            
       BPL    LFDBA   
       INY            
       BEQ    LFDBA   
LFDDA: STA    WSYNC   
       STA    HMOVE   
       LDA    #$C3    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       LDA    $85     
       STA    COLUPF  
       LDA    $F5     
       STA    COLUBK  
       STA    COLUP0  
       STA    COLUP1  
       DEC    $FA     
       BPL    LFDDA   
LFDF6: INX            
       CPX    #$04    
       BEQ    LFDFE   
       JMP    LFD5F   
LFDFE: LDY    $89     
       CPY    #$12    
       BCS    LFE06   
       LDY    #$12    
LFE06: STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       DEY            
       CPY    #$11    
       BNE    LFE06   
       LDA    SWCHB   
       AND    #$08    
       BNE    LFE28   
       LDA    $80     
       BIT    SWCHA   
       BVC    LFE39   
       BPL    LFE35   
       NOP            
       NOP            
       NOP            
       BMI    LFE3B   
LFE28: NOP            
       BIT    SWCHA   
       BPL    LFE39   
       BVC    LFE35   
       NOP            
       NOP            
       NOP            
       BMI    LFE3B   
LFE35: INC    HMCLR   
       LDA    $80     
LFE39: LDA    $80,X   
LFE3B: STA    RESP0   
       STA    RESP1   
       LDA    #$C0    
       STA    HMP1    
       LDA    #$00    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$08    
       STA    REFP1   
       DEY            
       STA    WSYNC   
       STA    HMOVE   
       DEY            
       LDA    $F3     
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$08    
       AND    SWCHB   
       BNE    LFE67   
       BIT    SWCHA   
       BPL    LFE74   
       BVC    LFE72   
LFE67: LDA    #$00    
       BIT    SWCHA   
       BPL    LFE72   
       BVC    LFE74   
       BMI    LFE76   
LFE72: ORA    #$F0    
LFE74: ORA    #$10    
LFE76: INC    CXCLR   
       STA    HMP0    
       STA    HMP1    
LFE7C: STA    WSYNC   
       STA    HMOVE   
       LDA    LFC08,Y 
       STA    GRP0    
       STA    GRP1    
       DEY            
       BNE    LFE7C   
       JMP    LF5BC   
LFE8D: .byte $03,$03,$03,$03,$3F,$3F,$63,$63,$3E,$1C,$3E,$63,$63,$3E,$3E,$63
       .byte $63,$3E,$1C,$3E,$63,$63,$63,$63,$63,$63,$3E,$1C,$7F,$7F,$0C,$0C
       .byte $0C,$0C,$4C,$6C,$3C,$1C,$18,$18,$0C,$0C,$06,$06,$03,$03,$7F,$7F
       .byte $07,$03,$1F,$1F,$03,$07,$7F,$7F,$03,$03,$7F,$7F,$60,$60,$7F,$7F
       .byte $40,$70,$3C,$0E,$06,$46,$7E,$3C,$06,$06,$06,$06,$7F,$7F,$36,$1E
       .byte $0E,$06,$7F,$63,$63,$7F,$60,$60,$60,$60,$60,$60,$00,$18,$18,$18
       .byte $00,$00,$18,$18,$18,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00
LFF00: .byte $C1,$61,$35,$19,$0D,$07,$03,$01,$00,$00,$00,$00,$00,$00,$00,$00
LFF10: .byte $C4,$4E,$4B,$59,$71,$60,$60,$40,$00,$3E,$41,$5D,$51,$5D,$41,$3E
LFF20: .byte $7F,$49,$49,$49,$C9,$C9,$C9,$48,$00,$22,$22,$22,$2E,$2A,$2A,$2E
LFF30: .byte $EC,$16,$13,$31,$00,$00,$10,$E0,$00,$EE,$A2,$A2,$E6,$A2,$A2,$EE
LFF40: .byte $9F,$A9,$CB,$BB,$D5,$C3,$DF,$B3,$96,$8D,$F2,$FF,$7F,$7E,$3E,$3C
       .byte $1C,$18,$08,$7F,$7E,$3E,$3C,$1C,$18,$08,$7E,$3E,$3C,$1C,$18,$08
       .byte $3E,$3C,$1C,$18,$08,$3C,$1C,$18,$08,$1C,$18,$08,$18,$08,$08,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
LFFC0: .byte $00
LFFC1: .byte $D7,$73,$73,$DD,$FA,$D7,$DD,$FA,$FA,$FA,$FA,$D7,$FA,$DD,$FA,$D7
       .byte $FA,$DD
LFFD3: .byte $00
LFFD4: .byte $00,$00,$04,$FF,$AF,$8F,$3F,$1F,$00,$01,$FF,$EF,$DF,$CF,$BF,$AF
       .byte $9F,$8F,$7F,$6F,$5F,$4F,$00,$06,$FF,$AF,$8F,$00,$09,$9F,$9F,$9F
       .byte $9F,$9F,$9F,$9F,$9F,$00,$C8,$F1,$C8,$F1,$C8,$F1
