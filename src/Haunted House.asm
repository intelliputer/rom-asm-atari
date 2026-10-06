; Disassembly of roms/Haunted House.bin
; Disassembled Tue Oct  6 15:21:49 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Haunted House.bin
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
HMOVE   =  $2A
CXCLR   =  $2C
CXP0FB  =  $32
CXPPMM  =  $37
INPT4   =  $3C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296

       ORG $F000

START:
LF000: SEI            
       CLD            
       LDX    #$FF    
       TXS            
       STX    $EB     
       INX            
       STX    $CC     
       TXA            
LF00B: STA    VSYNC,X 
       INX            
       BPL    LF00B   
       JSR    LF082   
       JSR    LF141   
LF016: LDA    #$82    
       STA    WSYNC   
       STA    VBLANK  
       STA    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    WSYNC   
       STA    VSYNC   
       INC    $89     
       LDA    #$2D    
       STA    TIM64T  
       JSR    LF079   
       LDA    $99     
       AND    #$43    
       BNE    LF03E   
       JSR    LF1A5   
       JSR    LF155   
LF03E: JSR    LF2B7   
LF041: LDA    INTIM   
       BNE    LF041   
       STA    VBLANK  
       LDA    #$E4    
       STA    TIM64T  
       JSR    LF62C   
LF050: LDA    INTIM   
       BNE    LF050   
       STA    WSYNC   
       LDA    #$82    
       STA    VBLANK  
       LDA    #$24    
       STA    TIM64T  
       BIT    $99     
       BVS    LF070   
       JSR    LF8AC   
       JSR    LFB68   
       JSR    LFA90   
       JSR    LFC3C   
LF070: LDA    INTIM   
       BNE    LF070   
       STA    VBLANK  
       BEQ    LF016   
LF079: LDA    SWCHB   
       ROR            
       BCC    LF082   
       JMP    LF125   
LF082: LDX    $EB     
       LDA    $EC     
       STA    $EB     
       STX    $EC     
       LDX    #$80    
       LDA    #$00    
LF08E: STA    VSYNC,X 
       INX            
       CPX    #$96    
       BNE    LF08E   
       LDX    #$09    
LF097: LDA    LFDF6,X 
       STA    $96,X   
       DEX            
       BPL    LF097   
       JSR    LF0E7   
       LDX    #$03    
       STX    $A5     
       INX            
LF0A7: LDA    $A5,X   
       STA    $A0,X   
       LDA    $B0,X   
       STA    $AB,X   
       LDA    $BB,X   
       STA    $B6,X   
       DEX            
       BPL    LF0A7   
       LDY    $CC     
       CPY    #$02    
       BNE    LF0C7   
       INX            
       STX    $A0     
       LDX    #$74    
       STX    $AB     
       LDX    #$84    
       STX    $B6     
LF0C7: LDA    #$35    
       STA    CTRLPF  
       JSR    LFD0A   
       LDX    #$04    
       LDA    $CC     
       CMP    #$04    
       BCS    LF0D8   
       LDX    #$02    
LF0D8: STX    $EA     
       LDA    #$80    
       STA    $AA     
       LDA    #$86    
       STA    $B5     
       LDA    #$26    
       STA    $CB     
       RTS            

LF0E7: JSR    LF4C9   
       AND    #$07    
       CMP    #$06    
       BCS    LF0E7   
       STA    $D0     
       LDX    #$04    
LF0F4: JSR    LF4C9   
       AND    #$03    
       STA    $A5,X   
       TAY            
       TXA            
LF0FD: CLC            
       ADC    $D0     
       CMP    #$06    
       BCC    LF106   
       SBC    #$06    
LF106: CMP    $9C     
       BNE    LF112   
       CPY    $8D     
       BNE    LF112   
       LDA    #$05    
       BNE    LF0FD   
LF112: STA    $C5,X   
       STA    $C0,X   
       TAY            
       LDA    LFFAA,Y 
       STA    $B0,X   
       LDA    LFFBD,Y 
       STA    $BB,X   
       DEX            
       BPL    LF0F4   
       RTS            

LF125: ROR            
       BCC    LF12D   
       LDX    #$01    
       STX    $E5     
LF12C: RTS            

LF12D: DEC    $E5     
       BNE    LF12C   
       LDA    #$2D    
       STA    $E5     
       INC    $CC     
       LDA    $CC     
       CMP    #$09    
       BNE    LF13F   
       LDA    #$00    
LF13F: STA    $CC     
LF141: JSR    LF194   
       LDA    #$40    
       STA    $99     
       LDA    #$10    
       STA    $84     
       LDA    #$00    
       STA    $85     
       STA    $80     
       STA    $83     
       RTS            

LF155: BIT    $9B     
       BPL    LF17E   
       LDA    $8D     
       BNE    LF17E   
       LDA    #$02    
       CMP    $9C     
       BNE    LF17E   
       CMP    $9A     
       BNE    LF179   
       LDA    $9D     
       CMP    #$08    
       BNE    LF179   
       LDA    #$01    
       STA    $89     
       STA    $8A     
       LDA    #$44    
       STA    $99     
       BNE    LF17E   
LF179: LDX    #$02    
       JSR    LF88C   
LF17E: DEC    $87     
       BNE    LF188   
       LDA    #$3C    
       STA    $87     
       DEC    $DF     
LF188: BIT    $8A     
       BVC    LF19E   
       LDA    $83     
       BNE    LF194   
       LDA    $DF     
       BNE    LF19E   
LF194: LDA    #$00    
       STA    $85     
       LDA    $8A     
       AND    #$07    
       STA    $8A     
LF19E: LDA    $8A     
       EOR    #$80    
       STA    $8A     
       RTS            

LF1A5: JSR    LF1BF   
       LDA    #$00    
       STA    $91     
       LDA    $B5     
       CMP    #$26    
       BCC    LF1BC   
       CMP    #$D7    
       BCS    LF1BA   
       LDA    #$26    
       BNE    LF1BC   
LF1BA: SBC    #$AF    
LF1BC: STA    $CB     
       RTS            

LF1BF: LDA    #$00    
       STA    $E7     
       STA    $E8     
       LDA    $9B     
       AND    #$7F    
       STA    $9B     
       BIT    $91     
       BVS    LF206   
       BIT    $8E     
       BVS    LF1E3   
       BPL    LF206   
       INC    $E7     
       LDA    $AA     
       CMP    #$94    
       BEQ    LF254   
       JSR    LF272   
       JMP    LF1EE   
LF1E3: DEC    $E7     
       LDA    $AA     
       CMP    #$04    
       BEQ    LF254   
       JSR    LF27D   
LF1EE: JSR    LF295   
       BNE    LF201   
       JSR    LF28A   
       BNE    LF201   
       LDA    $AA     
       CLC            
       ADC    $E7     
       STA    $AA     
       BNE    LF206   
LF201: LDX    #$03    
       JSR    LF88C   
LF206: BIT    $91     
       BMI    LF253   
       LDA    $8E     
       AND    #$30    
       BEQ    LF253   
       CMP    #$20    
       BEQ    LF22E   
       INC    $E8     
       LDA    $B5     
       CMP    #$FB    
       BEQ    LF260   
       JSR    LF26B   
       JSR    LF29C   
       BNE    LF24E   
       JSR    LF279   
       JSR    LF29C   
       BNE    LF24E   
       BEQ    LF246   
LF22E: DEC    $E8     
       LDA    $B5     
       CMP    #$01    
       BEQ    LF260   
       JSR    LF26B   
       JSR    LF28E   
       BNE    LF24E   
       JSR    LF279   
       JSR    LF28E   
       BNE    LF24E   
LF246: LDA    $B5     
       CLC            
       ADC    $E8     
       STA    $B5     
       RTS            

LF24E: LDX    #$03    
       JSR    LF88C   
LF253: RTS            

LF254: LDA    $9B     
       ORA    #$80    
       STA    $9B     
       CMP    #$8F    
       BEQ    LF201   
       BNE    LF206   
LF260: LDA    $9B     
       ORA    #$80    
       STA    $9B     
       CMP    #$8F    
       BEQ    LF24E   
       RTS            

LF26B: LDA    $AA     
       CLC            
       ADC    #$07    
       BNE    LF281   
LF272: LDA    $AA     
       CLC            
       ADC    #$08    
       BNE    LF281   
LF279: LDA    $AA     
       BNE    LF281   
LF27D: LDY    $AA     
       DEY            
       TYA            
LF281: LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       DEY            
       STY    $D4     
       RTS            

LF28A: LDA    $B5     
       BNE    LF2A1   
LF28E: LDY    $B5     
       DEY            
       TYA            
       JMP    LF2A1   
LF295: LDA    $B5     
       CLC            
       ADC    #$02    
       BNE    LF2A1   
LF29C: LDA    $B5     
       CLC            
       ADC    #$03    
LF2A1: LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       LDY    $D4     
       TYA            
       AND    #$08    
       BEQ    LF2B0   
       CPX    #$08    
       RTS            

LF2B0: LDA    LFFD4,X 
       AND    LFE00,Y 
       RTS            

LF2B7: LDA    #$30    
       STA    NUSIZ0  
       LDA    #$00    
       STA    COLUBK  
       STA    $F1     
       STA    ENAM0   
       STA    ENABL   
       STA    NUSIZ1  
       LDA    $99     
       CMP    #$02    
       BEQ    LF2D8   
       AND    #$04    
       BEQ    LF2DB   
       LDA    $89     
       BNE    LF2D8   
       JSR    LF141   
LF2D8: JMP    LF315   
LF2DB: LDA    $80     
       BEQ    LF2ED   
       JSR    LF57D   
       LDA    $89     
       LSR            
       AND    #$07    
       TAX            
       LDA    LFF92,X 
       BNE    LF318   
LF2ED: LDX    $81     
       BEQ    LF300   
       LDX    $E9     
       LDA    #$08    
       STA    $ED     
       LDA    $8D     
       STA    $A0,X   
       JSR    LF526   
       BPL    LF315   
LF300: BIT    $8A     
       BVC    LF312   
       BIT    $8A     
       BMI    LF30D   
       JSR    LF4F1   
       BPL    LF315   
LF30D: JSR    LF57D   
       BPL    LF34D   
LF312: JSR    LF57D   
LF315: LDA    SWCHA   
LF318: LDY    #$E7    
       STY    $D8     
       STY    $D9     
       STY    $DA     
       LDY    #$A5    
       LDX    #$01    
       ROL            
       BCS    LF329   
       LDY    #$C6    
LF329: ROL            
       BCS    LF32E   
       LDY    #$63    
LF32E: ROL            
       BCS    LF332   
       DEX            
LF332: ROL            
       BCS    LF336   
       INX            
LF336: TYA            
       STA    $D8,X   
       LDA    #$D8    
       STA    $E3     
       LDA    #$00    
       STA    $E4     
       LDA    #$03    
       STA    $EE     
       LDY    #$01    
       LDA    $CB     
       LDX    $AA     
       BNE    LF397   
LF34D: LDA    $CF     
       STA    $E0     
       LDA    $CC     
       BEQ    LF35F   
       BIT    $88     
       BMI    LF35F   
       LDA    #$02    
       STA    ENABL   
       STA    ENAM0   
LF35F: LDA    $89     
       AND    #$06    
       LSR            
       TAX            
       LDA    LFF9A,X 
       STA    $E3     
       LDA    #$FF    
       STA    $E4     
       LDA    $AA     
       SEC            
       SBC    #$0D    
       BCS    LF37B   
       ADC    #$A0    
       LDX    #$97    
       BNE    LF381   
LF37B: CMP    #$84    
       BCC    LF387   
       LDX    #$00    
LF381: STX    $E0     
       LDX    #$02    
       STX    ENABL   
LF387: TAX            
       LDA    #$1C    
       STA    $EE     
       LDA    #$07    
       STA    NUSIZ1  
       LDY    #$04    
       LDA    $CB     
       SEC            
       SBC    #$0C    
LF397: STA    $F0     
       STX    $DD     
       STY    $F2     
       LDY    #$01    
       STY    $F3     
       DEY            
       STY    $F4     
       STY    $F5     
       LDA    #$08    
       CLC            
       ADC    $8D     
       LDX    $CC     
       BNE    LF3B3   
       STA    $F5     
       BPL    LF3B5   
LF3B3: STA    $F4     
LF3B5: LDA    $80     
       BEQ    LF3BD   
       LDA    #$03    
       BNE    LF3C8   
LF3BD: LDA    $83     
       BEQ    LF3D5   
       BIT    SWCHB   
       BVS    LF3D5   
       LDA    #$27    
LF3C8: AND    $89     
       BNE    LF3D5   
       LDA    $EB     
       ROR            
       BCC    LF3D5   
       LDY    #$01    
       STY    $F5     
LF3D5: LDX    #$F7    
       LDY    #$00    
       STY    $D0     
       LDA    SWCHB   
       AND    #$08    
       BNE    LF3E8   
       LDA    #$0C    
       STA    $D0     
       LDX    #$07    
LF3E8: STX    $D3     
       LDA    $84     
       AND    #$10    
       BEQ    LF3FF   
       LDA    $89     
       BNE    LF3F6   
       INC    $84     
LF3F6: LDA    $84     
       ORA    #$10    
       STA    $84     
       TAY            
       BNE    LF401   
LF3FF: LDX    #$FF    
LF401: STY    $D1     
       STX    $D2     
       LDX    #$04    
LF407: LDA    $F1,X   
       CLC            
       ADC    $D0     
       TAY            
       LDA    LFFE4,Y 
       EOR    $D1     
       AND    $D2     
       STA    $F1,X   
       DEX            
       BPL    LF407   
       LDA    $F2     
       STA    COLUP1  
       LDA    $F1     
       CMP    #$AA    
       BNE    LF429   
       LDA    $D3     
       ORA    #$08    
       AND    $89     
LF429: STA    COLUP0  
       LDA    $99     
       AND    #$04    
       BEQ    LF437   
       LDA    $89     
       AND    $D3     
       STA    $F5     
LF437: LDX    #$04    
       LDA    $99     
       CMP    #$02    
       BNE    LF441   
       LDX    #$01    
LF441: LDA    #$02    
       CPX    #$02    
       BCS    LF448   
       LSR            
LF448: CLC            
       ADC    $DC,X   
       LDY    #$02    
       SEC            
LF44E: INY            
       SBC    PF2     
       BCS    LF44E   
       EOR    #$FF    
       SBC    #$06    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    WSYNC   
LF45D: DEY            
       BPL    LF45D   
       STA    RESP0,X 
       STA    HMP0,X  
       DEX            
       BPL    LF441   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$4F    
       STA    $CD     
       STA    $D3     
       LDA    #$00    
       STA    $D4     
       BIT    $8A     
       BVC    LF4A1   
       BIT    $88     
       BMI    LF4A1   
       LDA    $CC     
       BEQ    LF4A1   
       LDA    $8C     
       BEQ    LF48C   
       JSR    LF4DB   
       BMI    LF48C   
       STA    $D4     
LF48C: LDA    $8B     
       BEQ    LF4A1   
       TAX            
       JSR    LF4DB   
       CMP    #$50    
       BCS    LF4A1   
       STA    $D3     
       LDA    #$08    
       STA    $D0     
       TXA            
       BNE    LF4AF   
LF4A1: LDA    $B5     
       CMP    #$26    
       BCC    LF4BD   
       CMP    #$D6    
       BCS    LF4C3   
       ADC    #$2A    
       STA    $D0     
LF4AF: LSR            
       LSR            
       LSR            
       LSR            
       EOR    #$0F    
       STA    $D1     
       ASL            
       ADC    $D1     
       TAX            
       BPL    LF4C9   
LF4BD: LDX    #$1E    
       LDA    #$00    
       BEQ    LF4C7   
LF4C3: LDX    #$00    
       LDA    #$0F    
LF4C7: STA    $D0     
LF4C9: LDA    $EC     
       EOR    $EB     
       ASL            
       ASL            
       ROL    $EB     
       ROL    $EC     
       LDA    $EB     
       RTS            

LF4D6: .byte $07,$01,$06,$06,$06
LF4DB: CLC            
       ADC    $CB     
       SEC            
       SBC    $B5     
       RTS            

LF4E2: TXA            
       CPX    #$02    
       BCC    LF4E9   
       LDA    $9B,X   
LF4E9: ASL            
       ASL            
       ASL            
       ADC    #$08    
       LDX    #$FE    
       RTS            

LF4F1: LDX    $86     
LF4F3: DEX            
       BPL    LF505   
       LDX    #$04    
       BNE    LF505   
LF4FA: CPX    $86     
       BNE    LF4F3   
LF4FE: LDA    #$00    
       STA    $DC     
       STA    $ED     
       RTS            

LF505: CPX    $9A     
       BEQ    LF4FA   
       CPX    #$02    
       BCC    LF511   
       LDA    $9B,X   
       BMI    LF4FA   
LF511: LDA    $CC     
       CMP    #$02    
       BCS    LF51B   
       CPX    #$00    
       BEQ    LF4FA   
LF51B: LDA    $A0,X   
       CMP    $8D     
       BNE    LF4FA   
       JSR    LF53D   
       BEQ    LF4FA   
LF526: LDY    $81     
       BNE    LF52F   
       LDA    LF4D6,X 
       STA    $F1     
LF52F: STX    $86     
       JSR    LF4E2   
       STA    $E1     
       STX    $E2     
       LDA    #$08    
       STA    $ED     
       RTS            

LF53D: LDA    $AA     
       SEC            
       SBC    $AB,X   
       BCS    LF548   
       EOR    #$FF    
       ADC    #$01    
LF548: STA    $D0     
       LDA    $B5     
       SEC            
       SBC    $B6,X   
       BCS    LF555   
       EOR    #$FF    
       ADC    #$01    
LF555: STA    $D1     
       CMP    $D0     
       BCS    LF55E   
       LSR            
       BPL    LF560   
LF55E: LSR    $D0     
LF560: CLC            
       ADC    $D0     
       CMP    #$11    
       BCS    LF595   
       LDA    $AB,X   
       STA    $DC     
       LDA    $B6,X   
LF56D: JSR    LF4DB   
       CMP    #$50    
       BCC    LF578   
       CMP    #$F9    
       BCC    LF595   
LF578: STA    $EF     
       LDA    #$01    
       RTS            

LF57D: LDX    $85     
LF57F: DEX            
       BPL    LF598   
       LDX    $EA     
       BIT    $8A     
       BVC    LF598   
       INX            
       JSR    LF5E7   
       BEQ    LF591   
       STX    $85     
       RTS            

LF591: CPX    $85     
       BNE    LF57F   
LF595: JMP    LF4FE   
LF598: JSR    LF59E   
       BEQ    LF591   
       RTS            

LF59E: LDA    $A5,X   
       CMP    $8D     
       BNE    LF595   
       LDA    $CC     
       BEQ    LF5BA   
       LDA    $80     
       BNE    LF5BA   
       LDA    $83     
       BEQ    LF595   
       LDA    $C5,X   
       CMP    $9C     
       BEQ    LF5BA   
       CMP    $97     
       BNE    LF595   
LF5BA: INX            
       STX    $F1     
       DEX            
       LDA    $B0,X   
       STA    $DC     
       LDA    $BB,X   
       JSR    LF56D   
       BEQ    LF591   
       STX    $85     
       LDA    #$50    
       CLC            
       ADC    LF5E2,X 
       BIT    $EB     
       BVS    LF5D7   
       ADC    #$0A    
LF5D7: STA    $E1     
       LDA    #$FE    
       STA    $E2     
       LDA    #$0A    
       STA    $ED     
       RTS            

LF5E2: .byte $00,$14,$28,$28,$28
LF5E7: LDA    $9B     
       AND    #$0F    
       CMP    #$0F    
       BEQ    LF62B   
       TAY            
       CPY    #$04    
       BCC    LF5F9   
       TYA            
       AND    #$03    
       EOR    #$01    
LF5F9: STA    $D0     
       ASL            
       ASL            
       ASL            
       ASL            
       CLC            
       ADC    $D0     
       ADC    #$8C    
       STA    $E1     
       LDA    #$00    
       ADC    #$FE    
       STA    $E2     
       TYA            
       AND    #$03    
       TAY            
       LDA    LFF88,Y 
       JSR    LF4DB   
       STA    $EF     
       LDY    $9C     
       LDA    LFF8C,Y 
       STA    $DC     
       LDA    #$00    
       STA    $F1     
       LDA    #$11    
       STA    $ED     
       LDA    #$35    
       STA    NUSIZ0  
LF62B: RTS            

LF62C: STA    CXCLR   
       LDY    #$00    
LF630: LDA    $CD     
       CMP    $D3     
       BEQ    LF63E   
       STA    WSYNC   
       STA    WSYNC   
       DEC    $CD     
       BPL    LF630   
LF63E: LDA    $D0     
       AND    #$0F    
       BNE    LF647   
       INX            
       INX            
       INX            
LF647: STA    WSYNC   
       LDA    $F5     
       STA    COLUPF  
       STY    GRP1    
       LDA    LFED0,X 
       STA    PF0     
       LDA    LFED1,X 
       STA    PF1     
       LDA    LFED2,X 
       STA    PF2     
       LDA    $CD     
       SEC            
       SBC    $EF     
       CMP    $ED     
       BCS    LF68D   
       TAY            
       LDA    ($E1),Y 
       TAY            
LF66B: DEC    $CD     
       LDA    $CD     
       CMP    $D4     
       BEQ    LF691   
       DEC    $D0     
       STA    WSYNC   
       STY    GRP0    
       LDA    $CD     
       SEC            
       SBC    $F0     
       CMP    $EE     
       BCS    LF689   
       TAY            
       LDA    ($E3),Y 
       TAY            
       JMP    LF63E   
LF689: LDY    #$00    
       BEQ    LF63E   
LF68D: LDY    #$00    
       BEQ    LF66B   
LF691: STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    PF1     
       STA    PF2     
       STA    ENAM0   
       STA    ENABL   
LF6A1: DEC    $CD     
       BMI    LF6AB   
       STA    WSYNC   
       STA    WSYNC   
       BPL    LF6A1   
LF6AB: STA    WSYNC   
       LDA    $F4     
       STA    COLUBK  
       LDY    #$FF    
       STY    PF0     
       INY            
       STY    COLUPF  
       LDX    #$07    
       STA    WSYNC   
LF6BC: DEX            
       BPL    LF6BC   
       STA    RESP0   
       LDA    #$40    
       STA    HMP0    
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$32    
       STA    NUSIZ0  
       STA    NUSIZ1  
       STX    $DB     
       STX    $D9     
       STX    $D7     
       STX    $D5     
       LDA    $82     
       AND    #$F0    
       LSR            
       STA    $D4     
       LDA    $82     
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA    $D6     
       LDA    $96     
       ASL            
       ASL            
       ASL            
       STA    $D8     
       BIT    $99     
       BVC    LF6F6   
       LDY    $CC     
       BPL    LF6F8   
LF6F6: LDY    $8D     
LF6F8: INY            
       TYA            
       ASL            
       ASL            
       ASL            
       STA    $DA     
       LDX    $9A     
       JSR    LF4E2   
       STX    $D1     
       BIT    $9A     
       BPL    LF70C   
       LDA    #$6A    
LF70C: STA    $D0     
       LDA    $F3     
       STA    COLUP0  
       STA    COLUP1  
       LDY    #$07    
LF716: STA    WSYNC   
       LDA    ($DA),Y 
       STA    GRP0    
       LDX    #$05    
LF71E: DEX            
       BPL    LF71E   
       LDA    ($D0),Y 
       STA    GRP0    
       DEY            
       BPL    LF716   
       INY            
       STY    WSYNC   
       STY    GRP0    
       STY    GRP1    
       LDX    #$03    
       STA    WSYNC   
LF733: DEX            
       NOP            
       BPL    LF733   
       LDA    $D0     
       STA    RESP0   
       STA    RESP1   
       LDA    #$34    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDY    #$07    
LF745: STA    WSYNC   
       LDA    ($D4),Y 
       STA    GRP0    
       LDA    ($D6),Y 
       STA    GRP1    
       LDX    #$03    
LF751: DEX            
       BPL    LF751   
       LDA    $CD     
       INX            
       STX    GRP0    
       LDA    ($D8),Y 
       STA    GRP1    
       DEY            
       BPL    LF745   
       INY            
       STY    GRP1    
       LDA    $99     
       BNE    LF7A3   
       LDA    $83     
       BNE    LF773   
       LDX    $98     
       CPX    #$7F    
       BEQ    LF7DB   
       STA    $92     
LF773: LDA    $98     
       TAY            
       CMP    #$7F    
       BEQ    LF78A   
       AND    #$0F    
       BNE    LF78C   
       TYA            
       BEQ    LF78A   
       BMI    LF78A   
       LDX    $EB     
       LDA    LF000,X 
       AND    #$01    
LF78A: STA    $92     
LF78C: LDA    $92     
       BNE    LF794   
       INC    $98     
       BNE    LF796   
LF794: DEC    $98     
LF796: LDX    #$08    
       TYA            
       LSR            
       LSR            
       LSR            
       ORA    #$10    
       TAY            
       EOR    #$0F    
       BPL    LF7DD   
LF7A3: LSR            
       BCC    LF7C4   
       LDA    $8F     
       BNE    LF7B7   
       LDA    $EB     
       AND    #$70    
       LSR            
       LSR            
       CLC            
       ADC    #$10    
       STA    $8F     
       BPL    LF7DB   
LF7B7: LDA    $8F     
       EOR    #$FF    
       TAY            
       DEC    $8F     
       LDX    #$08    
       LDA    #$0C    
       BPL    LF7DD   
LF7C4: CMP    #$22    
       BNE    LF7DB   
       LDA    $89     
       LSR            
       LSR            
       LSR            
       LSR            
       AND    #$03    
       TAX            
       LDA    LFF9E,X 
       TAY            
       LDA    #$09    
       LDX    #$0C    
       BPL    LF7DD   
LF7DB: LDA    #$00    
LF7DD: STX    AUDC0   
       STY    AUDF0   
       STA    AUDV0   
       LDA    $99     
       BNE    LF841   
       LDY    $93     
       LDA    $90     
       BNE    LF7F4   
       STA    AUDV1   
       STA    $93     
       JMP    LF875   
LF7F4: DEC    $90     
       CPY    #$02    
       BNE    LF805   
       LDX    #$06    
       LDA    $90     
       EOR    #$03    
LF800: TAY            
       LDA    #$08    
       BNE    LF843   
LF805: CPY    #$03    
       BNE    LF80F   
       LDX    #$02    
LF80B: LDA    $90     
       BPL    LF800   
LF80F: CPY    #$04    
       BNE    LF81B   
       LDA    #$06    
       LDX    #$08    
       LDY    #$0F    
       BNE    LF843   
LF81B: CPY    #$05    
       BNE    LF829   
       LDA    $90     
       EOR    #$03    
LF823: LDY    #$08    
       LDX    #$06    
       BNE    LF843   
LF829: CPY    #$06    
       BNE    LF831   
       LDA    $90     
       BPL    LF823   
LF831: CPY    #$07    
       BNE    LF839   
       LDX    #$04    
       BNE    LF80B   
LF839: CPY    #$08    
       BNE    LF84A   
       LDX    #$08    
       BNE    LF80B   
LF841: LDY    #$00    
LF843: STY    AUDV1   
       STA    AUDF1   
       STX    AUDC1   
       RTS            

LF84A: LDA    $90     
       LSR            
       LSR            
       LSR            
       LSR            
       CPY    #$09    
       BEQ    LF85A   
       CPY    #$0A    
       BNE    LF864   
       EOR    #$03    
LF85A: TAX            
       LDA    LFFA2,X 
       LDX    #$06    
       LDY    #$0A    
       BNE    LF843   
LF864: CPY    #$0B    
       BNE    LF875   
       LDA    $90     
       TAY            
       AND    #$04    
       BEQ    LF841   
       LDX    #$06    
       LDA    #$01    
       BNE    LF843   
LF875: LDA    SWCHA   
       EOR    #$FF    
       BEQ    LF841   
       LDA    $89     
       AND    #$07    
       CMP    #$03    
       BCS    LF841   
       LDY    #$0F    
       LDX    #$0B    
       LDA    #$18    
       BNE    LF843   
LF88C: CPX    $93     
       BEQ    LF89F   
       CPX    #$03    
       BNE    LF898   
       LDA    $93     
       BNE    LF89F   
LF898: STX    $93     
       LDA    LF8A0,X 
       STA    $90     
LF89F: RTS            

LF8A0: .byte $FF,$FF,$15,$15,$01,$04,$04,$0A,$15,$3F,$3F,$1F
LF8AC: LDA    $99     
       AND    #$FD    
       STA    $99     
       ROR            
       BCC    LF8EC   
       DEC    $80     
       BNE    LF8EC   
       LDA    #$00    
       STA    $99     
       STA    $93     
       LDA    $96     
       BNE    LF8C6   
       JSR    LF141   
LF8C6: JSR    LF0E7   
       STA    CXCLR   
       LDA    $CA     
       CMP    #$01    
       BNE    LF8EB   
       LDY    $CC     
       CPY    #$06    
       BCC    LF8EB   
       LDX    $9A     
       BMI    LF8EB   
       LDA    $A6     
       STA    $A0,X   
       LDA    $B1     
       STA    $AB,X   
       LDA    $BC     
       STA    $B6,X   
       LDA    #$FF    
       STA    $9A     
LF8EB: RTS            

LF8EC: LDA    $89     
       AND    #$07    
       STA    $CD     
       TAY            
       LDA    #$88    
       AND    LFE00,Y 
       STA    $DA     
       LDA    #$00    
       STA    $83     
       LDX    $EA     
LF900: LDA    $A5,X   
       CMP    $8D     
       BNE    LF945   
       LDA    $C5,X   
       CMP    $9C     
       BEQ    LF910   
       CMP    $97     
       BNE    LF945   
LF910: INC    $83     
       LDA    $80     
       BNE    LF94C   
       TXA            
       BNE    LF91F   
       LDA    $CC     
       CMP    #$07    
       BCS    LF925   
LF91F: LDA    $9A     
       CMP    #$01    
       BEQ    LF94C   
LF925: JSR    LFA6F   
       BEQ    LF9A0   
       LDA    $AA     
       SEC            
       SBC    LFDEC,X 
       BCS    LF934   
       LDA    $AA     
LF934: STA    $D0     
       LDA    $B5     
       SEC            
       SBC    LFDF1,X 
       BCS    LF940   
       LDA    $B5     
LF940: STA    $D1     
       JMP    LF983   
LF945: JSR    LFA68   
       BEQ    LF9A0   
       BNE    LF950   
LF94C: LDA    $DA     
       BEQ    LF9A0   
LF950: LDA    $C0,X   
       AND    #$3F    
       TAY            
       AND    #$0F    
       STA    $D0     
       TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    LFFA6,Y 
       CLC            
       ADC    $D0     
       TAY            
       LDA    LFFAA,Y 
       STA    $D0     
       LDA    LFFBD,Y 
       STA    $D1     
       CMP    $BB,X   
       BNE    LF983   
       LDA    $B0,X   
       CMP    $D0     
       BNE    LF983   
       LDA    $95     
       ORA    LFE00,X 
       STA    $95     
       BNE    LF9A0   
LF983: LDA    $B0,X   
       CMP    $D0     
       BCC    LF98F   
       BEQ    LF991   
       DEC    $B0,X   
       BNE    LF991   
LF98F: INC    $B0,X   
LF991: LDA    $BB,X   
       CMP    $D1     
       BCC    LF99E   
       BEQ    LF9A0   
       DEC    $BB,X   
       JMP    LF9A0   
LF99E: INC    $BB,X   
LF9A0: DEX            
       BMI    LF9A6   
       JMP    LF900   
LF9A6: LDX    #$00    
       LDA    $95     
LF9AA: ROR            
       BCS    LF9B5   
       INX            
       CPX    $EA     
       BEQ    LF9AA   
       BCC    LF9AA   
       RTS            

LF9B5: LDA    $95     
       EOR    LFE00,X 
       STA    $95     
       LDA    $C0,X   
       TAY            
       AND    #$30    
       BEQ    LF9F3   
       CMP    #$10    
       BNE    LF9DB   
       TYA            
       AND    #$C0    
       STA    $D0     
       CLC            
       ROL            
       ROL            
       ROL            
       TAY            
       LDA    LFFD0,Y 
       CLC            
       ADC    $C5,X   
       STA    $C5,X   
       BPL    LF9EC   
LF9DB: CMP    #$30    
       BEQ    LF9E3   
       DEC    $A5,X   
       BPL    LF9E5   
LF9E3: INC    $A5,X   
LF9E5: TYA            
       AND    #$C0    
       EOR    #$40    
       STA    $D0     
LF9EC: LDA    $C5,X   
       ORA    $D0     
       STA    $C0,X   
       RTS            

LF9F3: TYA            
       ROL            
       ROL            
       ROL            
       AND    #$03    
       EOR    #$01    
       STA    $D4     
       LDA    $EB     
       AND    #$03    
       STA    $D3     
       STA    $D2     
       BPL    LFA13   
LFA07: INC    $D2     
       LDA    $D2     
       AND    #$03    
       STA    $D2     
       CMP    $D3     
       BEQ    LFA1D   
LFA13: CMP    $D4     
       BEQ    LFA07   
       JSR    LFA1F   
       BEQ    LFA07   
       RTS            

LFA1D: LDA    $D4     
LFA1F: STA    $D6     
       LDA    $A5,X   
       STA    $D7     
       LDA    $C5,X   
       STA    $D0     
       JSR    LFDAE   
       BMI    LFA41   
       BEQ    LFA39   
       LDA    $CC     
       CMP    #$08    
       BEQ    LFA39   
       TXA            
       BNE    LFA65   
LFA39: LDA    $D8     
       STA    $D0     
       LDA    #$01    
       BNE    LFA56   
LFA41: CMP    #$FF    
       BEQ    LFA65   
       LDY    $A5,X   
       LDA    $C5,X   
       JSR    LFD4C   
       BCS    LFA65   
       BNE    LFA54   
       LDA    #$02    
       BNE    LFA56   
LFA54: LDA    #$03    
LFA56: ASL    $D6     
       ASL    $D6     
       ORA    $D6     
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    $D0     
       STA    $C0,X   
       RTS            

LFA65: LDA    #$00    
       RTS            

LFA68: LDA    $94     
       AND    LFE00,X 
       BEQ    LFA83   
LFA6F: LDA    $CC     
       CMP    #$07    
       BCC    LFA7A   
       LDA    LFA8B,X 
       BNE    LFA7D   
LFA7A: LDA    LFA86,X 
LFA7D: LDY    $CD     
       AND    LFE00,Y 
       RTS            

LFA83: LDA    $DA     
       RTS            

LFA86: .byte $AA,$91,$88,$88,$88
LFA8B: .byte $AA,$AA,$91,$91,$91
LFA90: LDA    $80     
       BNE    LFA65   
       BIT    CXPPMM  
       BPL    LFA65   
       LDA    $81     
       BNE    LFA65   
       BIT    $8A     
       BVC    LFAA3   
       BPL    LFAAC   
       RTS            

LFAA3: LDA    $85     
       CMP    $EA     
       BEQ    LFB0C   
       BCC    LFB0C   
       RTS            

LFAAC: LDX    #$06    
       JSR    LF88C   
       LDA    $9A     
       BMI    LFAFE   
       CMP    $86     
       BEQ    LFAFE   
       CMP    #$02    
       BCC    LFAFE   
       LDA    $86     
       CMP    #$02    
       BCC    LFAFE   
       CLC            
       ADC    $9A     
       TAY            
       LDX    #$07    
       JSR    LF88C   
       LDA    $9E     
       ORA    $9F     
       BPL    LFAE5   
       LDX    #$0B    
       JSR    LF88C   
       LDA    #$08    
       STA    $9D     
       LDA    #$FF    
       STA    $9E     
       STA    $9F     
       LDA    #$02    
       BNE    LFB00   
LFAE5: LDX    #$02    
       CPY    #$05    
       BNE    LFAEC   
       DEX            
LFAEC: LDA    #$FF    
       STA    $9D,X   
       LDX    #$00    
       CPY    #$07    
       BNE    LFAF7   
       INX            
LFAF7: STY    $9D,X   
       INX            
       INX            
       TXA            
       BNE    LFB00   
LFAFE: LDA    $86     
LFB00: PHA            
       BIT    $9A     
       BMI    LFB08   
       JSR    LFBE2   
LFB08: PLA            
       STA    $9A     
LFB0B: RTS            

LFB0C: LDA    $CC     
       CMP    #$07    
       BCC    LFB16   
       LDA    $85     
       BEQ    LFB1C   
LFB16: LDA    $9A     
       CMP    #$01    
       BEQ    LFB0B   
LFB1C: LDX    #$01    
       STX    $99     
       LDX    #$FF    
       STX    $80     
       DEC    $96     
       LDA    $85     
       STA    $CA     
       RTS            

LFB2B: LDA    $CC     
       CMP    #$05    
       BCC    LFB92   
       LDA    $9B     
       AND    #$07    
       ASL            
       ASL            
       STA    $D0     
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    $D0     
       AND    #$D0    
       ORA    #$20    
       ORA    $9C     
       STA    $D0     
LFB47: LDX    $EA     
LFB49: LDA    #$00    
       STA    $94     
LFB4D: LDA    $A5,X   
       CMP    $8D     
       BNE    LFB64   
       LDA    $C5,X   
       CMP    $9C     
       BNE    LFB64   
       LDA    $D0     
       STA    $C0,X   
       LDA    $94     
       ORA    LFE00,X 
       STA    $94     
LFB64: DEX            
       BPL    LFB4D   
       RTS            

LFB68: LDA    $9B     
       AND    #$0F    
       CMP    #$0F    
       BEQ    LFB92   
       BIT    $9B     
       BPL    LFB90   
       BVS    LFB92   
       JSR    LFB2B   
       LDX    #$09    
       LDA    $9B     
       AND    #$04    
       BEQ    LFB85   
       INC    $8D     
       BNE    LFB88   
LFB85: DEC    $8D     
       INX            
LFB88: JSR    LF88C   
       JSR    LFD0A   
       ORA    #$40    
LFB90: STA    $9B     
LFB92: LDA    SWCHA   
       AND    #$F0    
       EOR    #$F0    
       STA    $8E     
       LDA    $83     
       BNE    LFBD4   
       LDA    INPT4   
       ROL            
       ROR    $E6     
       LDA    $E6     
       CMP    #$7F    
       BNE    LFBD4   
       BIT    $8A     
       BVS    LFBC2   
       LDA    #$14    
       STA    $DF     
       SED            
       LDA    $82     
       CLC            
       ADC    #$01    
       STA    $82     
       CLD            
       LDA    $8A     
       ORA    #$40    
       STA    $8A     
       RTS            

LFBC2: BIT    $9A     
       BMI    LFBD4   
       LDX    #$05    
       JSR    LF88C   
       JSR    LFBE2   
       LDA    #$FF    
       STA    $9A     
       BNE    LFC0A   
LFBD4: LDA    $81     
       BEQ    LFC0A   
       BIT    CXP0FB  
       BMI    LFBFB   
       LDA    #$00    
       STA    $81     
       BEQ    LFC0A   
LFBE2: LDA    #$05    
       STA    $81     
       LDA    $9A     
       STA    $E9     
       LDA    $E7     
       TAY            
       ORA    $E8     
       BEQ    LFBFB   
       INY            
       INY            
       LDX    $E8     
       INX            
       JSR    LFC0B   
       BCC    LFC0A   
LFBFB: DEC    $81     
       BEQ    LFC0A   
       LDX    $81     
       DEX            
       LDY    $81     
       DEY            
       JSR    LFC0B   
       BCS    LFBFB   
LFC0A: RTS            

LFC0B: LDA    LFD03,X 
       LDX    $B5     
       CPX    #$F4    
       BCC    LFC18   
       CMP    #$0A    
       BEQ    LFC3A   
LFC18: CLC            
       ADC    $B5     
       CMP    #$F4    
       BCS    LFC3A   
       LDX    $E9     
       STA    $B6,X   
       JSR    LF4DB   
       STA    $EF     
       LDA    LFD02,Y 
       CLC            
       ADC    $AA     
       CMP    #$97    
       BCS    LFC3A   
       LDX    $E9     
       STA    $AB,X   
       STA    $DC     
       CLC            
       RTS            

LFC3A: SEC            
       RTS            

LFC3C: LDA    #$05    
       STA    $D0     
       LDX    #$00    
LFC42: LDY    $D0     
       LDA    LFC74,Y 
       TAY            
       LDA    $8E     
       AND    LFC7A,Y 
       BEQ    LFC61   
       LDA    $AA     
       CPY    #$02    
       BCC    LFC57   
       LDA    $B5     
LFC57: CMP    LFC68,X 
       BEQ    LFCA5   
       CMP    LFC69,X 
       BEQ    LFC7E   
LFC61: INX            
       INX            
       DEC    $D0     
       BPL    LFC42   
LFC67: RTS            

LFC68: .byte $54
LFC69: .byte $5C,$A4,$AC,$58,$4F,$A8,$9F,$4F,$47,$48,$50
LFC74: .byte $01,$00,$03,$03,$02,$02
LFC7A: .byte $40,$80,$10,$20
LFC7E: BIT    $88     
       BPL    LFC67   
       TYA            
       ORA    #$80    
       CMP    $88     
       BEQ    LFC8D   
       LDA    $97     
       STA    $9C     
LFC8D: JSR    LFCD8   
       STY    $88     
       LDA    LFFD0,Y 
       CLC            
       ADC    $9C     
       STA    $9C     
       LDA    #$FF    
       STA    $97     
       JSR    LFD0A   
       LDX    #$08    
       BNE    LFCD1   
LFCA5: BIT    $88     
       BMI    LFC67   
       TYA            
       JSR    LFDA6   
       BEQ    LFCB3   
       LDA    $9A     
       BNE    LFCC6   
LFCB3: LDY    $D6     
       LDA    LFFD0,Y 
       CLC            
       ADC    $9C     
       STA    $97     
       TYA            
       ORA    #$80    
       STA    $88     
       LDX    #$04    
       BNE    LFCD1   
LFCC6: LDA    $D6     
       LSR            
       TAX            
       LDA    LFE06,X 
       STA    $91     
       LDX    #$02    
LFCD1: LDA    $CC     
       BEQ    LFC67   
       JMP    LF88C   
LFCD8: STY    $D5     
       LDA    $CC     
       CMP    #$05    
       BCC    LFCFF   
       LDA    LFD06,Y 
       ORA    #$10    
       STA    $D0     
       TYA            
       JSR    LFDA6   
       PHA            
       LDA    $D0     
       ORA    $D8     
       STA    $D0     
       PLA            
       BEQ    LFCFC   
       LDX    #$00    
       JSR    LFB49   
       BMI    LFCFF   
LFCFC: JSR    LFB47   
LFCFF: LDY    $D5     
       RTS            

LFD02: .byte $00
LFD03: .byte $0A,$00,$F6
LFD06: .byte $00,$40,$80,$C0
LFD0A: LDA    #$02    
       JSR    LFD6C   
       STA    $8B     
       LDA    #$03    
       JSR    LFD6C   
       STA    $8C     
       LDA    #$00    
       JSR    LFD6C   
       BEQ    LFD25   
       LDA    #$47    
       LDX    #$3F    
       BNE    LFD29   
LFD25: LDA    #$4F    
       LDX    #$57    
LFD29: STA    $CF     
       STX    $DE     
       LDY    $8D     
       LDA    $9C     
       JSR    LFD4C   
       BCS    LFD42   
       BEQ    LFD3A   
       LDA    #$04    
LFD3A: LDX    $9C     
       ORA    LFD46,X 
LFD3F: STA    $9B     
       RTS            

LFD42: LDA    #$0F    
       BNE    LFD3F   
LFD46: .byte $03 ;.SLO
       .byte $03 ;.SLO
       ORA    ($00,X) 
       .byte $02 ;.JAM
       .byte $02 ;.JAM
LFD4C: STA    $D8     
       TYA            
       JSR    LFDCA   
       STY    $D7     
       LDA    LFDDD,Y 
       LDY    $D8     
       AND    LFE00,Y 
       BEQ    LFD6A   
       LDY    $D7     
       LDA    LFDE5,Y 
       LDY    $D8     
       CLC            
       AND    LFE00,Y 
       RTS            

LFD6A: SEC            
       RTS            

LFD6C: STA    $D6     
       LDA    $8D     
       STA    $D7     
       LDA    $9C     
       JSR    LFD9A   
       BMI    LFDC7   
       LSR            
       TAY            
       LDA    LFD7F,Y 
       RTS            

LFD7F: .byte $57,$A7,$4F
LFD82: .byte $04,$FF,$00,$80,$FF,$04,$01,$81,$05,$82,$02,$00,$83,$05,$03,$01
       .byte $06,$FF,$84,$02,$FF,$06,$85,$03
LFD9A: ASL            
       ASL            
       CLC            
       ADC    $D6     
       TAY            
       LDA    LFD82,Y 
       STA    $D8     
       RTS            

LFDA6: STA    $D6     
       LDA    $8D     
       STA    $D7     
       LDA    $9C     
LFDAE: JSR    LFD9A   
       BMI    LFDC9   
       LDY    $CC     
       CPY    #$02    
       BCC    LFDC7   
       LDA    $D7     
       JSR    LFDCA   
       LDA    LFDD5,Y 
       LDY    $D8     
       AND    LFE00,Y 
       RTS            

LFDC7: LDA    #$00    
LFDC9: RTS            

LFDCA: LDY    $CC     
       CPY    #$08    
       BNE    LFDD3   
       CLC            
       ADC    #$04    
LFDD3: TAY            
       RTS            

LFDD5: .byte $29,$47,$34,$29,$2E,$1D,$2B,$0A
LFDDD: .byte $21,$3B,$3F,$25,$2A,$3F,$3F,$2A
LFDE5: .byte $21,$1A,$25,$00,$2A,$15,$2A
LFDEC: .byte $00,$FA,$FA,$06,$06
LFDF1: .byte $00,$FE,$06,$FE,$06
LFDF6: .byte $09,$FF,$7F,$02,$FF,$0F,$02,$02,$03,$04
LFE00: .byte $01,$02,$04,$08,$10,$20
LFE06: .byte $40,$80,$00,$00,$07,$FD,$A7,$00,$00,$00,$01,$02,$04,$28,$90,$68
       .byte $60,$90,$00,$00,$20,$F0,$A0,$E0,$00,$00,$3C,$18,$18,$08,$18,$10
       .byte $3C,$18,$00,$00,$04,$07,$06,$0F,$00,$00,$3C,$18,$38,$F8,$B8,$F0
       .byte $3C,$18,$00,$00,$24,$F7,$A5,$EF,$00,$00,$3C,$18,$1C,$0F,$1D,$1F
       .byte $3C,$18,$3C,$18,$3C,$FF,$BD,$FF,$3C,$18,$00,$00,$00,$0C,$3C,$7C
       .byte $7D,$7E,$D4,$B8,$00,$00,$E0,$78,$3C,$3E,$3E,$BE,$6B,$1D,$81,$81
       .byte $C3,$66,$7E,$3C,$00,$00,$00,$00,$00,$00,$00,$00,$3C,$7E,$66,$C3
       .byte $81,$81,$24,$24,$24,$99,$7E,$18,$66,$81,$00,$00,$00,$00,$E7,$18
       .byte $7E,$99,$24,$42,$42,$00,$B7,$B7,$B7,$B7,$B7,$B7,$B7,$B7,$B7,$B7
       .byte $B7,$B7,$B7,$B7,$B7,$B7,$B7,$ED,$ED,$ED,$ED,$ED,$ED,$ED,$ED,$ED
       .byte $ED,$ED,$ED,$ED,$ED,$ED,$ED,$ED,$FF,$FF,$FF,$FF,$FF,$FF,$00,$00
       .byte $FF,$FF,$FF,$FF,$00,$00,$FF,$FF,$00,$FF,$FF,$00,$00,$FF,$FF,$FF
       .byte $FF,$00,$00,$FF,$FF,$FF,$FF,$FF,$FF,$00
LFED0: .byte $FF
LFED1: .byte $F0
LFED2: .byte $FF,$FF,$00,$F0,$FF,$00,$F0,$FF,$00,$00,$FF,$00,$F0,$FF,$F0,$FF
       .byte $FF,$00,$F0,$10,$00,$00,$FF,$00,$F0,$FF,$00,$F0,$FF,$F0,$FF,$FF
       .byte $00,$F0,$FF,$00,$F0,$FF,$00,$00,$FF,$00,$F0,$FF,$F0,$FF,$1C,$3E
       .byte $73,$63,$63,$67,$3E,$1C,$3E,$1C,$0C,$0C,$0C,$3C,$1C,$0C,$7F,$60
       .byte $70,$3E,$03,$33,$67,$3E,$3E,$67,$33,$06,$0C,$07,$33,$1E,$0F,$06
       .byte $FF,$C6,$66,$66,$E6,$07,$3E,$67,$33,$03,$3E,$30,$38,$1F,$3E,$73
       .byte $67,$7E,$60,$67,$33,$1E,$3C,$18,$0C,$0C,$06,$06,$C3,$7F,$3E,$67
       .byte $C3,$CF,$7E,$73,$66,$3C,$3C,$66,$03,$3F,$73,$63,$66,$3C,$3C,$3C
       .byte $3C,$3C,$7E,$7E,$7E,$7E,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$7E,$7E,$7E,$7E,$3C,$3C,$3C,$3C,$18,$18,$18,$18,$3C,$3C
       .byte $3C,$3C,$7E,$7E,$7E,$7E,$FF,$FF,$FF,$FF,$7E,$7E,$7E,$7E,$3C,$3C
       .byte $3C,$3C,$18,$18,$18,$18
LFF88: .byte $80,$80,$EE,$03
LFF8C: .byte $6F,$1F,$8B,$04,$6F,$1F
LFF92: .byte $E0,$A0,$B0,$90,$D0,$50,$70,$60
LFF9A: .byte $50,$6C,$50,$50
LFF9E: .byte $13,$12,$13,$17
LFFA2: .byte $09,$09,$0B,$12
LFFA6: .byte $00,$06,$0D,$0D
LFFAA: .byte $74,$24,$74,$24,$74,$24,$74,$24,$74,$24,$4C,$4C,$4C,$74,$24,$94
       .byte $04,$74,$24
LFFBD: .byte $24,$24,$84,$84,$C4,$C4,$54,$54,$A4,$A4,$24,$84,$C4,$00,$00,$84
       .byte $84,$F4,$F4
LFFD0: .byte $01,$FF,$02,$FE
LFFD4: .byte $BD,$18,$00,$18,$18,$BD,$18,$18,$00,$18,$BD,$18,$00,$18,$18,$BD
LFFE4: .byte $00,$0D,$D7,$47,$37,$97,$AA,$C8,$82,$32,$B2,$F6,$00,$0D,$0A,$0A
       .byte $0A,$0A,$AA,$0D,$02,$04,$06,$08,$00,$F0,$00,$F0
