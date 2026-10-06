; Disassembly of roms/Tanks But No Tanks.bin
; Disassembled Tue Oct  6 15:24:47 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Tanks But No Tanks.bin
;

      processor 6502
VSYNC   =  $00
VBLANK  =  $01
WSYNC   =  $02
RSYNC   =  $03
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
AUDC0   =  $15
AUDC1   =  $16
AUDF0   =  $17
AUDF1   =  $18
AUDV0   =  $19
AUDV1   =  $1A
GRP0    =  $1B
GRP1    =  $1C
ENAM0   =  $1D
ENAM1   =  $1E
ENABL   =  $1F
HMP0    =  $20
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296

       ORG $F000

START:
       CLD            
       LDX    #$00    
       LDA    #$00    
LF005: STA    VSYNC,X 
       TXS            
       INX            
       BNE    LF005   
       LDA    #$20    
       STA    TIM64T  
       JSR    $7FA2   
       JSR    $7A13   
       LDA    #$01    
       STA    $AB     
       STA    $E9     
       STA    $CB     
       JSR    $7CA0   
       JMP    $705B   
LF024: JSR    $7F81   
       LDA    $C6     
       LDX    #$02    
       JSR    $7ED5   
       LDA    $D3     
       LDX    #$03    
       JSR    $7ED5   
       LDA    SWCHB   
       AND    #$02    
       BNE    LF070   
       LDA    $DF     
       CMP    #$88    
       BCS    LF05B   
       LDX    $AB     
       INX            
       CPX    #$05    
       BCC    LF04B   
       LDX    #$01    
LF04B: STX    $AB     
LF04D: LDA    #$00    
       STA    $B2     
       STA    AUDV0   
       STA    AUDV1   
       LDA    #$88    
       STA    $DF     
       BNE    LF082   
LF05B: LDA    #$00    
       STA    $81     
       STA    $82     
       STA    $83     
       JSR    $7AB4   
       LDA    $AB     
       JSR    $7A0C   
       STA    $A7     
       JMP    $704D   
LF070: LDA    $DF     
       BEQ    LF07F   
       CMP    #$80    
       BCC    LF082   
       AND    #$F7    
       STA    $DF     
       JMP    $7082   
LF07F: JSR    $759B   
LF082: LDA    INTIM   
       BNE    LF082   
       STA    CXCLR   
       LDA    #$00    
       STA    $BA     
       STA    $B7     
       LDA    $BE     
       STA    $B5     
       LDA    $C5     
       STA    $B8     
       LDA    #$18    
       STA    TIM64T  
       JSR    $7A4C   
       LDA    $C3     
       LDX    #$01    
       JSR    $7ED5   
       LDA    $BC     
       LDX    #$00    
       JSR    $7ED5   
LF0AD: LDA    INTIM   
       BNE    LF0AD   
       STA    WSYNC   
       STA    HMOVE   
       STX    REFP0   
       STX    REFP1   
       JSR    $7CE3   
       LDA    #$01    
       STA    $EE     
       LDA    #$2C    
       STA    $F0     
       LDA    #$57    
       STA    $F2     
       LDA    $E8     
       CMP    #$02    
       BCC    LF0E7   
       BEQ    LF0DC   
       LDA    #$FF    
       STA    $EF     
       STA    $F1     
       STA    $F3     
       JMP    $70EF   
LF0DC: LDA    #$FE    
       STA    $EF     
       STA    $F1     
       STA    $F3     
       JMP    $70EF   
LF0E7: LDA    #$FD    
       STA    $EF     
       STA    $F1     
       STA    $F3     
LF0EF: LDY    #$29    
       STY    $80     
       LDX    #$7E    
       LDA    $E9     
       STA    COLUBK  
       STA    CTRLPF  
       LDA    $E8     
       CMP    #$02    
       BCS    LF10C   
       LDA    #$22    
       STA    $F5     
       LDA    #$A6    
       STA    $ED     
       JMP    $7114   
LF10C: LDA    #$00    
       STA    $F5     
       LDA    #$4E    
       STA    $ED     
LF114: STA    COLUPF  
       STA    WSYNC   
       LDA    #$FF    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       LDA    #$10    
       STA    NUSIZ0  
       STA    NUSIZ1  
       JMP    $714D   
LF129: TYA            
       JMP    $713B   
LF12D: STY    GRP1    
       JMP    $7175   
LF132: LDY    $B7     
       BEQ    LF129   
       DEY            
       LDA    ($B5),Y 
       STY    $B7     
LF13B: STA    WSYNC   
       STA    GRP0    
       LDY    $80     
       LDA    ($EE),Y 
       STA    PF0     
       LDA    ($F0),Y 
       STA    PF1     
       LDA    ($F2),Y 
       STA    PF2     
LF14D: DEX            
       CPX    $BD     
       BNE    LF156   
       LDY    #$08    
       STY    $B7     
LF156: LDA    #$00    
       CPX    $C7     
       BNE    LF15E   
       LDA    #$FF    
LF15E: STA    ENAM0   
       STA    WSYNC   
       CPX    $C4     
       BNE    LF16A   
       LDY    #$08    
       STY    $BA     
LF16A: LDY    $BA     
       BEQ    LF12D   
       DEY            
       LDA    ($B8),Y 
       STA    GRP1    
       STY    $BA     
LF175: LDA    #$00    
       CPX    $D4     
       BNE    LF17D   
       LDA    #$FF    
LF17D: STA    ENAM1   
       STA    WSYNC   
       CLC            
       LDA    $ED     
       ADC    #$01    
       STA    $ED     
       LDY    $B7     
       BEQ    LF1D5   
       DEY            
       LDA    ($B5),Y 
       STY    $B7     
LF191: STA    GRP0    
       DEX            
       CPX    $BD     
       BNE    LF19C   
       LDY    #$08    
       STY    $B7     
LF19C: LDA    #$00    
       CPX    $C7     
       BNE    LF1A4   
       LDA    #$FF    
LF1A4: STA    ENAM0   
       LDA    $ED     
       ORA.w  $00F5   
       CPX    $C4     
       BNE    LF1B3   
       LDY    #$08    
       STY    $BA     
LF1B3: STA    WSYNC   
       STA    COLUPF  
       LDY    $BA     
       BEQ    LF1D9   
       DEY            
       LDA    ($B8),Y 
       STA    GRP1    
       STY    $BA     
LF1C2: LDA    #$00    
       CPX    $D4     
       BNE    LF1CA   
       LDA    #$FF    
LF1CA: STA    ENAM1   
       DEC    $80     
       BMI    LF1DE   
       STA    HMCLR   
       JMP    $7132   
LF1D5: TYA            
       JMP    $7191   
LF1D9: STY    GRP1    
       JMP    $71C2   
LF1DE: LDA    #$00    
       STA    COLUBK  
       STA    WSYNC   
       LDA    #$FF    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       DEC    $C9     
       LDA    $B2     
       CMP    #$07    
       BNE    LF1FA   
       JSR    $799B   
       JMP    $7249   
LF1FA: LDA    #$20    
       LDX    #$00    
       JSR    $7ED5   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       LDA    #$28    
       LDX    #$01    
       JSR    $7ED5   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$00    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       LDA    #$01    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$0C    
       STA    COLUP1  
       STA    COLUP0  
       LDX    #$08    
LF228: STA    WSYNC   
       LDA    $7D81,X 
       STA    GRP0    
       LDA    $7D8A,X 
       STA    GRP1    
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       LDA    $7D9C,X 
       TAY            
       LDA    $7D93,X 
       STA    GRP0    
       STY    GRP1    
       STA    HMCLR   
       DEX            
       BPL    LF228   
LF249: LDA    #$20    
       STA    TIM64T  
       LDA    $C9     
       AND    #$07    
       BEQ    LF258   
       CMP    #$04    
       BNE    LF25B   
LF258: JSR    $78D5   
LF25B: LDA    SWCHB   
       AND    #$01    
       BEQ    LF269   
       LDA    $DF     
       BEQ    LF26C   
       JMP    $7323   
LF269: JMP    $731C   
LF26C: JSR    $7DA5   
       JSR    $7DD0   
       LDA    $C9     
       AND    #$07    
       BNE    LF27E   
       JSR    $7499   
LF27B: JMP    $7024   
LF27E: JSR    $756A   
       LDA    $C9     
       AND    #$07    
       CMP    #$01    
       BNE    LF292   
       JSR    $7CA0   
       JSR    $7814   
       JMP    $727B   
LF292: CMP    #$02    
       BEQ    LF29A   
       CMP    #$07    
       BNE    LF2A0   
LF29A: JSR    $7814   
       JMP    $727B   
LF2A0: CMP    #$03    
       BNE    LF2AD   
       JSR    $79D8   
       JSR    $7499   
       JMP    $727B   
LF2AD: CMP    #$05    
       BNE    LF2BA   
       JSR    $72CD   
       JSR    $7814   
       JMP    $727B   
LF2BA: CMP    #$04    
       BNE    LF2C7   
       LDA    $AB     
       CMP    #$03    
       BCC    LF2C7   
       JSR    $7814   
LF2C7: JSR    $7499   
       JMP    $727B   
LF2CD: LDA    $EC     
       CMP    #$07    
       BNE    LF2ED   
       LDX    #$00    
       LDA.w  $00E1   
       CMP    #$02    
       BEQ    LF2E1   
       STX    $E2     
       JMP    $72E3   
LF2E1: STX    $E3     
LF2E3: LDA    #$28    
       STA    $DF     
       LDA    #$01    
       STA    $E9     
       STA    $EA     
LF2ED: RTS            

LF2EE: LDX    #$05    
LF2F0: INC    $EC     
       BEQ    LF2FA   
       DEX            
       BNE    LF2F0   
       JMP    $7024   
LF2FA: LDA    #$01    
       STA    $DF     
       JSR    $7411   
       JMP    $7024   
LF304: INC    $EC     
       BEQ    LF30E   
       JSR    $7AB4   
       JMP    $7024   
LF30E: LDA    #$00    
       STA    $DF     
       JSR    $7411   
       LDA    #$68    
       STA    $BE     
       JMP    $7024   
LF31C: LDA    #$48    
       STA    $DF     
       JMP    $7024   
LF323: CMP    #$01    
       BEQ    LF363   
       CMP    #$49    
       BEQ    LF35D   
       CMP    #$48    
       BEQ    LF353   
       CMP    #$28    
       BEQ    LF2EE   
       CMP    #$18    
       BEQ    LF304   
       CMP    #$80    
       BCS    LF350   
       LDA    $C9     
       AND    #$7F    
       BNE    LF350   
       LDX    #$01    
       LDA    $E1     
       CMP    #$01    
       BNE    LF34B   
       LDX    #$02    
LF34B: STX    $E1     
       JSR    $7AB4   
LF350: JMP    $7024   
LF353: JSR    $73C6   
       LDA    #$49    
       STA    $DF     
       JMP    $7024   
LF35D: JSR    $73FB   
       JMP    $7024   
LF363: LDA    #$00    
       STA    $DF     
       LDA    $E1     
       CMP    #$02    
       BCS    LF396   
       LDA    $E0     
       STA    $E4     
       LDA    $E8     
       STA    $E5     
       LDA    $E3     
       BNE    LF380   
       LDA    $E2     
       BEQ    LF3BF   
       JMP    $73A9   
LF380: LDA    $E6     
       STA    $E0     
       STA    $D0     
       LDA    $E7     
       STA    $E8     
       DEC    $E3     
       LDA    #$02    
       STA    $E1     
       JSR    $7A13   
       JMP    $7024   
LF396: LDA    $E0     
       STA    $E6     
       LDA    $E8     
       STA    $E7     
       LDA    $E2     
       BNE    LF3A9   
       LDA    $E3     
       BEQ    LF3BF   
       JMP    $7380   
LF3A9: LDA    $E4     
       STA    $D0     
       STA    $E0     
       LDA    $E5     
       STA    $E8     
       DEC    $E2     
       LDA    #$01    
       STA    $E1     
       JSR    $7A13   
       JMP    $7024   
LF3BF: LDA    #$40    
       STA    $DF     
       JMP    $7024   
LF3C6: LDA    #$07    
       STA    $B2     
       LDA    #$14    
       STA    $D0     
       STA    $E0     
       STA    $E4     
       STA    $E6     
       LDA    #$01    
       STA    $E5     
       STA    $E7     
       STA    $E8     
       STA    $E1     
       LDA    #$00    
       STA    $E3     
       LDA    $AB     
       AND    #$01    
       BNE    LF3EC   
       LDA    #$05    
       STA    $E3     
LF3EC: LDA    #$04    
       STA    $E2     
       LDA    #$71    
       STA    $E9     
       STA    $EA     
       LDA    #$A6    
       STA    $ED     
       RTS            

LF3FB: JSR    $7FD6   
       LDX    $AB     
       CPX    #$03    
       BCC    LF409   
       LDX    #$12    
       JMP    $740B   
LF409: LDX    #$0A    
LF40B: STX    $D2     
       JSR    $7A13   
       RTS            

LF411: LDA    #$00    
       STA    $90     
       STA    $94     
       STA    $98     
       STA    $9C     
       STA    $8C     
       RTS            

LF41E: LDA    $BC     
       STA    $C0     
       LDA    $BD     
       STA    $C1     
       LDA    $BE     
       STA    $C2     
       LDX    $BC     
       LDY    $BD     
       LDA    $E1     
       CMP    #$02    
       BNE    LF43E   
       LDA    SWCHA   
       ASL            
       ASL            
       ASL            
       ASL            
       JMP    $7441   
LF43E: LDA    SWCHA   
LF441: ASL            
       BCS    LF456   
       LDA    $BE     
       CMP    #$80    
       BEQ    LF44E   
       LDA    #$80    
       BNE    LF450   
LF44E: LDA    #$60    
LF450: STA    $BE     
       INX            
       JMP    $7494   
LF456: ASL            
       BCS    LF46A   
       DEX            
       LDA    $BE     
       CMP    #$78    
       BEQ    LF464   
       LDA    #$78    
       BNE    LF466   
LF464: LDA    #$58    
LF466: STA    $BE     
       BNE    LF494   
LF46A: ASL            
       BCS    LF47E   
       DEY            
       LDA    $BE     
       CMP    #$70    
       BEQ    LF478   
       LDA    #$70    
       BNE    LF47A   
LF478: LDA    #$90    
LF47A: STA    $BE     
       BNE    LF494   
LF47E: ASL            
       BCS    LF494   
       CPY    #$7C    
       BCS    LF494   
       INY            
       LDA    $BE     
       CMP    #$68    
       BEQ    LF490   
       LDA    #$68    
       BNE    LF492   
LF490: LDA    #$88    
LF492: STA    $BE     
LF494: STX    $BC     
       STY    $BD     
       RTS            

LF499: LDA    $F6     
       CMP    #$1F    
       BEQ    LF4A5   
       LDA    $BE     
       CMP    #$98    
       BNE    LF4DD   
LF4A5: JSR    $7DEA   
       LDA    $84     
       ORA    #$01    
       STA    $E9     
       STA    COLUBK  
       DEC    $BF     
       LDA    $BF     
       BEQ    LF4B7   
       RTS            

LF4B7: LDA    $EA     
       STA    $E9     
       LDA    #$01    
       STA    COLUBK  
       LDA    #$00    
       STA    $BD     
       STA    $BE     
       LDA    $F6     
       CMP    #$1F    
       BEQ    LF4D3   
       JSR    $779A   
       LDA    #$01    
       STA    $DF     
       RTS            

LF4D3: LDA    #$07    
       STA    $EC     
       STA    $F6     
       JSR    $75E3   
       RTS            

LF4DD: LDA.w  $0002   
       AND    #$80    
       BEQ    LF4F1   
       LDA    $C0     
       STA    $BC     
       LDA    $C1     
       STA    $BD     
       LDA    $C2     
       STA    $BE     
       RTS            

LF4F1: JSR    $741E   
       LDA.w  $0002   
       AND    #$80    
       BNE    LF4FE   
       JSR    $74FF   
LF4FE: RTS            

LF4FF: LDA    $E1     
       CMP    #$02    
       BNE    LF50E   
       LDA.w  $000D   
       AND    #$80    
       BNE    LF53A   
       BEQ    LF515   
LF50E: LDA.w  $000C   
       AND    #$80    
       BNE    LF53A   
LF515: LDA    $C7     
       BNE    LF53A   
       LDX    $BC     
       LDY    $BD     
       LDA    $BE     
       CMP    #$60    
       BEQ    LF53B   
       CMP    #$80    
       BEQ    LF53B   
       CMP    #$58    
       BEQ    LF544   
       CMP    #$78    
       BEQ    LF544   
       CMP    #$70    
       BEQ    LF54D   
       CMP    #$90    
       BEQ    LF54D   
       JMP    $7557   
LF53A: RTS            

LF53B: LDA    #$01    
       INX            
       INX            
       INX            
       INX            
       INX            
       BNE    LF547   
LF544: LDA    #$02    
       DEX            
LF547: DEY            
       DEY            
       DEY            
       JMP    $755D   
LF54D: LDA    #$03    
       DEY            
       INX            
       INX            
       INX            
       INX            
       JMP    $7547   
LF557: LDA    #$04    
       INX            
       INX            
       INX            
       INX            
LF55D: STA    $C8     
       STX    $C6     
       STY    $C7     
       LDA    #$44    
       ORA    $DE     
       STA    $DE     
       RTS            

LF56A: LDA.w  $0004   
       AND    #$80    
       BEQ    LF576   
       LDA    #$00    
       STA    $C7     
       RTS            

LF576: LDX    $C6     
       LDY    $C7     
       LDA    $C7     
       BEQ    LF596   
       LDA    $C8     
       CMP    #$01    
       BEQ    LF595   
       CMP    #$02    
       BEQ    LF592   
       CMP    #$03    
       BEQ    LF58F   
       INY            
       BNE    LF596   
LF58F: DEY            
       BNE    LF596   
LF592: DEX            
       BNE    LF596   
LF595: INX            
LF596: STX    $C6     
       STY    $C7     
       RTS            

LF59B: LDA    $EC     
       CMP    #$07    
       BNE    LF5A2   
       RTS            

LF5A2: LDA    $F6     
       CMP    #$1F    
       BEQ    LF5E0   
       LDA    RSYNC   
       AND    #$80    
       BNE    LF5B1   
       JMP    $765B   
LF5B1: LDX    $CA     
       LDA    $8D,X   
       CMP    #$98    
       BNE    LF5BC   
       JMP    $7678   
LF5BC: LDA    $8C,X   
       BNE    LF5C3   
       JMP    $7688   
LF5C3: CMP    #$34    
       BCS    LF5F0   
       LDA    $8B,X   
       CMP    #$3E    
       BCC    LF5F0   
       CMP    #$5C    
       BCS    LF5F0   
LF5D1: LDA    $F6     
       CMP    #$1F    
       BEQ    LF5E0   
       LDA    #$1F    
       STA    $F6     
       LDA    #$80    
       JSR    $7DE0   
LF5E0: JSR    $74A5   
LF5E3: LDA    #$4C    
       STA    $C3     
       LDA    #$31    
       STA    $C4     
       LDA    #$98    
       STA    $C5     
       RTS            

LF5F0: INC    $CC     
       LDX    $CA     
       LDA    $CD     
       STA    $8B,X   
       LDA    $CE     
       STA    $8C,X   
       LDA    $CC     
       AND    #$37    
       CMP    #$37    
       BNE    LF608   
       LDA    #$04    
       STA    $CC     
LF608: STA    $8E,X   
       AND    #$03    
       BEQ    LF631   
       LDA    $C9     
       AND    #$30    
       BEQ    LF631   
       LDA    $8D,X   
       CMP    #$58    
       BEQ    LF64F   
       CMP    #$78    
       BEQ    LF64F   
       CMP    #$70    
       BEQ    LF653   
       CMP    #$90    
       BEQ    LF653   
       CMP    #$60    
       BEQ    LF657   
       CMP    #$80    
       BEQ    LF657   
       JMP    $764B   
LF631: LDA    $8D,X   
       CMP    #$58    
       BEQ    LF657   
       CMP    #$78    
       BEQ    LF657   
       CMP    #$68    
       BEQ    LF653   
       CMP    #$88    
       BEQ    LF653   
       CMP    #$60    
       BEQ    LF64F   
       CMP    #$80    
       BEQ    LF64F   
LF64B: LDA    #$58    
       BNE    LF659   
LF64F: LDA    #$70    
       BNE    LF659   
LF653: LDA    #$60    
       BNE    LF659   
LF657: LDA    #$68    
LF659: STA    $8D,X   
LF65B: INC    $CA     
       INC    $CA     
       INC    $CA     
       INC    $CA     
       LDA    $CA     
       CMP    #$14    
       BEQ    LF66C   
       JMP    $7670   
LF66C: LDA    #$00    
       STA    $CA     
LF670: LDX    $CA     
       LDA    $8D,X   
       CMP    #$98    
       BNE    LF688   
LF678: DEC    $8E,X   
       BEQ    LF67F   
       JMP    $7766   
LF67F: LDA    #$00    
       STA    $8C,X   
       STA    $8D,X   
       JSR    $7786   
LF688: LDA    $8C,X   
       BNE    LF6AA   
       LDA    $AB     
       CMP    #$03    
       BCC    LF6A1   
       LDA    $BB     
       BNE    LF6A1   
       LDA    $E0     
       CMP    #$0A    
       BCS    LF6A1   
       INC    $BB     
       JMP    $765B   
LF6A1: LDA    #$00    
       STA    $BB     
       STA    $CE     
       STA    $C4     
       RTS            

LF6AA: LDX    $CA     
       LDA    $8C,X   
       STA    $CE     
       LDA    $8B,X   
       STA    $CD     
       LDA    $8C,X   
       CMP    #$72    
       BCS    LF6C1   
       CMP    #$70    
       BCC    LF6C1   
       JMP    $76C4   
LF6C1: JMP    $76DC   
LF6C4: LDA    $8B,X   
       CMP    #$24    
       BCC    LF6DC   
       CMP    #$2A    
       BCC    LF6D9   
       CMP    #$6C    
       BCC    LF6DC   
       CMP    #$72    
       BCC    LF6D9   
       JMP    $76DC   
LF6D9: JMP    $7760   
LF6DC: LDA    $8E,X   
       BNE    LF6E3   
       JMP    $775C   
LF6E3: DEC    $8E,X   
       LDA    $8D,X   
       CMP    #$58    
       BEQ    LF73F   
       CMP    #$78    
       BEQ    LF74A   
       CMP    #$60    
       BEQ    LF74E   
       CMP    #$80    
       BEQ    LF758   
       CMP    #$70    
       BEQ    LF73B   
       CMP    #$90    
       BEQ    LF71E   
       CMP    #$68    
       BEQ    LF71A   
       LDA    #$68    
LF705: STA    $8D,X   
       INC    $8C,X   
       LDA    $8E,X   
       CMP    #$02    
       BCS    LF717   
       LDA    #$10    
       STA    $8E,X   
LF713: LDA    #$58    
       STA    $8D,X   
LF717: JMP    $7766   
LF71A: LDA    #$88    
       BNE    LF705   
LF71E: LDA    #$70    
LF720: STA    $8D,X   
       DEC    $8C,X   
       LDA    $8E,X   
       CMP    #$02    
       BCS    LF738   
       LDA    #$10    
       STA    $8E,X   
       LDA    $C9     
       AND    #$01    
       BEQ    LF713   
       LDA    #$60    
       STA    $8D,X   
LF738: JMP    $7766   
LF73B: LDA    #$90    
       BNE    LF720   
LF73F: LDA    #$78    
LF741: STA    $8D,X   
       DEC    $8B,X   
       DEC    $8B,X   
       JMP    $7766   
LF74A: LDA    #$58    
       BNE    LF741   
LF74E: LDA    #$80    
LF750: STA    $8D,X   
       INC    $8B,X   
       INC    $8B,X   
       BNE    LF766   
LF758: LDA    #$60    
       BNE    LF750   
LF75C: LDA    #$10    
       STA    $8E,X   
LF760: LDA    #$70    
       STA    $8D,X   
       DEC    $8C,X   
LF766: LDA    $8C,X   
       CMP    #$7C    
       BCC    LF76E   
       LDA    #$7C    
LF76E: STA    $C4     
       LDA    $8B,X   
       STA    $C3     
       LDA    $8D,X   
       STA    $C5     
       LDA    RSYNC   
       AND    #$80    
       BNE    LF785   
       LDA    $D4     
       BNE    LF785   
       JSR    $77BD   
LF785: RTS            

LF786: DEC    $E0     
       LDA    $E0     
       BNE    LF7BC   
       LDA    $BE     
       CMP    #$98    
       BNE    LF793   
       RTS            

LF793: JSR    $779A   
       JSR    $7A13   
       RTS            

LF79A: LDA    $E0     
       BNE    LF7BC   
       LDA    #$14    
       STA    $E0     
       STA    $D0     
       INC    $E8     
       LDA    $E8     
       CMP    #$04    
       BNE    LF7B0   
       LDA    #$02    
       STA    $E8     
LF7B0: LDA    $E1     
       CMP    #$02    
       BEQ    LF7BA   
       INC    $E2     
       BNE    LF7BC   
LF7BA: INC    $E3     
LF7BC: RTS            

LF7BD: LDA    $8B,X   
       STA    $D6     
       LDA    $8C,X   
       STA    $D7     
       LDA    $8D,X   
       CMP    #$60    
       BEQ    LF7E2   
       CMP    #$80    
       BEQ    LF7E2   
       CMP    #$58    
       BEQ    LF7F1   
       CMP    #$78    
       BEQ    LF7F1   
       CMP    #$70    
       BEQ    LF7F6   
       CMP    #$90    
       BEQ    LF7F6   
       JMP    $77FB   
LF7E2: LDA    #$01    
LF7E4: INC    $D6     
       INC    $D6     
       INC    $D6     
LF7EA: DEC    $D7     
       DEC    $D7     
       JMP    $7803   
LF7F1: LDA    #$02    
       JMP    $77EA   
LF7F6: LDA    #$03    
       JMP    $77E4   
LF7FB: LDA    #$04    
       INC    $D6     
       INC    $D6     
       INC    $D6     
LF803: STA    $D5     
       LDA    $D6     
       STA    $D3     
       LDA    $D7     
       STA    $D4     
       LDA    #$11    
       ORA    $DE     
       STA    $DE     
       RTS            

LF814: LDA    $EC     
       CMP    #$07    
       BNE    LF81B   
       RTS            

LF81B: LDA    COLUP1  
       AND    #$40    
       BEQ    LF827   
       LDA    #$00    
       STA    $D4     
       STA    $C7     
LF827: LDA    $D4     
       CMP    #$2D    
       BCC    LF847   
       LDA.w  $0005   
       AND    #$80    
       BEQ    LF84C   
       LDA    $D4     
       CMP    #$34    
       BCS    LF847   
       LDA    $D3     
       CMP    #$3E    
       BCC    LF847   
       CMP    #$5C    
       BCS    LF847   
       JMP    $75D1   
LF847: LDA    #$00    
       STA    $D4     
       RTS            

LF84C: LDX    $D3     
       LDY    $D4     
       LDA    $D4     
       BEQ    LF86C   
       LDA    $D5     
       CMP    #$01    
       BEQ    LF86B   
       CMP    #$02    
       BEQ    LF868   
       CMP    #$03    
       BEQ    LF865   
       INY            
       BNE    LF86C   
LF865: DEY            
       BNE    LF86C   
LF868: DEX            
       BNE    LF86C   
LF86B: INX            
LF86C: STX    $D3     
       STY    $D4     
       RTS            

LF871: AND    #$04    
       BEQ    LF87F   
       LDA    $DE     
       AND    #$FB    
       STA    $DE     
       LDA    #$02    
       STA    $DC     
LF87F: LDA    #$08    
       STA    AUDC0   
       DEC    $DC     
       BMI    LF899   
       LDX    $DC     
       LDA    $7FCE,X 
       STA    AUDF0   
       LDA    #$17    
       STA    AUDV0   
       LDA    $DE     
       AND    #$3B    
       JMP    $78E1   
LF899: LDA    #$00    
       STA    AUDV0   
       LDA    $DE     
       AND    #$BB    
       STA    $DE     
       AND    #$3B    
       JMP    $78E1   
LF8A8: AND    #$01    
       BEQ    LF8B6   
       LDA    $DE     
       AND    #$FE    
       STA    $DE     
       LDA    #$02    
       STA    $DD     
LF8B6: LDA    #$08    
       STA    AUDC1   
       DEC    $DD     
       BMI    LF8CA   
       LDX    $DD     
       LDA    $7FD4,X 
       STA    AUDF1   
       LDA    #$16    
       STA    AUDV1   
       RTS            

LF8CA: LDA    #$00    
       STA    AUDV1   
       LDA    $DE     
       AND    #$EE    
       STA    $DE     
       RTS            

LF8D5: LDA    $DE     
       BEQ    LF8EA   
       CMP    #$80    
       BCS    LF8F1   
LF8DD: CMP    #$40    
       BCS    LF871   
LF8E1: CMP    #$20    
       BCS    LF94A   
LF8E5: CMP    #$10    
       BCS    LF8A8   
       RTS            

LF8EA: LDA    #$00    
       STA    AUDV0   
       STA    AUDV1   
       RTS            

LF8F1: AND    #$08    
       BEQ    LF907   
       LDA    $DE     
       AND    #$F7    
       STA    $DE     
       LDA    #$04    
       STA    $DC     
       LDA    #$0A    
       STA    $F4     
       LDA    #$FF    
       STA    $DA     
LF907: LDA    #$08    
       STA    AUDC0   
       LDX    $DC     
       LDA.w  $00DA   
       CMP    $7FCA,X 
       BCC    LF923   
       DEX            
       BMI    LF92E   
       STX    $DC     
       LDA    $7FCA,X 
       STA    AUDV0   
       LDA    #$15    
       STA    $DA     
LF923: STA    AUDF0   
       INC    $DA     
       LDA    $DE     
       AND    #$37    
       JMP    $78E1   
LF92E: LDA    $F4     
       STA    AUDV0   
       ORA    #$10    
       STA    AUDF0   
       DEC    $F4     
       BMI    LF943   
       LDA    $DE     
       AND    #$33    
       STA    $DE     
       JMP    $78E1   
LF943: LDA    $DE     
       AND    #$77    
       JMP    $78DD   
LF94A: AND    #$02    
       BEQ    LF960   
       LDA    $DE     
       AND    #$FD    
       STA    $DE     
       LDA    #$04    
       STA    $DD     
       LDA    #$0D    
       STA    $F4     
       LDA    #$FF    
       STA    $DB     
LF960: LDA    #$08    
       STA    AUDC1   
       LDX    $DD     
       LDA.w  $00DB   
       CMP    $7FD0,X 
       BCC    LF97C   
       DEX            
       BMI    LF981   
       STX    $DD     
       LDA    $7FD0,X 
       STA    AUDV1   
       LDA    #$14    
       STA    $DB     
LF97C: STA    AUDF1   
       INC    $DB     
       RTS            

LF981: LDA    $F4     
       STA    AUDV1   
       ORA    #$10    
       STA    AUDF1   
       DEC    $F4     
       BMI    LF994   
       LDA    $DE     
       AND    #$DD    
       STA    $DE     
       RTS            

LF994: LDA    $DE     
       AND    #$11    
       JMP    $78E5   
LF99B: LDA    #$48    
       LDX    #$00    
       JSR    $7ED5   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       LDA    #$50    
       LDX    #$01    
       JSR    $7ED5   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$00    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       JSR    $7CE3   
       LDA    #$1C    
       STA    COLUP0  
       STA    COLUP1  
       LDY    #$07    
LF9C6: STA    WSYNC   
       LDA    ($85),Y 
       STA    GRP0    
       LDA    ($87),Y 
       STA    GRP1    
       STA    HMCLR   
       DEY            
       BPL    LF9C6   
       STA    WSYNC   
       RTS            

LF9D8: LDA    $B2     
       CMP    #$07    
       BNE    LFA0B   
       DEC    $8A     
       BNE    LF9E6   
       LDA    #$07    
       STA    $8A     
LF9E6: LDA    $E0     
       CMP    #$14    
       BCC    LF9F0   
       LDA    #$20    
       BNE    LF9F7   
LF9F0: CMP    #$0A    
       BCC    LF9F7   
       CLC            
       ADC    #$06    
LF9F7: STA    $89     
       LSR            
       LSR            
       LSR            
       LSR            
       JSR    $7A0C   
       STA    $85     
       LDA    $89     
       AND    #$0F    
       JSR    $7A0C   
       STA    $87     
LFA0B: RTS            

LFA0C: ASL            
       ASL            
       ASL            
       CLC            
       ADC    #$08    
       RTS            

LFA13: LDA    #$00    
       STA    $C4     
       STA    $C7     
       STA    $D4     
       STA    $DE     
       LDA    #$4C    
       STA    $BC     
       LDA    #$37    
       STA    $BD     
       JSR    $7411   
       JSR    $7E81   
       LDA    #$61    
       STA    $89     
       LDA    #$01    
       STA    $8A     
       LDA    $E8     
       CMP    #$02    
       BEQ    LFA40   
       BCS    LFA45   
       LDA    #$71    
       JMP    $7A47   
LFA40: LDA    #$A1    
       JMP    $7A47   
LFA45: LDA    #$01    
LFA47: STA    $E9     
       STA    $EA     
       RTS            

LFA4C: LDA    #$28    
       LDX    #$00    
       JSR    $7ED5   
       LDA    #$58    
       LDX    #$01    
       JSR    $7ED5   
       STA    WSYNC   
       STA    HMOVE   
       LDX    #$1A    
       LDA    $E1     
       CMP    #$02    
       BCC    LFA68   
       LDX    #$A6    
LFA68: STX    COLUP0  
       STX    COLUP1  
       LDA    #$03    
       STA    NUSIZ0  
       LDA    #$01    
       STA    NUSIZ1  
       LDY    #$07    
LFA76: STA    WSYNC   
       STA    HMCLR   
       LDA    ($9F),Y 
       STA.w  $001B   
       LDA    ($A5),Y 
       STA    GRP1    
       LDA    ($A1),Y 
       LDA    ($A1),Y 
       LDA    ($A1),Y 
       STA    GRP0    
       LDA    ($A3),Y 
       STA    GRP0    
       NOP            
       LDA    ($A7),Y 
       STA    GRP1    
       STA    GRP1    
       DEY            
       BNE    LFA76   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       LDA    $E8     
       CMP    #$02    
       BEQ    LFAAB   
       BCS    LFAAF   
       LDA    #$46    
       BNE    LFAB1   
LFAAB: LDA    #$D8    
       BNE    LFAB1   
LFAAF: LDA    #$46    
LFAB1: STA    COLUP1  
       RTS            

LFAB4: LDX    #$02    
       LDY    #$08    
LFAB8: LDA    $81,X   
       AND    #$F0    
       LSR            
       ADC    #$08    
       STA.wy $009F,Y 
       LDA    $81,X   
       AND    #$0F    
       JSR    $7A0C   
       STA.wy $00A1,Y 
       LDA    #$FC    
       STA.wy $00A0,Y 
       STA.wy $00A2,Y 
       DEY            
       DEY            
       DEY            
       DEY            
       DEX            
       BPL    LFAB8   
       LDA    $E1     
       CMP    #$01    
       BEQ    LFAED   
       LDA    $A5     
       STA    $9F     
       LDA    $A7     
       STA    $A1     
       LDA    $A9     
       STA    $A3     
LFAED: LDA    #$08    
       STA    $A5     
       STA    $A7     
       LDX    #$00    
       LDA    #$08    
       CMP    $9F     
       BNE    LFB0F   
       STX    $9F     
       CMP    $A1     
       BNE    LFB0F   
       STX    $A1     
       CMP    $A3     
       BNE    LFB0F   
       STX    $A3     
       CMP    $A5     
       BNE    LFB0F   
       STX    $A5     
LFB0F: RTS            

LFB10: LDA    $AC     
       CLC            
       LDX    #$02    
       SED            
LFB16: ADC.wx $0081,X 
       STA    $81,X   
       LDA    #$00    
       DEX            
       BNE    LFB16   
       CLD            
       LDA    $AD     
       CLC            
       LDX    #$01    
       SED            
LFB27: ADC    $AE,X   
       STA    $AE,X   
       STA    $B0,X   
       LDA    #$00    
       DEX            
       BPL    LFB27   
       CLD            
       LDX    #$04    
LFB35: CLC            
       ASL    $B1     
       ROL    $B0     
       DEX            
       BNE    LFB35   
       LDA    $B0     
       STA    $81     
       LDA    $82     
       AND    #$0F    
       ORA    $B1     
       STA    $82     
       JSR    $7AB4   
       RTS            

LFB4D: .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$3C,$66,$66,$66
       .byte $66,$66,$3C,$00,$3C,$18,$18,$18,$18,$38,$18,$00,$7E,$60,$60,$3C
       .byte $06,$46,$3C,$00,$3C,$46,$06,$1C,$06,$46,$3C,$00,$0C,$0C,$7E,$6C
       .byte $3C,$1C,$0C,$00,$7C,$06,$06,$7C,$60,$60,$7E,$00,$3C,$66,$66,$7C
       .byte $60,$62,$3C,$00,$18,$18,$18,$0C,$06,$66,$7E,$00,$3C,$66,$66,$3C
       .byte $66,$66,$3C,$00,$3C,$46,$06,$3E,$66,$66,$3C,$00,$00,$00,$CD,$3B
       .byte $F7,$3B,$CD,$00,$00,$00,$B3,$DC,$EF,$DC,$B3,$00,$00,$00,$FF,$6E
       .byte $DB,$7E,$99,$00,$00,$00,$99,$7E,$DB,$6E,$FF,$00,$00,$00,$CD,$36
       .byte $FA,$36,$CD,$00,$00,$00,$B3,$6C,$5F,$6C,$B3,$00,$00,$00,$FF,$5A
       .byte $F7,$7E,$99,$00,$00,$00,$99,$7E,$F7,$5A,$FF,$00,$92,$44,$10,$BA
       .byte $10,$44,$92
LFCA0: LDY    $E8     
       INY            
       INY            
       INY            
       CPY    #$06    
       BNE    LFCAB   
       LDY    #$05    
LFCAB: STY    $D1     
       LDA    $D0     
       BEQ    LFCE2   
       LDY    #$00    
       LDX    #$10    
LFCB5: LDA    $8C,X   
       BEQ    LFCBA   
       INY            
LFCBA: DEX            
       DEX            
       DEX            
       DEX            
       BPL    LFCB5   
       CPY    $D1     
       BCS    LFCE2   
LFCC4: INX            
       INX            
       INX            
       INX            
       LDA    $8C,X   
       BNE    LFCC4   
       LDA    #$7C    
       STA    $8C,X   
       DEC    $D0     
       LDA    $8A     
       ADC    $C9     
       ASL            
       ASL            
       ASL            
       LSR            
       ADC    #$0C    
       STA    $8B,X   
       LDA    #$70    
       STA    $8D,X   
LFCE2: RTS            

LFCE3: LDA    #$00    
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    GRP0    
       STA    GRP1    
       STA    ENAM0   
       STA    ENAM1   
       STA    ENABL   
       RTS            

LFCF4: .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$F0,$10,$10,$10
       .byte $10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$F0
       .byte $10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$F0,$10,$10
       .byte $10,$10,$10,$10,$10,$10,$F0,$FF,$00,$00,$00,$00,$40,$40,$40,$40
       .byte $43,$40,$40,$40,$40,$7F,$00,$00,$00,$00,$00,$00,$00,$00,$00,$FF
       .byte $80,$80,$80,$80,$08,$08,$08,$08,$F8,$00,$00,$00,$80,$F1,$00,$00
       .byte $00,$FF,$FF,$E0,$C0,$80,$00,$00,$00,$00,$00,$FF,$00,$00,$00,$00
       .byte $07,$00,$80,$80,$80,$FF,$80,$80,$80,$80,$E0,$80,$80,$80,$80,$02
       .byte $02,$02,$02,$FE,$00,$00,$00,$00,$C7,$00,$00,$00,$FF
LFD81: .byte $00,$FC,$80,$40,$20,$10,$08,$04,$FC
LFD8A: .byte $00,$90,$90,$90,$92,$97,$1D,$98,$90
LFD93: .byte $00,$50,$50,$5F,$50,$50,$C9,$CF,$46
LFD9C: .byte $00,$9D,$A3,$A3,$A7,$A0,$20,$21,$1E
LFDA5: LDA    COLUP1  
       AND    #$80    
       BEQ    LFDB9   
       LDA    #$02    
       STA    $D9     
       JSR    $7DDA   
       JSR    $7786   
       JSR    $7EA5   
LFDB8: RTS            

LFDB9: LDA    VSYNC   
       AND    #$80    
       BEQ    LFDB8   
       LDX    $CA     
       LDA    $8D,X   
       CMP    #$98    
       BNE    LFDC8   
       RTS            

LFDC8: LDA    #$01    
       STA    $D9     
       JSR    $7EA5   
       RTS            

LFDD0: LDA    VBLANK  
       AND    #$80    
       BEQ    LFDE9   
       LDA    #$00    
       STA    $D4     
LFDDA: LDA    #$98    
       STA    $BE     
       LDA    #$28    
LFDE0: STA    $BF     
       LDA    #$E0    
       STA    $84     
       JSR    $7ECE   
LFDE9: RTS            

LFDEA: LDX    #$00    
       LDA    #$00    
LFDEE: STA    $8B,X   
       DEC    $84     
       INX            
       CPX    #$14    
       BNE    LFDEE   
       STA    $C5     
       STA    $C7     
       STA    $D4     
       STA    $C4     
       RTS            

LFE00: .byte $F0,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10
       .byte $10,$30,$70,$F0,$F0,$70,$30,$10,$10,$10,$10,$10,$10,$10,$10,$10
       .byte $10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$F0,$FF,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$C0,$C0
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$FF,$FF,$E0,$C0,$80,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$80,$C0,$E0,$C0,$F0,$FC,$FE,$FE,$E0,$80,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $FF
LFE81: LDA    $E1     
       CMP    #$02    
       BEQ    LFE8C   
       LDA    $E2     
       JMP    $7E8E   
LFE8C: LDA    $E3     
LFE8E: CMP    #$09    
       BCC    LFE94   
       LDA    #$09    
LFE94: JSR    $7A0C   
       CLC            
       ADC    #$08    
       STA    $BE     
       LDA    #$18    
       STA    $DF     
       LDA    #$C0    
       STA    $EC     
       RTS            

LFEA5: LDX    $CA     
       LDA    #$98    
       STA    $8D,X   
       LDA    #$04    
       STA    $8E,X   
       LDA    #$00    
       STA    $C7     
       LDA    $E1     
       CMP    #$02    
       BNE    LFEC3   
       LDA    $D9     
       STA    $AC     
       LDA    #$00    
       STA    $AD     
       BEQ    LFECB   
LFEC3: LDA    $D9     
       STA    $AD     
       LDA    #$00    
       STA    $AC     
LFECB: JSR    $7B10   
LFECE: LDA    #$AA    
       ORA    $DE     
       STA    $DE     
       RTS            

LFED5: CLC            
       ADC    #$2E    
       TAY            
       AND    #$0F    
       STA.w  $00B4   
       TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       CLC            
       ADC.w  $00B4   
       CMP    #$0F    
       BCC    LFEEF   
       SBC    #$0F    
       INY            
LFEEF: EOR    #$07    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    HMP0,X  
       STA    WSYNC   
LFEF9: DEY            
       BPL    LFEF9   
       STA    RESP0,X 
       RTS            

LFEFF: .byte $FF,$F0,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10
       .byte $10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10
       .byte $10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$FF,$FF,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$FF,$FF,$E0,$C0,$80,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$E0,$00,$00,$00,$00,$00
       .byte $00,$FF
LFF81: LDA    INTIM   
       BNE    LFF81   
       LDA    #$82    
       STA    WSYNC   
       STA    VBLANK  
       STA    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    VSYNC   
       STA    VBLANK  
       STA    COLUPF  
       LDA    #$23    
       STA    TIM64T  
       RTS            

LFFA2: LDA    #$00    
       STA    $AC     
       STA    $AD     
       STA    $82     
       STA    $81     
       STA    $AE     
       STA    $AF     
       STA    $B0     
       STA    $B1     
       LDA    #$01    
       STA    $83     
       JSR    $7B10   
       LDA    #$FC    
       STA    $B6     
       STA    $B9     
       STA    $86     
       STA    $88     
       LDA    #$10    
       STA    $CA     
       RTS            

LFFCA: .byte $1B,$1F,$1E,$1A
LFFCE: .byte $06,$08
LFFD0: .byte $1C,$1E,$1D,$18
LFFD4: .byte $04,$06
LFFD6: LDA    #$00    
       STA    $AE     
       STA    $AF     
       STA    $C4     
       STA    $83     
       STA    $81     
       STA    $82     
       STA    $EC     
       RTS            

LFFE7: .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$00,$F0,$00,$F0
