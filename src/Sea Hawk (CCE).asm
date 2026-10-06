; Disassembly of roms/Sea Hawk (CCE).bin
; Disassembled Tue Oct  6 15:22:42 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Sea Hawk (CCE).bin
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
REFP0   =  $0B
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
ENAM0   =  $1D
ENAM1   =  $1E
HMP0    =  $20
HMP1    =  $21
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
       LDA    #$00    
LF006: STA    VSYNC,X 
       TXS            
       INX            
       BNE    LF006   
       LDA    #$FF    
       STA    $F5     
       LDA    #$01    
       STA    $F8     
LF014: JSR    LFD6C   
LF017: STA    WSYNC   
       LDA    $A2     
       LDX    #$02    
       JSR    LFC20   
       JSR    LFC76   
       LDA    $B6     
       LDX    #$03    
       JSR    LFC20   
       JSR    LFC76   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$0F    
       STA    COLUP0  
       STA    COLUP1  
       JSR    LFC3C   
       STA    HMCLR   
LF042: LDA    INTIM   
       BNE    LF042   
       STA    WSYNC   
       STA    HMOVE   
       STA    VBLANK  
       STA    CXCLR   
       STA    HMCLR   
       LDA    #$07    
       STA    $C9     
       STA    VDELP0  
       STA    VDELP1  
LF059: LDY    $C9     
       LDA    ($8A),Y 
       STA    $CA     
       LDA    ($88),Y 
       TAX            
       LDA    ($80),Y 
       STA    WSYNC   
       NOP            
       STA    GRP0    
       LDA    ($82),Y 
       STA    GRP1    
       LDA    ($84),Y 
       STA    GRP0    
       LDA    ($86),Y 
       LDY    $CA     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       DEC    $C9     
       BPL    LF059   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$00    
       STA    VDELP0  
       STA    VDELP1  
       STA    GRP0    
       STA    GRP1    
       LDA    #$AC    
       STA    COLUBK  
       LDA    #$07    
       STA    NUSIZ0  
       LDA    #$06    
       STA    NUSIZ1  
       LDA    #$0F    
       STA    COLUP0  
       STA    COLUP1  
       LDA    $D9     
       STA    $C9     
       LDA    $DA     
       STA    $CA     
       JSR    LFD1E   
       LDY    #$0E    
       JSR    LFC3C   
       STA    HMCLR   
LF0B3: LDA    LFFB4,Y 
       LDX    LFFC3,Y 
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       STX    GRP1    
       LDA    $DB     
       STA    $C9     
       LDA    $DC     
       STA    $CA     
       DEY            
       STA    HMCLR   
       BPL    LF0B3   
       JSR    LFD1E   
       LDY    #$0E    
       JSR    LFC3C   
       STA    HMCLR   
LF0D8: LDA    LFFD2,Y 
       LDX    LFFE1,Y 
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       STX    GRP1    
       LDA    $E4     
       STA    $C9     
       LDA    $AE     
       STA    $CA     
       DEY            
       BPL    LF0D8   
       JSR    LFD1E   
       LDY    $F8     
       DEY            
       LDA    LF314,Y 
       STA    NUSIZ0  
       LDA    #$20    
       STA    NUSIZ1  
       LDA    #$47    
       STA    COLUP0  
       LDA    #$00    
       STA    COLUP1  
       LDA    $D7     
       AND    #$08    
       STA    REFP0   
       LDA    $BE     
       STA    REFP1   
       STA    HMCLR   
       STA    WSYNC   
       STA    HMOVE   
       LDX    #$66    
       LDY    $CC     
       STA    HMCLR   
       BEQ    LF146   
LF120: LDA    #$00    
       STA    $C9     
       STA    $CA     
       LDA    #$02    
       CPX    $A6     
       BNE    LF12E   
       STA    $C9     
LF12E: CPX    $BA     
       BNE    LF134   
       STA    $CA     
LF134: STA    CXCLR   
       STA    WSYNC   
       STA    HMOVE   
       LDA    $C9     
       STA    ENAM0   
       LDA    $CA     
       STA    ENAM1   
       DEX            
       DEY            
       BNE    LF120   
LF146: LDY    $CD     
       BEQ    LF17F   
LF14A: LDA    #$00    
       STA    $C9     
       STA    $CA     
       LDA    #$02    
       CPX    $A6     
       BNE    LF158   
       STA    $C9     
LF158: CPX    $BA     
       BNE    LF15E   
       STA    $CA     
LF15E: LDA    ($8C),Y 
       BIT    $C8     
       BPL    LF16D   
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       JMP    LF173   
LF16D: STA    WSYNC   
       STA    HMOVE   
       STA    GRP1    
LF173: LDA    $C9     
       STA    ENAM0   
       LDA    $CA     
       STA    ENAM1   
       DEX            
       DEY            
       BNE    LF14A   
LF17F: LDY    $CE     
       BEQ    LF1E1   
       BMI    LF1B3   
LF185: LDA    #$00    
       STA    $C9     
       STA    $CA     
       LDA    #$02    
       CPX    $A6     
       BNE    LF193   
       STA    $C9     
LF193: CPX    $BA     
       BNE    LF199   
       STA    $CA     
LF199: LDA    ($8E),Y 
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       LDA    ($90),Y 
       STA    GRP1    
       LDA    $C9     
       STA    ENAM0   
       LDA    $CA     
       STA    ENAM1   
       DEX            
       DEY            
       BNE    LF185   
       BEQ    LF1E1   
LF1B3: TYA            
       AND    #$7F    
       TAY            
LF1B7: LDA    #$00    
       STA    $C9     
       STA    $CA     
       LDA    #$02    
       CPX    $A6     
       BNE    LF1C5   
       STA    $C9     
LF1C5: CPX    $BA     
       BNE    LF1CB   
       STA    $CA     
LF1CB: STA    WSYNC   
       STA    HMOVE   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       LDA    $C9     
       STA    ENAM0   
       LDA    $CA     
       STA    ENAM1   
       DEX            
       DEY            
       BNE    LF1B7   
LF1E1: LDY    $CF     
       BEQ    LF211   
LF1E5: LDA    #$00    
       STA    $C9     
       STA    $CA     
       LDA    #$02    
       CPX    $A6     
       BNE    LF1F3   
       STA    $C9     
LF1F3: CPX    $BA     
       BNE    LF1F9   
       STA    $CA     
LF1F9: LDA    ($92),Y 
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       LDA    ($94),Y 
       STA    GRP1    
       LDA    $C9     
       STA    ENAM0   
       LDA    $CA     
       STA    ENAM1   
       DEX            
       DEY            
       BNE    LF1E5   
LF211: LDA    #$00    
       STA    $C9     
       STA    $CA     
       LDA    #$02    
       CPX    $A6     
       BNE    LF21F   
       STA    $C9     
LF21F: CPX    $BA     
       BNE    LF225   
       STA    $CA     
LF225: LDA    #$00    
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       STA    GRP1    
       LDA    $C9     
       STA    ENAM0   
       LDA    $CA     
       STA    ENAM1   
       DEX            
       CPX    #$0A    
       BNE    LF211   
       LDA    $9B     
       AND    #$0F    
       TAY            
       LDA    $9A     
       BMI    LF266   
       STA    NUSIZ1  
       LDA    $99     
       STA    COLUP1  
       STA    WSYNC   
       NOP            
       NOP            
       LDA    $D0     
       STA    ENAM0   
       LDA    $9B     
       STA    HMP1    
LF257: DEY            
       BPL    LF257   
       STA    RESP1   
       LDA    #$00    
       STA    REFP0   
       STA    REFP1   
       DEX            
       JMP    LF287   
LF266: STA    NUSIZ1  
       LDA    $98     
       STA    COLUP1  
       STA    WSYNC   
       NOP            
       NOP            
       LDA    $D0     
       STA    ENAM0   
       LDA    $9B     
       STA    HMP1    
       JSR    LFC3A   
       LDA    #$00    
       STA    REFP0   
       STA    REFP1   
       DEX            
LF282: DEY            
       BPL    LF282   
       STA    RESP1   
LF287: STA    WSYNC   
       STA    HMOVE   
       LDY    #$09    
       LDA    ($96),Y 
       STA    GRP1    
       LDA    #$00    
       STA    ENAM0   
       LDA    #$02    
       CPX    $A6     
       BNE    LF29D   
       STA    ENAM0   
LF29D: DEX            
       DEY            
       STA    HMCLR   
LF2A1: LDA    #$00    
       STA    $C9     
       CPX    $A6     
       BNE    LF2AB   
       STA    $C9     
LF2AB: LDA    ($96),Y 
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP1    
       LDA    $C9     
       STA    ENAM0   
       LDA    LF30B,Y 
       STA    COLUBK  
       DEX            
       DEY            
       CPY    #$05    
       BNE    LF2A1   
       LDA    $99     
       STA    COLUP1  
LF2C6: LDA    #$00    
       STA    $C9     
       LDA    #$02    
       CPX    $A6     
       BNE    LF2D2   
       STA    $C9     
LF2D2: LDA    ($96),Y 
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP1    
       LDA    $C9     
       STA    ENAM0   
       LDA    LF30B,Y 
       STA    COLUBK  
       DEX            
       DEY            
       CPY    #$01    
       BNE    LF2C6   
LF2E9: LDA    ($96),Y 
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP1    
       BIT    $D1     
       BPL    LF317   
       LDA    LFED4,Y 
       STA    PF0     
       LDA    LFED8,Y 
       STA    PF1     
       LDA    LFEDC,Y 
       STA    PF2     
       LDA    #$00    
       STA    ENAM0   
       JMP    LF32A   
LF30B: .byte $1C,$1C,$A7,$1C,$3C,$5C,$6C,$7C,$8C
LF314: .byte $30,$20,$10
LF317: LDA    LFED6,Y 
       STA    PF0     
       LDA    LFEDA,Y 
       STA    PF1     
       LDA    LFEDE,Y 
       STA    PF2     
       LDA    #$00    
       STA    ENAM0   
LF32A: DEX            
       DEY            
       BPL    LF2E9   
       LDY    #$12    
LF330: STA    WSYNC   
       STA    HMOVE   
       LDA    #$00    
       STA    ENAM1   
       STA    GRP1    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       DEY            
       BPL    LF330   
       STA    WSYNC   
       STA    HMOVE   
       LDX    #$03    
       STX    NUSIZ0  
       STX    NUSIZ1  
       LDA    #$00    
       STA    COLUBK  
       LDA    #$0F    
       STA    COLUP0  
       STA    COLUP1  
       STA    RESP0   
       STA    RESP1   
       LDA    #$10    
       STA    HMP1    
       LDX    #$01    
       LDA    $F8     
       ASL            
       ASL            
       ASL            
       ASL            
       STA    $C9     
       LDA    $D2     
       STA    $CA     
LF36D: STA    WSYNC   
       STA    HMOVE   
       TXA            
       ASL            
       ASL            
       TAY            
       LDA    $C9,X   
       AND    #$F0    
       LSR            
       STA.wy $0084,Y 
       LDA    $C9,X   
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA.wy $0086,Y 
       DEX            
       STA    HMCLR   
       BPL    LF36D   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$07    
       STA    $C9     
       STA    VDELP0  
       STA    VDELP1  
       LDA    #$50    
       STA    $80     
       LDA    #$EC    
       STA    $82     
LF3A0: LDY    $C9     
       LDA    ($8A),Y 
       STA    $CA     
       LDA    ($88),Y 
       TAX            
       LDA    ($84),Y 
       STA    WSYNC   
       NOP            
       STA    GRP0    
       LDA    LFFEC,Y 
       STA    GRP1    
       LDA    ($82),Y 
       STA    GRP0    
       LDA    ($80),Y 
       LDY    $CA     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       DEC    $C9     
       BPL    LF3A0   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$00    
       STA    VDELP0  
       STA    VDELP1  
       STA    GRP1    
       STA    GRP0    
       LDA    #$78    
       STA    $8A     
       LDA    #$80    
       STA    $88     
       LDA    #$88    
       STA    $86     
       LDA    #$90    
       STA    $84     
       LDA    #$98    
       STA    $82     
       LDA    #$A0    
       STA    $80     
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$07    
       STA    $C9     
       STA    VDELP0  
       STA    VDELP1  
       LDA    #$57    
       STA    COLUP0  
       STA    COLUP1  
LF401: LDY    $C9     
       LDA    ($8A),Y 
       STA    $CA     
       LDA    ($88),Y 
       TAX            
       LDA    ($80),Y 
       STA    WSYNC   
       NOP            
       STA    GRP0    
       LDA    ($82),Y 
       STA    GRP1    
       LDA    ($84),Y 
       STA    GRP0    
       LDA    ($86),Y 
       LDY    $CA     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       DEC    $C9     
       BPL    LF401   
       LDA    #$1A    
       STA    TIM64T  
       LDX    #$02    
LF430: TXA            
       ASL            
       ASL            
       TAY            
       LDA    $C2,X   
       AND    #$F0    
       LSR            
       STA.wy $0080,Y 
       LDA    $C2,X   
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA.wy $0082,Y 
       DEX            
       BPL    LF430   
       INX            
LF44A: LDA    $80,X   
       CMP    #$00    
       BNE    LF45A   
       LDA    #$EC    
       STA    $80,X   
       INX            
       INX            
       CPX    #$09    
       BCC    LF44A   
LF45A: NOP            
       BIT    $D5     
       BVS    LF477   
       BPL    LF4AE   
       LDA    #$08    
       STA    AUDC0   
       LDA    $D5     
       AND    #$3F    
       LSR            
       LSR            
       EOR    #$1F    
       STA    AUDF0   
       LSR            
       EOR    #$0F    
       STA    AUDV0   
       JMP    LF4DF   
LF477: LDA    $D5     
       AND    #$3F    
       BEQ    LF4A5   
       DEC    $D5     
       LDA    #$0F    
       STA    AUDV0   
       LDA    $F6     
       BNE    LF497   
       JSR    LFC3F   
       AND    #$03    
       NOP            
       NOP            
       STA    AUDF0   
       LDA    #$04    
       STA    AUDC0   
       JMP    LF4DF   
LF497: JSR    LFC3F   
       AND    #$0F    
       STA    AUDF0   
       LDA    #$04    
       STA    AUDC0   
       JMP    LF4DF   
LF4A5: LDA    #$00    
       STA    $D5     
       STA    $DD     
       JMP    LF4DF   
LF4AE: LDA    $DD     
       BEQ    LF4DB   
       DEC    $DD     
       BIT    $D7     
       BVS    LF4C9   
       LDY    #$0C    
       STY    AUDC0   
       LSR            
       LSR            
       EOR    #$1F    
       STA    AUDF0   
       LDA    #$0F    
       STA    AUDV0   
       JMP    LF4DF   
LF4C9: LDY    #$08    
       STY    AUDC0   
       LSR            
       LSR            
       EOR    #$1F    
       STA    AUDF0   
       LSR            
       EOR    #$0F    
       STA    AUDV0   
       JMP    LF4DF   
LF4DB: LDA    #$00    
       STA    AUDV0   
LF4DF: LDA    #$03    
       STA    AUDV1   
       LDA    #$08    
       STA    AUDC1   
       LDA    #$07    
       STA    AUDF1   
LF4EB: LDA    INTIM   
       BNE    LF4EB   
       LDY    #$82    
       STY    WSYNC   
       STY    VBLANK  
       STY    VSYNC   
       STY    WSYNC   
       STY    WSYNC   
       STY    WSYNC   
       STA    VSYNC   
       LDA    #$2C    
       STA    TIM64T  
       LDA    SWCHB   
       STA    $C9     
       LSR            
       BCS    LF518   
LF50D: LDA    #$08    
       STA    $D2     
       LDA    #$00    
       STA    $F5     
       JMP    LF014   
LF518: DEC    $F7     
       BPL    LF536   
       LDA    #$17    
       STA    $F7     
       LDA    $C9     
       LSR            
       LSR            
       BCS    LF536   
       LDA    $F8     
       CMP    #$03    
       BNE    LF532   
       LDA    #$01    
       STA    $F8     
       BNE    LF50D   
LF532: INC    $F8     
       BNE    LF50D   
LF536: NOP            
       LDA    $F2     
       BNE    LF549   
       LDA    VSYNC   
       ASL            
       BCS    LF54F   
       BIT    $D5     
       BMI    LF549   
       LDA    COLUP1  
       ASL            
       BCS    LF555   
LF549: JSR    LF5AD   
       JMP    LF5BE   
LF54F: LDA    $A6     
       CMP    #$0B    
       BCC    LF58F   
LF555: LDX    $DF     
       LDA    $EA,X   
       BNE    LF549   
       LDA    #$3F    
       STA    $D6     
       LDA    #$1F    
       STA    $EA,X   
       LDA    #$00    
       STA    $A2     
       LDA    #$9F    
       STA    $A6     
       LDA    $F5     
       BNE    LF584   
       DEC    $F0     
       BPL    LF584   
       LDA    #$09    
       STA    $F0     
       LDA    $D2     
       CMP    #$20    
       BEQ    LF584   
       SEC            
       CLC            
       ADC    #$01    
       STA    $D2     
       CLD            
LF584: LDA    #$00    
       JSR    LFC8E   
       JSR    LF5AD   
       JMP    LF5BE   
LF58F: LDA    $ED     
       BNE    LF549   
       LDA    #$5F    
       STA    $96     
       LDA    #$3F    
       STA    $ED     
       LDA    #$04    
       LDY    $99     
       BEQ    LF5A7   
       JSR    LFCCA   
       JMP    LF5BE   
LF5A7: JSR    LFC8E   
       JMP    LF5BE   
LF5AD: LDA    $ED     
       BEQ    LF5BD   
       DEC    $ED     
       BNE    LF5BD   
       LDA    #$D0    
       STA    $9D     
       LDA    #$AA    
       STA    $96     
LF5BD: RTS            

LF5BE: LDA    $F2     
       BEQ    LF5C5   
       JMP    LF5FD   
LF5C5: LDA    VBLANK  
       ASL            
       BCS    LF5F5   
       LDA    COLUP1  
       ASL            
       BCC    LF5FD   
LF5CF: BIT    $D5     
       BMI    LF5FD   
       LDA    #$BF    
       STA    $D5     
       LDA    #$5F    
       STA    $9F     
       LDA    #$F4    
       STA    $E6     
       LDA    $A0     
       CLC            
       ADC    #$08    
       STA    $E7     
       LDA    $A1     
       STA    $E8     
       LDA    #$FF    
       STA    $F2     
       LDA    #$00    
       STA    $DD     
       JMP    LF83A   
LF5F5: LDX    $DF     
       LDA    #$00    
       STA    $B7,X   
       BEQ    LF5CF   
LF5FD: BIT    $D5     
       BMI    LF604   
       JMP    LF6B8   
LF604: BVC    LF609   
       JMP    LF83A   
LF609: LDA    SWCHA   
       STA    $C9     
       ASL            
       BCC    LF618   
       ASL            
       BCC    LF61C   
       LDA    #$00    
       BEQ    LF61E   
LF618: LDA    #$FF    
       BNE    LF61E   
LF61C: LDA    #$01    
LF61E: STA    $D8     
       LDA    $D5     
       AND    #$3F    
       BEQ    LF661   
       DEC    $D5     
       LDA    $D5     
       AND    #$3F    
       BEQ    LF655   
       LDA    $A0     
       CLC            
       ADC    $D8     
       CMP    #$9F    
       BCS    LF647   
       STA    $A0     
       LDA    $A1     
       SEC            
       SBC    #$01    
       CMP    #$14    
       BCC    LF647   
       STA    $A1     
       JMP    LF661   
LF647: LDA    #$11    
       STA    $A0     
       LDA    #$64    
       STA    $A1     
       LDA    #$C0    
       AND    $D5     
       STA    $D5     
LF655: LDA    #$EC    
       STA    $9F     
       LDA    $D7     
       AND    #$F7    
       ORA    #$01    
       STA    $D7     
LF661: DEC    $E9     
       BPL    LF6B0   
       LDA    #$03    
       STA    $E9     
       LDA    $E8     
       SEC            
       SBC    #$01    
       CMP    #$14    
       BCS    LF6B3   
       LDA    #$EC    
       STA    $E6     
       LDA    #$11    
       STA    $A0     
       LDA    #$64    
       STA    $A1     
       LDA    $E7     
       CLC            
       ADC    #$04    
       CMP    $9C     
       BCC    LF69C   
       LDA    $9C     
       CLC            
       ADC    #$05    
       CMP    $E7     
       BCC    LF69C   
       LDA    $99     
       CMP    #$00    
       BEQ    LF69C   
       LDA    #$00    
       STA    $F6     
       BEQ    LF6AC   
LF69C: LDA    #$FF    
       STA    $F6     
       LDY    $D2     
       BEQ    LF6AC   
       DEC    $D2     
       BNE    LF6AC   
       LDY    #$FF    
       STY    $F5     
LF6AC: LDA    #$FF    
       STA    $D5     
LF6B0: JMP    LF83A   
LF6B3: STA    $E8     
       JMP    LF83A   
LF6B8: LDA    $D2     
       BNE    LF6DA   
       LDA    #$00    
       STA    $F2     
       DEC    $F3     
       BPL    LF6D3   
       LDA    #$2F    
       STA    $F3     
       JSR    LFC3F   
       AND    #$C0    
       BEQ    LF6D3   
       LDA    $D3     
       STA    $F4     
LF6D3: LDA    $F4     
       STA    $C9     
       JMP    LF6F3   
LF6DA: LDA    $F2     
       BEQ    LF6EE   
       LDA    REFP1   
       ASL            
       NOP            
       LDA    #$00    
       STA    $F2     
       BEQ    LF6EE   
       LDA    #$FF    
       STA    $C9     
       BNE    LF6F3   
LF6EE: LDA    SWCHA   
       STA    $C9     
LF6F3: LDA    #$08    
       BIT    $D7     
       BNE    LF73D   
       LDA    $C9     
       ASL            
       ASL            
       BCC    LF734   
       LDA    #$01    
       BIT    $D7     
       BEQ    LF71D   
       LDA    $A0     
       CMP    #$10    
       BNE    LF715   
       LDA    #$FE    
       AND    $D7     
       STA    $D7     
LF711: LDA    #$FF    
       BNE    LF719   
LF715: DEC    $A0     
LF717: LDA    #$FE    
LF719: STA    $D8     
       BNE    LF780   
LF71D: LDA    $C9     
       ASL            
       BCC    LF72A   
       LDA    #$10    
       CMP    $A0     
       BNE    LF715   
       BEQ    LF711   
LF72A: LDA    #$30    
       CMP    $A0     
       BEQ    LF717   
       INC    $A0     
       BNE    LF711   
LF734: LDA    #$09    
       ORA    $D7     
       STA    $D7     
       JMP    LF780   
LF73D: LDA    $C9     
       ASL            
       BCC    LF778   
       LDA    #$01    
       BIT    $D7     
       BEQ    LF760   
       LDA    $A0     
       CMP    #$90    
       BNE    LF758   
       LDA    #$FE    
       AND    $D7     
       STA    $D7     
LF754: LDA    #$01    
       BNE    LF75C   
LF758: INC    $A0     
LF75A: LDA    #$02    
LF75C: STA    $D8     
       BNE    LF780   
LF760: LDA    $C9     
       ASL            
       ASL            
       BCC    LF76E   
       LDA    #$90    
       CMP    $A0     
       BNE    LF758   
       BEQ    LF754   
LF76E: LDA    #$70    
       CMP    $A0     
       BEQ    LF75A   
       DEC    $A0     
       BNE    LF754   
LF778: LDA    #$F7    
       AND    $D7     
       ORA    #$01    
       STA    $D7     
LF780: LDA    $C9     
       ASL            
       ASL            
       ASL            
       BCS    LF797   
       LDA    $A1     
       CMP    #$16    
       BCC    LF7A8   
       LDA    $F5     
       BNE    LF793   
       DEC    $A1     
LF793: DEC    $A1     
       BNE    LF7A8   
LF797: ASL            
       BCS    LF7A8   
       LDA    $A1     
       CMP    #$63    
       BCS    LF7A8   
       LDA    $F5     
       BNE    LF7A6   
       INC    $A1     
LF7A6: INC    $A1     
LF7A8: LDA    $F2     
       BEQ    LF7B4   
       LDA    #$EC    
       STA    $E6     
       STA    $9F     
       BNE    LF7BC   
LF7B4: LDA    #$57    
       STA    $E6     
       LDA    #$4F    
       STA    $9F     
LF7BC: LDA    $A0     
       STA    $E4     
       STA    $E7     
       LDA    $A1     
       STA    $E5     
       STA    $E8     
       LDA    $D2     
       BEQ    LF7D5   
       LDA    $F2     
       BNE    LF83A   
       LDA    REFP1   
       ASL            
       BCS    LF839   
LF7D5: LDA    $A2     
       BNE    LF839   
       LDA    #$08    
       AND    $D7     
       BEQ    LF7F7   
       LDA    #$80    
       ORA    $D7     
       STA    $D7     
       LDA    $C9     
       ASL            
       ASL            
       BCS    LF818   
       LDA    #$40    
       ORA    $D7     
       STA    $D7     
       LDA    $A0     
       STA    $A2     
       BNE    LF80F   
LF7F7: LDA    #$7F    
       AND    $D7     
       STA    $D7     
       LDA    $C9     
       ASL            
       BCS    LF818   
       LDA    #$40    
       ORA    $D7     
       STA    $D7     
       LDA    $A0     
       CLC            
       ADC    #$08    
       STA    $A2     
LF80F: LDA    $A1     
       SEC            
       SBC    #$04    
       STA    $A6     
       BNE    LF832   
LF818: LDA    $A1     
       CMP    #$5F    
       BCS    LF839   
       LDA    #$BF    
       AND    $D7     
       STA    $D7     
       LDA    $A0     
       CLC            
       ADC    #$03    
       STA    $A2     
       LDA    $A1     
       SEC            
       SBC    #$06    
       STA    $A6     
LF832: LDA    #$7F    
       STA    $DD     
       JMP    LF88F   
LF839: NOP            
LF83A: LDX    #$03    
LF83C: LDA    $D9,X   
       CLC            
       ADC    $D8     
       BCS    LF851   
       CMP    #$A5    
       BCC    LF84B   
       LDA    #$9F    
       BNE    LF851   
LF84B: CMP    #$A0    
       BCC    LF851   
       LDA    #$00    
LF851: STA    $D9,X   
       DEX            
       BPL    LF83C   
       LDA    $A2     
       BEQ    LF88F   
       BIT    $D7     
       BVS    LF86C   
       DEC    $A6     
       BIT    $D7     
       BPL    LF868   
       LDA    #$FF    
       BNE    LF874   
LF868: LDA    #$01    
       BNE    LF874   
LF86C: BPL    LF872   
       LDA    #$FC    
       BNE    LF874   
LF872: LDA    #$04    
LF874: CLC            
       ADC    $A2     
       STA    $A2     
       CMP    #$9F    
       BCS    LF887   
       CMP    #$05    
       BCC    LF887   
       LDA    $A6     
       CMP    #$01    
       BCS    LF88F   
LF887: LDA    #$00    
       STA    $A2     
       LDA    #$9F    
       STA    $A6     
LF88F: NOP            
       DEC    $E0     
       BPL    LF8C4   
       LDA    #$0F    
       STA    $E0     
       LDX    #$02    
LF89A: JSR    LFC3F   
       STA    $C9     
       BIT    $C9     
       BPL    LF8AA   
       LDA    #$02    
       ORA    $A7,X   
       JMP    LF8AE   
LF8AA: LDA    #$FD    
       AND    $A7,X   
LF8AE: STA    $A7,X   
       BIT    $C9     
       BVS    LF8BB   
       LDA    #$01    
       ORA    $A7,X   
       JMP    LF8BF   
LF8BB: LDA    #$FE    
       AND    $A7,X   
LF8BF: STA    $A7,X   
       DEX            
       BPL    LF89A   
LF8C4: DEC    $F1     
       BPL    LF940   
       LDA    #$01    
       STA    $F1     
       LDX    #$02    
LF8CE: LDA    $EA,X   
       BEQ    LF8D5   
       JMP    LF920   
LF8D5: LDA    $A7,X   
       AND    #$02    
       BNE    LF8E3   
       LDA    $AF,X   
       SEC            
       SBC    #$01    
       JMP    LF8E8   
LF8E3: LDA    $AF,X   
       CLC            
       ADC    #$01    
LF8E8: CLC            
       ADC    $D8     
       STA    $AF,X   
       CMP    $A0     
       BCS    LF8F7   
       LDA    #$08    
       ORA    $A7,X   
       BNE    LF8FB   
LF8F7: LDA    #$F7    
       AND    $A7,X   
LF8FB: STA    $A7,X   
       LDA    $A7,X   
       AND    #$01    
       BNE    LF90B   
       LDA    $B3,X   
       SEC            
       SBC    #$01    
       JMP    LF910   
LF90B: LDA    $B3,X   
       CLC            
       ADC    #$01    
LF910: CMP    #$14    
       BCC    LF91A   
       CMP    #$64    
       BCS    LF91A   
       STA    $B3,X   
LF91A: DEX            
       BPL    LF8CE   
       JMP    LF940   
LF920: LDA    $AF,X   
       CLC            
       ADC    $D8     
       STA    $AF,X   
       LDA    $B3,X   
       SEC            
       SBC    #$01    
       STA    $B3,X   
       CMP    #$14    
       BCS    LF91A   
       LDA    #$D0    
       STA    $AF,X   
       LDA    #$3C    
       STA    $B3,X   
       LDA    #$00    
       STA    $EA,X   
       BEQ    LF91A   
LF940: LDA    $9D     
       CLC            
       ADC    $D8     
       STA    $9D     
       CMP    #$D0    
       BEQ    LF94F   
       CMP    #$D1    
       BNE    LF95D   
LF94F: LDA    #$01    
       AND    $D3     
       BNE    LF959   
       LDA    #$47    
       BNE    LF95B   
LF959: LDA    #$00    
LF95B: STA    $99     
LF95D: NOP            
       LDX    #$02    
LF960: LDA    $B7,X   
       BEQ    LF96A   
       DEX            
       BPL    LF960   
       JMP    LFA07   
LF96A: LDY    $E1     
       CPY    #$03    
       BCS    LF9EF   
       CPY    $D4     
       BCS    LF979   
       LDA.wy $00AF,Y 
       CMP    #$9F    
LF979: BCS    LF9F9   
       LDA.wy $00AB,Y 
       CMP    #$5F    
       BEQ    LF9F9   
LF982: JSR    LFC3F   
       AND    #$01    
       BEQ    LF9F9   
       CPY    #$03    
       BCS    LF9BD   
       LDA    #$BF    
       AND    $A7,X   
       STA    $A7,X   
       LDA    #$08    
       AND.wy $00A7,Y 
       BNE    LF9A6   
       LDA    #$7F    
       AND    $A7,X   
       STA    $A7,X   
       LDA.wy $00AF,Y 
       JMP    LF9B2   
LF9A6: LDA    #$80    
       ORA    $A7,X   
       STA    $A7,X   
       LDA.wy $00AF,Y 
       CLC            
       ADC    #$08    
LF9B2: STA    $B7,X   
       LDA.wy $00B3,Y 
       SEC            
       SBC    #$04    
       JMP    LF9DE   
LF9BD: LDA    #$40    
       ORA    $A7,X   
       STA    $A7,X   
       LDA    $9D     
       CMP    $A0     
       BCS    LF9CF   
       LDA    #$20    
       ORA    $A7,X   
       BNE    LF9D3   
LF9CF: LDA    #$DF    
       AND    $A7,X   
LF9D3: STA    $A7,X   
       LDA    $9D     
       CLC            
       ADC    #$03    
       STA    $B7,X   
       LDA    #$08    
LF9DE: STA    $BB,X   
       LDA    #$3F    
       STA    $E2     
       DEX            
       BPL    LF9F9   
       DEY            
       BMI    LFA01   
       STY    $E1     
       JMP    LFA07   
LF9EF: LDA    $9D     
       CMP    #$9F    
       BCS    LF9F9   
       LDA    $99     
       BEQ    LF982   
LF9F9: DEY            
       BMI    LFA01   
       STY    $E1     
       JMP    LF960   
LFA01: LDA    #$03    
       STA    $E1     
       BNE    LFA07   
LFA07: NOP            
       LDX    #$02    
LFA0A: LDA    $B7,X   
       BNE    LFA14   
LFA0E: DEX            
       BPL    LFA0A   
       JMP    LFA56   
LFA14: LDA    $A7,X   
       STA    $C9     
       LDA    #$20    
       BIT    $C9     
       BVS    LFA39   
       BPL    LFA28   
       LDA    $B7,X   
       CLC            
       ADC    #$02    
       JMP    LFA2D   
LFA28: LDA    $B7,X   
       SEC            
       SBC    #$02    
LFA2D: STA    $B7,X   
       CMP    #$9F    
       BCC    LFA0E   
       LDA    #$00    
       STA    $B7,X   
       BEQ    LFA0E   
LFA39: BEQ    LFA3F   
       INC    $B7,X   
       BNE    LFA41   
LFA3F: DEC    $B7,X   
LFA41: INC    $BB,X   
       LDA    $B7,X   
       CMP    #$9F    
       BCS    LFA4F   
       LDA    $BB,X   
       CMP    #$65    
       BCC    LFA53   
LFA4F: LDA    #$00    
       STA    $B7,X   
LFA53: JMP    LFA0E   
LFA56: NOP            
       LDX    $DF     
       DEX            
       BPL    LFA5F   
       LDX    $D4     
       DEX            
LFA5F: STX    $DF     
       LDA    $AF,X   
       CMP    #$9F    
       BCS    LFA74   
       STA    $AE     
       LDA    $B3,X   
       STA    $B2     
       LDA    $AB,X   
       STA    $AA     
       JMP    LFA78   
LFA74: LDA    #$EC    
       STA    $AA     
LFA78: LDA    $A7,X   
       AND    #$08    
       STA    $BE     
       LDA    $B7,X   
       STA    $B6     
       LDA    $BB,X   
       STA    $BA     
       LDX    $9D     
       CPX    #$A0    
       BCC    LFA8E   
       LDX    #$00    
LFA8E: STX    $9C     
       LDA    $DE     
       EOR    #$40    
       AND    #$F0    
       STA    $C9     
       LDA    $DE     
       AND    #$0F    
       SEC            
       SBC    #$01    
       BNE    LFAE3   
       BIT    $D5     
       BPL    LFAA9   
       LDA    #$01    
       BNE    LFAAB   
LFAA9: LDA    #$03    
LFAAB: ORA    $C9     
       EOR    #$80    
       STA    $DE     
       LDA    $D1     
       EOR    #$80    
       STA    $D1     
       BIT    $DE     
       BPL    LFACC   
       LDA    $E6     
       STA    $E3     
       LDA    $E7     
       STA    $E4     
       LDA    $E8     
       STA    $E5     
       LDA    #$67    
       JMP    LFADA   
LFACC: LDA    $9F     
       STA    $E3     
       LDA    $A0     
       STA    $E4     
       LDA    $A1     
       STA    $E5     
       LDA    #$6F    
LFADA: STA    $AB     
       STA    $AC     
       STA    $AD     
       JMP    LFAE7   
LFAE3: ORA    $C9     
       STA    $DE     
LFAE7: LDX    #$02    
LFAE9: LDA    $EA,X   
       BEQ    LFAF1   
       LDA    #$5F    
       STA    $AB,X   
LFAF1: DEX            
       BPL    LFAE9   
       LDA    $E5     
       CMP    $B2     
       BEQ    LFB1E   
       BCC    LFB0D   
       LDA    #$80    
       ORA    $C8     
       STA    $C8     
       LDA    $E5     
       STA    $C9     
       LDA    $B2     
       STA    $CA     
       JMP    LFB3A   
LFB0D: LDA    #$7F    
       AND    $C8     
       STA    $C8     
       LDA    $E5     
       STA    $CA     
       LDA    $B2     
       STA    $C9     
       JMP    LFB3A   
LFB1E: LDA    #$00    
       STA    $CD     
       STA    $CF     
       LDA    #$08    
       STA    $CE     
       LDA    #$66    
       SEC            
       SBC    $E5     
       STA    $CC     
       LDA    $E3     
       STA    $8E     
       LDA    $AA     
       STA    $90     
       JMP    LFBC4   
LFB3A: LDA    $C9     
       SEC            
       SBC    $CA     
       STA    $CB     
       CMP    #$08    
       BEQ    LFB50   
       BCC    LFB5D   
       SBC    #$08    
       ORA    #$80    
       STA    $CE     
       JMP    LFB54   
LFB50: LDA    #$00    
       STA    $CE     
LFB54: LDA    #$08    
       STA    $CD     
       STA    $CF     
       JMP    LFB68   
LFB5D: STA    $CD     
       STA    $CF     
       LDA    #$08    
       SEC            
       SBC    $CB     
       STA    $CE     
LFB68: LDA    #$66    
       SEC            
       SBC    $C9     
       STA    $CC     
       BIT    $C8     
       BPL    LFB9D   
       LDA    #$EB    
       STA    $92     
       LDA    $CB     
       CMP    #$08    
       BCC    LFB88   
       LDA    $E3     
       STA    $8C     
       LDA    $AA     
       STA    $94     
       JMP    LFBC4   
LFB88: LDA    $E3     
       STA    $8E     
       CLC            
       ADC    $CE     
       STA    $8C     
       LDA    $AA     
       STA    $94     
       CLC            
       ADC    $CF     
       STA    $90     
       JMP    LFBC4   
LFB9D: LDA    #$EB    
       STA    $94     
       LDA    $CB     
       CMP    #$08    
       BCC    LFBB2   
       LDA    $AA     
       STA    $8C     
       LDA    $E3     
       STA    $92     
       JMP    LFBC4   
LFBB2: LDA    $AA     
       STA    $90     
       CLC            
       ADC    $CE     
       STA    $8C     
       LDA    $E3     
       STA    $92     
       CLC            
       ADC    $CF     
       STA    $8E     
LFBC4: NOP            
       LDX    #$01    
       LDA    $9C     
       JSR    LFC20   
       STA    $C9     
       DEY            
       DEY            
       DEY            
       ASL    $9A     
       CPY    #$06    
       ROR    $9A     
       TYA            
       CMP    #$06    
       BCC    LFBDF   
       SEC            
       SBC    #$06    
LFBDF: ORA    $C9     
       STA    $9B     
       SED            
       LDX    #$01    
       LDA    #$FE    
       STA    $CA     
LFBEA: LDA    LFEA6,X 
       STA    $C9     
       LDY    #$02    
LFBF1: LDA.wy $00C2,Y 
       SBC    ($C9),Y 
       DEY            
       BPL    LFBF1   
       BCS    LFC04   
       DEX            
       BPL    LFBEA   
       LDA    #$01    
       STA    $D4     
       BNE    LFC09   
LFC04: LDA    LFEA8,X 
       STA    $D4     
LFC09: CLD            
       NOP            
       LDA    $F5     
       BEQ    LFC1D   
       LDA    $C2     
       CMP    #$05    
       BCC    LFC1D   
       LDA    #$00    
       STA    $C4     
       STA    $C3     
       STA    $C2     
LFC1D: JMP    LF017   
LFC20: CLC            
       ADC    #$2E    
       TAY            
       AND    #$0F    
       STA    $C9     
       TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       CLC            
       ADC    $C9     
       CMP    #$0F    
       BCC    LFC38   
       SBC    #$0F    
       INY            
LFC38: EOR    #$07    
LFC3A: ASL            
       ASL            
LFC3C: ASL            
       ASL            
       RTS            

LFC3F: LDA    $D3     
       AND    #$40    
       LSR            
       STA    $CA     
       LDA    $D3     
       AND    #$20    
       EOR    $CA     
       BNE    LFC51   
       CLC            
       BCC    LFC52   
LFC51: SEC            
LFC52: LDA    $D3     
       ROL            
       STA    $D3     
       RTS            

LFC58: .byte $18,$69,$2E,$A8,$29,$0F,$85,$C9,$98,$4A,$4A,$4A,$4A,$A8,$18,$65
       .byte $C9,$C9,$0F,$90,$03,$E9,$0F,$C8,$49,$07,$0A,$0A,$0A,$0A
LFC76: STA    HMP0,X  
       STA    WSYNC   
LFC7A: DEY            
       BPL    LFC7A   
       STA    RESP0,X 
       RTS            

LFC80: .byte $86,$C9,$46,$C9,$A4,$C9,$60,$86,$C9,$06,$C9,$A4,$C9,$60
LFC8E: CLC            
       ADC    $D4     
       TAX            
       LDA    $F5     
       BEQ    LFC97   
       RTS            

LFC97: LDA    LFEC2,X 
       STA    $EE     
       SED            
       LDY    #$02    
       LDA    #$00    
       STA    $C9     
LFCA3: LDA    ($EE),Y 
       ASL    $C9     
       ASL    $C9     
       ASL    $C9     
       ASL    $C9     
       ASL    $C9     
       ASL    $C9     
       ASL    $C9     
       ADC.wy $00C2,Y 
       STA.wy $00C2,Y 
       ROL    $C9     
       LDA    ($EE),Y 
       ADC.wy $00C5,Y 
       STA.wy $00C5,Y 
       ROL    $C9     
       DEY            
       BPL    LFCA3   
       CLD            
       RTS            

LFCCA: CLC            
       ADC    $D4     
       TAY            
       LDA    $F5     
       BEQ    LFCD3   
       RTS            

LFCD3: LDA    LFEC2,Y 
       STA    $EE     
       SED            
       LDY    #$02    
       LDA    #$03    
       STA    $C9     
LFCDF: LDA.wy $00C2,Y 
       ASL    $C9     
       ASL    $C9     
       ASL    $C9     
       ASL    $C9     
       ASL    $C9     
       ASL    $C9     
       ASL    $C9     
       SBC    ($EE),Y 
       STA.wy $00C2,Y 
       ROL    $C9     
       LDA.wy $00C5,Y 
       SBC    ($EE),Y 
       STA.wy $00C5,Y 
       ROL    $C9     
       DEY            
       BPL    LFCDF   
       LDA    #$02    
       AND    $C9     
       BNE    LFD10   
       STA    $C2     
       STA    $C3     
       STA    $C4     
LFD10: LDA    #$01    
       AND    $C9     
       BNE    LFD1C   
       STA    $C5     
       STA    $C6     
       STA    $C7     
LFD1C: CLD            
       RTS            

LFD1E: STA    WSYNC   
       STA    HMOVE   
       LDA    $C9     
       JSR    LFC20   
       DEY            
       DEY            
       STA    WSYNC   
       NOP            
LFD2C: DEY            
       BPL    LFD2C   
       STA    HMP0    
       STA    HMP0    
       STA    HMP0    
       STA    RESP0   
       STA    WSYNC   
       STA    HMOVE   
       LDA    $CA     
       JSR    LFC20   
       STA    HMCLR   
       DEY            
       DEY            
       STA    WSYNC   
LFD46: DEY            
       BPL    LFD46   
       NOP            
       STA    HMP1    
       STA    HMP1    
       STA    HMP1    
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       RTS            

LFD57: LDA    #$FF    
       STA    $F2     
       LDA    $D7     
       AND    #$F7    
       ORA    #$01    
       STA    $D7     
       LDA    #$11    
       STA    $A0     
       LDA    #$64    
       STA    $A1     
       RTS            

LFD6C: LDX    #$16    
       LDA    #$FF    
LFD70: STA    $81,X   
       DEX            
       DEX            
       BPL    LFD70   
       LDA    #$0F    
       STA    COLUPF  
       LDA    #$AA    
       STA    $96     
       LDA    #$37    
       STA    $98     
       LDA    #$02    
       STA    $99     
       LDA    #$20    
       STA    $9A     
       LDA    #$60    
       STA    $9C     
       LDA    #$4F    
       STA    $9F     
       LDA    #$11    
       STA    $A0     
       LDA    #$64    
       STA    $A1     
       LDA    #$67    
       STA    $AA     
       LDA    #$00    
       STA    $AE     
       LDA    #$32    
       STA    $B2     
       LDA    #$60    
       STA    $B6     
       LDA    #$2F    
       STA    $BA     
       LDA    #$5C    
       STA    $D3     
       LDA    #$08    
       STA    $D9     
       LDA    #$40    
       STA    $DA     
       LDA    #$60    
       STA    $DB     
       LDA    #$28    
       STA    $DC     
       LDA    #$03    
       STA    $DE     
       LDA    #$D0    
       STA    $AF     
       LDA    #$D0    
       STA    $B0     
       LDA    #$D0    
       STA    $B1     
       LDA    #$3C    
       STA    $B3     
       LDA    #$28    
       STA    $B4     
       LDA    #$1E    
       STA    $B5     
       LDA    #$40    
       STA    $9D     
       LDA    #$01    
       STA    $D4     
       LDA    #$FE    
       STA    $EF     
       LDA    #$13    
       STA    $F0     
       LDA    #$00    
       STA    $D5     
       LDA    #$EC    
       STA    $E6     
       JSR    LFD57   
       LDX    #$05    
       LDA    #$00    
LFDFD: STA    $C2,X   
       DEX            
       BPL    LFDFD   
       RTS            

LFE03: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$18,$3C,$DB,$DB,$DB,$3C
       .byte $18,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$21,$4A
       .byte $00,$A5,$00,$62,$10,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$10,$28,$10,$00,$00,$00,$00,$00,$00,$01,$00,$00
       .byte $03,$00,$00
LFEA6: .byte $A0,$A3
LFEA8: .byte $02,$03,$B6,$AE,$B2,$B3,$AE,$CF,$00,$01,$00,$00,$02,$00,$00,$03
       .byte $00,$00,$05,$00,$00,$10,$00,$00,$15,$00
LFEC2: .byte $00,$B0,$B3,$B6,$00,$B9,$BC,$BF,$B1,$B5,$A0,$A0,$A0,$A0,$A0,$A0
       .byte $A0,$A0
LFED4: .byte $50,$A0
LFED6: .byte $A0,$50
LFED8: .byte $94,$6B
LFEDA: .byte $6B,$94
LFEDC: .byte $B5,$4A
LFEDE: .byte $4A,$B5,$00,$FD,$84,$B4,$A5,$B5,$85,$FD,$00,$BE,$AA,$AA,$BB,$00
       .byte $00,$FF,$00,$D7,$95,$95,$DF,$10,$10,$D0,$00,$76,$54,$76,$52,$76
       .byte $01,$01,$3C,$66,$66,$66,$66,$66,$66,$3C,$3C,$18,$18,$18,$18,$18
       .byte $38,$18,$7E,$60,$60,$3C,$06,$06,$46,$3C,$3C,$46,$06,$0C,$0C,$06
       .byte $46,$3C,$0C,$0C,$0C,$7E,$4C,$2C,$1C,$0C,$7C,$46,$06,$06,$7C,$60
       .byte $60,$7E,$3C,$66,$66,$66,$7C,$60,$62,$3C,$18,$18,$18,$18,$0C,$06
       .byte $42,$7E,$3C,$66,$66,$3C,$3C,$66,$66,$3C,$3C,$46,$06,$3E,$66,$66
       .byte $66,$3C,$00,$00,$3E,$E3,$7F,$66,$C0,$80,$00,$00,$3E,$03,$7F,$66
       .byte $C0,$80,$C0,$80,$48,$00,$40,$19,$49,$00,$70,$20,$7E,$FB,$70,$20
       .byte $E0,$38,$70,$20,$7E,$FB,$70,$20,$38,$E0,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$C0,$E0,$04,$EA,$64,$E0,$C0,$00,$C7,$EF,$6C,$0F,$6C
       .byte $EF,$C7,$00,$C7,$EF,$6C,$0C,$6C,$EF,$C7,$00,$07,$0F,$4C,$AC,$4C
       .byte $0F,$07,$00,$00,$00,$00,$00,$00,$00,$00,$00,$2A,$3E,$3E,$7F,$7F
       .byte $FC,$FC,$1C,$18,$08,$08
LFFB4: .byte $00,$10,$30,$38,$78,$78,$FC,$FC,$FC,$FC,$78,$38,$10,$00,$00
LFFC3: .byte $00,$00,$00,$3E,$7E,$7F,$7F,$1F,$0C,$00,$00,$00,$00,$00,$00
LFFD2: .byte $00,$18,$3C,$3E,$7F,$FF,$FF,$FE,$FE,$7C,$7C,$38,$38,$10,$10
LFFE1: .byte $00,$00,$00,$38,$7E,$FF,$FF,$FE,$7C,$38,$18
LFFEC: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$10,$10,$10,$54,$44,$6C,$38
       .byte $00,$F0,$00,$00
