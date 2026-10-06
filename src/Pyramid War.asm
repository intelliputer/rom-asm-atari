; Disassembly of roms/Pyramid War.bin
; Disassembled Tue Oct  6 15:22:41 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Pyramid War.bin
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
REFP0   =  $0B
REFP1   =  $0C
PF0     =  $0D
PF1     =  $0E
PF2     =  $0F
RESP0   =  $10
RESP1   =  $11
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
ENABL   =  $1F
HMP0    =  $20
HMP1    =  $21
HMBL    =  $24
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296
LFDEA   =   $FDEA

       ORG $F000

START:
       SEI            
       CLD            
       LDX    #$00    
       TXA            
LF005: STA    VSYNC,X 
       TXS            
       INX            
       BNE    LF005   
       LDY    #$FF    
       STY    $F2     
       STY    $F3     
       JMP    LF3EF   
LF014: STA    $D0     
       TAY            
       INY            
       TYA            
       AND    #$0F    
       STA    $CF     
       TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       CLC            
       ADC    $CF     
       CMP    #$0F    
       BCC    LF02D   
       SBC    #$0F    
       INY            
LF02D: EOR    #$07    
       RTS            

LF030: LDA    #$05    
       CMP    $A1,X   
       BCS    LF091   
       LDY    #$1F    
       STY    $9D,X   
       STY    $9B     
       LDY    LFEF0,X 
       LDA    LFEF4,X 
       EOR    #$FF    
       AND.wy $0085,Y 
       STA.wy $0085,Y 
       LDA    $A1,X   
       LSR            
       LSR            
       EOR    #$03    
       LDY    #$00    
       STA    $A1,X   
       LDX    $EB     
       DEC    $E2,X   
       BNE    LF06C   
       STY    $A5     
       LDY    $E8,X   
       CPY    #$0A    
       BCS    LF064   
       INC    $E8,X   
LF064: LDY    #$BF    
       STY    $E1     
       LDY    #$0C    
       STY    $E2,X   
LF06C: SED            
       CLC            
       ADC    $EE,X   
       STA    $EE,X   
       BCC    LF090   
       LDA    $E4,X   
       EOR    #$07    
       BEQ    LF07C   
       INC    $E4,X   
LF07C: LDA    #$00    
       ADC    $EC,X   
       BCC    LF08E   
       STA    $E4,X   
       LDA    #$BF    
       STA    $E1     
       LDA    #$99    
       STA    $F0,X   
       STA    $EE,X   
LF08E: STA    $EC,X   
LF090: CLD            
LF091: RTS            

LF092: CPX    $82     
       BNE    LF0C8   
       LDA    $DF     
       STA    $82     
       LDA    #$02    
LF09C: STA    WSYNC   
       STA    HMOVE   
       STA    ENAM0   
       LDY    $CF     
       STY    GRP0    
       TXA            
       SBC    $C8     
       TAY            
       CPY    #$0A    
       BCS    LF0CD   
       LDA    ($C9),Y 
       STA    $CF     
LF0B2: TXA            
       SBC    $D2     
       CMP    #$0A    
       BCS    LF0D4   
       TAY            
       LDA    ($CB),Y 
       STA    GRP1    
LF0BE: DEX            
       CPX    $C1     
       BNE    LF092   
       JSR    LF2A5   
       BCC    LF092   
LF0C8: SEC            
       LDA    #$00    
       BEQ    LF09C   
LF0CD: TXA            
       CLC            
       BNE    LF0B2   
       JMP    LF9C0   
LF0D4: BMI    LF0E4   
       TAY            
       BCS    LF0BE   
LF0D9: SEC            
       LDA    #$00    
       BEQ    LF0F6   
LF0DE: STA    HMCLR   
       STA    CXCLR   
       LDX    #$6F    
LF0E4: DEX            
       CPX    $C1     
       BNE    LF0EC   
       JSR    LF2A3   
LF0EC: CPX    $82     
       BNE    LF0D9   
       LDA    $DF     
       STA    $82     
       LDA    #$02    
LF0F6: STA    WSYNC   
       STA    HMOVE   
       STA    ENAM0   
       LDY    $CF     
       STY    GRP0    
       TXA            
       SBC    $C8     
       CMP    #$0A    
       TAY            
       BCS    LF10C   
       LDA    ($C9),Y 
       STA    $CF     
LF10C: SEC            
       TXA            
       SBC    $C1     
       CMP    #$03    
       BCC    LF0E4   
       DEY            
       STY    $D1     
       LDY    $D5     
       LDA.wy $008D,Y 
       LDY    #$00    
       DEX            
       CPX    $82     
       BNE    LF129   
       LDY    $DF     
       STY    $82     
       LDY    #$02    
LF129: SEC            
       STA    WSYNC   
       STA    HMOVE   
       STY    ENAM0   
       DEX            
       LDY    $CF     
       STY    GRP0    
       ORA    $9C     
       BMI    LF15A   
       BEQ    LF154   
LF13B: SBC    #$01    
       BNE    LF13B   
       STA    RESP1   
LF141: STA    HMP1    
       CPX    $82     
       BNE    LF14D   
       LDA    $DF     
       STA    $82     
       LDA    #$02    
LF14D: LDY    $D1     
       CPY    #$0A    
       JMP    LF172   
LF154: LDA    #$60    
       STA    RESP1   
       BNE    LF141   
LF15A: TAY            
LF15B: DEY            
       BMI    LF15B   
       LDA    $9C     
       STA    HMP1    
       CPX    $82     
       BNE    LF17C   
       LDA    $DF     
       STA    $82     
       LDA    #$02    
LF16C: LDY    $D1     
       CPY    #$0A    
       STA    RESP1   
LF172: STA    WSYNC   
       STA    HMOVE   
       STA    ENAM0   
       BCC    LF181   
       LDA    $9C     
LF17C: BEQ    LF183   
       SEC            
       BCS    LF16C   
LF181: LDA    ($C9),Y 
LF183: STA    GRP0    
       DEY            
       STY    $D1     
       LDA    $D5     
       BIT    RSYNC   
       BMI    LF1B4   
       STA.w  $0090   
LF191: JSR    LF270   
       LDY    $D5     
       LDA.wy $00A1,Y 
       STA    $CB     
       LDA.wy $009D,Y 
       STA    HMP1    
       JSR    LF26E   
       LDY    $D5     
       BEQ    LF1B6   
       LDA.wy $0095,Y 
       NOP            
       JSR    LF26A   
       LDA    $9C     
       STA    ENABL   
       BEQ    LF1C3   
LF1B4: BMI    LF191   
LF1B6: LDA    #$FD    
       STA    $D2     
       JSR    LF26A   
       LDA    VSYNC   
       STA    $8D     
       LDA    $95     
LF1C3: STA    NUSIZ1  
       DEC    $D5     
       JSR    LF26E   
       LDY    $CB     
       LDA    LFEE4,Y 
       EOR    $F5     
       AND    $F4     
       STA.w  $0007   
       JSR    LF26E   
       LDY    $CB     
       LDA    LFE80,Y 
       STA    REFP1   
       LDA    LFF0E,Y 
       STA    $CB     
       JSR    LF26E   
       LDY    $D1     
       CPY    #$0A    
       LDA    #$00    
       BCS    LF1F2   
       LDA    ($C9),Y 
LF1F2: STA    $CF     
       LDY    #$80    
       JMP    LF0BE   
LF1F9: LDY    #$F0    
       LDX    $A5     
       BEQ    LF231   
       DEC    $A5     
       LDA    $C6     
       LDY    $9A     
       DEY            
       CLC            
       BPL    LF20C   
       ADC    $A6     
       SEC            
LF20C: STA    $D0     
       LDA    #$FE    
       LDX    #$02    
       BIT    $A5     
       BPL    LF21D   
       LDA    $A7     
       BCC    LF21C   
       LDA    #$00    
LF21C: TAX            
LF21D: CLC            
       ADC    $DF     
       TAY            
       TXA            
       CLC            
       ADC    $DE     
       CPY    #$6F    
       BCC    LF22B   
       LDY    #$F0    
LF22B: STA    $82     
       CMP    #$6F    
       BCC    LF235   
LF231: LDA    #$F0    
       STY    $82     
LF235: STA    $DE     
       STY    $DF     
       AND    $DF     
       BMI    LF247   
       LDA    $D0     
       CMP    #$07    
       BCC    LF247   
       CMP    #$A0    
       BCC    LF24F   
LF247: LDA    #$00    
       STA    $A5     
       LDY    #$F0    
       STY    $82     
LF24F: STA    $C6     
       LDX    #$02    
LF253: JSR    LF014   
       STA    WSYNC   
       STA    HMCLR   
       ASL            
       ASL            
       ASL            
       ASL            
       STA    HMP0,X  
LF260: DEY            
       BPL    LF260   
       STA    RESP0,X 
LF265: STA    WSYNC   
       STA    HMOVE   
       RTS            

LF26A: STA    $D2     
       STA    HMCLR   
LF26E: LDY    $D1     
LF270: DEX            
       CPY    #$0A    
       BCC    LF279   
       LDA    $9C     
       BEQ    LF27B   
LF279: LDA    ($C9),Y 
LF27B: CPX    $C1     
       BEQ    LF298   
LF27F: DEY            
       STY    $D1     
       CPX    $82     
       BNE    LF293   
       LDY    $DF     
       STY    $82     
       LDY    #$02    
LF28C: STA    HMOVE   
       STY    ENAM0   
       STA    GRP0    
       RTS            

LF293: SEC            
       LDY    #$00    
       BEQ    LF28C   
LF298: JSR    LF2A1   
       LDY    $D1     
       DEY            
       DEY            
       BCC    LF27F   
LF2A1: STA    $CF     
LF2A3: LDY    #$80    
LF2A5: STA    WSYNC   
       STA    HMOVE   
       LDA    $B1     
       STA    PF0     
       STA    ENAM0   
       LDA    $CF     
       STA    GRP0    
       LDA    $B4     
       STA    PF1     
       LDA    $B7     
       STA    PF2     
       LDA    $BA     
       STA    PF0     
       DEX            
       DEX            
       LDA    $BD     
       STA    PF1     
       LDA    $C0     
       STA    PF2     
       DEY            
       CPY    #$0A    
       BCS    LF30B   
       LDA    ($CB),Y 
       STA    GRP1    
LF2D2: DEY            
       STA    HMCLR   
       LDA    $CD     
       CPY    #$0A    
       STA    HMOVE   
       STA    GRP0    
       LDA    $BA     
       STA    ENAM0   
       LDA    #$00    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       BCC    LF2EF   
       LDA    $9C     
       BCS    LF2F1   
LF2EF: LDA    ($CB),Y 
LF2F1: STA    GRP1    
       CLC            
       LDA    $CE     
       STA    $CF     
       RTS            

LF2F9: LDY    LFEF0,X 
       LDA.wy $0085,Y 
       AND    LFEF4,X 
       CMP    #$08    
       BCC    LF309   
       LSR            
       LSR            
       LSR            
LF309: TAY            
       RTS            

LF30B: NOP            
       BCS    LF2D2   
LF30E: TYA            
LF30F: AND    #$02    
       ASL            
       STA    $E9     
       LDX    #$08    
       LDY    #$00    
LF318: STA    $E0,X   
       STY    $E9,X   
       DEY            
       STY    $82,X   
       INY            
       LDA    LFEC9,X 
       DEX            
       BNE    LF318   
       LDY    #$41    
LF328: STY    $CF     
       LDX    #$17    
       LDY    #$00    
LF32E: LDA    LFEF6,X 
       STA    $B1,X   
       STY    $9B,X   
       DEX            
       BNE    LF32E   
       LDX    $EB     
       LDA    $E2,X   
       STA    $D0     
       LDX    #$04    
       STX    $A1     
       LDA    $F2     
       STA    $E7     
       LDA    $80     
       STA    $E6     
LF34A: LDA    $F2     
       AND    #$87    
       EOR    $84,X   
       ORA    $CF     
       DEC    $D0     
       BPL    LF358   
       AND    #$78    
LF358: STA    $84,X   
       LDA    $F3     
       ORA    #$09    
       DEC    $D0     
       BPL    LF364   
       LDA    #$00    
LF364: DEC    $D0     
       BPL    LF36A   
       AND    #$78    
LF36A: STA    $88,X   
       JSR    LFD6C   
       BNE    LF34A   
       RTS            

LF372: LDA    $80     
       ORA    $E1     
       BNE    LF395   
       LDA    $F2     
       AND    #$03    
       TAX            
       EOR    #$02    
       BEQ    LF395   
       LDA    $85,X   
       AND    #$07    
       ORA    $89,X   
       AND    #$3F    
       BEQ    LF395   
       LDA    $F3     
       AND    #$03    
       TAY            
       BEQ    LF395   
       JSR    LFF6E   
LF395: LDY    INTIM   
       BNE    LF395   
       STY    $F5     
       DEY            
       STA    WSYNC   
       STY    VSYNC   
       SEC            
       INC    $80     
       BNE    LF3AC   
       INC    $EA     
       BNE    LF3AC   
       ROR    $EA     
LF3AC: TYA            
       EOR    SWCHB   
       AND    #$08    
       ASL            
       SBC    #$00    
       LDY    $EA     
       BPL    LF3BD   
       STY    $F5     
       AND    #$F7    
LF3BD: STA    $F4     
       ASL    $F5     
       LDX    #$04    
LF3C3: LDA    $F5     
       EOR    LFEE0,X 
       AND    $F4     
       STA    $F5,X   
       STA    NUSIZ1,X
       DEX            
       STX    COLUPF  
       BNE    LF3C3   
       LDA    SWCHB   
       LDY    #$50    
       LSR            
       STA    WSYNC   
       STX    VSYNC   
       STY    TIM64T  
       LDY    $E0     
       ROR            
       BMI    LF3E9   
       JSR    LF30E   
       SEC            
LF3E9: BCS    LF406   
       DEC    $81     
       BPL    LF408   
LF3EF: INY            
       TYA            
       AND    #$03    
       STA    $E0     
       JSR    LF30F   
       STX    $E4     
       STX    $C2     
       DEX            
       STX    $A9     
       LDX    $E0     
       INX            
       STX    $F0     
       LDX    #$1D    
LF406: STX    $81     
LF408: LDA    $E1     
       CMP    #$5E    
       BNE    LF42F   
       LDA    $E0     
       LSR            
       BCC    LF474   
       LDX    #$03    
LF415: LDA    $85,X   
       ASL            
       ASL            
       LDY    #$02    
LF41B: ASL            
       ROL    $83     
       ROL    $84     
       DEY            
       BPL    LF41B   
       LDA    $84     
       LSR            
       AND    #$38    
       JSR    LFF96   
       DEX            
       BPL    LF415   
       TXA            
LF42F: LDX    $EB     
       LDY    #$79    
       EOR    #$80    
       BEQ    LF467   
       EOR    #$40    
       BEQ    LF441   
       LDY    #$41    
       EOR    #$9F    
       BNE    LF474   
LF441: LDA    $E4,X   
       STA    $CF     
       TXA            
       EOR    #$01    
       AND    $E0     
       STA    $EB     
       TAX            
       LDA    $E4,X   
       BEQ    LF457   
       LDA    #$01    
       DEC    $E4,X   
       BNE    LF46B   
LF457: LDA    $CF     
       BNE    LF441   
       LDY    #$80    
       STY    $C8     
       LDY    $A9     
       BNE    LF470   
       DEC    $A9     
       BNE    LF470   
LF467: LDA    $F0,X   
       BNE    LF441   
LF46B: PHA            
       JSR    LF328   
       PLA            
LF470: ORA    #$5E    
       STA    $E1     
LF474: LDY    #$08    
       LDA    $9B     
       BEQ    LF47E   
       DEC    $9B     
       BPL    LF4BD   
LF47E: LDX    $E1     
       BMI    LF49C   
       BNE    LF4DA   
       BIT    $EA     
       BMI    LF4DA   
       LDA    $80     
       AND    #$07    
       CLC            
       BIT    $D4     
       BMI    LF493   
       BVC    LF495   
LF493: ORA    #$04    
LF495: ADC    #$1A    
       TAX            
       LDA    #$02    
       BPL    LF4DA   
LF49C: TXA            
       LSR            
       LSR            
       TAX            
       AND    #$03    
       BEQ    LF4B7   
       TAY            
       TXA            
       LSR            
       LSR            
       AND    #$03    
       TAX            
       JSR    LFF6E   
       BEQ    LF4B7   
       LDX    $EB     
       LDA    $E8,X   
       JSR    LF06C   
LF4B7: LDA    $E1     
       AND    #$BF    
       LDY    #$0F    
LF4BD: PHA            
       LSR            
       LSR            
       TAX            
       AND    #$07    
       STA    $CF     
       PLA            
       CPY    #$0C    
       BCC    LF4D0   
       AND    #$03    
       ORA    #$04    
       BCS    LF4DA   
LF4D0: PHA            
       AND    #$01    
       EOR    #$19    
       SBC    $CF     
       TAX            
       PLA            
       LSR            
LF4DA: STA    AUDV1   
       STY    AUDC1   
       STX    AUDF1   
       LDA    $AD     
       AND    #$F8    
       BNE    LF529   
       LDX    $EB     
       LDY    REFP1,X 
       BMI    LF525   
       STA    $EA     
       LDA    $E1     
       BNE    LF525   
       LDY    $C2     
       SEC            
       LDA    $C7     
       ADC    LFE8C,Y 
       BPL    LF4FD   
       TXA            
LF4FD: LSR            
       LSR            
       STA    $AC     
       LDA    LFDF7,X 
       LDX    #$11    
       STX    $AD     
       AND    SWCHB   
       BEQ    LF513   
       ASL    $AD     
       DEC    $AD     
       INY            
       INY            
LF513: STY    $99     
       LDA    #$00    
LF517: STA    $AF,X   
       DEX            
       DEX            
       DEX            
       BPL    LF517   
       LDA    $C8     
       CLC            
       ADC    #$03    
       STA    $C1     
LF525: LDA    $AD     
       BEQ    LF59B   
LF529: BIT    $CA     
       LDA    $99     
       LSR            
       BCS    LF531   
       CLV            
LF531: LDX    #$02    
       LDY    #$03    
       JSR    LFD82   
       LDY    $AC     
       DEC    $AD     
       CPY    #$20    
       LDA    $C0     
       BCS    LF589   
       CPY    #$08    
       BCS    LF54D   
       LDA    $B4     
       ORA    LFF39,Y 
       STA    $B4     
LF54D: CPY    #$05    
       BCC    LF57C   
       CPY    #$10    
       BCS    LF55C   
       LDA    $B7     
       ORA    LFF27,Y 
       STA    $B7     
LF55C: CPY    #$0D    
       BCC    LF57C   
       CPY    #$14    
       BCS    LF56D   
       LDA    LFF23,Y 
       AND    #$F0    
       ORA    $BA     
       STA    $BA     
LF56D: CPY    #$11    
       BCC    LF57C   
       CPY    #$1C    
       BCS    LF57C   
       LDA    $BD     
       ORA    LFF25,Y 
       STA    $BD     
LF57C: LDA    $C0     
       CPY    #$19    
       BCC    LF589   
       CPY    #$20    
       BCS    LF589   
       ORA    LFF13,Y 
LF589: STA    $C0     
       TYA            
       CLC            
       LDY    $99     
       ADC    LFF29,Y 
       STA    $AC     
       LDA    $AD     
       CPY    #$02    
       BCC    LF59B   
       LSR            
LF59B: STA    AUDV0   
       LDY    #$08    
       STY    AUDC0   
       CLC            
       EOR    #$0E    
       ADC    #$02    
       STA    AUDF0   
       LDX    #$03    
LF5AA: JSR    LF2F9   
       STA    $DD     
       LDA    $A1,X   
       BEQ    LF612   
       CMP    #$06    
       BCC    LF617   
       LDA    $E1     
       BNE    LF617   
       LDA    $80     
       LSR            
       LSR            
       LDY    LFEF0,X 
       LDA.wy $0085,Y 
       AND    LFDF6,X 
       TAY            
       DEY            
       BMI    LF5CF   
       LDA    #$01    
       TAY            
LF5CF: STY    $D0     
       LDY    $A1,X   
       ROL            
       ORA    #$08    
       CPY    #$08    
       BCS    LF5DD   
       LSR            
       EOR    #$02    
LF5DD: STA    $A1,X   
       AND    #$04    
       LSR            
       LDY    $EB     
       ADC.wy $00E8,Y 
       LSR            
       TAY            
       CLC            
       DEY            
       BPL    LF5F0   
       LDA    $80     
       LSR            
LF5F0: LDA    #$00    
       BCS    LF5FA   
LF5F4: CLC            
       ADC    $D0     
       DEY            
       BPL    LF5F4   
LF5FA: CLC            
       ADC    $91,X   
       CMP    #$C0    
       BCS    LF629   
       STA    $D0     
       LDY    $DD     
       BEQ    LF647   
       CMP    LFE4E,Y 
       BCS    LF61A   
       LDA    #$FF    
       DEY            
       SEC            
       BCS    LF627   
LF612: LDA    LFE60,X 
       STA    $95,X   
LF617: JMP    LF67F   
LF61A: CMP    LFE4F,Y 
       BCC    LF643   
       LDA    #$00    
       CPY    $AE     
       BEQ    LF629   
       CPY    #$07    
LF627: BNE    LF637   
LF629: LDY    LFEF0,X 
       LDA.wy $0085,Y 
       EOR    LFDF6,X 
       STA.wy $0085,Y 
       BCS    LF647   
LF637: LDY    LFEF0,X 
       EOR    LFE88,X 
       ADC.wy $0085,Y 
       STA.wy $0085,Y 
LF643: LDA    $D0     
       STA    $91,X   
LF647: TXA            
       TAY            
       LDA    $F3     
LF64B: LSR            
       LSR            
       DEY            
       BNE    LF64B   
       AND    #$01    
       ADC    #$FF    
       CLC            
       ADC    $95,X   
       CMP    LFE60,X 
       BCS    LF612   
       CPX    #$03    
       BEQ    LF66C   
       LDY    $A2,X   
       BEQ    LF66C   
       PHA            
       ADC    #$17    
       CMP    $96,X   
       PLA            
       BCS    LF67F   
LF66C: CMP    LFE63,X 
       BCC    LF67F   
       LDY    $A0,X   
       BEQ    LF67D   
       PHA            
       SBC    #$17    
       CMP    $94,X   
       PLA            
       BCC    LF67F   
LF67D: STA    $95,X   
LF67F: LDA    $9D,X   
       AND    #$0F    
       TAY            
       BEQ    LF690   
       DEY            
       LSR            
       BEQ    LF68E   
       LSR            
       LSR            
       ADC    #$01    
LF68E: STA    $A1,X   
LF690: STY    $9D,X   
       TXA            
       BNE    LF6BB   
       LDA    $A8     
       SEC            
       SBC    #$08    
       BCC    LF6A4   
       STA    $A8     
       AND    #$0F    
       CMP    #$08    
       BCC    LF6A9   
LF6A4: LDA    $87     
       LSR            
       LSR            
       LSR            
LF6A9: AND    #$07    
       BEQ    LF71E   
       TAY            
       LDA    LFE80,Y 
       TAY            
       AND    #$07    
       STA    $95     
       TYA            
       AND    #$F0    
       BNE    LF6C1   
LF6BB: LDA    $A1,X   
       BEQ    LF71E   
       LDA    $91,X   
LF6C1: CLC            
       ADC    $C4     
       PHP            
       PHA            
       LDA    $C3     
       LSR            
       PLA            
       BCS    LF6CE   
       ADC    #$60    
LF6CE: STA    $91     
       LDA    #$00    
       ADC    #$FF    
       PLP            
       ADC    #$00    
       BMI    LF6FA   
       BNE    LF71E   
       LDA    $91     
       CMP    #$A0    
       BCS    LF71E   
       CPX    #$00    
       BNE    LF724   
       CMP    #$80    
LF6E7: LDY    #$01    
       BCS    LF6F1   
       CMP    #$60    
       LDY    #$03    
       BCC    LF724   
LF6F1: PHA            
       TYA            
       AND    $95     
       STA    $95     
       PLA            
       BCS    LF724   
LF6FA: TXA            
       BNE    LF71E   
       LDA    $91     
       CMP    #$C0    
       BCC    LF71E   
       ADC    #$1F    
       TAY            
       BMI    LF715   
       LDA    $95     
       LSR            
       LSR            
       BCC    LF714   
       ASL            
       STA    $95     
       TYA            
       BCC    LF724   
LF714: TYA            
LF715: CLC            
       ADC    #$20    
       LDY    $95     
       CPY    #$04    
       BCS    LF6E7   
LF71E: LDA    #$00    
       STA    $95     
       STA    $91     
LF724: JSR    LF014   
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    $9D,X   
       STA    $9D,X   
       TYA            
       SEC            
       SBC    #$06    
       BMI    LF738   
       EOR    #$80    
       TAY            
LF738: STY    $8D,X   
       TXA            
       BEQ    LF79D   
       EOR    $F3     
       AND    #$03    
       ORA    $A5     
       ORA    $E1     
       BNE    LF799   
       LDA    $F3     
       AND    #$02    
       LSR            
       TAY            
       DEY            
       LDA    $D0     
       BEQ    LF799   
       SBC    $C7     
       BPL    LF757   
       INY            
LF757: LDA    $C8     
       CMP    $95,X   
       LDA    $F3     
       AND    #$60    
       BNE    LF765   
       TAY            
       CLC            
       BCC    LF769   
LF765: LDA    $F3     
       AND    #$01    
LF769: SBC    #$00    
       STY    $A6     
       STA    $A7     
       LDY    $EB     
       LDA.wy $00E8,Y 
       CMP    #$03    
       LDA    $F2     
       BCC    LF77F   
       LSR            
       ASL    $A7     
       ASL    $A6     
LF77F: LSR            
       SEC            
       ROR            
       STA    $A5     
       LDA    $95,X   
       CLC            
       ADC    #$04    
       STA    $DF     
       STA    $DE     
       DEC    $DF     
       LDA    $D0     
       CMP    #$9C    
       BCS    LF797   
       ADC    #$03    
LF797: STA    $C6     
LF799: DEX            
       JMP    LF5AA   
LF79D: LDA    $C1     
       CLC            
       SBC    $C8     
       TAY            
       INX            
LF7A4: LDA    #$00    
       CPY    #$0A    
       BCS    LF7AC   
       LDA    ($C9),Y 
LF7AC: STA    $CD,X   
       INY            
       DEX            
       BPL    LF7A4   
       LDA    $B1     
       AND    #$F0    
       LDX    $C1     
       CPX    $DF     
       BEQ    LF7C4   
       CPX    $82     
       BNE    LF7C6   
       LDY    $DF     
       STY    $82     
LF7C4: ORA    #$02    
LF7C6: STA    $B1     
       DEX            
       LDA    $BA     
       AND    #$F0    
       CPX    $DF     
       BEQ    LF7D9   
       CPX    $82     
       BNE    LF7DB   
       LDY    $DF     
       STY    $82     
LF7D9: ORA    #$02    
LF7DB: STA    $BA     
       LDX    #$02    
LF7DF: LDY    #$FF    
       LDA    $C3,X   
       SEC            
LF7E4: SBC    #$14    
       INY            
       BCS    LF7E4   
       TYA            
       ASL            
       ASL            
       STA    $F9,X   
       DEX            
       BNE    LF7DF   
       ASL            
       ASL            
       ASL            
       TAY            
       LDA    $C3     
       LSR            
       TYA            
       ROR            
       EOR    #$70    
       STA    $FA     
       INX            
       LDY    $EB     
       LDA    LFECA,Y 
       STA    $D1     
       ADC    #$08    
       JSR    LF253   
       DEX            
       LDA    $D1     
       JSR    LF253   
       LDY    $EB     
       LDA    #$96    
       STA    $CF     
       LDX    #$0A    
LF819: LDA.wy $00EC,Y 
       LSR            
       JSR    LFDD8   
       LDA.wy $00EC,Y 
       INY            
       INY            
       ASL            
       ASL            
       ASL            
       JSR    LFDD8   
       BPL    LF819   
LF82D: LDY    INTIM   
       BNE    LF82D   
       STA    WSYNC   
       STY    VBLANK  
       LDA    #$30    
       STA    CTRLPF  
       LDX    $EB     
       LDA    $F6,X   
       LDY    #$06    
       STA    COLUP0  
       STA    COLUP1  
       BIT    $CA     
       LDA    $EB     
       BEQ    LF84D   
       CLV            
       STA    WSYNC   
LF84D: LDA    ($DC),Y 
       STA    GRP0    
       LDA    ($DA),Y 
       STA    GRP1    
       BVC    LF859   
       STA    WSYNC   
LF859: STY    $CF     
       LDA    ($D8),Y 
       STA    GRP0    
       LDA    ($D6),Y 
       STA    $D0     
       LDA    ($D4),Y 
       TAX            
       LDA    ($D2),Y 
       LDY    $D0     
       STY    GRP1    
       STX    GRP0    
       STA    GRP1    
       STA    GRP0    
       LDY.w  $00CF   
       BEQ    LF885   
       DEY            
       BVC    LF84D   
       LDA    ($DC),Y 
       STA    GRP0    
       LDA    ($DA),Y 
       STA.w  $001C   
       BVS    LF859   
LF885: STA    WSYNC   
       STY    VDELP0  
       STY    GRP1    
       STY    GRP0    
       LDX    $EB     
       LDY    $E4,X   
       LDA    LFDF8,Y 
       STA    $CF     
       STA    NUSIZ0  
       LSR            
       LSR            
       LSR            
       STA    NUSIZ1  
       LDX    #$0A    
LF89F: STA    WSYNC   
       LDA    LFEB5,X 
       BIT    $CF     
       BMI    LF8AA   
       STA    GRP1    
LF8AA: BVS    LF8AE   
       LDA    #$00    
LF8AE: STA    GRP0    
       LDA    $82,X   
       ASL            
       ASL            
       ASL            
       AND    #$38    
       TAY            
       LDA    LFE07,Y 
       STA    $D3,X   
       DEX            
       BNE    LF89F   
       LDA    $C5     
       JSR    LF253   
       INX            
       LDA    $C5     
       SEC            
       SBC    #$20    
       BPL    LF8CF   
       EOR    #$60    
LF8CF: JSR    LF253   
       LDA    $F8     
       STA    COLUPF  
       LDA    #$0C    
       EOR    $F5     
       AND    $F4     
       STA    COLUP0  
       STA    COLUP1  
       STY    NUSIZ0  
       STY    NUSIZ1  
       LDX    #$0B    
       STA    HMCLR   
LF8E8: LDA    LFF1D,X 
       EOR    $F5     
       STA    WSYNC   
       STA    HMOVE   
       AND    $F4     
       STA    COLUBK  
       LDA    LFE8D,X 
       STA    GRP1    
       LDA    LFDEA,X 
       STA    GRP0    
       LDA    LFF17,X 
       EOR    $F5     
       AND    $F4     
       STA    $C9,X   
       DEX            
       CPX    #$06    
       BCS    LF8E8   
       LDY    #$01    
       LDA    #$70    
       STA    HMP1    
       LDA    #$E0    
       STA    HMP0    
LF917: LDA    $CF,X   
       STA    WSYNC   
       STA    HMOVE   
       STA    COLUBK  
       LDA    LFE8D,X 
       STA    GRP0    
       LDA.wy $00AF,Y 
       STA    PF0     
       LDA.wy $00B2,Y 
       STA    PF1     
       LDA.wy $00B5,Y 
       STA    PF2     
       LDA.wy $00B8,Y 
       STA    PF0     
       LDA.wy $00BB,Y 
       STA    PF1     
       LDA.wy $00BE,Y 
       STA    PF2     
       CPX    #$03    
       BNE    LF949   
       STX    $D5     
       DEY            
LF949: DEX            
       BPL    LF917   
       STA    WSYNC   
       INX            
       LDA    $CF     
       STA    COLUBK  
       STX    GRP1    
       STX    GRP0    
       STX    PF0     
       STX    COLUPF  
       STX    PF1     
       STX    PF2     
       STX    NUSIZ0  
       LDY    $EB     
       LDA    $E1     
       BPL    LF968   
       LSR            
LF968: EOR    #$60    
       LSR            
       LSR            
       CMP    #$08    
       ORA    #$28    
       EOR    $F5     
       AND    $F4     
       BCC    LF979   
       LDA.wy $00F6,Y 
LF979: STA    COLUP0  
       LDY    $C2     
       DEY            
       STY    REFP0   
       LDA    #$B7    
       EOR    $F5     
       AND    $F4     
       STA    HMCLR   
       STA    COLUBK  
       EOR    #$00    
       STA    $F8     
       LDA    $C7     
       JSR    LF014   
       ASL            
       ASL            
       ASL            
       ASL            
       STA    HMP0,X  
       LDA    #$10    
       STA    NUSIZ0  
       LDA    $F8     
       EOR    #$00    
       STA    COLUBK  
       EOR    #$00    
       STA    WSYNC   
       STA    COLUBK  
       LDA    $F8     
       STX    $CF     
       JSR    LF260   
       STA    COLUBK  
       LDA    $AD     
       CLC            
       ADC    #$6F    
       EOR    #$00    
       AND    $F4     
       STA    COLUPF  
       JMP    LF0DE   
LF9C0: LDA    #$55    
       STA    $82     
       LDY    #$03    
       LDA    $F8     
       ADC    #$70    
       STX    ENAM0   
       STA    COLUPF  
       JSR    LF265   
       STY    NUSIZ0  
       STY    NUSIZ1  
       STA    COLUBK  
       STX    GRP1    
       STX    GRP0    
       DEX            
       STX    PF0     
       STX    PF1     
       STY    PF2     
       LDX    #$15    
       STA    RESP0   
       STA    RESP1   
       STA    RESBL   
       LDA    #$20    
       STA    HMP1    
       STX    HMP0    
       STX    CTRLPF  
       JSR    LF265   
       LDX    #$07    
       STY    REFP0   
       STY    REFP1   
       LDA    $F8     
       ADC    #$60    
       STA    COLUP0  
       STA    COLUP1  
       STA    HMCLR   
LFA05: LDA    $85,X   
       AND    #$78    
       CPX    #$04    
       BCC    LFA0F   
       AND    #$38    
LFA0F: TAY            
       LDA    LFE07,Y 
       STA    $CE,X   
       LDY    $F9     
       TXA            
       ORA    $FB     
       NOP            
       NOP            
       TAY            
       JSR    LF265   
       BCS    LFA29   
       LDA    #$00    
       NOP            
       STA    GRP1    
       STA    GRP0    
LFA29: LDA    $F8     
       ADC    #$70    
       DEX            
       BPL    LFA05   
       STA    COLUBK  
       LDA    $C7     
       LSR            
       CLC            
       ADC    #$F2    
       STA    RESP1   
       EOR    #$F0    
       INX            
       LDY    $FA     
       STY    HMP0    
       STA    HMBL    
       STY    HMP1    
       STX    NUSIZ0  
       STX    VDELP1  
       JSR    LF265   
       LDA    $F6     
       EOR    #$02    
       EOR    #$00    
       EOR    #$00    
       LDA    $F8     
       NOP            
       NOP            
       LDA    $C4     
       CMP    #$50    
       LDA    $C3     
       ROR            
       ROR            
       STA    $CB     
       LDA    $C8     
       AND    #$70    
       LSR            
       TAX            
       LDA    LFE0F,X 
       STA    $CD     
       STA    HMCLR   
       LDA    #$11    
LFA71: BEQ    LFA9F   
       SBC    #$04    
       TAX            
LFA76: LDA    $CD     
       STA    WSYNC   
       STA    HMOVE   
       STA    ENABL   
       LDA    $D1,X   
       ADC    #$00    
       LDA    $D0,X   
       ADC    #$00    
       LSR    $CD     
       BIT    $CB     
       BPL    LFA8E   
       LDA    $80     
LFA8E: BVS    LFA90   
LFA90: LDA    #$00    
       LDY    #$00    
       ASL    $82     
       STA    GRP1    
       TXA            
       STY    GRP1    
       BCS    LFA71   
       BCC    LFA76   
LFA9F: LDA    #$0F    
       JSR    LF265   
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$53    
       STA    VDELP0  
       STA    VDELP1  
       STX    GRP1    
       STX    GRP0    
       STX    GRP1    
       STX    PF0     
       STX    PF1     
       STA    RESP0   
       STA    RESP1   
       STX    PF2     
       STA    NUSIZ0  
       STA    HMP1    
       LDA    #$41    
       STA    HMP0    
       STA    $D0     
       LDA    #$FE    
       JSR    LF265   
       STA    $CA     
       STA    $CC     
       LDA    $A9     
       BEQ    LFAD9   
       NOP            
       NOP            
       NOP            
       NOP            
LFAD9: ASL            
       BPL    LFADE   
       AND    #$80    
LFADE: ROR            
       BMI    LFAE3   
       LDA    #$88    
LFAE3: LSR            
       LSR            
       LSR            
       STA    $CF     
       STA    HMCLR   
LFAEA: LDY    $CF     
       STA    WSYNC   
       STA    HMOVE   
       LDA    LFFA5,Y 
       STA    GRP0    
       LDA    LFF98,Y 
       STA    GRP1    
       LDA    LFFB5,Y 
       STA    GRP0    
       LDA    LFEC8,Y 
       STA    $D1     
       LDX    LFFE4,Y 
       LDA    LFE8D,Y 
       LDY    $D1     
       STY    GRP1    
       STX    GRP0    
       STA    GRP1    
       STA    GRP0    
       DEC    $CF     
       ASL    $D0     
       BNE    LFAEA   
       LDA    #$00    
       LDX    #$03    
       STA    GRP1    
       STA    GRP0    
       STA    HMOVE   
       STA    GRP1    
       LDA    #$2C    
       STA    TIM64T  
       JSR    LF265   
       STX    VBLANK  
       STX    ENABL   
       LDA    $E1     
       BNE    LFB75   
       BIT    COLUP1  
       BPL    LFB5F   
       LDA    $C8     
       ADC    #$0B    
LFB3E: CMP    $95,X   
       BCS    LFB5A   
       DEX            
       BNE    LFB3E   
       LDA    $C7     
       JSR    LFF41   
LFB4A: LDA    $E1     
       ORA    #$7F    
       STA    $E1     
       LDA    #$00    
       STA    $A5     
LFB54: LDA    #$1F    
       STA    $9B     
       BNE    LFB75   
LFB5A: JSR    LF030   
       BCC    LFB4A   
LFB5F: LDX    $90     
       JSR    LF030   
       BIT    VSYNC   
       BVS    LFB4A   
       BPL    LFB75   
       BIT    $8D     
       BMI    LFB75   
       LDA    $C6     
       JSR    LFF41   
       BNE    LFB54   
LFB75: LDX    #$04    
       LDA    #$01    
       JSR    LF253   
       TYA            
       INY            
       EOR    SWCHA   
       BEQ    LFB85   
       STY    $EA     
LFB85: LDX    $A9     
       BEQ    LFB8A   
       TYA            
LFB8A: LDY    $EB     
       BEQ    LFB92   
       ASL            
       ASL            
       ASL            
       ASL            
LFB92: STA    $D4     
       LDA    $80     
       LSR            
       AND    #$01    
       TAY            
       LDX    LFF16,Y 
       LDY    $AA     
       BIT    $D4     
       BMI    LFBAF   
       BVS    LFBAA   
       TYA            
       BEQ    LFBB4   
       BMI    LFBAF   
LFBAA: DEY            
       CPY    #$BF    
       BNE    LFBB4   
LFBAF: CPY    #$40    
       BEQ    LFBB4   
       INY            
LFBB4: LDA    $E1     
       PHP            
       BEQ    LFBEE   
       LDY    $9B     
       BNE    LFBDF   
       DEC    $E1     
       BNE    LFBDF   
       LDX    $F0     
       DEX            
       BPL    LFBDB   
       LDX    $EB     
       LDA    #$5F    
       LDY    $E4,X   
       BEQ    LFBDD   
       LDA    #$0F    
       CMP    $D4     
       ROR            
       AND    REFP1,X 
       BMI    LFBDB   
       STY    $EA     
       BPL    LFBDF   
LFBDB: LDA    #$01    
LFBDD: STA    $E1     
LFBDF: LDX    #$B6    
       LDY    #$00    
       CMP    #$60    
       BCC    LFBEE   
       ASL            
       BCC    LFBEC   
       BPL    LFBEE   
LFBEC: LDX    #$AD    
LFBEE: STX    $C9     
       STY    $AA     
       TYA            
       CMP    #$80    
       ROR            
       STA    $D0     
       ROL            
       LDY    #$00    
       CLC            
       ADC    $AB     
       BPL    LFC0C   
LFC00: CMP    #$DF    
       BCS    LFC10   
       ADC    #$20    
       DEY            
       BMI    LFC00   
LFC09: SBC    #$20    
       INY            
LFC0C: CMP    #$20    
       BCS    LFC09   
LFC10: STA    $AB     
       STY    $CF     
       LDY    #$00    
       PLP            
       BPL    LFC1D   
       STY    $CF     
       BMI    LFC84   
LFC1D: BNE    LFC49   
       BIT    $D4     
       BVS    LFC26   
       BPL    LFC34   
       INY            
LFC26: CPY    $C2     
       STY    $C2     
       BEQ    LFC34   
       CLC            
       LDA    $C7     
       ADC    LFECF,Y 
       STA    $C7     
LFC34: LDA    $D4     
       ASL            
       ASL            
       LDY    $C8     
       ASL            
       BPL    LFC40   
       INY            
       CPY    #$60    
LFC40: BCC    LFC47   
       CPY    #$05    
       BCC    LFC47   
       DEY            
LFC47: STY    $C8     
LFC49: LDY    $C2     
       LDA    $C7     
       TAX            
       SEC            
       SBC    $D0     
       CMP    #$C8    
       BCC    LFC57   
       LDA    #$00    
LFC57: AND    #$FE    
       DEY            
       BMI    LFC72   
       CMP    #$10    
       BCC    LFC76   
LFC60: BEQ    LFC84   
       CPX    #$11    
       BEQ    LFC84   
       BCC    LFC76   
LFC68: DEC    $C7     
       CPX    #$83    
       BCS    LFC84   
       INC    $CF     
       BCC    LFC84   
LFC72: CMP    #$86    
       BCS    LFC60   
LFC76: CPX    #$86    
       BEQ    LFC84   
       BCS    LFC68   
       INC    $C7     
       CPX    #$15    
       BCC    LFC84   
       DEC    $CF     
LFC84: SEC            
       LDA    $C5     
       PHA            
       LDX    $EB     
       DEC    $9A     
       BPL    LFCB0   
       LDA    $E1     
       BNE    LFCB0   
       ROL            
       EOR    $A1     
       STA    $A1     
       LDA    #$04    
       SBC    $E8,X   
       STA    $9A     
       AND    $AA     
       EOR    #$80    
       ORA    $C4     
       ROL            
       ROL            
       ORA    $C3     
       LSR            
       LDA    #$02    
       BCC    LFCAE   
       ADC    #$04    
LFCAE: STA    $AE     
LFCB0: LDA    #$FF    
       LDX    #$00    
LFCB4: ADC    $C4,X   
       SEC            
       SBC    $CF     
       STA    $C4,X   
       CMP    #$A0    
       BCC    LFD25   
       CMP    #$C0    
       EOR    #$A0    
       BCC    LFCC7   
       EOR    #$C0    
LFCC7: STA    $C4,X   
       TXA            
       BNE    LFD25   
       LDA    $C3     
       ROR            
       BMI    LFD46   
       DEC    $C3     
       BCC    LFD25   
       LDA    $89     
       PHA            
       LDA    $85     
       PHA            
       LDA    $E7     
       DEX            
       BCS    LFCE8   
LFCE0: LDY    $86,X   
       STY    $85,X   
       LDY    $8A,X   
       STY    $89,X   
LFCE8: LSR            
       ROR    $E6     
       ROR    $E7     
       INX            
       CPX    #$03    
       BCC    LFCE0   
LFCF2: PLA            
       STA    $85,X   
       PLA            
       STA    $89,X   
       LDX    #$03    
       LDA    $E6     
       STA    $D1     
LFCFE: JSR    LF2F9   
       LSR    $D1     
       LDA    #$00    
       STA    $9D,X   
       DEY            
       INY            
       BEQ    LFD0F   
       ROL            
       ASL            
       ADC    #$06    
LFD0F: STA    $A1,X   
       JSR    LFD6C   
       AND    #$0F    
       ADC    LFE4E,Y 
       STA    $92,X   
       AND    #$03    
       ADC    LFF1A,X 
       STA    $96,X   
       TXA            
       BNE    LFCFE   
LFD25: INX            
       CPX    #$03    
       LDA    #$00    
       BCC    LFCB4   
       TAX            
       TAY            
       PLA            
       EOR    $C5     
       AND    #$0C    
       BEQ    LFD3B   
       INY            
       BIT    $CF     
       JSR    LFD82   
LFD3B: LDA    #$06    
       JSR    LFD68   
       JSR    LF1F9   
       JMP    LF372   
LFD46: INC    $C3     
       BCS    LFD25   
       LDX    #$04    
       LDA    $8C     
       PHA            
       LDA    $88     
       PHA            
       LDA    $E6     
       BCC    LFD5E   
LFD56: LDY    $84,X   
       STY    $85,X   
       LDY    $88,X   
       STY    $89,X   
LFD5E: ASL            
       ROL    $E7     
       ROL    $E6     
       DEX            
       BNE    LFD56   
       BEQ    LFCF2   
LFD68: AND    $80     
       BNE    LFD76   
LFD6C: LDA    $F3     
       ASL            
       ASL            
       ASL            
       EOR    $F3     
       ASL            
       ROL    $F3     
LFD76: LDA    $F2     
       ASL            
       ASL            
       ASL            
       EOR    $F2     
       ASL            
       ROL    $F2     
       DEX            
       RTS            

LFD82: BVC    LFDA6   
       LDA    $BE,X   
       LSR            
       LSR            
       LSR            
       LSR            
       AND    #$08    
       ORA    $AF,X   
       ASL            
       STA    $AF,X   
       ROR    $B2,X   
       ROL    $B5,X   
       ROL            
       ASL            
       ASL            
       ASL            
       AND    #$08    
       ORA    $B8,X   
       ASL            
       STA    $B8,X   
       ROR    $BB,X   
       ROL    $BE,X   
       BVS    LFDBE   
LFDA6: LDA    $AF,X   
       ASL            
       ASL            
       ASL            
       ASL            
       ROR    $BE,X   
       ROL    $BB,X   
       ROR    $B8,X   
       LDA    $B8,X   
       LSR            
       LSR            
       LSR            
       LSR            
       ROR    $B5,X   
       ROL    $B2,X   
       ROR    $AF,X   
LFDBE: LDA    $B8,X   
       AND    #$F0    
       STA    $B8,X   
       LDA    $AF,X   
       AND    #$F0    
       STA    $AF,X   
       INX            
       CPX    #$03    
       BNE    LFDD4   
       DEX            
       AND    #$C0    
       STA    $AF,X   
LFDD4: DEY            
       BPL    LFD82   
       RTS            

LFDD8: AND    #$78    
       BNE    LFDE1   
       TXA            
       BEQ    LFDE1   
       LDA    $CF     
LFDE1: STA    $D2,X   
       BMI    LFDE9   
       LDA    #$00    
       STA    $CF     
LFDE9: LDA    #$FE    
       STA    $D3,X   
       DEX            
       DEX            
       RTS            

LFDF0: .byte $FF,$FE,$7C,$38,$10,$00
LFDF6: .byte $40
LFDF7: .byte $40
LFDF8: .byte $80,$80,$C0,$40,$41,$49,$4B,$5B,$1E,$33,$33,$33,$33,$33,$1E
LFE07: .byte $00,$3F,$0C,$0C,$0C,$0C,$3C,$1C
LFE0F: .byte $C0,$3F,$30,$30,$1E,$03,$23,$3E,$60,$1E,$23,$03,$06,$03,$23,$1E
       .byte $30,$06,$06,$3F,$26,$16,$0E,$06,$18,$3E,$23,$03,$3E,$30,$30,$3F
       .byte $0C,$1E,$33,$33,$3E,$30,$31,$1E,$06,$0C,$0C,$0C,$06,$03,$21,$3F
       .byte $03,$1E,$33,$33,$1E,$33,$33,$1E,$00,$1E,$23,$03,$1F,$33,$33
LFE4E: .byte $1E
LFE4F: .byte $01,$14,$28,$3C,$50,$78,$8C,$9C
LFE57: .byte $04,$08,$10,$20,$18,$28,$30,$38,$10
LFE60: .byte $00,$28,$42
LFE63: .byte $5B,$19,$32,$4B,$05,$54,$FF,$DB,$FF,$1C,$FE,$1E
LFE6F: .byte $11,$FF,$FB,$DF,$F6,$CE,$C7,$DB,$14,$6A,$FF,$B5,$FF,$1C,$FE,$1E
       .byte $15
LFE80: .byte $60,$80,$60,$40,$62,$44,$42,$4E
LFE88: .byte $08,$08,$01,$01
LFE8C: .byte $E4
LFE8D: .byte $F0,$E0,$E0,$E0,$F0,$F8,$3F,$79,$30,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$29,$EA,$2E,$29,$CE,$00,$00,$1E,$FE,$FE,$7E,$06,$02,$07
       .byte $00,$00,$08,$24,$80,$10,$24,$08
LFEB5: .byte $10,$00,$00,$38,$7D,$7F,$FF,$CD,$80,$80,$00,$00,$00,$39,$7C,$7F
       .byte $FF,$CC,$81
LFEC8: .byte $80
LFEC9: .byte $00
LFECA: .byte $21,$59,$0C,$0C,$03
LFECF: .byte $04,$FC,$00,$00,$00,$00,$00,$00,$00,$00,$00,$B8,$94,$94,$94,$B8
       .byte $00
LFEE0: .byte $00,$2E,$B2,$0C
LFEE4: .byte $B7,$2A,$2C,$2E,$01,$01,$60,$60,$80,$80,$80,$80
LFEF0: .byte $02,$06,$02,$06
LFEF4: .byte $78,$38
LFEF6: .byte $07,$07,$00,$00,$FF,$FE,$00,$F0,$F0,$00,$80,$00,$00,$00,$00,$00
       .byte $40,$01,$00,$50,$50,$50,$86,$38
LFF0E: .byte $96,$AD,$AD,$AD,$75
LFF13: .byte $65,$A5,$A5
LFF16: .byte $C0
LFF17: .byte $B6,$C0,$B6
LFF1A: .byte $19,$36,$56
LFF1D: .byte $B7,$B7,$B7,$B7,$B7,$B7
LFF23: .byte $B7,$B7
LFF25: .byte $B7,$B7
LFF27: .byte $B7,$B7
LFF29: .byte $FE,$02,$FC,$05,$03,$07,$0F,$1E,$00,$78,$F0,$E0,$C0,$80,$C0,$E0
LFF39: .byte $F0,$78,$3C,$1E,$0F,$07,$03,$01
LFF41: SEC            
       SBC    $C4     
       PHA            
       LDA    $C3     
       LSR            
       PLA            
       BCS    LFF4D   
       SBC    #$5F    
LFF4D: CLC            
       SBC    #$28    
       LDY    #$03    
LFF52: SBC    #$20    
       BCC    LFF5A   
       DEY            
       BNE    LFF52   
LFF59: RTS            

LFF5A: LDA    $91     
       ORA    $95     
       BEQ    LFF59   
       LDX    #$02    
       JSR    LFF6E   
       BEQ    LFF59   
       LDA    $CF     
       ORA    #$F8    
       STA    $A8     
       RTS            

LFF6E: LDA    $85,X   
       AND    #$38    
       LSR            
       LSR            
       LSR            
       STX    $D0     
       TAX            
       LDA    LFE57,X 
       AND    LFE57,Y 
       BEQ    LFFA0   
       LDA    LFE6F,X 
LFF83: DEY            
       BEQ    LFF8A   
       LSR            
       LSR            
       BPL    LFF83   
LFF8A: ORA    #$FC    
       STX    $CF     
       CLC            
       ADC    $CF     
       ASL            
       ASL            
       ASL            
       LDX    $D0     
LFF96: STA    $D0     
LFF98: LDA    $85,X   
       AND    #$C7    
       ORA    $D0     
       STA    $85,X   
LFFA0: RTS            

LFFA1: .byte $00,$00,$00,$00
LFFA5: .byte $00,$00,$00,$00,$00,$94,$A7,$E4,$94,$E3,$00,$00,$00,$00,$00,$00
LFFB5: .byte $00,$00,$84,$84,$EE,$AA,$EA,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$A2,$AA,$AA,$AA,$14,$00,$00,$F7,$E3,$41,$00,$FB,$F1,$A0
       .byte $00,$FD,$F8,$50,$00,$FE,$7C,$28,$00,$7F,$3E,$14,$00,$BF,$1F
LFFE4: .byte $0A,$00,$DF,$8F,$05,$00,$EF,$C7,$82,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$29,$55,$55,$55,$44,$00,$00,$F0,$00,$F0
