; Disassembly of roms/Nexar.bin
; Disassembled Tue Oct  6 15:22:40 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Nexar.bin
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
RESM0   =  $12
AUDC0   =  $15
AUDC1   =  $16
AUDF0   =  $17
AUDF1   =  $18
AUDV0   =  $19
AUDV1   =  $1A
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
CXPPMM  =  $37
INPT4   =  $3C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM1T   =  $0294
TIM8T   =  $0295
TIM64T  =  $0296

       ORG $F000

START:
       SEI            
       CLD            
       LDA    #$FF    
       STA    TIM1T   
       STA    WSYNC   
       LDY    INTIM   
       LDA    #$00    
       TAX            
LF00F: STA    VSYNC,X 
       INX            
       BNE    LF00F   
       DEX            
       STX    $F5     
       STX    $B5     
       STY    $E4     
       LDA    SWCHB   
       AND    #$08    
       STA    $FE     
       LDA    #$99    
       STA    $BE     
       DEX            
       STX    $A1     
       STX    $81     
       LDA    #$01    
       STA    CTRLPF  
       STA    $C2     
       STA    $CE     
       STA    $CF     
       STA    $B2     
       LDA    #$81    
       STA    $FD     
LF03B: LDX    #$2A    
       LDA    #$02    
       STA    WSYNC   
       STA    VBLANK  
       STA    VSYNC   
       STX    TIM8T   
       LDX    #$2C    
LF04A: LDA    INTIM   
       BNE    LF04A   
       STA    WSYNC   
       STA    VSYNC   
       STX    TIM64T  
       LDA    SWCHB   
       AND    #$08    
       CMP    $FE     
       BEQ    LF072   
       LDA    #$00    
       STA    AUDV0   
       STA    AUDV1   
       STA    $B0     
       LDA    $E5     
       ORA    #$01    
       STA    $CC     
       INC    $E5     
       JMP    LF5B8   
LF072: LDA    #$00    
       STA    $CC     
       LDA    $FD     
       BMI    LF0AB   
       LDA    $C7     
       CMP    #$D0    
       BEQ    LF084   
       LDA    $FD     
       BEQ    LF088   
LF084: LDA    INPT4   
       BPL    LF091   
LF088: LDA    SWCHB   
       LSR            
       BCC    LF091   
       JMP    LF11C   
LF091: LDA    #$FF    
       STA    $B5     
       INC    $E5     
       LDA    #$00    
       STA    $FD     
       STA    $AE     
       STA    $AF     
       STA    CXCLR   
       LDA    #$99    
       STA    $BE     
       LDA    #$04    
       STA    $BC     
       BNE    LF0BA   
LF0AB: LSR            
       BCS    LF0B6   
       LDA    $AE     
       BNE    LF0B6   
       LDA    #$07    
       STA    $AE     
LF0B6: LDA    #$08    
       STA    $FD     
LF0BA: LDA    #$00    
       STA    AUDV1   
       STA    AUDV0   
       STA    $F1     
       STA    $F2     
       STA    $F3     
       STA    $B9     
       STA    $B0     
       STA    $C5     
       STA    $92     
       STA    $C7     
       STA    $D4     
       STA    $D5     
       STA    $E2     
       STA    $E3     
       LDA    #$03    
       STA    $C4     
       STA    $C8     
       LDA    SWCHB   
       ASL            
       ASL            
       BCC    LF0E9   
       LDA    #$05    
       STA    $C8     
LF0E9: LDA    #$FB    
       STA    $F9     
       STA    $FA     
       LDA    #$40    
       STA    $B3     
       LDA    #$45    
       STA    $B8     
       LDA    #$21    
       STA    $BD     
       LDA    #$01    
       STA    $FF     
       STA    $8F     
       LDA    #$2F    
       STA    $F8     
       LDA    $B2     
       CMP    #$02    
       BNE    LF119   
       LDA    #$05    
       STA    $FF     
       STA    $8F     
       LDA    #$07    
       STA    $C4     
       LDA    #$50    
       STA    $B3     
LF119: JMP    LF42C   
LF11C: LDA    SWCHB   
       LSR            
       LSR            
       BCC    LF12D   
       LDA    $FD     
       BEQ    LF154   
       LDA    #$04    
       STA    $FD     
       BNE    LF154   
LF12D: LDA    $FD     
       BNE    LF137   
       LDA    #$80    
       STA    $FD     
       BMI    LF154   
LF137: CMP    #$04    
       BNE    LF141   
       LDA    #$80    
       STA    $FD     
       BMI    LF148   
LF141: CLC            
       ADC    #$02    
       STA    $FD     
       BPL    LF154   
LF148: INC    $B2     
       LDA    $B2     
       CMP    #$04    
       BNE    LF154   
       LDA    #$01    
       STA    $B2     
LF154: LDA    $D6     
       BEQ    LF15B   
       JMP    LF1C5   
LF15B: LDA    $C8     
       ORA    $FD     
       BNE    LF164   
       JMP    LF30C   
LF164: LDA    $FD     
       BEQ    LF16F   
       LDA    $D8     
       ORA    $E4     
       JMP    LF172   
LF16F: LDA    SWCHA   
LF172: CMP    #$FF    
       BNE    LF181   
       INC    $BA     
       BNE    LF17E   
       LDA    #$FE    
       STA    $BA     
LF17E: JMP    LF1C5   
LF181: LDY    #$00    
       STY    $BA     
       LSR            
       LSR            
       LSR            
       LSR            
       EOR    #$0F    
       STA    $C6     
       AND    #$03    
       TAX            
       LDA    LFCFA,X 
       CLC            
       ADC    $BD     
       STA    $BD     
       LDA    $C6     
       LSR            
       LSR            
       TAX            
       LDA    LFDFA,X 
       CLC            
       ADC    $B8     
       STA    $B8     
       BPL    LF1AB   
       LDA    #$80    
       STA    $B8     
LF1AB: CMP    #$09    
       BCS    LF1B3   
       LDA    #$09    
       STA    $B8     
LF1B3: LDA    $BD     
       CMP    #$B5    
       BCC    LF1BD   
       LDA    #$B4    
       STA    $BD     
LF1BD: CMP    #$21    
       BCS    LF1C5   
       LDA    #$21    
       STA    $BD     
LF1C5: LDA    CXM0P   
       BMI    LF1CC   
       JMP    LF251   
LF1CC: LDX    #$01    
       LDA    $C1     
       CMP    #$6A    
       BCC    LF1D5   
       DEX            
LF1D5: LDA    #$00    
       STA    $C5     
       STA    AUDV1   
       LDA    $F9,X   
       CMP    #$FD    
       BEQ    LF251   
       CMP    #$FC    
       BNE    LF214   
       LDA    #$20    
       STA    $A2     
       SED            
       LDA    $C4     
       SEC            
       SBC    #$01    
       STA    $C4     
       CLD            
       BCS    LF1F8   
       LDA    #$00    
       STA    $C4     
LF1F8: SED            
       LDA    $BE     
       CLC            
       ADC    #$05    
       STA    $BE     
       CLD            
       BCC    LF207   
       LDA    #$99    
       STA    $BE     
LF207: LDA    $8F     
       SED            
       CLC            
       ADC    $8F     
       ADC    $F2     
       STA    $F2     
       JMP    LF22A   
LF214: LDY    $E8,X   
       SED            
       LDA    $F1     
       CLC            
       ADC    LFF58,Y 
       STA    $F1     
       LDA    $F2     
       ADC    LFFB8,Y 
       STA    $F2     
       LDA    #$0F    
       STA    $A2     
LF22A: ROR    $C6     
       LDA    $C6     
       ROL            
       LDA    $F3     
       ADC    #$00    
       STA    $F3     
       CLD            
       LDA    $C6     
       BPL    LF247   
       SED            
       LDA    $C8     
       CLC            
       ADC    #$01    
       STA    $C8     
       CLD            
       LDA    #$40    
       STA    $CD     
LF247: LDA    $D8,X   
       STA    $D4,X   
       LDA    #$FD    
       STA    $F9,X   
       INC    $92     
LF251: LDA    $D6     
       BNE    LF287   
       LDX    #$00    
       LDA    $B7     
       BMI    LF260   
       LDA    $B6     
       BPL    LF287   
       INX            
LF260: LDA    $D8,X   
       ORA    $9E,X   
       CMP    #$20    
       BCS    LF287   
       LDA    #$30    
       STA    $D6     
       LDA    $D8,X   
       STA    $D4,X   
       LDA    #$FD    
       STA    $F9,X   
       LDA    #$20    
       STA    $D7     
       SED            
       LDA    $C8     
       SEC            
       SBC    #$01    
       STA    $C8     
       CLD            
       BCS    LF287   
       LDA    #$00    
       STA    $C8     
LF287: STA    CXCLR   
       LDA    $B5     
       BNE    LF2D3   
       LDA    $D8     
       CMP    $D9     
       BCS    LF295   
       LDA    $D9     
LF295: STA    $C6     
       LDA    $F9     
       CMP    #$FC    
       BNE    LF2A2   
       LDA    $D8     
       JMP    LF2C0   
LF2A2: LDA    $FA     
       CMP    #$FC    
       BNE    LF2AD   
       LDA    $D9     
       JMP    LF2C0   
LF2AD: LDA    $C6     
       LSR            
       LSR            
       LSR            
       LSR            
       EOR    #$FF    
       STA    AUDV0   
       STA    AUDF0   
       LDA    #$08    
       STA    AUDC0   
       JMP    LF2D3   
LF2C0: LDA    $C6     
       AND    #$0F    
       TAX            
       LDA    LFFE8,X 
       STA    AUDF0   
       LDA    #$0D    
       STA    AUDC0   
       STA    AUDV0   
       JMP    LF2D3   
LF2D3: LDA    $D6     
       BEQ    LF30C   
       LSR            
       LSR            
       STA    AUDV0   
       LDA    $D7     
       LSR            
       LSR            
       STA    AUDC0   
       LDA    #$4F    
       STA    $F8     
       LDA    #$1F    
       STA    AUDF0   
       LDA    $D6     
       AND    #$03    
       CMP    #$03    
       BNE    LF2FE   
       LDA    $D7     
       CLC            
       ADC    #$20    
       STA    $D7     
       BPL    LF2FE   
       LDA    #$20    
       STA    $D7     
LF2FE: DEC    $D6     
       BNE    LF30C   
       LDA    #$00    
       STA    $D7     
       STA    AUDV0   
       LDA    #$2F    
       STA    $F8     
LF30C: LDA    $C8     
       ORA    $FD     
       ORA    $D6     
       BNE    LF338   
       STA    AUDV0   
       STA    AUDV1   
       LDA    $C7     
       BNE    LF31E   
       INC    $C7     
LF31E: LDA    $C7     
       CMP    #$D0    
       BEQ    LF338   
       STA    AUDF0   
       ORA    #$08    
       STA    AUDF1   
       STA    AUDV1   
       STA    AUDV0   
       LDA    #$08    
       STA    AUDC0   
       LDA    #$0D    
       STA    AUDC1   
       INC    $C7     
LF338: LDA    $A2     
       BEQ    LF353   
       DEC    $A2     
       LDA    $A2     
       CMP    #$10    
       BCC    LF348   
       ORA    #$08    
       BNE    LF349   
LF348: LSR            
LF349: STA    AUDV0   
       LDA    #$10    
       STA    AUDF0   
       LDA    #$08    
       STA    AUDC0   
LF353: LDA    $B5     
       BEQ    LF37A   
       BPL    LF36C   
       AND    #$7F    
       LSR            
       LSR            
       LSR            
       TAX            
       LDA    LFFE8,X 
       STA    AUDF0   
       LDA    #$07    
       STA    AUDC0   
       LDA    #$0D    
       STA    AUDV0   
LF36C: DEC    $B5     
       BMI    LF37A   
       LDA    #$00    
       STA    AUDV0   
       LDA    $B5     
       BNE    LF37A   
       STA    $BC     
LF37A: LDA    $D6     
       BNE    LF3D2   
       LDA    $FD     
       BEQ    LF387   
       LDA    $E5     
       JMP    LF389   
LF387: LDA    INPT4   
LF389: BMI    LF3D2   
       LDA    $C5     
       ORA    $C7     
       BNE    LF3D2   
       LDA    $E5     
       LSR            
       LDA    $E4     
       ROR            
       EOR    $E5     
       LDX    $E4     
       STA    $E4     
       STX    $E5     
       LDA    $B8     
       STA    $C0     
       SEC            
       SBC    #$09    
       LSR            
       LSR            
       TAX            
       LDA    LFEB0,X 
       STA    $CB     
       LDA    $BD     
       STA    $C1     
       SEC            
       SBC    #$20    
       LDX    #$00    
LF3B7: CMP    #$06    
       BCC    LF3C1   
       SEC            
       SBC    #$06    
       INX            
       BNE    LF3B7   
LF3C1: LDA    LFECF,X 
       STA    $CA     
       LDA    #$80    
       STA    $C5     
       INC    $C0     
       LDA    #$00    
       STA    $EA     
       STA    $C9     
LF3D2: LDA    $B1     
       CLC            
       ADC    $B3     
       STA    $B1     
       BCC    LF3DD   
       INC    $B9     
LF3DD: LDA    $B9     
       AND    #$03    
       ORA    $BC     
       TAX            
       LDA    LFEE8,X 
       STA    $B0     
       LDA    $C5     
       BEQ    LF42C   
       LSR            
       LSR            
       LSR            
       LSR            
       STA    AUDF1   
       STA    AUDV1   
       LDA    #$08    
       STA    AUDC1   
       LDY    #$05    
LF3FB: LDA    $CB     
       AND    #$7F    
       CLC            
       ADC    $EA     
       STA    $EA     
       BCC    LF410   
       LDA    $CB     
       BMI    LF40E   
       INC    $C0     
       BNE    LF410   
LF40E: DEC    $C0     
LF410: LDA    $CA     
       AND    #$7F    
       CLC            
       ADC    $C9     
       STA    $C9     
       BCC    LF425   
       LDA    $CA     
       BMI    LF423   
       INC    $C1     
       BNE    LF425   
LF423: DEC    $C1     
LF425: DEC    $C5     
       BEQ    LF42C   
       DEY            
       BPL    LF3FB   
LF42C: LDA    $CD     
       BEQ    LF440   
       LDA    #$0D    
       STA    AUDC1   
       STA    AUDF1   
       STA    AUDV1   
       DEC    $CD     
       BNE    LF440   
       LDA    #$00    
       STA    AUDV1   
LF440: LDX    #$01    
       LDA    $B8     
LF444: CMP    #$0F    
       BCC    LF44E   
       SEC            
       SBC    #$0F    
       INX            
       BNE    LF444   
LF44E: STX    $BB     
       TAX            
       LDA    LFBF0,X 
       ORA    $BB     
       STA    $BB     
       LDX    #$0B    
       LDA    #$00    
LF45C: STA    $82,X   
       STA    $A2,X   
       STA    $92,X   
       DEX            
       BNE    LF45C   
       LDA    $BD     
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       LDA    $BD     
       AND    #$0F    
       TAY            
       LDA    LFEF0,Y 
       ORA    $D7     
       STA    $82,X   
       INX            
       EOR    #$10    
       STA    $82,X   
       LDA    $C5     
       BEQ    LF4B5   
       LDX    #$01    
       LDA    $C0     
LF485: CMP    #$0F    
       BCC    LF48F   
       SEC            
       SBC    #$0F    
       INX            
       BNE    LF485   
LF48F: STX    $C2     
       TAX            
       LDA    LFBF0,X 
       ORA    $C2     
       STA    $C2     
       LDA    $C1     
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       LDA    $C1     
       AND    #$0F    
       TAY            
       LDA    LFEF0,Y 
       ORA    #$80    
       STA    $A2,X   
       INX            
       CPX    #$0C    
       BEQ    LF4B5   
       EOR    #$10    
       STA    $A2,X   
LF4B5: LDA    $B5     
       BEQ    LF4BC   
       JMP    LF538   
LF4BC: LDX    #$01    
LF4BE: LDA    $E2,X   
       BEQ    LF535   
       LDY    #$01    
       LDA    $D2,X   
LF4C6: CMP    #$0F    
       BCC    LF4D0   
       SEC            
       SBC    #$0F    
       INY            
       BNE    LF4C6   
LF4D0: STY    $CE,X   
       TAY            
       LDA    LFBF0,Y 
       ORA    $CE,X   
       STA    $CE,X   
       LDA    #$00    
       LDA    $D0,X   
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $8E     
       LDA    $D0,X   
       AND    #$0F    
       CPX    #$00    
       STA    $C6     
       BEQ    LF4F6   
       LDA    #$1F    
       SEC            
       SBC    $C6     
       JMP    LF4FA   
LF4F6: TAY            
       LDA    LFEF0,Y 
LF4FA: STA    $C6     
       LDA    $D8,X   
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    $9E,X   
       BPL    LF511   
       LDA    #$9F    
       SEC            
       SBC    $D8,X   
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
LF511: LDA    LFDF0,Y 
       STA    $FB,X   
       LDA    LFCF0,Y 
       ORA    $C6     
       STX    $C6     
       LDX    $8E     
       STA    $92,X   
       LDY    $C6     
       BEQ    LF52A   
       DEX            
       BEQ    LF538   
       BPL    LF52B   
LF52A: INX            
LF52B: EOR    #$10    
       CPX    #$0C    
       BEQ    LF533   
       STA    $92,X   
LF533: LDX    $C6     
LF535: DEX            
       BPL    LF4BE   
LF538: LDA    $C4     
       BEQ    LF56C   
       LDA    $B5     
       BNE    LF56C   
       LDA    $82     
       CLC            
       ADC    #$08    
       STA    $82     
       BCC    LF56C   
       SED            
       LDA    $BE     
       SEC            
       SBC    #$01    
       CLD            
       STA    $BE     
       BCS    LF56C   
       LDA    SWCHB   
       BPL    LF568   
       SED            
       LDA    $C8     
       SEC            
       SBC    #$01    
       STA    $C8     
       CLD            
       LDA    #$20    
       STA    $D6     
       BCS    LF56C   
LF568: LDA    #$00    
       STA    $C8     
LF56C: LDA    #$00    
       STA    PF0     
       LDA    $D4     
       ASL            
       ASL            
       ASL            
       EOR    $F6     
       STA    $F6     
       LDA    $D5     
       ASL            
       ASL            
       ASL            
       EOR    $F7     
       STA    $F7     
       LDA    $D8     
       ORA    $D9     
       ORA    $C4     
       BNE    LF5B8   
       LDA    $B3     
       CLC            
       ADC    #$04    
       STA    $B3     
       LDA    $8F     
       SED            
       CLC            
       ADC    #$03    
       STA    $C4     
       LDA    #$99    
       STA    $BE     
       LDA    #$FF    
       STA    $B5     
       LDA    #$04    
       STA    $BC     
       LDA    #$00    
       STA    $AE     
       STA    $AF     
       STA    $92     
       SED            
       LDA    $8F     
       CLC            
       ADC    #$01    
       STA    $8F     
       CLD            
       INC    $FF     
LF5B8: INC    $C3     
       LDA    $C3     
       STA    $B4     
       LDA    #$53    
       EOR    $CC     
       STA    COLUPF  
       LDA    $F6     
       EOR    $CC     
       STA    $F6     
       LDA    $F7     
       EOR    $CC     
       STA    $F7     
       LDA    $A2     
       STA    COLUBK  
       LDA    $C8     
       BNE    LF5E8   
       LDA    $BE     
       AND    #$F0    
       ORA    #$03    
       EOR    $CC     
       EOR    $C7     
       STA    COLUPF  
       ORA    #$0F    
       STA    $F8     
LF5E8: LDA    $B5     
       ORA    $FD     
       BEQ    LF61B   
       LDA    #$FF    
       STA    $EC     
       STA    $EE     
       LDA    $FD     
       BEQ    LF601   
       LDA    #$50    
       STA    $EB     
       STA    $ED     
       JMP    LF652   
LF601: LDA    $8F     
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA    $EB     
       LDA    $8F     
       AND    #$F0    
       LSR            
       BNE    LF613   
       LDA    #$50    
LF613: CLC            
       ADC    #$60    
       STA    $ED     
       JMP    LF652   
LF61B: LDY    #$05    
       LDX    #$00    
LF61F: LDA    $F1,X   
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA.wy $00EB,Y 
       DEY            
       LDA    $F1,X   
       AND    #$F0    
       LSR            
       STA.wy $00EB,Y 
       INX            
       DEY            
       BPL    LF61F   
       LDY    #$50    
       LDX    #$00    
LF63A: LDA    $EB,X   
       BNE    LF645   
       STY    $EB,X   
       INX            
       CPX    #$04    
       BNE    LF63A   
LF645: LDX    #$04    
LF647: LDA    $EB,X   
       CLC            
       ADC    #$60    
       STA    $EB,X   
       DEX            
       DEX            
       BPL    LF647   
LF652: LDX    #$E6    
LF654: LDA    INTIM   
       BNE    LF654   
       STA    WSYNC   
       STA    VBLANK  
       STX    TIM64T  
       STA    NUSIZ1  
       LDA    #$30    
       STA    HMP1    
       LDX    #$07    
       LDA    #$0B    
       STA    $BF     
       LDA    #$01    
       STA    NUSIZ0  
       LDA    $F8     
       EOR    $CC     
       STA    COLUP0  
       STA    COLUP1  
       STA    RESP0   
       STA    RESP1   
       LDA    #$20    
       STA    HMP0    
       STA    WSYNC   
       STA    HMOVE   
       LDA    SWCHB   
       LSR            
       BCC    LF6C0   
       LDA    $FD     
       ORA    $B5     
       BNE    LF6C0   
       STA    WSYNC   
       STA    WSYNC   
LF694: STX    $F4     
       LDY    $EF     
       LDA    ($F4),Y 
       LDY    $F0     
       ORA    ($F4),Y 
       STA    WSYNC   
       STA    $C6     
       LDY    $EB     
       LDA    ($F4),Y 
       LDY    $EC     
       ORA    ($F4),Y 
       STA    GRP0    
       LDY    $ED     
       LDA    ($F4),Y 
       LDY    $EE     
       ORA    ($F4),Y 
       STA    GRP1    
       LDA.w  $00C6   
       STA    GRP0    
       DEX            
       BPL    LF694   
       BMI    LF72A   
LF6C0: LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       TXA            
       STA    VDELP0  
       STA    VDELP1  
       LDA    $AF     
       CLC            
       ADC    #$10    
       STA    $AF     
       LDA    $AE     
       LDX    $B5     
       STA    WSYNC   
       BEQ    LF6E8   
       BCC    LF6E8   
       INC    $AE     
       LDA    $AE     
       CMP    #$08    
       BCC    LF6E8   
       LDA    #$07    
       STA    $AE     
LF6E8: STA    WSYNC   
       STA    $EF     
LF6EC: LDY    $EF     
       LDA    ($EB),Y 
       STA    WSYNC   
       ORA    ($ED),Y 
       STA    $C6     
       LDX    LFFE0,Y 
       LDA    LFFC0,Y 
       STA    GRP0    
       LDA    LFFC8,Y 
       STA.w  $001C   
       LDA    LFFD0,Y 
       STA.w  $001B   
       LDA    LFFD8,Y 
       LDY.w  $00C6   
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       DEC    $EF     
       BPL    LF6EC   
       LDA    #$07    
       SEC            
       SBC    $AE     
       TAY            
LF722: DEY            
       BMI    LF72A   
       STA    WSYNC   
       JMP    LF722   
LF72A: LDA    $FB     
       STA    NUSIZ1  
       LDA    #$00    
       STA    VDELP0  
       STA    VDELP1  
       LDA    #$10    
       STA    NUSIZ0  
       STA    WSYNC   
       LDA    $BB     
       STA    HMP0    
       AND    #$0F    
       TAX            
       LDA    $F8     
       EOR    $CC     
       STA    COLUP0  
LF747: DEX            
       BNE    LF747   
       STA    RESP0   
       STA    WSYNC   
       LDA    $CE     
       STA    HMP1    
       AND    #$0F    
       TAX            
       LDA    $F6     
       STA    COLUP1  
       BIT    $FF     
LF75B: DEX            
       BNE    LF75B   
       STA    RESP1   
       STA    WSYNC   
       LDA    $C2     
       STA    HMM0    
       AND    #$0F    
       TAX            
       NOP            
       LDA    $F9     
       STA    $91     
       NOP            
LF76F: DEX            
       BNE    LF76F   
       STA    RESM0   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$01    
       STA    $C6     
       STA    WSYNC   
       STA    HMCLR   
       LDX    $B0     
       LDA    LFA80,X 
       STA    PF1     
       LDA    LFAC0,X 
       STA    PF2     
       LDX    #$06    
LF78E: LDY    $BF     
       LDA.wy $0082,Y 
       STA    $80     
       LDA.wy $0092,Y 
       STA    $90     
       LDA.wy $00A2,Y 
       STA    $A0     
       DEC    $BF     
       DEX            
       BEQ    LF7F9   
       LDY    #$0F    
       JMP    LF7D3   
LF7A9: LDX    $C6     
       BEQ    LF7B2   
       INC    $B0     
       JMP    LF7B5   
LF7B2: DEC    $B0     
       NOP            
LF7B5: LDA    $B4     
       STA    COLUPF  
       LDX    $B0     
       LDA    LFAC0,X 
       STA    PF2     
       LDA    LFA80,X 
       LDX    #$05    
       STA    PF1     
       STA    WSYNC   
       LDA    $B4     
       CLC            
       ADC    #$05    
       STA    $B4     
       JMP    LF7DB   
LF7D3: STA    WSYNC   
LF7D5: LDA    #$00    
       STA    PF1     
       STA    PF2     
LF7DB: LDA    ($80),Y 
       STA    GRP0    
       LDA    ($90),Y 
       STA    GRP1    
       DEY            
       BMI    LF78E   
       DEX            
       BEQ    LF7A9   
       LDA    ($A0),Y 
       STA    ENAM0   
       STX    $F0     
       LDX    $C6     
       LDA    CXPPMM  
       STA    $B6,X   
       LDX    $F0     
       BPL    LF7D3   
LF7F9: DEC    $C6     
       BMI    LF822   
       LDA    $FA     
       STA    $91     
       LDA    $CF     
       STA    HMP1    
       AND    #$0F    
       TAY            
       LDA    $F7     
       BIT    $FF     
       LDX    #$05    
LF80E: DEY            
       BNE    LF80E   
       STA    RESP1   
       STA    COLUP1  
       LDY    #$0F    
       STA    WSYNC   
       STA    HMOVE   
       LDA    $FC     
       STA    NUSIZ1  
       JMP    LF7D5   
LF822: LDA    #$50    
       EOR    $CC     
       STA    COLUPF  
       LDX    $C8     
       BNE    LF832   
       LDA    $BE     
       AND    #$F0    
       EOR    $CC     
LF832: STA    WSYNC   
       EOR    #$03    
       EOR    $C7     
       STA    COLUPF  
       LDA    #$FF    
       STA    PF1     
       STA    PF2     
       LDA    #$00    
       STA    GRP1    
       LDA    #$04    
       STA    NUSIZ0  
       LDA    $BE     
       STA    $C6     
       STA    RESP0   
       LDA    #$05    
       STA.w  $0005   
       STA    RESP1   
       LDA    $FD     
       BEQ    LF85D   
       LDA    $B2     
       STA    $C6     
LF85D: LDX    #$05    
LF85F: LDA    $C3,X   
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA    $EB,X   
       LDA    $C3,X   
       DEX            
       AND    #$F0    
       LSR            
       ADC    #$60    
       STA    $EB,X   
       DEX            
       BPL    LF85F   
       LDX    #$07    
       STX    $F4     
       STA    WSYNC   
       LDA    $C8     
       BEQ    LF88D   
       LDA    #$4F    
       EOR    $CC     
       STA    COLUP1  
       LDA    #$5F    
       EOR    $CC     
       EOR    $CD     
       STA    COLUP0  
LF88D: LDY    $F0     
       STA    WSYNC   
       LDA    ($F4),Y 
       LDY    $EF     
       ORA    ($F4),Y 
       STA    GRP0    
       LDY    $EE     
       LDA    ($F4),Y 
       LDY    $ED     
       ORA    ($F4),Y 
       STA    GRP1    
       LDY    $EC     
       LDA    ($F4),Y 
       LDY    $EB     
       ORA    ($F4),Y 
       STA    GRP0    
       DEX            
       STX    $F4     
       BPL    LF88D   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    COLUPF  
       LDX    #$20    
LF8BC: LDA    INTIM   
       BNE    LF8BC   
       STX    TIM64T  
       LDA    $B5     
       ORA    $CC     
       BEQ    LF8CD   
       JMP    LFA70   
LF8CD: LDX    #$01    
LF8CF: LDA    $E2,X   
       BEQ    LF8D6   
       JMP    LF9BE   
LF8D6: LDA    $C4     
       BNE    LF8DD   
       JMP    LFA6A   
LF8DD: LDA    $D6     
       BEQ    LF8E4   
       JMP    LFA6A   
LF8E4: LDA    $BC     
       BEQ    LF8EB   
       JMP    LFA6A   
LF8EB: LDA    LFDFE,X 
       STA    $D0,X   
       LDA    #$45    
       STA    $D2,X   
       LDA    #$01    
       STA    $E2,X   
       LDA    #$9F    
       STA    $D8,X   
       LDA    #$FB    
       STA    $F9,X   
       LDA    $92     
       CLC            
       ADC    #$10    
       CMP    $E4     
       BCC    LF90D   
       LDA    #$FC    
       STA    $F9,X   
LF90D: LDA    #$00    
       STA    $9E,X   
       LDA    $E5     
       LSR            
       LDA    $E4     
       ROR            
       EOR    $E5     
       LDY    $E4     
       STA    $E4     
       STY    $E5     
       LDA    $FF     
       LSR            
       LSR            
       AND    #$07    
       LDY    $F9,X   
       CPY    #$FC    
       BEQ    LF936   
       LDA    $E5     
       AND    #$07    
       CMP    $FF     
       BCC    LF934   
       LSR            
LF934: ORA    #$01    
LF936: STA    $E8,X   
       CPY    #$FC    
       BNE    LF953   
       LDA    $E4     
       AND    #$01    
       TAY            
       LDA    $E4     
       BMI    LF94C   
       LDA    LFA7A,Y 
       STA    $8E     
       BNE    LF981   
LF94C: LDA    LFA7C,Y 
       STA    $C6     
       BNE    LF981   
LF953: LDA    $B2     
       CMP    #$03    
       BEQ    LF979   
       LDA    $BA     
       CMP    #$F0    
       BCS    LF979   
       LDA    $FF     
       ASL            
       ASL            
       CMP    $E4     
       BCS    LF979   
       LDA    $E4     
       AND    #$7F    
       ORA    #$09    
       STA    $C6     
       LDA    $E4     
       LSR            
       ORA    #$20    
       STA    $8E     
       JMP    LF981   
LF979: LDA    $B8     
       STA    $C6     
       LDA    $BD     
       STA    $8E     
LF981: LDA    $C6     
       SEC            
       SBC    #$09    
       LSR            
       LSR            
       TAY            
       LDA    LFEB0,Y 
       EOR    #$80    
       STA    $DC,X   
       LDA    $8E     
       SEC            
       SBC    #$20    
       LDY    #$00    
LF997: CMP    #$06    
       BCC    LF9A1   
       SEC            
       SBC    #$06    
       INY            
       BNE    LF997   
LF9A1: LDA    LFECF,Y 
       ORA    LFA78,X 
       AND    LFCFE,X 
       STA    $DA,X   
       LDA    $E5     
       ORA    #$0F    
       STA    $F6,X   
       LDA    $FD     
       BEQ    LF9BE   
       LDA    $E4     
       AND    #$07    
       ORA    #$03    
       STA    $E8,X   
LF9BE: LDA    $F9,X   
       CMP    #$FB    
       BNE    LFA13   
       LDA    $D8,X   
       ORA    $9E,X   
       CMP    #$7F    
       BCS    LF9EF   
       LDA    $E4     
       CMP    #$FE    
       BCC    LF9EF   
       LDA    $9E,X   
       CMP    #$01    
       BEQ    LFA13   
       EOR    #$80    
       STA    $9E,X   
       LDA    $DC,X   
       EOR    #$80    
       STA    $DC,X   
       LDA    $DA,X   
       EOR    #$80    
       STA    $DA,X   
       LDA    #$A0    
       SEC            
       SBC    $D8,X   
       STA    $D8,X   
LF9EF: LDA    $9E,X   
       BNE    LFA13   
       LDA    $E5     
       CMP    #$F0    
       BCC    LFA13   
       LDA    $D8,X   
       CMP    #$2E    
       BCC    LFA13   
       CMP    #$33    
       BCS    LFA13   
       LDA    $DC,X   
       EOR    #$80    
       STA    $DC,X   
       LDA    $DA,X   
       EOR    #$80    
       STA    $DA,X   
       LDA    #$01    
       STA    $9E,X   
LFA13: LDA    #$00    
       SEC            
       SBC    $D8,X   
       CLC            
       ADC    $E6,X   
       STA    $E6,X   
       BCC    LFA6A   
       LDY    $E8,X   
LFA21: LDA    $DC,X   
       AND    #$7F    
       CLC            
       ADC    $DE,X   
       STA    $DE,X   
       BCC    LFA46   
       LDA    $DC,X   
       BMI    LFA3E   
       INC    $D2,X   
       LDA    $D2,X   
       CMP    #$7C    
       BCC    LFA46   
       LDA    #$7B    
       STA    $D2,X   
       BNE    LFA46   
LFA3E: DEC    $D2,X   
       BPL    LFA46   
       LDA    #$00    
       STA    $D2,X   
LFA46: LDA    $DA,X   
       AND    #$7F    
       CLC            
       ADC    $E0,X   
       STA    $E0,X   
       BCC    LFA5B   
       LDA    $DA,X   
       BMI    LFA59   
       INC    $D0,X   
       BNE    LFA5B   
LFA59: DEC    $D0,X   
LFA5B: DEC    $D8,X   
       BNE    LFA67   
       LDA    #$00    
       STA    $D4,X   
       STA    $E2,X   
       BEQ    LFA6A   
LFA67: DEY            
       BPL    LFA21   
LFA6A: DEX            
       BMI    LFA70   
       JMP    LF8CF   
LFA70: LDA    INTIM   
       BNE    LFA70   
       JMP    LF03B   
LFA78: .byte $00,$80
LFA7A: .byte $B4,$20
LFA7C: .byte $09,$80,$09,$80
LFA80: .byte $FF,$00,$00,$00,$0F,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$1F,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$3F,$00,$00,$00,$03,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$7F,$00,$00,$00,$07,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
LFAC0: .byte $FF,$00,$00,$00,$FF,$00,$00,$00,$FF,$00,$00,$00,$F0,$00,$00,$C0
       .byte $00,$00,$00,$FF,$00,$00,$00,$FF,$00,$00,$00,$F0,$00,$00,$C0,$00
       .byte $00,$00,$FF,$00,$00,$00,$FF,$00,$00,$00,$FC,$00,$00,$00,$00,$00
       .byte $00,$FF,$00,$00,$00,$FF,$00,$00,$00,$FE,$00,$00,$00,$E0,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$82,$92,$BA,$EE,$C6,$FE,$FE,$C6,$EE,$BA,$92,$82,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$81,$99,$A5,$C3,$FF,$FF,$C3,$A5,$99,$81,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$84,$B4,$CC,$FC,$FC,$CC,$B4,$84,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$99,$A5,$FF,$FF,$A5,$99,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$92,$AA,$FE,$AA,$92,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$54,$7C,$6C,$54,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$28,$38,$28,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
LFBF0: .byte $70,$60,$50,$40,$30,$20,$10,$00,$F0,$E0,$D0,$C0,$B0,$A0,$90,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$78,$64,$5E,$52,$52,$52,$52,$52,$52,$52,$52,$52,$52,$32,$1E
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$7C,$7E,$7E,$62,$62,$62,$62,$62,$62,$62,$62,$7E,$7E,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$3C,$7C,$7C,$4C,$4C,$4C,$4C,$4C,$4C,$7C,$78,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$FC,$86,$85,$85,$85,$85,$85,$FD,$43,$3F,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$3E,$46,$FA,$8A,$8A,$8A,$8C,$F8,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$F0,$98,$94,$94,$F4,$4C,$3C,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$38,$78,$58,$70,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
LFCF0: .byte $00,$20,$40,$60,$60,$80,$80,$A0,$A0,$C0
LFCFA: .byte $00,$03,$FD,$00
LFCFE: .byte $7F,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$28,$7C,$5E,$A6,$78,$DC,$8E,$CA,$5C,$64,$26,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$68,$50,$98,$59,$10,$41,$C3,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$60,$A8,$48,$20,$A4,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$9C,$A8,$84,$5A,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$34,$52,$48,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$28,$54,$2A,$32,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$10,$48,$20,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00
LFDF0: .byte $07,$05,$05,$00,$00,$00,$00,$00,$00,$00
LFDFA: .byte $00,$FE,$02,$00
LFDFE: .byte $70,$6F,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$10,$10,$10,$10,$C6,$C6,$10,$10,$10,$10,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$92,$00,$48,$00,$52,$00,$24,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$28,$52,$81,$81,$81,$52,$81,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$18,$54,$4A,$18,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$FF,$FF,$FF,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00
LFEB0: .byte $64,$60,$58,$50,$48,$40,$3C,$34,$2C,$24,$1C,$18,$14,$10,$0C,$00
       .byte $8C,$90,$94,$98,$9C,$A4,$AC,$B4,$BC,$C0,$C8,$D0,$D8,$E0,$E4
LFECF: .byte $78,$70,$6B,$61,$57,$4D,$3C,$34,$28,$14,$10,$08,$00,$88,$90,$94
       .byte $A8,$B4,$BC,$CD,$D7,$E1,$EB,$F0,$F8
LFEE8: .byte $00,$10,$20,$30,$30,$20,$10,$00
LFEF0: .byte $10,$0F,$0E,$0D,$0C,$0B,$0A,$09,$08,$07,$06,$05,$04,$03,$02,$01
       .byte $00,$07,$05,$05,$05,$05,$05,$07,$00,$02,$02,$02,$02,$02,$02,$02
       .byte $00,$07,$04,$04,$07,$01,$01,$07,$00,$07,$01,$01,$07,$01,$01,$07
       .byte $00,$01,$01,$01,$07,$05,$05,$05,$00,$07,$01,$01,$07,$04,$04,$07
       .byte $00,$07,$05,$05,$07,$04,$04,$04,$00,$01,$01,$01,$01,$01,$01,$07
       .byte $00,$07,$05,$05,$07,$05,$05,$07,$00,$01,$01,$01,$07,$05,$05,$07
       .byte $00,$00,$00,$00,$00,$00,$00,$00
LFF58: .byte $25,$50,$00,$00,$00,$00,$00,$00,$00,$70,$50,$50,$50,$50,$50,$70
       .byte $00,$20,$20,$20,$20,$20,$20,$20,$00,$70,$40,$40,$70,$10,$10,$70
       .byte $00,$70,$10,$10,$70,$10,$10,$70,$00,$10,$10,$10,$70,$50,$50,$50
       .byte $00,$70,$10,$10,$70,$40,$40,$70,$00,$70,$50,$50,$70,$40,$40,$40
       .byte $00,$10,$10,$10,$10,$10,$10,$70,$00,$70,$50,$50,$70,$50,$50,$70
       .byte $00,$10,$10,$10,$70,$50,$50,$70,$00,$00,$00,$00,$00,$00,$00,$00
LFFB8: .byte $00,$00,$01,$02,$04,$08,$12,$20
LFFC0: .byte $00,$21,$23,$27,$2D,$39,$31,$21
LFFC8: .byte $00,$3D,$40,$40,$78,$40,$40,$3D
LFFD0: .byte $00,$86,$CC,$78,$30,$78,$CC,$86
LFFD8: .byte $00,$8A,$8A,$8A,$FB,$8A,$8A,$73
LFFE0: .byte $00,$30,$60,$C0,$E0,$10,$10,$E0
LFFE8: .byte $08,$0A,$0C,$0E,$0D,$0B,$09,$08,$10,$12,$14,$16,$15,$13,$11,$10
       .byte $00,$00,$00,$00,$00,$F0,$00,$F0
