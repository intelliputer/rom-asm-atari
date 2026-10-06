; Disassembly of roms/King Kong.bin
; Disassembled Tue Oct  6 15:21:50 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/King Kong.bin
;

      processor 6502
VSYNC   =  $00
VBLANK  =  $01
WSYNC   =  $02
NUSIZ0  =  $04
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
AUDC0   =  $15
AUDC1   =  $16
AUDF0   =  $17
AUDF1   =  $18
AUDV0   =  $19
AUDV1   =  $1A
GRP0    =  $1B
GRP1    =  $1C
HMP0    =  $20
HMP1    =  $21
HMOVE   =  $2A
HMCLR   =  $2B
INPT4   =  $3C
SWCHA   =  $0280
SWCHB   =  $0282
$0285   =  $0285
TIM64T  =  $0296

       ORG $F000
LF000: .byte $00,$F0
LF002: LDA    $98     
       STA    COLUPF  
       LDA    $97     
       STA    COLUBK  
       LDY    #$00    
       STY    CTRLPF  
       STY    VBLANK  
LF010: LDX    $E2     
       LDA    $85     
       STA    WSYNC   
       STA    PF1     
       LDA    $86     
       STA    PF2     
       LDA    LFD8D,X 
       STA    GRP1    
       LDA    LFD1B,X 
       STA    COLUP1  
       LDA    ($89),Y 
       ORA    ($8B),Y 
       STA    $85     
       LDA    $87     
       STA    PF1     
       LDA    $88     
       STA    PF2     
       DEC    $E2     
       LDX    $E3     
       LDA    LFD1B,X 
       STA    COLUP0  
       LDA    LFD8D,X 
       STA    GRP0    
       LDA    ($8D),Y 
       ORA    ($8F),Y 
       STA    $86     
       LDX    $85     
       STX    PF1     
       STA    PF2     
       LDA    ($91),Y 
       STA    $87     
       LDA    ($93),Y 
       ORA    ($95),Y 
       STA    $88     
       DEC    $E3     
       LDX    $87     
       STX    PF1     
       STA    PF2     
       INY            
       CPY    #$08    
       BNE    LF010   
       LDA    #$01    
       STA    CTRLPF  
       LDA    $99     
       STA    COLUPF  
       LDA    $A3     
       STA    HMCLR   
       STA    WSYNC   
       STA    HMP0    
       STX    GRP0    
       STX    GRP1    
       AND    #$0F    
       TAY            
       NOP            
LF07D: DEY            
       BNE    LF07D   
       STA    RESP0   
       STA    WSYNC   
       STA    HMOVE   
       STY    $9E     
       DEY            
       STY    $9F     
       STY    $81     
       LDA    #$E8    
       STA    TIM64T  
       LDA    $A8     
       STA    NUSIZ0  
       STA    REFP0   
       LDA    $D0     
       BEQ    LF09F   
       JMP    LF2D7   
LF09F: JMP    LF26A   
LF0A2: INC    $81     
       LDY    $81     
       CPY    #$60    
       BCS    LF100   
       LDA    LFE00,Y 
       STA    WSYNC   
       STA    PF0     
       LDA    LFE62,Y 
       STA    PF1     
       LDA    LFF04,Y 
       STA    PF2     
LF0BB: LDX    $9E     
       LDY    $A6,X   
       LDA    LFD1B,Y 
       LSR            
       ADC    $81     
       CMP    $A0,X   
       BEQ    LF0D2   
       LDA    $A8,X   
       STA    NUSIZ0  
       STA    REFP0   
       JMP    LF0DB   
LF0D2: LDA    LFD1B,Y 
       LSR            
       CLC            
       ADC    $A6,X   
       STA    $D0     
LF0DB: LDX    $9F     
       LDY    $BC,X   
       LDA    LFD1B,Y 
       LSR            
       ADC    $81     
       CMP    $AA,X   
       BNE    LF0F9   
       LDA    LFD1B,Y 
       LSR            
       CLC            
       ADC    $BC,X   
       STA    $D1     
       LDA    $D0     
       BEQ    LF152   
       JMP    LF103   
LF0F9: LDA    $D0     
       BEQ    LF0A2   
       JMP    LF1AC   
LF100: JMP    LF348   
LF103: INC    $81     
       LDY    $81     
       CPY    #$60    
       BCS    LF100   
       LDA    LFE00,Y 
       STA    WSYNC   
       STA    PF0     
       LDA    LFE62,Y 
       STA    PF1     
       LDA    LFF04,Y 
       STA    PF2     
       LDX    $9F     
       LDA    $C4,X   
       STA    REFP1   
       LDY    $D0     
       LDA    LFD8D,Y 
       LDX    LFD1B,Y 
       LDY    $D1     
       STA    WSYNC   
       STA    GRP0    
       STX    COLUP0  
       LDA    LFD8D,Y 
       STA    GRP1    
       LDA    LFD1B,Y 
       STA    COLUP1  
       LSR            
       TXA            
       BCC    LF148   
       LSR            
       BCS    LF145   
       DEC    $D0     
LF145: JMP    LF2D7   
LF148: LSR            
       BCS    LF14D   
       DEC    $D0     
LF14D: DEC    $D1     
       JMP    LF103   
LF152: INC    $81     
       LDY    $81     
       CPY    #$60    
       BCS    LF100   
       LDA    LFE00,Y 
       STA    WSYNC   
       STA    PF0     
       LDA    LFE62,Y 
       STA    PF1     
       LDA    LFF04,Y 
       STA    PF2     
       LDX    $9F     
       LDA    $C4,X   
       STA    REFP1   
LF171: LDX    $9E     
       LDY    $A6,X   
       LDA    LFD1B,Y 
       LSR            
       ADC    $81     
       CMP    $A0,X   
       BNE    LF188   
       LDA    LFD1B,Y 
       LSR            
       CLC            
       ADC    $A6,X   
       STA    $D0     
LF188: STA    WSYNC   
       LDY    $D1     
       LDA    LFD8D,Y 
       STA    GRP1    
       LDA    LFD1B,Y 
       STA    COLUP1  
       LSR            
       BCS    LF1A2   
       DEC    $D1     
       LDA    $D0     
       BEQ    LF152   
       JMP    LF103   
LF1A2: LDA    $D0     
       BEQ    LF1A9   
       JMP    LF2D7   
LF1A9: JMP    LF26A   
LF1AC: INC    $81     
       LDY    $81     
       CPY    #$60    
       BCS    LF1F6   
       LDA    LFE00,Y 
       STA    WSYNC   
       STA    PF0     
       LDA    LFE62,Y 
       STA    PF1     
       LDA    LFF04,Y 
       STA    PF2     
LF1C5: LDX    $9F     
       LDY    $BC,X   
       LDA    LFD1B,Y 
       LSR            
       ADC    $81     
       CMP    $AA,X   
       BNE    LF1DC   
       LDA    LFD1B,Y 
       LSR            
       CLC            
       ADC    $BC,X   
       STA    $D1     
LF1DC: STA    WSYNC   
       LDY    $D0     
       LDA    LFD8D,Y 
       STA    GRP0    
       LDA    LFD1B,Y 
       STA    COLUP0  
       LSR            
       BCS    LF1F9   
       DEC    $D0     
       LDA    $D1     
       BEQ    LF1AC   
LF1F3: JMP    LF103   
LF1F6: JMP    LF348   
LF1F9: LDA    $D1     
       BNE    LF1F3   
       LDA    #$00    
       STA    $D0     
       INC    $9E     
       INC    $81     
       LDY    $81     
       CPY    #$60    
       BCS    LF1F6   
       LDA    LFE00,Y 
       STA    WSYNC   
       STA    PF0     
       LDA    LFE62,Y 
       STA    PF1     
       LDA    LFF04,Y 
       STA    PF2     
       LDX    $9F     
LF21E: LDY    $BC,X   
       LDA    LFD1B,Y 
       LSR            
       ADC    $81     
       CMP    $AA,X   
       BNE    LF233   
       LDA    LFD1B,Y 
       LSR            
       CLC            
       ADC    $BC,X   
       STA    $D1     
LF233: LDX    $9E     
       LDA    $A3,X   
       STA    WSYNC   
       STA    HMCLR   
       STA    HMP0    
       AND    #$0F    
       TAX            
       INC    $81     
LF242: DEX            
       BNE    LF242   
       STA    RESP0   
       LDY    $81     
       STA    WSYNC   
       STA    HMOVE   
       LDA    LFE00,Y 
       STA    PF0     
       LDA    LFE62,Y 
       STA    PF1     
       LDA    LFF04,Y 
       STA    PF2     
       CPY    #$60    
       BCS    LF1F6   
       LDY    $D1     
       BEQ    LF267   
       JMP    LF171   
LF267: JMP    LF0BB   
LF26A: LDA    #$00    
       STA    $D1     
       INC    $9F     
       INC    $81     
       LDY    $81     
       CPY    #$60    
       BCS    LF2D4   
       LDA    LFE00,Y 
       STA    WSYNC   
       STA    PF0     
       LDA    LFE62,Y 
       STA    PF1     
       LDA    LFF04,Y 
       STA    PF2     
       LDX    $9E     
       LDY    $A6,X   
       LDA    LFD1B,Y 
       LSR            
       ADC    $81     
       CMP    $A0,X   
       BNE    LF2A0   
       LDA    LFD1B,Y 
       LSR            
       CLC            
       ADC    $A6,X   
       STA    $D0     
LF2A0: LDX    $9F     
       LDA    $B3,X   
       STA    WSYNC   
       STA    HMCLR   
       STA    HMP1    
       AND    #$0F    
       TAX            
       INC    $81     
LF2AF: DEX            
       BNE    LF2AF   
       STA    RESP1   
       LDY    $81     
       STA    WSYNC   
       STA    HMOVE   
       LDA    LFE00,Y 
       STA    PF0     
       LDA    LFE62,Y 
       STA    PF1     
       LDA    LFF04,Y 
       STA    PF2     
       CPY    #$60    
       BCS    LF2D4   
       LDY    $D0     
       BEQ    LF267   
       JMP    LF1C5   
LF2D4: JMP    LF348   
LF2D7: LDA    #$00    
       STA    $D1     
       STA    HMCLR   
       INC    $81     
       LDY    $81     
       CPY    #$60    
       BCS    LF2D4   
       LDA    LFE00,Y 
       STA    WSYNC   
       STA    PF0     
       LDA    LFE62,Y 
       STA    PF1     
       LDA    LFF04,Y 
       STA    PF2     
       INC    $9F     
       LDX    $9F     
       LDA    $B3,X   
       STA    HMP1    
       AND    #$0F    
       TAX            
       LDY    $D0     
       LDA    LFD1B,Y 
       LSR            
       BCS    LF30E   
       DEC    $D0     
       JMP    LF314   
LF30E: LDA    #$00    
       STA    $D0     
       INC    $9E     
LF314: LDA    LFD8D,Y 
       STA    WSYNC   
       STA    GRP0    
       LDA    LFD1B,Y 
       STA    COLUP0  
       INC    $81     
LF322: DEX            
       BNE    LF322   
       STA    RESP1   
       LDY    $81     
       LDX    $9F     
       STA    WSYNC   
       STA    HMOVE   
       LDA    LFE00,Y 
       STA    PF0     
       LDA    LFE62,Y 
       STA    PF1     
       LDA    LFF04,Y 
       STA    PF2     
       LDY    $D0     
       BNE    LF345   
       JMP    LF21E   
LF345: JMP    LF1C5   
LF348: LDA    $0285   
       BPL    LF348   
       LDA    #$02    
       STA    VBLANK  
       RTS            


START:
       SEI            
       CLD            
       LDX    #$FF    
       TXS            
       LDA    #$00    
LF359: DEX            
       STA    VSYNC,X 
       BNE    LF359   
       JSR    LF4B3   
LF361: LDA    #$02    
       STA    WSYNC   
       STA    VSYNC   
       LDA    SWCHA   
       LDX    $9A     
       BNE    LF372   
       LSR            
       LSR            
       LSR            
       LSR            
LF372: AND    #$0F    
       STA    $D8     
       LDA    INPT4,X 
       STA    $D9     
       LDX    #$01    
LF37C: STA    WSYNC   
       LDA    $E8,X   
       BEQ    LF386   
       DEC    $E8,X   
       BPL    LF3B4   
LF386: LDY    $E6,X   
       LDA    LFF78,Y 
       BEQ    LF399   
       CMP    #$FF    
       BNE    LF39D   
       LDA    LFF79,Y 
       STA    $E6,X   
       JMP    LF3B4   
LF399: STA    AUDC0,X 
       BEQ    LF3AB   
LF39D: STA    AUDC0,X 
       LSR            
       LSR            
       LSR            
       LSR            
       STA    AUDV0,X 
       INY            
       LDA    LFF78,Y 
       STA    AUDF0,X 
LF3AB: INY            
       LDA    LFF78,Y 
       STA    $E8,X   
       INY            
       STY    $E6,X   
LF3B4: DEX            
       BPL    LF37C   
       INX            
       STX    WSYNC   
       STX    VSYNC   
       LDA    #$27    
       STA    TIM64T  
       JSR    LF8C1   
       JSR    LF552   
LF3C7: LDA    $0285   
       BPL    LF3C7   
       JSR    LF002   
       LDA    #$30    
       STA    WSYNC   
       STA    TIM64T  
       INC    $80     
       JSR    LF542   
       INC    $DA     
       LDA    $DA     
       AND    #$03    
       TAX            
       BEQ    LF401   
       DEX            
       BEQ    LF3FB   
       DEX            
       BEQ    LF3F2   
       JSR    LF40F   
       JSR    LF61B   
       BEQ    LF407   
LF3F2: JSR    LFA20   
       JSR    LFB39   
       JMP    LF407   
LF3FB: JSR    LF6BD   
       JMP    LF407   
LF401: JSR    LFA20   
       JSR    LF5C0   
LF407: LDA    $0285   
       BPL    LF407   
       JMP    LF361   
LF40F: LDA    SWCHB   
       STA    $D0     
       EOR    $EF     
       STA    $D1     
       LDA    $D0     
       EOR    #$FF    
       AND    $D1     
       STA    $D1     
       LSR            
       BCS    LF447   
       LSR            
       BCS    LF436   
       LDA    $D0     
       LSR            
       BCS    LF455   
       JSR    LF542   
       LDA    #$00    
       STA    $D4     
       STA    $80     
       BEQ    LF455   
LF436: INC    $EC     
       LDA    $EC     
       SBC    #$08    
       BNE    LF440   
       STA    $EC     
LF440: JSR    LF4B3   
       LDA    #$01    
       BNE    LF44F   
LF447: JSR    LF4B3   
       JSR    LF51D   
       LDA    #$02    
LF44F: STA    $ED     
       LDA    #$27    
       STA    $E7     
LF455: LDA    $D0     
       STA    $EF     
       LDA    $80     
       AND    #$3C    
       BNE    LF4A5   
       INC    $D4     
       BNE    LF465   
       INC    $D5     
LF465: LDA    $ED     
       CMP    #$02    
       BCC    LF47B   
       BNE    LF48A   
       LDA    $D4     
       CMP    #$03    
       BCC    LF4A5   
       INC    $ED     
       LDX    #$02    
       STX    $E7     
       BNE    LF4A5   
LF47B: LDA    $D5     
       BEQ    LF4A5   
       LDA    $D4     
       AND    #$F0    
       ORA    #$02    
       STA    $98     
       STA    $99     
       RTS            

LF48A: CMP    #$04    
       BNE    LF4A6   
       JSR    LF4F7   
       LDA    $D4     
       CMP    #$0A    
       BCC    LF4A5   
       INC    $ED     
       LDA    #$26    
       STA    $A4     
       LDA    #$00    
       STA    $A9     
       LDX    #$02    
       STX    $E7     
LF4A5: RTS            

LF4A6: CMP    #$0C    
       BNE    LF4A5   
       LDA    $D4     
       CMP    #$05    
       BCC    LF4A5   
       JMP    LFB85   
LF4B3: LDA    #$00    
       STA    $82     
       STA    $83     
       STA    $DB     
       STA    $DC     
       STA    $9A     
       LDA    $EC     
       AND    #$0C    
       STA    $DD     
       STA    $DE     
       LDA    #$03    
       STA    $EE     
LF4CB: LDA    #$99    
       STA    $84     
       LDA    #$00    
       STA    $97     
       STA    $D4     
       STA    $D5     
       LDA    #$38    
       STA    $98     
       LDA    #$68    
       STA    $99     
       LDX    #$08    
       LDA    #$FF    
       LDY    #$01    
LF4E5: STA    $AA,X   
       STY    $B3,X   
       DEX            
       BMI    LF4F6   
       CPX    #$03    
       BCS    LF4E5   
       STA    $A0,X   
       STY    $A3,X   
       BNE    LF4E5   
LF4F6: RTS            

LF4F7: LDX    #$01    
       STX    $9C     
       LDA    #$5E    
       STA    $A0,X   
       LDA    $9A     
       LSR            
       LDA    #$33    
       LDY    #$38    
       BCC    LF50C   
       LDA    #$F7    
       LDY    #$48    
LF50C: STA    $A3,X   
       STY    $98     
       LDA    #$01    
       STA    $A6,X   
       LDY    $EE     
       LDA    LFF6A,Y 
       STA    $A8,X   
       BPL    LF521   
LF51D: LDA    #$5E    
       BNE    LF523   
LF521: LDA    #$16    
LF523: LDX    #$00    
       STX    $9D     
       STX    $CF     
       STX    $CE     
       STX    $E4     
       STX    $E5     
       STA    $A0,X   
       LDA    #$33    
       STA    $A3,X   
       LDA    #$5E    
       STA    $A6,X   
       LDA    #$05    
       STA    $A8,X   
       LDA    #$26    
       STA    $CC     
       RTS            

LF542: LDX    #$D6    
LF544: LDA    VSYNC,X 
       BNE    LF54A   
       LDA    #$01    
LF54A: ASL            
       BCC    LF54F   
       EOR    #$4D    
LF54F: STA    VSYNC,X 
       RTS            

LF552: LDA    #$00    
       STA    $D0     
       STA    $D1     
       LDA    $ED     
       CMP    #$04    
       BCS    LF565   
       LDA    #$79    
       STA    $E2     
       STA    $E3     
       RTS            

LF565: CMP    #$0C    
       BCC    LF585   
       STA    WSYNC   
       LDA    #$1B    
       STA    $E3     
       LDA    #$54    
       STA    $E2     
       LDA    #$08    
       STA    REFP1   
       LDX    #$06    
LF579: DEX            
       BNE    LF579   
       STA    RESP0   
       STA    RESP1   
       STX    NUSIZ0  
       STX    REFP0   
       RTS            

LF585: LDA    $CD     
       STA    REFP1   
       STA    WSYNC   
       LDA    $CC     
       STA    HMCLR   
       STA    HMP1    
       AND    #$0F    
       TAX            
       NOP            
LF595: DEX            
       BNE    LF595   
       STA    RESP1   
       LDX    #$54    
       LDA    $D7     
       AND    #$0C    
       BNE    LF5A4   
       LDX    #$5D    
LF5A4: STX    $E2     
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$79    
       STA    $E3     
       LDY    $A6     
       LDA    LFD1B,Y 
       LSR            
       CMP    $A0     
       BCC    LF5BF   
       CLC            
       LDA    $A0     
       ADC    $A6     
       STA    $D0     
LF5BF: RTS            

LF5C0: LDX    #$D7    
       LDA    $80     
       AND    #$0C    
       BNE    LF5CB   
       JSR    LF544   
LF5CB: LDA    $D7     
       AND    #$03    
       CMP    #$02    
       BCC    LF5F1   
       LDA    $CC     
       LDX    $CD     
       BNE    LF5E4   
LF5D9: LDX    #$00    
       CMP    #$68    
       BEQ    LF5E4   
       JSR    LF899   
       BNE    LF5ED   
LF5E4: LDX    #$08    
       CMP    #$56    
       BEQ    LF5D9   
       JSR    LF88C   
LF5ED: STA    $CC     
       STX    $CD     
LF5F1: RTS            

LF5F2: LDA    $A0     
       LDY    $A1     
       STA    $A1     
       STY    $A0     
       LDA    $A3     
       LDY    $A4     
       STA    $A4     
       STY    $A3     
       LDA    $A6     
       LDY    $A7     
       STA    $A7     
       STY    $A6     
       LDA    $A8     
       LDY    $A9     
       STA    $A9     
       STY    $A8     
       LDA    $9D     
       LDX    $9C     
       STA    $9C     
       STX    $9D     
       RTS            

LF61B: LDA    $ED     
       CMP    #$05    
       BCC    LF63C   
       CMP    #$09    
       BCS    LF63C   
       LDA    $80     
       AND    #$3C    
       BNE    LF63C   
       SED            
       LDA    $84     
       SEC            
       SBC    #$01    
       STA    $84     
       CLD            
       BNE    LF63C   
       STA    $E1     
       LDA    #$09    
       STA    $ED     
LF63C: LDA    $ED     
       CMP    #$02    
       BCS    LF664   
       LDX    #$0C    
       LDA    #$00    
       LDY    #$FE    
LF648: STA    $89,X   
       STY    $8A,X   
       DEX            
       DEX            
       BPL    LF648   
       LDA    $EC     
       ADC    #$01    
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       ADC    #$CB    
       STA    $8F     
       LDA    #$FC    
       ADC    #$00    
       STA    $90     
       RTS            

LF664: LDX    #$00    
       LDY    #$00    
LF668: LDA    $82,X   
       AND    #$F0    
       LSR            
       STA.wy $0089,Y 
       INY            
       INY            
       LDA    $82,X   
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA.wy $0089,Y 
       INY            
       INY            
       INX            
       CPX    #$03    
       BNE    LF668   
       LDX    #$00    
       STX    $95     
       LDA    #$DB    
       STA    $D0     
       LDA    #$FB    
       STA    $D1     
LF68F: LDA    $89,X   
       CLC            
       ADC    $D0     
       STA    $89,X   
       INX            
       LDA    #$00    
       ADC    $D1     
       STA    $89,X   
       INX            
       LDA    $D0     
       ADC    #$50    
       STA    $D0     
       LDA    $D1     
       ADC    #$00    
       STA    $D1     
       CPX    #$08    
       BNE    LF6B8   
       LDA    #$2B    
       STA    $D0     
       LDA    #$FC    
       STA    $D1     
       BNE    LF68F   
LF6B8: CPX    #$0E    
       BNE    LF68F   
       RTS            

LF6BD: LDX    $9C     
       LDA    $ED     
       CMP    #$05    
       BCC    LF6CF   
       BEQ    LF6D0   
       CMP    #$09    
       BCC    LF6D8   
       CMP    #$0A    
       BEQ    LF70C   
LF6CF: RTS            

LF6D0: LDA    $A0,X   
       CMP    #$2D    
       BEQ    LF6E2   
       BNE    LF6E4   
LF6D8: CMP    #$07    
       BNE    LF6E4   
       LDA    $A0,X   
       CMP    #$40    
       BNE    LF6E4   
LF6E2: INC    $ED     
LF6E4: LDA    #$20    
       BIT    $E4     
       BNE    LF70C   
       LDA    $E5     
       BNE    LF726   
       LDA    $A0,X   
       JSR    LFA0E   
       BCS    LF726   
       TYA            
       CLC            
       ADC    #$06    
       TAY            
       JSR    LF8A7   
       BNE    LF726   
LF6FF: LDA    #$20    
       STA    $E4     
       LDA    #$00    
       STA    $9B     
       LDA    #$1C    
       STA    $A6,X   
       RTS            

LF70C: INC    $A0,X   
       INC    $9B     
       JSR    LF821   
       BCS    LF6CF   
       LDA    #$37    
       STA    $A6,X   
       LDA    #$0B    
       STA    $ED     
       LDA    #$69    
       STA    $E7     
       LDA    #$00    
       STA    $D4     
       RTS            

LF726: BIT    $E4     
       BMI    LF74E   
       BVS    LF784   
       BIT    $D9     
       BMI    LF784   
       LDA    $A0,X   
       CMP    LFF6E   
       BEQ    LF784   
       LDA    $D8     
       LSR            
       LSR            
       AND    #$03    
       ORA    #$80    
       STA    $E4     
       LDA    #$0E    
       STA    $E5     
       LDA    #$1C    
       STA    $A6,X   
       LDA    #$27    
       STA    $E6     
       RTS            

LF74E: LDA    $E5     
       BNE    LF75A   
       BIT    $D9     
       BPL    LF784   
       STA    $E4     
       BEQ    LF784   
LF75A: DEC    $E5     
       BEQ    LF798   
       LDA    $E5     
       CMP    #$07    
       BCC    LF76A   
       BEQ    LF76C   
       DEC    $A0,X   
       BPL    LF76C   
LF76A: INC    $A0,X   
LF76C: LDA    $E4     
       LSR            
       BCS    LF779   
       LDA    $A3,X   
       JSR    LF88C   
       STA    $A3,X   
       RTS            

LF779: LSR            
       BCS    LF783   
       LDA    $A3,X   
       JSR    LF899   
       STA    $A3,X   
LF783: RTS            

LF784: LDA    $D8     
       LSR            
       BCC    LF7A3   
       LSR            
       BCC    LF7F4   
       LSR            
       BCC    LF79D   
       LSR            
       BCC    LF7A0   
       BIT    $E4     
       BVS    LF79C   
       STA    $9B     
LF798: LDA    #$13    
       STA    $A6,X   
LF79C: RTS            

LF79D: JMP    LF84A   
LF7A0: JMP    LF85F   
LF7A3: LDA    $80     
       AND    #$04    
       BNE    LF79C   
       BIT    $E4     
       BVS    LF7BF   
       LDA    $A0,X   
       JSR    LFA0E   
       JSR    LF8A7   
       BNE    LF79C   
       LDA    #$40    
       STA    $E4     
       LDA    #$0C    
       STA    $9B     
LF7BF: DEC    $A0,X   
       BEQ    LF7C8   
       DEC    $9B     
       JMP    LF816   
LF7C8: LDA    #$0C    
       STA    $ED     
       LDA    #$00    
       STA    $D4     
       JSR    LF5F2   
       JSR    LFBC6   
       LDA    $84     
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $D0     
       LDA    $84     
       ASL            
       ASL            
       ASL            
       ASL            
       CLC            
       SED            
       ADC    $83     
       STA    $83     
       LDA    $D0     
       ADC    $82     
       STA    $82     
       CLD            
       JMP    LF843   
LF7F4: LDA    $80     
       AND    #$04    
       BNE    LF849   
       BIT    $E4     
       BVS    LF812   
       LDA    $A0,X   
       JSR    LFA0E   
       INY            
       INY            
       JSR    LF8A7   
       BNE    LF849   
       LDA    #$40    
       STA    $E4     
       LDA    #$00    
       STA    $9B     
LF812: INC    $A0,X   
       INC    $9B     
LF816: LDA    $A0,X   
       LSR            
       LDA    #$25    
       BCC    LF81F   
       LDA    #$2E    
LF81F: STA    $A6,X   
LF821: LDY    $9B     
       LDA    LFFB5   
       STA    AUDC0   
       LSR            
       LSR            
       LSR            
       LSR            
       STA    AUDV0   
       LDA    LFFB6,Y 
       STA    AUDF0   
       LDA    LFFC3   
       STA    $E8     
       LDA    #$4C    
       STA    $E6     
       LDA    $A0,X   
       JSR    LFA0E   
       BCS    LF849   
LF843: LDA    $E4     
       AND    #$BF    
       STA    $E4     
LF849: RTS            

LF84A: BIT    $E4     
       BVS    LF88B   
       LDA    $A8,X   
       ORA    #$08    
       STA    $A8,X   
       LDA    $A3,X   
       JSR    LF88C   
       STA    $A3,X   
       BCC    LF872   
       BCS    LF881   
LF85F: BIT    $E4     
       BVS    LF88B   
       LDA    $A8,X   
       AND    #$F7    
       STA    $A8,X   
       LDA    $A3,X   
       JSR    LF899   
       STA    $A3,X   
       BCS    LF881   
LF872: INC    $9B     
       LDA    $9B     
       AND    #$07    
       LSR            
       BCC    LF881   
       TAY            
       LDA    LFFDD,Y 
       STA    $E6     
LF881: LDA    $9B     
       AND    #$03    
       TAY            
       LDA    LFF66,Y 
       STA    $A6,X   
LF88B: RTS            

LF88C: CMP    #$B1    
       BEQ    LF898   
       CLC            
       ADC    #$10    
       BVC    LF897   
       ADC    #$0F    
LF897: CLC            
LF898: RTS            

LF899: CMP    #$AA    
       BEQ    LF8A6   
       SEC            
       SBC    #$1F    
       BVS    LF8A5   
       CLC            
       ADC    #$0F    
LF8A5: CLC            
LF8A6: RTS            

LF8A7: LDA    #$01    
       STA    $D0     
LF8AB: LDA    $A3,X   
       SEC            
       SBC    LFEC4,Y 
       BEQ    LF8C0   
       CMP    #$10    
       BEQ    LF8C0   
       CMP    #$F0    
       BEQ    LF8C0   
       INY            
       DEC    $D0     
       BPL    LF8AB   
LF8C0: RTS            

LF8C1: LDA    $ED     
       CMP    #$05    
       BCC    LF8CB   
       CMP    #$09    
       BCC    LF8CC   
LF8CB: RTS            

LF8CC: LDX    $9A     
       LDY    $DD,X   
       LDA    LFBD3,Y 
       CLC            
       ADC    $DF     
       STA    $DF     
       BCC    LF8CB   
       LDX    $D6     
       STX    $D2     
       LDX    #$07    
       LDY    #$FF    
       LDA    $ED     
       CMP    #$07    
       BCC    LF8EC   
       LDX    #$00    
       LDY    #$01    
LF8EC: STX    $D0     
       STY    $D1     
LF8F0: LDX    $D0     
       LDA    $AA,X   
       BPL    LF8F9   
       JMP    LF99F   
LF8F9: ASL    $D2     
       LDA    $C4,X   
       BCC    LF903   
       EOR    #$08    
       STA    $C4,X   
LF903: BMI    LF984   
       ASL            
       BMI    LF911   
       LDA    $B3,X   
       JSR    LF899   
       BCS    LF968   
       BCC    LF918   
LF911: LDA    $B3,X   
       JSR    LF88C   
       BCS    LF968   
LF918: STA    $B3,X   
       LDA    $AA,X   
       JSR    LFA0E   
       BIT    $D1     
       BPL    LF925   
       INY            
       INY            
LF925: LDA    $B3,X   
       CMP    LFEC4,Y 
       BEQ    LF93B   
       CMP    LFEC5,Y 
       BEQ    LF93B   
       CMP    LFEC8,Y 
       BEQ    LF93B   
       CMP    LFEC9,Y 
       BNE    LF99F   
LF93B: TXA            
       TAY            
       LDA    $AA,X   
       SEC            
       BIT    $D1     
       BPL    LF94E   
       INY            
       SBC.wy $00AA,Y 
       CMP    #$F4    
       BCS    LF99F   
       BCC    LF95A   
LF94E: DEY            
       BMI    LF956   
       SBC.wy $00AA,Y 
       BCC    LF95A   
LF956: CMP    #$0D    
       BCC    LF99F   
LF95A: LDA    $D6     
       AND    #$03    
       BEQ    LF99F   
       LDA    $C4,X   
       ORA    #$80    
       STA    $C4,X   
       BNE    LF99F   
LF968: LDA    $AA,X   
       BIT    $D1     
       BPL    LF974   
       CMP    #$5E    
       BEQ    LF978   
       BNE    LF97C   
LF974: CMP    #$0A    
       BNE    LF97C   
LF978: LDA    #$FF    
       STA    $AA,X   
LF97C: LDA    $C4,X   
       EOR    #$40    
       STA    $C4,X   
       BPL    LF99F   
LF984: BIT    $D1     
       BPL    LF98C   
       INC    $AA,X   
       BNE    LF98E   
LF98C: DEC    $AA,X   
LF98E: LDA    $AA,X   
       JSR    LFA0E   
       BCS    LF99F   
       LDA    $D6     
       AND    #$40    
       EOR    $C4,X   
       EOR    #$80    
       STA    $C4,X   
LF99F: LDA    $D0     
       CLC            
       ADC    $D1     
       STA    $D0     
       BMI    LF9AF   
       CMP    #$08    
       BEQ    LF9AF   
       JMP    LF8F0   
LF9AF: BIT    $D1     
       BPL    LF9CC   
       LDA    $B1     
       BPL    LFA0D   
       LDA    $AA     
       CMP    #$16    
       BCC    LFA0D   
       LDX    #$1F    
LF9BF: LDA    $AA,X   
       STA    $AB,X   
       DEX            
       BPL    LF9BF   
       LDX    #$00    
       LDA    #$0A    
       BNE    LF9E9   
LF9CC: LDA    $AA     
       BPL    LF9DB   
       LDX    #$00    
LF9D2: LDA    $AB,X   
       STA    $AA,X   
       INX            
       CPX    #$20    
       BNE    LF9D2   
LF9DB: LDX    #$FF    
LF9DD: INX            
       TAY            
       LDA    $AA,X   
       BPL    LF9DD   
       CPY    #$53    
       BCS    LFA05   
       LDA    #$5E    
LF9E9: STA    $AA,X   
       LDA    #$E2    
       STA    $B3,X   
       LDY    #$3C    
       LDA    $EC     
       AND    #$02    
       BNE    LF9FF   
       LDA    $D6     
       AND    #$03    
       BNE    LF9FF   
       LDY    #$44    
LF9FF: STY    $BC,X   
       LDA    #$00    
       STA    $C4,X   
LFA05: LDA    #$FF    
       STA    $B2     
       LDA    #$01    
       STA    $BB     
LFA0D: RTS            

LFA0E: LDY    #$09    
LFA10: CMP    LFF6E,Y 
       BEQ    LFA1A   
       DEY            
       BPL    LFA10   
       SEC            
       RTS            

LFA1A: TYA            
       ASL            
       ASL            
       ASL            
       TAY            
       RTS            

LFA20: LDX    $9D     
       LDY    #$00    
       LDA    $ED     
       CMP    #$03    
       BEQ    LFA34   
       CMP    #$06    
       BEQ    LFA34   
       LDY    #$0C    
       CMP    #$08    
       BNE    LFAAA   
LFA34: LDA    $CF     
       BPL    LFA3A   
       STY    $CF     
LFA3A: INC    $CF     
       LDA    $CF     
       CMP    #$10    
       BCS    LFA4A   
       DEC    $A0,X   
       BPL    LFA5B   
       LDA    #$77    
       BNE    LFA56   
LFA4A: BEQ    LFA5B   
       INC    $A0,X   
       LDA    $A0,X   
       CMP    #$77    
       BNE    LFA5B   
       LDA    #$01    
LFA56: STA    $A0,X   
       JSR    LF5F2   
LFA5B: LDA    $CE     
       LSR            
       LDA    $A3,X   
       BCS    LFA68   
       JSR    LF899   
       JMP    LFA6B   
LFA68: JSR    LF88C   
LFA6B: STA    $A3,X   
       LDA    $CF     
       CMP    #$11    
       BCC    LFAAA   
       LDA    $A0,X   
       JSR    LFA0E   
       BCS    LFAAA   
       LDA    $ED     
       CPY    #$08    
       BNE    LFA8A   
       CMP    #$03    
       BEQ    LFA92   
       LDA    #$05    
       STA    $ED     
       BNE    LFAA0   
LFA8A: CPY    #$38    
       BNE    LFA96   
       CMP    #$06    
       BNE    LFAAA   
LFA92: INC    $ED     
       BNE    LFAA0   
LFA96: CMP    #$08    
       BNE    LFAA0   
       LDA    $CF     
       CMP    #$19    
       BCC    LFAAA   
LFAA0: LDA    $CE     
       EOR    #$01    
       STA    $CE     
       LDA    #$FF    
       STA    $CF     
LFAAA: LDX    $9C     
       LDA    $ED     
       CMP    #$05    
       BCC    LFB2B   
       CMP    #$09    
       BCS    LFB2B   
       LDA    $A0,X   
       STA    $D0     
       LDA    $A3,X   
       STA    $D1     
       JSR    LF88C   
       STA    $D2     
       LDA    $D1     
       JSR    LF899   
       STA    $D3     
       LDX    #$07    
LFACC: LDA    $B3,X   
       CMP    $D1     
       BEQ    LFADA   
       CMP    $D2     
       BEQ    LFADA   
       CMP    $D3     
       BNE    LFB2C   
LFADA: LDA    $AA,X   
       SEC            
       SBC    $D0     
       BCS    LFAE7   
       CMP    #$FD    
       BCS    LFB30   
       BCC    LFB2C   
LFAE7: CMP    #$02    
       BCC    LFB30   
       CMP    #$07    
       BCS    LFB2C   
       LDA    #$10    
       BIT    $E4     
       BPL    LFB2C   
       BNE    LFB2C   
       ORA    $E4     
       STA    $E4     
       SED            
       LDA    $83     
       CLC            
       ADC    #$25    
       STA    $83     
       LDA    $82     
       ADC    #$00    
       STA    $82     
       CLD            
       LDA    $BC,X   
       CMP    #$44    
       BNE    LFB2B   
       SED            
       LDA    $82     
       CLC            
       ADC    #$01    
       STA    $82     
       CLD            
       LDA    $E5     
       CMP    #$08    
       BCS    LFB23   
       EOR    #$FF    
       ADC    #$10    
LFB23: ADC    #$0B    
       STA    $E5     
       LDA    #$1B    
       STA    $E6     
LFB2B: RTS            

LFB2C: DEX            
       BPL    LFACC   
       RTS            

LFB30: LDA    #$09    
       STA    $ED     
       LDA    #$00    
       STA    $E1     
       RTS            

LFB39: LDX    $9C     
       LDA    $ED     
       CMP    #$09    
       BNE    LFB69   
       LDA    $E1     
       CMP    #$18    
       BCS    LFB60   
       INC    $E1     
       STA    AUDF1   
       LSR            
       EOR    #$FF    
       ADC    #$10    
       STA    AUDV1   
       LDA    #$08    
       STA    AUDC1   
       STA    $E9     
       LDA    $97     
       CLC            
       ADC    #$04    
       STA    $97     
       RTS            

LFB60: LDA    #$00    
       STA    $97     
       INC    $ED     
       JMP    LF6FF   
LFB69: CMP    #$0B    
       BNE    LFB93   
       LDA    $D4     
       CMP    #$03    
       BCC    LFB93   
       LDX    $EE     
       BEQ    LFB94   
       LDA    $EC     
       LSR            
       BCC    LFB81   
       JSR    LFBB2   
       BNE    LFB85   
LFB81: DEC    $EE     
       BEQ    LFB93   
LFB85: JSR    LF4CB   
       JSR    LF4F7   
       LDA    #$04    
       STA    $ED     
       LDA    #$07    
       STA    $D4     
LFB93: RTS            

LFB94: LDA    $80     
       AND    #$FC    
       BNE    LFB93   
       LDA    $D5     
       BNE    LFBAA   
       LDA    $EC     
       LSR            
       BCC    LFBA6   
       JSR    LFBB2   
LFBA6: JSR    LF4F7   
       RTS            

LFBAA: LDA    #$01    
       STA    $ED     
       JSR    LF4B3   
       RTS            

LFBB2: LDX    #$01    
LFBB4: LDA    $82,X   
       LDY    $DB,X   
       STA    $DB,X   
       STY    $82,X   
       DEX            
       BPL    LFBB4   
       LDA    $9A     
       EOR    #$01    
       STA    $9A     
       RTS            

LFBC6: LDX    $9A     
       LDY    $DD,X   
       INY            
       LDA    LFBD3,Y 
       BEQ    LFBD2   
       STY    $DD,X   
LFBD2: RTS            

LFBD3: .byte $80,$C0,$FF,$00,$C0,$E0,$FF,$00,$E0,$A0,$A0,$A0,$A0,$A0,$E0,$00
       .byte $40,$C0,$40,$40,$40,$40,$E0,$00,$E0,$A0,$20,$E0,$80,$80,$E0,$00
       .byte $E0,$A0,$20,$60,$20,$A0,$E0,$00,$A0,$A0,$A0,$E0,$20,$20,$20,$00
       .byte $E0,$80,$80,$E0,$20,$A0,$E0,$00,$E0,$A0,$80,$E0,$A0,$A0,$E0,$00
       .byte $E0,$A0,$20,$20,$20,$20,$20,$00,$E0,$A0,$A0,$E0,$A0,$A0,$E0,$00
       .byte $E0,$A0,$A0,$E0,$20,$A0,$E0,$00,$0E,$0A,$0A,$0A,$0A,$0A,$0E,$00
       .byte $04,$0C,$04,$04,$04,$04,$0E,$00,$0E,$0A,$02,$0E,$08,$08,$0E,$00
       .byte $0E,$0A,$02,$06,$02,$0A,$0E,$00,$0A,$0A,$0A,$0E,$02,$02,$02,$00
       .byte $0E,$08,$08,$0E,$02,$0A,$0E,$00,$0E,$0A,$08,$0E,$0A,$0A,$0E,$00
       .byte $0E,$0A,$02,$02,$02,$02,$02,$00,$0E,$0A,$0A,$0E,$0A,$0A,$0E,$00
       .byte $0E,$0A,$0A,$0E,$02,$0A,$0E,$00,$07,$05,$05,$05,$05,$05,$07,$00
       .byte $02,$03,$02,$02,$02,$02,$07,$00,$07,$05,$04,$07,$01,$01,$07,$00
       .byte $07,$05,$04,$06,$04,$05,$07,$00,$05,$05,$05,$07,$04,$04,$04,$00
       .byte $07,$01,$01,$07,$04,$05,$07,$00,$07,$05,$01,$07,$05,$05,$07,$00
       .byte $07,$05,$04,$04,$04,$04,$04,$00,$07,$05,$05,$07,$05,$05,$07,$00
       .byte $07,$05,$05,$07,$04,$05,$07,$00,$70,$50,$50,$50,$50,$50,$70,$00
       .byte $20,$30,$20,$20,$20,$20,$70,$00,$70,$50,$40,$70,$10,$10,$70,$00
       .byte $70,$50,$40,$60,$40,$50,$70,$00,$50,$50,$50,$70,$40,$40,$40,$00
       .byte $70,$10,$10,$70,$40,$50,$70,$00,$70,$50,$10,$70,$50,$50,$70,$00
       .byte $70,$50,$40,$40,$40,$40,$40,$00,$70,$50,$50,$70,$50,$50,$70,$00
       .byte $70,$50,$50,$70,$40,$50,$70,$00
LFD1B: .byte $03,$11,$08,$D4,$D4,$58,$58,$58,$48,$28,$11,$08,$D4,$D4,$58,$58
       .byte $58,$48,$28,$11,$08,$D4,$D4,$58,$58,$58,$48,$28,$11,$08,$D4,$D4
       .byte $58,$58,$58,$48,$28,$11,$08,$08,$D4,$58,$58,$58,$48,$28,$11,$08
       .byte $08,$D4,$58,$58,$58,$48,$28,$09,$D4,$58,$48,$28,$0F,$26,$44,$82
       .byte $74,$36,$28,$2A,$0F,$D8,$94,$52,$C4,$78,$28,$2A,$11,$D4,$D4,$D4
       .byte $58,$58,$48,$28,$28,$11,$D4,$D4,$D4,$58,$58,$48,$28,$28,$25,$22
       .byte $22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22
       .byte $22,$11
LFD8D: .byte $00,$00,$46,$74,$1C,$50,$5E,$72,$18,$1C,$00,$44,$28,$10,$74,$5A
       .byte $30,$18,$1C,$00,$18,$10,$10,$30,$50,$30,$18,$1C,$00,$82,$42,$3C
       .byte $10,$3C,$52,$99,$1C,$00,$06,$64,$3C,$18,$7E,$51,$19,$1C,$00,$60
       .byte $26,$3C,$18,$7E,$92,$98,$1C,$00,$BB,$76,$99,$1C,$00,$3C,$7E,$FF
       .byte $7E,$3C,$10,$08,$00,$7E,$3C,$7E,$3C,$7E,$10,$0C,$00,$7E,$3C,$18
       .byte $3C,$52,$99,$3C,$10,$00,$7E,$3C,$18,$3C,$52,$5A,$3C,$10,$00,$C6
       .byte $EE,$7C,$7C,$BA,$BA,$BA,$BA,$BA,$FE,$FE,$7C,$38,$44,$EE,$54,$38
       .byte $00,$00,$00
LFE00: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$80,$80,$80,$80,$80
       .byte $80,$80,$80,$80,$80,$80,$C0,$40,$40,$40,$40,$40,$40,$40,$40,$40
       .byte $40,$40,$C0,$40,$C0,$40,$C0,$40,$C0,$40,$C0,$40,$C0,$40,$C0,$40
       .byte $40,$40,$40,$40,$40,$40,$40,$40,$40,$40,$C0,$40,$C0,$40,$C0,$40
       .byte $C0,$40,$C0,$40,$C0,$40,$C0,$40,$40,$40,$40,$40,$40,$40,$40,$40
       .byte $40,$40,$C0,$40,$C0,$40,$C0,$40,$C0,$40,$C0,$40,$C0,$40,$C0,$00
       .byte $00,$00
LFE62: .byte $3F,$20,$20,$60,$40,$C0,$80,$80,$80,$80,$FF,$00,$60,$00,$60,$00
       .byte $60,$00,$60,$00,$60,$00,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$FF,$00,$80,$00,$80,$00,$80,$00,$80,$00,$80,$00,$FD,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$FF,$00,$80,$00,$80,$00
       .byte $80,$00,$80,$00,$80,$00,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$FF,$00,$80,$00,$80,$00,$80,$00,$80,$00,$80,$00,$FF,$00
       .byte $00,$00
LFEC4: .byte $26
LFEC5: .byte $00,$E2,$6A
LFEC8: .byte $00
LFEC9: .byte $00,$00,$00,$E2,$6A,$26,$00,$00,$00,$E4,$68,$26,$00,$62,$EA,$00
       .byte $00,$00,$00,$62,$EA,$26,$00,$00,$00,$B3,$A8,$26,$00,$62,$EA,$00
       .byte $00,$00,$00,$62,$EA,$26,$00,$00,$00,$A4,$B7,$26,$00,$62,$EA,$00
       .byte $00,$00,$00,$62,$EA,$00,$00,$00,$00,$00,$00
LFF04: .byte $FF,$00,$80,$00,$80,$00,$80,$00,$80,$00,$FF,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$FD,$00,$80,$00,$80,$00,$80,$00,$80,$00
       .byte $80,$00,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$FF,$00
       .byte $80,$00,$80,$00,$80,$00,$80,$00,$80,$00,$FF,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$FB,$00,$80,$00,$80,$00,$80,$00,$80,$00
       .byte $80,$00,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$FF,$00
       .byte $00,$00
LFF66: .byte $01,$0A,$13,$0A
LFF6A: .byte $00,$00,$01,$03
LFF6E: .byte $0A,$16,$22,$2E,$3A,$46,$52,$5E,$6A,$76
LFF78: .byte $FF
LFF79: .byte $00,$2C,$1F,$08,$00,$18,$2C,$19,$08,$00,$10,$2C,$12,$08,$00,$08
       .byte $2C,$10,$08,$00,$08,$2C,$12,$08,$FF,$02,$84,$18,$0C,$84,$1F,$0C
       .byte $84,$10,$0C,$84,$14,$0C,$84,$1F,$04,$84,$1C,$04,$84,$18,$04,$84
       .byte $14,$04,$84,$0A,$04,$84,$10,$04,$00,$01,$FF,$3B
LFFB5: .byte $6C
LFFB6: .byte $0A,$0B,$0C,$0D,$0E,$0F,$10,$11,$12,$13,$14,$15,$16
LFFC3: .byte $03,$00,$01,$FF,$4E,$4C,$12,$02,$00,$01,$FF,$55,$4C,$0E,$01,$00
       .byte $01,$FF,$5C,$4C,$0A,$01,$00,$01,$FF,$63
LFFDD: .byte $50,$5E,$57,$5E,$88,$18,$06,$58,$1C,$06,$28,$1F,$06,$00,$3C,$4C
       .byte $1F,$1E,$00,$08,$4C,$1F,$0F,$4C,$14,$3C,$00,$01,$FF,$81,$00,$52
       .byte $F3,$52,$F3
