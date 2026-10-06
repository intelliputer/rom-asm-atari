; Disassembly of roms/Treasure Below (Video Gems, Thomas Jentzsch) (NTSC).bin
; Disassembled Tue Oct  6 15:24:48 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Treasure Below (Video Gems, Thomas Jentzsch) (NTSC).bin
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
HMM0    =  $22
HMM1    =  $23
HMBL    =  $24
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXM0P   =  $30
CXPPMM  =  $37
INPT4   =  $3C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296
L3018   =   $3018
L302D   =   $302D
L3361   =   $3361

       ORG $3000

START:
       SEI            
       CLD            
       LDX    #$FF    
       TXS            
       INX            
       TXA            
L3007: STA    VSYNC,X 
       INX            
       BNE    L3007   
       JSR    L3FAC   
       LDA    #$40    
       STA    $B6     
       STA    $B4     
       LDA    #$80    
       STA    $B5     
       LDX    #$0B    
L301B: LDA    L3C90,X 
       STA    $96,X   
       STA    $A2,X   
       DEX            
       BPL    L301B   
L3025: LDA    #$24    
       STA    TIM64T  
       LDA    #$02    
       STA    WSYNC   
       STA    VBLANK  
       BIT    WSYNC   
       BIT    WSYNC   
       BIT    WSYNC   
       STA    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       INC    $8C     
       LDA    #$00    
       STA    WSYNC   
       STA    VSYNC   
       BIT    $B6     
       BMI    L304D   
       BVS    L305A   
       JMP    L30A4   
L304D: LDX    #$03    
       STX    $93     
       LDX    #$05    
L3053: STA    $B0,X   
       DEX            
       BPL    L3053   
       STA    $C3     
L305A: LDX    #$17    
L305C: STA    $B6,X   
       DEX            
       BPL    L305C   
       LDA    $95     
       STA    $B9     
       LDA    #$20    
       STA    $EF     
       LDA    #$3C    
       STA    $D1     
       LDA    #$3E    
       STA    $E0     
       LDA    #$7F    
       STA    $E1     
       LDA    #$3E    
       STA    $E2     
       LDA    #$6D    
       STA    $E4     
       LDA    #$3E    
       STA    $E5     
       JSR    L35D7   
       JSR    L3AC6   
       JSR    L369E   
       JSR    L3690   
       JSR    L3B99   
       LDA    #$40    
       STA    $E6     
       STA    $DD     
       LDA    #$0F    
       STA    $D2     
       STA    $E8     
       LDA    #$14    
       STA    $D3     
       LDA    #$80    
       STA    $DE     
L30A4: NOP            
       NOP            
       NOP            
       CLC            
       LDA    $D3     
       ADC    #$08    
       JSR    L3C3E   
       STA    WSYNC   
       STA    HMOVE   
       CLC            
       JSR    L35D6   
       STA    HMP0    
L30B9: DEY            
       BPL    L30B9   
       STA    RESP0   
       LDA    $D2     
       LDX    $BE     
       BNE    L30C8   
       ADC    #$0E    
       BNE    L30CB   
L30C8: SEC            
       SBC    #$0C    
L30CB: JSR    L3C3E   
       STA    WSYNC   
       JSR    L35D6   
       STA    HMBL    
       LDA    ($E4),Y 
L30D7: DEY            
       BPL    L30D7   
       STA    RESBL   
       LDA    $D2     
       LDX    $BE     
       BNE    L30E7   
       CLC            
       ADC    #$10    
       BNE    L30F3   
L30E7: LDX    $EF     
       CPX    #$20    
       BEQ    L30F0   
       SEC            
       SBC    #$04    
L30F0: SEC            
       SBC    #$09    
L30F3: JSR    L3C3E   
       STA    WSYNC   
       STA    HMM0    
       JSR    L35D6   
       LDA    $DD     
       NOP            
L3100: DEY            
       BPL    L3100   
       STA    RESM0   
       JSR    L3C3E   
       STA    WSYNC   
       STA    HMP1    
L310C: DEY            
       BPL    L310C   
       STA    RESP1   
       LDX    $EC     
       CLC            
       LDA    L3EA3,X 
       ADC    $E6     
       JSR    L3C3E   
       STA    WSYNC   
       JSR    L35D6   
       STA    HMM1    
       LDA    ($8A),Y 
L3125: DEY            
       BPL    L3125   
       STA    RESM1   
       STA    WSYNC   
       STA    HMOVE   
       LDX    #$03    
L3130: LDA    $D2,X   
       JSR    L3C3E   
       STA    $8D     
       TYA            
       ORA    $8D     
       STA    $80,X   
       DEX            
       BPL    L3130   
       LDA    $D6     
       JSR    L3C3E   
       STY    $F2     
       STA    $F1     
L3148: STA    HMCLR   
       LDA    #$9D    
       STA    COLUBK  
       LDA    #$4D    
       STA    COLUP0  
       LDY    #$02    
       STY    $86     
L3156: LDA    INTIM   
       BNE    L3156   
       STA    WSYNC   
       STA    HMOVE   
       STA    NUSIZ1  
       STA    VBLANK  
       LDA    #$EC    
       STA    TIM64T  
       LDA    #$0F    
       STA    COLUP1  
       LDA    #$22    
       STA    COLUPF  
       LDA    #$30    
       STA    CTRLPF  
       LDY    #$1E    
L3176: STA    WSYNC   
       STA    HMOVE   
       LDA    L3CD4,Y 
       STA    GRP1    
       DEY            
       BPL    L3176   
       LDA    #$0C    
       STA    WSYNC   
       STA    HMOVE   
       STA    COLUP1  
       LDX    #$23    
       DEX            
       LDA    $81     
       STA    HMP1    
       AND    #$0F    
       TAY            
L3194: DEY            
       BPL    L3194   
       STA    RESP1   
L3199: STA    WSYNC   
       STA    HMOVE   
       LDA    L3C88,X 
       TAY            
       LDA.wy $0096,Y 
       STA    PF0     
       DEY            
       LDA.wy $0096,Y 
       STA    PF1     
       DEY            
       LDA.wy $0096,Y 
       STA    PF2     
       TXA            
       TAY            
       LDA    L3EB8,Y 
       STA    GRP1    
       DEX            
       STA    HMCLR   
       CPX    #$14    
       BCS    L3199   
       LDY    #$13    
L31C2: STA    WSYNC   
       STA    HMOVE   
       LDA    #$96    
       STA    COLUBK  
       LDA    ($D0),Y 
       STA    GRP0    
       LDA    L3EB8,Y 
       STA    GRP1    
       CPY    #$06    
       STA    HMCLR   
       BEQ    L31DF   
       DEY            
       BPL    L31C2   
       JMP    L31F6   
L31DF: JSR    L35D6   
       LDA    #$70    
       STA    HMP1    
       LDX    #$47    
       LDA    #$05    
       NOP            
       STX    COLUP1  
       STX    COLUP0  
       DEY            
       STA    NUSIZ1  
       STA    NUSIZ0  
       BNE    L31C2   
L31F6: LDY    $86     
       LDA.wy $00DA,Y 
       STA    $8A     
       LDA    $80     
       AND    #$0F    
       TAY            
       LDA    #$88    
       LDX    #$4D    
       LDA    #$00    
       STA    PF0     
       STA    PF1     
       STX    COLUP0  
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP1    
       STA    GRP0    
       STA    PF2     
       LDA    $80     
       STA    HMP0    
       LDX    #$00    
L321E: DEY            
       BPL    L321E   
       STA    RESP0   
       STA    WSYNC   
       STA    HMOVE   
       STX    NUSIZ1  
       STX    CXCLR   
       INX            
       STX    VDELP1  
       LDX    $EF     
       STX    NUSIZ0  
       LDA    #$3D    
       STA    $8B     
       LDA    #$FF    
       STA    COLUPF  
       LDX    #$70    
       LDA    $BE     
       STA    REFP0   
       STA    HMCLR   
       LDY    #$00    
       LDA    ($E1),Y 
       STA    $8D     
       LDA    ($DF),Y 
L324A: STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       ASL            
       STA    ENAM0   
       LDA    $F1     
       LDY    $F2     
       STA    HMP1    
L3259: DEY            
       BPL    L3259   
       STA    RESP1   
       DEX            
       LDA    $8D     
       STA    HMP0    
       STA    WSYNC   
       STA    HMOVE   
       LDY    $E9     
       LDA    ($DF),Y 
       STA    GRP0    
       ASL            
       STA    ENAM0   
       LDA    ($E4),Y 
       STA    ENABL   
       LDA    ($E1),Y 
       STA    HMCLR   
       LDY    $86     
       STA    HMP0    
       LDA    L3C8D,Y 
       STA    COLUP1  
       LDA    #$1C    
       STA    $89     
       LDA    L3EB5,Y 
       STA    $88     
       DEX            
       SEC            
L328C: TXA            
       SBC    $DE     
       TAY            
       AND    #$E0    
       STA    WSYNC   
       STA    HMOVE   
       BEQ    L32A2   
       LDA    #$00    
       STA    GRP0    
       STA    ENABL   
       STA    ENAM0   
       BEQ    L32AF   
L32A2: LDA    ($DF),Y 
       STA    GRP0    
       ASL            
       STA    ENAM0   
       LDA    ($E4),Y 
       STA    ENABL   
       LDA    ($E1),Y 
L32AF: STA    HMP0    
       DEX            
       CPX    $88     
       BCS    L328C   
       LDY    $86     
       LDA.wy $0081,Y 
       STA    $F1     
       AND    #$0F    
       STA    $F2     
L32C1: TXA            
       SEC            
       SBC    $DE     
       TAY            
       AND    #$E0    
       BEQ    L32CC   
       LDY    #$00    
L32CC: STA    WSYNC   
       STA    HMOVE   
       LDA    ($DF),Y 
       STA    GRP0    
       ASL            
       STA    ENAM0   
       LDA    ($E4),Y 
       STA    ENABL   
       LDA    ($E1),Y 
       STA    HMP0    
       LDY    $89     
       LDA    ($8A),Y 
       STA    GRP1    
       DEX            
       DEC    $89     
       BPL    L32C1   
       TXA            
       SEC            
       SBC    $DE     
       TAY            
       AND    #$E0    
       BEQ    L32F5   
       LDY    #$00    
L32F5: DEX            
       STA    WSYNC   
       STA    HMOVE   
       LDA    ($DF),Y 
       STA    GRP0    
       ASL            
       STA    ENAM0   
       LDA    ($E4),Y 
       STA    ENABL   
       LDA    ($E1),Y 
       STA    HMP0    
       LDY    $86     
       LDA.wy $00D9,Y 
       STA    $8A     
       TXA            
       SEC            
       SBC    $DE     
       TAY            
       AND    #$E0    
       BEQ    L331B   
       LDY    #$00    
L331B: LDA    ($DF),Y 
       DEX            
       DEC    $86     
       STA    GRP0    
       STA    WSYNC   
       STA    HMOVE   
       ASL            
       STA    ENAM0   
       LDA    ($E4),Y 
       STA    ENABL   
       LDA    ($E1),Y 
       STA    HMP0    
       TXA            
       SEC            
       SBC    $DE     
       TAY            
       AND    #$E0    
       BEQ    L3340   
       LDA    #$00    
       STA    $8D     
       BEQ    L3346   
L3340: LDA    ($E1),Y 
       STA    $8D     
       LDA    ($DF),Y 
L3346: DEY            
       CPY    #$20    
       BCC    L334D   
       LDY    #$00    
L334D: STY    $E9     
       LDY    $86     
       BMI    L3356   
       JMP    L324A   
L3356: STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       LDA    $CF     
       STA    NUSIZ1  
       LDA    #$FF    
       STA    COLUP1  
       LDA    $E8     
       STA    ENAM1   
       LDA    $8D     
       STA    HMP0    
       LDA    #$00    
       STA    VDELP1  
L3370: STA    WSYNC   
       STA    HMOVE   
       TXA            
       SEC            
       SBC    $DE     
       TAY            
       AND    #$E0    
       BEQ    L338A   
       LDA    #$00    
       STA    GRP0    
       STA    ENABL   
       STA    ENAM0   
       JSR    L35D6   
       BEQ    L3397   
L338A: LDA    ($DF),Y 
       STA    GRP0    
       ASL            
       STA    ENAM0   
       LDA    ($E4),Y 
       STA    ENABL   
       LDA    ($E1),Y 
L3397: STA    HMP0    
       DEX            
       BPL    L3370   
       LDX    #$03    
       LDY    #$0B    
L33A0: STA    WSYNC   
       STA    HMOVE   
       LDA.wy $00A2,Y 
       STA    PF0     
       DEY            
       LDA.wy $00A2,Y 
       STA    PF1     
       DEY            
       LDA.wy $00A2,Y 
       STA    PF2     
       DEY            
       DEX            
       BPL    L33A0   
       LDX    #$03    
L33BB: STA    WSYNC   
       STA    HMOVE   
       DEX            
       BPL    L33BB   
       STA    WSYNC   
       LDA    #$00    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       STA    ENAM1   
       STA    GRP1    
       STA    COLUBK  
       LDA    #$8D    
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    VDELP0  
       STA    VDELP1  
       LDA    #$00    
       STA    $91     
       STA    REFP0   
       STA    REFP1   
       LDY    #$07    
       STA    WSYNC   
L33EE: DEY            
       BNE    L33EE   
       NOP            
       STA    RESP0   
       STA    RESP1   
       LDA    #$F0    
       STA    HMP0    
       LDA    #$00    
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       LDX    $95     
       INX            
       LDA    $B0     
       BMI    L3413   
       BNE    L3413   
       LDX    $93     
       BPL    L3413   
       LDA    #$30    
       BNE    L3416   
L3413: LDA    L3F99,X 
L3416: STA    $8A     
       LDA    #$30    
       STA    $88     
       LDA    #$3F    
       STA    $89     
       STA    $8B     
       JSR    L3BFA   
       LDA    $B4     
       BPL    L3433   
       LDX    #$06    
L342B: LDA    $80,X   
       STA    $8E,X   
       DEX            
       DEX            
       BPL    L342B   
L3433: LDA    INTIM   
       BNE    L3433   
L3438: STA    WSYNC   
       LDA    #$07    
       STA    $8F     
L343E: LDY    $8F     
       LDA    ($80),Y 
       STA    GRP0    
       STA    WSYNC   
       LDA    ($82),Y 
       STA    GRP1    
       LDA    ($84),Y 
       STA    GRP0    
L344E: LDA    ($86),Y 
       STA    $8D     
       LDA    ($88),Y 
       TAX            
       LDA    ($8A),Y 
       TAY            
       LDA    $8D     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STY    GRP0    
       DEC    $8F     
       BPL    L343E   
       STA    WSYNC   
       LDY    #$00    
       STY    GRP0    
       STY    GRP1    
       STY    GRP0    
       LDA    $91     
       BNE    L34B2   
       INC    $91     
       BIT    $B5     
       BPL    L349C   
       BIT    $B4     
       BVS    L349C   
       LDA    $8C     
       AND    #$40    
       BNE    L349C   
       LDA    #$38    
       STA    $88     
       LDA    #$40    
       STA    $8A     
       LDX    #$06    
L348E: LDA    $8E,X   
       STA    $80,X   
       DEX            
       DEX            
       BPL    L348E   
       STA    WSYNC   
       BMI    L3438   
       NOP            
       NOP            
L349C: STA    WSYNC   
       LDA    #$28    
       LDY    #$3F    
       LDX    #$0A    
       SEC            
L34A5: STA    $80,X   
       STY    $81,X   
       SBC    #$08    
       DEX            
       DEX            
       BPL    L34A5   
       JMP    L3438   
L34B2: LDA    #$00    
       STA    VDELP0  
       STA    VDELP1  
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$1D    
       STA    TIM64T  
       LDA    $BA     
       BNE    L34D1   
       LDX    #$00    
       LDA    $8C     
       AND    #$10    
       BNE    L34CF   
       LDX    #$20    
L34CF: STX    $DF     
L34D1: JSR    L3BC7   
       JSR    L35C0   
       JSR    L383E   
       LDA    $B3     
       BEQ    L34E8   
       LDA    $8C     
       AND    #$04    
       BNE    L3507   
       DEC    $B3     
       BNE    L3507   
L34E8: LDY    #$02    
L34EA: LDA.wy $00BB,Y 
       BNE    L34FD   
       LDX    L3FA6,Y 
       LDA    $8C     
       AND    #$10    
       BNE    L34FB   
       LDX    L3FA9,Y 
L34FB: STX    $DA,Y   
L34FD: DEY            
       BPL    L34EA   
       LDA    SWCHB   
       AND    #$80    
       BNE    L350A   
L3507: JMP    L356B   
L350A: BIT    $EB     
       BMI    L356B   
       JSR    L360A   
       BIT    $B5     
       BMI    L352D   
       LDX    $C2     
       BNE    L3571   
       BIT    $B8     
       BMI    L352A   
       JSR    L3748   
       BIT    $B8     
       BVS    L3530   
       JSR    L39C5   
       JSR    L36AD   
L352A: JSR    L36D5   
L352D: JSR    L3954   
L3530: JSR    L3B56   
       JSR    L361D   
       BIT    $B8     
       BVS    L35A6   
       LDX    #$02    
L353C: LDA    $BB,X   
       BNE    L3568   
       LDA    $DE     
       CMP    L3723,X 
       BCC    L3565   
       CMP    L356E,X 
L354A: BCS    L3565   
       JSR    L3998   
       BCC    L3568   
       LDA    $D2     
       SEC            
       SBC    $D4,X   
       BCS    L355C   
       LDA    #$FD    
       BNE    L355E   
L355C: LDA    #$03    
L355E: CLC            
       ADC    $D4,X   
       STA    $D4,X   
       BNE    L3568   
L3565: JSR    L38FB   
L3568: DEX            
       BPL    L353C   
L356B: JMP    L35A6   
L356E: .byte $11,$29,$00
L3571: CPX    #$19    
       BNE    L3599   
       LDA    $BA     
       BNE    L3599   
       LDA    $D2     
       CMP    #$30    
       BCC    L3585   
       JSR    L3ADF   
       JMP    L3599   
L3585: LDA    #$76    
       STA    $D2     
       JSR    L3B11   
       LDA    #$68    
       STA    $D3     
       LDA    #$18    
       STA    $E6     
       LDA    #$50    
       JSR    L3AF4   
L3599: JSR    L367C   
       JSR    L3B56   
       DEC    $C2     
       BNE    L35A6   
       JSR    L369E   
L35A6: LDA    INTIM   
       BNE    L35A6   
       JMP    L3025   
L35AE: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00
L35C0: BIT    $B5     
       BPL    L35C8   
       BIT    INPT4   
       BPL    L35CE   
L35C8: LDA    SWCHB   
       LSR            
       BCS    L35D6   
L35CE: LDA    #$80    
       STA    $B6     
       LDA    #$00    
       STA    $B5     
L35D6: RTS            

L35D7: LDY    $B9     
       LDA    $CA     
       AND    #$0F    
       CMP    L3606,Y 
       BCS    L35F1   
       LDX    L35F2,Y 
       LDY    #$03    
L35E7: LDA    L35F6,X 
       STA.wy $00CA,Y 
       INX            
       DEY            
       BPL    L35E7   
L35F1: RTS            

L35F2: .byte $00,$04,$08,$0C
L35F6: .byte $03,$02,$03,$03,$07,$06,$07,$07,$0B,$0A,$0B,$0B,$0F,$0E,$0F,$0F
L3606: .byte $03,$07,$0B,$0F
L360A: LDA    $8C     
       AND    #$01    
       BNE    L361C   
       INC    $DD     
       LDA    $DD     
       CMP    #$C0    
       BCC    L361C   
       LDA    #$30    
       STA    $DD     
L361C: RTS            

L361D: BIT    $B5     
       BPL    L366B   
       LDA    $8C     
       AND    #$01    
       BNE    L366B   
       BIT    $C1     
       BMI    L365B   
       LDX    $EC     
       BEQ    L366C   
       LDA    $D2     
       CLC            
       ADC    #$08    
       SEC            
       SBC    L3EA3,X 
       CMP    $E6     
       BEQ    L364B   
       BCS    L3647   
       INC    $D2     
       JSR    L37F2   
       INC    $B7     
       BNE    L3649   
L3647: DEC    $D2     
L3649: BNE    L366B   
L364B: JSR    L3B30   
       LDA    #$00    
       STA    $BE     
       LDA    #$7F    
       STA    $E1     
       DEC    $DE     
       JMP    L366B   
L365B: INC    $DE     
       LDA    $DE     
       CMP    #$50    
       BCC    L366B   
       LDA    #$00    
       STA    $C1     
       LDA    #$6D    
       STA    $E4     
L366B: RTS            

L366C: INC    $D2     
       LDA    $D2     
       CMP    #$80    
       BCC    L366B   
       JSR    L3ADF   
       LDA    #$03    
       STA    $EC     
       RTS            

L367C: LDA    $F3     
       BNE    L368F   
       LDA    #$80    
       STA    $EB     
       LDA    #$02    
       CMP    $B9     
       BCC    L368F   
       INC    $B9     
       JSR    L35D7   
L368F: RTS            

L3690: LDX    #$02    
       LDA    #$03    
L3694: STA    $EC,X   
       DEX            
       BPL    L3694   
       LDA    #$06    
       STA    $F3     
       RTS            

L369E: LDX    #$02    
L36A0: LDA    L3FA6,X 
       STA    $DA,X   
       LDA    #$00    
       STA    $BB,X   
       DEX            
       BPL    L36A0   
       RTS            

L36AD: LDA    $BA     
       BNE    L36CF   
       LDA    $BF     
       BNE    L36CD   
       LDA    #$20    
       STA    $EF     
       BIT    INPT4   
       BMI    L36D0   
       BIT    $C0     
       BMI    L36CF   
       LDA    #$80    
       STA    $C0     
       LDA    #$10    
       STA    $BF     
       LDA    #$30    
       STA    $EF     
L36CD: DEC    $BF     
L36CF: RTS            

L36D0: LDA    #$00    
       STA    $C0     
       RTS            

L36D5: LDA    $BA     
       BNE    L3722   
       LDX    #$02    
L36DB: LDA    $BB,X   
       BNE    L3726   
       BIT    $B8     
       BMI    L371F   
       BIT    CXM0P   
       BPL    L371F   
       LDA    $DE     
       CMP    L3723,X 
       BCS    L36F0   
       BCC    L371F   
L36F0: LDA    $BF     
       BNE    L36FB   
       BIT    CXPPMM  
       BMI    L3756   
       JMP    L371F   
L36FB: INC    $C3     
       INC    $C4     
       LDY    $B9     
       LDA    L3ADB,Y 
       LDY    #$01    
       JSR    L3B47   
       LDA    #$09    
       STA    $C8     
       LDA    #$03    
       STA    $C5     
       LDA    #$80    
       STA    $B8     
       LDA    #$3A    
       STA    $DA,X   
       LDA    #$A0    
       STA    $BB,X   
       BNE    L3722   
L371F: DEX            
       BPL    L36DB   
L3722: RTS            

L3723: .byte $00,$19,$3F
L3726: CMP    #$90    
       BCS    L372E   
       LDA    #$4A    
       STA    $DA,X   
L372E: DEC    $BB,X   
       BNE    L3744   
       LDA    L3FA6,X 
       STA    $DA,X   
       LDA    $D2     
       CLC            
       ADC    #$40    
       CMP    #$74    
       BCC    L3742   
       LDA    #$20    
L3742: STA    $D4,X   
L3744: JMP    L371F   
L3747: .byte $60
L3748: LDA    $BA     
       BNE    L376A   
       LDX    #$02    
L374E: LDA    $BB,X   
       BNE    L37B3   
       BIT    CXPPMM  
       BPL    L37B3   
L3756: LDA    #$50    
       STA    $BA     
       LDX    #$01    
       STX    $C8     
       LDX    #$80    
       STX    $C4     
       LDA    #$40    
       STA    $DF     
       LDA    #$40    
       STA    $B8     
L376A: DEC    $BA     
       BNE    L37B2   
       LDA    #$80    
       STA    $DE     
       BIT    $C1     
       BPL    L3780   
       LDA    $EB     
       STA    $EC     
       INC    $F3     
       LDA    #$6D    
       STA    $E4     
L3780: JSR    L3AC6   
       DEC    $93     
       BPL    L37B2   
       LDA    #$C0    
       STA    $D0     
       LDA    #$80    
       STA    $B5     
       LDA    #$30    
       STA    $B3     
       LDA    #$40    
       STA    $B6     
       SED            
       SEC            
       LDX    #$01    
L379B: LDA    $B1,X   
       SBC    $AE,X   
       DEX            
       BPL    L379B   
       BCC    L37B1   
       LDA    #$80    
       STA    $B4     
       LDX    #$01    
L37AA: LDA    $B1,X   
       STA    $AE,X   
       DEX            
       BPL    L37AA   
L37B1: CLD            
L37B2: RTS            

L37B3: DEX            
       BPL    L374E   
       RTS            

L37B7: LDA    $B7     
       AND    #$07    
       BNE    L37F1   
       CLC            
       LDA    $E6     
       ADC    #$04    
       STA    $E6     
       LDA    #$00    
       STA    $80     
       LDX    #$A2    
L37CA: LDY    #$03    
L37CC: CLC            
       ROL    WSYNC,X 
       ROR    VBLANK,X
       ROL    VSYNC,X 
       BCC    L37DB   
       LDA    WSYNC,X 
       ORA    #$10    
       STA    WSYNC,X 
L37DB: INX            
       INX            
       INX            
       DEY            
       BPL    L37CC   
       LDA    $80     
       BNE    L37F1   
       LDA    $B7     
       AND    #$0F    
       BNE    L37F1   
       INC    $80     
       LDX    #$96    
       BNE    L37CA   
L37F1: RTS            

L37F2: LDA    $B7     
       AND    #$07    
       BNE    L3836   
       SEC            
       LDA    $E6     
       SBC    #$04    
       STA    $E6     
       LDA    #$00    
       STA    $80     
       LDX    #$A2    
L3805: LDY    #$03    
L3807: CLC            
       ROR    VSYNC,X 
       ROL    VBLANK,X
       ROR    WSYNC,X 
       LDA    WSYNC,X 
       AND    #$08    
       BEQ    L3820   
       LDA    VSYNC,X 
       ORA    #$80    
       STA    VSYNC,X 
       LDA    WSYNC,X 
       AND    #$F0    
       STA    WSYNC,X 
L3820: INX            
       INX            
       INX            
       DEY            
       BPL    L3807   
       LDA    $80     
       BNE    L3836   
       LDA    $B7     
       AND    #$0F    
       BNE    L3836   
       INC    $80     
       LDX    #$96    
       BNE    L3805   
L3836: RTS            

L3837: LDA    #$00    
       STA    AUDV0   
       STA    AUDV1   
       RTS            

L383E: LDA    $B6     
       BNE    L3837   
       LDA    SWCHB   
       AND    #$80    
       BEQ    L3837   
       LDA    $B5     
       BNE    L3837   
       BIT    $EB     
       BMI    L3894   
       LDA    $C8     
       BEQ    L38AC   
       BIT    $B8     
       BVS    L38B0   
       LDA    $8C     
       AND    $C5     
       BEQ    L3862   
       JMP    L38D5   
L3862: BIT    $B8     
       BMI    L3884   
       LDX    #$05    
       BIT    $C1     
       BMI    L3872   
       LDX    #$01    
       LDA    $C2     
       BEQ    L387A   
L3872: DEC    $C8     
       LDY    $C8     
       LDA    #$06    
       BNE    L38CF   
L387A: DEC    $C8     
       LDA    $C8     
       LDX    #$05    
       LDY    #$0F    
       BNE    L38CF   
L3884: DEC    $C8     
       BNE    L388C   
       LDA    #$00    
       STA    $B8     
L388C: LDA    $C8     
       LDX    #$09    
       LDY    #$09    
       BNE    L38CF   
L3894: INC    $C8     
       BPL    L38A6   
       LDA    #$00    
       STA    $C8     
       STA    $EB     
       INC    $93     
       JSR    L3690   
       JMP    L38CD   
L38A6: LDA    $C8     
       LSR            
       LSR            
       LSR            
       TAY            
L38AC: LDX    #$06    
       BNE    L38CF   
L38B0: LDA    $8C     
       LSR            
       PHP            
       INC    $C8     
       BPL    L38BE   
       LDA    #$00    
       STA    $C8     
       STA    $B8     
L38BE: LDA    $C8     
       LSR            
       LSR            
       LSR            
       PLP            
       ADC    #$0F    
       TAY            
       LDA    #$06    
       LDX    #$04    
       BNE    L38CF   
L38CD: LDA    #$00    
L38CF: STA    AUDV1   
       STY    AUDF1   
       STX    AUDC1   
L38D5: LDA    $8C     
       AND    #$07    
       BNE    L38F4   
       LDA    $C7     
       BNE    L38E3   
       LDA    #$04    
       STA    $C7     
L38E3: DEC    $C7     
       LDX    $C7     
       LDA    L38F5,X 
       STA    AUDF0   
       LDA    #$02    
       STA    AUDV0   
       LDA    #$05    
       STA    AUDC0   
L38F4: RTS            

L38F5: .byte $BF,$C0,$00,$90,$97,$00
L38FB: LDA    $D4,X   
       CMP    $D7,X   
       BCS    L3915   
       PHA            
       JSR    L3998   
       PLA            
       BCC    L3912   
       ADC    #$02    
       STA    $D4,X   
       CMP    $D7,X   
       BCC    L3912   
L3910: LDA    $D7,X   
L3912: STA    $D4,X   
       RTS            

L3915: BEQ    L3926   
       PHA            
       JSR    L3998   
       PLA            
       BCC    L3912   
       ADC    #$FC    
       CMP    $D7,X   
       BCS    L3912   
       BCC    L3910   
L3926: CPX    #$00    
       BEQ    L3937   
L392A: LDA    $8C     
       AND    #$1C    
       LSR            
       LSR            
       TAY            
       LDA    L3EB2,Y 
       STA    $D7,X   
       RTS            

L3937: LDA    $DE     
       CMP    #$1C    
       BCC    L392A   
       LDA    $D4     
       SEC            
       SBC    $E6     
       BCC    L394C   
       LDA    $E6     
       SBC    #$03    
       STA    $D7,X   
       BNE    L3953   
L394C: LDA    $E6     
       SEC            
       ADC    #$20    
       STA    $D7,X   
L3953: RTS            

L3954: CLC            
       LDA    #$00    
       LDX    $C9     
       BNE    L397F   
       LDA    $8C     
       AND    #$01    
       BNE    L3997   
       LDA    $D3     
       SEC            
       SBC    $D2     
       BCC    L3972   
       CMP    #$0C    
       BCC    L397C   
       LDA    #$FF    
       STA    $EA     
       BNE    L397C   
L3972: EOR    #$FF    
       CMP    #$10    
       BCC    L397C   
       LDA    #$01    
       STA    $EA     
L397C: CLC            
       LDA    $EA     
L397F: ADC    $D3     
       CMP    #$01    
       BCS    L398B   
       LDX    #$01    
       STX    $EA     
       LDA    #$01    
L398B: CMP    #$6C    
       BCC    L3995   
       LDA    #$6C    
       LDX    #$FF    
       STX    $EA     
L3995: STA    $D3     
L3997: RTS            

L3998: LDA    $C3     
       CMP    #$0A    
       BCC    L39A5   
       JSR    L39B1   
       LDA    #$00    
       STA    $C3     
L39A5: LDA    $CA,X   
       ASL            
       ASL            
       ASL            
       ASL            
       CLC            
       ADC    $CA,X   
       STA    $CA,X   
       RTS            

L39B1: LDY    #$03    
L39B3: LDA.wy $00CA,Y 
       AND    #$0F    
       CMP    #$0F    
       BCS    L39C1   
       ADC    #$01    
       STA.wy $00CA,Y 
L39C1: DEY            
       BPL    L39B3   
       RTS            

L39C5: LDA    $C2     
       CMP    #$10    
       BCS    L39CF   
       LDA    $BA     
       BEQ    L39D0   
L39CF: RTS            

L39D0: LDX    #$03    
       JSR    L3998   
       BCC    L39CF   
       LDA    #$00    
       STA    $C9     
       LDA    SWCHA   
       STA    $8D     
       ASL    $8D     
       BCS    L3A22   
       INC    $D3     
       INC    $D3     
       INC    $C9     
       LDA    $D2     
       ADC    #$02    
       STA    $D2     
       CMP    #$77    
       BCC    L3A02   
       BIT    $C1     
       BPL    L39FF   
       LDA    #$77    
       STA    $D2     
       JMP    L3A22   
L39FF: JSR    L3B23   
L3A02: CLC            
       LDA    $B7     
       ADC    #$02    
       STA    $B7     
       JSR    L37F2   
       LDA    #$7F    
       STA    $E1     
       LDA    $BE     
       BEQ    L3A1B   
       SEC            
       LDA    $D2     
       SBC    #$10    
       STA    $D2     
L3A1B: LDA    #$00    
       STA    $BE     
       JMP    L3A22   
L3A22: ASL    $8D     
       BCS    L3A6B   
       INC    $C9     
       LDA    $D3     
       CMP    #$03    
       BCC    L3A32   
       DEC    $D3     
       DEC    $D3     
L3A32: CLC            
       LDA    #$FE    
       ADC    $D2     
       STA    $D2     
       CMP    #$0F    
       BCS    L3A4B   
       BIT    $C1     
       BPL    L3A48   
       LDA    #$0F    
       STA    $D2     
       JMP    L3A6B   
L3A48: JSR    L3B23   
L3A4B: JSR    L37B7   
       LDA    $B7     
       CLC            
       ADC    #$FE    
       STA    $B7     
       LDA    #$40    
       STA    $E1     
       LDA    $BE     
       BNE    L3A64   
       CLC            
       LDA    $D2     
       ADC    #$10    
       STA    $D2     
L3A64: LDA    #$08    
       STA    $BE     
       JMP    L3A6B   
L3A6B: ASL    $8D     
       BCS    L3A7E   
       JSR    L3B30   
       DEC    $DE     
L3A74: DEC    $DE     
       LDA    #$02    
       CMP    $DE     
       BCC    L3A7E   
       STA    $DE     
L3A7E: ASL    $8D     
       BCS    L3AD6   
       BIT    $DE     
       BMI    L3AD6   
       INC    $DE     
       INC    $DE     
       LDA    #$4D    
       CMP    $DE     
       BCS    L3AD6   
       BIT    $C1     
       BVS    L3AD6   
       STA    $DE     
       BIT    $C1     
       BPL    L3AD6   
       LDA    $F3     
       AND    #$01    
       BNE    L3AA5   
       STA    $C3     
       JSR    L39B1   
L3AA5: LDA    #$03    
       STA    $C5     
       LDA    #$0A    
       STA    $C8     
       LDA    #$80    
       STA    $DE     
       LDY    $B9     
       LDA    L3AD7,Y 
       CPY    #$00    
       BEQ    L3ABE   
       LDY    #$00    
       BEQ    L3AC0   
L3ABE: LDY    #$01    
L3AC0: JSR    L3B47   
       JSR    L367C   
L3AC6: LDA    #$60    
       STA    $C1     
       LDA    #$AC    
       STA    $D0     
       LDA    #$6D    
       STA    $DF     
       LDA    #$6D    
       STA    $E4     
L3AD6: RTS            

L3AD7: .byte $50,$01,$02,$03
L3ADB: .byte $10,$20,$30,$40
L3ADF: JSR    L3AFC   
       LDA    #$09    
       STA    $D3     
       LDA    #$0F    
       STA    $D2     
       LDA    #$40    
       STA    $E6     
       LDA    #$30    
       JSR    L3AF4   
       RTS            

L3AF4: LDX    #$02    
L3AF6: STA    $D4,X   
       DEX            
       BPL    L3AF6   
       RTS            

L3AFC: LDX    #$00    
       LDA    $EC,X   
       STA    $89     
       INX            
L3B03: LDA    $EC,X   
       STA    $EB,X   
       INX            
       CPX    #$03    
       BCC    L3B03   
       LDA    $89     
       STA    $EE     
       RTS            

L3B11: LDX    #$02    
       LDA    $EC,X   
       STA    $89     
L3B17: LDA    $EB,X   
       STA    $EC,X   
       DEX            
       BNE    L3B17   
       LDA    $89     
       STA    $EC     
       RTS            

L3B23: LDA    #$40    
       STA    $C2     
       LDA    #$07    
       STA    $C5     
       LDA    #$0A    
       STA    $C8     
       RTS            

L3B30: LDA    $DE     
       CMP    #$4E    
       BCC    L3B46   
       LDA    #$4D    
       STA    $DE     
       LDA    #$00    
       STA    $DF     
       LDA    #$C0    
       STA    $D0     
       LDA    #$00    
       STA    $C1     
L3B46: RTS            

L3B47: SED            
       CLC            
L3B49: ADC.wy $00B1,Y 
       STA.wy $00B1,Y 
       LDA    #$00    
       DEY            
       BPL    L3B49   
       CLD            
       RTS            

L3B56: BIT    $C1     
       BMI    L3B99   
       LDA    #$02    
       CMP    $DE     
       BCC    L3B99   
       LDA    $E6     
       STA    $8D     
       LDA    $BA     
       BNE    L3B99   
       LDY    #$01    
L3B6A: CLC            
       LDA    $D2     
       ADC    #$08    
       SEC            
       SBC    $8D     
       BCC    L3BBA   
       CMP    #$08    
       BCS    L3BBA   
       LDA    L3EAF,Y 
       TAX            
       AND    $EC     
       BEQ    L3BBA   
       LDA    $EC     
       STA    $EB     
       TXA            
       EOR    #$FF    
       AND    $EC     
       STA    $EC     
       DEC    $F3     
       LDA    #$80    
       STA    $C1     
       LDA    #$03    
       STA    $C5     
       LDA    #$0A    
       STA    $C8     
L3B99: LDX    $EC     
       BEQ    L3BB3   
       LDA    L3E9F,X 
       STA    $CF     
       LDA    #$02    
       STA    $E8     
L3BA6: BIT    $C1     
       BPL    L3BB2   
       LDA    #$60    
       STA    $E4     
       LDA    #$3E    
       STA    $E5     
L3BB2: RTS            

L3BB3: LDA    #$00    
       STA    $E8     
       JMP    L3BA6   
L3BBA: CLC            
       LDA    $8D     
       ADC    #$20    
       STA    $8D     
       DEY            
       BPL    L3B6A   
       BMI    L3B99   
       RTS            

L3BC7: BIT    $B0     
       BMI    L3BCF   
       LDA    $B0     
       BNE    L3BEE   
L3BCF: LDA    SWCHB   
       AND    #$02    
       BNE    L3BF4   
       LDA    #$80    
       STA    $B5     
       LDA    #$40    
       STA    $B6     
       LDA    #$00    
       STA    $BE     
       LDA    #$2F    
       STA    $B0     
       INC    $95     
       LDA    $95     
       AND    #$03    
       STA    $95     
L3BEE: DEC    $B0     
       BNE    L3BF4   
       BEQ    L3BF5   
L3BF4: RTS            

L3BF5: LDA    #$80    
       STA    $B0     
       RTS            

L3BFA: LDX    #$06    
       LDA    $B2     
       JSR    L3C1D   
       LDA    $B1     
       JSR    L3C1D   
       LDX    #$00    
L3C08: LDA    $80,X   
       CMP    #$48    
       BNE    L3C1C   
       LDA    #$30    
       STA    $80,X   
       LDA    #$3F    
       STA    $81,X   
       INX            
       INX            
       CPX    #$06    
       BNE    L3C08   
L3C1C: RTS            

L3C1D: PHA            
       AND    #$0F    
       TAY            
       LDA    L3F99,Y 
       STA    $80,X   
       LDA    #$3F    
       STA    $81,X   
       DEX            
       DEX            
       PLA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    L3F99,Y 
       STA    $80,X   
       LDA    #$3F    
       STA    $81,X   
       DEX            
       DEX            
       RTS            

L3C3E: LDY    #$FF    
       SEC            
L3C41: INY            
       SBC    #$0F    
       BCS    L3C41   
       EOR    #$FF    
       SBC    #$06    
       ASL            
       ASL            
       ASL            
       ASL            
       RTS            

L3C4F: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00
L3C88: .byte $08,$44,$74,$50,$14
L3C8D: .byte $2C,$6A,$BF
L3C90: .byte $FF,$FF,$F0,$3F,$F9,$E0,$0F,$E0,$40,$06,$80,$00,$02,$02,$02,$02
       .byte $05,$05,$05,$05,$08,$08,$08,$08,$0B,$0B,$0B,$0B,$F8,$F8,$FC,$FC
       .byte $FE,$FE,$48,$68,$68,$68,$78,$38,$10,$38,$38,$78,$38,$00,$00,$00
       .byte $F8,$F8,$FC,$FC,$FE,$FE,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00
L3CD4: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$34,$7E,$FF,$FF,$7A,$78,$38,$10
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$52,$52
       .byte $89,$85,$85,$49,$4A,$49,$49,$FF,$56,$7E,$3C,$18,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$49,$29,$29,$2A,$2A,$52
       .byte $52,$4A,$4A,$FF,$6A,$7E,$3C,$18,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$02,$10,$02,$08,$11,$20,$04,$10,$02
       .byte $14,$20,$08,$02,$10,$04,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$50,$51,$09,$29,$2A,$2A,$4A,$4A
       .byte $49,$29,$16,$68,$90,$B8,$9C,$5C,$5E,$5E,$5E,$5F,$55,$9F,$8F,$87
       .byte $82,$80,$80,$80,$40,$40,$00,$00,$48,$4A,$4A,$92,$91,$91,$91,$4A
       .byte $2A,$14,$30,$58,$58,$5C,$9C,$9E,$9E,$9E,$5F,$55,$5F,$4F,$27,$22
       .byte $10,$10,$08,$08,$10,$00,$00,$00,$00,$00,$00,$00,$00,$30,$48,$48
       .byte $08,$08,$08,$18,$18,$30,$30,$30,$18,$18,$88,$5C,$34,$1C,$08,$1E
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$30,$48,$08,$30,$60
       .byte $60,$70,$38,$18,$88,$5C,$34,$1C,$08,$1C,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$06,$0C,$18,$63,$46,$E6,$FE,$FE,$3A
       .byte $6E,$FE,$EE,$E6,$E8,$88,$CC,$08,$10,$10,$10,$30,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$06,$0C,$18,$63,$46,$E6,$FE,$FE,$3A
       .byte $6E,$DE,$EE,$E6,$18,$28,$18,$28,$D0,$10,$20,$40,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$F0,$00,$10,$10,$10,$20
       .byte $F0,$F0,$10,$00,$30,$00,$10,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$02,$02,$02,$02,$02,$02,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$10,$00,$F0,$F0,$F0,$E0,$10
       .byte $10,$F0,$00,$D0,$00,$F0,$00,$00,$00,$00,$00
L3E9F: .byte $30,$30,$30,$32
L3EA3: .byte $00,$20,$00,$00,$30,$30,$30,$30,$30,$30,$32,$32
L3EAF: .byte $01,$02,$01
L3EB2: .byte $10,$70,$43
L3EB5: .byte $22,$46,$68
L3EB8: .byte $3F,$3F,$7F,$7F,$FF,$FF,$08,$08,$7E,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$7F,$7F,$7F,$7F,$7F,$3F,$3F,$1F,$1F,$0F,$0F,$07,$03
       .byte $01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$78,$84,$B4,$A4,$B4,$84,$78,$00
       .byte $22,$22,$52,$52,$52,$88,$8A,$00,$6E,$A8,$AE,$AA,$6E,$20,$20,$00
       .byte $43,$A4,$A4,$A5,$44,$04,$03,$00,$3A,$A2,$BA,$AA,$3B,$80,$00,$00
       .byte $AE,$A2,$AE,$A8,$EE,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $01,$01,$01,$01,$01,$01,$01,$00,$26,$29,$21,$E6,$28,$29,$26,$00
       .byte $3C,$66,$66,$66,$66,$66,$3C,$00,$7E,$18,$18,$18,$18,$18,$78,$38
       .byte $7E,$60,$60,$3C,$06,$46,$7C,$00,$3C,$46,$06,$0C,$06,$46,$3C,$00
       .byte $0C,$0C,$7E,$4C,$2C,$1C,$0C,$00,$7C,$46,$06,$7C,$60,$60,$7E,$00
       .byte $3C,$66,$66,$7C,$60,$62,$3C,$00,$18,$18,$08,$04,$02,$62,$7E,$00
       .byte $3C,$66,$66,$3C,$66,$66,$3C,$00,$3C,$46,$06,$3E,$66,$66,$3C,$00
       .byte $30
L3F99: .byte $48,$50,$58,$60,$68,$70,$78,$80,$88,$90,$1E,$0F,$0F
L3FA6: .byte $6A,$00,$C6
L3FA9: .byte $8A,$1C,$AB
L3FAC: LDX    #$30    
       LDA    #$00    
       TAY            
L3FB1: STX    $81     
L3FB3: CLC            
       ADC    ($80),Y 
       INY            
       BNE    L3FB3   
       INX            
       CPX    #$40    
       BNE    L3FB1   
       TAX            
       BNE    L3FC2   
       RTS            

L3FC2: DEY            
       STY    AUDV0   
       BRK            
       .byte $33 ;.RLA
       .byte $54 ;.NOP
       .byte $72 ;.JAM
       ADC    $61     
       .byte $73 ;.RRA
       ADC    $72,X   
       ADC    HMP0    
       .byte $42 ;.JAM
       ADC    $6C     
       .byte $6F ;.RRA
       .byte $77 ;.RRA
       JSR    $544E   
       .byte $53 ;.SRE
       .byte $43 ;.SRE
       JSR    $6148   
       .byte $63 ;.RRA
       .byte $6B ;.ARR
       JSR    $202D   
       PLP            
       .byte $43 ;.SRE
       AND    #$32    
       BMI    L3018   
       AND    ($20),Y 
       .byte $54 ;.NOP
       PLA            
       .byte $6F ;.RRA
       ADC    $7361   
       JSR    $654A   
       ROR    $7A74   
       .byte $73 ;.RRA
       .byte $63 ;.RRA
       PLA            
       .byte $FF ;.ISB
       BRK            
       BMI    L3FFD   
L3FFD: BMI    L3FFF   
L3FFF: .byte $30
