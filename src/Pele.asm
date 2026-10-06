; Disassembly of roms/Pele.bin
; Disassembled Tue Oct  6 15:22:41 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Pele.bin
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
       JSR    LF4A3   
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
       LDA    #$2C    
       STA    TIM64T  
       LDA    $9E     
       AND    #$03    
       TAX            
       LDA    LFF4A,X 
       STA    $95     
       LDA    $E2     
       BEQ    LF073   
       BIT    $95     
       BPL    LF051   
       DEC    $E2     
LF051: LDA    $E2     
       BNE    LF05D   
       JSR    LF502   
       JSR    LFCFF   
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
LF070: JMP    LF419   
LF073: LDA    SWCHB   
       AND    #$02    
       BEQ    LF086   
       LDA    SWCHB   
       AND    #$01    
       BNE    LF0B1   
       JSR    LF4A0   
       BEQ    LF0B1   
LF086: LDA    #$10    
       STA    $D9     
       INC    $DE     
       LDA    $DE     
       CMP    #$1E    
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
LF0BE: JSR    LF497   
       LDY    $D2     
       LDA    SWCHB   
       AND    LFFD6,X 
       BEQ    LF0CD   
       INY            
       INY            
LF0CD: STY    $D3     
       LDA    LFE18,Y 
       STA    $D4     
       LDA    LFE1F,Y 
       STA    $D5     
       LDA    LFE26,Y 
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
       JSR    LF497   
       LDA    INPT4,X 
       AND    #$80    
       TAY            
       JSR    LF497   
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
       BNE    LF133   
       LDY    $AA     
       LDA    $9F,X   
       AND    LFFC6,X 
       BEQ    LF12C   
       DEY            
LF12C: DEY            
       DEY            
       LDA    LFFAA,Y 
       STA    $AB,X   
LF133: LSR            
       STA    $AB,X   
       BCC    LF188   
       LDA    $9F,X   
       BPL    LF141   
       ASL            
       BPL    LF14E   
       BMI    LF159   
LF141: LDA    $B0     
       AND    LFFBC,X 
       BEQ    LF14A   
       INC    $92     
LF14A: INC    $8E,X   
       BNE    LF159   
LF14E: LDA    $B0     
       AND    LFFBC,X 
       BEQ    LF157   
       DEC    $92     
LF157: DEC    $8E,X   
LF159: LDA    $9F,X   
       ASL            
       ASL            
       BPL    LF164   
       ASL            
       BPL    LF177   
       BMI    LF188   
LF164: LDA    $B0     
       AND    LFFBC,X 
       BEQ    LF173   
       LDA    $B0     
       AND    #$40    
       BNE    LF173   
       INC    $97     
LF173: INC    $93,X   
       BNE    LF188   
LF177: LDA    $B0     
       AND    LFFBC,X 
       BEQ    LF186   
       LDA    $B0     
       AND    #$80    
       BNE    LF186   
       DEC    $97     
LF186: DEC    $93,X   
LF188: DEX            
       BPL    LF11E   
       JSR    LFD2B   
       LDX    #$01    
LF190: LDA    $9F,X   
       AND    #$C0    
       STA    $99     
       CMP    #$C0    
       BNE    LF19E   
       BIT    $95     
       BMI    LF1BA   
LF19E: LDY    #$B0    
       LDA    $92     
       CLC            
       ADC    #$01    
       CMP    $90,X   
       BEQ    LF1BA   
       BCC    LF1AD   
       LDY    #$70    
LF1AD: TYA            
       AND    $99     
       ASL            
       BCS    LF1B5   
       INC    $90,X   
LF1B5: ASL            
       BCS    LF1BA   
       DEC    $90,X   
LF1BA: LDA    $90,X   
       SEC            
       SBC    #$01    
       CMP    $D6     
       BCC    LF1C7   
       DEC    $90,X   
       BNE    LF1BA   
LF1C7: ADC    #$02    
       CMP    $D5     
       BCS    LF1D1   
       INC    $90,X   
       BNE    LF1BA   
LF1D1: DEX            
       BPL    LF190   
       BIT    $95     
       BVC    LF201   
       LDX    #$01    
       LDA    $97     
       SEC            
       SBC    #$0A    
LF1DF: CMP    #$03    
       BCC    LF1EC   
       DEX            
       BMI    LF201   
       SEC            
       SBC    #$45    
       JMP    LF1DF   
LF1EC: LDA    $92     
       CLC            
       ADC    #$03    
       SEC            
       SBC    $90,X   
       CMP    #$04    
       BCS    LF201   
       DEX            
       BMI    LF1FF   
       DEC    $97     
       BNE    LF201   
LF1FF: INC    $97     
LF201: LDX    #$01    
LF203: LDA    $A2     
       CLC            
       ADC    #$19    
       CMP    $93,X   
       BCC    LF20E   
       STA    $93,X   
LF20E: LDA    $A3     
       CLC            
       ADC    #$01    
       CMP    $93,X   
       BCS    LF219   
       STA    $93,X   
LF219: LDA    LFF63,X 
       CMP    $8E,X   
       BCC    LF222   
       STA    $8E,X   
LF222: LDA    LFF61,X 
       CMP    $8E,X   
       BCS    LF22B   
       STA    $8E,X   
LF22B: DEX            
       BEQ    LF203   
       LDA    $9E     
       AND    #$01    
       TAX            
       LDA    $E7,X   
       BPL    LF26E   
       LDA    #$00    
       STA    $A5,X   
LF23B: LDA    $9F,X   
       CMP    #$F0    
       BCC    LF247   
       LDY    #$00    
       STY    $A7,X   
       BEQ    LF29B   
LF247: LDA    $A7,X   
       BNE    LF24F   
       LDA    #$10    
       STA    $A7,X   
LF24F: DEC    $A7,X   
       LDA    $A7,X   
       CMP    #$05    
       BEQ    LF25D   
       CMP    #$0D    
       BEQ    LF25D   
       BNE    LF262   
LF25D: LDY    #$01    
       JSR    LFD01   
LF262: LDY    #$03    
LF264: LDA    $A7,X   
       CMP    LFF51,Y 
       BCC    LF29B   
       DEY            
       BPL    LF264   
LF26E: LDA    #$10    
       STA    $A7,X   
       LDA    $A5,X   
       CMP    #$10    
       BCS    LF23B   
       INC    $A5,X   
       LDA    $93,X   
       CLC            
       ADC    #$64    
       SEC            
       SBC    $97     
       LDY    #$03    
LF284: CMP    LFF4D,Y 
       BCS    LF28C   
       DEY            
       BPL    LF284   
LF28C: LDA    $9F,X   
       CMP    #$F0    
       BCC    LF297   
       LDA    LFF55,Y 
       STA    $9F,X   
LF297: INY            
       INY            
       INY            
       INY            
LF29B: CPX    #$00    
       BEQ    LF2A1   
       LDX    #$02    
LF2A1: LDA    LFF59,Y 
       STA    $86,X   
       CMP    #$35    
       BNE    LF2AC   
       LDA    #$3F    
LF2AC: STA    $8A,X   
       LDA    $DB     
       BEQ    LF2E7   
       DEC    $DB     
       LDY    $DA     
       DEY            
       LDA    LFEDC,Y 
       STA    AUDC0   
       LDA    LFEDF,Y 
       STA    AUDF0   
       CPY    #$02    
       BNE    LF2D9   
       JSR    LF47F   
       LDA    #$00    
       STA    $A9     
       STA    $DF     
       STA    $96     
       LDA    $9E     
       AND    #$01    
       CLC            
       ADC    #$09    
       BNE    LF2DF   
LF2D9: LDA    LFEE2,Y 
       CLC            
       ADC    $DB     
LF2DF: TAY            
       LDA    LFEE5,Y 
       STA    AUDV0   
       BPL    LF357   
LF2E7: LDY    $DA     
       STA    $DA     
       STA    AUDV0   
       CPY    #$03    
       BNE    LF357   
       JSR    LF483   
       LDA    $B4     
       CLC            
       ADC    $B3     
       BNE    LF31B   
       STA    $D7     
       BIT    $D9     
       BVC    LF30A   
       LDA    #$60    
       STA    $D9     
       JSR    LF47F   
       BNE    LF31B   
LF30A: JSR    LF4B3   
       LDA    #$40    
       STA    $D9     
       LDA    #$20    
       STA    $E3     
       JSR    LF4FE   
       JSR    LFCFF   
LF31B: LDX    #$01    
LF31D: LDA    $D7     
       CMP    LFF19,X 
       BNE    LF32D   
       LDA    LFF1B,X 
       STA    $97     
       LDA    #$4D    
       STA    $92     
LF32D: CMP    LFF0E,X 
       BNE    LF354   
       LDY    #$01    
       LDA    $92     
       CMP    #$4D    
       BCC    LF33B   
       DEY            
LF33B: LDA    LFF0A,Y 
       STA    $92     
       STA    $E1     
       LDA    LFF0C,X 
       STA    $97     
       STA    $E9     
       TYA            
       CLC            
       ADC    LFF10,X 
       STA    $E0     
       LDA    #$5A    
       STA    $DF     
LF354: DEX            
       BPL    LF31D   
LF357: LDA    $DF     
       BNE    LF35F   
       STA    $E0     
       BEQ    LF3AA   
LF35F: LDX    #$01    
       BIT    $E0     
       BMI    LF366   
       DEX            
LF366: LDA    $E0     
       AND    #$03    
       TAY            
       LDA    $DF     
       CMP    #$5A    
       BCC    LF377   
       LDA    $E7,X   
       BPL    LF38B   
       BMI    LF3AA   
LF377: LDA    $E7,X   
       BPL    LF381   
       LDA    $E0     
       ORA    #$40    
       STA    $E0     
LF381: LDA    $E1     
       CLC            
       ADC    LFF12,Y 
       STA    $E1     
       STA    $92     
LF38B: DEC    $DF     
       LDA    CXP0FB,X
       LDX    #$00    
       ASL            
       BPL    LF396   
       STX    $DF     
LF396: STX    $A9     
       LDA    $E9     
       BIT    $E0     
       BVS    LF3A8   
       BIT    $95     
       BMI    LF3A8   
       CLC            
       ADC    LFF15,Y 
       STA    $E9     
LF3A8: STA    $97     
LF3AA: LDA    $D9     
       AND    #$10    
       BEQ    LF3C4   
       JSR    LF47F   
       LDA    #$64    
       STA    $B5     
       LDX    #$02    
       LDA    $DD     
       CMP    #$1C    
       BCC    LF3C0   
       DEX            
LF3C0: STX    $B2     
       STA    $B1     
LF3C4: LDX    #$FF    
       LDY    #$00    
       LDA    $D9     
       AND    #$10    
       BEQ    LF3D2   
       LDY    $96     
       LDX    #$F7    
LF3D2: STY    $99     
       STX    $9A     
       LDY    #$04    
       LDX    #$04    
       LDA    SWCHB   
       AND    #$08    
       BNE    LF3E3   
       LDX    #$09    
LF3E3: LDA    LFFDA,X 
       EOR    $99     
       AND    $9A     
       STA.wy $0081,Y 
       DEX            
       DEY            
       BPL    LF3E3   
       BIT    $D9     
       BVC    LF3FD   
       LDX    $81     
       LDY    $82     
       STX    $82     
       STY    $81     
LF3FD: LDA    $DA     
       CMP    #$03    
       BNE    LF416   
       LDX    #$01    
LF405: JSR    LFC89   
       BNE    LF413   
       LDA    $9E     
       AND    #$0F    
       LSR            
       ORA    $81,X   
       STA    $81,X   
LF413: DEX            
       BPL    LF405   
LF416: JMP    LF47C   
LF419: LDA    $9E     
       AND    #$01    
       TAX            
       DEC    $9F,X   
       BPL    LF43D   
       LDA    $9E     
       LSR            
       AND    #$03    
       TAY            
       LDA    LFEBB,Y 
       STA    $AE,X   
       LDA    #$48    
       STA    $AB,X   
       LDA    $9E     
       CLC            
       ADC    LFE91,X 
       AND    #$07    
       ADC    #$2A    
       STA    $9F,X   
LF43D: LDY    #$05    
       LDA    $9F,X   
LF441: CMP    LFE93,Y 
       BCC    LF449   
       DEY            
       BPL    LF441   
LF449: LDA    LFE99,Y 
       STA    $86     
       ADC    #$08    
       STA    $88     
       LDA    $AE,X   
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    $AB,X   
       CLC            
       ADC    LFEAE,Y 
       STA    $AB,X   
       STA    $93     
       LDY    #$04    
       LDA    $9F,X   
       CMP    #$12    
       BCS    LF46D   
       AND    #$03    
       TAY            
LF46D: LDA    LFEA7,Y 
       STA    $E1     
       LDA    LFEB9,X 
       STA    $8E     
       CLC            
       ADC    #$08    
       STA    $8F     
LF47C: JMP    LF53E   
LF47F: LDA    #$F1    
       BNE    LF485   
LF483: LDA    #$F0    
LF485: STA    $E5     
       STA    $E6     
       STA    $E7     
       STA    $E8     
       RTS            

LF48E: LDA    #$10    
LF490: STA    $E9     
       LDA    #$01    
       STA    $E7,X   
       RTS            

LF497: BIT    $D9     
       BVC    LF49F   
LF49B: LDA    LFE1D,X 
       TAX            
LF49F: RTS            

LF4A0: JSR    LFCFF   
LF4A3: LDA    #$21    
       STA    CTRLPF  
       LDA    #$00    
       STA    $B1     
       STA    $B2     
       STA    $D9     
       LDA    #$10    
       STA    $E3     
LF4B3: LDA    $DD     
       CMP    #$1C    
       BCC    LF4BB   
       SBC    #$1B    
LF4BB: SEC            
       SBC    #$01    
       LDY    #$02    
LF4C0: LDX    #$03    
LF4C2: DEX            
       STA    $9C     
       SEC            
       SBC    LFFE4,Y 
       BPL    LF4C2   
       STX    $99,Y   
       LDA    $9C     
       DEY            
       BPL    LF4C0   
       LDX    $99     
       LDA    LFEE2,X 
       STA    $D2     
       LDX    $9B     
       LDA    LFF07,X 
       STA    $AA     
       STA    $B3     
       INY            
       STY    $B4     
       LDA    #$3B    
       STA    $B5     
       LDX    $9A     
       LDA    LFED1,X 
       STA    $EA     
       LDY    #$0F    
       LDA    $DD     
       CMP    #$1C    
       BCS    LF4FC   
       LDA    LFF04,X 
       TAY            
LF4FC: STY    $DC     
LF4FE: LDX    #$00    
       BEQ    LF507   
LF502: LDA    $D9     
       AND    #$01    
       TAX            
LF507: LDA    #$1E    
       CLC            
       ADC    LFF02,X 
       STA    $94     
       ADC    #$26    
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
       LDA    #$2F    
       STA    $97     
       LDA    #$64    
       STA    $A4     
       LDA    #$2E    
       STA    $98     
       LDA    #$58    
       STA    $A3     
       LDA    #$00    
       STA    $A2     
       RTS            

LF53E: LDX    #$01    
LF540: LDY    #$04    
       LDA    $E2     
       BEQ    LF572   
LF546: CMP    LFEF2,Y 
       BCS    LF554   
       DEY            
       BPL    LF546   
       LSR            
       LSR            
       STA    AUDV0,X 
       BPL    LF559   
LF554: LDA    LFEF7,Y 
       STA    AUDV0,X 
LF559: LDA    $9E     
       AND    #$03    
       TAY            
       LDA    LFEFC,X 
       CLC            
       ADC    LFEFE,Y 
       STA    AUDF0,X 
       LDA    LFEF0,X 
       STA    AUDC0,X 
       DEX            
       BPL    LF540   
       JSR    LF47F   
LF572: LDX    #$03    
LF574: LDA    #$01    
       CLC            
       ADC    $8E,X   
       LDY    #$02    
       SEC            
LF57C: INY            
       SBC    #$0F    
       BCS    LF57C   
       EOR    #$FF    
       SBC    #$06    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    $CA,X   
       STY    $CE,X   
       DEX            
       BPL    LF574   
       LDX    #$00    
       LDA    #$02    
       CLC            
       ADC    $92     
       LDY    #$02    
       SEC            
LF59A: INY            
       SBC    #$0F    
       BCS    LF59A   
       EOR    #$FF    
       SBC    #$06    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    WSYNC   
LF5A9: DEY            
       BPL    LF5A9   
       STA    RESBL,X 
       STA    HMBL,X  
       STA    WSYNC   
       STA    HMOVE   
       LDX    $E2     
       DEX            
       CPX    #$78    
       BCC    LF5BE   
       JMP    LF6AC   
LF5BE: LDA    #$0F    
       STA    COLUP1  
       LDA    $9E     
       AND    #$0E    
       LSR            
       STA    $99     
       JSR    LFD0E   
       LDA    $D9     
       AND    #$01    
       TAX            
       JSR    LF49B   
       JSR    LF497   
       LDA    $9E     
       AND    #$0F    
       ORA    $9A,X   
       STA    $9A,X   
       LDA    $CA     
       LDY    $CE     
       STA    WSYNC   
LF5E5: DEY            
       BPL    LF5E5   
       STA    RESP0   
       STA    HMP0    
       STA    WSYNC   
       LDA    $CB     
       LDY    $CF     
       STA    WSYNC   
LF5F4: DEY            
       BPL    LF5F4   
       STA    RESP1   
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$FE    
       JSR    LFCE1   
       STA    WSYNC   
       STA    VBLANK  
       LDA    #$23    
       STA    $80     
LF60C: DEC    $80     
       BMI    LF63F   
       LDA    $80     
       CMP    #$18    
       BCS    LF637   
       CMP    #$04    
       BCC    LF637   
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
LF62A: DEY            
       BPL    LF62A   
       LDA    $C5,X   
       STA    PF1     
       LDA    $9B     
       STA    COLUPF  
       BNE    LF60C   
LF637: STA    WSYNC   
       LDA    #$00    
       STA    PF1     
       BEQ    LF60C   
LF63F: INC    $80     
LF641: STA    WSYNC   
       STY    PF0     
       STA    PF1     
       STA    PF2     
       STX    COLUPF  
       INC    $80     
       LDA    $80     
       CMP    #$4E    
       BEQ    LF6A6   
       LDA    $93     
       CMP    #$46    
       BCS    LF66D   
       SEC            
       SBC    $80     
       CMP    #$08    
       BCS    LF66D   
       TAY            
       LDA    ($86),Y 
       AND    $E1     
       TAX            
       LDA    ($88),Y 
       AND    $E1     
       JMP    LF670   
LF66D: LDA    #$00    
       TAX            
LF670: STA    WSYNC   
       STA    GRP1    
       STX    GRP0    
       BEQ    LF67C   
       LDA    #$0F    
       BNE    LF67E   
LF67C: TYA            
       ASL            
LF67E: STA    COLUP0  
       LDA    $9C     
       AND    #$F0    
       LDY    $99     
       ORA    LFE9F,Y 
       TAX            
       DEY            
       BPL    LF68F   
       LDY    #$07    
LF68F: STY    $99     
       LDA    $80     
       CMP    #$04    
       BCC    LF6A1   
       CMP    #$4B    
       BCS    LF6A1   
       LDA    #$00    
       LDY    #$10    
       BNE    LF641   
LF6A1: LDA    #$FF    
       TAY            
       BNE    LF641   
LF6A6: JSR    LFCAF   
       JMP    LFC7F   
LF6AC: LDY    #$01    
LF6AE: LDX    $CF,Y   
       DEX            
       DEX            
       DEX            
       STX    $CF,Y   
       DEY            
       BPL    LF6AE   
       JSR    LFD0E   
       LDA    #$FF    
       JSR    LFCE1   
       STA    VBLANK  
       STA    HMCLR   
       STA    WSYNC   
       LDA    #$05    
       STA    NUSIZ0  
       STA    NUSIZ1  
       TAY            
LF6CD: DEY            
       BPL    LF6CD   
       STA    RESP0   
       NOP            
       STA    RESP1   
       LDX    #$04    
LF6D7: LDY    #$02    
LF6D9: STA    WSYNC   
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
       BNE    LF6D9   
       DEX            
       BPL    LF6D7   
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
LF71F: DEY            
       BPL    LF71F   
       STA    RESP1   
       STA    HMP1    
       LDA    $CA     
       LDY    $CE     
       STA    WSYNC   
LF72C: DEY            
       BPL    LF72C   
       STA    RESP0   
       STA    HMP0    
       STA    WSYNC   
       STA    HMOVE   
       LDA    $A2     
       BEQ    LF75A   
       BNE    LF73D   
LF73D: LDY    $83     
       LDA    $A2     
       SEC            
       SBC    $80     
       BMI    LF764   
       LDX    $D4     
       CMP    #$08    
       BNE    LF74E   
       LDX    #$FF    
LF74E: TAY            
       INY            
       INY            
       LDA    ($8C),Y 
       LDY    #$01    
       JSR    LFCBB   
       BPL    LF73D   
LF75A: LDY    $84     
       LDA    $98     
       CMP    $80     
       BNE    LF764   
       LDY    $83     
LF764: STY    $9A     
       LDX    #$00    
       LDA    $97     
       SEC            
       SBC    $80     
       CMP    #$03    
       BCS    LF773   
       LDX    #$02    
LF773: STX    $99     
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
LF791: DEY            
       BPL    LF791   
       STA    RESP1   
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       LDX    $99     
       STX    ENABL   
       LDA    #$02    
       STA    NUSIZ1  
       JMP    LF80C   
LF7A7: STA    WSYNC   
       JMP    LF7B0   
LF7AC: STA    WSYNC   
       STA    HMOVE   
LF7B0: STA    GRP1    
       STX    COLUBK  
       LDX    #$00    
       SEC            
       LDA    $97     
       SBC    $80     
       CMP    #$03    
       BCS    LF7C1   
       LDX    #$02    
LF7C1: STA    HMCLR   
       LDA    $93     
       SEC            
       SBC    $80     
       CMP    #$0F    
       BCC    LF7E0   
       SEC            
       SBC    #$0F    
       CMP    #$0B    
       BCC    LF7DA   
       LDA    #$00    
       STA    NUSIZ0  
       JMP    LF7F7   
LF7DA: TAY            
       LDA    ($86),Y 
       JMP    LF7F7   
LF7E0: CMP    #$0B    
       BCC    LF7F1   
       LDA    #$40    
       STA    HMP0    
       LDA    #$02    
       STA    NUSIZ0  
       LDA    #$00    
       JMP    LF7FC   
LF7F1: TAY            
       LDA    ($86),Y 
       JMP    LF7F7   
LF7F7: STA    WSYNC   
       JMP    LF800   
LF7FC: STA    WSYNC   
       STA    HMOVE   
LF800: STA    GRP0    
       STX    ENABL   
       INC    $80     
       LDA    $80     
       CMP    $A3     
       BCS    LF84C   
LF80C: LDX    $84     
       LDA    $98     
       CMP    $80     
       BNE    LF816   
       LDX    $83     
LF816: STA    HMCLR   
       LDA    $94     
       SEC            
       SBC    $80     
       CMP    #$0F    
       BCC    LF837   
       SEC            
       SBC    #$0F    
       CMP    #$0B    
       BCC    LF831   
       LDA    #$02    
       STA    NUSIZ1  
       LDA    #$00    
       JMP    LF7A7   
LF831: TAY            
       LDA    ($88),Y 
       JMP    LF7A7   
LF837: CMP    #$0B    
       BCC    LF846   
       LDA    #$CF    
       STA    HMP1    
       LDA    #$00    
       STA    NUSIZ1  
       JMP    LF7AC   
LF846: TAY            
       LDA    ($88),Y 
       JMP    LF7A7   
LF84C: LDY    $83     
       LDA    $A3     
       CMP    #$58    
       BCC    LF85C   
       LDA    $98     
       CMP    $80     
       BEQ    LF85C   
       LDY    $84     
LF85C: LDX    #$00    
       LDA    $97     
       SEC            
       SBC    $80     
       CMP    #$03    
       BCS    LF869   
       LDX    #$02    
LF869: STX    $99     
       INC    $80     
       LDA    #$00    
       STA    WSYNC   
       STY    COLUBK  
       STA    GRP1    
       STA    GRP0    
       LDA    $CC     
       LDY    $D0     
LF87B: DEY            
       BPL    LF87B   
       STA    RESP0   
       STA    HMP0    
       LDA    #$00    
       STA    NUSIZ0  
       STA    WSYNC   
       STA    HMOVE   
       LDX    $99     
       STX    ENABL   
       JMP    LF891   
LF891: LDA    $80     
       CMP    #$59    
       BEQ    LF8AF   
       LDA    $80     
       SEC            
       SBC    $A3     
       TAY            
       INY            
       LDX    $D4     
       CMP    #$08    
       BNE    LF8A6   
       LDX    #$FF    
LF8A6: LDA    ($8A),Y 
       LDY    #$00    
       JSR    LFCBB   
       BPL    LF891   
LF8AF: JSR    LFCAF   
       LDA    $9E     
       AND    #$01    
       TAX            
       STX    $99     
LF8B9: JSR    LFC89   
       BNE    LF8D9   
       LDA    $A9     
       BNE    LF8C9   
       LDA    $B0     
       AND    LFFBE,X 
       BEQ    LF8CC   
LF8C9: JSR    LFCFF   
LF8CC: LDA    LFFC0,X 
       AND    $B0     
       STA    $B0     
       LDA    #$00    
       STA    $A9     
       BEQ    LF8DE   
LF8D9: LDA    CXP0FB,X
       ASL            
       BMI    LF912   
LF8DE: LDA    #$00    
       STA    $AE,X   
       LDA    #$03    
       AND    $B0     
       STA    $B0     
       CPX    $99     
       BNE    LF8F2   
       LDA    LFE1D,X 
       TAX            
       BPL    LF8B9   
LF8F2: LDX    $99     
       LDA    $A5,X   
       BEQ    LF908   
       LDA    $B0     
       AND    LFFBE,X 
       BEQ    LF908   
       LDA    $A5,X   
       CMP    #$10    
       BCS    LF908   
       JMP    LF99A   
LF908: LDA    LFFC0,X 
       AND    $B0     
       STA    $B0     
       JMP    LF9A2   
LF912: LDA    LFFBE,X 
       STA    $B0     
       LDA    #$FC    
       AND    $D7     
       BNE    LF922   
       LDA    LFFB3,X 
       STA    $D7     
LF922: LDY    $AA     
       DEY            
       DEY            
       DEY            
       LDA    $97     
       SEC            
       SBC    #$03    
       CMP    $A2     
       BCC    LF942   
       ADC    #$02    
       CMP    $A3     
       BCS    LF942   
       LDA    $AE,X   
       CMP    LFEB6,Y 
       BCC    LF961   
LF93D: LDA    LFFBC,X 
       BNE    LF959   
LF942: LDA    $9F,X   
       ORA    LFFC6,X 
       AND    LFFC2,X 
       STA    $9F,X   
       LDA    $A5,X   
       BNE    LF956   
       LDA    $9F,X   
       ORA    #$30    
       STA    $9F,X   
LF956: LDA    LFFD6,X 
LF959: ORA    $B0     
       STA    $B0     
       LDA    #$00    
       STA    $A9     
LF961: LDA    $AE,X   
       CMP    LFFB9,Y 
       BCS    LF977   
       INC    $AE,X   
       LDA    $A5,X   
       CMP    $AE,X   
       BNE    LF9A2   
       LDA    LFFB9,Y 
       STA    $AE,X   
       BNE    LF93D   
LF977: LDA    $9F,X   
       AND    #$F0    
       STA    $A1     
       CMP    #$F0    
       BEQ    LF99A   
       LDA    $B0     
       AND    #$C0    
       BEQ    LF98F   
       LDA    $A1     
       AND    #$30    
       CMP    #$30    
       BEQ    LF99A   
LF98F: LDY    #$02    
       JSR    LFD01   
       LDA    $E3     
       AND    #$EF    
       STA    $E3     
LF99A: LDA    #$05    
       STA    $A9     
       LDA    #$00    
       STA    $AD     
LF9A2: LDA    $A9     
       BNE    LF9AC   
       LDA    #$F0    
       STA    $A1     
       BNE    LF9ED   
LF9AC: LDA    $AD     
       BNE    LF9BC   
       LDY    $A9     
       DEY            
       STY    $A9     
       LDA    LFFB1,Y 
       TAY            
       LDA    LFFAA,Y 
LF9BC: LSR            
       STA    $AD     
       BCC    LF9ED   
       LDX    #$03    
       LDY    $D7     
LF9C5: TYA            
       ASL            
       TAY            
       BCC    LF9D4   
       LDA    $A1     
       ORA    LFFC6,X 
       AND    LFFC2,X 
       STA    $A1     
LF9D4: DEX            
       BPL    LF9C5   
       LDA    $A1     
       ASL            
       BCS    LF9DE   
       INC    $92     
LF9DE: ASL            
       BCS    LF9E3   
       DEC    $92     
LF9E3: ASL            
       BCS    LF9E8   
       INC    $97     
LF9E8: ASL            
       BCS    LF9ED   
       DEC    $97     
LF9ED: JSR    LFD2B   
       LDA    $97     
       SEC            
       SBC    #$10    
       CMP    #$3D    
       BCS    LFA0B   
       LDX    #$01    
LF9FB: LDA    $B0     
       AND    LFFBC,X 
       BEQ    LFA08   
       LDA    $9F,X   
       CMP    #$F0    
       BNE    LFA3B   
LFA08: DEX            
       BPL    LF9FB   
LFA0B: LDY    #$04    
       LDA    $A4     
LFA0F: CMP    LFFA0,Y 
       BCS    LFA17   
       DEY            
       BPL    LFA0F   
LFA17: LDA    LFE8D,Y 
       CMP    $97     
       BCS    LFA31   
       ADC    LFFA5,Y 
       CMP    $97     
       BCS    LFA3B   
       DEC    $A4     
       DEC    $98     
       DEC    $97     
       DEC    $93     
       DEC    $94     
       BCC    LFA3B   
LFA31: INC    $A4     
       INC    $98     
       INC    $97     
       INC    $93     
       INC    $94     
LFA3B: LDA    $A4     
       SEC            
       SBC    #$97    
       BPL    LFA44   
       LDA    #$00    
LFA44: STA    $A2     
       LDA    $A4     
       CLC            
       ADC    #$28    
       CMP    #$58    
       BCC    LFA51   
       LDA    #$58    
LFA51: STA    $A3     
       LDA    $B5     
       CMP    #$64    
       BEQ    LFA77   
       LDX    #$02    
LFA5B: DEC    $B3,X   
       BPL    LFA77   
       CPX    #$00    
       BNE    LFA70   
       JSR    LFCFF   
       LDA    #$64    
       STA    $B5     
       STX    $B3     
       STX    $B4     
       BNE    LFA77   
LFA70: LDA    #$3B    
       STA    $B3,X   
       DEX            
       BPL    LFA5B   
LFA77: LDA    $9E     
       AND    #$03    
       TAX            
       LDA    LFF65,X 
       STA    $99     
       LDY    #$00    
       STY    $9A     
       LDA    $B1,X   
       JMP    LFA8D   
LFA8A: INY            
       SBC    #$0A    
LFA8D: CMP    #$0A    
       BCS    LFA8A   
       STY    $9B     
       JSR    LFD20   
LFA96: LDA    LFF69,X 
       AND    #$0F    
       STA    ($99),Y 
       INX            
       DEY            
       BPL    LFA96   
       LDA    $99     
       CMP    #$BB    
       BEQ    LFAAB   
       LDA    $9B     
       BEQ    LFABD   
LFAAB: LDA    $9B     
       JSR    LFD20   
LFAB0: LDA    LFF69,X 
       AND    #$F0    
       ORA    ($99),Y 
       STA    ($99),Y 
       INX            
       DEY            
       BPL    LFAB0   
LFABD: LDA    $99     
       CMP    #$C0    
       BEQ    LFACA   
       CMP    #$C5    
       BEQ    LFADC   
       JMP    LFAEB   
LFACA: LDX    #$04    
LFACC: LDA    $C0,X   
       ASL            
       ASL            
       ASL            
       ORA    LFF9B,X 
       STA    $C0,X   
       DEX            
       BPL    LFACC   
       JMP    LFAEB   
LFADC: LDX    #$04    
LFADE: LDA    $C5,X   
       LDY    #$07    
LFAE2: ROL            
       ROR    $C5,X   
       DEY            
       BPL    LFAE2   
       DEX            
       BPL    LFADE   
LFAEB: LDA    $DD     
       CMP    #$1C    
       BCC    LFB0F   
       LDA    $D9     
       AND    #$30    
       BNE    LFB0F   
       LDA    $DA     
       CMP    #$03    
       BEQ    LFB0F   
       LDA    $E2     
       BNE    LFB0F   
       BIT    $95     
       BPL    LFB0F   
       LDA    $E3     
       AND    #$10    
       BEQ    LFB12   
       LDA    #$F1    
       STA    $E6     
LFB0F: JMP    LFC7F   
LFB12: LDX    #$01    
       JSR    LF497   
       LDA    $E9     
       BEQ    LFB1F   
       DEC    $E9     
       BPL    LFB23   
LFB1F: LDA    #$81    
       STA    $E7,X   
LFB23: LDA    $B0     
       AND    LFFBC,X 
       BEQ    LFB92   
       BIT    $E3     
       BMI    LFB8F   
       LDA    #$C0    
       STA    $EB     
       LDY    #$71    
       BIT    $95     
       BVS    LFB3A   
       LDY    #$B1    
LFB3A: STY    $9C     
       JSR    LFC9E   
       LDA    $E3     
       ORA    #$80    
       STA    $E3     
       LDA    $E3     
       AND    #$20    
       BEQ    LFB62   
       LDY    #$71    
       BIT    $95     
       BVS    LFB53   
       LDY    #$B1    
LFB53: STY    $9C     
       LDA    LFEDA,X 
       STA    $9D     
       JSR    LFCA8   
       LDA    #$08    
       JSR    LF490   
LFB62: LDA    $9E     
       LSR            
       LSR            
       LSR            
       TAY            
       AND    #$03    
       BNE    LFB74   
       TYA            
       LSR            
       LSR            
       ADC    #$07    
       JSR    LF490   
LFB74: LDA    $A4     
       SEC            
       SBC    #$2E    
       CMP    #$6D    
       BCC    LFB8F   
       LDY    #$71    
       LDA    $92     
       CMP    #$4D    
       BCC    LFB87   
       LDY    #$B1    
LFB87: STY    $9C     
       JSR    LFC9E   
       JSR    LF48E   
LFB8F: JMP    LFC7F   
LFB92: LDA    $E3     
       AND    #$5F    
       STA    $E3     
       LDA    $B0     
       AND    LFFD6,X 
       BEQ    LFBD5   
       LDA    $9E     
       AND    #$3F    
       BNE    LFBB1   
       LDY    #$71    
       LDA    $8E,X   
       CMP    #$47    
       BCC    LFBAF   
       LDY    #$B1    
LFBAF: STY    $E6     
LFBB1: LDA    $E6     
       ORA    #$31    
       STA    $E6     
       LDA    $9E     
       BNE    LFBD2   
       LDY    #$02    
       LDA    $8E,X   
LFBBF: CMP    LFED4,Y 
       BCS    LFBC7   
       DEY            
       BPL    LFBBF   
LFBC7: LDA    LFED7,Y 
       STA    $9C     
       JSR    LFC9E   
       JSR    LF48E   
LFBD2: JMP    LFC7F   
LFBD5: LDY    #$00    
       LDA    $93,X   
       SEC            
       SBC    #$0B    
       CMP    $97     
       BPL    LFBE2   
       LDY    #$02    
LFBE2: LDA    $8E,X   
       CLC            
       ADC    LFEBF,X 
       CMP    $92     
       BPL    LFBED   
       INY            
LFBED: BIT    $D9     
       BVS    LFBF5   
       INY            
       INY            
       INY            
       INY            
LFBF5: LDA    LFEB0,Y 
       TAY            
       LDA    $97     
       CMP    #$1C    
       BCS    LFC03   
       LDA    LFECD,X 
       TAY            
LFC03: CMP    #$3F    
       BCC    LFC0B   
       LDA    LFECF,X 
       TAY            
LFC0B: LDA    $92     
       CMP    #$20    
       BCS    LFC1B   
       CPY    #$05    
       BNE    LFC16   
       DEY            
LFC16: CPY    #$02    
       BNE    LFC1B   
       DEY            
LFC1B: CMP    #$71    
       BCC    LFC29   
       CPY    #$04    
       BNE    LFC24   
       INY            
LFC24: CPY    #$01    
       BNE    LFC29   
       INY            
LFC29: DEC    $E4     
       BPL    LFC7F   
       LDA    $B2     
       SEC            
       SBC    $B1     
       ASL            
       CLC            
       ADC    $EA     
       BPL    LFC3A   
       LDA    #$00    
LFC3A: STA    $E4     
       LDA    $B0     
       AND    #$C0    
       BEQ    LFC46   
       LDA    #$F1    
       BMI    LFC5C   
LFC46: LDA    $93,X   
       SEC            
       SBC    LFEC1,Y 
       CMP    $97     
       BEQ    LFC56   
       BPL    LFC5A   
       LDA    #$D1    
       BMI    LFC5C   
LFC56: LDA    #$F1    
       BMI    LFC5C   
LFC5A: LDA    #$E1    
LFC5C: STA    $9D     
       LDA    $8E,X   
       CLC            
       ADC    LFEC7,Y 
       CMP    $92     
       BEQ    LFC6E   
       BPL    LFC72   
       LDA    #$71    
       BPL    LFC74   
LFC6E: LDA    #$F1    
       BMI    LFC74   
LFC72: LDA    #$B1    
LFC74: EOR    $EB     
       STA    $9C     
       JSR    LFCA8   
       LDA    #$00    
       STA    $EB     
LFC7F: LDA    INTIM   
       BNE    LFC7F   
       STA    WSYNC   
       JMP    LF017   
LFC89: LDA    $DC     
       AND    $D7     
       AND    #$FC    
       BEQ    LFC9B   
       LDA    #$03    
       AND    $D7     
       CMP    LFFB3,X 
       BNE    LFC9B   
       RTS            

LFC9B: LDA    #$FF    
       RTS            

LFC9E: LDA    #$D1    
       BIT    $D9     
       BVC    LFCA6   
       LDA    #$E1    
LFCA6: STA    $9D     
LFCA8: LDA    $9C     
       AND    $9D     
       STA    $E6     
       RTS            

LFCAF: STA    WSYNC   
       LDA    #$24    
       STA    TIM64T  
       LDA    #$02    
       STA    VBLANK  
       RTS            

LFCBB: STA    WSYNC   
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
       BCS    LFCDA   
       LDX    #$02    
LFCDA: INC    $80     
       STA    WSYNC   
       STX    ENABL   
       RTS            

LFCE1: STA    $87     
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
LFCF9: LDA    INTIM   
       BNE    LFCF9   
       RTS            

LFCFF: LDY    #$03    
LFD01: CPY    $DA     
       BCC    LFD0D   
       STY    $DA     
       DEY            
       LDA    LFE16,Y 
       STA    $DB     
LFD0D: RTS            

LFD0E: LDY    #$01    
       LDX    #$01    
LFD12: JSR    LF497   
       LDA    $81,X   
       STA.wy $009A,Y 
       LDX    #$00    
       DEY            
       BPL    LFD12   
       RTS            

LFD20: STA    $9C     
       ASL            
       ASL            
       CLC            
       ADC    $9C     
       TAX            
       LDY    #$04    
       RTS            

LFD2B: LDA    $D8     
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
       BCC    LFD6E   
       LDY    #$90    
       LDX    #$50    
       LDA    $92     
       CMP    #$90    
       BCS    LFD6E   
       LDX    #$20    
       LDA    $D5     
       SEC            
       SBC    #$04    
       STA    $9D     
       INC    $9D     
       CMP    $92     
       BCS    LFD70   
       LDX    #$10    
       LDA    $D6     
       STA    $9D     
       CMP    $92     
       BCC    LFD70   
       BCS    LFD72   
LFD6E: STY    $92     
LFD70: STX    $9A     
LFD72: LDX    #$01    
       LDA    $A2     
       CMP    #$09    
       BNE    LFD86   
       LDY    #$03    
       LDA    $97     
LFD7E: CMP    LFFCA,Y 
       BCC    LFD9B   
       DEY            
       BPL    LFD7E   
LFD86: DEX            
       LDA    $A3     
       CMP    #$50    
       BNE    LFDA0   
       LDY    #$03    
       LDA    $97     
LFD91: CMP    LFFCE,Y 
       BCS    LFD9B   
       DEY            
       BPL    LFD91   
       BMI    LFDA0   
LFD9B: LDA    LFFD4,Y 
       STA    $9B,X   
LFDA0: CPY    #$03    
       BNE    LFDA9   
       LDA    LFFD8,X 
       STA    $97     
LFDA9: LDX    #$01    
LFDAB: LDA    $9B,X   
       CMP    #$20    
       BCS    LFDE4   
       DEX            
       BPL    LFDAB   
       LDA    $9A     
       AND    #$C0    
       ORA    $D7     
       STA    $D7     
       LDX    #$01    
LFDBE: LDA    $9B,X   
       CMP    #$10    
       BEQ    LFDC9   
       DEX            
       BPL    LFDBE   
       BMI    LFE15   
LFDC9: LDA    $9A     
       AND    #$30    
       BEQ    LFE15   
       LDA    $A1     
       AND    LFFD4,X 
       BEQ    LFE15   
       LDA    LFFD2,X 
       STA    $97     
       LDA    LFFD4,X 
       ORA    $D7     
       STA    $D7     
       BNE    LFE15   
LFDE4: TXA            
       ORA    $9B,X   
       STA    $D8     
       LDA    $9A     
       AND    #$30    
       BEQ    LFDF3   
       LDA    $9D     
       STA    $92     
LFDF3: LDA    $99     
       AND    #$20    
       BEQ    LFE15   
       LDA    $D8     
       AND    #$40    
       BEQ    LFE15   
       TXA            
       ORA    $D9     
       STA    $D9     
       JSR    LF497   
       LDA    LFFD4,X 
       STA    $E3     
       JSR    LF49B   
       INC    $B1,X   
       LDA    #$96    
       STA    $E2     
LFE15: RTS            

LFE16: .byte $02,$07
LFE18: .byte $3F,$1F,$0F,$07,$03
LFE1D: .byte $01,$00
LFE1F: .byte $4B,$47,$43,$3F,$3B,$37,$33
LFE26: .byte $54,$58,$5C,$60,$64,$68,$6C,$01,$01,$01,$01,$01,$01,$01,$01,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$01,$02,$04,$01,$02,$00,$00,$00,$00
       .byte $80,$40,$00,$80,$00,$00,$00,$01,$22,$04,$29,$12,$04,$09,$00,$00
       .byte $94,$41,$20,$90,$40,$20,$00,$10,$80,$44,$28,$52,$04,$48,$14,$02
       .byte $04,$4A,$20,$14,$40,$28,$90,$80,$08,$40,$20,$50,$80,$28,$12,$08
       .byte $05,$02,$00,$12,$05,$48,$10,$48,$04,$41,$10,$00,$80,$22,$08,$02
       .byte $48,$02,$20,$01,$80,$04,$10
LFE8D: .byte $24,$24,$24,$35
LFE91: .byte $00,$07
LFE93: .byte $64,$23,$20,$1D,$1A,$17
LFE99: .byte $2D,$3D,$4D,$5D,$6D,$7D
LFE9F: .byte $0F,$0D,$0B,$09,$07,$05,$03,$01
LFEA7: .byte $11,$44,$22,$88,$FF,$04,$42
LFEAE: .byte $FD,$FE
LFEB0: .byte $00,$00,$01,$02,$04,$05
LFEB6: .byte $03,$03,$02
LFEB9: .byte $14,$4B
LFEBB: .byte $06,$04,$02,$03
LFEBF: .byte $02,$10
LFEC1: .byte $13,$04,$04,$04,$13,$13
LFEC7: .byte $00,$EF,$0F,$0F,$00,$1F
LFECD: .byte $00,$04
LFECF: .byte $01,$03
LFED1: .byte $04,$08,$10
LFED4: .byte $00,$3B,$52
LFED7: .byte $B1,$F1,$71
LFEDA: .byte $D1,$E1
LFEDC: .byte $07,$0F,$0C
LFEDF: .byte $1E,$12,$03
LFEE2: .byte $00,$02,$04
LFEE5: .byte $06,$03,$01,$02,$04,$08,$08,$00,$00,$00,$08
LFEF0: .byte $07,$08
LFEF2: .byte $31,$8E,$90,$92,$94
LFEF7: .byte $0C,$08,$05,$03,$01
LFEFC: .byte $08,$0C
LFEFE: .byte $00,$06,$02,$04
LFF02: .byte $00,$13
LFF04: .byte $FF,$CF,$0F
LFF07: .byte $05,$04,$03
LFF0A: .byte $8F,$0D
LFF0C: .byte $0D,$4F
LFF0E: .byte $22,$11
LFF10: .byte $00,$82
LFF12: .byte $FF,$01,$FF
LFF15: .byte $01,$01,$FF,$FF
LFF19: .byte $12,$21
LFF1B: .byte $50,$0C,$00,$00,$00,$00,$7E,$FF,$7E,$00,$00,$00,$00,$30,$7E,$FF
       .byte $7E,$0C,$00,$00,$00,$0C,$7E,$FF,$7E,$30,$00,$00,$00,$30,$7E,$FF
       .byte $7E,$0C,$0C,$0C,$00,$30,$30,$30,$7E,$FF,$7E,$0C,$00,$00,$00
LFF4A: .byte $C0,$00,$80
LFF4D: .byte $00,$69,$71,$78
LFF51: .byte $10,$0C,$08,$04
LFF55: .byte $D0,$E0,$D0,$E0
LFF59: .byte $1D,$2D,$1D,$25,$3F,$35,$3F,$35
LFF61: .byte $8D,$7D
LFF63: .byte $11,$01
LFF65: .byte $B6,$C5,$C0,$BB
LFF69: .byte $EE,$AA,$AA,$AA,$EE,$44,$CC,$44,$44,$EE,$EE,$22,$EE,$88,$EE,$EE
       .byte $22,$66,$22,$EE,$AA,$AA,$EE,$22,$22,$EE,$88,$EE,$22,$EE,$88,$88
       .byte $EE,$AA,$EE,$EE,$22,$22,$22,$22,$EE,$AA,$EE,$AA,$EE,$EE,$AA,$EE
       .byte $22,$22
LFF9B: .byte $00,$04,$00,$04,$00
LFFA0: .byte $28,$29,$3C,$8C,$A0
LFFA5: .byte $40,$03,$15,$03,$3A
LFFAA: .byte $88,$92,$AA,$DA,$EE,$EF,$FF
LFFB1: .byte $00,$00
LFFB3: .byte $01,$02,$06,$06,$06,$06
LFFB9: .byte $18,$10,$0C
LFFBC: .byte $04,$08
LFFBE: .byte $01,$02
LFFC0: .byte $FE,$FD
LFFC2: .byte $E0,$D0,$B0,$70
LFFC6: .byte $20,$10,$80,$40
LFFCA: .byte $0E,$0B,$09,$05
LFFCE: .byte $4E,$51,$53,$56
LFFD2: .byte $4E,$0D
LFFD4: .byte $10,$20
LFFD6: .byte $40,$80
LFFD8: .byte $56,$04
LFFDA: .byte $24,$84,$0E,$D6,$2A,$06,$08,$0F,$0A,$0F
LFFE4: .byte $01,$03,$09,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$F0,$00,$00
