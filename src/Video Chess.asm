; Disassembly of roms/Video Chess.bin
; Disassembled Tue Oct  6 15:24:49 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Video Chess.bin
;

      processor 6502
VSYNC   =  $00
VBLANK  =  $01
WSYNC   =  $02
NUSIZ0  =  $04
NUSIZ1  =  $05
COLUP0  =  $06
COLUP1  =  $07
COLUBK  =  $09
CTRLPF  =  $0A
PF2     =  $0F
RESP0   =  $10
RESP1   =  $11
RESM0   =  $12
RESBL   =  $14
AUDC0   =  $15
AUDF0   =  $17
AUDV0   =  $19
GRP0    =  $1B
GRP1    =  $1C
ENAM0   =  $1D
ENABL   =  $1F
HMP0    =  $20
HMP1    =  $21
HMM0    =  $22
HMBL    =  $24
VDELP0  =  $25
HMOVE   =  $2A
HMCLR   =  $2B
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
       INX            
       TXA            
LF007: STA    VSYNC,X 
       INX            
       BNE    LF007   
       JSR    LF2AD   
LF00F: LDA    #$FF    
       STA    WSYNC   
       STA    VSYNC   
       STA    VBLANK  
       INC    $D3     
       BNE    LF021   
       INC    $F1     
       BNE    LF021   
       STA    $F0     
LF021: EOR    $F0     
       ORA    #$F7    
       STA    $E9     
       LDA    SWCHB   
       AND    #$08    
       LSR            
       TAY            
       LDX    #$04    
LF030: LDA    $F1     
       AND    $F0     
       EOR    LFF6E,Y 
       AND    $E9     
       STA    $DD,X   
       STA    NUSIZ1,X
       INY            
       DEX            
       BNE    LF030   
       STX    COLUP0  
       LDY    SWCHB   
       STY    $ED     
       BPL    LF050   
       LDY    $DF     
       STA    $DF     
       STY    $DE     
LF050: LDY    #$24    
       STA    WSYNC   
       STX    VSYNC   
       STY    TIM64T  
       JSR    LF2AA   
       LDA    $D3     
       AND    #$0C    
       CMP    #$04    
       JSR    LF53C   
       LDX    $D9     
       BCC    LF075   
       LDY    $F3     
       BMI    LF075   
       LDY    $DB     
       BNE    LF079   
       LDY    $F3     
       BNE    LF079   
LF075: LDA    #$08    
       BNE    LF07B   
LF079: LDA    $DB     
LF07B: JSR    LFE64   
       LDX    $DA     
       LDA    $80,X   
       AND    #$F0    
       LDY    $E7     
       BMI    LF094   
       LDY    $F3     
       BEQ    LF09A   
       BPL    LF090   
       BCS    LF098   
LF090: BCC    LF096   
       ORA    $DC     
LF094: BCS    LF098   
LF096: ORA    $DB     
LF098: STA    $80,X   
LF09A: LDA    $E7     
       BEQ    LF0A8   
       BMI    LF0A8   
       ORA    $E6     
       BPL    LF0A8   
       LDA    #$00    
       STA    $E7     
LF0A8: TAY            
       BEQ    LF0C8   
       LDX    $F7     
       BMI    LF0BD   
       LDA    $F6     
       BEQ    LF0BD   
       LDA    #$0F    
       BCS    LF0BA   
       LDA    #$09    
       TAY            
LF0BA: JSR    LFE64   
LF0BD: LDA    $EE     
       ROL            
       CMP    #$04    
       BCS    LF0C8   
       TAX            
       LDY    LFEE9,X 
LF0C8: STY    AUDC0   
LF0CA: LDA    INTIM   
       BNE    LF0CA   
       STA    WSYNC   
       DEC    $D0     
       BPL    LF0D9   
       INC    $D0     
       STA    VBLANK  
LF0D9: LDX    #$0F    
       STX    AUDV0   
       STX    AUDF0   
       LDY    #$FF    
LF0E1: STY    $C0,X   
       DEX            
       STA    $C0,X   
       DEX            
       BPL    LF0E1   
       LDY    #$1F    
       JSR    LF545   
       STA    HMCLR   
       LDA    $EA     
LF0F2: LDX    INTIM   
       BNE    LF0F2   
       STX    $EB     
       STA    WSYNC   
       STA    RESM0   
       LDY    #$66    
       STY    $E8     
       ASL            
       ASL            
       ADC    $EA     
       ADC    #$46    
       STA    $CA     
       LDY    #$04    
       LDX    #$20    
       STX    HMM0    
       LDX    #$02    
       STX    NUSIZ1  
       STA    RESBL   
       STA    RESP0   
       LDA    #$D0    
       STA    RESP1   
       STA    HMBL    
       LDA    #$F1    
       STA    HMP1    
       STA    VDELP0  
       STA    WSYNC   
       STA    HMOVE   
       STA    ENAM0   
       STA    CTRLPF  
       STX    NUSIZ0  
       LDA    #$38    
       STA    $C0     
       LDX    $EE     
       LDA    $DE,X   
       STA    $F8     
       LDA    $DF     
       STA    $FD     
       JMP    LF1CF   
LF13E: LDA    $D6     
       LDX    $D5     
       AND    #$07    
       CMP    #$06    
       BNE    LF163   
       LDA    $E5     
       EOR    #$10    
       TAY            
       EOR    #$08    
       CMP    $D5     
       BEQ    LF17F   
       CPX    #$08    
       BCC    LF15B   
       CPX    #$38    
       BCC    LF182   
LF15B: LDA    $D6     
       EOR    #$04    
       STA    $D6     
       BCS    LF182   
LF163: CMP    #$01    
       BNE    LF182   
       LDA    $D4     
       AND    #$38    
       TAY            
       TXA            
       SBC    $D4     
       CMP    #$FE    
       BNE    LF176   
       INX            
       BCS    LF17F   
LF176: CMP    #$02    
       BNE    LF182   
       DEX            
       TYA            
       ORA    #$07    
       TAY            
LF17F: JSR    LFD37   
LF182: RTS            

LF183: SEC            
LF184: STA    $C0,X   
       LDA    $DE     
       BCS    LF1A9   
LF18A: STA    $C0,X   
       LDA    $DE     
       BCC    LF1C1   
       PHA            
       DEX            
       BMI    LF1C5   
LF194: DEX            
       LDA.wy $0080,Y 
       INY            
       ASL            
       ASL            
       ASL            
       CMP    #$40    
       BCC    LF183   
       BEQ    LF184   
       AND    #$38    
       NOP            
       STA    $C0,X   
       LDA    $DF     
LF1A9: PHA            
       DEX            
       DEX            
       LDA.wy $0080,Y 
       INY            
       STA    HMOVE   
       ASL            
       ASL            
       ASL            
       CMP    #$40    
       BCC    LF18A   
       BEQ    LF18A   
       AND    #$38    
       STA    $C0,X   
       LDA    $DF     
LF1C1: PHA            
       DEX            
       BPL    LF194   
LF1C5: STY    $EB     
       TXS            
       LDY    #$05    
       LDA    ($CC),Y 
       LSR            
       STA    GRP0    
LF1CF: LDA    $FE     
       STA    COLUP0  
       STA    HMCLR   
       STA    WSYNC   
       STA    HMOVE   
       JMP    LF209   
LF1DC: LDX    #$04    
LF1DE: LDA    $D9,X   
       STA    $D4,X   
       DEX            
       BPL    LF1DE   
       RTS            

LF1E6: STA    AUDC0   
       LDA    $E7     
       BPL    LF1FB   
       STY    $F3     
       LDA    $EE     
       BEQ    LF1FB   
       LDX    $DA     
       LDA    $D6     
       JSR    LFE64   
       STY    $D6     
LF1FB: STY    $E7     
       RTS            

LF1FE: LDA    ($CC),Y 
       LSR            
       STA    GRP0    
       LDA    $FE     
       STA    HMOVE   
       STA    COLUP0  
LF209: LDA    ($C8),Y 
       LSR            
       STA    GRP1    
       LDA    $FC     
       STA.w  $0007   
       LDA    ($C4),Y 
       LSR            
       STA    GRP0    
       LDA    ($C0),Y 
       LSR            
       LDX    $FA     
       STX    COLUP0  
       STA    GRP1    
       LDX    $F8     
       STX    COLUP1  
       LDA    #$70    
       STA    HMP0    
       STA    HMP1    
       LDA    $FF     
       STA    COLUP0  
       LDX    $FB     
       STA    WSYNC   
       STA    HMOVE   
       LDA    ($CE),Y 
       STA    GRP0    
       LDA    ($CA),Y 
       STA    GRP1    
       LDA    $FD     
       STA    COLUP1  
       LDA    ($C6),Y 
       STA    GRP0    
       LDA    ($C2),Y 
       STX    COLUP0  
       LDX    $F9     
       STA    GRP1    
       STX    COLUP1  
       LDA    #$90    
       STA    HMP0    
       STA    HMP1    
       DEY            
       BPL    LF1FE   
       INY            
       STY    GRP0    
       STY    GRP1    
       STY    PF2     
       STY    ENABL   
       STA    HMOVE   
       TYA            
       LDY    $EB     
       CPY    #$40    
       BCS    LF27B   
       LDA    $E8     
       STA    ENABL   
       EOR    #$FE    
       STA    $E8     
       STA    PF2     
       LDX    #$0F    
       STA    HMCLR   
       JMP    LF194   
LF27B: LDY    #$3F    
       STY    NUSIZ0  
       STY    ENAM0   
       STA    COLUP0  
       JSR    LF545   
       JSR    LF3E7   
       LDA    #$09    
       STA    $CC     
       JSR    LFE7D   
       CPX    $D9     
       BNE    LF29A   
       LDA    $F3     
       BEQ    LF29A   
       LDX    $DD     
LF29A: STX    $F7     
       LDA    $E2     
       PHP            
       PLA            
       STA    $E2     
LF2A2: LDA    INTIM   
       BNE    LF2A2   
       JMP    LF00F   
LF2AA: LDA    SWCHB   
LF2AD: LDY    #$00    
       LSR            
       BCS    LF2FF   
       STY    $E4     
       LDX    #$07    
LF2B6: LDA    LFEF2,X 
       STA    $80,X   
       EOR    #$08    
       STA    $B8,X   
       LDA    #$8E    
       STA    $B0,X   
       LDA    #$46    
       STA    $88,X   
       STY    $90,X   
       STY    $98,X   
       STY    $A0,X   
       STY    $A8,X   
       DEX            
       BPL    LF2B6   
       STX    $E2     
       STX    $F7     
       STX    $E5     
       BIT    $ED     
       BPL    LF2EC   
       BIT    $D3     
       BVS    LF2E1   
       INX            
LF2E1: STY    $8C,X   
       STA    $9C,X   
       ASL    $B9     
       SEC            
       ROR    $B9     
       INC    $E4     
LF2EC: STY    $F3     
       STY    $E7     
       LDX    #$03    
       STX    $EE     
       LSR            
       STA    $D5     
       STA    $D4     
       STA    $D8     
       TYA            
       JMP    LF520   
LF2FF: LSR            
       BCS    LF315   
       LDY    $F2     
       BNE    LF30E   
       LDX    $EA     
       INX            
       TXA            
       AND    #$07    
       STA    $EA     
LF30E: CPY    #$1E    
       BCC    LF314   
       LDY    #$FF    
LF314: INY            
LF315: STY    $F2     
       LDY    $F3     
       DEY            
       BMI    LF35C   
       LDY    $F4     
       BEQ    LF35C   
       CPY    #$20    
       BCC    LF35D   
       LDA    #$20    
       STA    $F4     
       LDA    #$FF    
       STA    $E3     
       LDY    #$09    
       CPY    $D6     
       BNE    LF354   
       LDX    $D4     
       BIT    $83     
       BVS    LF354   
       LDA    $86     
       ORA    $8A     
       ASL            
       BMI    LF345   
       DEX            
       DEX            
       CPX    $D5     
       BEQ    LF3B9   
LF345: LDA    $87     
       ORA    $8B     
       ASL            
       BMI    LF354   
       LDX    $D4     
       INX            
       INX            
       CPX    $D5     
       BEQ    LF3B9   
LF354: INC    $D4     
LF356: LDY    #$FE    
       STY    $D8     
       STY    $D6     
LF35C: RTS            

LF35D: LDA    $D4     
       BMI    LF35C   
       LDX    $DA     
       LDY    $D9     
       LDA    $E3     
       BMI    LF379   
       LDX    $F7     
       TXA            
       BMI    LF3BF   
       LDY    $DA     
       JSR    LFE62   
       LDX    $D9     
       CPY    $F7     
       BEQ    LF383   
LF379: LDA.wy $0080,Y 
       AND    #$F0    
       ORA    $DB     
       STA.wy $0080,Y 
LF383: JSR    LFE62   
       JSR    LFA95   
       LDY    $E3     
       BPL    LF3C3   
       LDA    $D4     
       CMP    $D9     
       BNE    LF3B7   
       LDA    $D5     
       CMP    $DA     
       BNE    LF3E6   
       LDX    $D6     
       CPX    #$06    
       BNE    LF3B1   
       LDX    $D8     
       CPX    #$08    
       BCS    LF3B9   
       CPX    #$04    
       LDA    $DC     
       BCS    LF3AF   
       BNE    LF3B7   
       BEQ    LF3B9   
LF3AF: BEQ    LF3B7   
LF3B1: LDA    $DC     
       CMP    #$07    
       BCC    LF3B9   
LF3B7: STY    $F5     
LF3B9: LDY    #$01    
       STY    $E3     
       LDA    #$40    
LF3BF: STA    $D4     
       BNE    LF356   
LF3C3: LDX    $F7     
       BMI    LF3CC   
       LDA    #$09    
       JSR    LFE64   
LF3CC: CPX    $D5     
       BNE    LF3E6   
       LDY    $D8     
       BMI    LF3E6   
       LDA    #$06    
       CMP    $D6     
       BNE    LF3DE   
       CPY    #$04    
       BCC    LF3E6   
LF3DE: LDY    #$FE    
       STY    $F5     
       STY    $F6     
       STY    $D4     
LF3E6: RTS            

LF3E7: JSR    LF53C   
       LDA    $F3     
       BEQ    LF3F5   
       LDX    $DA     
       LDA    $DC     
       JSR    LFE64   
LF3F5: LDX    $D9     
       LDA    $DB     
       JSR    LFE64   
       LDX    $F7     
       BMI    LF405   
       LDA    #$09    
       JSR    LFE64   
LF405: LDY    $F4     
       BEQ    LF41C   
       DEC    $F4     
       BNE    LF41B   
       LDX    $F3     
       DEX            
       BMI    LF3E6   
       LDA    $D4     
       BPL    LF419   
       JMP    LF1DC   
LF419: STY    $F4     
LF41B: RTS            

LF41C: BIT    $F3     
       BPL    LF46C   
       BVC    LF468   
       JSR    LF1DC   
       TAX            
       LDA    $D6     
       JSR    LFE64   
       JSR    LFD91   
       LDY    $EA     
       LDA    $CC     
       BIT    $E2     
       CMP    #$55    
       BCS    LF439   
       CLV            
LF439: AND    $E2     
       AND    $CA     
       PHP            
       PLA            
       STA    $E2     
       LDA    LFFF5,Y 
       BCS    LF448   
       ADC    #$12    
LF448: BIT    $E2     
       BVC    LF44E   
       LDA    #$12    
LF44E: BMI    LF452   
       ADC    #$10    
LF452: TAY            
       AND    #$0F    
       STA    $D2     
       TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $D9     
       PLA            
       PLA            
       ROL    $B7     
       CLC            
       ROR    $B7     
       JMP    LF574   
LF468: LDX    $D4     
       STX    $D8     
LF46C: LDA    INPT4   
       TAX            
       EOR    $E6     
       AND    $E6     
       STX    $E6     
       BPL    LF4D6   
       LDA    #$04    
       JSR    LF1E6   
       BIT    SWCHB   
       LDA    $D6     
       BVS    LF497   
       TAX            
       LDA    $F3     
       BNE    LF4BE   
       CPX    #$09    
       BCC    LF4D6   
       STA    $D7     
       LDA    $D8     
       STA    $D5     
       INC    $F3     
       RTS            

LF495: INC    $E4     
LF497: CLC            
       ADC    #$01    
       CMP    #$08    
       BEQ    LF497   
       CMP    #$07    
       BEQ    LF497   
       CMP    #$0F    
       BEQ    LF495   
       AND    #$0F    
       STA    $D6     
       LDX    #$C0    
       STX    $E2     
       STX    $E5     
       LDX    $D4     
       STX    $D5     
       STX    $D8     
       JSR    LFE4B   
LF4B9: LDA    #$00    
       STA    $F3     
       RTS            

LF4BE: LDA    $D4     
       CMP    $D5     
       BEQ    LF4B9   
       LDA    $F5     
       BEQ    LF4CD   
       LDA    #$0F    
       STA    $E7     
       RTS            

LF4CD: LDA    #$C0    
       STA    $F3     
       STA    $F4     
       JMP    LF13E   
LF4D6: LDA    SWCHA   
       CMP    #$F0    
       BCS    LF53B   
       BIT    $ED     
       BPL    LF4E3   
       EOR    #$C0    
LF4E3: STA    $E9     
       JSR    LF1E6   
       LDA    $D8     
       LDX    #$03    
LF4EC: ASL    $E9     
       BCS    LF4F3   
       ADC    LFF7E,X 
LF4F3: DEX            
       BPL    LF4EC   
       AND    #$3F    
       LDX    $D8     
       STA    $D8     
       TAY            
       LDA    $F3     
       LSR            
       LDA    $80,X   
       AND    #$F0    
       BCS    LF50E   
       STY    $D4     
       ORA    $D6     
       STA    $80,X   
       BCC    LF519   
LF50E: ORA    $D7     
       STY    $D5     
       STA    $80,X   
       TYA            
       EOR    $D4     
       BEQ    LF522   
LF519: LDA.wy $0080,Y 
       AND    #$0F    
       BCS    LF522   
LF520: STA    $D6     
LF522: STA    $D7     
LF524: LDX    #$00    
       STX    $F1     
       STX    $F0     
       LDA    #$20    
       STA    $F4     
       STX    $F5     
       STX    $F6     
LF532: LDX    #$05    
LF534: LDA    $D3,X   
       STA    $D8,X   
       DEX            
       BNE    LF534   
LF53B: RTS            

LF53C: LDX    $F4     
       BNE    LF544   
       LDX    $D4     
       BPL    LF532   
LF544: RTS            

LF545: BIT    $ED     
       STY    TIM64T  
       BPL    LF573   
       LDX    #$3F    
LF54E: TXA            
       EOR    #$07    
       TAY            
       LDA.wy $0080,Y 
       AND    #$0F    
       STA    $F8     
       LDA    $80,X   
       AND    #$0F    
       STA    $F9     
       EOR    $80,X   
       ORA    $F8     
       STA    $80,X   
       LDA.wy $0080,Y 
       AND    #$F0    
       ORA    $F9     
       STA.wy $0080,Y 
       DEX            
       DEX            
       BPL    LF54E   
LF573: RTS            

LF574: LDA    #$00    
       STA    ENAM0   
       STA    $DC     
       STA    $E1     
       STA    $E0     
       STA    $D1     
       STA    $D0     
LF582: LDX    #$01    
       STX    $DE     
       STX    $C0     
       LDA    #$FF    
       STX    $E3     
       DEX            
       STX    $DA     
       STA    $DD     
       STA    $DF     
       STA    $CE     
       STA    $CF     
       LDA    #$BF    
       AND    $80     
       STA    $80     
       LDA    #$3F    
       AND    $B8     
       STA    $B8     
       STX    $D0     
       LDA    $D1     
       BEQ    LF5D5   
       JMP    LF64E   
LF5AC: INC    $D0     
       BIT    $B8     
       BVS    LF5CF   
       LDX    $D0     
       DEX            
       BEQ    LF5BB   
       CPX    $D1     
       BNE    LF5CF   
LF5BB: LDA    $B8     
       AND    #$3F    
       ORA    #$80    
LF5C1: STA    $B8     
       LDA    $E3     
       EOR    #$7C    
       STA    $E7     
       LDA    #$00    
       STA    $E6     
       BEQ    LF5D5   
LF5CF: LDA    $E3     
       EOR    #$FE    
       STA    $E3     
LF5D5: LDA    $B4     
       AND    #$7F    
       STA    $B4     
LF5DB: LDA    #$40    
       STA    $D4     
       JSR    LFA66   
LF5E2: LDA    $D4     
       BMI    LF5E9   
       JMP    LF691   
LF5E9: LDA    #$40    
       STA    $D4     
       BIT    $B8     
       BVS    LF664   
       BMI    LF657   
       LDA    $D0     
       BEQ    LF606   
       CMP    $D1     
       BEQ    LF600   
       BCC    LF600   
LF5FD: JMP    LF8C6   
LF600: BIT    $B4     
       BPL    LF66D   
       BMI    LF5FD   
LF606: BIT    $B4     
       BPL    LF66D   
       BIT    $80     
       BVS    LF611   
       JMP    LF9F5   
LF611: LDA    $ED     
       STA    $CE     
       AND    #$3F    
       STA    $D4     
       TAX            
       LDA    $EE     
       STA    $CF     
       STA    $D8     
       LDA    $DE     
       STA    $DF     
       LDA    $80,X   
       AND    #$0F    
       STA    $D6     
       JSR    LFB91   
       TXA            
       CLC            
       AND    #$3C    
       ADC    $D5     
       ASL            
       STA    COLUBK  
       LDA    $80,X   
       AND    #$0F    
       LDX    $D6     
       CPX    #$06    
       BNE    LF64C   
       LDX    $D8     
       CPX    #$08    
       BCC    LF64C   
       CPX    #$0C    
       BCS    LF64C   
       LDA    #$0E    
LF64C: STA    $D7     
LF64E: LDA    #$BF    
       AND    $81     
       STA    $81     
       JMP    LF6EA   
LF657: LDA    $E3     
       EOR    #$FE    
       STA    $E3     
       LDA    $B8     
       ORA    #$C0    
       JMP    LF5C1   
LF664: LDA    $B8     
       AND    #$3F    
       STA    $B8     
       JMP    LF5D5   
LF66D: ASL    $B4     
       SEC            
       ROR    $B4     
       LDA    $D0     
       BNE    LF67F   
       LDA    $82     
       ORA    $85     
       ORA    $89     
       ASL            
       BPL    LF687   
LF67F: JMP    LF5DB   
LF682: .byte $04,$06,$01,$00,$08
LF687: LDX    #$04    
LF689: LDA    LF682,X 
       STA    $D4,X   
       DEX            
       BPL    LF689   
LF691: LDA    $D0     
       BNE    LF6EA   
       LDA    $E0     
       CMP    $D4     
       BNE    LF6A1   
       LDA    $E1     
       CMP    $D8     
       BEQ    LF6D1   
LF6A1: JSR    LFBB6   
       LDX    $DE     
       CPX    $F0     
       BCS    LF6D1   
       TAX            
       LDA    $B4     
       EOR    #$80    
       AND    #$80    
       ORA    $D4     
       LDY    $D8     
       CPX    $DF     
       BCC    LF6C5   
       BNE    LF6D1   
       CMP    $CE     
       BCC    LF6C5   
       BNE    LF6D1   
       CPY    $CF     
       BCS    LF6D1   
LF6C5: STX    $DE     
       STA    $ED     
       STY    $EE     
       LDA    $80     
       ORA    #$40    
       STA    $80     
LF6D1: LDA    $D6     
       CMP    #$01    
       BNE    LF6DD   
       LDA    $D8     
       CMP    #$08    
       BCS    LF67F   
LF6DD: BIT    $B4     
       BMI    LF6E4   
LF6E1: JSR    LFD4D   
LF6E4: JSR    LFA95   
       JMP    LF5E2   
LF6EA: LDA    $8C     
       AND    #$BF    
       LDY    $D6     
       CPY    #$06    
       BNE    LF6FC   
       LDY    $D8     
       CPY    #$0C    
       BCC    LF6FC   
       ORA    #$40    
LF6FC: STA    $8C     
       LDX    $D4     
       LDA    $80,X   
       AND    #$0F    
       STA    $EB     
       BIT    $B8     
       BPL    LF782   
       LDY    $D7     
       LDX    $D0     
       CPY    #$09    
       BNE    LF71C   
       CPX    #$01    
       BNE    LF71C   
       LDA    #$40    
       ORA    $81     
       STA    $81     
LF71C: DEX            
       CPX    $D1     
       BNE    LF775   
       INX            
       CPY    #$01    
       BNE    LF72E   
       LDA    $DA     
       SBC    #$01    
       EOR    #$80    
       STA    $C0,X   
LF72E: LDX    $D7     
       LDY    $EB     
       LDA    LFED5,Y 
       CLC            
       ADC    LFED5,X 
       BEQ    LF768   
       TAY            
       TAX            
       JSR    LFD81   
       ROL            
       BMI    LF768   
       BCS    LF747   
       INC    $E6     
LF747: STA    $EC     
       LDY    $E7     
       JSR    LFD81   
       ROL            
       CMP    $EC     
       BCS    LF755   
       STX    $E7     
LF755: LDA    #$01    
       CMP    $E6     
       BCC    LF76B   
       LDA    $D6     
       CMP    #$03    
       BNE    LF764   
LF761: JMP    LF6E4   
LF764: CMP    #$05    
       BEQ    LF761   
LF768: JMP    LF6E1   
LF76B: LDX    $D0     
       LDA    $DA     
       ADC    $E7     
       EOR    #$80    
       STA    $C0,X   
LF775: BIT    $B8     
       BVS    LF77F   
       LDA    $E3     
       EOR    #$FE    
       STA    $E3     
LF77F: JMP    LF664   
LF782: LDY    $D7     
       LDA    $DA     
       CLC            
       ADC    LFED5,Y 
       STA    $DB     
       BIT    $8C     
       BVC    LF7A9   
       LDA    $E3     
       ASL            
       AND    #$08    
       EOR    #$0A    
       TAY            
       LDA    #$05    
       BCS    LF79E   
       LDA    #$FA    
LF79E: ADC    $DB     
       CLC            
       SBC    $D0     
       CLC            
       ADC    LFED5,Y 
       STA    $DB     
LF7A9: LDA    $D7     
       AND    #$07    
       CMP    #$01    
       BNE    LF7C1   
       LDA    $E3     
       ASL            
       LDA    $D0     
       BCS    LF7BA   
       EOR    #$FF    
LF7BA: ADC    #$00    
       STA    $E9     
       JMP    LF9EC   
LF7C1: BIT    $E2     
       BVC    LF7DF   
       LDA    #$01    
       JSR    LFE71   
       TXA            
       TAY            
       JSR    LFE6F   
       TYA            
       JSR    LFE9C   
       STA    $DC     
       LDA    #$1B    
       JSR    LFE9C   
       ASL            
       SBC    $DC     
       STA    $DC     
LF7DF: LDA    $E3     
       EOR    #$FE    
       LDX    $D0     
       STA    $C1,X   
       CPX    $D1     
       BCC    LF7F4   
       LDA    $DB     
       CLC            
       ADC    $DC     
       EOR    #$80    
       STA    $C1,X   
LF7F4: LDX    $D1     
       CPX    $D0     
       BCS    LF821   
       LDX    $D2     
       CPX    $D0     
       BCS    LF817   
       LDA    $D5     
       CMP    $DD     
       BEQ    LF817   
       LDY    $EB     
       JSR    LFD65   
       BPL    LF817   
       LDA    $D7     
       BEQ    LF817   
       JMP    LF6E1   
LF814: JMP    LF97A   
LF817: LDA    $D0     
       CMP    #$0C    
       BEQ    LF814   
       LDA    $D5     
       STA    $DD     
LF821: LDA    $D0     
       CLC            
       ADC    #$1A    
       TAX            
       LDA    $D4     
       TAY            
       BPL    LF836   
LF82C: TAX            
       LDA    $D7     
       CPX    $D0     
       BNE    LF836   
       LDA.wy $0080,Y 
LF836: ASL            
       ASL            
       ASL            
       ASL            
       STA    $FB     
       LDA    $8D,X   
       AND    #$0F    
       ORA    $FB     
       STA    $8D,X   
       TXA            
       SEC            
       SBC    #$0D    
       BPL    LF82C   
       LDA    $D8     
       STA    $EF,X   
       LDA    $80,X   
       AND    #$4F    
       STA    $80,X   
       LDA    $B4     
       AND    #$80    
       ORA    $D4     
       AND    #$B0    
       ORA    $80,X   
       STA    $80,X   
       TXA            
       BNE    LF877   
       LDA.wy $0080,Y 
       AND    #$0F    
       STA    $D6     
       LSR            
       BNE    LF877   
       LDA    $D8     
       LDY    #$07    
       LDX    #$05    
       CMP    #$08    
       BEQ    LF88B   
LF877: LDA    $D6     
       CMP    #$06    
       BNE    LF88E   
       LDA    $D8     
       CMP    #$08    
       BCC    LF88E   
       CMP    #$0C    
       BCS    LF88E   
       LDX    $D5     
       LDY    $E5     
LF88B: JSR    LFD37   
LF88E: JSR    LFD33   
       LDY    $D7     
       LDA    $DA     
       CLC            
       ADC    LFED5,Y 
       STA    $DA     
       BIT    $8C     
       BVC    LF8C3   
       LDA    $E3     
       AND    #$08    
       ORA    #$02    
       STA    $E9     
       EOR    #$08    
       TAY            
       LDX    $D5     
       JSR    LFD44   
       LDA    #$06    
       BIT    $E3     
       BMI    LF8B7   
       LDA    #$FA    
LF8B7: CLC            
       ADC    $DA     
       CLC            
       SBC    $D0     
       CLC            
       ADC    LFED5,Y 
       STA    $DA     
LF8C3: JMP    LF5AC   
LF8C6: DEC    $D0     
       LDA    $E3     
       EOR    #$FE    
       STA    $E3     
       LDA    #$FF    
       STA    $DD     
       LDX    $D0     
       LDA    $A7,X   
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $E9     
       LDA    $80,X   
       AND    #$B0    
       ORA    $E9     
       ASL    $B4     
       ASL            
       ROR    $B4     
       LSR            
       STA    $D4     
       LDA    $9A,X   
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $D7     
       LDA    $8D,X   
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $E9     
       AND    #$07    
       STA    $D6     
       LDY    $EF,X   
       STY    $D8     
       JSR    LFB91   
       LDA    $80,X   
       AND    #$F0    
       ORA    $D7     
       STA    $80,X   
       LDX    $D4     
       JSR    LFD44   
       LDX    $D8     
       LDA    $D6     
       CPX    #$08    
       BCC    LF940   
       BNE    LF928   
       LDY    $D0     
       BNE    LF928   
       LDY    #$05    
       DEX            
       CMP    #$01    
       BEQ    LF93D   
       INX            
LF928: CMP    #$06    
       BNE    LF940   
       CPX    #$0C    
       BCS    LF940   
       LDA    $E3     
       ASL            
       ASL            
       ASL            
       EOR    #$FF    
       SEC            
       ADC    $D5     
       TAX            
       LDY    $D5     
LF93D: JSR    LFD37   
LF940: LDX    $D0     
       LDA    $C1,X   
       STA    $E9     
       LDY    $D7     
       LDA    $DA     
       SEC            
       SBC    LFED5,Y 
       STA    $DA     
       LDA    $D6     
       CMP    #$06    
       BNE    LF983   
       LDA    $D8     
       CMP    #$0C    
       BCC    LF983   
       LDA    $E3     
       AND    #$08    
       EOR    #$0A    
       TAY            
       LDA    #$06    
       BIT    $E3     
       BPL    LF96B   
       LDA    #$FA    
LF96B: CLC            
       ADC    $DA     
       SEC            
       ADC    $D0     
       SEC            
       SBC    LFED5,Y 
       STA    $DA     
       JMP    LF983   
LF97A: LDA    $DB     
       CLC            
       ADC    $DC     
       EOR    #$80    
       STA    $E9     
LF983: LDX    $D0     
       LDA    $E3     
       BMI    LF9B9   
       TXA            
       BNE    LF9A1   
       LDA    $E9     
       CMP    #$FD    
       BCC    LF99E   
       BIT    $E2     
       BVC    LF99E   
       BIT    $81     
       BVS    LF99E   
       LDA    #$03    
       STA    $E9     
LF99E: JMP    LF9B1   
LF9A1: LDA    $BF,X   
       CMP    $C1     
       BEQ    LF9AB   
       BCC    LF9AB   
       LDA    $C1     
LF9AB: CMP    $E9     
       BEQ    LF9EC   
       BCC    LF9EC   
LF9B1: LDA    $C0,X   
       CMP    $E9     
       BCC    LF9CB   
       BCS    LF9DA   
LF9B9: LDA    $BF,X   
       CMP    $C0     
       BCS    LF9C1   
       LDA    $C0     
LF9C1: CMP    $E9     
       BCS    LF9EC   
       LDA    $E9     
       CMP    $C0,X   
       BCS    LF9DA   
LF9CB: LDA    $E9     
       STA    $C0,X   
       TXA            
       BNE    LF9DA   
       LDA    $D4     
       STA    $E0     
       LDA    $D8     
       STA    $E1     
LF9DA: TXA            
       BEQ    LF9E0   
       JMP    LF6DD   
LF9E0: LDA    $80     
       AND    #$BF    
       STA    $80     
       INX            
       STX    $DE     
       JMP    LF5D5   
LF9EC: LDX    $D0     
       LDA    $E9     
       STA    $C0,X   
       JMP    LF8C6   
LF9F5: LDX    $E0     
       STX    $D4     
       LDA    $E1     
       STA    $D8     
       LDA    $80,X   
       AND    #$07    
       STA    $D6     
       JSR    LFB91   
       ASL    $B4     
       SEC            
       ROR    $B4     
       LDA    $80,X   
       AND    #$0F    
       LDX    $D6     
       CPX    #$06    
       BNE    LFA21   
       LDX    $D8     
       CPX    #$08    
       BCC    LFA21   
       CPX    #$0C    
       BCS    LFA21   
       LDA    #$0E    
LFA21: STA    $D7     
       LDY    $D9     
       BEQ    LFA30   
       LDA    $D1     
       BNE    LFA30   
       STY    $D1     
       JMP    LF582   
LFA30: INC    $E4     
       LDX    #$1F    
       STX    $D0     
       STX    AUDC0   
       LDY    $D4     
       LDX    #$00    
       LDA    $C0     
       CMP    #$03    
       BCC    LFA4B   
       INX            
       CMP    #$FD    
       BCS    LFA4D   
       INX            
       INX            
       BNE    LFA4D   
LFA4B: STY    $D5     
LFA4D: STX    $EE     
       STY    $D8     
       JSR    LF13E   
       JSR    LF524   
       LDA    #$80    
       STA    $F3     
       STA    $E7     
       JSR    LFD91   
       JSR    LF3B9   
       JMP    LF00F   
LFA66: LDX    $D4     
LFA68: DEX            
       BMI    LFAC8   
       LDA    $80,X   
       AND    #$0F    
       BEQ    LFA68   
       LDY    $E3     
       BPL    LFA77   
       EOR    #$08    
LFA77: CMP    #$07    
       BCS    LFA68   
       STX    $D4     
       STA    $D6     
       TAY            
       LDA    LFFEE,Y 
       CPY    #$06    
       BNE    LFA8D   
       BIT    $E3     
       BPL    LFA8D   
       ADC    #$00    
LFA8D: STA    $D8     
       LDA    $B7     
       STA    $D5     
       BMI    LFACA   
LFA95: LDA    $D6     
       CMP    #$06    
       BEQ    LFAD2   
LFA9B: DEC    $D8     
LFA9D: BMI    LFA66   
LFA9F: JSR    LFB91   
       BMI    LFACB   
       LDA    $B4     
       ASL            
       LDY    $D6     
       LDA    $80,X   
       AND    #$0F    
       STA    $D7     
       BNE    LFAB9   
       BCS    LFACA   
       CPY    #$06    
       BNE    LFA9B   
       BEQ    LFB19   
LFAB9: EOR    $E3     
       AND    #$08    
       BEQ    LFACB   
       BCS    LFACB   
       CPY    #$06    
       BNE    LFACA   
       JMP    LFB75   
LFAC8: STX    $D4     
LFACA: RTS            

LFACB: JSR    LFD4D   
       BCC    LFA9B   
       BCS    LFB19   
LFAD2: LDA    $D4     
       LSR            
       LSR            
       LSR            
       LDX    $E3     
       BPL    LFADD   
       EOR    #$07    
LFADD: STA    $EC     
       LDA    $D8     
       CMP    #$0E    
       BCC    LFAE9   
       SBC    #$0C    
       STA    $D8     
LFAE9: LDA    #$80    
       STA    $EB     
       EOR    $B7     
       AND    $E3     
       BMI    LFAF5   
       LDA    $E5     
LFAF5: LDX    $D0     
       BEQ    LFB15   
       LDA    $EE,X   
       CMP    #$02    
       BCS    LFB19   
       LDA    $8C,X   
       AND    #$70    
       CMP    #$60    
       BNE    LFB19   
       LDA    $A6,X   
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $EB     
       LDA    $7F,X   
       AND    #$30    
       ORA    $EB     
LFB15: EOR    #$18    
       STA    $EB     
LFB19: DEC    $D8     
       DEC    $D8     
       BPL    LFB22   
       JMP    LFA9D   
LFB22: LDA    $D8     
       LSR            
       TAX            
       DEX            
       BMI    LFB85   
       BEQ    LFB5D   
       DEX            
       DEX            
       DEX            
       BMI    LFB54   
       LDA    $B7     
       EOR    $B4     
       BMI    LFB19   
       LDA    $EB     
       BMI    LFB19   
       BIT    $B8     
       BMI    LFB19   
       LDA    $EC     
       CMP    #$04    
       BNE    LFB19   
       JSR    LFB91   
       CPX    $EB     
       BNE    LFB19   
       LDA    $E3     
       AND    #$08    
       EOR    #$0E    
       STA    $D7     
       RTS            

LFB54: LDA    $B7     
       EOR    $B4     
       BMI    LFB19   
       JMP    LFA9F   
LFB5D: LDA    $EC     
       CMP    #$05    
       ROR            
       EOR    $B4     
       ORA    $B7     
       BPL    LFB19   
LFB68: JSR    LFB91   
       BMI    LFB19   
       LDA    $80,X   
       AND    #$0F    
       STA    $D7     
       BNE    LFB8E   
LFB75: LDA    $B7     
       BMI    LFB84   
       LDA    #$06    
       CMP    $EC     
       BNE    LFB84   
       ASL            
       ADC    $D8     
       STA    $D8     
LFB84: RTS            

LFB85: LDX    $EC     
       DEX            
       BNE    LFB8E   
       BIT    $B4     
       BMI    LFB68   
LFB8E: JMP    LFA66   
LFB91: LDX    $D6     
       LDA    LFFE8,X 
       CLC            
       ADC    $D8     
       TAY            
       LDA    $D4     
       AND    #$38    
       ADC    $D4     
       SED            
       ADC    LFF82,Y 
       CLD            
       TAX            
       BMI    LFBB3   
       STA    $D5     
       AND    #$0F    
       TAX            
       ADC    $D5     
       CPX    #$08    
       ROR            
       TAX            
LFBB3: STX    $D5     
       RTS            

LFBB6: LDX    $E4     
       CPX    #$08    
       LDA    $D6     
       PHP            
       BCC    LFBC1   
       ADC    #$07    
LFBC1: TAY            
       LDA    $D3     
       AND    #$1B    
       BIT    $E2     
       BPL    LFBCE   
       AND    #$09    
       ADC    #$09    
LFBCE: ADC    #$12    
       TAX            
       LDA    $D5     
       JSR    LFE9C   
       STA    $F4     
       LDA    $D4     
       JSR    LFE9C   
       SEC            
       SBC    $F4     
       STA    $F7     
       LDX    LFEE3,Y 
       BNE    LFBEB   
LFBE7: TXA            
       JMP    LFBF9   
LFBEB: BPL    LFBF6   
       BIT    $E2     
       BMI    LFBE7   
       LDX    #$05    
LFBF3: CLC            
       ADC    $F7     
LFBF6: DEX            
       BNE    LFBF3   
LFBF9: PLP            
       BCC    LFC12   
       LDX    $D3     
       CPX    #$40    
       BCC    LFC08   
       LDX    $D7     
       BEQ    LFC08   
       SBC    #$32    
LFC08: CPY    #$0E    
       BNE    LFC11   
       LDY    $CB     
       SBC    LFEF2,Y 
LFC11: SEC            
LFC12: STA    $F8     
       LDX    $D4     
       BCS    LFC3F   
       CPX    #$0D    
       BCS    LFC3F   
       LDA    LFEC6,X 
       BIT    $B9     
       BPL    LFC27   
       LSR            
       LSR            
       LSR            
       LSR            
LFC27: AND    #$0F    
       BIT    $D3     
       LDY    $D5     
       CPY    #$1A    
       BCC    LFC3D   
       BEQ    LFC34   
       CLV            
LFC34: LDY    $E4     
       BNE    LFC3D   
       BVC    LFC3C   
       ADC    #$10    
LFC3C: ASL            
LFC3D: ADC    $F8     
LFC3F: LDY    $D6     
       CPY    #$06    
       BNE    LFC65   
       CPX    #$10    
       BCS    LFC65   
       CPX    #$0D    
       BCC    LFC65   
       PHA            
       LDX    #$03    
LFC50: LDA    $84,X   
       AND    #$0F    
       BNE    LFC5A   
       DEX            
       TXA            
       BPL    LFC50   
LFC5A: CMP    #$02    
       PLA            
       BIT    $82     
       BVC    LFC63   
       BCS    LFC65   
LFC63: SBC    #$0B    
LFC65: LDX    $D5     
LFC67: STX    $F2     
       STA    $F8     
       LDA    #$0F    
       STA    $F6     
       LDA    $D6     
       CMP    #$05    
       BNE    LFC9F   
       TXA            
       AND    #$07    
       TAX            
       EOR    $F2     
       CMP    #$30    
       BNE    LFC82   
       LSR            
       STA    $F6     
LFC82: TXA            
       CLC            
       ADC    #$08    
       TAX            
       CPX    #$38    
       BCS    LFCD8   
       LDA    $80,X   
       AND    #$0F    
       CPX    $F2     
       EOR    #$0E    
       BNE    LFC99   
       DEC    $F6     
       DEC    $F6     
LFC99: EOR    #$08    
       BNE    LFC82   
       BCC    LFCC7   
LFC9F: BCC    LFD1D   
LFCA1: LDY    #$03    
LFCA3: DEY            
       BMI    LFCA1   
       TXA            
       CLC            
       ADC    LFED2,Y 
       TAX            
       AND    #$07    
       EOR    LFEFB,Y 
       BEQ    LFCA3   
       TXA            
       ORA    $F2     
       CPX    #$40    
       BCS    LFCC2   
       LDA    $80,X   
       AND    #$0F    
       EOR    #$0E    
       BNE    LFCA3   
LFCC2: DEC    $F6     
       TAY            
       BNE    LFCC9   
LFCC7: STA    $F6     
LFCC9: LDX    $E4     
       CPX    #$04    
       BCS    LFCD2   
       LDA    $D7     
       ASL            
LFCD2: LDY    $D6     
       CPY    #$06    
       BEQ    LFD2B   
LFCD8: LDY    #$03    
LFCDA: LDX    $F2     
       CPX    $D4     
       BNE    LFCE6   
       CPY    #$02    
       BCC    LFCE6   
       LDX    $D5     
LFCE6: TXA            
       CLC            
       ADC    LFF7E,Y 
       TAX            
       EOR    $F2     
       CMP    #$08    
       BCC    LFCF6   
       AND    #$C7    
       BNE    LFD09   
LFCF6: CPX    $D4     
       BEQ    LFCE6   
       LDA    $80,X   
       AND    #$0F    
       BEQ    LFCE6   
       TAX            
       TYA            
       LSR            
       EOR    #$05    
       CPX    #$05    
       BEQ    LFD0D   
LFD09: DEY            
       TYA            
       BPL    LFCDA   
LFD0D: SEC            
       ADC    $F6     
       LDX    $D4     
       EOR    #$FF    
       CPX    $F2     
       BEQ    LFD2C   
       EOR    #$FF    
       JMP    LFC67   
LFD1D: LSR            
       BNE    LFD28   
       DEX            
       DEX            
       LDY    #$14    
       CPX    $D4     
       BEQ    LFD2A   
LFD28: LDY    #$00    
LFD2A: TYA            
LFD2B: CLC            
LFD2C: ADC    $F8     
       EOR    #$80    
       STA    $F0     
       RTS            

LFD33: LDY    $D4     
       LDX    $D5     
LFD37: LDA.wy $0080,Y 
       AND    #$0F    
       STA    $E9     
       EOR.wy $0080,Y 
       STA.wy $0080,Y 
LFD44: LDA    $80,X   
       AND    #$F0    
       ORA    $E9     
       STA    $80,X   
       RTS            

LFD4D: LDX    $D6     
       SEC            
       DEX            
       BEQ    LFD63   
       DEX            
       DEX            
       DEX            
       BMI    LFD5D   
       DEX            
       BMI    LFD63   
       BNE    LFD64   
LFD5D: LDA    $D8     
       AND    #$F8    
       STA    $D8     
LFD63: CLC            
LFD64: RTS            

LFD65: LDA    LFED5,Y 
       CLC            
       LDY    $D7     
       ADC    LFED5,Y 
       TAY            
       LDA    $DA     
       BEQ    LFD81   
       EOR    $E3     
       BPL    LFD81   
       TYA            
       CLC            
       ADC    $DA     
       BEQ    LFD90   
       EOR    $E3     
       BPL    LFD90   
LFD81: LDA    $E3     
       ASL            
       TYA            
       BCS    LFD8B   
       EOR    #$FF    
       ADC    #$01    
LFD8B: EOR    #$80    
       CMP    #$7B    
       ROR            
LFD90: RTS            

LFD91: JSR    LFD33   
       LDX    #$3F    
       LDA    #$04    
       STA    $CA     
       STA    $CC     
LFD9C: LDA    $80,X   
       AND    #$CF    
       STA    $80,X   
       AND    #$0F    
       CMP    #$08    
       AND    #$07    
       TAY            
       LDA    LFEDD,Y 
       BCC    LFDB6   
       CLC            
       ADC    $CA     
       STA    $CA     
       JMP    LFDBC   
LFDB6: ADC    $CC     
       BCS    LFDBC   
       STA    $CC     
LFDBC: DEX            
       BPL    LFD9C   
       STX    $F7     
       LDA    $D6     
       AND    #$07    
       CMP    #$06    
       BNE    LFDD6   
       LDX    $D4     
       TXA            
       SBC    $D5     
       CMP    #$F0    
       BEQ    LFDD8   
       CMP    #$10    
       BEQ    LFDD8   
LFDD6: LDX    #$80    
LFDD8: STX    $E5     
       LDY    #$03    
       ROL    $B4     
       SEC            
       ROR    $B4     
       ROL    $B7     
       SEC            
       ROR    $B7     
LFDE6: STY    $C1     
       LDA    #$BF    
       AND.wy $0088,Y 
       STA.wy $0088,Y 
       LDX    LFF76,Y 
       LDA    $80,X   
       AND    #$0F    
       STA    $CD     
       EOR    $80,X   
       STA    $80,X   
       LDX    LFF7A,Y 
       STX    $C0     
       TYA            
       LSR            
       BCS    LFE07   
       DEX            
LFE07: ASL            
       ADC    #$FF    
       STA    $E3     
       LDA    $80,X   
       ORA    $81,X   
       ORA    $82,X   
       AND    #$0F    
       BNE    LFE35   
       LDX    #$FE    
       STX    $D8     
       STX    $D6     
       LDA    #$40    
       STA    $D4     
LFE20: JSR    LFA95   
       LDX    $D4     
       BMI    LFE3D   
       LDX    $C0     
       LDY    #$02    
LFE2B: CPX    $D5     
       BEQ    LFE35   
       INX            
       DEY            
       BPL    LFE2B   
       BMI    LFE20   
LFE35: LDX    $C1     
       LDA    $88,X   
       ORA    #$40    
       STA    $88,X   
LFE3D: LDY    $C1     
       LDX    LFF76,Y 
       JSR    LFE66   
       DEY            
       BPL    LFDE6   
       JSR    LF1DC   
LFE4B: LDX    #$05    
LFE4D: LDA    LFEFA,X 
       CMP    $D4     
       BEQ    LFE58   
       CMP    $D5     
       BNE    LFE5E   
LFE58: LDA    #$40    
       ORA    $82,X   
       STA    $82,X   
LFE5E: DEX            
       BPL    LFE4D   
       RTS            

LFE62: LDA    #$00    
LFE64: STA    $CD     
LFE66: LDA    $80,X   
       AND    #$F0    
       ORA    $CD     
       STA    $80,X   
       RTS            

LFE6F: LDA    #$09    
LFE71: STA    $CC     
       LDX    $D4     
       EOR    $80,X   
       LDX    $D5     
       AND    #$0F    
       BEQ    LFE9B   
LFE7D: LDA    #$FF    
       STA    $CD     
       BIT    $CD     
       LDX    #$3F    
LFE85: LDA    $80,X   
       AND    #$0F    
       BEQ    LFE96   
       CMP    $CC     
       BNE    LFE93   
       STX    $CD     
       BEQ    LFE96   
LFE93: BCC    LFE96   
       CLV            
LFE96: DEX            
       BPL    LFE85   
       LDX    $CD     
LFE9B: RTS            

LFE9C: STA    $CC     
       AND    #$07    
       STA    $CB     
       EOR    $CC     
       STA    $CC     
       TXA            
       AND    #$07    
       SEC            
       SBC    $CB     
       BPL    LFEB2   
       EOR    #$FF    
       ADC    #$01    
LFEB2: STA    $CD     
       TXA            
       AND    #$38    
       SEC            
       SBC    $CC     
       BPL    LFEC0   
       EOR    #$FF    
       ADC    #$01    
LFEC0: LSR            
       LSR            
       LSR            
       ADC    $CD     
       RTS            

LFEC6: .byte $00,$5E,$85,$00,$00,$75,$E4,$00,$44,$33,$65,$FD
LFED2: .byte $FF,$02,$07
LFED5: .byte $00,$BE,$E5,$F7,$F7,$F1,$FD,$00
LFEDD: .byte $00,$42,$1B,$09,$09,$0F
LFEE3: .byte $03,$F8,$00,$02,$04,$F0
LFEE9: .byte $01,$00,$00,$FF,$02,$03,$04,$00,$03
LFEF2: .byte $05,$04,$03,$02,$01,$03,$04,$05
LFEFA: .byte $04
LFEFB: .byte $3C,$00,$07,$38,$3F,$00,$00,$00,$00,$00,$00,$00,$00,$FE,$FE,$D6
       .byte $92,$38,$10,$00,$00,$FE,$38,$38,$FE,$6C,$AA,$00,$00,$7C,$38,$38
       .byte $7C,$38,$10,$00,$00,$F8,$70,$6C,$7E,$74,$38,$00,$00,$7C,$7C,$7C
       .byte $7C,$54,$54,$00,$00,$38,$10,$38,$10,$00,$00,$00,$00,$10,$38,$92
       .byte $D6,$FE,$FE,$00,$00,$C6,$6C,$38,$6C,$C6,$00,$30,$30,$30,$30,$30
       .byte $FC,$C0,$FC,$0C,$FC,$FC,$0C,$3C,$0C,$FC,$0C,$0C,$FC,$CC,$CC,$FC
       .byte $0C,$FC,$C0,$FC,$FC,$CC,$FC,$C0,$FC,$30,$30,$18,$0C,$FC,$FC,$CC
       .byte $FC,$CC,$FC
LFF6E: .byte $06,$08,$0E,$00,$82,$84,$8E,$26
LFF76: .byte $04,$04,$3C,$3C
LFF7A: .byte $02,$04,$3A,$3C
LFF7E: .byte $F8,$08,$FF,$01
LFF82: .byte $09,$10,$99,$11,$91,$01,$90,$89,$02,$98,$92,$93,$94,$95,$96,$97
       .byte $98,$99,$08,$07,$06,$05,$04,$03,$02,$01,$80,$70,$60,$50,$40,$30
       .byte $20,$10,$20,$30,$40,$50,$60,$70,$80,$90,$28,$37,$46,$55,$64,$73
       .byte $82,$91,$12,$23,$34,$45,$56,$67,$78,$89,$88,$77,$66,$55,$44,$33
       .byte $22,$11,$72,$63,$54,$45,$36,$27,$18,$09,$12,$21,$08,$19,$88,$79
       .byte $81,$92,$20,$80,$10,$90,$09,$91,$11,$89,$09,$91,$11,$89,$00,$00
       .byte $10,$90,$09,$91,$11,$89
LFFE8: .byte $FF,$00,$0A,$2A,$4A,$0A
LFFEE: .byte $52,$08,$40,$20,$08,$20,$0C
LFFF5: .byte $02,$12,$13,$23,$24,$34,$56,$00,$F0,$00,$F0
