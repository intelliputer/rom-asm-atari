; Disassembly of roms/Bridge.bin
; Disassembled Tue Oct  6 15:21:07 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Bridge.bin
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
REFP1   =  $0C
PF0     =  $0D
PF1     =  $0E
RESP0   =  $10
RESP1   =  $11
AUDC0   =  $15
AUDF0   =  $17
AUDV0   =  $19
GRP0    =  $1B
GRP1    =  $1C
HMP0    =  $20
HMP1    =  $21
HMOVE   =  $2A
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296
LF8C8   =   $F8C8

       ORG $F000

START:
       SEI            
       CLD            
       LDA    #$00    
       TAX            
LF005: STA    VSYNC,X 
       TXS            
       INX            
       BNE    LF005   
       JMP    LF326   
LF00E: LDA    INTIM   
       BNE    LF00E   
       STA    WSYNC   
       LDY    #$E0    
       STY    HMP0    
       STY    HMP1    
       LDY    #$03    
LF01D: DEY            
       BPL    LF01D   
       LDY    #$08    
       STA    RESP0   
       STY    AUDV0   
       LDY    #$03    
       STY    NUSIZ0  
       STY    NUSIZ1  
       LDX    #$0A    
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       STA    WSYNC   
       STA    VBLANK  
       STX    AUDF0   
LF03A: LDA    #$FF    
       STA    $E5,X   
       LDA    #$A8    
       STA    $E4,X   
       DEX            
       DEX            
       BPL    LF03A   
       LDA    $85     
       BPL    LF057   
       EOR    #$FF    
       CLC            
       ADC    #$01    
       LDY    #$B0    
       STY    $E4     
       LDY    $F1     
       STY    COLUP0  
LF057: STA    $E6     
       SEC            
       SBC    #$50    
       BMI    LF064   
       LDY    #$08    
       STY    $E6     
       STA    $E8     
LF064: LDA    $87     
       CMP    #$05    
       BNE    LF06E   
       LDA    #$A8    
       BNE    LF073   
LF06E: AND    #$38    
       CLC            
       ADC    #$08    
LF073: STA    $EC     
       LDA    $87     
       AND    #$07    
       TAY            
       AND    #$03    
       TAX            
       LDA    $83     
       AND    $CC     
       BPL    LF089   
       LDA    #$A8    
       STA    $EC     
       LDY    #$06    
LF089: LDA    LFEF8,Y 
       STA    $EE     
       LDA    $F0,X   
       STA    COLUP1  
       JSR    LFEA1   
       INY            
       STY    $E2     
       STY    CTRLPF  
LF09A: LDA    #$00    
       JSR    LFEDD   
       EOR    #$02    
       STA    COLUBK  
       LDA    #$06    
       STA    $E0     
       LSR            
       STA    $DF     
LF0AA: LDY    $DF     
       TYA            
       LDX    $E2     
       BNE    LF0B3   
       ORA    #$08    
LF0B3: TAX            
       LDA.wy $00F0,Y 
       STA    COLUP0  
       STA    COLUP1  
       LDA    LFEF8,Y 
       STA    $E4     
       LDA    $CD,X   
       STA    $DE     
       LDY    $D1,X   
LF0C6: LDX    #$00    
       STA    WSYNC   
LF0CA: LDA.wy $0098,Y 
       BMI    LF0D1   
       BPL    LF0D3   
LF0D1: LDA    #$A8    
LF0D3: AND    #$F8    
       DEC    $DE     
       BMI    LF0DB   
       BPL    LF0DD   
LF0DB: LDA    #$A8    
LF0DD: STA    $E6,X   
       INY            
       INX            
       INX            
       CPX    #$0A    
       BCC    LF0CA   
       STY    $DD     
       DEC    $E0     
       JSR    LFEA1   
       LDX    $DE     
       DEX            
       BMI    LF0FA   
       LDY    $DD     
       LDA    #$A8    
       STA    $E4     
       BNE    LF0C6   
LF0FA: DEC    $DF     
       BPL    LF0AA   
LF0FE: DEC    $E0     
       BMI    LF10B   
       LDX    #$0A    
LF104: STA    WSYNC   
       DEX            
       BPL    LF104   
       BMI    LF0FE   
LF10B: LDA    #$E0    
       JSR    LFEDD   
       DEC    $E2     
       BMI    LF17B   
       LDY    #$05    
LF116: LDA    #$A8    
       STA    $E4     
       STA    $E6     
       STA    $E8     
       STA    $EA     
       STA    $EC     
       STA    $EE     
       STA    WSYNC   
       LDX    #$01    
LF128: STX    $DE     
       LDX    LFFC5,Y 
       LDA    $94,X   
       STA    $DF     
       AND    #$07    
       TAX            
       AND    #$03    
       STA    $E0     
       LDA    LFEF8,X 
       LDX    LFFCB,Y 
       STA    $E4,X   
       LDA    $DF     
       BMI    LF14E   
       CMP    #$0D    
       BNE    LF156   
       ROR    $DF     
       LDA    #$A8    
       BNE    LF15E   
LF14E: LDA    $F6     
       AND    #$08    
       BEQ    LF156   
       LDA    $DF     
LF156: AND    #$78    
       BNE    LF15E   
       LDA    #$A8    
       STA    $E4,X   
LF15E: LDX    LFFD1,Y 
       STA    $E4,X   
       LDX    $E0     
       LDA    $F0,X   
       LDX    $DE     
       STA    COLUP0,X
       DEY            
       DEX            
       BPL    LF128   
       STY    $DD     
       JSR    LFEA1   
       LDY    $DD     
       BPL    LF116   
       JMP    LF09A   
LF17B: STA    WSYNC   
       LDY    #$07    
LF17F: DEY            
       BPL    LF17F   
       LDA    #$01    
       LDY    #$07    
       STA    RESP0   
       STA    NUSIZ0  
       STA    NUSIZ1  
LF18C: STA    WSYNC   
       LDA    LFFDD,Y 
       STA    GRP0    
       LDA    LFFE5,Y 
       STA    GRP1    
       LDA    LFFED,Y 
       LDX    #$04    
LF19D: DEX            
       BPL    LF19D   
       LDX    LFFF5,Y 
       DEY            
       STA    GRP0    
       STX    GRP1    
       BPL    LF18C   
       STY    PF0     
       LDA    #$23    
       STA    TIM64T  
       LDA    #$00    
       STA    AUDC0   
       LDY    SWCHA   
       STY    $E2     
       INY            
       BEQ    LF1C4   
       LDX    #$02    
       STX    $86     
       JSR    LFECC   
LF1C4: INC    $F6     
       LDA    $83     
       CMP    #$FE    
       BCS    LF1F4   
       LDA    $F6     
       JSR    LFDB0   
       LDA    #$FF    
       BIT    $83     
       BPL    LF247   
       BVC    LF1E2   
       CMP    $88     
       BNE    LF1E6   
       BIT    SWCHB   
       BPL    LF1E6   
LF1E2: STA    $CC     
       BMI    LF1F4   
LF1E6: JSR    LFD9C   
       BMI    LF1F7   
       LDA    $87     
       LDY    #$02    
       LDX    #$80    
       JSR    LFE68   
LF1F4: JMP    LF2DF   
LF1F7: LDA    $F8     
       BEQ    LF200   
       INC    $F8     
LF1FD: JMP    LF2CD   
LF200: LDX    $80     
       BMI    LF20B   
       JSR    LFCE5   
       CMP    #$05    
       BEQ    LF1FD   
LF20B: STA    $DF     
       LDA    $E2     
       AND    #$30    
       CMP    #$30    
       BEQ    LF1FD   
       AND    #$10    
       TAY            
       LDA    $87     
       CMP    #$05    
       BNE    LF226   
       LDA    $DF     
       CPY    #$10    
       BEQ    LF1FD   
       BNE    LF22E   
LF226: LDX    #$05    
       CLC            
       ADC    LFFA0,Y 
       BMI    LF242   
LF22E: CMP    #$35    
       BCS    LF1FD   
       CMP    $DF     
       BCC    LF242   
       TAX            
       AND    #$07    
       CMP    #$05    
       BCC    LF242   
       TXA            
       ADC    LFFA8,Y 
       TAX            
LF242: STX    $87     
       JMP    LF2C5   
LF247: BIT    $80     
       BVS    LF1F4   
       LDX    $CC     
       ASL    $98,X   
       LSR    $98,X   
       LDA    $80     
       LSR            
       LSR            
       EOR    $E0     
       AND    #$03    
       BNE    LF2CD   
       JSR    LFD9C   
       BMI    LF298   
       LDA    $98,X   
       AND    #$03    
       ORA    $80     
       BPL    LF27A   
       STA    $80     
       ASL            
       ASL            
       ASL            
       STA    $E3     
       LDA    $81     
       AND    #$07    
       ORA    $E3     
       STA    $81     
       JMP    LF28F   
LF27A: LDA    $98,X   
       EOR    $80     
       AND    #$03    
       BEQ    LF28F   
       LDA    #$0F    
       STA    AUDC0   
       LDY    $80     
       JSR    LFE57   
       BPL    LF298   
       LDX    $CC     
LF28F: JSR    LFE18   
       LDA    #$D0    
       STA    $F8     
       BNE    LF2DF   
LF298: LDA    $F8     
       BEQ    LF2A0   
       INC    $F8     
       BNE    LF2CD   
LF2A0: LDY    $E0     
       LDX    $CC     
       LDA    #$01    
       BIT    $E2     
       BPL    LF2AE   
       BVS    LF2CD   
       LDA    #$FF    
LF2AE: STA    $E3     
LF2B0: CLC            
       TXA            
       ADC    $E3     
       CMP    LFFC1,Y 
       BCS    LF2CD   
       CMP    LFFC0,Y 
       BCC    LF2CD   
       TAX            
       LDA    $98,X   
       BMI    LF2B0   
       STX    $CC     
LF2C5: LDA    #$0C    
       STA    AUDC0   
       LDA    #$E8    
       STA    $F8     
LF2CD: LDX    #$34    
       LDA    $83     
       BMI    LF2D5   
       LDX    $CC     
LF2D5: ASL    $98,X   
       LDA    $F6     
       LSR            
       LSR            
       LSR            
       LSR            
       ROR    $98,X   
LF2DF: LDX    INTIM   
       BNE    LF2DF   
       LDA    #$2A    
       STA    WSYNC   
       STA    VBLANK  
       STA    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STX    VSYNC   
       STA    TIM64T  
       JSR    LFECC   
       LDA    $F6     
       BNE    LF305   
       INC    $86     
       BNE    LF305   
       SEC            
       ROR    $86     
LF305: AND    #$1F    
       BNE    LF30D   
       ASL    $F7     
       LSR    $F7     
LF30D: LDA    SWCHB   
       LSR            
       BCC    LF349   
       LSR            
       BCC    LF322   
       ASL    $F7     
       LSR    $F7     
       LDY    $83     
       INY            
       BEQ    LF353   
       JMP    LF428   
LF322: BIT    $F7     
       BMI    LF33D   
LF326: JSR    LFE88   
       INX            
       STX    $F6     
       CLC            
       LDA    $F7     
       ADC    #$08    
       CMP    #$40    
       BCC    LF337   
       LDA    #$08    
LF337: STA    $85     
       ORA    #$80    
       STA    $F7     
LF33D: LDA    #$06    
       STA    $87     
       LDA    #$FE    
       STA    $83     
       STA    $80     
       BNE    LF350   
LF349: JSR    LFE88   
       LDA    #$0C    
       STA    $84     
LF350: JMP    LFCB2   
LF353: DEC    $84     
       LDA    $84     
       AND    #$03    
       TAX            
       LDY    LFFC0,X 
       LDA    $84     
       CMP    #$03    
       BCC    LF3D4   
       BEQ    LF3BC   
       CMP    #$08    
       BCC    LF392   
       LDA    #$0C    
       STA    $DE     
LF36D: LDX    #$00    
       JSR    LFECC   
       EOR    $FC     
       AND    #$3F    
       TAX            
       SEC            
       SBC    #$34    
       BMI    LF37D   
       TAX            
LF37D: LDA    $98,X   
       STA    $DD     
       LDA.wy $0098,Y 
       STA    $98,X   
       LDA    $DD     
       STA.wy $0098,Y 
       INY            
       DEC    $DE     
       BPL    LF36D   
       BMI    LF350   
LF392: TXA            
       ASL            
       ASL            
       ORA    #$E0    
LF397: STA    $80     
       LDA.wy $0098,Y 
       AND    #$03    
       TAX            
       CLC            
       LDA    $88,X   
       ADC    LFFC0,X 
       INC    $88,X   
       TAX            
       LDA    $98,X   
       AND    #$03    
       ORA    $80     
       STA    $98,X   
       INY            
       SEC            
       LDA    $80     
       SBC    #$10    
       CMP    #$20    
       BCS    LF397   
       BCC    LF350   
LF3BC: LDX    #$33    
LF3BE: LDA    $98,X   
       AND    #$0C    
       LSR            
       LSR            
       STA    $DD     
       LDA    $98,X   
       AND    #$F0    
       LSR            
       ORA    $DD     
       STA    $98,X   
       DEX            
       BPL    LF3BE   
       BMI    LF3E1   
LF3D4: CMP    #$01    
       BEQ    LF3E4   
       BCC    LF40B   
       LDA    #$00    
       JSR    LFDB0   
       STA    $81     
LF3E1: JMP    LFCB2   
LF3E4: LDA    #$02    
       JSR    LFDB0   
       CMP    #$0D    
       BCS    LF400   
       LDX    $81     
       STA    $81     
       STX    $82     
       LDX    #$0C    
LF3F5: LDY    $98,X   
       LDA    $B2,X   
       STA    $98,X   
       STY    $B2,X   
       DEX            
       BPL    LF3F5   
LF400: LDX    #$07    
LF402: LDA    $E4,X   
       STA    $D5,X   
       DEX            
       BPL    LF402   
       BMI    LF3E1   
LF40B: LDA    $F7     
       AND    #$18    
       TAY            
       LDA    #$C0    
       STA    $83     
       LDA    #$FF    
       STA    $80     
       LDA    $82     
       CMP    #$0D    
       BCC    LF425   
       ADC    $81     
       CMP    LFF80,Y 
       BCS    LF3E1   
LF425: JMP    LF349   
LF428: JSR    LFD69   
       LDA    $F8     
       BEQ    LF433   
       INC    $F8     
       BNE    LF3E1   
LF433: BIT    $83     
       BMI    LF43A   
       JMP    LF8D8   
LF43A: LDX    #$07    
       LDA    $E0     
       LDY    $88     
       INY            
       BNE    LF44A   
       STY    $94     
       BIT    SWCHB   
       BMI    LF45F   
LF44A: LSR            
       BCS    LF3E1   
       BNE    LF400   
       CPY    #$00    
       BEQ    LF468   
       BIT    SWCHB   
       BVS    LF468   
LF458: STA    $CD,X   
       DEX            
       BPL    LF458   
       BMI    LF46F   
LF45F: LDY    #$FE    
       STY    $94     
       LSR            
       BCC    LF4E0   
       BNE    LF400   
LF468: LDA    $E4,X   
       STA    $CD,X   
       DEX            
       BPL    LF468   
LF46F: LDY    $80     
       BMI    LF4E0   
       BNE    LF481   
       LDX    $88,Y   
       CPX    #$05    
       BEQ    LF425   
       LDA    $F7     
       AND    #$20    
       BNE    LF488   
LF481: LDX    $88,Y   
       CPX    #$05    
       BNE    LF4E3   
       DEY            
LF488: LDX    #$07    
LF48A: LDA    $E4,X   
       STA    $CD,X   
       DEX            
       BPL    LF48A   
       LDA.wy $0088,Y 
       STA    $87     
       AND    #$38    
       CLC            
       ADC    #$37    
       EOR    #$FF    
       STA    $85     
       LDA    #$00    
       STA    $83     
       STA    $84     
       LDX    #$03    
LF4A7: STA    $94,X   
       DEX            
       BPL    LF4A7   
LF4AC: INX            
       LDA    $88,X   
       EOR    $87     
       AND    #$07    
       BNE    LF4AC   
       LDY    #$CC    
       TXA            
       LSR            
       LDX    $89     
       LDA    $88     
       STY    AUDC0   
       STY    $88     
       STY    $F8     
       BCC    LF4CA   
       LDY    #$C4    
       TAX            
       LDA    $89     
LF4CA: STY    $80     
       AND    #$07    
       STA    $81     
       LDA    $87     
       AND    #$04    
       BNE    LF4D8   
       LDX    #$07    
LF4D8: TXA            
       ASL            
       ASL            
       ASL            
       ORA    $81     
       STA    $81     
LF4E0: JMP    LFCB2   
LF4E3: BIT    $83     
       BVS    LF4E0   
       LDA    #$00    
       STA    $DE     
       STA    $DF     
       LDX    #$03    
LF4EF: LDA    $E4,X   
       CMP    #$03    
       BCS    LF4FB   
       EOR    #$03    
       ADC    $DE     
       STA    $DE     
LF4FB: CLC            
       LDA    $EC,X   
       BEQ    LF508   
       ADC    $E4,X   
       CMP    #$05    
       BCS    LF508   
       DEC    $DF     
LF508: ROR    $F5     
       DEX            
       BPL    LF4EF   
       CLC            
       LDA    $82     
       ADC    $DE     
       ADC    $DF     
       STA    $DF     
       LDX    $80     
       BEQ    LF51D   
       JMP    LF687   
LF51D: JSR    LFE35   
       LDA    $88     
       CMP    #$18    
       BCS    LF59E   
       LSR            
       LSR            
       LSR            
       BCC    LF52E   
       JMP    LF5F3   
LF52E: BEQ    LF537   
       CMP    #$01    
       BNE    LF59E   
       JMP    LF5C8   
LF537: LDX    $88     
       LDY    $DF     
       CPY    #$06    
       BCC    LF59E   
       CPY    #$0A    
       BCC    LF561   
       JSR    LFD10   
       CPY    #$0D    
       BCC    LF5C3   
       CPY    #$10    
       BCC    LF5A1   
       CPY    #$13    
       BCC    LF557   
       LDA    $F4     
       JMP    LF64D   
LF557: LDY    $82     
       CPY    #$10    
       BCC    LF5AF   
       LDA    #$14    
       BCS    LF5BD   
LF561: LDA    #$00    
       JSR    LFD11   
       LDX    $88     
       CPX    #$02    
       BCC    LF582   
       LDY    $E4,X   
       CPY    #$03    
       BCC    LF582   
       CPY    #$05    
       BCC    LF57C   
       LDY    $DE     
       CPY    #$02    
       BCS    LF5E0   
LF57C: LDA    #$08    
LF57E: ORA    $88     
       BNE    LF5E3   
LF582: LDA    $F4     
       LDX    $E2     
       CPX    #$04    
       BCS    LF5E3   
       LDX    $88     
       CPX    #$02    
       BCS    LF596   
       LDY    $E4,X   
       CPY    #$04    
       BCS    LF57C   
LF596: LDA    #$04    
       LDX    $82     
       CPX    #$06    
       BCS    LF5E3   
LF59E: JMP    LF8C9   
LF5A1: LDX    $88     
       CPX    #$02    
       BCC    LF5AF   
       LDA    #$10    
       LDY    $E4,X   
       CPY    #$04    
       BCS    LF57E   
LF5AF: LDA    #$0C    
       LDY    $E2     
       CPY    #$05    
       BCS    LF5C3   
       LDY    $82     
       CPY    #$0D    
       BCC    LF5C3   
LF5BD: LDY    $DE     
       CPY    #$02    
       BCC    LF5E3   
LF5C3: LDA    $F4     
       JMP    LF836   
LF5C8: LDA    $88     
       AND    #$03    
       TAX            
       JSR    LFD10   
       LDY    $DF     
       CPY    #$06    
       BCS    LF5E6   
       LDX    $E1     
       LDA    #$0C    
       LDY    $E4,X   
       CPY    #$03    
       BCC    LF5E3   
LF5E0: LDA    LFEEE,X 
LF5E3: JMP    LF8BA   
LF5E6: LDX    $E1     
       TXA            
       ORA    #$10    
       LDY    $E4,X   
       CPY    #$03    
       BCS    LF5E3   
       BCC    LF5C3   
LF5F3: LDA    $88     
       AND    #$18    
       TAY            
       LDX    $82     
       JSR    LFD40   
       LDA    $DF     
       ADC    LFF40,Y 
       CMP    $F1     
       BCS    LF608   
       LDA    $F1     
LF608: CMP    #$21    
       BCS    LF627   
       CPY    #$10    
       BEQ    LF684   
       CMP    #$1A    
       BCS    LF627   
       TYA            
       BNE    LF684   
       LDX    $F4     
       BNE    LF61D   
       LDX    $F5     
LF61D: TXA            
       LDY    $E4,X   
       CPY    #$05    
       BCC    LF684   
LF624: JMP    LF836   
LF627: LDA    #$00    
       LDY    $E6     
       CPY    #$04    
       BEQ    LF624   
       LDY    $E7     
       CPY    #$04    
       BEQ    LF624   
       LDX    #$03    
       CPY    $E6     
       BCS    LF63C   
       DEX            
LF63C: LDY    $E4,X   
       CPY    #$05    
       BCC    LF660   
       CPY    #$06    
       BCS    LF64C   
       LDY    $88     
       CPY    #$04    
       BNE    LF624   
LF64C: TXA            
LF64D: JSR    LFCFC   
       CMP    #$18    
       BCC    LF65A   
       LDY    $F1     
       CPY    #$21    
       BCC    LF65D   
LF65A: CLC            
       ADC    #$08    
LF65D: JMP    LF8BA   
LF660: LDA    #$34    
       LDX    #$24    
LF664: CPX    $F2     
       BCC    LF65D   
       SBC    #$10    
       CPX    $F1     
       BCC    LF65D   
       LDX    #$20    
       ADC    #$07    
       CMP    #$2C    
       BEQ    LF664   
       LDA    #$14    
       LDX    #$19    
       CPX    $F2     
       BCC    LF65D   
       LDA    $88     
       CPX    $F1     
       BCC    LF65A   
LF684: JMP    LF8C9   
LF687: LDY    #$70    
       LDA    $88,X   
       CMP    #$1C    
       BCC    LF6E9   
       BEQ    LF69D   
       LDY    $86,X   
       CPY    #$1C    
       BNE    LF6A3   
       LDY    #$68    
       CMP    #$24    
       BNE    LF6A3   
LF69D: JSR    LFD4E   
LF6A0: JMP    LF836   
LF6A3: CPX    #$04    
       BCC    LF684   
       LDA    $87,X   
       CMP    #$1C    
       BNE    LF6CE   
       LDY    #$70    
       JSR    LFD4E   
       BEQ    LF6CA   
       CMP    #$03    
       BCS    LF6DD   
       LDA    #$20    
       ORA    $81     
       CMP    #$24    
       BEQ    LF6C4   
       CMP    $88,X   
       BCS    LF6C7   
LF6C4: JSR    LFCE5   
LF6C7: JMP    LF8BA   
LF6CA: LDA    #$24    
       BNE    LF6C7   
LF6CE: CMP    #$24    
       BNE    LF684   
       LDY    #$68    
       JSR    LFD4E   
       BNE    LF6DD   
       LDA    #$30    
       BNE    LF6DF   
LF6DD: LDA    #$28    
LF6DF: ORA    $81     
       CMP    $88,X   
       BCS    LF6C7   
       LDA    #$04    
       BNE    LF6A0   
LF6E9: AND    #$07    
       TAY            
       LDA    $88,X   
       CMP    LFEEE,Y 
       BCC    LF703   
       EOR    $88     
       AND    #$07    
       BEQ    LF6FD   
       AND    #$04    
       BEQ    LF703   
LF6FD: LDA    $89     
       AND    #$04    
       BNE    LF684   
LF703: LDA    $88     
       AND    #$38    
       TAY            
       TAX            
       LDA    $88     
       AND    #$04    
       STA    $DD     
       BNE    LF786   
       LDY    #$18    
       CPX    #$08    
       BEQ    LF786   
       LDA    $8A     
       AND    #$07    
       LDX    #$01    
       JSR    LFCFE   
       CMP    $8A     
       BEQ    LF747   
       LDY    #$38    
       EOR    $89     
       AND    #$07    
       BEQ    LF738   
       LDA    $8A     
       EOR    $88     
       AND    #$07    
       BNE    LF786   
       LDY    #$30    
       BNE    LF786   
LF738: LDY    #$30    
       CLC            
       LDA    $89     
       ADC    #$10    
       CMP    $8A     
       BEQ    LF786   
       LDY    #$38    
       BNE    LF786   
LF747: LDY    #$28    
       EOR    $89     
       AND    #$07    
       BEQ    LF786   
       LDA    $89     
       AND    #$07    
       LDX    #$00    
       JSR    LFCFE   
       CMP    $89     
       BNE    LF786   
       LDA    $8A     
       CMP    #$08    
       BCC    LF786   
       AND    #$07    
       CMP    #$04    
       BCS    LF786   
       STA    $E1     
       LDA    $88     
       AND    #$07    
       CMP    $E1     
       BEQ    LF786   
       LDY    #$38    
       BCC    LF786   
       LDA    $8A     
       CMP    #$10    
       BCS    LF786   
       LDY    #$28    
       LDA    $80     
       CMP    #$02    
       BCS    LF786   
       LDY    #$20    
LF786: STY    $F3     
       LDX    $DF     
       JSR    LFD40   
       LDX    #$04    
       LDY    #$00    
LF791: STY    $E8,X   
       DEX            
       BPL    LF791   
LF796: LDA.wy $0088,Y 
       AND    #$07    
       TAX            
       CPY    #$02    
       BNE    LF7A8   
       CMP    #$01    
       BNE    LF7A8   
       LDA    $DD     
       BNE    LF7E6   
LF7A8: TYA            
       ROR            
       LDA    $E8,X   
       BNE    LF7CB   
       LDA    #$7F    
       BCS    LF7C1   
       LDA    #$03    
       CPY    #$00    
       BNE    LF7C1   
       LDA    $88     
       CMP    #$08    
       LDA    #$02    
       ROL            
       CPX    #$02    
LF7C1: ADC    $E4,X   
       BPL    LF7D9   
       ORA    #$40    
       STA    $E8,X   
       BMI    LF7E6   
LF7CB: BCS    LF7E6   
       INC    $E8,X   
       BPL    LF7DB   
       ASL            
       ASL            
       LDA    $E8,X   
       ADC    #$02    
       AND    #$0F    
LF7D9: STA    $E8,X   
LF7DB: LDX    #$04    
LF7DD: LDA    $E8,X   
       AND    #$8F    
       STA    $E8,X   
       DEX            
       BPL    LF7DD   
LF7E6: INY            
       CPY    $80     
       BCC    LF796   
       BEQ    LF796   
       LDX    #$04    
LF7EF: LDA    $E8,X   
       AND    #$0F    
       STA    $E8,X   
       DEX            
       BPL    LF7EF   
       LDA    #$07    
       LDX    #$02    
       JSR    LFD38   
       BCS    LF83C   
LF801: STX    $81     
       LDA    #$1C    
       LDY    #$20    
       CPY    $F1     
       BCC    LF839   
       LDA    LFEEE,X 
       LDY    LFEF3,X 
       CPY    $F2     
       BCC    LF839   
       SBC    #$08    
       CPY    $F1     
       LDX    $80     
       LDY    $81     
       BCS    LF82E   
       CMP    $88,X   
       BEQ    LF835   
       BCS    LF839   
LF825: TYA            
       JSR    LFCFC   
       CMP    LFEEE,Y 
       BCC    LF839   
LF82E: TYA            
       EOR    $88,X   
       AND    #$07    
       BEQ    LF839   
LF835: TYA            
LF836: JSR    LFCFC   
LF839: JMP    LF8BA   
LF83C: LDX    #$01    
LF83E: INX            
       CPX    #$04    
       BCS    LF87E   
       LDA    $80     
       LSR            
       ADC    #$03    
       LDY    $E8,X   
       STY    $E2     
       BNE    LF850   
       LDA    #$03    
LF850: LDY    #$04    
       CPY    $DD     
       BEQ    LF85E   
       CPY    $8A     
       BNE    LF860   
       CPX    $89     
       BEQ    LF860   
LF85E: ADC    #$00    
LF860: CMP    $E4,X   
       BCS    LF83E   
       TXA            
       JSR    LFCFC   
       CMP    #$18    
       BCC    LF870   
       LDY    $E2     
       BEQ    LF87E   
LF870: CMP    #$10    
       BCS    LF8BA   
       LDY    $DF     
       CPY    #$0C    
       BCC    LF8BA   
       ADC    #$07    
       BNE    LF8BA   
LF87E: LDX    #$00    
       LDA    #$08    
       JSR    LFD38   
       BCC    LF8A3   
       LDA    $EC     
       BNE    LF89A   
       LDX    #$00    
LF88D: ASL    $F5     
       BCS    LF895   
       LDA    $E8,X   
       BEQ    LF8A6   
LF895: INX            
       CPX    #$04    
       BCC    LF88D   
LF89A: LDX    $82     
       LDY    $F3     
       JSR    LFD40   
       LDX    #$04    
LF8A3: JMP    LF801   
LF8A6: LDY    #$19    
       CPY    $F1     
       BCS    LF8C9   
       LDX    $80     
       LDY    #$00    
       LDA    $E8     
       CMP    $E9     
       BCS    LF8B7   
       INY            
LF8B7: JMP    LF825   
LF8BA: LDX    #$C0    
       LDY    $80     
       CMP    #$35    
       BCS    LF8C8   
       CMP.wy $0088,Y 
       BCC    LF8C9   
       BNE    LF8CD   
LF8C9: LDA    #$05    
       LDX    #$80    
LF8CD: LDY    #$00    
       JSR    LFE68   
       JSR    LFCE5   
       JMP    LF95C   
LF8D8: LDA    $84     
       CMP    #$04    
       BEQ    LF909   
       BCS    LF91F   
       BIT    $80     
       BVC    LF962   
       LDA    $80     
       LSR            
       LSR            
       EOR    $E0     
       AND    #$03    
       BEQ    LF8FC   
       LSR            
       BCS    LF962   
       LDX    #$07    
LF8F3: LDA    $E8,X   
       STA    $88,X   
       DEX            
       BPL    LF8F3   
       BMI    LF962   
LF8FC: LDA    $88     
       CMP    #$CC    
       BEQ    LF962   
       LDA    $80     
       BPL    LF97C   
       JMP    LFAFF   
LF909: LDX    $DE     
       LDA    $94,X   
       ORA    #$80    
       STA    $94,X   
       INC    $84     
       TXA            
       LSR            
       BCS    LF962   
       LDA    $85     
       ADC    #$08    
       STA    $85     
       BNE    LF962   
LF91F: JSR    LFD9C   
       BMI    LF962   
       LDX    #$03    
LF926: LDA    #$00    
       STA    $94,X   
       DEX            
       BPL    LF926   
       STA    $84     
       LDA    SWCHA   
       AND    #$20    
       BEQ    LF942   
       LDA    #$CC    
       STA    $88     
       INC    $83     
       LDA    $83     
       CMP    #$0D    
       BCC    LF965   
LF942: LDA    #$C0    
       STA    $83     
       STX    $80     
       STX    $88     
       CLC            
       LDA    $87     
       ADC    #$08    
       STA    $96     
       LDX    #$33    
LF953: ASL    $98,X   
       LSR    $98,X   
       DEX            
       BPL    LF953   
       LDA    #$05    
LF95C: STA    $87     
LF95E: LDA    #$C0    
       STA    $F8     
LF962: JMP    LFCB2   
LF965: LDA    $DE     
       ASL            
       ASL            
       ORA    #$C0    
       STA    $80     
       LSR    $DE     
       BCS    LF95E   
       AND    #$8F    
       STA    $80     
       AND    #$0C    
       ORA    $DF     
       JMP    LFC9B   
LF97C: LDX    $E1     
       LDA    $E4,X   
       BEQ    LF985   
       JMP    LFA5B   
LF985: LDX    #$07    
LF987: STA    $8C,X   
       DEX            
       BPL    LF987   
       LDY    #$0C    
LF98E: LDA.wy $0098,Y 
       BMI    LF998   
       AND    #$03    
       TAX            
       INC    $8C,X   
LF998: LDA.wy $00B2,Y 
       BMI    LF9A2   
       AND    #$03    
       TAX            
       INC    $90,X   
LF9A2: DEY            
       BPL    LF98E   
       LDX    #$03    
LF9A7: LDA    $8C,X   
       CMP    $90,X   
       BCS    LF9AF   
       LDA    $90,X   
LF9AF: LDY    #$00    
       CMP    $E4,X   
       BCS    LF9B7   
       LDY    #$FF    
LF9B7: STY    $8C,X   
       DEX            
       BPL    LF9A7   
       LDA    $87     
       AND    #$07    
       TAX            
       STA    $E2     
       CMP    #$04    
       BCS    LFA14   
       LDA    $E4,X   
       BEQ    LFA14   
       LDA    #$00    
       STA    $8C,X   
       CPX    $F5     
       BNE    LF9D7   
       LDA    $F4     
       STA    $F5     
LF9D7: CPX    $F4     
       BNE    LF9E2   
       JSR    LFE35   
       LDA    $F5     
       STA    $F4     
LF9E2: LDX    $E2     
       CPX    $DF     
       BNE    LF9F8   
       LDA    $DE     
       LSR            
       BCS    LFA14   
       LDY    $E8,X   
       LDA.wy $0098,Y 
       CMP    $DD     
       BCS    LFA6D   
       BCC    LFA14   
LF9F8: LDA    $84     
       CMP    #$01    
       BEQ    LFA56   
       CMP    #$03    
       BEQ    LFA0D   
       JSR    LFE4F   
       BMI    LFA0D   
       LDX    $E2     
       CMP    $DD     
       BCS    LFA56   
LFA0D: LDX    $E2     
       LDA    $DE     
       LSR            
       BCC    LFA56   
LFA14: LDA    $F4     
       LDY    #$03    
LFA18: AND    #$03    
       TAX            
       LDA    $8C,X   
       BNE    LFA56   
       INX            
       TXA            
       DEY            
       BPL    LFA18   
       LDX    $F5     
       SEC            
       LDA    #$05    
       SBC    $EC,X   
       BMI    LFA31   
       CMP    $E4,X   
       BCC    LFA56   
LFA31: LDY    $F4     
       LDX    $F0,Y   
       LDA    $98,X   
       STA    $E3     
       JSR    LFE57   
       BMI    LFA42   
       CMP    $E3     
       BCS    LFA50   
LFA42: LDA    $F4     
       ORA    #$08    
       TAY            
       JSR    LFE57   
       BMI    LFA54   
       CMP    $E3     
       BCC    LFA54   
LFA50: LDX    $F4     
       BPL    LFA56   
LFA54: LDX    $F5     
LFA56: LDY    $F0,X   
       JMP    LFC86   
LFA5B: CMP    #$01    
       BEQ    LFA56   
       LDA    $84     
       CMP    #$01    
       BEQ    LFA70   
       CPX    $DF     
       BNE    LFA56   
       CMP    #$02    
       BEQ    LFAB2   
LFA6D: JMP    LFAE2   
LFA70: JSR    LFE4F   
       STA    $E3     
       BMI    LFA88   
       LDA    $83     
       CMP    #$09    
       BCS    LFA82   
       JSR    LFE64   
       BPL    LFA84   
LFA82: LDA    $E3     
LFA84: CMP    $DD     
       BCS    LFA8A   
LFA88: LDA    $DD     
LFA8A: LDX    $E1     
       LDY    $88,X   
       BEQ    LFA95   
       CMP.wy $0098,Y 
       BCC    LFA56   
LFA95: LDA    $E3     
       BMI    LFA6D   
       CMP    $DD     
       BCC    LFA6D   
       LDX    $E1     
       LDY    $E8,X   
       CMP.wy $0098,Y 
       BCS    LFAAA   
       STA    $DD     
       BCC    LFA6D   
LFAAA: LDA    $DD     
       CMP    #$58    
       BCS    LFAE2   
       BCC    LFA56   
LFAB2: LDY    $E8,X   
       LDA.wy $0098,Y 
       CMP    $DD     
       BCC    LFA56   
       STA    $E1     
       JSR    LFE4F   
       BMI    LFAE2   
       CMP    $DD     
       BCC    LFAE2   
       CMP    $E1     
       BCC    LFADD   
LFACA: JSR    LFE64   
       BPL    LFAD5   
       LDX    $DF     
       LDY    $F0,X   
       BNE    LFAFC   
LFAD5: CMP    $E1     
       BCS    LFACA   
       CMP    $DD     
       BCC    LFAE2   
LFADD: STA    $DD     
       ASL            
       STA    $DE     
LFAE2: LDX    $DF     
       LDY    $F0,X   
       LDA    $DE     
       LSR            
       BCS    LFAFC   
LFAEB: LDA.wy $0098,Y 
       BMI    LFAF4   
       CMP    $DD     
       BCS    LFAFC   
LFAF4: DEY            
       TYA            
       CMP    $E8,X   
       BCS    LFAEB   
       LDY    $F0,X   
LFAFC: JMP    LFC86   
LFAFF: INX            
       TXA            
       AND    #$03    
       TAX            
       LDA    $E4,X   
       BEQ    LFAFF   
       STX    $82     
       STX    $F5     
       LDA    #$00    
       STA    $E3     
       LDA    $87     
       AND    #$07    
       STA    $DF     
       CMP    #$04    
       BCS    LFB2B   
       ORA    #$08    
       TAY            
       JSR    LFE57   
       BMI    LFB2B   
       LDY    $DF     
       JSR    LFE57   
       BMI    LFB2B   
       DEC    $E3     
LFB2B: LDX    #$03    
LFB2D: TXA            
       STA    $E1     
       ORA    #$08    
       TAY            
       JSR    LFE57   
       BPL    LFB3A   
       LDA    #$00    
LFB3A: STA    $E2     
       JSR    LFE64   
       STY    $DE     
       LDY    $E1     
       JSR    LFE57   
       BMI    LFB53   
       CMP    $E2     
       BCC    LFB53   
       STA    $E2     
       JSR    LFE64   
       STY    $DE     
LFB53: LDA    $E2     
       LDX    $E1     
       ASL    $DE     
       ROR    $90,X   
       LDY    $E8,X   
       CMP.wy $0098,Y 
       ROR    $90,X   
       SEC            
       LDY    $88,X   
       BEQ    LFB6A   
       CMP.wy $0098,Y 
LFB6A: ROR    $90,X   
       SEC            
       BIT    $E3     
       BPL    LFB73   
       CMP    #$01    
LFB73: ROR    $90,X   
       DEX            
       BPL    LFB2D   
       LDA    $83     
       ASL            
       ASL            
       ASL            
       SEC            
       SBC    $85     
       CMP    #$68    
       BEQ    LFBA6   
       LDY    $83     
       BEQ    LFBC8   
       LDA    $81     
       AND    #$03    
       TAX            
       LDA    $E4,X   
       BEQ    LFBA2   
       LDA    $90,X   
       BPL    LFBA2   
       ASL            
       ASL            
       BCC    LFB9F   
       BPL    LFB9F   
       EOR    #$40    
       ASL            
       ASL            
LFB9F: JMP    LFC60   
LFBA2: CPY    #$06    
       BCC    LFBC8   
LFBA6: LDA    $81     
       LDY    #$07    
LFBAA: AND    #$03    
       TAX            
       LDA    $E4,X   
       BEQ    LFBC3   
       LDA    $90,X   
       BPL    LFBC3   
       CPY    #$04    
       BCC    LFBBF   
       AND    #$20    
       BEQ    LFB9F   
       BNE    LFBC3   
LFBBF: ASL            
       CLC            
       BPL    LFB9F   
LFBC3: INX            
       TXA            
       DEY            
       BPL    LFBAA   
LFBC8: LDA    #$00    
       STA    $DE     
       STA    $E2     
       LDA    #$FF    
       STA    $DD     
       LDA    $81     
       LSR            
       LSR            
       LSR            
       AND    #$07    
       STA    $E3     
       LDA    $81     
       AND    #$07    
       CMP    $DF     
       BNE    LFBE5   
       LDA    #$07    
LFBE5: STA    $E1     
       LDX    #$03    
LFBE9: LDY    $E4,X   
       BEQ    LFC1E   
       CPX    $E1     
       BEQ    LFC1E   
       CPX    $E3     
       BEQ    LFC1E   
       LDA    $90,X   
       BPL    LFC1E   
       CLC            
       LDA    $8C,X   
       ADC    $EC,X   
       CMP    $DD     
       BCS    LFC0E   
       CPX    $DF     
       BNE    LFC0A   
       CMP    #$02    
       BCS    LFC0E   
LFC0A: STA    $DD     
       STX    $F5     
LFC0E: CPY    $DE     
       BCC    LFC1E   
       BNE    LFC18   
       CMP    $E2     
       BCC    LFC1E   
LFC18: STA    $E2     
       STY    $DE     
       STX    $82     
LFC1E: DEX            
       BPL    LFBE9   
       LDX    $82     
       LDA    $87     
       AND    #$04    
       BNE    LFC3C   
       LDX    $DF     
       LDA    $E4,X   
       CMP    #$04    
       BCC    LFC3A   
       JSR    LFE35   
       LDX    $F4     
       CPX    $DF     
       BNE    LFC3C   
LFC3A: LDX    $F5     
LFC3C: LDY    $E8,X   
       LDA.wy $0098,Y 
       SEC            
       SBC    #$08    
       INY            
       CMP.wy $0098,Y 
       BNE    LFC5C   
       STA    $E3     
       LDA    $87     
       AND    #$04    
       BEQ    LFC64   
       LDA    $E3     
       SBC    #$08    
       INY            
       CMP.wy $0098,Y 
       BEQ    LFC64   
LFC5C: LDA    #$02    
       CMP    $E4,X   
LFC60: LDY    $F0,X   
       BCC    LFC66   
LFC64: LDY    $E8,X   
LFC66: TXA            
       ORA    $80     
       STA    $80     
       STX    $E3     
       LDA    $81     
       AND    #$03    
       TAX            
       EOR    $E3     
       BEQ    LFC7E   
       LDA    $83     
       BEQ    LFC7E   
       LDA    $88,X   
       BNE    LFC86   
LFC7E: LDA    $81     
       AND    #$38    
       ORA    $E3     
       STA    $81     
LFC86: TYA            
       TAX            
       JSR    LFE18   
       LDY    $84     
       CPY    #$04    
       BCS    LFCB2   
       AND    #$8F    
       STA    $80     
       LDA    #$CC    
       STA    $88     
       LDA    $80     
LFC9B: AND    #$0B    
       STA    $DD     
       TAY            
       JSR    LFE57   
       BPL    LFCAB   
       LDY    $DD     
       INY            
       TYA            
       BNE    LFC9B   
LFCAB: STX    $CC     
       JSR    LFE64   
       BPL    LFCAB   
LFCB2: LDX    #$05    
       LDY    #$FF    
       LDA    SWCHB   
       AND    #$08    
       BNE    LFCBF   
       LDY    #$0F    
LFCBF: LDA    #$00    
       STA    $DD     
       STY    $DE     
       LDA    #$08    
       BIT    $86     
       BPL    LFCD9   
       TYA            
       AND    #$F7    
       TAY            
       LDA    $86     
       ASL            
       STA    $DD     
       STY    $DE     
LFCD6: LDA    LFFD7,X 
LFCD9: EOR    $DD     
       AND    $DE     
       STA    $F0,X   
       DEX            
       BPL    LFCD6   
       JMP    LF00E   
LFCE5: LDX    $80     
       LDA    $88,X   
       CMP    #$34    
       BCC    LFCF0   
LFCED: LDA    #$05    
       RTS            

LFCF0: ADC    #$01    
       AND    #$07    
       CMP    #$05    
       BCC    LFCFC   
       BNE    LFCED   
       LDA    #$00    
LFCFC: LDX    $80     
LFCFE: STA    $E3     
       LDA    $88,X   
       AND    #$38    
       ORA    $E3     
       CMP    $88,X   
       BEQ    LFD0C   
       BCS    LFD0F   
LFD0C: CLC            
       ADC    #$08    
LFD0F: RTS            

LFD10: TXA            
LFD11: STA    $E1     
       LDA    #$00    
       STA    $E2     
LFD17: INX            
       TXA            
       AND    #$03    
       TAX            
       CPX    $E1     
       BEQ    LFD37   
       LDA    $E4,X   
       CMP    $E2     
       BCC    LFD17   
       BNE    LFD30   
       CMP    #$05    
       BCC    LFD17   
       CPX    $F4     
       BCC    LFD17   
LFD30: STA    $E2     
       STX    $F4     
       JMP    LFD17   
LFD37: RTS            

LFD38: CMP    $E8,X   
       BCC    LFD3F   
       INX            
       CMP    $E8,X   
LFD3F: RTS            

LFD40: CLC            
       TXA            
       ADC    LFF00,Y 
       STA    $F2     
       TXA            
       ADC    LFF40,Y 
       STA    $F1     
       RTS            

LFD4E: STY    $E1     
       LDX    #$0C    
       LDY    #$00    
LFD54: LDA    $98,X   
       AND    #$78    
       CMP    $E1     
       BNE    LFD5D   
       INY            
LFD5D: DEX            
       BPL    LFD54   
       TYA            
       LDX    $80     
       CLC            
       ADC    $88,X   
       AND    #$03    
       RTS            

LFD69: LDA    $80     
       AND    #$03    
       STA    $DF     
       STA    $E1     
       LDA    #$00    
       STA    $DD     
       LDX    #$03    
LFD77: LDY    $94,X   
       BEQ    LFD98   
       TYA            
       EOR    $DF     
       AND    #$03    
       BEQ    LFD90   
       TYA            
       EOR    $87     
       AND    #$07    
       BNE    LFD98   
       TYA            
       AND    #$03    
       STA    $DF     
       BPL    LFD94   
LFD90: CPY    $DD     
       BCC    LFD98   
LFD94: STY    $DD     
       STX    $DE     
LFD98: DEX            
       BPL    LFD77   
       RTS            

LFD9C: LDA    $F9     
       EOR    #$40    
       ASL            
       ASL            
       LDA    REFP1   
       STA    $F9     
       BMI    LFDAC   
       STA    $86     
       BCC    LFDAD   
LFDAC: SEC            
LFDAD: ROR    $F9     
       RTS            

LFDB0: AND    #$03    
       STA    $E0     
       TAX            
       LDA    #$00    
       LDY    LFFC0,X 
       LDX    #$0F    
LFDBC: STA    $E4,X   
       DEX            
       BPL    LFDBC   
       STA    $DD     
       STA    $82     
       STX    $DF     
       LDA    #$0C    
       STA    $E1     
       LDX    #$07    
       BNE    LFDF8   
LFDCF: LDA.wy $0098,Y 
       AND    #$03    
       TAX            
       STY    $E8,X   
LFDD7: INC    $E4,X   
       LDA.wy $0098,Y 
       STY    $F0,X   
       CMP    $DF     
       BCS    LFDE6   
       STA    $DF     
       STX    $F5     
LFDE6: SEC            
       SBC    #$50    
       BCC    LFDF3   
       LSR            
       LSR            
       LSR            
       CLC            
       ADC    $EC,X   
       STA    $EC,X   
LFDF3: INY            
       DEC    $E1     
       BMI    LFE02   
LFDF8: TXA            
       EOR.wy $0098,Y 
       BMI    LFDF3   
       AND    #$07    
       BEQ    LFDD7   
LFE02: LDA    $E4,X   
       CMP    $DD     
       BCC    LFE0C   
       STA    $DD     
       STX    $F4     
LFE0C: CLC            
       LDA    $EC,X   
       ADC    $82     
       STA    $82     
       LDX    $E1     
       BPL    LFDCF   
       RTS            

LFE18: LDA    $98,X   
       LDY    $E0     
       STA.wy $0094,Y 
       ORA    #$80    
       STA    $98,X   
       LDA    #$0C    
       STA    AUDC0   
       CLC            
       LDA    $80     
       ADC    #$04    
       AND    #$0F    
       ORA    #$40    
       STA    $80     
       INC    $84     
       RTS            

LFE35: LDA    #$00    
       STA    $E1     
       LDX    #$03    
       CPX    $F4     
LFE3D: BEQ    LFE4B   
       LDA    $E4,X   
       BEQ    LFE4B   
       CMP    $E1     
       BCC    LFE4B   
       STA    $E1     
       STX    $F5     
LFE4B: DEX            
       BPL    LFE3D   
       RTS            

LFE4F: CLC            
       LDA    $80     
       ADC    #$04    
       AND    #$0F    
       TAY            
LFE57: LDX    $D1,Y   
       LDA.wy $00CD,Y 
       TAY            
LFE5D: DEY            
       BMI    LFE67   
       LDA    $98,X   
       BPL    LFE67   
LFE64: INX            
       BNE    LFE5D   
LFE67: RTS            

LFE68: STX    $F8     
       STX    $83     
       LDX    $80     
       INX            
       CPX    #$0C    
       BCC    LFE79   
       LDX    $93     
       STX    $91     
       LDX    #$0A    
LFE79: STX    $80     
       STA    $88,X   
       CLC            
       ADC    #$08    
       STA.wy $0094,Y 
       LDA    #$0C    
       STA    AUDC0   
       RTS            

LFE88: LDX    #$54    
       LDA    #$00    
LFE8C: STA    $80,X   
       DEX            
       BPL    LFE8C   
       STX    $83     
       LDX    #$34    
       LDY    $F6     
LFE97: TYA            
       ORA    #$80    
       STA    $98,X   
       INY            
       DEX            
       BPL    LFE97   
       RTS            

LFEA1: LDY    #$07    
LFEA3: STA    WSYNC   
       LDA    ($E4),Y 
       STA    GRP0    
       LDA    ($EA),Y 
       STA    GRP1    
       LDA    ($EE),Y 
       STA    $E1     
       LDA    ($E8),Y 
       TAX            
       LDA    ($E6),Y 
       STA    GRP0    
       NOP            
       STX    GRP0    
       LDX    $E1     
       LDA    ($EC),Y 
       STA    GRP1    
       NOP            
       STX    GRP1    
       DEY            
       BNE    LFEA3   
       STY    GRP0    
       STY    GRP1    
       RTS            

LFECC: LSR    $FA,X   
       ROR    $FB,X   
       ROL            
       EOR    $FB,X   
       LSR            
       LDA    $FA,X   
       BCS    LFEDC   
       ORA    #$40    
       STA    $FA,X   
LFEDC: RTS            

LFEDD: STA    WSYNC   
       STA    PF1     
       LDA    $F4     
       STA    COLUPF  
       STA    COLUBK  
       STA    WSYNC   
       LDA    $F5     
       STA    COLUBK  
       RTS            

LFEEE: .byte $20,$21,$1A,$1B,$14
LFEF3: .byte $1C,$1C,$19,$19,$19
LFEF8: .byte $90,$88,$80,$A0,$98,$B8,$A8,$FF
LFF00: .byte $10,$3C,$66,$66,$66,$66,$66,$3C,$16,$7E,$18,$18,$18,$78,$38,$18
       .byte $19,$7E,$60,$60,$3C,$06,$46,$3C,$16,$3C,$46,$06,$0C,$06,$46,$3C
       .byte $0D,$0C,$0C,$7E,$4C,$2C,$1C,$0C,$0D,$7C,$46,$06,$7C,$60,$60,$7E
       .byte $10,$3C,$66,$66,$7C,$60,$62,$3C,$13,$18,$18,$18,$0C,$06,$42,$7E
LFF40: .byte $12,$3C,$66,$66,$3C,$66,$66,$3C,$18,$3C,$46,$06,$3E,$66,$66,$3C
       .byte $1B,$EE,$5B,$5B,$5B,$5B,$DB,$4E,$19,$38,$6C,$6C,$0C,$0C,$7E,$7E
       .byte $12,$3A,$64,$6A,$66,$66,$66,$3C,$0F,$33,$36,$3C,$38,$3C,$36,$33
       .byte $12,$63,$63,$7F,$7F,$63,$3E,$1C,$15,$FE,$C0,$C0,$FC,$C0,$C0,$FE
LFF80: .byte $00,$08,$1C,$3E,$7F,$7F,$77,$22,$16,$08,$1C,$3E,$7F,$3E,$1C,$08
       .byte $1A,$18,$7E,$FF,$7E,$18,$3C,$18,$1E,$8A,$9A,$AA,$CA,$8A,$02,$07
LFFA0: .byte $01,$1C,$5D,$7F,$7F,$3E,$1C,$08
LFFA8: .byte $02,$00,$00,$00,$00,$00,$00,$00,$FF,$00,$00,$7E,$7E,$00,$00,$00
       .byte $FC,$C0,$C0,$F8,$FC,$CC,$FC,$F8
LFFC0: .byte $00
LFFC1: .byte $0D,$1A,$27,$34
LFFC5: .byte $02,$02,$03,$01,$00,$00
LFFCB: .byte $06,$06,$02,$0A,$06,$06
LFFD1: .byte $04,$04,$00,$08,$04,$04
LFFD7: .byte $00,$44,$44,$00,$92,$04
LFFDD: .byte $00,$AD,$A9,$E9,$A9,$ED,$41,$0F
LFFE5: .byte $00,$50,$58,$5C,$56,$53,$11,$F0
LFFED: .byte $00,$BA,$8A,$BA,$A2,$3A,$80,$FE
LFFF5: .byte $00,$E9,$AB,$AF,$AD,$E9,$00,$00,$F0,$FF,$FF
