; Disassembly of roms/Video Cube (CCE).bin
; Disassembled Tue Oct  6 15:24:49 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Video Cube (CCE).bin
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
INPT4   =  $3C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296

       ORG $F000

START:
       SEI            
       CLD            
       LDX    #$FF    
       TXS            
       LDA    #$00    
LF007: STA    WSYNC,X 
       DEX            
       BNE    LF007   
       INX            
       STX    CTRLPF  
       LDA    #$80    
       STA    COLUBK  
       LDA    #$C0    
       STA    $FB     
       JSR    LFC5D   
       LDA    #$FF    
       STA    $F9     
       STA    $DF     
       STA    $E2     
       LDA    #$DE    
       STA    $E0     
       LDA    #$BC    
       STA    $E1     
LF02A: LDA    SWCHB   
       LSR            
       BCC    LF076   
       LSR            
       BCC    LF03F   
       LDA    $FB     
       BPL    LF098   
       LDA    $F8     
       BEQ    LF06E   
       DEC    $F8     
       BPL    LF06E   
LF03F: LDA    $F8     
       BMI    LF049   
       BEQ    LF049   
       DEC    $F8     
       BPL    LF073   
LF049: SED            
       LDA    #$1E    
       STA    $F8     
       JSR    LFC5D   
       LDA    $FB     
       TAY            
       AND    #$1E    
       CMP    #$0C    
       BNE    LF05C   
       LDY    $DB     
LF05C: TYA            
       AND    #$1F    
       CLC            
       ADC    #$01    
       ORA    #$C0    
       STA    $FB     
       CMP    #$D8    
       BNE    LF06E   
       LDA    #$C0    
       STA    $FB     
LF06E: CLD            
       LDA    #$01    
       STA    $9F     
LF073: JMP    LF10B   
LF076: JSR    LFC69   
       LDA    $FB     
LF07B: AND    #$7F    
       ORA    #$60    
       STA    $FB     
       AND    #$1E    
       CMP    #$0C    
       BNE    LF08C   
       LDA    $DB     
       JMP    LF07B   
LF08C: AND    #$04    
       STA    $FA     
       BEQ    LF09D   
       LDA    #$CC    
       STA    $FA     
       BNE    LF0A9   
LF098: CLD            
       BIT    $FB     
       BVC    LF0EC   
LF09D: LDA    $F8     
       BEQ    LF0A5   
       DEC    $F8     
       BPL    LF0EC   
LF0A5: LDA    INPT4   
       BMI    LF0C1   
LF0A9: LDA    $FB     
       AND    #$3F    
       STA    $FB     
       LDY    #$09    
       STY    $E2     
       STY    $9A     
       LDY    #$01    
       STY    $97     
       STY    $DD     
       LDY    #$1E    
       STY    $F8     
       BNE    LF0EC   
LF0C1: LDA    SWCHA   
       EOR    #$FF    
       AND    #$F0    
       BEQ    LF0D8   
       LDX    #$0F    
       STX    $F8     
       AND    #$A0    
       BEQ    LF0D6   
       LDA    #$01    
       BNE    LF0D8   
LF0D6: LDA    #$10    
LF0D8: SED            
       CLC            
       ADC    $9F     
       CMP    #$51    
       BMI    LF0E3   
       SEC            
       SBC    #$50    
LF0E3: STA    $9F     
       CLD            
       LDA    $FB     
       ORA    #$20    
       STA    $FB     
LF0EC: LDA    $FB     
       AND    #$20    
       BEQ    LF10B   
       LDA    #$FD    
       STA    $83     
       LDA    #$F1    
       STA    $82     
       LDA    #$30    
       STA    $DA     
       LDA    $9F     
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $81     
       LDY    #$17    
       JSR    LF846   
LF10B: LDA    $FB     
       AND    #$1E    
       CMP    #$0C    
       BEQ    LF12F   
       LDA    $99     
       BMI    LF11D   
       LDA    #$00    
       STA    $DB     
       BEQ    LF12F   
LF11D: LDA    $95     
       BNE    LF12F   
       INC    $DB     
       BNE    LF12F   
       STA    $DF     
       STA    $E0     
       STA    $E1     
       LDA    #$80    
       STA    $F9     
LF12F: LDA    $95     
       AND    #$03    
       BNE    LF13D   
       INC    $94     
       LDA    $94     
       ORA    #$08    
       STA    $94     
LF13D: LDA    #$FF    
       STA    WSYNC   
LF141: LDY    INTIM   
       BNE    LF141   
       STA    VSYNC   
       STA    VBLANK  
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$2B    
       STA    TIM64T  
       LDY    #$00    
       STY    VSYNC   
       LDX    #$7F    
       STX    VBLANK  
       INC    $95     
       STY    $9C     
       LDY    #$30    
       STY    $9D     
       LDA    #$FF    
       STA    PF1     
       STA    PF2     
       JSR    LFC1D   
       LDA    $F9     
       BPL    LF177   
       JMP    LFC8C   
LF177: BIT    $FB     
       BVS    LF1CE   
       BMI    LF1CE   
       LDA    $FB     
       AND    #$01    
       BEQ    LF1CE   
       LDA    $FB     
       AND    #$0F    
       CMP    #$0D    
       BEQ    LF1CE   
       SED            
       LDA    #$59    
       CMP    $E1     
       BNE    LF19C   
       CMP    $E0     
       BNE    LF19C   
       LDA    #$90    
       CMP    $DF     
       BCC    LF1CD   
LF19C: CLC            
       LDA    $DF     
       ADC    #$01    
       STA    $DF     
       LDA    #$00    
       ADC    $E0     
       CMP    #$60    
       BCC    LF1AD   
       LDA    #$00    
LF1AD: STA    $E0     
       LDA    #$00    
       ADC    $E1     
       CMP    #$60    
       BCC    LF1B9   
       LDA    #$00    
LF1B9: STA    $E1     
       LDA    $DF     
       AND    #$0F    
       BEQ    LF19C   
       CMP    #$03    
       BEQ    LF19C   
       CMP    #$06    
       BEQ    LF19C   
       CMP    #$09    
       BEQ    LF19C   
LF1CD: CLD            
LF1CE: LDY    #$0A    
       LDX    #$02    
       STY    $DE     
LF1D4: LDA    $DF,X   
       LSR            
       LSR            
       LSR            
       LSR            
       JSR    LFB77   
       LDA    $DF,X   
       AND    #$0F    
       CMP    #$0F    
       BNE    LF1E7   
       LDA    #$10    
LF1E7: CMP    #$00    
       JSR    LFB77   
       DEX            
       BPL    LF1D4   
       LDY    #$0E    
       LDA    $FB     
       BPL    LF1FE   
       AND    #$1F    
       SED            
       CLC            
       ADC    #$01    
       CLD            
       BPL    LF200   
LF1FE: LDA    $9F     
LF200: STA    $DA     
       LSR            
       LSR            
       LSR            
       LSR            
       BNE    LF20A   
       LDA    #$0A    
LF20A: JSR    LFB81   
       LDA    $DA     
       AND    #$0F    
       JSR    LFB81   
       LDX    #$FF    
       CPX    $E2     
       BNE    LF24F   
       LDA    $FB     
       AND    #$1E    
       CMP    #$0C    
       BEQ    LF24F   
       LDA    $95     
       AND    #$01    
       BNE    LF24F   
       INX            
       LDY    #$00    
       LDA    $93     
       BEQ    LF23A   
       AND    #$0F    
       ASL            
       ADC    #$05    
       LDX    #$0C    
       LDY    #$0F    
       BPL    LF249   
LF23A: LDA    $F4     
       CLC            
       ADC    $F3     
       AND    #$01    
       BEQ    LF249   
       LDA    #$1F    
       LDY    #$0F    
       LDX    #$0E    
LF249: STY    AUDV0   
       STX    AUDC0   
       STA    AUDF0   
LF24F: LDY    $E2     
       CPY    #$FF    
       BEQ    LF2AE   
       LDA    $FB     
       AND    #$1E    
       CMP    #$0C    
       BEQ    LF2AE   
       LDA    #$04    
       STA    AUDC0   
       STA    AUDC1   
       LDA    #$0F    
       STA    AUDV0   
       STA    AUDV1   
       DEC    $97     
       BNE    LF292   
       INY            
       STY    $E2     
       LDA    LFD12,Y 
       CMP    #$FF    
       BNE    LF281   
       STA    $E2     
       LDA    #$00    
       STA    AUDV0   
       STA    AUDV1   
       BEQ    LF2AE   
LF281: LSR            
       LSR            
       AND    #$38    
       BNE    LF289   
       LDA    #$40    
LF289: STA    $97     
       LDA    LFD12,Y 
       AND    #$1F    
       STA    AUDF0   
LF292: DEC    $DD     
       BNE    LF2AE   
       INC    $9A     
       LDY    $9A     
       LDA    LFD29,Y 
       LSR            
       LSR            
       AND    #$38    
       BNE    LF2A5   
       LDA    #$40    
LF2A5: STA    $DD     
       LDA    LFD29,Y 
       AND    #$1F    
       STA    AUDF1   
LF2AE: LDA    $FB     
       AND    #$02    
       BEQ    LF2C7   
       LDA    $93     
       BNE    LF2C7   
       LDA    $F9     
       BMI    LF2C7   
       LDA    #$00    
       LDX    #$11    
LF2C0: STA    $81,X   
       DEX            
       BPL    LF2C0   
       BMI    LF309   
LF2C7: LDA    $93     
       AND    #$0F    
       JSR    LF860   
       STA    $98     
       LDA    $D9     
       JSR    LF867   
       ADC    #$A0    
       STA    $D6     
       LDA    #$81    
       STA    $F5     
       LDA    $96     
       AND    #$0F    
       STA    $DC     
       JSR    LF86F   
       LDA    $98     
       BEQ    LF309   
       LDA    #$24    
       SEC            
       SBC    $98     
       STA    $98     
       LDA    $D8     
       JSR    LF867   
       ADC    #$A0    
       STA    $D6     
       LDA    #$8A    
       STA    $F5     
       LDA    $96     
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $DC     
       JSR    LF86F   
LF309: LDA    #$FD    
       STA    $F6     
       LDA    $99     
       AND    #$01    
       BEQ    LF324   
       LDX    #$41    
       STX    $9B     
       LDA    $93     
       BEQ    LF334   
       CLC            
       SBC    #$06    
       EOR    #$FF    
       ASL            
       TAX            
       BPL    LF336   
LF324: LDX    #$8F    
       LDA    $93     
       BNE    LF32C   
       LDA    $F3     
LF32C: AND    #$01    
       BEQ    LF332   
       LDX    #$C0    
LF332: STX    $9B     
LF334: LDX    $F4     
LF336: LDA    LFCF3,X 
       STA    $F5     
       LDA    $93     
       BEQ    LF367   
       TAX            
       LDA    $99     
       AND    #$01    
       BEQ    LF35B   
       LDA    LFD00,X 
       STA    $80     
       LDA    LFD06,X 
       STA    $9D     
       LDA    LFD0C,X 
       STA    $9E     
       LDA    #$0B    
       STA    $9C     
       BPL    LF367   
LF35B: CPX    #$01    
       BEQ    LF363   
       CPX    #$05    
       BNE    LF367   
LF363: LDY    #$0F    
       STY    PF1     
LF367: LDA    INTIM   
       BNE    LF367   
       STA    WSYNC   
       STA    VBLANK  
       LDX    $80     
       STX    $DA     
       LDA    $93     
       BEQ    LF37E   
       LDA    $99     
       AND    #$01    
       BNE    LF387   
LF37E: TXA            
       SEC            
       SBC    #$16    
       STA    $80     
       JSR    LF99A   
LF387: LDX    $93     
       BEQ    LF39B   
       LDA    $99     
       AND    #$01    
       BNE    LF39B   
       TXA            
       CLC            
       SBC    #$06    
       EOR    #$FF    
       ASL            
       TAX            
       BPL    LF39D   
LF39B: LDX    $F3     
LF39D: STA    WSYNC   
       LDY    LFE14,X 
LF3A2: DEY            
       BNE    LF3A2   
       STA    RESP0   
       LDY    LFCE6,X 
       STY    HMP0    
       LDY    #$05    
       STY    NUSIZ0  
       LDY    $F7     
       LDA    LFEE6,Y 
       STA    COLUP0  
       LDY    #$08    
       LDA    $99     
       AND    #$7F    
       BEQ    LF3CB   
       AND    #$01    
       BEQ    LF3CD   
       LDA    $93     
       ADC    $F4     
       AND    #$01    
       BEQ    LF3CD   
LF3CB: STY    REFP0   
LF3CD: LDA    $93     
       TAX            
       BEQ    LF3D8   
       LDA    $99     
       AND    #$01    
       BNE    LF3FE   
LF3D8: LDA    #$80    
       STA    COLUP1  
       STY    GRP1    
       STA    WSYNC   
       LDY    LFCDA,X 
LF3E3: DEY            
       BNE    LF3E3   
       STA    RESP1   
       STY    NUSIZ1  
       LDY    LFCE0,X 
       STY    RESM1   
       STY    HMP1    
       CPX    #$00    
       BNE    LF3FE   
       LDY    #$02    
       STY    ENAM1   
       LDY    LFE25   
       STY    HMM1    
LF3FE: STA    WSYNC   
       STA    HMOVE   
LF402: STA    WSYNC   
       DEC    $80     
       BNE    LF402   
       LDA    $9D     
       STA    $80     
       LDX    #$00    
       LDY    $93     
       BEQ    LF41A   
       LDA    $99     
       AND    #$01    
       BEQ    LF48E   
       BNE    LF41E   
LF41A: LDA    #$02    
       STA    $9C     
LF41E: LDY    $F5     
       LDA    $9B     
       STY    $9B     
       STA    $F5     
LF426: STA    WSYNC   
       DEC    $9B     
       BMI    LF440   
       LDY    $9B     
       CPY    #$7F    
       BEQ    LF439   
       LDA    ($F5),Y 
       STA    GRP0    
       JMP    LF448   
LF439: LDY    #$30    
       STY    $9B     
       NOP            
       BNE    LF448   
LF440: NOP            
       PHA            
       PLA            
       NOP            
       LDA    $81     
       LDA    $81     
LF448: NOP            
       LDA    $81     
       LDA    $81     
       STA    COLUPF  
       STA    COLUPF  
       LDA    $84     
       STA    COLUPF  
       STA    COLUPF  
       LDA    $87     
       STA    COLUPF  
       NOP            
       NOP            
       LDA    #$80    
       STA    COLUPF  
       DEC    $80     
       BNE    LF426   
       CPX    $9C     
       BNE    LF46C   
       JMP    LF624   
LF46C: INX            
       CPX    #$03    
       BNE    LF479   
       LDX    #$09    
       LDA    $9E     
       STA    $9D     
       STA    WSYNC   
LF479: LDA    $81,X   
       STA    $81     
       LDA    $84,X   
       STA    $84     
       LDA    $87,X   
       STA    $87     
       LDA    $9D     
       STA    $80     
       STA    WSYNC   
       JMP    LF426   
LF48E: DEY            
       BEQ    LF493   
       BNE    LF4D6   
LF493: LDA    $F4     
LF495: BNE    LF49E   
       LDA    $9B     
       STA    $F5     
       JMP    LF4A2   
LF49E: LDA    #$5E    
       STA    $F5     
LF4A2: STA    WSYNC   
       DEC    $80     
       BMI    LF4D1   
       LDY    $80     
       LDA    ($F5),Y 
       STA    GRP0    
       LDY    $90     
       LDY    $90     
       LDX    $8D     
       LDA    $81     
       STA    COLUPF  
       NOP            
       LDA    $84     
       STA    COLUPF  
       NOP            
       LDA    $87     
       STA    COLUPF  
       NOP            
       LDA    $8A     
       STA    COLUPF  
       STX    COLUPF  
       STY    COLUPF  
       LDX    #$80    
       STX    COLUPF  
       BNE    LF4A2   
LF4D1: JSR    LF5F4   
       BCS    LF495   
LF4D6: DEY            
       BNE    LF521   
       LDA    $F4     
LF4DB: BNE    LF4E4   
       LDA    $9B     
       STA    $F5     
       JMP    LF4E8   
LF4E4: LDA    #$5E    
       STA    $F5     
LF4E8: STA    WSYNC   
LF4EA: DEC    $80     
       BMI    LF519   
       LDA    ($F5),Y 
       STA    GRP0    
       LDX    $8D     
       TXS            
       LDX    #$00    
       LDY    $90,X   
       LDA    $81     
       STA    COLUPF  
       LDA    $84,X   
       STA    COLUPF  
       LDA    $87,X   
       STA    COLUPF  
       LDA    $8A,X   
       STA    COLUPF  
       TSX            
       STX    COLUPF  
       NOP            
       STY    COLUPF  
       LDX    #$80    
       STX    COLUPF  
       LDY    $80     
       NOP            
       JMP    LF4EA   
LF519: LDX    #$FF    
       TXS            
       JSR    LF5F4   
       BCS    LF4DB   
LF521: DEY            
       BNE    LF567   
       LDA    $F4     
LF526: BNE    LF52F   
       LDA    $9B     
       STA    $F5     
       JMP    LF533   
LF52F: LDA    #$5E    
       STA    $F5     
LF533: STA    WSYNC   
       DEC    $80     
       BMI    LF562   
       LDY    $80     
       LDA    ($F5),Y 
       STA    GRP0    
       LDX    #$80    
       NOP            
       NOP            
       NOP            
       LDA    $81     
       STA    COLUPF  
       LDA    $84     
       STA    COLUPF  
       LDA    $87     
       STA    COLUPF  
       LDA    $8A     
       STA    COLUPF  
       LDA    $8D     
       STA    COLUPF  
       LDA    $90     
       STA    COLUPF  
       LDA    $D7     
       STX    COLUPF  
       BEQ    LF533   
LF562: JSR    LF5F4   
       BCS    LF526   
LF567: DEY            
       BEQ    LF56C   
       BNE    LF5B1   
LF56C: LDA    $F4     
LF56E: BNE    LF578   
       LDA    $9B     
       LDY    $80     
       STA    $F5     
       BPL    LF57C   
LF578: LDA    #$5E    
       STA    $F5     
LF57C: STA    WSYNC   
       DEC    $80     
       BMI    LF5A9   
       LDA    ($F5),Y 
       STA    GRP0    
       LDX    $84     
       TXS            
       LDX    $81     
       LDY    $87     
       LDA    $8A     
       STX    COLUPF  
       TSX            
       STX    COLUPF  
       LDX    #$80    
       STY    COLUPF  
       NOP            
       STA    COLUPF  
       LDA    PF0,X   
       STA    COLUPF  
       LDA    RESP0,X 
       STA    COLUPF  
       LDY    VSYNC,X 
       STX    COLUPF  
       BPL    LF57C   
LF5A9: LDX    #$FF    
       TXS            
       JSR    LF5F4   
       BCS    LF56E   
LF5B1: LDA    $F4     
LF5B3: BNE    LF5BC   
       LDA    $9B     
       STA    $F5     
       JMP    LF5C0   
LF5BC: LDA    #$5E    
       STA    $F5     
LF5C0: STA    WSYNC   
       NOP            
       LDY    $80     
       LDA    ($F5),Y 
       STA    GRP0    
       DEC    $80     
       LDA    $81     
       STA    COLUPF  
       LDA    $84     
       LDX    $87     
       LDY    $8A     
       STA    COLUPF  
       STX    COLUPF  
       STY    COLUPF  
       LDA    $8D     
       NOP            
       STA    COLUPF  
       LDA    $90     
       NOP            
       STA    COLUPF  
       LDA    #$80    
       NOP            
       STA    $0108   
       LDA    $80     
       BNE    LF5C0   
       JSR    LF5F4   
       BCS    LF5B3   
LF5F4: LDY    $9C     
       CPY    #$02    
       BEQ    LF624   
       INY            
       STY    $9C     
       LDX    $81,Y   
       STX    $81     
       LDX    $84,Y   
       STX    $84     
       LDX    $87,Y   
       STX    $87     
       LDX    $8A,Y   
       STX    $8A     
       LDX    $8D,Y   
       STX    $8D     
       LDX    $90,Y   
       STX    $90     
       LDX    #$30    
       STX    $80     
       TYA            
       ASL            
       STA    $F5     
       ASL            
       ADC    $F5     
       CMP    $F4     
       SEC            
       RTS            

LF624: LDA    #$00    
       STA    ENAM1   
       STA    GRP1    
       STA    PF1     
       STA    PF2     
       STA    WSYNC   
       LDX    #$FF    
       TXS            
       LDA    #$17    
       STA    $80     
       LDX    $93     
       BEQ    LF641   
       LDA    $99     
       AND    #$01    
       BNE    LF64B   
LF641: JSR    LFA10   
       JSR    LFAEE   
       LDA    #$03    
       STA    $DA     
LF64B: STA    WSYNC   
       DEC    $DA     
       BNE    LF64B   
       LDA    #$1B    
       STA    WSYNC   
       STA    TIM64T  
       LDA    $FB     
       AND    #$C0    
       BNE    LF676   
       LDA    $95     
       AND    #$01    
       BNE    LF676   
       LDA    $FB     
       CMP    #$10    
       BPL    LF670   
       LDA    $95     
       AND    #$03    
       BNE    LF676   
LF670: LDA    $F8     
       BPL    LF679   
       INC    $F8     
LF676: JMP    LF826   
LF679: BEQ    LF67D   
       DEC    $F8     
LF67D: JSR    LF934   
       LDA    $99     
       BMI    LF6D8   
       LDX    $93     
       BEQ    LF6B1   
       AND    #$02    
       BNE    LF69A   
       DEX            
       STX    $93     
       BNE    LF676   
       LDA    $99     
       ORA    #$80    
       STA    $99     
       JMP    LF826   
LF69A: INX            
       STX    $93     
       CPX    #$06    
       BNE    LF676   
       LDX    #$00    
       STX    $93     
       LDA    $99     
       ORA    #$80    
       STA    $99     
       JSR    LF7DF   
       JMP    LF826   
LF6B1: CMP    #$02    
       BCC    LF6BF   
       AND    #$01    
       TAX            
       LDY    $F3,X   
       INY            
       STY    $F3,X   
       BPL    LF6C5   
LF6BF: TAX            
       LDY    $F3,X   
       DEY            
       STY    $F3,X   
LF6C5: BEQ    LF6CF   
       CPY    #$06    
       BEQ    LF6CF   
       CPY    #$0C    
       BNE    LF676   
LF6CF: LDA    $99     
       ORA    #$80    
       STA    $99     
       JMP    LF826   
LF6D8: LDA    $FB     
       AND    #$20    
       BNE    LF701   
       LDX    $FA     
       BEQ    LF701   
       DEX            
       STX    $FA     
       TXA            
       LSR            
       TAX            
       LDA    LFF0A,X 
       BCC    LF6F1   
       LSR            
       LSR            
       LSR            
       LSR            
LF6F1: AND    #$0F    
       STA    $DA     
       JSR    LFB97   
       LDA    $DA     
       CMP    #$04    
       BNE    LF72E   
       JMP    LF81D   
LF701: LDA    $F9     
       BMI    LF755   
       LDA    $FB     
       AND    #$08    
       TAX            
       LDA    SWCHA   
       EOR    #$FF    
       CPX    #$00    
       BEQ    LF715   
       AND    #$9F    
LF715: LSR            
       LSR            
       LSR            
       LSR            
       BNE    LF71E   
       JMP    LF7FA   
LF71E: TAX            
       AND    #$0C    
       BEQ    LF728   
       LSR            
       LSR            
       EOR    #$01    
       TAX            
LF728: JSR    LFB97   
       LDA    LFE21,X 
LF72E: STA    $99     
       CMP    #$02    
       BCC    LF76A   
       AND    #$01    
       TAX            
       LDA    $F3,X   
       CMP    #$0C    
       BEQ    LF7BA   
       CLC            
       ADC    #$06    
       STA    $F3,X   
       JSR    LF829   
       CPY    $F7     
       BEQ    LF758   
       LDA    $99     
       AND    #$01    
       TAX            
       LDA    $F3,X   
       SEC            
       SBC    #$05    
       STA    $F3,X   
LF755: JMP    LF826   
LF758: LDA    $99     
       AND    #$01    
       TAX            
       LDA    $F3,X   
       SEC            
       SBC    #$06    
       STA    $F3,X   
       JSR    LF911   
       JMP    LF826   
LF76A: TAX            
       LDA    $F3,X   
       BEQ    LF796   
       SEC            
       SBC    #$06    
       STA    $F3,X   
       JSR    LF829   
       CPY    $F7     
       BEQ    LF787   
       CLC            
       LDX    $99     
       LDA    $F3,X   
       ADC    #$05    
       STA    $F3,X   
       JMP    LF826   
LF787: LDX    $99     
       LDA    $F3,X   
       CLC            
       ADC    #$06    
       STA    $F3,X   
       JSR    LF911   
       JMP    LF826   
LF796: LDY    #$05    
       STY    $93     
       LDY    #$0C    
       STY    $F3,X   
       JSR    LF944   
       JSR    LF7DF   
       JSR    LF829   
       CPY    $F7     
       BNE    LF826   
       LDX    $99     
       LDY    #$00    
       STY    $F3,X   
       JSR    LF7DF   
       JSR    LF911   
       JMP    LF826   
LF7BA: INC    $93     
       LDY    #$00    
       STY    $F3,X   
       JSR    LF944   
       JSR    LF7DF   
       JSR    LF829   
       JSR    LF7DF   
       CPY    $F7     
       BNE    LF826   
       LDA    $99     
       AND    #$01    
       TAX            
       LDY    #$0C    
       STY    $F3,X   
       JSR    LF911   
       JMP    LF826   
LF7DF: LDA    $D8     
       LDX    $D9     
       STA    $D9     
       STX    $D8     
       LDA    $96     
       ASL            
       ROL    $96     
       ASL            
       ROL    $96     
       ASL            
       ROL    $96     
       ASL            
       ROL    $96     
       ORA    $96     
       STA    $96     
       RTS            

LF7FA: LDA    $F8     
       BNE    LF826   
       LDA    INPT4   
       AND    #$80    
       BNE    LF826   
       JSR    LFB97   
       LDA    $E2     
       CMP    #$FF    
       BNE    LF819   
       LDA    #$0C    
       STA    AUDV0   
       LDA    #$0D    
       STA    AUDC0   
       LDA    #$10    
       STA    AUDF0   
LF819: LDA    #$05    
       STA    $F8     
LF81D: JSR    LF829   
       LDA    $F7     
       STA    $A0,X   
       STY    $F7     
LF826: JMP    LF02A   
LF829: LDA    $F3     
       JSR    LF98D   
       ADC    #$04    
       TAX            
       LDA    $F4     
       JSR    LF98D   
       TAY            
       LDA    $D9     
       JSR    LF867   
       ADC    LFCC6,X 
       ADC    LFCC6,Y 
       TAX            
       LDY    $A0,X   
       RTS            

LF846: LDA    ($82),Y 
       TAX            
       TYA            
       CLC            
       ADC    $81     
       DEC    $DA     
       BMI    LF853   
       LSR            
       LSR            
LF853: CMP    #$06    
       BMI    LF85A   
       SEC            
       SBC    #$06    
LF85A: STA    $A0,X   
       DEY            
       BPL    LF846   
       RTS            

LF860: ASL            
       STA    $DA     
       ASL            
       ADC    $DA     
       RTS            

LF867: STA    $DA     
       ASL            
       ASL            
       ASL            
       ADC    $DA     
       RTS            

LF86F: LDA    #$00    
       STA    $F6     
       LDA    $DC     
       CMP    #$03    
       BEQ    LF8CB   
       CMP    #$02    
       BEQ    LF8AD   
       CMP    #$01    
       BNE    LF8FE   
       LDY    #$00    
       INC    $D6     
       INC    $D6     
LF887: LDA    ($D6),Y 
       CLC            
       ADC    $98     
       TAX            
       LDA    LFEE6,X 
       STA    ($F5),Y 
       INY            
       INC    $D6     
       INC    $D6     
       CPY    #$03    
       BEQ    LF8A4   
       CPY    #$06    
       BEQ    LF8A4   
       CPY    #$09    
       BNE    LF887   
       RTS            

LF8A4: LDA    $D6     
       SEC            
       SBC    #$0A    
       STA    $D6     
       BNE    LF887   
LF8AD: LDY    #$00    
       LDA    #$08    
       CLC            
       ADC    $D6     
       STA    $D6     
LF8B6: LDA    ($D6),Y 
       CLC            
       ADC    $98     
       TAX            
       LDA    LFEE6,X 
       STA    ($F5),Y 
       INY            
       DEC    $D6     
       DEC    $D6     
       CPY    #$09    
       BNE    LF8B6   
       RTS            

LF8CB: LDY    #$00    
       LDA    #$06    
       CLC            
       ADC    $D6     
       STA    $D6     
LF8D4: LDA    ($D6),Y 
       CLC            
       ADC    $98     
       TAX            
       LDA    LFEE6,X 
       STA    ($F5),Y 
       INY            
       DEC    $D6     
       DEC    $D6     
       DEC    $D6     
       DEC    $D6     
       CPY    #$03    
       BEQ    LF8F5   
       CPY    #$06    
       BEQ    LF8F5   
       CPY    #$09    
       BNE    LF8D4   
       RTS            

LF8F5: LDA    $D6     
       CLC            
       ADC    #$0A    
       STA    $D6     
       BCC    LF8D4   
LF8FE: LDY    #$00    
LF900: LDA    ($D6),Y 
       CLC            
       ADC    $98     
       TAX            
       LDA    LFEE6,X 
       STA    ($F5),Y 
       INY            
       CPY    #$09    
       BNE    LF900   
       RTS            

LF911: LDX    #$00    
       STX    $93     
       LDA    $99     
       ORA    #$80    
       STA    $99     
       LDX    #$FD    
       STX    $F8     
       LDX    $E2     
       CPX    #$FF    
       BNE    LF943   
       LDX    #$07    
       LDY    #$0C    
       LDA    #$0A    
       BIT    SWCHB   
       BVS    LF93D   
       LDX    #$0D    
       BNE    LF93D   
LF934: LDX    #$FF    
       CPX    $E2     
       BNE    LF943   
       INX            
       TXA            
       TAY            
LF93D: STX    AUDC1   
       STY    AUDV1   
       STA    AUDF1   
LF943: RTS            

LF944: LDA    $99     
       SEC            
       SBC    $96     
       AND    #$03    
       STA    $DA     
       LDA    $D9     
       ASL            
       ASL            
       ADC    $DA     
       TAY            
       LDA    LFE26,Y 
       STA    $D8     
       LDA    $DA     
       ADC    #$02    
       LDX    #$00    
LF95F: AND    #$03    
       STA    $DA     
       LDA    $D8     
       ASL            
       ASL            
       ADC    $DA     
       TAY            
       LDA    LFE26,Y 
       CMP    $D9     
       BEQ    LF978   
       DEX            
       INC    $DA     
       LDA    $DA     
       BPL    LF95F   
LF978: TXA            
       CLC            
       ADC    $96     
       AND    #$03    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    $DA     
       LDA    $96     
       AND    #$0F    
       ORA    $DA     
       STA    $96     
       RTS            

LF98D: LSR            
       LSR            
       STA    $DA     
       LDA    $96     
       AND    #$0F    
       ASL            
       ASL            
       ADC    $DA     
       RTS            

LF99A: LDX    #$00    
       LDA    #$80    
       STA    COLUP0  
       STA    COLUP1  
       STX    REFP0   
       STX    HMP1    
       INX            
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDY    #$0F    
       STX    VDELP0  
       STX    VDELP1  
       STY    $DA     
       STY    WSYNC   
       LDY    #$06    
LF9B9: DEY            
       BPL    LF9B9   
       STA    RESP0   
       STA    RESP1   
       LDA    #$F0    
       STA    HMP0    
       STA    WSYNC   
       STA    HMOVE   
       LDA    $94     
       STA    COLUP0  
       STA    COLUP1  
LF9CE: LDY    $DA     
       LDA    LFF70,Y 
       STA    $011B   
       STA    WSYNC   
       LDA    LFF80,Y 
       STA    $011C   
       LDA    LFF90,Y 
       STA    $011B   
       LDA    LFFA0,Y 
       STA    $01DE   
       LDA    LFFB0,Y 
       TAX            
       LDA    LFFC0,Y 
       NOP            
       TAY            
       LDA    $DE     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       DEC    $DA     
       BPL    LF9CE   
       LDA    #$00    
       STA    VDELP0  
       STA    VDELP1  
       STA    GRP0    
       STA    GRP1    
       STA    HMP0    
       STA    WSYNC   
       RTS            

LFA10: LDA    $FB     
       AND    #$01    
       BNE    LFA7E   
       LDA    #$80    
       LDX    #$00    
       STA    COLUP0  
       STA    COLUP1  
       STX    REFP0   
       STX    HMP1    
       INX            
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDY    #$06    
       STX    VDELP0  
       STX    VDELP1  
       STY    $DA     
       STY    WSYNC   
LFA33: DEY            
       BPL    LFA33   
       NOP            
       STA    RESP0   
       STA    RESP1   
       LDA    #$F0    
       STA    HMP0    
       STA    WSYNC   
       STA    HMOVE   
       LDX    $94     
       STX    COLUP0  
       STX    COLUP1  
LFA49: LDY    $DA     
       LDA    ($ED),Y 
       STA    GRP0    
       STA    WSYNC   
       LDA    ($EB),Y 
       STA    GRP1    
       LDA    ($E9),Y 
       STA    GRP0    
       LDA    ($E7),Y 
       STA    $DE     
       LDA    ($E5),Y 
       TAX            
       LDA    ($E3),Y 
       TAY            
       LDA    $DE     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       DEC    $DA     
       BPL    LFA49   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    GRP0    
       STA    HMP0    
       STA    WSYNC   
       RTS            

LFA7E: LDX    #$00    
       STX    GRP0    
       STX    GRP1    
       STX    GRP0    
       STX    REFP0   
       STX    HMP1    
       INX            
       STX    VDELP0  
       STX    VDELP1  
       LDX    #$06    
       STX    NUSIZ0  
       STX    NUSIZ1  
       DEX            
       STX    WSYNC   
LFA98: DEX            
       BPL    LFA98   
       NOP            
       STA    RESP0   
       STA    $0111   
       LDA    #$F0    
       STA    HMP0    
       STA    WSYNC   
       STA    HMOVE   
       LDX    $94     
       STX    COLUP0  
       STX    COLUP1  
       STX    COLUPF  
       LDY    #$06    
LFAB3: LDA    ($ED),Y 
       STA    WSYNC   
       STA    GRP0    
       LDA    ($EB),Y 
       STA    GRP1    
       LDA    ($E9),Y 
       STA    GRP0    
       LDA    LFFD0,Y 
       STA    PF2     
       LDA    ($E7),Y 
       LDX    LFFD7,Y 
       STA    $011C   
       LDA    ($E5),Y 
       STA    GRP0    
       STX    PF2     
       LDA    #$00    
       STA    GRP1    
       STA    GRP0    
       DEY            
       BPL    LFAB3   
       LDA    #$80    
       STA    COLUPF  
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    GRP0    
       STA    HMP0    
       STA    WSYNC   
       RTS            

LFAEE: LDA    $FB     
       AND    #$0E    
       CMP    #$0C    
       BNE    LFAFA   
       LDA    #$80    
       BNE    LFAFC   
LFAFA: LDA    #$EA    
LFAFC: STA    $DE     
       LDA    $FB     
       BPL    LFB0E   
       LDA    #$B5    
       STA    $ED     
       LDA    #$BC    
       STA    $EB     
       LDA    #$C3    
       BNE    LFB18   
LFB0E: LDA    #$D1    
       STA    $ED     
       LDA    #$D8    
       STA    $EB     
       LDA    #$DF    
LFB18: STA    $E9     
       LDA    #$CA    
       STA    $E7     
       LDX    #$03    
       STX    NUSIZ0  
       STX    NUSIZ1  
       LDY    #$06    
       STY    $DA     
       STY    WSYNC   
LFB2A: DEY            
       BPL    LFB2A   
       NOP            
       STA    RESP0   
       STA    RESP1   
       LDA    #$F0    
       STA    HMP0    
       STA    WSYNC   
       STA    HMOVE   
       LDX    $DE     
       STX    COLUP0  
       STX    COLUP1  
LFB40: LDY    $DA     
       LDA    ($ED),Y 
       STA    GRP0    
       STA    WSYNC   
       LDA    ($EB),Y 
       STA    GRP1    
       LDA    ($E9),Y 
       STA    GRP0    
       LDA    ($E7),Y 
       STA    $DE     
       LDA    ($F1),Y 
       TAX            
       LDA    ($EF),Y 
       TAY            
       LDA    $DE     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       DEC    $DA     
       BPL    LFB40   
       LDA    #$00    
       STA    VDELP0  
       STA    VDELP1  
       STA    GRP0    
       STA    GRP1    
       STA    HMP0    
       STA    WSYNC   
       RTS            

LFB77: BNE    LFB81   
       LDA    #$0A    
       CMP    $DE     
       BEQ    LFB81   
       LDA    #$00    
LFB81: STA    $DE     
       ASL            
       ASL            
       ASL            
       SEC            
       SBC    $DE     
       CLC            
       ADC    #$3E    
       STA.wy $00E3,Y 
       LDA    #$FE    
       STA.wy $00E4,Y 
       DEY            
       DEY            
       RTS            

LFB97: LDA    $FB     
       AND    #$01    
       BNE    LFBBA   
       LDA    $FB     
       AND    #$0F    
       CMP    #$0C    
       BEQ    LFBBA   
       SED            
       CLC            
       LDA    $DF     
       ADC    #$01    
       STA    $DF     
       LDA    #$00    
       ADC    $E0     
       STA    $E0     
       LDA    #$00    
       ADC    $E1     
       STA    $E1     
       CLD            
LFBBA: RTS            

LFBBB: LDA    $F9     
       BMI    LFC1C   
       LDX    $93     
       BNE    LFC1C   
       STA    $DA     
       LDA    #$80    
       STA    $F9     
LFBC9: LDY    #$09    
       LDA    $A0,X   
LFBCD: INX            
       DEY            
       BEQ    LFBE6   
       CMP    $A0,X   
       BEQ    LFBCD   
       LDA    #$00    
       STA    $F9     
       LSR    $DA     
       ROR    $DE     
       TXA            
       STY    $DC     
       CLC            
       ADC    $DC     
       TAX            
       BPL    LFBF8   
LFBE6: LSR    $DA     
       BCS    LFBF6   
       INY            
       STY    $97     
       STY    $DD     
       LDA    #$12    
       STA    $E2     
       STA    $9A     
       SEC            
LFBF6: ROR    $DE     
LFBF8: CPX    #$36    
       BNE    LFBC9   
       LDA    $DE     
       LSR            
       LSR            
       ORA    $F9     
       STA    $F9     
       BPL    LFC1C   
       LDA    $FB     
       AND    #$04    
       BNE    LFC10   
       LDA    #$FF    
       STA    $F9     
LFC10: LDA    #$01    
       STA    $97     
       STA    $DD     
       LDA    #$00    
       STA    $E2     
       STA    $9A     
LFC1C: RTS            

LFC1D: LDA    $FB     
       AND    #$20    
       BEQ    LFBBB   
       LDA    #$DE    
       STA    $82     
       LDA    #$FF    
       STA    $83     
       LDA    $9F     
       AND    #$0C    
       LSR            
       LSR            
       STA    $81     
       LDY    #$17    
       JSR    LF846   
       LDA    #$F6    
       STA    $82     
       LDA    #$FF    
       STA    $83     
       LDA    $9F     
       AND    #$03    
       STA    $81     
       LDY    #$05    
       JSR    LF846   
       LDA    $FB     
       AND    #$5F    
       STA    $FB     
       LDY    $A4     
       INY            
       CPY    #$06    
       BNE    LFC5A   
       LDY    #$00    
LFC5A: STY    $F7     
       RTS            

LFC5D: LDX    #$06    
LFC5F: DEX            
       BMI    LFC69   
       TXA            
       STA    $A0,X   
       STA    $A5,X   
       BPL    LFC5F   
LFC69: LDA    #$00    
       STA    $DF     
       STA    $E0     
       STA    $E1     
       STA    $F9     
LFC73: LDA    #$0F    
       STA    $F8     
       LDA    #$00    
       STA    $96     
       STA    $D9     
       STA    $93     
       STA    $F9     
       LDA    #$06    
       STA    $F4     
       STA    $F3     
       LDA    #$82    
       STA    $99     
       RTS            

LFC8C: LDA    $95     
       AND    #$07    
       BNE    LFCC3   
       LDA    $F9     
       BPL    LFCC3   
       DEC    $F9     
       BMI    LFCC3   
       JSR    LFC73   
       LDA    $FB     
       CMP    #$0C    
       BEQ    LFCA9   
       CMP    #$0D    
       BEQ    LFCA9   
       STA    $DB     
LFCA9: AND    #$01    
       ORA    #$2C    
       STA    $FB     
       LDA    #$01    
       STA    $9F     
       LDA    #$CC    
       STA    $FA     
       LDY    #$09    
       STY    $E2     
       STY    $9A     
       LDY    #$01    
       STY    $97     
       STY    $DD     
LFCC3: JMP    LF1CE   
LFCC6: .byte $00,$01,$0F,$02,$00,$03,$0F,$06,$02,$01,$0F,$00,$06,$03,$0F,$00
       .byte $00,$01,$0F,$02
LFCDA: .byte $07,$09,$09,$08,$08,$07
LFCE0: .byte $E0,$80,$40,$F0,$60,$60
LFCE6: .byte $00,$B0,$50,$10,$C0,$70,$30,$E0,$90,$40,$00,$B0,$50
LFCF3: .byte $80,$88,$90,$98,$A0,$A8,$B0,$B8,$C0,$C8,$D0,$D8,$E0
LFD00: .byte $17,$08,$02,$02,$02,$08
LFD06: .byte $18,$29,$24,$1E,$18,$0F
LFD0C: .byte $18,$0F,$18,$1E,$24,$29
LFD12: .byte $FF,$7F,$3B,$58,$5F,$54,$32,$30,$8F,$FF,$6F,$30,$52,$54,$78,$34
       .byte $58,$5F,$FF,$3F,$38,$34,$4F
LFD29: .byte $FF,$78,$37,$54,$58,$5B,$37,$34,$9F,$FF,$7F,$34,$57,$5B,$7F,$3B
       .byte $5F,$40,$FF,$20,$20,$38,$5F,$FF,$00,$00,$00,$00,$00,$70,$30,$30
       .byte $30,$37,$36,$36,$3E,$3E,$3C,$3C,$3C,$3C,$3D,$7F,$D9,$99,$BD,$BD
       .byte $BD,$BC,$9A,$94,$88,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$40,$40,$73,$73,$12
       .byte $12,$12,$3E,$3E,$3C,$3C,$BC,$BC,$FF,$3D,$19,$18,$1C,$3C,$3E,$34
       .byte $3C,$3C,$18,$58,$28,$18,$08,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$0C,$0C,$08,$08,$08,$08
       .byte $08,$08,$08,$08,$3C,$3C,$3C,$3C,$3C,$3C,$3C,$18,$18,$1C,$38,$3E
       .byte $34,$3C,$18,$18,$18,$78,$08,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$30,$03,$0A,$19,$15,$1E,$2B,$34
       .byte $07,$0E,$13,$22,$1C,$27,$32,$05,$10,$17,$20,$29,$25,$2E,$01,$0C
       .byte $85,$C7,$98,$65,$C8,$85,$C8,$A9,$00,$65,$C9
LFE14: .byte $06,$06,$07,$07,$07,$08,$08,$08,$08,$09,$09,$09,$0A
LFE21: .byte $00,$01,$03,$02
LFE25: .byte $C0
LFE26: .byte $01,$02,$04,$05,$03,$02,$00,$05,$01,$03,$04,$00,$04,$02,$01,$05
       .byte $00,$02,$03,$05,$01,$00,$04,$03,$38,$6C,$C6,$C6,$C6,$6C,$38,$7E
       .byte $18,$18,$18,$18,$38,$18,$FE,$C0,$E0,$3C,$06,$C6,$7C,$FC,$06,$06
       .byte $7C,$06,$06,$FC,$0C,$0C,$0C,$FE,$CC,$CC,$CC,$FC,$06,$06,$FC,$C0
       .byte $C0,$FC,$7C,$C6,$C6,$FC,$C0,$C0,$7C,$30,$30,$18,$18,$0C,$06,$FE
       .byte $7C,$C6,$C6,$7C,$C6,$C6,$7C,$7C,$06,$06,$7E,$C6,$C6,$7C,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$07,$0F,$4C,$AC
       .byte $4C,$0F,$07,$C7,$EF,$6C,$0C,$6C,$EF,$C7,$C7,$EF,$6C,$0F,$6C,$EF
       .byte $C7,$C0,$E0,$04,$EA,$64,$E0,$C0,$00,$00,$00,$00,$00,$00,$00,$F9
       .byte $89,$89,$99,$81,$80,$F8,$12,$12,$F2,$12,$B3,$E3,$42,$27,$24,$24
       .byte $A7,$E4,$64,$27,$C0,$0C,$0C,$80,$0C,$0C,$C0,$78,$C1,$81,$81,$81
       .byte $C1,$79,$E3,$B2,$12,$13,$12,$12,$13,$C7,$64,$64,$87,$64,$64,$C7
LFEE6: .byte $7F,$D6,$88,$66,$44,$38,$7E,$D6,$88,$66,$42,$38,$7D,$D4,$86,$64
       .byte $42,$36,$7C,$D4,$86,$64,$40,$36,$7B,$D2,$84,$62,$40,$24,$7A,$D2
       .byte $84,$62,$20,$24
LFF0A: .byte $34,$03,$00,$00,$04,$03,$30,$33,$34,$33,$22,$22,$34,$33,$34,$33
       .byte $40,$10,$41,$01,$01,$11,$41,$00,$11,$11,$14,$21,$22,$12,$24,$22
       .byte $24,$22,$22,$14,$21,$24,$43,$40,$21,$04,$00,$40,$12,$21,$42,$21
       .byte $12,$11,$41,$11,$11,$34,$03,$04,$00,$33,$14,$11,$41,$23,$33,$33
       .byte $40,$00,$43,$33,$43,$33,$33,$14,$11,$14,$01,$41,$11,$22,$24,$22
       .byte $41,$22,$42,$22,$14,$10,$41,$00,$40,$00,$14,$40,$43,$22,$22,$22
       .byte $22,$24,$04,$40,$42,$30
LFF70: .byte $23,$51,$51,$51,$89,$89,$8B,$00,$00,$00,$00,$00,$00,$00,$00,$00
LFF80: .byte $B9,$25,$25,$25,$25,$25,$B9,$00,$00,$00,$00,$00,$00,$00,$00,$00
LFF90: .byte $E6,$09,$09,$C9,$09,$09,$E6,$00,$00,$00,$00,$00,$00,$00,$00,$00
LFFA0: .byte $03,$04,$04,$04,$04,$04,$03,$00,$00,$00,$00,$00,$00,$00,$00,$00
LFFB0: .byte $19,$A5,$25,$25,$25,$A5,$25,$00,$00,$00,$00,$00,$00,$00,$00,$00
LFFC0: .byte $CF,$28,$28,$CE,$28,$28,$CF,$00,$00,$00,$00,$00,$00,$00,$00,$00
LFFD0: .byte $10,$10,$00,$00,$00,$10,$10
LFFD7: .byte $08,$08,$08,$00,$00,$00,$00,$0F,$14,$23,$24,$2C,$35,$02,$11,$18
       .byte $1B,$2A,$2F,$33,$06,$0B,$12,$21,$26,$2D,$00,$08,$09,$1A,$1D,$04
       .byte $1F,$0D,$28,$16,$31,$00,$F0,$E2,$80
