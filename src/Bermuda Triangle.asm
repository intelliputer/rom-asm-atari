; Disassembly of roms/Bermuda Triangle.bin
; Disassembled Tue Oct  6 15:21:07 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Bermuda Triangle.bin
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
RESM1   =  $13
AUDC0   =  $15
AUDF0   =  $17
AUDV0   =  $19
GRP0    =  $1B
GRP1    =  $1C
ENAM0   =  $1D
ENAM1   =  $1E
HMP0    =  $20
HMP1    =  $21
HMM0    =  $22
HMM1    =  $23
VDELP0  =  $25
VDELP1  =  $26
RESMP0  =  $28
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
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
       LDA    #$00    
       TAX            
LF008: STA    VSYNC,X 
       DEX            
       BNE    LF008   
LF00D: LDA    #$02    
       STA    WSYNC   
       STA    VBLANK  
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    WSYNC   
       STA    VSYNC   
       LDA    #$2C    
       STA    TIM64T  
       JSR    LF574   
       JSR    LF9D1   
LF030: LDA    INTIM   
       BNE    LF030   
       STA    WSYNC   
       STA    VBLANK  
       STA    WSYNC   
       STA    GRP0    
       STA    GRP1    
       STA    $C4     
       STA    $AC     
       LDA    #$05    
       STA    CTRLPF  
       LDX    #$CA    
       LDA    $F5     
       AND    #$10    
       BEQ    LF051   
       LDX    #$4A    
LF051: TXA            
       AND    $B3     
       STA    COLUP0  
       STA    COLUP1  
       LDX    PF0     
       LDA    $F5     
       AND    #$10    
       BNE    LF062   
       LDX    REFP1   
LF062: STX    $EE     
       LDA    $C6     
       AND    #$70    
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $F9     
       STA    WSYNC   
       LDA    #$14    
       STA    HMP1    
       AND    #$0F    
       TAX            
LF077: DEX            
       BPL    LF077   
       STA    RESP0   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       LDY    #$03    
       STY    NUSIZ0  
       STY    NUSIZ1  
       LDY    #$07    
       STY    VDELP0  
       STY    VDELP1  
       CLC            
       LDA    $A6     
       ADC    #$0C    
       STA    $93     
       LDA    $90     
       BNE    LF0A5   
       LDA    #$FE    
       STA    $D3     
       LDA    $A4     
       STA    $D2     
       LDA    #$03    
       STA    $CF     
LF0A5: STA    HMCLR   
LF0A7: STY    $E0     
       LDA    ($EC),Y 
       STA    $E1     
       STA    WSYNC   
       LDA    ($E2),Y 
       STA    GRP0    
       LDA    ($E4),Y 
       STA    GRP1    
       LDA    ($E6),Y 
       STA    GRP0    
       LDA    ($EA),Y 
       TAX            
       LDA    ($E8),Y 
       LDY    $E1     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       LDY    $E0     
       DEY            
       BPL    LF0A7   
       INY            
       STA    WSYNC   
       STY    VDELP0  
       STY    VDELP1  
       STY    GRP0    
       STY    GRP1    
       LDX    $A3     
       LDA    LFEFD,X 
       STA    RESP0   
       STA    NUSIZ0  
       LDX    #$18    
       LDA    $97     
       CMP    #$54    
       BCC    LF0ED   
       LDX    #$38    
LF0ED: LDA    $F4     
       BEQ    LF0FB   
       AND    #$10    
       BEQ    LF0F9   
       TXA            
       ORA    #$0F    
       TAX            
LF0F9: DEC    $F4     
LF0FB: TXA            
       AND    $B3     
       STA    COLUP1  
       LDX    #$09    
LF102: STA    WSYNC   
       DEX            
       BNE    LF10B   
       STX    GRP1    
       BEQ    LF125   
LF10B: LDA    LFD40,Y 
       ROR    $F5     
       BCC    LF114   
       LDA    #$00    
LF114: STA    GRP0    
       ROL    $F5     
       TYA            
       ASL            
       ORA    #$20    
       AND    $B3     
       STA    COLUBK  
       STA    COLUPF  
       INY            
       BNE    LF102   
LF125: STX    $A2     
       STX    $A1     
       LDX    #$0F    
       LDA    $F5     
       AND    #$02    
       BEQ    LF133   
       LDX    #$FF    
LF133: STX    $92     
       LDX    #$00    
       LDA    $C1     
       STA    $EF     
       LDA    $80     
       EOR    #$FF    
       STA    $95     
       LDA    $8D     
       STA    REFP0   
       LDA    $A5     
       BEQ    LF153   
       LDA    $C6     
       AND    #$04    
       BEQ    LF151   
       LDX    #$10    
LF151: STX    $A6     
LF153: STA    WSYNC   
       LDA    $A8     
       STA    HMM1    
       AND    #$0F    
       TAY            
       LDA    #$9F    
       STA    COLUP0  
LF160: DEY            
       BNE    LF160   
       STY    $E1     
       STA    RESM1   
       STA    WSYNC   
       LDA    #$05    
       STA    NUSIZ1  
       LDA.wy $0084,Y 
       STA    HMP1    
       AND    #$0F    
       TAX            
LF175: DEX            
       BNE    LF175   
       STA    RESP1   
       STA    WSYNC   
       LDA    $83,X   
       STA    HMP0    
       AND    #$0F    
       TAY            
       LDA    #$35    
       STA    NUSIZ0  
LF187: DEY            
       BNE    LF187   
       STA    RESP0   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$30    
       STA    PF0     
       LDX    #$05    
       LDA    $C6     
       AND    #$08    
       BNE    LF19E   
       LDX    #$02    
LF19E: STX    $AD     
       LDA    $A5     
       ROR            
       BCC    LF1BB   
       LDA    $90     
       AND    #$80    
       BNE    LF1BB   
       LDA    #$FC    
       STA    $D3     
       LDA    #$13    
       STA    $D2     
       LDA    #$1E    
       STA    $CF     
       LDA    #$80    
       STA    $90     
LF1BB: LDY    $A6     
       STA    HMCLR   
       STA    WSYNC   
       LDA    $EE     
       LDX    $C5     
       BNE    LF205   
       LDX    $8E     
       BNE    LF1F3   
       ROL            
       BCS    LF205   
       LDA    #$00    
       STA    RESMP0  
       LDA    #$10    
       STA    $8E     
       LDA    #$B8    
       SBC    $B6     
       LSR            
       LSR            
       LSR            
       STA    $94     
       LDA    $8F     
       AND    #$E0    
       BNE    LF205   
       LDA    #$FD    
       STA    $D1     
       LDA    #$C7    
       STA    $D0     
       LDA    #$21    
       STA    $CE     
       BNE    LF205   
LF1F3: LDA    $94     
       BNE    LF1FD   
       LDA    #$02    
       STA    RESMP0  
       BNE    LF203   
LF1FD: LDA    #$80    
       STA    HMM0    
       DEC    $94     
LF203: DEC    $8E     
LF205: LDX    $97     
LF207: STA    WSYNC   
       LDA    $A1     
       ASL            
       ORA    #$60    
       EOR    #$FF    
       AND    $B3     
       STA    COLUBK  
       STA    COLUPF  
       LDA    LFD00,X 
       STA    GRP1    
       INX            
       CLC            
       LDA    $95     
       ADC    $A1     
       AND    #$F0    
       EOR    #$F0    
       BNE    LF22D   
       LDA    LFD00,Y 
       STA    GRP0    
       INY            
LF22D: INC    $A1     
       LDA    $A1     
       EOR    #$05    
       BNE    LF207   
       LDA    $A9     
       STA    ENAM1   
LF239: STA    WSYNC   
       LDA    #$80    
       ROR    $AD     
       BCC    LF243   
       LDA    #$84    
LF243: AND    $B3     
       STA    COLUBK  
       STA    COLUPF  
       LDA    LFD00,X 
       STA    GRP1    
       INX            
       LDA    $95     
       ADC    $A1     
       AND    #$F0    
       EOR    #$F0    
       BNE    LF25F   
       LDA    LFD00,Y 
       STA    GRP0    
       INY            
LF25F: INC    $A1     
       LDA    $A1     
       EOR    #$08    
       BNE    LF239   
       LDX    #$A2    
       STA    WSYNC   
       STA    GRP1    
       LDA    $C9     
       AND    #$10    
       BNE    LF27D   
       LDA    $A5     
       BNE    LF27F   
       LDA    $C5     
       AND    #$10    
       BEQ    LF27F   
LF27D: LDX    #$AF    
LF27F: TXA            
       STA    COLUPF  
       STA    COLUBK  
       LDA    COLUP1  
       AND    $F8     
       STA    $AA     
       LDX    #$00    
       LDA    SWCHA   
       EOR    #$FF    
       BEQ    LF2A0   
       STX    $C7     
       DEX            
       STX    $B3     
       LDX    $95     
       BNE    LF2A0   
       LDA    #$46    
       STA    $80     
LF2A0: STA    WSYNC   
       CLC            
       LDA    $95     
       ADC    $A1     
       AND    #$F0    
       EOR    #$F0    
       BNE    LF2C2   
       LDA    LFD00,Y 
       STA    GRP0    
       LDA    LFD80,Y 
       STA    COLUP0  
       LDA    #$02    
       CPY    $93     
       BEQ    LF2BF   
       LDA    #$00    
LF2BF: STA    ENAM0   
       INY            
LF2C2: INC    $A1     
       LDA    VBLANK  
       ORA    $C4     
       STA    $C4     
       STA    CXCLR   
       LDX    $A2     
       STA    WSYNC   
       INC    $A1     
       LDA    $85,X   
       STA    HMP1    
       AND    #$0F    
       TAX            
LF2D9: DEX            
       BNE    LF2D9   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       CLC            
       LDA    $95     
       ADC    $A1     
       AND    #$F0    
       EOR    #$F0    
       BNE    LF302   
       LDA    LFD00,Y 
       STA    GRP0    
       LDA    LFD80,Y 
       STA    COLUP0  
       LDA    #$02    
       CPY    $93     
       BEQ    LF2FF   
       LDA    #$00    
LF2FF: STA    ENAM0   
       INY            
LF302: INC    $A1     
       LSR    $EF     
       BCS    LF30C   
       LDA    #$08    
       STA    REFP1   
LF30C: LDX    $A2     
       LDA    $98,X   
       TAX            
LF311: STA    WSYNC   
       CLC            
       LDA    $95     
       ADC    $A1     
       AND    #$F0    
       EOR    #$F0    
       BNE    LF333   
       LDA    LFD00,Y 
       STA    GRP0    
       LDA    LFD80,Y 
       STA    COLUP0  
       LDA    #$02    
       CPY    $93     
       BEQ    LF330   
       LDA    #$00    
LF330: STA    ENAM0   
       INY            
LF333: INC    $A1     
       LDA    LFF00,X 
       STA    GRP1    
       LDA    LFF78,X 
       STA    COLUP1  
       BEQ    LF344   
       INX            
       BNE    LF311   
LF344: STA    WSYNC   
       STA    REFP1   
       CLC            
       LDA    $95     
       ADC    $A1     
       AND    #$F0    
       EOR    #$F0    
       BNE    LF368   
       LDA    LFD00,Y 
       STA    GRP0    
       LDA    LFD80,Y 
       STA    COLUP0  
       LDA    #$02    
       CPY    $93     
       BEQ    LF365   
       LDA    #$00    
LF365: STA    ENAM0   
       INY            
LF368: INC    $A1     
       LDA    VSYNC   
       ROL            
       ROR    $AB     
       LDA    COLUP1  
       ROL            
       ROR    $AC     
       STA    WSYNC   
       CLC            
       LDA    $95     
       ADC    $A1     
       AND    #$F0    
       EOR    #$F0    
       BNE    LF396   
       LDA    LFD00,Y 
       STA    GRP0    
       LDA    LFD80,Y 
       STA    COLUP0  
       LDA    #$02    
       CPY    $93     
       BEQ    LF393   
       LDA    #$00    
LF393: STA    ENAM0   
       INY            
LF396: INC    $A1     
       LDA    $A2     
       EOR    #$07    
       BEQ    LF3A7   
       LDA    #$00    
       INC    $A2     
       STA    HMCLR   
       JMP    LF2A0   
LF3A7: STA    REFP1   
       STA    REFP0   
       LDA    $B2     
       STA    $EF     
       LDA    $96     
       STA    WSYNC   
       STA    ENAM1   
       LDA    $CA     
       STA    NUSIZ1  
       LDA    $81     
       STA    HMP1    
       AND    #$0F    
       TAX            
LF3C0: DEX            
       BNE    LF3C0   
       STA    RESP1   
       STA    WSYNC   
       STX    NUSIZ0  
       STX    PF0     
       STX    CTRLPF  
       LDA    $82     
       STA    HMP0    
       AND    #$0F    
       TAX            
LF3D4: DEX            
       BNE    LF3D4   
       STA    RESP0   
       STA    WSYNC   
       STA    HMOVE   
       LDA    $CB     
       STA    $DC     
       LDA    #$0F    
       STA    $95     
       LDA    $FA     
       AND    $B3     
       STA    COLUP0  
       LDA    $FB     
       AND    $B3     
       STA    COLUP1  
       LDX    $F9     
       LDA    LFDC0,X 
       LDX    $A0     
       LDY    $A7     
       STA    CXCLR   
       AND    $B3     
       AND    $92     
       ORA    #$10    
       STA    COLUPF  
       STA    HMCLR   
LF406: STA    WSYNC   
       LDA    LFC00,X 
       STA    GRP1    
       LDA    LFC00,Y 
       STA    GRP0    
       STX    $E1     
       STY    $EE     
       LDX    $EF     
       LDY    $DC     
       LDA    LFE30,X 
       STA    PF1     
       INX            
       LDA    LFE30,X 
       STA    PF2     
       INX            
       STX    $EF     
       LDA    LFB28,Y 
       STA    PF0     
       INY            
       STY    $DC     
       LDA    #$03    
       STA    $E0     
       LDX    $E1     
       LDY    $EE     
LF438: STA    WSYNC   
       INX            
       LDA    LFC00,X 
       STA    GRP1    
       INY            
       LDA    LFC00,Y 
       STA    GRP0    
       DEC    $95     
       BEQ    LF469   
       DEC    $E0     
       BNE    LF438   
       INX            
       INY            
       STX    $E1     
       DEC    $F9     
       LDA    $F9     
       AND    #$07    
       TAX            
       LDA    LFDC0,X 
       AND    $B3     
       AND    $92     
       ORA    #$10    
       STA    COLUPF  
       LDX    $E1     
       JMP    LF406   
LF469: LDA    $F5     
       AND    #$FD    
       STA    $F5     
       LDX    #$00    
       STX    $96     
       STX    $A9     
       TXA            
       LDX    $DD     
       BEQ    LF47C   
       LDA    #$02    
LF47C: ORA    $F5     
       STA    $F5     
       LDA    #$28    
       AND    $B3     
       LDX    #$00    
       STA    WSYNC   
       STA    COLUBK  
       STX    PF0     
       STX    PF1     
       STX    PF2     
       STX    ENAM1   
       LDA    $F0     
       BEQ    LF4A6   
       LDA    $F2     
       BEQ    LF49E   
       DEC    $F2     
       BEQ    LF4A6   
LF49E: LDA    $A3     
       AND    #$02    
       BNE    LF4A6   
       INC    $A3     
LF4A6: STX    $F0     
       LDA    $F6     
       AND    #$02    
       ORA    $F5     
       STA    $F5     
       STA    WSYNC   
       CLC            
       LDY    #$02    
LF4B5: TYA            
       ASL            
       ASL            
       TAX            
       LDA.wy $00DD,Y 
       AND    #$F0    
       LSR            
       ADC    #$8C    
       STA    $E2,X   
       LDA.wy $00DD,Y 
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       ADC    #$8C    
       STA    $E4,X   
       LDA    #$FB    
       STA    $E3,X   
       STA    $E5,X   
       DEY            
       BPL    LF4B5   
       BIT    $AA     
       BPL    LF511   
       LDA    $A5     
       BEQ    LF511   
       LDA    $97     
       CMP    #$54    
       BCS    LF50C   
       LDA    $A5     
       ROR            
       BCC    LF511   
       LDA    #$80    
       STA    $A5     
       STA    $C3     
       ASL            
       STA    $CF     
       LDA    #$40    
       STA    $F4     
       STA    WSYNC   
       LDA    #$80    
       STA    $90     
       LDA    #$FD    
       STA    $D3     
       LDA    #$E8    
       STA    $D2     
       LDA    #$06    
       STA    $CF     
       BNE    LF513   
LF50C: JSR    LFC60   
       BNE    LF513   
LF511: STA    WSYNC   
LF513: LDA    SWCHB   
       AND    #$02    
       BNE    LF537   
       LDA    $F7     
       BEQ    LF539   
       DEC    $F7     
       BNE    LF531   
       INC    $F6     
       LDA    $F6     
       AND    #$03    
       TAX            
       INX            
       STX    $DF     
       STX    $B1     
       JMP    LF539   
LF531: LDA    #$01    
       STA    $F5     
       BNE    LF539   
LF537: STA    $F7     
LF539: STA    WSYNC   
       LDX    #$0A    
LF53D: DEX            
       LDA    $B6,X   
       CMP    #$30    
       BCC    LF56B   
       CMP    #$C0    
       BCS    LF56B   
       SEC            
       SBC    #$30    
       LDY    #$00    
       SEC            
       STA    WSYNC   
LF550: INY            
       SBC    #$0F    
       BCS    LF550   
       STA    WSYNC   
       STY    $E0     
       EOR    #$FF    
       ADC    #$09    
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    $E0     
LF563: STA    $83,X   
       TXA            
       BNE    LF53D   
       JMP    LF00D   
LF56B: STA    WSYNC   
       LDA    #$5B    
       STA    WSYNC   
       JMP    LF563   
LF574: LDA    #$20    
       STA    $A4     
       LDX    #$00    
       STX    COLUBK  
       STX    COLUPF  
       INC    $C6     
       BNE    LF58E   
       INC    $C7     
       BNE    LF58E   
       DEC    $B3     
       DEC    $C7     
       LDX    #$FF    
       STX    $80     
LF58E: LDA    $AC     
       AND    $F8     
       STA    $AC     
       LDA    $AB     
       AND    $F8     
       STA    $AB     
       LDA    VBLANK  
       AND    $F8     
       STA    $91     
       STA    CXCLR   
       LDA    SWCHB   
       AND    #$01    
       BNE    LF5B1   
       LDA    #$08    
       STA    $F5     
       LDA    #$FF    
       STA    $F8     
LF5B1: BIT    $F5     
       BMI    LF5FF   
       LDA    #$00    
       LDX    #$68    
LF5B9: STA    $8C,X   
       DEX            
       BNE    LF5B9   
       LDA    SWCHB   
       AND    #$40    
       BEQ    LF5C7   
       LDX    #$02    
LF5C7: STX    $F3     
       LDA    #$5B    
       LDX    #$0B    
LF5CD: STA    $81,X   
       DEX            
       BPL    LF5CD   
       STA    RESMP0  
       LDA    #$46    
       STA    $80     
       STA    $B6     
       LDA    #$80    
       STA    $A5     
       ORA    $F5     
       STA    $F5     
       LDA    #$FC    
       STA    $B5     
       STA    $B4     
       LDA    #$33    
       STA    $A8     
       LDA    #$02    
       STA    $A3     
       STA    $AE     
       LDA    #$FF    
       STA    $B3     
       LDA    #$48    
       STA    $97     
       LDA    #$20    
       STA    $A4     
       RTS            

LF5FF: LDA    $F5     
       ROR            
       BCC    LF642   
       LDA    $F6     
       ROR            
       BCS    LF60C   
       JMP    LF7CA   
LF60C: LDA    $C6     
       AND    #$7F    
       BEQ    LF615   
       JMP    LF7CA   
LF615: LDA    $DD     
       STA    $E0     
       LDA    $DE     
       STA    $E1     
       LDA    $DF     
       STA    $EE     
       LDA    $AF     
       STA    $DD     
       LDA    $B0     
       STA    $DE     
       LDA    $B1     
       STA    $DF     
       LDA    $E0     
       STA    $AF     
       LDA    $E1     
       STA    $B0     
       LDA    $EE     
       STA    $B1     
       LDA    $F5     
       EOR    #$10    
       STA    $F5     
       JMP    LF7CA   
LF642: LDA    $F5     
       AND    #$08    
       BEQ    LF65F   
       LDX    PF0     
       LDA    $F5     
       AND    #$10    
       BNE    LF652   
       LDX    REFP1   
LF652: TXA            
       ROL            
       BCC    LF659   
       JMP    LF7CA   
LF659: LDA    $F5     
       AND    #$F7    
       STA    $F5     
LF65F: LDA    $C1     
       STA    $E0     
       LDA    $C6     
       AND    #$3F    
       EOR    #$3F    
       BNE    LF67B   
       EOR    $C6     
       EOR    $80     
       EOR    $C7     
       TAX            
       EOR    $C1     
       STA    $C1     
       TXA            
       EOR    $C2     
       STA    $C2     
LF67B: LDA    $AB     
       BEQ    LF687   
       LDA    #$00    
       STA    $94     
       LDA    #$02    
       STA    RESMP0  
LF687: JSR    LF93D   
       LDA    $80     
       STA    $F9     
       LDX    $C5     
       BNE    LF699   
       EOR    #$FF    
       BEQ    LF699   
       JSR    LF82A   
LF699: LDA    $B7     
       BNE    LF6BA   
       LDA    $C1     
       AND    #$07    
       TAX            
       SEC            
       LDA    #$00    
LF6A5: ROL            
       DEX            
       BPL    LF6A5   
       STA    $EE     
LF6AB: LDA    $C0     
       AND    $EE     
       BEQ    LF6B7   
       ASL    $EE     
       BEQ    LF6BA   
       BNE    LF6AB   
LF6B7: JSR    LF898   
LF6BA: LDX    #$01    
       STX    $E0     
       LDA    $C6     
       ROR            
       BCS    LF6C5   
       LDX    $F3     
LF6C5: STX    $E1     
       LDA    #$80    
       STA    $EE     
       LDX    #$08    
LF6CD: DEX            
       BMI    LF722   
       LDA    $C0     
       AND    $EE     
       BNE    LF6DB   
       LSR    $EE     
       JMP    LF6CD   
LF6DB: LDA    $C2     
       AND    $EE     
       TAY            
       LDA    $C1     
       AND    $EE     
       BEQ    LF6FE   
       LDA    $B8,X   
       AND    #$F0    
       BEQ    LF71A   
       TYA            
       SEC            
       BEQ    LF6F7   
       LDA    $B8,X   
       SBC    $E0     
       JMP    LF715   
LF6F7: LDA    $B8,X   
       SBC    $E1     
       JMP    LF715   
LF6FE: LDA    $B8,X   
       AND    #$F0    
       EOR    #$F0    
       BEQ    LF71A   
       TYA            
       CLC            
       BEQ    LF711   
       LDA    $B8,X   
       ADC    $E0     
       JMP    LF715   
LF711: LDA    $B8,X   
       ADC    $E1     
LF715: STA    $B8,X   
       JMP    LF71D   
LF71A: JSR    LF898   
LF71D: LSR    $EE     
       JMP    LF6CD   
LF722: LDY    #$01    
       LDA    $A5     
       STA    $E0     
       LDA    $91     
       ASL            
       BCC    LF739   
       LDA    $A7     
       CMP    #$90    
       BCC    LF739   
       CMP    #$B0    
       BCC    LF74D   
       STY    $A5     
LF739: LDA    $91     
       ASL            
       ASL            
       BCC    LF750   
       LDA    $A0     
       CMP    #$90    
       BCC    LF750   
       CMP    #$B0    
       BCC    LF74D   
       STY    $A5     
       BCS    LF750   
LF74D: JSR    LFC60   
LF750: JSR    LF8D8   
       JSR    LFBDD   
       JSR    LFD20   
       STX    $81     
       LDA    $B5     
       JSR    LFD20   
       STX    $82     
       LDA    $C6     
       AND    #$0F    
       EOR    #$0F    
       BNE    LF78E   
       LDA    $C6     
       AND    #$10    
       STA    $E1     
       LDA    $C0     
       STA    $E0     
       LDX    #$08    
LF776: DEX            
       BMI    LF78E   
       ASL    $E0     
       BCC    LF776   
       LDA    $98,X   
       LDY    $E1     
       BEQ    LF787   
       ADC    #$0B    
       BNE    LF789   
LF787: SBC    #$0C    
LF789: STA    $98,X   
       JMP    LF776   
LF78E: LDA    $F5     
       AND    #$02    
       BEQ    LF7CA   
       LDA    $C9     
       BNE    LF7CA   
       LDA    $80     
       EOR    #$50    
       BNE    LF7CA   
       LDA    $F9     
       EOR    #$4E    
       BNE    LF7CA   
       LDA    $84     
       STA    $A8     
       EOR    #$5B    
       BEQ    LF7CA   
       LDA    #$14    
       STA    $C9     
       LDA    #$00    
       STA    $C3     
       STA    $CA     
       LDA    #$70    
       STA    $97     
       LDA    #$FE    
       STA    $D1     
       LDA    #$08    
       STA    $D0     
       LDA    #$18    
       STA    $CE     
       LDA    #$20    
       STA    $8F     
LF7CA: LDX    #$00    
       LDA    $D0     
       STA    $E0     
       LDA    $D1     
       STA    $E1     
       JSR    LFC32   
       INX            
       LDA    $D2     
       STA    $E0     
       LDA    $D3     
       STA    $E1     
       JSR    LFC32   
       LDA    $C4     
       ROL            
       BCC    LF7EB   
       JSR    LFC60   
LF7EB: LDA    $C9     
       BEQ    LF7FB   
       LDA    #$02    
       STA    $A9     
       DEC    $C9     
       BNE    LF829   
       STA    $B7     
       BEQ    LF829   
LF7FB: LDA    $F4     
       BNE    LF829   
       LDA    $B7     
       BNE    LF822   
       ASL    $C3     
       BCC    LF818   
       SED            
       LDA    #$05    
       ADC    $DE     
       STA    $DE     
       LDA    #$00    
       ROL            
       STA    $F0     
       ADC    $DD     
       STA    $DD     
       CLD            
LF818: LDA    #$48    
       BIT    $C6     
       BPL    LF820   
       LDA    #$58    
LF820: STA    $97     
LF822: DEC    $B7     
       DEC    $B7     
       JSR    LFDA0   
LF829: RTS            

LF82A: LDX    SWCHA   
       LDA    $F5     
       AND    #$10    
       BNE    LF839   
       TXA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
LF839: TXA            
       ROR            
       BCC    LF847   
       ROR            
       BCC    LF852   
       ROR            
       BCC    LF880   
       ROR            
       BCC    LF88B   
LF846: RTS            

LF847: LDA    $80     
       CMP    #$12    
       BCC    LF846   
       DEC    $80     
       DEC    $80     
       RTS            

LF852: LDA    $80     
       CMP    #$90    
       BCC    LF87B   
       LDA    $83     
       STA    $A8     
       LDA    #$02    
       STA    $96     
       LDA    #$30    
       STA    $CA     
       LDA    $90     
       AND    #$F8    
       BNE    LF87A   
       LDA    #$FE    
       STA    $D3     
       LDA    #$26    
       STA    $D2     
       LDA    #$03    
       STA    $CF     
       LDA    #$04    
       STA    $90     
LF87A: RTS            

LF87B: INC    $80     
       INC    $80     
       RTS            

LF880: LDA    $B6     
       CMP    #$40    
       BCC    LF846   
       DEC    $B6     
       DEC    $B6     
       RTS            

LF88B: LDA    $B6     
       CMP    #$A8    
       BCS    LF846   
       INC    $B6     
       LDA    #$23    
       STA    $A4     
       RTS            

LF898: LDA    $EE     
       ORA    $C0     
       STA    $C0     
       LDA    $EE     
       LDX    #$FF    
LF8A2: INX            
       ROR            
       BCC    LF8A2   
       LDA    $C6     
       ROL            
       LDA    $EE     
       BCC    LF8B5   
       ORA    $C1     
       STA    $C1     
       LDA    #$FF    
       BNE    LF8BD   
LF8B5: EOR    #$FF    
       AND    $C1     
       STA    $C1     
       LDA    #$00    
LF8BD: STA    $B8,X   
       LDA    $80     
       EOR    $C1     
       AND    #$03    
       TAY            
       LDA    LFCFC,Y 
       TAY            
       LDA    $C6     
       AND    #$10    
       BNE    LF8D5   
       TYA            
       CLC            
       ADC    #$0C    
       TAY            
LF8D5: STY    $98,X   
       RTS            

LF8D8: LDX    #$00    
       LDA    $C1     
       AND    #$07    
       TAY            
       LDA    $E0     
       EOR    #$80    
       BNE    LF8F7   
       LDA    $A5     
       EOR    #$80    
       BEQ    LF8F7   
       LDA    $91     
       ASL            
       BCC    LF8F2   
       STX    $A7     
LF8F2: ASL            
       BCC    LF8F7   
       STX    $A0     
LF8F7: LDA    $B5     
       BEQ    LF90E   
       EOR    #$A0    
       BEQ    LF91B   
       LDA    $B5     
       EOR    #$72    
       BEQ    LF92A   
       DEC    $B5     
       DEC    $B5     
LF909: DEC    $B4     
       DEC    $B4     
       RTS            

LF90E: STA    $A7     
       LDA    $B4     
       BNE    LF909   
       STA    $A0     
       LDA    #$FC    
       STA    $B5     
       RTS            

LF91B: LDA    #$90    
       STA    $B5     
       LDA    LFCF0,Y 
       STA    $A7     
       LDA    LFFF0,Y 
       STA    $FA     
       RTS            

LF92A: LDA    #$70    
       STA    $B5     
       LDA    #$90    
       STA    $B4     
       LDA    LFCF0,Y 
       STA    $A0     
       LDA    LFFF0,Y 
       STA    $FB     
       RTS            

LF93D: LDA    #$00    
       STA    $EF     
       STA    $DC     
       STA    $E0     
       STA    $EE     
       STA    $E1     
       LDX    #$08    
       SEC            
LF94C: DEX            
       BMI    LF971   
       ROR    $E0     
       LDA    $D4,X   
       BEQ    LF94C   
       LDA    $E0     
       ORA    $E1     
       STA    $E1     
       DEC    $D4,X   
       BNE    LF94C   
       LDA    #$6C    
       STA    $98,X   
       LDY    #$F8    
       LDA    $E0     
       AND    $C1     
       BEQ    LF96D   
       LDY    #$08    
LF96D: STY    $B8,X   
       BCC    LF94C   
LF971: LDX    #$08    
       LDA    $E1     
       EOR    #$FF    
       AND    $AB     
       STA    $E1     
       SEC            
LF97C: DEX            
       BPL    LF980   
       RTS            

LF980: ROR    $EE     
       ASL    $E1     
       BCC    LF97C   
       LDY    #$60    
       LDA    $98,X   
       STY    $98,X   
       CMP    #$10    
       BCC    LF996   
       LDA    #$50    
       STA    $EF     
       BNE    LF99A   
LF996: LDA    #$02    
       STA    $DC     
LF99A: SED            
       CLC            
       LDA    $EF     
       ADC    $DF     
       STA    $DF     
       LDA    $DC     
       ADC    $DE     
       STA    $DE     
       LDA    #$00    
       ROL            
       STA    $F0     
       ADC    $DD     
       STA    $DD     
       CLD            
       LDA    $8F     
       AND    #$E0    
       BNE    LF9C4   
       LDA    #$FE    
       STA    $D1     
       LDA    #$08    
       STA    $D0     
       LDA    #$18    
       STA    $CE     
LF9C4: LDA    #$0F    
       STA    $D4,X   
       LDA    $EE     
       EOR    $C0     
       STA    $C0     
       CLC            
       BCC    LF97C   
LF9D1: LDA    $C6     
       ROR            
       BCC    LF9D9   
       JMP    LFA70   
LF9D9: LDA    $AC     
       STA    $E1     
       BNE    LF9E2   
       JMP    LFA70   
LF9E2: EOR    #$FF    
       AND    $C1     
       STA    $EE     
       LDA    $E1     
       AND    $E0     
       EOR    $E1     
       ORA    $EE     
       STA    $C1     
       LDA    #$01    
       STA    $EF     
       LDX    #$00    
       LDY    #$08    
       LDA    $E1     
LF9FC: LSR            
       BCS    LFA08   
LF9FF: ASL    $EF     
       INX            
       DEY            
       BNE    LF9FC   
       JMP    LFA70   
LFA08: STA    $DC     
       LDA    $98,X   
       CMP    #$60    
       BEQ    LFA35   
       CMP    #$10    
       BCS    LFA23   
       LDA    #$60    
       STA    $98,X   
       LDA    $EF     
       EOR    $C0     
       STA    $C0     
       JSR    LFC60   
       BNE    LFA35   
LFA23: LDA    $B8,X   
       SBC    #$20    
       STA    $B8,X   
       LDA    $EF     
       AND    $C1     
       BNE    LFA35   
       LDA    $B8,X   
       ADC    #$40    
       STA    $B8,X   
LFA35: BIT    $8D     
       BMI    LFA6B   
       LDA    #$1F    
       STA    $C5     
       LDA    #$80    
       STA    $A5     
       LDA    $DE     
       ORA    $DD     
       BEQ    LFA59   
       SED            
       SEC            
       LDA    $DE     
       SBC    #$01    
       STA    $DE     
       BCS    LFA55   
       DEC    $DD     
       INC    $F2     
LFA55: CLD            
       JMP    LFA5B   
LFA59: STA    $DF     
LFA5B: LDA    #$FE    
       STA    $D3     
       LDA    #$29    
       STA    $D2     
       LDA    #$06    
       STA    $CF     
       LDA    #$40    
       STA    $90     
LFA6B: LDA    $DC     
       JMP    LF9FF   
LFA70: LDA    $C5     
       BNE    LFA75   
       RTS            

LFA75: LDX    #$02    
       STX    RESMP0  
       DEC    $C5     
       BEQ    LFA80   
       JMP    LFB0A   
LFA80: BIT    $8D     
       BMI    LFA87   
       JMP    LFB09   
LFA87: LDA    $F5     
       ORA    #$08    
       STA    $F5     
       LDA    #$80    
       STA    $A5     
       DEC    $A3     
       BPL    LFAA5   
       LDA    $F6     
       ROR            
       BCC    LFA9E   
       BIT    $AE     
       BPL    LFAAA   
LFA9E: ROR    $F5     
       SEC            
       ROL    $F5     
       BNE    LFAF0   
LFAA5: LDA    $F6     
       ROR            
       BCC    LFAF0   
LFAAA: BIT    $AE     
       BMI    LFAF0   
       LDA    $F5     
       EOR    #$10    
       STA    $F5     
       LDA    $A3     
       STA    $E0     
       LDA    $AE     
       STA    $A3     
       LDA    $E0     
       STA    $AE     
       LDA    $F2     
       STA    $E0     
       LDA    $F1     
       STA    $F2     
       LDA    $E0     
       STA    $F1     
       LDA    $DD     
       LDX    $DE     
       LDY    $DF     
       STA    $E1     
       STX    $EE     
       STY    $EF     
       LDA    $AF     
       LDX    $B0     
       LDY    $B1     
       STA    $DD     
       STX    $DE     
       STY    $DF     
       LDA    $E1     
       LDX    $EE     
       LDY    $EF     
       STA    $AF     
       STX    $B0     
       STY    $B1     
LFAF0: LDA    #$00    
       STA    $8D     
       STA    $A6     
       STA    $C0     
       LDY    #$5B    
       LDX    #$07    
LFAFC: STA    $B8,X   
       STY    $85,X   
       DEX            
       BPL    LFAFC   
       LDA    #$46    
       STA    $80     
       STA    $B6     
LFB09: RTS            

LFB0A: AND    #$07    
       TAX            
       EOR    #$07    
       BNE    LFB18   
       LDA    #$08    
       ORA    $8D     
       STA    $8D     
       RTS            

LFB18: TXA            
       EOR    #$03    
       BNE    LFB23   
       LDA    #$F7    
       AND    $8D     
       STA    $8D     
LFB23: RTS            

LFB24: .byte $F3,$6D,$BC,$ED
LFB28: .byte $C0,$80,$80,$E0,$50,$E0,$40,$C0,$F0,$20,$70,$20,$E0,$F0,$90,$30
       .byte $90,$F0,$F0,$C0,$90,$C0,$70,$70,$60,$40,$E0,$B0,$B0,$B0,$20,$70
       .byte $D0,$D0,$D0,$10,$30,$E0,$E0,$E0,$00,$10,$70,$70,$F0,$00,$00,$30
       .byte $30,$70,$00,$00,$10,$10,$B0,$80,$00,$80,$00,$50,$C0,$80,$C0,$80
       .byte $A0,$E0,$40,$E0,$40,$50,$70,$20,$70,$20,$A0,$30,$10,$30,$90,$D0
       .byte $10,$00,$90,$C0,$E0,$00,$00,$40,$60,$F0,$00,$00,$20,$B0,$70,$80
       .byte $00,$10,$D0,$B0,$3C,$66,$66,$66,$66,$66,$66,$3C,$3C,$18,$18,$18
       .byte $18,$18,$38,$18,$7E,$60,$60,$3C,$06,$06,$46,$3C,$3C,$46,$06,$0C
       .byte $0C,$06,$46,$3C,$0C,$0C,$0C,$7E,$4C,$2C,$1C,$0C,$7C,$46,$06,$06
       .byte $7C,$60,$60,$7E,$3C,$66,$66,$66,$7C,$60,$62,$3C,$18,$18,$18,$18
       .byte $0C,$06,$42,$7E,$3C,$66,$66,$3C,$3C,$66,$66,$3C,$3C,$46,$06,$3E
       .byte $66,$66,$66,$3C,$11
LFBDD: LDA    $C6     
       LSR            
       BCS    LFBFB   
       LDA    $B2     
       ADC    #$0A    
       STA    $B2     
       EOR    #$C8    
       BNE    LFBEE   
       STA    $B2     
LFBEE: CLC            
       LDA    $CB     
       ADC    #$05    
       STA    $CB     
       EOR    #$64    
       BNE    LFBFB   
       STA    $CB     
LFBFB: LDA    $B4     
       RTS            

LFBFE: .byte $36,$6D
LFC00: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$46,$0F,$05,$48,$0C,$05,$4A,$08,$05,$4F,$04,$05
       .byte $4A,$08,$05,$C6,$0F,$05,$C8,$0C,$05,$CA,$08,$05,$CF,$04,$05,$CA
       .byte $08,$05
LFC32: LDA    $CC,X   
       BEQ    LFC39   
       DEC    $CC,X   
       RTS            

LFC39: LDY    $CE,X   
       BEQ    LFC55   
       LDA    ($E0),Y 
       STA    $CC,X   
       DEY            
       LDA    ($E0),Y 
       STA    AUDF0,X 
       DEY            
       LDA    ($E0),Y 
       STA    AUDV0,X 
       LSR            
       LSR            
       LSR            
       LSR            
       STA    AUDC0,X 
       DEY            
       STY    $CE,X   
       RTS            

LFC55: STY    AUDV0,X 
       TXA            
       BNE    LFC5D   
       STY    $8F     
       RTS            

LFC5D: STY    $90     
       RTS            

LFC60: LDA    #$C0    
       STA    $C5     
       ROL    $8D     
       SEC            
       ROR    $8D     
       LDA    #$FD    
       STA    $D1     
       LDA    #$FF    
       STA    $D0     
       LDA    #$21    
       STA    $CE     
       LDA    #$80    
       STA    $8F     
       LDA    #$00    
       STA    $A5     
       LDA    #$70    
       STA    $A6     
       RTS            

LFC82: .byte $41,$80,$09,$82,$43,$00,$48,$10,$46,$20,$89,$8A,$5C,$31,$12,$94
       .byte $58,$2B,$1A,$8C,$79,$11,$92,$54,$39,$0A,$8C,$68,$1C,$00,$18,$18
       .byte $3C,$3C,$3C,$3C,$5A,$5A,$42,$42,$FF,$66,$7E,$66,$3C,$18,$3C,$66
       .byte $C3,$00,$FE,$38,$FE,$38,$FE,$38,$FE,$38,$FE,$38,$38,$38,$FE,$FE
       .byte $92,$92,$92,$92,$92,$00,$7E,$7E,$7E,$7E,$7E,$7E,$7E,$00,$FF,$18
       .byte $18,$18,$24,$18,$24,$18,$3C,$18,$3C,$00,$18,$3C,$18,$18,$7E,$C3
       .byte $C3,$7E,$18,$3C,$18,$3C,$A5,$E7,$FF,$DB,$DB,$DB,$DB,$00
LFCF0: .byte $A0,$8C,$8C,$C8,$B4,$A0,$DC,$C8,$44,$02,$42,$82
LFCFC: .byte $00,$18,$30,$48
LFD00: .byte $18,$1C,$14,$14,$9C,$3C,$FE,$7F,$FF,$14,$94,$3E,$15,$3E,$00,$00
       .byte $18,$1C,$14,$14,$9C,$BC,$7E,$FF,$7F,$94,$94,$3E,$2A,$3E,$00,$00
LFD20: LDX    #$01    
       CMP    #$95    
       BCS    LFD3B   
       LDY    #$00    
       SEC            
LFD29: INY            
       SBC    #$0F    
       BCS    LFD29   
       STY    $E0     
       EOR    #$FF    
       ADC    #$09    
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    $E0     
       TAX            
LFD3B: RTS            

LFD3C: .byte $4E,$00,$01,$80
LFD40: .byte $1C,$18,$9E,$FF,$FE,$9C,$14,$00,$00,$02,$7A,$2A,$3A,$FF,$55,$7F
       .byte $02,$7A,$2A,$3A,$FF,$AA,$7F,$3F,$08,$08,$08,$1E,$3A,$7F,$FF,$FF
       .byte $00,$08,$08,$08,$1E,$3A,$7F,$FF,$18,$3C,$7E,$7E,$7E,$7E,$3C,$18
       .byte $18,$81,$00,$C3,$24,$99,$24,$C3,$00,$81,$18,$00,$00,$00,$00,$00
LFD80: .byte $EF,$2C,$2C,$2C,$28,$2C,$2E,$2C,$2A,$28,$28,$3A,$3C,$3A,$3A,$3A
       .byte $EF,$2C,$2C,$2C,$28,$2C,$2E,$2C,$2A,$28,$28,$3A,$EC,$3A,$3A,$3A
LFDA0: LDA    $B7     
       AND    #$0F    
       EOR    #$02    
       BNE    LFDBC   
       LDA    $B7     
       AND    #$10    
       BNE    LFDB5   
       SEC            
       LDA    $97     
       SBC    #$08    
       BNE    LFDBA   
LFDB5: CLC            
       LDA    $97     
       ADC    #$08    
LFDBA: STA    $97     
LFDBC: RTS            

LFDBD: .byte $02,$00,$00
LFDC0: .byte $16,$36,$56,$A6,$B6,$C6,$D6,$E6,$83,$1A,$01,$83,$18,$01,$84,$16
       .byte $01,$84,$14,$01,$85,$0F,$01,$86,$0A,$01,$88,$06,$01,$8B,$04,$01
       .byte $8F,$02,$01,$8B,$04,$01,$88,$06,$01,$CF,$18,$1F,$CF,$1F,$10,$40
       .byte $9A,$7A,$AA,$DA,$FA,$1A,$3A,$2A,$EA,$FA,$1A,$00,$00,$00,$00,$00
       .byte $88,$1F,$2F,$89,$1D,$2F,$8A,$1A,$2F,$8B,$16,$06,$8C,$10,$04,$8D
       .byte $0C,$04,$8E,$06,$04,$8F,$04,$04,$8F,$02,$04,$8B,$04,$04,$88,$06
       .byte $04,$93,$1A,$00,$95,$17,$00,$1F,$1E,$00,$9F,$18,$04,$9F,$1F,$04
LFE30: .byte $90,$1C,$38,$08,$EE,$9C,$EE,$C8,$6F,$EA,$20,$0E,$70,$04,$DC,$4E
       .byte $DC,$64,$DE,$F5,$40,$07,$E0,$02,$B8,$27,$B8,$B2,$BD,$7A,$81,$83
       .byte $C0,$01,$71,$13,$70,$D9,$7A,$BD,$03,$C1,$81,$80,$E3,$89,$E1,$EC
       .byte $F5,$5E,$07,$E0,$02,$40,$C7,$C4,$C2,$F6,$EA,$2F,$0E,$70,$04,$20
       .byte $8E,$E2,$84,$FB,$D5,$97,$1C,$38,$08,$90,$1C,$F1,$09,$FD,$AB,$CB
       .byte $38,$9C,$10,$C8,$39,$78,$13,$7E,$57,$65,$70,$4E,$20,$E4,$72,$BC
       .byte $26,$BF,$AF,$B2,$E0,$27,$40,$72,$E4,$DE,$4D,$DF,$5E,$D9,$C1,$13
       .byte $80,$39,$C8,$EF,$9B,$EF,$BD,$EC,$83,$09,$01,$1C,$91,$77,$37,$77
       .byte $7A,$F6,$07,$04,$02,$0E,$23,$3B,$6F,$3B,$F4,$7B,$0E,$02,$04,$07
       .byte $47,$1D,$DF,$1D,$E9,$BD,$1C,$81,$09,$03,$8F,$8E,$BF,$0E,$D3,$5E
       .byte $39,$C0,$13,$81,$1E,$C7,$7E,$87,$A6,$AF,$72,$E0,$27,$40,$3D,$E3
       .byte $FD,$43,$4D,$57,$E4,$70,$4E,$20,$7B,$71,$FB,$21,$9B,$AB,$C8,$38
       .byte $9C,$10,$F7,$38,$F7,$90,$37,$D5,$1B,$6D,$93,$5D,$BE
LFEFD: .byte $00,$01,$03
LFF00: .byte $00,$00,$49,$2A,$1C,$3E,$1C,$2A,$49,$00,$00,$00,$08,$08,$08,$2A
       .byte $1C,$7F,$1C,$2A,$08,$08,$08,$00,$10,$10,$38,$7C,$FE,$AA,$AA,$FE
       .byte $7C,$38,$10,$00,$10,$10,$38,$7C,$FE,$54,$54,$FE,$7C,$38,$10,$00
       .byte $0C,$18,$38,$5D,$FF,$DF,$19,$14,$00,$00,$00,$00,$08,$18,$39,$5D
       .byte $FF,$FF,$39,$05,$01,$00,$00,$00,$02,$05,$18,$32,$75,$58,$70,$70
       .byte $39,$05,$02,$00,$00,$00,$31,$6E,$E0,$FF,$E0,$E6,$79,$00,$00,$00
       .byte $18,$81,$00,$C3,$24,$99,$24,$C3,$00,$81,$18,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00
LFF78: .byte $1F,$1D,$1B,$19,$17,$15,$E7,$E9,$EB,$ED,$EF,$00,$A5,$A7,$A9,$AB
       .byte $AD,$3F,$3D,$3B,$39,$37,$35,$00,$3F,$C6,$C8,$CA,$2A,$3C,$3C,$2A
       .byte $CA,$C8,$C6,$00,$38,$C6,$C8,$CA,$2A,$3C,$3C,$2A,$CA,$C8,$C6,$00
       .byte $0A,$0A,$0C,$0C,$0E,$0C,$0C,$0A,$0A,$0A,$0A,$00,$0A,$0A,$0C,$0C
       .byte $0E,$0C,$0C,$0A,$0A,$0A,$0A,$00,$1A,$1A,$1A,$1C,$1C,$1E,$1C,$1C
       .byte $1A,$1A,$1A,$00,$1A,$1A,$1A,$1C,$1C,$1E,$1C,$1C,$1A,$1A,$1A,$00
       .byte $9A,$7A,$AA,$DA,$FA,$1A,$3A,$2A,$EA,$FA,$1A,$00,$9A,$7A,$AA,$DA
       .byte $FA,$1A,$3A,$2A,$EA,$FA,$1A,$00
LFFF0: .byte $3F,$CA,$CA,$EF,$5F,$3F,$8F,$EF,$9F,$1F,$B8,$49,$00,$F0,$00,$00
