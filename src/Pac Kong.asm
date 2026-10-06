; Disassembly of roms/Pac Kong.bin
; Disassembled Tue Oct  6 15:22:40 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Pac Kong.bin
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
TIM8T   =  $0295
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
       LDA    #$1C    
       STA    TIM64T  
       JSR    $7D9C   
       LDA    #$30    
       STA    $C5     
       LDA    #$C1    
       STA    $C6     
       JSR    $79FB   
       LDA    #$01    
       STA    $AB     
       STA    $D9     
       STA    $E3     
       LDA    #$20    
       STA    $D0     
       LDA    #$14    
       STA    $C3     
LF02E: JSR    $7DD6   
       LDA    #$00    
       LDX    $D8     
       CPX    #$01    
       BEQ    LF03B   
       LDA    #$4E    
LF03B: STA    $DB     
       STA    $DD     
       STA    $DF     
       LDA    $B2     
       CMP    #$07    
       BEQ    LF057   
       INC    $C7     
       BNE    LF057   
       INC    $D8     
       LDA    $D8     
       CMP    #$03    
       BCC    LF057   
       LDA    #$01    
       STA    $D8     
LF057: LDA    SWCHB   
       AND    #$02    
       BNE    LF08D   
       LDA    $D0     
       CMP    #$88    
       BCS    LF07D   
       LDX    $AB     
       INX            
       CPX    #$03    
       BCC    LF06D   
       LDX    #$01    
LF06D: STX    $AB     
LF06F: LDA    #$00    
       STA    $B2     
       STA    AUDV0   
       STA    AUDV1   
       LDA    #$88    
       STA    $D0     
       BNE    LF0BB   
LF07D: LDA    $AB     
       STA    $83     
       LDA    #$00    
       STA    $81     
       STA    $82     
       JSR    $7B33   
       JMP    $706F   
LF08D: LDA    $D0     
       BEQ    LF098   
       AND    #$7F    
       STA    $D0     
       JMP    $70BB   
LF098: LDA    $D8     
       CMP    #$01    
       BNE    LF0A6   
       LDA    $C2     
       AND    #$07    
       CMP    #$07    
       BEQ    LF0BB   
LF0A6: LDA    $C2     
       AND    #$01    
       BEQ    LF0B2   
       JSR    $74C4   
       JMP    $70BB   
LF0B2: LDA    $C2     
       AND    #$07    
       BEQ    LF0BB   
       JSR    $76AA   
LF0BB: LDA    #$4D    
       STA    $80     
       STA    CXCLR   
       LDA    #$00    
       STA    $B9     
       STA    $B6     
       LDA    $BC     
       STA    $B4     
       LDA    $C6     
       STA    $E1     
       LDA    #$FC    
       STA    $E2     
       JSR    $7BDB   
LF0D6: LDA    INTIM   
       BNE    LF0D6   
       LDA    #$16    
       STA    TIM64T  
       JSR    $7ADB   
       LDA    $C5     
       LDX    #$01    
       JSR    $7BB1   
       LDA    $BA     
       LDX    #$00    
       JSR    $7BB1   
LF0F1: LDA    INTIM   
       BNE    LF0F1   
       STA    WSYNC   
       STA    HMOVE   
       LDY    #$09    
       STY    $B9     
       LDA    #$00    
       STA    COLUPF  
       STA    PF0     
       STA    PF2     
       STA    $E4     
       LDA    #$20    
       STA    PF1     
       LDX    #$4C    
       STX    COLUP1  
       LDX    #$98    
       LDA    $D8     
       CMP    #$01    
       BNE    LF11A   
       LDX    #$78    
LF11A: STX    $F0     
       LDA    #$05    
       STA    NUSIZ1  
LF120: CPY    #$06    
       BEQ    LF128   
       CPY    #$04    
       BNE    LF12C   
LF128: LDA    #$00    
       STA    PF1     
LF12C: LDY    $B9     
       BNE    LF134   
       LDA    #$00    
       STA    PF1     
LF134: STA    WSYNC   
       LDA    ($E1),Y 
       STA    GRP1    
       STA    HMCLR   
       CPY    #$03    
       BNE    LF144   
       LDA    #$20    
       STA    PF1     
LF144: CPY    #$05    
       BNE    LF14C   
       LDA    #$70    
       STA    PF1     
LF14C: CPY    #$07    
       BNE    LF154   
       LDA    #$1E    
       STA    COLUPF  
LF154: DEC    $B9     
       STA    WSYNC   
       BPL    LF120   
       LDY    #$4D    
       LDA    ($DB),Y 
       STA    PF0     
       LDA    $F0     
       STA    COLUPF  
       LDA    ($DD),Y 
       STA    PF1     
       LDA    ($DF),Y 
       STA    PF2     
       INC    $B9     
       LDA    #$24    
       STA    TIM8T   
       LDA    #$00    
       STA    GRP1    
       STA    NUSIZ1  
       LDA    $BE     
       LDX    #$01    
       JSR    $7BB1   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$00    
       STA    COLUBK  
       LDX    #$73    
LF18A: LDA    INTIM   
       BNE    LF18A   
       JMP    $71AE   
LF192: LDY    $B6     
       LDA    ($B4),Y 
       DEY            
       STA    WSYNC   
       BMI    LF19D   
       STY    $B6     
LF19D: STA    GRP0    
       LDY    $80     
       LDA    ($DB),Y 
       STA    PF0     
       LDA    ($DD),Y 
       STA    PF1     
       LDA    ($DF),Y 
       STA    PF2     
       DEX            
LF1AE: CPX    $BB     
       BNE    LF1B6   
       LDY    #$10    
       STY    $B6     
LF1B6: LDY    $B6     
       CPY    #$10    
       BCS    LF1C6   
       LDA    #$FF    
       CPY    #$0D    
       BCS    LF1C4   
       LDA    #$29    
LF1C4: STA    COLUP0  
LF1C6: LDA    ($B4),Y 
       DEY            
       BMI    LF1CD   
       STY    $B6     
LF1CD: LDY    $B9     
       DEC    $E4     
       STA    GRP0    
       LDA    $E4     
       BPL    LF1DB   
       LDA    #$00    
       STA    $E4     
LF1DB: LDA    $E4     
       CLC            
       ADC    $F0     
       ORA    #$04    
       STA    COLUPF  
       LDA    ($B7),Y 
       DEY            
       BMI    LF1ED   
       STY    $B9     
       STA    GRP1    
LF1ED: CPX    $BF     
       BNE    LF1F5   
       LDY    #$0A    
       STY    $B9     
LF1F5: STA    HMCLR   
       DEC    $80     
       BPL    LF192   
       LDA    #$00    
       STA    REFP0   
       STA    REFP1   
       LDY    $B6     
       LDA    ($B4),Y 
       STA    WSYNC   
       STA    GRP0    
       LDA    #$CF    
       STA    PF0     
       LDA    #$FF    
       STA    PF1     
       STA    PF2     
       LDX    #$1A    
       LDX    $F0     
       CMP    #$01    
       BNE    LF21D   
       LDX    $F0     
LF21D: STX    COLUPF  
       LDA    #$00    
       STA    COLUBK  
       LDA    $B2     
       CMP    #$07    
       BNE    LF22F   
       JSR    $7A5E   
       JMP    $7284   
LF22F: LDY    $B6     
       LDA    ($B4),Y 
       STA    GRP0    
       LDA    #$20    
       LDX    #$00    
       JSR    $7BB1   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       LDA    #$28    
       LDX    #$01    
       JSR    $7BB1   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$00    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       LDA    #$01    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$FF    
       STA    COLUP1  
       STA    COLUP0  
       LDX    #$07    
LF263: STA    WSYNC   
       LDA    $7F9C,X 
       STA    GRP0    
       LDA    $7FA4,X 
       STA    GRP1    
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       LDA    $7FB4,X 
       TAY            
       LDA    $7FAC,X 
       STA    GRP0    
       STY    GRP1    
       STA    HMCLR   
       DEX            
       BPL    LF263   
LF284: LDA    #$30    
       STA    TIM64T  
       INC    $C2     
       LDA    $C2     
       AND    #$07    
       BEQ    LF295   
       CMP    #$04    
       BNE    LF295   
LF295: LDA    SWCHB   
       AND    #$01    
       BEQ    LF2A3   
       LDA    $D0     
       BEQ    LF2A6   
       JMP    $7328   
LF2A3: JMP    $7321   
LF2A6: JSR    $79C4   
       LDA    $C2     
       AND    #$07    
       BEQ    LF2C4   
       CMP    #$03    
       BEQ    LF2C4   
       CMP    #$01    
       BEQ    LF2CD   
       CMP    #$04    
       BEQ    LF2EF   
       JSR    $7A97   
       JSR    $776B   
       JMP    $702E   
LF2C4: JSR    $73FB   
       JSR    $747C   
       JMP    $702E   
LF2CD: LDA    $ED     
       CMP    #$58    
       BEQ    LF2EF   
       LDX    $B3     
       BNE    LF2D9   
       LDX    #$46    
LF2D9: DEX            
       LDA    #$00    
       STA    AUDV1   
       LDA    #$0C    
       STA    AUDC1   
       LDA    $7E9C,X 
       STA    AUDF1   
       BNE    LF2ED   
       STA    AUDV0   
       STA    AUDV1   
LF2ED: STX    $B3     
LF2EF: JMP    $702E   
LF2F2: LDX    #$0A    
LF2F4: INC    $DA     
       BEQ    LF2FE   
       DEX            
       BNE    LF2F4   
       JMP    $702E   
LF2FE: LDA    #$01    
       STA    $D0     
       JSR    $73EE   
       JMP    $702E   
LF308: LDA    $C2     
       AND    #$01    
       BEQ    LF312   
       INC    $DA     
       BEQ    LF315   
LF312: JMP    $702E   
LF315: LDA    #$00    
       STA    $D0     
       STA    $BF     
       JSR    $73EE   
       JMP    $702E   
LF321: LDA    #$48    
       STA    $D0     
       JMP    $702E   
LF328: CMP    #$01    
       BEQ    LF34F   
       CMP    #$49    
       BEQ    LF349   
       CMP    #$48    
       BEQ    LF33F   
       CMP    #$28    
       BEQ    LF2F2   
       CMP    #$18    
       BEQ    LF308   
       JMP    $702E   
LF33F: JSR    $73A0   
       LDA    #$49    
       STA    $D0     
       JMP    $702E   
LF349: JSR    $73C7   
       JMP    $702E   
LF34F: LDA    #$00    
       STA    $D0     
       STA    AUDV1   
       LDA    $D1     
       CMP    #$02    
       BCS    LF37A   
       LDA    $D8     
       STA    $D4     
       LDA    $D3     
       BNE    LF36A   
       LDA    $D2     
       BEQ    LF399   
       JMP    $7389   
LF36A: LDA    $D6     
       STA    $D8     
       DEC    $D3     
       LDA    #$02    
       STA    $D1     
       JSR    $79FB   
       JMP    $702E   
LF37A: LDA    $D8     
       STA    $D6     
       LDA    $D2     
       BNE    LF389   
       LDA    $D3     
       BEQ    LF399   
       JMP    $736A   
LF389: LDA    $D4     
       STA    $D8     
       DEC    $D2     
       LDA    #$01    
       STA    $D1     
       JSR    $79FB   
       JMP    $702E   
LF399: LDA    #$40    
       STA    $D0     
       JMP    $702E   
LF3A0: LDA    #$07    
       STA    $B2     
       LDA    #$01    
       STA    $D4     
       STA    $D6     
       STA    $D8     
       STA    $D1     
       LDA    #$00    
       STA    $C7     
       STA    $D3     
       LDA    $AB     
       AND    #$01    
       BNE    LF3BE   
       LDA    #$05    
       STA    $D3     
LF3BE: LDA    #$04    
       STA    $D2     
       LDA    #$71    
       STA    $D9     
       RTS            

LF3C7: LDA    #$00    
       STA    $D0     
       STA    $AE     
       STA    $AF     
       STA    $83     
       STA    $81     
       STA    $82     
       STA    $DA     
       STA    $9F     
       STA    $A1     
       STA    $A5     
       STA    $A7     
       STA    $B3     
       JSR    $73EE   
       LDA    #$08    
       STA    $A3     
       STA    $A9     
       JSR    $79FB   
       RTS            

LF3EE: LDA    #$00    
       STA    $87     
       STA    $8C     
       STA    $91     
       STA    $96     
       STA    $BF     
       RTS            

LF3FB: LDA    $ED     
       CMP    #$58    
       BNE    LF402   
       RTS            

LF402: LDA    $BC     
       CMP    #$9C    
       BEQ    LF430   
       CMP    #$8A    
       BEQ    LF430   
       LDY    #$00    
       LDX    #$0F    
LF410: LDA    $87,X   
       BEQ    LF415   
       INY            
LF415: DEX            
       DEX            
       DEX            
       DEX            
       DEX            
       BPL    LF410   
       CPY    #$04    
       BCS    LF430   
LF420: INX            
       INX            
       INX            
       INX            
       INX            
       LDA    $87,X   
       BNE    LF420   
       LDA    #$76    
       STA    $87,X   
       JMP    $7431   
LF430: RTS            

LF431: LDA    #$B8    
       STA    $88,X   
       LDA    $C5     
       STA    $86,X   
       LDA    $E8     
       AND    #$03    
       STA    $89,X   
       BEQ    LF443   
       INC    $89,X   
LF443: BNE    LF449   
       LDA    #$B0    
       STA    $88,X   
LF449: INC    $E3     
       LDA    $E3     
       AND    #$01    
       BNE    LF459   
       SEC            
       LDA    #$00    
       SBC.wx $0089,X 
       STA    $89,X   
LF459: CPX    #$00    
       BEQ    LF469   
       CPX    #$05    
       BEQ    LF46D   
       CPX    #$0F    
       BEQ    LF471   
       LDA    $D8     
       BNE    LF479   
LF469: LDA    #$01    
       BNE    LF479   
LF46D: LDA    #$02    
       BNE    LF479   
LF471: LDA    $E8     
       AND    #$01    
       BNE    LF479   
       LDA    #$02    
LF479: STA    $8A,X   
       RTS            

LF47C: LDA    $DA     
       CMP    #$07    
       BNE    LF483   
       RTS            

LF483: LDA    $ED     
       CMP    #$58    
       BNE    LF48A   
       RTS            

LF48A: CLC            
       LDA    $EB     
       ADC    $C5     
       STA    $C5     
       CMP    #$17    
       BCS    LF49E   
       LDA    $D8     
       STA    $EB     
       LDA    #$17    
       JMP    $74AB   
LF49E: CMP    #$76    
       BCC    LF4AD   
       LDA    #$00    
       SEC            
       SBC    $D8     
       STA    $EB     
       LDA    #$76    
LF4AB: STA    $C5     
LF4AD: LDA    $E8     
       AND    #$03    
       BEQ    LF4B4   
       RTS            

LF4B4: LDA    $C6     
       CMP    #$C1    
       BEQ    LF4BF   
       LDA    #$C1    
       JMP    $74C1   
LF4BF: LDA    #$CC    
LF4C1: STA    $C6     
       RTS            

LF4C4: LDA    $ED     
       CMP    #$58    
       BNE    LF4CB   
       RTS            

LF4CB: LDA    $C3     
       SEC            
       SBC    #$05    
       BCS    LF4D4   
       LDA    #$0F    
LF4D4: STA    $C3     
       TAX            
       LDA    $8A,X   
       BEQ    LF51B   
       LDA    $89,X   
       BEQ    LF4EE   
       CLC            
       ADC    $86,X   
       STA    $86,X   
       LDA    $87,X   
       SEC            
       SBC    $8A,X   
       STA    $87,X   
LF4EB: JMP    $7557   
LF4EE: DEC    $87,X   
       LDA    $86,X   
       STA    $EF     
       LDA    $87,X   
       SEC            
       SBC    #$07    
       JSR    $7833   
       LDA    $C8     
       CMP    #$01    
       BEQ    LF4EB   
       LDA    $85     
       AND    #$01    
       BEQ    LF510   
       LDA    #$02    
       JMP    $7512   
LF50D: JMP    $75A7   
LF510: LDA    #$FE    
LF512: STA    $89,X   
       LDA    #$00    
       STA    $8A,X   
       JMP    $7557   
LF51B: LDA    $89,X   
       CLC            
       ADC    $86,X   
       STA    $86,X   
       STA    $EF     
       LDA    $87,X   
       SEC            
       SBC    #$07    
       JSR    $7833   
       LDA    $85     
       AND    #$01    
       BNE    LF543   
       LDA    $87,X   
       CMP.w  $00BB   
       BCS    LF543   
       SEC            
       LDA    $BB     
       SBC.wx $0087,X 
       CMP    #$10    
       BCS    LF50D   
LF543: LDA    $C8     
       CMP    #$03    
       BNE    LF557   
       LDA    $E8     
       AND    #$07    
       BEQ    LF557   
       LDA    #$07    
       STA    $8A,X   
       LDA    #$00    
       STA    $89,X   
LF557: LDA    $87,X   
       CMP    #$20    
       BCC    LF5A6   
       CMP    #$31    
       BCC    LF5A0   
       LDA    $86,X   
       CMP    #$0B    
       BCC    LF56F   
       CMP    #$8E    
       BCC    LF57B   
       LDA    #$8E    
       BNE    LF571   
LF56F: LDA    #$0B    
LF571: STA    $86,X   
       LDA    #$00    
       SEC            
       SBC.wx $0089,X 
       STA    $89,X   
LF57B: LDA    $86,X   
       STA    $BE     
       LDA    $87,X   
       STA    $BF     
       LDA    $88,X   
       CMP    #$B0    
       BEQ    LF591   
       CMP    #$B8    
       BEQ    LF591   
       LDA    #$B8    
       STA    $88,X   
LF591: STA    $C0     
LF593: CPX    #$0A    
       BCS    LF59B   
       LDA    #$0F    
       BNE    LF59D   
LF59B: LDA    #$1C    
LF59D: STA    $EC     
       RTS            

LF5A0: LDA    #$00    
       STA    $87,X   
       STA    $BF     
LF5A6: RTS            

LF5A7: LDA    $8A     
       BNE    LF5AD   
       LDA    $8F     
LF5AD: STA    $8A,X   
       LDA    $89     
       BNE    LF5B9   
       LDA    $8E     
       BNE    LF5B9   
       LDA    $93     
LF5B9: STA    $89,X   
       JMP    $7557   
LF5BE: LDA    #$00    
       STA    $AD     
       STA    $AC     
       LDA    $D1     
       CMP    #$02    
       BNE    LF5D0   
       LDA    $C9     
       STA    $AC     
       BNE    LF5D4   
LF5D0: LDA    $C9     
       STA    $AD     
LF5D4: JSR    $7B79   
       RTS            

LF5D8: INC    $E8     
       JSR    $7FBC   
       LDX    $BA     
       STX    $EF     
       LDY    $BB     
       SEC            
       LDA    $BB     
       SBC    #$09    
       JSR    $7833   
       LDA    $E6     
       CMP    #$01    
       BNE    LF5FE   
       LDA    $C8     
       CMP    #$01    
       BEQ    LF5FE   
       LDA    #$58    
       STA    $BC     
       JMP    $76A1   
LF5FE: LDA    $D1     
       CMP    #$02    
       BNE    LF60E   
       LDA    SWCHA   
       ASL            
       ASL            
       ASL            
       ASL            
       JMP    $7611   
LF60E: LDA    SWCHA   
LF611: ASL            
       STA    $EF     
       BCS    LF64B   
       LDA    $C8     
       CMP    #$01    
       BEQ    LF64B   
       LDA    #$00    
       STA    $E5     
       INX            
LF621: LDA    $E8     
       AND    #$01    
       BNE    LF645   
       LDA    $BC     
       CMP    #$69    
       BNE    LF641   
       LDA    $E7     
       BNE    LF639   
       LDA    #$01    
       STA    $E7     
       LDA    #$58    
       BNE    LF643   
LF639: LDA    #$00    
       STA    $E7     
       LDA    #$8B    
       BNE    LF643   
LF641: LDA    #$69    
LF643: STA    $BC     
LF645: JSR    $789B   
       JMP    $76A1   
LF64B: LDA    $EF     
       ASL            
       STA    $EF     
       BCS    LF660   
       LDA    $C8     
       CMP    #$01    
       BEQ    LF660   
       DEX            
       LDA    #$08    
       STA    $E5     
       JMP    $7621   
LF660: LDA    $EF     
       ASL            
       STA    $EF     
       BCS    LF68E   
       LDA    $C8     
       CMP    #$01    
       BEQ    LF671   
       CMP    #$03    
       BNE    LF68E   
LF671: DEY            
LF672: LDA    $BC     
       CMP    #$D8    
       BEQ    LF67C   
       LDA    #$D8    
       BNE    LF67E   
LF67C: LDA    #$E9    
LF67E: STA    $BC     
       LDA    $E8     
       AND    #$03    
       BNE    LF689   
       JSR    $78B3   
LF689: DEC    $E9     
       JMP    $76A1   
LF68E: LDA    $EF     
       ASL            
       BCS    LF6A1   
       LDA    $C8     
       CMP    #$01    
       BEQ    LF69D   
       CMP    #$02    
       BNE    LF6A1   
LF69D: INY            
       JMP    $7672   
LF6A1: STX    $BA     
       STY    $BB     
       LDA    $C8     
       STA    $E6     
       RTS            

LF6AA: LDA    $DA     
       CMP    #$07    
       BNE    LF6B1   
       RTS            

LF6B1: LDA    $ED     
       CMP    #$58    
       BNE    LF6BA   
       JMP    $77B5   
LF6BA: LDA    $BC     
       CMP    #$9C    
       BEQ    LF6C7   
       CMP    #$8A    
       BEQ    LF6C7   
       JMP    $7742   
LF6C7: DEC    $BB     
       DEC    $BB     
       LDA    $BB     
       CMP    #$2B    
       BCS    LF710   
       LDA    #$2B    
       STA    $BB     
       LDA    $CA     
       CMP    #$17    
       BNE    LF6FC   
       DEC    $E9     
       DEC    $E9     
       LDA    $E9     
       CMP    #$80    
       BCC    LF6E7   
       LDA    #$00    
LF6E7: STA    AUDF0   
       DEC    $EA     
       DEC    $EA     
       DEC    $EA     
       LDA    $EA     
       CMP    #$80    
       BCC    LF6F7   
       LDA    #$00    
LF6F7: STA    AUDV0   
       JMP    $7710   
LF6FC: LDA    #$08    
       STA    AUDC0   
       LDA    #$16    
       STA    AUDF0   
       STA    $E9     
       LDA    #$0B    
       STA    $EA     
       STA    AUDV0   
       LDA    #$17    
       STA    $CA     
LF710: JSR    $78C2   
       LDA    $84     
       ORA    #$01    
       STA    $D9     
       INC    $E9     
       INC    $E9     
       LDA    $E9     
       CMP    #$20    
       BCC    LF727   
       LDA    #$00    
       STA    AUDV0   
LF727: STA    AUDF0   
       DEC    $BD     
       BEQ    LF72E   
       RTS            

LF72E: LDA    #$01    
       STA    $D9     
       LDA    #$00    
       STA    $BA     
       STA    $BB     
       STA    $BC     
       LDA    #$01    
       STA    $D0     
       JSR    $78A8   
       RTS            

LF742: LDA.w  $0002   
       AND    #$80    
       BNE    LF752   
       LDA    $C7     
       BNE    LF752   
       LDA    #$8A    
       JMP    $79CC   
LF752: LDA    $C7     
       BNE    LF767   
       JSR    $75D8   
       LDA    $BA     
       CMP    #$08    
       BCC    LF766   
       CMP    #$8B    
       BCS    LF766   
       JSR    $78D4   
LF766: RTS            

LF767: JSR    $7923   
       RTS            

LF76B: LDA    $BB     
       CMP    #$74    
       BCS    LF772   
       RTS            

LF772: LDA    #$27    
       STA    $D9     
       LDA    $ED     
       CMP    #$58    
       BEQ    LF7B5   
       JSR    $78A8   
       JSR    $78C2   
       LDA    $CF     
       CMP    #$60    
       BCS    LF78F   
       SED            
       CLC            
       ADC    #$40    
       CLD            
       BNE    LF791   
LF78F: LDA    #$99    
LF791: STA    $C9     
       JSR    $75BE   
       LDA    #$58    
       STA    $ED     
       LDA    #$C0    
       STA    $EE     
       LDA    #$CC    
       STA    $C6     
       LDA    #$15    
       STA    AUDF0   
       STA    $EA     
       LDA    #$06    
       STA    AUDC0   
       LDA    #$0F    
       STA    AUDV0   
       STA    $E9     
       INC    $E9     
       RTS            

LF7B5: LDA    $C3     
       SEC            
       SBC    #$05    
       BCS    LF7BE   
       LDA    #$0F    
LF7BE: STA    $C3     
       TAX            
       JSR    $7593   
       DEC    $EE     
       BEQ    LF808   
       LDA    $EE     
       AND    #$03    
       BNE    LF7F3   
       INC    $E9     
       JSR    $7FBC   
       LDA    $E9     
       BNE    LF7F3   
       LDA    $EE     
       CMP    #$70    
       BCS    LF7E5   
       CMP    #$30    
       BCS    LF7E9   
       LDA    #$00    
       BEQ    LF7EB   
LF7E5: LDA    #$0C    
       BNE    LF7EB   
LF7E9: LDA    #$0A    
LF7EB: STA    $E9     
       STA    AUDV0   
       LDA    #$00    
       STA    AUDV1   
LF7F3: DEC    $EA     
       BNE    LF807   
       LDA    $EE     
       CMP    #$70    
       BCC    LF801   
       LDA    #$0A    
       BNE    LF803   
LF801: LDA    #$08    
LF803: STA    $EA     
       STA    AUDF0   
LF807: RTS            

LF808: LDA    #$01    
       STA    $D9     
       JSR    $78A8   
       LDA    #$C1    
       STA    $C6     
       LDA    #$00    
       STA    $ED     
       INC    $D8     
       LDA    $D8     
       CMP    #$03    
       BNE    LF823   
       LDA    #$01    
       STA    $D8     
LF823: LDA    $D1     
       CMP    #$02    
       BEQ    LF82D   
       INC    $D2     
       BNE    LF82F   
LF82D: INC    $D3     
LF82F: JSR    $79FB   
       RTS            

LF833: CMP    #$24    
       BEQ    LF84C   
       CMP    #$34    
       BEQ    LF875   
       CMP    #$44    
       BEQ    LF88C   
       CMP    #$54    
       BEQ    LF875   
       CMP    #$64    
       BEQ    LF88C   
       LDA    #$01    
       STA    $C8     
       RTS            

LF84C: LDA    $EF     
       CMP    #$12    
       BCC    LF85E   
       CMP    #$18    
       BCC    LF863   
       CMP    #$80    
       BCC    LF85E   
       CMP    #$87    
       BCC    LF863   
LF85E: LDA    #$00    
       STA    $C8     
       RTS            

LF863: LDA    #$02    
       STA    $C8     
       RTS            

LF868: LDA    $EF     
       CMP    #$49    
       BCC    LF85E   
       CMP    #$4F    
       BCC    LF863   
       JMP    $785E   
LF875: JSR    $7868   
       LDA    $C8     
       CMP    #$00    
       BNE    LF88B   
       JSR    $784C   
LF881: LDA    $C8     
       CMP    #$00    
       BEQ    LF88B   
       LDA    #$03    
       STA    $C8     
LF88B: RTS            

LF88C: JSR    $784C   
       LDA    $C8     
       CMP    #$00    
       BNE    LF88B   
       JSR    $7868   
       JMP    $7881   
LF89B: LDA    $E8     
       AND    #$07    
       CMP    #$02    
       BEQ    LF8AD   
       CMP    #$06    
       BEQ    LF8B3   
       RTS            

LF8A8: LDA    #$00    
       STA    AUDV0   
       RTS            

LF8AD: LDA    #$1A    
       STA    AUDF0   
       BNE    LF8B7   
LF8B3: LDA    #$1B    
       STA    AUDF0   
LF8B7: LDA    #$04    
       STA    AUDC0   
       LDA    #$07    
       STA    AUDV0   
       STA    $E9     
       RTS            

LF8C2: LDX    #$00    
       LDA    #$00    
LF8C6: STA    $86,X   
       DEC    $84     
       INX            
       CPX    #$14    
       BNE    LF8C6   
       STA    $C7     
       STA    $BF     
       RTS            

LF8D4: LDA    $C8     
       CMP    #$01    
       BNE    LF8DB   
       RTS            

LF8DB: LDA    $D1     
       CMP    #$02    
       BNE    LF8EB   
       LDA.w  $000D   
       AND    #$80    
       BNE    LF8FD   
       JMP    $78F2   
LF8EB: LDA.w  $000C   
       AND    #$80    
       BNE    LF8FD   
LF8F2: LDX    $BA     
       LDY    $BB     
       LDA    $E5     
       BNE    LF90A   
       JMP    $78FE   
LF8FD: RTS            

LF8FE: LDA    #$01    
       STA    $C1     
       INX            
       INX            
       INX            
       INX            
       INX            
       INX            
       BNE    LF912   
LF90A: LDA    #$00    
       STA    $C1     
       DEX            
       DEX            
       DEX            
       DEX            
LF912: INY            
       INY            
       INY            
       INY            
       STX    $BA     
       STY    $BB     
       LDA    #$7A    
       STA    $BC     
       LDA    #$01    
       STA    $C7     
       RTS            

LF923: LDA    $C7     
       CMP    #$01    
       BNE    LF93C   
       LDA    #$05    
       STA    AUDC0   
       LDA    #$1F    
       STA    AUDF0   
       STA    $E9     
       LDA    #$0F    
       STA    AUDV0   
       STA    $EA     
       JMP    $7960   
LF93C: DEC    $E9     
       DEC    $E9     
       DEC    $E9     
       LDA    $E9     
       CMP    #$80    
       BCC    LF94C   
       LDA    #$1B    
       STA    $E9     
LF94C: STA    AUDF0   
       DEC    $EA     
       DEC    $EA     
       DEC    $EA     
       LDA    $EA     
       CMP    #$80    
       BCC    LF95E   
       LDA    #$0F    
       STA    $EA     
LF95E: STA    AUDV0   
LF960: LDA    $C2     
       AND    #$03    
       BEQ    LF967   
       RTS            

LF967: LDA    $C7     
       CMP    #$05    
       BCC    LF994   
       LDA    #$69    
       STA    $BC     
       INC    $C7     
       LDA    $C7     
       CMP    #$06    
       BEQ    LF97E   
       CMP    #$07    
       BCS    LF983   
       RTS            

LF97E: DEC    $BB     
       DEC    $BB     
       RTS            

LF983: LDA    #$00    
       STA    $C7     
       JSR    $78A8   
       LDA    $C1     
       BEQ    LF991   
       INC    $BA     
       RTS            

LF991: DEC    $BA     
       RTS            

LF994: LDX    $BA     
       LDY    $BB     
       LDA    $C1     
       CMP    #$01    
       BEQ    LF9A3   
       DEX            
       DEX            
       JMP    $79A5   
LF9A3: INX            
       INX            
LF9A5: LDA    $C7     
       CMP    #$01    
       BEQ    LF9B7   
       CMP    #$02    
       BEQ    LF9BB   
       LDA    #$05    
       STA    $C7     
       DEY            
       DEY            
       BNE    LF9BF   
LF9B7: INY            
       INY            
       BNE    LF9BD   
LF9BB: DEY            
       DEY            
LF9BD: INC    $C7     
LF9BF: STX    $BA     
       STY    $BB     
       RTS            

LF9C4: LDA    COLUP1  
       AND    #$80    
       BEQ    LF9FA   
       LDA    #$9C    
LF9CC: STA    $BC     
       LDA    #$0C    
       STA    AUDC0   
       LDA    #$03    
       STA    AUDF0   
       STA    $E9     
       LDA    #$0C    
       STA    AUDV0   
       STA    $CA     
       LDA    $BB     
       CMP    #$74    
       BCS    LF9F2   
       CMP    #$44    
       BCC    LF9F2   
       SEC            
       SBC    #$10    
       AND    #$70    
       STA    $C9     
       JSR    $75BE   
LF9F2: LDA    #$23    
       STA    $BD     
       LDA    #$E0    
       STA    $84     
LF9FA: RTS            

LF9FB: LDA    #$00    
       STA    $E9     
       STA    $EA     
       LDA    #$4C    
       STA    $BA     
       LDA    #$2D    
       STA    $BB     
       LDA    #$69    
       STA    $BC     
       JSR    $73EE   
       JSR    $7A30   
       LDA    $D8     
       CMP    #$02    
       BEQ    LFA1D   
       LDA    #$01    
       BNE    LFA21   
LFA1D: LDA    #$01    
       BNE    LFA21   
LFA21: STA    $D9     
       LDA    #$99    
       STA    $CF     
       LDA    #$28    
       STA    $85     
       LDA    $D8     
       STA    $EB     
       RTS            

LFA30: LDA    $D1     
       CMP    #$02    
       BEQ    LFA3B   
       LDA    $D2     
       JMP    $7A3D   
LFA3B: LDA    $D3     
LFA3D: CMP    #$09    
       BCC    LFA43   
       LDA    #$09    
LFA43: JSR    $7AD4   
       CLC            
       ADC    #$08    
       STA    $CD     
       LDA    #$08    
       STA    $CB     
       LDA    #$18    
       STA    $D0     
       LDA    #$E0    
       STA    $DA     
       LDA    #$00    
       STA    AUDV0   
       STA    AUDV1   
       RTS            

LFA5E: LDA    #$48    
       LDX    #$00    
       JSR    $7BB1   
       STX    GRP0    
       STX    GRP1    
       LDA    #$50    
       LDX    #$01    
       JSR    $7BB1   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$00    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       JSR    $7FD3   
       LDA    #$0F    
       STA    COLUP0  
       STA    COLUP1  
       LDY    #$07    
LFA87: STA    WSYNC   
       LDA    ($CB),Y 
       STA    GRP0    
       LDA    ($CD),Y 
       STA    GRP1    
       STA    HMCLR   
       DEY            
       BPL    LFA87   
       RTS            

LFA97: LDA    $ED     
       CMP    #$58    
       BEQ    LFACC   
       LDA    $B2     
       CMP    #$07    
       BNE    LFACC   
       DEC    $85     
       BNE    LFAB8   
       LDA    #$1E    
       STA    $85     
       SEC            
       SED            
       LDA    $CF     
       SBC    #$01    
       BCC    LFACC   
       STA    $CF     
       BEQ    LFACE   
       CLD            
LFAB8: LDA    $CF     
       LSR            
       LSR            
       LSR            
       LSR            
       JSR    $7AD4   
       STA    $CB     
       LDA    $CF     
       AND    #$0F    
       JSR    $7AD4   
       STA    $CD     
LFACC: CLD            
       RTS            

LFACE: CLD            
       LDA    #$8A    
       JMP    $79CC   
LFAD4: ASL            
       ASL            
       ASL            
       CLC            
       ADC    #$08    
       RTS            

LFADB: LDA    #$10    
       LDX    #$00    
       JSR    $7BB1   
       LDA    #$1C    
       STA    COLUP1  
       LDA    #$50    
       LDX    #$01    
       JSR    $7BB1   
       STX    CTRLPF  
       LDA    #$48    
       STA    COLUP0  
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDY    #$07    
LFAFB: STA    WSYNC   
       LDA    ($9F),Y 
       NOP            
       STA    GRP0    
       LDA    ($A5),Y 
       STA    GRP1    
       LDA    ($A1),Y 
       LDX    $EF     
       LDX    $EF     
       STA    GRP0    
       LDA    ($A3),Y 
       STA    GRP0    
       LDX.w  $00EF   
       LDA    ($A7),Y 
       STA    GRP1    
       LDA    ($A9),Y 
       STA    GRP1    
       DEY            
       BNE    LFAFB   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       LDA    #$10    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    $E5     
       STA    REFP0   
       STA    REFP1   
       RTS            

LFB33: LDX    #$02    
       LDY    #$08    
LFB37: LDA    $81,X   
       AND    #$F0    
       LSR            
       ADC    #$08    
       STA.wy $009F,Y 
       LDA    $81,X   
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       ADC    #$08    
       STA.wy $00A1,Y 
       LDA    #$FC    
       STA.wy $00A0,Y 
       STA.wy $00A2,Y 
       DEY            
       DEY            
       DEY            
       DEY            
       DEX            
       BPL    LFB37   
       LDX    #$00    
       LDA    #$08    
       CMP    $9F     
       BNE    LFB6C   
       STX    $9F     
       CMP    $A1     
       BNE    LFB6C   
       STX    $A1     
LFB6C: CMP    $A5     
       BNE    LFB78   
       STX    $A5     
       CMP    $A7     
       BNE    LFB78   
       STX    $A7     
LFB78: RTS            

LFB79: LDA    $AC     
       CLC            
       SED            
       ADC    $83     
       STA    $83     
       LDA    $82     
       AND.w  $00F0   
       STA    $B0     
       LDA    #$00    
       ADC    $82     
       AND    #$0F    
       ORA    $B0     
       STA    $82     
       LDA    $AD     
       LSR    $AD     
       LSR    $AD     
       LSR    $AD     
       LSR    $AD     
       ASL            
       ASL            
       ASL            
       ASL            
       CLC            
       ADC.w  $0082   
       STA    $82     
       LDA    $AD     
       ADC    $81     
       STA    $81     
       CLD            
       JSR    $7B33   
       RTS            

LFBB1: CLC            
       ADC    #$2E    
       TAY            
       AND    #$0F    
       STA.w  $00EF   
       TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       CLC            
       ADC.w  $00EF   
       CMP    #$0F    
       BCC    LFBCB   
       SBC    #$0F    
       INY            
LFBCB: EOR    #$07    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    HMP0,X  
       STA    WSYNC   
LFBD5: DEY            
       BPL    LFBD5   
       STA    RESP0,X 
       RTS            

LFBDB: LDA    $C0     
       CMP    #$B0    
       BNE    LFBE7   
       LDA    #$F8    
       STA    $EC     
       LDA    $E1     
LFBE7: INC    $E1     
       STA    $B7     
       RTS            

LFBEC: .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$3C,$66,$66
       .byte $66,$66,$66,$3C,$00,$3C,$18,$18,$18,$18,$38,$18,$00,$7E,$60,$60
       .byte $3C,$06,$46,$3C,$00,$3C,$46,$06,$1C,$06,$46,$3C,$00,$0C,$0C,$7E
       .byte $6C,$3C,$1C,$0C,$00,$7C,$06,$06,$7C,$60,$60,$7E,$00,$3C,$66,$66
       .byte $7C,$60,$62,$3C,$00,$18,$18,$18,$0C,$06,$66,$7E,$00,$3C,$66,$66
       .byte $3C,$66,$66,$3C,$00,$3C,$46,$06,$3E,$66,$66,$3C,$00,$0C,$88,$E8
       .byte $28,$38,$38,$38,$78,$FE,$FE,$7A,$10,$38,$3C,$38,$38,$00,$30,$2C
       .byte $28,$28,$28,$38,$7C,$7C,$78,$78,$38,$10,$38,$3C,$38,$38,$00,$00
       .byte $00,$E1,$3E,$3C,$B8,$F8,$78,$3E,$10,$38,$3C,$38,$38,$00,$00,$00
       .byte $18,$50,$7C,$14,$14,$38,$7C,$7C,$78,$78,$38,$10,$38,$3C,$38,$38
       .byte $00,$00,$00,$82,$7C,$44,$82,$28,$38,$FC,$D6,$D6,$7C,$38,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$10,$7C,$10,$00,$00,$00,$00,$00,$00
       .byte $F0,$38,$1C,$0C,$02,$02,$00,$00,$08,$18,$7A,$D6,$83,$01,$00,$00
       .byte $00,$00,$00,$00,$81,$4A,$7E,$3C,$10,$00,$00,$00,$00,$04,$0C,$4C
       .byte $6C,$78,$78,$3E,$3C,$78,$70,$90,$38,$38,$38,$38,$00,$00,$40,$60
       .byte $64,$6C,$3C,$3C,$F8,$F8,$3C,$1C,$12,$38,$38,$38,$38,$00,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$C0,$C0,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$C0,$C0,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$C0,$C0,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$C0,$C0,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $C0,$C0,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $80,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
LFD9C: LDA    #$00    
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
       JSR    $7B79   
       LDA    #$FC    
       STA    $B5     
       STA    $B8     
       LDA    #$10    
       STA    $C3     
       LDA    #$FD    
       STA    $DC     
       LDA    #$FE    
       STA    $DE     
       LDA    #$FF    
       STA    $E0     
       LDA    #$FC    
       STA    $CC     
       STA    $CE     
       LDA    #$68    
       STA    $EC     
       RTS            

LFDD6: LDA    INTIM   
       BNE    LFDD6   
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
       LDA    #$1D    
       STA    TIM64T  
       RTS            

LFDF7: .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$40,$20,$40,$20,$40,$20,$40
       .byte $20,$40,$20,$40,$20,$40,$20,$F9,$F9,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$FC,$FC,$40,$20,$40,$20,$40,$20,$40
       .byte $20,$40,$20,$40,$20,$40,$20,$FC,$FC,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$F3,$F3,$40,$20,$40,$20,$40,$20,$40
       .byte $20,$40,$20,$40,$20,$40,$FF,$40,$20,$40,$20,$40,$20,$40,$20,$40
       .byte $20,$40,$20,$40,$20,$FF,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$F3,$F3,$40,$20,$40,$20,$40,$20,$40,$20,$40
       .byte $20,$40,$20,$40,$20,$FE,$FE,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$71,$71,$40,$20,$40,$20,$40,$20,$40,$20,$40
       .byte $20,$40,$20,$40,$7F
LFE9C: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$13,$13,$00,$0B,$00
       .byte $0B,$0F,$0F,$13,$13,$00,$00,$00,$11,$00,$11,$00,$0D,$00,$00,$00
       .byte $0F,$00,$0F,$00,$0B,$00,$00,$00,$0B,$0B,$00,$0B,$00,$0B,$0D,$0D
       .byte $0F,$0F,$11,$11,$13,$13,$00,$00,$00,$11,$00,$11,$00,$0D,$00,$00
       .byte $00,$0F,$00,$0F,$00,$0B,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$FF,$FF,$80,$00,$80,$00,$80,$00,$80,$00,$80,$00,$80,$00
       .byte $80,$00,$FE,$FE,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$CF,$CF,$80,$00,$80,$00,$80,$00,$80,$00,$80,$00,$80,$00
       .byte $80,$00,$CC,$CC,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $F9,$F9,$00,$80,$00,$80,$00,$80,$00,$80,$00,$80,$00,$80,$00,$00
       .byte $F3,$F3,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $CC,$CC,$00,$80,$00,$80,$00,$80,$00,$80,$00,$80,$00,$80,$00,$00
       .byte $C7,$C7,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$FF
LFF9C: .byte $00,$00,$8D,$8A,$EA,$AE,$E0,$00
LFFA4: .byte $00,$00,$31,$41,$41,$31,$01,$00
LFFAC: .byte $00,$00,$24,$4A,$8A,$44,$20,$00
LFFB4: .byte $00,$0E,$A2,$AE,$AA,$EE,$00,$00
LFFBC: DEC    $E9     
       DEC    $E9     
       DEC    $E9     
       DEC    $E9     
       DEC    $E9     
       LDA    $E9     
       CMP    #$80    
       BCC    LFFCE   
       LDA    #$00    
LFFCE: STA    AUDV0   
       STA    $E9     
       RTS            

LFFD3: LDA    #$00    
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    GRP0    
       STA    GRP1    
       STA    ENAM0   
       STA    ENAM1   
       STA    ENABL   
       RTS            

LFFE4: .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$00,$F0,$00,$F0
