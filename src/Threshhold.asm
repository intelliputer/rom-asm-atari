; Disassembly of roms/Threshhold.bin
; Disassembled Tue Oct  6 15:24:48 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Threshhold.bin
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
CXP0FB  =  $32
CXPPMM  =  $37
INPT4   =  $3C
INPT5   =  $3D
SWCHB   =  $0282
INTIM   =  $0284
$0288   =  $0288
TIM64T  =  $0296
LF77E   =   $F77E

       ORG $F000
LF000: .byte $00,$E0
LF002: LDA    #$00    
       STA    $8C     
       STA    $85     
       STA    $87     
       STA    $DF     
       STA    $AE     
       STA    COLUBK  
       LDA    #$03    
       STA    $86     
       STA    $88     
       BNE    LF030   
LF018: SEI            
       CLD            
       LDX    #$FF    
       TXS            
       LDA    #$00    
LF01F: STA    VSYNC,X 
       DEX            
       BNE    LF01F   
       STY    $DF     
       LDX    #$FE    
       STX    $86     
       STX    $88     
       LDA    #$01    
       STA    $A0     
LF030: LDA    #$00    
       STA    $98     
       STA    $99     
       STA    $9A     
       STA    $9B     
       LDA    #$19    
       STA    $B1     
       JSR    LF0E0   
       JSR    LFB82   
       LDA    #$40    
       STA    $83     
       LDA    #$20    
       STA    $8F     
       LDA    #$FF    
       STA    $BC     
       STA    $A2     
       STA    $D6     
       JSR    LF05F   
       LDA    #$00    
       JSR    LF3F3   
       JMP    LF0E9   
LF05F: LDY    $AE     
       LDA.wy $0085,Y 
       ASL            
       TAX            
       LDA    LFFE5,X 
       STA    $E1     
       LDA    LFFE6,X 
       STA    $E2     
       LDX    #$00    
       STX    $E3     
       STX    $F5     
       LDY    #$29    
       LDA    ($E1),Y 
       STA    $FA     
       INY            
LF07D: LDA    ($E1),Y 
       STA    $ED,X   
       INX            
       INY            
       CPY    #$30    
       BNE    LF07D   
       LDA    ($E1),Y 
       TAX            
       AND    #$01    
       STA    $E4     
       TXA            
       AND    #$0F    
       LSR            
       STA    $F4     
       TXA            
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $F9     
       INY            
       LDA    ($E1),Y 
       STA    $81     
       INY            
       LDX    #$00    
LF0A3: LDA    ($E1),Y 
       STA    $C6,X   
       INX            
       INY            
       CPY    #$38    
       BNE    LF0A3   
       LDX    #$00    
LF0AF: LDA    ($E1),Y 
       STA    $B6,X   
       INX            
       INY            
       CPY    #$3E    
       BNE    LF0AF   
       LDA    ($E1),Y 
       STA    $E5     
       INY            
       LDA    ($E1),Y 
       STA    $E6     
       LDX    #$05    
       LDA    $81     
LF0C6: STA    $E7,X   
       ADC    #$10    
       CMP    #$E8    
       BCC    LF0D1   
       ADC    #$3F    
       CLC            
LF0D1: DEX            
       BPL    LF0C6   
       STA    $B3     
       LDA    #$40    
       STA    $83     
       JSR    LFB82   
       LDA    $98     
       RTS            

LF0E0: LDA    #$3C    
       STA    $CD     
       LDA    #$50    
       STA    $BD     
       RTS            

LF0E9: LDA    #$20    
       STA    TIM64T  
       LDA    #$02    
       STA    WSYNC   
       STA    VSYNC   
       LDA    #$00    
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    VSYNC   
       STA    WSYNC   
       LDA    SWCHB   
       AND    #$01    
       BNE    LF10A   
       JMP    LF002   
LF10A: LDA    SWCHB   
       AND    #$02    
       BNE    LF120   
       LDA    $86     
       BMI    LF119   

START:
LF115: LDY    #$D0    
       BNE    LF11D   
LF119: LDA    $88     
       BMI    LF120   
LF11D: JMP    LF018   
LF120: BIT    CXM0P   
       BPL    LF138   
       LDA    $BC     
       STA    $81     
       LDA    $CC     
       STA    $AC     
       JSR    LF2FC   
       BEQ    LF138   
       STA    $BC     
       STA    $A2     
       JSR    LF3EF   
LF138: BIT    CXPPMM  
       BPL    LF14C   
       LDA    $BD     
       STA    $81     
       LDA    $CD     
       STA    $AC     
       JSR    LF2FC   
       BEQ    LF14C   
       JSR    LF3EF   
LF14C: LDY    #$00    
       STY    $81     
       LDX    #$05    
LF152: LDA    $E7,X   
       CMP    #$10    
       BCS    LF164   
       INC    $81     
       LDA    $81     
       CMP    #$06    
       BNE    LF164   
       LDA    #$60    
       STA    $B0     
LF164: LDA    $E7,X   
       BEQ    LF173   
       CMP    #$10    
       BCS    LF16E   
       DEC    $E7,X   
LF16E: DEX            
       BPL    LF152   
       BMI    LF177   
LF173: INY            
       JMP    LF16E   
LF177: CPY    #$06    
       BNE    LF188   
       LDA    $B1     
       BEQ    LF1B2   
       CMP    #$18    
       BCS    LF1B2   
       INC    $B1     
       JMP    LF1B2   
LF188: LDX    $B1     
       BNE    LF1A5   
       BIT    CXPPMM  
       BPL    LF194   
       LDA    $80     
       BNE    LF19B   
LF194: BIT    CXP0FB  
       BVS    LF19B   
       JMP    LF277   
LF19B: LDX    #$01    
       STX    $B1     
       LDA    #$FF    
       STA    $BC     
       STA    $A2     
LF1A5: CPX    #$18    
       BCC    LF1AB   
       BCS    LF1C6   
LF1AB: LDA    LFB56,X 
       STA    COLUBK  
       INC    $B1     
LF1B2: LDA    $B1     
       BNE    LF1B9   
       JMP    LF238   
LF1B9: CMP    #$18    
       BEQ    LF1C2   
       BCS    LF1C6   
       JMP    LF277   
LF1C2: LDA    #$00    
       STA    COLUBK  
LF1C6: LDA    #$BB    
       STA    $BE     
       LDA    #$FB    
       STA    $BF     
       INC    $B1     
       LDA    $DF     
       CMP    #$FE    
       BCS    LF1EC   
       CMP    #$00    
       BNE    LF1EC   
       LDA    $9C     
       BMI    LF1E4   
       LDA    #$00    
       STA    $AE     
       BEQ    LF1E8   
LF1E4: LDA    #$02    
       STA    $AE     
LF1E8: LDA    #$02    
       STA    $DF     
LF1EC: LDA    $B1     
       BEQ    LF220   
       CMP    #$80    
       BNE    LF210   
       LDA    $9C     
       BPL    LF20B   
       JSR    LFB4F   
       TAY            
       LDA.wy $0086,Y 
       BEQ    LF203   
       BPL    LF20B   
LF203: LDA    #$FF    
       STA.wy $0086,Y 
       JSR    LFB4F   
LF20B: LDA    #$00    
       JSR    LF3F3   
LF210: LDA    $B1     
       CMP    #$B0    
       BEQ    LF219   
       JMP    LF277   
LF219: LDX    $AE     
       DEC    $86,X   
       JMP    LF277   
LF220: LDA    #$9C    
       STA    $BE     
       LDA    #$FB    
       STA    $BF     
       JSR    LF05F   
       LDA    #$00    
       STA    $B1     
       JSR    LF0E0   
       LDA    #$0F    
       STA    $8C     
       BNE    LF277   
LF238: LDA    #$FF    
       STA    $BC     
       STA    $A2     
       LDA    #$00    
       STA    AUDV0   
       LDA    #$05    
       JSR    LF433   
       JSR    LF3F6   
       LDA    $83     
       CMP    #$04    
       BNE    LF256   
       LDA    #$00    
       STA    AUDV0   
       BEQ    LF263   
LF256: STA    AUDF0   
       LDA    #$0F    
       STA    AUDV0   
       LDA    #$0C    
       STA    AUDC0   
       JMP    LF396   
LF263: LDX    $AE     
       INC    $85,X   
       LDA    $85,X   
       CMP    #$0B    
       BNE    LF271   
       LDA    #$00    
       STA    $85,X   
LF271: JSR    LF05F   
       JMP    LF46C   
LF277: LDA    $B1     
       CMP    #$18    
       BCC    LF2F9   
       LDA    $86     
       BPL    LF2F9   
       LDA    $9C     
       BPL    LF289   
       LDA    $88     
       BPL    LF2F9   
LF289: LDA    #$19    
       STA    $B1     
       LDA    SWCHB   
       AND    #$01    
       BNE    LF297   
       JMP    LF002   
LF297: LDA    SWCHB   
       AND    #$02    
       BEQ    LF2C8   
       LDA    $DF     
       CMP    #$D0    
       BNE    LF2AC   
       LDA    #$00    
       STA    $AE     
       LDA    #$D1    
       STA    $DF     
LF2AC: LDA    $B3     
       AND    #$7F    
       CMP    #$7F    
       BNE    LF2C0   
       INC    $DF     
       LDA    $DF     
       CMP    #$FF    
       BNE    LF2C0   
       LDA    #$FE    
       STA    $DF     
LF2C0: INC    $F7     
       LDA    #$FF    
       STA    $8E     
       BNE    LF2F9   
LF2C8: LDA    $DF     
       BMI    LF2CF   
       JMP    LF115   
LF2CF: LDA    #$D1    
       STA    $DF     
       INC    $8E     
       LDA    $8E     
       AND    #$0F    
       BNE    LF2F9   
       INC    $A0     
       LDA    $A0     
       CMP    #$04    
       BNE    LF2F9   
       LDA    #$01    
       STA    $A0     
       LDA    $9C     
       EOR    #$80    
       STA    $9C     
       BPL    LF2F5   
       LDA    #$02    
       STA    $AE     
       BNE    LF2F9   
LF2F5: LDA    #$00    
       STA    $AE     
LF2F9: JMP    LF36A   
LF2FC: LDX    #$00    
       LDY    #$00    
       LDA    #$FF    
       STA    $80     
LF304: LDA    $81     
       CMP    $B6,X   
       BCC    LF32D   
       SEC            
       SBC    $B6,X   
LF30D: CMP    #$10    
       BCS    LF33D   
       STA    $AB     
       LDA    $AC     
       CMP    $C6,X   
       BCC    LF335   
       SEC            
       SBC    $C6,X   
LF31C: CMP    #$10    
       BCS    LF33D   
       ADC    $AB     
       CMP    $80     
       BCS    LF33D   
       STA    $80     
       TXA            
       TAY            
       JMP    LF33D   
LF32D: LDA    $B6,X   
       SEC            
       SBC    $81     
       JMP    LF30D   
LF335: LDA    $C6,X   
       SEC            
       SBC    $AC     
       JMP    LF31C   
LF33D: INX            
       CPX    #$06    
       BNE    LF304   
       LDA    $80     
       CMP    #$18    
       BCS    LF365   
       LDA.wy $00E7,Y 
       CMP    #$10    
       BCC    LF365   
       LDA    #$0F    
       STA.wy $00E7,Y 
       LDA    $FB     
       ORA    #$F0    
       STA    $FB     
       LDA    #$0C    
       STA    AUDC1   
       STA    AUDV1   
       LDA    #$FF    
       STA    $80     
       RTS            

LF365: LDA    #$00    
       STA    $80     
       RTS            

LF36A: DEC    $BC     
       DEC    $BC     
       LDA    $BC     
       CLC            
       ADC    #$04    
       STA    $A2     
       LDA    $BC     
       BPL    LF385   
       LDA    #$FF    
       STA    $BC     
       STA    $A2     
       LDA    $9C     
       AND    #$FE    
       STA    $9C     
LF385: LDA    $B1     
       BEQ    LF38C   
       JMP    LF46C   
LF38C: DEC    $84     
       LDA    $84     
       BNE    LF3DD   
       LDA    $8F     
       STA    $84     
LF396: DEC    $83     
       LDA    $83     
       CMP    #$04    
       BCS    LF3A2   
       LDA    #$04    
       STA    $83     
LF3A2: CMP    #$40    
       BNE    LF3AF   
       JSR    LFB82   
       LDA    #$0F    
       STA    $8C     
       BNE    LF3C9   
LF3AF: LDA    $83     
       CMP    #$04    
       BEQ    LF3C9   
       AND    #$03    
       BNE    LF3C9   
       LDA    $DE     
       SEC            
       SBC    #$04    
       STA    $DE     
       BPL    LF3C9   
       DEC    $8A     
       CLC            
       ADC    #$0F    
       STA    $DE     
LF3C9: LDX    $DE     
       LDA    LFAF6,X 
       STA    $8B     
       LDA    $83     
       CLC            
       ADC    #$10    
       AND    #$03    
       TAX            
       LDA    LFBCC,X 
       STA    $8C     
LF3DD: LDA    $83     
       LSR            
       LSR            
       TAX            
       LDA    LFBAA,X 
       STA    $B4     
       LDA    LFBBB,X 
       STA    $B5     
       JMP    LF46C   
LF3EF: LDY    #$28    
       LDA    ($E1),Y 
LF3F3: JSR    LF433   
LF3F6: LDY    $AE     
       LDA.wy $0099,Y 
       LDY    #$00    
       JSR    LF40B   
       LDY    $AE     
       LDA.wy $0098,Y 
       LDY    #$04    
       JSR    LF40B   
       RTS            

LF40B: STA    $A4     
       CLD            
       LSR            
       LSR            
       LSR            
       LSR            
       ASL            
       TAX            
       LDA    LFB6E,X 
       STA.wy $0090,Y 
       LDA    LFB6F,X 
       STA.wy $0091,Y 
       LDA    $A4     
       AND    #$0F    
       ASL            
       TAX            
       LDA    LFB6E,X 
       STA.wy $0092,Y 
       LDA    LFB6F,X 
       STA.wy $0093,Y 
       RTS            

LF433: SED            
       LDY    $AE     
       CLC            
       ADC.wy $0098,Y 
       STA.wy $0098,Y 
       BCC    LF46B   
       LDA.wy $0099,Y 
       ADC    #$00    
       STA.wy $0099,Y 
       CMP    #$20    
       BEQ    LF44F   
       CMP    #$40    
       BNE    LF46B   
LF44F: LDA    $FB     
       ORA    #$F0    
       STA    $FB     
       LDA    #$0C    
       STA    AUDC1   
       STA    AUDV1   
       LDA    #$01    
       STA    $89     
       LDX    $AE     
       INC    $86,X   
       LDA    #$03    
       CMP    $86,X   
       BCS    LF46B   
       STA    $86,X   
LF46B: RTS            

LF46C: LDA    $FB     
       SEC            
       SBC    #$10    
       BCS    LF475   
       ADC    #$10    
LF475: STA    $FB     
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       LDA    $89     
       BEQ    LF486   
       LDA    LF77E,X 
       JMP    LF48F   
LF486: LDA    LFE51,X 
       BEQ    LF497   
       ORA    #$04    
       ADC    $AE     
LF48F: BEQ    LF497   
       LDX    #$0C    
       STX    AUDC1   
       BNE    LF49D   
LF497: STA    AUDV1   
       LDA    #$00    
       STA    $89     
LF49D: STA    AUDF1   
       STA    HMCLR   
       LDX    #$05    
       STX    WSYNC   
LF4A5: DEX            
       BNE    LF4A5   
       STX    RESP0   
       STX    RESP1   
       LDA    #$10    
       STA    HMCLR   
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$03    
       STA    NUSIZ0  
       LDA    #$01    
       STA    NUSIZ1  
       LDA    $DF     
       CMP    #$FE    
       BEQ    LF4CA   
       BMI    LF4CE   
       CMP    #$30    
       BCC    LF4CE   
LF4CA: LDA    #$00    
       BEQ    LF4D8   
LF4CE: LDA    $AE     
       BNE    LF4D6   
       LDA    #$48    
       BNE    LF4D8   
LF4D6: LDA    #$88    
LF4D8: STA    COLUP0  
       STA    COLUP1  
       LDY    #$05    
       STY    $82     
       STY    HMCLR   
       LDA    #$01    
       STA    VDELP0  
       STA    VDELP1  
       LDA    ($90),Y 
       STA    GRP0    
       STA    CXCLR   
       LDA    $B1     
       BNE    LF502   
       LDX    $AE     
       LDA    $85,X   
       LSR            
       LSR            
       ADC    #$01    
       TAX            
LF4FB: DEC    $B3     
       DEX            
       BNE    LF4FB   
       BEQ    LF547   
LF502: INC    $B3     
       LDA    $86     
       BPL    LF547   
       LDA    $9C     
       BPL    LF510   
       LDA    $88     
       BPL    LF547   
LF510: LDA    $B3     
       AND    #$7F    
       CMP    #$7F    
       BNE    LF547   
       LDA    $DF     
       BMI    LF528   
       LDA    $9C     
       BPL    LF528   
       JSR    LFB4F   
       LDA    #$00    
       JSR    LF3F3   
LF528: LDA    $DF     
       CMP    #$30    
       BCS    LF533   
       INC    $DF     
       JMP    LF547   
LF533: LDA    $DF     
       BPL    LF53B   
       CMP    #$FE    
       BNE    LF547   
LF53B: LDA    $F7     
       ADC    #$11    
       STA    $F7     
       AND    #$F4    
       ORA    #$04    
       STA    COLUBK  
LF547: LDA    INTIM   
       BNE    LF547   
       LDA    #$01    
       STA    $9D     
       LDA    #$00    
       STA    WSYNC   
       STA    VBLANK  
LF556: LDA    LFB2B,Y 
       STA    $80     
       LDA    ($92),Y 
       STA    WSYNC   
       TAX            
       LDA    ($96),Y 
       STA    $81     
       LDA    ($94),Y 
       LDY    $80     
       NOP            
       STX    GRP1    
       STA    GRP0    
       LDA    $81     
       STA    GRP1    
       STY    GRP0    
       STA    GRP1    
       DEC    $82     
       LDY    $82     
       BMI    LF582   
       LDA    ($90),Y 
       STA    GRP0    
       JMP    LF556   
LF582: STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    VDELP0  
       STA    VDELP1  
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    COLUP1  
       STA    WSYNC   
       LDA    $DF     
       CMP    #$FE    
       BEQ    LF5A2   
       BMI    LF5A9   
       CMP    #$30    
       BCC    LF5A9   
LF5A2: LDA    $B3     
       AND    #$F6    
       JMP    LF5AD   
LF5A9: LDY    #$31    
       LDA    ($E1),Y 
LF5AD: STA    COLUPF  
       LDA    $AE     
       BNE    LF5B5   
       LDA    #$01    
LF5B5: ASL            
       TAX            
       LDA    LFB6E,X 
       STA    $FE     
       LDA    LFB6F,X 
       STA    $FF     
       LDA    $A0     
       ASL            
       TAX            
       LDA    LFB6E,X 
       STA    WSYNC   
       STA    $80     
       LDA    LFB6F,X 
       STA    $81     
       LDA    #$00    
       STA    PF0     
       LDA    #$FF    
       STA    PF1     
       STA    PF2     
       LDA    #$00    
       STA    HMCLR   
       STA    COLUP0  
       STA    COLUP1  
       STA    $9D     
       STA    $A1     
       STA    $9E     
       LDA    #$01    
       STA    $A8     
       STA    CTRLPF  
       LDA    #$04    
       STA    $AF     
       STA    $9F     
       LDY    #$0B    
       LDA    #$20    
       STA    HMP0    
       STA    WSYNC   
LF5FD: DEY            
       BNE    LF5FD   
       STA    RESP0   
       STA    WSYNC   
       LDA    $AE     
       CLC            
       ADC    #$06    
       TAY            
LF60A: DEY            
       BNE    LF60A   
       STA    RESP1   
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       LDY    #$05    
       LDA    ($80),Y 
       STA    GRP0    
       LDA    ($FE),Y 
       STA    GRP1    
       LDX    $CC     
       LDA    LFBD4,X 
       STA    $8D     
       AND    #$0F    
       STA    $A7     
       LDX    $B2     
       LDA    LFBD4,X 
       STA    $A5     
       AND    #$0F    
       STA    $A9     
       DEY            
       LDA    ($80),Y 
       TAX            
       LDA    ($FE),Y 
       LDY    $A9     
       STA    WSYNC   
       STA    GRP1    
       STX    GRP0    
       LDX    #$04    
       LDA    $A5     
       STA    HMP0,X  
LF649: DEY            
       BNE    LF649   
       STA    RESP0,X 
       STA    WSYNC   
       LDY    #$03    
       LDA    ($80),Y 
       STA    GRP0    
       LDA    ($FE),Y 
       STA    GRP1    
       DEY            
       LDA    ($80),Y 
       TAX            
       LDA    ($FE),Y 
       LDY    $A7     
       STA    WSYNC   
       STA    GRP1    
       STX    GRP0    
       LDX    #$02    
       LDA    $8D     
       STA    HMP0,X  
LF66E: DEY            
       BNE    LF66E   
       STA    RESP0,X 
       LDY    #$01    
LF675: STA    WSYNC   
       LDA    ($80),Y 
       STA    GRP0    
       LDA    ($FE),Y 
       STA    GRP1    
       DEY            
       BPL    LF675   
       LDX    $CD     
       LDA    LFBD4,X 
       STA    $A5     
       AND    #$0F    
       TAY            
       LDA    #$00    
       STA    WSYNC   
       STA    GRP0    
       STA    GRP1    
       LDX    #$00    
       LDA    $A5     
       STA    HMP0,X  
LF69A: DEY            
       BNE    LF69A   
       STA    RESP0,X 
       STA    WSYNC   
       LDA    $D8     
       CMP    #$54    
       BCC    LF6A9   
       LDA    #$FF    
LF6A9: STA    $A3     
       LDX    $C1     
       LDA    LFBD4,X 
       STA    $8D     
       AND    #$0F    
       STA    $A7     
       LDX    $C0     
       LDA    LFBD4,X 
       STA    $A5     
       AND    #$0F    
       STA    $A9     
       LDA    #$05    
       STA    CTRLPF  
       STA    WSYNC   
       LDA    GRP0    
       LDX    #$01    
       LDA    $A5     
       STA    HMP0,X  
       LDY    $A9     
LF6D1: DEY            
       BNE    LF6D1   
       STA    RESP0,X 
       STA    WSYNC   
       STA    HMOVE   
       LDA    $B3     
       STA    COLUPF  
       LDA    #$C0    
       STA    PF1     
       LDA    #$00    
       STA    PF2     
       STA    $AC     
       STA    $AD     
       STA    $F3     
       STA    $AB     
       TAY            
       LDA    #$01    
       STA    $A6     
       LDX    $F6     
       LDA    $E7,X   
       STA    COLUP1  
       LDA    $AE     
       BNE    LF701   
       LDA    #$48    
       BNE    LF703   
LF701: LDA    #$88    
LF703: STA    COLUP0  
       JMP    LF74C   
LF708: STA    WSYNC   
       LDX    $A6     
       LDA    $8D     
       STA    HMP0,X  
       NOP            
       LDY    $A7     
LF713: DEY            
       BNE    LF713   
       STA    RESP0,X 
       STA    WSYNC   
       STA    HMOVE   
       LDX    $A8     
       CPX    #$06    
       BEQ    LF728   
       LDA    $D7,X   
       CMP    #$54    
       BCC    LF72A   
LF728: LDA    #$FF    
LF72A: STA    $A3     
       DEX            
       TXA            
       CLC            
       ADC    $F6     
       CMP    #$06    
       BCC    LF737   
       SBC    #$06    
LF737: TAY            
       LDA.wy $00E7,Y 
       STA    COLUP1  
       INX            
       LDA    $C0,X   
       TAX            
       LDA    LFBD4,X 
       STA    $8D     
       AND    #$0F    
       STA    $A7     
       LDY    $AB     
LF74C: STA    WSYNC   
       STY    GRP0    
       LDA    $AC     
       STA    GRP1    
       LDA    $AD     
       STA    ENAM0   
       LDA    $F3     
       STA    ENABL   
       LDY    $9D     
       CPY    $BD     
       BCC    LF76F   
       LDY    $AF     
       BMI    LF781   
       LDA    ($BE),Y 
       STA    $AB     
       DEC    $AF     
       JMP    LF781   
LF76F: CPY    $BC     
       BNE    LF779   
       LDA    #$02    
       STA    $AD     
       BNE    LF781   
LF779: CPY    $A2     
       BCC    LF781   
       LDA    #$00    
       STA    $AD     
LF781: LDX    $9D     
       CPX    $B0     
       PHP            
       PLA            
       STA    $F3     
       TXA            
       ADC    $B3     
       ORA    #$04    
       STA    COLUPF  
       TXA            
       LDY    $9E     
       CMP.wy $00D0,Y 
       BCC    LF7AD   
       LDY    $9F     
       DEC    $9F     
       BMI    LF7A3   
       LDA    ($CE),Y 
       JMP    LF7AB   
LF7A3: LDA    #$04    
       STA    $9F     
       INC    $9E     
       LDA    #$00    
LF7AB: STA    $AC     
LF7AD: INX            
       STX    $9D     
       CPX    $A3     
       BEQ    LF7BF   
       BCS    LF7C6   
       CPX    #$56    
       BEQ    LF7D3   
       LDY    $AB     
       JMP    LF74C   
LF7BF: INC    $9D     
       LDY    $AB     
       JMP    LF74C   
LF7C6: LDA    #$00    
       STA    HMCLR   
       STA    ENABL   
       STA    GRP0    
       INC    $A8     
       JMP    LF708   
LF7D3: STA    WSYNC   
       LDA    #$00    
       STA    GRP1    
       STA    ENAM1   
       STA    ENABL   
       STA    PF1     
       STA    HMCLR   
       LDX    #$0A    
       STX    WSYNC   
LF7E5: DEX            
       BNE    LF7E5   
       STX    RESP0   
       STX    WSYNC   
       LDX    $8A     
       STX    WSYNC   
LF7F0: DEX            
       BNE    LF7F0   
       STX    RESP1   
       STX    WSYNC   
       LDA    $8B     
       STA    HMP1    
       LDA    $AE     
       BNE    LF803   
       LDA    #$48    
       BNE    LF805   
LF803: LDA    #$88    
LF805: STA    COLUP0  
       LDY    $AE     
       LDX    $86,Y   
       CPX    #$FE    
       BCC    LF819   
       LDX    #$0A    
LF811: STA    WSYNC   
       DEX            
       BNE    LF811   
       JMP    LF86C   
LF819: STX    $81     
       LDA    LFB98,X 
       CPX    #$FF    
       BNE    LF826   
       LDA    #$00    
       STA    COLUP0  
LF826: STA    NUSIZ0  
       LDA    #$00    
       STA    HMP0    
       STA    NUSIZ1  
       STA    WSYNC   
       STA    HMOVE   
       LDY    #$08    
       LDA    #$66    
       STA    COLUPF  
       STA    COLUP1  
LF83A: STA    WSYNC   
       LDA    $8C     
       STA    GRP1    
       LDA    $B4     
       STA    PF1     
       LDA    $B5     
       STA    PF2     
       LDA    LFBA1,Y 
       LDX    $81     
       BNE    LF856   
       LDA    #$00    
       STA    GRP0    
       JMP    LF85A   
LF856: STA    GRP0    
       STA    GRP0    
LF85A: LDX    #$02    
       NOP            
       NOP            
       NOP            
       LDA    #$00    
       STA    PF2     
       STA    PF1     
       DEY            
       BPL    LF83A   
       LDA    #$00    
       STA    GRP1    
LF86C: STA    WSYNC   
       LDA    #$02    
       STA    VBLANK  
       LDA    #$2E    
       STA    TIM64T  
       LDA    $B1     
       BEQ    LF882   
       LDA    #$60    
       STA    $B0     
       JMP    LF91C   
LF882: LDY    $AE     
       LDA.wy $0099,Y 
       CMP    #$40    
       BCS    LF897   
       LDA    SWCHB   
       LDX    $AE     
       BNE    LF893   
       ASL            
LF893: CMP    #$80    
       BCS    LF8C1   
LF897: DEC    $FA     
       BNE    LF8B0   
       LDY    #$29    
       LDA    ($E1),Y 
       STA    $A4     
       JSR    LFB8D   
       AND    $A4     
       CMP    #$02    
       BCS    LF8AC   
       LDA    $A4     
LF8AC: STA    $FA     
       BPL    LF8C1   
LF8B0: LDA    $CD     
       CLC            
       ADC    #$03    
       CMP    $B2     
       BCS    LF8BB   
       DEC    $B2     
LF8BB: CMP    $B2     
       BCC    LF8C1   
       INC    $B2     
LF8C1: LDA    $B0     
       CMP    #$55    
       BNE    LF8C9   
       INC    $B0     
LF8C9: INC    $B0     
       LDA    $B0     
       CMP    #$F0    
       BNE    LF8D3   
       DEC    $B0     
LF8D3: LDX    $F8     
       LDA    $B6,X   
       CMP    #$54    
       BCC    LF904   
       BCS    LF91C   
LF8DD: JSR    LFB8D   
       AND    #$07    
       SEC            
       SBC    #$06    
       BCS    LF8E9   
       ADC    #$06    
LF8E9: STA    $F8     
       TAX            
       LDY    #$00    
LF8EE: LDA    $E7,X   
       BNE    LF91C   
       INY            
       CPY    #$06    
       BEQ    LF91C   
       INC    $F8     
       INX            
       CPX    #$06    
       BNE    LF8EE   
       LDX    #$00    
       STX    $F8     
       BEQ    LF8EE   
LF904: ADC    #$04    
       TAY            
       LDA    $B0     
       CMP    #$64    
       BCC    LF919   
       STY    $B0     
       LDA    $C6,X   
       CLC            
       ADC    #$04    
       STA    $B2     
       JMP    LF919   
LF919: JMP    LF8DD   
LF91C: LDA    $B1     
       BEQ    LF923   
       JMP    LF9A7   
LF923: LDA    $0288   
       LDX    $AE     
       BEQ    LF92E   
       AND    #$0F    
       BPL    LF932   
LF92E: LSR            
       LSR            
       LSR            
       LSR            
LF932: TAX            
       LDA    $CD     
       CLC            
       ADC    LFB06,X 
       STA    $CD     
       LDA    $BD     
       CLC            
       ADC    LFB16,X 
       STA    $BD     
       CMP    #$30    
       BNE    LF94B   
       LDA    #$31    
       STA    $BD     
LF94B: CMP    #$51    
       BNE    LF953   
       LDA    #$50    
       STA    $BD     
LF953: LDA    $CD     
       CMP    #$08    
       BNE    LF95D   
       LDA    #$09    
       STA    $CD     
LF95D: CMP    #$71    
       BCC    LF965   
       LDA    #$70    
       STA    $CD     
LF965: LDA    $AE     
       BEQ    LF96E   
       LDA    INPT5   
       JMP    LF970   
LF96E: LDA    INPT4   
LF970: BMI    LF9A1   
       LDA    $9C     
       AND    #$01    
       BNE    LF99E   
       LDA    $BD     
       STA    $A2     
       SEC            
       SBC    #$04    
       STA    $BC     
       LDA    $CD     
       CLC            
       ADC    #$04    
       STA    $CC     
       LDA    $9C     
       ORA    #$01    
       STA    $9C     
       LDA    $FB     
       AND    #$F8    
       ORA    #$08    
       STA    $FB     
       LDA    #$08    
       STA    AUDC0   
       LDA    #$03    
       STA    AUDF0   
LF99E: JMP    LF9A7   
LF9A1: LDA    $9C     
       AND    #$FE    
       STA    $9C     
LF9A7: LDA    $BC     
       AND    #$06    
       CMP    #$06    
       BNE    LF9B1   
       DEC    $FB     
LF9B1: LDA    $FB     
       AND    #$0F    
       CMP    #$0F    
       BNE    LF9BB   
       INC    $FB     
LF9BB: LDA    $FB     
       STA    AUDV0   
       LDA    $B1     
       BEQ    LF9D9   
       CMP    #$18    
       BCC    LF9CD   
       LDA    #$00    
       STA    AUDV0   
       BEQ    LF9D9   
LF9CD: LDA    #$0F    
       STA    AUDV0   
       LDA    #$08    
       STA    AUDC0   
       LDA    #$0D    
       STA    AUDF0   
LF9D9: DEC    $F9     
       LDA    $F9     
       BNE    LF9FB   
       LDY    #$30    
       LDA    ($E1),Y 
       LSR            
       LSR            
       LSR            
       LSR            
       CLC            
       ADC    $A0     
       SEC            
       SBC    #$01    
       STA    $F9     
       INC    $F5     
       LDA    $F5     
       CMP    $F4     
       BNE    LF9FB   
       LDA    #$00    
       STA    $F5     
LF9FB: LDX    #$00    
       STX    $81     
       STX    $F6     
       LDA    $B6     
       STA    $80     
LFA05: INX            
       CPX    #$06    
       BEQ    LFA16   
       LDA    $B6,X   
       CMP    $80     
       BCS    LFA05   
       STA    $80     
       STX    $F6     
       STX    $81     
LFA16: LDX    $81     
       LDY    #$00    
LFA1A: LDA    $B6,X   
       STA.wy $00D0,Y 
       LDA    $C6,X   
       STA.wy $00C0,Y 
       INY            
       CPY    #$06    
       BEQ    LFA33   
       INX            
       CPX    #$06    
       BNE    LFA1A   
       LDX    #$00    
       JMP    LFA1A   
LFA33: LDA    #$FF    
       STA    $D6     
       LDX    #$00    
LFA39: LDA    $D0,X   
       SEC            
       SBC    #$01    
       STA    $D7,X   
LFA40: CMP    $B0     
       BEQ    LFA50   
       CMP    $BD     
       BCC    LFA57   
       LDA    $BD     
       ADC    #$02    
       CMP    $D7,X   
       BCC    LFA57   
LFA50: DEC    $D7,X   
       LDA    $D7,X   
       JMP    LFA40   
LFA57: INX            
       CPX    #$06    
       BNE    LFA39   
       LDY    #$30    
       LDA    ($E1),Y 
       LSR            
       LSR            
       LSR            
       LSR            
       CMP    $F9     
       BNE    LFAC2   
       DEX            
LFA69: LDY    $ED,X   
       LDA    ($E1),Y 
       TAY            
       AND    #$0F    
       CMP    #$08    
       BCC    LFA76   
       ADC    #$EF    
LFA76: CLC            
       ADC    $C6,X   
       CMP    #$79    
       BCC    LFA85   
       BMI    LFA83   
       LDA    #$00    
       BEQ    LFA85   
LFA83: LDA    #$78    
LFA85: STA    $C6,X   
       LDA    $E7,X   
       BNE    LFA8D   
       STA    $C6,X   
LFA8D: LDA    $B1     
       CMP    #$18    
       BCC    LFA97   
       LDA    #$00    
       STA    $C6,X   
LFA97: TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       CMP    #$08    
       BCC    LFAA3   
       CLC            
       ADC    #$F0    
LFAA3: CLC            
       ADC    $B6,X   
       CMP    #$80    
       BCC    LFAAD   
       CLC            
       ADC    #$80    
LFAAD: STA    $B6,X   
       LDA    $F5     
       BNE    LFAB5   
       INC    $ED,X   
LFAB5: LDA    $ED,X   
       CMP    #$28    
       BNE    LFABF   
       LDA    #$00    
       STA    $ED,X   
LFABF: DEX            
       BPL    LFA69   
LFAC2: INC    $AA     
       LDA    $AA     
       AND    #$07    
       BNE    LFACC   
       INC    $E3     
LFACC: LDA    $E4     
       BEQ    LFAD7   
       LDA    $E3     
       AND    #$03    
       JMP    LFAE1   
LFAD7: LDA    $E3     
       CMP    #$03    
       BNE    LFAE1   
       LDA    #$00    
       STA    $E3     
LFAE1: TAX            
       LDY    LFB26,X 
       LDA    ($E5),Y 
       STA    $CE     
       INY            
       LDA    ($E5),Y 
       STA    $CF     
LFAEE: LDA    INTIM   
       BNE    LFAEE   
       JMP    LF0E9   
LFAF6: .byte $70,$60,$50,$40,$30,$20,$10,$00,$F0,$E0,$D0,$C0,$B0,$A0,$90,$80
LFB06: .byte $00,$00,$00,$00,$00,$01,$01,$01,$00,$FF,$FF,$FF,$00,$00,$00,$00
LFB16: .byte $00,$00,$00,$00,$00,$01,$FF,$00,$00,$01,$FF,$00,$00,$01,$FF,$00
LFB26: .byte $00,$02,$04,$02,$FF
LFB2B: .byte $3C,$66,$76,$6E,$66,$3C,$7E,$18,$18,$18,$38,$18,$7E,$30,$18,$0C
       .byte $66,$3C,$3C,$66,$0C,$18,$0C,$7E,$0C,$7E,$6C,$3C,$1C,$0C,$3C,$66
       .byte $06,$7C,$60,$7E
LFB4F: LDA    $AE     
       EOR    #$02    
       STA    $AE     
       RTS            

LFB56: .byte $3C,$66,$66,$7C,$60,$3C,$30,$30,$18,$0C,$06,$7E,$3C,$66,$66,$3C
       .byte $66,$3C,$38,$0C,$06,$3E,$66,$3C
LFB6E: .byte $2B
LFB6F: .byte $FB,$31,$FB,$37,$FB,$3D,$FB,$43,$FB,$49,$FB,$56,$FB,$5C,$FB,$62
       .byte $FB,$68,$FB
LFB82: LDA    #$01    
       STA    $84     
       STA    $DE     
       LDA    #$09    
       STA    $8A     
       RTS            

LFB8D: LDA    $F7     
       EOR    $BC     
       ADC    $CD     
       ADC    $84     
       STA    $F7     
       RTS            

LFB98: .byte $00,$00,$01,$03,$00,$82,$FE,$FE,$92
LFBA1: .byte $00,$82,$82,$FE,$FE,$FE,$FE,$92,$92
LFBAA: .byte $00,$00,$40,$60,$70,$78,$7C,$7E,$7F,$7F,$7F,$7F,$7F,$7F,$7F,$7F
       .byte $7F
LFBBB: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$03,$07,$0F,$1F,$3F,$7F
       .byte $FF
LFBCC: .byte $00,$08,$0C,$0E,$00,$01,$02,$01
LFBD4: .byte $52,$42,$32,$22,$12,$02,$F2,$E2,$D2,$C2,$B2,$A2,$92,$73,$63,$53
       .byte $43,$33,$23,$13,$03,$F3,$E3,$D3,$C3,$B3,$A3,$93,$74,$64,$54,$44
       .byte $34,$24,$14,$04,$F4,$E4,$D4,$C4,$B4,$A4,$94,$75,$65,$55,$45,$35
       .byte $25,$15,$05,$F5,$E5,$D5,$C5,$B5,$A5,$95,$76,$66,$56,$46,$36,$26
       .byte $16,$06,$F6,$E6,$D6,$C6,$B6,$A6,$96,$77,$67,$57,$47,$37,$27,$17
       .byte $07,$F7,$E7,$D7,$C7,$B7,$A7,$97,$78,$68,$58,$48,$38,$28,$18,$08
       .byte $F8,$E8,$D8,$C8,$B8,$A8,$98,$79,$69,$59,$49,$39,$29,$19,$09,$F9
       .byte $E9,$D9,$C9,$B9,$A9,$99,$7A,$6A,$5A,$4A,$3A,$2A,$1A,$11,$11,$11
       .byte $11,$12,$12,$12,$12,$13,$13,$13,$13,$12,$12,$12,$12,$11,$11,$11
       .byte $11,$1F,$1F,$1F,$1F,$1E,$1E,$1E,$1E,$1D,$1D,$1D,$1D,$1E,$1E,$1E
       .byte $1E,$1F,$1F,$1F,$1F,$05,$02,$00,$07,$0E,$15,$1C,$23,$33,$28,$28
       .byte $48,$28,$58,$68,$18,$58,$68,$75,$10,$20,$30,$12,$FF,$12,$02,$12
       .byte $02,$1F,$0F,$1F,$0F,$12,$02,$12,$02,$1E,$0E,$1E,$0E,$1F,$0F,$1F
       .byte $0F,$10,$00,$10,$00,$13,$03,$13,$03,$12,$02,$12,$02,$11,$01,$11
       .byte $01,$1D,$0D,$1D,$0D,$08,$03,$00,$07,$0E,$15,$1C,$23,$29,$38,$20
       .byte $50,$40,$10,$30,$60,$58,$68,$75,$10,$20,$30,$18,$FF,$0F,$0F,$0F
       .byte $0F,$0F,$0F,$0F,$0F,$0E,$0E,$0E,$0E,$0E,$0E,$0E,$0E,$0F,$0F,$0F
       .byte $0F,$0F,$0F,$0F,$0F,$0E,$0E,$0E,$0E,$0E,$0E,$0E,$0E,$0E,$0E,$0E
       .byte $0E,$0E,$0E,$0E,$0E,$10,$04,$00,$23,$07,$1C,$13,$0E,$19,$48,$20
       .byte $50,$30,$00,$10,$40,$05,$0F,$19,$23,$2D,$37,$1E,$FF,$20,$20,$20
       .byte $20,$21,$21,$21,$21,$22,$22,$22,$22,$23,$23,$23,$23,$22,$22,$22
       .byte $22,$21,$21,$21,$21,$2F,$2F,$2F,$2F,$2E,$2E,$2E,$2E,$2E,$2E,$2E
       .byte $2E,$2F,$2F,$2F,$2F,$13,$02,$00,$06,$0C,$12,$18,$21,$29,$58,$20
       .byte $30,$40,$50,$60,$70,$58,$6C,$00,$14,$28,$3C,$24,$FF,$11,$11,$11
       .byte $11,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$F1,$F1,$F1
       .byte $F1,$1F,$1F,$1F,$1F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
       .byte $0F,$FF,$FF,$FF,$FF,$15,$05,$00,$00,$00,$00,$00,$00,$15,$68,$08
       .byte $44,$14,$38,$20,$2C,$00,$0A,$14,$1E,$28,$32,$2A,$FF,$11,$11,$11
       .byte $11,$11,$11,$11,$11,$11,$11,$11,$11,$11,$11,$11,$11,$11,$11,$11
       .byte $11,$1F,$1F,$1F,$1F,$1F,$1F,$1F,$1F,$1F,$1F,$1F,$1F,$1F,$1F,$1F
       .byte $1F,$1F,$1F,$1F,$1F,$18,$03,$00,$15,$0E,$22,$07,$1A,$1B,$78,$30
       .byte $10,$60,$40,$00,$20,$58,$68,$75,$10,$20,$30,$30,$FF,$10,$10,$11
       .byte $11,$10,$10,$1F,$1F,$10,$10,$11,$11,$11,$11,$10,$10,$1F,$1F,$1F
       .byte $1F,$10,$10,$1F,$1F,$10,$10,$1F,$1F,$10,$10,$11,$11,$10,$10,$10
       .byte $10,$1E,$1E,$1E,$1E,$20,$03,$00,$07,$0E,$14,$1A,$22,$1F,$88,$40
       .byte $10,$60,$20,$70,$30,$58,$6C,$00,$14,$28,$3C,$36,$FF,$11,$11,$11
       .byte $11,$F1,$F1,$F1,$F1,$11,$11,$11,$11,$F1,$F1,$F1,$F2,$10,$10,$F0
       .byte $F0,$1F,$1F,$1F,$1F,$FF,$FF,$FF,$FF,$1F,$1F,$1F,$1F,$FF,$FF,$FF
       .byte $FE,$10,$10,$F0,$F0,$25,$07,$00,$14,$00,$14,$00,$14,$1F,$98,$00
       .byte $78,$00,$78,$00,$78,$00,$0A,$14,$1E,$28,$32,$3C,$FF
LFE51: .byte $00,$01,$01,$01,$02,$02,$02,$03,$03,$03,$04,$04,$03,$03,$03,$02
       .byte $02,$02,$01,$01,$01,$0F,$0F,$0F,$0E,$0E,$0E,$0D,$0D,$0D,$0E,$0E
       .byte $0E,$0F,$0F,$0F,$00,$00,$00,$00,$00,$30,$05,$00,$22,$14,$0E,$06
       .byte $1A,$25,$A8,$30,$10,$60,$40,$20,$50,$00,$08,$10,$18,$20,$28,$42
       .byte $FF,$12,$10,$12,$10,$12,$10,$12,$10,$12,$10,$12,$10,$12,$10,$12
       .byte $10,$12,$10,$12,$10,$1E,$10,$1E,$10,$1E,$10,$1E,$10,$1E,$10,$1E
       .byte $10,$1E,$10,$1E,$10,$1E,$10,$1E,$10,$40,$02,$00,$07,$0C,$12,$19
       .byte $20,$1F,$B8,$10,$50,$60,$40,$20,$70,$60,$70,$04,$10,$20,$30,$48
       .byte $FF,$20,$20,$00,$00,$05,$05,$00,$00,$00,$00,$0C,$0C,$00,$00,$00
       .byte $00,$03,$03,$00,$00,$E0,$E0,$00,$00,$0B,$0B,$00,$00,$00,$00,$04
       .byte $04,$00,$00,$00,$00,$0E,$0E,$00,$00,$50,$02,$00,$00,$00,$00,$00
       .byte $00,$1B,$C8,$20,$55,$12,$28,$43,$63,$00,$0A,$14,$1E,$28,$32,$4E
       .byte $FF,$54,$FF,$58,$FF,$5C,$FF,$60,$FF,$64,$FF,$68,$FF,$6C,$FF,$70
       .byte $FF,$74,$FF,$78,$FF,$7C,$FF,$80,$FF,$84,$FF,$88,$FF,$8C,$FF,$90
       .byte $FF,$94,$FF,$98,$FF,$9C,$FF,$A0,$FF,$A4,$FF,$A8,$FF,$AC,$FF,$B0
       .byte $FF,$B4,$FF,$B8,$FF,$BC,$FF,$CC,$FF,$D0,$FF,$D4,$FF,$D8,$FF,$DC
       .byte $FF,$E0,$FF,$00,$00,$00,$10,$FE,$00,$00,$92,$7C,$00,$82,$54,$38
       .byte $55,$3E,$2A,$3E,$55,$55,$2A,$3E,$55,$55,$55,$3E,$C0,$30,$0F,$F3
       .byte $00,$C3,$3F,$F0,$03,$03,$CC,$F0,$18,$18,$18,$18,$18,$3C,$3C,$18
       .byte $18,$7E,$7E,$18,$18,$24,$42,$42,$18,$18,$24,$24,$18,$18,$18,$18
       .byte $92,$7C,$7C,$92,$24,$FC,$7E,$48,$48,$7E,$FC,$24,$08,$3E,$63,$63
       .byte $08,$3E,$63,$36,$08,$3E,$63,$1C,$00,$00,$18,$18,$00,$18,$3C,$3C
       .byte $18,$3C,$7E,$7E,$18,$18,$B0,$60,$18,$18,$18,$18,$18,$18,$0D,$06
       .byte $D5,$54,$2A,$AB,$81,$7E,$7E,$81,$AB,$2A,$54,$D5,$6C,$6C,$D8,$D8
       .byte $6C,$6C,$6C,$6C,$6C,$6C,$36,$36,$92,$FE,$FE,$82,$92,$FE,$FE,$82
       .byte $92,$FE,$FE,$82
LFFE5: .byte $51
LFFE6: .byte $FC,$91,$FC,$D1,$FC,$11,$FD,$51,$FD,$91,$FD,$D1,$FD,$11,$FE,$52
       .byte $FE,$92,$FE,$D2,$FE,$00,$15,$F1,$15,$F1
