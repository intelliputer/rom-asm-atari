; Disassembly of roms/Pompeii.bin
; Disassembled Tue Oct  6 15:22:41 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Pompeii.bin
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
RESM0   =  $12
RESM1   =  $13
RESBL   =  $14
AUDV0   =  $19
GRP0    =  $1B
GRP1    =  $1C
ENAM0   =  $1D
ENAM1   =  $1E
ENABL   =  $1F
HMP0    =  $20
HMP1    =  $21
HMM0    =  $22
HMM1    =  $23
HMBL    =  $24
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
INPT4   =  $3C
INPT5   =  $3D
SWCHA   =  $0280
INTIM   =  $0284
TIM8T   =  $0295
TIM64T  =  $0296

       ORG $3000

START:
       CLD            
       SEI            
       LDX    #$FF    
       TXS            
       INX            
       TXA            
L3007: STA    VSYNC,X 
       INX            
       BNE    L3007   
       LDX    #$7D    
       JSR    L36E1   
L3011: LDA    #$2A    
       STA    WSYNC   
       STA    VBLANK  
       STA    VSYNC   
       STA    TIM8T   
L301C: LDA    INTIM   
       BNE    L301C   
       STA    WSYNC   
       STA    VSYNC   
       LDA    #$2D    
       STA    TIM64T  
       LDA    #$B8    
       STA    HMP0    
       AND    #$0F    
       TAY            
       STA    WSYNC   
L3033: DEY            
       BNE    L3033   
       STA    RESP0   
       LDA    #$29    
       STA    HMP1    
       AND    #$0F    
       TAY            
       STA    WSYNC   
L3041: DEY            
       BNE    L3041   
       STA    RESP1   
       LDA    $D9     
       STA    HMM0    
       AND    #$0F    
       TAY            
       STA    WSYNC   
L304F: DEY            
       BNE    L304F   
       STA    RESM0   
       LDA    AUDV0   
       STA    HMBL    
       AND    #$0F    
       TAY            
       STA    WSYNC   
L305D: DEY            
       BNE    L305D   
       STA    RESBL   
       STA    WSYNC   
       STA    HMOVE   
       JSR    L34D3   
       JSR    L3507   
       JSR    L3579   
       JSR    L358C   
L3072: LDA    INTIM   
       BNE    L3072   
       STA    WSYNC   
       STA    VBLANK  
       LDA    #$24    
       STA    COLUPF  
       STA    COLUP0  
       LDA    #$80    
       STA    COLUBK  
       LDA    #$0F    
       STA    COLUP1  
       LDA    #$01    
       STA    NUSIZ0  
       STA    CTRLPF  
       LDX    #$08    
       LDY    #$17    
L3093: STA    WSYNC   
       NOP            
       NOP            
       STA    $D5     
       LDA    ($98),Y 
       STA    ENAM1   
       LDA    L3808,Y 
       STA    GRP0    
       LDA    ($AC),Y 
       STA    GRP1    
       LDA    ($A8),Y 
       STA    ENAM0   
       LDA    ($AA),Y 
       STA    ENABL   
       STX    REFP0   
       LDA    #$00    
       STA    REFP0   
       DEY            
       BNE    L3093   
       LDA    #$30    
       STA    COLUP1  
       LDY    #$06    
L30BD: STA    WSYNC   
       NOP            
       NOP            
       STA    $D5     
       LDA    ($9A),Y 
       STA    ENAM1   
       LDA    L3820,Y 
       STA    GRP0    
       LDA    L37F4,Y 
       STA    PF2     
       LDA    L383E,Y 
       STA    GRP1    
       DEY            
       BNE    L30BD   
       STA    HMCLR   
       LDA    #$E0    
       STA    PF2     
       LDY    #$08    
       LDA    #$30    
       STA    HMP0    
       STA    WSYNC   
L30E7: DEY            
       BNE    L30E7   
       STA    RESP0   
       STY    GRP0    
       LDY    #$06    
       STY    GRP1    
       LDY    #$50    
       STY    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$02    
       STA    NUSIZ0  
       LDY    #$06    
L3100: STA    WSYNC   
       NOP            
       NOP            
       STA    $D5     
       LDA    L382B,Y 
       STA    GRP0    
       LDA    L3845,Y 
       STA    GRP1    
       STA    $D5     
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       LDA    ($9C),Y 
       STA    ENAM1   
       STX    REFP0   
       JSR    L34D2   
       LDA    #$00    
       STA    REFP0   
       DEY            
       BNE    L3100   
       STA    WSYNC   
       STY    GRP0    
       STY    CTRLPF  
       JSR    L34D2   
       LDA    #$F0    
       STA    PF2     
       NOP            
       STA    PF0     
       JSR    L34D2   
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       STY    PF2     
       STY    PF0     
       LDY    #$0B    
L3145: STA    WSYNC   
       LDA    L37E8,Y 
       STA    COLUBK  
       LDA    ($9E),Y 
       STA    ENAM1   
       LDA    L3832,Y 
       STA    GRP0    
       LDA    L37FB,Y 
       STA    PF2     
       LDA    #$FF    
       STA    PF0     
       LDA    L386D,Y 
       STA    PF1     
       LDA    L3879,Y 
       STA    PF2     
       NOP            
       LDA    L3855,Y 
       STA    PF0     
       LDA    L3861,Y 
       STA    PF1     
       DEY            
       BNE    L3145   
       STY    GRP0    
       LDY    #$08    
L317A: STA    WSYNC   
       NOP            
       NOP            
       STA    $D5     
       LDA    ($A0),Y 
       STA    ENAM1   
       LDA    L384C,Y 
       STA    GRP1    
       LDA    L3897,Y 
       STA    PF2     
       LDA    L38A0,Y 
       STA    PF0     
       NOP            
       LDA    L38A9,Y 
       STA    PF1     
       LDA    L38B2,Y 
       STA    PF2     
       LDA    L3885,Y 
       STA    PF0     
       LDA    L388E,Y 
       STA    PF1     
       DEY            
       BNE    L317A   
       LDA    #$28    
       STA    COLUBK  
       LDA    #$00    
       STA    CTRLPF  
       STA    GRP0    
       STA    GRP1    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       LDA    #$2F    
       STA    COLUP1  
       LDA    #$04    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDX    #$07    
       STA    WSYNC   
L31CB: DEX            
       BNE    L31CB   
       STA    RESP0   
       STA    RESBL   
       LDX    #$07    
       STA    WSYNC   
L31D6: DEX            
       BNE    L31D6   
       STA    RESP1   
       NOP            
       NOP            
       JSR    L34D2   
       STA    RESM1   
       LDY    #$07    
       LDA    ($A2),Y 
       STA    HMCLR   
L31E8: STA    WSYNC   
       STA    ENAM0   
       LDA    ($B0),Y 
       STA    GRP0    
       LDA    ($B2),Y 
       STA    GRP1    
       LDA    ($B4),Y 
       STA    COLUP0  
       NOP            
       NOP            
       LDA    ($B6),Y 
       STA    GRP0    
       LDA    ($B8),Y 
       STA    GRP1    
       LDA    $D5     
       STA    COLUP0  
       LDA    ($BA),Y 
       STA    $D5     
       LDA    ($A2),Y 
       DEY            
       BPL    L31E8   
       STA    WSYNC   
       INY            
       STY    GRP0    
       STY    GRP1    
       LDA    $C5     
       STA    HMP0    
       STA    HMP1    
       AND    #$0F    
       TAY            
       TAX            
       STA    WSYNC   
L3222: DEY            
       BNE    L3222   
       STA    RESP0   
       STA    WSYNC   
L3229: DEX            
       BNE    L3229   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       STY    NUSIZ0  
       STY    NUSIZ1  
       LDX    $D8     
       STX    REFP0   
       STX    REFP1   
       LDY    #$00    
       STY    COLUP0  
       LDX    #$09    
       STX    $D5     
       LDX    #$02    
       LDY    #$13    
       STA    HMCLR   
       STA    CXCLR   
L324C: STA    WSYNC   
       STA    HMOVE   
       LDA    ($8C),Y 
       STA    GRP0    
       LDA    ($8E),Y 
       STA    GRP1    
       LDA    $D5     
       LSR            
       BCS    L325F   
       LDX    #$00    
L325F: STX    ENABL   
       STX    ENAM1   
       LDA    ($A4),Y 
       STA    ENAM0   
       LDA    ($90),Y 
       NOP            
       DEY            
       STA    COLUP1  
       STA    WSYNC   
       STA    HMOVE   
       LDA    ($8C),Y 
       STA    GRP0    
       LDA    ($8E),Y 
       STA    GRP1    
       LDA    ($A4),Y 
       STA    ENAM0   
       LDX    $D5     
       LDA    L3C6D,X 
       STA    HMBL    
       LDA    L3C77,X 
       STA    HMM1    
       DEX            
       STX    $D5     
       LDX    #$02    
       LDA    ($90),Y 
       DEY            
       STA    COLUP1  
       BPL    L324C   
       STA    WSYNC   
       STA    HMOVE   
       LDY    #$2E    
       LDA    ($92),Y 
       STA    GRP0    
       LDA    ($94),Y 
       STA    GRP1    
       LDA    ($96),Y 
       STA    COLUP1  
       DEY            
       STY    $D5     
       LDX    #$0F    
       STX    $D6     
       STA    CXCLR   
L32B0: STA    WSYNC   
       LDA    ($92),Y 
       STA    GRP0    
       LDA    ($94),Y 
       STA    GRP1    
       LDY    $D6     
       LDA    ($AE),Y 
       STA    COLUBK  
       NOP            
       NOP            
       NOP            
       LDA    ($82),Y 
       STA    PF0     
       STA    $D3     
       LDA    ($80),Y 
       TAX            
       NOP            
       STA    PF0     
       LDY    $D5     
       LDA    ($96),Y 
       DEY            
       STY    $D5     
       STA    COLUP1  
       STA    WSYNC   
       LDA    ($92),Y 
       STA    GRP0    
       LDA    ($94),Y 
       STA    GRP1    
       LDA    ($A6),Y 
       STA    ENAM0   
       LDY    $D6     
       LDA    $D3     
       STA    PF0     
       LDA    ($84),Y 
       EOR    ($86),Y 
       NOP            
       STA    PF1     
       NOP            
       STX    PF0     
       LDY    $D5     
       LDA    ($96),Y 
       DEY            
       STY    $D5     
       STA    COLUP1  
       STA    WSYNC   
       LDA    ($92),Y 
       STA    GRP0    
       LDA    ($94),Y 
       STA    GRP1    
       LDY    $D6     
       NOP            
       LDA    $D3     
       STA    PF0     
       LDA    ($88),Y 
       EOR    ($8A),Y 
       STA    PF2     
       DEY            
       STY    $D6     
       NOP            
       NOP            
       LDY    $D5     
       STX    PF0     
       LDA    ($96),Y 
       DEY            
       STY    $D5     
       STA    COLUP1  
       BNE    L32B0   
       LDX    $D3     
       STA    WSYNC   
       LDA    $F0     
       BNE    L335A   
       LDA    ($92),Y 
       STA    GRP0    
       LDA    ($94),Y 
       STA    GRP1    
       LDY    #$0F    
       STY    $D6     
       LDY    #$2D    
       STY    $D5     
       STX    PF0     
       LDA    $E0     
       STA    $92     
       LDA    $E1     
       STA    $94     
       LDA    $ED     
       STA    $AE     
       LDA    $EE     
       STA    $96     
       LDX    $EF     
       INY            
       INY            
       LDA    ($96),Y 
       STA    COLUP1  
L335A: STA    WSYNC   
       LDA    $F0     
       BNE    L338B   
       DEY            
       LDA    ($92),Y 
       STA    GRP0    
       LDA    ($94),Y 
       STA    GRP1    
       STX    $A6     
       LDA    $E3     
       STA    $82     
       LDA    $E4     
       STA    $84     
       LDA    $E5     
       STA    $86     
       LDA    $E6     
       STA    $88     
       LDA    $E7     
       STA    $8A     
       LDA    $E2     
       STA    $80     
       LDA    #$01    
       STA    $F0     
       DEY            
       JMP    L32B0   
L338B: STA    WSYNC   
       LDA    #$00    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       STA    GRP0    
       STA    GRP1    
       STA    ENABL   
       STA    ENAM1   
       STA    ENAM0   
       STA    REFP0   
       STA    REFP1   
       STA    $F0     
       LDX    #$10    
       STX    HMP0    
       LDX    #$20    
       STX    HMP1    
       LDX    #$0A    
       STA    WSYNC   
L33B1: DEX            
       BNE    L33B1   
       STA    RESP0   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$2F    
       STA    COLUP0  
       STA    COLUP1  
       STA    COLUPF  
       LDX    #$01    
       STX    NUSIZ0  
       STX    NUSIZ1  
       DEX            
       LDA    $D9     
       CMP    #$03    
       BNE    L33D3   
       LDX    #$DB    
L33D3: CMP    #$02    
       BNE    L33D9   
       LDX    #$D8    
L33D9: CMP    #$01    
       BNE    L33DF   
       LDX    #$C0    
L33DF: STX    $D5     
       LDY    #$07    
L33E3: STA    WSYNC   
       CPY    #$02    
       BCS    L33F0   
       LDX    $D5     
       STX    PF1     
       JMP    L33F4   
L33F0: NOP            
       NOP            
       NOP            
       NOP            
L33F4: LDA    ($C0),Y 
       STA    GRP0    
       LDA    ($C2),Y 
       STA    GRP1    
       LDA    ($BC),Y 
       TAX            
       LDA    #$00    
       STA    PF1     
       LDA    ($BE),Y 
       NOP            
       NOP            
       NOP            
       NOP            
       STX    GRP0    
       STA    GRP1    
       DEY            
       BPL    L33E3   
       STA    WSYNC   
       INY            
       STY    NUSIZ0  
       STY    NUSIZ1  
       STA    WSYNC   
       LDA    #$1F    
       STA    TIM64T  
       LDA    #$00    
       STA    $D5     
       LDA    #$01    
       TAX            
       LDY    #$04    
L3427: LDA    $DA,X   
       PHA            
       AND    #$F0    
       STA    $D6     
       BNE    L3438   
       LDA    $D5     
       BNE    L3438   
       LDA    #$80    
       BNE    L343D   
L3438: DEC    $D5     
       LDA    $D6     
       LSR            
L343D: STA.wy $00BC,Y 
       PLA            
       AND    #$0F    
       STA    $D6     
       BNE    L344F   
       LDA    $D5     
       BNE    L344F   
       LDA    #$80    
       BNE    L3456   
L344F: DEC    $D5     
       LDA    $D6     
       ASL            
       ASL            
       ASL            
L3456: STA.wy $00BE,Y 
       TYA            
       BEQ    L3461   
       LDY    #$00    
       DEX            
       BPL    L3427   
L3461: JSR    L3486   
       LDA    $E0     
       STA    $DA     
       LDA    INPT4   
       ASL            
       BCS    L3474   
       LDA    $94     
       STA    $DA     
       JMP    L347C   
L3474: LDA    INPT5   
       ASL            
       BCS    L347C   
       JSR    L34B4   
L347C: LDA    INTIM   
       BNE    L347C   
       INC    $CA     
       JMP    L3011   
L3486: LDA    $C6     
       STA    $92     
       STA    $96     
       CLC            
       ADC    #$47    
       STA    $94     
       LDY    #$08    
       LDX    #$04    
L3495: LDA    $CD,X   
       CLC            
       ADC    L3574,X 
       STA.wy $0082,Y 
       LDA    $E8,X   
       CLC            
       ADC    L3574,X 
       STA    $E3,X   
       DEY            
       DEY            
       DEX            
       BPL    L3495   
       LDA    $F1     
       STA    $AE     
       LDA    $F2     
       STA    $80     
       RTS            

L34B4: LDA    $CA     
       AND    #$07    
       BNE    L34CD   
       LDA    $ED     
       CMP    #$BD    
       BEQ    L34C5   
       DEC    $ED     
       JMP    L34CD   
L34C5: LDA    $F1     
       CMP    #$BD    
       BEQ    L34CD   
       DEC    $F1     
L34CD: RTS            

L34CE: .byte $48,$68,$48,$68
L34D2: RTS            

L34D3: LDA    $C7     
       STA    $D5     
       LDA    $C9     
       STA    $D6     
       LDA    #$00    
       LDX    #$08    
L34DF: LSR    $D5     
       BCC    L34E6   
       CLC            
       ADC    $D6     
L34E6: ROR            
       ROR    $C9     
       DEX            
       BNE    L34DF   
       CLC            
       LDA    $C9     
       ADC    $C8     
       STA    $C9     
       INC    $CC     
       LDX    $CC     
       BNE    L3506   
       TAX            
       ASL            
       SEC            
       ROL            
       STA    $C7     
       TXA            
       SEC            
       ROL            
       STA    $C8     
       BNE    L34D3   
L3506: RTS            

L3507: LDA    #$FF    
       STA    $D5     
       STA    $D6     
       LDX    $C4     
L350F: CLC            
       LSR    $D5     
       CLC            
       ASL    $D6     
       DEX            
       BPL    L350F   
       LDA    $CA     
       AND    $D5     
       BNE    L3573   
       LDA    $CA     
       AND    $D6     
       BNE    L3528   
       LDA    $C9     
       STA    $CB     
L3528: LDY    #$08    
       LDX    #$04    
       LDA    $CB     
L352E: LSR            
       PHA            
       LDA    $CD,X   
       BCS    L3548   
       BEQ    L356D   
       CMP    #$0F    
       BEQ    L353F   
L353A: DEC    $CD,X   
       JMP    L355C   
L353F: LDA    $E8,X   
       BEQ    L353A   
       DEC    $E8,X   
       JMP    L355C   
L3548: CMP    #$0F    
       BEQ    L3551   
       INC    $CD,X   
       JMP    L355C   
L3551: LDA    $E8,X   
       CMP    #$0F    
       BEQ    L356D   
       INC    $E8,X   
       JMP    L355C   
L355C: LDA    $CD,X   
       CLC            
       ADC    L3574,X 
       STA.wy $0082,Y 
       LDA    $E8,X   
       CLC            
       ADC    L3574,X 
       STA    $E3,X   
L356D: PLA            
       DEY            
       DEY            
       DEX            
       BPL    L352E   
L3573: RTS            

L3574: .byte $1F,$3E,$5D,$00,$7C
L3579: LDA    $CA     
       AND    #$07    
       BNE    L358B   
       DEC    $AC     
       LDA    $AC     
       CMP    #$00    
       BNE    L358B   
       LDA    #$1A    
       STA    $AC     
L358B: RTS            

L358C: JMP    L35F2   
L358F: .byte $C9,$00,$D0,$06,$A5,$93,$C9,$37,$F0,$59,$A5,$92,$C9,$47,$D0,$06
       .byte $A5,$93,$C9,$37,$F0,$4D,$A5,$33,$0A,$B0,$28,$A5,$32,$0A,$90,$03
       .byte $4C,$F2,$35,$E6,$92,$A5,$92,$C9,$47,$D0,$06,$A5,$93,$C9,$37,$F0
       .byte $0D,$E6,$94,$E6,$96,$E6,$8C,$E6,$8E,$E6,$90,$4C,$F2,$35,$C6,$92
       .byte $4C,$F2,$35,$C6,$92,$A5,$92,$C9,$00,$D0,$06,$A5,$93,$C9,$37,$F0
       .byte $0D,$C6,$94,$C6,$96,$C6,$8C,$C6,$8E,$C6,$90,$4C,$F2,$35,$E6,$92
       .byte $4C,$F2,$35
L35F2: LDA    $CA     
       LDA    SWCHA   
       STA    $D4     
       LDY    #$00    
       ASL            
       BCS    L3604   
       LDY    #$F0    
       LDX    #$00    
       STX    $D8     
L3604: ASL            
       BCS    L360D   
       LDX    #$08    
       STX    $D8     
       LDY    #$10    
L360D: ASL            
       BCS    L364B   
       PHA            
       LDA    $8C     
       CMP    #$4A    
       BEQ    L361D   
       INC    $8C     
       INC    $8E     
       INC    $90     
L361D: LDA    $92     
       CMP    #$47    
       BEQ    L363E   
       CMP    #$2F    
       BCS    L3634   
       INC    $92     
       INC    $94     
       INC    $96     
       LDA    $92     
       STA    $C6     
       JMP    L364A   
L3634: INC    $92     
       INC    $94     
       INC    $96     
       LDA    $92     
       STA    $C6     
L363E: LDA    $E0     
       CMP    #$47    
       BEQ    L364A   
       INC    $E0     
       INC    $E1     
       INC    $EE     
L364A: PLA            
L364B: ASL            
       BCS    L3689   
       LDA    $E0     
       CMP    #$00    
       BEQ    L3669   
       CMP    #$18    
       BEQ    L3663   
       BCC    L3663   
       DEC    $E0     
       DEC    $E1     
       DEC    $EE     
       JMP    L3677   
L3663: DEC    $E0     
       DEC    $E1     
       DEC    $EE     
L3669: LDA    $92     
       BEQ    L3677   
       DEC    $92     
       DEC    $94     
       DEC    $96     
       LDA    $92     
       STA    $C6     
L3677: LDA    $92     
       CMP    #$1B    
       BCS    L3689   
       LDA    $8C     
       CMP    #$2F    
       BEQ    L3689   
       DEC    $8C     
       DEC    $8E     
       DEC    $90     
L3689: LDA    $C5     
       JSR    L3691   
       STA    $C5     
       RTS            

L3691: STY    $D7     
       STA    $D6     
       CLC            
       ADC    $D7     
       LDY    $D7     
       BPL    L36A8   
       LDY    $D6     
       BPL    L36B7   
       TAY            
       BMI    L36B7   
       CLC            
       ADC    #$F1    
       BNE    L36B7   
L36A8: LDY    $D6     
       BMI    L36B7   
       TAY            
       AND    #$F0    
       CMP    #$70    
       TYA            
       BCC    L36B7   
       CLC            
       ADC    #$0F    
L36B7: TAY            
       JSR    L36CB   
       CMP    #$43    
       BCC    L36C5   
       CMP    #$E5    
       BCS    L36C8   
       TYA            
       RTS            

L36C5: LDA    #$34    
       RTS            

L36C8: LDA    #$2E    
       RTS            

L36CB: STA    $D6     
       EOR    #$F0    
       CLC            
       ADC    #$70    
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $D7     
       LDA    $D6     
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    $D7     
       RTS            

L36E1: LDA    L3D88,X 
       STA    $80,X   
       DEX            
       BPL    L36E1   
       LDA    $92     
       STA    $C6     
       LDA    $93     
       STA    $C7     
       RTS            

L36F2: .byte $A9,$3C,$85,$A7,$A5,$D6,$49,$02,$85,$D6,$60,$A5,$AE,$29,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$43,$43,$43
       .byte $40,$40,$00,$00,$00,$00,$3C,$62,$62,$30,$30,$18,$18,$00,$00,$00
       .byte $00,$20,$24,$30,$3C,$1C,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$22,$22,$32,$36,$1E,$1C,$3C,$3C,$3C,$3C
       .byte $3C,$3C,$3C,$3C,$18,$18,$3C,$3C,$3E,$3E,$3C,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$30,$30,$30,$30
       .byte $30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$28,$28,$28,$28,$28
       .byte $28,$28,$28,$28,$28,$28,$28,$28,$28,$28,$28,$28,$28,$28,$28,$28
       .byte $28,$28,$28,$28,$28,$28
L37E8: .byte $80,$28,$28,$80,$80,$80,$80,$80,$80,$80,$80,$80
L37F4: .byte $C0,$C0,$C0,$C0,$C0,$C0,$C0
L37FB: .byte $FF,$FF,$FF,$FD,$F8,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0
L3808: .byte $0F,$07,$02,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00
L3820: .byte $7E,$7E,$3E,$3C,$18,$18,$00,$00,$00,$00,$00
L382B: .byte $07,$07,$07,$03,$03,$01,$01
L3832: .byte $FF,$FF,$FF,$FF,$7E,$7E,$3C,$3C,$18,$18,$00,$00
L383E: .byte $F0,$F0,$F0,$78,$78,$3C,$7E
L3845: .byte $08,$08,$0C,$0E,$0E,$07,$0F
L384C: .byte $CB,$CB,$4A,$4A,$56,$56,$34,$3C,$08
L3855: .byte $F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$E0,$C0,$80,$00
L3861: .byte $FF,$FF,$FF,$FF,$FF,$FF,$FE,$F8,$F0,$E0,$C0,$80
L386D: .byte $F0,$F3,$F7,$3F,$1F,$0F,$07,$03,$01,$00,$00,$00
L3879: .byte $FE,$FE,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FE,$DC,$88
L3885: .byte $00,$00,$00,$80,$C0,$E0,$FF,$FF,$FF
L388E: .byte $00,$40,$E0,$E0,$F1,$FB,$FF,$FF,$FF
L3897: .byte $00,$E0,$F4,$FC,$FE,$FF,$FF,$FF,$FF
L38A0: .byte $FF,$10,$30,$30,$70,$70,$FF,$FF,$FF
L38A9: .byte $00,$00,$00,$00,$00,$80,$80,$C0,$E0
L38B2: .byte $00,$00,$80,$C0,$E0,$F0,$F8,$FC,$FE,$00,$00,$A9,$57,$C5,$D4,$D0
       .byte $08,$88,$A5,$DA,$29,$08,$D0,$01,$88,$A9,$40,$C5,$A6,$D0,$02,$A0
       .byte $01,$A5,$A6,$D0,$01,$A8,$C0,$04,$D0,$03,$4C,$91,$39,$20,$34,$37
       .byte $A5,$DA,$59,$A9,$39,$85,$DA,$29,$88,$D0,$02,$E6,$DA,$C9,$80,$D0
       .byte $02,$C6,$DA,$C9,$08,$D0,$07,$A5,$DA,$18,$69,$10,$85,$DA,$38,$18
       .byte $1C,$3E,$0C,$0C,$1E,$3E,$7C,$38,$1C,$08,$1C,$38,$3C,$3F,$3E,$7C
       .byte $FE,$FF,$FF,$FE,$7C,$3E,$1E,$1C,$38,$18,$1C,$3E,$0C,$0C,$1E,$3E
       .byte $7C,$38,$1C,$08,$1C,$38,$3C,$3F,$3E,$7C,$FE,$FF,$FF,$FE,$7C,$3E
       .byte $1E,$1C,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$3B,$3B,$3B,$3B,$3B,$3B,$3B,$3B,$3B,$3B,$3B,$3B,$3B,$3B
       .byte $3B,$3B,$3B,$3B,$3B,$3B,$3B,$3B,$3B,$3B,$3B,$00,$24,$46,$9C,$53
       .byte $43,$52,$4C,$50,$31,$81,$53,$54,$41,$81,$53,$54,$52,$54,$4C,$49
       .byte $4E,$45,$83,$3C,$3C,$3C,$3C,$3C,$3C,$3C,$3C,$3C,$3C,$3C,$3C,$00
       .byte $08,$47,$9C,$81,$4E,$4F,$50,$00,$08,$48,$9C,$81,$4E,$4F,$50,$00
       .byte $0D,$49,$9C,$81,$53,$54,$41,$81,$57,$4F,$52,$4B,$00,$14,$4A,$9C
       .byte $81,$4C,$44,$41,$81,$28,$44,$4E,$52,$4F,$43,$4B,$31,$29,$2C,$59
       .byte $00,$10,$4B,$9C,$81,$53,$54,$41,$81,$42,$55,$4C,$4C,$45,$54,$52
       .byte $00,$0F,$4C,$9C,$81,$4C,$44,$41,$81,$4D,$4E,$54,$31,$2C,$59,$00
       .byte $0F,$4D,$9C,$81,$53,$54,$41,$81,$48,$49,$52,$45,$53,$4C,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$36,$36,$00,$00,$00,$00,$00,$00,$00,$00,$24,$18,$18,$18,$18
       .byte $18,$18,$00,$00,$00,$00,$20,$24,$30,$3C,$1C,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$24,$24,$24,$34,$34,$1C,$1C,$3C,$3C,$3C,$3C,$3C,$3C,$3C
       .byte $3C,$3C,$18,$18,$3C,$3E,$3E,$3E,$3C,$00,$00,$00,$54,$41,$81,$43
       .byte $4F,$4C,$4F,$52,$52,$00,$0B,$5B,$9C,$81,$4C,$44,$59,$81,$23,$36
       .byte $00,$17,$5C,$9C,$3B,$0C,$81,$22,$56,$4F,$4C,$43,$41,$4E,$4F,$81
       .byte $4C,$4F,$4F,$50,$81,$32,$22,$00,$21,$5D,$9C,$3B,$3B,$3B,$3B,$3B
       .byte $3B,$3B,$3B,$3B,$3B,$3B,$3B,$3B,$3B,$3B,$3B,$3B,$3B,$3B,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$43,$43,$43,$40,$40,$00,$00,$00,$00,$3C,$62,$62,$30,$30,$18
       .byte $18,$00,$00,$00,$00,$20,$24,$30,$3C,$1C,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$22,$22,$32,$36,$1E,$1C,$3C,$3C,$3C,$3C,$3C,$3C,$3C
       .byte $3C,$18,$18,$3C,$3C,$3E,$3E,$3C,$00,$00,$00,$00,$0F,$69,$9C,$81
       .byte $53,$54,$41,$81,$48,$49,$52,$45,$53,$4C,$00,$10,$6A,$9C,$81,$4C
       .byte $44,$41,$81,$56,$4F,$4C,$43,$32,$2C,$59,$00,$10,$6B,$9C,$81,$53
       .byte $54,$41,$81,$4C,$4F,$57,$52,$45,$53,$33,$00,$10,$6C,$9C,$81,$4C
       .byte $44,$41,$81,$4C,$41,$56,$41,$32,$2C,$59,$00,$0F,$6D,$9C,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$80
       .byte $80,$80,$80,$80,$80,$80,$80,$80,$CC,$CC,$CC,$CC,$CC,$CC,$4F,$4F
       .byte $4F,$4F,$4F,$4F,$4F,$4F,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
L3C6D: .byte $00,$00,$00,$70,$00,$60,$00,$70,$00,$A0
L3C77: .byte $00,$00,$00,$C0,$00,$80,$00,$A0,$00,$50,$4C,$43,$41,$4E,$4F,$81
       .byte $4C,$4F,$4F,$50,$81,$33,$00,$05,$74,$9C,$3B,$00,$21,$75,$9C,$3B
       .byte $3B,$3B,$3B,$3B,$3B,$3B,$3B,$3B,$3B,$3B,$3B,$3B,$3B,$3B,$3B,$3B
       .byte $3B,$3B,$3B,$3B,$3B,$3B,$3B,$3B,$3B,$3B,$3B,$3B,$00,$11,$76,$9C
       .byte $81,$53,$54,$41,$81,$53,$48,$49,$46,$54,$43,$4C,$52,$00,$0D,$77
       .byte $9C,$81,$4C,$44,$41,$81,$23,$24,$45,$30,$00,$10,$78,$9C,$81,$53
       .byte $54,$41,$81,$4C,$4F,$57,$52,$45,$53,$33,$00,$0B,$79,$9C,$81,$4C
       .byte $44,$59,$81,$23,$38,$00,$0D,$7A,$9C,$81,$4C,$44,$41,$81,$23,$24
       .byte $33,$30,$00,$11,$7B,$9C,$81,$53,$54,$00,$3C,$66,$66,$66,$66,$66
       .byte $3C,$00,$3C,$18,$18,$18,$18,$38,$18,$00,$7E,$60,$30,$18,$0C,$66
       .byte $3C,$00,$3C,$66,$06,$1C,$06,$66,$3C,$00,$0C,$7E,$6C,$6C,$3C,$1C
       .byte $0C,$00,$3C,$66,$06,$06,$7C,$60,$7C,$00,$3C,$66,$66,$7C,$60,$66
       .byte $3C,$00,$30,$30,$18,$0C,$06,$06,$7E,$00,$3C,$66,$66,$3C,$66,$66
       .byte $3C,$00,$3C,$66,$06,$3E,$66,$66,$3C,$00,$66,$66,$7E,$66,$66,$66
       .byte $3C,$00,$7C,$66,$66,$7C,$66,$66,$7C,$00,$3C,$7E,$66,$60,$66,$7E
       .byte $3C,$00,$78,$7C,$6E,$66,$6E,$7C,$78,$00,$7E,$60,$60,$78,$60,$60
       .byte $7E,$00,$60,$60,$60,$78,$60,$60,$7E,$00,$00,$00,$00,$00,$00,$00
       .byte $00
L3D88: .byte $0F,$3E,$2E,$3E,$4D,$3E,$6C,$3E,$0F,$3E,$8B,$3E,$2F,$37,$76,$37
       .byte $2F,$3C,$00,$37,$47,$37,$00,$3C,$34,$39,$34,$39,$34,$39,$34,$39
       .byte $34,$39,$34,$39,$34,$39,$34,$39,$34,$39,$34,$39,$1A,$39,$CC,$37
       .byte $B3,$3E,$BB,$3E,$C3,$3E,$9B,$3E,$A3,$3E,$AB,$3E,$08,$3D,$20,$3D
       .byte $18,$3D,$10,$3D,$01,$D9,$00,$05,$03,$00,$00,$00,$00,$0F,$0F,$0F
       .byte $0F,$0F,$00,$00,$00,$00,$00,$00,$00,$03,$00,$00,$00,$00,$00,$00
       .byte $00,$47,$00,$1F,$3E,$5D,$00,$7C,$00,$00,$00,$00,$00,$CC,$00,$34
       .byte $00,$CC,$0F,$4F,$4C,$43,$41,$4E,$00,$70,$70,$70,$70,$70,$70,$70
       .byte $70,$70,$70,$70,$70,$70,$70,$70,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0
       .byte $F0,$F0,$F0,$F0,$F0,$F0,$F0,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$60,$60,$60,$60,$60,$60,$60,$60,$60
       .byte $60,$60,$60,$60,$60,$60,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$0E,$0E,$0E,$0E,$0E,$0E,$0E,$0E,$0E,$0E
       .byte $0E,$0E,$0E,$0E,$0E,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03
       .byte $03,$03,$03,$03,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$66,$3C,$18,$24,$42,$18,$3C,$18,$7E,$3C,$00,$3C,$66
       .byte $42,$00,$00,$30,$30,$80,$28,$28,$80,$80,$80,$AA,$54,$00,$00,$00
       .byte $00,$44,$10,$FE,$7C,$6C,$38,$10,$38,$54,$10,$DA,$DA,$00,$00,$00
       .byte $30,$30,$00,$00,$00,$1C,$08,$1C,$00,$00,$08,$14,$3E,$36,$22,$22
       .byte $3E,$1C,$00,$00,$00,$DA,$DA,$DA,$00,$00,$49,$52,$45,$53,$52,$00
       .byte $0D,$98,$9C,$81,$53,$54,$41,$81,$57,$4F,$52,$4B,$00,$08,$99,$9C
       .byte $81,$4E,$4F,$50,$00,$08,$9A,$9C,$81,$4E,$4F,$50,$00,$08,$9B,$9C
       .byte $81,$4E,$4F,$50,$00,$08,$9C,$9C,$81,$4E,$4F,$50,$00,$08,$9D,$9C
       .byte $81,$4E,$4F,$50,$00,$14,$9E,$9C,$81,$4C,$44,$41,$81,$28,$44,$4E
       .byte $52,$4F,$43,$4B,$33,$29,$2C,$59,$00,$10,$9F,$9C,$81,$53,$54,$41
       .byte $81,$42,$55,$4C,$4C,$45,$54,$52,$00,$10,$A0,$9C,$81,$53,$54,$58
       .byte $81,$48,$49,$43,$4E,$54,$4C,$4C,$00,$10,$A1,$9C,$81,$4A,$53,$52
       .byte $81,$44,$45,$4C,$41,$59,$31,$32,$00,$0B,$A2,$9C,$81,$4C,$44,$41
       .byte $81,$23,$30,$00,$10,$A3,$9C,$81,$53,$54,$41,$81,$48,$49,$43,$4E
       .byte $54,$4C,$4C,$00,$08,$A4,$9C,$81,$44,$45,$59,$00,$0F,$A5,$9C,$81
       .byte $42,$4E,$45,$81,$53,$43,$52,$4C,$50,$33,$00,$23,$19,$50,$C3,$3B
       .byte $0C,$81,$22,$42,$41,$43,$4B,$47,$52,$4F,$55,$4E,$44,$81,$43,$4F
       .byte $4C,$4F,$52,$22,$00,$21,$51,$C3,$3B,$3B,$3B,$3B,$3B,$3B,$3B,$3B
       .byte $3B,$3B,$3B,$3B,$3B,$3B,$3B,$3B,$3B,$3B,$3B,$3B,$3B,$3B,$3B,$3B
       .byte $3B,$3B,$3B,$3B,$3B,$00,$05,$52,$C3,$3B,$00,$1C,$53,$C3,$3B,$83
       .byte $42,$41,$43,$4B,$47,$52,$4F,$55,$4E,$44,$81,$43,$4F,$4C,$4F,$52
       .byte $81,$54,$41,$42,$4C,$45,$00,$05,$54,$C3,$3B,$00,$21,$55,$C3,$3B
       .byte $3B,$3B,$3B,$3B,$00,$30,$3B,$3B
