; Disassembly of roms/Coln.bin
; Disassembled Tue Oct  6 15:21:08 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Coln.bin
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
LF0A0   =   $F0A0
LF3A0   =   $F3A0
LFFDF   =   $FFDF

       ORG $F000

START:
       CLD            
       SEI            
       LDX    #$00    
       LDA    #$00    
LF006: STA    VSYNC,X 
       TXS            
       INX            
       BNE    LF006   
       LDA    #$07    
       STA    $84     
       STA    $85     
       LDA    #$02    
       STA    $F5     
       LDA    #$04    
       STA    $86     
       JSR    LFC59   
       LDA    #$8F    
       STA    $87     
       LDA    #$01    
       STA    $8D     
       LDA    #$FD    
       LDX    #$0F    
LF029: STA    $DF,X   
       DEX            
       BPL    LF029   
       LDA    #$30    
       STA    NUSIZ1  
       LDA    #$8F    
       STA    COLUP1  
LF036: LDA    $80     
       LDX    #$00    
       JSR    LFB63   
       LDA    $81     
       LDX    #$01    
       JSR    LFB63   
       LDA    $A4     
       LDX    #$02    
       JSR    LFB63   
       LDA    #$4D    
       LDX    #$03    
       JSR    LFB63   
       STA    WSYNC   
       STA    HMOVE   
       JSR    LFC89   
       BNE    LF06B   
       LDA    $EF     
LF05D: CMP    #$01    
       BCS    LF065   
LF061: LDA    #$01    
       BNE    LF07A   
LF065: CMP    #$02    
       BCC    LF061   
       BCS    LF074   
LF06B: LDA    $93     
       JMP    LF05D   
LF070: LDA    #$02    
       BNE    LF07A   
LF074: CMP    #$04    
       BCC    LF070   
       LDA    #$03    
LF07A: STA    $A8     
       LDA    #$C5    
       STA    COLUBK  
       LDA    #$10    
       STA    NUSIZ0  
       LDA    #$30    
       STA    NUSIZ1  
       LDA    #$8F    
       STA    COLUP1  
       LDA    $DE     
       STA    COLUP0  
       LDA    #$37    
       STA    COLUPF  
LF094: LDA    INTIM   
       BNE    LF094   
       STA    WSYNC   
       STA    VBLANK  
       STA    HMCLR   
       STA    CXCLR   
       LDA    #$01    
       STA    CTRLPF  
       STA    WSYNC   
       LDX    #$01    
       LDA    $82     
       STA    VDELP0  
       LSR            
       STA    $AB     
       LDA    $83     
       STA    VDELP1  
       LSR            
       STA    $AC     
       LDA    $A5     
       LSR            
       STA    $AD     
       STA    WSYNC   
LF0BE: LDA    #$00    
       CPX    $AB     
       BCC    LF0CC   
       LDY    $84     
       BMI    LF0CC   
       LDA    ($EB),Y 
       DEC    $84     
LF0CC: LDY    #$00    
       CPX    $AD     
       BCC    LF0DA   
       LDY    $F5     
       BEQ    LF0DA   
       DEC    $F5     
       LDY    $F4     
LF0DA: STA    WSYNC   
       STA    GRP0    
       STY    ENAM0   
       LDA    LFE75,X 
       STA    PF0     
       LDA    LFED1,X 
       STA    PF1     
       LDA    LFF2D,X 
       STA    PF2     
       LDA    #$00    
       CPX    $AC     
       BCC    LF0FD   
       LDY    $85     
       BMI    LF0FD   
       LDA    ($ED),Y 
       DEC    $85     
LF0FD: LDY    #$00    
       CPX    #$2C    
       BCC    LF10B   
       LDY    $86     
       BEQ    LF10B   
       DEC    $86     
       LDY    $89     
LF10B: STA    WSYNC   
       STA    GRP1    
       STY    ENAM1   
       INX            
       CPX    #$5B    
       BNE    LF0BE   
       JSR    LFC9F   
       BEQ    LF14C   
       JSR    LFC89   
       BEQ    LF14C   
       LDA    #$86    
LF122: JSR    LFB8B   
       STA    WSYNC   
       LDA    #$08    
       STA    TIM64T  
       JSR    LFC98   
       BEQ    LF150   
       JSR    LFC2B   
       BEQ    LF139   
LF136: JMP    LF150   
LF139: JSR    LFC9F   
       BNE    LF136   
       LDA    #$93    
       STA    $F2     
       JSR    LFC30   
       JSR    LF9D2   
       LDA    #$86    
       BNE    LF184   
LF14C: LDA    #$45    
       BNE    LF122   
LF150: JSR    LFC1F   
       STA    $AB     
       JSR    LF9D2   
       LDA    #$80    
       STA    $DF     
       LDA    #$A0    
       STA    $E3     
       STA    $E5     
       STA    $E7     
       STA    $E9     
       BIT    VSYNC   
       BVS    LF1A7   
       LDA    $D8     
       AND    #$10    
       BNE    LF17D   
LF170: JSR    LFC93   
       CMP    #$80    
       BCS    LF193   
       CMP    #$40    
       BEQ    LF19D   
       BNE    LF1A1   
LF17D: JSR    LFC89   
       BNE    LF18F   
       LDA    #$35    
LF184: LDX    INTIM   
       BNE    LF184   
       JSR    LFB8B   
       JMP    LF223   
LF18F: LDA    #$C4    
       BNE    LF184   
LF193: BEQ    LF199   
       LDA    #$C8    
       STA    $E9     
LF199: LDA    #$C0    
       STA    $E7     
LF19D: LDA    #$B8    
       STA    $E5     
LF1A1: LDA    #$B0    
       STA    $E3     
       BNE    LF17D   
LF1A7: JSR    LFC8E   
       BEQ    LF17D   
       JSR    LFC13   
       BMI    LF17D   
       LDA    $D8     
       AND    #$0F    
       LSR            
       LSR            
       STA    $AB     
       LDA    $D8     
       AND    #$03    
       CMP    $AB     
       BNE    LF1E5   
       LDA    $D8     
       AND    #$0C    
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    $AB     
       STA    $D8     
       INC    $D8     
       LDA    #$2A    
       STA    $DE     
       LDX    $AB     
       LDA    $DA,X   
       ORA    #$10    
       STA    $DA,X   
       LDA    #$00    
       STA    $F4     
       LDA    #$60    
       STA    $F6     
       BNE    LF170   
LF1E5: JSR    LFC93   
       CMP    #$80    
       BCS    LF20C   
       CMP    #$40    
       BEQ    LF205   
       LDA    $D8     
       AND    #$10    
       BEQ    LF1FE   
       JSR    LF21B   
       STA    $E3     
       JMP    LF17D   
LF1FE: JSR    LF21B   
       STA    $E5     
       BNE    LF214   
LF205: JSR    LF21B   
       STA    $E7     
       BNE    LF210   
LF20C: LDA    #$C0    
       STA    $E7     
LF210: LDA    #$B8    
       STA    $E5     
LF214: LDA    #$B0    
       STA    $E3     
       JMP    LF17D   
LF21B: LDA    $D8     
       AND    #$0C    
       ASL            
       ADC    #$B0    
       RTS            

LF223: LDA    #$12    
       STA    TIM64T  
       LDA    $97     
       STA    REFP0   
       LDA    #$02    
       STA    $F5     
       LDA    #$07    
       STA    $84     
       STA    $85     
       LDA    #$04    
       STA    $86     
       JSR    LFC98   
       BNE    LF28E   
       LDA    $A0     
       BNE    LF255   
       LDA    $AE     
       BNE    LF24B   
       LDA    $AF     
       BEQ    LF24F   
LF24B: BIT    COLUP1  
       BPL    LF266   
LF24F: LDA    #$02    
       STA    $F6     
       STA    $9B     
LF255: JSR    LFCA6   
       INC    $A0     
       LDA    $A0     
       CMP    #$0A    
       BEQ    LF288   
LF260: JSR    LFCC2   
       JMP    LF8F8   
LF266: LDA    $88     
       AND    #$03    
       BNE    LF2CA   
       JSR    LFC93   
       CMP    #$C0    
       BEQ    LF28B   
       SED            
       SEC            
       LDA    $AF     
       SBC    #$01    
       STA    $AF     
       BCS    LF284   
       SEC            
       LDA    $AE     
       SBC    #$01    
       STA    $AE     
LF284: CLD            
       JMP    LF2CA   
LF288: JMP    LF79E   
LF28B: JMP    LF561   
LF28E: JMP    LF5A4   
LF291: LDA    $9F     
       AND    #$03    
       CMP    #$02    
       BCS    LF2AE   
       CMP    #$01    
       BEQ    LF2A6   
       LDA    #$07    
       STA    $A4     
       LDA    #$0B    
LF2A3: STA    $A5     
       RTS            

LF2A6: LDA    #$97    
       STA    $A4     
       LDA    #$0B    
       BNE    LF2A3   
LF2AE: BEQ    LF2B8   
       LDA    #$97    
       STA    $A4     
       LDA    #$AB    
       BNE    LF2A3   
LF2B8: LDA    #$07    
       STA    $A4     
       LDA    #$AB    
       BNE    LF2A3   
LF2C0: LDA    #$FF    
       STA    $F4     
       JSR    LF291   
       JMP    LF34E   
LF2CA: JSR    LFC93   
       CMP    #$C0    
       BNE    LF2D3   
       BEQ    LF28B   
LF2D3: BIT    WSYNC   
       BPL    LF2F9   
       INC    $A6     
       LDA    $80     
       CMP    #$28    
       BEQ    LF2E3   
       CMP    #$70    
       BNE    LF2EB   
LF2E3: LDA    $A6     
       CMP    #$0E    
       BCC    LF2FD   
       BCS    LF2F1   
LF2EB: LDA    $A6     
       CMP    #$08    
       BCC    LF2FD   
LF2F1: CMP    #$87    
       BCC    LF28E   
       CMP    #$A0    
       BCC    LF2FD   
LF2F9: LDA    #$00    
       STA    $A6     
LF2FD: BIT    VBLANK  
       BPL    LF316   
       CLC            
       LDA    $A3     
       ADC    #$03    
       STA    $A3     
       CMP    #$09    
       BCC    LF310   
       LDA    #$09    
       STA    $A3     
LF310: LDA    #$00    
       STA    $89     
       STA    $8E     
LF316: JSR    LFC8E   
       BNE    LF2C0   
       JSR    LFC13   
       BMI    LF34E   
       JSR    LFC98   
       BNE    LF34E   
       LDA    $AF     
       CMP    #$80    
       BCS    LF362   
       LDA    $AE     
       CMP    $9B     
       BCS    LF34E   
LF331: LDA    $F6     
       BNE    LF34E   
       LDA    $A3     
       BEQ    LF34E   
       DEC    $A3     
       LDA    #$FF    
       STA    $F4     
       INC    $F6     
       LDA    $80     
       CLC            
       ADC    #$04    
       STA    $A4     
       LDA    $82     
       ADC    #$07    
       STA    $A5     
LF34E: BIT    $8F     
       BMI    LF36C   
       BVC    LF357   
       JMP    LF3F5   
LF357: JMP    LF40A   
LF35A: LDA    $F6     
       BEQ    LF37D   
       INC    $F6     
       BNE    LF37D   
LF362: LDA    $9B     
       SBC    #$08    
       CMP    $AE     
       BCC    LF34E   
       BCS    LF331   
LF36C: BVS    LF3C3   
       JMP    LF42D   
LF371: LDA    $F6     
       CMP    #$80    
       BCC    LF35A   
       LDA    #$00    
       STA    $F6     
       STA    $F4     
LF37D: LDX    $8F     
       STX    $AB     
       LDX    $82     
       STX    $AD     
       LDX    $80     
       STX    $AC     
       LDX    $98     
       STX    $91     
       LDX    $99     
       STX    $92     
       JSR    LFA0E   
       LDX    $AD     
       STX    $82     
       LDX    $AC     
       STX    $80     
       STA    $AB     
       JSR    LFC01   
       AND    #$F0    
       CMP    #$F0    
       BEQ    LF3C6   
       LDX    #$02    
       STX    $9A     
LF3AB: ORA    $AB     
       LDX    $91     
       STX    $98     
       LDX    $92     
       STX    $99     
       ASL            
       BCC    LF3CC   
       ASL            
       BCC    LF3D9   
       ASL            
       BCC    LF3E5   
       ASL            
       BCC    LF3ED   
       BCS    LF3D6   
LF3C3: JMP    LF41E   
LF3C6: LDX    #$01    
       STX    $9A     
       BNE    LF3AB   
LF3CC: LDA    #$C0    
       STA    $8F     
       LDA    #$08    
       STA    $97     
       INC    $80     
LF3D6: JMP    LF5A4   
LF3D9: LDA    #$80    
       STA    $8F     
       LDA    #$00    
       STA    $97     
       DEC    $80     
       BNE    LF3D6   
LF3E5: LDA    #$40    
       STA    $8F     
       INC    $82     
       BNE    LF3D6   
LF3ED: LDA    #$00    
       STA    $8F     
       DEC    $82     
       BNE    LF3D6   
LF3F5: JSR    LFC01   
       ASL            
       ASL            
       ASL            
       ASL            
       BCC    LF3ED   
       LDA    $82     
       CMP    #$08    
       BEQ    LF43C   
       CMP    #$6C    
       BEQ    LF43C   
       BNE    LF439   
LF40A: JSR    LFC01   
       ASL            
       ASL            
       ASL            
       BCC    LF3E5   
       LDA    $82     
       CMP    #$A0    
       BEQ    LF44C   
       CMP    #$3C    
       BEQ    LF44C   
       BNE    LF439   
LF41E: JSR    LFC01   
       ASL            
       ASL            
       BCC    LF3D9   
       LDA    $80     
       CMP    #$08    
       BEQ    LF45C   
       BNE    LF439   
LF42D: JSR    LFC01   
       ASL            
       BCC    LF3CC   
       LDA    $80     
       CMP    #$90    
       BEQ    LF464   
LF439: JMP    LF371   
LF43C: LDA    $80     
       CMP    #$34    
       BEQ    LF488   
       CMP    #$4C    
       BEQ    LF480   
       CMP    #$64    
       BEQ    LF470   
       BNE    LF439   
LF44C: LDA    $80     
       CMP    #$34    
       BEQ    LF47C   
       CMP    #$4C    
       BEQ    LF46C   
       CMP    #$64    
       BEQ    LF484   
       BNE    LF439   
LF45C: LDA    $82     
       CMP    #$54    
       BEQ    LF474   
       BNE    LF439   
LF464: LDA    $82     
       CMP    #$54    
       BEQ    LF478   
       BNE    LF439   
LF46C: LDA    #$02    
       BNE    LF48A   
LF470: LDA    #$03    
       BNE    LF48A   
LF474: LDA    #$04    
       BNE    LF48A   
LF478: LDA    #$05    
       BNE    LF48A   
LF47C: LDA    #$06    
       BNE    LF48A   
LF480: LDA    #$07    
       BNE    LF48A   
LF484: LDA    #$08    
       BNE    LF48A   
LF488: LDA    #$01    
LF48A: STA    $AB     
       LDX    #$00    
LF48E: LDA    $B0,X   
       AND    #$0F    
       CMP    $AB     
       BEQ    LF4BD   
       TXA            
       CLC            
       ADC    #$05    
       TAX            
       CPX    #$14    
       BNE    LF48E   
       LDA    #$00    
       STA    $F4     
       LDA    #$FF    
       STA    $F6     
       LDA    $8A     
       BNE    LF4B2   
       JSR    LFC13   
       BMI    LF4C9   
       BPL    LF4CC   
LF4B2: JSR    LFC13   
       BPL    LF4C9   
       LDA    #$00    
       STA    $8A     
       BEQ    LF4C9   
LF4BD: LDA    $B0,X   
       AND    #$10    
       BNE    LF4C9   
       LDA    $B0,X   
       ORA    #$20    
       STA    $B0,X   
LF4C9: JMP    LF5A4   
LF4CC: INC    $8A     
       LDX    #$00    
LF4D0: LDA    $DA,X   
       AND    #$0F    
       CMP    $AB     
       BEQ    LF51B   
       INX            
       CPX    #$04    
       BNE    LF4D0   
       JSR    LFC8E   
       BNE    LF510   
       LDA    $88     
       STA    $9F     
LF4E6: JSR    LFB5A   
       AND    #$03    
       TAX            
       JSR    LFA76   
       CPY    #$00    
       BNE    LF4E6   
LF4F3: LDA    $D8     
       AND    #$D3    
       STA    $D8     
       TXA            
       ASL            
       ASL            
       ORA    #$20    
       ORA    $D8     
       STA    $D8     
       LDA    $AB     
       ORA    #$20    
       STA    $DA,X   
       LDA    #$C9    
       STA    $DE     
       LDA    $88     
       STA    $9F     
LF510: JMP    LF5A4   
LF513: LDA    $DA,X   
       AND    #$10    
       BEQ    LF4F3   
       BNE    LF536   
LF51B: JSR    LFC8E   
       BEQ    LF513   
       LDA    $DA,X   
       AND    #$30    
       BEQ    LF510   
       AND    #$20    
       BEQ    LF510   
       LDA    $DA,X   
       AND    #$0F    
       STA    $DA,X   
       LDA    $D8     
       AND    #$D3    
       STA    $D8     
LF536: LDA    #$00    
       STA    $F4     
       LDA    #$2A    
       STA    $DE     
       BNE    LF510   
LF540: LDA    $AB     
       STA    $90     
       BIT    $90     
       BMI    LF553   
       BVS    LF54F   
       DEC    $83     
LF54C: JMP    LF7D8   
LF54F: INC    $83     
       BNE    LF54C   
LF553: BVS    LF559   
       DEC    $81     
       BNE    LF54C   
LF559: INC    $81     
       BNE    LF54C   
LF55D: LDA    #$93    
       BNE    LF572   
LF561: LDA    $8B     
       BNE    LF58F   
       STA    AUDC0   
       LDA    #$05    
       STA    $9B     
       JSR    LFC89   
       BNE    LF55D   
       LDA    #$EF    
LF572: STA    $F2     
       LDA    #$00    
       STA    $89     
       STA    $F4     
       STA    $F6     
       STA    $8E     
       STA    $AD     
       STA    $AC     
       LDA    #$AD    
       STA    $AB     
       JSR    LF9FF   
       LDA    #$A0    
       STA    $EB     
       STA    $ED     
LF58F: INC    $8B     
       JSR    LFCA6   
       LDA    $8B     
       CMP    #$45    
       BEQ    LF59D   
       JMP    LF260   
LF59D: LDA    #$20    
       STA    $87     
       JMP    LF7B9   
LF5A4: LDX    $8C     
       LDA    $80     
       STA    $A9     
       LDA    $82     
       STA    $AA     
       LDA    $B0,X   
       STA    $AB     
       AND    #$30    
       CMP    #$10    
       BEQ    LF5BB   
       JMP    LF80A   
LF5BB: LDA    $C4,X   
       STA    $9E     
       INX            
       LDA    $B0,X   
       STA    $AC     
       LDA    $C4,X   
       STA    $9C     
       INX            
       LDA    $B0,X   
       STA    $AD     
       LDA    $C4,X   
       STA    $9D     
       INX            
       LDA    $B0,X   
       STA    $91     
       LDA    $C4,X   
       STA    $96     
       INX            
       LDA    $B0,X   
       STA    $92     
       LDA    $C4,X   
       STA    $F7     
       JSR    LFA0E   
       LDX    $AC     
       STX    $81     
       LDX    $AD     
       STX    $83     
       TAX            
       AND    #$0F    
       CMP    #$09    
       BCC    LF601   
       BEQ    LF5FA   
       JMP    LF540   
LF5FA: LDA    $AB     
       STA    $90     
       JMP    LF7D8   
LF601: STX    $90     
       LDA    $8C     
       CMP    #$0A    
       BEQ    LF613   
       BCC    LF61F   
       LDA    $88     
       CMP    #$C0    
       BCS    LF635   
       BCC    LF661   
LF613: LDA    $88     
       CMP    #$80    
       BCC    LF661   
       CMP    #$C0    
       BCC    LF635   
       BCS    LF661   
LF61F: CMP    #$05    
       BEQ    LF62B   
       LDA    $88     
       CMP    #$40    
       BCC    LF635   
       BCS    LF661   
LF62B: LDA    $88     
       CMP    #$40    
       BCC    LF661   
       CMP    #$80    
       BCS    LF661   
LF635: LDA    $88     
       AND    #$7F    
       CMP    #$40    
       BCC    LF64F   
       CMP    #$60    
       BCC    LF64B   
       LDA    #$04    
LF643: STA    $80     
       LDA    #$A4    
       STA    $82     
       BNE    LF661   
LF64B: LDA    #$94    
       BNE    LF643   
LF64F: CMP    #$20    
       BCC    LF65D   
       LDA    #$94    
LF655: STA    $80     
       LDA    #$04    
       STA    $82     
       BNE    LF661   
LF65D: LDA    #$04    
       BNE    LF655   
LF661: LDA    $96     
       BNE    LF68C   
       LDA    $82     
       CMP    $83     
       BCC    LF689   
       BEQ    LF68C   
       LDA    $9E     
       BNE    LF68F   
LF671: LDA    $90     
       ASL            
       ASL            
       ASL            
       BCS    LF6E6   
LF678: INC    $83     
       LDA    #$FF    
       STA    $9E     
       LDA    #$00    
       STA    $9C     
       LDA    #$40    
       STA    $90     
       JMP    LF7D8   
LF689: JMP    LF714   
LF68C: JMP    LF729   
LF68F: CMP    #$FF    
       BEQ    LF671   
LF693: LDA    $80     
       CMP    $81     
       BEQ    LF6AE   
       BCC    LF6B4   
LF69B: LDA    $F7     
       CMP    #$02    
       BEQ    LF6F6   
       INC    $F7     
       LDA    $90     
       ASL            
       BCS    LF6B4   
       LDA    #$00    
       STA    $F7     
       BEQ    LF6C8   
LF6AE: LDA    $91     
       CMP    #$06    
       BCS    LF69B   
LF6B4: LDA    $F7     
       CMP    #$02    
       BEQ    LF6F6   
       INC    $F7     
       LDA    $90     
       ASL            
       ASL            
       BCS    LF69B   
       LDA    #$00    
       STA    $F7     
       BEQ    LF6D8   
LF6C8: INC    $81     
       LDA    #$00    
       STA    $9E     
       LDA    #$FF    
       STA    $9C     
       LDA    #$C0    
       STA    $90     
       BNE    LF711   
LF6D8: DEC    $81     
       LDA    #$00    
       STA    $9E     
       LDA    #$80    
       STA    $9C     
       STA    $90     
       BNE    LF711   
LF6E6: LDA    $90     
       AND    #$0F    
       BEQ    LF693   
LF6EC: LDA    $9C     
       BEQ    LF6FC   
       CMP    #$FF    
       BEQ    LF6D8   
       BNE    LF6C8   
LF6F6: LDA    #$00    
       STA    $F7     
       BEQ    LF6EC   
LF6FC: LDA    $9E     
       CMP    #$FF    
       BEQ    LF705   
       JMP    LF678   
LF705: DEC    $83     
       LDA    #$80    
       STA    $9E     
       LDA    #$00    
       STA    $9C     
       STA    $90     
LF711: JMP    LF7D8   
LF714: LDA    $9E     
       BNE    LF722   
LF718: LDA    $90     
       ASL            
       ASL            
       ASL            
       ASL            
       BCS    LF6E6   
       BCC    LF705   
LF722: CMP    #$80    
       BEQ    LF718   
       JMP    LF693   
LF729: LDA    $80     
       CMP    $81     
       BCC    LF781   
       LDA    $9C     
       BNE    LF73E   
LF733: LDA    $90     
       ASL            
       BCS    LF774   
       LDA    #$00    
       STA    $96     
       BEQ    LF6C8   
LF73E: CMP    #$FF    
       BEQ    LF733   
LF742: LDA    $82     
       CMP    $83     
       BCC    LF75E   
LF748: LDA    $F7     
       CMP    #$02    
       BEQ    LF6F6   
       INC    $F7     
       LDA    $90     
       ASL            
       ASL            
       ASL            
       BCS    LF75E   
       LDA    #$00    
       STA    $F7     
       JMP    LF678   
LF75E: LDA    $F7     
       CMP    #$02    
       BEQ    LF6F6   
       INC    $F7     
       LDA    $90     
       ASL            
       ASL            
       ASL            
       ASL            
       BCS    LF748   
       LDA    #$00    
       STA    $F7     
       BEQ    LF705   
LF774: LDA    #$80    
       STA    $96     
       LDA    $90     
       AND    #$0F    
       BEQ    LF742   
       JMP    LF6EC   
LF781: LDA    $9C     
       BNE    LF792   
LF785: LDA    $90     
       ASL            
       ASL            
       BCS    LF774   
       LDA    #$00    
       STA    $96     
       JMP    LF6D8   
LF792: CMP    #$80    
       BEQ    LF785   
       JMP    LF693   
LF799: DEC    $A1     
       JMP    LF7AD   
LF79E: LDA    #$20    
       STA    $87     
       JSR    LFC89   
       BEQ    LF799   
       DEC    $A2     
       LDA    #$93    
       STA    $F2     
LF7AD: JSR    LFC2B   
       BNE    LF7B9   
       CLC            
       LDA    $8D     
       ADC    #$80    
       STA    $8D     
LF7B9: JSR    LFCC2   
       JSR    LFC3D   
       JMP    LF036   
LF7C2: LDX    $F8     
       LDA    $B0,X   
       AND    #$30    
       CMP    #$30    
       BNE    LF84B   
       LDA    $B0,X   
       AND    #$DF    
       STA    $B0,X   
       BNE    LF84B   
LF7D4: LDA    #$00    
       BEQ    LF81B   
LF7D8: LDX    $8C     
       LDA    $AB     
       AND    #$1F    
       ORA    $90     
       STA    $B0,X   
       LDA    $9E     
       STA    $C4,X   
       INX            
       LDA    $81     
       STA    $B0,X   
       LDA    $9C     
       STA    $C4,X   
       INX            
       LDA    $83     
       STA    $B0,X   
       LDA    $9D     
       STA    $C4,X   
       INX            
       LDA    $91     
       STA    $B0,X   
       LDA    $96     
       STA    $C4,X   
       INX            
       LDA    $92     
       STA    $B0,X   
       LDA    $F7     
       STA    $C4,X   
LF80A: LDA    $A9     
       STA    $80     
       LDA    $AA     
       STA    $82     
       LDA    $8C     
       CLC            
       ADC    #$05    
       CMP    #$14    
       BEQ    LF7D4   
LF81B: STA    $8C     
       DEC    $A8     
       BEQ    LF828   
       JMP    LF5A4   
LF824: LDX    #$00    
       BEQ    LF86A   
LF828: JSR    LFCC2   
       LDA    $87     
       AND    #$F0    
       STA    $87     
       STA    $87     
       LDX    $A7     
       LDA    $B0,X   
       STA    $AB     
       BIT    VSYNC   
       BPL    LF8B0   
       LDA    $DE     
       CMP    #$A9    
       BEQ    LF8B0   
       LDX    $F8     
       LDA    $B0,X   
       ORA    #$30    
       STA    $B0,X   
LF84B: LDX    $A7     
       STX    $F8     
       INX            
       LDA    $B0,X   
       STA    $81     
       INX            
       LDA    $B0,X   
       STA    $83     
       LDA    $AB     
       AND    #$30    
       BEQ    LF8B9   
       CMP    #$20    
       BEQ    LF8B3   
LF863: INX            
       INX            
       INX            
       CPX    #$14    
       BEQ    LF824   
LF86A: STX    $A7     
       INC    $88     
       LDA    $9A     
       CMP    #$02    
       BEQ    LF8C1   
       LDA    $88     
       AND    #$10    
       LSR            
LF879: STA    $AB     
       CLC            
       LDA    #$80    
       ADC    $AB     
       STA    $EB     
       LDA    $87     
       AND    #$0F    
       BNE    LF8B6   
       CLC            
       LDA    #$90    
       ADC    $AB     
       STA    $ED     
LF88F: JSR    LFF89   
       JSR    LFC98   
       BNE    LF8F8   
       LDA    $89     
       BNE    LF8C8   
       LDA    $88     
       BNE    LF8F8   
       INC    $8E     
       LDA    $8E     
       CMP    #$03    
       BNE    LF8F8   
       LDA    #$FF    
       STA    $89     
       BNE    LF8F8   
       JMP    LF5A4   
LF8B0: JMP    LF7C2   
LF8B3: JMP    LF8D2   
LF8B6: JMP    LF8EF   
LF8B9: LDA    #$0F    
       ORA    $87     
       STA    $87     
       BNE    LF863   
LF8C1: LDA    $88     
       AND    #$08    
       JMP    LF879   
LF8C8: INC    $8E     
       BNE    LF8F8   
       LDA    #$00    
       STA    $89     
       BEQ    LF8F8   
LF8D2: INC    $8B     
       LDA    $8B     
       CMP    #$0C    
       BEQ    LF8DC   
       BNE    LF8EC   
LF8DC: LDA    #$00    
       STA    $8B     
       LDA    $AB     
       AND    #$DF    
       ORA    #$10    
       LDX    $A7     
       STA    $B0,X   
       INX            
       INX            
LF8EC: JMP    LF863   
LF8EF: LDA    #$A0    
       STA    $ED     
       BEQ    LF8F8   
       JMP    LF88F   
LF8F8: LDA    SWCHB   
       STA    $AB     
       LSR            
       BCS    LF91D   
       LDA    #$04    
       STA    $A1     
       STA    $A2     
       LDA    #$2F    
       STA    $87     
       LDA    #$00    
       STA    $EF     
       STA    $F0     
       STA    $F1     
       STA    $93     
       STA    $94     
       STA    $95     
       JSR    LFC3D   
       BEQ    LF944   
LF91D: LDA    #$0F    
       AND    $88     
       BNE    LF944   
       LDA    $AB     
       LSR            
       LSR            
       BCS    LF944   
       LDA    #$10    
       STA    $87     
       JSR    LFC59   
       LDA    $8D     
       AND    #$07    
       STA    $8D     
       CMP    #$04    
       BNE    LF942   
       LDA    #$00    
       STA    $A1     
       STA    $A2     
       STA    $8D     
LF942: INC    $8D     
LF944: LDA    #$80    
       AND    $87     
       BEQ    LF95B   
       LDA    #$50    
       CLC            
       LDX    #$00    
LF94F: STA    $DF,X   
       INX            
       INX            
       ADC    #$08    
       CMP    #$80    
       BNE    LF94F   
       BEQ    LF974   
LF95B: LDA    #$40    
       AND    $87     
       BEQ    LF98C   
LF961: LDA    $A3     
       STA    $AD     
       LDA    $AF     
       STA    $AC     
       LDA    $AE     
       STA    $AB     
       JSR    LF9D2   
       LDA    #$A8    
       STA    $E7     
LF974: JMP    LF036   
LF977: LDA    #$01    
       STA    $8D     
       BNE    LF99F   
LF97D: JSR    LFC2B   
       BNE    LF9B1   
       LDA    $A2     
       BEQ    LF9B1   
       LDA    #$82    
       STA    $8D     
       BNE    LF99F   
LF98C: LDA    #$20    
       AND    $87     
       BEQ    LF9BD   
       LDA    $A1     
       BEQ    LF97D   
       JSR    LFC2B   
       BNE    LF99F   
       LDA    $A2     
       BEQ    LF977   
LF99F: JSR    LFC13   
       BMI    LF9B1   
       LDA    #$00    
       STA    $88     
       JSR    LFFE2   
       LDA    #$40    
       STA    $87     
       BNE    LF961   
LF9B1: LDA    #$EF    
       STA    $F2     
       JSR    LFC30   
       JSR    LF9D2   
       BCS    LF974   
LF9BD: LDA    #$10    
       AND    $87     
       BEQ    LF961   
       LDA    #$00    
       STA    $AB     
       STA    $AC     
       LDA    $8D     
       STA    $AD     
       JSR    LF9D2   
       BCS    LF974   
LF9D2: LDX    #$02    
LF9D4: TXA            
       ASL            
       ASL            
       TAY            
       LDA    $AB,X   
       AND    #$F0    
       LSR            
       STA.wy $00DF,Y 
       LDA    $AB,X   
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA.wy $00E1,Y 
       DEX            
       BPL    LF9D4   
       INX            
LF9EE: LDA    $DF,X   
       CMP    #$00    
       BNE    LF9FE   
       LDA    #$A0    
       STA    $DF,X   
       INX            
       INX            
       CPX    #$09    
       BCC    LF9EE   
LF9FE: RTS            

LF9FF: LDY    #$02    
       SED            
       CLC            
LFA03: LDA    ($AB),Y 
       ADC    ($F2),Y 
       STA    ($F2),Y 
       DEY            
       BPL    LFA03   
       CLD            
       RTS            

LFA0E: BIT    $AB     
       BMI    LFA2C   
       LDX    #$00    
       LDA    $AD     
       SEC            
       SBC    #$04    
       BEQ    LFA27   
LFA1B: SEC            
       SBC    #$14    
       BCC    LFA46   
       BEQ    LFA26   
       INX            
       JMP    LFA1B   
LFA26: INX            
LFA27: STX    $92     
       JMP    LFA62   
LFA2C: LDX    #$00    
       LDA    $AC     
       SEC            
       SBC    #$04    
       BEQ    LFA41   
LFA35: SEC            
       SBC    #$0C    
       BCC    LFA46   
       BEQ    LFA40   
       INX            
       JMP    LFA35   
LFA40: INX            
LFA41: STX    $91     
       JMP    LFA62   
LFA46: BIT    $AB     
       BMI    LFA56   
       BVS    LFA51   
       DEC    $AD     
       LDA    #$D9    
       RTS            

LFA51: INC    $AD     
       LDA    #$E9    
       RTS            

LFA56: BVS    LFA5D   
       DEC    $AC     
       LDA    #$79    
       RTS            

LFA5D: INC    $AC     
       LDA    #$B9    
       RTS            

LFA62: LDA    #$00    
       LDX    $92     
       BEQ    LFA6E   
LFA68: CLC            
       ADC    #$0D    
       DEX            
       BNE    LFA68   
LFA6E: CLC            
       ADC    $91     
       TAX            
       LDA    LFE00,X 
       RTS            

LFA76: LDY    #$00    
       CPX    #$04    
       BEQ    LFA91   
       BCC    LFA9E   
       CPX    #$06    
       BEQ    LFAB4   
       BCC    LFAC1   
       LDA    $D9     
       AND    #$80    
       BNE    LFAB1   
       LDA    $D9     
       ORA    #$80    
       STA    $D9     
       RTS            

LFA91: LDA    $D9     
       AND    #$10    
       BNE    LFAB1   
       LDA    $D9     
       ORA    #$10    
       STA    $D9     
       RTS            

LFA9E: CPX    #$02    
       BEQ    LFACE   
       BCC    LFADB   
       LDA    $D9     
       AND    #$08    
       BNE    LFAB1   
       LDA    $D9     
       ORA    #$08    
       STA    $D9     
       RTS            

LFAB1: LDY    #$FF    
       RTS            

LFAB4: LDA    $D9     
       AND    #$40    
       BNE    LFAB1   
       LDA    $D9     
       ORA    #$40    
       STA    $D9     
       RTS            

LFAC1: LDA    $D9     
       AND    #$20    
       BNE    LFAB1   
       LDA    $D9     
       ORA    #$20    
       STA    $D9     
       RTS            

LFACE: LDA    $D9     
       AND    #$04    
       BNE    LFAB1   
       LDA    $D9     
       ORA    #$04    
       STA    $D9     
       RTS            

LFADB: CPX    #$01    
       BEQ    LFAEC   
       LDA    $D9     
       AND    #$01    
       BNE    LFAB1   
       LDA    $D9     
       ORA    #$01    
       STA    $D9     
       RTS            

LFAEC: LDA    $D9     
       AND    #$02    
       BNE    LFAB1   
       LDA    $D9     
       ORA    #$02    
       STA    $D9     
       RTS            

LFAF9: INX            
       BNE    LFB23   
LFAFC: LDA    #$B0    
       STA    $AC     
LFB00: JSR    LFB5A   
       AND    #$07    
       TAX            
       STX    $AB     
       JSR    LFA76   
       CPY    #$00    
       BNE    LFB00   
       LDA    LFDD0,X 
       PHA            
       CLC            
       LDA    $AC     
       ADC    #$14    
       TAX            
       LDA    $AB     
       CMP    #$03    
       BEQ    LFAF9   
       CMP    #$04    
       BEQ    LFAF9   
LFB23: PLA            
       STA    VSYNC,X 
       LDX    $AB     
       CPX    #$00    
       BEQ    LFB35   
       LDA    #$00    
LFB2E: CLC            
       ADC    #$05    
       DEX            
       BNE    LFB2E   
       TAX            
LFB35: LDA    #$00    
       STA    $AD     
       INC    $AB     
       LDY    #$00    
LFB3D: LDA    LFDD8,X 
       ORA    $AB     
       STA    ($AC),Y 
       INX            
       INY            
       LDA    #$00    
       STA    $AB     
       CPY    #$05    
       BNE    LFB3D   
       CLC            
       LDA    $AC     
       ADC    #$05    
       STA    $AC     
       CMP    #$C3    
       BCC    LFB00   
       RTS            

LFB5A: LDA    $9F     
       INC    $9F     
       INC    $9F     
       INC    $9F     
       RTS            

LFB63: CLC            
       ADC    #$2E    
       TAY            
       AND    #$0F    
       STA    $AB     
       TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       CLC            
       ADC    $AB     
       CMP    #$0F    
       BCC    LFB7B   
       SBC    #$0F    
       INY            
LFB7B: EOR    #$07    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    HMP0,X  
       STA    WSYNC   
LFB85: DEY            
       BPL    LFB85   
       STA    RESP0,X 
       RTS            

LFB8B: STA    WSYNC   
       STA    COLUBK  
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       NOP            
       STA    HMP0    
       STA    RESP0   
       STA    RESP1   
       STA    REFP0   
       STA    REFP1   
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$07    
       STA    $AB     
       STA    VDELP0  
       STA    VDELP1  
       LDA    #$10    
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       LDA    #$EF    
       STA    COLUP0  
       STA    COLUP1  
LFBC8: LDY    $AB     
       LDA    ($E9),Y 
       STA    $AC     
       LDA    ($E7),Y 
       TAX            
       LDA    ($DF),Y 
       STA    WSYNC   
       NOP            
       STA    GRP0    
       LDA    ($E1),Y 
       STA    GRP1    
       LDA    ($E3),Y 
       STA    GRP0    
       LDA    ($E5),Y 
       LDY    $AC     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       DEC    $AB     
       BPL    LFBC8   
       STA    WSYNC   
       LDA    #$00    
       STA    COLUBK  
       STA    VDELP0  
       STA    VDELP1  
       STA    GRP0    
       STA    GRP1    
       STA    GRP0    
       RTS            

LFC01: LDA    $8D     
       AND    #$80    
       BEQ    LFC0F   
       LDA    SWCHA   
       ASL            
       ASL            
       ASL            
       ASL            
       RTS            

LFC0F: LDA    SWCHA   
       RTS            

LFC13: LDA    $8D     
       AND    #$80    
       BEQ    LFC1C   
       BIT    PF0     
       RTS            

LFC1C: BIT    REFP1   
       RTS            

LFC1F: LDA    $8D     
       AND    #$80    
       BEQ    LFC28   
       LDA    $A2     
       RTS            

LFC28: LDA    $A1     
       RTS            

LFC2B: LDA    $8D     
       AND    #$01    
       RTS            

LFC30: LDY    #$00    
LFC32: LDA    ($F2),Y 
       STA.wy $00AB,Y 
       INY            
       CPY    #$03    
       BNE    LFC32   
       RTS            

LFC3D: LDA    $88     
       STA    $9F     
       LDA    #$00    
       LDX    #$2E    
LFC45: STA    $AF,X   
       DEX            
       BPL    LFC45   
       JSR    LFC59   
       JSR    LFAFC   
       LDA    #$00    
       STA    $D9     
       STA    $A0     
       STA    $9A     
       RTS            

LFC59: LDA    #$4C    
       STA    $80     
       LDA    #$54    
       STA    $82     
       LDA    #$06    
       STA    $98     
       LDA    #$04    
       STA    $99     
       STA    $A3     
       LDA    #$C0    
       STA    $8F     
       LDA    #$00    
       STA    $97     
       STA    $89     
       STA    $F4     
       STA    $F6     
       STA    $8B     
       STA    $8E     
       JSR    LFFE2   
       LDA    #$2A    
       STA    $DE     
       LDA    #$10    
       STA    $D8     
       RTS            

LFC89: LDA    $8D     
       AND    #$80    
       RTS            

LFC8E: LDA    $D8     
       AND    #$20    
       RTS            

LFC93: LDA    $D8     
       AND    #$C0    
       RTS            

LFC98: LDA    $87     
       AND    #$F0    
       CMP    #$40    
       RTS            

LFC9F: LDA    $87     
       AND    #$F0    
       CMP    #$20    
       RTS            

LFCA6: LDA    #$04    
       STA    AUDC1   
       DEC    $9B     
       BEQ    LFCBA   
LFCAE: LDX    $F6     
       LDA    LFCDF,X 
       STA    AUDF1   
       LDA    #$0F    
       STA    AUDV1   
       RTS            

LFCBA: INC    $F6     
       LDA    #$02    
       STA    $9B     
       BNE    LFCAE   
LFCC2: LDA    INTIM   
       BNE    LFCC2   
       LDA    #$82    
       STA    WSYNC   
       STA    VBLANK  
       STA    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    VSYNC   
       LDA    #$30    
       STA    TIM64T  
       RTS            

LFCDF: .byte $16,$1F,$23,$1A,$14,$11,$0F,$0D,$14,$17,$1F,$1E,$1D,$1C,$1B,$1A
       .byte $19,$18,$17,$16,$15,$14,$13,$12,$11,$10,$0F,$0E,$0D,$0C,$0B,$0A
       .byte $09,$3C,$66,$66,$66,$66,$66,$66,$3C,$3C,$18,$18,$18,$18,$18,$38
       .byte $18,$7E,$60,$60,$3C,$06,$06,$46,$3C,$3C,$46,$06,$0C,$0C,$06,$46
       .byte $3C,$0C,$0C,$0C,$7E,$4C,$2C,$1C,$0C,$7C,$46,$06,$06,$7C,$60,$60
       .byte $7E,$3C,$66,$66,$66,$7C,$60,$62,$3C,$18,$18,$18,$18,$0C,$06,$42
       .byte $7E,$3C,$66,$66,$3C,$3C,$66,$66,$3C,$3C,$46,$06,$3E,$66,$66,$66
       .byte $3C,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$30,$16,$1A,$7F,$0C,$FE,$DE,$3E,$0C,$64,$3C,$FE,$18,$FE,$DE
       .byte $3E,$42,$24,$7E,$FF,$DB,$FF,$7E,$18,$18,$24,$7E,$FF,$DB,$FF,$7E
       .byte $18,$00,$00,$00,$00,$00,$00,$00,$00,$00,$3E,$3E,$3E,$3E,$3E,$3E
       .byte $00,$00,$00,$0F,$FA,$FA,$0F,$00,$00,$0F,$FF,$FF,$AA,$AA,$FF,$FF
       .byte $0F,$F0,$FF,$FF,$55,$55,$FF,$FF,$F0,$00,$00,$F0,$5F,$5F,$F0,$00
       .byte $00
LFDD0: .byte $FF,$80,$FF,$FF,$80,$80,$FF,$80
LFDD8: .byte $00,$34,$17,$04,$01,$40,$4C,$2B,$06,$02,$00,$64,$17,$08,$01,$80
       .byte $10,$53,$01,$04,$C0,$88,$53,$0B,$04,$40,$34,$8F,$04,$07,$00,$4C
       .byte $7B,$06,$06,$40,$64,$8F,$08,$07
LFE00: .byte $D0,$50,$30,$10,$10,$10,$30,$10,$10,$10,$30,$90,$D0,$40,$00,$90
       .byte $CF,$E1,$40,$3F,$80,$E3,$CF,$50,$00,$80,$CF,$CF,$60,$00,$3F,$80
       .byte $D2,$40,$3F,$00,$A0,$CF,$CF,$40,$20,$10,$00,$10,$20,$20,$20,$10
       .byte $00,$10,$20,$80,$40,$B4,$CF,$C0,$40,$30,$3F,$30,$80,$C0,$CF,$75
       .byte $80,$40,$10,$20,$00,$20,$10,$10,$10,$20,$00,$20,$10,$80,$CF,$CF
       .byte $50,$00,$3F,$80,$E7,$40,$3F,$00,$90,$CF,$CF,$40,$00,$A0,$CF,$D6
       .byte $40,$3F,$80,$D8,$CF,$60,$00,$80,$E0,$60,$3F,$20,$20,$20,$30,$20
       .byte $20,$20,$3F,$A0,$E0
LFE75: .byte $90,$90,$90,$90,$90,$90,$90,$90,$90,$90,$90,$90,$10,$10,$10,$10
       .byte $10,$10,$10,$10,$90,$90,$90,$90,$90,$90,$90,$90,$90,$90,$90,$90
       .byte $10,$10,$10,$10,$10,$10,$10,$10,$90,$90,$10,$10,$10,$10,$10,$10
       .byte $10,$10,$90,$90,$10,$10,$10,$10,$10,$10,$10,$10,$90,$90,$90,$90
       .byte $90,$90,$90,$90,$90,$90,$90,$90,$10,$10,$10,$10,$10,$10,$10,$10
       .byte $90,$90,$90,$90,$90,$90,$90,$90,$90,$90,$90,$90
LFED1: .byte $FF,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$3C,$3C,$04,$04,$04,$04
       .byte $04,$04,$04,$04,$24,$24,$20,$20,$20,$20,$20,$20,$20,$20,$3C,$3C
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$C4,$E4,$04,$27,$04,$27,$27,$04
       .byte $27,$04,$E4,$C4,$00,$00,$00,$00,$00,$00,$00,$00,$3C,$3C,$20,$20
       .byte $20,$20,$20,$20,$20,$20,$24,$24,$04,$04,$04,$04,$04,$04,$04,$04
       .byte $3C,$3C,$00,$00,$00,$00,$00,$00,$00,$00,$FF,$FF
LFF2D: .byte $FF,$FF,$00,$80,$00,$80,$00,$80,$00,$80,$C9,$C0,$09,$00,$09,$00
       .byte $09,$00,$09,$00,$8F,$C6,$00,$40,$00,$40,$00,$40,$00,$40,$0F,$4F
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$F9,$E1,$01,$01,$01,$01,$01,$01
       .byte $01,$01,$E1,$F9,$00,$00,$00,$00,$00,$00,$00,$00,$4F,$0F,$40,$00
       .byte $40,$00,$40,$00,$40,$00,$C6,$8F,$00,$09,$00,$09,$00,$09,$00,$09
       .byte $C0,$C9,$80,$00,$80,$00,$80,$00,$80,$00,$FF,$FF
LFF89: JSR    LFC98   
       BNE    LFF9E   
       BIT    WSYNC   
       BPL    LFFA5   
       LDA    #$04    
LFF94: STA    AUDC1   
       LDA    #$0F    
       STA    AUDF1   
       STA    AUDV1   
       BNE    LFFCE   
LFF9E: LDA    #$00    
       STA    AUDC0   
       STA    AUDC1   
       RTS            

LFFA5: BIT    VBLANK  
       BMI    LFFDE   
       LDA    $8B     
       BEQ    LFFBE   
       LDA    $88     
       AND    #$04    
       BEQ    LFF9E   
       LDA    #$0C    
       STA    AUDC1   
       LDA    #$0F    
       STA    AUDF1   
       STA    AUDV1   
       RTS            

LFFBE: LDA    $9A     
       BEQ    LFF9E   
       CMP    #$02    
       BEQ    LFFD7   
       LDA    $88     
       AND    #$08    
LFFCA: BEQ    LFF9E   
       LDA    #$10    
LFFCE: STA    AUDF0   
       LDA    #$0E    
       STA    AUDC0   
       STA    AUDV0   
       RTS            

LFFD7: LDA    $88     
       AND    #$04    
       JMP    LFFCA   
LFFDE: LDA    #$04    
       BNE    LFF94   
LFFE2: LDA    $8D     
       CMP    #$03    
       BCC    LFFEF   
       LDA    #$30    
LFFEA: STA    $AE     
       STA    $9B     
       RTS            

LFFEF: LDA    #$50    
       BNE    LFFEA   
       LDA    $A0A0   
       LDA    $D3A0   
       LDA    $A0A0   
       BRK            
       BEQ    LFFDF   
       DEY            
