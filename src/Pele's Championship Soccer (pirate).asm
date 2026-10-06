; Disassembly of roms/Pele's Championship Soccer (pirate).bin
; Disassembled Tue Oct  6 15:22:40 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Pele's Championship Soccer (pirate).bin
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
RESBL   =  $14
AUDC0   =  $15
AUDF0   =  $17
AUDV0   =  $19
GRP0    =  $1B
GRP1    =  $1C
ENABL   =  $1F
HMP0    =  $20
HMP1    =  $21
HMBL    =  $24
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXP0FB  =  $32
INPT4   =  $3C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296

       ORG $F000

START:
       SEI            
       CLD            
       LDA    #$00    
       TAX            
LF005: STA    VSYNC,X 
       INX            
       BNE    LF005   
       DEX            
       TXS            
       LDA    #$01    
       STA    $DD     
       JSR    LF4C2   
       LDA    #$10    
       STA    $D9     
LF017: LDX    #$02    
       STX    VSYNC   
       DEX            
       STX    $80     
       INC    $9E     
       BNE    LF02E   
       INC    $96     
       LDA    $96     
       CMP    #$FF    
       BNE    LF02E   
       LDA    #$10    
       STA    $D9     
LF02E: LDY    #$03    
LF030: STA    WSYNC   
       DEY            
       BPL    LF030   
       DEX            
       STX    VSYNC   
       LDA    #$34    
       STA    TIM64T  
       LDA    $9E     
       AND    #$03    
       TAX            
       LDA    LFF60,X 
       STA    $95     
       LDA    $E2     
       BEQ    LF073   
       BIT    $95     
       BPL    LF051   
       DEC    $E2     
LF051: LDA    $E2     
       BNE    LF05D   
       JSR    LF522   
       JSR    LFD19   
       BNE    LF073   
LF05D: CMP    #$78    
       BEQ    LF065   
       BCS    LF073   
       BCC    LF070   
LF065: LDA    $9E     
       ASL            
       STA    $9C     
       LDA    #$00    
       STA    $9F     
       STA    $A0     
LF070: JMP    LF423   
LF073: LDA    SWCHB   
       AND    #$02    
       BEQ    LF086   
       LDA    SWCHB   
       AND    #$01    
       BNE    LF0B1   
       JSR    LF4BF   
       BEQ    LF0B1   
LF086: LDA    #$10    
       STA    $D9     
       INC    $DE     
       LDA    $DE     
       CMP    #$19    
       BCS    LF0B1   
       CMP    #$01    
       BEQ    LF0A3   
       LDA    SWCHB   
       AND    #$01    
       BNE    LF0B5   
       INC    $DE     
       INC    $DE     
       BNE    LF0B5   
LF0A3: INC    $DD     
       LDA    $DD     
       CMP    #$37    
       BCC    LF0B5   
       LDA    #$01    
       STA    $DD     
       BNE    LF0B5   
LF0B1: LDA    #$00    
       STA    $DE     
LF0B5: LDX    #$01    
       LDA    $A4     
       CMP    #$64    
       BCS    LF0BE   
       DEX            
LF0BE: JSR    LF4B6   
       LDY    $D2     
       LDA    SWCHB   
       AND    LFFEE,X 
       BEQ    LF0CD   
       INY            
       INY            
LF0CD: STY    $D3     
       LDA    LFE32,Y 
       STA    $D4     
       LDA    LFE39,Y 
       STA    $D5     
       LDA    LFE40,Y 
       STA    $D6     
       LDX    #$01    
LF0E0: LDA    $E5,X   
       AND    #$01    
       BEQ    LF0EA   
       LDA    $E5,X   
       BNE    LF0F7   
LF0EA: LDA    SWCHA   
       CPX    #$01    
       BNE    LF0F5   
       ASL            
       ASL            
       ASL            
       ASL            
LF0F5: AND    #$F0    
LF0F7: STA    $9F,X   
       LDA    $E7,X   
       AND    #$01    
       BNE    LF10D   
       JSR    LF4B6   
       LDA    INPT4,X 
       AND    #$80    
       TAY            
       JSR    LF4B6   
       TYA            
       STA    $E7,X   
LF10D: DEX            
       BPL    LF0E0   
       BIT    $D9     
       BVC    LF11C   
       LDY    $9F     
       LDX    $A0     
       STY    $A0     
       STX    $9F     
LF11C: LDX    #$01    
LF11E: LDA    $AB,X   
       BNE    LF131   
       LDY    $AA     
       LDA    $9F,X   
       AND    LFFDE,X 
       BEQ    LF12C   
       DEY            
LF12C: LDA    LFFC4,Y 
       STA    $AB,X   
LF131: LSR            
       STA    $AB,X   
       BCC    LF186   
       LDA    $9F,X   
       BPL    LF13F   
       ASL            
       BPL    LF14C   
       BMI    LF157   
LF13F: LDA    $B0     
       AND    LFFD4,X 
       BEQ    LF148   
       INC    $92     
LF148: INC    $8E,X   
       BNE    LF157   
LF14C: LDA    $B0     
       AND    LFFD4,X 
       BEQ    LF155   
       DEC    $92     
LF155: DEC    $8E,X   
LF157: LDA    $9F,X   
       ASL            
       ASL            
       BPL    LF162   
       ASL            
       BPL    LF175   
       BMI    LF186   
LF162: LDA    $B0     
       AND    LFFD4,X 
       BEQ    LF171   
       LDA    $B0     
       AND    #$40    
       BNE    LF171   
       INC    $97     
LF171: INC    $93,X   
       BNE    LF186   
LF175: LDA    $B0     
       AND    LFFD4,X 
       BEQ    LF184   
       LDA    $B0     
       AND    #$80    
       BNE    LF184   
       DEC    $97     
LF184: DEC    $93,X   
LF186: DEX            
       BPL    LF11E   
       JSR    LFD45   
       LDA    $A9     
       STA    $9A     
LF190: LDX    #$01    
LF192: LDA    $9F,X   
       AND    #$C0    
       STA    $99     
       CMP    #$C0    
       BNE    LF1A0   
       BIT    $95     
       BMI    LF1BC   
LF1A0: LDY    #$B0    
       LDA    $92     
       CLC            
       ADC    #$01    
       CMP    $90,X   
       BEQ    LF1BC   
       BCC    LF1AF   
       LDY    #$70    
LF1AF: TYA            
       AND    $99     
       ASL            
       BCS    LF1B7   
       INC    $90,X   
LF1B7: ASL            
       BCS    LF1BC   
       DEC    $90,X   
LF1BC: LDA    $90,X   
       SEC            
       SBC    #$01    
       CMP    $D6     
       BCC    LF1C9   
       DEC    $90,X   
       BNE    LF1BC   
LF1C9: ADC    #$02    
       CMP    $D5     
       BCS    LF1D3   
       INC    $90,X   
       BNE    LF1BC   
LF1D3: DEX            
       BPL    LF192   
       INC    $9A     
       LDA    $9A     
       AND    #$03    
       BEQ    LF190   
       BIT    $95     
       BVC    LF20B   
       LDX    #$01    
       LDA    $97     
       SEC            
       SBC    #$0A    
LF1E9: CMP    #$03    
       BCC    LF1F6   
       DEX            
       BMI    LF20B   
       SEC            
       SBC    #$57    
       JMP    LF1E9   
LF1F6: LDA    $92     
       CLC            
       ADC    #$03    
       SEC            
       SBC    $90,X   
       CMP    #$04    
       BCS    LF20B   
       DEX            
       BMI    LF209   
       DEC    $97     
       BNE    LF20B   
LF209: INC    $97     
LF20B: LDX    #$01    
LF20D: LDA    $A2     
       CLC            
       ADC    #$19    
       CMP    $93,X   
       BCC    LF218   
       STA    $93,X   
LF218: LDA    $A3     
       CLC            
       ADC    #$01    
       CMP    $93,X   
       BCS    LF223   
       STA    $93,X   
LF223: LDA    LFF79,X 
       CMP    $8E,X   
       BCC    LF22C   
       STA    $8E,X   
LF22C: LDA    LFF77,X 
       CMP    $8E,X   
       BCS    LF235   
       STA    $8E,X   
LF235: DEX            
       BEQ    LF20D   
       LDA    $9E     
       AND    #$01    
       TAX            
       LDA    $E7,X   
       BPL    LF278   
       LDA    #$00    
       STA    $A5,X   
LF245: LDA    $9F,X   
       CMP    #$F0    
       BCC    LF251   
       LDY    #$00    
       STY    $A7,X   
       BEQ    LF2A5   
LF251: LDA    $A7,X   
       BNE    LF259   
       LDA    #$0C    
       STA    $A7,X   
LF259: DEC    $A7,X   
       LDA    $A7,X   
       CMP    #$02    
       BEQ    LF267   
       CMP    #$08    
       BEQ    LF267   
       BNE    LF26C   
LF267: LDY    #$01    
       JSR    LFD1B   
LF26C: LDY    #$03    
LF26E: LDA    $A7,X   
       CMP    LFF67,Y 
       BCC    LF2A5   
       DEY            
       BPL    LF26E   
LF278: LDA    #$0C    
       STA    $A7,X   
       LDA    $A5,X   
       CMP    #$0E    
       BCS    LF245   
       INC    $A5,X   
       LDA    $93,X   
       CLC            
       ADC    #$64    
       SEC            
       SBC    $97     
       LDY    #$03    
LF28E: CMP    LFF63,Y 
       BCS    LF296   
       DEY            
       BPL    LF28E   
LF296: LDA    $9F,X   
       CMP    #$F0    
       BCC    LF2A1   
       LDA    LFF6B,Y 
       STA    $9F,X   
LF2A1: INY            
       INY            
       INY            
       INY            
LF2A5: CPX    #$00    
       BEQ    LF2AB   
       LDX    #$02    
LF2AB: LDA    LFF6F,Y 
       STA    $86,X   
       CMP    #$4B    
       BNE    LF2B6   
       LDA    #$55    
LF2B6: STA    $8A,X   
       LDA    $DB     
       BEQ    LF2F1   
       DEC    $DB     
       LDY    $DA     
       DEY            
       LDA    LFEF4,Y 
       STA    AUDC0   
       LDA    LFEF7,Y 
       STA    AUDF0   
       CPY    #$02    
       BNE    LF2E3   
       JSR    LF49E   
       LDA    #$00    
       STA    $A9     
       STA    $DF     
       STA    $96     
       LDA    $9E     
       AND    #$01    
       CLC            
       ADC    #$09    
       BNE    LF2E9   
LF2E3: LDA    LFEFA,Y 
       CLC            
       ADC    $DB     
LF2E9: TAY            
       LDA    LFEFD,Y 
       STA    AUDV0   
       BPL    LF361   
LF2F1: LDY    $DA     
       STA    $DA     
       STA    AUDV0   
       CPY    #$03    
       BNE    LF361   
       JSR    LF4A2   
       LDA    $B4     
       CLC            
       ADC    $B3     
       BNE    LF325   
       STA    $D7     
       BIT    $D9     
       BVC    LF314   
       LDA    #$60    
       STA    $D9     
       JSR    LF49E   
       BNE    LF325   
LF314: JSR    LF4D2   
       LDA    #$40    
       STA    $D9     
       LDA    #$20    
       STA    $E3     
       JSR    LF51E   
       JSR    LFD19   
LF325: LDX    #$01    
LF327: LDA    $D7     
       CMP    LFF2F,X 
       BNE    LF337   
       LDA    LFFFE,X 
       STA    $97     
       LDA    #$4D    
       STA    $92     
LF337: CMP    LFF24,X 
       BNE    LF35E   
       LDY    #$01    
       LDA    $92     
       CMP    #$4D    
       BCC    LF345   
       DEY            
LF345: LDA    LFF20,Y 
       STA    $92     
       STA    $E1     
       LDA    LFF22,X 
       STA    $97     
       STA    $E9     
       TYA            
       CLC            
       ADC    LFF26,X 
       STA    $E0     
       LDA    #$5A    
       STA    $DF     
LF35E: DEX            
       BPL    LF327   
LF361: LDA    $DF     
       BNE    LF369   
       STA    $E0     
       BEQ    LF3B4   
LF369: LDX    #$01    
       BIT    $E0     
       BMI    LF370   
       DEX            
LF370: LDA    $E0     
       AND    #$03    
       TAY            
       LDA    $DF     
       CMP    #$5A    
       BCC    LF381   
       LDA    $E7,X   
       BPL    LF395   
       BMI    LF3B4   
LF381: LDA    $E7,X   
       BPL    LF38B   
       LDA    $E0     
       ORA    #$40    
       STA    $E0     
LF38B: LDA    $E1     
       CLC            
       ADC    LFF28,Y 
       STA    $E1     
       STA    $92     
LF395: DEC    $DF     
       LDA    CXP0FB,X
       LDX    #$00    
       ASL            
       BPL    LF3A0   
       STX    $DF     
LF3A0: STX    $A9     
       LDA    $E9     
       BIT    $E0     
       BVS    LF3B2   
       BIT    $95     
       BMI    LF3B2   
       CLC            
       ADC    LFF2B,Y 
       STA    $E9     
LF3B2: STA    $97     
LF3B4: LDA    $D9     
       AND    #$10    
       BEQ    LF3CE   
       JSR    LF49E   
       LDA    #$64    
       STA    $B5     
       LDX    #$02    
       LDA    $DD     
       CMP    #$1C    
       BCC    LF3CA   
       DEX            
LF3CA: STX    $B2     
       STA    $B1     
LF3CE: LDX    #$FF    
       LDY    #$00    
       LDA    $D9     
       AND    #$10    
       BEQ    LF3DC   
       LDY    $96     
       LDX    #$F7    
LF3DC: STY    $99     
       STX    $9A     
       LDY    #$04    
       LDX    #$04    
       LDA    SWCHB   
       AND    #$08    
       BNE    LF3ED   
       LDX    #$09    
LF3ED: LDA    LFFF2,X 
       EOR    $99     
       AND    $9A     
       STA.wy $0081,Y 
       DEX            
       DEY            
       BPL    LF3ED   
       BIT    $D9     
       BVC    LF407   
       LDX    $81     
       LDY    $82     
       STX    $82     
       STY    $81     
LF407: LDA    $DA     
       CMP    #$03    
       BNE    LF420   
       LDX    #$01    
LF40F: JSR    LF489   
       BNE    LF41D   
       LDA    $9E     
       AND    #$0F    
       LSR            
       ORA    $81,X   
       STA    $81,X   
LF41D: DEX            
       BPL    LF40F   
LF420: JMP    LF486   
LF423: LDA    $9E     
       AND    #$01    
       TAX            
       DEC    $9F,X   
       BPL    LF447   
       LDA    $9E     
       LSR            
       AND    #$03    
       TAY            
       LDA    LFED3,Y 
       STA    $AE,X   
       LDA    #$48    
       STA    $AB,X   
       LDA    $9E     
       CLC            
       ADC    LFEA7,X 
       AND    #$07    
       ADC    #$2A    
       STA    $9F,X   
LF447: LDY    #$05    
       LDA    $9F,X   
LF44B: CMP    LFEA9,Y 
       BCC    LF453   
       DEY            
       BPL    LF44B   
LF453: LDA    LFEAF,Y 
       STA    $86     
       ADC    #$08    
       STA    $88     
       LDA    $AE,X   
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    $AB,X   
       CLC            
       ADC    LFEC4,Y 
       STA    $AB,X   
       STA    $93     
       LDY    #$04    
       LDA    $9F,X   
       CMP    #$12    
       BCS    LF477   
       AND    #$03    
       TAY            
LF477: LDA    LFEBD,Y 
       STA    $E1     
       LDA    LFED1,X 
       STA    $8E     
       CLC            
       ADC    #$08    
       STA    $8F     
LF486: JMP    LF55E   
LF489: LDA    $DC     
       AND    $D7     
       AND    #$FC    
       BEQ    LF49B   
       LDA    #$03    
       AND    $D7     
       CMP    LFF31,X 
       BNE    LF49B   
       RTS            

LF49B: LDA    #$FF    
       RTS            

LF49E: LDA    #$F1    
       BNE    LF4A4   
LF4A2: LDA    #$F0    
LF4A4: STA    $E5     
       STA    $E6     
       STA    $E7     
       STA    $E8     
       RTS            

LF4AD: LDA    #$10    
LF4AF: STA    $E9     
       LDA    #$01    
       STA    $E7,X   
       RTS            

LF4B6: BIT    $D9     
       BVC    LF4BE   
LF4BA: LDA    LFE37,X 
       TAX            
LF4BE: RTS            

LF4BF: JSR    LFD19   
LF4C2: LDA    #$21    
       STA    CTRLPF  
       LDA    #$00    
       STA    $B1     
       STA    $B2     
       STA    $D9     
       LDA    #$10    
       STA    $E3     
LF4D2: LDA    $DD     
       CMP    #$1C    
       BCC    LF4DA   
       SBC    #$1B    
LF4DA: TAY            
       DEY            
       LDA    #$00    
       STA    $99     
       STA    $9A     
       STA    $9B     
       LDA    #$02    
LF4E6: TAX            
LF4E7: DEC    $99,X   
       BPL    LF4F0   
       STA    $99,X   
       DEX            
       BPL    LF4E7   
LF4F0: DEY            
       BPL    LF4E6   
       LDX    $9B     
       LDA    LFEFA,X 
       STA    $D2     
       LDX    $99     
       LDA    LFF1D,X 
       STA    $AA     
       STA    $B3     
       INY            
       STY    $B4     
       LDA    #$3B    
       STA    $B5     
       BCS    LF513   
       LDX    $9A     
       LDA    LFF1A,X 
       BCC    LF51C   
LF513: LDX    $9A     
       LDA    LFEE9,X 
       STA    $EA     
       LDA    #$0F    
LF51C: STA    $DC     
LF51E: LDX    #$00    
       BEQ    LF527   
LF522: LDA    $D9     
       AND    #$01    
       TAX            
LF527: LDA    #$25    
       CLC            
       ADC    LFFC4,X 
       STA    $94     
       ADC    #$27    
       STA    $93     
       LSR    $D9     
       ASL    $D9     
       LDA    #$4B    
       STA    $90     
       STA    $91     
       LDA    #$4E    
       STA    $8E     
       LDA    #$3E    
       STA    $8F     
       LDA    #$4D    
       STA    $92     
       LDA    #$37    
       STA    $97     
       LDA    #$64    
       STA    $A4     
       LDA    #$36    
       STA    $98     
       LDA    #$6A    
       STA    $A3     
       LDA    #$00    
       STA    $A2     
       RTS            

LF55E: LDX    #$01    
LF560: LDY    #$04    
       LDA    $E2     
       BEQ    LF592   
LF566: CMP    LFF0A,Y 
       BCS    LF574   
       DEY            
       BPL    LF566   
       LSR            
       LSR            
       STA    AUDV0,X 
       BPL    LF579   
LF574: LDA    LFF0F,Y 
       STA    AUDV0,X 
LF579: LDA    $9E     
       AND    #$03    
       TAY            
       LDA    LFF14,X 
       CLC            
       ADC    LFF16,Y 
       STA    AUDF0,X 
       LDA    LFF08,X 
       STA    AUDC0,X 
       DEX            
       BPL    LF560   
       JSR    LF49E   
LF592: LDX    #$03    
LF594: LDA    #$01    
       CLC            
       ADC    $8E,X   
       LDY    #$02    
       SEC            
LF59C: INY            
       SBC    #$0F    
       BCS    LF59C   
       EOR    #$FF    
       SBC    #$06    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    $CA,X   
       STY    $CE,X   
       DEX            
       BPL    LF594   
       LDX    #$00    
       LDA    #$02    
       CLC            
       ADC    $92     
       LDY    #$02    
       SEC            
LF5BA: INY            
       SBC    #$0F    
       BCS    LF5BA   
       EOR    #$FF    
       SBC    #$06    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    WSYNC   
LF5C9: DEY            
       BPL    LF5C9   
       STA    RESBL,X 
       STA    HMBL,X  
       STA    WSYNC   
       STA    HMOVE   
       LDX    $E2     
       DEX            
       CPX    #$78    
       BCC    LF5DE   
       JMP    LF6CC   
LF5DE: LDA    #$0F    
       STA    COLUP1  
       LDA    $9E     
       AND    #$0E    
       LSR            
       STA    $99     
       JSR    LFD28   
       LDA    $D9     
       AND    #$01    
       TAX            
       JSR    LF4BA   
       JSR    LF4B6   
       LDA    $9E     
       AND    #$0F    
       ORA    $9A,X   
       STA    $9A,X   
       LDA    $CA     
       LDY    $CE     
       STA    WSYNC   
LF605: DEY            
       BPL    LF605   
       STA    RESP0   
       STA    HMP0    
       STA    WSYNC   
       LDA    $CB     
       LDY    $CF     
       STA    WSYNC   
LF614: DEY            
       BPL    LF614   
       STA    RESP1   
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$FE    
       JSR    LFCFB   
       STA    WSYNC   
       STA    VBLANK  
       LDA    #$23    
       STA    $80     
LF62C: DEC    $80     
       BMI    LF65F   
       LDA    $80     
       CMP    #$18    
       BCS    LF657   
       CMP    #$04    
       BCC    LF657   
       STA    WSYNC   
       LSR            
       LSR            
       TAX            
       DEX            
       LDA    $B6,X   
       STA    PF1     
       LDA    $9A     
       STA    COLUPF  
       LDY    #$01    
LF64A: DEY            
       BPL    LF64A   
       LDA    $C5,X   
       STA    PF1     
       LDA    $9B     
       STA    COLUPF  
       BNE    LF62C   
LF657: STA    WSYNC   
       LDA    #$00    
       STA    PF1     
       BEQ    LF62C   
LF65F: INC    $80     
LF661: STA    WSYNC   
       STY    PF0     
       STA    PF1     
       STA    PF2     
       STX    COLUPF  
       INC    $80     
       LDA    $80     
       CMP    #$60    
       BEQ    LF6C6   
       LDA    $93     
       CMP    #$5A    
       BCS    LF68D   
       SEC            
       SBC    $80     
       CMP    #$08    
       BCS    LF68D   
       TAY            
       LDA    ($86),Y 
       AND    $E1     
       TAX            
       LDA    ($88),Y 
       AND    $E1     
       JMP    LF690   
LF68D: LDA    #$00    
       TAX            
LF690: STA    WSYNC   
       STA    GRP1    
       STX    GRP0    
       BEQ    LF69C   
       LDA    #$0F    
       BNE    LF69E   
LF69C: TYA            
       ASL            
LF69E: STA    COLUP0  
       LDA    $9C     
       AND    #$F0    
       LDY    $99     
       ORA    LFEB5,Y 
       TAX            
       DEY            
       BPL    LF6AF   
       LDY    #$07    
LF6AF: STY    $99     
       LDA    $80     
       CMP    #$04    
       BCC    LF6C1   
       CMP    #$5D    
       BCS    LF6C1   
       LDA    #$00    
       LDY    #$10    
       BNE    LF661   
LF6C1: LDA    #$FF    
       TAY            
       BNE    LF661   
LF6C6: JSR    LFCEF   
       JMP    LFCAE   
LF6CC: LDY    #$01    
LF6CE: LDX    $CF,Y   
       DEX            
       DEX            
       DEX            
       STX    $CF,Y   
       DEY            
       BPL    LF6CE   
       JSR    LFD28   
       LDA    #$FF    
       JSR    LFCFB   
       STA    VBLANK  
       STA    HMCLR   
       STA    WSYNC   
       LDA    #$05    
       STA    NUSIZ0  
       STA    NUSIZ1  
       TAY            
LF6ED: DEY            
       BPL    LF6ED   
       STA    RESP0   
       NOP            
       STA    RESP1   
       LDX    #$04    
LF6F7: LDY    #$02    
LF6F9: STA    WSYNC   
       LDA    $B6,X   
       STA    PF1     
       LDA    $C0,X   
       STA    GRP0    
       LDA    $BB,X   
       STA    GRP1    
       LDA    $9A     
       STA    COLUPF  
       LDA    $85     
       STA    COLUP0  
       STA    COLUP1  
       LDA    $9B     
       STA    COLUPF  
       LDA    $C5,X   
       STA    PF1     
       DEY            
       BNE    LF6F9   
       DEX            
       BPL    LF6F7   
       STA    WSYNC   
       LDA    #$00    
       STA    PF1     
       STA    GRP0    
       STA    GRP1    
       STA    NUSIZ1  
       STA    NUSIZ0  
       LDA    $81     
       STA    COLUP0  
       LDA    $82     
       STA    COLUP1  
       LDA    $83     
       STA    COLUPF  
       LDA    $CD     
       LDY    $D1     
       STA    WSYNC   
LF73F: DEY            
       BPL    LF73F   
       STA    RESP1   
       STA    HMP1    
       LDA    $CA     
       LDY    $CE     
       STA    WSYNC   
LF74C: DEY            
       BPL    LF74C   
       STA    RESP0   
       STA    HMP0    
       STA    WSYNC   
       STA    HMOVE   
       LDA    $A2     
       BEQ    LF77A   
       BNE    LF75D   
LF75D: LDY    $83     
       LDA    $A2     
       SEC            
       SBC    $80     
       BMI    LF784   
       LDX    $D4     
       CMP    #$08    
       BNE    LF76E   
       LDX    #$FF    
LF76E: TAY            
       INY            
       INY            
       LDA    ($8C),Y 
       LDY    #$01    
       JSR    LFCB8   
       BPL    LF75D   
LF77A: LDY    $84     
       LDA    $98     
       CMP    $80     
       BNE    LF784   
       LDY    $83     
LF784: STY    $9A     
       LDX    #$00    
       LDA    $97     
       SEC            
       SBC    $80     
       CMP    #$03    
       BCS    LF793   
       LDX    #$02    
LF793: STX    $99     
       INC    $80     
       STA    HMCLR   
       LDY    $9A     
       LDA    #$40    
       LDX    #$00    
       STX    PF2     
       STX    GRP1    
       STA    HMCLR   
       STA    WSYNC   
       STX    PF1     
       STA    PF0     
       STY    COLUBK  
       LDA    $CB     
       LDY    $CF     
LF7B1: DEY            
       BPL    LF7B1   
       STA    RESP1   
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       LDX    $99     
       STX    ENABL   
       LDA    #$02    
       STA    NUSIZ1  
       JMP    LF82C   
LF7C7: STA    WSYNC   
       JMP    LF7D0   
LF7CC: STA    WSYNC   
       STA    HMOVE   
LF7D0: STA    GRP1    
       STX    COLUBK  
       LDX    #$00    
       SEC            
       LDA    $97     
       SBC    $80     
       CMP    #$03    
       BCS    LF7E1   
       LDX    #$02    
LF7E1: STA    HMCLR   
       LDA    $93     
       SEC            
       SBC    $80     
       CMP    #$0F    
       BCC    LF800   
       SEC            
       SBC    #$0F    
       CMP    #$0B    
       BCC    LF7FA   
       LDA    #$00    
       STA    NUSIZ0  
       JMP    LF817   
LF7FA: TAY            
       LDA    ($86),Y 
       JMP    LF817   
LF800: CMP    #$0B    
       BCC    LF811   
       LDA    #$40    
       STA    HMP0    
       LDA    #$02    
       STA    NUSIZ0  
       LDA    #$00    
       JMP    LF81C   
LF811: TAY            
       LDA    ($86),Y 
       JMP    LF817   
LF817: STA    WSYNC   
       JMP    LF820   
LF81C: STA    WSYNC   
       STA    HMOVE   
LF820: STA    GRP0    
       STX    ENABL   
       INC    $80     
       LDA    $80     
       CMP    $A3     
       BCS    LF86C   
LF82C: LDX    $84     
       LDA    $98     
       CMP    $80     
       BNE    LF836   
       LDX    $83     
LF836: STA    HMCLR   
       LDA    $94     
       SEC            
       SBC    $80     
       CMP    #$0F    
       BCC    LF857   
       SEC            
       SBC    #$0F    
       CMP    #$0B    
       BCC    LF851   
       LDA    #$02    
       STA    NUSIZ1  
       LDA    #$00    
       JMP    LF7C7   
LF851: TAY            
       LDA    ($88),Y 
       JMP    LF7C7   
LF857: CMP    #$0B    
       BCC    LF866   
       LDA    #$CF    
       STA    HMP1    
       LDA    #$00    
       STA    NUSIZ1  
       JMP    LF7CC   
LF866: TAY            
       LDA    ($88),Y 
       JMP    LF7C7   
LF86C: LDY    $83     
       LDA    $A3     
       CMP    #$6A    
       BCC    LF87C   
       LDA    $98     
       CMP    $80     
       BEQ    LF87C   
       LDY    $84     
LF87C: LDX    #$00    
       LDA    $97     
       SEC            
       SBC    $80     
       CMP    #$03    
       BCS    LF889   
       LDX    #$02    
LF889: STX    $99     
       INC    $80     
       LDA    #$00    
       STA    WSYNC   
       STY    COLUBK  
       STA    GRP1    
       STA    GRP0    
       LDA    $CC     
       LDY    $D0     
LF89B: DEY            
       BPL    LF89B   
       STA    RESP0   
       STA    HMP0    
       LDA    #$00    
       STA    NUSIZ0  
       STA    WSYNC   
       STA    HMOVE   
       LDX    $99     
       STX    ENABL   
       JMP    LF8B1   
LF8B1: LDA    $80     
       CMP    #$6B    
       BEQ    LF8CF   
       LDA    $80     
       SEC            
       SBC    $A3     
       TAY            
       INY            
       LDX    $D4     
       CMP    #$08    
       BNE    LF8C6   
       LDX    #$FF    
LF8C6: LDA    ($8A),Y 
       LDY    #$00    
       JSR    LFCB8   
       BPL    LF8B1   
LF8CF: JSR    LFCEF   
       LDA    $9E     
       AND    #$01    
       TAX            
       STX    $99     
LF8D9: JSR    LF489   
       BNE    LF8F9   
       LDA    $A9     
       BNE    LF8E9   
       LDA    $B0     
       AND    LFFD6,X 
       BEQ    LF8EC   
LF8E9: JSR    LFD19   
LF8EC: LDA    LFFD8,X 
       AND    $B0     
       STA    $B0     
       LDA    #$00    
       STA    $A9     
       BEQ    LF8FE   
LF8F9: LDA    CXP0FB,X
       ASL            
       BMI    LF932   
LF8FE: LDA    #$00    
       STA    $AE,X   
       LDA    #$03    
       AND    $B0     
       STA    $B0     
       CPX    $99     
       BNE    LF912   
       LDA    LFE37,X 
       TAX            
       BPL    LF8D9   
LF912: LDX    $99     
       LDA    $A5,X   
       BEQ    LF928   
       LDA    $B0     
       AND    LFFD6,X 
       BEQ    LF928   
       LDA    $A5,X   
       CMP    #$0E    
       BCS    LF928   
       JMP    LF9BA   
LF928: LDA    LFFD8,X 
       AND    $B0     
       STA    $B0     
       JMP    LF9BE   
LF932: LDA    LFFD6,X 
       STA    $B0     
       LDA    #$FC    
       AND    $D7     
       BNE    LF942   
       LDA    LFF31,X 
       STA    $D7     
LF942: LDY    $AA     
       DEY            
       DEY            
       DEY            
       LDA    $97     
       SEC            
       SBC    #$03    
       CMP    $A2     
       BCC    LF962   
       ADC    #$02    
       CMP    $A3     
       BCS    LF962   
       LDA    $AE,X   
       CMP    LFECE,Y 
       BCC    LF981   
LF95D: LDA    LFFD4,X 
       BNE    LF979   
LF962: LDA    $9F,X   
       ORA    LFFDE,X 
       AND    LFFDA,X 
       STA    $9F,X   
       LDA    $A5,X   
       BNE    LF976   
       LDA    $9F,X   
       ORA    #$30    
       STA    $9F,X   
LF976: LDA    LFFEE,X 
LF979: ORA    $B0     
       STA    $B0     
       LDA    #$00    
       STA    $A9     
LF981: LDA    $AE,X   
       CMP    LFFD1,Y 
       BCS    LF997   
       INC    $AE,X   
       LDA    $A5,X   
       CMP    $AE,X   
       BNE    LF9BE   
       LDA    LFFD1,Y 
       STA    $AE,X   
       BNE    LF95D   
LF997: LDA    $9F,X   
       AND    #$F0    
       STA    $A1     
       CMP    #$F0    
       BEQ    LF9BA   
       LDA    $B0     
       AND    #$C0    
       BEQ    LF9AF   
       LDA    $A1     
       AND    #$30    
       CMP    #$30    
       BEQ    LF9BA   
LF9AF: LDY    #$02    
       JSR    LFD1B   
       LDA    $E3     
       AND    #$EF    
       STA    $E3     
LF9BA: LDA    #$22    
       STA    $A9     
LF9BE: LDA    $A9     
       BNE    LF9C8   
       LDA    #$F0    
       STA    $A1     
       BNE    LFA1B   
LF9C8: DEC    $A9     
       BEQ    LFA1B   
       CMP    #$12    
       BCS    LF9DC   
       LDY    #$06    
LF9D2: CMP    LFFCA,Y 
       BEQ    LF9DC   
       DEY            
       BPL    LF9D2   
       BMI    LFA08   
LF9DC: LDX    #$03    
       LDY    $D7     
LF9E0: TYA            
       ASL            
       TAY            
       BCC    LF9EF   
       LDA    $A1     
       ORA    LFFDE,X 
       AND    LFFDA,X 
       STA    $A1     
LF9EF: DEX            
       BPL    LF9E0   
       LDA    $A1     
       ASL            
       BCS    LF9F9   
       INC    $92     
LF9F9: ASL            
       BCS    LF9FE   
       DEC    $92     
LF9FE: ASL            
       BCS    LFA03   
       INC    $97     
LFA03: ASL            
       BCS    LFA08   
       DEC    $97     
LFA08: LDA    $97     
       SEC            
       SBC    #$10    
       CMP    #$4F    
       BCS    LFA2E   
       LDA    $A9     
       CMP    #$18    
       BCC    LFA1B   
       AND    #$03    
       BEQ    LF9BE   
LFA1B: LDX    #$01    
LFA1D: LDA    $B0     
       AND    LFFD4,X 
       BEQ    LFA2B   
       LDA    $9F,X   
       AND    LFFDE,X 
       BNE    LFA5E   
LFA2B: DEX            
       BPL    LFA1D   
LFA2E: LDY    #$04    
       LDA    $A4     
LFA32: CMP    LFFB6,Y 
       BCS    LFA3A   
       DEY            
       BPL    LFA32   
LFA3A: LDA    LFFC0,Y 
       CMP    $97     
       BCS    LFA54   
       ADC    LFFBB,Y 
       CMP    $97     
       BCS    LFA5E   
       DEC    $A4     
       DEC    $98     
       DEC    $97     
       DEC    $93     
       DEC    $94     
       BCC    LFA5E   
LFA54: INC    $A4     
       INC    $98     
       INC    $97     
       INC    $93     
       INC    $94     
LFA5E: JSR    LFD45   
       LDA    $A4     
       SEC            
       SBC    #$A0    
       CMP    #$0A    
       BCC    LFA6C   
       LDA    #$00    
LFA6C: STA    $A2     
       LDA    $A4     
       CLC            
       ADC    #$43    
       CMP    #$6A    
       BCC    LFA79   
       LDA    #$6A    
LFA79: STA    $A3     
       LDA    $B5     
       CMP    #$64    
       BEQ    LFAA6   
       LDX    #$01    
       CMP    #$0B    
       BNE    LFA89   
       STX    $B5     
LFA89: INX            
LFA8A: DEC    $B3,X   
       BPL    LFAA6   
       CPX    #$00    
       BNE    LFA9F   
       JSR    LFD19   
       LDA    #$64    
       STA    $B5     
       STX    $B3     
       STX    $B4     
       BNE    LFAA6   
LFA9F: LDA    #$3B    
       STA    $B3,X   
       DEX            
       BPL    LFA8A   
LFAA6: LDA    $9E     
       AND    #$03    
       TAX            
       LDA    LFF7B,X 
       STA    $99     
       LDY    #$00    
       STY    $9A     
       LDA    $B1,X   
       JMP    LFABC   
LFAB9: INY            
       SBC    #$0A    
LFABC: CMP    #$0A    
       BCS    LFAB9   
       STY    $9B     
       JSR    LFD3A   
LFAC5: LDA    LFF7F,X 
       AND    #$0F    
       STA    ($99),Y 
       INX            
       DEY            
       BPL    LFAC5   
       LDA    $99     
       CMP    #$BB    
       BEQ    LFADA   
       LDA    $9B     
       BEQ    LFAEC   
LFADA: LDA    $9B     
       JSR    LFD3A   
LFADF: LDA    LFF7F,X 
       AND    #$F0    
       ORA    ($99),Y 
       STA    ($99),Y 
       INX            
       DEY            
       BPL    LFADF   
LFAEC: LDA    $99     
       CMP    #$C0    
       BEQ    LFAF9   
       CMP    #$C5    
       BEQ    LFB0B   
       JMP    LFB1A   
LFAF9: LDX    #$04    
LFAFB: LDA    $C0,X   
       ASL            
       ASL            
       ASL            
       ORA    LFFB1,X 
       STA    $C0,X   
       DEX            
       BPL    LFAFB   
       JMP    LFB1A   
LFB0B: LDX    #$04    
LFB0D: LDA    $C5,X   
       LDY    #$07    
LFB11: ROL            
       ROR    $C5,X   
       DEY            
       BPL    LFB11   
       DEX            
       BPL    LFB0D   
LFB1A: LDA    $DD     
       CMP    #$1C    
       BCC    LFB3E   
       LDA    $D9     
       AND    #$30    
       BNE    LFB3E   
       LDA    $DA     
       CMP    #$03    
       BEQ    LFB3E   
       LDA    $E2     
       BNE    LFB3E   
       BIT    $95     
       BPL    LFB3E   
       LDA    $E3     
       AND    #$10    
       BEQ    LFB41   
       LDA    #$F1    
       STA    $E6     
LFB3E: JMP    LFCAE   
LFB41: LDX    #$01    
       JSR    LF4B6   
       LDA    $E9     
       BEQ    LFB4E   
       DEC    $E9     
       BPL    LFB52   
LFB4E: LDA    #$81    
       STA    $E7,X   
LFB52: LDA    $B0     
       AND    LFFD4,X 
       BEQ    LFBC1   
       BIT    $E3     
       BMI    LFBBE   
       LDA    #$C0    
       STA    $EB     
       LDY    #$71    
       BIT    $95     
       BVS    LFB69   
       LDY    #$B1    
LFB69: STY    $9C     
       JSR    LFCDE   
       LDA    $E3     
       ORA    #$80    
       STA    $E3     
       LDA    $E3     
       AND    #$20    
       BEQ    LFB91   
       LDY    #$71    
       BIT    $95     
       BVS    LFB82   
       LDY    #$B1    
LFB82: STY    $9C     
       LDA    LFEF2,X 
       STA    $9D     
       JSR    LFCE8   
       LDA    #$08    
       JSR    LF4AF   
LFB91: LDA    $9E     
       LSR            
       LSR            
       LSR            
       TAY            
       AND    #$03    
       BNE    LFBA3   
       TYA            
       LSR            
       LSR            
       ADC    #$07    
       JSR    LF4AF   
LFBA3: LDA    $A4     
       SEC            
       SBC    #$25    
       CMP    #$76    
       BCC    LFBBE   
       LDY    #$71    
       LDA    $92     
       CMP    #$4D    
       BCC    LFBB6   
       LDY    #$B1    
LFBB6: STY    $9C     
       JSR    LFCDE   
       JSR    LF4AD   
LFBBE: JMP    LFCAE   
LFBC1: LDA    $E3     
       AND    #$5F    
       STA    $E3     
       LDA    $B0     
       AND    LFFEE,X 
       BEQ    LFC04   
       LDA    $9E     
       AND    #$3F    
       BNE    LFBE0   
       LDY    #$71    
       LDA    $8E,X   
       CMP    #$47    
       BCC    LFBDE   
       LDY    #$B1    
LFBDE: STY    $E6     
LFBE0: LDA    $E6     
       ORA    #$31    
       STA    $E6     
       LDA    $9E     
       BNE    LFC01   
       LDY    #$02    
       LDA    $8E,X   
LFBEE: CMP    LFEEC,Y 
       BCS    LFBF6   
       DEY            
       BPL    LFBEE   
LFBF6: LDA    LFEEF,Y 
       STA    $9C     
       JSR    LFCDE   
       JSR    LF4AD   
LFC01: JMP    LFCAE   
LFC04: LDY    #$00    
       LDA    $93,X   
       SEC            
       SBC    #$0B    
       CMP    $97     
       BPL    LFC11   
       LDY    #$02    
LFC11: LDA    $8E,X   
       CLC            
       ADC    LFED7,X 
       CMP    $92     
       BPL    LFC1C   
       INY            
LFC1C: BIT    $D9     
       BVS    LFC24   
       INY            
       INY            
       INY            
       INY            
LFC24: LDA    LFEC6,Y 
       TAY            
       LDA    $97     
       CMP    #$1C    
       BCS    LFC32   
       LDA    LFEE5,X 
       TAY            
LFC32: CMP    #$51    
       BCC    LFC3A   
       LDA    LFEE7,X 
       TAY            
LFC3A: LDA    $92     
       CMP    #$20    
       BCS    LFC4A   
       CPY    #$05    
       BNE    LFC45   
       DEY            
LFC45: CPY    #$02    
       BNE    LFC4A   
       DEY            
LFC4A: CMP    #$71    
       BCC    LFC58   
       CPY    #$04    
       BNE    LFC53   
       INY            
LFC53: CPY    #$01    
       BNE    LFC58   
       INY            
LFC58: DEC    $E4     
       BPL    LFCAE   
       LDA    $B2     
       SEC            
       SBC    $B1     
       ASL            
       CLC            
       ADC    $EA     
       BPL    LFC69   
       LDA    #$00    
LFC69: STA    $E4     
       LDA    $B0     
       AND    #$C0    
       BEQ    LFC75   
       LDA    #$F1    
       BMI    LFC8B   
LFC75: LDA    $93,X   
       SEC            
       SBC    LFED9,Y 
       CMP    $97     
       BEQ    LFC85   
       BPL    LFC89   
       LDA    #$D1    
       BMI    LFC8B   
LFC85: LDA    #$F1    
       BMI    LFC8B   
LFC89: LDA    #$E1    
LFC8B: STA    $9D     
       LDA    $8E,X   
       CLC            
       ADC    LFEDF,Y 
       CMP    $92     
       BEQ    LFC9D   
       BPL    LFCA1   
       LDA    #$71    
       BPL    LFCA3   
LFC9D: LDA    #$F1    
       BMI    LFCA3   
LFCA1: LDA    #$B1    
LFCA3: EOR    $EB     
       STA    $9C     
       JSR    LFCE8   
       LDA    #$00    
       STA    $EB     
LFCAE: LDA    INTIM   
       BNE    LFCAE   
       STA    WSYNC   
       JMP    LF017   
LFCB8: STA    WSYNC   
       STA.wy $001B,Y 
       STX    PF2     
       LDA    $84     
       STA    COLUBK  
       LDA    #$CF    
       STA    PF0     
       LDX    #$FF    
       STX    PF1     
       INX            
       LDA    $97     
       SEC            
       SBC    $80     
       CMP    #$03    
       BCS    LFCD7   
       LDX    #$02    
LFCD7: INC    $80     
       STA    WSYNC   
       STX    ENABL   
       RTS            

LFCDE: LDA    #$D1    
       BIT    $D9     
       BVC    LFCE6   
       LDA    #$E1    
LFCE6: STA    $9D     
LFCE8: LDA    $9C     
       AND    $9D     
       STA    $E6     
       RTS            

LFCEF: STA    WSYNC   
       LDA    #$2A    
       STA    TIM64T  
       LDA    #$02    
       STA    VBLANK  
       RTS            

LFCFB: STA    $87     
       STA    $89     
       STA    $8B     
       STA    $8D     
       LDA    #$00    
       STA    COLUBK  
       STA    CXCLR   
       STA    PF0     
       STA    PF1     
       STA    PF2     
       STA    GRP0    
       STA    GRP1    
LFD13: LDA    INTIM   
       BNE    LFD13   
       RTS            

LFD19: LDY    #$03    
LFD1B: CPY    $DA     
       BCC    LFD27   
       STY    $DA     
       DEY            
       LDA    LFE30,Y 
       STA    $DB     
LFD27: RTS            

LFD28: LDY    #$01    
       LDX    #$01    
LFD2C: JSR    LF4B6   
       LDA    $81,X   
       STA.wy $009A,Y 
       LDX    #$00    
       DEY            
       BPL    LFD2C   
       RTS            

LFD3A: STA    $9C     
       ASL            
       ASL            
       CLC            
       ADC    $9C     
       TAX            
       LDY    #$04    
       RTS            

LFD45: LDA    $D8     
       STA    $99     
       LDA    $D7     
       AND    #$03    
       STA    $D7     
       LDA    #$00    
       STA    $9A     
       STA    $9B     
       STA    $9C     
       STA    $D8     
       LDY    #$0C    
       LDX    #$A0    
       LDA    $92     
       CMP    #$0D    
       BCC    LFD88   
       LDY    #$90    
       LDX    #$50    
       LDA    $92     
       CMP    #$90    
       BCS    LFD88   
       LDX    #$20    
       LDA    $D5     
       SEC            
       SBC    #$04    
       STA    $9D     
       INC    $9D     
       CMP    $92     
       BCS    LFD8A   
       LDX    #$10    
       LDA    $D6     
       STA    $9D     
       CMP    $92     
       BCC    LFD8A   
       BCS    LFD8C   
LFD88: STY    $92     
LFD8A: STX    $9A     
LFD8C: LDX    #$01    
       LDA    $A2     
       CMP    #$09    
       BNE    LFDA0   
       LDY    #$03    
       LDA    $97     
LFD98: CMP    LFFE2,Y 
       BCC    LFDB5   
       DEY            
       BPL    LFD98   
LFDA0: DEX            
       LDA    $A3     
       CMP    #$62    
       BNE    LFDBA   
       LDY    #$03    
       LDA    $97     
LFDAB: CMP    LFFE6,Y 
       BCS    LFDB5   
       DEY            
       BPL    LFDAB   
       BMI    LFDBA   
LFDB5: LDA    LFFEC,Y 
       STA    $9B,X   
LFDBA: CPY    #$03    
       BNE    LFDC3   
       LDA    LFFF0,X 
       STA    $97     
LFDC3: LDX    #$01    
LFDC5: LDA    $9B,X   
       CMP    #$20    
       BCS    LFDFE   
       DEX            
       BPL    LFDC5   
       LDA    $9A     
       AND    #$C0    
       ORA    $D7     
       STA    $D7     
       LDX    #$01    
LFDD8: LDA    $9B,X   
       CMP    #$10    
       BEQ    LFDE3   
       DEX            
       BPL    LFDD8   
       BMI    LFE2F   
LFDE3: LDA    $9A     
       AND    #$30    
       BEQ    LFE2F   
       LDA    $A1     
       AND    LFFEC,X 
       BEQ    LFE2F   
       LDA    LFFEA,X 
       STA    $97     
       LDA    LFFEC,X 
       ORA    $D7     
       STA    $D7     
       BNE    LFE2F   
LFDFE: TXA            
       ORA    $9B,X   
       STA    $D8     
       LDA    $9A     
       AND    #$30    
       BEQ    LFE0D   
       LDA    $9D     
       STA    $92     
LFE0D: LDA    $99     
       AND    #$20    
       BEQ    LFE2F   
       LDA    $D8     
       AND    #$40    
       BEQ    LFE2F   
       TXA            
       ORA    $D9     
       STA    $D9     
       JSR    LF4B6   
       LDA    LFFEC,X 
       STA    $E3     
       JSR    LF4BA   
       INC    $B1,X   
       LDA    #$96    
       STA    $E2     
LFE2F: RTS            

LFE30: .byte $02,$07
LFE32: .byte $3F,$1F,$0F,$07,$03
LFE37: .byte $01,$00
LFE39: .byte $4B,$47,$43,$3F,$3B,$37,$33
LFE40: .byte $54,$58,$5C,$60,$64,$68,$6C,$01,$01,$01,$01,$01,$01,$01,$01,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$01,$02,$04,$01,$02,$00,$00,$00,$00
       .byte $80,$40,$00,$80,$00,$00,$00,$01,$22,$04,$29,$12,$04,$09,$00,$00
       .byte $94,$41,$20,$90,$40,$20,$00,$10,$80,$44,$28,$52,$04,$48,$14,$02
       .byte $04,$4A,$20,$14,$40,$28,$90,$80,$08,$40,$20,$50,$80,$28,$12,$08
       .byte $05,$02,$00,$12,$05,$48,$10,$48,$04,$41,$10,$00,$80,$22,$08,$02
       .byte $48,$02,$20,$01,$80,$04,$10
LFEA7: .byte $00,$07
LFEA9: .byte $64,$23,$20,$1D,$1A,$17
LFEAF: .byte $47,$57,$67,$77,$87,$97
LFEB5: .byte $0F,$0D,$0B,$09,$07,$05,$03,$01
LFEBD: .byte $11,$44,$22,$88,$FF,$04,$42
LFEC4: .byte $FD,$FE
LFEC6: .byte $00,$00,$01,$02,$04,$05,$03,$03
LFECE: .byte $02,$02,$01
LFED1: .byte $14,$4B
LFED3: .byte $06,$04,$02,$03
LFED7: .byte $02,$10
LFED9: .byte $13,$04,$04,$04,$13,$13
LFEDF: .byte $00,$EF,$0F,$0F,$00,$1F
LFEE5: .byte $00,$04
LFEE7: .byte $01,$03
LFEE9: .byte $04,$08,$10
LFEEC: .byte $00,$3B,$52
LFEEF: .byte $B1,$F1,$71
LFEF2: .byte $D1,$E1
LFEF4: .byte $07,$0F,$0C
LFEF7: .byte $19,$10,$02
LFEFA: .byte $00,$02,$04
LFEFD: .byte $06,$03,$01,$02,$04,$08,$08,$00,$00,$00,$08
LFF08: .byte $07,$08
LFF0A: .byte $31,$8E,$90,$92,$94
LFF0F: .byte $0C,$08,$05,$03,$01
LFF14: .byte $07,$0B
LFF16: .byte $00,$03,$01,$02
LFF1A: .byte $FF,$CF,$0F
LFF1D: .byte $05,$04,$03
LFF20: .byte $8F,$0D
LFF22: .byte $0D,$61
LFF24: .byte $22,$11
LFF26: .byte $00,$82
LFF28: .byte $FF,$01,$FF
LFF2B: .byte $01,$01,$FF,$FF
LFF2F: .byte $12,$21
LFF31: .byte $01,$02,$00,$00,$00,$00,$7E,$FF,$7E,$00,$00,$00,$00,$30,$7E,$FF
       .byte $7E,$0C,$00,$00,$00,$0C,$7E,$FF,$7E,$30,$00,$00,$00,$30,$7E,$FF
       .byte $7E,$0C,$0C,$0C,$00,$30,$30,$30,$7E,$FF,$7E,$0C,$00,$00,$00
LFF60: .byte $C0,$00,$80
LFF63: .byte $00,$69,$71,$78
LFF67: .byte $0C,$09,$06,$03
LFF6B: .byte $D0,$E0,$D0,$E0
LFF6F: .byte $33,$43,$33,$3B,$55,$4B,$55,$4B
LFF77: .byte $8D,$7D
LFF79: .byte $11,$01
LFF7B: .byte $B6,$C5,$C0,$BB
LFF7F: .byte $EE,$AA,$AA,$AA,$EE,$44,$CC,$44,$44,$EE,$EE,$22,$EE,$88,$EE,$EE
       .byte $22,$66,$22,$EE,$AA,$AA,$EE,$22,$22,$EE,$88,$EE,$22,$EE,$88,$88
       .byte $EE,$AA,$EE,$EE,$22,$22,$22,$22,$EE,$AA,$EE,$AA,$EE,$EE,$AA,$EE
       .byte $22,$22
LFFB1: .byte $00,$04,$00,$04,$00
LFFB6: .byte $1F,$20,$33,$95,$A9
LFFBB: .byte $3F,$03,$14,$03,$41
LFFC0: .byte $2D,$2D,$2D,$3E
LFFC4: .byte $00,$14,$92,$AA,$DA,$EF
LFFCA: .byte $02,$05,$08,$0A,$0C,$0E,$10
LFFD1: .byte $12,$0C,$09
LFFD4: .byte $04,$08
LFFD6: .byte $01,$02
LFFD8: .byte $FE,$FD
LFFDA: .byte $E0,$D0,$B0,$70
LFFDE: .byte $20,$10,$80,$40
LFFE2: .byte $0E,$0B,$09,$05
LFFE6: .byte $60,$63,$65,$68
LFFEA: .byte $60,$0D
LFFEC: .byte $10,$20
LFFEE: .byte $40,$80
LFFF0: .byte $68,$04
LFFF2: .byte $44,$D4,$0E,$56,$2F,$04,$0A,$0E,$08,$0E,$00,$F0
LFFFE: .byte $62,$0C
