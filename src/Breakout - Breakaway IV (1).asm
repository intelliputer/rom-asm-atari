; Disassembly of roms/Breakout - Breakaway IV (1).bin
; Disassembled Tue Oct  6 15:21:07 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Breakout - Breakaway IV (1).bin
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
