; Disassembly of roms/Circus Atari.bin
; Disassembled Tue Oct  6 15:21:08 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Circus Atari.bin
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
COLUBK  =  $09
CTRLPF  =  $0A
PF0     =  $0D
PF1     =  $0E
PF2     =  $0F
RESP0   =  $10
RESM0   =  $12
AUDC0   =  $15
AUDF0   =  $17
AUDV0   =  $19
GRP0    =  $1B
GRP1    =  $1C
ENAM0   =  $1D
ENAM1   =  $1E
HMP0    =  $20
HMM0    =  $22
HMM1    =  $23
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXM0P   =  $30
CXM1P   =  $31
CXP0FB  =  $32
CXPPMM  =  $37
INPT0   =  $38
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
       INX            
       TXA            
LF007: STA    VSYNC,X 
       INX            
       BNE    LF007   
       JSR    LF7D6   
       INC    $A8     
       LDA    LF809   
       STA    $E5     
       LDA    #$20    
       STA    NUSIZ0  
       JSR    LF04B   
       JSR    LF05B   
       DEC    $A9     
       BMI    LF07C   
LF024: LDA    VSYNC,X 
       ORA    RSYNC,X 
       AND    #$F0    
       ORA    NUSIZ0,X
       ORA    VBLANK,X
       ORA    WSYNC,X 
       ORA    NUSIZ1,X
       BEQ    LF037   
       LDA    #$00    
       RTS            

LF037: LDA    #$AA    
       STA    VBLANK,X
       STA    NUSIZ0,X
       LDA    #$55    
       STA    WSYNC,X 
       STA    NUSIZ1,X
       AND    #$F0    
       STA    VSYNC,X 
       STA    RSYNC,X 
       TYA            
       RTS            

LF04B: CLC            
       LDA    #$84    
       TAX            
LF04F: JSR    LF037   
       TXA            
       ADC    #$06    
       TAX            
       CMP    #$A8    
       BNE    LF04F   
       RTS            

LF05B: LDA    #$B0    
       STA    $CE     
       STA    $D0     
       ASL            
       STA    $E4     
       LDX    #$02    
       LDA    $81     
       LSR            
       BCS    LF06D   
       LDX    #$9B    
LF06D: STX    $CD     
       LDA    #$0C    
       STA    $DE     
       LDX    #$00    
       STX    $D1     
       STX    $D6     
       STX    $E1     
       RTS            

LF07C: LDA    #$35    
       STA    TIM64T  
       CLC            
       LDA    $D3     
       ADC    $CD     
       STA    $CD     
       CMP    #$99    
       BCS    LF096   
       CMP    #$02    
       BCS    LF0A3   
       LDA    #$05    
       STA    $CD     
       BNE    LF09A   
LF096: LDA    #$98    
       STA    $CD     
LF09A: LDA    $D3     
       EOR    #$FF    
       CLC            
       ADC    #$01    
       STA    $D3     
LF0A3: STA    WSYNC   
       LDA    #$00    
       STA    $E6     
       LDA    $E5     
       AND    #$40    
       BEQ    LF0BD   
       LDA    $E5     
       AND    #$38    
       LDX    #$02    
       STX    $E6     
       LSR            
       LSR            
       LSR            
       ORA    #$30    
       SEC            
LF0BD: STA    NUSIZ1  
       LDA    CXM1P   
       BMI    LF0C9   
       LDA    #$00    
       STA    $EA     
       BEQ    LF0D5   
LF0C9: LDX    $EA     
       BNE    LF0D5   
       STA    $EA     
       LDA    $D0     
       EOR    #$80    
       STA    $D0     
LF0D5: LDA    #$F0    
       STA    HMM1    
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    VSYNC   
       LDA    $CD     
       JSR    LF7BA   
       LDA    $CF     
       STA    $D4     
       LDA    #$00    
       STA    VSYNC   
       STA    $CF     
       LDA    $A9     
       BEQ    LF0F7   
       JMP    LF35B   
LF0F7: LDA    CXM0P   
       AND    #$40    
       BEQ    LF100   
       JMP    LF236   
LF100: LDA    CXP0FB  
       BMI    LF107   
LF104: JMP    LF1A4   
LF107: LDA    $CE     
       CMP    #$32    
       BCC    LF12F   
       LDA    #$21    
       CMP    $D1     
       BCC    LF104   
       LDA    #$80    
       STA    $D0     
       LDA    #$00    
       STA    $E1     
       LDA    #$01    
       STA    $DE     
       STA    $B7     
       LDA    #$A0    
       STA    $CE     
       LDA    $D3     
       BNE    LF1A4   
       LDA    #$01    
       STA    $D3     
       BNE    LF1A4   
LF12F: LDA    #$00    
       STA    $E3     
       STA    $EA     
       STA    $E2     
       LDX    $CD     
       LDA    $CE     
       JSR    LF1B0   
       LDA    $CE     
       CLC            
       SBC    #$05    
       LDX    $CD     
       JSR    LF1B0   
       LDA    $CE     
       CLC            
       SBC    #$0A    
       LDX    $CD     
       JSR    LF1B0   
       LDA    $CD     
       SEC            
       SBC    #$03    
       TAX            
       LDA    $CE     
       JSR    LF1B0   
       BNE    LF161   
       INC    $E2     
LF161: LDA    $CD     
       CLC            
       ADC    #$03    
       TAX            
       LDA    $CE     
       JSR    LF1B0   
       BNE    LF170   
       DEC    $E2     
LF170: LDA    $CD     
       SEC            
       SBC    #$03    
       TAX            
       LDA    $CE     
       CLC            
       ADC    #$0A    
       JSR    LF1B0   
       BNE    LF182   
       INC    $E2     
LF182: LDA    $CD     
       CLC            
       ADC    #$03    
       TAX            
       LDA    $CE     
       CLC            
       ADC    #$0A    
       JSR    LF1B0   
       BNE    LF194   
       DEC    $E2     
LF194: LDA    $E3     
       BEQ    LF1A4   
       LDA    $E2     
       BMI    LF1A0   
       AND    #$01    
       BPL    LF1A2   
LF1A0: LDA    #$FF    
LF1A2: STA    $D3     
LF1A4: LDA    $B1     
       JSR    LF775   
       LDA    #$00    
       STA    $B1     
       JMP    LF236   
LF1B0: TAY            
       TXA            
       PHA            
       TYA            
       CMP    #$05    
       BCC    LF1DA   
       CMP    #$0B    
       BCS    LF1C2   
LF1BC: CMP    #$17    
       BCS    LF1CE   
LF1C0: PLA            
       RTS            

LF1C2: CMP    #$11    
       BCS    LF1BC   
       LDX    #$8A    
       LDA    #$05    
       STA    $D2     
       BNE    LF1E0   
LF1CE: CMP    #$1D    
       BCS    LF1C0   
       LDA    #$02    
       STA    $D2     
       LDX    #$90    
       BNE    LF1E0   
LF1DA: LDA    #$0A    
       STA    $D2     
       LDX    #$84    
LF1E0: PLA            
       CMP    #$50    
       BCS    LF22D   
LF1E5: LSR            
       LSR            
       TAY            
       LDA    LF8A4,Y 
       PHA            
       AND    #$F0    
       SEC            
LF1EF: SBC    #$10    
       BMI    LF1F6   
       INX            
       BNE    LF1EF   
LF1F6: PLA            
       AND    #$0F    
       TAY            
       CLC            
       LDA    #$01    
LF1FD: DEY            
       BMI    LF203   
       ASL            
       BNE    LF1FD   
LF203: PHA            
       AND    VSYNC,X 
       BNE    LF20A   
       PLA            
       RTS            

LF20A: PLA            
       EOR    #$FF    
       AND    VSYNC,X 
       STA    VSYNC,X 
       LDA    $E5     
       AND    #$04    
       BNE    LF21D   
       LDA    $D0     
       EOR    #$80    
       STA    $D0     
LF21D: LDA    $D2     
       CLC            
       ADC    $B1     
       STA    $B1     
       LDY    #$01    
       STY    $E3     
       STY    $B5     
       LDA    #$00    
       RTS            

LF22D: INX            
       INX            
       INX            
       SEC            
       SBC    #$50    
       JMP    LF1E5   
LF236: LDA    CXM0P   
       AND    #$40    
       BNE    LF266   
       LDA    $CE     
       BNE    LF26C   
       LDA    #$00    
LF242: STA    $D0     
       BNE    LF26C   
LF246: JMP    LF30D   
LF249: LDA    #$80    
       STA    $D0     
       LDA    #$00    
       STA    $E1     
       LDA    #$01    
       STA    $DE     
       STA    $B7     
       LDA    #$A0    
       STA    $CE     
       LDA    $D3     
       BNE    LF263   
       LDA    #$01    
       STA    $D3     
LF263: JMP    LF344   
LF266: LDA    $CE     
       CMP    #$A1    
       BNE    LF263   
LF26C: CMP    #$A1    
       BNE    LF246   
       LDA    #$21    
       CMP    $D1     
       BCC    LF280   
       LDX    CXP0FB  
       BMI    LF249   
       LDA    $CD     
       CMP    #$09    
       BCC    LF249   
LF280: LDA    $E4     
       CMP    #$60    
       BNE    LF288   
       INC    $B9     
LF288: LDA    #$00    
       STA    $D3     
       LDA    $D1     
       SEC            
       SBC    #$2C    
       BMI    LF2A4   
       LDA    $81     
       AND    #$07    
       CMP    #$07    
       BNE    LF2A8   
       LDA    $D1     
       SEC            
       SBC    #$0B    
       CMP    #$21    
       BNE    LF2A6   
LF2A4: LDA    #$4D    
LF2A6: STA    $D1     
LF2A8: LDA    $E4     
       BEQ    LF2B1   
       DEC    $E4     
       JMP    LF30A   
LF2B1: LDA    $B3     
       ORA    $B8     
       ORA    $B9     
       ORA    $B2     
       ORA    $B5     
       ORA    $B4     
       ORA    $B6     
       ORA    $B7     
       ORA    $DC     
       ORA    $DB     
       BNE    LF30A   
       LDA    $AD     
       AND    #$0F    
       CMP    #$0A    
       BEQ    LF2D9   
       LDA    $AD     
       AND    #$F0    
       ORA    #$0A    
       STA    $AD     
       BNE    LF307   
LF2D9: LDA    $E5     
       AND    #$01    
       BEQ    LF2F8   
       JSR    LF783   
       INC    $DD     
       LDA    $AC     
       CLC            
       ADC    #$10    
       STA    $AC     
       CMP    #$3A    
       BNE    LF307   
       LDA    #$00    
       STA    $DD     
       CLC            
       ADC    #$1A    
       STA    $AC     
LF2F8: LDA    $AD     
       CLC            
       ADC    #$10    
       CMP    #$6A    
       BNE    LF305   
       LDA    #$01    
       STA    $A9     
LF305: STA    $AD     
LF307: JSR    LF05B   
LF30A: JMP    LF357   
LF30D: LDX    $DD     
       CMP    #$B0    
       BNE    LF320   
       LDA    $DF,X   
       CMP    #$FE    
       BEQ    LF31C   
       JMP    LF35B   
LF31C: ASL    $DF,X   
       STX    CXCLR   
LF320: LDA    $D0     
       BMI    LF33F   
       DEC    $DE     
LF326: LDX    $E1     
       CPX    $E9     
       BCC    LF32E   
       LDX    $E9     
LF32E: LDA    LF900,X 
       CLC            
       ADC    $DE     
       TAY            
       LDA    LF905,Y 
       STA    $CE     
       BNE    LF344   
       JMP    LF242   
LF33F: INC    $DE     
       JMP    LF326   
LF344: LDA    $81     
       AND    #$07    
       CMP    #$07    
       BNE    LF357   
       LDA    $D1     
       SEC            
       SBC    #$0B    
       BPL    LF355   
       LDA    #$21    
LF355: STA    $D1     
LF357: LDA    $D1     
       STA    $D6     
LF35B: STY    WSYNC   
       STY    HMOVE   
       STY    CXCLR   
       LDX    #$00    
       LDA    SWCHB   
       AND    #$08    
       BNE    LF36C   
       LDX    #$06    
LF36C: LDA    $DD     
       BNE    LF383   
       LDA    LF8B8,X 
       JSR    LF7E3   
       STA    COLUP0  
       LDY    $A9     
       BMI    LF37E   
       BNE    LF383   
LF37E: STA    COLUP1  
       JMP    LF391   
LF383: LDA    LF8B9,X 
       JSR    LF7E3   
       STA    COLUP1  
       LDY    $A9     
       BNE    LF391   
       STA    COLUP0  
LF391: LDA    LF8BA,X 
       JSR    LF7E3   
       STA    COLUBK  
       LDA    LF8BB,X 
       JSR    LF7E3   
       STA    COLUPF  
       LDA    LF8BC,X 
       JSR    LF7E3   
       STA    $D8     
       LDA    LF8BD,X 
       JSR    LF7E3   
       STA    $D7     
       LDA    SWCHA   
       LDX    #$00    
LF3B6: ASL    $DF,X   
       EOR    #$00    
       BPL    LF3BE   
       INC    $DF,X   
LF3BE: ASL            
       INX            
       CPX    #$02    
       BNE    LF3B6   
       ASL    $80     
       LDA    SWCHB   
       AND    #$02    
       BEQ    LF3D1   
       INC    $80     
       BNE    LF416   
LF3D1: LDA    #$80    
       STA    $A9     
       LDA    #$00    
       STA    $DD     
       LDA    $80     
       AND    #$0F    
       CMP    #$0E    
       BEQ    LF3E5   
       DEC    $B0     
       BNE    LF416   
LF3E5: LDA    #$1E    
       STA    $B0     
       LDA    $E5     
       PHA            
       INC    $E8     
       LDY    $E8     
       LDA    LF809,Y 
       STA    $E5     
       PLA            
       AND    #$01    
       BEQ    LF403   
       SED            
       CLC            
       LDA    $A8     
       ADC    #$01    
       STA    $A8     
       CLD            
LF403: LDA    $E8     
       CMP    #$0E    
       BNE    LF416   
       LDA    #$01    
       STA    $A8     
       LDA    #$00    
       STA    $E8     
       LDA    LF809   
       STA    $E5     
LF416: LDA    #$40    
       LDX    $DD     
       BEQ    LF41D   
       ASL            
LF41D: AND    SWCHB   
       STA    $E7     
       LDA    $81     
       AND    #$03    
       BNE    LF437   
       LDX    #$84    
       JSR    LF66F   
       LDX    #$90    
       JSR    LF66F   
       LDX    #$8A    
       JSR    LF694   
LF437: ASL    $CC     
       LDA    SWCHB   
       AND    #$01    
       BEQ    LF442   
       INC    $CC     
LF442: LDA    $CC     
       CMP    #$FE    
       BNE    LF46C   
       LDA    #$00    
       STA    $A9     
       STA    $AA     
       STA    $AB     
       STA    $AE     
       STA    $DD     
       STA    $AF     
       STA    $83     
       STA    $82     
       STA    $B2     
       STA    $B3     
       STA    $D3     
       LDA    #$1A    
       STA    $AC     
       STA    $AD     
       JSR    LF04B   
       JSR    LF05B   
LF46C: LDA    $B6     
       BEQ    LF474   
       LDA    #$00    
       STA    $B7     
LF474: JSR    LF6DD   
       LDX    #$06    
       STX    $D9     
       STX    $DA     
       LDA    #$00    
       PHA            
       PHA            
       LDX    #$02    
       STX    CTRLPF  
       LDX    #$11    
LF487: CPX    #$0B    
       BNE    LF48E   
       LDA    $D7     
       PHA            
LF48E: LDA    $84,X   
       PHA            
       DEX            
       CPX    #$05    
       BNE    LF487   
       LDA    $D8     
       PHA            
       STA    HMCLR   
       LDA    #$20    
       LDY    $D5     
       BPL    LF4A3   
       LDA    #$E0    
LF4A3: STA    HMM0    
       LDY    #$04    
LF4A7: LDA    INTIM   
       BNE    LF4A7   
       STA    WSYNC   
       STA    VBLANK  
       JMP    LFD65   
LF4B3: STA    WSYNC   
       LDA    #$24    
       STA    TIM64T  
       LDA    #$00    
       STA    PF0     
       STA    ENAM0   
       STA    WSYNC   
       INC    $81     
       LDA    $A9     
       BNE    LF4D0   
       LDA    $DF     
       AND    $E0     
       AND    #$01    
       BEQ    LF4E2   
LF4D0: INC    $82     
       BNE    LF4E6   
       INC    $83     
       BNE    LF4E6   
       LDA    $A9     
       BNE    LF4E6   
       LDA    #$01    
       STA    $A9     
       BNE    LF4E6   
LF4E2: STA    $82     
       STA    $83     
LF4E6: LDA    $CF     
       BEQ    LF4F4   
       CMP    #$26    
       BCS    LF4F0   
       LDA    #$26    
LF4F0: CMP    #$96    
       BCC    LF4F6   
LF4F4: LDA    #$95    
LF4F6: STA    $CF     
       CLC            
       ADC    $D4     
       ROR            
       STA    $D4     
       STA    $CF     
       LDA    CXM0P   
       AND    #$40    
       BEQ    LF568   
       LDA    CXPPMM  
       BMI    LF568   
       LDA    #$21    
       CMP    $D1     
       BCC    LF57F   
       CLC            
       LDA    $D4     
       EOR    #$FF    
       ADC    #$B9    
       ADC    $D5     
       LDX    $D5     
       BMI    LF528   
       SEC            
       SBC    $CD     
       SBC    #$07    
       BEQ    LF53F   
       BMI    LF535   
       BPL    LF539   
LF528: EOR    #$FF    
       CLC            
       ADC    #$01    
       ADC    #$FA    
       ADC    $CD     
       BEQ    LF53F   
       BPL    LF539   
LF535: INC    $E1     
       BNE    LF53F   
LF539: LDA    $E1     
       BEQ    LF53F   
       DEC    $E1     
LF53F: LDA    #$01    
       STA    $DE     
       STA    $B7     
       JSR    LF7D6   
       JSR    LF7AB   
       CLC            
       LDA    $D3     
       EOR    #$FF    
       ADC    #$01    
       STA    $D3     
       LDA    #$95    
       STA    $CE     
       LDX    #$02    
       LDA    $E7     
       BEQ    LF560   
       LDX    #$04    
LF560: STX    $E9     
       LDA    #$80    
       STA    $D0     
       BNE    LF57F   
LF568: LDA    $CE     
       CMP    #$B0    
       BEQ    LF57F   
       LDX    $DD     
       LDA    $DF,X   
       CMP    #$FE    
       BNE    LF57F   
       LDA    $CE     
       CMP    #$A1    
       BEQ    LF57F   
       JSR    LF7D6   
LF57F: LDA    $CF     
       LDX    #$02    
       EOR    #$FF    
       CLC            
       ADC    #$B7    
       ADC    $D5     
       STA    $CA     
       JSR    LF7BC   
       LDX    #$01    
       CLC            
       LDA    #$18    
       LDY    $D5     
       BMI    LF59C   
       EOR    #$FF    
       ADC    #$FC    
LF59C: ADC    $CA     
       JSR    LF7BC   
       LDY    #$03    
       LDX    #$0F    
       LDA    $A9     
       BPL    LF5D0   
       LDA    #$AA    
       STA    $AA     
       STA    $AD     
       LDA    $A8     
       AND    #$F0    
       BNE    LF5BD   
       LDA    $A8     
       AND    #$0F    
       ORA    #$A0    
       BNE    LF5BF   
LF5BD: LDA    $A8     
LF5BF: STA    $AB     
       LDA    $E5     
       AND    #$01    
       CLC            
       ADC    #$01    
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    #$0A    
       STA    $AC     
LF5D0: LDA.wy $00AA,Y 
       LSR            
       LSR            
       LSR            
       LSR            
       JSR    LF6C7   
       DEX            
       DEX            
       LDA.wy $00AA,Y 
       JSR    LF6C7   
       DEX            
       DEX            
       DEY            
       BPL    LF5D0   
       LDA    $CE     
       CMP    #$32    
       BCC    LF603   
       LDA    $E5     
       AND    #$02    
       BEQ    LF62B   
       LDX    #$84    
LF5F5: LDA    VSYNC,X 
       ORA    RSYNC,X 
       AND    #$F0    
       ORA    NUSIZ0,X
       ORA    WSYNC,X 
       ORA    VBLANK,X
       ORA    NUSIZ1,X
LF603: BNE    LF65F   
       CPX    #$90    
       BEQ    LF610   
       TXA            
       CLC            
       ADC    #$06    
       TAX            
       BNE    LF5F5   
LF610: JSR    LF037   
       LDX    #$84    
       JSR    LF037   
       LDX    #$8A    
       JSR    LF037   
       LDA    #$11    
       STA    $B3     
       LDA    $AD     
       AND    #$F0    
       ORA    #$0B    
       STA    $AD     
       BNE    LF65F   
LF62B: LDY    #$0A    
       LDX    #$84    
       JSR    LF024   
       BEQ    LF642   
       PHA            
       LDA    $AD     
       AND    #$F0    
       ORA    #$0B    
       STA    $AD     
       LDA    #$0A    
       STA    $DC     
       PLA            
LF642: CLC            
       ADC    $B3     
       STA    $B3     
       LDX    #$8A    
       LDY    #$05    
       JSR    LF024   
       CLC            
       ADC    $B3     
       STA    $B3     
       LDX    #$90    
       LDY    #$02    
       JSR    LF024   
       CLC            
       ADC    $B3     
       STA    $B3     
LF65F: LDA    INTIM   
       BNE    LF65F   
       STA    WSYNC   
       LDA    #$82    
       STA    VBLANK  
       STA    VSYNC   
       JMP    LF07C   
LF66F: ROR    NUSIZ1,X
       ROL    NUSIZ0,X
       ROR    RSYNC,X 
       LDA    RSYNC,X 
       AND    #$08    
       BNE    LF68E   
       CLC            
LF67C: ROR    WSYNC,X 
       ROL    VBLANK,X
       ROR    VSYNC,X 
       ASL    NUSIZ1,X
       LDA    VSYNC,X 
       AND    #$08    
       BNE    LF691   
       CLC            
LF68B: ROR    NUSIZ1,X
       RTS            

LF68E: SEC            
       BCS    LF67C   
LF691: SEC            
       BCS    LF68B   
LF694: ROL    VSYNC,X 
       ROR    VBLANK,X
       ROL    WSYNC,X 
       ROL    RSYNC,X 
       ROR    NUSIZ0,X
       ROL    NUSIZ1,X
       BCS    LF6BF   
LF6A2: LDA    RSYNC,X 
       AND    #$01    
       BEQ    LF6B0   
       LDA    RSYNC,X 
       ORA    #$10    
       AND    #$F0    
       STA    RSYNC,X 
LF6B0: LDA    VSYNC,X 
       AND    #$01    
       BEQ    LF6BE   
       LDA    VSYNC,X 
       ORA    #$10    
       AND    #$F0    
       STA    VSYNC,X 
LF6BE: RTS            

LF6BF: LDA    VSYNC,X 
       ORA    #$01    
       STA    VSYNC,X 
       BCS    LF6A2   
LF6C7: AND    #$0F    
       STA    $CA     
       ASL    $CA     
       ASL    $CA     
       CLC            
       ADC    $CA     
       ADC    #$C4    
       STA    $B9,X   
       LDA    #$F8    
       ADC    #$00    
       STA    $BA,X   
       RTS            

LF6DD: LDA    #$00    
       STA    AUDF0   
       STA    AUDC0   
       STA    AUDV0   
       LDA    #$17    
       STA    $CA     
       LDA    #$F8    
       STA    $CB     
LF6ED: LDY    #$02    
       LDA    ($CA),Y 
       TAX            
       LDA    VSYNC,X 
       BNE    LF70E   
       LDA    VBLANK,X
       BNE    LF750   
       LDY    #$00    
       LDA    ($CA),Y 
       CMP    #$17    
       BNE    LF703   
       RTS            

LF703: PHA            
       INY            
       LDA    ($CA),Y 
       STA    $CB     
       PLA            
       STA    $CA     
       BNE    LF6ED   
LF70E: LDY    #$03    
       CMP    ($CA),Y 
       BEQ    LF728   
       LDY    #$04    
       CMP    ($CA),Y 
       BEQ    LF75F   
       CLC            
       ADC    #$01    
       PHA            
       LDY    #$02    
       LDA    ($CA),Y 
       TAX            
       PLA            
       STA    VSYNC,X 
       BNE    LF738   
LF728: LDY    #$02    
       LDA    ($CA),Y 
       TAX            
       LDA    VBLANK,X
       BNE    LF76A   
       LDA    VSYNC,X 
       CLC            
       ADC    #$01    
       STA    VSYNC,X 
LF738: TAY            
       LDA    ($CA),Y 
       PHA            
       AND    #$0F    
       STA    AUDV0   
       PLA            
       ROR            
       ROR            
       ROR            
       ROR            
       AND    #$0F    
       STA    AUDF0   
       LDY    #$06    
       LDA    ($CA),Y 
       STA    AUDC0   
LF74F: RTS            

LF750: DEC    VBLANK,X
       LDY    #$05    
       LDA    ($CA),Y 
       BEQ    LF75B   
       JSR    LF771   
LF75B: LDA    #$07    
       BNE    LF70E   
LF75F: LDY    #$02    
       LDA    ($CA),Y 
       TAX            
       LDA    #$00    
       STA    VSYNC,X 
       BEQ    LF74F   
LF76A: LDA    #$00    
       STA    VSYNC,X 
       JMP    LF6ED   
LF771: LDY    #$05    
       LDA    ($CA),Y 
LF775: SED            
       CLC            
       ADC    $AB     
       STA    $AB     
       LDA    $AA     
       ADC    #$00    
       STA    $AA     
       CLD            
       RTS            

LF783: LDA    $E5     
       AND    #$80    
       BNE    LF79A   
       LDY    #$84    
LF78B: LDA.wy $0000,Y 
       LDX    RESM0,Y 
       STA.wy $0012,Y 
       STX    VSYNC,Y 
       INY            
       CPY    #$96    
       BNE    LF78B   
LF79A: LDA    $AA     
       LDX    $AE     
       STX    $AA     
       STA    $AE     
       LDA    $AB     
       LDX    $AF     
       STX    $AB     
       STA    $AF     
       RTS            

LF7AB: CLC            
       LDA    #$00    
       LDX    $D5     
       BEQ    LF7B3   
       TXA            
LF7B3: ADC    #$B8    
       SEC            
       SBC    $D4     
       STA    $CD     
LF7BA: LDX    #$00    
LF7BC: LDY    #$02    
       SEC            
LF7BF: INY            
       SBC    #$0F    
       BCS    LF7BF   
       EOR    #$FF    
       SBC    #$06    
       ASL            
       ASL            
       ASL            
       ASL            
       STY    WSYNC   
LF7CE: DEY            
       BPL    LF7CE   
       STA    RESP0,X 
       STA    HMP0,X  
       RTS            

LF7D6: LDX    #$04    
       LDA    $D5     
       BPL    LF7DF   
LF7DC: STX    $D5     
       RTS            

LF7DF: LDX    #$E8    
       BNE    LF7DC   
LF7E3: LDY    $A9     
       BEQ    LF801   
       STA    $CA     
       LDA    #$00    
       STA    $B2     
       STA    $B3     
       LDA    $AE     
       STA    $AC     
       LDA    $AF     
       STA    $AD     
       LDA    $83     
       CPX    #$06    
       BEQ    LF804   
       EOR    $CA     
       AND    #$F7    
LF801: EOR    #$00    
       RTS            

LF804: EOR    $CA     
       AND    #$07    
       RTS            

LF809: .byte $00,$01,$70,$71,$04,$05,$74,$75,$02,$03,$72,$73,$81,$F1,$2E,$F8
       .byte $B6,$15,$14,$01,$07,$FF,$FE,$FD,$FC,$FB,$FA,$F9,$F8,$F7,$F6,$F5
       .byte $F4,$F3,$F2,$F1,$F0,$45,$F8,$B4,$15,$16,$00,$08,$11,$FF,$22,$EE
       .byte $33,$DD,$44,$CC,$55,$BB,$66,$AA,$77,$99,$88,$88,$6E,$F8,$B8,$22
       .byte $23,$00,$08,$AF,$AE,$AF,$AE,$AD,$AE,$AD,$AC,$AD,$AE,$AD,$AC,$AB
       .byte $AA,$AB,$AA,$A9,$AA,$A9,$A8,$A9,$A7,$A8,$A7,$A6,$A7,$A6,$A5,$A6
       .byte $A5,$A4,$A3,$A2,$A1,$85,$F8,$DB,$14,$15,$00,$0C,$EE,$00,$EE,$00
       .byte $00,$DD,$00,$00,$EE,$EE,$FF,$FF,$00,$AA,$00,$AA,$17,$F8,$B2,$0A
       .byte $1E,$0A,$0C,$1F,$2E,$3D,$4C,$5B,$6A,$79,$88,$97,$A6,$B5,$C4,$D3
       .byte $E2,$F1,$11,$22,$33,$44,$55,$66,$77,$88,$99
LF8A4: .byte $04,$05,$06,$07,$17,$16,$15,$14,$13,$12,$11,$10,$20,$21,$22,$23
       .byte $24,$25,$26,$27
LF8B8: .byte $5A
LF8B9: .byte $CD
LF8BA: .byte $90
LF8BB: .byte $44
LF8BC: .byte $86
LF8BD: .byte $FF,$0E,$02,$08,$0C,$0A,$06,$E7,$A5,$A5,$A5,$E7,$42,$42,$42,$42
       .byte $42,$E7,$81,$E7,$24,$E7,$E7,$24,$66,$24,$E7,$24,$24,$E7,$A5,$81
       .byte $E7,$24,$E7,$81,$E7,$E7,$A5,$E7,$81,$E7,$24,$24,$24,$24,$E7,$E7
       .byte $A5,$E7,$A5,$E7,$E7,$24,$E7,$A5,$E7,$00,$00,$00,$00,$00,$A5,$A5
       .byte $42,$A5,$A5
LF900: .byte $00,$28,$58,$82,$A4
LF905: .byte $A1,$98,$92,$8C,$87,$81,$7C,$77,$72,$6D,$68,$64,$5F,$5B,$57,$53
       .byte $4F,$4B,$48,$45,$42,$3F,$3C,$3A,$37,$35,$33,$31,$2F,$2D,$2B,$2A
       .byte $29,$28,$27,$26,$25,$25,$24,$00,$A1,$98,$92,$8C,$87,$81,$7B,$76
       .byte $71,$6C,$67,$62,$5D,$59,$54,$50,$4B,$47,$43,$3F,$3B,$38,$34,$31
       .byte $2D,$2A,$27,$24,$21,$1E,$1C,$19,$17,$15,$12,$10,$0F,$0D,$0B,$0A
       .byte $08,$07,$06,$04,$03,$02,$01,$00,$A1,$98,$91,$8A,$84,$7D,$77,$71
       .byte $6B,$65,$60,$5A,$55,$50,$4B,$46,$41,$3D,$38,$34,$30,$2C,$29,$25
       .byte $22,$1F,$1B,$18,$16,$13,$11,$0F,$0C,$0B,$09,$07,$06,$04,$03,$02
       .byte $01,$00,$A1,$98,$8F,$87,$7E,$76,$6E,$67,$60,$59,$52,$4B,$45,$3F
       .byte $3A,$34,$2F,$2A,$26,$21,$1D,$19,$16,$12,$0F,$0C,$0A,$08,$06,$04
       .byte $03,$02,$01,$00,$A1,$98,$8E,$84,$7B,$73,$6A,$62,$5A,$52,$4B,$44
       .byte $3E,$37,$31,$2C,$27,$22,$1D,$19,$15,$11,$0E,$0B,$08,$06,$04,$02
       .byte $01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00
LFCB8: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00
LFD00: .byte $00,$38,$38,$92,$54,$38,$10,$10,$38,$44,$82,$00,$38,$38,$90,$50
       .byte $38,$14,$12,$38,$44,$82,$00,$38,$38,$12,$14,$38,$50,$90,$38,$24
       .byte $22,$00,$38,$38,$10,$10,$38,$54,$92,$38,$28,$28,$00,$82,$44,$38
       .byte $10,$10,$FF,$FF,$00,$00,$00,$00,$82,$44,$38,$12,$14,$FF,$FF,$00
       .byte $00,$00,$00,$22,$24,$38,$90,$50,$FF,$FF,$00,$00,$00,$00,$28,$28
       .byte $38,$92,$54,$FF,$FF,$00,$00,$00,$00,$38,$38,$10,$10,$38,$54,$92
       .byte $38,$28,$28,$00,$00
LFD65: STA    WSYNC   
       NOP            
       NOP            
       LDA    ($BC),Y 
       AND    #$F0    
       STA    PF1     
       LDA    ($BE),Y 
       ASL            
       ASL            
       ASL            
       ASL            
       STA    PF2     
       LDA    ($C4),Y 
       AND    #$F0    
       STA    PF1     
       LDA    ($C6),Y 
       ASL            
       ASL            
       ASL            
       ASL            
       STA    PF2     
       STA    WSYNC   
       LDA    ($BA),Y 
       LSR            
       LSR            
       LSR            
       LSR            
       STA    PF1     
       LDA    ($C0),Y 
       AND    #$0F    
       STA    PF2     
       LDA    ($C2),Y 
       LSR            
       LSR            
       LSR            
       LSR            
       STA    PF1     
       LDA    ($C8),Y 
       AND    #$0F    
       STA    PF2     
       DEY            
       BPL    LFD65   
       INY            
       STA    WSYNC   
       STY    CTRLPF  
       LDX    #$00    
       STX    PF0     
       STX    PF1     
       STX    PF2     
       LDX    #$05    
LFDB5: LDA    $84,X   
       STA.wy $00BA,Y 
       INY            
       DEX            
       BPL    LFDB5   
       LDA    #$00    
       TAY            
       JMP    LFE96   
LFDC4: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00
LFE96: STA    WSYNC   
       STA    GRP0    
       LDX    $D6     
       CPY    $CE     
       BNE    LFEA1   
       INX            
LFEA1: LDA    $BF     
       STA    PF0     
       LDA    $BE     
       STA    PF1     
       LDA    $BD     
       STA    PF2     
       LDA    $BC     
       STA    PF0     
       LDA    $BB     
       STA    PF1     
       INY            
       LDA    $BA     
       STA    PF2     
       LDA    LFD00,X 
       BEQ    LFEC2   
       INX            
       STX    $D6     
LFEC2: DEC    $DA     
       BNE    LFE96   
       STA    WSYNC   
       STA    GRP0    
       LDA    #$06    
       STA    $D9     
       PLA            
       STA    COLUPF  
LFED1: LDA    #$00    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       PLA            
       LDX    $D9     
       STA    $B9,X   
       LDX    $D6     
       CPY    $CE     
       BNE    LFEE5   
       INX            
LFEE5: LDA    LFD00,X 
       BEQ    LFEED   
       INX            
       STX    $D6     
LFEED: INY            
       CPY    #$1F    
       BEQ    LFF00   
       DEC    $D9     
       BEQ    LFE96   
       STA    WSYNC   
       STA    GRP0    
       LDA    #$06    
       STA    $DA     
       BNE    LFED1   
LFF00: STA    WSYNC   
       STA    GRP0    
       LDA    #$00    
       CPY    #$2A    
       BCS    LFF10   
       CPY    #$24    
       BCC    LFF10   
       LDA    $E6     
LFF10: STA    ENAM1   
       LDX    $CF     
       BNE    LFF1E   
       LDX    $DD     
       LDA    INPT0,X 
       BPL    LFF1E   
       STY    $CF     
LFF1E: LDX    $D6     
       CPY    $CE     
       BNE    LFF25   
       INX            
LFF25: LDA    LFD00,X 
       BEQ    LFF2D   
       INX            
       STX    $D6     
LFF2D: INY            
       CPY    #$A0    
       BNE    LFF00   
       LDX    #$00    
LFF34: STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       STX    GRP1    
       LDX    #$00    
       STX    COLUPF  
       STX    NUSIZ1  
       LDA    #$32    
       STA    PF0     
       STA    ENAM0   
       INX            
       STX    CTRLPF  
       LDX    $D6     
       CPY    $CE     
       BNE    LFF52   
       INX            
LFF52: LDA    LFD00,X 
       BEQ    LFF5A   
       INX            
       STX    $D6     
LFF5A: LDX    LFCB8,Y 
       INY            
       CPY    #$AE    
       BNE    LFF34   
       JMP    LF4B3   
LFF65: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$F0,$00,$00
