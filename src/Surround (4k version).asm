; Disassembly of roms/Surround (4k version).bin
; Disassembled Tue Oct  6 15:24:47 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Surround (4k version).bin
;

      processor 6502
VSYNC   =  $00
VBLANK  =  $01
WSYNC   =  $02
COLUP0  =  $06
COLUP1  =  $07
CTRLPF  =  $0A
PF0     =  $0D
PF1     =  $0E
PF2     =  $0F
RESP0   =  $10
RESP1   =  $11
AUDC0   =  $15
AUDF0   =  $17
AUDV0   =  $19
AUDV1   =  $1A
GRP0    =  $1B
GRP1    =  $1C
ENAM0   =  $1D
ENAM1   =  $1E
HMP0    =  $20
HMP1    =  $21
HMOVE   =  $2A
HMCLR   =  $2B
CXP0FB  =  $32
CXP1FB  =  $33
INPT4   =  $3C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM8T   =  $0295
TIM64T  =  $0296

       ORG $F000
LF000: LDA    INTIM   
       BNE    LF000   
       STA    WSYNC   
       STA    VBLANK  
       LDA    #$02    
       STA    CTRLPF  
       LDX    #$03    
LF00F: STA    WSYNC   
       STA    HMCLR   
       DEX            
       BNE    LF00F   
       LDX    #$05    
       LDA    #$00    
       STA    $E7     
       STA    $E8     
LF01E: STA    WSYNC   
       LDA    $E7     
       STA    PF1     
       LDA    $F6     
       AND    #$F0    
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    LF78F,Y 
       CLC            
       ADC    LF799,X 
       TAY            
       LDA    LF739,Y 
       AND    #$F0    
       STA    $E7     
       LDA    $E8     
       STA    PF1     
       LDA    $F6     
       AND    #$0F    
       TAY            
       LDA    LF78F,Y 
       CLC            
       ADC    LF799,X 
       STA    WSYNC   
       TAY            
       LDA    LF739,Y 
       AND    #$0F    
       ORA    $E7     
       STA    $E7     
       STA    PF1     
       LDA    $F7     
       AND    #$F0    
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    LF78F,Y 
       LDY    $E8     
       STY    PF1     
       CLC            
       ADC    LF799,X 
       TAY            
       LDA    LF739,Y 
       AND    #$F0    
       STA    $E8     
       LDA    $F7     
       AND    #$0F    
       STA    WSYNC   
       TAY            
       LDA    LF78F,Y 
       LDY    $E7     
       STY    PF1     
       CLC            
       ADC    LF799,X 
       TAY            
       LDA    LF739,Y 
       AND    #$0F    
       AND    $F8     
       AND    $F8     
       ORA    $E8     
       STA    $E8     
       STA    PF1     
       DEX            
       BMI    LF09E   
       JMP    LF01E   
LF09E: STA    WSYNC   
       LDA    #$00    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       STA    CTRLPF  
       LDY    #$38    
       LDA    #$3A    
       STA    $E5     
       LDX    #$FF    
LF0B2: CPY    #$3B    
       BCC    LF109   
       CPY    $E5     
       BCS    LF0DD   
LF0BA: STA    WSYNC   
       LDA    $80,X   
       ASL            
       ASL            
       ASL            
       ASL            
       STA    PF0     
       LDA    $94,X   
       STA    PF1     
       LDA    $A8,X   
       STA    PF2     
       LDA    $80,X   
       STA    PF0     
       LDA    $BC,X   
       STA    PF1     
       INY            
       LDA    $D0,X   
       STA    PF2     
       CPY    $E5     
       BCC    LF0BA   
LF0DD: INX            
       LDA    #$0F    
       CPX    $ED     
       BEQ    LF0E6   
       LDA    #$00    
LF0E6: STA    WSYNC   
       STA    GRP0    
       LDA    #$0F    
       CPX    $EE     
       BEQ    LF0F2   
       LDA    #$00    
LF0F2: STA    GRP1    
       LDA    #$00    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       TYA            
       CLC            
       ADC    #$09    
       STA    $E5     
LF102: INY            
       BEQ    LF11B   
       CPY    #$E8    
       BCC    LF0B2   
LF109: LDA    #$FF    
       STA    WSYNC   
       STA    PF0     
       STA    PF1     
       STA    PF2     
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       BEQ    LF102   
LF11B: LDA    #$00    
       STA    ENAM0   
       STA    ENAM1   
       RTS            

LF122: LDA    #$2A    
       STA    HMCLR   
       STA    WSYNC   
       STA    VBLANK  
       STA    VSYNC   
       STA    TIM8T   
       INC    $E4     
       INC    $FD     
LF133: LDA    INTIM   
       BNE    LF133   
       STA    WSYNC   
       STA    VSYNC   
       LDA    #$28    
       STA    TIM64T  
       RTS            

LF142: LDA    #$FF    
       STA    $E9     
       STA    $EB     
       LDA    #$06    
       BIT    SWCHB   
       BVS    LF151   
       LDA    #$03    
LF151: STA    $E6     
       LDA    #$00    
       STA    $E8     
       LDY    $EF     
       LDA    LF6E9,Y 
       STA    $E7     
       LDX    #$10    
       STX    $EA     
       LDX    $EF     
       LDY    $ED     
LF166: INC    $EB     
       DEY            
       BMI    LF172   
       LDA    LF711,X 
       AND    ($E7),Y 
       BEQ    LF166   
LF172: LDA    $E6     
       CMP    $EB     
       BCS    LF17A   
       STA    $EB     
LF17A: LDY    $ED     
       LDX    $EF     
LF17E: INC    $E9     
       INY            
       CPY    #$15    
       BCS    LF18C   
       LDA    LF711,X 
       AND    ($E7),Y 
       BEQ    LF17E   
LF18C: LDA    $E9     
       CMP    $EB     
       BCC    LF1A8   
       LDX    $EB     
       CPX    $E6     
       BCC    LF1A2   
       BIT    $FD     
       BVS    LF1A8   
       CMP    $E6     
       BCC    LF1A2   
       LDA    $E6     
LF1A2: STA    $EB     
       LDX    #$20    
       STX    $EA     
LF1A8: LDY    $ED     
       LDX    $EF     
       LDA    #$FF    
       STA    $E9     
LF1B0: INC    $E9     
       DEX            
       BMI    LF1C1   
       LDA    LF6E9,X 
       STA    $E7     
       LDA    ($E7),Y 
       AND    LF711,X 
       BEQ    LF1B0   
LF1C1: LDA    $E9     
       CMP    $EB     
       BCC    LF1DD   
       LDX    $EB     
       CPX    $E6     
       BCC    LF1D7   
       BIT    $FD     
       BVS    LF1DD   
       CMP    $E6     
       BCC    LF1D7   
       LDA    $E6     
LF1D7: STA    $EB     
       LDX    #$40    
       STX    $EA     
LF1DD: LDY    $ED     
       LDX    $EF     
       LDA    #$FF    
       STA    $E9     
LF1E5: INC    $E9     
       INX            
       CPX    #$29    
       BEQ    LF1F8   
       LDA    LF6E9,X 
       STA    $E7     
       LDA    ($E7),Y 
       AND    LF711,X 
       BEQ    LF1E5   
LF1F8: LDA    $E9     
       CMP    $EB     
       BCC    LF212   
       LDX    $EB     
       CPX    $E6     
       BCC    LF20E   
       BIT    $FD     
       BVS    LF212   
       CMP    $E6     
       BCC    LF20E   
       LDA    $E6     
LF20E: LDA    #$80    
       STA    $EA     
LF212: LDA    $EA     
       EOR    #$FF    
       AND    #$F0    
       STA    $EA     
       LDA    $FC     
       AND    #$0F    
       ORA    $EA     
       STA    $FC     
       JMP    LF234   
LF225: LDA    $F1     
       AND    #$10    
       CMP    #$10    
       BNE    LF230   
       JMP    LF142   
LF230: LDA    $F1     
       BPL    LF2A1   
LF234: LDA    $FC     
       EOR    #$FF    
       STA    $E8     
       AND    #$F0    
       STA    $E6     
       LDA    $F3     
       LSR            
       LSR            
       LSR            
       LSR            
       ORA    $F2     
       STA    $E7     
       LDX    #$02    
       BIT    SWCHB   
       BVS    LF261   
       AND    #$F0    
       CMP    #$10    
       BEQ    LF281   
       CMP    #$20    
       BEQ    LF281   
       CMP    #$40    
       BEQ    LF281   
       CMP    #$80    
       BEQ    LF281   
LF261: DEX            
LF262: BIT    SWCHB   
       BMI    LF297   
       LDA    $E8     
       AND    #$0F    
       STA    $E6     
       LDA    $E7     
       AND    #$0F    
       CMP    #$01    
       BEQ    LF281   
       CMP    #$02    
       BEQ    LF281   
       CMP    #$04    
       BEQ    LF281   
       CMP    #$08    
       BNE    LF297   
LF281: LDA    $E7     
       ASL            
       AND    $E6     
       AND    #$AA    
       EOR    $E8     
       STA    $E8     
       LDA    $E7     
       LSR            
       AND    $E6     
       AND    #$55    
       EOR    $E8     
       STA    $E8     
LF297: LDA    $E8     
       DEX            
       BNE    LF262   
       EOR    #$FF    
       JMP    LF2A4   
LF2A1: LDA    SWCHA   
LF2A4: LDX    #$00    
       STA    $E6     
LF2A8: LDY    #$00    
       STY    $E5     
       ASL            
       BCS    LF2B6   
       LDA    #$80    
       STA    $F2,X   
       JMP    LF36B   
LF2B6: ASL            
       BCS    LF2C0   
       LDA    #$40    
       STA    $F2,X   
       JMP    LF37E   
LF2C0: ASL            
       BCS    LF2CA   
       LDA    #$20    
       STA    $F2,X   
       JMP    LF2FD   
LF2CA: ASL            
       BCS    LF2D4   
       LDA    #$10    
       STA    $F2,X   
       JMP    LF313   
LF2D4: LDA    $F1     
       ASL            
       BCS    LF2DC   
       JMP    LF35D   
LF2DC: LDA    $F2,X   
       ASL            
       BCC    LF2E6   
       INC    $E5     
       JMP    LF36B   
LF2E6: ASL            
       BCC    LF2EE   
       INC    $E5     
       JMP    LF37E   
LF2EE: ASL            
       BCC    LF2F4   
       JMP    LF2FD   
LF2F4: ASL            
       BCC    LF2FA   
       JMP    LF313   
LF2FA: JMP    LF35D   
LF2FD: LDA    $ED,X   
       CLC            
       ADC    #$01    
       SBC    #$13    
       BMI    LF30C   
       LDA    #$00    
       STA    $ED,X   
       BEQ    LF35D   
LF30C: ADC    #$14    
       STA    $ED,X   
       JMP    LF35D   
LF313: LDA    $ED,X   
       SEC            
       SBC    #$01    
       BPL    LF31C   
       LDA    #$13    
LF31C: STA    $ED,X   
       JMP    LF35D   
LF321: LDA    $F1     
       ROR            
       BCC    LF35D   
       LDA    #$01    
       CMP    $E5     
       BNE    LF335   
       LDY    #$00    
       LDA    $F2,X   
       ASL            
       ASL            
       JMP    LF2EE   
LF335: LDA    $E6     
       CPX    #$01    
       BCC    LF33F   
       ASL            
       ASL            
       ASL            
       ASL            
LF33F: ASL            
       ASL            
       ASL            
       BCS    LF34F   
       LDA    #$20    
       ORA    $F2,X   
       AND    #$EF    
       STA    $F2,X   
       JMP    LF2FD   
LF34F: ASL            
       BCS    LF35D   
       LDA    #$10    
       ORA    $F2,X   
       AND    #$DF    
       STA    $F2,X   
       JMP    LF313   
LF35D: INX            
       CPX    #$02    
       BCS    LF38D   
       LDA    $E6     
       ASL            
       ASL            
       ASL            
       ASL            
       JMP    LF2A8   
LF36B: LDA    #$C0    
       STA    HMP0,X  
       INC    $EF,X   
       LDA    #$28    
       CMP    $EF,X   
       BNE    LF38A   
       LDA    #$00    
       STA    $EF,X   
       JMP    LF321   
LF37E: LDA    #$40    
       STA    HMP0,X  
       DEC    $EF,X   
       BPL    LF38A   
       LDA    #$27    
       STA    $EF,X   
LF38A: JMP    LF321   
LF38D: LDA    #$F0    
       ORA    $EC     
       STA    $EC     
       RTS            


START:
       SEI            
       CLD            
       LDA    #$10    
       STA    $F8     
       JMP    LF475   
LF39D: JSR    LF122   
       LDA    $F8     
       BMI    LF3A7   
       JMP    LF431   
LF3A7: LDA    SWCHA   
       AND    #$F0    
       CMP    #$F0    
       BEQ    LF3BA   
       STA    $E5     
       LDA    $FC     
       AND    #$0F    
       ORA    $E5     
       STA    $FC     
LF3BA: LDA    SWCHA   
       AND    #$0F    
       CMP    #$0F    
       BEQ    LF3CD   
       STA    $E5     
       LDA    $FC     
       AND    #$F0    
       ORA    $E5     
       STA    $FC     
LF3CD: LDA    $F1     
       AND    #$20    
       BEQ    LF3D6   
       JSR    LF614   
LF3D6: BIT    $F1     
       BVC    LF3EC   
       LDA    $E4     
       BNE    LF3EC   
       LDA    $EC     
       AND    #$0F    
       CMP    #$04    
       BCC    LF3EC   
       DEC    $EC     
       DEC    $EC     
       DEC    $EC     
LF3EC: LDA    $EC     
       AND    #$F0    
       CMP    #$20    
       BNE    LF3FE   
       BIT    $FB     
       BMI    LF3FE   
       BVS    LF3FE   
       LDA    #$00    
       STA    AUDV0   
LF3FE: LDA    $EC     
       AND    #$F0    
       CMP    #$00    
       BNE    LF431   
       JSR    LF441   
       JSR    LF225   
       STA    WSYNC   
       STA    HMOVE   
       LDA    $EC     
       AND    #$0F    
       STA    $EC     
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    $EC     
       STA    $EC     
       LDA    #$08    
       BIT    $F1     
       BMI    LF426   
       LDA    #$00    
LF426: STA    AUDV0   
       LDA    #$0C    
       STA    AUDC0   
       LDA    $EC     
       ASL            
       STA    AUDF0   
LF431: JSR    LF542   
LF434: JSR    LF000   
       LDA    $EC     
       SEC            
       SBC    #$10    
       STA    $EC     
       JMP    LF39D   
LF441: LDX    #$00    
       STX    $E6     
LF445: LDY    $EF,X   
       LDA    LF6E9,Y 
       STA    $E5     
       LDA    LF711,Y 
       STA    $E7     
       LDY    $ED,X   
       LDA    $F1     
       LSR            
       LSR            
       LSR            
       BCC    LF469   
       LDA    INPT4,X 
       BMI    LF469   
       LDA    $E7     
       EOR    #$FF    
       AND    ($E5),Y 
       STA    ($E5),Y 
       JMP    LF46F   
LF469: LDA    $E7     
       ORA    ($E5),Y 
       STA    ($E5),Y 
LF46F: INX            
       CPX    #$02    
       BCC    LF445   
       RTS            

LF475: LDX    #$FF    
       LDA    #$00    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       TXS            
       JSR    LF000   
       JSR    LF122   
       LDA    #$00    
       LDX    #$50    
LF48A: STA    $93,X   
       DEX            
       BNE    LF48A   
       LDA    $F1     
       AND    #$08    
       BNE    LF4C0   
       LDX    #$14    
       LDA    #$01    
LF499: STA    $7F,X   
       DEX            
       BNE    LF499   
       LDX    #$14    
       LDA    #$80    
LF4A2: STA    $CF,X   
       DEX            
       BNE    LF4A2   
       LDA    #$FF    
       STA    $80     
       STA    $93     
       STA    $94     
       STA    $A7     
       STA    $A8     
       STA    $BB     
       STA    $BC     
       STA    $CF     
       STA    $D0     
       STA    $E3     
       JMP    LF4CB   
LF4C0: LDA    #$00    
       LDX    #$14    
LF4C4: STA    $7F,X   
       STA    $CF,X   
       DEX            
       BNE    LF4C4   
LF4CB: LDA    #$00    
       LDX    #$2A    
LF4CF: STA    $43,X   
       DEX            
       BNE    LF4CF   
       LDA    #$0A    
       STA    $ED     
       STA    $EE     
       STA    $EF     
       LDA    #$1E    
       STA    $F0     
       STA    $FB     
       STA    WSYNC   
       LDY    #$05    
LF4E6: DEY            
       BPL    LF4E6   
       STA    RESP0   
       STA    WSYNC   
       LDY    #$0A    
LF4EF: DEY            
       BPL    LF4EF   
       STA    RESP1   
       LDA    #$30    
       STA    HMP0    
       LDA    #$E0    
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$FF    
       STA    $FC     
       STA    $EC     
       STA    AUDF0   
       LDA    $F9     
       AND    #$07    
       ASL            
       ASL            
       TAY            
       LDX    #$00    
       LDA    SWCHB   
       AND    #$08    
       BNE    LF51A   
       LDY    #$20    
LF51A: LDA    LF76B,Y 
       STA    COLUP0,X
       INY            
       INX            
       CPX    #$04    
       BCC    LF51A   
       LDA    #$00    
       STA    AUDV0   
       STA    AUDV1   
       STA    $E4     
       LDA    $F1     
       AND    #$10    
       BNE    LF537   
       LDA    #$80    
       STA    $F2     
LF537: LDA    #$40    
       STA    $F3     
       LDA    #$0C    
       STA    AUDC0   
       JMP    LF434   
LF542: LDA    $F8     
       CMP    #$10    
       BNE    LF54E   
       LDA    #$FF    
       STA    $F9     
       BNE    LF59A   
LF54E: LDA    SWCHB   
       ROR            
       BCS    LF56F   
       LDA    #$FF    
       STA    $F8     
       LDA    #$00    
       STA    $F6     
       STA    $F7     
       STA    $F5     
       STA    $F4     
       LDA    $E4     
       AND    #$01    
       STA    $E4     
       LDA    #$0F    
       STA    $FA     
       JMP    LF475   
LF56F: LDA    $E4     
       AND    #$3F    
       BNE    LF577   
       STA    $F5     
LF577: LDA    $E4     
       AND    #$FF    
       BNE    LF585   
       INC    $F4     
       BNE    LF585   
       LDA    #$00    
       STA    $F8     
LF585: LDA    SWCHB   
       AND    #$02    
       BEQ    LF590   
       STA    $F5     
       BNE    LF5D0   
LF590: BIT    $F5     
       BMI    LF5D0   
       LDA    #$FF    
       STA    $F5     
       INC    $F9     
LF59A: LDX    #$00    
       STX    $F6     
       LDX    $F9     
LF5A0: SED            
       LDA    $F6     
       CLC            
       ADC    #$01    
       STA    $F6     
       CLD            
       DEX            
       BNE    LF5A0   
       LDX    #$00    
       STX    $F7     
       STX    $FA     
       STX    $F8     
       STX    $E4     
       LDA    $F9     
       CMP    #$0E    
       BCC    LF5C0   
       STX    $F6     
       STX    $F9     
LF5C0: SED            
       CLC            
       LDA    $F6     
       ADC    #$01    
       STA    $F6     
       CLD            
       LDX    $F9     
       LDA    LF79F,X 
       STA    $F1     
LF5D0: LDA    $F9     
       AND    #$07    
       ASL            
       ASL            
       TAY            
       LDX    #$00    
       LDA    $F8     
       AND    #$F0    
       EOR    #$FF    
       AND    $F4     
       STA    $E8     
       LDA    #$FF    
       STA    $E7     
       LDA    SWCHB   
       AND    #$08    
       BNE    LF5F4   
       LDA    #$0F    
       STA    $E7     
       LDY    #$20    
LF5F4: LDA    LF76B,Y 
       EOR    $E8     
       AND    $E7     
       BIT    $F8     
       BVS    LF605   
       STA    COLUP0,X
       LDA    #$00    
       STA    AUDV0   
LF605: INY            
       INX            
       CPX    #$04    
       BCC    LF5F4   
       LDA    #$00    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       RTS            

LF614: LDA    CXP0FB  
       BPL    LF631   
       BIT    $FB     
       BVS    LF65A   
       LDA    #$7F    
       STA    $FB     
       SED            
       LDA    $F7     
       CLC            
       ADC    #$01    
       CLD            
       STA    $F7     
       CMP    #$10    
       BNE    LF631   
       LDA    #$0F    
       STA    $F8     
LF631: LDA    CXP1FB  
       BPL    LF650   
       BIT    $FB     
       BMI    LF65A   
       LDA    $FB     
       ORA    #$80    
       STA    $FB     
       SED            
       LDA    $F6     
       CLC            
       ADC    #$01    
       CLD            
       STA    $F6     
       CMP    #$10    
       BNE    LF650   
       LDA    #$0F    
       STA    $F8     
LF650: LDA    $FB     
       AND    #$C0    
       BEQ    LF659   
       JMP    LF6E1   
LF659: RTS            

LF65A: LDA    $E4     
       AND    #$03    
       BNE    LF66A   
       LDA    #$01    
       STA    AUDC0   
       LDA    #$06    
       STA    AUDF0   
       BNE    LF672   
LF66A: LDA    $FB     
       STA    AUDV0   
       LDA    #$0E    
       STA    AUDF0   
LF672: LDA    $E4     
       AND    #$0F    
       BNE    LF6E1   
       DEC    $FB     
       LDA    $FB     
       AND    #$0F    
       BNE    LF683   
       JMP    LF475   
LF683: LDA    $F9     
       AND    #$07    
       ASL            
       ASL            
       TAY            
       LDA    SWCHB   
       AND    #$08    
       BNE    LF693   
       LDY    #$20    
LF693: BIT    $FB     
       BPL    LF6BC   
       LDA    $FB     
       AND    #$20    
       BNE    LF6AD   
       LDA    $FB     
       ORA    #$20    
       STA    $FB     
       INY            
       LDA    LF76B,Y 
       DEY            
       STA    COLUP1  
       JMP    LF6BC   
LF6AD: LDA    $FB     
       EOR    #$20    
       STA    $FB     
       INY            
       INY            
       LDA    LF76B,Y 
       DEY            
       DEY            
       STA    COLUP1  
LF6BC: BIT    $FB     
       BVC    LF6E1   
       LDA    $FB     
       AND    #$10    
       BNE    LF6D4   
       LDA    $FB     
       ORA    #$10    
       STA    $FB     
       LDA    LF76B,Y 
       STA    COLUP0  
       JMP    LF6E1   
LF6D4: LDA    $FB     
       EOR    #$10    
       STA    $FB     
       INY            
       INY            
       LDA    LF76B,Y 
       STA    COLUP0  
LF6E1: LDA    $EC     
       CLC            
       ADC    #$10    
       STA    $EC     
       RTS            

LF6E9: .byte $80,$80,$80,$80,$94,$94,$94,$94,$94,$94,$94,$94,$A8,$A8,$A8,$A8
       .byte $A8,$A8,$A8,$A8,$80,$80,$80,$80,$BC,$BC,$BC,$BC,$BC,$BC,$BC,$BC
       .byte $D0,$D0,$D0,$D0,$D0,$D0,$D0,$D0
LF711: .byte $01,$02,$04,$08,$80,$40,$20,$10,$08,$04,$02,$01,$01,$02,$04,$08
       .byte $10,$20,$40,$80,$10,$20,$40,$80,$80,$40,$20,$10,$08,$04,$02,$01
       .byte $01,$02,$04,$08,$10,$20,$40,$80
LF739: .byte $0E,$0A,$0A,$0A,$0E,$22,$22,$22,$22,$22,$EE,$22,$EE,$88,$EE,$EE
       .byte $22,$66,$22,$EE,$AA,$AA,$EE,$22,$22,$EE,$88,$EE,$22,$EE,$EE,$88
       .byte $EE,$AA,$EE,$EE,$22,$22,$22,$22,$EE,$AA,$EE,$AA,$EE,$EE,$AA,$EE
       .byte $22,$EE
LF76B: .byte $C8,$84,$3A,$44,$46,$EA,$5A,$88,$2A,$46,$B4,$E8,$3A,$86,$E8,$46
       .byte $2A,$56,$E8,$A4,$36,$2C,$C8,$A2,$C8,$2A,$83,$46,$86,$2C,$48,$E8
       .byte $00,$0E,$04,$08
LF78F: .byte $00,$05,$0A,$0F,$14,$19,$1E,$23,$28,$2D
LF799: .byte $04,$04,$03,$02,$01,$00
LF79F: .byte $A0,$B0,$E0,$F0,$A1,$E1,$E5,$A8,$E8,$A9,$E9,$ED,$0C,$0D,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$94,$F3,$94,$F3,$94
       .byte $F3,$AD,$84,$02,$D0,$FB,$85,$02,$85,$01,$A9,$02,$85,$0A,$A2,$03
       .byte $85,$02,$85,$2B,$CA,$D0,$F9,$A2,$05,$A9,$00,$85,$E7,$85,$E8,$85
       .byte $02,$A5,$E7,$85,$0E,$A5,$F6,$29,$F0,$4A,$4A,$4A,$4A,$A8,$B9,$8F
       .byte $F7,$18,$7D,$99,$F7,$A8,$B9,$39,$F7,$29,$F0,$85,$E7,$A5,$E8,$85
       .byte $0E,$A5,$F6,$29,$0F,$A8,$B9,$8F,$F7,$18,$7D,$99,$F7,$85,$02,$A8
       .byte $B9,$39,$F7,$29,$0F,$05,$E7,$85,$E7,$85,$0E,$A5,$F7,$29,$F0,$4A
       .byte $4A,$4A,$4A,$A8,$B9,$8F,$F7,$A4,$E8,$84,$0E,$18,$7D,$99,$F7,$A8
       .byte $B9,$39,$F7,$29,$F0,$85,$E8,$A5,$F7,$29,$0F,$85,$02,$A8,$B9,$8F
       .byte $F7,$A4,$E7,$84,$0E,$18,$7D,$99,$F7,$A8,$B9,$39,$F7,$29,$0F,$25
       .byte $F8,$25,$F8,$05,$E8,$85,$E8,$85,$0E,$CA,$30,$03,$4C,$1E,$F0,$85
       .byte $02,$A9,$00,$85,$0D,$85,$0E,$85,$0F,$85,$0A,$A0,$38,$A9,$3A,$85
       .byte $E5,$A2,$FF,$C0,$3B,$90,$53,$C4,$E5,$B0,$23,$85,$02,$B5,$80,$0A
       .byte $0A,$0A,$0A,$85,$0D,$B5,$94,$85,$0E,$B5,$A8,$85,$0F,$B5,$80,$85
       .byte $0D,$B5,$BC,$85,$0E,$C8,$B5,$D0,$85,$0F,$C4,$E5,$90,$DD,$E8,$A9
       .byte $0F,$E4,$ED,$F0,$02,$A9,$00,$85,$02,$85,$1B,$A9,$0F,$E4,$EE,$F0
       .byte $02,$A9,$00,$85,$1C,$A9,$00,$85,$0D,$85,$0E,$85,$0F,$98,$18,$69
       .byte $09,$85,$E5,$C8,$F0,$16,$C0,$E8,$90,$A9,$A9,$FF,$85,$02,$85,$0D
       .byte $85,$0E,$85,$0F,$A9,$00,$85,$1B,$85,$1C,$F0,$E7,$A9,$00,$85,$1D
       .byte $85,$1E,$60,$A9,$2A,$85,$2B,$85,$02,$85,$01,$85,$00,$8D,$95,$02
       .byte $E6,$E4,$E6,$FD,$AD,$84,$02,$D0,$FB,$85,$02,$85,$00,$A9,$28,$8D
       .byte $96,$02,$60,$A9,$FF,$85,$E9,$85,$EB,$A9,$06,$2C,$82,$02,$70,$02
       .byte $A9,$03,$85,$E6,$A9,$00,$85,$E8,$A4,$EF,$B9,$E9,$F6,$85,$E7,$A2
       .byte $10,$86,$EA,$A6,$EF,$A4,$ED,$E6,$EB,$88,$30,$07,$BD,$11,$F7,$31
       .byte $E7,$F0,$F4,$A5,$E6,$C5,$EB,$B0,$02,$85,$EB,$A4,$ED,$A6,$EF,$E6
       .byte $E9,$C8,$C0,$15,$B0,$07,$BD,$11,$F7,$31,$E7,$F0,$F2,$A5,$E9,$C5
       .byte $EB,$90,$16,$A6,$EB,$E4,$E6,$90,$0A,$24,$FD,$70,$0C,$C5,$E6,$90
       .byte $02,$A5,$E6,$85,$EB,$A2,$20,$86,$EA,$A4,$ED,$A6,$EF,$A9,$FF,$85
       .byte $E9,$E6,$E9,$CA,$30,$0C,$BD,$E9,$F6,$85,$E7,$B1,$E7,$3D,$11,$F7
       .byte $F0,$EF,$A5,$E9,$C5,$EB,$90,$16,$A6,$EB,$E4,$E6,$90,$0A,$24,$FD
       .byte $70,$0C,$C5,$E6,$90,$02,$A5,$E6,$85,$EB,$A2,$40,$86,$EA,$A4,$ED
       .byte $A6,$EF,$A9,$FF,$85,$E9,$E6,$E9,$E8,$E0,$29,$F0,$0C,$BD,$E9,$F6
       .byte $85,$E7,$B1,$E7,$3D,$11,$F7,$F0,$ED,$A5,$E9,$C5,$EB,$90,$14,$A6
       .byte $EB,$E4,$E6,$90,$0A,$24,$FD,$70,$0A,$C5,$E6,$90,$02,$A5,$E6,$A9
       .byte $80,$85,$EA,$A5,$EA,$49,$FF,$29,$F0,$85,$EA,$A5,$FC,$29,$0F,$05
       .byte $EA,$85,$FC,$4C,$34,$F2,$A5,$F1,$29,$10,$C9,$10,$D0,$03,$4C,$42
       .byte $F1,$A5,$F1,$10,$6D,$A5,$FC,$49,$FF,$85,$E8,$29,$F0,$85,$E6,$A5
       .byte $F3,$4A,$4A,$4A,$4A,$05,$F2,$85,$E7,$A2,$02,$2C,$82,$02,$70,$12
       .byte $29,$F0,$C9,$10,$F0,$2C,$C9,$20,$F0,$28,$C9,$40,$F0,$24,$C9,$80
       .byte $F0,$20,$CA,$2C,$82,$02,$30,$30,$A5,$E8,$29,$0F,$85,$E6,$A5,$E7
       .byte $29,$0F,$C9,$01,$F0,$0C,$C9,$02,$F0,$08,$C9,$04,$F0,$04,$C9,$08
       .byte $D0,$16,$A5,$E7,$0A,$25,$E6,$29,$AA,$45,$E8,$85,$E8,$A5,$E7,$4A
       .byte $25,$E6,$29,$55,$45,$E8,$85,$E8,$A5,$E8,$CA,$D0,$C6,$49,$FF,$4C
       .byte $A4,$F2,$AD,$80,$02,$A2,$00,$85,$E6,$A0,$00,$84,$E5,$0A,$B0,$07
       .byte $A9,$80,$95,$F2,$4C,$6B,$F3,$0A,$B0,$07,$A9,$40,$95,$F2,$4C,$7E
       .byte $F3,$0A,$B0,$07,$A9,$20,$95,$F2,$4C,$FD,$F2,$0A,$B0,$07,$A9,$10
       .byte $95,$F2,$4C,$13,$F3,$A5,$F1,$0A,$B0,$03,$4C,$5D,$F3,$B5,$F2,$0A
       .byte $90,$05,$E6,$E5,$4C,$6B,$F3,$0A,$90,$05,$E6,$E5,$4C,$7E,$F3,$0A
       .byte $90,$03,$4C,$FD,$F2,$0A,$90,$03,$4C,$13,$F3,$4C,$5D,$F3,$B5,$ED
       .byte $18,$69,$01,$E9,$13,$30,$06,$A9,$00,$95,$ED,$F0,$51,$69,$14,$95
       .byte $ED,$4C,$5D,$F3,$B5,$ED,$38,$E9,$01,$10,$02,$A9,$13,$95,$ED,$4C
       .byte $5D,$F3,$A5,$F1,$6A,$90,$37,$A9,$01,$C5,$E5,$D0,$09,$A0,$00,$B5
       .byte $F2,$0A,$0A,$4C,$EE,$F2,$A5,$E6,$E0,$01,$90,$04,$0A,$0A,$0A,$0A
       .byte $0A,$0A,$0A,$B0,$0B,$A9,$20,$15,$F2,$29,$EF,$95,$F2,$4C,$FD,$F2
       .byte $0A,$B0,$0B,$A9,$10,$15,$F2,$29,$DF,$95,$F2,$4C,$13,$F3,$E8,$E0
       .byte $02,$B0,$2B,$A5,$E6,$0A,$0A,$0A,$0A,$4C,$A8,$F2,$A9,$C0,$95,$20
       .byte $F6,$EF,$A9,$28,$D5,$EF,$D0,$13,$A9,$00,$95,$EF,$4C,$21,$F3,$A9
       .byte $40,$95,$20,$D6,$EF,$10,$04,$A9,$27,$95,$EF,$4C,$21,$F3,$A9,$F0
       .byte $05,$EC,$85,$EC,$60,$78,$D8,$A9,$10,$85,$F8,$4C,$75,$F4,$20,$22
       .byte $F1,$A5,$F8,$30,$03,$4C,$31,$F4,$AD,$80,$02,$29,$F0,$C9,$F0,$F0
       .byte $0A,$85,$E5,$A5,$FC,$29,$0F,$05,$E5,$85,$FC,$AD,$80,$02,$29,$0F
       .byte $C9,$0F,$F0,$0A,$85,$E5,$A5,$FC,$29,$F0,$05,$E5,$85,$FC,$A5,$F1
       .byte $29,$20,$F0,$03,$20,$14,$F6,$24,$F1,$50,$12,$A5,$E4,$D0,$0E,$A5
       .byte $EC,$29,$0F,$C9,$04,$90,$06,$C6,$EC,$C6,$EC,$C6,$EC,$A5,$EC,$29
       .byte $F0,$C9,$20,$D0,$0A,$24,$FB,$30,$06,$70,$04,$A9,$00,$85,$19,$A5
       .byte $EC,$29,$F0,$C9,$00,$D0,$2B,$20,$41,$F4,$20,$25,$F2,$85,$02,$85
       .byte $2A,$A5,$EC,$29,$0F,$85,$EC,$0A,$0A,$0A,$0A,$05,$EC,$85,$EC,$A9
       .byte $08,$24,$F1,$30,$02,$A9,$00,$85,$19,$A9,$0C,$85,$15,$A5,$EC,$0A
       .byte $85,$17,$20,$42,$F5,$20,$00,$F0,$A5,$EC,$38,$E9,$10,$85,$EC,$4C
       .byte $9D,$F3,$A2,$00,$86,$E6,$B4,$EF,$B9,$E9,$F6,$85,$E5,$B9,$11,$F7
       .byte $85,$E7,$B4,$ED,$A5,$F1,$4A,$4A,$4A,$90,$0F,$B5,$3C,$30,$0B,$A5
       .byte $E7,$49,$FF,$31,$E5,$91,$E5,$4C,$6F,$F4,$A5,$E7,$11,$E5,$91,$E5
       .byte $E8,$E0,$02,$90,$D1,$60,$A2,$FF,$A9,$00,$85,$0D,$85,$0E,$85,$0F
       .byte $9A,$20,$00,$F0,$20,$22,$F1,$A9,$00,$A2,$50,$95,$93,$CA,$D0,$FB
       .byte $A5,$F1,$29,$08,$D0,$2B,$A2,$14,$A9,$01,$95,$7F,$CA,$D0,$FB,$A2
       .byte $14,$A9,$80,$95,$CF,$CA,$D0,$FB,$A9,$FF,$85,$80,$85,$93,$85,$94
       .byte $85,$A7,$85,$A8,$85,$BB,$85,$BC,$85,$CF,$85,$D0,$85,$E3,$4C,$CB
       .byte $F4,$A9,$00,$A2,$14,$95,$7F,$95,$CF,$CA,$D0,$F9,$A9,$00,$A2,$2A
       .byte $95,$43,$CA,$D0,$FB,$A9,$0A,$85,$ED,$85,$EE,$85,$EF,$A9,$1E,$85
       .byte $F0,$85,$FB,$85,$02,$A0,$05,$88,$10,$FD,$85,$10,$85,$02,$A0,$0A
       .byte $88,$10,$FD,$85,$11,$A9,$30,$85,$20,$A9,$E0,$85,$21,$85,$02,$85
       .byte $2A,$A9,$FF,$85,$FC,$85,$EC,$85,$17,$A5,$F9,$29,$07,$0A,$0A,$A8
       .byte $A2,$00,$AD,$82,$02,$29,$08,$D0,$02,$A0,$20,$B9,$6B,$F7,$95,$06
       .byte $C8,$E8,$E0,$04,$90,$F5,$A9,$00,$85,$19,$85,$1A,$85,$E4,$A5,$F1
       .byte $29,$10,$D0,$04,$A9,$80,$85,$F2,$A9,$40,$85,$F3,$A9,$0C,$85,$15
       .byte $4C,$34,$F4,$A5,$F8,$C9,$10,$D0,$06,$A9,$FF,$85,$F9,$D0,$4C,$AD
       .byte $82,$02,$6A,$B0,$1B,$A9,$FF,$85,$F8,$A9,$00,$85,$F6,$85,$F7,$85
       .byte $F5,$85,$F4,$A5,$E4,$29,$01,$85,$E4,$A9,$0F,$85,$FA,$4C,$75,$F4
       .byte $A5,$E4,$29,$3F,$D0,$02,$85,$F5,$A5,$E4,$29,$FF,$D0,$08,$E6,$F4
       .byte $D0,$04,$A9,$00,$85,$F8,$AD,$82,$02,$29,$02,$F0,$04,$85,$F5,$D0
       .byte $40,$24,$F5,$30,$3C,$A9,$FF,$85,$F5,$E6,$F9,$A2,$00,$86,$F6,$A6
       .byte $F9,$F8,$A5,$F6,$18,$69,$01,$85,$F6,$D8,$CA,$D0,$F4,$A2,$00,$86
       .byte $F7,$86,$FA,$86,$F8,$86,$E4,$A5,$F9,$C9,$0E,$90,$04,$86,$F6,$86
       .byte $F9,$F8,$18,$A5,$F6,$69,$01,$85,$F6,$D8,$A6,$F9,$BD,$9F,$F7,$85
       .byte $F1,$A5,$F9,$29,$07,$0A,$0A,$A8,$A2,$00,$A5,$F8,$29,$F0,$49,$FF
       .byte $25,$F4,$85,$E8,$A9,$FF,$85,$E7,$AD,$82,$02,$29,$08,$D0,$06,$A9
       .byte $0F,$85,$E7,$A0,$20,$B9,$6B,$F7,$45,$E8,$25,$E7,$24,$F8,$70,$06
       .byte $95,$06,$A9,$00,$85,$19,$C8,$E8,$E0,$04,$90,$E9,$A9,$00,$85,$0D
       .byte $85,$0E,$85,$0F,$60,$A5,$32,$10,$19,$24,$FB,$70,$3E,$A9,$7F,$85
       .byte $FB,$F8,$A5,$F7,$18,$69,$01,$D8,$85,$F7,$C9,$10,$D0,$04,$A9,$0F
       .byte $85,$F8,$A5,$33,$10,$1B,$24,$FB,$30,$21,$A5,$FB,$09,$80,$85,$FB
       .byte $F8,$A5,$F6,$18,$69,$01,$D8,$85,$F6,$C9,$10,$D0,$04,$A9,$0F,$85
       .byte $F8,$A5,$FB,$29,$C0,$F0,$03,$4C,$E1,$F6,$60,$A5,$E4,$29,$03,$D0
       .byte $0A,$A9,$01,$85,$15,$A9,$06,$85,$17,$D0,$08,$A5,$FB,$85,$19,$A9
       .byte $0E,$85,$17,$A5,$E4,$29,$0F,$D0,$69,$C6,$FB,$A5,$FB,$29,$0F,$D0
       .byte $03,$4C,$75,$F4,$A5,$F9,$29,$07,$0A,$0A,$A8,$AD,$82,$02,$29,$08
       .byte $D0,$02,$A0,$20,$24,$FB,$10,$25,$A5,$FB,$29,$20,$D0,$10,$A5,$FB
       .byte $09,$20,$85,$FB,$C8,$B9,$6B,$F7,$88,$85,$07,$4C,$BC,$F6,$A5,$FB
       .byte $49,$20,$85,$FB,$C8,$C8,$B9,$6B,$F7,$88,$88,$85,$07,$24,$FB,$50
       .byte $21,$A5,$FB,$29,$10,$D0,$0E,$A5,$FB,$09,$10,$85,$FB,$B9,$6B,$F7
       .byte $85,$06,$4C,$E1,$F6,$A5,$FB,$49,$10,$85,$FB,$C8,$C8,$B9,$6B,$F7
       .byte $85,$06,$A5,$EC,$18,$69,$10,$85,$EC,$60,$80,$80,$80,$80,$94,$94
       .byte $94,$94,$94,$94,$94,$94,$A8,$A8,$A8,$A8,$A8,$A8,$A8,$A8,$80,$80
       .byte $80,$80,$BC,$BC,$BC,$BC,$BC,$BC,$BC,$BC,$D0,$D0,$D0,$D0,$D0,$D0
       .byte $D0,$D0,$01,$02,$04,$08,$80,$40,$20,$10,$08,$04,$02,$01,$01,$02
       .byte $04,$08,$10,$20,$40,$80,$10,$20,$40,$80,$80,$40,$20,$10,$08,$04
       .byte $02,$01,$01,$02,$04,$08,$10,$20,$40,$80,$0E,$0A,$0A,$0A,$0E,$22
       .byte $22,$22,$22,$22,$EE,$22,$EE,$88,$EE,$EE,$22,$66,$22,$EE,$AA,$AA
       .byte $EE,$22,$22,$EE,$88,$EE,$22,$EE,$EE,$88,$EE,$AA,$EE,$EE,$22,$22
       .byte $22,$22,$EE,$AA,$EE,$AA,$EE,$EE,$AA,$EE,$22,$EE,$C8,$84,$3A,$44
       .byte $46,$EA,$5A,$88,$2A,$46,$B4,$E8,$3A,$86,$E8,$46,$2A,$56,$E8,$A4
       .byte $36,$2C,$C8,$A2,$C8,$2A,$83,$46,$86,$2C,$48,$E8,$00,$0E,$04,$08
       .byte $00,$05,$0A,$0F,$14,$19,$1E,$23,$28,$2D,$04,$04,$03,$02,$01,$00
       .byte $A0,$B0,$E0,$F0,$A1,$E1,$E5,$A8,$E8,$A9,$E9,$ED,$0C,$0D,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$94,$F3,$94,$F3,$94
       .byte $F3
