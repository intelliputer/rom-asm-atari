; Disassembly of roms/Cosmic Swarm (32 in 1) (PAL).bin
; Disassembled Tue Oct  6 15:21:08 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Cosmic Swarm (32 in 1) (PAL).bin
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
PF0     =  $0D
PF1     =  $0E
PF2     =  $0F
RESP0   =  $10
AUDC0   =  $15
AUDC1   =  $16
AUDF0   =  $17
AUDF1   =  $18
AUDV0   =  $19
AUDV1   =  $1A
GRP0    =  $1B
GRP1    =  $1C
ENAM0   =  $1D
HMP0    =  $20
HMOVE   =  $2A
INPT4   =  $3C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM8T   =  $0295
TIM64T  =  $0296
LF801   =   $F801

       ORG $F800
LF800: STY    $FB     
LF802: NOP            
LF803: STA    $011C   
       JMP    LF84D   
LF809: STY    $FA     
       NOP            
LF80C: DEC    $F9     
       BMI    LF879   
       STA    $011D   
       LDA    #$00    
       STA    PF0     
       STA    $011B   
       BPL    LF826   
LF81C: STA    ENAM0   
       LDA    #$00    
       STA    PF0     
       LDA    ($F3),Y 
       STA    GRP0    
LF826: LDA    $80,X   
       STA    PF1     
       LDA    $96,X   
       STA    PF2     
       LDA    $AC,X   
       STA    PF0     
       LDY    $C2,X   
       STY    PF1     
       AND    #$0F    
       STA    PF2     
LF83A: LDA    #$00    
       LDY    $FB     
       INY            
       STY    $FB     
       STA    PF0     
       BMI    LF800   
       CPY    $F8     
       BPL    LF803   
       LDA    ($F6),Y 
       STA    GRP1    
LF84D: LDA    $F9     
       CMP    $D8     
       PHP            
       LSR            
       LSR            
       TAX            
       LDA    $80,X   
       STA    PF1     
       LDA    $96,X   
       STA    PF2     
       LDA    $AC,X   
       STA    PF0     
       LDY    $C2,X   
       STY    PF1     
       AND    #$0F    
       STA    PF2     
       LDY    $FA     
       PLA            
       INY            
       STY    $FA     
       BMI    LF809   
       CPY    $F5     
       BPL    LF80C   
       DEC    $F9     
       BPL    LF81C   
LF879: LDA    #$00    
       STA    PF0     
       STA    GRP0    
       STA    GRP1    
       STA    ENAM0   
       STA    PF1     
       STA    PF2     
       LDA    $E7     
       AND    #$07    
       TAX            
       LDA    LFEFC,X 
       STA    WSYNC   
       STA    COLUBK  
       LDA    #$57    
       SEC            
       SBC    $D8     
       STA    $D8     
       LDA    #$3E    
       STA    TIM64T  
       JMP    LFBFA   
LF8A2: CPX    #$02    
       ADC    #$10    
       TAY            
       AND    #$0F    
       STA    $F3     
       TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       CLC            
       ADC    $F3     
       CMP    #$0F    
       BCC    LF8BB   
       SBC    #$0F    
       INY            
LF8BB: EOR    #$07    
       ASL            
       STA    WSYNC   
       ASL            
       ASL            
       ASL            
       STA    HMP0,X  
LF8C5: DEY            
       BPL    LF8C5   
       STA    RESP0,X 
       RTS            

LF8CB: AND    #$F0    
       LSR            
       LSR            
       STA    $FD     
       LSR            
       LSR            
       BCC    LF8DB   
LF8D5: AND    #$0F    
       STA    $FD     
       ASL            
       ASL            
LF8DB: ADC    $FD     
       STA    $FD     
       TXA            
       ADC    $FD     
       TAY            
       LDA    LF8F5,Y 
       RTS            

LF8E7: .byte $80
LF8E8: .byte $80,$00,$80,$00,$00,$01,$00,$01,$01,$03,$01,$03,$03
LF8F5: .byte $24,$5A,$5A,$5A,$24,$24,$24,$24,$24,$24,$7E,$42,$7E,$18,$7E,$7E
       .byte $42,$7E,$42,$7E,$5A,$5A,$7E,$42,$42,$7E,$18,$7E,$42,$7E,$7E,$18
       .byte $7E,$5A,$7E,$7E,$42,$42,$42,$42,$7E,$5A,$7E,$5A,$7E,$7E,$5A,$7E
       .byte $42,$7E
LF927: LDA    #$40    
       STA    $F2     
       STA    AUDV0   
       STA    AUDV1   
LF92F: JSR    LFA61   
       LDA    $E7     
       AND    #$07    
       STA    $E7     
LF938: LDX    #$04    
LF93A: LDA    $EA     
       JSR    LF8D5   
       AND    #$0F    
       STA    $F3,X   
       LDA    $E9     
       JSR    LF8D5   
       AND    #$F0    
       STA    $F8,X   
       LDA    $EA     
       JSR    LF8CB   
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    $F3,X   
       STA    $F3,X   
       LDA    $E9     
       JSR    LF8CB   
       LSR            
       LSR            
       LSR            
       LSR            
       ORA    $F8,X   
       STA    $F8,X   
       DEX            
       BPL    LF93A   
       LDA    $E7     
       AND    #$07    
       TAX            
       LDA    LFEF4,X 
       STA    COLUPF  
       LDA    LFEF8,X 
       STA    COLUP0  
       STA    COLUP1  
LF97A: LDA    INTIM   
       BNE    LF97A   
       STA    WSYNC   
       STA    HMOVE   
       STA    VBLANK  
       LDA    LFEEC,X 
       STA    COLUBK  
       TAX            
       LDA    $E8     
       AND    #$70    
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    LF8E7,Y 
       STA    NUSIZ0  
       BPL    LF99C   
       STX    COLUP0  
LF99C: LDA    LF8E8,Y 
       STA    NUSIZ1  
       BPL    LF9A5   
       STX    COLUP1  
LF9A5: LDY    #$00    
LF9A7: STA    WSYNC   
       TYA            
       LSR            
       TAX            
       LDA    $F3,X   
       STA    PF1     
       LDA    $F8,X   
       STA    PF2     
       LDA    LFF77,X 
       STA    GRP0    
       STA    GRP1    
       LDX    #$00    
       INY            
       LDA    $E6     
       STX    PF1     
       AND    #$01    
       CPY    #$0A    
       STX    PF2     
       BMI    LF9A7   
       EOR    #$01    
       STA    $F9     
       LDA    $F2     
       ASL            
       LDA    $E7     
       INC    $E6     
       BNE    LF9D9   
       ADC    #$07    
LF9D9: STA    $E7     
       AND    #$07    
       TAX            
       STX    $F8     
       ASL            
       ADC    $F9     
       TAY            
       LDA    LFA8B,Y 
       STA    COLUP0  
       LDA    LFA8F,Y 
       STA    COLUP1  
       LDA    LFEF0,X 
       STA    COLUPF  
       LDX    $F9     
       LDA    $DE,X   
       LDX    #$00    
       JSR    LF8A2   
       STX    NUSIZ0  
       STX    NUSIZ1  
       LDX    $F9     
       LDA    $E0,X   
       LDX    #$01    
       JSR    LF8A2   
       LDA    $DD     
       INX            
       JSR    LF8A2   
       LDX    $F9     
       LDA    $D9,X   
       EOR    #$FF    
       STA    $FA     
       LDA    $DB,X   
       EOR    #$FF    
       STA    $FB     
       LDY    $E2,X   
       LDA    LFF00,Y 
       STA    $F3     
       LDA    LFF01,Y 
       STA    $F4     
       LDA    LFF02,Y 
       STA    $F5     
       LDY    $E4,X   
       LDX    $F8     
       LDA    LFEFC,X 
       STA    WSYNC   
       STA    HMOVE   
       STA    COLUBK  
       STA    WSYNC   
       ASL    $F9     
       LDA    LFEEC,X 
       STA    COLUBK  
       LDA    LFF00,Y 
       STA    $F6     
       LDA    LFF01,Y 
       STA    $F7     
       LDA    LFF02,Y 
       STA    $F8     
       LDA    #$57    
       STA    $F9     
       SEC            
       SBC    $D8     
       STA    $D8     
       LDX    #$15    
       JMP    LF83A   
LFA61: LDX    INTIM   
       BNE    LFA61   
       LDA    #$2A    
       STA    WSYNC   
       STA    VBLANK  
       STA    VSYNC   
       STA    TIM8T   
       LDA    #$68    
       JSR    LF8A2   
       INX            
       LDA    #$70    
       JSR    LF8A2   
LFA7C: LDA    INTIM   
       BNE    LFA7C   
       STA    WSYNC   
       STA    VSYNC   
       LDA    #$47    
       STA    TIM64T  
       RTS            

LFA8B: .byte $09,$69,$09,$69
LFA8F: .byte $B9,$29,$B9,$29
LFA93: .byte $FE,$FE,$FE,$FF,$00,$01,$02,$02,$02,$02,$02,$01,$00,$FF,$FE,$FE
LFAA3: .byte $00,$01,$02,$02,$02,$02,$02,$01,$00,$FF,$FE,$FE,$FE,$FE,$FE,$FF
LFAB3: .byte $80,$40,$20,$10,$08,$04,$02,$01
LFABB: CMP    #$90    
       BCC    LFAC2   
LFABF: LDA    #$FF    
       RTS            

LFAC2: SBC    #$0F    
       BCC    LFABF   
       AND    #$FC    
       TAX            
       LDA    LFEEB,X 
       TAY            
       AND    #$03    
       ASL            
       ASL            
       TAX            
       LDA    $F3     
       LSR            
       LSR            
       CMP    #$16    
       BCS    LFABF   
       STA    $F9     
       LDA    LFEF2,X 
       SBC    $F9     
       TAX            
       TYA            
       LSR            
       LSR            
       TAY            
LFAE6: RTS            

LFAE7: LDA    $DD     
       SEC            
       SBC    $DF,X   
       BCC    LFAE6   
       CMP    #$08    
       BCS    LFAE6   
       STA    $F9     
       LDA    $D8     
       SEC            
       SBC    $DA,X   
       BMI    LFAE6   
       LDY    $E3,X   
       SEC            
       SBC    LFF02,Y 
       BCS    LFAE6   
       CMP    #$FD    
       BMI    LFB22   
       LDA    $F9     
       CMP    #$02    
       BMI    LFB22   
       CMP    #$06    
       BPL    LFB22   
       TYA            
       AND    #$F8    
       CMP    #$48    
       BNE    LFB22   
       LDA    #$01    
       ORA    $E7     
       STA    $E7     
       LDY    #$03    
       BNE    LFB30   
LFB22: LDA    $E7     
       AND    #$F8    
       STA    $E7     
       JSR    LFBAC   
       LDY    #$01    
       BCS    LFB30   
       INY            
LFB30: LDA    #$D0    
       STA    $D8     
       STA    AUDV0   
       LDA    #$50    
       CMP    $E3,X   
       STA    $E3,X   
       TYA            
       BCS    LFB44   
       RTS            

LFB40: LDA    #$01    
       LDY    #$04    
LFB44: CLC            
       SED            
       ADC    $E9     
       STA    $E9     
       BCC    LFB60   
       ADC    $EA     
       CLD            
       STA    $EA     
       LDA    $E8     
       AND    #$70    
       CMP    #$60    
       BPL    LFB60   
       LDA    #$10    
       TAY            
       ADC    $E8     
       STA    $E8     
LFB60: CLD            
       TYA            
       AND    #$1C    
       ORA    $F2     
       STA    $F2     
       RTS            

LFB69: LDA    #$3C    
       STA    $E2     
       LDA    #$80    
       ORA    $F1     
       STA    $F1     
       RTS            

LFB74: LDY    $E6     
       LDA    LF800,Y 
       CMP    #$98    
       BCC    LFB7F   
       AND    #$7F    
LFB7F: STA    $DF,X   
       LDA    #$E8    
       STA    $DA,X   
       LDA    LF801,Y 
       EOR    $E6     
       EOR    $D9     
       CMP    #$98    
       BCC    LFB92   
       AND    #$7F    
LFB92: STA    $EE,X   
       LDA    LF802,Y 
       EOR    $DE     
       EOR    $DD     
       LSR            
       CMP    #$57    
       BCC    LFBA2   
       AND    #$3F    
LFBA2: SEC            
       SBC    #$0E    
       STA    $EB,X   
       LDA    #$48    
       STA    $E3,X   
       RTS            

LFBAC: LDY    $E3,X   
       TYA            
       AND    #$F8    
       CMP    #$48    
       STX    $F5     
       BNE    LFBD7   
       LDA    $DA,X   
       ADC    LFF02,Y 
       SEC            
       SBC    #$03    
       STA    $F3     
       LDA    $DF,X   
       CLC            
       ADC    #$03    
       JSR    LFABB   
       BMI    LFBD7   
       LDA    LFAB3,Y 
       ORA    $80,X   
       CMP    $80,X   
       CLC            
       STA    $80,X   
       BNE    LFBD8   
LFBD7: SEC            
LFBD8: LDX    $F5     
       BCS    LFBE2   
       LDA    $E3,X   
       AND    #$F7    
       STA    $E3,X   
LFBE2: RTS            


START:
LFBE3: SEI            
       CLD            
       LDA    #$00    
       TAX            
LFBE8: STA    VSYNC,X 
       TXS            
       INX            
       BNE    LFBE8   
       LDA    #$38    
       STA    $E8     
       LDA    #$48    
       STA    $E3     
       STA    $E4     
       STA    $E5     
LFBFA: LSR    SWCHB   
       LDA    #$80    
       BIT    $F2     
       BCS    LFC12   
       BVS    LFBE3   
       STA    $F2     
       LDA    #$96    
       STA    $E9     
       LDA    #$99    
       STA    $EA     
LFC0F: JMP    LF92F   
LFC12: BPL    LFC0F   
       LDA    $F2     
       ORA    #$40    
       STA    $F2     
       LDX    $D8     
       BPL    LFC2E   
       AND    #$1F    
       STA    AUDV0   
       BEQ    LFC2E   
       DEC    $F2     
       STA    AUDF0   
       LDA    #$0C    
       STA    AUDC0   
       STA    AUDV0   
LFC2E: LDX    #$02    
       LDA    $F1     
       BMI    LFC8B   
LFC34: CLC            
       LDA    $DE     
       ADC    #$04    
       SEC            
       SBC    $DF,X   
       BCC    LFC72   
       CMP    #$0A    
       BCS    LFC72   
       LDA    $D9     
       ADC    #$04    
       SEC            
       SBC    $DA,X   
       BMI    LFC72   
       SEC            
       SBC    #$03    
       LDY    $E3,X   
       CMP    LFF02,Y 
       BPL    LFC72   
       CPY    #$3C    
       BPL    LFC65   
       LDA    $E7     
       AND    #$3F    
       STA    $E7     
       LDA    #$20    
       STA    AUDC1   
       BPL    LFC70   
LFC65: JSR    LFB40   
       JSR    LFB69   
       JSR    LFBAC   
       LDA    #$50    
LFC70: STA    $E3,X   
LFC72: DEX            
       BPL    LFC34   
       LDA    $E4     
       ORA    $E3     
       CMP    #$50    
       BPL    LFC8B   
       LDA    $E5     
       CMP    #$08    
       BPL    LFC8B   
       STA    AUDF1   
       LDA    #$06    
       STA    AUDV1   
       STA    AUDC1   
LFC8B: LDA    $E6     
       AND    #$03    
       TAX            
       TAY            
       BNE    LFC99   
       BIT    SWCHB   
       BVC    LFCCC   
       INX            
LFC99: DEX            
       LDA    $E3,X   
       CMP    #$50    
       BMI    LFCBF   
       DEY            
       BMI    LFCCC   
       ADC    #$03    
       STA    $E3,X   
       INC    $DA,X   
       LDY    #$08    
       STY    AUDC1   
       LSR            
       SBC    #$33    
       EOR    #$FF    
       TAY            
       LDA    LF800,Y 
       STA    AUDF1   
       INY            
       STY    AUDV1   
       BEQ    LFCE9   
       BNE    LFCCC   
LFCBF: LDY    $EE,X   
       LDA    $EB,X   
       CPY    #$C0    
       BNE    LFCD5   
       JSR    LFBAC   
       BCS    LFCCF   
LFCCC: JMP    LFD6C   
LFCCF: LDY    $DE     
       LDA    $D9     
       SBC    #$0C    
LFCD5: STY    $FA     
       STA    $FB     
       LDA    $DF,X   
       CMP    $FA     
       BNE    LFD52   
       LDA    $DA,X   
       CMP    $FB     
       BNE    LFD5A   
       CMP    #$E9    
       BPL    LFD1B   
LFCE9: CPX    #$02    
       BNE    LFD16   
       BIT    $E7     
       BPL    LFCF4   
       JMP    LF927   
LFCF4: BVC    LFD16   
       LDA    $E7     
       EOR    #$C0    
       STA    $E7     
       LDY    #$00    
       STY    $E5     
       LDA    $E6     
       AND    #$04    
       BNE    LFD08   
       LDY    #$97    
LFD08: STY    $E1     
       STY    $F0     
       LDY    #$E8    
       STY    $DC     
       LDY    #$60    
       STY    $ED     
       BNE    LFD6C   
LFD16: JSR    LFB74   
       BNE    LFD6C   
LFD1B: LDY    $E3,X   
       CPY    #$3C    
       BPL    LFD25   
       LDY    #$E7    
       BNE    LFD4E   
LFD25: JSR    LFBAC   
       BCS    LFD49   
       LDY    $E6     
       BIT    SWCHB   
       BPL    LFD3C   
       LDA    LF800,Y 
       BMI    LFD49   
       AND    #$1F    
       CMP    $EA     
       BCC    LFD49   
LFD3C: LDA    LF801,Y 
       CMP    #$98    
       BCC    LFD45   
       AND    #$7F    
LFD45: LDY    #$E7    
       BMI    LFD4C   
LFD49: LDA    #$C0    
       TAY            
LFD4C: STA    $EE,X   
LFD4E: STY    $EB,X   
       BNE    LFD6C   
LFD52: BCC    LFD58   
       DEC    $DF,X   
       BCS    LFD5A   
LFD58: INC    $DF,X   
LFD5A: LDA    $DA,X   
       CMP    $FB     
       BMI    LFD64   
       DEC    $DA,X   
       DEC    $DA,X   
LFD64: INC    $DA,X   
       LDA    $E3,X   
       EOR    #$04    
       STA    $E3,X   
LFD6C: LDA    $E6     
       LDX    $F1     
       BPL    LFDA4   
       AND    #$03    
       BNE    LFDA2   
       LDA    $E2     
       SEC            
       SBC    #$04    
       STA    $E2     
       BNE    LFD99   
       STA    AUDV1   
       STA    $DE     
       STA    $F1     
       LDA    $E8     
       BIT    LFEEE   
       BNE    LFD8F   
       JMP    LF927   
LFD8F: SBC    #$10    
       STA    $E8     
       LDA    #$52    
       STA    $D9     
       BNE    LFDA2   
LFD99: LSR            
       STA    AUDF1   
       LDA    #$0F    
       STA    AUDC1   
       STA    AUDV1   
LFDA2: BNE    LFDF7   
LFDA4: LSR            
       BCS    LFDF7   
       LDY    SWCHA   
       LDX    INPT4   
       BMI    LFDC6   
       LSR            
       BCS    LFDDD   
       LDA    $E2     
       BIT    SWCHA   
       BMI    LFDBC   
       ADC    #$04    
       BCC    LFDC0   
LFDBC: BVS    LFDDD   
       SBC    #$03    
LFDC0: AND    #$3C    
       STA    $E2     
       BPL    LFDDD   
LFDC6: LDX    $DE     
       TYA            
       BMI    LFDD3   
       CPX    #$97    
       BCS    LFDDD   
       INC    $DE     
       BNE    LFDDD   
LFDD3: AND    #$40    
       BNE    LFDDD   
       CPX    #$01    
       BCC    LFDDD   
       DEC    $DE     
LFDDD: TYA            
       LDX    $D9     
       AND    #$20    
       BNE    LFDEC   
       CPX    #$52    
       BCS    LFDF7   
       INC    $D9     
       BNE    LFDF7   
LFDEC: TYA            
       AND    #$10    
       BNE    LFDF7   
       CPX    #$01    
       BCC    LFDF7   
       DEC    $D9     
LFDF7: LDA    $D9     
       CLC            
       ADC    #$04    
       STA    $F3     
       LDA    $DE     
       ADC    #$05    
       STA    $FA     
       JSR    LFABB   
       BMI    LFE10   
       LDA    LFAB3,Y 
       AND    $80,X   
       BNE    LFE42   
LFE10: LDX    $DE     
       INX            
       TXA            
       STA    $FB     
       JSR    LFABB   
       BMI    LFE22   
       LDA    LFAB3,Y 
       AND    $80,X   
       BNE    LFE42   
LFE22: LDA    $D9     
       STA    $F3     
       LDA    $FA     
       JSR    LFABB   
       BMI    LFE34   
       LDA    LFAB3,Y 
       AND    $80,X   
       BNE    LFE42   
LFE34: LDA    $FB     
       JSR    LFABB   
       BMI    LFE4E   
       LDA    LFAB3,Y 
       AND    $80,X   
       BEQ    LFE4E   
LFE42: EOR    #$FF    
       AND    $80,X   
       STA    $80,X   
       JSR    LFB40   
       JSR    LFB69   
LFE4E: JSR    LFA61   
       LDA    $F1     
       BMI    LFE89   
       LDX    INPT4   
       BMI    LFE61   
       LDA    #$80    
       ORA    $E8     
       STA    $E8     
       BMI    LFE89   
LFE61: LDA    $E8     
       BPL    LFE89   
       AND    #$70    
       STA    $E8     
       LDA    $E2     
       LSR            
       LSR            
       ORA    $E8     
       STA    $E8     
       LDA    $D9     
       ADC    #$02    
       STA    $D8     
       LDA    $DE     
       ADC    #$03    
       STA    $DD     
       LDA    #$0F    
       STA    AUDC0   
       LDA    #$08    
       STA    AUDV0   
       STA    $F1     
       BNE    LFEE8   
LFE89: LDA    $D8     
       BMI    LFEE8   
       STA    $F3     
       LDA    $F1     
       AND    #$7F    
       INC    $F1     
       LSR            
       LSR            
       CMP    #$1F    
       BCC    LFE9D   
       LDA    #$1F    
LFE9D: STA    AUDF0   
       LDA    $DD     
       JSR    LFABB   
       BMI    LFEBF   
       LDA    $80,X   
       AND    LFAB3,Y 
       BEQ    LFEBF   
       EOR    #$FF    
       AND    $80,X   
       TAY            
       LDA    $E7     
       LSR            
       BCC    LFEBC   
       STY    $80,X   
       JSR    LFB40   
LFEBC: SEC            
       BCS    LFED6   
LFEBF: LDX    #$02    
LFEC1: JSR    LFAE7   
       DEX            
       BPL    LFEC1   
       LDA    $E8     
       AND    #$0F    
       TAX            
       LDA    LFA93,X 
       CLC            
       ADC    $D8     
       CMP    #$57    
       BCC    LFED8   
LFED6: LDA    #$D0    
LFED8: STA    $D8     
       BCS    LFEE8   
       LDA    LFAA3,X 
       CLC            
       ADC    $DD     
       CMP    #$A0    
       BCS    LFED6   
       STA    $DD     
LFEE8: JMP    LF938   
LFEEB: .byte $00
LFEEC: .byte $00,$00
LFEEE: .byte $70,$04
LFEF0: .byte $57,$45
LFEF2: .byte $16,$08
LFEF4: .byte $27,$27,$2C,$0C
LFEF8: .byte $09,$09,$42,$10
LFEFC: .byte $75,$75,$58,$14
LFF00: .byte $68
LFF01: .byte $FF
LFF02: .byte $05,$18,$6D,$FF,$05,$1C,$72,$FF,$05,$1D,$77,$FF,$05,$19,$7C,$FF
       .byte $05,$15,$81,$FF,$05,$11,$86,$FF,$05,$0D,$8B,$FF,$05,$09,$90,$FF
       .byte $05,$05,$95,$FF,$05,$01,$9A,$FF,$05,$0E,$9F,$FF,$05,$0A,$A4,$FF
       .byte $05,$06,$A9,$FF,$05,$02,$AE,$FF,$05,$03,$B3,$FF,$05,$07,$B8,$FF
       .byte $0F,$0B,$C7,$FF,$0F,$0F,$D6,$FF,$12,$13,$E8,$FF,$12,$17,$00,$F8
       .byte $10,$1B,$3A,$F8,$0E,$1F,$69,$F8,$0E,$1E,$1F,$F8,$0C,$1A,$14,$F8
       .byte $0A,$16,$3B,$F8,$07,$12,$10,$10,$38,$38,$7C,$08,$18,$38,$78,$18
       .byte $04,$18,$78,$30,$10
LFF77: .byte $02,$7C,$38,$30,$00,$40,$70,$7E,$70,$40,$00,$30,$38,$7C,$02,$10
       .byte $30,$78,$18,$04,$18,$78,$38,$18,$08,$7C,$38,$38,$10,$10,$30,$3C
       .byte $38,$30,$20,$10,$18,$3C,$30,$40,$00,$18,$38,$7C,$80,$04,$1C,$FC
       .byte $1C,$04,$80,$7C,$38,$18,$00,$40,$30,$3C,$18,$10,$20,$30,$38,$3C
       .byte $30,$42,$24,$19,$FE,$3C,$FC,$3F,$3C,$7F,$98,$3C,$5A,$3C,$42,$42
       .byte $42,$24,$98,$7F,$3C,$3F,$FC,$3C,$FE,$19,$3C,$5A,$3C,$42,$42,$42
       .byte $24,$19,$FE,$3C,$FC,$3F,$3C,$7F,$98,$3C,$5A,$3C,$42,$7E,$3C,$3C
       .byte $3C,$42,$24,$98,$7F,$3C,$3F,$FC,$3C,$FE,$19,$3C,$5A,$3C,$42,$7E
       .byte $3C,$3C,$3C,$E3,$FB,$E3,$FB,$E3,$FB
