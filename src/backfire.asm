; Disassembly of roms/backfire.bin
; Disassembled Tue Oct  6 15:24:49 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/backfire.bin
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
RESM0   =  $12
RESM1   =  $13
RESBL   =  $14
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
HMM0    =  $22
HMM1    =  $23
HMBL    =  $24
HMOVE   =  $2A
CXCLR   =  $2C
CXP0FB  =  $32
CXP1FB  =  $33
CXM0FB  =  $34
CXM1FB  =  $35
CXBLPF  =  $36
INPT4   =  $3C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296

       ORG $F000

START:
LF000: SEI            
       CLD            
       LDX    #$FF    
       TXS            
       LDA    #$00    
LF007: STA    VSYNC,X 
       DEX            
       BNE    LF007   
       JSR    LFE40   
       JMP    LF08D   
LF012: LDY    #$00    
       LDA    $82,X   
       SEC            
       SBC    #$08    
       BCS    LF037   
       STA    WSYNC   
       STA    RESP0,X 
       LDA    $82,X   
       CMP    #$00    
       BNE    LF028   
       CLC            
       ADC    #$01    
LF028: SEC            
       SBC    #$04    
       ASL            
       ASL            
       ASL            
       ASL            
       EOR    #$F0    
       STA    HMP0,X  
       JSR    LF081   
       RTS            

LF037: INY            
       SBC    #$0F    
       BCS    LF037   
       TYA            
       CLC            
       ADC    $82,X   
       SEC            
       CPY    #$0B    
       BCC    LF06B   
       STA    WSYNC   
       LDA    $82,X   
       SEC            
       CMP    #$A1    
       BCC    LF053   
       LDA    #$A0    
       JMP    LF055   
LF053: NOP            
       NOP            
LF055: CLC            
       ADC    #$03    
       ASL            
       ASL            
       ASL            
       ASL            
       EOR    #$F0    
       STA    HMP0,X  
       LDY    #$07    
LF062: DEY            
       BNE    LF062   
       STA    RESP0,X 
       JSR    LF081   
       RTS            

LF06B: STA    WSYNC   
       SEC            
       SBC    #$01    
       ASL            
       ASL            
       ASL            
       ASL            
       EOR    #$F0    
       STA    HMP0,X  
LF078: DEY            
       BNE    LF078   
       STA    RESP0,X 
       JSR    LF081   
       RTS            

LF081: LDA    $82,X   
       SEC            
       SBC    #$53    
       BCS    LF08C   
       STA    WSYNC   
       STA    WSYNC   
LF08C: RTS            

LF08D: LDA    #$02    
       STA    WSYNC   
       STA    VSYNC   
       LDA    #$2F    
       STA    TIM64T  
       LDA    #$00    
       STA    CXCLR   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    VSYNC   
       LDA    $DE     
       CMP    #$00    
       BNE    LF0AD   
       JMP    LFA87   
LF0AD: STA    WSYNC   
       LDY    $E1     
       INY            
       STY    $E1     
       STA    WSYNC   
       LDX    $E0     
       CPX    #$01    
       BNE    LF0D5   
       LDA    $E1     
       CMP    #$0F    
       BNE    LF0C6   
       LDA    #$00    
       STA    $E0     
LF0C6: LDA    #$02    
       STA    AUDC1   
       LDA    #$07    
       SEC            
       SBC    $E1     
       STA    AUDF1   
       LDA    #$0F    
       STA    AUDV1   
LF0D5: STA    WSYNC   
       CPX    #$02    
       BNE    LF0F4   
       LDA    $E1     
       CMP    #$14    
       BNE    LF0E5   
       LDA    #$00    
       STA    $E0     
LF0E5: LDA    #$08    
       STA    AUDC1   
       LDA    #$09    
       CLC            
       ADC    $E1     
       STA    AUDF1   
       LDA    #$0B    
       STA    AUDV1   
LF0F4: STA    WSYNC   
       CPX    #$03    
       BNE    LF119   
       LDA    $E1     
       CMP    #$3C    
       BNE    LF104   
       LDA    #$00    
       STA    $E0     
LF104: LDA    #$04    
       STA    AUDC1   
       LDA    $E1     
       ROL            
       EOR    #$B5    
       AND    #$65    
       ROL            
       CLC            
       ADC    #$19    
       STA    AUDF1   
       LDA    #$0C    
       STA    AUDV1   
LF119: STA    WSYNC   
       CPX    #$04    
       BNE    LF135   
       LDA    $E1     
       CMP    #$05    
       BNE    LF129   
       LDA    #$00    
       STA    $E0     
LF129: LDA    #$0A    
       STA    AUDC1   
       LDA    #$0C    
       STA    AUDF1   
       LDA    #$0F    
       STA    AUDV1   
LF135: STA    WSYNC   
       CPX    #$05    
       BNE    LF155   
       LDA    $9B     
       CMP    #$01    
       BEQ    LF149   
       CMP    #$08    
       BEQ    LF149   
       LDA    #$00    
       STA    $E0     
LF149: LDA    #$03    
       STA    AUDC1   
       LDA    #$17    
       STA    AUDF1   
       LDA    #$09    
       STA    AUDV1   
LF155: STA    WSYNC   
       LDX    $E0     
       CPX    #$00    
       BNE    LF161   
       LDA    #$00    
       STA    AUDV1   
LF161: STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDX    #$04    
       STA    WSYNC   
       JSR    LF012   
       STA    WSYNC   
       DEX            
       STA    WSYNC   
       JSR    LF012   
       STA    WSYNC   
       DEX            
       STA    WSYNC   
       JSR    LF012   
       STA    WSYNC   
       DEX            
       STA    WSYNC   
       JSR    LF012   
       STA    WSYNC   
       DEX            
       STA    WSYNC   
       JSR    LF012   
       STA    WSYNC   
       LDA    $9B     
       LDX    #$00    
       CMP    #$08    
       BEQ    LF1A1   
       LDX    #$01    
       CMP    #$01    
       BEQ    LF1A1   
       JMP    LF1AE   
LF1A1: LDA    #$05    
       STA    $E0     
       LDA    $EA     
       ROR            
       EOR    $EA     
       STA    $EA     
       STA    HMM0,X  
LF1AE: STA    WSYNC   
       STA    HMOVE   
LF1B2: LDA    INTIM   
       BNE    LF1B2   
       LDX    $D9     
       INX            
       STX    $D9     
       CPX    #$0D    
       BEQ    LF1CA   
       LDY    #$BF    
LF1C2: STA    WSYNC   
       DEY            
       BNE    LF1C2   
       JMP    LF563   
LF1CA: LDX    #$0D    
       DEX            
       STX    $D9     
       LDA    #$00    
       STA    WSYNC   
       STA    VBLANK  
       LDY    #$C0    
       JSR    LF213   
       JSR    LF2F6   
       JSR    LF35F   
       JSR    LF2F6   
       JSR    LF35F   
       JSR    LF2F6   
       JSR    LF35F   
       JSR    LF2F6   
       JSR    LF35F   
       JSR    LF3C7   
       JSR    LF35F   
       JSR    LF2F6   
       JSR    LF35F   
       JSR    LF2F6   
       JSR    LF35F   
       JSR    LF2F6   
       JSR    LF35F   
       JSR    LF2F6   
       JSR    LF3F9   
       JMP    LF4CE   
LF213: LDA    #$00    
       STA    COLUBK  
       LDA    $99     
       CPY    $98     
       BEQ    LF21F   
       LDA    #$00    
LF21F: STA    ENABL   
       LDA    #$00    
       STA    HMP0    
       STA    HMP1    
       STA    HMM1    
       STA    HMBL    
       LDA    $DA     
       STA    COLUP0  
       DEY            
       LDA    $99     
       STA    WSYNC   
       CPY    $98     
       BEQ    LF23A   
       LDA    #$00    
LF23A: STA    ENABL   
       LDA    #$30    
       STA    NUSIZ0  
       LDA    #$FF    
       STA    ENAM0   
       DEY            
       LDA    $99     
       STA    WSYNC   
       CPY    $98     
       BEQ    LF24F   
       LDA    #$00    
LF24F: STA    ENABL   
       DEY            
       LDA    $99     
       STA    WSYNC   
       CPY    $98     
       BEQ    LF25C   
       LDA    #$00    
LF25C: STA    ENABL   
       DEY            
       LDA    #$D0    
       STA    HMM0    
       LDA    $99     
       STA    WSYNC   
       STA    HMOVE   
       CPY    $98     
       BEQ    LF26F   
       LDA    #$00    
LF26F: STA    ENABL   
       LDA    #$10    
       STA    NUSIZ0  
       DEY            
       LDA    #$10    
       STA    HMM0    
       LDA    $99     
       STA    WSYNC   
       STA    HMOVE   
       CPY    $98     
       BEQ    LF286   
       LDA    #$00    
LF286: STA    ENABL   
       LDA    #$20    
       STA    NUSIZ0  
       DEY            
       LDA    $99     
       STA    WSYNC   
       CPY    $98     
       BEQ    LF297   
       LDA    #$00    
LF297: STA    ENABL   
       DEY            
       LDA    #$F0    
       STA    HMM0    
       LDA    $99     
       STA    WSYNC   
       STA    HMOVE   
       CPY    $98     
       BEQ    LF2AA   
       LDA    #$00    
LF2AA: STA    ENABL   
       LDA    #$10    
       STA    NUSIZ0  
       DEY            
       LDA    $99     
       STA    WSYNC   
       CPY    $98     
       BEQ    LF2BB   
       LDA    #$00    
LF2BB: STA    ENABL   
       DEY            
       LDA    $99     
       STA    WSYNC   
       CPY    $98     
       BEQ    LF2C8   
       LDA    #$00    
LF2C8: STA    ENABL   
       DEY            
       LDA    $99     
       STA    WSYNC   
       CPY    $98     
       BEQ    LF2D5   
       LDA    #$00    
LF2D5: STA    ENABL   
       DEY            
       LDA    $99     
       STA    WSYNC   
       CPY    $98     
       BEQ    LF2E2   
       LDA    #$00    
LF2E2: STA    ENABL   
       LDA    #$00    
       STA    ENAM0   
       DEY            
       STA    HMM0    
       LDA    #$00    
       STA    $97     
       LDA    #$08    
       STA    $9A     
       STA    WSYNC   
       RTS            

LF2F6: LDA    #$02    
       STA    COLUBK  
       LDA    $99     
       CPY    $98     
       BEQ    LF302   
       LDA    #$00    
LF302: STA    ENABL   
       DEY            
       LDX    #$0B    
       LDA    $9A     
       CMP    $9B     
       BEQ    LF310   
       JMP    LF343   
LF310: LDA    $B8     
       CLC            
       ADC    #$02    
       AND    #$06    
       STA    $B9     
       LDA    $B8     
       AND    #$F0    
       ORA    $B9     
       STA    $B8     
       STA    WSYNC   
       DEX            
       LDA    $99     
       CPY    $98     
       BEQ    LF32C   
       LDA    #$00    
LF32C: STA    ENABL   
       LDA    $A0,X   
       STA    GRP0    
       LDA    $B8     
       STA    COLUP0  
       DEY            
       CPX    #$00    
       BNE    LF310   
       LDX    $9A     
       DEX            
       STX    $9A     
       STA    WSYNC   
       RTS            

LF343: STA    WSYNC   
       LDA    $99     
       CPY    $98     
       BEQ    LF34D   
       LDA    #$00    
LF34D: STA    ENABL   
       LDA    #$00    
       STA    GRP0    
       DEY            
       DEX            
       BNE    LF343   
       LDX    $9A     
       DEX            
       STX    $9A     
       STA    WSYNC   
       RTS            

LF35F: LDA    #$00    
       STA    COLUBK  
       LDA    $99     
       CPY    $98     
       BEQ    LF36B   
       LDA    #$00    
LF36B: STA    ENABL   
       DEY            
       STA    WSYNC   
       LDA    $99     
       CPY    $98     
       BEQ    LF378   
       LDA    #$00    
LF378: STA    ENABL   
       LDX    $97     
       LDA    $87,X   
       STA    PF1     
       LDA    $8F,X   
       STA    PF2     
       DEY            
       STA    WSYNC   
       LDA    $99     
       CPY    $98     
       BEQ    LF38F   
       LDA    #$00    
LF38F: STA    ENABL   
       DEY            
       STA    WSYNC   
       LDA    $99     
       CPY    $98     
       BEQ    LF39C   
       LDA    #$00    
LF39C: STA    ENABL   
       DEY            
       STA    WSYNC   
       LDA    $99     
       CPY    $98     
       BEQ    LF3A9   
       LDA    #$00    
LF3A9: STA    ENABL   
       DEY            
       STA    WSYNC   
       LDA    $99     
       CPY    $98     
       BEQ    LF3B6   
       LDA    #$00    
LF3B6: STA    ENABL   
       LDX    #$00    
       STX    PF1     
       STX    PF2     
       LDX    $97     
       INX            
       STX    $97     
       DEY            
       STA    WSYNC   
       RTS            

LF3C7: LDA    #$90    
       STA    COLUBK  
       LDA    $99     
       CPY    $98     
       BEQ    LF3D3   
       LDA    #$00    
LF3D3: STA    ENABL   
       LDA    #$00    
       STA    GRP1    
       LDA    $CC     
       STA    COLUP1  
       DEY            
       LDX    #$05    
LF3E0: STA    WSYNC   
       DEX            
       LDA    $99     
       CPY    $98     
       BEQ    LF3EB   
       LDA    #$00    
LF3EB: STA    ENABL   
       LDA    $AB,X   
       STA    GRP1    
       DEY            
       CPX    #$00    
       BNE    LF3E0   
       STA    WSYNC   
       RTS            

LF3F9: LDA    #$00    
       STA    COLUBK  
       LDA    $99     
       CPY    $98     
       BEQ    LF405   
       LDA    #$00    
LF405: STA    ENABL   
       LDA    $DB     
       STA    COLUP1  
       DEY            
       LDA    #$D0    
       STA    HMM1    
       LDA    $99     
       STA    WSYNC   
       STA    HMOVE   
       CPY    $98     
       BEQ    LF41C   
       LDA    #$00    
LF41C: STA    ENABL   
       LDA    #$10    
       STA    NUSIZ1  
       LDA    #$FF    
       STA    ENAM1   
       DEY            
       LDA    $99     
       STA    WSYNC   
       CPY    $98     
       BEQ    LF431   
       LDA    #$00    
LF431: STA    ENABL   
       DEY            
       LDA    $99     
       STA    WSYNC   
       CPY    $98     
       BEQ    LF43E   
       LDA    #$00    
LF43E: STA    ENABL   
       DEY            
       LDA    $99     
       STA    WSYNC   
       CPY    $98     
       BEQ    LF44B   
       LDA    #$00    
LF44B: STA    ENABL   
       DEY            
       LDA    #$10    
       STA    HMM1    
       LDA    $99     
       STA    WSYNC   
       STA    HMOVE   
       CPY    $98     
       BEQ    LF45E   
       LDA    #$00    
LF45E: STA    ENABL   
       LDA    #$20    
       STA    NUSIZ1  
       DEY            
       LDA    $99     
       STA    WSYNC   
       CPY    $98     
       BEQ    LF46F   
       LDA    #$00    
LF46F: STA    ENABL   
       DEY            
       LDA    #$F0    
       STA    HMM1    
       LDA    $99     
       STA    WSYNC   
       STA    HMOVE   
       CPY    $98     
       BEQ    LF482   
       LDA    #$00    
LF482: STA    ENABL   
       LDA    #$10    
       STA    NUSIZ1  
       DEY            
       LDA    #$30    
       STA    HMM1    
       LDA    $99     
       STA    WSYNC   
       STA    HMOVE   
       CPY    $98     
       BEQ    LF499   
       LDA    #$00    
LF499: STA    ENABL   
       LDA    #$30    
       STA    NUSIZ1  
       DEY            
       LDA    $99     
       STA    WSYNC   
       CPY    $98     
       BEQ    LF4AA   
       LDA    #$00    
LF4AA: STA    ENABL   
       DEY            
       LDA    $99     
       STA    WSYNC   
       CPY    $98     
       BEQ    LF4B7   
       LDA    #$00    
LF4B7: STA    ENABL   
       DEY            
       LDA    $99     
       STA    WSYNC   
       CPY    $98     
       BEQ    LF4C4   
       LDA    #$00    
LF4C4: STA    ENABL   
       LDA    #$00    
       STA    ENAM1   
       DEY            
       STA    WSYNC   
       RTS            

LF4CE: LDA    #$00    
       STA    ENABL   
       STA    GRP0    
       STA    GRP1    
       STA    COLUBK  
       LDA    #$01    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$00    
       STA    COLUP0  
       STA    COLUP1  
       STA    RESP0   
       STA    RESP1   
       LDA    #$F0    
       STA    HMP0    
       LDA    #$00    
       STA    HMP1    
       STA    REFP0   
       STA    WSYNC   
       STA    HMOVE   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDY    #$8A    
       LDA    #$04    
       STA    COLUBK  
       STA    WSYNC   
       LDY    #$00    
       LDA    $D6     
       CMP    #$00    
       BNE    LF532   
LF50E: STA    WSYNC   
       LDA    ($B0),Y 
       STA    GRP0    
       LDA    ($B2),Y 
       STA    GRP1    
       LDA    ($B6),Y 
       TAX            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       LDA    $80     
       LDA    ($B4),Y 
       STA    GRP0    
       STX    GRP1    
       INY            
       CPY    #$08    
       BNE    LF50E   
       JMP    LF54F   
LF532: STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       LDX    #$03    
LF53C: DEX            
       NOP            
       BNE    LF53C   
       NOP            
       LDA    ($D2),Y 
       TAX            
       LDA    ($D4),Y 
       STX    GRP0    
       STA    GRP1    
       INY            
       CPY    #$08    
       BNE    LF532   
LF54F: STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    COLUBK  
LF563: STA    WSYNC   
       LDA    $9E     
       BNE    LF5C8   
       CLC            
       LDA    $CF     
       ADC    #$01    
       STA    $CF     
       LDA    $C4     
       ADC    #$00    
       STA    $C4     
       LDA    #$03    
       STA    $9E     
       LDX    #$03    
       LDA    $9F     
       SEC            
       SBC    #$0A    
       STA    WSYNC   
       BCC    LF58D   
       LDX    #$07    
       SBC    #$0A    
       BCC    LF58D   
       LDX    #$0F    
LF58D: STX    $C1     
       LDY    #$04    
       LDA    $EA     
LF593: DEY            
       STA    $C0     
       AND    $C1     
       TAX            
       LDA    LFF5E,X 
       STA.wy $0087,Y 
       STA.wy $0093,Y 
       LDA    $C0     
       ROR            
       STA    $C0     
       AND    $C1     
       TAX            
       LDA    LFF5E,X 
       STA.wy $008B,Y 
       STA.wy $008F,Y 
       LDA    $C0     
       ROR            
       STA    $C0     
       CPY    #$00    
       BNE    LF593   
       LDX    $9F     
       INX            
       STX    $9F     
       LDA    $78     
       STA    $D7     
       JMP    LF664   
LF5C8: LDA    $9B     
       BNE    LF610   
       LDA    $EA     
       TAX            
       AND    #$04    
       STA    $C2     
       TXA            
       AND    #$08    
       STA    $C3     
       TXA            
       AND    #$03    
       CMP    #$00    
       BEQ    LF5EA   
       CMP    #$01    
       BEQ    LF5F1   
       CMP    #$02    
       BEQ    LF5F8   
       JMP    LF5FF   
LF5EA: LDA    #$03    
       STA    $9B     
       JMP    LF606   
LF5F1: LDA    #$04    
       STA    $9B     
       JMP    LF606   
LF5F8: LDA    #$05    
       STA    $9B     
       JMP    LF606   
LF5FF: LDA    #$06    
       STA    $9B     
       JMP    LF606   
LF606: LDX    #$04    
       LDA    $C2     
       BNE    LF60E   
       LDX    #$94    
LF60E: STX    $82     
LF610: STA    WSYNC   
       LDA    $C6     
       BEQ    LF648   
       LDX    $C6     
       DEX            
       STX    $C6     
       CPX    #$01    
       BNE    LF624   
       LDX    $C7     
       DEX            
       STX    $C7     
LF624: LDA    $EA     
       ORA    #$80    
       ROR            
       EOR    #$8A    
       STA    AUDC0   
       ROR            
       EOR    #$0C    
       STA    AUDF0   
       LDA    #$0C    
       STA    AUDV0   
       LDA    $EA     
       ROR            
       EOR    #$6B    
       STA    $EA     
       AND    #$3F    
       ADC    #$30    
       STA    $84     
       STA    $85     
       JMP    LF650   
LF648: LDA    #$00    
       STA    AUDC0   
       STA    AUDF0   
       STA    AUDV0   
LF650: STA    WSYNC   
       LDA    $C6     
       CMP    #$01    
       BNE    LF660   
       LDA    #$02    
       STA    $D8     
       LDA    #$78    
       STA    $D7     
LF660: STA    WSYNC   
       STA    WSYNC   
LF664: LDX    $EA     
       INX            
       STX    $EA     
       STA    WSYNC   
       LDA    INPT4   
       AND    #$80    
       BEQ    LF675   
       LDA    #$00    
       STA    $DF     
LF675: LDX    $BD     
       BEQ    LF67C   
       DEX            
       STX    $BD     
LF67C: LDX    $BD     
       BNE    LF682   
       STX    $98     
LF682: STA    WSYNC   
       LDA    $DF     
       CMP    #$FF    
       BEQ    LF6B9   
       LDA    INPT4   
       AND    #$80    
       BNE    LF6B9   
       LDA    $BD     
       BNE    LF6B9   
       LDA    $C6     
       BNE    LF6B9   
       STA    $E1     
       LDA    #$01    
       STA    $E0     
       LDA    #$B5    
       LDY    #$00    
       LDX    $9D     
       BEQ    LF6AA   
       LDA    #$1F    
       LDY    #$01    
LF6AA: STA    $98     
       STY    $BE     
       LDA    $84,X   
       CLC            
       ADC    #$04    
       STA    $86     
       LDA    #$78    
       STA    $BD     
LF6B9: STA    WSYNC   
       LDA    SWCHB   
       AND    #$01    
       BNE    LF6C5   
       JMP    LF000   
LF6C5: LDA    SWCHA   
       AND    #$10    
       BNE    LF6CE   
       STA    $9D     
LF6CE: LDA    SWCHA   
       AND    #$20    
       BNE    LF6D9   
       LDA    #$01    
       STA    $9D     
LF6D9: STA    WSYNC   
       LDA    SWCHA   
       AND    #$80    
       BNE    LF6F8   
       CLC            
       LDA    $CD     
       ADC    #$99    
       STA    $CD     
       LDX    $9D     
       LDA    $84,X   
       ADC    #$01    
       SEC            
       CMP    #$89    
       BCC    LF6F6   
       LDA    #$89    
LF6F6: STA    $84,X   
LF6F8: LDA    SWCHA   
       AND    #$40    
       BNE    LF715   
       CLC            
       LDA    $CD     
       SBC    #$99    
       STA    $CD     
       LDX    $9D     
       LDA    $84,X   
       SBC    #$01    
       SEC            
       CMP    #$11    
       BCS    LF713   
       LDA    #$11    
LF713: STA    $84,X   
LF715: STA    WSYNC   
       LDA    #$8A    
       LDX    $9D     
       STA    $DA,X   
       TXA            
       EOR    #$01    
       TAX            
       LDA    #$82    
       STA    $DA,X   
       LDA    INPT4   
       AND    #$80    
       BNE    LF73B   
       LDA    $C6     
       BNE    LF73B   
       LDA    $EA     
       ROR            
       EOR    $EA     
       ROR            
       ROR            
       EOR    #$95    
       STA    $EA     
       TAX            
LF73B: STA    WSYNC   
       LDA    #$00    
       STA    $C5     
       LDA    $C2     
       BNE    LF766   
       CLC            
       LDA    $CE     
       SBC    $CF     
       STA    $CE     
       LDA    $82     
       SBC    $C4     
       STA    $82     
       SEC            
       CMP    #$04    
       BCS    LF75F   
       LDA    #$94    
       STA    $82     
       LDA    #$01    
       STA    $C5     
LF75F: LDA    #$00    
       STA    REFP0   
       JMP    LF784   
LF766: CLC            
       LDA    $CE     
       ADC    $CF     
       STA    $CE     
       LDA    $82     
       ADC    $C4     
       STA    $82     
       SEC            
       CMP    #$98    
       BCC    LF780   
       LDA    #$04    
       STA    $82     
       LDA    #$01    
       STA    $C5     
LF780: LDA    #$08    
       STA    REFP0   
LF784: STA    WSYNC   
       LDA    $C5     
       BEQ    LF7B3   
       LDA    $9B     
       CMP    #$08    
       BEQ    LF7A8   
       CMP    #$01    
       BEQ    LF7A8   
       LDA    $C3     
       BNE    LF7A0   
       LDX    $9B     
       DEX            
       STX    $9B     
       JMP    LF7B3   
LF7A0: LDX    $9B     
       INX            
       STX    $9B     
       JMP    LF7B3   
LF7A8: LDA    #$00    
       STA    $9B     
       LDA    #$5A    
       STA    $C6     
       JMP    LF7B3   
LF7B3: LDA    #$00    
       STA    $C5     
       STA    WSYNC   
       LDX    $CB     
       DEX            
       STX    $CB     
       BNE    LF7E7   
       LDA    $CA     
       BEQ    LF7CB   
       LDA    #$00    
       STA    $CA     
       JMP    LF7E7   
LF7CB: LDA    $EA     
       AND    #$07    
       CMP    #$07    
       BEQ    LF7E2   
       CMP    #$01    
       BEQ    LF7E2   
       CMP    #$03    
       BEQ    LF7E2   
       LDA    #$00    
       STA    $CA     
       JMP    LF7E7   
LF7E2: STA    $CA     
       JMP    LF7E7   
LF7E7: STA    WSYNC   
       LDA    #$00    
       STA    $AF     
       STA    $AE     
       STA    $AD     
       STA    $AC     
       LDA    $CA     
       BEQ    LF807   
       LDA    #$3C    
       STA    $AF     
       LDA    #$FF    
       STA    $AE     
       LDA    #$66    
       STA    $AD     
       LDA    #$24    
       STA    $AC     
LF807: LDX    $83     
       INX            
       INX            
       SEC            
       CPX    #$9B    
       BCC    LF812   
       LDX    #$00    
LF812: STX    $83     
       STA    WSYNC   
       LDA    $D8     
       BEQ    LF85D   
       CMP    #$01    
       BNE    LF83F   
       LDA    $D4     
       CLC            
       ADC    #$08    
       CMP    #$50    
       BNE    LF836   
       LDA    $D2     
       CLC            
       ADC    #$08    
       CMP    #$50    
       BNE    LF832   
       LDA    #$00    
LF832: STA    $D2     
       LDA    #$00    
LF836: STA    $D4     
       LDA    #$00    
       STA    $D8     
       JMP    LF85D   
LF83F: LDA    $D4     
       SEC            
       SBC    #$08    
       CMP    #$F8    
       BNE    LF857   
       LDA    $D2     
       SEC            
       SBC    #$08    
       CMP    #$F8    
       BNE    LF853   
       LDA    #$48    
LF853: STA    $D2     
       LDA    #$48    
LF857: STA    $D4     
       LDA    #$00    
       STA    $D8     
LF85D: STA    WSYNC   
       LDA    SWCHB   
       AND    #$CA    
       CMP    #$80    
       BNE    LF876   
       LDX    #$00    
       STX    $A1     
LF86C: LDA    LFEB2,X 
       STA    $A1,X   
       INX            
       CPX    CTRLPF  
       BNE    LF86C   
LF876: STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDX    #$00    
       LDA    $D7     
       BEQ    LF889   
       LDX    #$01    
       LDY    $D7     
       DEY            
       STY    $D7     
LF889: STX    $D6     
       STA    WSYNC   
       LDA    $BE     
       BNE    LF89B   
       LDA    $98     
       SEC            
       SBC    #$03    
       STA    $98     
       JMP    LF8A2   
LF89B: LDA    $98     
       CLC            
       ADC    #$03    
       STA    $98     
LF8A2: LDA    $98     
       SEC            
       CMP    #$BF    
       BCS    LF8B0   
       CMP    #$12    
       BCC    LF8B0   
       JMP    LF8B6   
LF8B0: LDA    #$00    
       STA    $BD     
       STA    $98     
LF8B6: STA    WSYNC   
       LDY    $D0     
       DEY            
       STY    $D0     
       BNE    LF8E3   
       LDA    $8A     
       ROL            
       LDA    $8A     
       ROL            
       STA    $8A     
       LDA    $8B     
       ROR            
       LDA    $8B     
       ROR            
       STA    $8B     
       LDA    $92     
       ROL            
       LDA    $92     
       ROL            
       STA    $92     
       LDA    $93     
       ROR            
       LDA    $93     
       ROR            
       STA    $93     
       LDY    #$0F    
       STY    $D0     
LF8E3: STA    WSYNC   
       LDY    $D1     
       DEY            
       STY    $D1     
       BNE    LF90D   
       LDA    $EA     
       AND    #$0F    
       TAX            
       LDA    $EA     
       AND    #$10    
       TAY            
       LDA    $87,X   
       CPY    #$00    
       BNE    LF903   
       ROR            
       LDA    $87,X   
       ROR            
       JMP    LF907   
LF903: ROL            
       LDA    $87,X   
       ROL            
LF907: STA    $87,X   
       LDY    #$19    
       STY    $D1     
LF90D: STA    WSYNC   
       STA    WSYNC   
       LDA    $C7     
       BNE    LF91D   
       STA    $CA     
       STA    $9B     
       STA    $99     
       STA    $E0     
LF91D: STA    WSYNC   
       LDY    #$01    
       LDA    $C8     
       BEQ    LF938   
       CMP    #$08    
       BEQ    LF938   
       CMP    #$01    
       BEQ    LF938   
       CMP    #$05    
       BEQ    LF93B   
       CMP    #$04    
       BEQ    LF93B   
       JMP    LF941   
LF938: JMP    LF97D   
LF93B: NOP            
       LDX    #$00    
       JMP    LF951   
LF941: LDA    $B6     
       CLC            
       ADC    #$28    
       STA    $B6     
       SEC            
       CMP    #$29    
       BCC    LF97D   
       LDX    #$00    
       STX    $B6     
LF951: LDA    $B4     
       CLC            
       ADC    #$08    
       STA    $B4     
       SEC            
       CMP    #$49    
       BCC    LF97D   
       STX    $B4     
       LDA    $B2     
       CLC            
       ADC    #$08    
       STA    $B2     
       LDY    #$00    
       SEC            
       CMP    #$49    
       BCC    LF97D   
       STX    $B2     
       LDA    $B0     
       CLC            
       ADC    #$08    
       STA    $B0     
       SEC            
       CMP    #$49    
       BCC    LF97D   
       STX    $B0     
LF97D: CPY    #$01    
       BNE    LF983   
       STA    WSYNC   
LF983: LDA    #$00    
       STA    $C8     
       STA    WSYNC   
       LDA    CXP1FB  
       AND    #$40    
       BEQ    LF9F3   
       LDY    $CA     
       CPY    #$03    
       BNE    LF9BE   
       STY    $9E     
       LDA    #$00    
       STA    $9F     
       STA    $87     
       STA    $88     
       STA    $89     
       STA    $8A     
       STA    $8B     
       STA    $8C     
       STA    $8D     
       STA    $8E     
       STA    $8F     
       STA    $90     
       STA    $91     
       STA    $92     
       STA    $93     
       STA    $94     
       STA    $95     
       STA    $96     
       JMP    LF9F3   
LF9BE: CPY    #$01    
       BNE    LF9E2   
       LDA    $B2     
       CLC            
       ADC    #$08    
       STA    $B2     
       SEC            
       CMP    #$49    
       BCC    LF9E2   
       LDA    #$00    
       STA    $B2     
       LDA    $B0     
       CLC            
       ADC    #$08    
       STA    $B0     
       SEC            
       CMP    #$49    
       BCC    LF9E2   
       LDA    #$00    
       STA    $B0     
LF9E2: CPY    #$07    
       BNE    LF9F3   
       LDX    $C7     
       INX            
       STX    $C7     
       LDA    #$01    
       STA    $D8     
       LDA    #$78    
       STA    $D7     
LF9F3: STA    WSYNC   
       LDA    CXP1FB  
       AND    #$40    
       BEQ    LFA05   
       LDA    #$00    
       STA    $CA     
       STA    $E1     
       LDA    #$03    
       STA    $E0     
LFA05: LDA    $CA     
       CMP    #$07    
       BNE    LFA10   
       LDY    #$66    
       JMP    LFA1B   
LFA10: CMP    #$01    
       BNE    LFA19   
       LDY    #$33    
       JMP    LFA1B   
LFA19: LDY    #$A4    
LFA1B: STY    $CC     
       LDA    CXM0FB  
       AND    #$40    
       BEQ    LFA27   
       LDA    #$5A    
       STA    $C6     
LFA27: LDA    CXM1FB  
       AND    #$40    
       BEQ    LFA31   
       LDA    #$5A    
       STA    $C6     
LFA31: STA    WSYNC   
       LDA    CXBLPF  
       AND    #$80    
       BEQ    LFA5C   
       LDA    $BE     
       BNE    LFA47   
       LDA    $98     
       CLC            
       ADC    #$06    
       STA    $98     
       JMP    LFA4E   
LFA47: LDA    $98     
       SEC            
       SBC    #$06    
       STA    $98     
LFA4E: LDA    $BE     
       EOR    #$01    
       STA    $BE     
       LDA    #$04    
       STA    $E0     
       LDA    #$00    
       STA    $E1     
LFA5C: LDA    CXP0FB  
       AND    #$40    
       BEQ    LFA82   
       LDA    #$02    
       STA    $E0     
       LDA    #$00    
       STA    $E1     
       LDA    $9B     
       STA    $C8     
       LDA    #$00    
       STA    $9B     
       STA    $BD     
       LDX    $9E     
       DEX            
       STX    $9E     
       LDA    $EA     
       AND    #$0F    
       TAX            
       LDA    #$00    
       STA    $87,X   
LFA82: STA    WSYNC   
       JMP    LF08D   
LFA87: LDA    #$00    
       STA    AUDV0   
       STA    AUDV1   
       STA    REFP0   
       STA    REFP1   
       LDA    INPT4   
       AND    #$80    
       BNE    LFAA9   
       JSR    LFE40   
       LDA    #$00    
       STA    PF1     
       STA    PF0     
       STA    PF2     
       LDA    #$01    
       STA    $DE     
       JMP    LF08D   
LFAA9: LDA    #$FF    
       STA    $CE     
       STA    $D0     
       STA    $D2     
       STA    $D4     
       STA    $D6     
       STA    $D8     
       STA    $DA     
       STA    $DC     
       LDA    #$6E    
       STA    $CD     
       LDA    #$7F    
       STA    $CF     
       LDA    #$90    
       STA    $D1     
       LDA    #$A1    
       STA    $D3     
       LDA    #$B2    
       STA    $D5     
       LDA    #$C3    
       STA    $D7     
       LDA    #$D4    
       STA    $D9     
       LDA    #$E5    
       STA    $DB     
       LDX    $E1     
       DEX            
       STX    $E1     
       BNE    LFB02   
       LDX    $E9     
       INX            
       CPX    #$17    
       BNE    LFAEB   
       LDX    #$00    
LFAEB: STX    $E9     
       TXA            
       SEC            
       SBC    #$09    
       BCS    LFAF5   
       LDA    #$00    
LFAF5: SEC            
       CMP    #$07    
       BCC    LFAFC   
       LDA    #$07    
LFAFC: STA    $E0     
       LDA    #$0D    
       STA    $E1     
LFB02: LDX    $EA     
       INX            
       STX    $EA     
       STA    WSYNC   
       STA    HMOVE   
LFB0B: LDA    INTIM   
       BNE    LFB0B   
       LDA    #$00    
       STA    WSYNC   
       STA    VBLANK  
       LDX    $DF     
       INX            
       STX    $DF     
       CPX    #$0D    
       BEQ    LFB29   
       LDY    #$BF    
LFB21: STA    WSYNC   
       DEY            
       BNE    LFB21   
       JMP    LFE34   
LFB29: LDX    #$0D    
       DEX            
       STX    $DF     
       STA    WSYNC   
       STA    WSYNC   
       LDX    #$07    
LFB34: STA    WSYNC   
       DEX            
       BNE    LFB34   
       LDA    $DD     
       TAX            
       AND    #$07    
       CLC            
       ADC    #$01    
       STA    $DD     
       TXA            
       AND    #$F0    
       ORA    $DD     
       STA    $DD     
       STA    COLUPF  
       STA    WSYNC   
       LDA    #$01    
       STA    CTRLPF  
       LDY    #$00    
       STY    COLUBK  
       STA    WSYNC   
       STY    PF0     
LFB5A: LDA    LFEBC,Y 
       STA    PF2     
       LDX    #$06    
LFB61: DEX            
       BNE    LFB61   
       LDA    #$00    
       STA    PF2     
       STA    WSYNC   
       STA    PF2     
       STA    WSYNC   
       LDA    #$00    
       STA    PF2     
       LDX    #$07    
LFB74: DEX            
       BNE    LFB74   
       LDA    LFEDE,Y 
       STA    PF2     
       STA    WSYNC   
       LDA    #$00    
       STA    PF2     
       STA    WSYNC   
       INY            
       CPY    #$22    
       BNE    LFB5A   
       STA    PF1     
       STA    PF2     
       LDA    #$03    
       STA    NUSIZ0  
       LDA    #$01    
       STA    NUSIZ1  
       LDX    #$05    
LFB97: STA    WSYNC   
       DEX            
       BNE    LFB97   
       STA    WSYNC   
       NOP            
       NOP            
       NOP            
       LDA    GRP0    
       LDA    #$10    
       STA    HMP0    
       LDA    #$20    
       STA    HMP1    
       LDA    #$C0    
       STA    HMM0    
       LDA    #$40    
       STA    HMM1    
       STA    RESP0   
       STA    RESP1   
       NOP            
       NOP            
       NOP            
       STA    RESM0   
       STA    RESM1   
       STA    RESBL   
       STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    ENAM0   
       STA    ENAM1   
       STA    WSYNC   
       LDA    #$0C    
       STA    COLUP0  
       STA    COLUP1  
       STA    WSYNC   
       LDX    #$00    
       LDY    $E0     
LFBDA: LDA    ($CD),Y 
       STA    $87,X   
       INY            
       INX            
       CPX    #$0A    
       BNE    LFBDA   
       STA    WSYNC   
       LDX    #$00    
       LDY    $E0     
LFBEA: LDA    ($CF),Y 
       STA    $91,X   
       INY            
       INX            
       CPX    #$0A    
       BNE    LFBEA   
       STA    WSYNC   
       LDX    #$00    
       LDY    $E0     
LFBFA: LDA    ($D1),Y 
       STA    $9B,X   
       INY            
       INX            
       CPX    #$0A    
       BNE    LFBFA   
       STA    WSYNC   
       LDX    #$00    
       LDY    $E0     
LFC0A: LDA    ($D3),Y 
       STA    $A5,X   
       INY            
       INX            
       CPX    #$0A    
       BNE    LFC0A   
       STA    WSYNC   
       LDX    #$00    
       LDY    $E0     
LFC1A: LDA    ($D5),Y 
       STA    $AF,X   
       INY            
       INX            
       CPX    #$0A    
       BNE    LFC1A   
       STA    WSYNC   
       LDX    #$00    
       LDY    $E0     
LFC2A: LDA    ($D7),Y 
       STA    $B9,X   
       INY            
       INX            
       CPX    #$0A    
       BNE    LFC2A   
       STA    WSYNC   
       LDX    #$00    
       LDY    $E0     
LFC3A: LDA    ($D9),Y 
       STA    $C3,X   
       INY            
       INX            
       CPX    #$0A    
       BNE    LFC3A   
       STA    WSYNC   
       LDX    #$00    
       LDY    $E0     
LFC4A: LDA    ($DB),Y 
       STA    $E2,X   
       INY            
       INX            
       CPX    #$07    
       BNE    LFC4A   
       LDA    #$00    
       STA    COLUPF  
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$00    
       STA    COLUBK  
       STA    ENAM0   
       STA    ENAM1   
       LDA    #$F0    
       STA    PF1     
       LDA    #$31    
       STA    CTRLPF  
       STA    WSYNC   
       LDA    $87     
       STA    GRP0    
       LDA    $91     
       STA    GRP1    
       LDA    $B9     
       STA    ENAM0   
       LDA    $C3     
       STA    ENAM1   
       LDY    $A5     
       LDX    $AF     
       LDA    $9B     
       STA    GRP0    
       STY    GRP1    
       STX    GRP0    
       LDA    #$00    
       STA    ENAM0   
       STA    ENAM1   
       STA    WSYNC   
       LDA    $88     
       STA    GRP0    
       LDA    $92     
       STA    GRP1    
       LDA    $BA     
       STA    ENAM0   
       LDA    $C4     
       STA    ENAM1   
       LDY    $A6     
       LDX    $B0     
       LDA    $9C     
       STA    GRP0    
       STY    GRP1    
       STX    GRP0    
       LDA    #$00    
       STA    ENAM0   
       STA    ENAM1   
       STA    WSYNC   
       LDA    $89     
       STA    GRP0    
       LDA    $93     
       STA    GRP1    
       LDA    $BB     
       STA    ENAM0   
       LDA    $C5     
       STA    ENAM1   
       LDY    $A7     
       LDX    $B1     
       LDA    $9D     
       STA    GRP0    
       STY    GRP1    
       STX    GRP0    
       LDA    #$00    
       STA    ENAM0   
       STA    ENAM1   
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       LDA    $E2     
       STA    COLUPF  
       STA    WSYNC   
       LDA    $8A     
       STA    GRP0    
       LDA    $94     
       STA    GRP1    
       LDA    $BC     
       STA    ENAM0   
       LDA    $C6     
       STA    ENAM1   
       LDY    $A8     
       LDX    $B2     
       LDA    $9E     
       STA    GRP0    
       STY    GRP1    
       STX    GRP0    
       LDA    #$00    
       STA    ENAM0   
       STA    ENAM1   
       STA    COLUPF  
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       LDA    $E3     
       STA    COLUPF  
       STA    WSYNC   
       LDA    $8B     
       STA    GRP0    
       LDA    $95     
       STA    GRP1    
       LDA    $BD     
       STA    ENAM0   
       LDA    $C7     
       STA    ENAM1   
       LDY    $A9     
       LDX    $B3     
       LDA    $9F     
       STA    GRP0    
       STY    GRP1    
       STX    GRP0    
       LDA    #$00    
       STA    ENAM0   
       STA    ENAM1   
       STA    COLUPF  
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       LDA    $E4     
       STA    COLUPF  
       STA    WSYNC   
       LDA    $8C     
       STA    GRP0    
       LDA    $96     
       STA    GRP1    
       LDA    $BE     
       STA    ENAM0   
       LDA    $C8     
       STA    ENAM1   
       LDY    $AA     
       LDX    $B4     
       LDA    $A0     
       STA    GRP0    
       STY    GRP1    
       STX    GRP0    
       LDA    #$00    
       STA    ENAM0   
       STA    ENAM1   
       STA    COLUPF  
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       LDA    $E5     
       STA    COLUPF  
       STA    WSYNC   
       LDA    $8D     
       STA    GRP0    
       LDA    $97     
       STA    GRP1    
       LDA    $BF     
       STA    ENAM0   
       LDA    $C9     
       STA    ENAM1   
       LDY    $AB     
       LDX    $B5     
       LDA    $A1     
       STA    GRP0    
       STY    GRP1    
       STX    GRP0    
       LDA    #$00    
       STA    ENAM0   
       STA    ENAM1   
       STA    COLUPF  
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       LDA    $E6     
       STA    COLUPF  
       STA    WSYNC   
       LDA    $8E     
       STA    GRP0    
       LDA    $98     
       STA    GRP1    
       LDA    $C0     
       STA    ENAM0   
       LDA    $CA     
       STA    ENAM1   
       LDY    $AC     
       LDX    $B6     
       LDA    $A2     
       STA    GRP0    
       STY    GRP1    
       STX    GRP0    
       LDA    #$00    
       STA    ENAM0   
       STA    ENAM1   
       STA    COLUPF  
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       LDA    $E7     
       STA    COLUPF  
       STA    WSYNC   
       LDA    $8F     
       STA    GRP0    
       LDA    $99     
       STA    GRP1    
       LDA    $C1     
       STA    ENAM0   
       LDA    $CB     
       STA    ENAM1   
       LDY    $AD     
       LDX    $B7     
       LDA    $A3     
       STA    GRP0    
       STY    GRP1    
       STX    GRP0    
       LDA    #$00    
       STA    ENAM0   
       STA    ENAM1   
       STA    COLUPF  
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       LDA    $E8     
       STA    COLUPF  
       STA    WSYNC   
       LDA    $90     
       STA    GRP0    
       LDA    $9A     
       STA    GRP1    
       LDA    $C2     
       STA    ENAM0   
       LDA    $CC     
       STA    ENAM1   
       LDY    $AE     
       LDX    $B8     
       LDA    $A4     
       STA    GRP0    
       STY    GRP1    
       STX    GRP0    
       LDA    #$00    
       STA    ENAM0   
       STA    ENAM1   
       STA    COLUPF  
       STA    WSYNC   
       LDA    #$00    
       STA    PF1     
       STA    GRP0    
       STA    GRP1    
LFE34: STA    WSYNC   
       LDY    #$1D    
LFE38: STA    WSYNC   
       DEY            
       BNE    LFE38   
       JMP    LF08D   
LFE40: LDA    #$20    
       STA    COLUBK  
       STA    $80     
       LDA    #$00    
       LDX    #$EA    
LFE4A: STA    VSYNC,X 
       DEX            
       CPX    #$7F    
       BNE    LFE4A   
       LDA    #$2E    
       STA    $DD     
       LDA    #$0F    
       STA    $D0     
       LDA    #$19    
       STA    $D1     
       LDA    #$0D    
       STA    $E1     
       LDA    #$A4    
       STA    $81     
       STA    COLUPF  
       LDA    #$E0    
       STA    $B8     
       LDA    #$15    
       STA    COLUP0  
       LDA    #$C4    
       STA    COLUP1  
       LDX    #$00    
       STX    COLUBK  
       STX    $D9     
       INX            
       STX    $C4     
       STX    $9D     
       STX    CTRLPF  
       LDA    #$03    
       STA    $9E     
       STA    $C7     
       LDA    #$18    
       STA    $D4     
       LDA    #$4C    
       STA    $84     
       STA    $85     
       LDA    #$FF    
       STA    $CB     
       STA    $DF     
       STA    $B1     
       STA    $B3     
       STA    $B5     
       STA    $B7     
       STA    $D3     
       STA    $D5     
       STA    $99     
       LDX    #$00    
LFEA6: LDA    LFF54,X 
       STA    $A1,X   
       INX            
       CPX    #$0B    
       BNE    LFEA6   
       RTS            

LFEB1: .byte $FF
LFEB2: .byte $24,$24,$7E,$81,$81,$18,$00,$24,$42,$00
LFEBC: .byte $1F,$33,$33,$1F,$33,$33,$1F,$00,$0C,$12,$33,$3F,$33,$33,$33,$00
       .byte $3C,$06,$03,$03,$03,$06,$3C,$00,$33,$33,$1B,$0F,$1B,$33,$33,$00
       .byte $00,$00
LFEDE: .byte $00,$00,$00,$FC,$C0,$C0,$F0,$C0,$C0,$C0,$00,$FC,$30,$30,$30,$30
       .byte $30,$FC,$00,$F8,$CC,$CC,$F8,$F0,$D8,$CC,$00,$FC,$C0,$C0,$F0,$C0
       .byte $C0,$FC,$18,$08,$2C,$24,$24,$34,$10,$18,$08,$18,$28,$08,$08,$08
       .byte $08,$3C,$18,$24,$24,$08,$08,$10,$20,$3C,$18,$24,$04,$18,$04,$04
       .byte $24,$18,$04,$0C,$14,$3C,$04,$04,$04,$04,$3C,$20,$20,$38,$04,$04
       .byte $24,$18,$18,$24,$20,$38,$24,$24,$24,$18,$3C,$04,$08,$08,$10,$10
       .byte $10,$10,$18,$24,$24,$18,$24,$24,$24,$18,$18,$24,$24,$1C,$04,$04
       .byte $24,$18,$F0,$F0,$60,$60
LFF54: .byte $01,$03,$06,$1E,$FC,$FF,$7E,$07,$03,$01
LFF5E: .byte $00,$C0,$18,$06,$70,$66,$C3,$1C,$CA,$D9,$D5,$AA,$BD,$EB,$DD,$F7
       .byte $CA,$AA,$AE,$C4,$A4,$A4,$C4,$00,$00,$00,$E8,$88,$8E,$8A,$8A,$8A
       .byte $EB,$75,$45,$45,$47,$45,$45,$75,$00,$00,$00,$04,$0C,$1D,$35,$7D
       .byte $C5,$85,$26,$55,$55,$75,$55,$55,$56,$00,$00,$00,$5C,$44,$D4,$55
       .byte $57,$56,$D4,$21,$22,$22,$23,$22,$22,$3A,$00,$00,$00,$3F,$60,$CE
       .byte $A8,$2E,$22,$2E,$33,$AA,$AA,$B3,$AA,$AA,$AB,$00,$00,$00,$80,$00
       .byte $BA,$AB,$AB,$AA,$BA,$02,$00,$00,$02,$00,$00,$02,$00,$00,$00,$00
       .byte $00,$00,$00,$02,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$02,$02,$02,$02,$02,$00,$00,$00,$00,$00,$00,$00,$42,$32
       .byte $36,$1A,$16,$16,$84,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$00,$F0
       .byte $00,$00
