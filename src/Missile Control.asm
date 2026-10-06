; Disassembly of roms/Missile Control.bin
; Disassembled Tue Oct  6 15:21:51 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Missile Control.bin
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
ENAM0   =  $1D
ENAM1   =  $1E
ENABL   =  $1F
HMP0    =  $20
HMP1    =  $21
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXM0P   =  $30
CXM0FB  =  $34
INPT4   =  $3C
INPT5   =  $3D
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296
L3500   =   $3500

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
       JSR    L3C58   
       LDA    #$01    
       STA    $D5     
       JSR    L3974   
       STA    $D6     
       STA    $B8     
       LDA    #$00    
       STA    $B7     
L301E: INC    $95     
       LDA    #$6B    
       STA    TIM64T  
       LDA    #$02    
       STA    WSYNC   
       STA    VBLANK  
       LDA    #$02    
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    WSYNC   
       STA    VSYNC   
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    $D9     
       STA    COLUBK  
       JSR    L3C01   
       JSR    L3A6F   
       JSR    L3B4D   
       JSR    L3943   
       BCC    L308D   
       JSR    L3773   
       JSR    L3806   
       JSR    L3842   
       LDA    $CB     
       CMP    #$03    
       BEQ    L3067   
       JSR    L3426   
L3067: JSR    L34A2   
       JSR    L351E   
       JSR    L3611   
       JSR    L3A4C   
       JSR    L3930   
       JSR    L3C39   
       LDA    $D2     
       AND    $95     
       BNE    L308D   
       DEC    $94     
       LDA    #$40    
       CMP    $94     
       BCC    L308D   
       LDA    #$9D    
       STA    $94     
       INC    $C0     
L308D: LDA    $C0     
       AND    #$01    
       BNE    L3097   
       LDA    #$B0    
       BNE    L3099   
L3097: LDA    #$20    
L3099: JSR    L3380   
       LDX    #$01    
       JSR    L3395   
       LDA    #$FF    
       STA    COLUP1  
       JSR    L3AC6   
       JSR    L3B03   
       JSR    L39FF   
       JSR    L3810   
L30B1: LDA    INTIM   
       STA    CXCLR   
       BNE    L30B1   
       LDA    $BF     
       BEQ    L30C0   
       LDA    #$30    
       STA    NUSIZ0  
L30C0: STA    WSYNC   
       STA    HMCLR   
       STA    VBLANK  
       LDX    $94     
       LDA    #$80    
       STA    $96     
       LDA    #$00    
       LDY    $80     
       STA    GRP1    
L30D2: STA    WSYNC   
       STA    ENAM0   
       LDA    L3E43,X 
       STA    GRP1    
       LDA.wy $0081,Y 
       STA    HMP0    
       AND    #$0F    
       TAY            
L30E3: DEY            
       BPL    L30E3   
       STA    RESP0   
       DEC    $96     
       STA    WSYNC   
       STA    HMOVE   
       DEX            
       LDY    #$07    
L30F1: LDA    ($8D),Y 
       STA    GRP0    
       LDA    L3E08,Y 
       STA    COLUP0  
       JSR    L350F   
       DEY            
       DEC    $96     
       STA    WSYNC   
       LDA    L3E43,X 
       STA    GRP1    
       LDA    ($8D),Y 
       STA    GRP0    
       LDA    L3E08,Y 
       STA    COLUP0  
       JSR    L350F   
       DEX            
       DEC    $96     
       STA    WSYNC   
       DEY            
       BPL    L30F1   
       LDA    #$00    
       STA    GRP0    
       LDY    $96     
       CPY    $BB     
       BNE    L3127   
       LDA    #$02    
L3127: STA    ENAM0   
       DEC    $80     
       LDY    $80     
       LDA.wy $008A,Y 
       STA    $8D     
       LDA    #$00    
       DEC    $96     
       LDY    $96     
       CPY    $BB     
       BNE    L313E   
       LDA    #$02    
L313E: LDY    $80     
       BPL    L30D2   
L3142: STA    WSYNC   
       LDA    L3E43,X 
       STA    GRP1    
       JSR    L350F   
       DEX            
       DEC    $96     
       STA    WSYNC   
       JSR    L350F   
       DEC    $96     
       LDA    $96     
       CMP    #$60    
       BPL    L3142   
       LDA    #$20    
       STA    CTRLPF  
       LDY    $96     
L3162: STA    WSYNC   
       LDA    L3E43,X 
       STA    GRP1    
       LDA    $C1     
       STA    PF1     
       LDA    #$00    
       STA    PF0     
       CPY    $BB     
       BNE    L3177   
       LDA    #$02    
L3177: STA    ENAM0   
       LDA    $C2     
       STA    PF2     
       LDA    $C3     
       STA    PF0     
       LDA    $C4     
       STA    PF1     
       LDA    #$00    
       STA    PF2     
       DEX            
       DEY            
       LDA    L3500,X 
       STA    WSYNC   
       STA    COLUPF  
       LDA    #$00    
       STA    PF0     
       CPY    $BB     
       BNE    L319C   
       LDA    #$02    
L319C: STA    ENAM0   
       LDA    $C1     
       STA    PF1     
       LDA    $C2     
       STA    PF2     
       LDA    $C3     
       STA    PF0     
       LDA    $C4     
       STA    PF1     
       STA    PF1     
       LDA    #$00    
       LDA    #$00    
       STA    PF2     
       DEY            
       CPY    #$5A    
       BCS    L3162   
       STY    $96     
       STA    PF0     
       NOP            
       STA    PF1     
       CPY    $BB     
       BNE    L31C8   
       LDA    #$02    
L31C8: STA    WSYNC   
       STA    ENAM0   
       LDA    L3E43,X 
       STA    GRP1    
       LDA    $C6     
       STA    HMP0    
       AND    #$0F    
       TAY            
L31D8: DEY            
       BPL    L31D8   
       STA    RESP0   
       DEC    $96     
       STA    WSYNC   
       STA    HMOVE   
       DEX            
       LDA    #$00    
       STA    PF1     
       STA    PF2     
       STA    REFP0   
       JSR    L350F   
       LDY    $96     
       DEY            
       LDA    #$2F    
       STA    COLUPF  
L31F6: STA    WSYNC   
       LDA    L3E43,X 
       STA    GRP1    
       LDA    #$00    
       CPY    $BB     
       BNE    L3205   
       LDA    #$02    
L3205: STA    ENAM0   
       LDA    #$00    
       CPY    $98     
       BNE    L320F   
       LDA    #$02    
L320F: STA    ENABL   
       DEX            
       DEY            
       STA    WSYNC   
       LDA    #$00    
       CPY    $BB     
       BNE    L321D   
       LDA    #$02    
L321D: STA    ENAM0   
       STY    $96     
       TYA            
       SEC            
       SBC    $C5     
       TAY            
       AND    #$F8    
       BEQ    L322E   
       LDA    #$00    
       BEQ    L3230   
L322E: LDA    ($C7),Y 
L3230: STA    GRP0    
       DEC    $96     
       LDY    $96     
       CPY    #$10    
       BPL    L31F6   
       STA    WSYNC   
       JSR    L350F   
       LDA    #$26    
       STA    COLUPF  
       LDA    #$00    
       STA    GRP1    
       LDA    #$21    
       STA    CTRLPF  
       LDA    #$6A    
       STA    COLUPF  
       LDA    #$60    
       STA    PF0     
       DEC    $96     
L3255: STA    WSYNC   
       JSR    L350F   
       LDA    $96     
       SEC            
       SBC    $C5     
       TAY            
       AND    #$F8    
       BEQ    L3268   
       LDA    #$00    
       BEQ    L326A   
L3268: LDA    ($C7),Y 
L326A: STA    $B1     
       DEC    $96     
       STA    WSYNC   
       LDA    $B1     
       STA    GRP0    
       JSR    L350F   
       DEC    $96     
       LDA    $96     
       CMP    #$0A    
       BPL    L3255   
       LDA    #$96    
       LDX    #$01    
       JSR    L3395   
       LDA    #$F0    
       STA    PF0     
       LDA    #$2A    
       STA    COLUPF  
       LDA    #$00    
       STA    ENAM0   
       STA    ENAM1   
       STA    WSYNC   
       LDX    #$09    
L3298: LDA    L3F00,X 
       STA    GRP1    
       LDA    L3F09,X 
       STA    COLUP1  
       DEX            
       LDA    $96     
       SEC            
       SBC    $C5     
       TAY            
       AND    #$F8    
       BEQ    L32B1   
       LDA    #$00    
       BEQ    L32B3   
L32B1: LDA    ($C7),Y 
L32B3: STA    $B1     
       DEC    $96     
       STA    WSYNC   
       LDA    L3F00,X 
       STA    GRP1    
       LDA    L3F09,X 
       STA    COLUP1  
       LDA    $B1     
       STA    GRP0    
       STA    WSYNC   
       DEX            
       DEC    $96     
       BPL    L3298   
       LDA    #$C0    
       STA    PF2     
       LDX    #$00    
       STX    GRP1    
       STX    GRP0    
       LDY    #$00    
L32DA: DEY            
       BPL    L32DA   
       STY    RESP0   
       LDY    #$02    
L32E1: DEY            
       BPL    L32E1   
       STY    RESP1   
       STX    HMP0    
       LDA    #$C0    
       STA    HMP1    
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDY    #$0A    
       LDA    #$2F    
       STA    COLUP0  
       STA    COLUP1  
       STA    WSYNC   
       STA    HMOVE   
L32FE: LDA    ($A9),Y 
       TAX            
       LDA    ($A5),Y 
       STA    GRP0    
       LDA    ($AB),Y 
       STA    GRP1    
       LDA    ($A7),Y 
       NOP            
       STA    GRP0    
       LDA    RESP0   
       STX    GRP0    
       LDA    ($AF),Y 
       TAX            
       LDA    ($AD),Y 
       STA    GRP1    
       NOP            
       STX    GRP1    
       DEY            
       STA    WSYNC   
       BNE    L32FE   
       STY    PF0     
       STY    PF1     
       STY    PF2     
       STY    GRP0    
       STY    GRP1    
       STY    GRP0    
       LDA    #$3A    
       STA    COLUBK  
       STA    WSYNC   
       STA    WSYNC   
       STA    HMCLR   
       LDA    #$00    
       STA    REFP0   
       JSR    L33B4   
       LDA    #$A6    
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$47    
       JSR    L33A8   
       STA    WSYNC   
       JSR    L33D3   
       LDA    #$09    
       STA    TIM64T  
       STA    WSYNC   
       LDA    #$48    
       STA    COLUP0  
       STA    COLUP1  
       JSR    L371D   
       STA    WSYNC   
L3360: LDA    INTIM   
       BNE    L3360   
       JSR    L33D3   
       LDA    #$00    
       STA    VDELP0  
       STA    VDELP1  
       STA    WSYNC   
       LDX    #$30    
L3372: STA    WSYNC   
       DEX            
       BNE    L3372   
       LDA    #$00    
       STA    WSYNC   
       STA    COLUBK  
       JMP    L301E   
L3380: LDY    #$FF    
       SEC            
L3383: INY            
       SBC    #$0F    
       BCS    L3383   
       STY    $B1     
       EOR    #$FF    
       ADC    #$09    
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    $B1     
       RTS            

L3395: STA    WSYNC   
       STA    HMCLR   
       STA    HMP0,X  
       AND    #$0F    
       TAY            
L339E: DEY            
       BNE    L339E   
       STA    RESP0,X 
       STA    WSYNC   
       STA    HMOVE   
       RTS            

L33A8: LDX    #$0A    
       SEC            
L33AB: STA    $99,X   
       SBC    #$08    
       DEX            
       DEX            
       BPL    L33AB   
       RTS            

L33B4: LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    VDELP0  
       STA    VDELP1  
       LDA    #$F0    
       STA    HMP0    
       LDY    #$07    
       STA    WSYNC   
L33C6: DEY            
       BNE    L33C6   
       NOP            
       STA    RESP0   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       RTS            

L33D3: LDA    #$06    
       STA    $B2     
L33D7: LDY    $B2     
       LDA    ($99),Y 
       STA    GRP0    
       STA    WSYNC   
       LDA    ($9B),Y 
       STA    GRP1    
       LDA    ($9D),Y 
       STA    GRP0    
       LDA    ($9F),Y 
       STA    $B1     
       LDA    ($A1),Y 
       TAX            
       LDA    ($A3),Y 
       TAY            
       LDA    $B1     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STY    GRP0    
       DEC    $B2     
       BPL    L33D7   
       STA    WSYNC   
       LDY    #$00    
       STY    GRP0    
       STY    GRP1    
       STY    GRP0    
       RTS            

L340A: LDY    #$07    
       BNE    L3413   
L340E: LDY    $93     
       DEY            
       BMI    L340A   
L3413: STY    $93     
       LDA    L3F13,Y 
       STA    $87,X   
       JMP    L3491   
L341D: LDA    #$08    
       EOR    $DC     
       STA    $DC     
       JMP    L342C   
L3426: LDA    $95     
       AND    #$03    
       BEQ    L341D   
L342C: LDA    $DC     
       STA    REFP0   
       LDX    #$02    
L3432: LDA    $8A,X   
       CMP    #$E4    
       BNE    L3453   
       LDA    $8F,X   
       BNE    L3444   
       LDA    #$43    
       STA    $8A,X   
       LDA    #$30    
       STA    $8F,X   
L3444: DEC    $8F,X   
       JMP    L3491   
L3449: LDA    #$78    
       STA    $84,X   
       STA    $81,X   
       LDA    #$10    
       BNE    L346B   
L3453: CMP    #$43    
       BNE    L3476   
       LDA    $8F,X   
       BNE    L3444   
       LDA    $95     
       AND    #$01    
       BNE    L3449   
       LDA    #$30    
       STA    $81,X   
       LDA    #$04    
       STA    $84,X   
       LDA    #$70    
L346B: STA    $87,X   
       LDA    $92     
       BEQ    L3476   
       JSR    L39D7   
       STA    $8A,X   
L3476: LDA    $D0     
       AND    $95     
       BNE    L3491   
       LDA    $84,X   
       CMP    $87,X   
       BEQ    L340E   
       BCC    L3488   
       SBC    #$01    
       BNE    L348A   
L3488: ADC    #$01    
L348A: STA    $84,X   
       JSR    L3380   
       STA    $81,X   
L3491: DEX            
       BPL    L3432   
       RTS            

L3495: LDA    $95     
       AND    #$01    
       BEQ    L34BF   
       TYA            
       SEC            
       SBC    #$04    
       JMP    L34C3   
L34A2: LDA    $D1     
       AND    $95     
       BNE    L3501   
       LDA    $C5     
       CMP    #$58    
       BCC    L34B8   
       LDY    #$EC    
       STY    $C7     
       LDX    $8A     
       CPX    #$43    
       BEQ    L3501   
L34B8: TAY            
       LDA    $D4     
       CMP    #$05    
       BEQ    L3495   
L34BF: TYA            
       SEC            
       SBC    #$02    
L34C3: STA    $C5     
       BMI    L34CC   
       CMP    #$54    
       BEQ    L34D4   
       RTS            

L34CC: LDX    $D4     
       LDA    L3F81,X 
       STA    $C5     
       RTS            

L34D4: LDA    $84     
       CMP    #$10    
       BCC    L350A   
       CMP    #$40    
       BCS    L3502   
L34DE: LSR            
       LSR            
       LSR            
       LSR            
       BCS    L350A   
       SBC    #$00    
       LDY    $D6     
       BNE    L34F2   
       ASL            
       TAX            
       LDA    $A5,X   
       CMP    #$00    
       BNE    L350A   
L34F2: LDA    $81     
       STA    $C6     
       LDA    $CB     
       CMP    #$04    
       BEQ    L3501   
       LDX    #$02    
       JSR    L3AB9   
L3501: RTS            

L3502: CMP    #$4C    
       BCC    L350A   
       SBC    #$0C    
       BNE    L34DE   
L350A: LDA    #$60    
       STA    $C5     
       RTS            

L350F: LDA    $BB     
       CMP    $96     
       BNE    L3519   
       LDA    #$02    
       BNE    L351B   
L3519: LDA    #$00    
L351B: STA    ENAM0   
       RTS            

L351E: LDA    $D6     
       BNE    L3539   
       LDA    $D4     
       CMP    #$01    
       BCS    L3532   
       LDA    #$00    
       LDX    #$03    
L352C: STA    $C1,X   
       DEX            
       BPL    L352C   
       RTS            

L3532: BIT    CXM0FB  
       BMI    L353A   
       JMP    L3577   
L3539: RTS            

L353A: LDA    $BF     
       BNE    L3574   
       LDA    $D4     
       CMP    #$03    
       BCS    L355F   
       LDA    $BC     
       SEC            
       SBC    #$3D    
       LSR            
       LSR            
       TAY            
       LDA    L3F1B,Y 
       CPY    #$10    
       BCS    L3562   
       CPY    #$0C    
       BCS    L3569   
       CPY    #$04    
       BCS    L3570   
       AND    $C1     
       STA    $C1     
L355F: JMP    L36B2   
L3562: AND    $C4     
       STA    $C4     
       JMP    L36B2   
L3569: AND    $C3     
       STA    $C3     
       JMP    L36B2   
L3570: AND    $C2     
       STA    $C2     
L3574: JMP    L36B2   
L3577: LDA    $C5     
       CMP    #$54    
       BNE    L3539   
       LDA    $84     
       SEC            
       SBC    #$10    
       LSR            
       LSR            
       TAY            
       LDA    L3F1B,Y 
       EOR    #$FF    
       LDX    #$00    
       CPY    #$04    
       BCC    L35A0   
       INX            
       CPY    #$0C    
       BCC    L359B   
       INX            
       CPY    #$10    
       BCC    L359B   
       INX            
L359B: ORA    $C1,X   
       STA    $C1,X   
       RTS            

L35A0: AND    #$0F    
       JMP    L359B   
L35A5: LDX    #$01    
       JSR    L3AB9   
       LDA    $B5     
       BEQ    L35BC   
L35AE: LDX    #$80    
       STX    $BF     
       LDA    $BC     
       CLC            
       ADC    #$0E    
       STA    $BC     
       JMP    L369F   
L35BC: LDA    #$40    
       STA    $BF     
       LDA    $BC     
       SEC            
       SBC    #$0E    
       STA    $BC     
       JMP    L369F   
L35CA: JSR    L36C7   
       STA    $B3     
       STA    $B5     
L35D1: LDA    $B3     
       CMP    $B4     
       BEQ    L35DF   
       BCC    L35E5   
       JSR    L36DF   
       JMP    L365B   
L35DF: JSR    L36DF   
       JMP    L3697   
L35E5: JSR    L36D7   
       SEC            
       SBC    #$07    
       STA    $99     
       LDA    $B3     
       STA    $9B     
       JSR    L37F2   
       LDA    $B4     
       STA    $9B     
       JSR    L37CC   
       LDA    $9D     
       LDX    $B5     
       BNE    L3607   
       CLC            
       ADC    #$6C    
       JMP    L360C   
L3607: LDA    #$6C    
       SEC            
       SBC    $9D     
L360C: STA    $BC     
       JMP    L369F   
L3611: LDA    $BB     
       STA    $BD     
       LDA    $BC     
       STA    $BE     
       BIT    CXM0P   
       BMI    L35A5   
       BIT    $BF     
       BMI    L35AE   
       BVS    L35BC   
       BIT    INPT4   
       BMI    L3683   
       LDA    $BB     
       CMP    #$07    
       BNE    L364C   
       LDA    $CB     
       CMP    #$04    
       BEQ    L3693   
       CMP    #$03    
       BEQ    L363C   
       LDX    #$00    
       JSR    L3AB9   
L363C: LDA    $98     
       SEC            
       SBC    #$07    
       STA    $B4     
       LDA    $97     
       SEC            
       SBC    #$6A    
       BMI    L35CA   
       STA    $B3     
L364C: LDX    $B5     
       BNE    L35D1   
       LDA    $B3     
       CMP    $B4     
       BEQ    L3694   
       BCC    L35E5   
       JSR    L36CF   
L365B: LDA    $BC     
       SEC            
       SBC    #$6C    
       BPL    L3665   
       JSR    L36C7   
L3665: STA    $99     
       LDA    $B4     
       STA    $9B     
       JSR    L37F2   
       LDA    $B3     
       STA    $9B     
       JSR    L37CC   
       LDA    #$07    
       CLC            
       ADC    $9D     
       AND    #$FE    
       STA    $BB     
       LDA    $BC     
       JMP    L369F   
L3683: LDA    $BB     
       CMP    #$07    
       BNE    L364C   
       BEQ    L3693   
L368B: JSR    L3380   
       LDX    #$02    
       JSR    L3395   
L3693: RTS            

L3694: JSR    L36CF   
L3697: JSR    L36D7   
       LDA    $BC     
       JMP    L369F   
L369F: CMP    #$B9    
       BCS    L36B2   
       CMP    #$20    
       BCC    L36B2   
       TAX            
       LDA    $BB     
       CMP    #$99    
       BCS    L36B2   
       TXA            
       JMP    L368B   
L36B2: LDA    #$07    
       STA    $BB     
       STA    $BD     
       LDA    #$00    
       STA    $BF     
       STA    $B5     
       LDA    #$6C    
       STA    $BC     
       STA    $BE     
       JMP    L3693   
L36C7: STA    $9D     
       LDA    #$00    
       SEC            
       SBC    $9D     
       RTS            

L36CF: LDA    $BC     
       CLC            
       ADC    $D3     
       STA    $BC     
       RTS            

L36D7: LDA    $BB     
       CLC            
       ADC    $D3     
       STA    $BB     
       RTS            

L36DF: LDA    $BC     
       SEC            
       SBC    $D3     
       STA    $BC     
       RTS            

L36E7: .byte $A5,$BB,$38,$E5,$D3,$85,$BB,$60
L36EF: LDX    #$00    
       SED            
       CLC            
       LDA    $B8,X   
       ADC    $B1     
       STA    $B8,X   
       LDA    $B7,X   
       ADC    $B2     
       STA    $B7,X   
       LDA    $B6,X   
       ADC    #$00    
       STA    $B6,X   
       CLD            
       RTS            

L3707: SED            
       SEC            
       LDA    $B8     
       SBC    $B1     
       STA    $B8     
       LDA    $B7     
       SBC    $B2     
       STA    $B7     
       LDA    $B6     
       SBC    #$00    
       STA    $B6     
       CLD            
       RTS            

L371D: LDA    #$00    
       TAX            
       TAY            
       STA    $B9     
L3723: STX    $BA     
       LDA.wy $00B6,Y 
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       BEQ    L3731   
       INC    $B9     
L3731: LDA    $B9     
       BNE    L3737   
       LDX    #$0A    
L3737: LDA    L3DAD,X 
       LDX    $BA     
       STA    $99,X   
       INX            
       INX            
       STX    $BA     
       LDA.wy $00B6,Y 
       AND    #$0F    
       TAX            
       BEQ    L374C   
       INC    $B9     
L374C: LDA    $B9     
       BNE    L3752   
       LDX    #$0A    
L3752: LDA    L3DAD,X 
       LDX    $BA     
       STA    $99,X   
       INX            
       INX            
       INY            
       CPY    #$03    
       BCC    L3723   
       LDA    $B9     
       BNE    L3768   
       LDA    #$5D    
       STA    $A3     
L3768: LDA    #$3D    
       LDX    #$0A    
L376C: STA    $9A,X   
       DEX            
       DEX            
       BPL    L376C   
       RTS            

L3773: LDA    SWCHA   
       ASL            
       BCC    L378F   
L3779: ASL            
       BCC    L37A0   
L377C: ASL            
       BCC    L37B2   
L377F: ASL            
       BCS    L37C1   
       LDA    $98     
       CMP    #$54    
       BCS    L378C   
       INC    $98     
       INC    $98     
L378C: JMP    L37C1   
L378F: TAX            
       LDA    $97     
       CMP    #$9A    
       BPL    L379C   
       LDA    $97     
       ADC    #$03    
       STA    $97     
L379C: TXA            
       JMP    L3779   
L37A0: TAX            
       LDA    $97     
       CMP    #$40    
       BMI    L37AE   
       LDA    $97     
       SEC            
       SBC    #$03    
       STA    $97     
L37AE: TXA            
       JMP    L377C   
L37B2: TAX            
       LDA    $98     
       CMP    #$13    
       BMI    L37BD   
       DEC    $98     
       DEC    $98     
L37BD: TXA            
       JMP    L377F   
L37C1: LDA    $97     
       LDX    #$04    
       JSR    L3380   
       JSR    L3395   
       RTS            

L37CC: LDA    #$00    
       STA    $99     
       STA    $9A     
       LDX    #$10    
L37D4: ASL    $9D     
       ROL    $9E     
       ROL    $99     
       ROL    $9A     
       LDA    $99     
       SEC            
       SBC    $9B     
       TAY            
       LDA    $9A     
       SBC    $9C     
       BCC    L37EE   
       INC    $9D     
       STA    $9A     
       STY    $99     
L37EE: DEX            
       BNE    L37D4   
       RTS            

L37F2: LDA    #$00    
       LDX    #$08    
L37F6: LSR    $9B     
       BCC    L37FD   
       CLC            
       ADC    $99     
L37FD: LSR            
       ROR    $9D     
       DEX            
       BNE    L37F6   
       STA    $9E     
       RTS            

L3806: LDX    #$06    
       LDA    #$00    
L380A: STA    $99,X   
       DEX            
       BPL    L380A   
       RTS            

L3810: LDA    #$02    
       STA    $80     
       LDA    #$9E    
       STA    COLUP1  
       LDA    $8C     
       STA    $8D     
       LDA    #$3D    
       LDX    #$16    
L3820: STA    $9A,X   
       DEX            
       DEX            
       BPL    L3820   
       RTS            

L3827: CLC            
       ADC    #$04    
       SEC            
       SBC    $B9     
       BMI    L38A8   
       CMP    #$05    
       BCS    L38A8   
       LDA    $C5     
       CLC            
       ADC    #$09    
       SEC            
       SBC    $BA     
       BMI    L38A8   
       CMP    #$08    
       JMP    L38A6   
L3842: LDA    CXM0P   
       ASL            
       ASL            
       BCS    L38C7   
       LDA    $BC     
       CLC            
       ADC    $BE     
       ROR            
       SEC            
       SBC    #$2B    
       STA    $B9     
       LDA    $BB     
L3855: CLC            
       ADC    $BD     
       ROR            
       STA    $BA     
       LDA    #$80    
       STA    $B1     
       LDX    #$02    
L3861: LDA    $84,X   
       CLC            
       ADC    #$07    
       SEC            
       SBC    $B9     
       BMI    L387A   
       CMP    #$07    
       BCS    L387A   
       LDA    $B1     
       SEC            
       SBC    $BA     
       BMI    L387A   
       CMP    #$0A    
       BCC    L38EC   
L387A: LDA    $B1     
       SEC            
       SBC    #$0A    
       STA    $B1     
       DEX            
       BPL    L3861   
       LDA    $C6     
       JSR    L39E8   
       LDY    $C5     
       CPY    #$20    
       BCS    L3827   
       ADC    #$08    
       SEC            
       SBC    $B9     
       BMI    L38A8   
       CMP    #$10    
       BCS    L38A8   
       LDA    $C5     
       CLC            
       ADC    #$0E    
       SEC            
       SBC    $BA     
       BMI    L38A8   
       CMP    #$14    
L38A6: BCC    L38D5   
L38A8: LDA    $DA     
       BNE    L38C2   
       LDA    #$FF    
       STA    $DA     
       LDA    $B9     
       CLC            
       ADC    $BE     
       ADC    #$2B    
       ROR            
       SEC            
       SBC    #$2B    
       STA    $B9     
       LDA    $BA     
       JMP    L3855   
L38C2: LDA    #$00    
       STA    $DA     
       RTS            

L38C7: LDX    #$02    
       LDA    #$80    
L38CB: SEC            
       SBC    #$0A    
       CMP    $BB     
       BCC    L38EC   
       DEX            
       BPL    L38CB   
L38D5: LDA    $C5     
       CMP    #$52    
       BCS    L38C2   
       LDA    $C7     
       CMP    #$E4    
       BEQ    L38C2   
       CMP    #$43    
       BEQ    L38C2   
       LDA    #$E4    
       STA    $C7     
       JMP    L36B2   
L38EC: LDA    $8A,X   
       CMP    #$E4    
       BEQ    L38C2   
       CMP    #$43    
       BEQ    L38C2   
       LDA    #$E4    
       STA    $8A,X   
       STA    $C9     
       LDA    #$20    
       STA    $8F,X   
       LDA    $CB     
       CMP    #$04    
       BEQ    L3928   
       LDA    #$90    
       STA    $B1     
       LDA    #$00    
       STA    $B2     
       JSR    L36EF   
       LDA    $92     
       LDY    #$02    
L3915: CMP    L3F87,Y 
       BEQ    L391F   
       DEY            
       BPL    L3915   
       BMI    L3922   
L391F: JSR    L3B8A   
L3922: LDA    $92     
       BEQ    L3928   
       DEC    $92     
L3928: JMP    L36B2   
L392B: LDA    SWCHB   
       ROR            
       RTS            

L3930: JSR    L392B   
       BCC    L3974   
       LDA    $D6     
       BEQ    L3942   
       LDY    $D5     
       DEY            
       STY    $D4     
       BIT    INPT4   
       BPL    L3974   
L3942: RTS            

L3943: LDA    SWCHB   
       ROR            
       ROR            
       ROR            
       ROR            
       BCC    L394D   
       RTS            

L394D: BIT    SWCHB   
       BMI    L3972   
       LDA    SWCHA   
       ROR            
       BCS    L3972   
       LDA    $D5     
       CMP    #$06    
       BNE    L3972   
       LDA    $D6     
       BEQ    L3972   
       BIT    INPT5   
       BMI    L3972   
       LDA    #$B7    
       STA    $A5     
       LDA    #$C1    
       STA    $A7     
       LDA    #$CB    
       STA    $A9     
L3972: CLC            
       RTS            

L3974: LDX    #$40    
       STX    $98     
       STX    $94     
       STX    $84     
       STX    $89     
       DEX            
       STX    $CE     
       STX    $86     
       STX    $88     
       JSR    L3BED   
       LDA    #$3E    
       STA    $8E     
       JSR    L39D7   
       STA    $8A     
       STA    $8B     
       STA    $8C     
       JSR    L39DD   
       INX            
       STX    $C3     
       STX    $C2     
       STX    $C4     
       LDA    #$04    
       STA    $DB     
       ASL            
       STA    $B7     
       LDA    #$0F    
       STA    $C1     
       LDA    #$3E    
       STA    $C8     
       LDA    #$EC    
       STA    $C7     
       LDA    #$70    
       STA    $97     
       STA    $C5     
       STA    $85     
       STA    $87     
       JSR    L3AFA   
       STA    NUSIZ0  
       STA    $C9     
       STA    $CA     
       STA    $D6     
       STA    $B8     
       STA    $B6     
       STA    $D9     
       STA    $CB     
       LDX    $D5     
       DEX            
       STX    $D4     
       LDA    #$01    
       RTS            

L39D7: LDY    $D4     
       LDA    L3E3D,Y 
       RTS            

L39DD: LDA    #$00    
       LDX    #$0A    
L39E1: STA    $A5,X   
       DEX            
       DEX            
       BPL    L39E1   
       RTS            

L39E8: STA    $B1     
       AND    #$0F    
       TAY            
       LDA    $B1     
       CLC            
       ADC    #$70    
       LSR            
       LSR            
       LSR            
       LSR            
       EOR    #$FF    
L39F8: CLC            
       ADC    #$0F    
       DEY            
       BPL    L39F8   
       RTS            

L39FF: LDA    $C5     
       CMP    #$05    
       BCC    L3A06   
       RTS            

L3A06: LDA    $C7     
       CMP    #$E4    
       BNE    L3A0D   
       RTS            

L3A0D: LDA    $C6     
       JSR    L39E8   
       CMP    #$40    
       BCS    L3A42   
L3A16: LSR            
       LSR            
       LSR            
       LSR            
       BCS    L3A46   
       SBC    #$00    
       ASL            
       TAX            
       STX    $CE     
       LDA    #$0A    
       STA    $CF     
       STA    $C9     
       LDA    #$0A    
       STA    $A5,X   
       LDA    $D6     
       BNE    L3A46   
       LDY    $CB     
       CPY    #$04    
       BEQ    L3A46   
       STA    $B1     
       LDA    #$02    
       STA    $B2     
       JSR    L3707   
       JMP    L34CC   
L3A42: CMP    #$4C    
       BCS    L3A47   
L3A46: RTS            

L3A47: SBC    #$0C    
       JMP    L3A16   
L3A4C: LDX    $CE     
       BPL    L3A51   
       RTS            

L3A51: LDA    $CF     
       BNE    L3A63   
       LDA    $A5,X   
       CMP    #$0A    
       BNE    L3A66   
       LDA    #$14    
       STA    $A5,X   
       LDA    #$0A    
       STA    $CF     
L3A63: DEC    $CF     
       RTS            

L3A66: LDA    #$FF    
       STA    $CE     
       LDA    #$4E    
       STA    $A5,X   
       RTS            

L3A6F: LDY    #$00    
       LDA    $CB     
       CMP    #$04    
       BEQ    L3AA2   
       LDA    $D6     
       BNE    L3A85   
       LDA    $B6     
       BNE    L3A85   
       LDA    $B7     
       CMP    #$02    
       BCC    L3A91   
L3A85: LDX    #$0A    
L3A87: LDA    $A5,X   
       CMP    #$4E    
       BNE    L3A9A   
       DEX            
       DEX            
       BPL    L3A87   
L3A91: LDA    $D6     
       BNE    L3A9E   
       LDX    #$04    
       JSR    L3AB9   
L3A9A: RTS            

L3A9B: .byte $4C,$A9,$3B
L3A9E: JSR    L39DD   
       RTS            

L3AA2: LDX    $CC     
       BEQ    L3AB4   
       LDA    $95     
       AND    #$03    
       BNE    L3AB1   
       LDA    #$67    
       STA    $D9     
       RTS            

L3AB1: STY    $D9     
       RTS            

L3AB4: STX    $D9     
       STA    $D6     
       RTS            

L3AB9: STX    $CB     
       LDA    L3F7B,X 
       STA    $CD     
       LDA    L3F75,X 
       STA    $CC     
       RTS            

L3AC6: LDA    $D6     
       BNE    L3AFA   
       LDX    $CB     
       LDA    L3F63,X 
       AND    $95     
       BNE    L3AF5   
       LDY    $CC     
       BEQ    L3AF6   
       DEY            
       CPY    $CD     
       BNE    L3ADE   
       LDY    #$00    
L3ADE: STY    $CC     
       LDA    L3F69,X 
       STA    AUDC1   
       LDA    L3F6F,X 
       CPX    #$05    
       BCC    L3AF1   
       STA    $B1     
       TYA            
       LDY    $B1     
L3AF1: STA    AUDV1   
       STY    AUDF1   
L3AF5: RTS            

L3AF6: LDA    #$00    
       BEQ    L3AF1   
L3AFA: LDA    #$00    
       STA    AUDV0   
       STA    AUDV1   
       STA    $D9     
       RTS            

L3B03: LDA    $D6     
       BNE    L3AFA   
       JSR    L3943   
       BCC    L3AFA   
       JSR    L392B   
       BCC    L3AFA   
       LDX    $CA     
       BNE    L3B34   
       LDA    $C9     
       BNE    L3B2E   
       LDA    #$04    
       STA    AUDC0   
       LDY    $DB     
       CPY    #$0C    
       BNE    L3B26   
       STA    $DB     
       TAY            
L3B26: STY    AUDF0   
       LSR            
       STA    AUDV0   
       INC    $DB     
L3B2D: RTS            

L3B2E: LDX    #$12    
       STX    $CA     
       BNE    L3B3A   
L3B34: LDA    $95     
       AND    #$07    
       BNE    L3B2D   
L3B3A: LDA    #$1F    
       STA    AUDF0   
       LDY    #$08    
       STY    AUDC0   
       LDA    L3F34,X 
       STA    AUDV0   
       DEX            
       STX    $CA     
       STX    $C9     
       RTS            

L3B4D: LDA    $CB     
       CMP    #$04    
       BEQ    L3B89   
       CMP    #$03    
       BNE    L3B60   
       LDA    $CC     
       BNE    L3BA8   
       STA    $CB     
       JMP    L3BA9   
L3B60: LDX    $D4     
       LDA    #$3F    
       STA    $9A     
       LDA    L3F5D,X 
       STA    $99     
       LDY    #$03    
L3B6D: LDA    ($99),Y 
       STA.wy $00D0,Y 
       DEY            
       BPL    L3B6D   
       LDA    $92     
       BNE    L3B89   
       LDX    #$02    
L3B7B: LDA    $8A,X   
       CMP    #$43    
       BNE    L3B89   
       DEX            
       BPL    L3B7B   
       LDX    #$03    
       JSR    L3AB9   
L3B89: RTS            

L3B8A: LDA    $95     
       AND    #$06    
       TAX            
       LDA    #$4E    
       CMP    $A5,X   
       BEQ    L3B9F   
       LDX    #$0A    
L3B97: CMP    $A5,X   
       BEQ    L3B9F   
       DEX            
       DEX            
       BPL    L3B97   
L3B9F: LDA    #$00    
       STA    $A5,X   
       LDX    #$05    
       JSR    L3AB9   
L3BA8: RTS            

L3BA9: LDX    #$0F    
       STX    $C1     
       LDX    #$FF    
       STX    $C2     
       STX    $C3     
       STX    $C4     
       JSR    L3B8A   
       LDY    #$00    
       LDX    #$0A    
       LDA    #$00    
L3BBE: CMP    $A5,X   
       BEQ    L3BEA   
L3BC2: DEX            
       DEX            
       BPL    L3BBE   
       LDA    #$01    
       LDX    $D4     
       BEQ    L3BD0   
L3BCC: ASL            
       DEX            
       BNE    L3BCC   
L3BD0: STX    $B1     
       STA    $B2     
L3BD4: JSR    L36EF   
       DEY            
       BNE    L3BD4   
       LDA    #$60    
       STA    $C5     
       LDA    $D4     
       CMP    #$05    
       BCS    L3BE6   
       INC    $D4     
L3BE6: JSR    L3BED   
       RTS            

L3BEA: INY            
       BNE    L3BC2   
L3BED: BIT    SWCHB   
       BVC    L3BF8   
       LDA    $D4     
       CMP    #$02    
       BCS    L3BFD   
L3BF8: LDA    #$06    
L3BFA: STA    $92     
       RTS            

L3BFD: LDA    #$0E    
       BNE    L3BFA   
L3C01: LDY    #$00    
       LDA    SWCHB   
       LSR            
       LSR            
       BCS    L3C36   
       LDA    $D8     
       BEQ    L3C12   
       DEC    $D8     
       BNE    L3C2C   
L3C12: LDA    #$1F    
       STA    $D8     
       STA    $D6     
       STY    $CB     
       STY    $B7     
       STY    $B6     
       INC    $D5     
       LDA    $D5     
       STA    $D4     
       DEC    $D4     
       CMP    #$07    
       BEQ    L3C2D   
       STA    $B8     
L3C2C: RTS            

L3C2D: STY    $D4     
       LDA    #$01    
       STA    $B8     
       STA    $D5     
       RTS            

L3C36: STY    $D8     
       RTS            

L3C39: LDA    $95     
       AND    #$7F    
       BNE    L3C57   
       LDX    #$02    
L3C41: LDA    $8F,X   
       BNE    L3C57   
       DEX            
       BNE    L3C41   
       LDX    #$09    
L3C4A: LDA    $81,X   
       LDY    $82,X   
       STA    $82,X   
       STY    $81,X   
       DEX            
       DEX            
       DEX            
       BPL    L3C4A   
L3C57: RTS            

L3C58: LDA    #$30    
       STA    $9A     
L3C5C: LDY    #$00    
       LDA    ($99),Y 
       CLC            
       ADC    $9B     
       STA    $9B     
       INC    $99     
       BNE    L3C5C   
       INC    $9A     
       LDA    $9A     
       CMP    #$40    
       BNE    L3C5C   
       LDA    L3FF0   
       CMP    $9B     
       BNE    L3C79   
       RTS            

L3C79: LDA    #$09    
       STA    AUDC0   
       STA    AUDF0   
       STA    AUDV0   
       JMP    L3C79   
L3C84: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$F9,$B9,$B9,$FF
       .byte $AB,$AB,$FF,$EF,$67,$23,$00,$00,$18,$42,$00,$52,$00,$00,$00,$00
       .byte $14,$18,$00,$18,$18,$81,$99,$5A,$81,$5A,$66,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$22,$22,$52,$52,$52,$88,$8A,$00,$6E,$A8,$AE,$AA,$6E
       .byte $20,$20,$00,$43,$A4,$A4,$A5,$44,$04,$03,$00,$3A,$A2,$BA,$AA,$3B
       .byte $80,$00,$00,$AE,$A2,$AE,$A8,$EE,$00,$00,$00,$FF,$6D,$01,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$3C,$66,$66,$66,$66,$66,$3C
       .byte $00,$7E,$18,$18,$18,$18,$18,$78,$38,$7E,$60,$60,$3C,$06,$46,$7C
       .byte $00,$3C,$46,$06,$0C,$06,$46,$3C,$00,$0C,$0C,$7E,$4C,$2C,$1C,$0C
       .byte $00,$7C,$46,$06,$7C,$60,$60,$7E,$00,$3C,$66,$66,$7C,$60,$62,$3C
       .byte $00,$18,$18,$08,$04,$02,$62,$7E,$00,$3C,$66,$66,$3C,$66,$66,$3C
       .byte $00,$3C,$46,$06,$3E,$66,$66,$3C,$00
L3DAD: .byte $5D,$65,$6D,$75,$7D,$85,$8D,$95,$9D,$A5,$52,$FF,$FF,$80,$80,$80
       .byte $80,$80,$80,$80,$00,$42,$42,$42,$7E,$66,$24,$18,$00,$00,$00,$18
       .byte $24,$66,$42,$42,$42,$42,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$42,$FF,$D5,$7E,$3C,$18,$00,$00
L3E08: .byte $BE,$A8,$48,$28,$48,$A8,$BE,$BE,$18,$7E,$D5,$D5,$7E,$18,$00,$00
       .byte $00,$FF,$D5,$7E,$3C,$1F,$F8,$F0,$00,$00,$42,$7E,$D5,$FF,$24,$3C
       .byte $00,$00,$00,$DB,$3C,$7E,$D5,$7E,$3C,$00,$00,$00,$24,$7E,$CD,$7E
       .byte $BD,$18,$00,$00,$00
L3E3D: .byte $00,$10,$19,$22,$2B,$34
L3E43: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$66,$66,$66,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$00,$FF,$FF,$FF
       .byte $FF,$FF,$00,$FF,$FF,$FF,$FF,$7E,$7E,$3C,$3C,$3C,$3C,$18,$18,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$81,$00,$08,$22,$22,$08,$00,$81,$00,$18,$12,$3C,$3C,$24,$18
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
L3F00: .byte $FE,$92,$FE,$92,$92,$10,$10,$10,$10
L3F09: .byte $48,$2D,$48,$48,$B8,$2D,$2D,$2D,$2D,$00
L3F13: .byte $10,$78,$35,$60,$25,$50,$30,$15
L3F1B: .byte $07,$0B,$0D,$0E,$FE,$FD,$FB,$F7,$EF,$DF,$BF,$7F,$E0,$D0,$B0,$70
       .byte $7F,$BF,$DF,$EF,$F7,$FB,$FD,$FE,$FE
L3F34: .byte $00,$00,$13,$02,$04,$06,$08,$08,$04,$04,$06,$08,$08,$0A,$0A,$0C
       .byte $0F,$03,$03,$03,$02,$01,$03,$03,$02,$01,$01,$03,$03,$01,$01,$01
       .byte $03,$01,$00,$01,$04,$00,$00,$01,$04
L3F5D: .byte $45,$49,$4D,$51,$55,$59
L3F63: .byte $00,$00,$01,$00,$01,$00
L3F69: .byte $08,$08,$0A,$04,$08,$04
L3F6F: .byte $0E,$0E,$0E,$0E,$0E,$0E
L3F75: .byte $12,$02,$2F,$FF,$5F,$0F
L3F7B: .byte $00,$00,$1F,$7F,$00,$03
L3F81: .byte $7A,$76,$70,$60,$60,$60
L3F87: .byte $0B,$07,$03,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00
L3FF0: .byte $00,$0C,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$30,$00,$30
