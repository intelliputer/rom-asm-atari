; Disassembly of roms/UnknownActivision2_NTSC.bin
; Disassembled Tue Oct  6 15:24:48 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/UnknownActivision2_NTSC.bin
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
HMCLR   =  $2B
CXCLR   =  $2C
CXM0P   =  $30
CXM1P   =  $31
CXP0FB  =  $32
CXP1FB  =  $33
CXM0FB  =  $34
CXPPMM  =  $37
INPT4   =  $3C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296
LF1A9   =   $F1A9
LF3FF   =   $F3FF
LF7B1   =   $F7B1
LF85D   =   $F85D
LFD84   =   $FD84

       ORG $F000
LF000: LDY    #$9E    
       LDX    #$00    
       LDA    #$30    
       STA    CTRLPF  
       STA    WSYNC   
       JMP    LF0A5   
LF00D: LDA    $F8     
       AND    #$0F    
       STA    $83     
       LDX    $A2     
       STY    $82     
       LDY    $97     
       BNE    LF027   
       CMP    $8F     
       BNE    LF021   
       LDX    #$1C    
LF021: CMP    $F1     
       BNE    LF027   
       LDX    $BF     
LF027: STX    COLUPF  
       CMP    $AE     
       BNE    LF031   
       LDA    $BD     
       STA    $8C     
LF031: LDA    $83     
       CMP    $F3     
       BNE    LF03B   
       LDA    $AF     
       STA    $8A     
LF03B: LDX    $82     
       LDY    #$0A    
LF03F: STA    WSYNC   
LF041: LDA    $84     
       STA    PF0     
       LDA    $85     
       STA    PF1     
       LDA    ($8C),Y 
       STA    GRP0    
       LDA    ($8A),Y 
       STA    GRP1    
       LDA    $86     
       STA    PF2     
       LDA    $87     
       STA    PF0     
       LDA    $88     
       STA    PF1     
       LDA    $89     
       STA    PF2     
       CPX    $97     
       BNE    LF074   
       LDA    #$02    
       STA    ENABL   
       STA    ENAM0   
       DEX            
       DEY            
       BPL    LF03F   
       NOP            
       NOP            
       NOP            
       BMI    LF08A   
LF074: CPX    $A5     
       BNE    LF086   
       LDA    #$00    
       STA    ENAM0   
       STA    ENABL   
       DEY            
       BPL    LF041   
       NOP            
       NOP            
       NOP            
       BMI    LF08A   
LF086: DEX            
       DEY            
       BPL    LF03F   
LF08A: INY            
       STY    GRP0    
       STY    GRP1    
       STY    PF0     
       STY    PF1     
       STY    PF2     
       LDA    $82     
       SEC            
       SBC    #$0B    
       TAY            
       DEC    $F8     
       LDX    $F8     
       STX    WSYNC   
       STX    COLUBK  
       LDX    $99     
LF0A5: LDA    #$94    
       STA    $8C     
       STA    $8A     
       LDA    $C0,X   
       STA    $84     
       LDA    $C1,X   
       STA    $85     
       LDA    $C2,X   
       STA    $86     
       LDA    $C3,X   
       STA    $87     
       LDA    $C4,X   
       STA    $88     
       LDA    $C5,X   
       STA    $89     
       TXA            
       CLC            
       ADC    #$06    
       STA    $99     
       CMP    #$36    
       BEQ    LF0D0   
       JMP    LF00D   
LF0D0: LDA    #$FE    
       AND    $B0     
       STA    $B0     
       LDA    #$35    
       STA    CTRLPF  
       LDA    #$F0    
       STA    PF0     
       STA    ENAM0   
       STA    ENABL   
       LDA    #$0A    
       STA    COLUPF  
       STA    COLUP1  
       RTS            

LF0E9: LDX    #$08    
LF0EB: LDA    $90,X   
       TAY            
       AND    #$F0    
       LSR            
       STA    $82,X   
       TYA            
       AND    #$0F    
LF0F6: ASL            
       ASL            
       ASL            
       STA    $84,X   
       LDA    #$FF    
       STA    $83,X   
       STA    $85,X   
       DEX            
       DEX            
       DEX            
       DEX            
       BPL    LF0EB   
       LDA    #$88    
       STA    COLUP0  
       STA    COLUP1  
LF10D: JSR    LFE61   
       LDX    #$08    
       STA    WSYNC   
LF114: DEX            
       BNE    LF114   
       STA    RESP0   
       STA    RESP1   
       LDA    #$30    
       STA    HMP0    
       LDA    #$40    
       STA    HMP1    
       LDY    #$07    
       STY    $82     
       STA    WSYNC   
       STA    HMOVE   
LF12B: STA    WSYNC   
       LDA    ($84),Y 
       STA    GRP0    
       LDA    ($86),Y 
       STA    GRP1    
       LDA    ($88),Y 
       TAX            
       LDA    ($8A),Y 
       PHA            
       LDA    ($8C),Y 
       TAY            
       PLA            
       STX    GRP0    
       STA    GRP1    
       STY    GRP0    
       DEC    $82     
       LDY    $82     
       BPL    LF12B   
       INY            
       STY    GRP0    
       STY    GRP1    
       RTS            

LF151: LDA    #$04    
       STA    TIM64T  
       LDA    #$30    
       LDY    $AB     
       CPY    #$24    
       BCC    LF164   
       CPY    #$C9    
       BCS    LF164   
       LDA    #$36    
LF164: STA    NUSIZ0  
       LDA    $B4     
       STA    HMP1    
       LDA    $B1     
       CMP    #$02    
       BCS    LF18A   
       LDA    $AB     
       ORA    $A6     
       BNE    LF18A   
       LDA    $F4     
       STA    $AE     
       LDA    $AD     
       STA    $BD     
       LDA    $B5     
       STA    HMP0    
       LDA    $91     
       EOR    #$A0    
       LDX    $81     
       BNE    LF19A   
LF18A: LDA    $B1     
       STA    $AE     
       LDA    $A4     
       STA    $BD     
       LDA    $9E     
       STA    HMP0    
       LDX    $9D     
       LDA    #$1C    
LF19A: LDY    INTIM   
       BNE    LF19A   
       STA    COLUP0  
       STA    WSYNC   
LF1A3: DEX            
       BNE    LF1A3   
       STA    RESP0   
       LDX    $80     
       STA    WSYNC   
LF1AC: DEX            
       BNE    LF1AC   
       STA    RESP1   
       LDA    SWCHA   
       BMI    LF1BA   
       LDA    #$08    
       STA    REFP0   
LF1BA: LDA    $91     
       EOR    #$F0    
       STA    COLUP1  
       LDA    $8E     
       CMP    #$42    
       BNE    LF1D8   
       LDA    $F3     
       CMP    #$02    
       BNE    LF1D8   
       LDX    #$31    
       LDA    #$30    
       CMP    $A1     
       BEQ    LF1D6   
       LDX    #$33    
LF1D6: STX    $A1     
LF1D8: LDA    $A1     
       STA    NUSIZ1  
       LDA    #$E6    
       CLC            
       ADC    $92     
       STA    $AD     
       RTS            

LF1E4: LDX    $B1     
       LDY    #$01    
       DEX            
       BNE    LF1FA   
       LDA    $B0     
       AND    #$08    
       BNE    LF1F7   
       JSR    LF267   
       JMP    LF1FA   
LF1F7: JSR    LF238   
LF1FA: ASL    INPT4   
       BCS    LF201   
       JMP    LF299   
LF201: LDA    $AA     
       AND    #$BF    
       STA    $AA     
       LDA    #$40    
       ORA    $B0     
       STA    $B0     
       LDA    SWCHA   
       AND    #$F0    
       CMP    #$F0    
       BNE    LF21F   
LF216: LDA    #$A4    
       STA    $A4     
       LDA    #$00    
       STA    $B8     
LF21E: RTS            

LF21F: INC    $B8     
       LDA    $B8     
       CMP    #$19    
       BEQ    LF22B   
       LDX    $93     
       BNE    LF21E   
LF22B: DEC    $B8     
       JSR    LFE45   
       LDA    SWCHA   
       BPL    LF267   
       ASL            
       BMI    LF216   
LF238: LDA    $9E     
       CLC            
       ADC    #$10    
       STA    $9E     
       BVC    LF247   
       LDA    #$90    
       STA    $9E     
       DEC    $9D     
LF247: CPY    $B1     
       LDY    #$04    
       BCS    LF25B   
       CPY    $9D     
       BNE    LF266   
       LDA    $9E     
       CMP    #$20    
       BNE    LF266   
       LDA    #$10    
       BNE    LF290   
LF25B: INY            
       CPY    $9D     
       BNE    LF266   
       LDA    $9E     
       CMP    #$30    
       BEQ    LF28E   
LF266: RTS            

LF267: LDA    $9E     
       SEC            
       SBC    #$10    
       STA    $9E     
       BVC    LF276   
       LDA    #$60    
       STA    $9E     
       INC    $9D     
LF276: LDA    #$0D    
       CMP    $9D     
       BNE    LF298   
       LDA    $9E     
       CPY    $B1     
       BCS    LF28A   
       CMP    #$C0    
       BNE    LF298   
       LDA    #$D0    
       BNE    LF290   
LF28A: CMP    #$10    
       BNE    LF298   
LF28E: LDA    #$20    
LF290: STA    $9E     
       LDA    #$00    
       STA    $A3     
       STA    AUDV1   
LF298: RTS            

LF299: LDA    #$AF    
       STA    $A4     
       LDA    #$00    
       STA    $B8     
       LDA    $B0     
       ASL            
       BPL    LF2BA   
       LDA    $BA     
       BNE    LF2AD   
       JSR    LF317   
LF2AD: LDA    #$BF    
       AND    $B0     
       STA    $B0     
       LDA    #$40    
       ORA    $AA     
       STA    $AA     
       RTS            

LF2BA: LDA    $AA     
       ASL            
       BPL    LF2EF   
       LDA    SWCHA   
       ASL            
       ASL            
       BPL    LF2D8   
       ASL            
       BMI    LF2EF   
       INC    $B1     
       LDA    $B1     
       CMP    #$0B    
       BNE    LF2F0   
       LDA    #$80    
       ORA    $AA     
       STA    $AA     
       RTS            

LF2D8: LDA    $B1     
       CMP    #$02    
       BNE    LF2E9   
       JSR    LFE15   
       CMP    #$11    
       BCC    LF2EF   
       CMP    #$8A    
       BCS    LF2EF   
LF2E9: DEC    $B1     
       BPL    LF2F0   
       INC    $B1     
LF2EF: RTS            

LF2F0: LDA    #$BF    
       AND    $AA     
       STA    $AA     
       LDX    #$04    
       CPX    $F7     
       BCS    LF2FE   
       LDX    #$08    
LF2FE: LDA    SWCHA   
       BMI    LF30B   
LF303: JSR    LF267   
       DEX            
       BNE    LF303   
       BEQ    LF314   
LF30B: ASL            
       BMI    LF314   
LF30E: JSR    LF238   
       DEX            
       BNE    LF30E   
LF314: JMP    LFE58   
LF317: LDA    $B1     
       BNE    LF2EF   
       LDA    $97     
       BNE    LF2EF   
       LDX    $9F     
       LDY    $A0     
       JSR    LFE19   
       STA    $85     
       CLC            
       ADC    #$49    
       STA    $87     
       JSR    LFE15   
       ADC    #$04    
       TAY            
       LDX    $9B     
       BEQ    LF34B   
       CMP    $85     
       BCC    LF34B   
       SBC    #$14    
       CMP    $85     
       BCS    LF34B   
       LDX    $9F     
       LDY    $A0     
       LDA    #$00    
       STA    $9B     
       BEQ    LF36D   
LF34B: LDX    $9C     
       BEQ    LF39F   
       TYA            
       CMP    $87     
       BCC    LF39F   
       SBC    #$14    
       CMP    $87     
       BCS    LF39F   
       LDA    #$00    
       STA    $9C     
       LDX    $9F     
       INX            
       INX            
       INX            
       INX            
       LDA    $A0     
       SEC            
       SBC    #$60    
       BVC    LF36C   
       INX            
LF36C: TAY            
LF36D: LDA    #$00    
       STA    $93     
       STX    $95     
       STY    $96     
       LDY    #$06    
       STY    $9A     
       LDX    #$09    
       STX    AUDC1   
       DEY            
       STY    AUDF1   
       INX            
       STX    AUDV1   
       LDA    $A9     
       SEC            
       SBC    #$20    
       STA    $A9     
       LDX    #$F0    
       LDA    #$08    
       AND    $B0     
       BEQ    LF394   
       LDX    #$10    
LF394: STX    $B6     
       LDA    #$4F    
       STA    $97     
       SEC            
       SBC    #$0A    
       STA    $A5     
LF39F: RTS            


START:
       LDX    #$FF    
       TXS            
       INX            
       TXA            
       CLD            
LF3A6: STA    VSYNC,X 
       INX            
       BNE    LF3A6   
       BEQ    LF3F2   
LF3AD: STA    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDX    #$00    
       STX    WSYNC   
       STX    VSYNC   
       LDA    #$2D    
       STA    TIM64T  
       LDA    $AA     
       BPL    LF3E5   
       LDA    #$33    
       STA    $A6     
       STX    $B1     
       STX    $9E     
       STX    $BA     
       INX            
       STX    $9D     
       LDA    #$18    
       AND    $AA     
       STA    $AA     
       LDA    #$04    
       STA    AUDC0   
       LDA    #$1B    
       STA    AUDF0   
       STA    $B2     
       LDA    #$0F    
       STA    AUDV0   
LF3E5: LSR    SWCHB   
       BCS    LF45B   
LF3EA: LDA    #$30    
       STA    $90     
       LDA    #$C9    
       STA    $AB     
LF3F2: LDY    #$00    
       STY    $98     
       STY    $94     
       DEY            
       ASL    SWCHB   
       BPL    LF3FF   
       BIT    $05A0   
       STY    $F7     
LF403: LDY    #$FF    
       STY    $9B     
       STY    $F5     
       STY    $F6     
       INY            
       LDA    #$E0    
       STA    $A9     
       LDA    #$06    
       STA    $F0     
       STA    $80     
       STA    $81     
       LDX    #$3F    
LF41A: STY    $B0,X   
       DEX            
       BPL    LF41A   
       STX    $F3     
       STX    $F4     
       STX    $A8     
       INY            
       STY    $AA     
       STY    CXCLR   
       STY    $8F     
       LDA    #$94    
       STA    $A4     
       LDA    #$04    
       STA    $9F     
       STA    $F1     
       LDA    #$09    
       STA    $9D     
       LDA    #$70    
       STA    $A0     
       LDA    #$60    
       STA    $9E     
       INC    $F7     
       LDY    $F7     
       BNE    LF44C   
       STA    $F1     
       STA    $8F     
LF44C: CPY    #$07    
       BNE    LF452   
       DEC    $F7     
LF452: LDX    LFE92,Y 
       STX    $91     
       LDA    #$AB    
       STA    $BF     
LF45B: LDA    $F2     
       CLC            
       ADC    #$5B    
       EOR    $9F     
       STA    $F2     
       LDA    $A9     
       BNE    LF472   
       LDA    $B0     
       EOR    #$08    
       STA    $B0     
       LDA    #$E0    
       STA    $A9     
LF472: LDA    #$00    
       STA    AUDV1   
       STA    PF0     
       STA    PF1     
       LDA    $93     
       BNE    LF48A   
       LDA    $B3     
       BEQ    LF48A   
       DEC    $B3     
       LDA    $B3     
       STA    AUDF0   
       STA    AUDV0   
LF48A: LDA    $8E     
       SEC            
       SBC    #$01    
       STA    $8E     
       LDA    $A8     
       SBC    #$00    
       STA    $A8     
       LDA    $90     
       AND    #$F0    
       BNE    LF4D0   
       STA    CXCLR   
       LDA    $8E     
       AND    #$07    
       BNE    LF4BD   
       LDY    #$10    
       CPY    $F0     
       BEQ    LF4BD   
       DEC    $F0     
       LDA    $F0     
       CMP    #$05    
       BNE    LF4BD   
       INC    $F0     
       LDA    $8E     
       AND    #$3F    
       BNE    LF4BD   
       STY    $F0     
LF4BD: LDA    $8E     
       BNE    LF52D   
       DEY            
       STY    $F0     
       LDA    $F2     
       AND    #$07    
       TAX            
       LDA    LFE92,X 
       STA    $91     
       BNE    LF52D   
LF4D0: LDA    $AB     
       ORA    $A6     
       BNE    LF52D   
       JSR    LF1E4   
       LDA    $B1     
       CMP    #$02    
       BCC    LF4E9   
       LDA    $F4     
       BMI    LF4E9   
       CMP    #$02    
       BCC    LF4E9   
       DEC    $B1     
LF4E9: LDX    #$00    
       LDA    $F7     
       BEQ    LF52D   
       LDA    $8E     
       AND    #$1F    
       BNE    LF502   
       INC    $8F     
       INX            
       LDA    $8F     
       CMP    #$0B    
       BCC    LF502   
       LDA    #$02    
       STA    $8F     
LF502: LDY    #$AB    
       LDA    $8E     
       BNE    LF516   
       INC    $F1     
       LDX    #$03    
       LDA    $F1     
       CMP    #$0A    
       BNE    LF516   
       LDA    #$02    
       STA    $F1     
LF516: LDA    $F1     
       CMP    $8F     
       BNE    LF520   
       LDX    #$10    
       LDY    #$5C    
LF520: STY    $BF     
       TXA            
       BEQ    LF52D   
       STX    AUDF1   
       LDA    #$0A    
       STA    AUDC1   
       STA    AUDV1   
LF52D: LDA    $B0     
       AND    #$08    
       BNE    LF55A   
       LDA    $A0     
       SEC            
       SBC    #$10    
       STA    $A0     
       BVC    LF542   
       LDA    #$60    
       STA    $A0     
       INC    $9F     
LF542: LDA    $9F     
       CMP    #$09    
       BNE    LF57F   
       LDA    #$04    
       STA    $9F     
       LDA    #$40    
       STA    $A0     
       LDA    $9B     
       STA    $9C     
       LDA    #$FF    
       STA    $9B     
       BMI    LF57F   
LF55A: LDA    $A0     
       CLC            
       ADC    #$10    
       STA    $A0     
       BVC    LF569   
       LDA    #$90    
       STA    $A0     
       DEC    $9F     
LF569: LDA    $9F     
       CMP    #$03    
       BNE    LF57F   
       LDA    #$08    
       STA    $9F     
       LDA    #$A0    
       STA    $A0     
       LDA    $9C     
       STA    $9B     
       LDA    #$FF    
       STA    $9C     
LF57F: LDA    $93     
       CLC            
       ADC    #$40    
       STA    $93     
       LDA    $9A     
       BPL    LF58E   
       CMP    #$FF    
       BCC    LF591   
LF58E: JMP    LF627   
LF591: LDA    $B0     
       AND    #$20    
       BNE    LF59A   
       JMP    LF627   
LF59A: LDA    #$DF    
       AND    $B0     
       STA    $B0     
       LDA    #$9E    
       SEC            
       SBC    $97     
       LDX    #$FF    
LF5A7: INX            
       SEC            
       SBC    #$0C    
       BPL    LF5A7   
       TXA            
       LDX    $95     
       LDY    $96     
       JSR    LFDE2   
       BEQ    LF5CF   
       LDA    #$24    
       JSR    LFE00   
       LDX    #$04    
       LDY    #$00    
LF5C0: ASL    $89     
       BCC    LF5C5   
       INY            
LF5C5: DEX            
       BNE    LF5C0   
       CPY    #$02    
       BCS    LF5CF   
       JMP    LF627   
LF5CF: LDA    $82     
       LDY    #$05    
       LDX    #$00    
LF5D5: STX    $84,Y   
       DEY            
       BPL    LF5D5   
       LDX    #$F0    
       STX    $84     
       TAX            
       BEQ    LF60C   
       JSR    LFDCB   
       LDA    $84     
       AND    #$F0    
       STA    $84     
       LDA    $87     
       AND    #$F0    
       STA    $87     
       LDY    #$05    
LF5F2: LDA    ($8C),Y 
       AND.wy $0084,Y 
       BNE    LF5FE   
       DEY            
       BPL    LF5F2   
       BMI    LF60C   
LF5FE: LDA    $97     
       CMP    #$44    
       BCS    LF624   
       LDA    #$00    
       STA    $AC     
       STA    $97     
       BEQ    LF624   
LF60C: LDY    #$05    
LF60E: LDA    ($8C),Y 
       ORA.wy $0084,Y 
       STA    ($8C),Y 
       DEY            
       BPL    LF60E   
       JSR    LFD6C   
       LDA    #$00    
       STA    $97     
       LDA    #$05    
       JSR    LFD87   
LF624: JMP    LF92B   
LF627: LDA    $AB     
       BNE    LF647   
       LDA    $90     
       AND    #$F0    
       BNE    LF638   
       ASL    INPT4   
       BCS    LF638   
       JMP    LF3EA   
LF638: LDA    #$FE    
       AND    $AA     
       STA    $AA     
       LDA    $A7     
       AND    #$F0    
       STA    $A7     
       JMP    LF6E4   
LF647: CMP    #$C9    
       BCS    LF69E   
       DEC    $AB     
       CMP    #$25    
       BCS    LF660   
       CMP    #$24    
       BEQ    LF691   
       LDA    #$AF    
       STA    $A4     
       LDA    #$20    
       STA    $9E     
       JMP    LF748   
LF660: LDA    $93     
       BNE    LF68E   
       INC    $F9     
       LDX    $F9     
       CPX    #$40    
       BCS    LF675   
       LDY    #$0F    
       LDA    LFF50,X 
       STA    AUDF0   
       BNE    LF676   
LF675: TAY            
LF676: STY    AUDV0   
       LDY    #$0C    
       STY    AUDC0   
       INC    $AB     
       INC    $AB     
       LDA    $A3     
       EOR    #$0B    
       STA    $A3     
       CLC            
       ADC    #$A4    
       STA    $A4     
       JSR    LF267   
LF68E: JMP    LF752   
LF691: LDA    #$09    
       STA    $9D     
       STA    $B1     
       LDA    #$00    
       STA    AUDV0   
       JMP    LF752   
LF69E: LDA    $93     
       ASL            
       BMI    LF6A5   
       INC    $B2     
LF6A5: LDA    $B2     
       STA    AUDF0   
       DEC    $AB     
       LDA    $AB     
       CMP    #$C8    
       BEQ    LF6B4   
       JMP    LF752   
LF6B4: STA    WSYNC   
       LDY    #$FF    
       STY    $F4     
       INY            
       STY    AUDV0   
       STY    $B2     
       STY    $9E     
       STY    $93     
       STY    $B1     
       STY    $F9     
       LDA    $90     
       AND    #$F0    
       BNE    LF6DB   
       STY    $9E     
       STY    $AB     
       LDA    #$09    
       STA    $9D     
       LDA    #$94    
       STA    $A4     
       BNE    LF6E1   
LF6DB: LDA    #$04    
       STA    $9D     
       STA    $A7     
LF6E1: JMP    LF752   
LF6E4: LDA    $8E     
       AND    #$07    
       BNE    LF6F6   
       LDX    $9D     
       LDY    $9E     
       JSR    LFD9B   
       BCC    LF6F6   
       JSR    LFC6B   
LF6F6: LDA    $A6     
       BEQ    LF718   
       DEC    $A6     
       BNE    LF705   
       LDA    #$00    
       STA    AUDV0   
       JMP    LF403   
LF705: LDA    #$15    
       JSR    LFD87   
       LDA    $93     
       ASL            
       ASL            
       BCC    LF752   
       DEC    $B2     
       LDA    $B2     
       STA    AUDF0   
       BCS    LF752   
LF718: LDA    $AB     
       BNE    LF727   
       LDX    $B1     
       DEX            
       CPX    $8F     
       BNE    LF727   
       STA    WSYNC   
       BEQ    LF748   
LF727: STA    WSYNC   
       LDX    CXP0FB  
       BPL    LF752   
       LDA    $B1     
       CMP    $F1     
       BNE    LF73A   
       LDA    #$01    
       JSR    LFD87   
       BNE    LF752   
LF73A: LDA    SWCHB   
       BMI    LF745   
       LDA    $AA     
       AND    #$20    
       BEQ    LF75F   
LF745: JMP    LF846   
LF748: LDA    $93     
       BNE    LF74F   
       JSR    LFC6B   
LF74F: JMP    LF84C   
LF752: JMP    LF846   
LF755: LDA    $99     
       STA    $9D     
       LDA    #$00    
       STA    $B2     
       BEQ    LF748   
LF75F: LDA    #$09    
       SEC            
       SBC    $B1     
       JSR    LFDE2   
       ASL    $83     
       LDA    #$A0    
       SEC            
       SBC    $83     
       STA    $B2     
       SEC            
       SBC    #$09    
       STA    $8E     
       JSR    LFE15   
       STA    $83     
       LSR            
       LSR            
       STA    $82     
       LDA    $9D     
       STA    $99     
       LDA    SWCHA   
       BMI    LF7B6   
       LDA    #$F0    
       STA    $B6     
       LDX    $9D     
       INX            
       STX    $95     
       DEC    $9D     
       LDA    #$26    
       SEC            
       SBC    $82     
       TAX            
       JSR    LFDC1   
       LDA    $89     
       AND    #$E0    
       TAY            
       LDA    $83     
       CPY    #$80    
       BEQ    LF7B1   
       CPY    #$C0    
       BEQ    LF7B3   
       CPY    #$E0    
       BEQ    LF7DF   
       ADC    #$08    
       BIT    $0369   
LF7B3: JMP    LF7E8   
LF7B6: ASL            
       BMI    LF7DF   
       LDA    #$10    
       STA    $B6     
       LDX    $9D     
       DEX            
       STX    $95     
       INC    $9D     
       LDA    #$25    
       SEC            
       SBC    $82     
       TAX            
       JSR    LFDC1   
       LDA    $83     
       ASL    $89     
       BCS    LF7DF   
       ASL    $89     
       BCS    LF7E6   
       ASL    $89     
       BCS    LF7E2   
       SBC    #$0E    
       BCS    LF7E8   
LF7DF: JMP    LF755   
LF7E2: SBC    #$0C    
       BCS    LF7E8   
LF7E6: SBC    #$08    
LF7E8: LSR            
       LSR            
       TAX            
       LDX    #$F0    
       STX    $84     
       LDX    #$00    
       LDY    #$04    
LF7F3: STX    $85,Y   
       DEY            
       BPL    LF7F3   
       TAX            
       JSR    LFDCB   
       LDA    $8C     
       SEC            
       SBC    #$06    
       STA    $8C     
       LDY    #$05    
LF805: LDA    ($8C),Y 
       AND.wy $0084,Y 
       BNE    LF7DF   
       DEY            
       BPL    LF805   
       LDA    $8C     
       CLC            
       ADC    #$06    
       STA    $8C     
       LDY    #$05    
LF818: LDA    ($8C),Y 
       EOR.wy $0084,Y 
       STA    ($8C),Y 
       DEY            
       BPL    LF818   
       LDA    $B2     
       STA    $97     
       LDA    $8E     
       STA    $A5     
       LDX    #$00    
       STX    $B2     
       DEX            
       STX    $9A     
       LDA    $9E     
       STA    $96     
       LDA    #$08    
       STA    AUDC0   
       LDA    #$0A    
       STA    $B3     
       LDA    #$DF    
       AND    $AA     
       STA    $AA     
       JMP    LF92B   
LF846: LDA    #$DF    
       AND    $AA     
       STA    $AA     
LF84C: LDA    CXM0P   
       BPL    LF86F   
       LDA    $A1     
       CMP    #$30    
       BEQ    LF863   
       CMP    #$31    
       BNE    LF85D   
       LDA    #$30    
       BIT    $31A9   
       STA    $A1     
       BNE    LF86F   
LF863: LDA    #$06    
       STA    AUDC1   
       LDA    #$FF    
       STA    $9A     
       LDA    $F3     
       STA    $F5     
LF86F: LDX    #$01    
LF871: LDY    $F5,X   
       BMI    LF88E   
       LDA    #$09    
       STA    AUDC1   
       LDA    #$0F    
       STA    AUDV1   
       LDA    $F2     
       STA    AUDF1   
       LDA    $93     
       BNE    LF88E   
       STY    $F3,X   
       DEC    $F5,X   
       LDA    #$20    
       JSR    LFD87   
LF88E: DEX            
       BPL    LF871   
       LDA    #$D0    
       CLC            
       ADC    $92     
       STA    $AF     
       LDA    $AB     
       BNE    LF8CD   
       LDA    $A6     
       BNE    LF8CD   
       LDX    $F7     
       LDA    LFE8B,X 
       LDY    SWCHB   
       BPL    LF8AF   
       CPX    #$06    
       BEQ    LF8AF   
       LSR            
LF8AF: AND    $A8     
       BNE    LF8CD   
       LDX    #$05    
LF8B5: LDA    $EA,X   
       BNE    LF8BE   
       DEX            
       BPL    LF8B5   
       BMI    LF8CD   
LF8BE: LDA    #$2D    
       STA    $BA     
       LDA    $97     
       BEQ    LF8CD   
       LDA    #$00    
       STA    $97     
       JSR    LFD6C   
LF8CD: LDA    $BA     
       BEQ    LF8EB   
       CMP    #$09    
       BCC    LF8E1   
       LDA    #$0D    
       STA    AUDC1   
       STA    AUDF1   
       STA    AUDV1   
       DEC    $BA     
       BNE    LF8EB   
LF8E1: LDA    $8E     
       AND    #$03    
       BNE    LF8EB   
       DEC    $BA     
       BPL    LF8F9   
LF8EB: LDA    $F3     
       CMP    #$02    
       BNE    LF90E   
       LDA    $F5     
       BPL    LF90E   
       LDA    $BE     
       BPL    LF90E   
LF8F9: LDX    #$29    
LF8FB: LDA    $C0,X   
       STA    $C6,X   
       DEX            
       BPL    LF8FB   
       LDA    #$00    
       LDX    #$05    
LF906: STA    $C0,X   
       DEX            
       BPL    LF906   
       JSR    LFD6C   
LF90E: LDA    $AB     
       BNE    LF915   
       JSR    LFC80   
LF915: LDA    $8E     
       AND    #$0F    
       BNE    LF921   
       LDA    $92     
       EOR    #$0B    
       STA    $92     
LF921: LDX    #$0A    
       LDA    $BA     
       BEQ    LF929   
       LDX    #$58    
LF929: STX    $A2     
LF92B: LDA    INTIM   
       BMI    LF932   
       BNE    LF92B   
LF932: LDA    #$00    
       STA    WSYNC   
       STA    VBLANK  
       STA    $AC     
       STA    CXCLR   
       STA    $BE     
       LDA    $91     
       STA    $F8     
       JSR    LF0E9   
       JSR    LF151   
       LDA    $96     
       CLC            
       ADC    $B6     
       STA    $96     
       BVC    LF961   
       INC    $95     
       LDX    #$60    
       LDA    $B6     
       BMI    LF95F   
       LDX    #$90    
       DEC    $95     
       DEC    $95     
LF95F: STX    $96     
LF961: LDA    $B6     
       EOR    #$E0    
       STA    $82     
       STA    WSYNC   
       BPL    LF972   
       LDA    $93     
       ASL            
       BPL    LF983   
       BMI    LF977   
LF972: LDA    $93     
       ASL            
       BMI    LF983   
LF977: LDA    $96     
       STA    HMBL    
       CLC            
       ADC    $82     
       STA    HMM0    
       JMP    LF98C   
LF983: LDA    $96     
       STA    HMM0    
       CLC            
       ADC    $82     
       STA    HMBL    
LF98C: LDA    $95     
       CMP    #$04    
       BEQ    LF9A2   
       CMP    #$0C    
       BNE    LF9A8   
       LDA    $96     
       CMP    #$B0    
       BNE    LF9A8   
LF99C: LDA    #$00    
       STA    $97     
       BEQ    LF9A8   
LF9A2: LDA    $96     
       CMP    #$80    
       BCC    LF99C   
LF9A8: STA    WSYNC   
       LDA    $97     
       BEQ    LFA00   
       LDA    #$FF    
       STA    $AC     
       LDA    $9A     
       BPL    LF9C9   
       LDA    $97     
       CMP    #$44    
       BCS    LF9C9   
       LDA    #$00    
       STA    $AC     
       LDA    #$20    
       ORA    $B0     
       STA    $B0     
       JMP    LFA00   
LF9C9: LDA    $93     
       BNE    LF9CF   
       DEC    $9A     
LF9CF: STX    $84     
       LDA    $97     
       CLC            
       ADC    $9A     
       STA    $97     
       SEC            
       SBC    #$0A    
       STA    $A5     
       LDA    #$0A    
       STA    COLUP0  
       STA    COLUP1  
       LDX    $95     
       LDA    $93     
       ASL            
       BMI    LF9F5   
       STA    WSYNC   
LF9EC: DEX            
       BNE    LF9EC   
       STA    RESBL   
       STA    RESM0   
       BEQ    LFA02   
LF9F5: STA    WSYNC   
LF9F7: DEX            
       BNE    LF9F7   
       STA    RESM0   
       STA    RESBL   
       BEQ    LFA02   
LFA00: STA    WSYNC   
LFA02: STA    WSYNC   
       STA    HMOVE   
       STA    WSYNC   
       STA    HMCLR   
       DEC    $F8     
       LDA    $F8     
       STA    COLUBK  
       LDA    #$94    
       STA    $8A     
       STA    $8C     
       LDA    #$FF    
       STA    $8D     
       STA    $8B     
       LDY    #$0A    
       CPY    $AE     
       BNE    LFA26   
       LDA    $BD     
       STA    $8A     
LFA26: CPY    $F3     
       BNE    LFA2E   
       LDA    $AF     
       STA    $8C     
LFA2E: SEC            
       DEC    $F8     
       JSR    LFE6A   
       LDA    $F8     
       STA    COLUBK  
       JSR    LF000   
       LDA    CXP1FB  
       STA    $BE     
       LDX    $F4     
       CPX    #$02    
       BCS    LFA69   
       LDX    #$00    
       STX    $9B     
       STX    $9C     
       STX    NUSIZ1  
       LDA    $91     
       EOR    #$A0    
       STA    COLUP1  
       LDA    $B5     
       STA    HMP1    
       LDX    $81     
       STA    WSYNC   
LFA5B: DEX            
       BNE    LFA5B   
       STA    RESP1   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       JMP    LFAD7   
LFA69: LDA    #$35    
       STA    NUSIZ1  
       LDA    $A0     
       STA    HMP1    
       LDA    CXPPMM  
       ORA    CXP0FB  
       BPL    LFA7F   
       LDA    $B1     
       CMP    #$02    
       BCS    LFA7F   
       STA    CXCLR   
LFA7F: LDA    $B0     
       AND    #$08    
       BNE    LFA8F   
       LDA    $A0     
       TAX            
       CLC            
       ADC    #$10    
       TAY            
       JMP    LFA96   
LFA8F: LDA    $A0     
       TAY            
       SEC            
       SBC    #$10    
       TAX            
LFA96: LDA    $93     
       ASL            
       BMI    LFAA1   
       STX    HMM1    
       STY    HMBL    
       BPL    LFAA5   
LFAA1: STX    HMBL    
       STY    HMM1    
LFAA5: LDA    CXM0FB  
       BPL    LFAAF   
       LDA    #$20    
       ORA    $B0     
       STA    $B0     
LFAAF: LDX    $9F     
       STA    WSYNC   
LFAB3: DEX            
       BNE    LFAB3   
       STA    RESP1   
       LDA    $9F     
       CLC            
       ADC    #$05    
       TAX            
       LDA    $93     
       ASL            
       BMI    LFACE   
       STA    WSYNC   
LFAC5: DEX            
       BNE    LFAC5   
       STA    RESM1   
       STA    RESBL   
       BEQ    LFAD7   
LFACE: STA    WSYNC   
LFAD0: DEX            
       BNE    LFAD0   
       STA    RESBL   
       STA    RESM1   
LFAD7: LDA    #$1C    
       STA    COLUP0  
       LDA    $9E     
       STA    HMP0    
       LDA    #$94    
       LDX    $B1     
       DEX            
       BNE    LFAE8   
       LDA    $A4     
LFAE8: STA    $8A     
       LDA    $AD     
       STA    $8C     
       SEC            
       LDX    $F4     
       DEX            
       BEQ    LFAF5   
       CLC            
LFAF5: LDX    $9D     
       STA    WSYNC   
LFAF9: DEX            
       BNE    LFAF9   
       STA    RESP0   
       LDX    $9B     
       STA    WSYNC   
       STA    HMOVE   
       STX    GRP1    
       LDX    $9C     
       STX    ENABL   
       STX    ENAM1   
       JSR    LFE6A   
       DEY            
       STY    COLUBK  
       INY            
       STY    ENAM1   
       STY    ENABL   
       STY    NUSIZ1  
       STA    WSYNC   
       LDA    $F8     
       STA    COLUBK  
       LDA    #$94    
       STA    $8A     
       STA    $8C     
       LDA    $B1     
       BNE    LFB2D   
       LDA    $A4     
       STA    $8A     
LFB2D: LDA    $F4     
       BNE    LFB35   
       LDA    $AD     
       STA    $8C     
LFB35: SEC            
       JSR    LFE6A   
       LDA    #$05    
       STA    COLUBK  
       STY    REFP0   
       LDA    #$04    
       STA    TIM64T  
       LDA    $F1     
       CMP    $8F     
       BNE    LFB58   
       CMP    $B1     
       BNE    LFB58   
       LDA    $AB     
       BNE    LFB58   
       LDA    #$14    
       STA    $8F     
       BNE    LFB63   
LFB58: LDA    $AA     
       LSR            
       BCS    LFB91   
       LDA    CXPPMM  
       ORA    CXM1P   
       BPL    LFB91   
LFB63: LDX    $B1     
       DEX            
       BNE    LFB6A   
       DEC    $B1     
LFB6A: LDA    #$90    
       STA    $A4     
       LDA    #$01    
       STA    $BA     
       ORA    $AA     
       STA    $AA     
       LDA    #$FA    
       STA    $AB     
       STA    CXCLR   
       LDA    $90     
       SEC            
       SBC    #$10    
       STA    $90     
       LDA    #$07    
       STA    AUDC0   
       LDA    #$05    
       STA    AUDF0   
       STA    $B2     
       LDA    #$0F    
       STA    AUDV0   
LFB91: LDA    INTIM   
       BNE    LFB91   
       LDA    #$A4    
       STA    $84     
       LDA    #$9C    
       STA    $88     
       LDA    #$94    
       STA    $86     
       STA    $8A     
       LDA    $90     
       AND    #$F0    
       LSR            
       STA    $8C     
       LDA    #$1C    
       STA    COLUP0  
       STY    PF0     
       JSR    LF10D   
       LDA    #$31    
       STA    CTRLPF  
       JSR    LFE61   
       LDX    #$05    
       STA    WSYNC   
LFBBF: DEX            
       BNE    LFBBF   
       STA    RESBL   
       STA    RESP0   
       STA    RESP1   
       LDA    #$60    
       STA    HMP0    
       LDA    #$70    
       STA    HMP1    
       LDA    #$90    
       STA    HMBL    
       LDY    #$00    
       STY    WSYNC   
       STY    HMOVE   
       STY    COLUPF  
       STY    COLUBK  
       STY    WSYNC   
       STY    HMCLR   
       LDA    $F0     
       CMP    #$0D    
       BCS    LFBF8   
       SEC            
       SBC    #$06    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    $82     
       LDA    #$F0    
       SEC            
       SBC    $82     
       STA    HMBL    
LFBF8: STA    WSYNC   
       STA    HMOVE   
       DEY            
       STY    COLUP0  
       STY    COLUP1  
       LDA    #$C0    
       STA    PF0     
       STA    PF1     
       STA    WSYNC   
       STA    HMCLR   
       LDA    #$10    
       STA    HMBL    
       LDA    $F0     
       TAY            
       SEC            
       SBC    #$07    
       STA    $99     
       LDA    #$03    
       STA    ENABL   
       INC    $82     
LFC1D: LDA    LFEAB,Y 
       STA    GRP0    
       LDA    LFEBC,Y 
       STA    GRP1    
       LDA    LFE9A,Y 
       STA    WSYNC   
       STA    HMOVE   
       STA    COLUPF  
       LDX    LFEDE,Y 
       LDA    LFECD,Y 
       STA    $82     
       STY    $83     
       LDA    LFEEF,Y 
       TAY            
       LDA    $82     
       STA    GRP0    
       STX    GRP1    
       STY    GRP0    
       LDY    $83     
       LDA    #$00    
       STA    COLUPF  
       DEY            
       CPY    $99     
       BNE    LFC1D   
       LDY    #$00    
       STY    ENABL   
       STY    GRP0    
       STY    GRP1    
       LDX    #$05    
       LDA    #$02    
       STA    VBLANK  
       STX    COLUBK  
       LDX    #$0D    
LFC63: STA    WSYNC   
       DEX            
       BNE    LFC63   
       JMP    LF3AD   
LFC6B: LDA    #$03    
       STA    AUDC1   
       LDA    #$1F    
       STA    AUDV1   
       SBC    $B1     
       STA    AUDF1   
       LDA    #$20    
       ORA    $AA     
       STA    $AA     
       DEC    $B1     
       RTS            

LFC80: LDA    $8E     
       AND    #$7F    
       BNE    LFCCC   
       LDX    #$00    
LFC88: LDA    $F3,X   
       BPL    LFCB1   
       CPX    #$00    
       BNE    LFC94   
       LDA    #$30    
       STA    $A1     
LFC94: LDA    #$0A    
       STA    $F3,X   
       LDA    #$00    
       STA    $B4,X   
       LDA    $F2     
       AND    #$03    
       CLC            
       ADC    #$06    
       STA    $80,X   
       LDA    #$F0    
       LDY    $F2     
       BMI    LFCAD   
       LDA    #$10    
LFCAD: STA    $BB,X   
       BNE    LFCBC   
LFCB1: INX            
       CPX    #$01    
       BNE    LFCBC   
       LDA    $A8     
       AND    #$03    
       BEQ    LFC88   
LFCBC: LDX    #$FF    
       LDA    $F7     
       CMP    #$02    
       BCS    LFCC6   
       STX    $F3     
LFCC6: CMP    #$03    
       BCS    LFCCC   
       STX    $F4     
LFCCC: LDA    $F7     
       CMP    #$02    
       BCC    LFD08   
       LDA    $F3     
       BMI    LFD08   
       LDA    $BE     
       BMI    LFCE4   
       LDA    $80     
       CMP    #$05    
       BCC    LFCE4   
       CMP    #$0A    
       BCC    LFCEC   
LFCE4: LDA    $BB     
       EOR    #$E0    
       STA    $BB     
       BNE    LFD03   
LFCEC: LDA    $8E     
       AND    #$7F    
       BNE    LFCFF   
       LDX    $80     
       LDY    $B4     
       LDA    $F3     
       JSR    LFDA1   
       BCC    LFCFF   
       DEC    $F3     
LFCFF: LDA    $93     
       BNE    LFD08   
LFD03: LDX    #$00    
       JSR    LFD74   
LFD08: LDA    $F7     
       CMP    #$03    
       BCC    LFD73   
       LDA    $F4     
       BMI    LFD73   
       LDX    #$01    
       JSR    LFD74   
       LDA    $F2     
       STA    AUDF1   
       STA    AUDV1   
       LDA    #$0C    
       STA    AUDC1   
       LDX    $F4     
       CPX    $B1     
       BNE    LFD40   
       JSR    LFE15   
       STA    $83     
       LDX    $81     
       LDY    $B5     
       JSR    LFE19   
       CMP    $83     
       LDA    #$F0    
       BCC    LFD3B   
       LDA    #$10    
LFD3B: STA    $BC     
       JMP    LFD4C   
LFD40: LDA    $8E     
       AND    #$1F    
       BNE    LFD4C   
       LDA    $BC     
       EOR    #$E0    
       STA    $BC     
LFD4C: LDA    #$3F    
       LDX    $F4     
       BNE    LFD54   
       LDA    #$FF    
LFD54: LDX    $B1     
       BEQ    LFD60   
       LDX    $F4     
       CPX    #$02    
       BCC    LFD60   
       LDA    #$03    
LFD60: AND    $8E     
       BNE    LFD73   
       DEC    $F4     
       LDA    $F4     
       CMP    #$01    
       BNE    LFD73   
LFD6C: LDX    #$08    
       STX    AUDC0   
       INX            
       STX    $B3     
LFD73: RTS            

LFD74: LDA    $BB,X   
       TAY            
       CLC            
       ADC    $B4,X   
       STA    $B4,X   
       BVC    LFD86   
       TYA            
       BMI    LFD84   
       DEC    $80,X   
       BIT    $80F6   
LFD86: RTS            

LFD87: SED            
       CLC            
       ADC    $98     
       STA    $98     
       LDA    $94     
       ADC    #$00    
       STA    $94     
       LDA    $90     
       ADC    #$00    
       STA    $90     
       CLD            
LFD9A: RTS            

LFD9B: LDA    $B1     
       CMP    #$02    
       BCC    LFD9A   
LFDA1: SEC            
       SBC    #$02    
       STA    $82     
       LDA    #$07    
       SEC            
       SBC    $82     
       JSR    LFDE2   
       BEQ    LFDBF   
       LDA    #$26    
       JSR    LFE00   
       ASL    $89     
       BCS    LFDBF   
       ASL    $89     
       BCS    LFDBF   
       SEC            
       RTS            

LFDBF: CLC            
       RTS            

LFDC1: LDY    #$05    
LFDC3: LDA    ($8C),Y 
       STA.wy $0084,Y 
       DEY            
       BPL    LFDC3   
LFDCB: ASL    $84     
       ROR    $85     
       ROL    $86     
       LDA    $87     
       AND    #$F0    
       ADC    #$07    
       ASL            
       STA    $87     
       ROR    $88     
       ROL    $89     
       DEX            
       BNE    LFDCB   
       RTS            

LFDE2: ASL            
       STA    $82     
       ASL            
       CLC            
       ADC    $82     
       STA    $83     
       CLC            
       ADC    #$C0    
       STA    $8C     
       LDA    #$00    
       STA    $8D     
       JSR    LFE19   
       LSR            
       LSR            
       STA    $82     
       LDY    $8C     
       CPY    #$EA    
       RTS            

LFE00: PHA            
       LDX    #$05    
       LDY    #$0B    
LFE05: LDA    ($8C),Y 
       STA    $84,X   
       DEY            
       DEX            
       BPL    LFE05   
       PLA            
       SEC            
       SBC    $82     
       TAX            
       JMP    LFDCB   
LFE15: LDX    $9D     
       LDY    $9E     
LFE19: STX    $82     
       TXA            
       ASL            
       ASL            
       ASL            
       ASL            
       SEC            
       SBC    $82     
       STA    $82     
       TYA            
       CMP    #$80    
       BCS    LFE38   
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       LDA    $82     
       STX    $82     
       SEC            
       SBC    $82     
       BCS    LFE41   
LFE38: EOR    #$F0    
       LSR            
       LSR            
       LSR            
       LSR            
       SEC            
       ADC    $82     
LFE41: SEC            
       SBC    #$38    
       RTS            

LFE45: LDA    $A3     
       EOR    #$0B    
       STA    $A3     
       CLC            
       ADC    #$BA    
       STA    $A4     
       LDA    $A7     
       SBC    #$3F    
       STA    $A7     
       BNE    LFE60   
LFE58: LDA    #$08    
       STA    AUDC1   
       STA    AUDF1   
       STA    AUDV1   
LFE60: RTS            

LFE61: LDA    #$33    
       STA    NUSIZ0  
       LDA    #$31    
       STA    NUSIZ1  
       RTS            

LFE6A: LDY    #$0A    
LFE6C: STA    WSYNC   
       LDA    ($8A),Y 
       STA    GRP0    
       BCC    LFE78   
       LDA    ($8C),Y 
       STA    GRP1    
LFE78: DEY            
       BPL    LFE6C   
       STY    $85     
       STY    $87     
       STY    $89     
       INY            
       STY    WSYNC   
       STY    GRP0    
       STY    GRP1    
       RTS            

LFE89: .byte $00,$00
LFE8B: .byte $3F,$1F,$1F,$0F,$0F,$0F,$07
LFE92: .byte $CB,$BB,$6B,$9B,$AB,$3B,$5B,$5B
LFE9A: .byte $84,$D6,$D6,$1C,$26,$26,$44,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00
LFEAB: .byte $0C,$06,$03,$01,$00,$00,$00,$00,$00,$00,$01,$01,$DD,$95,$DD,$00
       .byte $00
LFEBC: .byte $2D,$29,$E9,$A9,$ED,$61,$2F,$00,$00,$00,$38,$08,$BA,$AA,$AB,$00
       .byte $00
LFECD: .byte $50,$58,$5C,$56,$53,$11,$F0,$00,$00,$00,$18,$08,$5A,$5A,$5B,$02
       .byte $02
LFEDE: .byte $BA,$8A,$BA,$A2,$3A,$80,$FE,$00,$00,$00,$00,$00,$A5,$A4,$A5,$35
       .byte $25
LFEEF: .byte $E9,$AB,$AF,$AD,$E9,$00,$00,$00,$00,$00,$00,$00,$BB,$A9,$BB,$A9
       .byte $BB,$3C,$66,$66,$66,$66,$66,$66,$3C,$3C,$18,$18,$18,$18,$18,$38
       .byte $18,$7E,$60,$60,$3C,$06,$06,$46,$3C,$3C,$46,$06,$0C,$0C,$06,$46
       .byte $3C,$0C,$0C,$0C,$7E,$4C,$2C,$1C,$0C,$7C,$46,$06,$06,$7C,$60,$60
       .byte $7E,$3C,$66,$66,$66,$7C,$60,$62,$3C,$18,$18,$18,$18,$0C,$06,$42
       .byte $7E,$3C,$66,$66,$3C,$3C,$66,$66,$3C,$3C,$46,$06,$3E,$66,$66,$66
       .byte $3C
LFF50: .byte $1D,$1D,$1D,$1D,$1D,$1A,$1A,$15,$15,$17,$17,$1A,$1A,$13,$13,$13
       .byte $00,$13,$13,$13,$00,$13,$13,$11,$11,$17,$17,$15,$15,$1A,$1A,$1A
       .byte $00,$1A,$1A,$1A,$00,$1A,$1A,$15,$15,$17,$17,$1A,$1A,$1D,$1D,$0E
       .byte $0E,$0F,$0F,$11,$11,$13,$13,$15,$15,$17,$17,$1A,$1A,$1D,$1D,$1D
       .byte $DF,$BB,$64,$38,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$FF
       .byte $00,$00,$FF,$00,$E7,$24,$18,$7E,$DB,$DB,$7E,$3C,$00,$00,$00,$C3
       .byte $24,$24,$24,$24,$18,$7E,$DB,$DB,$7E,$3C,$CC,$24,$14,$0C,$3E,$6F
       .byte $2F,$3E,$1C,$00,$00,$31,$13,$14,$18,$1C,$3E,$6F,$2F,$3E,$1C,$00
       .byte $D5,$7E,$3C,$18,$18,$18,$18,$7E,$BB,$BB,$7E,$AB,$7E,$3C,$18,$7E
       .byte $DD,$DD,$7E,$00,$00,$00,$C3,$81,$99,$BD,$E7,$66,$3C,$7E,$56,$3C
       .byte $18,$DB,$BD,$FF,$66,$3C,$7E,$6A,$3C,$18,$00,$00,$A0,$F3,$1D,$0E
