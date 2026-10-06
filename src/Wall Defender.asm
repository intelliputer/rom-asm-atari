; Disassembly of roms/Wall Defender.bin
; Disassembled Tue Oct  6 15:24:49 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Wall Defender.bin
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
PF2     =  $0F
RESP0   =  $10
RESP1   =  $11
RESM0   =  $12
AUDC0   =  $15
AUDF0   =  $17
AUDV0   =  $19
GRP0    =  $1B
GRP1    =  $1C
ENAM0   =  $1D
HMP0    =  $20
HMP1    =  $21
HMM0    =  $22
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXM0P   =  $30
INPT4   =  $3C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296

       ORG $F000

START:
       SEI            
       CLD            
       LDX    #$00    
       TXA            
LF005: STA    VSYNC,X 
       INX            
       BNE    LF005   
       DEX            
       TXS            
LF00C: LDY    #$0E    
LF00E: LDA    #$00    
       STA    $E7     
LF012: STA.wy $009E,Y 
       DEY            
       BPL    LF012   
       LDA    #$09    
       STA    CTRLPF  
       LDA    #$03    
       STA    $E3     
       JSR    LFB62   
LF023: JSR    LF085   
       JSR    LF8D7   
       LDX    $E3     
       LDA    LFCC1,X 
       STA    $DF     
       LDA    #$FB    
       STA    $D1     
       LDA    LFBA0,X 
       STA    $D0     
       LDY    #$01    
LF03B: LDA    ($D0),Y 
       STA.wy $0085,Y 
       STA.wy $0082,Y 
       DEY            
       BPL    LF03B   
       STY    $88     
       LDA    #$60    
       STA    $F3     
       LDA    #$51    
       STA    $84     
       LDX    #$0E    
       STX    $89     
       LDY    #$15    
       LDA    #$12    
LF058: STA    $9D,X   
       STY    $8D,X   
       DEX            
       DEX            
       BPL    LF058   
       JSR    LFA7F   
       LDX    #$12    
       LDA    #$21    
       LDY    #$D8    
LF069: STA    $8A,X   
       STY    $AC,X   
       DEX            
       DEX            
       BPL    LF069   
       LDX    #$12    
       LDA    #$00    
       STA    $E0     
       STA    $F9     
LF079: STA    $AD,X   
       DEX            
       DEX            
       BPL    LF079   
       JSR    LFAB2   
       JMP    LF0B2   
LF085: LDX    #$00    
       STX    $F7     
       STX    $E7     
LF08B: STX    $F6     
       STX    $F4     
       STX    $F2     
       STX    $E9     
       STX    $F5     
       STX    $E0     
       DEX            
       STX    $EA     
       STX    $F1     
       RTS            

LF09D: LDA    #$64    
       STA    COLUP0  
       STA    COLUP1  
       LDA    $DC     
       STA    $E6     
       LDA    $DD     
       STA    $E4     
       LDA    $DE     
       STA    $E5     
       JMP    LF0F0   
LF0B2: LDA    INTIM   
       BNE    LF0B2   
       STA    WSYNC   
       LDA    #$FC    
       STA    TIM64T  
       STA    VBLANK  
       LDA    #$FF    
       STA    $D1     
       STA    $D3     
       STA    $D5     
       STA    $D7     
       STA    $D9     
       STA    $DB     
       LDA    $EF     
       BEQ    LF0D8   
       LDA    $F9     
       AND    #$01    
       BEQ    LF0DE   
LF0D8: LDA    $E2     
       CMP    #$7F    
       BCS    LF09D   
LF0DE: LDA    #$58    
       STA    COLUP0  
       STA    COLUP1  
       LDA    $AA     
       STA    $E6     
       LDA    $A8     
       STA    $E4     
       LDA    $A6     
       STA    $E5     
LF0F0: STA    WSYNC   
       JSR    LFB04   
       LDY    #$07    
       JSR    LFAD0   
       LDY    #$00    
       STY    VDELP0  
       STY    VDELP1  
       STY    NUSIZ0  
       STY    NUSIZ1  
       STA    WSYNC   
       LDA    $85     
       LDA    $85     
       STA    HMP0    
       AND    #$0F    
       TAY            
       NOP            
       NOP            
LF111: DEY            
       BNE    LF111   
       STA    RESP0   
       LDA    $DF     
       STA    COLUPF  
       STA    WSYNC   
       LDA    $E0     
       STA    COLUBK  
       LDA    $82     
       STA    HMM0    
       AND    #$0F    
       TAY            
       NOP            
LF128: DEY            
       BNE    LF128   
       STA    RESM0   
       STA    WSYNC   
       STA    HMOVE   
       STA    CXCLR   
       LDA    #$0F    
       STA    COLUP0  
       LDX    $E3     
       LDA    LFBB0,X 
       STA    $8B     
       LDA    #$FF    
       STA    $D1     
       LDA    #$FD    
       STA    $D3     
       LDA    #$FE    
       STA    $D5     
       STA    WSYNC   
       STA    HMCLR   
       LDA    $F9     
       AND    #$01    
       BEQ    LF157   
       JMP    LF7F6   
LF157: LDX    #$1D    
       TXS            
       LDY    $E3     
       LDA    LFBAC,Y 
       STA    $80     
       LDX    LFBEE,Y 
       CPX    $E8     
       BNE    LF16C   
       LDA    #$05    
       STA    NUSIZ1  
LF16C: LDA    $AC,X   
       STA    $D2     
       STA    $D4     
       LDA    $8A,X   
       STA    HMP1    
       AND    #$0F    
       TAY            
       STA    WSYNC   
       LDA.w  $0080   
       EOR    $81     
       AND    #$FC    
       PHP            
       DEC    $80     
LF185: DEY            
       BNE    LF185   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       PLA            
       LDY    #$08    
LF191: LDA    ($D2),Y 
       STA    GRP1    
       LDA    ($D4),Y 
       STA    COLUP1  
       DEC    $80     
       LDA    $80     
       CMP    $88     
       BCS    LF1A5   
       DEY            
       BPL    LF1A5   
       INY            
LF1A5: CMP    $8B     
       BEQ    LF1AB   
       BCS    LF1B5   
LF1AB: LDA    #$00    
       STA    ENAM0   
       STA    GRP1    
       BCC    LF1D2   
       BCS    LF1D2   
LF1B5: LDA    $80     
       EOR    $81     
       AND    #$FC    
       PHP            
       PLA            
       BCS    LF1D2   
       STA    WSYNC   
       LDA    $80     
       EOR    $81     
       PHP            
       PLA            
       LDA    ($D2),Y 
       STA    GRP1    
       LDA    ($D4),Y 
       STA    COLUPF  
       JMP    LF191   
LF1D2: STA    WSYNC   
       BCS    LF191   
       DEX            
LF1D7: DEX            
       LDA    $8A,X   
       STA    HMP1    
       AND    #$0F    
       TAY            
LF1DF: DEY            
       BNE    LF1DF   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       STY    NUSIZ1  
       LDA    #$30    
       STA    NUSIZ0  
       LDY    #$08    
       LDA    $9B,X   
       STA    $D0     
       LDA    ($D0),Y 
       STA    GRP0    
       LDA    $BF,X   
       STA    PF2     
       LDA    $AC,X   
       STA    $D2     
       STA    $D4     
       DEY            
LF203: DEC    $80     
       LDA    $80     
       EOR    $81     
       PHP            
       PLA            
       LDA    ($D2),Y 
       STA    WSYNC   
       STA    GRP1    
       LDA    ($D4),Y 
       STA    COLUP1  
       LDA    ($D0),Y 
       STA    GRP0    
       CPY    #$03    
       BNE    LF222   
       DEX            
       LDA    $BF,X   
       STA    PF2     
LF222: DEY            
       BPL    LF203   
       DEC    $80     
       CPX    #$01    
       BNE    LF245   
       INY            
       STY    NUSIZ0  
       DEX            
       CPX    $E8     
       BNE    LF241   
       LDA    #$05    
LF235: STA    NUSIZ1  
       LDA    $8A,X   
       STA    HMP1    
       AND    #$0F    
       TAY            
       JMP    LF250   
LF241: LDA    #$00    
       BEQ    LF235   
LF245: LDA    $80     
       EOR    $81     
       PHP            
       PLA            
       SEC            
       STA    WSYNC   
       BCS    LF1D7   
LF250: STA    WSYNC   
       NOP            
       LDA.w  $0080   
       EOR    $81     
       PHP            
       DEC    $80     
LF25B: DEY            
       BNE    LF25B   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       STX    PF2     
       STX    GRP0    
       PLA            
       DEC    $80     
       LDY    #$08    
       LDA    $AC     
       STA    $D2     
       STA    $D4     
LF273: LDA    $80     
       EOR    $81     
       AND    #$FC    
       PHP            
       DEC    $80     
       PLA            
       LDA    ($D2),Y 
       STA    WSYNC   
       STA    GRP1    
       LDA    ($D4),Y 
       STA    COLUP1  
       LDA    $80     
       CMP    $89     
       BCS    LF291   
       DEY            
       BPL    LF291   
       INY            
LF291: LDA    $80     
       BNE    LF273   
       STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    ENAM0   
       STA    COLUBK  
       LDX    #$FF    
       TXS            
       LDA    $E3     
       EOR    #$03    
       BEQ    LF2B0   
       TAX            
LF2AB: STA    WSYNC   
       DEX            
       BNE    LF2AB   
LF2B0: LDY    #$07    
       STA    WSYNC   
LF2B4: DEY            
       BNE    LF2B4   
       STA    RESP0   
       LDA    #$D0    
       STA    HMP0    
       LDA    #$FD    
       STA    $D1     
       STA    $D3     
       STA    $D5     
       STA    $D7     
       STA    $D9     
       STA    $DB     
       LDY    #$08    
       STA    WSYNC   
LF2CF: DEY            
       BNE    LF2CF   
       STA    RESP1   
       LDA    #$40    
       STA    HMP1    
       LDA    #$23    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$54    
       STA    COLUP0  
       LDA    #$28    
       STA    COLUP1  
       LDA    $A0     
       STA    $E6     
       LDA    $A2     
       STA    $E4     
       LDA    $A4     
       STA    $E5     
       STA    WSYNC   
       STA    HMOVE   
       JSR    LFB33   
       LDY    #$07    
       STY    VDELP0  
       STY    VDELP1  
       JSR    LFAD0   
LF302: LDA    INTIM   
       BNE    LF302   
       LDA    #$20    
       STA    TIM64T  
       BNE    LF316   
LF30E: TXA            
       CLC            
       ADC    #$02    
       ADC    $E3     
       BNE    LF342   
LF316: LDA    $E3     
       TAY            
       TAX            
       LDA    CXM0P   
       BPL    LF39B   
       TXA            
       EOR    #$03    
       STA    $E5     
       INX            
       LDA    $81     
LF326: CMP    LFCC5,X 
       BCS    LF30E   
       DEX            
       BPL    LF326   
       LDX    $E3     
LF330: CMP    LFCCA,X 
       BCC    LF33C   
       DEX            
       BPL    LF330   
       LDA    #$04    
       BNE    LF33F   
LF33C: TXA            
       EOR    #$03    
LF33F: SEC            
       SBC    $E5     
LF342: ASL            
       TAX            
       LDA    $AD,X   
       BNE    LF39B   
       LDA    #$13    
       STA    $AD,X   
       INC    $F6     
       LDA    #$14    
       STA    $EB     
       LDY    $9E     
       LDA    $F9     
       ORA    #$02    
       STA    $F9     
       CPX    $E8     
       BNE    LF36B   
       LDA    LFC80,Y 
       STA    $E4     
       LDA    LFC8D,Y 
       STA    $E5     
       JMP    LF375   
LF36B: LDA    LFC66,Y 
       STA    $E4     
       LDA    LFC73,Y 
       STA    $E5     
LF375: JSR    LF8D7   
       LDA    $EF     
       BEQ    LF39B   
       SED            
       LDA    $E4     
       CLC            
       ADC    $AA     
       STA    $AA     
       LDA    $E5     
       ADC    $A8     
       STA    $A8     
       LDA    #$00    
       ADC    $A6     
       STA    $A6     
       CLD            
       BCC    LF39B   
       LDA    #$99    
       STA    $A6     
       STA    $A8     
       STA    $AA     
LF39B: LDA    $F9     
       AND    #$04    
       BEQ    LF3A7   
       LDA    $E2     
       AND    #$0F    
       STA    $E0     
LF3A7: LDA    $E2     
       BEQ    LF3BA   
       AND    #$0F    
       CMP    #$07    
       BNE    LF3E2   
       LDA    $F9     
       AND    #$04    
       BEQ    LF3C9   
       JMP    LF3D9   
LF3BA: LDA    $EF     
       BNE    LF3E2   
       JSR    LFB62   
       JMP    LF3E2   
LF3C4: JSR    LFAB2   
       BMI    LF3E2   
LF3C9: LDA    $F7     
       BEQ    LF3C4   
       CMP    #$07    
       BCC    LF3E2   
       LDA    $EC     
       BNE    LF3D9   
       LDA    #$2C    
       STA    $EC     
LF3D9: LDA    $F0     
       EOR    #$01    
       STA    $F0     
       JSR    LFAB7   
LF3E2: LDA    INTIM   
       BNE    LF3E2   
       LDA    #$82    
       STA    WSYNC   
       STA    VBLANK  
       LDA    #$0B    
       STA    TIM64T  
       LDX    #$01    
LF3F4: LDA    $ED,X   
       BEQ    LF3FD   
       DEC    $ED,X   
       JMP    LF422   
LF3FD: LDY    $EB,X   
       LDA    LFC00,Y 
       BNE    LF408   
       STA    $EB,X   
       DEC    $EB,X   
LF408: STA    AUDV0,X 
       LSR            
       LSR            
       LSR            
       LSR            
       STA    AUDC0,X 
       LDA    LFC33,Y 
       STA    AUDF0,X 
       LSR            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    LFFF3,Y 
       STA    $ED,X   
       INC    $EB,X   
LF422: DEX            
       BPL    LF3F4   
LF425: LDA    INTIM   
       BNE    LF425   
       STA    WSYNC   
       LDA    #$82    
       STA    VSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    WSYNC   
       STA    VSYNC   
       LDA    #$25    
       STA    TIM64T  
       LDY    $F7     
       LDA    $DF     
       AND    #$F0    
       ORA    LFCD8,Y 
       STA    $DF     
       INC    $E2     
       BIT    $F9     
       BVC    LF466   
       LDX    $E8     
       LDA    $AC,X   
       AND    #$F0    
       CMP    #$E0    
       BNE    LF466   
       LDA    $E1     
       AND    #$0F    
       AND    $E2     
       CMP    #$0F    
       BNE    LF466   
       LDA    #$D8    
       STA    $E8     
LF466: LDA    $E1     
       ADC    $E2     
       ADC    $84     
       ADC    $86     
       STA    $E1     
       AND    #$2C    
       BNE    LF47E   
       BIT    $F9     
       BVS    LF47E   
       LDA    $F9     
       ORA    #$80    
       STA    $F9     
LF47E: LDA    SWCHB   
       LSR            
       BCS    LF495   
       LDX    #$01    
       STX    $EF     
       JMP    LF00C   
LF48B: .byte $AD,$82,$02,$29,$40,$D0,$03,$4C,$B2,$F0
LF495: LDA    $F9     
       AND    #$01    
       BEQ    LF4FF   
       LDA    $E2     
       AND    #$03    
       BNE    LF4F2   
       LDA    $84     
       CMP    #$09    
       BCC    LF4D7   
       CMP    #$A8    
       BCS    LF4D7   
       LDA    $86     
       CMP    #$AE    
       BCS    LF4D7   
       CMP    #$15    
       BCC    LF4D7   
       LDA    $EC     
       BNE    LF4BD   
       LDA    #$22    
       STA    $EC     
LF4BD: LDA    $E1     
       AND    #$04    
       BEQ    LF4F5   
       LDA    $86     
       SBC    #$01    
LF4C7: STA    $86     
       JSR    LFA9A   
       STA    $85     
       AND    #$08    
       BEQ    LF4FB   
       DEC    $84     
       JMP    LF0B2   
LF4D7: LDA    $EA     
       BNE    LF4E4   
       STA    $EF     
       DEC    $EA     
       LDY    #$06    
       JMP    LF00E   
LF4E4: CMP    #$FF    
       BNE    LF4EC   
       LDA    #$40    
       STA    $EA     
LF4EC: DEC    $EA     
       LDA    #$00    
       STA    $84     
LF4F2: JMP    LF0B2   
LF4F5: LDA    $86     
       ADC    #$01    
       BNE    LF4C7   
LF4FB: INC    $84     
       BNE    LF4F2   
LF4FF: JSR    LF8E0   
       LDA    $F9     
       AND    #$04    
       BNE    LF50E   
       JSR    LF81B   
       JMP    LF511   
LF50E: JSR    LF8D7   
LF511: LDY    $E3     
       LDX    LFBEE,Y 
       LDA    $AD,X   
       BNE    LF537   
       LDA    $88     
       CMP    LFBE0,Y 
       BCS    LF537   
       CPX    $E8     
       BNE    LF54C   
       BEQ    LF556   
LF527: LDA    $AD,X   
       BNE    LF537   
       LDA    $8B,X   
       CMP    LFBD4,Y 
       BCS    LF537   
       CMP    LFBD8,Y 
       BCS    LF54C   
LF537: DEX            
       DEX            
       BNE    LF527   
       LDA    $AD,X   
       BNE    LF576   
       LDA    $89     
       CMP    LFBDC,Y 
       BCC    LF576   
       CPX    $E8     
       BNE    LF54C   
       BEQ    LF556   
LF54C: LDA    #$1C    
       STA    $EB     
       LDA    $F7     
       CMP    #$09    
       BCC    LF564   
LF556: LDA    $F9     
       ORA    #$06    
       STA    $F9     
       LDA    #$2F    
       STA    $EC     
       LDA    #$A0    
       STA    $EA     
LF564: LDA    #$0D    
       STA    $AD,X   
       LDA    $F9     
       ORA    #$02    
       STA    $F9     
       INC    $F7     
       LDA    $E7     
       EOR    #$80    
       STA    $E7     
LF576: LDA    $F9     
       AND    #$04    
       BEQ    LF5BA   
       DEC    $EA     
       BNE    LF5BA   
       DEC    $EA     
       LDA    $EF     
       BNE    LF595   
LF586: INC    $9E     
       LDA    $9E     
       CMP    #$0D    
       BCC    LF592   
       LDA    #$00    
       STA    $9E     
LF592: JMP    LF023   
LF595: LDX    $E3     
       BEQ    LF5BD   
       DEX            
       LDA    $86     
       CMP    LFBC8,X 
       BCC    LF5BD   
       CMP    LFBC4,X 
       BEQ    LF5A8   
       BCS    LF5BD   
LF5A8: LDA    $84     
       CMP    LFBD0,X 
       BEQ    LF5B1   
       BCS    LF5BD   
LF5B1: CMP    LFBCC,X 
       BCC    LF5BD   
       STX    $E3     
       BCS    LF592   
LF5BA: JMP    LF600   
LF5BD: LDA    $F9     
       AND    #$01    
       BEQ    LF5C6   
       JMP    LF0B2   
LF5C6: LDA    #$01    
       STA    $F9     
       STA    $E0     
       LDA    $A6     
       CMP    $DE     
       BEQ    LF5ED   
       BCC    LF5FD   
LF5D4: LDA    $A6     
       BNE    LF5DE   
       LDA    $A8     
       CMP    #$50    
       BCC    LF5FD   
LF5DE: LDA    $A6     
       STA    $DE     
       LDA    $A8     
       STA    $DD     
       LDA    $AA     
       STA    $DC     
       JMP    LF5FD   
LF5ED: LDA    $A8     
       CMP    $DD     
       BEQ    LF5F7   
       BCC    LF5FD   
       BCS    LF5D4   
LF5F7: LDA    $AA     
       CMP    $DC     
       BCS    LF5D4   
LF5FD: JMP    LF0B2   
LF600: LDA    $E2     
       AND    #$01    
       BNE    LF60C   
       JMP    LF747   
LF609: JMP    LF6FB   
LF60C: LDA    $F2     
       BNE    LF609   
       LDA    $F4     
       CMP    #$0F    
       BCC    LF66D   
       LDA    $F5     
       BNE    LF609   
       LDA    $F6     
       CMP    #$0F    
       BNE    LF64F   
       LDA    $EA     
       CMP    #$FF    
       BNE    LF62E   
       LDA    #$5B    
       STA    $EA     
       LDA    #$28    
       STA    $EB     
LF62E: DEC    $EA     
       BNE    LF5FD   
       DEC    $EA     
       JSR    LFB62   
       LDA    $9E     
       CMP    #$0C    
       BCS    LF63F   
       INC    $9E     
LF63F: LDA    $E3     
       CMP    #$03    
       BCS    LF64A   
       INC    $E3     
       JMP    LF023   
LF64A: JSR    LF085   
       BNE    LF66F   
LF64F: JSR    LFB62   
       LDA    #$3C    
       STA    $F3     
       LDA    $EF     
       BNE    LF65D   
       JMP    LF586   
LF65D: LDX    #$00    
       JSR    LF08B   
       LDA    $9E     
       CMP    #$0C    
       BCS    LF66A   
       INC    $9E     
LF66A: JMP    LF6E4   
LF66D: LDA    $F3     
LF66F: BNE    LF6E4   
       LDY    $E3     
       LDA    $E1     
       AND    #$1E    
       TAX            
       CMP    LFBEE,Y 
       BEQ    LF67F   
       BCS    LF6E4   
LF67F: LDA    $AC,X   
       CMP    #$D8    
       BNE    LF6E4   
       LDA    $F9     
       BPL    LF6A2   
       ASL            
       BMI    LF6A2   
       CPX    #$00    
       BEQ    LF696   
       TXA            
       CMP    LFBEE,Y 
       BNE    LF6A2   
LF696: STX    $E8     
       LDA    $F9     
       ORA    #$40    
       STA    $F9     
       LDA    #$0E    
       STA    $EB     
LF6A2: STX    $F1     
       LDA    $F9     
       AND    #$02    
       BNE    LF6B2   
       CPX    $E8     
       BEQ    LF6B2   
       LDA    #$0A    
       STA    $EB     
LF6B2: LDA    #$A0    
       STA    $F2     
       INC    $F4     
       INC    $F5     
       LDX    $F1     
       BNE    LF6C4   
       LDA    #$0A    
       STA    $89     
       BNE    LF6CE   
LF6C4: TXA            
       CMP    LFBEE,Y 
       BNE    LF6D2   
       LDA    #$A2    
       STA    $88     
LF6CE: LDA    #$A5    
       BNE    LF6DE   
LF6D2: LDA    $E1     
       AND    #$08    
       BEQ    LF6F3   
       LDA    #$AE    
       STA    $8B,X   
       LDA    #$9A    
LF6DE: STA    $8A,X   
       LDA    #$F0    
       STA    $AC,X   
LF6E4: LDA    $F2     
       BEQ    LF6EA   
       DEC    $F2     
LF6EA: LDA    $F3     
       BEQ    LF6F0   
       DEC    $F3     
LF6F0: JMP    LF0B2   
LF6F3: LDA    #$15    
       STA    $8B,X   
       LDA    #$21    
       BNE    LF6DE   
LF6FB: LDX    $F1     
       LDA    $AD,X   
       BNE    LF726   
       LDA    $F2     
       CMP    #$80    
       BEQ    LF711   
       CMP    #$90    
       BNE    LF6E4   
       LDA    #$F8    
       STA    $AC,X   
       BNE    LF72D   
LF711: LDY    $9E     
       LDA    LFC9A,Y 
       STA    $F3     
       INY            
       CPX    $E8     
       BNE    LF721   
       LDA    #$E0    
       BNE    LF724   
LF721: LDA    LFF7D,Y 
LF724: STA    $AC,X   
LF726: LDX    #$FF    
       STX    $F1     
       INX            
       STX    $F2     
LF72D: JMP    LF6E4   
LF730: LDA    $89     
       CLC            
       ADC    $E6     
       STA    $89     
       BNE    LF793   
LF739: LDA    $88     
       SEC            
       SBC    $E6     
       STA    $88     
       BNE    LF793   
LF742: SBC    $E6     
       JMP    LF78C   
LF747: LDA    $F9     
       AND    #$04    
       BNE    LF797   
       INC    $E9     
       LDY    $9E     
       LDA    $E9     
       CMP    LFCB4,Y 
       BCC    LF797   
       LDA    #$00    
       STA    $E9     
       LDA    LFCA7,Y 
       STA    $E6     
       LDY    $E3     
       LDA    LFBEE,Y 
       STA    $E5     
       LDX    #$12    
LF76A: LDA    $AD,X   
       BNE    LF793   
       CPX    $F1     
       BEQ    LF793   
       LDA    $AC,X   
       CMP    #$D8    
       BEQ    LF793   
       EOR    #$08    
       STA    $AC,X   
       CPX    #$00    
       BEQ    LF730   
       CPX    $E5     
       BEQ    LF739   
       LDA    $8B,X   
       CMP    #$62    
       BCS    LF742   
       ADC    $E6     
LF78C: STA    $8B,X   
       JSR    LFA9A   
       STA    $8A,X   
LF793: DEX            
       DEX            
       BPL    LF76A   
LF797: LDX    #$12    
LF799: LDA    $AD,X   
       BEQ    LF7B9   
       CMP    #$12    
       BNE    LF7A5   
       LDY    #$C0    
       BNE    LF7B3   
LF7A5: CMP    #$0C    
       BNE    LF7AD   
       LDY    #$C8    
       BNE    LF7B3   
LF7AD: CMP    #$06    
       BNE    LF7B5   
       LDY    #$D0    
LF7B3: STY    $AC,X   
LF7B5: DEC    $AD,X   
       BEQ    LF7C0   
LF7B9: DEX            
       DEX            
       BPL    LF799   
       JMP    LF0B2   
LF7C0: LDA    #$D8    
       STA    $AC,X   
       DEC    $F5     
       CPX    $E8     
       BNE    LF7D2   
       STA    $E8     
       LDA    $F9     
       AND    #$3F    
       STA    $F9     
LF7D2: LDA    $F9     
       AND    #$FD    
       STA    $F9     
       CPX    #$00    
       BEQ    LF7F0   
       LDY    $E3     
       TXA            
       CMP    LFBEE,Y 
       BEQ    LF7EA   
       LDA    #$15    
       STA    $8B,X   
       BNE    LF7B9   
LF7EA: LDA    #$A0    
       STA    $88     
       BNE    LF7B9   
LF7F0: LDA    #$0A    
       STA    $89     
       BNE    LF7B9   
LF7F6: LDA    #$AC    
       STA    $80     
       LDY    #$09    
LF7FC: STA    WSYNC   
       DEC    $80     
       LDA    LFF09,Y 
       STA    GRP0    
       LDA    $80     
       CMP    $84     
       BCS    LF80F   
       DEY            
       BPL    LF80F   
       INY            
LF80F: LDX    $80     
       CPX    #$01    
       BNE    LF7FC   
       DEX            
       STX    GRP0    
       JMP    LF2B0   
LF81B: LDA    $F8     
       BMI    LF842   
       LDA    $EF     
       BEQ    LF827   
       LDA    INPT4   
       BMI    LF841   
LF827: LDX    $E3     
       LDA    $86     
       CMP    LFBC4,X 
       BEQ    LF87F   
       CMP    LFBC8,X 
       BEQ    LF89C   
       LDA    $84     
       CMP    LFBD0,X 
       BEQ    LF84F   
       CMP    LFBCC,X 
       BEQ    LF867   
LF841: RTS            

LF842: LDA    $F8     
       ROR            
       BCS    LF8A5   
       ROR            
       BCS    LF888   
       ROR            
       BCS    LF870   
       BCC    LF858   
LF84F: LDX    #$FF    
       LDY    #$02    
       LDA    #$88    
       JMP    LF8B9   
LF858: LDA    $81     
       CMP    #$A5    
       BCC    LF861   
       JMP    LF8D7   
LF861: CLC            
       ADC    #$02    
       STA    $81     
       RTS            

LF867: LDX    #$FF    
       LDY    #$FE    
       LDA    #$84    
       JMP    LF8B9   
LF870: LDA    $81     
       CMP    #$02    
       BCS    LF879   
       JMP    LF8D7   
LF879: SEC            
       SBC    #$02    
       STA    $81     
       RTS            

LF87F: LDX    #$FE    
       LDY    #$00    
       LDA    #$82    
       JMP    LF8B9   
LF888: LDA    $83     
       CMP    #$AC    
       BCC    LF891   
       JMP    LF8D7   
LF891: CLC            
       ADC    #$02    
       STA    $83     
       JSR    LFA9A   
       STA    $82     
       RTS            

LF89C: LDX    #$F9    
       LDY    #$00    
       LDA    #$81    
       JMP    LF8B9   
LF8A5: LDA    $83     
       CMP    #$13    
       BCS    LF8AE   
       JMP    LF8D7   
LF8AE: SEC            
       SBC    #$02    
       STA    $83     
       JSR    LFA9A   
       STA    $82     
       RTS            

LF8B9: STA    $F8     
       STX    $E6     
       LDA    $86     
       CLC            
       ADC    $E6     
       STA    $83     
       JSR    LFA9A   
       STA    $82     
       STY    $E6     
       LDA    $84     
       CLC            
       ADC    $E6     
       STA    $81     
       LDA    #$01    
       STA    $EC     
       RTS            

LF8D7: LDA    #$00    
       STA    $F8     
       LDA    #$F0    
       STA    $81     
       RTS            

LF8E0: LDX    $E3     
       LDA    $EF     
       BNE    LF8F6   
       LDA    $E7     
       AND    #$03    
       BEQ    LF909   
       CMP    #$01    
       BEQ    LF90F   
       CMP    #$02    
       BEQ    LF90C   
       BNE    LF930   
LF8F6: LDA    SWCHA   
       BPL    LF90F   
       ROL            
       BPL    LF930   
LF8FE: LDA    SWCHA   
       ROL            
       ROL            
       BPL    LF90C   
       ROL            
       BPL    LF909   
       RTS            

LF909: JMP    LF9B0   
LF90C: JMP    LF953   
LF90F: JSR    LFA5A   
       BMI    LF8FE   
       BEQ    LF91E   
       LDA    $86     
       CMP    LFBC8,X 
       BEQ    LF951   
       INX            
LF91E: LDA    $86     
       CMP    LFBC4,X 
       BEQ    LF951   
       CLC            
       ADC    #$01    
       STA    $86     
       JSR    LFA9A   
       STA    $85     
       RTS            

LF930: JSR    LFA5A   
       BMI    LF8FE   
       BEQ    LF93F   
       LDA    $86     
       CMP    LFBC4,X 
       BEQ    LF99C   
       INX            
LF93F: LDA    $86     
       CMP    LFBC8,X 
       BEQ    LF99C   
       SEC            
       SBC    #$01    
       STA    $86     
       JSR    LFA9A   
       STA    $85     
       RTS            

LF951: BEQ    LF99C   
LF953: JSR    LFA0F   
       BMI    LF99B   
       BEQ    LF963   
       DEX            
       LDA    $84     
       CMP    LFBD0,X 
       BEQ    LF99B   
       INX            
LF963: LDA    $84     
       CMP    LFBCC,X 
       BEQ    LF99C   
       CMP    #$55    
       BNE    LF971   
       JSR    LFA81   
LF971: LDY    $E3     
       DEC    $84     
       LDA    $87     
       AND    #$0F    
       BNE    LF986   
       LDA    $87     
       SEC            
       SBC    #$10    
       ORA    #$08    
       STA    $87     
       BPL    LF988   
LF986: DEC    $87     
LF988: LDA    $87     
       AND    #$F0    
       LSR            
       LSR            
       LSR            
       TAX            
       INC    $9D,X   
       CMP    LFBED,Y 
       BEQ    LF99B   
       INX            
       INX            
       INC    $9D,X   
LF99B: RTS            

LF99C: LDA    $EF     
       BNE    LF9AC   
       LDA    $E7     
       BNE    LF9A8   
       LDA    #$80    
       STA    $E7     
LF9A8: BPL    LF9AD   
       INC    $E7     
LF9AC: RTS            

LF9AD: DEC    $E7     
       RTS            

LF9B0: JSR    LFA0F   
       BMI    LFA0B   
       BEQ    LF9C0   
       DEX            
       LDA    $84     
       CMP    LFBCC,X 
       BEQ    LFA0B   
       INX            
LF9C0: LDA    $84     
       CMP    LFBD0,X 
       BEQ    LF99C   
       CMP    #$51    
       BNE    LF9E3   
       LDA    #$55    
       STA    $84     
       LDA    LFFE3,X 
       STA    $87     
       LDA    #$05    
       LDY    LFFDF,X 
       STA.wy $009D,Y 
       LDA    #$0E    
       INY            
       INY            
       STA.wy $009D,Y 
LF9E3: LDY    $E3     
       LDA    $87     
       AND    #$70    
       LSR            
       LSR            
       LSR            
       TAX            
       DEC    $9D,X   
       CMP    LFBED,Y 
       BEQ    LF9F8   
       INX            
       INX            
       DEC    $9D,X   
LF9F8: INC    $84     
       LDA    $87     
       AND    #$0F    
       CMP    #$08    
       BCC    LFA0C   
       LDA    $87     
       AND    #$70    
       CLC            
       ADC    #$10    
       STA    $87     
LFA0B: RTS            

LFA0C: INC    $87     
       RTS            

LFA0F: LDA    $86     
       CMP    LFBC8,X 
       BEQ    LFA57   
       CMP    LFBC4,X 
       BEQ    LFA57   
       CPX    #$02    
       BCC    LFA54   
       SEC            
       SBC    LFBB8,X 
       CLC            
       ADC    #$04    
       BMI    LFA38   
       CMP    #$09    
       BCS    LFA38   
       LDA    LFBB4,X 
       STA    $85     
       LDA    LFBB8,X 
       STA    $86     
       BNE    LFA51   
LFA38: LDA    $86     
       SEC            
       SBC    LFBC0,X 
       CLC            
       ADC    #$02    
       BMI    LFA54   
       CMP    #$05    
       BCS    LFA54   
       LDA    LFBBC,X 
       STA    $85     
       LDA    LFBC0,X 
       STA    $86     
LFA51: LDA    #$10    
       RTS            

LFA54: LDA    #$FF    
       RTS            

LFA57: LDA    #$00    
       RTS            

LFA5A: LDA    $84     
       CMP    LFBD0,X 
       BEQ    LFA7C   
       CMP    LFBCC,X 
       BEQ    LFA7C   
       CPX    #$00    
       BEQ    LFA79   
       CMP    #$4E    
       BCC    LFA79   
       CMP    #$55    
       BCS    LFA79   
       JSR    LFA81   
       DEX            
       LDA    #$10    
       RTS            

LFA79: LDA    #$FF    
       RTS            

LFA7C: LDA    #$00    
       RTS            

LFA7F: LDX    $E3     
LFA81: LDA    #$51    
       STA    $84     
       LDA    LFFE7,X 
       STA    $87     
       LDA    #$16    
       LDY    LFFDF,X 
       STA.wy $009D,Y 
       LDA    #$1F    
       INY            
       INY            
       STA.wy $009D,Y 
       RTS            

LFA9A: EOR    #$07    
       JMP    LFAA1   
LFA9F: .byte $49,$70
LFAA1: STA    $DB     
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $DA     
       LDA    $DB     
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    $DA     
       RTS            

LFAB2: LDA    $E3     
       ASL            
       STA    $F0     
LFAB7: TAY            
       LDA    LFF8B,Y 
       STA    $D0     
       LDA    #$FF    
       STA    $D1     
       LDX    $E3     
       LDY    LFBE4,X 
       DEY            
LFAC7: LDA    ($D0),Y 
       STA.wy $00C0,Y 
       DEY            
       BPL    LFAC7   
       RTS            

LFAD0: STY    $E5     
       LDA    ($D0),Y 
       STA    $E6     
       STA    WSYNC   
       LDA    ($DA),Y 
       STA    GRP0    
       LDA    ($D8),Y 
       STA    GRP1    
       LDA    ($D6),Y 
       STA    GRP0    
       LDA    ($D2),Y 
       TAX            
       LDA    ($D4),Y 
       LDY    $E6     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       LDY    $E5     
       DEY            
       BPL    LFAD0   
       STA    WSYNC   
       INY            
       STY    GRP1    
       STY    GRP0    
       STY    GRP1    
       STY    GRP0    
       RTS            

LFB04: LDY    #$0A    
       LDA    $E5     
       JSR    LFB16   
       LDA    $E4     
       JSR    LFB16   
       LDA    $E6     
       JSR    LFB16   
       RTS            

LFB16: STA    $80     
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       LDA    LFCCE,X 
       STA.wy $00D0,Y 
       DEY            
       DEY            
       LDA    $80     
       AND    #$0F    
       TAX            
       LDA    LFCCE,X 
       STA.wy $00D0,Y 
       DEY            
       DEY            
       RTS            

LFB33: LDY    #$0A    
       LDA    $E5     
       JSR    LFB45   
       LDA    $E4     
       JSR    LFB45   
       LDA    $E6     
       JSR    LFB45   
       RTS            

LFB45: STA    $80     
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       LDA    LFF7D,X 
       STA.wy $00D0,Y 
       DEY            
       DEY            
       LDA    $80     
       AND    #$0F    
       TAX            
       LDA    LFF7D,X 
       STA.wy $00D0,Y 
       DEY            
       DEY            
       RTS            

LFB62: LDX    #$04    
LFB64: LDA    $A0,X   
       STA    $E4     
       ASL            
       ASL            
       ASL            
       ASL            
       STA    $E6     
       CPX    #$00    
       BEQ    LFB7A   
       LDA    $9E,X   
       LSR            
       LSR            
       LSR            
       LSR            
       ORA    $E6     
LFB7A: STA    $A0,X   
       DEX            
       DEX            
       BPL    LFB64   
       LDA    $E4     
       AND    #$0F    
       CMP    #$0D    
       BCS    LFB8C   
       ADC    #$01    
       BNE    LFB90   
LFB8C: LDX    $EF     
       BEQ    LFB94   
LFB90: ORA    $A0     
       STA    $A0     
LFB94: RTS            

LFB95: .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
LFBA0: .byte $A4,$A6,$A8,$AA,$D5,$5A,$55,$52,$E4,$49,$64,$41
LFBAC: .byte $A7,$A6,$A5,$A4
LFBB0: .byte $5D,$66,$6F,$78
LFBB4: .byte $00,$00,$D5,$55
LFBB8: .byte $00,$00,$5A,$52
LFBBC: .byte $00,$00,$06,$77
LFBC0: .byte $00,$00,$68,$70
LFBC4: .byte $67,$70,$78,$81
LFBC8: .byte $5A,$52,$49,$41
LFBCC: .byte $4C,$43,$3A,$31
LFBD0: .byte $5A,$63,$6C,$75
LFBD4: .byte $6A,$74,$7C,$86
LFBD8: .byte $52,$4A,$42,$39
LFBDC: .byte $49,$40,$37,$2E
LFBE0: .byte $67,$70,$79,$82
LFBE4: .byte $04,$08,$0C,$10,$14,$0A,$0C,$0E,$10
LFBED: .byte $04
LFBEE: .byte $06,$0A,$0E,$12,$09,$0B,$0D,$0F,$00,$03,$05,$07,$06,$04,$02,$00
       .byte $FF,$FF
LFC00: .byte $00,$4F,$4F,$4E,$4D,$4B,$49,$47,$45,$00,$4D,$CA,$4F,$00,$4F,$4F
       .byte $CF,$CF,$CF,$00,$8F,$8D,$8B,$89,$87,$85,$83,$00,$8F,$8B,$89,$85
       .byte $83,$00,$48,$48,$48,$48,$48,$00,$4A,$4B,$4C,$00,$4F,$4F,$00,$8F
       .byte $8F,$84,$00
LFC33: .byte $00,$02,$04,$06,$08,$0A,$0C,$0E,$10,$00,$35,$4F,$57,$00,$75,$8A
       .byte $F9,$CF,$85,$00,$56,$58,$5A,$55,$57,$59,$5A,$00,$48,$4A,$45,$48
       .byte $4A,$00,$46,$39,$36,$48,$3A,$00,$88,$CF,$E5,$00,$6A,$66,$00,$C8
       .byte $C8,$C8,$00
LFC66: .byte $10,$24,$50,$83,$31,$82,$86,$87,$88,$89,$85,$85,$85
LFC73: .byte $00,$00,$00,$00,$01,$01,$02,$04,$07,$11,$16,$23,$31
LFC80: .byte $00,$50,$00,$50,$50,$00,$50,$00,$00,$00,$00,$00,$00
LFC8D: .byte $01,$01,$02,$02,$03,$05,$07,$10,$15,$20,$30,$40,$50
LFC9A: .byte $0D,$0C,$0B,$08,$0A,$09,$08,$06,$04,$04,$02,$02,$01
LFCA7: .byte $01,$02,$03,$08,$04,$05,$05,$06,$06,$06,$09,$06,$07
LFCB4: .byte $08,$07,$06,$0D,$05,$05,$04,$04,$03,$03,$05,$02,$01
LFCC1: .byte $B2,$42,$52,$62
LFCC5: .byte $54,$5D,$66,$6F,$78
LFCCA: .byte $4B,$42,$39,$30
LFCCE: .byte $2D,$35,$3D,$45,$4D,$55,$5D,$65,$6D,$75
LFCD8: .byte $0A,$08,$08,$06,$06,$04,$04,$04,$02,$02,$02,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$00,$06,$1A,$E6,$BC,$98,$80,$C0
       .byte $00,$C0,$B0,$C8,$86,$4A,$32,$06,$00,$E7,$A5,$18,$7E,$5A,$42,$66
       .byte $00,$81,$66,$18,$7E,$66,$E7,$C3,$00,$18,$24,$5A,$66,$99,$A5,$18
       .byte $00,$00,$99,$A5,$5A,$24,$18,$00,$00,$00,$06,$0E,$F3,$E6,$A6,$69
       .byte $00,$7C,$0E,$13,$E6,$AC,$92,$CC,$00,$77,$36,$14,$14,$C9,$55,$22
       .byte $00,$00,$36,$14,$EB,$55,$22,$00,$00,$07,$34,$1E,$F8,$F9,$1E,$0C
       .byte $00,$F0,$16,$7C,$9F,$1F,$7C,$18,$00,$60,$AE,$BC,$D6,$3A,$12,$3A
       .byte $00,$0C,$E8,$3A,$D6,$B8,$B8,$00,$00,$66,$18,$24,$E7,$5A,$24,$24
       .byte $00,$C3,$66,$18,$24,$FF,$7E,$18,$00,$24,$5E,$AB,$99,$91,$F5,$07
       .byte $00,$18,$7E,$D5,$99,$8F,$A0,$E0,$00,$D8,$36,$D1,$7E,$3E,$22,$33
       .byte $00,$1B,$6C,$2B,$3F,$1F,$11,$33,$00,$0F,$3E,$B0,$7C,$F6,$78,$CC
       .byte $00,$E0,$78,$18,$BC,$5E,$E7,$42,$00,$46,$3C,$98,$E4,$A5,$1B,$01
       .byte $00,$46,$3C,$19,$27,$A5,$D8,$80,$00,$00,$00,$24,$28,$18,$24,$00
       .byte $00,$5A,$24,$5A,$5A,$24,$5A,$00,$00,$10,$42,$20,$89,$24,$09,$44
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$5A,$5A,$3C,$7E,$5A,$7E,$81
       .byte $00,$A5,$A5,$99,$66,$C3,$5A,$3C,$00,$00,$00,$18,$18,$00,$00,$00
       .byte $00,$00,$18,$3C,$3C,$18,$00,$00,$00,$45,$98,$98,$0B,$98,$45,$45
       .byte $00,$45,$95,$98,$0B,$98,$48,$45,$00,$68,$68,$78,$78,$78,$58,$58
       .byte $00,$68,$68,$78,$78,$78,$78,$58,$00,$9A,$9A,$9A,$9A,$44,$5F,$44
       .byte $00,$0F,$0F,$9A,$44,$44,$44,$44,$00,$2A,$2A,$4E,$4E,$66,$66,$66
       .byte $00,$2A,$2A,$4E,$4E,$5B,$5B,$5B,$00,$78,$78,$0F,$0F,$6A,$6A,$6A
       .byte $00,$00,$78,$0F,$6A,$6A,$6A,$00,$00,$98,$98,$98,$58,$58,$0B,$0B
       .byte $00,$98,$98,$98,$58,$58,$0B,$0B,$00,$9A,$9A,$9A,$2A,$2A,$6F,$6F
       .byte $00,$9A,$9A,$9A,$2A,$2A,$6F,$00,$00,$7A,$7A,$5A,$5B,$5B,$0F,$0F
       .byte $00,$7A,$7A,$7A,$5B,$5B,$0F,$0F,$00,$6A,$6A,$2F,$2F,$9A,$9A,$9A
       .byte $00,$6A,$6A,$2F,$2F,$9A,$9A,$9A,$00,$0F,$0F,$4A,$4A,$9A,$9A,$2B
       .byte $00,$0F,$0F,$4A,$4A,$9A,$9A,$2B,$00,$4F,$4F,$2B,$2B,$6B,$6B,$2B
       .byte $00,$4F,$4F,$2B,$2B,$6B,$6B,$2B,$00,$2B,$2B,$9A,$9A,$9A,$4F,$4F
       .byte $00,$2B,$2B,$9A,$9A,$9A,$4F,$4F,$00,$6E,$6B,$64,$64,$68,$6B,$6E
       .byte $00,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$00,$0F,$0F,$0F,$64,$64,$0F,$0F
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$24,$26,$28,$58,$56,$64,$64
       .byte $00,$28,$26,$24,$64,$64,$58,$66,$00,$00,$00,$28,$28,$00,$00,$00
       .byte $00,$00,$44,$4C,$4C,$44,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00
LFF09: .byte $00,$00,$00,$00,$00,$60,$B0,$D0,$60,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$60,$B0,$D0,$60,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$3C,$66,$66,$66,$66,$66,$66,$3C,$7E,$18,$18,$18
       .byte $18,$78,$38,$18,$7E,$60,$60,$3C,$06,$06,$46,$3C,$3C,$46,$06,$0C
       .byte $0C,$06,$46,$3C,$0C,$0C,$0C,$7E,$4C,$2C,$1C,$0C,$7C,$46,$06,$06
       .byte $7C,$60,$60,$7E,$3C,$66,$66,$66,$7C,$60,$62,$3C,$18,$18,$18,$18
       .byte $0C,$06,$42,$7E,$3C,$66,$66,$3C,$3C,$66,$66,$3C,$3C,$46,$06,$3E
       .byte $66,$66,$66,$3C
LFF7D: .byte $D8,$00,$10,$40,$30,$20,$50,$60,$E0,$80,$90,$A0,$B0,$70
LFF8B: .byte $93,$24,$97,$9F,$A7,$B3,$BF,$CF,$C0,$40,$40,$C0,$F0,$10,$D0,$70
       .byte $50,$D0,$10,$F0,$00,$00,$C0,$40,$40,$C0,$00,$00,$FC,$44,$F4,$14
       .byte $D4,$5C,$74,$D4,$14,$F4,$44,$FC,$00,$00,$F0,$10,$D0,$50,$70,$D0
       .byte $10,$F0,$00,$00,$FF,$11,$FD,$45,$F5,$15,$D5,$77,$55,$D5,$1D,$F5
       .byte $45,$FD,$11,$FF,$00,$00,$FC,$44,$F4,$14,$D4,$74,$54,$D4,$1C,$F4
       .byte $44,$FC,$00,$00
LFFDF: .byte $00,$02,$04,$06
LFFE3: .byte $04,$14,$24,$34
LFFE7: .byte $05,$15,$25,$35,$75,$7E,$87,$90,$31,$28,$1F,$16
LFFF3: .byte $00,$01,$02,$04,$08,$10,$20,$40,$FF,$00,$F0,$00,$F0
