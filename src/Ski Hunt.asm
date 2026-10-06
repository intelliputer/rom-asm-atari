; Disassembly of roms/Ski Hunt.bin
; Disassembled Tue Oct  6 15:22:43 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Ski Hunt.bin
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
RESM1   =  $13
AUDC0   =  $15
AUDC1   =  $16
AUDF0   =  $17
AUDF1   =  $18
AUDV0   =  $19
AUDV1   =  $1A
GRP0    =  $1B
GRP1    =  $1C
ENAM1   =  $1E
HMP0    =  $20
HMP1    =  $21
HMM1    =  $23
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXM1P   =  $31
CXPPMM  =  $37
INPT4   =  $3C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM8T   =  $0295
TIM64T  =  $0296

       ORG $F000

START:
       SEI            
       CLD            
       LDX    #$FF    
       TXS            
       INX            
       TXA            
LF007: STA    VSYNC,X 
       INX            
       BNE    LF007   
       JSR    LF9E9   
       LDA    #$FF    
       STA    $DB     
       LDX    #$0A    
       LDA    #$FC    
LF017: STA    $AF,X   
       DEX            
       DEX            
       BPL    LF017   
LF01D: LDY    #$FF    
       STY    VSYNC   
       STY    VBLANK  
       LDA    #$17    
       STA    TIM8T   
       INC    $DC     
       DEC    $DD     
       INC    $DE     
       INC    $DF     
LF030: LDY    INTIM   
       BNE    LF030   
       STY    WSYNC   
       STY    VSYNC   
       LDA    #$1D    
       STA    TIM64T  
       LDA    SWCHB   
       AND    #$03    
       CMP    #$03    
       BNE    LF04B   
       LDA    INPT4   
       BMI    LF04B   
LF04B: LDA    SWCHB   
       LSR            
       BCS    LF06D   
       LDA    $EB     
       BMI    LF057   
LF055: DEC    $EB     
LF057: LDA    $C6     
       STA    $EF     
       LDX    #$9C    
       LDA    #$00    
LF05F: STA    $4E,X   
       DEX            
       BNE    LF05F   
       LDA    $EF     
       STA    $C6     
       JSR    LF9E9   
       BMI    LF0E3   
LF06D: LDX    #$00    
       LSR            
       BCS    LF09B   
       LDA    $EB     
       BPL    LF055   
       LDA    $DA     
       BEQ    LF07E   
       DEC    $DA     
       BPL    LF09D   
LF07E: STX    $A9     
       STX    $A8     
       INC    $EF     
       LDA    $EF     
       AND    #$0F    
       STA    $EF     
       STA    $C6     
       CLC            
       ADC    #$01    
       CMP    #$0A    
       BCC    LF097   
       SBC    #$0A    
       ORA    #$10    
LF097: STA    $AA     
       LDX    #$1E    
LF09B: STX    $DA     
LF09D: LDA    $E9     
       BMI    LF0EC   
       LDA    #$00    
       STA    $9D     
       STA    $9E     
       STA    $9F     
       STA    $DB     
       LDA    INPT4   
       BMI    LF0D6   
       LDA    $EB     
       BPL    LF055   
       LDA    $C6     
       STA    $EF     
       LDA    #$01    
       STA    $82     
       LDA    $EF     
       AND    #$07    
       TAY            
       LDA    LF5E6,Y 
       STA    $80     
       JSR    LF1E7   
       LDA    #$FF    
       STA    $E9     
       INC    $EB     
       LDY    #$00    
       STY    $AA     
       STY    $E5     
       BEQ    LF0E3   
LF0D6: LDA    SWCHA   
       AND    #$F0    
       CMP    #$F0    
       BEQ    LF0E1   
       LDY    #$FF    
LF0E1: STY    $E5     
LF0E3: LDA    #$00    
       STA    AUDV0   
       STA    AUDV1   
       JMP    LF69D   
LF0EC: LDA    $E6     
       BNE    LF0F5   
       LDA    $EF     
       LSR            
       BCC    LF102   
LF0F5: LDA    #$00    
       STA    AUDV0   
       LDA    #$FF    
       STA    $DB     
       STA    $F0     
       JMP    LFFBE   
LF102: LDA    $DB     
       BPL    LF13C   
       LDA    #$00    
       STA    $DB     
       STA    $F0     
       INC    $F8     
       LDA    $F8     
       AND    #$03    
       STA    $F8     
       TAY            
       LDA    LFF55,Y 
       STA    $9A     
       LDA    LFF5D,Y 
       STA    $9B     
       LDA    LFF59,Y 
       STA    $F4     
       LDA    LFF61,Y 
       STA    $F5     
       INC    $EA     
       LDA    $EA     
       AND    #$03    
       CMP    #$03    
       BEQ    LF138   
       STA    $EA     
       JMP    LF13C   
LF138: LDA    #$00    
       STA    $EA     
LF13C: LDY    $DB     
       BMI    LF18E   
       BNE    LF16B   
       LDA    ($9A),Y 
       BEQ    LF186   
       PHA            
       AND    #$0F    
       TAY            
       LDA    LFE00,Y 
       BNE    LF151   
       STA    AUDV0   
LF151: STA    AUDF0   
       STA    $F3     
       LDX    $EA     
       LDA    LF601,X 
       STA    AUDC0   
       PLA            
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $F1     
       STA    $F2     
       INC    $9A     
       LDY    #$07    
       STY    $DB     
LF16B: DEC    $F2     
       BNE    LF188   
       LDA    $F1     
       STA    $F2     
       DEY            
       STY    $DB     
       LDA    $F3     
       BEQ    LF182   
       INY            
       INY            
       INY            
       INY            
       INY            
       INY            
       INY            
       TYA            
LF182: STA    AUDV0   
       BPL    LF188   
LF186: DEC    $DB     
LF188: JSR    LFD5E   
       JMP    LFFBE   
LF18E: LDA    $E6     
       BPL    LF195   
       JMP    LF2F8   
LF195: LDA    $DF     
       AND    #$3F    
       BNE    LF1B2   
       INC    $DF     
       LDA    $80     
       BEQ    LF1B2   
       SED            
       SEC            
       SBC    #$01    
       STA    $80     
       CLD            
       LDA    $EF     
       LSR            
       BCS    LF1B2   
       LDA    #$10    
       JSR    LFDB4   
LF1B2: LDA    $80     
       BEQ    LF1B9   
       JMP    LF231   
LF1B9: LDA    $82     
       SED            
       CLC            
       ADC    #$01    
       CLD            
       STA    $82     
       INC    $EF     
       LDA    $EF     
       AND    #$07    
       TAY            
       LDA    LF5E6,Y 
       STA    $80     
       LDA    #$00    
       STA    $AB     
       STA    $AC     
       STA    $AD     
       STA    $9D     
       STA    $9E     
       STA    $9F     
       JSR    LF1E7   
       LDX    #$13    
       JSR    LF9EB   
       JMP    LF231   
LF1E7: LDA    $EF     
       TAX            
LF1EA: LSR            
       BCS    LF217   
       TXA            
       CMP    #$10    
       BCS    LF202   
       CMP    #$08    
       BCS    LF20B   
       LSR            
       TAY            
       LDA    LFE35,Y 
       STA    $C5     
       LDA    #$00    
       STA    $9C     
       RTS            

LF202: LDA    #$02    
       STA    $9C     
       LDA    #$00    
       STA    $C5     
       RTS            

LF20B: LSR            
       TAY            
       LDA    LFE39,Y 
       STA    $9C     
       LDA    #$00    
       STA    $C5     
       RTS            

LF217: TXA            
       CMP    #$10    
       BCS    LF228   
       LSR            
       TAY            
       LDA    LFE41,Y 
       STA    $C5     
       LDA    #$00    
       STA    $9C     
       RTS            

LF228: LDA    #$01    
       STA    $9C     
       LDA    #$00    
       STA    $C5     
       RTS            

LF231: LDA    SWCHA   
       STA    $BA     
       ASL            
       BMI    LF261   
       LDA    $81     
       CMP    #$01    
       BEQ    LF255   
       LDA    #$01    
       STA    $81     
       LDA    $F9     
       BPL    LF255   
       LDA    #$00    
       STA    $F9     
       LDA    LFF53   
       STA    $FA     
       LDA    LFF54   
       STA    $FB     
LF255: INC    $DE     
       DEC    $93     
       LDA    #$06    
       CMP    $93     
       BCC    LF261   
       STA    $93     
LF261: LDA    $BA     
       BMI    LF28D   
       LDA    $81     
       CMP    #$02    
       BEQ    LF281   
       LDA    #$02    
       STA    $81     
       LDA    $F9     
       BPL    LF281   
       LDA    #$00    
       STA    $F9     
       LDA    LFF53   
       STA    $FA     
       LDA    LFF54   
       STA    $FB     
LF281: INC    $DC     
       INC    $93     
       LDA    #$90    
       CMP    $93     
       BCS    LF28D   
       STA    $93     
LF28D: LDA    $BA     
       AND    #$20    
       BNE    LF2E1   
       LDA    $81     
       BEQ    LF2AD   
       LDA    #$00    
       STA    $81     
       LDA    $F9     
       BPL    LF2AD   
       LDA    #$00    
       STA    $F9     
       LDA    LFF53   
       STA    $FA     
       LDA    LFF54   
       STA    $FB     
LF2AD: INC    $DC     
       DEC    $92     
       LDA    #$01    
       CMP    $92     
       BCC    LF2CA   
       LDA    #$9E    
       STA    $92     
       LDA    $EF     
       LSR            
       BCS    LF2CA   
       LDA    #$99    
       JSR    LFDB4   
       LDA    #$99    
       JSR    LFDB4   
LF2CA: INC    $C7     
       LDA    $C7     
       CMP    #$05    
       BCC    LF2E1   
       LDA    #$00    
       STA    $C7     
       LDA    $EF     
       CLC            
       ADC    #$04    
       TAX            
       LDA    $EF     
       JSR    LF1EA   
LF2E1: LDA    $BA     
       AND    #$10    
       BNE    LF2F8   
       DEC    $DD     
       INC    $C7     
       LDA    $C7     
       CMP    #$05    
       BCC    LF2F8   
       LDA    #$00    
       STA    $C7     
       JSR    LF1E7   
LF2F8: LDA    CXPPMM  
       BPL    LF2FE   
       BMI    LF37C   
LF2FE: LDA    $E8     
       BMI    LF331   
       LDA    $E6     
       BMI    LF324   
       LDA    $EF     
       LSR            
       BCC    LF30F   
       LDA    #$00    
       STA    AUDV0   
LF30F: LDA    $92     
       SBC    #$10    
       STA    $D5     
       LDA    $93     
       CLC            
       ADC    #$05    
       STA    $D6     
       LDA    $EF     
       LSR            
       BCS    LF324   
       JMP    LF3CA   
LF324: LDA    INPT4   
       ORA    $E6     
       BPL    LF32D   
       JMP    LF3CA   
LF32D: DEC    $E8     
       DEC    $D5     
LF331: INC    $DC     
       LDA    #$08    
       STA    AUDV0   
       STA    AUDC0   
       LDA    $D5     
       CLC            
       SBC    #$06    
       CMP    #$07    
       BCS    LF344   
       LDA    #$01    
LF344: STA    $D5     
       LDA    $D5     
       CMP    #$08    
       BCS    LF350   
       INC    $E8     
       LDA    #$00    
LF350: STA    $E1     
       STA    AUDF0   
       LDA    $EF     
       AND    #$07    
       TAY            
       LDA    LFE87,Y 
       BEQ    LF360   
       BNE    LF3C6   
LF360: LDA    CXM1P   
       BPL    LF3C6   
       LDA    $D5     
       SBC    #$04    
       STA    $D5     
       LDX    #$02    
LF36C: LDA    $9D,X   
       SBC    $D5     
       CMP    #$14    
       BCC    LF38B   
       DEX            
       BPL    LF36C   
       LDX    #$00    
       JMP    LF38B   
LF37C: LDX    #$02    
LF37E: LDA    $92     
       SBC    $9D,X   
       CMP    #$23    
       BCC    LF38B   
       DEX            
       BPL    LF37E   
       LDX    #$00    
LF38B: LDA    $AB,X   
       BMI    LF3C6   
       ORA    #$80    
       STA    $AB,X   
       LDA    #$15    
       STA    AUDF0   
       STA    $D5     
       LDA    #$02    
       STA    $C8,X   
       LDA    #$00    
       STA    $CB,X   
       STA    $E8     
       STA    $D6     
       STA    $E1     
       LDA    $9D,X   
       CMP    #$64    
       BCC    LF3B1   
       LDA    #$99    
       BNE    LF3BB   
LF3B1: CMP    #$32    
       BCC    LF3B9   
       LDA    #$50    
       BNE    LF3BB   
LF3B9: LDA    #$25    
LF3BB: LDY    CXPPMM  
       BMI    LF3C2   
       JSR    LFDB4   
LF3C2: LDA    #$0F    
       STA    AUDC0   
LF3C6: LDA    $E8     
       BPL    LF3CA   
LF3CA: LDA    $E6     
       BPL    LF43E   
       DEC    $E2     
       BPL    LF43B   
       LDX    #$02    
       STX    $E2     
       LDX    $E3     
       INX            
       CPX    #$10    
       BCC    LF40C   
       CLC            
       LDY    #$00    
       STY    AUDC1   
       LDX    #$02    
LF3E4: STY    $C5     
       LDA    $AB,X   
       BCS    LF3EB   
       LSR            
LF3EB: DEX            
       BPL    LF3E4   
       BCS    LF43B   
       DEC    $A7     
       BPL    LF3F6   
       STY    $E9     
LF3F6: STY    $E6     
       STY    $BA     
       JSR    LF1E7   
       LDY    $BA     
       LDA    #$40    
       STA    $E0     
       LDX    #$13    
       JSR    LF9EB   
       STY    AUDC1   
       BMI    LF43B   
LF40C: CPX    #$05    
       BCS    LF424   
       LDY    #$08    
       LDA    LFE63,X 
       STA    $BB     
       LDA    LF607,X 
       STA    $BA     
LF41C: LDA    ($BA),Y 
       STA.wy $0083,Y 
       DEY            
       BPL    LF41C   
LF424: STX    $E3     
       TXA            
       DEC    $E0     
       LDA    $E0     
       STA    AUDV1   
       STA    AUDV0   
       LDA    #$07    
       STA    AUDC0   
       STA    AUDF1   
       LDA    #$08    
       STA    AUDF0   
       STA    AUDC1   
LF43B: JMP    LF4A3   
LF43E: LDA    $EF     
       LSR            
       BCS    LF474   
       LDA    $81     
       CMP    #$01    
       BEQ    LF45A   
       CMP    #$02    
       BNE    LF467   
       LDY    #$0E    
LF44F: LDA    LFFAF,Y 
       STA.wy $0083,Y 
       DEY            
       BPL    LF44F   
       BMI    LF4A3   
LF45A: LDY    #$0E    
LF45C: LDA    LF5F2,Y 
       STA.wy $0083,Y 
       DEY            
       BPL    LF45C   
       BMI    LF4A3   
LF467: LDY    #$0E    
LF469: LDA    LFF35,Y 
       STA.wy $0083,Y 
       DEY            
       BPL    LF469   
       BMI    LF4A3   
LF474: LDA    $81     
       CMP    #$01    
       BEQ    LF48B   
       CMP    #$02    
       BNE    LF498   
       LDY    #$0E    
LF480: LDA    LFE8F,Y 
       STA.wy $0083,Y 
       DEY            
       BPL    LF480   
       BMI    LF4A3   
LF48B: LDY    #$0E    
LF48D: LDA    LFE9E,Y 
       STA.wy $0083,Y 
       DEY            
       BPL    LF48D   
       BMI    LF4A3   
LF498: LDY    #$0E    
LF49A: LDA    LFF44,Y 
       STA.wy $0083,Y 
       DEY            
       BPL    LF49A   
LF4A3: LDX    #$02    
LF4A5: LDA    $AB,X   
       LSR            
       BCS    LF4AD   
       JMP    LF568   
LF4AD: DEC    $BC,X   
       BPL    LF506   
       LDA    $C5     
       STA    $BC,X   
       LDA    $EF     
       AND    #$07    
       TAY            
       LDA    LFE87,Y 
       BNE    LF4DB   
       LDA    $DC,X   
       CMP    #$D0    
       BCS    LF4DB   
       BPL    LF4D1   
       DEC    $C2,X   
       LDA    #$08    
       CMP    $C2,X   
       BCC    LF4DB   
       BCS    LF4D9   
LF4D1: INC    $C2,X   
       LDA    #$90    
       CMP    $C2,X   
       BCS    LF4DB   
LF4D9: STA    $C2,X   
LF4DB: LDY    $9C     
       BEQ    LF4E4   
LF4DF: INC    $9D,X   
       DEY            
       BNE    LF4DF   
LF4E4: INC    $9D,X   
       LDA    $9D,X   
       CMP    #$A0    
       BCC    LF506   
LF4EC: LDA    LF60B   
       STA    $A0,X   
       LDA    LFE67   
       STA    $A4     
       LDA    $AB,X   
       AND    #$7E    
       STA    $AB,X   
       LDA    #$00    
       STA    $9D,X   
       LDA    #$02    
       STA    $BC,X   
       BNE    LF565   
LF506: LDA    $AB,X   
       BPL    LF548   
       DEC    $C8,X   
       BPL    LF545   
       LDA    #$02    
       STA    $C8,X   
       INC    $CB,X   
       LDY    $CB,X   
       CPY    #$06    
       BCS    LF4EC   
       CPY    #$04    
       BCS    LF53E   
       LDA    $EF     
       LSR            
       BCS    LF530   
       LDA    LF60C,Y 
       STA    $A0,X   
       LDA    LFE68,Y 
       STA    $A4     
       JMP    LF53A   
LF530: LDA    LF607,Y 
       STA    $A0,X   
       LDA    LFE63,Y 
       STA    $A4     
LF53A: LDA    #$68    
       STA    $CE,X   
LF53E: TYA            
       STA    AUDF0   
       EOR    #$FF    
       STA    AUDV0   
LF545: JMP    LF565   
LF548: JSR    LFDD6   
       LDA    #$08    
       AND    $DF     
       BEQ    LF55B   
       LDA    LFE6D,Y 
       STA    $A4     
       LDA    LFE51,Y 
       BNE    LF563   
LF55B: LDA    LFE73,Y 
       STA    $A4     
       LDA    LFE57,Y 
LF563: STA    $A0,X   
LF565: JMP    LF5DD   
LF568: LDA    $E6     
       BPL    LF56F   
       JMP    LF5DD   
LF56F: DEC    $BC,X   
       BPL    LF5DD   
       LDA    #$00    
       STA    $BC,X   
       LDA    $9D     
       BEQ    LF57F   
       CMP    #$3A    
       BCC    LF5DD   
LF57F: LDA    $9E     
       BEQ    LF587   
       CMP    #$3A    
       BCC    LF5DD   
LF587: LDA    $9F     
       BEQ    LF58F   
       CMP    #$3A    
       BCC    LF5DD   
LF58F: LDA    $DC,X   
       AND    #$7F    
       STA    $BA     
       LDA    LFE2F,X 
       SBC    $BA     
       STA    $C2,X   
       LDA    $DC,X   
       LSR            
       LSR            
       LSR            
       LSR            
       AND    #$03    
       STA    $BF,X   
       LDA    #$01    
       STA    $AB,X   
       JSR    LFDD6   
       LDA    LFE51,Y 
       STA    $A0,X   
       LDA    LFE6D,Y 
       STA    $A4     
       LDA    LFE5D,Y 
       STA    $CE,X   
       LDA    LFE79,Y 
       STA    $A6     
       LDA    #$01    
       STA    $9D,X   
       LDA    $EF     
       AND    #$07    
       TAY            
       LDA    LFE87,Y 
       BNE    LF5D3   
       LDA    #$00    
       BEQ    LF5DB   
LF5D3: LDA    $DC,X   
       AND    #$07    
       TAY            
       LDA    LFE7F,Y 
LF5DB: STA    $D2,X   
LF5DD: DEX            
       BMI    LF5E3   
       JMP    LF4A5   
LF5E3: JMP    LF611   
LF5E6: .byte $30,$30,$30,$30,$30,$30,$30,$30
LF5EE: .byte $C4,$86,$56,$D4
LF5F2: .byte $18,$18,$3E,$7B,$2E,$4F,$9E,$34,$28,$48,$90,$20,$1F,$06,$00
LF601: .byte $01,$05,$0C
LF604: .byte $01,$05,$0C
LF607: .byte $00,$09,$12,$4F
LF60B: .byte $4F
LF60C: .byte $AC,$B5,$BE,$C7,$C7
LF611: LDA    CXPPMM  
       BMI    LF617   
       BPL    LF621   
LF617: LDA    $E6     
       BMI    LF621   
       DEC    $E6     
       STA    $E7     
       STA    $E3     
LF621: LDY    #$02    
LF623: LDA.wy $009D,Y 
       CLC            
       SBC    #$0F    
       BCC    LF633   
LF62B: STA.wy $0094,Y 
       DEY            
       BPL    LF623   
       BMI    LF637   
LF633: LDA    #$00    
       BEQ    LF62B   
LF637: LDY    #$00    
       LDA    $94     
       CMP    $95     
       BCC    LF65B   
       CMP    $96     
       BCC    LF64F   
       LDA    $95     
       CMP    $96     
       BCC    LF655   
       STY    $96     
       LDA    #$E4    
       BNE    LF677   
LF64F: STY    $95     
       LDA    #$9C    
       BNE    LF677   
LF655: STY    $95     
       LDA    #$B4    
       BNE    LF677   
LF65B: CMP    $96     
       BCS    LF66B   
       LDA    $95     
       CMP    $96     
       BCS    LF671   
       STY    $94     
       LDA    #$6C    
       BNE    LF677   
LF66B: STY    $96     
       LDA    #$D8    
       BNE    LF677   
LF671: STY    $94     
       LDA    #$78    
       BNE    LF677   
LF677: LDY    #$03    
LF679: LSR            
       LSR            
       TAX            
       AND    #$03    
       STA.wy $0096,Y 
       TXA            
       DEY            
       BNE    LF679   
       LDX    #$FF    
LF687: INX            
       CPX    #$03    
       BEQ    LF694   
       LDA    $A8,X   
       CMP    $EC,X   
       BCC    LF69D   
       BEQ    LF687   
LF694: LDX    #$02    
LF696: LDA    $A8,X   
       STA    $EC,X   
       DEX            
       BPL    LF696   
LF69D: LDX    #$0A    
       LDY    #$00    
       LDA    $E5     
       BPL    LF6A7   
       LDY    #$44    
LF6A7: JSR    LF6AD   
       JMP    LF6E7   
LF6AD: LDA.wy $00A8,Y 
       AND    #$F0    
       LSR            
       ADC    LFC02   
       STA    $AE,X   
       LDA    #$FC    
       STA    $AF,X   
       DEX            
       DEX            
       LDA.wy $00A8,Y 
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       ADC    LFC02   
       STA    $AE,X   
       LDA    #$FC    
       STA    $AF,X   
       INY            
       DEX            
       DEX            
       BPL    LF6AD   
       LDX    #$08    
       LDY    LFC0C   
LF6D9: LDA    $B0,X   
       CMP    LFC02   
       BNE    LF6E6   
       STY    $B0,X   
       DEX            
       DEX            
       BPL    LF6D9   
LF6E6: RTS            

LF6E7: LDA    #$FF    
       STA    CXCLR   
       LDX    INTIM   
       BNE    LF6E7   
       STX    WSYNC   
       STX    VBLANK  
       LDY    #$08    
LF6F6: STA    WSYNC   
       STA    HMOVE   
       DEY            
       BNE    LF6F6   
       LDY    #$07    
       JSR    LFEDD   
       STA    WSYNC   
       STA    WSYNC   
       STA    HMOVE   
       STA    HMCLR   
       LDA    #$BF    
       STA    COLUBK  
       LDA    #$04    
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    $FC     
       STA    $FD     
       LDX    #$00    
       LDA    #$2A    
       JSR    LFEC3   
       STA    WSYNC   
       STA    HMOVE   
       STA    HMCLR   
       LDX    #$01    
       LDA    #$25    
       JSR    LFEC3   
       STA    WSYNC   
       STA    HMOVE   
       STA    HMCLR   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$10    
       STA    HMP0    
       LDA    #$F0    
       STA    HMP1    
       LDA    $EF     
       AND    #$03    
       TAY            
       LDA    LFE49,Y 
       STA    $94     
       LDA    LFE4D,Y 
       STA    $95     
       LDA    #$0E    
       STA    COLUP1  
       LDA    #$01    
       STA    CTRLPF  
       LDY    #$00    
LF757: LDX    #$02    
LF759: STA    WSYNC   
       STA    HMOVE   
       LDA    ($94),Y 
       STA    COLUPF  
       LDA    LFCAF,Y 
       STA    PF0     
       LDA    LFCBB,Y 
       STA    PF1     
       STA    PF2     
       LDA    LFCC7,Y 
       STA    GRP1    
       STA    GRP0    
       LDA    ($94),Y 
       STA    COLUP0  
       DEX            
       BNE    LF759   
       INY            
       CPY    #$0C    
       BNE    LF757   
       STA    WSYNC   
       STA    HMOVE   
       STA    HMCLR   
       LDA    $EF     
       AND    #$03    
       TAY            
       LDA    LF5EE,Y 
       STA    COLUBK  
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    PF0     
       STA    PF2     
       STA    $95     
       STA    PF1     
       LDA    #$FF    
       STA    CXCLR   
       LDA    $93     
       STA    WSYNC   
       STA    HMOVE   
       SEC            
LF7A9: SBC    #$0F    
       BCS    LF7A9   
       EOR    #$0F    
       ASL            
       ASL            
       ASL            
       ASL            
       ADC    #$90    
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       STA    HMCLR   
       LDX    #$03    
       LDA    $D6     
       STA    WSYNC   
       STA    HMOVE   
       SEC            
LF7CC: SBC    #$0F    
       BCS    LF7CC   
       EOR    #$0F    
       ASL            
       ASL            
       ASL            
       ASL            
       ADC    #$90    
       STA    RESM1   
       STA    WSYNC   
       STA    HMOVE   
       STA    HMM1    
       STA    WSYNC   
       STA    HMOVE   
       STA    HMCLR   
       LDA    #$10    
       STA    NUSIZ1  
       STX    WSYNC   
       STA    HMOVE   
       LDX    #$00    
       LDA    #$03    
       STA    $D7     
       LDA    #$A0    
       STA    $D9     
LF7F8: LDA    $D9     
       BNE    LF7FF   
       JMP    LF952   
LF7FF: CMP    #$05    
       BCS    LF812   
       LDA    #$00    
       STA    GRP0    
LF807: STA    WSYNC   
       STA    HMOVE   
       DEC    $D9     
       BNE    LF807   
       JMP    LF952   
LF812: LDA    $D7     
       BNE    LF819   
       JMP    LF8F6   
LF819: TAY            
       LDA.wy $0096,Y 
       TAY            
       LDA.wy $00D1,Y 
       STA    NUSIZ0  
       LDA    $D9     
       CMP    $92     
       BCS    LF830   
       LDA    $83,X   
       BEQ    LF82E   
       INX            
LF82E: STA    $BB     
LF830: LDA.wy $00C1,Y 
       STA    WSYNC   
       STA    HMOVE   
       SEC            
LF838: SBC    #$0F    
       BCS    LF838   
       EOR    #$0F    
       ASL            
       ASL            
       ASL            
       ASL            
       ADC    #$90    
       STA    RESP0   
       STA    WSYNC   
       STA    HMOVE   
       STA    HMP0    
       STA    WSYNC   
       STA    HMOVE   
       STA    HMCLR   
       LDA    $BB     
       STA    GRP1    
       LDY    $D7     
       LDA.wy $0096,Y 
       TAY            
       LDA.wy $009F,Y 
       STA    $A3     
       LDA.wy $00CD,Y 
       STA    $A5     
       LDA.wy $0093,Y 
       STA    $D8     
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$C8    
       STA    COLUPF  
       LDA    #$0E    
       STA    COLUBK  
       LDA    $D9     
       SEC            
       SBC    #$05    
       STA    $D9     
       LDA.wy $009C,Y 
       STA    $D1     
       LDY    #$00    
       DEC    $D7     
       BPL    LF8A9   
LF889: JMP    LF952   
LF88C: .byte $4C,$F8,$F7
LF88F: LDA    $D9     
       BEQ    LF889   
       DEC    $D9     
       LDA    $95     
       BNE    LF8A1   
       LDA    $D9     
       CMP    $92     
       BCC    LF8D4   
       BCS    LF8A9   
LF8A1: LDA    $D9     
       CMP    $D5     
       PHP            
       PLA            
       STA    ENAM1   
LF8A9: LDA    $D1     
       CMP    $D9     
       BCC    LF8C9   
       LDA    ($A5),Y 
       STA    COLUP0  
       LDA    ($A3),Y 
       BEQ    LF8C0   
       INY            
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       BNE    LF88F   
LF8C0: STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       JMP    LF7F8   
LF8C9: LDA    #$00    
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       JMP    LF88F   
LF8D4: LDA    $D1     
       CMP    $D9     
       BCC    LF8E5   
       LDA    ($A5),Y 
       STA    COLUP0  
       LDA    ($A3),Y 
       BEQ    LF8E7   
       INY            
       BNE    LF8E7   
LF8E5: LDA    #$00    
LF8E7: STA    GRP0    
       STA    WSYNC   
       STA    HMOVE   
       JMP    LF90B   
LF8F0: LDA    #$00    
       STA    GRP0    
       DEC    $D9     
LF8F6: LDA    $D9     
       BEQ    LF952   
       CMP    $92     
       BCC    LF95D   
       CMP    $D5     
       PHP            
       PLA            
       STA    ENAM1   
       STA    WSYNC   
       STA    HMOVE   
       JMP    LF8F0   
LF90B: LDA    $D9     
       BEQ    LF952   
       DEC    $D9     
       LDA    $D1     
       CMP    $D9     
       BCC    LF922   
       LDA    ($A5),Y 
       STA    COLUP0  
       LDA    ($A3),Y 
       BEQ    LF924   
       INY            
       BNE    LF924   
LF922: LDA    #$00    
LF924: STA    GRP0    
       LDA    $D9     
       AND    #$01    
       BEQ    LF94B   
       LDA    LFCF8,X 
       STA    COLUP1  
       LDA    $83,X   
       BEQ    LF93E   
       INX            
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP1    
       BNE    LF90B   
LF93E: STA    WSYNC   
       STA    HMOVE   
       STA    GRP1    
       LDA    $FF     
       STA    $95     
       JMP    LF88F   
LF94B: STA    WSYNC   
       STA    HMOVE   
       JMP    LF90B   
LF952: LDA    #$10    
       STA    NUSIZ0  
       LDA    #$00    
       STA    ENAM1   
       JMP    LF97D   
LF95D: LDA    $D9     
       AND    #$01    
       BEQ    LF976   
       LDA    LFCF8,X 
       STA    COLUP1  
       LDA    $83,X   
       BEQ    LF96D   
       INX            
LF96D: STA    WSYNC   
       STA    HMOVE   
       STA    GRP1    
       JMP    LF8F0   
LF976: STA    WSYNC   
       STA    HMOVE   
       JMP    LF8F0   
LF97D: STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       STA    GRP1    
       STA    COLUBK  
       STA    PF0     
       STA    PF1     
       LDA    #$20    
       STA    TIM64T  
       LDX    #$0A    
       LDA    $E9     
       BPL    LF9C3   
       LDA    $E6     
       BMI    LF9B0   
       LDX    #$0A    
       LDY    #$D8    
       JSR    LF6AD   
       LDA    LFC0D   
       STA    $B4     
       LDA    LFC0E   
       STA    $B2     
       LDY    #$07    
       JMP    LF9D1   
LF9B0: LDY    $A7     
LF9B2: LDA    LFC01   
       DEY            
       BPL    LF9BB   
       LDA    LFC0C   
LF9BB: STA    $AE,X   
       DEX            
       DEX            
       BPL    LF9B2   
       BMI    LF9CF   
LF9C3: LDA    LFC00   
       CLC            
LF9C7: STA    $AE,X   
       ADC    #$08    
       DEX            
       DEX            
       BPL    LF9C7   
LF9CF: LDY    #$07    
LF9D1: LDX    #$00    
       STX    COLUBK  
       STA    WSYNC   
       JSR    LFEDD   
LF9DA: LDA    INTIM   
       BNE    LF9DA   
       LDY    #$11    
LF9E1: STA    WSYNC   
       DEY            
       BPL    LF9E1   
       JMP    LF01D   
LF9E9: LDX    #$24    
LF9EB: LDA    LFCD3,X 
       STA    $83,X   
       DEX            
       BPL    LF9EB   
       RTS            

LF9F4: .byte $00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$10,$10,$18,$30
       .byte $18,$1C,$78,$2E,$17,$F4,$0C,$1E,$74,$2F,$F8,$10,$10,$1A,$3F,$5E
       .byte $2F,$1E,$07,$0A,$01,$00,$56,$56,$54,$5C,$56,$56,$5A,$56,$5A,$5A
       .byte $56,$56,$5A,$56,$56,$46,$46,$06,$06,$06,$06,$06,$06,$06,$06,$18
       .byte $3C,$7E,$7E,$DF,$DF,$EF,$F9,$FB,$7E,$7E,$3C,$18,$3C,$1E,$0F,$00
       .byte $18,$3C,$7E,$7E,$FB,$F9,$FF,$E9,$DB,$5E,$7E,$3C,$18,$3C,$1E,$0F
       .byte $00,$08,$0A,$0A,$0A,$0C,$0C,$0C,$0C,$0C,$0C,$0A,$0A,$08,$04,$04
       .byte $04,$60,$70,$78,$E8,$CC,$DE,$7E,$3E,$3F,$1F,$07,$00,$42,$42,$44
       .byte $44,$46,$46,$44,$42,$08,$08,$08,$C2,$C2,$C4,$C6,$C8,$CA,$CA,$CA
       .byte $CA,$C8,$C6,$C4,$84,$84,$86,$88,$8A,$8C,$8C,$8C,$8C,$8A,$88,$86
       .byte $56,$56,$58,$5A,$5C,$5E,$5E,$5E,$5C,$5A,$58,$56,$D4,$D4,$D6,$D8
       .byte $DA,$DC,$DC,$DC,$DC,$DA,$D8,$D6,$81,$66,$7E,$3C,$3C,$7E,$66,$81
       .byte $00,$81,$24,$42,$18,$18,$42,$24,$81,$00,$24,$81,$42,$81,$81,$42
       .byte $81,$24,$00,$00,$00
LFAC9: .byte $00,$00,$00,$04,$04,$04,$02,$02,$02,$03,$03,$03,$05,$05,$05,$01
       .byte $01,$01,$00,$02,$00,$04,$03,$04,$05,$00,$05,$01,$04,$01,$02,$05
       .byte $02,$03,$01,$03,$00,$05,$02,$03,$01,$04,$00,$05,$00,$04,$03,$04
       .byte $00,$FF,$FF,$00,$00,$FF,$FF,$81,$66,$7E,$3C,$3C,$7E,$66,$81,$00
       .byte $81,$24,$42,$18,$18,$42,$24,$81,$00,$24,$81,$42,$81,$81,$42,$81
       .byte $24,$00,$05,$07,$07,$07,$0E,$3E,$5E,$5E,$9E,$1A,$08,$0E,$07,$06
       .byte $00,$44,$44,$44,$48,$48,$48,$48,$48,$48,$48,$48,$48,$48,$44,$44
       .byte $06,$06,$06,$0A,$0E,$0F,$0F,$1C,$3C,$7E,$7E,$7B,$79,$C8,$98,$90
       .byte $90,$56,$3F,$1F,$0E,$00,$00,$00,$41,$55,$77,$0C,$0E,$0E,$0C,$0C
       .byte $5C,$3C,$3C,$3C,$7C,$74,$54,$5C,$28,$28,$1E,$0F,$06,$09,$10,$00
       .byte $41,$55,$77,$0C,$0E,$0E,$0C,$0C,$5C,$3C,$3C,$7E,$7E,$7A,$59,$C8
       .byte $88,$98,$90,$90,$10,$3C,$1F,$0E,$06,$09,$10,$00,$02,$04,$06,$08
       .byte $04,$04,$06,$08,$08,$08,$06,$04,$04,$02,$04,$04,$04,$04,$04,$04
       .byte $08,$08,$08,$28,$38,$38,$38,$38,$7C,$FE,$FE,$3E,$3C,$3C,$3C,$3C
       .byte $3C,$3E,$7E,$76,$64,$26,$60,$7E,$3F,$1E,$00,$2C,$38,$3C,$3C,$38
       .byte $7E,$7F,$FF,$FC,$3C,$3C,$3C,$3C,$3C,$7C,$7E,$6E,$26,$64,$06,$7E
       .byte $3F,$1E,$00,$42,$42,$42,$44,$44,$44,$42,$42,$42,$44,$44,$46,$44
       .byte $44,$42,$42,$44,$42,$42,$42,$06,$06,$06,$06,$06,$06,$FF,$FF,$00
       .byte $00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00
       .byte $00,$FF,$FF,$00,$00,$FF,$FF
LFC00: .byte $0F
LFC01: .byte $97
LFC02: .byte $3F,$47,$4F,$57,$5F,$67,$6F,$77,$7F,$87
LFC0C: .byte $8F
LFC0D: .byte $9F
LFC0E: .byte $A7,$94,$A5,$A1,$C0,$E0,$90,$90,$E0,$8A,$4A,$42,$43,$42,$42,$42
       .byte $E3,$13,$14,$04,$85,$44,$44,$44,$83,$20,$A0,$80,$80,$00,$00,$80
       .byte $00,$78,$85,$B5,$A4,$B5,$85,$78,$00,$88,$54,$44,$88,$44,$54,$88
       .byte $00,$3C,$72,$72,$72,$72,$72,$72,$3C,$18,$18,$18,$18,$18,$18,$18
       .byte $38,$7E,$46,$40,$3C,$0E,$0E,$4E,$3C,$3E,$4E,$0E,$1C,$1C,$0E,$4E
       .byte $3C,$0C,$0C,$7E,$4C,$4C,$4C,$4C,$4C,$7C,$4E,$0E,$0E,$7C,$40,$40
       .byte $7E,$3C,$4E,$4E,$4E,$7C,$40,$42,$3C,$18,$18,$0C,$0C,$06,$06,$46
       .byte $7E,$3C,$4E,$4E,$3C,$3C,$72,$72,$3C,$3C,$42,$02,$3E,$72,$72,$72
       .byte $3C,$00,$00,$00,$00,$00,$00,$00,$00,$78,$04,$7A,$04,$02,$00,$00
       .byte $00,$94,$95,$95,$A5,$C6,$A0,$90,$90,$40,$40,$40,$40,$C0,$00,$00
       .byte $00
LFCAF: .byte $00,$00,$00,$00,$00,$00,$20,$70,$F0,$F0,$F0,$F0
LFCBB: .byte $01,$01,$01,$03,$03,$07,$07,$0F,$0F,$9F,$DF,$FF
LFCC7: .byte $B5,$38,$1F,$20,$DD,$78,$66,$82,$3D,$CE,$2D,$D6
LFCD3: .byte $18,$18,$3E,$5D,$9D,$1C,$34,$28,$25,$12,$24,$48,$7C,$18,$00,$9E
       .byte $40,$00,$00,$01,$03,$01,$02,$00,$00,$00,$00,$00,$00,$3E,$3E,$3E
       .byte $3E,$F7,$3E,$F7,$02
LFCF8: .byte $88,$00,$98,$98,$00,$88,$88,$88,$88,$5A,$56,$5A,$06,$06,$A4,$AA
       .byte $00,$2F,$21,$23,$23,$21,$23,$23,$21,$23,$23,$20,$22,$22,$20,$22
       .byte $22,$24,$22,$22,$22,$24,$24,$21,$23,$25,$22,$24,$26,$22,$24,$26
       .byte $22,$24,$26,$24,$26,$26,$21,$23,$25,$21,$23,$25,$21,$23,$25,$21
       .byte $23,$25,$20,$22,$24,$20,$22,$24,$20,$22,$24,$20,$22,$25,$21,$23
       .byte $22,$61,$00,$11,$A7,$12,$A7,$11,$87,$12,$A7,$11,$A7,$00,$11,$13
       .byte $15,$13,$11,$11,$11,$00
LFD5E: LDY    $F0     
       BMI    LFDB3   
       BNE    LFD95   
       LDA    ($F4),Y 
       BEQ    LFDB1   
       PHA            
       AND    #$0F    
       TAY            
       LDA    LFE00,Y 
       BNE    LFD77   
       STA    AUDV1   
       LDY    $F9     
       BPL    LFD79   
LFD77: STA    AUDF1   
LFD79: STA    $F8     
       LDX    $EA     
       LDA    LF604,X 
       LDY    $F9     
       BPL    LFD86   
       STA    AUDC1   
LFD86: PLA            
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $F6     
       STA    $F7     
       INC    $F4     
       LDY    #$07    
       STY    $F0     
LFD95: DEC    $F7     
       BNE    LFDB3   
       LDA    $F6     
       STA    $F7     
       DEY            
       STY    $F0     
       LDA    $F8     
       BEQ    LFDAC   
       INY            
       INY            
       INY            
       TYA            
       LDY    $F9     
       BPL    LFDAE   
LFDAC: STA    AUDV1   
LFDAE: JMP    LFDB3   
LFDB1: DEC    $F0     
LFDB3: RTS            

LFDB4: SED            
       CMP    #$90    
       LDY    $A9     
       LDX    #$02    
LFDBB: ADC    $A8,X   
       STA    $A8,X   
       LDA    #$00    
       DEX            
       BPL    LFDBB   
       CLD            
       TYA            
       EOR    $A9     
       AND    #$F0    
       BEQ    LFDD5   
       LDY    $A7     
       INY            
       CPY    #$07    
       BCS    LFDD5   
       STY    $A7     
LFDD5: RTS            

LFDD6: CLC            
       LDA    $EF     
       AND    #$0F    
       TAY            
       BEQ    LFDE7   
       LDA    #$00    
LFDE0: ADC    #$03    
       DEY            
       BNE    LFDE0   
       BEQ    LFDE9   
LFDE7: LDA    #$00    
LFDE9: STA    $BA     
       TXA            
       CLC            
       ADC    $BA     
       TAY            
       LDA    LFAC9,Y 
       TAY            
       RTS            

LFDF5: .byte $00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF
LFE00: .byte $1B,$1A,$17,$14,$13,$11,$0F,$0D,$0C,$0B,$20,$20,$20,$12,$1F,$00
       .byte $11,$27,$13,$27,$14,$47,$14,$47,$15,$47,$15,$47,$14,$47,$13,$77
       .byte $12,$67,$11,$67,$00
LFE25: .byte $04,$08,$09,$0F,$01,$03,$07,$60,$40,$20
LFE2F: .byte $90,$80,$80,$01,$01,$01
LFE35: .byte $01,$01,$00,$00
LFE39: .byte $01,$01,$01,$01,$01,$01,$02,$02
LFE41: .byte $03,$03,$02,$02,$01,$01,$00,$00
LFE49: .byte $7C,$88,$94,$A0
LFE4D: .byte $FA,$FA,$FA,$FA
LFE51: .byte $00,$3C,$65,$9C,$51,$33
LFE57: .byte $00,$1B,$65,$B4,$69,$44
LFE5D: .byte $1A,$2A,$71,$85,$CC,$55
LFE63: .byte $FB,$FB,$FB,$FB
LFE67: .byte $FB
LFE68: .byte $FA,$FA,$FA,$FA,$FA
LFE6D: .byte $FA,$FB,$FA,$FB,$FB,$FA
LFE73: .byte $FA,$FB,$FA,$FB,$FB,$FA
LFE79: .byte $FA,$FB,$FA,$FB,$FB,$FA
LFE7F: .byte $11,$12,$16,$14,$11,$16,$14,$14
LFE87: .byte $01,$00,$01,$00,$01,$00,$01,$00
LFE8F: .byte $30,$38,$74,$8E,$E8,$E0,$78,$2C,$14,$12,$09,$F4,$1F,$03,$00
LFE9E: .byte $0C,$1C,$2E,$71,$17,$0F,$1E,$34,$28,$48,$90,$2F,$1F,$06,$00
LFEAD: STA    WSYNC   
       SEC            
LFEB0: SBC    #$0F    
       BCS    LFEB0   
       EOR    #$0F    
       ASL            
       ASL            
       ASL            
       ASL            
       ADC    #$90    
       STA    RESP0,X 
       STA    WSYNC   
       STA    HMP0,X  
       RTS            

LFEC3: STA    WSYNC   
       STA    HMOVE   
       SEC            
LFEC8: SBC    #$0F    
       BCS    LFEC8   
       EOR    #$0F    
       ASL            
       ASL            
       ASL            
       ASL            
       ADC    #$90    
       STA    RESP0,X 
       STA    WSYNC   
       STA    HMOVE   
       STA    HMP0,X  
       RTS            

LFEDD: STX    GRP0    
       STX    GRP1    
       STX    WSYNC   
       LDA    #$3B    
       JSR    LFEAD   
       LDA    #$43    
       INX            
       JSR    LFEAD   
       STX    VDELP0  
       STX    VDELP1  
       LDX    #$03    
       STX    NUSIZ0  
       STX    NUSIZ1  
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$68    
       STA    COLUP0  
       STA    COLUP1  
LFF02: LDA    ($AE),Y 
       STA    $BA     
       STA    WSYNC   
       LDA    ($B8),Y 
       STA    GRP0    
       LDA    ($B6),Y 
       STA    GRP1    
       LDA    ($B4),Y 
       STA    GRP0    
       LDA    ($B2),Y 
       TAX            
       LDA    ($B0),Y 
       STY    $BB     
       LDY    $BA     
       STX    GRP1    
       STA    GRP0    
       STY    GRP1    
       STY    GRP0    
       LDY    $BB     
       DEY            
       BPL    LFF02   
       LDA    #$00    
       STA    VDELP0  
       STA    VDELP1  
       STA    GRP0    
       STA    GRP1    
       RTS            

LFF35: .byte $18,$18,$3E,$5D,$9D,$1C,$34,$28,$25,$12,$24,$48,$36,$0F,$00
LFF44: .byte $18,$38,$5C,$E4,$1C,$1C,$34,$28,$25,$12,$24,$48,$36,$0F,$00
LFF53: .byte $10
LFF54: .byte $FE
LFF55: .byte $65,$65,$65,$65
LFF59: .byte $09,$09,$09,$09
LFF5D: .byte $FF,$FF,$FF,$FF
LFF61: .byte $FD,$FD,$FD,$FD,$23,$41,$23,$41,$23,$25,$15,$13,$11,$13,$42,$24
       .byte $40,$22,$4E,$22,$24,$14,$12,$10,$12,$41,$2F,$D6,$16,$14,$16,$14
       .byte $16,$19,$18,$17,$19,$18,$16,$25,$23,$21,$2F,$23,$21,$2F,$23,$21
       .byte $15,$1D,$16,$15,$14,$13,$22,$10,$15,$24,$22,$10,$15,$24,$22,$10
       .byte $15,$24,$17,$16,$15,$14,$13,$12,$21,$2F,$27,$28,$4F,$00
LFFAF: .byte $18,$18,$7C,$DA,$74,$E2,$79,$2C,$14,$12,$09,$04,$1F,$07,$00
LFFBE: LDY    $F9     
       BMI    LFFE9   
       BNE    LFFE4   
       LDA    ($FA),Y 
       STA    AUDV1   
       BEQ    LFFE4   
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       LDA    LFE25,X 
       STA    AUDC1   
       INY            
       LDA    ($FA),Y 
       STA    AUDF1   
       LSR            
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $F9     
       INC    $FA     
       INC    $FA     
LFFE4: DEC    $F9     
       JMP    LF195   
LFFE9: JMP    LF195   
LFFEC: .byte $00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF
       .byte $00,$F0,$00,$F0
