; Disassembly of roms/SpaceAdventure_Zellers.BIN
; Disassembled Tue Oct  6 15:22:44 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/SpaceAdventure_Zellers.BIN
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
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXM0P   =  $30
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
LF000: SEI            
       CLD            
       STA    WSYNC   
       LDY    INTIM   
       LDA    #$00    
       TAX            
LF00A: STA    VSYNC,X 
       INX            
       BNE    LF00A   
       DEX            
       TXS            
       STY    $85     
       DEY            
       STY    $98     
       LDA    #$80    
       STA    $E0     
       STX    $95     
       STX    $9A     
       STX    $9F     
       STX    $F8     
       DEX            
       STX    $E8     
       STX    $EF     
       DEX            
       STX    $D5     
       STX    $D7     
       STX    $D9     
       STX    $DB     
       STX    $DD     
       STX    $DF     
       DEX            
       STX    $84     
       LDA    SWCHB   
       AND    #$08    
       STA    $FC     
LF03E: LDX    #$2A    
       LDA    #$02    
       STA    WSYNC   
       STA    VBLANK  
       STA    VSYNC   
       STX    TIM8T   
       LDX    #$02    
       LDY    #$08    
LF04F: LDA    $D1,X   
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA.wy $00D4,Y 
       LDA    $D1,X   
       AND    #$F0    
       LSR            
       STA.wy $00D6,Y 
       DEY            
       DEY            
       DEY            
       DEY            
       DEX            
       BPL    LF04F   
       LDX    #$08    
       LDY    #$50    
LF06C: LDA    $D6,X   
       BNE    LF076   
       STY    $D6,X   
       DEX            
       DEX            
       BPL    LF06C   
LF076: LDX    #$2B    
LF078: LDA    INTIM   
       BNE    LF078   
       STA    WSYNC   
       STA    VSYNC   
       STX    TIM64T  
       LDA    #$01    
       STA    CTRLPF  
       LDA    $E0     
       BPL    LF090   
       DEC    $E0     
       BNE    LF0A2   
LF090: LDA    $E0     
       BEQ    LF098   
       LDA    INPT4   
       BPL    LF09E   
LF098: LDA    SWCHB   
       LSR            
       BCS    LF0B4   
LF09E: LDA    #$00    
       STA    $E0     
LF0A2: LDA    #$03    
       STA    $86     
       JSR    LFEB8   
       LDX    #$27    
       LDA    #$00    
       STA    CXCLR   
LF0AF: STA    $AC,X   
       DEX            
       BPL    LF0AF   
LF0B4: JSR    LFF98   
       LDA    #$00    
       LDX    #$05    
LF0BB: STA    $E2,X   
       STA    $E9,X   
       DEX            
       BPL    LF0BB   
       LDX    #$07    
       LDA    #$60    
LF0C6: STA    $F0,X   
       DEX            
       BPL    LF0C6   
       LDA    SWCHB   
       AND    #$08    
       CMP    $FC     
       BNE    LF0E2   
       LDA    $C0     
       AND    #$7F    
       STA    $C0     
       LDA    $E0     
       BNE    LF0F3   
       STA    $FD     
       BEQ    LF0F3   
LF0E2: LDA    #$00    
       STA    AUDV0   
       STA    AUDV1   
       INC    $FD     
       LDA    $C0     
       ORA    #$80    
       STA    $C0     
       JMP    LF237   
LF0F3: LDA    $8C     
       JSR    LFED9   
       STA    $8D     
       LDA    $8B     
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       LDA    $8B     
       AND    #$0F    
       TAY            
       LDA    LFD58,Y 
       LDY    $BA     
       BEQ    LF11E   
       LDY    $BE     
       BNE    LF11E   
       STA    $80     
       LDA    $C7     
       LSR            
       LDA    $80     
       BCC    LF11C   
       DEC    $BA     
LF11C: ORA    #$80    
LF11E: LDY    $BD     
       BEQ    LF131   
       STA    $80     
       LDA    $BD     
       AND    #$3F    
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    LFD78,Y 
       ORA    $80     
LF131: STA    $E2,X   
       INX            
       CPX    #$06    
       BCS    LF13C   
       EOR    #$10    
       STA    $E2,X   
LF13C: LDA    $CB     
       BEQ    LF163   
       LDA    $CA     
       JSR    LFED9   
       STA    $C8     
       LDA    $C9     
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       LDA    $C9     
       AND    #$0F    
       TAY            
       LDA    LFD58,Y 
       ORA    #$20    
       STA    $E9,X   
       INX            
       CPX    #$06    
       BCS    LF163   
       EOR    #$10    
       STA    $E9,X   
LF163: LDA    $9B     
       JSR    LFED9   
       STA    $9D     
       LDA    $9C     
       AND    #$07    
       ORA    #$08    
       TAY            
       LDA    LFD58,Y 
       ORA    #$50    
       STA    $CF     
       LDA    $C7     
       AND    #$01    
       TAX            
       LDA    $89,X   
       CLC            
       ADC    #$01    
       JSR    LFED9   
       STA    $E1     
       LDA    $C7     
       AND    #$01    
       TAX            
       LDA    $AA,X   
       AND    #$07    
       ORA    #$08    
       TAY            
       LDA    $AA,X   
       LSR            
       LSR            
       LSR            
       TAX            
       LDA    LFD58,Y 
       ORA    #$60    
       STA    $F0,X   
       EOR    #$08    
       INX            
       CPX    #$08    
       BCS    LF1A9   
       STA    $F0,X   
LF1A9: INC    $C7     
       LDA    CXPPMM  
       BPL    LF1E8   
       LDA    $BA     
       BEQ    LF1B5   
       DEC    $BA     
LF1B5: LDA    $BD     
       ORA    $C6     
       BNE    LF1E8   
       LDA    $85     
       AND    #$07    
       TAX            
       LDA    LFD80,X 
       TAX            
       LDA    $AD,X   
       BNE    LF1E8   
       LDA    #$00    
       STA    $A4,X   
       LDA    #$70    
       LDY    $85     
       CPY    #$F0    
       BCC    LF1DC   
       LDY    #$2F    
       STY    $C4     
       LDA    #$90    
       INC    $A4,X   
LF1DC: STA    $AD,X   
       TYA            
       AND    #$F0    
       ORA    #$08    
       STA    $8E,X   
       JSR    LFBD6   
LF1E8: STA    CXCLR   
       LDA    $C7     
       LSR            
       BCC    LF237   
       LDA    $BF     
       ASL            
       STA    $80     
       LDX    #$05    
LF1F6: LDA    $AD,X   
       AND    #$F0    
       CMP    #$70    
       BNE    LF234   
       JSR    LFF98   
       CMP    $80     
       BCS    LF20C   
       LDA    LFDA0,X 
       EOR    $F9     
       STA    $F9     
LF20C: LDA    $FA     
       AND    LFDA0,X 
       BEQ    LF225   
       DEC    $AD,X   
       LDA    $AD,X   
       CMP    #$71    
       BCS    LF234   
       LDA    LFDA0,X 
       EOR    $FA     
       STA    $FA     
       JMP    LF234   
LF225: INC    $AD,X   
       LDA    $AD,X   
       CMP    #$77    
       BCC    LF234   
       LDA    LFDA0,X 
       EOR    $FA     
       STA    $FA     
LF234: DEX            
       BPL    LF1F6   
LF237: LDA    $C7     
       LSR            
       LDA    $97     
       BCC    LF24A   
       CLC            
       ADC    #$50    
       CMP    #$A0    
       BCC    LF24A   
       LDA    $97     
       SEC            
       SBC    #$50    
LF24A: JSR    LFED9   
       STA    $96     
       STA    WSYNC   
       ROL    LF000,X 
       LDA    $96     
       STA    HMBL    
       AND    #$0F    
       TAX            
LF25B: DEX            
       BPL    LF25B   
       STA    RESBL   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$00    
       STA    $BC     
       STA    $D0     
       STA    WSYNC   
       LDX    #$05    
LF26E: DEX            
       BNE    LF26E   
       LDA    #$10    
       STA    HMP1    
       STX    HMBL    
       NOP            
       NOP            
       STA    RESP0   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$2A    
       EOR    $FD     
       STA    COLUBK  
       STA    COLUPF  
       LDA    $9C     
       LSR            
       LSR            
       LSR            
       STA    $CC     
LF290: LDA    INTIM   
       BNE    LF290   
       STA    WSYNC   
       STA    VBLANK  
       STA    WSYNC   
       LDA    #$66    
       EOR    $FD     
       STA    COLUBK  
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$07    
       STA    $A2     
       STA    VDELP0  
       STA    VDELP1  
LF2AF: LDY    $A2     
       LDA    ($D4),Y 
       STA    $80     
       STA    WSYNC   
       LDA    ($D6),Y 
       TAX            
       LDA    ($DE),Y 
       STA    GRP0    
       LDA    ($DC),Y 
       STA    GRP1    
       BIT    $FF     
       LDA    ($DA),Y 
       STA    GRP0    
       LDA    ($D8),Y 
       LDY    $80     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       DEC    $A2     
       BPL    LF2AF   
       LDA    #$00    
       STA    VDELP0  
       STA    VDELP1  
       STA    NUSIZ1  
       LDA    $AC     
       STA    REFP0   
       LDA    #$2A    
       EOR    $FD     
       STA    COLUBK  
       LDA    $8D     
       STA    HMP0    
       AND    #$0F    
       TAX            
LF2F1: DEX            
       BPL    LF2F1   
       STA    RESP0   
       STA    WSYNC   
       LDA    #$00    
       STA    PF0     
       EOR    $BD     
       STA    COLUBK  
       LDA    $C8     
       STA    HMM0    
       AND    #$0F    
       TAX            
LF307: DEX            
       BPL    LF307   
       STA    RESM0   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$00    
       STA    PF0     
       EOR    $BD     
       STA    COLUBK  
       LDX    #$05    
       LDA    #$75    
       STA    NUSIZ0  
       LDA    $C7     
       STA    REFP1   
       CLC            
       ADC    $85     
       STA    $88     
       STA    COLUPF  
       LDA    #$00    
       STA    HMP0    
       STA    HMM0    
       LDA    $E7     
       STA    $E7     
       AND    #$1F    
       ORA    #$20    
       STA    $99     
       LDY    #$0F    
       LDA    $BE     
       BEQ    LF357   
       LDY    #$60    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       DEC    $BE     
       BNE    LF34F   
       LDA    #$00    
       STA    $BB     
LF34F: STA    WSYNC   
       DEY            
       BNE    LF34F   
       JMP    LF40B   
LF357: STA    WSYNC   
LF359: STA    COLUP0  
       LDA    ($E7),Y 
       STA    GRP0    
       LDA    $E9,X   
       STA    $EE     
       LDA    ($EE),Y 
       STA    ENAM0   
       LDA    ($94),Y 
       STA    ENABL   
       LDA    LFEFA,X 
       STA    HMBL    
       DEY            
       LDA    ($E7),Y 
       PHA            
       LDA    ($99),Y 
       TAY            
       PLA            
       STA    WSYNC   
       STY    COLUP0  
       STA    GRP0    
       NOP            
       NOP            
       LDA    $B3,X   
       STA    HMP1    
       AND    #$0F    
       TAY            
LF387: DEY            
       BPL    LF387   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       LDY    #$0D    
       LDA    ($E7),Y 
       STA    GRP0    
       LDA    ($99),Y 
       STA    COLUP0  
       LDA    ($EE),Y 
       STA    ENAM0   
       LDA    ($94),Y 
       STA    ENABL   
       DEY            
       LDA    #$00    
       STA    HMP1    
       LDA    $88     
       ADC    $85     
       STA    $88     
       STA    COLUPF  
       LDA    $8E,X   
       EOR    $FD     
       STA    COLUP1  
       STA    WSYNC   
       STA    HMOVE   
       LDA    ($E7),Y 
       STA    GRP0    
       LDA    ($99),Y 
       STA    COLUP0  
       LDA    ($EE),Y 
       STA    ENAM0   
       LDA    ($94),Y 
       STA    ENABL   
       LDA    $AD,X   
       STA    $83     
       LDA    CXM0P   
       ORA    $D0     
       STA    $D0     
       LDA    CXPPMM  
       ASL            
       ROR    $BC     
       STA    CXCLR   
       DEY            
LF3DB: STA    WSYNC   
       STA    HMOVE   
       LDA    ($83),Y 
       STA    GRP1    
       LDA    ($99),Y 
       STA    COLUP0  
       LDA    ($E7),Y 
       STA    GRP0    
       LDA    ($EE),Y 
       STA    ENAM0   
       LDA    ($94),Y 
       STA    ENABL   
       DEY            
       BPL    LF3DB   
       LDY    #$0F    
       LDA    $E1,X   
       STA    $E7     
       AND    #$1F    
       ORA    #$20    
       STA.w  $0099   
       LDA    ($99),Y 
       DEX            
       BMI    LF40B   
       JMP    LF359   
LF40B: STA    WSYNC   
       LDA    #$00    
       STA    PF1     
       STA    PF2     
       STA    ENABL   
       LDA    $9D     
       STA    HMP0    
       AND    #$0F    
       TAX            
LF41C: DEX            
       BPL    LF41C   
       STA    RESP0   
       STA    WSYNC   
       LDA    #$66    
       EOR    $FD     
       STA    COLUBK  
       NOP            
       LDA    $E1     
       STA    HMP1    
       AND    #$0F    
       TAX            
LF431: DEX            
       BPL    LF431   
       STA    RESP1   
       STA    WSYNC   
       LDA    #$2A    
       EOR    $FD     
       STA    COLUBK  
       LDY    #$07    
       LDA    #$40    
       STA    NUSIZ0  
       LDA    #$00    
       STA    NUSIZ1  
       STA    COLUPF  
       STA    REFP0   
       STA    REFP1   
       LDA    CXM0P   
       ORA    $D0     
       STA    $D0     
       LDA    CXPPMM  
       ASL            
       ROR    $BC     
       STA    CXCLR   
       STA    WSYNC   
       STA    HMOVE   
       STX    PF0     
       LDA    $BF     
       ASL            
       ASL            
       ASL            
       ASL            
       EOR    #$24    
       EOR    $FD     
       STA    COLUBK  
       TXA            
       EOR    $FD     
       STA    COLUP0  
       STA    COLUP1  
       LDA    $A0     
       STA    $FB     
       LDA    $A1     
       STA    $CE     
       STA    HMCLR   
       LDX    #$07    
LF480: LDA    #$50    
       CPX    $CC     
       BNE    LF488   
       LDA    $CF     
LF488: STA    $9E     
       LDA    $F0,X   
       STA    $F7     
       STA    WSYNC   
       LDA    LFDC8,X 
       STA    PF1     
       LDA    LFDD0,X 
       STA    PF2     
       LDA    ($9E),Y 
       STA    GRP0    
       LDA    ($F7),Y 
       STA    GRP1    
       DEY            
       LDA    ($9E),Y 
       STA    WSYNC   
       STA    GRP0    
       LDA    ($F7),Y 
       STA    GRP1    
       LDA    LFD88,X 
       STA    HMM0    
       AND    #$0F    
       TAY            
LF4B5: DEY            
       BPL    LF4B5   
       STA    RESM0   
       LDY    #$05    
       LDA    ($9E),Y 
       STA    WSYNC   
       STA    GRP0    
       LDA    ($F7),Y 
       STA    GRP1    
       LDA    LFD90,X 
       STA    HMM1    
       AND    #$0F    
       TAY            
LF4CE: DEY            
       BPL    LF4CE   
       STA    RESM1   
       LDY    #$04    
LF4D5: STA    WSYNC   
       STA    HMOVE   
       LDA    ($9E),Y 
       STA    GRP0    
       LDA    ($F7),Y 
       STA    GRP1    
       LDA    $FB     
       BPL    LF4EA   
       LDA    LFD98,Y 
       STA    ENAM0   
LF4EA: LDA    $CE     
       BPL    LF4F3   
       LDA    LFD98,Y 
       STA    ENAM1   
LF4F3: DEY            
       STA    HMCLR   
       BNE    LF4D5   
       STA    WSYNC   
       LDA    ($9E),Y 
       STA    GRP0    
       LDA    ($F7),Y 
       STA    GRP1    
       LDA    #$00    
       STA    ENAM0   
       STA    ENAM1   
       LDY    #$07    
       ASL    $FB     
       ASL    $CE     
       DEX            
       BMI    LF514   
       JMP    LF480   
LF514: STA    WSYNC   
       LDA    #$2A    
       EOR    $FD     
       STA    COLUBK  
       STA    COLUPF  
       LDA    #$00    
       STA    PF1     
       STA    PF2     
       STA    NUSIZ1  
       LDA    $C1     
       AND    #$0F    
       STA    RESP0   
       STA    $A2     
       LDA    #$02    
       STA    $8D     
       LDA    $C1     
       AND    #$F0    
       LSR            
       LSR            
       STA    RESP1   
       LSR            
       LSR            
       STA    $E1     
       LDA    #$71    
       STA    CTRLPF  
       STA    RESBL   
       STA    WSYNC   
       LDA    #$66    
       EOR    $FD     
       STA    COLUBK  
       LDA    $86     
       CMP    #$0A    
       BCC    LF554   
       LDA    #$09    
LF554: STA    $80     
LF556: STA    WSYNC   
       LDA    #$00    
       STA    ENABL   
       LDA    $E1     
       BMI    LF566   
       BEQ    LF566   
       LDA    #$FF    
       STA    ENABL   
LF566: LDX    $A2     
       LDA    LFBF5,X 
       STA    NUSIZ1  
       LDX    $80     
       LDA    LFBF5,X 
       STA    NUSIZ0  
       LDY    #$03    
LF576: STA    WSYNC   
       LDA    $80     
       BEQ    LF583   
       BMI    LF583   
       LDA    LFDD8,Y 
       STA    GRP0    
LF583: LDA    $A2     
       BEQ    LF58E   
       BMI    LF58E   
       LDA    LFDDC,Y 
       STA    GRP1    
LF58E: DEY            
       BPL    LF576   
       LDA    $80     
       SEC            
       SBC    #$03    
       STA    $80     
       LDA    $A2     
       SEC            
       SBC    #$03    
       STA    $A2     
       DEC    $E1     
       LDA    #$00    
       STA    ENABL   
       DEC    $8D     
       BPL    LF556   
       STA    WSYNC   
       LDA    #$2A    
       EOR    $FD     
       STA    COLUBK  
       STA    WSYNC   
       LDA    #$1E    
       STA    TIM64T  
       LDA    #$00    
       STA    GRP1    
       STA    GRP0    
       STA    COLUBK  
       STA    COLUPF  
       LDA    $C0     
       BPL    LF5C9   
       JMP    LFB83   
LF5C9: LDA    $BE     
       BNE    LF5D8   
       LDA    $C6     
       BEQ    LF5DB   
       LDA    $C7     
       LSR            
       BCC    LF5D8   
       DEC    $C6     
LF5D8: JMP    LF6C5   
LF5DB: LDA    $BF     
       CLC            
       ADC    #$01    
       CMP    #$10    
       BCC    LF5E6   
       LDA    #$0F    
LF5E6: LSR            
       TAX            
       LDA    $C7     
       AND    LFEB0,X 
       CMP    LFEB0,X 
       BEQ    LF5F5   
LF5F2: JMP    LF6C5   
LF5F5: LDA    $BD     
       BNE    LF5F2   
       LDA    $C7     
       AND    #$01    
       TAY            
       LDA.wy $0089,Y 
       AND    #$03    
       STA    $80     
       LDA.wy $00AA,Y 
       AND    #$07    
       ORA    $80     
       BEQ    LF611   
       JMP    LF696   
LF611: LDA    $9B     
       STA    $80     
       LDA    $9C     
       STA    $A2     
       LDA    $85     
       AND    #$02    
       TAX            
       LDA    LFDE4,X 
       STA    $9D     
       LDA    #$FF    
       STA    $8D     
       LDA    $85     
       LSR            
       BCC    LF645   
LF62C: LDA    $9B     
       AND    #$FC    
       CMP.wy $0089,Y 
       BEQ    LF645   
       BCS    LF63E   
       LDA    #$03    
       STA.wy $0081,Y 
       BNE    LF663   
LF63E: LDA    #$01    
       STA.wy $0081,Y 
       BNE    LF663   
LF645: LDA.wy $00AA,Y 
       LSR            
       LSR            
       LSR            
       CMP    $CC     
       BCC    LF657   
       BNE    LF65E   
       INC    $8D     
       BNE    LF62C   
       BEQ    LF6C5   
LF657: LDA    #$00    
       STA.wy $0081,Y 
       BEQ    LF663   
LF65E: LDA    #$02    
       STA.wy $0081,Y 
LF663: LDX    $81,Y   
       LDA    LFDE8,X 
       CLC            
       ADC.wy $0089,Y 
       STA    $9B     
       LDA    LFDEC,X 
       CLC            
       ADC.wy $00AA,Y 
       STA    $9C     
       JSR    LFF78   
       BNE    LF68E   
       LDA    $C7     
       AND    #$01    
       TAY            
       LDA.wy $0081,Y 
       CLC            
       ADC    $9D     
       AND    #$03    
       STA.wy $0081,Y 
       BPL    LF663   
LF68E: LDA    $80     
       STA    $9B     
       LDA    $A2     
       STA    $9C     
LF696: LDA    $C7     
       AND    #$01    
       TAY            
       LDA.wy $0081,Y 
       TAX            
       LDA    LFDE0,X 
       CLC            
       ADC.wy $0089,Y 
       STA.wy $0089,Y 
       LDA    LFDE4,X 
       CLC            
       ADC.wy $00AA,Y 
       STA.wy $00AA,Y 
       CMP    #$07    
       BCS    LF6BC   
       LDA    #$00    
       STA.wy $0081,Y 
LF6BC: CMP    #$40    
       BCC    LF6C5   
       LDA    #$02    
       STA.wy $0081,Y 
LF6C5: LDA    $BC     
       BEQ    LF719   
       LSR    $BC     
       LSR    $BC     
       LDX    #$05    
LF6CF: LSR    $BC     
       BCS    LF6D6   
       DEX            
       BPL    LF6CF   
LF6D6: LDA    $AD,X   
       CMP    #$D0    
       BNE    LF6EB   
       SED            
       LDA    $BB     
       CLC            
       ADC    #$01    
       STA    $BB     
       CLD            
       DEC    $AD,X   
       DEC    $AD,X   
       BMI    LF719   
LF6EB: CMP    #$50    
       BCS    LF6F3   
       LDY    $BA     
       BEQ    LF719   
LF6F3: CMP    #$C0    
       BCS    LF719   
       LDA    $BD     
       BNE    LF719   
       LDA    $BA     
       BEQ    LF705   
       JSR    LFFA7   
       JMP    LF719   
LF705: LDY    #$3F    
       LDA    $86     
       ORA    $E0     
       BNE    LF70F   
       LDY    #$FF    
LF70F: STY    $BD     
       LDA    #$00    
       STA    $BB     
       LDA    #$E0    
       STA    $AD,X   
LF719: LDA    $D0     
       BPL    LF74E   
       LDA    #$00    
       STA    $CB     
       LDA    $C9     
       CLC            
       ADC    #$05    
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       LDA    $AD,X   
       CMP    #$D0    
       BNE    LF74B   
       LDA    #$E0    
       STA    $AD,X   
       LDA    $C0     
       ORA    #$50    
       STA    $C0     
       SED            
       LDA    $BB     
       SEC            
       SBC    #$01    
       CLD            
       BCS    LF746   
       LDA    #$00    
LF746: STA    $BB     
       JMP    LF74E   
LF74B: JSR    LFFA7   
LF74E: LDA    CXM0P   
       ASL            
       BPL    LF760   
       LDA    $CC     
       TAX            
       LDA    LFDA0,X 
       EOR    $A0     
       STA    $A0     
       JSR    LFB8B   
LF760: LDA    CXM1P   
       BPL    LF771   
       LDA    $CC     
       TAX            
       LDA    LFDA0,X 
       EOR    $A1     
       STA    $A1     
       JSR    LFB8B   
LF771: LDA    $E0     
       BEQ    LF782   
       LDA    $C7     
       AND    #$7F    
       CMP    #$7F    
       BNE    LF77F   
       INC    $FD     
LF77F: JMP    LF86D   
LF782: LDA    #$00    
       STA    AUDV0   
       STA    AUDV1   
       LDA    $BE     
       BEQ    LF7C7   
       STA    AUDV0   
       LSR            
       STA    AUDV1   
       LSR            
       LSR            
       TAX            
       LDA    LFF40,X 
       STA    AUDF0   
       STA    AUDF1   
       LDA    #$0C    
       STA    AUDC0   
       STA    AUDC1   
       LDA    $BE     
       CMP    #$50    
       BCS    LF7C7   
       AND    #$07    
       CMP    #$07    
       BNE    LF7C7   
       LDY    $BF     
LF7AF: SED            
       LDA    $BB     
       CLC            
       ADC    $D1     
       STA    $D1     
       LDA    $D2     
       ADC    #$00    
       STA    $D2     
       LDA    $D3     
       ADC    #$00    
       STA    $D3     
       CLD            
       DEY            
       BNE    LF7AF   
LF7C7: LDA    CXPPMM  
       BPL    LF7D3   
       LDA    $85     
       STA    AUDF0   
       STA    AUDV0   
       STA    AUDC0   
LF7D3: LDA    $C4     
       BEQ    LF7DD   
       DEC    $C4     
       EOR    #$0F    
       BNE    LF7E3   
LF7DD: LDA    $CB     
       BEQ    LF7EC   
       LDA    $CA     
LF7E3: STA    AUDV0   
       LSR            
       STA    AUDF0   
       LDA    #$0D    
       STA    AUDC0   
LF7EC: LDA    $C6     
       CMP    #$E0    
       BCS    LF7FA   
       LDA    $B9     
       BEQ    LF804   
       LSR            
       LSR            
       LSR            
       LSR            
LF7FA: STA    AUDF0   
       EOR    #$07    
       STA    AUDV0   
       LDA    #$08    
       STA    AUDC0   
LF804: LDX    #$05    
       LDA    #$00    
LF808: LDA    $AD,X   
       CMP    #$E0    
       BCS    LF813   
       DEX            
       BPL    LF808   
       BMI    LF81E   
LF813: LDA    #$08    
       STA    AUDC1   
       LDA    $C7     
       STA    AUDV1   
       ASL            
       STA    AUDF1   
LF81E: LDA    $C0     
       BMI    LF851   
       BEQ    LF851   
       STA    AUDV1   
       AND    #$07    
       STA    AUDF1   
       LDA    #$0C    
       STA    AUDC1   
       LDA    $C0     
       DEC    $C0     
       AND    #$0F    
       CMP    #$0F    
       BNE    LF851   
       SED            
       LDA    $D2     
       SEC            
       SBC    #$02    
       STA    $D2     
       LDA    $D3     
       SBC    #$00    
       STA    $D3     
       CLD            
       BCS    LF851   
       LDA    #$00    
       STA    $D1     
       STA    $D2     
       STA    $D3     
LF851: LDA    $BA     
       BEQ    LF86D   
       LDY    $BE     
       BNE    LF86D   
       LDY    #$1F    
       CMP    #$E0    
       BCS    LF865   
       CMP    #$1F    
       BCS    LF86D   
       LDY    #$10    
LF865: STA    AUDV1   
       STY    AUDF1   
       LDA    #$0C    
       STA    AUDC1   
LF86D: LDA    $C7     
       LSR            
       BCC    LF8B4   
       LDX    #$05    
LF874: LDA    $AD,X   
       AND    #$F0    
       CMP    #$C0    
       BNE    LF8B1   
       DEC    $AD,X   
       DEC    $AD,X   
       LDA    $E0     
       BNE    LF8A5   
       SED            
       LDA    $D1     
       CLC            
       ADC    #$10    
       STA    $D1     
       LDA    $D2     
       ADC    #$00    
       STA    $D2     
       LDA    $D3     
       ADC    #$00    
       STA    $D3     
       CLD            
       LDA    $AD,X   
       STA    AUDF1   
       LDA    #$0F    
       STA    AUDV1   
       LDA    #$0C    
       STA    AUDC1   
LF8A5: LDA    $AD,X   
       CMP    #$C0    
       BNE    LF8B4   
       LDA    #$00    
       STA    $AD,X   
       BEQ    LF8B4   
LF8B1: DEX            
       BPL    LF874   
LF8B4: LDA    $BD     
       BEQ    LF8EA   
       LDY    $E0     
       BNE    LF8C9   
       LSR            
       STA    AUDF1   
       LSR            
       LSR            
       ORA    #$0C    
       STA    AUDV1   
       LDA    #$08    
       STA    AUDC1   
LF8C9: DEC    $BD     
       BNE    LF8E7   
       LDA    #$00    
       STA    $CB     
       LDA    $E0     
       BNE    LF8E3   
       DEC    $86     
       BPL    LF8E3   
       INC    $86     
       INC    $E0     
       LDA    #$00    
       STA    AUDV0   
       STA    AUDV1   
LF8E3: LDA    #$7F    
       STA    $BA     
LF8E7: JMP    LFA23   
LF8EA: LDA    $BE     
       BNE    LF8E7   
       LDA    $E0     
       BEQ    LF8FC   
       LDA    #$03    
       STA    $BF     
       LDA    $C7     
       EOR    $AD     
       BNE    LF8FF   
LF8FC: LDA    SWCHA   
LF8FF: STA    $80     
       BMI    LF948   
       LDA    $AC     
       BEQ    LF90F   
       LDA    #$00    
       STA    $AC     
       LDA    #$0F    
       STA    $A3     
LF90F: LDA    $A3     
       BEQ    LF917   
       DEC    $A3     
       BPL    LF995   
LF917: INC    $C2     
       LDA    $C2     
       AND    #$07    
       BNE    LF932   
       INC    $9B     
       BPL    LF927   
       LDA    #$00    
       STA    $9B     
LF927: JSR    LFF78   
       BNE    LF932   
       DEC    $C2     
       DEC    $9B     
       BPL    LF93C   
LF932: DEC    $97     
       DEC    $97     
       BNE    LF93C   
       LDA    #$A0    
       STA    $97     
LF93C: INC    $8C     
       LDA    $8C     
       CMP    #$70    
       BCC    LF995   
       DEC    $8C     
       BPL    LF995   
LF948: LDA    $80     
       AND    #$40    
       BNE    LF995   
       LDA    $AC     
       BNE    LF95A   
       LDA    #$08    
       STA    $AC     
       LDA    #$0F    
       STA    $A3     
LF95A: LDA    $A3     
       BEQ    LF962   
       DEC    $A3     
       BPL    LF995   
LF962: DEC    $C2     
       LDA    $C2     
       AND    #$07    
       BNE    LF97D   
       DEC    $9B     
       BPL    LF972   
       LDA    #$7F    
       STA    $9B     
LF972: JSR    LFF78   
       BNE    LF97D   
       INC    $C2     
       INC    $9B     
       BPL    LF98B   
LF97D: INC    $97     
       INC    $97     
       LDA    $97     
       CMP    #$A0    
       BCC    LF98B   
       LDA    #$00    
       STA    $97     
LF98B: DEC    $8C     
       LDA    $8C     
       CMP    #$10    
       BNE    LF995   
       INC    $8C     
LF995: LDA    $80     
       AND    #$10    
       BNE    LF9D2   
       INC    $C3     
       LDA    $C3     
       AND    #$07    
       BNE    LF9BA   
       INC    $9C     
       LDA    $9C     
       CMP    #$40    
       BCC    LF9AF   
       LDA    #$01    
       STA    $9C     
LF9AF: JSR    LFF78   
       BNE    LF9BA   
       DEC    $C3     
       DEC    $9C     
       BPL    LF9C6   
LF9BA: INC    $94     
       LDA    $94     
       CMP    #$10    
       BCC    LF9C6   
       LDA    #$00    
       STA    $94     
LF9C6: INC    $8B     
       LDA    $8B     
       CMP    #$54    
       BCC    LFA05   
       DEC    $8B     
       BPL    LFA05   
LF9D2: LDA    $80     
       AND    #$20    
       BNE    LFA05   
       DEC    $C3     
       LDA    $C3     
       AND    #$07    
       BNE    LF9F3   
       DEC    $9C     
       BNE    LF9E8   
       LDA    #$3F    
       STA    $9C     
LF9E8: JSR    LFF78   
       BNE    LF9F3   
       INC    $C3     
       INC    $9C     
       BPL    LF9FF   
LF9F3: DEC    $94     
       LDA    $94     
       CMP    #$FF    
       BNE    LF9FF   
       LDA    #$0F    
       STA    $94     
LF9FF: DEC    $8B     
       BNE    LFA05   
       INC    $8B     
LFA05: LDA    $CB     
       BNE    LFA23   
       LDA    $E0     
       BNE    LFA11   
       LDA    INPT4   
       BMI    LFA23   
LFA11: LDA    $8B     
       STA    $C9     
       DEC    $85     
       LDA    $8C     
       STA    $CA     
       LDA    $AC     
       ORA    #$01    
       STA    $CB     
       BNE    LFA49   
LFA23: LDA    $CB     
       BEQ    LFA49   
       CMP    #$01    
       BEQ    LFA3A   
       LDA    $CA     
       SEC            
       SBC    #$06    
       STA    $CA     
       BCS    LFA49   
       LDA    #$00    
       STA    $CB     
       BEQ    LFA49   
LFA3A: LDA    $CA     
       CLC            
       ADC    #$06    
       STA    $CA     
       CMP    #$8A    
       BCC    LFA49   
       LDA    #$00    
       STA    $CB     
LFA49: LDA    $B9     
       BEQ    LFA88   
       AND    #$07    
       CMP    #$07    
       BNE    LFA6F   
       LDX    #$05    
LFA55: LDA    $AD,X   
       BEQ    LFA6C   
       CMP    #$50    
       BCS    LFA6C   
       CLC            
       ADC    #$10    
       CMP    #$50    
       BCC    LFA66   
       LDA    #$10    
LFA66: STA    $AD,X   
       LDA    $B9     
       STA    $8E,X   
LFA6C: DEX            
       BPL    LFA55   
LFA6F: DEC    $B9     
       BNE    LFA88   
       LDX    #$05    
LFA75: LDA    $AD,X   
       BEQ    LFA85   
       CMP    #$50    
       BCS    LFA85   
       LDA    #$50    
       STA    $AD,X   
       LDA    #$48    
       STA    $8E,X   
LFA85: DEX            
       BPL    LFA75   
LFA88: LDX    #$05    
LFA8A: LDA    $AD,X   
       CMP    #$50    
       BCC    LFAED   
       CMP    #$E0    
       BCS    LFAED   
       LDY    $A4,X   
       BPL    LFA9D   
       LDA    $C7     
       LSR            
       BCC    LFAED   
LFA9D: LDA    $F9     
       AND    LFDA0,X 
       BEQ    LFAC7   
       LDA    $B3,X   
       SEC            
       SBC    #$10    
       STA    $B3,X   
       AND    #$F0    
       CMP    #$80    
       BNE    LFABB   
       INC    $B3,X   
       LDA    $B3,X   
       AND    #$0F    
       ORA    #$70    
       STA    $B3,X   
LFABB: LDA    $B3,X   
       CMP    #$98    
       BNE    LFAEA   
       JSR    LFCA0   
       JMP    LFAED   
LFAC7: LDA    $B3,X   
       CLC            
       ADC    #$10    
       STA    $B3,X   
       AND    #$F0    
       CMP    #$80    
       BNE    LFADE   
       DEC    $B3,X   
       LDA    $B3,X   
       AND    #$0F    
       ORA    #$90    
       STA    $B3,X   
LFADE: LDA    $B3,X   
       CMP    #$70    
       BNE    LFAEA   
       JSR    LFCA0   
       JMP    LFAED   
LFAEA: DEY            
       BPL    LFA9D   
LFAED: DEX            
       BPL    LFA8A   
       LDX    #$05    
       LDA    #$00    
LFAF4: ORA    $AD,X   
       DEX            
       BPL    LFAF4   
       CMP    #$00    
       BNE    LFB6A   
       LDA    $A0     
       ORA    $A1     
       BNE    LFB19   
       LDA    #$80    
       STA    $BE     
       INC    $BF     
       SED            
       LDA    $C1     
       CLC            
       ADC    #$01    
       STA    $C1     
       CLD            
       INC    $86     
       JSR    LFEB8   
       BPL    LFB6A   
LFB19: LDA    $85     
       CMP    #$FD    
       BCC    LFB6A   
       LDA    $BD     
       ORA    $BE     
       BNE    LFB6A   
       LDA    SWCHB   
       LSR            
       BCC    LFB6A   
       JSR    LFF98   
       AND    #$07    
       TAX            
       LDA    LFD80,X 
       TAX            
       LDA    #$60    
       STA    $AD,X   
       LDA    #$00    
       STA    $A4,X   
       LDA    #$1F    
       STA    $C4     
       LDA    $85     
       CMP    #$A0    
       BCS    LFB51   
       LDA    $BF     
       CMP    #$04    
       BCC    LFB5F   
       INC    $A4,X   
       BNE    LFB5F   
LFB51: LDA    #$D0    
       STA    $AD,X   
       LSR    $C4     
       LDA    $BF     
       CMP    #$03    
       BCS    LFB5F   
       DEC    $A4,X   
LFB5F: LDA    $85     
       AND    #$F0    
       ORA    #$08    
       STA    $8E,X   
       JSR    LFBD6   
LFB6A: LDA    $C7     
       AND    #$0F    
       CMP    #$0F    
       BNE    LFB82   
       LDX    #$05    
LFB74: LDA    $AD,X   
       CMP    #$E0    
       BCC    LFB7F   
       CLC            
       ADC    #$10    
       STA    $AD,X   
LFB7F: DEX            
       BPL    LFB74   
LFB82: NOP            
LFB83: LDA    INTIM   
       BNE    LFB83   
       JMP    LF03E   
LFB8B: LDX    #$05    
       LDA    $85     
       STA    $80     
LFB91: LDA    $AD,X   
       CMP    #$D0    
       BEQ    LFBBF   
       LDA    #$10    
       STA    $AD,X   
       LDA    $80     
       AND    #$07    
       STA    $B3,X   
       CMP    #$05    
       BCS    LFBB2   
       CMP    #$03    
       BCS    LFBBB   
       LDA    LFDA0,X 
       ORA    $F9     
       STA    $F9     
       BNE    LFBBB   
LFBB2: LDA    LFDA0,X 
       EOR    #$FF    
       AND    $F9     
       STA    $F9     
LFBBB: LDA    #$FF    
       STA    $A4,X   
LFBBF: ROR    $80     
       DEX            
       BPL    LFB91   
       LDA    #$00    
       STA    $87     
       LDX    $BF     
       CPX    #$08    
       BCC    LFBD0   
       LDX    #$07    
LFBD0: LDA    LFF20,X 
       STA    $B9     
       RTS            

LFBD6: LDA    $98     
       LSR            
       BCC    LFBEA   
       LDA    LFDA0,X 
       EOR    #$FF    
       AND    $F9     
       STA    $F9     
       LDA    #$B8    
       STA    $B3,X   
       BNE    LFBF5   
LFBEA: LDA    #$50    
       STA    $B3,X   
       LDA    LFDA0,X 
       ORA    $F9     
       STA    $F9     
LFBF5: RTS            

LFBF6: .byte $00,$01,$03,$03,$03,$03,$03,$03,$03,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$24,$00,$00,$42,$00
       .byte $00,$81,$00,$00,$42,$00,$00,$24,$00,$00,$00,$18,$00,$24,$00,$42
       .byte $00,$81,$00,$42,$00,$24,$00,$18,$00,$00,$00,$00,$00,$18,$00,$24
       .byte $00,$42,$00,$24,$00,$18,$00,$00,$00,$00,$00,$00,$00,$00,$00,$18
       .byte $00,$24,$00,$18,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$58
       .byte $24,$56,$6A,$24,$1A,$01,$00,$00,$00,$00,$00,$00,$00,$00,$18,$34
       .byte $34,$FF,$34,$34,$18,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$18,$3E,$7C,$18,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$3C,$24,$24,$E7
       .byte $89,$E7,$24,$24,$3C,$00,$00,$00,$00,$00
LFCA0: LDA    $AD,X   
       CMP    #$60    
       BNE    LFCBA   
       LDA    $BF     
       CMP    #$05    
       BCC    LFCBA   
       LDA    $85     
       CMP    #$D0    
       BCS    LFCBA   
       LDA    LFDA0,X 
       EOR    $F9     
       STA    $F9     
       RTS            

LFCBA: LDA    #$00    
       STA    $AD,X   
       RTS            

LFCBF: .byte $EA,$00,$55,$00,$AA,$00,$55,$00,$AA,$00,$55,$00,$AA,$00,$55,$00
       .byte $AA,$00,$66,$24,$24,$24,$3C,$3C,$FC,$9A,$A5,$19,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$24,$80,$01,$08,$10,$80,$01,$24,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$42,$10,$24,$08,$42,$00,$00,$00,$00,$00
       .byte $00,$00,$7F,$43,$43,$43,$41,$41,$7F,$00,$0C,$0C,$0C,$0C,$04,$04
       .byte $04,$00,$7F,$60,$60,$7F,$01,$41,$7F,$00,$7F,$43,$03,$3F,$02,$42
       .byte $7E,$00,$06,$06,$06,$7F,$42,$42,$42,$00,$7F,$43,$03,$7F,$40,$40
       .byte $7F,$00,$7F,$43,$43,$7F,$40,$41,$7F,$00,$03,$03,$03,$03,$01,$01
       .byte $3F,$00,$7F,$43,$43,$7F,$22,$22,$3E,$00,$03,$03,$03,$7F,$41,$41
       .byte $7F,$00,$00,$00,$00,$00,$00,$00,$00
LFD58: .byte $10,$0F,$0E,$0D,$0C,$0B,$0A,$09,$08,$07,$06,$05,$04,$03,$02,$01
LFD68: .byte $70,$60,$50,$40,$30,$20,$10,$00,$F0,$E0,$D0,$C0,$B0,$A0,$90,$00
LFD78: .byte $60,$40,$60,$40,$60,$40,$60,$40
LFD80: .byte $00,$01,$02,$03,$04,$05,$02,$03
LFD88: .byte $00,$90,$C5,$B2,$96,$E7,$54,$00
LFD90: .byte $00,$E7,$E3,$76,$A0,$C5,$41,$00
LFD98: .byte $00,$00,$FF,$FF,$FF,$FF,$00,$00
LFDA0: .byte $01,$02,$04,$08,$10,$20,$40,$80
LFDA8: .byte $10,$00,$00,$08,$10,$3C,$3C,$08,$1F,$24,$24,$F8,$01,$E7,$E7,$80
       .byte $FF,$3C,$3C,$FF,$10,$26,$64,$08,$1F,$E3,$C7,$F8,$10,$00,$00,$08
LFDC8: .byte $10,$10,$1F,$01,$FF,$10,$1F,$10
LFDD0: .byte $00,$3C,$24,$E7,$3C,$64,$C7,$00
LFDD8: .byte $00,$54,$38,$10
LFDDC: .byte $00,$EE,$38,$EE
LFDE0: .byte $00,$01,$00,$FF
LFDE4: .byte $01,$00,$FF,$00
LFDE8: .byte $00,$04,$00,$FF
LFDEC: .byte $08,$00,$F8,$00
LFDF0: .byte $80,$40,$20,$10,$08,$04,$02,$01
LFDF8: .byte $00,$04,$08,$0C,$10,$14,$18,$1C,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$30,$18,$E7,$E6,$FC,$F8
       .byte $C0,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$FF,$FF,$FF,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$08,$20,$14,$42,$10
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$24,$A2,$49,$24,$89,$44
       .byte $10,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$AA,$00,$30,$18,$E7,$E6,$FC,$F8
       .byte $C0,$80,$00,$AA,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00
LFEB0: .byte $0E,$06,$06,$02,$02,$00,$00,$00
LFEB8: LDA    #$40    
       STA    $8C     
       STA    $8B     
       STA    $9B     
       LDA    #$1C    
       STA    $9C     
       LDA    #$7E    
       STA    $A0     
       STA    $A1     
       LDA    #$10    
       STA    $89     
       LDA    #$54    
       STA    $8A     
       LDA    #$20    
       STA    $AA     
       STA    $AB     
       RTS            

LFED9: LDX    #$00    
LFEDB: CMP    #$0F    
       BCC    LFEE5   
       SEC            
       SBC    #$0F    
       INX            
       BNE    LFEDB   
LFEE5: STX    $80     
       TAX            
LFEE8: LDA    LFD68,X 
       ORA    $80     
       RTS            

LFEEE: .byte $25,$10,$00,$00,$00,$00,$00,$00,$00,$01,$00,$00
LFEFA: .byte $10,$F0,$10,$F0,$10,$F0,$00,$00,$00,$00,$00,$00,$00,$FF,$00,$00
       .byte $00,$00,$00,$00,$00,$FF,$00,$00,$00,$00,$00,$00,$00,$FF,$00,$00
       .byte $00,$00,$00,$00,$00,$FF
LFF20: .byte $8F,$7F,$6F,$5F,$4F,$3F,$2F,$1F,$FF,$FC,$FA,$F4,$F2,$F0,$EE,$E6
       .byte $FF,$FF,$FF,$3F,$3F,$36,$34,$36,$3F,$3F,$3F,$FF,$FF,$FF,$FF,$FF
LFF40: .byte $3C,$3C,$37,$35,$33,$37,$35,$33,$32,$35,$33,$32,$30,$33,$32,$30
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$30,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$06,$06,$06,$0F,$0F,$06,$06,$06
       .byte $00,$00,$00,$00,$00,$00,$00,$00
LFF78: LDA    $9C     
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    $9B     
       LSR            
       LSR            
       LSR            
       LSR            
       LSR            
       CLC            
       ADC    LFDF8,Y 
       TAY            
       LDA    $9B     
       AND    #$1F    
       LSR            
       LSR            
       TAX            
       LDA    LFDA8,Y 
       AND    LFDF0,X 
       RTS            

LFF98: LDA    $98     
       LSR            
       LDA    $85     
       ROR            
       EOR    $98     
       LDY    $85     
       STA    $85     
       STY    $98     
       RTS            

LFFA7: LDA    $AD,X   
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    LFEE8,Y 
       STA    $80     
       LDA    LFEEE,Y 
       STA    $A2     
       LDA    $AD,X   
       CMP    #$C0    
       BCS    LFFFB   
       CMP    #$60    
       BCS    LFFD6   
       INC    $87     
       LDA    $87     
       CMP    #$05    
       BNE    LFFCE   
       LDA    #$FF    
       STA    $BA     
LFFCE: LDA    $87     
       STA    $A2     
       LDA    #$00    
       STA    $80     
LFFD6: CMP    #$90    
       BNE    LFFDE   
       LDA    #$FF    
       STA    $C6     
LFFDE: LDA    #$E0    
       STA    $AD,X   
       LDA    $E0     
       BNE    LFFFB   
       SED            
       LDA    $D1     
       CLC            
       ADC    $80     
       STA    $D1     
       LDA    $D2     
       ADC    $A2     
       STA    $D2     
       LDA    $D3     
       ADC    #$00    
       STA    $D3     
       CLD            
LFFFB: RTS            

LFFFC: .byte $00,$F0,$00,$F0
