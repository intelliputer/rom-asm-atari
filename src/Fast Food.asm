; Disassembly of roms/Fast Food.bin
; Disassembled Tue Oct  6 15:21:48 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Fast Food.bin
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
RESP0   =  $10
RESP1   =  $11
AUDC0   =  $15
AUDF0   =  $17
AUDV0   =  $19
GRP0    =  $1B
GRP1    =  $1C
HMP0    =  $20
HMP1    =  $21
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXP0FB  =  $32
CXPPMM  =  $37
INPT4   =  $3C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296

       ORG $B000

START:
       SEI            
       CLD            
       LDX    #$00    
       TXA            
LB005: STA    VSYNC,X 
       INX            
       BNE    LB005   
       DEX            
       TXS            
       JMP    LB223   
LB00F: LDA    $CD     
       CMP    $80     
       BNE    LB018   
       DEX            
       STA    $88     
LB018: CMP    $B4     
       BNE    LB01D   
       DEY            
LB01D: LDA    LBB00,X 
       STA    WSYNC   
       STA    COLUP0  
LB024: LDA    ($85),Y 
       STA    GRP1    
       LDA    LBF00,Y 
       STA    COLUP1  
       BEQ    LB030   
       DEY            
LB030: LDA    LBA00,X 
       STA    GRP0    
       BEQ    LB047   
       DEX            
LB038: DEC    $CD     
       BNE    LB00F   
LB03C: JMP    LB0EF   
LB03F: DEC    $CD     
       BEQ    LB03C   
       LDA    $CD     
       BNE    LB018   
LB047: LDA    $88     
       BEQ    LB038   
       BIT    $89     
       BMI    LB03F   
       LDX    $89     
       JSR    LB0DA   
       BIT    CXPPMM  
       BPL    LB05F   
       LDA    LB7EE,X 
       ORA    $D3     
       STA    $D3     
LB05F: JSR    LB0D4   
       BIT    CXP0FB  
       BPL    LB06D   
       LDA    LB7F3,X 
       ORA    $D3     
       STA    $D3     
LB06D: STA    CXCLR   
       JSR    LB0D4   
       DEX            
       STX    $89     
       BMI    LB0BC   
       LDA    $8A,X   
       BEQ    LB0BC   
       LDA    #$00    
       STA    $88     
       JSR    LB0D4   
       LDA    $8E,X   
       STA    $80     
       LDA    $96,X   
       STA    $81     
       JSR    LB0D4   
       LDA    $92,X   
       STA    HMP0    
       AND    #$0F    
       TAX            
       DEX            
       DEX            
       DEX            
       JSR    LB0D4   
       DEC    $CD     
LB09C: DEX            
       BPL    LB09C   
       STA    RESP0   
       LDA    $CD     
       STA    WSYNC   
       CMP    $B4     
       BNE    LB0AA   
       DEY            
LB0AA: LDA    LBF00,Y 
       BEQ    LB0B0   
       DEY            
LB0B0: LDA    ($85),Y 
       STA    GRP1    
       LDA    LBF00,Y 
       STA    COLUP1  
       NOP            
       NOP            
       NOP            
LB0BC: LDX    $81     
       LDA    LBF00,Y 
       BEQ    LB0C4   
       DEY            
LB0C4: DEC    $CD     
       LDA    $CD     
       CMP    $B4     
       BNE    LB0CD   
       DEY            
LB0CD: STA    WSYNC   
       STA    HMOVE   
       JMP    LB024   
LB0D4: LDA    LBF00,Y 
       BEQ    LB0DA   
       DEY            
LB0DA: DEC    $CD     
       LDA    $CD     
       CMP    $B4     
       BNE    LB0E3   
       DEY            
LB0E3: LDA    ($85),Y 
       STA    WSYNC   
       STA    GRP1    
       LDA    LBF00,Y 
       STA    COLUP1  
       RTS            

LB0EF: LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    REFP1   
       JSR    LB569   
       LDX    #$40    
       JSR    LB592   
       STA    WSYNC   
       LDA    #$00    
       STA    COLUBK  
       LDY    #$0D    
       JSR    LB5BA   
       STA    WSYNC   
       LDA    #$FF    
       STA    VBLANK  
       RTS            

LB111: LDA    INTIM   
       BNE    LB111   
       JSR    LB4C2   
       STA    HMCLR   
       BIT    $AA     
       BMI    LB12C   
       BVS    LB137   
       LDA    #$BC    
       STA    $A6     
       LDA    #$00    
       STA    $A7     
       JMP    LB144   
LB12C: LDA    #$C3    
       STA    $A6     
       LDA    #$00    
       STA    $A7     
       JMP    LB144   
LB137: LDA    #$C2    
       STA    $A6     
       LDA    #$00    
       STA    $A7     
       LDA    #$0C    
       JMP    LB149   
LB144: LDX    $B0     
       LDA    LB4B8,X 
LB149: STA    COLUP0  
       STA    COLUP1  
       LDY    #$04    
LB14F: TYA            
       ASL            
       TAX            
       LDA    ($A6),Y 
       AND    #$F0    
       LSR            
       ADC    #$4F    
       STA    $E5,X   
       LDA    #$00    
       ADC    #$B9    
       STA    $E6,X   
       LDA    ($A6),Y 
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       ADC    #$4F    
       STA    $E7,X   
       LDA    #$00    
       ADC    #$B9    
       STA    $E8,X   
       DEY            
       DEY            
       BPL    LB14F   
       LDX    #$00    
LB178: LDA    $E5,X   
       CMP    #$4F    
       BNE    LB18C   
       LDA    #$3B    
       STA    $E5,X   
       LDA    #$B9    
       STA    $E6,X   
       INX            
       INX            
       CPX    #$0A    
       BCC    LB178   
LB18C: JSR    LB569   
       LDA    #$30    
       STA    PF0     
       LDA    #$05    
       STA    CTRLPF  
       LDA    #$00    
       STA    COLUPF  
       LDA    #$00    
       STA    COLUBK  
       LDA    #$00    
       STA    $D3     
       LDA    INTIM   
       STA    $F2     
LB1A8: LDA    INTIM   
       BNE    LB1A8   
       LDA    #$FF    
       STA    WSYNC   
       STA    TIM64T  
       LDA    #$88    
       STA    $CD     
       LDA    #$00    
       STA    VBLANK  
       LDY    #$07    
       JSR    LB5BA   
       LDX    #$33    
       JSR    LB592   
       LDX    #$00    
LB1C8: CPX    #$06    
       BCS    LB1ED   
       CPX    $B8     
       BPL    LB1DD   
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       INX            
       JMP    LB1C8   
LB1DD: TXA            
       ASL            
       TAY            
       LDA    #$3B    
       STA.wy $00E5,Y 
       LDA    #$B9    
       STA.wy $00E6,Y 
       INX            
       BNE    LB1C8   
LB1ED: STA    WSYNC   
       LDY    #$11    
       JSR    LB5BA   
       JSR    LB5A9   
       LDA    $84     
       LDX    #$01    
       JSR    LB543   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$44    
       STA    COLUBK  
       STA    WSYNC   
       STA    CXCLR   
       STA    HMCLR   
       LDA    #$00    
       STA    COLUBK  
       LDX    #$00    
       LDY    #$19    
       LDA    #$01    
       STA    $88     
       LDA    #$04    
       STA    $89     
       LDA    $83     
       STA    REFP1   
       JMP    LB047   
LB223: LDA    INTIM   
       STA    $C9     
       LDA    #$80    
       STA    $AB     
       JSR    LB4C2   
       LDA    #$02    
       STA    $82     
LB233: JSR    LB111   
       LDX    #$03    
LB238: LDA    $D3     
       AND    LB7EE,X 
       BEQ    LB2B1   
       LDA    $96,X   
       CMP    #$93    
       BNE    LB267   
       LDA    #$00    
       STA    $DF     
       LDY    $B8     
       INY            
       STY    $B8     
       CPY    #$06    
       BNE    LB2B8   
       LDA    #$52    
       STA    $DE     
       LDX    #$00    
       JSR    LB621   
       LDX    #$11    
       JSR    LB621   
       LDA    #$03    
       STA    $BA     
       JMP    LB2E7   
LB267: LDA    #$29    
       STA    $DF     
       LDA    $BE     
       PHA            
       SED            
       CLC            
       LDA    $A2,X   
       TAY            
       LDA    LB4A8,Y 
       LDY    #$04    
LB278: ADC.wy $00BC,Y 
       STA.wy $00BC,Y 
       LDA    #$00    
       DEY            
       DEY            
       BPL    LB278   
       CLD            
       BCC    LB28F   
       LDA    #$99    
       STA    $BC     
       STA    $BE     
       STA    $C0     
LB28F: PLA            
       EOR    $BE     
       AND    #$0F    
       BEQ    LB2AB   
       LDA    $BE     
       AND    #$0F    
       BEQ    LB2A0   
       CMP    #$05    
       BNE    LB2AB   
LB2A0: LDA    #$7B    
       STA    $DE     
       LDY    $B8     
       BEQ    LB2AB   
       DEY            
       STY    $B8     
LB2AB: JMP    LB2B8   
LB2AE: .byte $4C,$B8,$B2
LB2B1: LDA    $D3     
       AND    LB7F3,X 
       BEQ    LB2C0   
LB2B8: LDA    #$00    
       STA    $8A,X   
       STA    $80     
       INC    $D2     
LB2C0: DEX            
       BMI    LB2C6   
       JMP    LB238   
LB2C6: LDA    $D2     
       CMP    #$32    
       BCC    LB2FB   
       LDA    #$BD    
       STA    $DE     
       LDX    #$22    
       JSR    LB621   
       LDX    #$05    
       BIT    SWCHB   
       BVS    LB2DD   
       DEX            
LB2DD: CPX    $B6     
       BCC    LB2E3   
       INC    $B6     
LB2E3: LDA    #$01    
       STA    $BA     
LB2E7: JSR    LB78A   
       BNE    LB2FB   
       LDA    $A9     
       AND    #$80    
       BEQ    LB2F7   
       LDA    #$20    
       JMP    LB2F9   
LB2F7: LDA    #$10    
LB2F9: STA    $AB     
LB2FB: JSR    LB749   
       BEQ    LB304   
       LDA    #$02    
       STA    $BA     
LB304: LDA    $BA     
       CMP    #$02    
       BNE    LB310   
       JSR    LB354   
       JSR    LB438   
LB310: JSR    LB413   
       JSR    LB3FB   
       JMP    LB233   
LB319: STY    $D5     
       TXA            
       TAY            
LB31D: DEY            
       CPY    #$00    
       BMI    LB330   
       LDA.wy $008A,Y 
       BEQ    LB31D   
       LDA.wy $008E,Y 
       CLC            
       ADC    #$10    
       JMP    LB332   
LB330: LDA    #$10    
LB332: LDY    $D5     
       RTS            

LB335: STY    $D5     
       TXA            
       TAY            
LB339: INY            
       CPY    #$04    
       BPL    LB34F   
       LDA.wy $008A,Y 
       BEQ    LB339   
       LDA.wy $008E,Y 
       SEC            
       SBC.wy $009E,Y 
       SBC    #$10    
       JMP    LB351   
LB34F: LDA    #$70    
LB351: LDY    $D5     
       RTS            

LB354: LDA    $D0     
       CMP    #$32    
       BCC    LB35B   
       RTS            

LB35B: JSR    LB3BE   
       LSR            
       LSR            
       LSR            
       AND    #$03    
       CMP    #$04    
       BCC    LB368   
       RTS            

LB368: TAX            
       LDA    $8A,X   
       BEQ    LB36E   
       RTS            

LB36E: LDA    $C8     
       AND    #$0F    
       TAY            
       JSR    LB319   
       STA    $DA     
       JSR    LB335   
       STA    $DB     
       SEC            
       SBC    $DA     
       SBC    LB498,Y 
       BPL    LB386   
       RTS            

LB386: AND    $C8     
       EOR    #$FF    
       ADC    $DB     
       STA    $8E,X   
       LDA    LB488,Y 
       STA    $96,X   
       LDA    $C8     
       AND    #$1F    
LB397: LSR            
       BEQ    LB3A0   
       CMP    $B6     
       BCC    LB3A2   
       BCS    LB397   
LB3A0: LDA    $B6     
LB3A2: STA    $9A,X   
       LDA    #$2C    
       STA    $8A,X   
       LDA    LB498,Y 
       STA    $9E,X   
       INC    $D0     
       TYA            
       STA    $A2,X   
       LDY    $DE     
       LDA    LB845,Y 
       BNE    LB3BD   
       LDA    #$A0    
       STA    $DE     
LB3BD: RTS            

LB3BE: LDA    $C9     
       STA    $CB     
       ASL            
       STA    $C9     
       LDA    $C8     
       STA    $CA     
       ROL            
       STA    $C8     
       LDA    $C9     
       ASL            
       STA    $C9     
       LDA    $C8     
       ROL            
       STA    $C8     
       LDA    $C9     
       CLC            
       ADC    $CB     
       STA    $C9     
       LDA    $C8     
       ADC    $CA     
       STA    $C8     
       LDA    $C9     
       CLC            
       ADC    #$19    
       STA    $C9     
       LDA    $C8     
       ADC    #$36    
       STA    $C8     
       LDA    $CB     
       ASL            
       ASL            
       ASL            
       CLC            
       ADC    $C8     
       STA    $C8     
       RTS            

LB3FB: LDX    #$03    
LB3FD: LDA    $8A,X   
       BEQ    LB40F   
       CLC            
       ADC    $9A,X   
       STA    $8A,X   
       STX    $D9     
       JSR    LB552   
       LDX    $D9     
       STA    $92,X   
LB40F: DEX            
       BPL    LB3FD   
       RTS            

LB413: LDA    $B2     
       JSR    LB552   
       STA    $84     
       LDA    $CC     
       AND    #$03    
       BNE    LB437   
       LDX    $87     
       BEQ    LB42A   
       DEX            
       STX    $87     
       JMP    LB42E   
LB42A: LDX    #$05    
       STX    $87     
LB42E: LDA    LB4BB,X 
       STA    $85     
       LDA    #$BF    
       STA    $86     
LB437: RTS            

LB438: JSR    LB760   
       LDA    #$00    
       STA    $83     
       LDA    $A8     
       AND    #$08    
       BEQ    LB454   
       LDA    $B2     
       CLC            
       ADC    $82     
       CMP    #$BC    
       BCS    LB454   
       STA    $B2     
       LDA    #$08    
       STA    $83     
LB454: LDA    $A8     
       AND    #$04    
       BEQ    LB465   
       LDA    $B2     
       SEC            
       SBC    $82     
       CMP    #$50    
       BCC    LB465   
       STA    $B2     
LB465: LDA    $A8     
       AND    #$02    
       BEQ    LB476   
       LDA    $B4     
       SEC            
       SBC    $82     
       CMP    #$1C    
       BCC    LB476   
       STA    $B4     
LB476: LDA    $A8     
       AND    #$01    
       BEQ    LB487   
       LDA    $B4     
       CLC            
       ADC    $82     
       CMP    #$7F    
       BCS    LB487   
       STA    $B4     
LB487: RTS            

LB488: .byte $93,$20,$3B,$50,$61,$72,$82,$93,$9F,$AE,$C1,$DC,$F9,$08,$93,$93
LB498: .byte $11,$18,$1B,$15,$11,$11,$10,$11,$0C,$0F,$13,$1B,$1D,$08,$11,$11
LB4A8: .byte $00,$09,$07,$07,$05,$01,$10,$00,$06,$20,$03,$09,$04,$05,$00,$00
LB4B8: .byte $38,$64,$0C
LB4BB: .byte $19,$32,$4B,$64,$7D,$96,$00
LB4C2: LDA    $C8     
       AND    #$F6    
       ORA    #$04    
       STA    COLUBK  
       LDX    #$01    
       LDA    $A9     
       AND    #$80    
       BEQ    LB4D4   
       STX    $AE     
LB4D4: LDY    $AE     
       INC    $CC     
       BNE    LB4E1   
       CPY    #$3C    
       BCS    LB4E1   
       INY            
       STY    $AE     
LB4E1: CPY    #$3C    
       BCC    LB4EB   
       LDX    #$3B    
       STX    $AE     
       LDX    #$FF    
LB4EB: LDA    SWCHA   
       CMP    $AF     
       BEQ    LB4F9   
       STA    $AF     
       LDA    #$01    
       TAX            
       STA    $AE     
LB4F9: LDA    #$02    
       STA    WSYNC   
       STA    VBLANK  
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    WSYNC   
       STA    VSYNC   
       LDA    #$2B    
       STA    TIM64T  
       DEX            
       BEQ    LB536   
LB519: LDA    INTIM   
       BNE    LB519   
       LDA    #$FF    
       STA    TIM64T  
       LDA    #$00    
       STA    VBLANK  
       STX    $AD     
       JSR    LB5EC   
       LDX    $AD     
LB52E: LDA    INTIM   
       BNE    LB52E   
       JMP    LB4EB   
LB536: JSR    LB5EC   
       JSR    LB7AE   
       JSR    LB67D   
       JSR    LB3BE   
       RTS            

LB543: STA    HMP0,X  
       AND    #$0F    
       TAY            
       STA    WSYNC   
LB54A: DEY            
       BPL    LB54A   
       STA    RESP0,X 
       STA    WSYNC   
       RTS            

LB552: LDY    #$FF    
       SEC            
LB555: INY            
       SBC    #$0F    
       BCS    LB555   
       STY    $D1     
       EOR    #$FF    
       ADC    #$09    
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    $D1     
       STA    $D1     
       RTS            

LB569: STA    WSYNC   
       LDA    #$D3    
       STA    HMP0    
       AND    #$0F    
       TAX            
       LDA    #$E1    
       STA    HMP1    
       STA    VDELP0  
       STA    VDELP1  
LB57A: DEX            
       BNE    LB57A   
       STX    RESP0   
       STX    RESP1   
       LDX    #$00    
       STX    GRP0    
       STX    GRP1    
       LDX    #$03    
       STX    NUSIZ0  
       STX    NUSIZ1  
       STX    WSYNC   
       STX    HMOVE   
       RTS            

LB592: LDA    LB7F8,X 
       STA    COLUP0  
       STA    COLUP1  
       INX            
       LDY    #$00    
LB59C: LDA    LB7F8,X 
       STA.wy $00E5,Y 
       INX            
       INY            
       CPY    #$0C    
       BMI    LB59C   
       RTS            

LB5A9: LDA    #$00    
       STA    VDELP0  
       STA    VDELP1  
       STA    GRP0    
       STA    GRP1    
       STA    GRP0    
       STA    NUSIZ0  
       STA    NUSIZ1  
       RTS            

LB5BA: STY    $D8     
       LDA    ($EF),Y 
       STA    $D7     
       STA    WSYNC   
       LDA    ($E5),Y 
       STA    GRP0    
       LDA    ($E7),Y 
       STA    GRP1    
       LDA    ($E9),Y 
       STA    GRP0    
       LDA    ($EB),Y 
       TAX            
       LDA    ($ED),Y 
       LDY    $D7     
       STX    GRP1    
       STA    GRP0    
       STY    GRP1    
       STA    GRP0    
       LDY    $D8     
       DEY            
       BPL    LB5BA   
       INY            
       STA    WSYNC   
       STY    GRP0    
       STY    GRP1    
       STY    GRP0    
       RTS            

LB5EC: LDX    #$01    
LB5EE: LDY    $DC,X   
       BEQ    LB5F8   
       DEY            
       STY    $DC,X   
       JMP    LB61D   
LB5F8: LDY    $DE,X   
       LDA    LB845,Y 
       BEQ    LB619   
       STA    $DC,X   
       INY            
       LDA    LB845,Y 
       STA    AUDC0,X 
       INY            
       LDA    LB845,Y 
       STA    AUDF0,X 
       INY            
       LDA    LB845,Y 
       STA    AUDV0,X 
       INY            
       STY    $DE,X   
       JMP    LB61D   
LB619: LDA    #$00    
       STA    AUDV0,X 
LB61D: DEX            
       BPL    LB5EE   
       RTS            

LB621: LDA    LB7F8,X 
       STA    $E0     
       INX            
       LDA    LB7F8,X 
       STA    $E2     
       INX            
       LDA    LB7F8,X 
       STA    $E3     
       INX            
       LDA    LB7F8,X 
       STA    $E4     
       INX            
       STX    $E1     
LB63B: LDA    INTIM   
       BNE    LB63B   
       JSR    LB4C2   
       LDX    $E1     
       JSR    LB592   
       JSR    LB569   
       LDA    #$00    
       STA    COLUBK  
LB64F: LDA    INTIM   
       BNE    LB64F   
       LDA    #$FF    
       STA    WSYNC   
       STA    TIM64T  
       LDA    #$00    
       STA    VBLANK  
       LDX    $E2     
LB661: STA    WSYNC   
       DEX            
       BNE    LB661   
       LDY    $E4     
       JSR    LB5BA   
       JSR    LB5A9   
       DEC    $E0     
       BNE    LB673   
       RTS            

LB673: LDA    $E2     
       CLC            
       ADC    $E3     
       STA    $E2     
       JMP    LB63B   
LB67D: LDA    $AB     
       CMP    #$80    
       BNE    LB697   
       LDA    #$80    
       STA    $A9     
       LDA    #$01    
       STA    $C7     
       LDA    #$00    
       STA    $AA     
       JSR    LB70C   
       LDA    #$08    
       STA    $AB     
       RTS            

LB697: CMP    #$20    
       BNE    LB6AC   
       JSR    LBFB0   
       LDA    #$00    
       STA    $AA     
       STA    $83     
       JSR    LB70C   
       LDA    #$08    
       STA    $AB     
       RTS            

LB6AC: CMP    #$10    
       BNE    LB6ED   
       JSR    LB749   
       BEQ    LB6BA   
       LDA    #$20    
       STA    $AB     
       RTS            

LB6BA: LDA    $CC     
       AND    #$3F    
       BNE    LB6ED   
       LDA    $AC     
       CMP    $C7     
       BEQ    LB6E6   
       CMP    #$00    
       BEQ    LB6CD   
       JSR    LB79B   
LB6CD: INC    $AC     
LB6CF: LDA    $AC     
       CMP    $C7     
       BCC    LB6DA   
       LDA    #$40    
       STA    $AA     
       RTS            

LB6DA: CMP    #$00    
       BEQ    LB6E1   
       JSR    LB79B   
LB6E1: LDA    #$00    
       STA    $AA     
       RTS            

LB6E6: LDA    #$00    
       STA    $AC     
       JMP    LB6CF   
LB6ED: RTS            

LB6EE: LDA    $A9     
       AND    #$80    
       BEQ    LB6FF   
       LDA    #$00    
       STA    $C2     
       STA    $C4     
       STA    $C6     
       JMP    LB702   
LB6FF: JSR    LBFB0   
LB702: JSR    LB70C   
       LDA    #$00    
       STA    $AC     
       STA    $83     
       RTS            

LB70C: LDX    #$11    
LB70E: LDA    LB737,X 
       STA    $B0,X   
       DEX            
       BPL    LB70E   
       LDA    $C7     
       CMP    #$02    
       BPL    LB725   
       LDA    #$03    
       STA    $BB     
       JSR    LB724   
       RTS            

LB724: NOP            
LB725: LDX    #$03    
       LDA    #$00    
LB729: STA    $8A,X   
       DEX            
       BPL    LB729   
       STA    $80     
       LDA    #$00    
       STA    $D0     
       STA    $D2     
       RTS            

LB737: .byte $00,$01,$A0,$A0,$40,$40,$02,$02,$00,$00,$01,$01,$00,$00,$00,$00
       .byte $00,$00
LB749: BIT    $A9     
       BMI    LB758   
       BVS    LB75D   
       LDX    $B0     
       LDA    INPT4,X 
       EOR    #$FF    
       AND    #$80    
       RTS            

LB758: LDA    #$80    
       AND    $C8     
       RTS            

LB75D: LDA    #$00    
       RTS            

LB760: BIT    $A9     
       BMI    LB778   
       BVS    LB785   
       LDA    SWCHA   
       EOR    #$FF    
       LDX    $B0     
       BNE    LB773   
       LSR            
       LSR            
       LSR            
       LSR            
LB773: AND    #$0F    
       STA    $A8     
       RTS            

LB778: LDA    $CC     
       AND    #$0F    
       BNE    LB784   
       LDA    $C8     
       AND    #$0F    
       STA    $A8     
LB784: RTS            

LB785: LDA    #$00    
       STA    $A8     
       RTS            

LB78A: JSR    LB724   
       LDA    $BB     
       CMP    #$03    
       BEQ    LB796   
       JSR    LB79B   
LB796: LDA    $BA     
       CMP    #$03    
       RTS            

LB79B: LDX    #$11    
LB79D: LDA    $AF,X   
       LDY    $B0,X   
       STY    $AF,X   
       STA    $B0,X   
       DEX            
       DEX            
       BPL    LB79D   
       LDA    #$00    
       STA    $83     
       RTS            

LB7AE: LDA    SWCHB   
       LDX    $F1     
       BPL    LB7EA   
       TAX            
       AND    #$02    
       BNE    LB7D9   
       LDA    #$1F    
       STA    $F1     
       JSR    LB6EE   
       LDA    #$40    
       STA    $A9     
       LDA    #$80    
       STA    $AA     
       LDX    $C7     
       INX            
       CPX    #$03    
       BCC    LB7D2   
       LDX    #$01    
LB7D2: STX    $C7     
       LDA    #$08    
       STA    $AB     
       RTS            

LB7D9: TXA            
       AND    #$01    
       BNE    LB7E9   
       LDA    #$20    
       STA    $AB     
       JSR    LB6EE   
       LDA    #$00    
       STA    $A9     
LB7E9: RTS            

LB7EA: DEX            
       STX    $F1     
       RTS            

LB7EE: .byte $80,$40,$20,$10,$00
LB7F3: .byte $08,$04,$02,$01,$00
LB7F8: .byte $90,$9F,$FF,$1B,$66,$FA,$BB,$16,$BC,$32,$BC,$4E,$BC,$6A,$BC,$86
       .byte $BC,$90,$10,$01,$1F,$3A,$A2,$BC,$C2,$BC,$E2,$BC,$02,$BD,$22,$BD
       .byte $42,$BD,$70,$10,$01,$41,$3A,$62,$BD,$A4,$BD,$E6,$BD,$28,$BE,$6A
       .byte $BE,$AC,$BE,$64,$82,$BA,$82,$BA,$82,$BA,$82,$BA,$82,$BA,$82,$BA
       .byte $2A,$9F,$B9,$AC,$B9,$BA,$B9,$C8,$B9,$D6,$B9,$E4,$B9
LB845: .byte $01,$05,$1C,$0C,$05,$09,$14,$08,$01,$01,$0C,$0C,$01,$09,$0C,$0C
       .byte $02,$01,$00,$08,$01,$05,$04,$08,$01,$0D,$08,$08,$01,$0D,$0C,$0C
       .byte $03,$05,$04,$0C,$03,$01,$04,$0C,$00,$03,$08,$0C,$01,$03,$08,$0C
       .byte $03,$03,$08,$0C,$03,$03,$08,$08,$07,$03,$08,$0C,$0F,$03,$08,$02
       .byte $03,$03,$08,$02,$01,$03,$0A,$04,$07,$03,$0A,$04,$03,$0C,$02,$00
       .byte $00,$00,$2B,$19,$0C,$08,$07,$19,$08,$08,$07,$19,$0A,$08,$06,$19
       .byte $09,$08,$03,$19,$0A,$08,$07,$19,$0E,$08,$07,$19,$0A,$08,$11,$19
       .byte $09,$08,$06,$19,$0A,$08,$0C,$19,$0C,$08,$00,$03,$09,$04,$08,$02
       .byte $0D,$04,$08,$03,$0D,$08,$08,$02,$0C,$08,$08,$01,$0C,$06,$08,$01
       .byte $0C,$02,$08,$03,$0C,$01,$08,$02,$0C,$02,$08,$04,$0C,$04,$08,$00
       .byte $01,$08,$04,$02,$01,$00,$04,$00,$01,$00,$04,$01,$01,$08,$01,$03
       .byte $01,$06,$04,$02,$01,$0F,$0C,$02,$01,$00,$00,$00,$00,$04,$0D,$08
       .byte $08,$02,$0D,$01,$08,$01,$0D,$05,$08,$03,$0D,$04,$08,$01,$0D,$00
       .byte $08,$02,$0D,$02,$08,$02,$05,$02,$08,$01,$05,$12,$08,$03,$05,$10
       .byte $08,$03,$05,$03,$08,$03,$05,$00,$08,$01,$05,$01,$08,$01,$05,$13
       .byte $08,$03,$05,$18,$08,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$3C,$66,$66,$66,$66,$66
       .byte $66,$3C,$3C,$18,$18,$18,$18,$18,$38,$18,$7E,$60,$60,$3C,$06,$06
       .byte $46,$3C,$3C,$46,$06,$0C,$0C,$06,$46,$3C,$0C,$0C,$0C,$7E,$4C,$2C
       .byte $1C,$0C,$7C,$46,$06,$06,$7C,$60,$60,$7E,$3C,$66,$66,$66,$7C,$60
       .byte $62,$3C,$18,$18,$18,$18,$0C,$06,$42,$7E,$3C,$66,$66,$3C,$3C,$66
       .byte $66,$3C,$3C,$46,$06,$3E,$66,$66,$66,$3C,$00,$00,$00,$18,$18,$18
       .byte $18,$18,$18,$18,$7E,$FF,$00,$00,$00,$00,$F2,$82,$F2,$92,$F2,$02
       .byte $02,$02,$00,$00,$00,$00,$00,$00,$79,$40,$79,$49,$79,$00,$00,$00
       .byte $00,$00,$00,$00,$03,$00,$E0,$27,$E4,$04,$E4,$00,$00,$00,$00,$00
       .byte $00,$00,$80,$80,$9E,$82,$9E,$90,$9E,$00,$11,$11,$17,$15,$17,$00
       .byte $1E,$21,$2D,$29,$2D,$21,$1E,$00,$77,$54,$77,$51,$77,$BF,$7F,$60
       .byte $4C,$B5,$8E,$D8,$04,$30,$51,$C7,$E7,$A7,$DF
LBA00: .byte $00,$7E,$7E,$FF,$FF,$FF,$7E,$7E,$00,$1C,$3E,$3E,$3E,$3E,$3E,$3E
       .byte $3E,$3E,$3E,$7F,$7F,$7F,$7F,$7F,$5B,$7E,$16,$1E,$1A,$0C,$04,$04
       .byte $00,$3E,$3E,$3E,$3E,$3E,$3E,$3E,$3E,$3E,$3E,$3E,$3E,$3E,$3E,$3E
       .byte $7F,$7F,$04,$04,$04,$04,$04,$04,$04,$04,$04,$00,$10,$10,$10,$10
       .byte $10,$10,$10,$10,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$38
       .byte $00,$3C,$3C,$3C,$3C,$3C,$3C,$3C,$7E,$7E,$FF,$FF,$8D,$91,$85,$10
       .byte $20,$00,$20,$70,$F8,$FC,$FC,$FE,$7E,$3E,$1F,$1F,$0F,$0F,$0F,$07
       .byte $06,$02,$00,$C0,$E0,$F0,$F8,$DC,$BE,$FF,$FB,$FF,$EE,$FC,$F8,$F0
       .byte $A0,$C0,$00,$20,$70,$F8,$FC,$FC,$FE,$7E,$3E,$1F,$1F,$0F,$0F,$0F
       .byte $07,$06,$02,$00,$7E,$7E,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$7E,$00
       .byte $7E,$FF,$FF,$FF,$FF,$FF,$FF,$DB,$FF,$B7,$FE,$62,$2A,$08,$00,$7C
       .byte $7C,$7C,$7C,$7F,$7F,$7D,$7D,$7D,$7D,$7F,$7F,$FC,$FE,$FE,$FA,$DE
       .byte $7C,$00,$7E,$FF,$FF,$FF,$DF,$DF,$DF,$DF,$C3,$DF,$DF,$C3,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FE,$FC,$5C,$4C,$4C,$00,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$E3,$DF,$DF,$DF,$DF,$DF,$DF,$DF,$DF,$E3,$FF,$FF,$FF
       .byte $FF,$10,$10,$10,$10,$10,$10,$10,$10,$00,$E8,$40,$17,$07,$0E,$37
LBB00: .byte $00,$38,$38,$36,$36,$36,$38,$38,$00,$3A,$3A,$3A,$3A,$3A,$3A,$3A
       .byte $3A,$3A,$3A,$3A,$3A,$3A,$3A,$40,$40,$40,$40,$40,$40,$40,$40,$40
       .byte $00,$4E,$34,$34,$34,$34,$34,$34,$36,$36,$36,$36,$36,$36,$36,$34
       .byte $2E,$34,$3E,$3E,$3E,$3E,$3E,$3E,$3E,$3E,$3E,$00,$22,$26,$26,$26
       .byte $26,$26,$26,$26,$20,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30
       .byte $00,$4C,$46,$46,$46,$46,$46,$46,$46,$46,$48,$4A,$4A,$6E,$6E,$6E
       .byte $6E,$00,$D6,$D6,$D6,$D6,$D6,$D6,$D6,$D6,$D6,$D6,$D6,$D6,$D6,$D6
       .byte $D4,$D4,$00,$36,$36,$36,$36,$36,$36,$36,$36,$36,$36,$36,$36,$36
       .byte $36,$36,$00,$66,$66,$66,$66,$66,$66,$66,$66,$66,$66,$66,$66,$66
       .byte $66,$64,$64,$00,$24,$24,$24,$24,$20,$22,$22,$26,$26,$26,$26,$00
       .byte $28,$28,$54,$1E,$38,$38,$38,$38,$28,$28,$28,$28,$8C,$8C,$00,$0A
       .byte $0A,$0A,$0A,$0A,$0A,$0A,$0A,$0A,$0A,$0A,$0A,$0A,$AE,$AE,$AE,$AE
       .byte $AE,$00,$9E,$9E,$9E,$9E,$9E,$9E,$9E,$9E,$9E,$9E,$9E,$9E,$9E,$9E
       .byte $9E,$9E,$36,$9E,$3A,$3A,$3A,$3A,$3A,$3A,$3A,$3A,$00,$0C,$0C,$0A
       .byte $1A,$6C,$6C,$6C,$6C,$6C,$6C,$6C,$6C,$6C,$6C,$6C,$6C,$6C,$6C,$16
       .byte $0A,$0C,$0C,$0C,$0C,$0C,$0C,$0C,$0C,$00,$1F,$06,$06,$06,$06,$06
       .byte $06,$06,$06,$06,$06,$06,$06,$06,$07,$07,$06,$06,$06,$06,$06,$06
       .byte $06,$06,$06,$06,$06,$1F,$F3,$13,$13,$13,$13,$13,$13,$13,$13,$13
       .byte $13,$13,$13,$13,$F3,$F3,$13,$13,$13,$13,$13,$13,$13,$13,$13,$13
       .byte $13,$F3,$FC,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04
       .byte $04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$C3,$C3
       .byte $C7,$C7,$C6,$CE,$CE,$DC,$DC,$F8,$F8,$F8,$F8,$FF,$FF,$C1,$C1,$C1
       .byte $C1,$C1,$C1,$C1,$C1,$C1,$C1,$C1,$C1,$FF,$30,$30,$30,$30,$30,$30
       .byte $30,$30,$30,$30,$30,$30,$30,$3F,$3F,$30,$30,$30,$30,$30,$30,$30
       .byte $30,$30,$30,$30,$30,$3F,$03,$03,$03,$00,$00,$00,$00,$00,$03,$03
       .byte $03,$03,$03,$C3,$C3,$43,$43,$43,$43,$43,$43,$43,$43,$43,$43,$43
       .byte $43,$C3,$01,$01,$01,$0F,$00,$00,$00,$00,$0F,$08,$08,$08,$08,$08
       .byte $08,$08,$08,$08,$08,$08,$08,$08,$0F,$00,$00,$00,$00,$00,$0F,$01
       .byte $01,$01,$FF,$00,$00,$00,$00,$00,$00,$00,$CF,$C9,$C8,$08,$08,$08
       .byte $08,$08,$08,$08,$08,$08,$08,$CC,$CC,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$FF,$FF,$00,$00,$00,$00,$00,$00,$00,$9F,$98,$10,$10,$10,$10
       .byte $10,$10,$10,$10,$10,$10,$10,$11,$1F,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$FF,$FF,$00,$00,$00,$00,$00,$00,$00,$9F,$90,$80,$80,$80,$80
       .byte $9F,$90,$90,$90,$90,$90,$90,$90,$9F,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$FF,$FF,$00,$00,$00,$00,$00,$00,$00,$9F,$91,$90,$90,$90,$90
       .byte $9F,$11,$10,$10,$10,$10,$10,$91,$9F,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$FF,$F0,$10,$10,$1F,$00,$00,$00,$00,$3E,$31,$21,$21,$21,$21
       .byte $21,$21,$21,$21,$21,$21,$21,$31,$3E,$00,$00,$00,$00,$00,$1F,$10
       .byte $10,$F0,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$FE,$80,$80
       .byte $80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80
       .byte $FE,$00,$00,$00,$00,$0F,$08,$08,$08,$08,$08,$0B,$08,$08,$08,$08
       .byte $08,$08,$0F,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$01
       .byte $01,$01,$01,$01,$42,$42,$42,$42,$42,$42,$42,$42,$42,$42,$42,$7E
       .byte $42,$42,$42,$42,$42,$42,$42,$42,$42,$42,$42,$42,$42,$42,$42,$42
       .byte $42,$42,$7E,$00,$00,$00,$00,$9E,$90,$90,$90,$90,$90,$9E,$10,$10
       .byte $10,$10,$10,$10,$9E,$00,$00,$00,$00,$43,$42,$42,$42,$42,$42,$42
       .byte $F2,$12,$12,$12,$12,$13,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04
       .byte $04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04
       .byte $04,$04,$04,$04,$3F,$00,$00,$00,$00,$10,$10,$10,$10,$10,$10,$10
       .byte $10,$10,$10,$10,$10,$10,$7D,$00,$00,$00,$00,$E3,$24,$24,$24,$24
       .byte $24,$24,$24,$24,$24,$24,$24,$E4,$04,$04,$04,$04,$04,$04,$04,$04
       .byte $04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04
       .byte $04,$04,$04,$04,$04,$04,$1F,$00,$00,$00,$00,$43,$41,$41,$41,$41
       .byte $41,$41,$41,$41,$41,$41,$41,$41,$F3,$00,$00,$00,$00,$81,$41,$41
       .byte $41,$41,$41,$41,$41,$49,$49,$49,$49,$49,$3E,$20,$20,$20,$20,$20
       .byte $20,$20,$20,$20,$20,$3E,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20
       .byte $20,$20,$20,$20,$20,$20,$20,$20,$3E,$00,$00,$00,$00,$90,$11,$11
       .byte $12,$12,$12,$16,$14,$14,$14,$18,$18,$10,$90,$00,$00,$00,$00,$13
       .byte $32,$22,$22,$22,$22,$F2,$13,$12,$12,$12,$12,$F3,$41,$41,$43,$42
       .byte $42,$42,$42,$42,$42,$42,$42,$7F,$41,$41,$41,$41,$41,$41,$41,$41
       .byte $41,$41,$41,$41,$41,$41,$41,$41,$41,$41,$7F,$00,$00,$00,$00,$9F
       .byte $91,$91,$91,$91,$91,$97,$90,$90,$90,$90,$90,$90,$9F,$00,$00,$00
       .byte $00,$C0,$00,$00,$00,$00,$00,$00,$C0,$00,$00,$00,$00,$C0,$73,$CC
       .byte $EF,$CC,$CA,$C9,$EC,$CE,$CD,$8D,$AD,$E5,$F8,$EC,$5B,$AC,$DB,$CC
LBF00: .byte $00,$42,$44,$56,$56,$56,$54,$54,$54,$54,$54,$54,$54,$54,$54,$56
       .byte $56,$56,$56,$56,$46,$46,$42,$42,$42,$00,$80,$E0,$F0,$78,$3F,$0F
       .byte $03,$01,$01,$01,$00,$03,$03,$07,$06,$1E,$7E,$7C,$F8,$E0,$C0,$80
       .byte $00,$00,$00,$00,$00,$00,$F8,$FC,$CF,$BF,$0D,$01,$01,$00,$03,$37
       .byte $5F,$5E,$FE,$FA,$F8,$F0,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $FC,$EF,$FF,$8D,$81,$81,$00,$A1,$A7,$EF,$FE,$FE,$DE,$7C,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$9C,$DF,$FB,$3D,$7D,$7D,$00
       .byte $6F,$7F,$FF,$FE,$BE,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$F8,$FC,$CF,$BF,$FD,$C7,$81,$00,$4B,$7B,$FF,$FE,$7C,$78,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$F8,$FC,$FF,$CB,$7D,$CD
       .byte $01,$00,$01,$0F,$6F,$EE,$FE,$FC,$78,$00,$00,$00,$00,$00,$00,$00
LBFB0: LDX    #$01    
LBFB2: LDA    $C2     
       CMP    $BC,X   
       BCC    LBFCC   
       BNE    LBFC8   
       LDA    $C4     
       CMP    $BE,X   
       BCC    LBFCC   
       BNE    LBFC8   
       LDA    $C6     
       CMP    $C0,X   
       BCC    LBFCC   
LBFC8: DEX            
       BPL    LBFB2   
       RTS            

LBFCC: LDA    $BC,X   
       STA    $C2     
       LDA    $BE,X   
       STA    $C4     
       LDA    $C0,X   
       STA    $C6     
       JMP    LBFC8   
LBFDB: .byte $B8,$31,$1E,$33,$3C,$73,$DF,$93,$C5,$FB,$E2,$43,$88,$03,$C7,$97
       .byte $CC,$63,$CD,$73,$0A,$C1,$C8,$E4,$CE,$CD,$EC,$C4,$FC,$EF,$CC,$82
       .byte $DC,$00,$B0,$00,$B0
