; Disassembly of roms/Plaque Attack.bin
; Disassembled Tue Oct  6 15:22:41 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Plaque Attack.bin
;

      processor 6502
VSYNC   =  $00
VBLANK  =  $01
WSYNC   =  $02
RSYNC   =  $03
NUSIZ0  =  $04
NUSIZ1  =  $05
COLUP0  =  $06
COLUP1  =  $07
COLUPF  =  $08
CTRLPF  =  $0A
REFP1   =  $0C
PF1     =  $0E
PF2     =  $0F
RESP0   =  $10
RESP1   =  $11
RESBL   =  $14
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
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296

       ORG $F000

START:
       SEI            
       CLD            
       LDX    #$00    
LF004: LDA    #$00    
LF006: STA    VSYNC,X 
       TXS            
       INX            
       STX    CTRLPF  
       BNE    LF006   
       JSR    LF9F1   
       LDX    $82     
       BNE    LF01B   
       INX            
       STX    $82     
       JMP    LF6BC   
LF01B: LDA    $B4     
       LDX    #$08    
       CMP    #$80    
       BCC    LF029   
       SBC    #$80    
       JSR    LFECD   
       TAX            
LF029: LDA    $CC     
       AND    LFDC8,X 
       STA    $F8     
       BEQ    LF044   
       TAX            
       LDA    LFFF0,X 
       STA    $F8     
       LDA    LFFEB,X 
       CLC            
       ADC    $B4     
       CMP    #$A0    
       BCC    LF044   
       SBC    #$60    
LF044: STA    $F7     
       LDX    #$01    
LF048: LDY    #$1E    
       LDA    $E4,X   
       BEQ    LF062   
       LDA    $81     
       AND    #$03    
       BNE    LF067   
       DEC    $E4,X   
       BEQ    LF062   
       LDA    $81     
       AND    #$07    
       BNE    LF067   
       LDY    #$0C    
       BPL    LF067   
LF062: STA    $A7,X   
       STA    $FA,X   
       TAY            
LF067: STY    $A5,X   
       DEX            
       BPL    LF048   
       LDX    $F1     
       CPX    #$0B    
       BCC    LF074   
       LDX    #$0B    
LF074: LDA    LFE97,X 
       BIT    $F2     
       BPL    LF07E   
       LDA    LFEA3,X 
LF07E: STA    $89     
       LDX    $E5     
       JSR    LF288   
       STA    $E6     
       LDX    $E4     
       JSR    LF288   
       STA    $E8     
       LDX    $9A     
       LDA    LFDD1,X 
       STA    COLUP0  
       STA    COLUP1  
LF097: LDA    INTIM   
       BNE    LF097   
       STA    WSYNC   
       STA    HMOVE   
       LDA    $97     
       ROL            
       ROL            
       ROL            
       AND    #$02    
       STA    VBLANK  
       JSR    LFB88   
       LDA    #$50    
       LDX    #$0A    
LF0B0: STA    $8B,X   
       DEX            
       DEX            
       BPL    LF0B0   
       LDY    #$CE    
       STA    HMCLR   
       LDX    $B7     
       DEX            
       STA    WSYNC   
       BMI    LF0CA   
       TXA            
       ASL            
       TAX            
LF0C4: STY    $8B,X   
       DEX            
       DEX            
       BPL    LF0C4   
LF0CA: STA    WSYNC   
       LDA    #$0C    
       STA    COLUP0  
       STA    COLUP1  
       JSR    LFB88   
       LDX    $FB     
       LDA    LFFF0,X 
       STA    NUSIZ0  
       STA    WSYNC   
       LDY    #$FF    
       STY    PF1     
       STY    PF2     
       STY    PF2     
       LDA    $A8     
       SEC            
LF0E9: SBC    #$0F    
       BCS    LF0E9   
       STA    RESP0   
       STA    WSYNC   
       ASL            
       ASL            
       ASL            
       ASL            
       EOR    #$70    
       STA    HMP0    
       LDA    $B6     
       SEC            
       SBC    #$67    
       CMP    #$08    
       BCS    LF106   
       LDA    #$02    
       STA    ENABL   
LF106: STA    WSYNC   
       LDA    #$44    
       STA    COLUPF  
       STA    VDELP0  
       STA    VDELP1  
       LDA    $AC     
       SEC            
LF113: SBC    #$0F    
       BCS    LF113   
       STA    RESBL   
       STA    WSYNC   
       ASL            
       ASL            
       ASL            
       ASL            
       EOR    #$70    
       STA    HMBL    
       STA    WSYNC   
       STA    HMOVE   
       LDA    $A6     
       STA    COLUP0  
       JSR    LFECD   
       JSR    LFECD   
       NOP            
       NOP            
       NOP            
       STA    HMCLR   
       STA    HMCLR   
       TAY            
LF139: LDA    LFE72,Y 
       LDX    LFE62,Y 
       STA    PF2     
       STX    PF1     
       LDA    LFD90,Y 
       STA    GRP1    
       LDA    ($E6),Y 
       STA    GRP0    
       LDA    $9F     
       STA    RESP1   
       STA    NUSIZ1  
       NOP            
       LDA    $A0     
       STA    RESP1   
       STA    NUSIZ1  
       NOP            
       LDA    $A1     
       STA    RESP1   
       STA    NUSIZ1  
       LDA    $A2     
       INY            
       STA    RESP1   
       STA    NUSIZ1  
       CPY    #$0E    
       BCC    LF139   
       STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    NUSIZ1  
       LDA    $AB     
       SEC            
LF178: SBC    #$0F    
       BCS    LF178   
       STA    RESP0   
       STA    WSYNC   
       ASL            
       ASL            
       ASL            
       ASL            
       EOR    #$70    
       STA    HMP0    
       LDX    $9A     
       LDA    LFDD1,X 
       STA    COLUP0  
       LDY    #$07    
       STY    $F4     
       LDA    #$00    
       STA    CXCLR   
       STA    NUSIZ0  
       LDX    #$68    
       JMP    LF1FB   
LF19E: STA    WSYNC   
       STA    GRP0    
       DEX            
       BEQ    LF1EC   
       LDA.wy $00AD,Y 
       STX    $F3     
       LDX    #$08    
       CMP    #$80    
       BCC    LF1B7   
       SBC    #$80    
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
LF1B7: LDA.wy $00C5,Y 
       AND    LFDC8,X 
       BNE    LF1C5   
       STA    $F8     
       LDX    $F3     
       BPL    LF1DA   
LF1C5: TAX            
       LDA    LFFF0,X 
       STA    $F8     
       LDA    LFFEB,X 
       CLC            
       ADC.wy $00AD,Y 
       CMP    #$A0    
       LDX    $F3     
       BCC    LF1DA   
       SBC    #$60    
LF1DA: STA    WSYNC   
       STA    $F7     
       TXA            
       SEC            
       SBC    $B5     
       TAY            
       CPY    #$17    
       BCS    LF1EB   
       LDA    ($89),Y 
       STA    GRP0    
LF1EB: DEX            
LF1EC: BEQ    LF224   
       TXA            
       SEC            
       SBC    $B5     
       TAY            
       LDA    #$00    
       CPY    #$17    
       BCS    LF1FB   
       LDA    ($89),Y 
LF1FB: LDY    $F8     
       STY    NUSIZ1  
       STA    WSYNC   
       STA    GRP0    
       DEX            
       BEQ    LF224   
       LDA    $F7     
       LDA    $F7     
       SEC            
LF20B: SBC    #$0F    
       BCS    LF20B   
       STA.w  $0011   
       STA    WSYNC   
       STA    $F3     
       TXA            
       SEC            
       SBC    $B5     
       TAY            
       CPY    #$17    
       BCS    LF223   
       LDA    ($89),Y 
       STA    GRP0    
LF223: DEX            
LF224: BEQ    LF297   
       LDA    $F3     
       ASL            
       ASL            
       ASL            
       ASL            
       EOR    #$70    
       STA    HMP1    
       LDY    $F4     
       LDA    RSYNC   
       STA.wy $00DC,Y 
       TXA            
       SEC            
       SBC    $B5     
       TAY            
       CPY    #$17    
       STA    WSYNC   
       STA    HMOVE   
       BCS    LF248   
       LDA    ($89),Y 
       STA    GRP0    
LF248: LDA    $F4     
       LDY    $AA     
       CMP    #$07    
       BCS    LF252   
       LDY    #$0D    
LF252: DEC    $F4     
       BPL    LF292   
LF256: BIT    $98     
       BMI    LF286   
       SED            
       CLC            
       ADC    $BA     
       STA    $BA     
       BCC    LF286   
       LDA    $B9     
       ADC    #$00    
       STA    $B9     
       LDA    $B8     
       ADC    #$00    
       BCC    LF276   
       LDA    #$99    
       STA    $B9     
       STA    $BA     
       INC    $99     
LF276: STA    $B8     
       LDA    $B9     
       AND    #$1F    
       BNE    LF286   
       LDA    $B7     
       CMP    #$06    
       BCS    LF286   
       INC    $B7     
LF286: CLD            
       RTS            

LF288: CPX    #$04    
       BCC    LF28E   
       LDX    #$04    
LF28E: LDA    LFE82,X 
       RTS            

LF292: STA    CXCLR   
       STA    HMCLR   
LF296: DEX            
LF297: BEQ    LF2DC   
       STY    $F3     
       TXA            
       SEC            
       SBC    $B5     
       TAY            
       CPY    #$17    
       LDA    #$00    
       BCS    LF2A8   
       LDA    ($89),Y 
LF2A8: LDY    $F3     
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       LDA    ($85),Y 
       STA    GRP1    
       LDA    ($87),Y 
       STA    COLUP1  
       TXA            
       SEC            
       SBC    $B6     
       AND    #$F8    
       BNE    LF2C2   
       LDA    #$02    
LF2C2: STA    ENABL   
       DEY            
       BPL    LF296   
       DEX            
       BEQ    LF2DC   
       TXA            
       SEC            
       SBC    $B5     
       TAY            
       LDA    #$00    
       CPY    #$17    
       BCS    LF2D7   
       LDA    ($89),Y 
LF2D7: LDY    $F4     
       JMP    LF19E   
LF2DC: STA    WSYNC   
       STX    GRP0    
       STX    GRP1    
       LDA    #$0C    
       STA    COLUP1  
       LDA    $A7     
       SEC            
LF2E9: SBC    #$0F    
       BCS    LF2E9   
       STA    RESP0   
       STA    WSYNC   
       ASL            
       ASL            
       ASL            
       ASL            
       EOR    #$70    
       STA    HMP0    
       LDX    $F4     
       LDA    RSYNC   
       STA    $DC,X   
       JSR    LFECD   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       JSR    LFECE   
       JSR    LFECF   
       LDA    $A5     
       STA    COLUP0  
       STA    CXCLR   
       LDX    $FA     
       LDA    LFFF0,X 
       STA    NUSIZ0  
       STA    HMCLR   
       LDY    #$0D    
LF31F: LDA    LFE72,Y 
       LDX    LFE62,Y 
       NOP            
       STA    PF2     
       STX    PF1     
       LDA    LFD90,Y 
       STA    GRP1    
       LDA    ($E8),Y 
       STA    GRP0    
       LDA    $9B     
       STA    RESP1   
       STA    NUSIZ1  
       NOP            
       LDA    $9C     
       STA    RESP1   
       STA    NUSIZ1  
       NOP            
       LDA    $9D     
       STA    RESP1   
       STA    NUSIZ1  
       LDA    $9E     
       DEY            
       STA    RESP1   
       STA    NUSIZ1  
       BPL    LF31F   
       INY            
       STY    ENABL   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STY    PF1     
       STY    PF2     
       STY    COLUPF  
       LDA    #$0C    
       STA    COLUP0  
       LDY    #$07    
       LDA    $99     
       AND    #$1F    
       CMP    #$14    
       BCS    LF376   
       LDY    #$00    
       CMP    #$0C    
       BCC    LF376   
       SBC    #$0C    
       TAY            
LF376: STY    $F4     
       TYA            
       EOR    #$07    
       STA    $F5     
       LDA    #$A8    
       LDX    #$08    
       SEC            
       STA    WSYNC   
       STA    HMOVE   
LF386: STA    $8D,X   
       SBC    #$08    
       STA    $8B,X   
       SBC    #$08    
       DEX            
       DEX            
       DEX            
       DEX            
       BPL    LF386   
       JSR    LFB8C   
       LDA    #$78    
       STA    PF1     
       LDA    #$31    
       STA    CTRLPF  
       STA    NUSIZ1  
       STA    HMCLR   
       LDA    #$10    
       STA    HMBL    
       LDY    #$07    
       STY    ENABL   
LF3AB: LDA    LFF78,Y 
       TAX            
       LDA    LFF58,Y 
       STA    GRP0    
       STA    WSYNC   
       STA    HMOVE   
       LDA    LFFB0,Y 
       STA    COLUPF  
       LDA    LFF60,Y 
       STA    GRP1    
       LDA    LFF68,Y 
       STA    GRP0    
       LDA    $F3     
       NOP            
       LDA    LFF70,Y 
       STA    GRP1    
       STX    GRP0    
       STA    GRP1    
       LDA    #$00    
       STA    COLUPF  
       DEY            
       DEC    $F5     
       BPL    LF3AB   
       LDY    #$23    
       LDX    #$82    
       STA    WSYNC   
       STY    TIM64T  
       STX    VBLANK  
       STA    VDELP0  
       STA    VDELP1  
       STA    GRP0    
       STA    GRP1    
       STA    GRP0    
       STA    PF1     
       STA    ENABL   
       LDA    $99     
       BEQ    LF415   
       BIT    $98     
       BMI    LF415   
       LDA    $BA     
       AND    #$0F    
       BEQ    LF407   
       CMP    #$05    
       BNE    LF415   
LF407: LDA    $81     
       AND    #$7F    
       BNE    LF415   
       LDA    $80     
       LSR            
       BCC    LF415   
       JSR    LFB49   
LF415: BIT    $98     
       BMI    LF433   
       LDA    $E4     
       ORA    $E5     
       BEQ    LF43D   
       TAY            
       EOR    #$1F    
       STA    AUDF0   
       LDA    #$08    
       STA    AUDV0   
       LDA    #$01    
       STA    AUDC0   
       TYA            
       BNE    LF433   
       STA    AUDV0   
       BEQ    LF43D   
LF433: LDA    #$00    
       STA    $ED     
       STA    $EE     
       STA    $EF     
       BEQ    LF47F   
LF43D: LDA    $ED     
       BEQ    LF455   
       DEC    $ED     
       LSR            
       STA    AUDV0   
       STA    AUDV1   
       LDA    #$0C    
       STA    AUDC0   
       STA    AUDC1   
       STA    AUDF0   
       CLC            
       ADC    #$03    
       STA    AUDF1   
LF455: LDA    $EE     
       BEQ    LF462   
       LSR            
       STA    $EE     
       STA    AUDV0   
       STA    AUDV1   
       BPL    LF464   
LF462: STA    $EB     
LF464: LDA    $EF     
       BMI    LF47F   
       STA    AUDV0   
       EOR    #$1F    
       STA    AUDF0   
       LDA    #$0C    
       STA    AUDC0   
       LDA    $D8     
       AND    #$0F    
       BNE    LF47D   
       LDA    $81     
       LSR            
       BCS    LF47F   
LF47D: DEC    $EF     
LF47F: LDA    $F0     
       BMI    LF49E   
       BIT    $98     
       BMI    LF49C   
       STA    AUDV1   
       STA    AUDF1   
       LDA    #$08    
       STA    AUDC1   
       LDA    $81     
       AND    #$03    
       BNE    LF497   
       STA    AUDV1   
LF497: LDA    $81     
       LSR            
       BCC    LF49E   
LF49C: DEC    $F0     
LF49E: LDA    $A3     
       STA    $F3     
       LDA    $A4     
       STA    $F4     
       LDX    #$03    
LF4A8: LDA    $F3     
       AND    #$03    
       TAY            
       LDA    LFCFC,Y 
       STA    $9B,X   
       LDA    $F4     
       AND    #$03    
       TAY            
       LDA    LFCFC,Y 
       STA    $9F,X   
       LSR    $F3     
       LSR    $F3     
       LSR    $F4     
       LSR    $F4     
       DEX            
       BPL    LF4A8   
       LDX    #$07    
LF4C9: LDA    $DB,X   
       ASL            
       ASL            
       BCC    LF508   
       LDA    $EC     
       JSR    LF256   
       LDA    #$0F    
       STA    $F0     
       LDA    $AB     
       CLC            
       ADC    #$08    
       SEC            
       SBC    $AD,X   
       JSR    LFECD   
       TAY            
       LDA    $C5,X   
       AND    #$0F    
       AND    LFED2,Y 
       STA    $F3     
       LDA    $C5,X   
       AND    #$F0    
       ORA    $F3     
       STA    $C5,X   
       AND    #$0F    
       BNE    LF504   
       LDA    #$C0    
       STA    $AD,X   
       LDA    $CD     
       AND    LFFB8,X 
       STA    $CD     
LF504: LDA    #$E0    
       STA    $B6     
LF508: DEX            
       BPL    LF4C9   
       LDA    $D8     
       AND    #$0F    
       ORA    $E4     
       ORA    $E5     
       BNE    LF564   
       LDX    #$07    
LF517: LDA    $C5,X   
       AND    #$0F    
       BNE    LF564   
       DEX            
       BPL    LF517   
       LDX    #$07    
LF522: LDA    $C5,X   
       ORA    #$07    
       STA    $C5,X   
       CPX    #$02    
       BCC    LF530   
       LDA    #$C0    
       STA    $AD,X   
LF530: DEX            
       BPL    LF522   
       LDA    #$02    
       STA    $D8     
       LDA    #$E0    
       STA    $B6     
       LDA    #$20    
       STA    $D9     
       LDA    $A3     
       STA    $BC     
       LDA    $A4     
       STA    $BD     
       INC    $BB     
       BIT    $98     
       BPL    LF55B   
       LDA    #$03    
       STA    $B7     
       STX    $BC     
       STX    $BD     
       LDA    $BB     
       AND    #$0F    
       STA    $BB     
LF55B: LSR    $F9     
       BCC    LF564   
       INX            
       STX    $A3     
       STX    $A4     
LF564: LDA    $BB     
       LDY    $80     
       CPY    #$02    
       BCC    LF56D   
       LSR            
LF56D: TAY            
       LDA    #$00    
       CPY    #$03    
       BCC    LF578   
       TYA            
       CLC            
       ADC    #$06    
LF578: STA    $CF     
       TYA            
       CLC            
       ADC    #$02    
       CMP    #$10    
       BCC    LF584   
       LDA    #$10    
LF584: STA    $D0     
       ASL            
       ASL            
       ASL            
       STA    $D1     
       LDA    $81     
       AND    #$40    
       BNE    LF5A0   
       TAX            
       LDA    $BB     
       AND    #$06    
       BNE    LF59A   
       STX    $CF     
LF59A: CMP    #$06    
       BNE    LF5A0   
       STX    $D0     
LF5A0: LDA    $E4     
       ORA    $E5     
       BEQ    LF5AA   
       LDA    #$00    
       STA    $D0     
LF5AA: LDA    $BB     
       AND    #$07    
       TAX            
       LDA    LFE87,X 
       STA    $85     
       LDA    LFE8F,X 
       STA    $87     
       LDA    $D8     
       AND    #$0F    
       BNE    LF5DA   
       LDA    $F1     
       BNE    LF5DA   
       LDA    $B6     
       CMP    #$E0    
       BNE    LF5DA   
       LDX    #$01    
       STX    $F9     
LF5CD: LDA    $C5,X   
       AND    #$F0    
       STA    $C5,X   
       DEX            
       BPL    LF5CD   
       ASL    $D0     
       ASL    $D1     
LF5DA: LDX    #$02    
LF5DC: LDA    $CF,X   
       STA    $F3     
       JSR    LFECD   
       STA    $D2,X   
       LDA    $F3     
       AND    #$0F    
       CLC            
       ADC    $D5,X   
       CMP    #$10    
       BCC    LF5F2   
       INC    $D2,X   
LF5F2: AND    #$0F    
       STA    $D5,X   
       DEX            
       BPL    LF5DC   
       LDX    #$02    
LF5FB: TXA            
       ASL            
       ASL            
       TAY            
       LDA    $B8,X   
       AND    #$F0    
       LSR            
       STA.wy $008B,Y 
       LDA    $B8,X   
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA.wy $008D,Y 
       DEX            
       BPL    LF5FB   
       LDX    #$00    
       LDY    #$50    
LF618: LDA    $8B,X   
       BNE    LF624   
       STY    $8B,X   
       INX            
       INX            
       CPX    #$0A    
       BCC    LF618   
LF624: LDA    INTIM   
       BNE    LF624   
       LDY    #$82    
       STY    WSYNC   
       STY    VSYNC   
       STY    WSYNC   
       STY    WSYNC   
       STY    WSYNC   
       STA    VSYNC   
       INC    $81     
       BNE    LF64E   
       INC    $98     
       LDA    $98     
       AND    #$C7    
       STA    $98     
       AND    #$07    
       BNE    LF64E   
       INC    $97     
       BNE    LF64E   
       SEC            
       ROR    $97     
LF64E: LDA    #$35    
       STA    WSYNC   
       STA    TIM64T  
       LDY    SWCHA   
       LDA    $81     
       AND    #$07    
       BNE    LF676   
       LDA    $99     
       BEQ    LF676   
       LDY    #$FF    
       DEC    $99     
       BNE    LF676   
       DEC    $99     
       LDA    $98     
       BMI    LF676   
       ORA    #$80    
       STA    $98     
       LDX    #$F3    
       BNE    LF6AA   
LF676: LDA    $9A     
       LSR            
       TYA            
       BCS    LF67F   
       JSR    LFECD   
LF67F: AND    #$0F    
       STA    $84     
       LDX    $9A     
       LDA    REFP1,X 
       AND    #$80    
       ORA    $84     
       STA    $84     
       LDA    SWCHB   
       CPX    #$00    
       BEQ    LF695   
       LSR            
LF695: AND    #$40    
       ORA    $84     
       STA    $84     
       INY            
       BEQ    LF6A2   
       LDA    #$00    
       STA    $97     
LF6A2: LDA    SWCHB   
       LSR            
       BCS    LF6AD   
       LDX    #$97    
LF6AA: JMP    LF004   
LF6AD: LDY    #$00    
       LSR            
       BCS    LF6D8   
       LDA    $83     
       BEQ    LF6BA   
       DEC    $83     
       BPL    LF6DA   
LF6BA: INC    $80     
LF6BC: LDA    $80     
       AND    #$03    
       STA    $80     
       STA    $97     
       STA    $98     
       ORA    #$A0    
       TAY            
       INY            
       STY    $BA     
       LDA    #$AA    
       STA    $B8     
       STA    $B9     
       LDA    #$FF    
       STA    $99     
       LDY    #$1E    
LF6D8: STY    $83     
LF6DA: LDA    $98     
       BPL    LF6F6   
       LDA    #$07    
       BIT    $81     
       BPL    LF6E6   
       LDA    #$0B    
LF6E6: STA    $84     
       LDA    #$0E    
       BIT    $82     
       BVC    LF6F0   
       LDA    #$0D    
LF6F0: AND    $84     
       STA    $84     
       BPL    LF6FA   
LF6F6: LDA    $99     
       BNE    LF704   
LF6FA: LDX    $D9     
       BEQ    LF707   
       DEX            
       BPL    LF702   
       INX            
LF702: STX    $D9     
LF704: JMP    LF9EE   
LF707: LDA    $D8     
       AND    #$02    
       BNE    LF710   
       JMP    LF778   
LF710: LDA    $81     
       AND    #$07    
       BEQ    LF719   
       JMP    LF776   
LF719: LDA    $F1     
       BEQ    LF72D   
       LDA    #$0F    
       DEC    $F1     
       BNE    LF723   
LF723: STA    $EF     
       LDA    $EC     
       JSR    LF256   
LF72A: JMP    LF9EE   
LF72D: LDY    #$01    
LF72F: LDX    #$07    
LF731: STX    $F3     
       LDA.wy $00A3,Y 
       AND    LFFC0,X 
       BEQ    LF75B   
       EOR.wy $00A3,Y 
       STA.wy $00A3,Y 
       STA.wy $00A3,Y 
       LDX    $BB     
       DEX            
       CPX    #$04    
       BCC    LF74D   
       LDX    #$04    
LF74D: LDA    $EC     
       JSR    LF256   
       DEX            
       BPL    LF74D   
       LDA    #$10    
       STA    $ED     
       BPL    LF72A   
LF75B: LDX    $F3     
       DEX            
       BPL    LF731   
       DEY            
       BPL    LF72F   
       LDY    #$30    
       LDX    #$01    
       LDA    $80     
       LSR            
       BCC    LF76E   
       LDX    #$05    
LF76E: STY    $D9     
       STX    $D8     
       LDA    #$0F    
       STA    $EB     
LF776: BPL    LF72A   
LF778: LDA    $D8     
       AND    #$04    
       BEQ    LF78D   
       LDA    $BE     
       ORA    $C3     
       ORA    $C4     
       BEQ    LF789   
       JSR    LFB49   
LF789: LDA    #$01    
       STA    $D8     
LF78D: LDA    $D8     
       LSR            
       BCS    LF795   
       JMP    LF853   
LF795: LDA    $B7     
       ORA    $BC     
       ORA    $BD     
       ORA    $E4     
       ORA    $E5     
       ORA    $F1     
       BNE    LF7BC   
       LDA    $BE     
       ORA    $C3     
       ORA    $C4     
       BNE    LF7B1   
       DEC    $99     
       LDA    #$E0    
       STA    $B6     
LF7B1: LDA    #$50    
       STA    $D9     
       LDA    #$05    
       STA    $D8     
LF7B9: JMP    LF9EE   
LF7BC: LDA    #$21    
       LDX    $80     
       CPX    #$02    
       BCC    LF7C6   
       LDA    #$30    
LF7C6: STA    $F1     
       LDA    #$4F    
       STA    $AB     
       LDA    $BB     
       LSR            
       LDA    #$00    
       LDX    #$07    
       STA    $AA     
       BCC    LF7DF   
       LDX    #$12    
       STX    $AA     
       LDX    #$4A    
       LDA    #$80    
LF7DF: STA    $F2     
       ORA    $D8     
       STA    $D8     
       STX    $B5     
       LDA    $81     
       AND    #$03    
       BNE    LF7B9   
       LDA    $BC     
       ORA    $BD     
       BEQ    LF812   
       LDX    #$01    
LF7F5: LDY    #$07    
LF7F7: LDA    $BC,X   
       AND    LFFC0,Y 
       BEQ    LF80C   
       ORA    $A3,X   
       STA    $A3,X   
       LDA    $BC,X   
       AND    LFFB8,Y 
       STA    $BC,X   
       JMP    LFDD3   
LF80C: DEY            
       BPL    LF7F7   
       DEX            
       BPL    LF7F5   
LF812: LDX    #$0F    
LF814: STX    $F3     
       LDA    $B7     
       BEQ    LF83E   
       LDA    $F3     
       LSR            
       TAX            
       LDY    LFEDD,X 
       LDA    $F3     
       AND    #$01    
       TAX            
       LDA    $A3,X   
       AND    LFFC0,Y 
       BNE    LF839   
       LDA    $A3,X   
       ORA    LFFC0,Y 
       STA    $A3,X   
       DEC    $B7     
       JMP    LFDD3   
LF839: LDX    $F3     
       DEX            
       BPL    LF814   
LF83E: LDA    $D8     
       AND    #$80    
       STA    $D8     
       LDX    #$AA    
       STX    $CE     
       LDA    #$30    
       STA    $D9     
       LDX    #$00    
       STX    $CD     
       JMP    LF9EE   
LF853: LDY    $80     
       LDA    $BB     
       CMP    #$07    
       BCC    LF85D   
       LDA    #$07    
LF85D: CPY    #$02    
       BCC    LF863   
       LSR            
       LSR            
LF863: TAX            
       LDA    LFEE5,X 
       STA    $EC     
       LDX    #$3F    
       LDA    $A3     
       ORA    $A4     
       BNE    LF873   
       LDX    #$1F    
LF873: TXA            
       AND    $81     
       BNE    LF87E   
       LDA    $F1     
       BEQ    LF87E   
       DEC    $F1     
LF87E: LDA    $84     
       STA    $F3     
       LDA    $B5     
       LDX    #$00    
       LDY    #$80    
       LSR    $F3     
       BCS    LF894   
       CMP    #$4A    
       BCS    LF894   
       INC    $B5     
       STX    $F2     
LF894: LSR    $F3     
       BCS    LF8A0   
       CMP    #$08    
       BCC    LF8A0   
       DEC    $B5     
       STY    $F2     
LF8A0: LDA    $AB     
       LSR    $F3     
       BCS    LF8AC   
       CMP    #$0F    
       BCC    LF8AC   
       DEC    $AB     
LF8AC: LSR    $F3     
       BCS    LF8B6   
       CMP    #$8D    
       BCS    LF8B6   
       INC    $AB     
LF8B6: LDA    $B5     
       CMP    #$4A    
       BNE    LF8BE   
       STY    $F2     
LF8BE: CMP    #$07    
       BNE    LF8C4   
       STX    $F2     
LF8C4: LDA    $AB     
       CLC            
       ADC    #$03    
       STA    $AC     
       LDA    $EF     
       BMI    LF8D3   
       CMP    #$08    
       BCS    LF8FF   
LF8D3: LDA    $84     
       BMI    LF8FF   
       LDA    $B6     
       CMP    #$E0    
       BNE    LF8FF   
       LDA    $F1     
       BEQ    LF906   
       LDX    #$06    
       BIT    $84     
       BVC    LF8E9   
       DEX            
       DEX            
LF8E9: TXA            
       BIT    $F2     
       BPL    LF8F3   
       EOR    #$FF    
       CLC            
       ADC    #$01    
LF8F3: STA    $A9     
       LDA    #$0F    
       STA    $EF     
       LDA    $B5     
       ADC    #$08    
       STA    $B6     
LF8FF: LDA    $B6     
       CLC            
       ADC    $A9     
       STA    $B6     
LF906: LDA    $B6     
       SEC            
       SBC    #$80    
       CMP    #$70    
       BCS    LF913   
       LDA    #$E0    
       STA    $B6     
LF913: BIT    $D8     
       BPL    LF91A   
       JMP    LF984   
LF91A: LDA    $AA     
       CLC            
       ADC    $D3     
       STA    $AA     
       CMP    #$13    
       BCC    LF955   
       JSR    LFFDE   
       LDX    #$00    
       STX    $AA     
       LDA    $C5     
       STA    $F3     
LF930: CPX    #$02    
       BCC    LF938   
       LDA    $AE,X   
       STA    $AD,X   
LF938: LDA    $C6,X   
       STA    $C5,X   
       INX            
       CPX    #$07    
       BCC    LF930   
       LDA    $F3     
       STA    $CC     
       LDA    #$C0    
       STA    $B4     
       LDA    $CD     
       LSR            
       AND    #$FC    
       STA    $CD     
       LDA    $CE     
       LSR            
       ROR    $CE     
LF955: LDA    $AA     
       SEC            
       SBC    #$06    
       BNE    LF974   
       TAY            
       LDA    $AF     
       STA    $F3     
       LDA    $C7     
       AND    #$07    
       JSR    LFABB   
       LDA    $CD     
       AND    #$FC    
       ORA    #$02    
       STA    $CD     
       BIT    $D8     
       BMI    LF981   
LF974: LDX    #$07    
       JSR    LFA35   
LF979: JSR    LFA83   
       DEX            
       CPX    #$03    
       BCS    LF979   
LF981: JMP    LF9EE   
LF984: LDA    $AA     
       SEC            
       SBC    $D3     
       STA    $AA     
       BPL    LF9BD   
       LDA    #$12    
       STA    $AA     
       JSR    LFFDE   
       LDX    #$06    
       LDA    $CC     
       STA    $F3     
LF99A: CPX    #$02    
       BCC    LF9A2   
       LDA    $AD,X   
       STA    $AE,X   
LF9A2: LDA    $C5,X   
       STA    $C6,X   
       DEX            
       BPL    LF99A   
       LDA    $F3     
       STA    $C5     
       LDA    #$C0    
       STA    $AF     
       LDA    $CD     
       AND    #$FE    
       ASL            
       STA    $CD     
       LDA    $CE     
       ASL            
       ROL    $CE     
LF9BD: LDA    $BB     
       AND    #$07    
       TAX            
       LDA    $AA     
       SEC            
       SBC    LFFD6,X 
       BNE    LF9E1   
       LDY    #$01    
       LDA    $B4     
       STA    $F3     
       LDA    $CC     
       AND    #$07    
       JSR    LFABB   
       LDA    $CD     
       ORA    #$80    
       STA    $CD     
       BIT    $D8     
       BPL    LF9EE   
LF9E1: LDX    #$02    
       JSR    LFA35   
LF9E6: JSR    LFA83   
       INX            
       CPX    #$07    
       BCC    LF9E6   
LF9EE: JMP    LF01B   
LF9F1: LDX    #$0B    
       LDY    #$FF    
LF9F5: STY    $8B,X   
       DEX            
       DEX            
       BPL    LF9F5   
       DEY            
       STY    $88     
       DEY            
       STY    $86     
       STY    $E7     
       STY    $E9     
       DEY            
       STY    $8A     
       LDA    #$20    
       STA    $D9     
       LDA    #$E0    
       STA    $B6     
       LDA    #$0F    
       STA    $EB     
       LDX    #$3C    
       STX    $BC     
       STX    $BD     
       LDA    $80     
       LSR            
       BCC    LFA23   
       STX    $C3     
       STX    $C4     
LFA23: LDA    #$01    
       STA    $D8     
       LDX    #$07    
LFA29: LDA    #$77    
       STA    $C5,X   
       LDA    #$C0    
       STA    $AD,X   
       DEX            
       BPL    LFA29   
       RTS            

LFA35: LDA    $D1     
       LSR            
       LSR            
       LSR            
       LSR            
       CLC            
       ADC    #$01    
       STA    $F5     
       LDA    $C5,X   
       AND    #$0F    
       BEQ    LFA82   
       LDA    $CD     
       AND    LFFC0,X 
       BNE    LFA82   
       LDA    $82     
       AND    #$3F    
       ADC    #$30    
       CMP    #$50    
       BCS    LFA5A   
       SEC            
       SBC    #$1F    
LFA5A: STA    $F4     
       CMP    #$50    
       LDA    $AD,X   
       BCS    LFA6E   
       ADC    $D4     
       STA    $AD,X   
       SEC            
       SBC    $F4     
       CMP    $F5     
       BCC    LFA7B   
       RTS            

LFA6E: SBC    $D4     
       STA    $AD,X   
       LDA    $F4     
       SEC            
       SBC    $AD,X   
       CMP    $F5     
       BCS    LFA82   
LFA7B: LDA    $CD     
       ORA    LFFC0,X 
       STA    $CD     
LFA82: RTS            

LFA83: LDA    $CD     
       AND    LFFC0,X 
       BEQ    LFABA   
       LDA    $C5,X   
       AND    #$07    
       BNE    LFA95   
       LDA    #$C0    
       STA    $AD,X   
       RTS            

LFA95: LDA    $CE     
       AND    LFFC0,X 
       BEQ    LFAA8   
       LDA    $AD,X   
       CLC            
       ADC    $D2     
       STA    $AD,X   
       CMP    #$6E    
       BCS    LFAB3   
       RTS            

LFAA8: LDA    $AD,X   
       SEC            
       SBC    $D2     
       STA    $AD,X   
       CMP    #$0B    
       BCS    LFABA   
LFAB3: LDA    $CE     
       EOR    LFFC0,X 
       STA    $CE     
LFABA: RTS            

LFABB: STA    $F4     
       STA    $F5     
       LDX    $E4,Y   
       DEX            
       CPX    #$03    
       BCC    LFB3D   
       LDX    #$05    
LFAC8: LDA    $F3     
       SEC            
       SBC    LFFC8,X 
       CMP    #$0E    
       BCC    LFADB   
       ASL    $F4     
       DEX            
       BPL    LFAC8   
       INX            
       STX    $E4,Y   
       RTS            

LFADB: STX    $AE     
       LDA    $F4     
       AND.wy $00A3,Y 
       STA    $AD     
       BNE    LFAEA   
       STA.wy $00E4,Y 
       RTS            

LFAEA: LDA.wy $00E4,Y 
       BNE    LFB1E   
       STY    $F6     
       TAY            
       LDA    $D8     
       ORA    #$40    
       STA    $D8     
       LDA    $A3     
       STA    $BC     
       LDA    $A4     
       LDX    #$0F    
LFB00: LSR    $BC     
       ROR            
       BCC    LFB06   
       INY            
LFB06: DEX            
       BPL    LFB00   
       CPY    #$05    
       BCC    LFB14   
       LDA    #$16    
       SEC            
       SBC    $BB     
       BCS    LFB16   
LFB14: LDA    #$00    
LFB16: CLC            
       ADC    #$07    
       LDY    $F6     
       STA.wy $00E4,Y 
LFB1E: LDX    $AE     
       LDA    $AD     
LFB22: CPX    #$05    
       BCS    LFB2A   
       LSR            
       INX            
       BPL    LFB22   
LFB2A: STA.wy $00FA,Y 
       TAX            
       LDA    LFFEB,X 
       LDX    $AE     
       CLC            
       ADC    LFFC8,X 
       ADC    #$08    
       STA.wy $00A7,Y 
       RTS            

LFB3D: LDA    $AD     
       AND.wy $00A3,Y 
       EOR.wy $00A3,Y 
       STA.wy $00A3,Y 
       RTS            

LFB49: LDX    #$06    
LFB4B: LDA    $B7,X   
       LDY    $BE,X   
       STY    $B7,X   
       STA    $BE,X   
       DEX            
       BPL    LFB4B   
       LDX    #$07    
LFB58: LDA    $C5,X   
       JSR    LFECD   
       STA    $F3     
       LDA    $C5,X   
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    $F3     
       STA    $C5,X   
       DEX            
       BPL    LFB58   
       LDA    $80     
       LSR            
       BCC    LFB77   
       LDA    $9A     
       EOR    #$01    
       STA    $9A     
LFB77: LDA    #$10    
       STA    $D9     
       RTS            

LFB7C: .byte $85,$02,$85,$2A,$A2,$0B,$95,$8B,$CA,$CA,$10,$FA
LFB88: LDA    #$07    
       STA    $F4     
LFB8C: STA    WSYNC   
       STA    HMOVE   
       NOP            
       NOP            
       NOP            
       NOP            
       LDX    #$F3    
       STX    NUSIZ0  
       STX    NUSIZ1  
       LDY    #$01    
       LDA    #$40    
       NOP            
       STA    RESP0   
       STA    RESP1   
       STA    RESBL   
       STY    CTRLPF  
       STA    HMBL    
       STX    HMP0    
       STA    WSYNC   
       STA    HMOVE   
       STY    VDELP0  
       STY    VDELP1  
       DEY            
       STY    GRP0    
       STY    GRP1    
       STY    GRP0    
       STA    $F3     
       STA    HMCLR   
LFBBE: LDY    $F4     
       LDA    ($95),Y 
       STA    $F3     
       LDA    ($93),Y 
       TAX            
       LDA    ($8B),Y 
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       LDA    ($8D),Y 
       STA    GRP1    
       LDA    ($8F),Y 
       STA    GRP0    
       LDA    ($91),Y 
       LDY    $F3     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       DEC    $F4     
       BPL    LFBBE   
       LDA    #$80    
       STA    HMP0    
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    GRP0    
       RTS            

LFBFA: .byte $EA,$EA,$EA,$EA,$EA,$EA,$00,$20,$20,$20,$70,$F8,$70,$88,$F8,$F8
       .byte $F8,$F8,$F8,$70,$F8,$7C,$00,$00,$00,$00,$00,$00,$00,$00,$7C,$F8
       .byte $70,$F8,$F8,$F8,$F8,$F8,$88,$70,$F8,$70,$20,$20,$20,$00,$20,$20
       .byte $20,$70,$F8,$70,$88,$F8,$F8,$F8,$F8,$F8,$F8,$F8,$70,$F8,$7C,$00
       .byte $00,$00,$00,$00,$00,$7C,$F8,$70,$F8,$F8,$F8,$F8,$F8,$F8,$F8,$88
       .byte $70,$F8,$70,$20,$20,$20,$00,$20,$20,$20,$70,$F8,$70,$88,$F8,$F8
       .byte $F8,$70,$F8,$7C,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$7C,$F8
       .byte $70,$F8,$F8,$F8,$88,$70,$F8,$70,$20,$20,$20,$00,$20,$20,$20,$70
       .byte $F8,$70,$88,$F8,$70,$F8,$7C,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$7C,$F8
       .byte $70,$F8,$88,$70,$F8,$70,$20,$20,$20,$00,$20,$20,$20,$70,$F8,$70
       .byte $88,$F8,$F8,$F8,$F8,$F8,$F8,$F8,$F8,$F8,$70,$F8,$7C,$00,$00,$00
       .byte $00,$7C,$F8,$70,$F8,$F8,$F8,$F8,$F8,$F8,$F8,$F8,$F8,$88,$70,$F8
       .byte $70,$20,$20,$20,$00,$7C,$F8,$70,$F8,$F8,$F8,$F8,$F8,$F8,$F8,$F8
       .byte $F8,$F8,$F8,$F8,$88,$70,$F8,$70,$20,$20,$20,$00,$20,$20,$20,$70
       .byte $F8,$70,$88,$F8,$F8,$F8,$F8,$F8,$F8,$F8,$F8,$F8,$F8,$F8,$F8,$70
       .byte $F8,$7C
LFCFC: .byte $00,$02,$01,$03,$00,$FF,$FF,$7E,$FF,$7E,$FF,$7E,$FF,$FF,$7E,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$3C,$3C,$5E,$76,$5E,$FB,$BF,$FF,$7E
       .byte $7E,$18,$3C,$14,$00,$00,$00,$00,$00,$3C,$7E,$7E,$FF,$FF,$7E,$3C
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$3C,$3C,$7E,$7E,$7E
       .byte $7E,$3C,$08,$08,$04,$04,$02,$03,$00,$00,$00,$00,$00,$7F,$6B,$55
       .byte $55,$6B,$7F,$7F,$3E,$EE,$AF,$25,$24,$00,$00,$00,$00,$00,$00,$3C
       .byte $7E,$FF,$FF,$E7,$C3,$7E,$3C,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$30,$30,$30,$30,$30,$30,$30,$30,$33,$33,$3F,$1E,$0C,$00,$00
       .byte $00,$00,$00,$1C,$1C,$1C,$1C,$3E,$3E,$1C,$3E,$1C,$3E,$1C,$3E,$1C
       .byte $00,$00,$00,$00
LFD90: .byte $00,$42,$42,$E7,$E7,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$C3,$00,$42
       .byte $42,$E7,$E7,$C3,$C3,$00,$00,$00,$00,$00,$00,$00,$00,$42,$42,$E7
       .byte $E7,$FF,$E7,$E7,$C3,$C3,$00,$00,$00,$00,$00,$42,$42,$E7,$E7,$FF
       .byte $FF,$FF,$E7,$E7,$C3,$C3,$00,$00
LFDC8: .byte $06,$04,$00,$00,$00,$00,$01,$03,$07
LFDD1: .byte $9A,$D6
LFDD3: BIT    $98     
       BMI    LFDFD   
       LDA    #$1F    
       STA    $EE     
       STA    AUDV0   
       STA    AUDV1   
       LDA    #$0C    
       STA    AUDC0   
       STA    AUDC1   
       INC    $EB     
       LDA    $EB     
       CLC            
       ADC    #$02    
       EOR    #$1F    
       STA    AUDF0   
       LSR            
       STA    AUDF1   
       LDA    $BC     
       ORA    $BD     
       BNE    LFDFD   
       LDA    #$10    
       STA    $D9     
LFDFD: JMP    LF01B   
LFE00: .byte $00,$28,$28,$12,$C4,$42,$1A,$12,$28,$26,$24,$00,$42,$42,$44,$44
       .byte $44,$44,$44,$42,$42,$C6,$C6,$C6,$C6,$00,$14,$16,$18,$32,$32,$18
       .byte $14,$00,$00,$42,$44,$44,$44,$44,$44,$42,$C6,$C6,$C6,$C6,$C6,$C6
       .byte $00,$0C,$0C,$0C,$0C,$0C,$0C,$14,$18,$18,$18,$18,$18,$00,$24,$24
       .byte $24,$4A,$4A,$4A,$4A,$4A,$00,$0C,$0C,$44,$44,$0C,$0C,$44,$44,$0C
       .byte $0C,$44,$44,$0C,$00,$28,$28,$28,$28,$28,$28,$C6,$C6,$C6,$0C,$44
       .byte $44,$44
LFE62: .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$F8,$F0,$00,$00,$00,$00
LFE72: .byte $FF,$FF,$FF,$FF,$7F,$3F,$0F,$03,$01,$00,$00,$00,$00,$00,$00,$00
LFE82: .byte $90,$9E,$AC,$BA,$90
LFE87: .byte $00,$24,$48,$12,$36,$5A,$6C,$7E
LFE8F: .byte $00,$19,$30,$0B,$22,$3D,$46,$54
LFE97: .byte $81,$8C,$8C,$5E,$5E,$10,$10,$39,$39,$B7,$B7,$CE
LFEA3: .byte $81,$75,$75,$50,$50,$00,$00,$27,$27,$A3,$A3,$E5
LFEAF: LDA    $A3     
       ORA    $A4     
       BEQ    LFECC   
       BIT    $D8     
       BVC    LFEC1   
LFEB9: LDA    $D8     
       AND    #$80    
       EOR    #$80    
       STA    $D8     
LFEC1: LDA    $D8     
       ASL            
       ROL            
       AND    #$01    
       TAX            
       LDA    $A3,X   
       BEQ    LFEB9   
LFECC: RTS            

LFECD: LSR            
LFECE: LSR            
LFECF: LSR            
       LSR            
       RTS            

LFED2: .byte $03,$05,$06,$03,$03,$01,$05,$04,$06,$06,$04
LFEDD: .byte $00,$07,$01,$06,$02,$05,$03,$04
LFEE5: .byte $05,$10,$15,$20,$25,$30,$35,$40,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA
       .byte $EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$3C,$66,$66,$66,$66
       .byte $66,$66,$3C,$3C,$18,$18,$18,$18,$18,$38,$18,$7E,$60,$60,$3C,$06
       .byte $06,$46,$3C,$3C,$46,$06,$0C,$0C,$06,$46,$3C,$0C,$0C,$0C,$7E,$4C
       .byte $2C,$1C,$0C,$7C,$46,$06,$06,$7C,$60,$60,$7E,$3C,$66,$66,$66,$7C
       .byte $60,$62,$3C,$18,$18,$18,$18,$0C,$06,$42,$7E,$3C,$66,$66,$3C,$3C
       .byte $66,$66,$3C,$3C,$46,$06,$3E,$66,$66,$66,$3C,$00,$00,$00,$00,$00
       .byte $00,$00,$00
LFF58: .byte $0C,$06,$03,$01,$00,$00,$00,$00
LFF60: .byte $2D,$29,$E9,$A9,$ED,$61,$2F,$00
LFF68: .byte $50,$58,$5C,$56,$53,$11,$F0,$00
LFF70: .byte $BA,$8A,$BA,$A2,$3A,$80,$FE,$00
LFF78: .byte $E9,$AB,$AF,$AD,$E9,$00,$00,$00,$00,$00,$00,$F7,$95,$87,$90,$F0
       .byte $00,$47,$41,$77,$55,$75,$00,$00,$00,$03,$00,$4B,$4A,$6B,$00,$08
       .byte $00,$80,$80,$AA,$AA,$BA,$27,$22,$00,$00,$00,$11,$11,$17,$15,$17
       .byte $00,$00,$00,$77,$51,$73,$51,$77
LFFB0: .byte $84,$D6,$D6,$1A,$26,$26,$44,$00
LFFB8: .byte $FE,$FD,$FB,$F7,$EF,$DF,$BF,$7F
LFFC0: .byte $01,$02,$04,$08,$10,$20,$40,$80
LFFC8: .byte $0B,$1C,$2C,$3D,$4D,$5E,$24,$24,$3C,$7E,$7E,$7E,$7E,$66
LFFD6: .byte $0A,$07,$0C,$0D,$0D,$08,$0D,$0D
LFFDE: LDA    $82     
       ASL            
       ASL            
       ASL            
       EOR    $82     
       ASL            
       ROL    $82     
       JMP    LFEAF   
LFFEB: .byte $00,$20,$10,$10,$00
LFFF0: .byte $00,$00,$00,$01,$00,$02,$01,$03,$EA,$EA,$EA,$EA,$00,$F0,$00,$F0
