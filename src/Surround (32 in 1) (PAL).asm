; Disassembly of roms/Surround (32 in 1) (PAL).bin
; Disassembled Tue Oct  6 15:24:47 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Surround (32 in 1) (PAL).bin
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
       LDX    #$0E    
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
       LDY    #$11    
       LDA    #$13    
       STA    $E5     
       LDX    #$FF    
LF0B2: CPY    #$13    
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
       ADC    #$0A    
       STA    $E5     
LF102: INY            
       BEQ    LF11B   
       CPY    #$D5    
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
       LDA    #$2B    
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
LF76B: .byte $CA,$84,$3A,$2E,$84,$2E,$CE,$E8,$CE,$3A,$2E,$82,$CE,$2E,$82,$3A
       .byte $82,$3A,$2E,$CE,$86,$2E,$3F,$32,$2E,$3A,$CF,$C2,$2E,$86,$EF,$3A
       .byte $00,$0E,$04,$08
LF78F: .byte $00,$05,$0A,$0F,$14,$19,$1E,$23,$28,$2D
LF799: .byte $04,$04,$03,$02,$01,$00
LF79F: .byte $A0,$B0,$E0,$F0,$A1,$E1,$E5,$A8,$E8,$A9,$E9,$ED,$0C,$0D,$EA,$EA
       .byte $EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA
       .byte $EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA
       .byte $EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA
       .byte $EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA
       .byte $EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$94,$F3,$94,$F3,$94
       .byte $F3
