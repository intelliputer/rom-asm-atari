; Disassembly of roms/Task Force.bin
; Disassembled Tue Oct  6 15:24:47 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Task Force.bin
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
PF2     =  $0F
RESP0   =  $10
RESP1   =  $11
AUDC0   =  $15
AUDC1   =  $16
AUDF0   =  $17
AUDV0   =  $19
GRP0    =  $1B
GRP1    =  $1C
HMP0    =  $20
HMP1    =  $21
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXPPMM  =  $37
SWCHA   =  $0280
SWACNT  =  $0281
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296

       ORG $F000

START:
LF000: SEI            
       CLD            
       LDX    #$00    
       LDA    #$00    
LF006: STA    VSYNC,X 
       TXS            
       INX            
       BNE    LF006   
       LDA    #$0C    
       STA    $D0     
       STA    $EA     
       JMP    LF073   
LF015: LDA    #$01    
       STA    $E8     
       LDA    #$F0    
       LDY    #$FF    
       LDX    #$06    
LF01F: STA    $88,X   
       STA    $E9,X   
       STY    $89,X   
       DEX            
       DEX            
       BPL    LF01F   
LF029: JSR    LF85E   
       LDA    #$00    
       STA    $D0     
       STA    $9A     
       STA    $E0     
       STA    $E6     
       STA    AUDV0   
       STA    $81     
       STA    $D8     
       STA    $D9     
       STA    $DA     
       STA    $DB     
       STA    $E7     
       LDA    #$FF    
       STA    $86     
       LDA    #$05    
       STA    $82     
       LDA    #$04    
       STA    $84     
       STA    $E5     
       LDA    #$86    
       STA    $DC     
       LDA    #$04    
       STA    $DE     
       LDA    #$50    
       STA    $87     
       LDA    #$3F    
       STA    $E3     
       LDA    #$3D    
       STA    $E1     
       LDA    #$53    
       STA    $E2     
       JSR    LFAB9   
       JSR    LF94C   
       JMP    LF838   
LF073: LDA    #$00    
       STA    WSYNC   
       STA    CXCLR   
       STA    VBLANK  
       LDA    #$FF    
       STA    TIM64T  
       LDA    #$00    
       LDY    $D0     
       CPY    #$05    
       BNE    LF08B   
       JMP    LF2B6   
LF08B: CPY    #$0B    
       BEQ    LF095   
       CPY    #$0D    
       BEQ    LF095   
       LDA    $DC     
LF095: STA    COLUBK  
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$0F    
       LDX    $E6     
       BEQ    LF0A3   
       LDA    #$3F    
LF0A3: STA    COLUP0  
       STA    COLUP1  
       LDA    #$01    
       STA    CTRLPF  
       STA    WSYNC   
       STA    HMOVE   
       LDY    #$11    
       LDA    $E8     
       BEQ    LF0BD   
       LDA    $D0     
       CMP    #$08    
       BEQ    LF0BD   
       LDY    #$13    
LF0BD: JSR    LF999   
       LDA    $D0     
       CMP    #$0D    
       BEQ    LF0CA   
       CMP    #$0B    
       BNE    LF0CD   
LF0CA: JMP    LFD27   
LF0CD: LDA    #$00    
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    WSYNC   
       STA    HMOVE   
       LDY    $D0     
       CPY    #$0C    
       BEQ    LF0DF   
       LDA    #$FF    
LF0DF: STA    $BC     
       LDA    #$FE    
       STA    $A5     
       LDA    #$2C    
       STA    $A4     
       LDA    $E0     
       BEQ    LF0FB   
       LDA    #$FD    
       STA    $A5     
       STA    $A3     
       LDA    #$4E    
       STA    $A2     
       LDA    #$75    
       STA    $A4     
LF0FB: LDA    #$FE    
       STA    $B5     
       LDA    $91     
       STA    WSYNC   
       LDX    #$00    
       JSR    LF840   
       LDA    $93     
       LDX    #$01    
       JSR    LF840   
       LDX    $DC     
       LDY    #$26    
       LDA    $E3     
       STA    COLUP0  
LF117: STA    WSYNC   
       STA    HMOVE   
       LDA    ($B4),Y 
       STA    GRP0    
       LDA    ($A2),Y 
       STA    COLUP1  
       LDA    ($A4),Y 
       STA    GRP1    
       CPY    #$0A    
       BNE    LF12D   
       DEX            
       DEX            
LF12D: CPY    #$05    
       BNE    LF133   
       DEX            
       DEX            
LF133: TXA            
       AND    $BC     
       STA    COLUBK  
       STA    HMCLR   
       DEY            
       BPL    LF117   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$00    
       LDX    $86     
       CPX    #$03    
       BNE    LF14F   
       LDX    $A0     
       BEQ    LF14F   
       LDA    #$30    
LF14F: STA    $BC     
       LDA    $DE     
       STA    COLUBK  
       LDX    #$04    
       STX    $83     
LF159: STA    WSYNC   
       STA    HMOVE   
       DEX            
       LDY    #$1D    
       LDA    $B0,X   
       STA    $B4     
       LDA    ($B4),Y 
       STA    GRP0    
       LDA    #$00    
       STA    PF1     
       STA    PF2     
       STA    GRP1    
       LDA    $B6,X   
       STA    $A4     
       SEC            
       SBC    #$19    
       STA    $A2     
       STA    HMCLR   
       LDA    #$00    
       STA    HMP1    
       DEY            
       LDA    ($B4),Y 
       LDY    $AA,X   
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
LF18A: DEY            
       BPL    LF18A   
       STA    RESP1   
       STA    HMCLR   
       LDY    #$1B    
       STA    WSYNC   
       STA    HMOVE   
       LDA    ($B4),Y 
       STA    GRP0    
       DEY            
       STX    $83     
       LDA    $A6,X   
       STA    $A5     
       STA    $A3     
       LDA    $D8,X   
       EOR    $BC     
       STA    COLUPF  
       LDA    $A0     
       BNE    LF1B2   
       LDA    #$7E    
       STA    $A2     
LF1B2: CLC            
       STA    HMCLR   
       STA    WSYNC   
       STA    HMOVE   
       LDA    ($B4),Y 
       STA    GRP0    
       DEY            
       TXA            
       ASL            
       ASL            
       TAX            
       STA    HMCLR   
       LDA    ($B4),Y 
LF1C6: STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       LDA    $C0,X   
       STA    PF1     
       LDA    ($A2),Y 
       STA    COLUP1  
       LDA    ($A4),Y 
       STA    GRP1    
       LDA    $C1,X   
       STA    PF2     
       LDA    $C3,X   
       STA    PF1     
       LDA    $C2,X   
       STA    PF2     
       STA    HMCLR   
       DEY            
       LDA    ($B4),Y 
       CPY    #$FF    
       BNE    LF1C6   
       LDX    $83     
       BEQ    LF1F4   
       JMP    LF159   
LF1F4: LDY    #$00    
LF1F6: STA    WSYNC   
       STA    HMOVE   
       STX    PF1     
       STX    GRP0    
       STX    PF2     
       STX    GRP1    
       STA    HMCLR   
       INY            
       CPY    #$0A    
       BNE    LF1F6   
       STX    COLUBK  
       LDA    $D0     
       CMP    #$0C    
       BNE    LF214   
       JMP    LF2B6   
LF214: LDA    $E8     
       BNE    LF21B   
       JMP    LF2B6   
LF21B: LDA    #$50    
       LDY    #$04    
       LDX    #$02    
       STA    HMP0    
       STA    HMP1    
       STA    WSYNC   
LF227: DEY            
       BPL    LF227   
       STA    RESP0   
LF22C: DEX            
       BPL    LF22C   
       STA    RESP1   
       LDX    $84     
       CPX    #$00    
       BEQ    LF238   
       DEX            
LF238: LDA    LFF67,X 
       STA    NUSIZ0  
       LDA    LFD20,X 
       STA    $83     
       LDA    $9C     
       BPL    LF24E   
       LDA    #$00    
       STA    COLUP1  
       STA    $BC     
       BEQ    LF27E   
LF24E: LDY    #$FF    
       SEC            
LF251: INY            
       SBC    #$06    
       BCS    LF251   
       ADC    #$06    
       STA    $BC     
       LSR            
       TAX            
       INX            
       LDA    LFF67,X 
       STA    NUSIZ1  
       LDA    $BC     
       AND    #$01    
       BNE    LF26D   
       LDA    #$4F    
       JMP    LF26F   
LF26D: LDA    #$57    
LF26F: STA    $B4     
       LDA    #$FF    
       STA    $B5     
       LDA    LFF6B,Y 
       STA    $BC     
       LDA    #$4D    
       STA    COLUP1  
LF27E: LDY    #$07    
LF280: STA    WSYNC   
       STA    HMOVE   
       LDA    #$57    
       NOP            
       STA    COLUP0  
       LDA    LFF5F,Y 
       AND    $83     
       STA    GRP0    
       LDA    #$00    
       STA    COLUPF  
       STA    PF1     
       LDA    ($B4),Y 
       STA    GRP1    
       LDA    #$4D    
       STA    COLUPF  
       LDX    LFF57,Y 
       STX    GRP1    
       LDA    $BC     
       STA    PF1     
       STA    HMCLR   
       DEY            
       BPL    LF280   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    PF1     
       STA    COLUPF  
LF2B6: LDA    INTIM   
       BNE    LF2B6   
       LDA    #$18    
       STA    TIM64T  
LF2C0: LDA    INTIM   
       BNE    LF2C0   
       LDA    #$82    
       STA    VBLANK  
       STA    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    VSYNC   
       STA    WSYNC   
       LDA    #$28    
       STA    TIM64T  
       INC    $A1     
       LDA    SWCHB   
       LSR            
       BCS    LF2E7   
       JMP    LF015   
LF2E7: LDY    $E8     
       BEQ    LF307   
       LSR            
       BCS    LF303   
       LDA    $BB     
       BNE    LF307   
       LDA    #$08    
       STA    $D0     
       STA    $BB     
       LDY    $E4     
       INY            
       TYA            
       AND    #$03    
       STA    $E4     
       JMP    LF307   
LF303: LDA    #$00    
       STA    $BB     
LF307: LDY    $D0     
       BNE    LF318   
       LDA    $D5     
       BNE    LF312   
       JMP    LF5AF   
LF312: STA    $D0     
       STY    $D5     
       TAY            
       NOP            
LF318: CPY    #$01    
       BNE    LF337   
       JSR    LF3CD   
       LDA    $91     
       STA    $D3     
       LDA    $92     
       STA    $D4     
       LDA    #$96    
       STA    $92     
       LDA    #$86    
       STA    $91     
       INC    $D0     
       JSR    LF930   
       JMP    LF7BA   
LF337: CPY    #$02    
       BNE    LF368   
       LDA    $92     
       CMP    $D4     
       BNE    LF347   
       LDA    $91     
       CMP    $D3     
       BEQ    LF363   
LF347: LDX    #$01    
LF349: LDA    $91,X   
       CLC            
       ADC    $D6,X   
       BCS    LF356   
       CMP    $D3,X   
       BCC    LF35C   
       BCS    LF35A   
LF356: CMP    $D3,X   
       BCS    LF35C   
LF35A: LDA    $D3,X   
LF35C: STA    $91,X   
       DEX            
       BPL    LF349   
       BMI    LF365   
LF363: INC    $D0     
LF365: JMP    LF7BA   
LF368: CPY    #$03    
       BNE    LF3B1   
       LDA    $A1     
       AND    #$01    
       BNE    LF380   
       LDX    $DD     
       DEX            
       BMI    LF383   
       STX    $DD     
       LDA    LFF73,X 
       LDX    $D1     
       STA    $D8,X   
LF380: JMP    LF59A   
LF383: LDA    #$86    
       STA    $DC     
       LDA    #$04    
       STA    $DE     
       LDA    $D2     
       BEQ    LF39F   
       LDX    $D1     
       CPX    #$04    
       BNE    LF39B   
       LDA    #$00    
       STA    $E0     
       BEQ    LF39F   
LF39B: LDA    #$32    
       STA    $B6,X   
LF39F: LDA    #$3D    
       STA    $E1     
       LDA    #$53    
       STA    $E2     
       LDA    #$3F    
       STA    $E3     
LF3AB: LDA    #$00    
       STA    $D0     
       BEQ    LF365   
LF3B1: CPY    #$05    
       BNE    LF3C7   
       LDA    $A1     
       AND    #$7F    
       BNE    LF3C4   
       JSR    LFAB9   
       JSR    LF94C   
       JMP    LF3AB   
LF3C4: JMP    LF7BA   
LF3C7: CPY    #$06    
       BEQ    LF3D6   
       BNE    LF412   
LF3CD: LDA    #$9D    
       STA    $E1     
       LDA    #$B3    
       STA    $E2     
       RTS            

LF3D6: LDY    $D1     
       JSR    LF3CD   
       LDA    #$4D    
       STA    $E3     
       LDA    LFEF8,Y 
       STA    $92     
       LDA    LFEFC,Y 
       STA    $D7     
       LDA    #$96    
       STA    $D4     
       LDA    #$86    
       STA    $D3     
       LDA.wy $00AA,Y 
       ASL            
       ASL            
       ASL            
       ASL            
       ADC    AUDC1   
       STA    $91     
       LDA.wy $00AA,Y 
       SEC            
       SBC    #$02    
       TAX            
       LDA    LFCE4,X 
       EOR    #$FF    
       ADC    #$00    
       STA    $D6     
       LDA    #$02    
       STA    $D0     
       BNE    LF44A   
LF412: CPY    #$07    
       BNE    LF44D   
       LDA    #$04    
       STA    $92     
       STA    $D4     
       LDA    $93     
       STA    $91     
       STA    $D3     
       JSR    LF930   
       LDA    $D6     
       EOR    #$FF    
       CLC            
       ADC    #$01    
       STA    $D6     
       LDA    #$02    
       STA    $D7     
       LDA    #$96    
       STA    $D4     
       LDA    #$86    
       STA    $D3     
       LDA    #$02    
       STA    $D0     
       LDA    #$6D    
       STA    $E1     
       LDA    #$83    
       STA    $E2     
       LDA    #$00    
       STA    $E3     
LF44A: JMP    LF7BA   
LF44D: CPY    #$08    
       BNE    LF465   
       LDA    $E4     
       ASL            
       ASL            
       ASL            
       CLC            
       ADC    #$A8    
       STA    $8E     
       LDA    #$F0    
       STA    $8C     
       STA    $8A     
       STA    $88     
       BNE    LF44A   
LF465: CPY    #$0A    
       BNE    LF4C0   
       LDA    $A1     
       AND    #$07    
       BEQ    LF472   
       JMP    LF7BA   
LF472: DEC    $DD     
       BMI    LF480   
       LDX    $DD     
       LDA    LFF73,X 
       STA    $DE     
       JMP    LF7BA   
LF480: LDA    #$04    
       STA    $DE     
       LDY    $D1     
       CPY    #$04    
       BCS    LF48F   
       LDA    #$7E    
       STA.wy $00B6,Y 
LF48F: LDX    #$00    
       LDA    $9A     
       BEQ    LF497   
       STX    $84     
LF497: STX    $9A     
       LDA    $E4     
       AND    #$01    
       BEQ    LF4B3   
       LDA    $E5     
       BEQ    LF4B3   
       JSR    LF982   
       DEC    $86     
       JSR    LF94C   
LF4AB: LDA    #$00    
       STA    $D0     
       STA    $E0     
       BEQ    LF4BD   
LF4B3: LDA    $84     
       BNE    LF4AB   
       STA    $9E     
       LDA    #$0B    
       STA    $D0     
LF4BD: JMP    LF7BA   
LF4C0: CPY    #$09    
       BNE    LF4CE   
       LDA    #$07    
       STA    $DD     
       LDA    #$0A    
       STA    $D0     
       BNE    LF4BD   
LF4CE: CPY    #$0B    
       BNE    LF4FA   
       LDA    $E8     
       BNE    LF4DE   
       LDA    #$0C    
       STA    $D0     
       STA    $A1     
       BNE    LF4BD   
LF4DE: LDA    $A1     
       AND    #$1F    
       BNE    LF4F7   
       LDX    $9E     
       CPX    #$03    
       BNE    LF4F4   
       LDX    #$02    
       LDA    #$0D    
       STA    $D0     
       LDA    #$01    
       STA    $A1     
LF4F4: INX            
       STX    $9E     
LF4F7: JMP    LF7BA   
LF4FA: CPY    #$0C    
       BNE    LF55F   
       LDA    $A1     
       BNE    LF509   
       LDA    #$00    
       STA    $D0     
       JMP    LF029   
LF509: LDA    #$09    
       LDX    #$FB    
       LDY    #$03    
LF50F: STA.wy $00AA,Y 
       STX    $A6,Y   
       DEY            
       BPL    LF50F   
       LDA    #$04    
       STA    $AB     
       STA    $AD     
       LDA    #$FC    
       STA    $A6     
       LDA    #$19    
       STA    $B9     
       LDA    #$65    
       STA    $B8     
       LDA    #$B1    
       STA    $B7     
       LDA    #$19    
       STA    $B6     
       STA    $E0     
       LDA    #$00    
       STA    $DE     
       STA    $DC     
       STA    $E3     
       STA    $84     
       LDA    #$FF    
       STA    $9C     
       STA    $A0     
       LDA    #$86    
       STA    $93     
       SEC            
       LDX    #$06    
       LDY    #$FD    
       LDA    #$C4    
LF54E: STA    $88,X   
       STY    $89,X   
       ADC    #$F7    
       DEX            
       DEX            
       BPL    LF54E   
       LDA    #$01    
       STA    $E6     
LF55C: JMP    LF7BA   
LF55F: CPY    #$04    
       BNE    LF579   
       LDA    $A1     
       AND    #$0F    
       BNE    LF55C   
       LDA    $9C     
       BPL    LF571   
       STY    $A1     
       INC    $D0     
LF571: DEC    $9C     
       JSR    LFA6D   
       JMP    LF7BA   
LF579: CPY    #$0D    
       BNE    LF596   
       LDA    $A1     
       AND    #$7F    
       BNE    LF59A   
       LDA    $E4     
       AND    #$01    
       BEQ    LF58C   
       JSR    LF982   
LF58C: LDA    #$0B    
       STA    $D0     
       LDA    #$00    
       STA    $9E     
       BNE    LF59A   
LF596: CPY    #$0E    
       BEQ    LF59D   
LF59A: JMP    LF7BA   
LF59D: LDA    $A1     
       AND    #$7F    
       BNE    LF59A   
       LDY    $84     
       CPY    #$04    
       BEQ    LF5AA   
       INY            
LF5AA: STY    $84     
       JMP    LF3AB   
LF5AF: LDX    $86     
       CPX    #$03    
       BNE    LF5B9   
       LDA    #$00    
       STA    $DE     
LF5B9: LDX    #$01    
       LDA    #$00    
       STA    SWACNT  
LF5C0: LDA    SWCHA   
       LDY    $E6     
       BNE    LF5CB   
       LSR            
       LSR            
       LSR            
       LSR            
LF5CB: LSR            
       TAY            
       BCS    LF5D7   
       LDA    #$00    
       CMP    $92     
       BEQ    LF5D7   
       DEC    $92     
LF5D7: TYA            
       LSR            
       TAY            
       BCS    LF5E4   
       LDA    #$96    
       CMP    $92     
       BEQ    LF5E4   
       INC    $92     
LF5E4: TYA            
       LSR            
       TAY            
       BCS    LF5F1   
       LDA    #$38    
       CMP    $91     
       BEQ    LF5F1   
       DEC    $91     
LF5F1: TYA            
       LSR            
       TAY            
       BCS    LF5FE   
       LDA    #$D5    
       CMP    $91     
       BEQ    LF5FE   
       INC    $91     
LF5FE: DEX            
       BMI    LF60D   
       LDA    SWCHB   
       LDY    $E6     
       BNE    LF609   
       ASL            
LF609: AND    #$80    
       BEQ    LF5C0   
LF60D: LDA    #$00    
       TAX            
       LDY    $E6     
       BEQ    LF61A   
       BIT    PF0     
       BMI    LF63A   
       BPL    LF61E   
LF61A: BIT    REFP1   
       BMI    LF63A   
LF61E: LDY    $9C     
       BMI    LF63C   
       LDY    $9D     
       BNE    LF63C   
       LDA    #$64    
       STA    $A0     
       DEC    $9C     
       LDA    #$01    
       STA    $D0     
       BIT    CXPPMM  
       BPL    LF63A   
       JSR    LF894   
       LDA    #$FF    
       TAX            
LF63A: STA    $9D     
LF63C: STX    $D2     
       LDA    $D0     
       BEQ    LF645   
       JMP    LF7BA   
LF645: LDA    $A1     
       AND    #$01    
       BNE    LF651   
       LDA    $E4     
       AND    #$02    
       BNE    LF655   
LF651: DEC    $82     
       BEQ    LF658   
LF655: JMP    LF6D1   
LF658: LDX    #$03    
LF65A: LDA    $B6,X   
       CMP    #$19    
       BEQ    LF69B   
       CMP    #$65    
       BEQ    LF69B   
       CMP    #$B1    
       BEQ    LF69B   
       CMP    #$26    
       BEQ    LF68E   
       CMP    #$72    
       BEQ    LF68E   
       CMP    #$BE    
       BEQ    LF68E   
       CMP    #$32    
       BEQ    LF684   
       CMP    #$7E    
       BEQ    LF684   
       CMP    #$CA    
       BEQ    LF684   
LF680: DEC    $B6,X   
       BNE    LF6CA   
LF684: LDA    LFBF0,X 
       AND    $85     
       STA    $85     
       JMP    LF6CA   
LF68E: LDA    $80     
       ADC    $93     
       AND    #$03    
       BNE    LF680   
       JSR    LF90B   
       BNE    LF6AE   
LF69B: LDA    $95,X   
       BNE    LF6C8   
       JSR    LF90B   
       LDA    $A6,X   
       CMP    #$FC    
       BNE    LF6B4   
       LDA    $B6,X   
       CMP    #$4C    
       BCC    LF6B4   
LF6AE: LDA    #$7E    
       STA    $B6,X   
       BNE    LF6CA   
LF6B4: STX    $D1     
       LDA    #$06    
       STA    $D0     
       LDA    #$09    
       STA    $D5     
       LDA    #$17    
       STA    $9C     
       DEC    $84     
       BNE    LF6CA   
       STA    $9A     
LF6C8: DEC    $95,X   
LF6CA: DEX            
       BPL    LF65A   
       LDA    #$05    
       STA    $82     
LF6D1: LDA    $87     
       BNE    LF738   
       LDA    INTIM   
       INC    $80     
       ADC    $92     
       ADC    $80     
       AND    #$03    
       TAX            
       LDA    SWCHA   
       EOR    #$FF    
       TAY            
       AND    #$22    
       BEQ    LF6EC   
       INX            
LF6EC: TYA            
       AND    #$11    
       BEQ    LF6F2   
       DEX            
LF6F2: TXA            
       AND    #$03    
       TAX            
       LDA    LFBF8,X 
       AND    $85     
       BNE    LF731   
       LDA    LFBF8,X 
       ORA    $85     
       STA    $85     
LF704: TXA            
       ADC    INTIM   
       ADC    $93     
       AND    #$07    
       CMP    #$06    
       BCC    LF714   
       ADC    #$03    
       AND    #$07    
LF714: TAY            
       LDA    LFBF8,Y 
       AND    $90     
       BNE    LF704   
       LDA    LFBF8,Y 
       ORA    $90     
       STA    $90     
       LDA    LFF43,Y 
       STA    $A6,X   
       LDA    LFF49,Y 
       STA    $B6,X   
       LDA    #$30    
       STA    $95,X   
LF731: LDX    $86     
       LDA    LFBE4,X 
       STA    $87     
LF738: DEC    $87     
       JSR    LFA6D   
       LDA    $A1     
       AND    #$01    
       BEQ    LF77A   
       LDA    $94     
       AND    #$0F    
       TAY            
       LDA    SWCHA   
       EOR    #$FF    
       TAX            
       AND    #$44    
       BNE    LF764   
       TXA            
       AND    #$88    
       BNE    LF760   
       LDA    LFF33,Y 
       CMP    $93     
       BEQ    LF768   
       BCC    LF764   
LF760: INC    $93     
       BNE    LF76A   
LF764: DEC    $93     
       BNE    LF76A   
LF768: INC    $94     
LF76A: LDA    #$C8    
       CMP    $93     
       BCS    LF772   
       STA    $93     
LF772: LDA    #$46    
       CMP    $93     
       BCC    LF77A   
       STA    $93     
LF77A: LDA    $86     
       CMP    #$03    
       BNE    LF786   
       LDA    $A0     
       BEQ    LF786   
       DEC    $A0     
LF786: LDA    $A1     
       AND    #$7F    
       BNE    LF79C   
       LDA    $93     
       ADC    #$80    
       AND    #$07    
       BNE    LF79C   
       LDA    #$01    
       STA    $E0     
       LDA    #$1E    
       STA    $99     
LF79C: LDA    $A1     
       AND    #$07    
       BNE    LF7BA   
       LDA    $E0     
       BEQ    LF7BA   
       LDA    $99     
       BNE    LF7B8   
       STA    $E0     
       LDA    #$07    
       STA    $D0     
       LDA    #$09    
       STA    $D5     
       STA    $D1     
       STA    $9A     
LF7B8: DEC    $99     
LF7BA: JSR    LF85E   
       LDA    $E8     
       BEQ    LF810   
       DEC    $EE     
       BPL    LF810   
       LDX    $D0     
       LDY    LFEE3,X 
       LDA    $D0     
       BNE    LF7D6   
       STA    AUDV0   
       STA    $9B     
       STA    $EE     
       BEQ    LF810   
LF7D6: CMP    $9B     
       BEQ    LF7E5   
       STA    $9B     
       LDA    #$03    
       STA    $BD     
       LDA    LFF87,Y 
       STA    $F0     
LF7E5: LDA    $BD     
       BEQ    LF810   
       LDA    LFF7B,Y 
       STA    AUDC0   
       LDA    LFF81,Y 
       STA    $EE     
       LDA    $F0     
       ASL            
       CLC            
       ADC    LFEF2,Y 
       TAY            
       LDA    LFDCC,Y 
       STA    AUDF0   
       INY            
       LDA    LFDCC,Y 
       STA    AUDV0   
       DEC    $F0     
       BPL    LF810   
       LDA    #$00    
       STA    $9B     
       STA    $BD     
LF810: LDA    $88     
       CMP    #$A0    
       BNE    LF81A   
       LDA    #$F0    
       STA    $88     
LF81A: LDX    #$00    
LF81C: LDA    $88,X   
       CMP    #$F0    
       BNE    LF838   
       LDA    $8A,X   
       CMP    #$A0    
       BNE    LF834   
       LDA    #$F0    
       STA    $8A,X   
LF82C: INX            
       INX            
       CPX    #$06    
       BNE    LF81C   
       BEQ    LF838   
LF834: CMP    #$F0    
       BEQ    LF82C   
LF838: LDA    INTIM   
       BNE    LF838   
       JMP    LF073   
LF840: CLC            
       ROL            
       ROL            
       ROL            
       ROL            
       EOR    #$70    
       STA    $F3     
       ROL            
       AND    #$0F    
       TAY            
       LDA    $F3     
       STA    HMP0,X  
       STA    WSYNC   
LF853: DEY            
       BPL    LF853   
       STA    RESP0,X 
       LDY    #$0B    
LF85A: DEY            
       BPL    LF85A   
       RTS            

LF85E: LDX    #$04    
       LDA    #$5C    
LF862: STA    $B0,X   
       DEX            
       BPL    LF862   
       LDX    #$04    
       LDA    $92     
       CMP    #$27    
       BMI    LF88D   
       SEC            
       SBC    #$27    
       DEX            
LF873: CMP    #$1E    
       BMI    LF87D   
       SEC            
       SBC    #$1E    
       DEX            
       BPL    LF873   
LF87D: CLC            
       ADC    $E1     
       STA    $B0,X   
       CMP    $E2     
       BMI    LF88C   
       DEX            
       SEC            
       SBC    #$1E    
       STA    $B0,X   
LF88C: RTS            

LF88D: CLC            
       SEC            
       SBC    #$09    
       JMP    LF87D   
LF894: LDX    #$04    
       LDA    $92     
       SEC            
       SBC    #$27    
       BCC    LF8A2   
LF89D: DEX            
       SBC    #$1E    
       BCS    LF89D   
LF8A2: STX    $D1     
       LDA    #$07    
       STA    $DD     
       CPX    #$04    
       BEQ    LF8EE   
       JSR    LF90B   
       CPY    #$04    
       BCC    LF8D3   
       LDA    $8A     
       CMP    #$A0    
       BEQ    LF8C5   
       CMP    #$F0    
       BEQ    LF902   
       SEC            
       SBC    #$08    
       STA    $8A     
       JMP    LF8ED   
LF8C5: LDA    #$E8    
       STA    $8A     
       LDA    $88     
       SEC            
       SBC    #$08    
       STA    $88     
       JMP    LF8ED   
LF8D3: LDA    LFF6F,Y 
       ADC    $81     
       ADC    $86     
       STA    $81     
       LDA    $9F     
       BNE    LF8EB   
LF8E0: LDA    #$04    
       STA    $D5     
       LDA    $81     
       CLC            
       ADC    $9C     
       STA    $81     
LF8EB: DEC    $9F     
LF8ED: RTS            

LF8EE: LDA    $81     
       CLC            
       ADC    #$0A    
       ADC    $86     
       STA    $81     
       LDA    $E0     
       BEQ    LF901   
       LDA    $9F     
       BEQ    LF8E0   
       DEC    $9F     
LF901: RTS            

LF902: LDA    #$F0    
       STA    $8C     
       STA    $8E     
       JMP    LF8ED   
LF90B: LDA    LFBF0,X 
       AND    $85     
       STA    $85     
       LDA    $A6,X   
       LDY    #$FF    
       CMP    #$FB    
       BEQ    LF91C   
       LDY    #$02    
LF91C: LDA    $B6,X   
       SEC            
LF91F: INY            
       SBC    #$4C    
       BCS    LF91F   
       LDA    LFBF0,Y 
       AND    $90     
       STA    $90     
       LDA    #$0A    
       STA    $95,X   
       RTS            

LF930: LDA    $D3     
       SEC            
       SBC    #$38    
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       LDA    LFCE4,X 
       STA    $D6     
       LDA    $D4     
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       LDA    LFCEE,X 
       STA    $D7     
       RTS            

LF94C: LDY    $86     
       CPY    #$05    
       BNE    LF954   
       LDY    #$FF    
LF954: INY            
       STY    $86     
       LDA    LFBEA,Y 
       STA    $9F     
       LDA    #$17    
       STA    $9C     
       STA    $A0     
       LDY    #$7E    
       LDA    #$FC    
       LDX    #$03    
LF968: STY    $B6,X   
       STA    $A6,X   
       DEX            
       BPL    LF968   
       LDA    #$86    
       STA    $91     
       STA    $93     
       LDA    #$3C    
       STA    $92     
       LDA    #$00    
       STA    $85     
       STA    $90     
       STA    $E0     
       RTS            

LF982: LDX    $E6     
       INX            
       TXA            
       AND    #$01    
       STA    $E6     
       LDX    #$0A    
LF98C: LDA    $84,X   
       LDY    $E5,X   
       STA    $E5,X   
       STY    $84,X   
       DEX            
       DEX            
       BPL    LF98C   
       RTS            

LF999: STA    WSYNC   
       LDA    #$11    
       STY    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$00    
       LDY    #$10    
       STA    HMP0    
       STY    HMP1    
       LDY    #$02    
       STA    GRP1    
LF9AD: DEY            
       BPL    LF9AD   
       STA    RESP0   
       STA    RESP1   
       LDY    #$07    
       STA    VDELP0  
       STA    VDELP1  
       LDY    #$07    
LF9BC: STA    WSYNC   
       STA    HMOVE   
       LDA    ($88),Y 
       STA    GRP0    
       LDA    ($8A),Y 
       STA    GRP1    
       STY    $83     
       LDX    LFFA0,Y 
       LDA    ($8C),Y 
       STA    $BC     
       LDA    ($8E),Y 
       LDY    $BC     
       STY    GRP0    
       STA    GRP1    
       STX    GRP0    
       STX    GRP1    
       STA    HMCLR   
       LDY    $83     
       DEY            
       BPL    LF9BC   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       RTS            

LF9EB: STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    COLUBK  
       LDY    $9E     
       STY    $BC     
       LDX    LFD18,Y 
       JSR    LFA67   
       LDA    #$6A    
       LDX    #$00    
       JSR    LF840   
       LDX    #$17    
       LDY    $9E     
LFA08: STA    WSYNC   
       STA    HMOVE   
       DEC    $BC     
       BPL    LFA08   
       LDA    LFD1C,Y 
       STA    NUSIZ0  
       LDA    LFD00,X 
       STA    COLUP0  
       LDA    LFE2C,X 
       STA    GRP0    
       LDA    $9E     
       STA    $BC     
       STA    HMCLR   
       DEX            
       BPL    LFA08   
       LDA    #$00    
       STA    GRP0    
       LDA    $A1     
       AND    #$08    
       BNE    LFA64   
       LDA    #$0F    
       STA    COLUP0  
       STA    COLUP1  
       STA    WSYNC   
       LDA    #$05    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$86    
       LDX    #$01    
       JSR    LF840   
       LDA    #$76    
       DEX            
       JSR    LF840   
       LDX    #$07    
LFA4F: STA    WSYNC   
       STA    WSYNC   
       STA    HMOVE   
       LDA    LFE24,X 
       STA    GRP0    
       LDA    LFF8D,X 
       STA    GRP1    
       STA    HMCLR   
       DEX            
       BPL    LFA4F   
LFA64: JMP    LF2B6   
LFA67: STA    WSYNC   
       DEX            
       BPL    LFA67   
       RTS            

LFA6D: LDA    $81     
       CMP    #$00    
       BEQ    LFAB8   
       LDA    $E8     
       BEQ    LFAB8   
       DEC    $81     
       LDX    #$06    
LFA7B: LDA    $88,X   
       CMP    #$F0    
       BNE    LFA83   
       LDA    #$A0    
LFA83: CPX    #$02    
       BNE    LFA95   
       CMP    #$C0    
       BEQ    LFA8F   
       CMP    #$E8    
       BNE    LFAB3   
LFA8F: LDY    #$0E    
       STY    $D5     
       STY    $A1     
LFA95: CMP    #$E8    
       BNE    LFAB3   
       LDA    #$A0    
       STA    $88,X   
       DEX            
       DEX            
       BPL    LFA7B   
       LDY    #$06    
       LDA    #$E8    
LFAA5: STA.wy $0088,Y 
       STY    $84     
       DEY            
       DEY            
       BPL    LFAA5   
       PLA            
       PLA            
       JMP    LF480   
LFAB3: CLC            
       ADC    #$08    
       STA    $88,X   
LFAB8: RTS            

LFAB9: ADC    $93     
       ADC    $91     
       AND    #$0F    
       TAY            
       ADC    $80     
       ADC    $92     
       AND    #$07    
       STA    $BC     
       LDX    #$03    
LFACA: LDA    LFF00,Y 
       ADC    $BC     
       AND    #$07    
       CLC            
       ADC    #$03    
       STA    $AA,X   
       INY            
       DEX            
       BPL    LFACA   
       LDX    #$03    
LFADC: STX    $83     
       LDA    $AA,X   
       SEC            
       SBC    #$03    
       ASL            
       ASL            
       TAX            
       LDA    $83     
       ASL            
       ASL            
       TAY            
LFAEB: LDA    LFF13,X 
       STA.wy $00C0,Y 
       INX            
       INY            
       TXA            
       AND    #$03    
       BNE    LFAEB   
       LDX    $83     
       DEX            
       BPL    LFADC   
       RTS            

LFAFE: .byte $AA,$AA,$38,$38,$38,$38,$38,$38,$38,$38,$38,$38,$38,$38,$38,$08
       .byte $08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$FF,$F0,$F0,$E6,$82
       .byte $FE,$FE,$FF,$FF,$FF,$FF,$C3,$81,$18,$3C,$7E,$7E,$7E,$FF,$FF,$DB
       .byte $7E,$7E,$7E,$3F,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$28,$28
       .byte $28,$28,$28,$28,$28,$28,$28,$28,$28,$38,$38,$38,$38,$38,$38,$38
       .byte $38,$38,$38,$0A,$08,$0A,$0A,$FF,$F0,$F0,$E6,$82,$FE,$FF,$FF,$FF
       .byte $7F,$67,$03,$18,$3C,$7E,$66,$7E,$FF,$FF,$DB,$7E,$7E,$FF,$7E,$7E
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$D8,$D8,$D8,$D8,$D8,$D8
       .byte $D8,$D8,$D8,$D8,$D8,$D8,$48,$48,$48,$48,$48,$48,$48,$48,$48,$06
       .byte $06,$06,$06,$FF,$FD,$F0,$E6,$82,$FE,$FE,$FF,$FF,$3F,$8F,$C1,$1C
       .byte $7E,$3E,$1E,$7E,$FE,$FE,$5E,$7E,$FF,$7E,$7E,$7E,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00
LFBE4: .byte $1E,$0F,$08,$1E,$04,$02
LFBEA: .byte $08,$0B,$0E,$11,$14,$14
LFBF0: .byte $FE,$FD,$FB,$F7,$EF,$DF,$BF,$7F
LFBF8: .byte $01,$02,$04,$08,$10,$20,$40,$80,$18,$18,$18,$18,$18,$18,$18,$18
       .byte $18,$18,$18,$18,$00,$28,$28,$28,$28,$28,$28,$04,$04,$04,$72,$74
       .byte $74,$FF,$F0,$F0,$E6,$82,$FE,$FF,$FF,$FF,$FF,$F7,$62,$00,$18,$7E
       .byte $5A,$66,$FF,$FF,$7E,$5A,$7E,$7F,$7E,$7C,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$28,$28,$28,$28,$28,$28,$28,$28,$28,$28,$28,$38
       .byte $38,$38,$38,$38,$38,$38,$38,$38,$38,$0A,$08,$0A,$DC,$FF,$FE,$FE
       .byte $FE,$FE,$FE,$FF,$FF,$FF,$7F,$67,$03,$18,$3C,$7E,$66,$7E,$FF,$FF
       .byte $DB,$7E,$7E,$FF,$7E,$7E,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $D8,$D8,$D8,$D8,$D8,$D8,$D8,$D8,$D8,$D8,$D8,$D8,$48,$48,$48,$48
       .byte $48,$48,$48,$48,$48,$06,$06,$06,$06,$FF,$FE,$FE,$FE,$FE,$FE,$FE
       .byte $FF,$FF,$3F,$8F,$C1,$1C,$7E,$3E,$1E,$7E,$FE,$FE,$5E,$7E,$FF,$7E
       .byte $7E,$7E,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
LFCE4: .byte $FB,$FC,$FD,$FE,$FF,$01,$02,$03,$04,$05
LFCEE: .byte $F5,$F6,$F7,$F8,$F9,$FA,$FB,$FC,$FD,$FE,$FF,$FF,$AA,$AA,$AA,$AA
       .byte $AA,$AA
LFD00: .byte $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$4C,$4C,$4C,$4C,$4C,$4C,$4C,$4C
       .byte $4C,$4C,$4C,$4C,$4C,$4C,$4C,$4C
LFD18: .byte $80,$68,$50,$38
LFD1C: .byte $10,$10,$10,$10
LFD20: .byte $00,$FF,$FF,$FF,$00,$00,$00
LFD27: INC    $84     
       LDA    $84     
       BNE    LFD38   
       INC    $E8     
       LDA    $E8     
       CMP    #$04    
       BNE    LFD38   
       JMP    LF000   
LFD38: JMP    LF9EB   
LFD3B: .byte $7C,$38,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$4C,$4C,$4C,$4C,$4C
       .byte $4C,$4C,$4C,$4C,$4C,$4C,$4C,$4C,$4C,$4C,$4C,$4C,$4C,$4C,$00,$00
       .byte $00,$00,$00,$07,$00,$00,$00,$00,$07,$00,$FF,$DF,$FF,$DF,$FF,$DF
       .byte $FF,$C3,$19,$19,$7D,$FD,$ED,$0D,$FD,$BD,$FD,$6D,$FD,$F9,$79,$39
       .byte $01,$03,$03,$03,$03,$02,$02,$02,$02,$07,$07,$07,$07,$07,$07,$07
       .byte $07,$B6,$B4,$B2,$B0,$00,$B2,$B4,$B6,$24,$22,$22,$20,$00,$20,$22
       .byte $24,$00,$8A,$8A,$8B,$AA,$AA,$DA,$89,$00,$28,$28,$E8,$2F,$28,$28
       .byte $CF,$00,$3A,$12,$13,$12,$12,$12,$B9,$00,$20,$20,$E0,$20,$20,$20
       .byte $C0
LFDCC: .byte $00,$00,$1F,$0F,$1F,$0F,$1F,$0F,$1F,$0F,$1E,$0E,$1C,$0C,$1B,$0A
       .byte $1A,$08,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0E,$0C,$0C,$0B,$0A
       .byte $0A,$08,$00,$00,$1B,$08,$00,$00,$15,$08,$00,$00,$15,$08,$00,$00
       .byte $15,$08,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$1A,$08,$19,$08,$18,$08,$17,$08,$16,$08,$15,$08,$14,$08
       .byte $13,$08,$12,$08,$11,$08,$AA,$AA
LFE24: .byte $00,$F4,$84,$84,$E5,$85,$86,$F4
LFE2C: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$7F,$7F,$77,$63,$49,$49,$49
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$07,$00,$07,$07,$07,$00,$07,$02,$02
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$18,$18,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00
LFEE3: .byte $00,$00,$01,$02,$04,$03,$00,$00,$00,$00,$02,$00,$00,$05,$03
LFEF2: .byte $00,$02,$12,$11,$34,$44
LFEF8: .byte $9B,$7D,$5F,$41
LFEFC: .byte $01,$03,$05,$07
LFF00: .byte $01,$07,$05,$02,$04,$06,$07,$00,$02,$07,$05,$01,$06,$04,$07,$03
       .byte $01,$06,$05
LFF13: .byte $7F,$00,$0F,$0F,$1F,$F0,$F8,$00,$0F,$0F,$00,$00,$0F,$F8,$1F,$00
       .byte $00,$F0,$F0,$00,$00,$00,$1F,$F0,$00,$00,$0F,$0F,$00,$00,$00,$F9
LFF33: .byte $87,$57,$C6,$71,$9C,$5F,$AE,$4A,$60,$4C,$B8,$87,$BC,$4C,$C5,$62
LFF43: .byte $FB,$FB,$FB,$FC,$FC,$FC
LFF49: .byte $31,$7D,$C9,$31,$7D,$C9,$7C,$7E,$7C,$00,$00,$00,$00,$00
LFF57: .byte $7C,$7E,$7C,$00,$00,$7C,$7E,$7C
LFF5F: .byte $7F,$77,$7F,$77,$7F,$3E,$22,$22
LFF67: .byte $10,$10,$11,$13
LFF6B: .byte $00,$C0,$D8,$DB
LFF6F: .byte $03,$02,$04,$05
LFF73: .byte $00,$DF,$40,$5F,$40,$2F,$A0,$0F
LFF7B: .byte $00,$08,$08,$04,$04,$04
LFF81: .byte $02,$06,$09,$06,$01,$0E
LFF87: .byte $00,$08,$08,$08,$08,$08
LFF8D: .byte $00,$5E,$49,$C9,$49,$49,$49,$5E,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA
       .byte $AA,$AA,$AA
LFFA0: .byte $3C,$66,$66,$66,$66,$66,$66,$3C,$7E,$18,$18,$18,$18,$78,$38,$18
       .byte $7E,$60,$60,$3C,$06,$06,$46,$3C,$3C,$46,$06,$0C,$0C,$06,$46,$3C
       .byte $0C,$0C,$0C,$7E,$4C,$2C,$1C,$0C,$7C,$46,$06,$06,$7C,$60,$60,$7E
       .byte $3C,$66,$66,$66,$7C,$60,$62,$3C,$18,$18,$18,$18,$0C,$06,$42,$7E
       .byte $3C,$66,$66,$3C,$3C,$66,$66,$3C,$3C,$46,$06,$3E,$66,$66,$66,$3C
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$AA,$AA,$AA,$AA,$00,$F0,$AA,$AA
