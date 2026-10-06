; Disassembly of roms/Breakout - Breakaway IV (2).bin
; Disassembled Tue Oct  6 15:21:07 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Breakout - Breakaway IV (2).bin
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
PF0     =  $0D
PF1     =  $0E
PF2     =  $0F
AUDC0   =  $15
AUDF0   =  $17
AUDV0   =  $19
GRP0    =  $1B
GRP1    =  $1C
ENAM0   =  $1D
ENAM1   =  $1E
ENABL   =  $1F
VDELBL  =  $27
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXP0FB  =  $32
CXP1FB  =  $33
CXM0FB  =  $34
CXM1FB  =  $35
CXBLPF  =  $36
INPT0   =  $38
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296

       ORG $F000
LF000: .byte $4C,$37,$F2
LF003: LDY    #$04    
LF005: STY    WSYNC   
       LDA    ($D0),Y 
       AND    #$0F    
       AND    $EE     
       STA    PF1     
       LDA    ($D2),Y 
       AND    #$0F    
       STA    $BB     
       LDA    ($D4),Y 
       AND    #$F0    
       ORA    $BB     
       STA    PF2     
       LDA    ($D6),Y 
       AND    #$F0    
       AND    $EE     
       STA    PF1     
       LDA    ($D8),Y 
       AND    #$0F    
       STA    PF2     
       INX            
       TXA            
       AND    #$01    
       BNE    LF005   
       DEY            
       BPL    LF005   
       STY    $BB     
       TXA            
       TAY            
       LDX    $BB     
       RTS            

LF03B: LDX    #$1F    
       TXS            
       LDX    #$05    
LF040: SEC            
       TYA            
       SBC    $E5     
       AND    #$FC    
       STA    WSYNC   
       PHP            
       LDA    $C0,X   
       STA    COLUPF  
       LDA    $9E,X   
       STA    PF0     
       LDA    $98,X   
       STA    PF1     
       LDA    $92,X   
       STA    PF2     
       LDA    $8C,X   
       STA    PF0     
       LDA    $86,X   
       STA    PF1     
       LDA    $80,X   
       STA    PF2     
       LDA    $9E,X   
       STA    PF0     
       LDA    $98,X   
       STA    PF1     
       STX    $BB     
       LDX    $B6     
       LDA    INPT0,X 
       BPL    LF078   
       NOP            
       BMI    LF07A   
LF078: STY    $C6     
LF07A: LDX    $BB     
       LDA    #$00    
       STA    GRP1    
       LDA    $92,X   
       STA    PF2     
       PLA            
       INY            
       INY            
       LDA    $8C,X   
       STA    PF0     
       LDA    $86,X   
       STA    PF1     
       LDA    $80,X   
       STA    PF2     
       DEC    $EF,X   
       BPL    LF040   
       DEX            
       BPL    LF040   
       LDX    #$32    
       LDA    #$00    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       LDA    $BE     
       STA    COLUPF  
       BEQ    LF0B3   
LF0AA: STX    $BB     
       LDX    #$1F    
       TXS            
       LDX    $BB     
LF0B1: STA    WSYNC   
LF0B3: TYA            
       SEC            
       SBC    $E5     
       AND    #$FC    
       PHP            
       PLA            
       STX    $BB     
       LDX    $B6     
       LDA    INPT0,X 
       BMI    LF0C5   
       STY    $C6     
LF0C5: LDX    $BB     
       TYA            
       AND    #$FC    
       CMP    #$B4    
       BEQ    LF0D6   
       LDA    #$00    
       STA    WSYNC   
       STA    GRP0    
       BEQ    LF0E6   
LF0D6: LDA    $BE     
       STA    WSYNC   
       STA    COLUP0  
       LDA    $BF     
       STA    COLUP1  
       LDA    $B7     
       STA    GRP0    
       AND    $B8     
LF0E6: STA    GRP1    
       INY            
       INY            
       DEX            
       BPL    LF0B1   
       LDX    #$FD    
       TXS            
       RTS            

LF0F1: LDY    #$00    
       BEQ    LF0F9   
LF0F5: INY            
       SEC            
       SBC    $BB     
LF0F9: CMP    $BB     
       BPL    LF0F5   
       RTS            

LF0FE: .byte $88,$44,$77,$55,$55,$55,$77,$22,$22,$22,$22,$22,$77,$44,$77,$11
       .byte $77,$77,$11,$33,$11,$77,$11,$11,$77,$55,$55,$77,$11,$77,$44,$77
       .byte $77,$55,$77,$44,$44,$11,$11,$11,$11,$77,$77,$55,$77,$55,$77,$11
       .byte $11,$77,$55,$77
LF132: LDA    $DE     
       AND    #$3F    
       BEQ    LF1A1   
       TAX            
       LDY    $F7     
       LDA    LF7D0,Y 
       STA    $BC     
       DEX            
       AND    #$0F    
       TAY            
       LDA    $80,X   
       ROL    $BC     
       BCC    LF14D   
       JSR    LF67F   
LF14D: ROL    $BC     
       BCC    LF161   
LF151: ROL            
       JSR    LF76E   
       AND    #$FE    
       BCC    LF15B   
       ORA    #$01    
LF15B: ROL            
       DEY            
       BNE    LF151   
       BEQ    LF16F   
LF161: ROR            
       JSR    LF76E   
       AND    #$7F    
       BCC    LF16B   
       ORA    #$80    
LF16B: ROR            
       DEY            
       BNE    LF161   
LF16F: ROL    $BC     
       BCC    LF175   
       LSR            
       LSR            
LF175: ROL    $BC     
       BCC    LF17E   
       ROR            
       ROR            
       ROR            
       AND    #$C0    
LF17E: STA    $80,X   
       DEC    $C7     
       BNE    LF18A   
       LDA    #$06    
       STA    $C7     
       DEC    $F7     
LF18A: STX    $BC     
       LDA    $DE     
       AND    #$C0    
       ORA    $BC     
       STA    $DE     
       AND    #$3F    
       BEQ    LF199   
       RTS            

LF199: LDX    #$03    
LF19B: ROL    $B1     
       DEX            
       BPL    LF19B   
       RTS            

LF1A1: LDX    $DE     
       STA    $DE     
       TXA            
       AND    #$40    
       BNE    LF1AB   
       RTS            

LF1AB: LDX    #$23    
       LDA    #$C0    
       LDY    #$05    
       JSR    LF1BF   
       LDA    #$FF    
       LDY    #$17    
       JSR    LF1BF   
       LDA    #$3F    
       LDY    #$05    
LF1BF: STA    $80,X   
       DEX            
       DEY            
       BPL    LF1BF   
       RTS            

LF1C6: .byte $38,$E9,$2F,$A0,$02,$C8,$E9,$0F,$B0,$FB,$49,$FF,$E9,$06,$20,$7F
       .byte $F6,$84,$02,$88,$10,$FD,$95,$10,$95,$20,$40
LF1E1: LDX    #$00    
       STX    $E9     
       STX    $E7     
       STX    $EA     
       STX    $E8     
       STX    $E5     
       STX    $E1     
       STX    $EB     
       RTS            

LF1F2: SED            
       CLC            
       ADC    $CD     
       STA    $CD     
       LDA    #$00    
       ADC    $CC     
       STA    $CC     
       CLD            
       RTS            

LF200: .byte $EE,$AA,$AA,$AA,$EE,$44,$44,$44,$44,$44,$EE,$22,$EE,$88,$EE,$EE
       .byte $88,$CC,$88,$EE,$88,$88,$EE,$AA,$AA,$EE,$88,$EE,$22,$EE,$EE,$AA
       .byte $EE,$22,$22,$88,$88,$88,$88,$EE,$EE,$AA,$EE,$AA,$EE,$88,$88,$EE
       .byte $AA,$EE,$00,$00,$00,$00,$00

START:
       SEI            
       CLD            
       LDX    #$FF    
       TXS            
       INX            
       TXA            
LF23E: STA    $CC,X   
       INX            
       BNE    LF23E   
       LDX    #$F1    
       STX    $D1     
       STX    $D7     
       INX            
       STX    $D3     
       STX    $D5     
       STX    $D9     
       LDA    #$C9    
       LDX    #$02    
       BRK            
       NOP            
       LDA    #$31    
       INX            
       BRK            
       NOP            
       JSR    LF730   
LF25E: LDA    #$23    
       STA    WSYNC   
       STA    TIM64T  
       LDA    $EE     
       BMI    LF28A   
       LDA    $B2     
       LSR            
       LSR            
       CLC            
       ADC    #$01    
       LDY    #$0A    
       STY    $BB     
       JSR    LF0F1   
       JSR    LF676   
       STA    $D4     
       TYA            
       JSR    LF676   
       BNE    LF284   
       LDA    #$32    
LF284: STA    $D2     
       LDX    $BA     
       BPL    LF2A8   
LF28A: LDA    $CC     
       JSR    LF676   
       STA    $D0     
       LDA    $CD     
       JSR    LF676   
       STA    $D4     
       LDA    $CD     
       JSR    LF673   
       STA    $D2     
       LDA    $B9     
       JSR    LF676   
       STA    $D6     
       LDX    $B5     
LF2A8: INX            
       TXA            
       JSR    LF676   
       STA    $D8     
       LDA    #$3F    
       LDY    #$00    
       BIT    $DF     
       BEQ    LF2CF   
       BMI    LF2C3   
       BVS    LF2BF   
       LDX    $E0     
       BPL    LF2CB   
LF2BF: LDX    #$04    
       BPL    LF2CB   
LF2C3: BVS    LF2C9   
       LDX    #$08    
       BPL    LF2CB   
LF2C9: LDX    #$02    
LF2CB: DEC    $DF     
       LDY    #$0F    
LF2CF: STY    AUDV0   
       STX    AUDF0   
       LDA    #$0C    
       STA    AUDC0   
       LDA    $DD     
       JSR    LF67F   
       STA    $BB     
       LDY    #$09    
       LDX    #$FF    
       LDA    SWCHB   
       AND    #$08    
       BNE    LF2ED   
       LDY    #$13    
       LDX    #$0F    
LF2ED: TXA            
       BIT    $B4     
       BMI    LF2F4   
       AND    #$F7    
LF2F4: STA    $BC     
       LDX    #$09    
LF2F8: CPX    #$04    
       BMI    LF310   
       BIT    $B3     
       BVC    LF31F   
       LDA    $B4     
       BPL    LF31F   
       BIT    $DF     
       BMI    LF30C   
       BVS    LF30C   
       BNE    LF31F   
LF30C: LDA    #$00    
       BEQ    LF326   
LF310: CPX    #$02    
       BMI    LF31F   
       LDA    $B5     
       BEQ    LF31F   
       LDA    LF7AA,Y 
       EOR    #$90    
       BNE    LF322   
LF31F: LDA    LF7AA,Y 
LF322: EOR    $BB     
       AND    $BC     
LF326: STA    $BC,X   
       DEY            
       DEX            
       BPL    LF2F8   
       STA    COLUPF  
       STA    COLUP0  
       STA    COLUP1  
       LDA    $BD     
       STA    COLUBK  
       STX    NUSIZ0  
       STX    NUSIZ1  
LF33A: LDA    INTIM   
       BNE    LF33A   
       STX    WSYNC   
       STX    VBLANK  
       STX    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    VSYNC   
       LDA    #$22    
       STA    TIM64T  
       INC    $DA     
       BNE    LF36B   
       INC    $DB     
       BEQ    LF3B4   
       INC    $DD     
       LDA    $B4     
       EOR    $EE     
       BEQ    LF36B   
       LDA    $BA     
       BEQ    LF36B   
       LDA    #$A4    
       JSR    LF749   
LF36B: LDA    SWCHB   
       LSR            
       BCS    LF38F   
       JSR    LF730   
       STX    $B9     
       DEY            
       STY    $B4     
       STY    $EE     
       INY            
       STY    $DD     
       LDX    #$03    
LF380: STY    $CC,X   
       DEX            
       BPL    LF380   
LF385: STY    $DA     
       STY    $DB     
       JSR    LF1E1   
       JMP    LF55F   
LF38F: LSR            
       LDX    #$FF    
       BCC    LF398   
       STX    $DC     
       BCS    LF3BE   
LF398: LDA    $DC     
       BMI    LF3A4   
       LDA    $DA     
       AND    #$20    
       ORA    $DB     
       BEQ    LF3BE   
LF3A4: LDX    $B2     
       INX            
       CPX    #$30    
       BNE    LF3AD   
       LDX    #$00    
LF3AD: STX    $B2     
       STX    $DC     
       JSR    LF730   
LF3B4: LDY    #$00    
       STY    $EE     
LF3B8: LDY    #$00    
       STY    $B4     
       BEQ    LF385   
LF3BE: LDA    $EE     
       AND    $B4     
       BPL    LF41E   
       LDA    #$00    
       STA    $DD     
       BIT    $B3     
       BPL    LF3D7   
       LDA    $DA     
       AND    #$3F    
       BNE    LF3D7   
       LDA    #$01    
       JSR    LF1F2   
LF3D7: LDA    $E5     
       BEQ    LF3F5   
       CMP    #$D0    
       BCC    LF41E   
       JSR    LF1E1   
       LDA    $BA     
       BEQ    LF3EF   
       LDA    #$A4    
       JSR    LF749   
       LDA    $B5     
       BNE    LF41E   
LF3EF: DEC    $B9     
       BNE    LF41E   
       BEQ    LF3B8   
LF3F5: LDA    SWCHA   
       EOR    #$FF    
       LDX    $B5     
       AND    LF0FE,X 
       BEQ    LF41E   
       LDA    $DA     
       AND    #$03    
       TAX            
       LDA    LF788,X 
       ASL            
       STA    $E3     
       LDA    #$01    
       STA    $E7     
       BCC    LF414   
       LDA    #$FF    
LF414: STA    $E9     
       LDA    #$70    
       STA    $E5     
       LDA    #$48    
       STA    $DF     
LF41E: BIT    $DE     
       BPL    LF428   
       JSR    LF132   
       JMP    LF55F   
LF428: LDA    $C8     
       BIT    CXP0FB  
       BVS    LF434   
       LDA    $C9     
       BIT    CXP1FB  
       BVC    LF4A4   
LF434: BIT    $EB     
       BVS    LF4A4   
       ADC    $EC     
       SEC            
       SBC    $E3     
       TAY            
       BNE    LF44F   
       LDA    #$04    
       BIT    $E9     
       BPL    LF448   
       LDA    #$FC    
LF448: CLC            
       ADC    $E3     
       STA    $E3     
       INY            
       TYA            
LF44F: EOR    $E9     
       BPL    LF456   
       JSR    LF68C   
LF456: TYA            
       BPL    LF45C   
       JSR    LF6A2   
LF45C: CMP    #$09    
       BMI    LF462   
       LDA    #$08    
LF462: LDX    $EC     
       CPX    #$04    
       BNE    LF469   
       ASL            
LF469: CPX    #$06    
       BNE    LF473   
       CMP    #$04    
       BPL    LF473   
       ADC    #$00    
LF473: CLC            
       ADC    #$03    
       AND    #$04    
       LSR            
       STA    $ED     
       LDA    $EB     
       AND    #$3F    
       CMP    #$0C    
       BPL    LF485   
       ADC    #$01    
LF485: ORA    #$40    
       STA    $EB     
       JSR    LF6A8   
       LDA    #$88    
       STA    $DF     
       BIT    $B3     
       BMI    LF4A4   
       LDA    #$04    
       CMP    $CC     
       BNE    LF4A4   
       LDA    #$32    
       CMP    $CD     
       BNE    LF4A4   
       LDA    #$C0    
       STA    $DE     
LF4A4: BIT    CXBLPF  
       BMI    LF4AB   
LF4A8: JMP    LF542   
LF4AB: LDA    $E5     
       CMP    #$28    
       BPL    LF4C4   
       LDA    #$80    
       STA    $E1     
       LDA    #$88    
       STA    $DF     
       JSR    LF690   
       LDA    $EB     
       AND    #$3F    
       STA    $EB     
       BPL    LF4A8   
LF4C4: BIT    $EB     
       BMI    LF4A8   
       SBC    #$32    
       BCS    LF4CE   
       LDA    #$00    
LF4CE: LDX    #$06    
       STX    $BB     
       JSR    LF0F1   
       TYA            
       STA    $BD     
       JSR    LF6A2   
       CLC            
       ADC    #$05    
       STA    $BC     
       LDA    $E3     
       SBC    #$39    
       BCS    LF4E8   
       LDA    #$00    
LF4E8: LSR            
       LSR            
       LSR            
       CMP    #$12    
       BMI    LF4F1   
       LDA    #$11    
LF4F1: TAY            
       LDA    $BC     
       CLC            
       ADC    LF798,Y 
       TAX            
       LDA    $80,X   
       AND    LF7BE,Y 
       CMP    $80,X   
       BEQ    LF542   
       STA    $80,X   
       LDX    $BD     
       LDA    LF792,X 
       STA    $E0     
       LDA    #$06    
       STA    $DF     
       BIT    $B3     
       BMI    LF519   
       LDA    LF78C,X 
       JSR    LF1F2   
LF519: TXA            
       CMP    #$03    
       BPL    LF52A   
       LDA    #$00    
       STA    $ED     
       LDA    $EB     
       AND    #$C0    
       ORA    #$10    
       STA    $EB     
LF52A: JSR    LF6A8   
       STA    $BC     
       LDA    #$20    
       BIT    $B3     
       BEQ    LF53C   
       JSR    LF690   
       LDA    #$00    
       BEQ    LF53E   
LF53C: LDA    #$80    
LF53E: ORA    $BC     
       STA    $EB     
LF542: LDA    CXM0FB  
       ORA    CXM1FB  
       AND    #$40    
       STA    $BC     
       BEQ    LF55F   
       LDA    $E3     
       EOR    $E9     
       BMI    LF55F   
       JSR    LF68C   
       LDA    $DF     
       AND    #$3F    
       BNE    LF55F   
       LDA    #$46    
       STA    $DF     
LF55F: LDX    #$00    
       LDA    SWCHB   
       ASL            
       LDY    $B5     
       BNE    LF56A   
       ASL            
LF56A: BCC    LF56D   
       INX            
LF56D: BIT    $E1     
       BPL    LF572   
       INX            
LF572: LDA    LF7D9,X 
       STA    $EC     
       LDA    LF7D6,X 
       STA    $B7     
       LDA    $BA     
       CMP    #$02    
       BMI    LF58B   
       ORA    $B5     
       ROR            
       BCC    LF58B   
       LDY    #$FF    
       BNE    LF58D   
LF58B: LDY    #$00    
LF58D: STY    $B8     
       BEQ    LF593   
       LDY    #$02    
LF593: LDX    #$00    
       JSR    LF6DB   
       LDX    #$00    
       BRK            
       NOP            
       LDX    #$01    
       LDY    $BB     
       JSR    LF6DB   
       LDX    #$01    
       BRK            
       NOP            
       LDA    #$08    
       BIT    $B3     
       BEQ    LF5C1   
       LDA    SWCHA   
       LDX    $B5     
       AND    LF0FE,X 
       LDY    $C8     
       BIT    CXP0FB  
       BVS    LF5E8   
       LDY    $C9     
       BIT    CXP1FB  
       BVS    LF5E2   
LF5C1: CLC            
       LDA    $E8     
       ADC    $E6     
       STA    $E6     
       LDA    $E7     
       ADC    $E5     
       STA    $E5     
       EOR    #$01    
       STA    VDELBL  
       SEC            
       LDA    $E4     
       SBC    $EA     
       STA    $E4     
       LDA    $E3     
       SBC    $E9     
       STA    $E3     
       JMP    LF5F6   
LF5E2: AND    #$0C    
       BNE    LF5C1   
       BMI    LF5EC   
LF5E8: AND    #$C0    
       BNE    LF5C1   
LF5EC: LDA    #$B2    
       STA    $E5     
       TYA            
       CLC            
       ADC    #$04    
       STA    $E3     
LF5F6: LDX    #$04    
       BRK            
       NOP            
       LDA    $B5     
       BIT    $B8     
       BPL    LF606   
       LDA    $DA     
       AND    #$02    
       ORA    $B5     
LF606: STA    $B6     
       LDX    #$05    
       LDA    #$02    
LF60C: STA    $EF,X   
       DEX            
       BPL    LF60C   
LF611: LDA    INTIM   
       BNE    LF611   
       STA    CXCLR   
       STA    WSYNC   
       STA    HMOVE   
       STA    VBLANK  
       LDX    #$09    
       JSR    LF664   
       STA    HMCLR   
       STA    $C6     
       TAX            
       JSR    LF003   
       LDX    #$02    
       JSR    LF664   
       LDA    #$FF    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       STA    ENAM0   
       STA    ENAM1   
       LDX    #$10    
       STX    CTRLPF  
       LDX    #$06    
       JSR    LF0AA   
       LDA    #$00    
       STA    WSYNC   
       STA    PF0     
       STA    PF1     
       STA    PF2     
       LDX    #$0B    
       JSR    LF0AA   
       JSR    LF03B   
       LDX    #$00    
       STX    ENAM0   
       STX    ENAM1   
       STX    ENABL   
       STX    GRP1    
       JMP    LF25E   
LF664: LDA    #$00    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       INY            
       STY    WSYNC   
       DEX            
       BNE    LF664   
       RTS            

LF673: JSR    LF67F   
LF676: AND    #$0F    
       STA    $BB     
       ASL            
       ASL            
       ADC    $BB     
       RTS            

LF67F: ASL            
       ADC    #$00    
       ASL            
       ADC    #$00    
       ASL            
       ADC    #$00    
       ASL            
       ADC    #$00    
       RTS            

LF68C: LDX    #$EA    
       BNE    LF692   
LF690: LDX    #$E8    
LF692: LDA    VSYNC,X 
       JSR    LF6A2   
       STA    VSYNC,X 
       LDA    $FF,X   
       EOR    #$FF    
       ADC    #$00    
       STA    $FF,X   
       RTS            

LF6A2: EOR    #$FF    
       SEC            
       ADC    #$00    
       RTS            

LF6A8: LDA    $EB     
       AND    #$3C    
       CLC            
       ADC    $ED     
       TAY            
       LDA    $E9     
       PHP            
       LDA    $E7     
       PHP            
       LDX    #$02    
LF6B8: LDA    LF7DC,Y 
       PHA            
       AND    #$03    
       STA    $E7,X   
       PLA            
       AND    #$FC    
       STA    $E8,X   
       INY            
       DEX            
       DEX            
       BPL    LF6B8   
       PLP            
       BMI    LF6D0   
       JSR    LF690   
LF6D0: PLP            
       BPL    LF6D6   
       JSR    LF68C   
LF6D6: LDA    $EB     
       AND    #$3F    
       RTS            

LF6DB: TXA            
       ASL            
       EOR    $B6     
       AND    #$02    
       BEQ    LF6E9   
       INY            
       INY            
       STY    $BB     
       BNE    LF72D   
LF6E9: LDA    $C6     
       ADC    #$14    
       EOR    #$FF    
       ADC    $C8,X   
       ROR            
       CMP    LF782,Y 
       BCS    LF6FA   
       LDA    LF782,Y 
LF6FA: INY            
       CMP    LF782,Y 
       BCC    LF703   
       LDA    LF782,Y 
LF703: INY            
       STY    $BB     
       STA    $C8,X   
       BIT    $E7     
       BPL    LF72D   
       LDA    #$10    
       BIT    $B3     
       BEQ    LF72D   
       BIT    $BC     
       BVS    LF72D   
       SEC            
       LDY    $C8,X   
       LDA    $F5,X   
       STY    $F5,X   
       SBC    $C8,X   
       BEQ    LF72D   
       BPL    LF729   
       INC    $E3     
       INC    $E3     
       BNE    LF72D   
LF729: DEC    $E3     
       DEC    $E3     
LF72D: LDA    $C8,X   
       RTS            

LF730: LDA    #$01    
       STA    $B5     
       LDA    $B2     
       AND    #$03    
       STA    $BA     
       LDA    $B2     
       LSR            
       LSR            
       TAX            
       LDA    LF7F0,X 
       STA    $B3     
       JSR    LF1AB   
       LDA    #$E4    
LF749: STA    $DE     
       LDX    #$01    
LF74D: LDY    $CC,X   
       LDA    $CE,X   
       STA    $CC,X   
       STY    $CE,X   
       DEX            
       BPL    LF74D   
       LDA    $B5     
       EOR    #$01    
       STA    $B5     
       LDA    #$08    
       STA    $CA     
       LDX    #$06    
       STX    $C7     
       DEX            
       STX    $F7     
       LDY    #$00    
       STY    $CB     
       RTS            

LF76E: STX    $BD     
       LDX    $CB     
       ROL    $A4,X   
       DEC    $CA     
       BNE    LF77F   
       INX            
       STX    $CB     
       LDX    #$08    
       STX    $CA     
LF77F: LDX    $BD     
       RTS            

LF782: .byte $37,$BF,$37,$7E,$80,$BF
LF788: .byte $A0,$40,$C0,$60
LF78C: .byte $07,$07,$04,$04,$01,$01
LF792: .byte $0A,$0C,$10,$12,$16,$1C
LF798: .byte $1E,$18,$18,$18,$18,$12,$12,$12,$12,$0C,$0C,$06,$06,$06,$06,$00
       .byte $00,$00
LF7AA: .byte $06,$00,$46,$B6,$86,$C6,$16,$26,$36,$46,$06,$00,$0C,$0A,$08,$06
       .byte $04,$08,$06,$04
LF7BE: .byte $3F,$3F,$CF,$F3,$FC,$FC,$F3,$CF,$3F,$CF,$3F,$3F,$CF,$F3,$FC,$FC
       .byte $F3,$CF
LF7D0: .byte $23,$44,$82,$04,$44,$51
LF7D6: .byte $F0,$E0,$C0
LF7D9: .byte $08,$06,$04
LF7DC: .byte $81,$01,$01,$81,$81,$02,$80,$02,$02,$01,$02,$01,$02,$02,$02,$02
       .byte $02,$63,$02,$63
LF7F0: .byte $00,$10,$08,$40,$80,$90,$88,$C0,$20,$30,$28,$60,$37,$F2,$C6,$F1
       .byte $4C,$37,$F2,$A0,$04,$84,$02,$B1,$D0,$29,$0F,$25,$EE,$85,$0E,$B1
       .byte $D2,$29,$0F,$85,$BB,$B1,$D4,$29,$F0,$05,$BB,$85,$0F,$B1,$D6,$29
       .byte $F0,$25,$EE,$85,$0E,$B1,$D8,$29,$0F,$85,$0F,$E8,$8A,$29,$01,$D0
       .byte $D4,$88,$10,$D1,$84,$BB,$8A,$A8,$A6,$BB,$60,$A2,$1F,$9A,$A2,$05
       .byte $38,$98,$E5,$E5,$29,$FC,$85,$02,$08,$B5,$C0,$85,$08,$B5,$9E,$85
       .byte $0D,$B5,$98,$85,$0E,$B5,$92,$85,$0F,$B5,$8C,$85,$0D,$B5,$86,$85
       .byte $0E,$B5,$80,$85,$0F,$B5,$9E,$85,$0D,$B5,$98,$85,$0E,$86,$BB,$A6
       .byte $B6,$B5,$38,$10,$03,$EA,$30,$02,$84,$C6,$A6,$BB,$A9,$00,$85,$1C
       .byte $B5,$92,$85,$0F,$68,$C8,$C8,$B5,$8C,$85,$0D,$B5,$86,$85,$0E,$B5
       .byte $80,$85,$0F,$D6,$EF,$10,$A9,$CA,$10,$A6,$A2,$32,$A9,$00,$85,$0D
       .byte $85,$0E,$85,$0F,$A5,$BE,$85,$08,$F0,$09,$86,$BB,$A2,$1F,$9A,$A6
       .byte $BB,$85,$02,$98,$38,$E5,$E5,$29,$FC,$08,$68,$86,$BB,$A6,$B6,$B5
       .byte $38,$30,$02,$84,$C6,$A6,$BB,$98,$29,$FC,$C9,$B4,$F0,$08,$A9,$00
       .byte $85,$02,$85,$1B,$F0,$10,$A5,$BE,$85,$02,$85,$06,$A5,$BF,$85,$07
       .byte $A5,$B7,$85,$1B,$25,$B8,$85,$1C,$C8,$C8,$CA,$10,$C4,$A2,$FD,$9A
       .byte $60,$A0,$00,$F0,$04,$C8,$38,$E5,$BB,$C5,$BB,$10,$F8,$60,$88,$44
       .byte $77,$55,$55,$55,$77,$22,$22,$22,$22,$22,$77,$44,$77,$11,$77,$77
       .byte $11,$33,$11,$77,$11,$11,$77,$55,$55,$77,$11,$77,$44,$77,$77,$55
       .byte $77,$44,$44,$11,$11,$11,$11,$77,$77,$55,$77,$55,$77,$11,$11,$77
       .byte $55,$77,$A5,$DE,$29,$3F,$F0,$69,$AA,$A4,$F7,$B9,$D0,$F7,$85,$BC
       .byte $CA,$29,$0F,$A8,$B5,$80,$26,$BC,$90,$03,$20,$7F,$F6,$26,$BC,$90
       .byte $10,$2A,$20,$6E,$F7,$29,$FE,$90,$02,$09,$01,$2A,$88,$D0,$F2,$F0
       .byte $0E,$6A,$20,$6E,$F7,$29,$7F,$90,$02,$09,$80,$6A,$88,$D0,$F2,$26
       .byte $BC,$90,$02,$4A,$4A,$26,$BC,$90,$05,$6A,$6A,$6A,$29,$C0,$95,$80
       .byte $C6,$C7,$D0,$06,$A9,$06,$85,$C7,$C6,$F7,$86,$BC,$A5,$DE,$29,$C0
       .byte $05,$BC,$85,$DE,$29,$3F,$F0,$01,$60,$A2,$03,$26,$B1,$CA,$10,$FB
       .byte $60,$A6,$DE,$85,$DE,$8A,$29,$40,$D0,$01,$60,$A2,$23,$A9,$C0,$A0
       .byte $05,$20,$BF,$F1,$A9,$FF,$A0,$17,$20,$BF,$F1,$A9,$3F,$A0,$05,$95
       .byte $80,$CA,$88,$10,$FA,$60,$38,$E9,$2F,$A0,$02,$C8,$E9,$0F,$B0,$FB
       .byte $49,$FF,$E9,$06,$20,$7F,$F6,$84,$02,$88,$10,$FD,$95,$10,$95,$20
       .byte $40,$A2,$00,$86,$E9,$86,$E7,$86,$EA,$86,$E8,$86,$E5,$86,$E1,$86
       .byte $EB,$60,$F8,$18,$65,$CD,$85,$CD,$A9,$00,$65,$CC,$85,$CC,$D8,$60
       .byte $EE,$AA,$AA,$AA,$EE,$44,$44,$44,$44,$44,$EE,$22,$EE,$88,$EE,$EE
       .byte $88,$CC,$88,$EE,$88,$88,$EE,$AA,$AA,$EE,$88,$EE,$22,$EE,$EE,$AA
       .byte $EE,$22,$22,$88,$88,$88,$88,$EE,$EE,$AA,$EE,$AA,$EE,$88,$88,$EE
       .byte $AA,$EE,$00,$00,$00,$00,$00,$78,$D8,$A2,$FF,$9A,$E8,$8A,$95,$CC
       .byte $E8,$D0,$FB,$A2,$F1,$86,$D1,$86,$D7,$E8,$86,$D3,$86,$D5,$86,$D9
       .byte $A9,$C9,$A2,$02,$00,$EA,$A9,$31,$E8,$00,$EA,$20,$30,$F7,$A9,$23
       .byte $85,$02,$8D,$96,$02,$A5,$EE,$30,$21,$A5,$B2,$4A,$4A,$18,$69,$01
       .byte $A0,$0A,$84,$BB,$20,$F1,$F0,$20,$76,$F6,$85,$D4,$98,$20,$76,$F6
       .byte $D0,$02,$A9,$32,$85,$D2,$A6,$BA,$10,$1E,$A5,$CC,$20,$76,$F6,$85
       .byte $D0,$A5,$CD,$20,$76,$F6,$85,$D4,$A5,$CD,$20,$73,$F6,$85,$D2,$A5
       .byte $B9,$20,$76,$F6,$85,$D6,$A6,$B5,$E8,$8A,$20,$76,$F6,$85,$D8,$A9
       .byte $3F,$A0,$00,$24,$DF,$F0,$18,$30,$0A,$70,$04,$A6,$E0,$10,$0C,$A2
       .byte $04,$10,$08,$70,$04,$A2,$08,$10,$02,$A2,$02,$C6,$DF,$A0,$0F,$84
       .byte $19,$86,$17,$A9,$0C,$85,$15,$A5,$DD,$20,$7F,$F6,$85,$BB,$A0,$09
       .byte $A2,$FF,$AD,$82,$02,$29,$08,$D0,$04,$A0,$13,$A2,$0F,$8A,$24,$B4
       .byte $30,$02,$29,$F7,$85,$BC,$A2,$09,$E0,$04,$30,$14,$24,$B3,$50,$1F
       .byte $A5,$B4,$10,$1B,$24,$DF,$30,$04,$70,$02,$D0,$13,$A9,$00,$F0,$16
       .byte $E0,$02,$30,$0B,$A5,$B5,$F0,$07,$B9,$AA,$F7,$49,$90,$D0,$03,$B9
       .byte $AA,$F7,$45,$BB,$25,$BC,$95,$BC,$88,$CA,$10,$CC,$85,$08,$85,$06
       .byte $85,$07,$A5,$BD,$85,$09,$86,$04,$86,$05,$AD,$84,$02,$D0,$FB,$86
       .byte $02,$86,$01,$86,$00,$85,$02,$85,$02,$85,$02,$85,$00,$A9,$22,$8D
       .byte $96,$02,$E6,$DA,$D0,$15,$E6,$DB,$F0,$5A,$E6,$DD,$A5,$B4,$45,$EE
       .byte $F0,$09,$A5,$BA,$F0,$05,$A9,$A4,$20,$49,$F7,$AD,$82,$02,$4A,$B0
       .byte $1E,$20,$30,$F7,$86,$B9,$88,$84,$B4,$84,$EE,$C8,$84,$DD,$A2,$03
       .byte $94,$CC,$CA,$10,$FB,$84,$DA,$84,$DB,$20,$E1,$F1,$4C,$5F,$F5,$4A
       .byte $A2,$FF,$90,$04,$86,$DC,$B0,$26,$A5,$DC,$30,$08,$A5,$DA,$29,$20
       .byte $05,$DB,$F0,$1A,$A6,$B2,$E8,$E0,$30,$D0,$02,$A2,$00,$86,$B2,$86
       .byte $DC,$20,$30,$F7,$A0,$00,$84,$EE,$A0,$00,$84,$B4,$F0,$C7,$A5,$EE
       .byte $25,$B4,$10,$5A,$A9,$00,$85,$DD,$24,$B3,$10,$0B,$A5,$DA,$29,$3F
       .byte $D0,$05,$A9,$01,$20,$F2,$F1,$A5,$E5,$F0,$1A,$C9,$D0,$90,$3F,$20
       .byte $E1,$F1,$A5,$BA,$F0,$09,$A9,$A4,$20,$49,$F7,$A5,$B5,$D0,$2F,$C6
       .byte $B9,$D0,$2B,$F0,$C3,$AD,$80,$02,$49,$FF,$A6,$B5,$3D,$FE,$F0,$F0
       .byte $1D,$A5,$DA,$29,$03,$AA,$BD,$88,$F7,$0A,$85,$E3,$A9,$01,$85,$E7
       .byte $90,$02,$A9,$FF,$85,$E9,$A9,$70,$85,$E5,$A9,$48,$85,$DF,$24,$DE
       .byte $10,$06,$20,$32,$F1,$4C,$5F,$F5,$A5,$C8,$24,$32,$70,$06,$A5,$C9
       .byte $24,$33,$50,$70,$24,$EB,$70,$6C,$65,$EC,$38,$E5,$E3,$A8,$D0,$0F
       .byte $A9,$04,$24,$E9,$10,$02,$A9,$FC,$18,$65,$E3,$85,$E3,$C8,$98,$45
       .byte $E9,$10,$03,$20,$8C,$F6,$98,$10,$03,$20,$A2,$F6,$C9,$09,$30,$02
       .byte $A9,$08,$A6,$EC,$E0,$04,$D0,$01,$0A,$E0,$06,$D0,$06,$C9,$04,$10
       .byte $02,$69,$00,$18,$69,$03,$29,$04,$4A,$85,$ED,$A5,$EB,$29,$3F,$C9
       .byte $0C,$10,$02,$69,$01,$09,$40,$85,$EB,$20,$A8,$F6,$A9,$88,$85,$DF
       .byte $24,$B3,$30,$10,$A9,$04,$C5,$CC,$D0,$0A,$A9,$32,$C5,$CD,$D0,$04
       .byte $A9,$C0,$85,$DE,$24,$36,$30,$03,$4C,$42,$F5,$A5,$E5,$C9,$28,$10
       .byte $13,$A9,$80,$85,$E1,$A9,$88,$85,$DF,$20,$90,$F6,$A5,$EB,$29,$3F
       .byte $85,$EB,$10,$E4,$24,$EB,$30,$E0,$E9,$32,$B0,$02,$A9,$00,$A2,$06
       .byte $86,$BB,$20,$F1,$F0,$98,$85,$BD,$20,$A2,$F6,$18,$69,$05,$85,$BC
       .byte $A5,$E3,$E9,$39,$B0,$02,$A9,$00,$4A,$4A,$4A,$C9,$12,$30,$02,$A9
       .byte $11,$A8,$A5,$BC,$18,$79,$98,$F7,$AA,$B5,$80,$39,$BE,$F7,$D5,$80
       .byte $F0,$40,$95,$80,$A6,$BD,$BD,$92,$F7,$85,$E0,$A9,$06,$85,$DF,$24
       .byte $B3,$30,$06,$BD,$8C,$F7,$20,$F2,$F1,$8A,$C9,$03,$10,$0C,$A9,$00
       .byte $85,$ED,$A5,$EB,$29,$C0,$09,$10,$85,$EB,$20,$A8,$F6,$85,$BC,$A9
       .byte $20,$24,$B3,$F0,$07,$20,$90,$F6,$A9,$00,$F0,$02,$A9,$80,$05,$BC
       .byte $85,$EB,$A5,$34,$05,$35,$29,$40,$85,$BC,$F0,$13,$A5,$E3,$45,$E9
       .byte $30,$0D,$20,$8C,$F6,$A5,$DF,$29,$3F,$D0,$04,$A9,$46,$85,$DF,$A2
       .byte $00,$AD,$82,$02,$0A,$A4,$B5,$D0,$01,$0A,$90,$01,$E8,$24,$E1,$10
       .byte $01,$E8,$BD,$D9,$F7,$85,$EC,$BD,$D6,$F7,$85,$B7,$A5,$BA,$C9,$02
       .byte $30,$09,$05,$B5,$6A,$90,$04,$A0,$FF,$D0,$02,$A0,$00,$84,$B8,$F0
       .byte $02,$A0,$02,$A2,$00,$20,$DB,$F6,$A2,$00,$00,$EA,$A2,$01,$A4,$BB
       .byte $20,$DB,$F6,$A2,$01,$00,$EA,$A9,$08,$24,$B3,$F0,$14,$AD,$80,$02
       .byte $A6,$B5,$3D,$FE,$F0,$A4,$C8,$24,$32,$70,$2D,$A4,$C9,$24,$33,$70
       .byte $21,$18,$A5,$E8,$65,$E6,$85,$E6,$A5,$E7,$65,$E5,$85,$E5,$49,$01
       .byte $85,$27,$38,$A5,$E4,$E5,$EA,$85,$E4,$A5,$E3,$E5,$E9,$85,$E3,$4C
       .byte $F6,$F5,$29,$0C,$D0,$DB,$30,$04,$29,$C0,$D0,$D5,$A9,$B2,$85,$E5
       .byte $98,$18,$69,$04,$85,$E3,$A2,$04,$00,$EA,$A5,$B5,$24,$B8,$10,$06
       .byte $A5,$DA,$29,$02,$05,$B5,$85,$B6,$A2,$05,$A9,$02,$95,$EF,$CA,$10
       .byte $FB,$AD,$84,$02,$D0,$FB,$85,$2C,$85,$02,$85,$2A,$85,$01,$A2,$09
       .byte $20,$64,$F6,$85,$2B,$85,$C6,$AA,$20,$03,$F0,$A2,$02,$20,$64,$F6
       .byte $A9,$FF,$85,$0D,$85,$0E,$85,$0F,$85,$1D,$85,$1E,$A2,$10,$86,$0A
       .byte $A2,$06,$20,$AA,$F0,$A9,$00,$85,$02,$85,$0D,$85,$0E,$85,$0F,$A2
       .byte $0B,$20,$AA,$F0,$20,$3B,$F0,$A2,$00,$86,$1D,$86,$1E,$86,$1F,$86
       .byte $1C,$4C,$5E,$F2,$A9,$00,$85,$0D,$85,$0E,$85,$0F,$C8,$84,$02,$CA
       .byte $D0,$F2,$60,$20,$7F,$F6,$29,$0F,$85,$BB,$0A,$0A,$65,$BB,$60,$0A
       .byte $69,$00,$0A,$69,$00,$0A,$69,$00,$0A,$69,$00,$60,$A2,$EA,$D0,$02
       .byte $A2,$E8,$B5,$00,$20,$A2,$F6,$95,$00,$B5,$FF,$49,$FF,$69,$00,$95
       .byte $FF,$60,$49,$FF,$38,$69,$00,$60,$A5,$EB,$29,$3C,$18,$65,$ED,$A8
       .byte $A5,$E9,$08,$A5,$E7,$08,$A2,$02,$B9,$DC,$F7,$48,$29,$03,$95,$E7
       .byte $68,$29,$FC,$95,$E8,$C8,$CA,$CA,$10,$EE,$28,$30,$03,$20,$90,$F6
       .byte $28,$10,$03,$20,$8C,$F6,$A5,$EB,$29,$3F,$60,$8A,$0A,$45,$B6,$29
       .byte $02,$F0,$06,$C8,$C8,$84,$BB,$D0,$44,$A5,$C6,$69,$14,$49,$FF,$75
       .byte $C8,$6A,$D9,$82,$F7,$B0,$03,$B9,$82,$F7,$C8,$D9,$82,$F7,$90,$03
       .byte $B9,$82,$F7,$C8,$84,$BB,$95,$C8,$24,$E7,$10,$21,$A9,$10,$24,$B3
       .byte $F0,$1B,$24,$BC,$70,$17,$38,$B4,$C8,$B5,$F5,$94,$F5,$F5,$C8,$F0
       .byte $0C,$10,$06,$E6,$E3,$E6,$E3,$D0,$04,$C6,$E3,$C6,$E3,$B5,$C8,$60
       .byte $A9,$01,$85,$B5,$A5,$B2,$29,$03,$85,$BA,$A5,$B2,$4A,$4A,$AA,$BD
       .byte $F0,$F7,$85,$B3,$20,$AB,$F1,$A9,$E4,$85,$DE,$A2,$01,$B4,$CC,$B5
       .byte $CE,$95,$CC,$94,$CE,$CA,$10,$F5,$A5,$B5,$49,$01,$85,$B5,$A9,$08
       .byte $85,$CA,$A2,$06,$86,$C7,$CA,$86,$F7,$A0,$00,$84,$CB,$60,$86,$BD
       .byte $A6,$CB,$36,$A4,$C6,$CA,$D0,$07,$E8,$86,$CB,$A2,$08,$86,$CA,$A6
       .byte $BD,$60,$37,$BF,$37,$7E,$80,$BF,$A0,$40,$C0,$60,$07,$07,$04,$04
       .byte $01,$01,$0A,$0C,$10,$12,$16,$1C,$1E,$18,$18,$18,$18,$12,$12,$12
       .byte $12,$0C,$0C,$06,$06,$06,$06,$00,$00,$00,$06,$00,$46,$B6,$86,$C6
       .byte $16,$26,$36,$46,$06,$00,$0C,$0A,$08,$06,$04,$08,$06,$04,$3F,$3F
       .byte $CF,$F3,$FC,$FC,$F3,$CF,$3F,$CF,$3F,$3F,$CF,$F3,$FC,$FC,$F3,$CF
       .byte $23,$44,$82,$04,$44,$51,$F0,$E0,$C0,$08,$06,$04,$81,$01,$01,$81
       .byte $81,$02,$80,$02,$02,$01,$02,$01,$02,$02,$02,$02,$02,$63,$02,$63
       .byte $00,$10,$08,$40,$80,$90,$88,$C0,$20,$30,$28,$60,$37,$F2,$C6,$F1
