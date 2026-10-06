; Disassembly of roms/Venture.bin
; Disassembled Tue Oct  6 15:30:30 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Venture.bin
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
CTRLPF  =  $0A
PF1     =  $0E
PF2     =  $0F
RESP0   =  $10
RESP1   =  $11
AUDC0   =  $15
AUDC1   =  $16
AUDF0   =  $17
AUDF1   =  $18
AUDV0   =  $19
AUDV1   =  $1A
GRP0    =  $1B
GRP1    =  $1C
ENABL   =  $1F
HMP0    =  $20
HMP1    =  $21
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXP0FB  =  $32
CXP1FB  =  $33
CXBLPF  =  $36
CXPPMM  =  $37
INPT4   =  $3C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296
LF003   =   $F003

       ORG $F000
LF000: LDA    #$07    
LF002: STA    $F8     
LF004: LDY    $F8     
       LDX    LFF00,Y 
       LDA    ($ED),Y 
       STA    GRP0    
       LDA    #$00    
       STA    PF1     
       STA    WSYNC   
       LDA    ($EF),Y 
       STA    GRP1    
       LDA    ($F1),Y 
       STA    GRP0    
       LDA    ($F3),Y 
       LDY    $F8     
       STA    GRP1    
       STX    GRP0    
       STX    GRP1    
       STX    GRP0    
       LDA    $F9     
       STA    PF1     
       DEC    $F8     
       BPL    LF004   
       LDX    $BD     
       LDA    $CF,X   
       LDX    #$00    
       STX    NUSIZ0  
       STX    VDELP0  
       STX    VDELP1  
       STX    PF1     
       STX    GRP0    
       STX    GRP1    
       JSR    LF880   
       LDX    $BD     
       LDA    $D0,X   
       LDX    #$01    
       JSR    LF880   
       STA    WSYNC   
       STA    HMOVE   
       LDX    $BD     
       STX    $EF     
       LDA    $A4,X   
       STA    COLUP0  
       LDA    $C0     
       STA    NUSIZ1  
       STY    WSYNC   
       STA    HMCLR   
       INY            
LF062: INX            
       LDA    $A4,X   
       STA    COLUP1  
       LDA    $94,X   
       STA    $F4     
       BPL    LF071   
       LDA    $AA,X   
       STA    $F5     
LF071: LDA    $AA,X   
       STA    $F6     
       TXA            
       ASL            
       TAX            
       LDA    $80,X   
       STA    $F2     
       LDA    $81,X   
       STA    $F3     
       LDX    $F7     
LF082: LDA    $EB     
       STA    WSYNC   
       BNE    LF093   
       CPY    $EA     
       BNE    LF0C8   
       LDA    $EC     
       STA    $EB     
       JMP    LF099   
LF093: LDA    ($E7),Y 
       STA    GRP0    
       INC    $EB     
LF099: LDA    LFD16,X 
       STA    PF1     
       LDA    LFC16,X 
       STA    PF2     
       BIT    $93     
       BVS    LF0D7   
       NOP            
       NOP            
       NOP            
       LDA    LFCA7,X 
       STA    PF2     
       LDA    LFDA7,X 
       STA    $010E   
LF0B5: STX    $F7     
       LDA    $F5     
       BNE    LF0EC   
       CPY    $F4     
       BNE    LF0CE   
       LDA    $F6     
       STA    $F5     
       CPY    $9A     
       JMP    LF0F4   
LF0C8: NOP            
       LDA    $BD     
       JMP    LF099   
LF0CE: NOP            
       LDA    $BD     
       CPY    $9A     
       JMP    LF0F4   
LF0D6: RTS            

LF0D7: JSR    LF0D6   
       STX    $F7     
       NOP            
       JMP    LF0B5   
LF0E0: LDA    #$00    
       STA    ENABL   
       BEQ    LF0FC   
LF0E6: JSR    LF0D6   
       JMP    LF119   
LF0EC: INC    $F5     
       LDA    ($F2),Y 
       CPY    $9A     
       STA    GRP1    
LF0F4: BNE    LF0E0   
       LDA    #$02    
       STA    ENABL   
       NOP            
       NOP            
LF0FC: LDA    LFD16,X 
       STA    PF1     
       LDA    LFC16,X 
       STA    PF2     
       TYA            
       CMP    LFF57,X 
       BNE    LF122   
       BVS    LF0E6   
       LDA    LFCA7,X 
       STA    $010F   
       LDA    LFDA7,X 
       STA    PF1     
LF119: INY            
       CPY    $E9     
       BEQ    LF142   
       INX            
       JMP    LF082   
LF122: BVS    LF12E   
       LDA    LFCA7,X 
       STA    PF2     
       LDA    LFDA7,X 
       STA    PF1     
LF12E: INY            
       CPY    #$50    
       BEQ    LF136   
       JMP    LF082   
LF136: JMP    LF1D7   
LF139: INC    $F9     
       JMP    LF15D   
LF13E: BCC    LF17B   
LF140: BNE    LF18C   
LF142: INX            
       LDA    LFD16,X 
       STA    PF1     
       LDA    $EB     
       BNE    LF157   
       CPY    $EA     
       BNE    LF139   
       LDA    $EC     
       STA    $EB     
       JMP    LF15D   
LF157: LDA    ($E7),Y 
       STA    GRP0    
       INC    $EB     
LF15D: LDA    LFC16,X 
       STA    PF2     
       LDX    $BD     
       LDA    $D1,X   
       TAX            
       AND    #$0F    
       STA    $F9     
       TXA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       CLC            
       ADC    $F9     
       CMP    #$10    
       BCC    LF13E   
       SBC    #$0F    
       INX            
LF17B: ASL            
       ASL            
       ASL            
       ASL            
       EOR    #$70    
       STA    HMP1    
       LDA    #$00    
       CPY    $9A     
       BNE    LF140   
       LDA    #$02    
       NOP            
LF18C: STA    ENABL   
LF18E: DEX            
       BPL    LF18E   
       NOP            
       STA    RESP1   
       STA    WSYNC   
       INY            
       LDA    $EB     
       BNE    LF1A6   
       CPY    $EA     
       BNE    LF1AC   
       LDA    $EC     
       STA    $EB     
       JMP    LF1AC   
LF1A6: LDA    ($E7),Y 
       STA    GRP0    
       INC    $EB     
LF1AC: LDX    $BD     
       INX            
       LDA    CXP0FB  
       STA    $ED     
       LDA    CXP1FB  
       STA    $EE     
       LDA    CXBLPF  
       STA    $EF     
       LDA    CXPPMM  
       STA    $F0     
       INC    $F7     
       LDA    #$00    
       STA    $F5     
       CPY    $9A     
       BNE    LF1CB   
       LDA    #$02    
LF1CB: STA    WSYNC   
       STA    HMOVE   
       STA    ENABL   
       STA    CXCLR   
       INY            
       JMP    LF062   
LF1D7: LDA    #$02    
       STA    WSYNC   
       STA    VBLANK  
       LDX    #$30    
       STX    TIM64T  
       LDA    $DB     
       BEQ    LF1ED   
       LDX    $D9     
       JSR    LFB00   
       DEC    $DB     
LF1ED: LDA    SWCHB   
       LSR            
       BCS    LF1F9   
       LDA    $BF     
       ORA    #$81    
       STA    $BF     
LF1F9: LDA    $BF     
       BPL    LF273   
       LSR            
       BCC    LF20D   
       LDA    SWCHB   
       LSR            
       BCC    LF270   
       LDX    #$80    
       JSR    LF8AA   
       BEQ    LF270   
LF20D: LDA    $CC     
       BEQ    LF270   
       DEC    $CC     
       BNE    LF270   
       DEC    $CD     
       BPL    LF23B   
       LDA    $BF     
       AND    #$7F    
       STA    $BF     
       LDA    $91     
       CMP    #$0F    
       BEQ    LF22F   
       BIT    $BF     
       BVS    LF270   
       LDA    #$27    
       STA    $DE     
       BNE    LF270   
LF22F: LDA    #$FF    
       STA    $CC     
       ROR    $BF     
       LDA    #$02    
       STA    $CD     
       BNE    LF270   
LF23B: DEC    $CD     
       BMI    LF265   
       LDX    $D8     
       CPX    #$09    
       BEQ    LF247   
       INC    $D8     
LF247: INC    $CE     
       LDX    $CE     
       LDA    #$06    
       STA    $FA     
       CPX    #$04    
       BPL    LF25F   
       INC    $E2     
       INC    $E4     
       INC    $E5     
       CPX    #$02    
       BNE    LF25F   
       INC    $E3     
LF25F: LDA    #$00    
       STA    $91     
       BEQ    LF26D   
LF265: DEC    $C6     
       BPL    LF26D   
       INC    $C6     
       BEQ    LF270   
LF26D: JSR    LF8E8   
LF270: JMP    LF6F2   
LF273: LDX    $BD     
       BEQ    LF27A   
       JMP    LF3B3   
LF27A: STX    $C3     
       LDX    $D7     
       LDA    $9C,X   
       AND    #$F0    
       CMP    #$F0    
       BNE    LF290   
       LDA    $C1     
       BEQ    LF2AE
       LDA    $C2     
       STA    $C5     
       BNE    LF2AE   
LF290: STA    $C5     
       CMP    #$A0    
       BEQ    LF2A2   
       CMP    #$90    
       BEQ    LF2A2   
       CMP    #$60    
       BEQ    LF2A2   
       CMP    #$50    
       BNE    LF2A8   
LF2A2: STA    $C2     
       LDA    #$06    
       STA    $C1     
LF2A8: LDA    $C1     
       BEQ    LF2AE   
       DEC    $C1     
LF2AE: LDA    $CF,X   
       STA    $F8     
       LDA    $94,X   
       STA    $F9     
       LDA    $DA     
       CMP    #$08    
       BMI    LF2CC   
       LDX    #$01    
       STX    $90     
       SEC            
       SBC    #$08    
       ASL            
       ASL            
       ASL            
       ASL            
       TAX            
       LDY    #$08    
       BNE    LF2D3   
LF2CC: ASL            
       ASL            
       ADC    #$01    
       TAX            
       LDY    #$02    
LF2D3: LDA    LFE20,X 
       BMI    LF318   
       ASL            
       STA    $F7     
       AND    #$7E    
       SEC            
       SBC    $F9     
       BPL    LF2E4   
       EOR    #$FF    
LF2E4: CMP    #$02    
       BPL    LF353   
       LDA    $F7     
       BMI    LF2FA   
       LDA    LFE00,X 
       SEC            
       SBC    $F8     
       BPL    LF353   
       ADC    #$05    
       BMI    LF353   
       BPL    LF30A   
LF2FA: LDA    LFE00,X 
       STA    $F7     
       LDA    $F8     
       SEC            
       SBC    $F7     
       BPL    LF353   
       ADC    #$05    
       BMI    LF353   
LF30A: LDA    $90     
       BIT    $91     
       BEQ    LF361   
       LDA    LFE00,X 
       STA    $D5     
       JMP    LF3B3   
LF318: ASL            
       STA    $F7     
       LDA    LFE00,X 
       SEC            
       SBC    $F8     
       BPL    LF325   
       EOR    #$FF    
LF325: CMP    #$02    
       BPL    LF353   
       LDA    $F7     
       BMI    LF33A   
       LDA    $F9     
       SEC            
       SBC    $F7     
       BPL    LF353   
       ADC    #$05    
       BMI    LF353   
       BPL    LF347   
LF33A: AND    #$7E    
       STA    $F7     
       SEC            
       SBC    $F9     
       BPL    LF353   
       ADC    #$05    
       BMI    LF353   
LF347: LDA    $90     
       BIT    $91     
       BEQ    LF361   
       LDA    $F7     
       STA    $9A     
       BNE    LF3B3   
LF353: INX            
       INX            
       DEY            
       BEQ    LF3B3   
       TYA            
       LSR            
       BCS    LF35E   
       ASL    $90     
LF35E: JMP    LF2D3   
LF361: BIT    $BF     
       BVC    LF38B   
       LDA    #$08    
       STA    $DE     
       DEX            
       LDA    LFE00,X 
       STA    $D5     
       LDA    LFE20,X 
       ASL            
       AND    #$7E    
       STA    $9A     
       LDA    $91     
       BIT    $92     
       BPL    LF37F   
       ORA    $90     
LF37F: STA    $91     
       TXA            
       LSR            
       LSR            
       LSR            
       LSR            
       CLC            
       ADC    #$08    
       BNE    LF3AB   
LF38B: INX            
       LDA    LFE00,X 
       STA    $CF     
       LDA    LFE20,X 
       ASL            
       AND    #$7E    
       STA    $94     
       LDA    #$F9    
       STA    $AA     
       LDA    #$50    
       CLC            
       SBC    $94     
       STA    $80     
       LDA    #$FF    
       STA    $81     
       TXA            
       LSR            
       LSR            
LF3AB: STA    $DA     
       JSR    LF8F9   
       JMP    LF6F2   
LF3B3: ASL    $C3     
       LDA    $ED     
       ORA    CXP0FB  
       BPL    LF3BD   
       INC    $C3     
LF3BD: ASL    $C3     
       LDA    $E9     
       CMP    #$50    
       BNE    LF3C9   
       LDA    CXP1FB  
       BCS    LF3CB   
LF3C9: LDA    $EE     
LF3CB: BPL    LF3CF   
       INC    $C3     
LF3CF: ASL    $C3     
       LDA    CXP1FB  
       BPL    LF3D7   
       INC    $C3     
LF3D7: LDA    $BD     
       BEQ    LF3E7   
       ASL    $C3     
       LDA    $EF     
       ORA    CXBLPF  
       BPL    LF3E5   
       INC    $C3     
LF3E5: ASL    $C3     
LF3E7: LDA    $DA     
       CMP    #$08    
       BMI    LF403   
       BIT    $ED     
       BVS    LF400   
       BIT    $EE     
       BVS    LF400   
       BIT    CXP0FB  
       BVS    LF400   
       BIT    CXP1FB  
       BVS    LF400   
       JMP    LF4D5   
LF400: JMP    LF4BF   
LF403: LDX    $BD     
       BNE    LF432   
       LDX    #$07    
       JSR    LFAAB   
       BCS    LF400   
       LDY    $DA     
       BIT    $F0     
       BPL    LF421   
       CPY    #$03    
       BEQ    LF400   
       LDA    LFD0C,Y 
       BPL    LF400   
       LDX    #$01    
       BNE    LF430   
LF421: BIT    CXPPMM  
       BPL    LF45C   
       CPY    #$03    
       BEQ    LF400   
       LDA    LFD0C,Y 
       BMI    LF400   
       LDX    #$02    
LF430: BNE    LF4AA   
LF432: LDX    #$04    
       LDY    $DA     
       CPY    #$03    
       BNE    LF448   
       LDA    $D9     
       BPL    LF446   
       LDA    $D1     
       LSR            
       LSR            
       AND    #$07    
       STA    AUDV1   
LF446: LDX    #$05    
LF448: JSR    LFAAB   
       BCC    LF457   
       CPX    #$04    
       BPL    LF4BF   
       CPY    #$03    
       BEQ    LF4AA   
       BNE    LF4BF   
LF457: DEX            
       CPX    #$02    
       BNE    LF448   
LF45C: CPY    #$03    
       BEQ    LF4D5   
       BIT    $C9     
       BMI    LF4D5   
       LDX    #$01    
       LDY    $DA     
       LDA    LFD0C,Y 
       BPL    LF46F   
       LDX    #$02    
LF46F: JSR    LFB24   
       BCS    LF482   
       LDX    #$03    
       JSR    LFB24   
       BCS    LF482   
       LDX    #$04    
       JSR    LFB24   
       BCC    LF4D5   
LF482: LDA    #$F2    
       CMP    $9C,X   
       BEQ    LF490   
       LDY    $92     
       BEQ    LF490   
       LDY    $D8     
       STY    $E6     
LF490: STA    $9C,X   
       LDA    #$20    
       STA    $DE     
       ASL            
       STA    $B2,X   
       LDA    #$F6    
       SEC            
       SBC    $94,X   
       TAY            
       TXA            
       ASL            
       TAX            
       STY    $80,X   
       LDA    #$80    
       STA    $C9     
       BNE    LF4D5   
LF4AA: LDA    #$51    
       STA    $94,X   
       CLC            
       SED            
       LDA    $D8     
       ADC    $D8     
       STA    $E6     
       CLD            
       DEC    $92     
       LDA    #$2A    
       STA    $DE     
       BNE    LF4D5   
LF4BF: LDA    $BF     
       ORA    #$80    
       STA    $BF     
       LDA    #$19    
       STA    $DE     
       LDX    #$FF    
       STX    $CC     
       INX            
       STX    AUDV1   
       INX            
       STX    $CD     
       BNE    LF508   
LF4D5: SED            
       CLC            
       LDA    $C8     
       ADC    $E6     
       STA    $C8     
       LDA    $C7     
       ADC    #$00    
       STA    $C7     
       CLD            
       LDX    $BD     
       BNE    LF4FE   
       ASL    $BA     
       BCC    LF4EE   
       INC    $BA     
LF4EE: ASL    $BB     
       BCC    LF4F6   
       LDA    #$08    
       STA    $BB     
LF4F6: ASL    $BC     
       BCC    LF4FE   
       LDA    #$20    
       STA    $BC     
LF4FE: LDX    #$00    
       LDA    $BD     
       BNE    LF50D   
       BIT    $BF     
       BVS    LF50B   
LF508: JMP    LF6F2   
LF50B: LDX    #$06    
LF50D: STX    $F7     
       LDA    #$00    
       STA    $F1     
       STA    $F9     
       CPX    #$06    
       BCS    LF528   
       LDY    $DA     
       CPY    #$03    
       BEQ    LF528   
       TXA            
       CMP    #$03    
       BCC    LF526   
       SBC    #$03    
LF526: STA    $F9     
LF528: LDA    $9C,X   
       STA    $F8     
       LDY    $BD     
       BEQ    LF5A6   
       CMP    #$F2    
       BNE    LF539   
       ASL    $C3     
       JMP    LF583   
LF539: AND    #$07    
       TAY            
       LDX    LFE40,Y 
       LDA    $BA,X   
       LDX    $F7     
       AND    LFE48,Y 
       BEQ    LF552   
       CPX    $D9     
       BNE    LF557   
       LDA    #$02    
       BIT    $DD     
       BNE    LF557   
LF552: ASL    $C3     
       JMP    LF6D6   
LF557: CPX    #$07    
       BEQ    LF583   
       ASL    $C3     
       BCC    LF56C   
       LDA    $94,X   
       CMP    #$51    
       BEQ    LF583   
       JSR    LFB6E   
       INC    $F1     
       BNE    LF5A6   
LF56C: CPX    $D7     
       BNE    LF583   
       LDA    $9C,X   
       AND    #$07    
       STA    $9C,X   
       LDA    SWCHA   
       AND    #$F0    
       ORA    $9C,X   
       STA    $9C,X   
       STA    $F8     
       BNE    LF5A6   
LF583: LDA    $B2,X   
       BEQ    LF5A6   
       BMI    LF58D   
       DEC    $B2,X   
       BNE    LF5A6   
LF58D: CPX    #$06    
       BNE    LF595   
       INC    $F1     
       BNE    LF5A6   
LF595: LDA    $9C,X   
       CMP    #$F2    
       BNE    LF5A1   
       LDA    #$51    
       STA    $94,X   
       BNE    LF5A6   
LF5A1: JSR    LF650   
       STA    $F8     
LF5A6: ASL    $F8     
       LDX    $F7     
       BCS    LF5C2   
       LDA    $CF,X   
       CPX    #$06    
       BCC    LF5B4   
       SBC    #$04    
LF5B4: CMP    #$9C    
       BNE    LF5BC   
       INC    $F1     
       BNE    LF5BE   
LF5BC: INC    $CF,X   
LF5BE: ASL    $F8     
       BCS    LF5D2   
LF5C2: ASL    $F8     
       BCS    LF5D2   
       LDA    $CF,X   
       CMP    #$01    
       BNE    LF5D0   
       INC    $F1     
       BNE    LF5D2   
LF5D0: DEC    $CF,X   
LF5D2: ASL    $F8     
       BCS    LF604   
       LDA    #$4E    
       CPX    #$06    
       BEQ    LF5F2   
       BIT    $BF     
       BVS    LF5E2   
       LDA    #$4F    
LF5E2: LDY    $F9     
       BEQ    LF5EF   
       CPY    #$01    
       BNE    LF5EF   
       LDA    $CA     
       SEC            
       SBC    #$01    
LF5EF: CLC            
       ADC    $AA,X   
LF5F2: CMP    $94,X   
       BNE    LF5FA   
       INC    $F1     
       BNE    LF631   
LF5FA: INC    $94,X   
       TXA            
       ASL            
       TAX            
       DEC    $80,X   
       JMP    LF631   
LF604: ASL    $F8     
       BCS    LF631   
       CPX    #$06    
       BNE    LF610   
       LDA    #$00    
       BEQ    LF61C   
LF610: LDA    #$FF    
       LDY    $F9     
       CPY    #$02    
       BCC    LF61C   
       LDA    $CA     
       ADC    #$01    
LF61C: CMP    $94,X   
       BNE    LF62A   
       INC    $F1     
       LDA    $9C,X   
       ORA    #$10    
       STA    $9C,X   
       BNE    LF631   
LF62A: DEC    $94,X   
       TXA            
       ASL            
       TAX            
       INC    $80,X   
LF631: LDX    $F7     
       LDA    $F1     
       BEQ    LF647   
       CPX    #$06    
       BMI    LF64A   
       BNE    LF647   
       BIT    $BF     
       BVC    LF647   
       LDY    #$80    
       STY    $C9     
       STY    $A2     
LF647: JMP    LF6D6   
LF64A: LDY    #$01    
       STY    $B2,X   
       BNE    LF647   
LF650: LDY    #$01    
       CPX    #$06    
       BEQ    LF6D5   
       BMI    LF65C   
       STY    $B9     
       BPL    LF69D   
LF65C: LDA    $DA     
       CMP    #$03    
       BNE    LF673   
       LDY    #$18    
       TXA            
       ROR            
       BCC    LF66A   
       LDY    #$0E    
LF66A: STY    $B2,X   
       JSR    LFB6E   
       ORA    #$06    
       BNE    LF6D3   
LF673: LDY    $C4     
       LDA    LF000,Y 
       EOR    $DD     
       AND    #$30    
       ORA    #$08    
       STA    $B2,X   
       LDA    LF002,Y 
       EOR    $DD     
       INY            
       STY    $C4     
       AND    #$07    
       CMP    $E5     
       BMI    LF69D   
       EOR    LF003,Y 
       AND    #$07    
       TAY            
       LDA    $9C,X   
       AND    #$0F    
       ORA    LFBB7,Y 
       BNE    LF6D3   
LF69D: LDY    $CF,X   
       LDA    #$50    
       BIT    $BF     
       BVC    LF6A9   
       CPY    $CF     
       BVS    LF6AB   
LF6A9: CPY    $D5     
LF6AB: BCC    LF6B3   
       BNE    LF6B1   
       ADC    #$40    
LF6B1: ADC    #$40    
LF6B3: LDY    $94,X   
       BIT    $BF     
       BVC    LF6BD   
       CPY    $94     
       BVS    LF6BF   
LF6BD: CPY    $9A     
LF6BF: BMI    LF6C7   
       BNE    LF6C5   
       ADC    #$10    
LF6C5: ADC    #$10    
LF6C7: AND    #$F0    
       STA    $F7     
       LDA    $9C,X   
       AND    #$0F    
       ORA    $F7     
       STX    $F7     
LF6D3: STA    $9C,X   
LF6D5: RTS            

LF6D6: INX            
       LDA    $BD     
       BEQ    LF6F2   
       CPX    #$08    
       BEQ    LF6F2   
       JMP    LF50D   

START:
       SEI            
       CLD            
       LDX    #$FF    
       TXS            
       INX            
       JSR    LF8AA   
       LDA    #$80    
       STA    $BF     
       ASL            
       STA    $CC     
LF6F2: DEC    $DD     
       BNE    LF720   
       DEC    $DC     
       BNE    LF720   
       BIT    $BF     
       BVC    LF720   
       BMI    LF720   
       LDX    #$03    
       LDA    $98     
       CMP    #$51    
       BNE    LF70A   
       LDX    #$04    
LF70A: STX    $D9     
       LDA    $DA     
       CMP    #$03    
       BEQ    LF718   
       LDA    #$07    
       ORA    $9C,X   
       STA    $9C,X   
LF718: LDA    #$0C    
       STA    AUDV1   
       LDA    #$20    
       STA    $B9     
LF720: LDX    #$00    
       STX    $BD     
       STX    $DB     
       LDA    $DD     
       LSR            
       BCC    LF74B   
       LDX    #$03    
       STX    $BD     
       TAY            
       LDX    $D9     
       BMI    LF74B   
       LDA    #$08    
       STA    AUDC1   
       LDA    #$1F    
       STA    AUDF1   
       LDA    $94,X   
       CMP    #$51    
       BEQ    LF746   
       TYA            
       LSR            
       BCS    LF74B   
LF746: JSR    LFB00   
       INC    $DB     
LF74B: LDA    #$02    
LF74D: LDX    INTIM   
       BNE    LF74D   
       STX    WSYNC   
       STA    VSYNC   
       STX    PF1     
       STX    PF2     
       STX    ENABL   
       STA    WSYNC   
       STA    CXCLR   
       LDX    #$08    
       LDY    #$01    
LF764: LDA    $01C7,Y 
       DEX            
       DEX            
       DEX            
       DEX            
       ROR            
       AND    #$78    
       STA    $ED,X   
       LDA    $01C7,Y 
       ASL            
       ASL            
       ASL            
       AND    #$78    
       STA    $EF,X   
       LDA    #$FF    
       STA    $EE,X   
       STA    $F0,X   
       DEY            
       BPL    LF764   
       STA    WSYNC   
       STX    VSYNC   
       STX    $E6     
       LDA    #$32    
       STA    TIM64T  
       LDA    $DA     
       CMP    #$03    
       BEQ    LF7B0   
       BIT    $C9     
       BPL    LF7D2   
       LDA    INPT4   
       BMI    LF7B0   
       BIT    $BF     
       BMI    LF7D2   
       STX    $C9     
       LDA    $C5     
       ORA    #$07    
       STA    $A2     
       LDA    #$1E    
       STA    $B8     
       LDA    #$0F    
       STA    $DE     
LF7B0: LDA    $C5     
       ROR            
       ROR            
       ROR            
       ROR            
       AND    #$0F    
       TAX            
       LDA    LFB7A,X 
       TAY            
       AND    #$0F    
       CLC            
       ADC    $94     
       STA    $9A     
       TYA            
       ROR            
       ROR            
       ROR            
       ROR            
       AND    #$0F    
       CLC            
       ADC    $CF     
       STA    $D5     
       DEC    $D5     
LF7D2: LDX    #$00    
       STX    GRP0    
       STX    GRP1    
       STX    $EB     
       STX    $F5     
       LDA    #$01    
       JSR    LF880   
       LDX    #$01    
       LDA    #$09    
       STA    COLUP0  
       STA    COLUP1  
       JSR    LF880   
       LDY    $CA     
       LDX    $BD     
       BEQ    LF7F4   
       LDY    $CB     
LF7F4: STY    $E9     
       LDY    #$00    
       LDA    $94,X   
       BPL    LF7FE   
       LDY    $AA,X   
LF7FE: STY    $EB     
       STA    $EA     
       LDA    $AA,X   
       STA    $EC     
       TXA            
       ASL            
       TAX            
       LDA    $80,X   
       STA    $E7     
       LDA    $81,X   
       STA    $E8     
       LDX    #$04    
       LDY    $D5     
       INY            
       TYA            
       JSR    LF880   
       STA    WSYNC   
       STA    HMOVE   
       LDA    $BE     
       STA    $F7     
       LDX    $C6     
       LDA    LFBDF,X 
       STA    $F9     
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    VDELP0  
       STA    VDELP1  
       LDX    $DE     
       BEQ    LF84A   
       LDA    LFB88,X 
       STA    AUDC0   
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $E1     
       STX    $DF     
       LDA    #$00    
       STA    $DE     
       BEQ    LF852   
LF84A: LDX    $E0     
       BEQ    LF872   
       DEC    $E0     
       BNE    LF872   
LF852: INC    $DF     
       LDX    $DF     
       CPX    #$29    
       BNE    LF85E   
       DEC    $DF     
       DEC    $DF     
LF85E: LDA    LFB88,X 
       ASL            
       STA    AUDV0   
       BNE    LF868   
       STA    $E1     
LF868: LSR            
       LSR            
       LSR            
       LSR            
       STA    AUDF0   
       LDA    $E1     
       STA    $E0     
LF872: LDY    INTIM   
       BNE    LF872   
       STY    WSYNC   
       STY    VBLANK  
       STA    HMCLR   
       JMP    LF000   
LF880: TAY            
       AND    #$0F    
       STA    $F9     
       TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       CLC            
       ADC    $F9     
       CMP    #$10    
       BCC    LF895   
       SBC    #$0F    
       INY            
LF895: ASL            
       ASL            
       ASL            
       ASL            
       EOR    #$70    
       STA    WSYNC   
       STA    HMP0,X  
       STA    HMP0,X  
       INY            
LF8A2: DEY            
       BPL    LF8A2   
       STA    RESP0,X 
       STA    WSYNC   
       RTS            

LF8AA: LDY    #$00    
LF8AC: STY    VSYNC,X 
       INX            
       CPX    #$FB    
       BNE    LF8AC   
       STY    AUDV0   
       INY            
       STY    $E5     
       STY    CTRLPF  
       LDA    #$80    
       STA    $BA     
       STA    $BB     
       STA    $BC     
       LDA    #$03    
       STA    $C6     
       ASL            
       STA    $FA     
       ADC    #$F0    
       STA    $E3     
       LDA    SWCHB   
       BPL    LF8D4   
       INC    $E3     
LF8D4: ROL            
       ROL            
       ROL            
       AND    #$03    
       STA    $E5     
       STA    $CE     
       STA    $D8     
       INC    $D8     
       CLC            
       ADC    #$F4    
       STA    $E2     
       STA    $E4     
LF8E8: LDA    $CE     
       AND    #$01    
       CLC            
       ADC    #$08    
       STA    $DA     
       LDA    #$4C    
       STA    $9A     
       LDA    #$44    
       STA    $D5     
LF8F9: LDY    $DA     
       STY    $93     
       LDA    #$40    
       STA    $CC     
       ASL            
       STA    $D9     
       LDA    LFFF0,Y 
       STA    $BE     
       CMP    #$59    
       BCC    LF911   
       LDA    #$40    
       STA    $93     
LF911: LDX    #$00    
       STX    $CD     
       STX    $B9     
       CPY    #$08    
       BCC    LF91E   
       JMP    LFA2F   
LF91E: STX    $C0     
       STX    $B2     
       STX    $D7     
       STX    $C1     
       STX    $A2     
       STX    $92     
       INX            
       STX    $DE     
       STX    $D6     
       STX    $9B     
       LDA    #$F7    
       STA    $B1     
       LDA    $E3     
       STA    $A3     
       LDX    $FA     
       STX    $DC     
       CPX    #$03    
       BEQ    LF943   
       DEC    $FA     
LF943: LDA    #$53    
       STA    $8E     
       LDA    #$80    
       STA    $C9     
       LDA    #$C0    
       STA    $BF     
       LDA    #$F6    
       STA    $9C     
       LDA    #$06    
       STA    AUDF1   
       LDX    #$00    
LF959: LDA    LFBC9,Y 
       STA    $A5,X   
       LDA    $E4     
       STA    $9D,X   
       INX            
       TXA            
       STA    $B2,X   
       CPX    #$04    
       BNE    LF959   
       LDA    LFD0C,Y 
       STA    $CA     
       LDA    #$50    
       STA    $CB     
       LDA    #$43    
       STA    $A4     
       LDX    #$00    
       STX    $DD     
       LDA    $DA     
       ASL            
       ASL            
       TAY            
LF980: STX    $F7     
       LDA    LFBD3,Y 
       AND    #$F0    
       CLC            
       ROR            
       STA    $F8     
       ROR            
       ROR            
       SEC            
       ADC    $F8     
       STA    $D0,X   
       LDA    LFBD3,Y 
       AND    #$0F    
       STA    $F9     
       ASL            
       ASL            
       ADC    $F9     
       SEC            
       SBC    #$02    
       STA    $95,X   
       STA    $F9     
       LDA    #$F7    
       STA    $AB,X   
       TXA            
       ASL            
       TAX            
       LDA    #$FE    
       STA    $8F     
       STA    $83,X   
       LDA    $DA     
       ASL            
       ASL            
       ASL            
       ADC    $DA     
       ASL            
       SBC    $F9     
       CLC            
       ADC    #$5E    
       STA    $82,X   
       INY            
       LDX    $F7     
       INX            
       CPX    #$04    
       BNE    LF980   
       LDX    #$02    
       LDA    $CA     
       BMI    LF9D0   
       LDX    #$04    
LF9D0: AND    #$7F    
       STA    $CA     
       LDA    $80,X   
       CLC            
       ADC    #$09    
       STA    $80,X   
       TXA            
       LSR            
       TAX            
       LDY    #$00    
       STY    $B2,X   
       LDY    $DA     
       LDA    LFBBF,Y 
       STA    $A4,X   
       LDX    $DA     
       CPX    #$03    
       BNE    LFA2E   
       LDA    #$34    
       STA    $CB     
       LDA    #$07    
       STA    $C0     
       INX            
       LDY    #$00    
LF9FA: LDA    LFBF3,Y 
       STA    $A5,X   
       LDA    LFBF4,Y 
       STA    $B3,X   
       LDA    LFBF5,Y 
       STA    $D0,X   
       LDA    LFBF6,Y 
       STA    $95,X   
       LDA    LFBF7,Y 
       STA    $AB,X   
       LDA    LFBF8,Y 
       STA    $9D,X   
       TXA            
       ASL            
       TAX            
       LDA    LFBF9,Y 
       STA    $82,X   
       TXA            
       LSR            
       TAX            
       TYA            
       CLC            
       ADC    #$07    
       TAY            
       DEX            
       BPL    LF9FA   
       DEX            
       STX    AUDC1   
LFA2E: RTS            

LFA2F: LDA    #$80    
       STA    $BF     
       ASL            
       STA    AUDV1   
       STA    $C9     
       STA    $C0     
       TAX            
       LDA    $E2     
       STA    $A2     
       LDA    LFD0C,Y 
       STA    $CA     
       STA    $CB     
       LDA    LFBBF,Y 
       STA    COLUPF  
LFA4B: LDA    #$01    
       STA    $B2,X   
       LDA    $E2     
       STA    $9C,X   
       LDA    LFBC9,Y 
       STA    $A4,X   
       STA    $B0     
       LDA    #$FB    
       STA    $AA,X   
       INX            
       CPX    #$06    
       BNE    LFA4B   
       STX    $D7     
       LDX    #$00    
       LDA    $DA     
       SEC            
       SBC    #$08    
       ASL            
       STA    $F7     
       ASL            
       ADC    $F7     
       TAY            
LFA73: LDA    LFD00,Y 
       AND    #$F0    
       CLC            
       ROR            
       STA    $F7     
       ROR            
       ROR            
       SEC            
       ADC    $F7     
       STA    $CF,X   
       LDA    LFD00,Y 
       AND    #$0F    
       STA    $F7     
       ASL            
       ASL            
       ADC    $F7     
       STA    $94,X   
       STA    $F7     
       STX    $F8     
       TXA            
       ASL            
       TAX            
       LDA    #$4F    
       SEC            
       SBC    $F7     
       STA    $80,X   
       LDA    #$FE    
       STA    $81,X   
       LDX    $F8     
       INY            
       INX            
       CPX    #$06    
       BNE    LFA73   
       RTS            

LFAAB: LDA    $AA,X   
       CLC            
       ADC    #$01    
       CLC            
       ADC    $94     
       CMP    $94,X   
       BPL    LFAFE   
       LDA    $94     
       CLC            
       ADC    #$05    
       CMP    $94,X   
       BMI    LFAFE   
       LDA    #$00    
       STA    $F7     
       LDA    #$08    
       STA    $F8     
       LDA    $DA     
       CMP    #$03    
       BNE    LFAEA   
       CPX    #$03    
       BEQ    LFAEA   
       CPX    #$07    
       BEQ    LFAEA   
       TXA            
       LSR            
       BCC    LFAE4   
       LDA    #$F9    
       STA    $F7     
       LDA    #$0E    
       STA    $F8     
       BNE    LFAEA   
LFAE4: INC    $F7     
       LDA    #$06    
       STA    $F8     
LFAEA: LDA    $CF     
       CLC            
       ADC    $F7     
       SEC            
       SBC    $CF,X   
       BCS    LFAF8   
       EOR    #$FF    
       ADC    #$01    
LFAF8: CMP    $F8     
       BCS    LFAFE   
       SEC            
       RTS            

LFAFE: CLC            
       RTS            

LFB00: LDY    $CF,X   
       LDA    $D6     
       STY    $D6     
       STA    $CF,X   
       LDY    $94,X   
       LDA    $9B     
       STY    $9B     
       STA    $94,X   
       LDY    $A4,X   
       LDA    $B0     
       STY    $B0     
       STA    $A4,X   
       TXA            
       ASL            
       TAX            
       LDY    $80,X   
       LDA    $8E     
       STY    $8E     
       STA    $80,X   
       RTS            

LFB24: LDA    $9A     
       CLC            
       SBC    $94,X   
       BMI    LFB6C   
       STA    $F7     
       ADC    #$F7    
       BPL    LFB6C   
       LDA    $D5     
       SEC            
       ADC    #$00    
       SBC    $CF,X   
       BCC    LFB6C   
       CMP    #$08    
       BCS    LFB6C   
       TAY            
       LDA    LFFE8,Y 
       STA    $F8     
       LDY    $94,X   
       TXA            
       STX    $F9     
       ASL            
       TAX            
       TYA            
       SEC            
       ADC    $80,X   
       STA    $E7     
       LDA    $81,X   
       STA    $E8     
       LDX    $F9     
       LDY    $F7     
       LDA    #$01    
       STA    $F7     
LFB5D: LDA    ($E7),Y 
       AND    $F8     
       BNE    LFB6A   
       INY            
       DEC    $F7     
       BPL    LFB5D   
       BMI    LFB6C   
LFB6A: SEC            
       RTS            

LFB6C: CLC            
       RTS            

LFB6E: LDA    $F8     
       TAY            
       ASL            
       AND    #$A0    
       STA    $F8     
       TYA            
       ROR            
       AND    #$50    
LFB7A: ORA    $F8     
       STA    $F8     
       RTS            

LFB7F: .byte $85,$81,$93,$00,$15,$11,$03,$00,$47
LFB88: .byte $40,$AE,$24,$1C,$14,$0C,$04,$00,$AE,$04,$0C,$14,$1C,$24,$00,$3F
       .byte $07,$0E,$15,$1C,$23,$2A,$31,$39,$00,$C8,$34,$2C,$24,$1C,$14,$00
       .byte $68,$14,$1C,$24,$2C,$34,$00,$FA,$F9,$E1,$84,$C4,$B4,$A4,$00
LFBB7: .byte $50,$90,$D0,$70,$B0,$60,$A0,$E0
LFBBF: .byte $74,$14,$53,$05,$05,$14,$54,$C4,$55,$94
LFBC9: .byte $05,$74,$D4,$43,$45,$05,$14,$35,$D4,$34
LFBD3: .byte $C7,$3E,$91,$6D,$5B,$3E,$35,$AD,$72,$CE,$B9,$CC
LFBDF: .byte $00,$01,$05,$15,$76,$8E,$B1,$41,$C1,$98,$71,$C3,$71,$68,$A9,$74
       .byte $84,$78,$46,$B6
LFBF3: .byte $34
LFBF4: .byte $0E
LFBF5: .byte $46
LFBF6: .byte $37
LFBF7: .byte $FB
LFBF8: .byte $D5
LFBF9: .byte $5C,$34,$18,$60,$21,$F3,$75,$77,$05,$00,$4E,$26,$F7,$00,$C7,$34
       .byte $18,$3C,$21,$F3,$B5,$77,$34,$0E,$46,$13,$FB,$E5,$80
LFC16: .byte $FF,$00,$00,$00,$F7,$00,$FF,$00,$00,$FF,$FB,$00,$F8,$08,$F8,$00
       .byte $00,$00,$FF,$FF,$00,$00,$00,$00,$FF,$00,$00,$00,$70,$71,$71,$71
       .byte $71,$70,$71,$71,$01,$E1,$E0,$00,$07,$04,$04,$87,$80,$80,$80,$8F
       .byte $88,$88,$80,$88,$8F,$00,$00,$00,$0F,$09,$01,$09,$0D,$05,$04,$07
       .byte $C1,$41,$40,$70,$10,$10,$1C,$04,$04,$FC,$00,$E0,$20,$3C,$07,$00
       .byte $00,$00,$00,$00,$07,$3C,$20,$E0,$00,$FF,$00,$06,$07,$E0,$00,$00
       .byte $00,$E0,$07,$06,$00,$FF,$03,$02,$02,$02,$FE,$00,$00,$00,$07,$04
       .byte $FC,$FF,$00,$FF,$C0,$C3,$C2,$02,$7E,$F0,$10,$1F,$00,$00,$00,$7F
       .byte $F0,$10,$1F,$01,$01,$00,$00,$00,$00,$00,$00,$00,$01,$01,$1F,$10
       .byte $F0
LFCA7: .byte $FF,$00,$00,$00,$FE,$02,$FE,$00,$00,$FF,$FF,$00,$FF,$00,$FF,$00
       .byte $00,$00,$FF,$FF,$00,$00,$00,$00,$FE,$02,$03,$00,$3F,$20,$20,$00
       .byte $20,$20,$20,$3F,$00,$FF,$FF,$00,$00,$07,$04,$84,$84,$86,$80,$80
       .byte $9F,$90,$90,$90,$90,$1F,$00,$00,$7F,$40,$40,$40,$7E,$02,$02,$02
       .byte $C2,$42,$43,$70,$10,$10,$1C,$04,$04,$7C,$00,$E0,$20,$3C,$07,$00
       .byte $00,$00,$00,$00,$07,$3C,$20,$E0,$00
LFD00: .byte $11,$65,$6A,$0A,$B4,$FA,$15,$72,$19,$C9,$D4,$DE
LFD0C: .byte $42,$42,$1E,$1C,$2E,$96,$9E,$9E,$28,$26
LFD16: .byte $01,$01,$01,$01,$01,$00,$FF,$80,$80,$FF,$FF,$80,$80,$80,$80,$80
       .byte $80,$80,$FF,$FF,$80,$00,$80,$80,$FF,$00,$00,$00,$00,$7F,$40,$40
       .byte $40,$40,$40,$00,$40,$7F,$00,$00,$F7,$80,$80,$87,$84,$84,$84,$87
       .byte $80,$80,$80,$80,$FF,$00,$00,$00,$F0,$90,$10,$90,$D0,$5F,$40,$70
       .byte $10,$19,$09,$09,$09,$0F,$00,$00,$00,$00,$00,$00,$00,$00,$01,$FF
       .byte $80,$00,$80,$FF,$01,$00,$00,$00,$00,$1F,$10,$10,$11,$10,$10,$00
       .byte $10,$10,$11,$10,$10,$1F,$FF,$80,$00,$80,$F0,$10,$1E,$02,$03,$00
       .byte $00,$FF,$80,$81,$80,$FF,$00,$00,$00,$00,$00,$01,$01,$7F,$40,$7F
       .byte $00,$00,$00,$00,$0F,$08,$F8,$80,$00,$80,$F8,$08,$0F,$00,$00,$00
       .byte $00
LFDA7: .byte $FF,$80,$00,$80,$80,$80,$80,$80,$80,$FF,$01,$01,$01,$00,$FF,$80
       .byte $00,$80,$FF,$FF,$80,$00,$80,$80,$80,$80,$FF,$00,$7F,$40,$40,$00
       .byte $40,$40,$40,$4F,$48,$48,$78,$00,$00,$FF,$80,$80,$80,$07,$84,$84
       .byte $87,$80,$80,$80,$80,$FF,$00,$00,$FF,$80,$80,$80,$FC,$04,$04,$04
       .byte $04,$04,$06,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$FF
       .byte $80,$00,$80,$FF,$01,$00,$00,$00,$00
LFE00: .byte $91,$82,$6E,$3B,$41,$82,$22,$37,$8D,$82,$58,$17,$35,$76,$14,$23
       .byte $10,$16,$41,$84,$72,$4D,$72,$4D,$52,$4D,$52,$4D,$91,$84,$10,$16
LFE20: .byte $58,$05,$99,$C9,$5F,$1E,$D2,$82,$45,$06,$05,$46,$47,$12,$09,$52
       .byte $04,$44,$44,$04,$8D,$E3,$8D,$E3,$96,$E3,$96,$E3,$5E,$12,$1E,$52
LFE40: .byte $00,$01,$00,$02,$00,$01,$02,$02
LFE48: .byte $00,$80,$88,$80,$AA,$D0,$C0,$E0,$70,$A8,$F8,$88,$00,$18,$3C,$5A
       .byte $66,$3C,$42,$24,$18,$00,$38,$54,$6C,$39,$7E,$98,$24,$66,$00,$3F
       .byte $21,$3F,$42,$FE,$82,$82,$FE,$00,$18,$BD,$A5,$FF,$3C,$24,$24,$66
       .byte $00,$18,$BD,$FF,$42,$24,$18,$00,$00,$00,$00,$C6,$CA,$2A,$4A,$51
       .byte $21,$00,$00,$08,$10,$7C,$FE,$FE,$7C,$38,$00,$00,$F8,$F8,$F8,$F8
       .byte $00,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$00,$44,$AA
       .byte $44,$FE,$BA,$BA,$28,$6C,$00,$99,$DB,$7E,$34,$2C,$24,$66,$FF,$00
       .byte $24,$3C,$DB,$7E,$7E,$3C,$42,$C3,$00,$3C,$18,$7E,$DF,$FF,$7E,$3C
       .byte $00,$00,$00,$7B,$3A,$0A,$3E,$5E,$92,$1B,$00,$99,$DB,$FF,$AB,$FF
       .byte $00,$00,$00,$00,$24,$A5,$5A,$3C,$5A,$A5,$24,$00,$00,$00,$00,$07
       .byte $FD,$A7,$00,$00,$00,$00,$7C,$82,$FE,$44,$28,$10,$00,$00,$00,$72
       .byte $93,$ED,$5F,$5C,$7D,$56,$DD,$00
LFF00: .byte $3C,$66,$66,$66,$66,$66,$66,$3C,$7E,$18,$18,$18,$18,$38,$18,$08
       .byte $7E,$60,$60,$3C,$06,$06,$46,$3C,$3C,$46,$06,$06,$1C,$06,$46,$3C
       .byte $0C,$0C,$7E,$4C,$4C,$2C,$1C,$0C,$3C,$46,$06,$06,$3C,$60,$60,$7E
       .byte $3C,$66,$66,$66,$7C,$60,$62,$3C,$30,$30,$30,$18,$0C,$06,$42,$3E
       .byte $3C,$66,$66,$66,$3C,$66,$66,$3C,$3C,$46,$06,$3E,$66,$66,$66,$3C
       .byte $3C,$5A,$FF,$DB,$66,$3C,$00
LFF57: .byte $01,$0B,$0F,$19,$1B,$2F,$31,$41,$4D,$00,$01,$11,$13,$29,$2B,$3D
       .byte $41,$4D,$00,$01,$0D,$11,$1D,$21,$23,$4D,$00,$03,$05,$07,$09,$0B
       .byte $0D,$0F,$11,$13,$1B,$1D,$1F,$23,$25,$27,$2B,$2D,$2F,$31,$37,$39
       .byte $3B,$3D,$3F,$43,$45,$47,$00,$03,$05,$07,$09,$0B,$0D,$0F,$11,$13
       .byte $15,$17,$19,$1B,$1D,$1F,$21,$25,$29,$2B,$2F,$31,$33,$35,$37,$39
       .byte $3B,$3D,$3F,$41,$43,$45,$47,$49,$FF,$01,$0D,$1B,$1F,$21,$25,$29
       .byte $2D,$2F,$33,$41,$4D,$00,$01,$09,$0D,$17,$19,$21,$23,$2B,$2D,$4D
       .byte $FF,$01,$0C,$15,$1F,$21,$37,$4D,$FF,$01,$1B,$1D,$33,$35,$4D,$FF
       .byte $01,$09,$0B,$11,$13,$1B,$1D,$25,$29,$31,$33,$3B,$3D,$43,$45,$4D
       .byte $FF
LFFE8: .byte $C0,$60,$30,$18,$0C,$06,$03,$03
LFFF0: .byte $00,$0A,$13,$59,$66,$71,$79,$80,$1B,$37,$E2,$F6,$E2,$F6,$E2,$F6
