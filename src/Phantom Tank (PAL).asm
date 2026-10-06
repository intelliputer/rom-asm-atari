; Disassembly of roms/Phantom Tank (PAL).bin
; Disassembled Tue Oct  6 15:22:41 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Phantom Tank (PAL).bin
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
       LDA    #$2A    
       STA    TIM64T  
       JSR    $7B5F   
       JSR    $7A0F   
       LDA    #$01    
       STA    $AB     
       STA    $E9     
       STA    $CB     
       JSR    $7CA0   
       JMP    $705B   
LF024: JSR    $7B8B   
       LDA    $C6     
       LDX    #$02    
       JSR    $7F96   
       LDA    $D3     
       LDX    #$03    
       JSR    $7F96   
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
       JSR    $7AB0   
       LDA    $AB     
       JSR    $7A08   
       STA    $A7     
       JMP    $704D   
LF070: LDA    $DF     
       BEQ    LF07F   
       CMP    #$80    
       BCC    LF082   
       AND    #$F7    
       STA    $DF     
       JMP    $7082   
LF07F: JSR    $75A3   
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
       LDA    #$1C    
       STA    TIM64T  
       JSR    $7A48   
       LDA    $C3     
       LDX    #$01    
       JSR    $7F96   
       LDA    $BC     
       LDX    #$00    
       JSR    $7F96   
LF0AD: LDA    INTIM   
       BNE    LF0AD   
       STA    WSYNC   
       STA    HMOVE   
       STX    REFP0   
       STX    REFP1   
       JSR    $7CE3   
       LDA    $E8     
       CMP    #$02    
       BCC    LF0DB   
       BEQ    LF0D0   
       LDA    #$FF    
       STA    $EF     
       STA    $F1     
       STA    $F3     
       JMP    $70E3   
LF0D0: LDA    #$FE    
       STA    $EF     
       STA    $F1     
       STA    $F3     
       JMP    $70E3   
LF0DB: LDA    #$FD    
       STA    $EF     
       STA    $F1     
       STA    $F3     
LF0E3: LDY    #$30    
       STY    $80     
       LDX    #$84    
       LDA    $E9     
       STA    COLUBK  
       STA    CTRLPF  
       LDA    $E8     
       CMP    #$02    
       BCS    LF100   
       LDA    #$22    
       STA    $F5     
       LDA    #$5D    
       STA    $ED     
       JMP    $7108   
LF100: LDA    #$00    
       STA    $F5     
       LDA    #$D5    
       STA    $ED     
LF108: STA    COLUPF  
       STA    WSYNC   
       LDA    #$FF    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       LDA    #$10    
       STA    NUSIZ0  
       STA    NUSIZ1  
       JMP    $7141   
LF11D: TYA            
       JMP    $712F   
LF121: STY    GRP1    
       JMP    $7169   
LF126: LDY    $B7     
       BEQ    LF11D   
       DEY            
       LDA    ($B5),Y 
       STY    $B7     
LF12F: STA    WSYNC   
       STA    GRP0    
       LDY    $80     
       LDA    ($EE),Y 
       STA    PF0     
       LDA    ($F0),Y 
       STA    PF1     
       LDA    ($F2),Y 
       STA    PF2     
LF141: DEX            
       CPX    $BD     
       BNE    LF14A   
       LDY    #$08    
       STY    $B7     
LF14A: LDA    #$00    
       CPX    $C7     
       BNE    LF152   
       LDA    #$FF    
LF152: STA    ENAM0   
       STA    WSYNC   
       CPX    $C4     
       BNE    LF15E   
       LDY    #$08    
       STY    $BA     
LF15E: LDY    $BA     
       BEQ    LF121   
       DEY            
       LDA    ($B8),Y 
       STA    GRP1    
       STY    $BA     
LF169: LDA    #$00    
       CPX    $D4     
       BNE    LF171   
       LDA    #$FF    
LF171: STA    ENAM1   
       STA    WSYNC   
       SEC            
       LDA    $ED     
       SBC    #$01    
       STA    $ED     
       LDY    $B7     
       BEQ    LF1C9   
       DEY            
       LDA    ($B5),Y 
       STY    $B7     
LF185: STA    GRP0    
       DEX            
       CPX    $BD     
       BNE    LF190   
       LDY    #$08    
       STY    $B7     
LF190: LDA    #$00    
       CPX    $C7     
       BNE    LF198   
       LDA    #$FF    
LF198: STA    ENAM0   
       LDA    $ED     
       ORA.w  $00F5   
       CPX    $C4     
       BNE    LF1A7   
       LDY    #$08    
       STY    $BA     
LF1A7: STA    WSYNC   
       STA    COLUPF  
       LDY    $BA     
       BEQ    LF1CD   
       DEY            
       LDA    ($B8),Y 
       STA    GRP1    
       STY    $BA     
LF1B6: LDA    #$00    
       CPX    $D4     
       BNE    LF1BE   
       LDA    #$FF    
LF1BE: STA    ENAM1   
       DEC    $80     
       BMI    LF1D2   
       STA    HMCLR   
       JMP    $7126   
LF1C9: TYA            
       JMP    $7185   
LF1CD: STY    GRP1    
       JMP    $71B6   
LF1D2: LDA    #$00    
       STA    COLUBK  
       STA    WSYNC   
       LDA    #$FF    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    ENAM0   
       STA    ENAM1   
       STA    GRP0    
       STA    GRP1    
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       STA    WSYNC   
       STA    WSYNC   
       DEC    $C9     
       LDA    $B2     
       CMP    #$07    
       BNE    LF20E   
       JSR    $79A3   
       JMP    $7251   
LF20E: LDA    #$20    
       LDX    #$00    
       JSR    $7F96   
       LDA    #$01    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$0C    
       STA    COLUP1  
       STA    COLUP0  
       LDA    #$28    
       LDX    #$01    
       JSR    $7F96   
       STA    WSYNC   
       STA    HMOVE   
       LDX    #$08    
       STA    WSYNC   
       STA    HMCLR   
LF232: STA    WSYNC   
       LDA    $7D96,X 
       STA    GRP0    
       LDA    $7D9F,X 
       STA    GRP1    
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       LDA    $7DB1,X 
       TAY            
       LDA    $7DA8,X 
       STA    GRP0    
       STY    GRP1    
       DEX            
       BPL    LF232   
LF251: LDA    #$1C    
       STA    TIM64T  
       LDA    $C9     
       AND    #$07    
       BEQ    LF260   
       CMP    #$04    
       BNE    LF263   
LF260: JSR    $78DD   
LF263: LDA    SWCHB   
       AND    #$01    
       BEQ    LF271   
       LDA    $DF     
       BEQ    LF274   
       JMP    $732B   
LF271: JMP    $7324   
LF274: JSR    $7DBA   
       JSR    $7DE5   
       LDA    $C9     
       AND    #$07    
       BNE    LF286   
       JSR    $74A1   
LF283: JMP    $7024   
LF286: JSR    $7572   
       LDA    $C9     
       AND    #$07    
       CMP    #$01    
       BNE    LF29A   
       JSR    $7CA0   
       JSR    $781C   
       JMP    $7283   
LF29A: CMP    #$02    
       BEQ    LF2A2   
       CMP    #$07    
       BNE    LF2A8   
LF2A2: JSR    $781C   
       JMP    $7283   
LF2A8: CMP    #$03    
       BNE    LF2B5   
       JSR    $79D4   
       JSR    $74A1   
       JMP    $7283   
LF2B5: CMP    #$05    
       BNE    LF2C2   
       JSR    $72D5   
       JSR    $781C   
       JMP    $7283   
LF2C2: CMP    #$04    
       BNE    LF2CF   
       LDA    $AB     
       CMP    #$03    
       BCC    LF2CF   
       JSR    $781C   
LF2CF: JSR    $74A1   
       JMP    $7283   
LF2D5: LDA    $EC     
       CMP    #$07    
       BNE    LF2F5   
       LDX    #$00    
       LDA.w  $00E1   
       CMP    #$02    
       BEQ    LF2E9   
       STX    $E2     
       JMP    $72EB   
LF2E9: STX    $E3     
LF2EB: LDA    #$28    
       STA    $DF     
       LDA    #$01    
       STA    $E9     
       STA    $EA     
LF2F5: RTS            

LF2F6: LDX    #$05    
LF2F8: INC    $EC     
       BEQ    LF302   
       DEX            
       BNE    LF2F8   
       JMP    $7024   
LF302: LDA    #$01    
       STA    $DF     
       JSR    $7419   
       JMP    $7024   
LF30C: INC    $EC     
       BEQ    LF316   
       JSR    $7AB0   
       JMP    $7024   
LF316: LDA    #$00    
       STA    $DF     
       JSR    $7419   
       LDA    #$68    
       STA    $BE     
       JMP    $7024   
LF324: LDA    #$48    
       STA    $DF     
       JMP    $7024   
LF32B: CMP    #$01    
       BEQ    LF36B   
       CMP    #$49    
       BEQ    LF365   
       CMP    #$48    
       BEQ    LF35B   
       CMP    #$28    
       BEQ    LF2F6   
       CMP    #$18    
       BEQ    LF30C   
       CMP    #$80    
       BCS    LF358   
       LDA    $C9     
       AND    #$7F    
       BNE    LF358   
       LDX    #$01    
       LDA    $E1     
       CMP    #$01    
       BNE    LF353   
       LDX    #$02    
LF353: STX    $E1     
       JSR    $7AB0   
LF358: JMP    $7024   
LF35B: JSR    $73CE   
       LDA    #$49    
       STA    $DF     
       JMP    $7024   
LF365: JSR    $7403   
       JMP    $7024   
LF36B: LDA    #$00    
       STA    $DF     
       LDA    $E1     
       CMP    #$02    
       BCS    LF39E   
       LDA    $E0     
       STA    $E4     
       LDA    $E8     
       STA    $E5     
       LDA    $E3     
       BNE    LF388   
       LDA    $E2     
       BEQ    LF3C7   
       JMP    $73B1   
LF388: LDA    $E6     
       STA    $E0     
       STA    $D0     
       LDA    $E7     
       STA    $E8     
       DEC    $E3     
       LDA    #$02    
       STA    $E1     
       JSR    $7A0F   
       JMP    $7024   
LF39E: LDA    $E0     
       STA    $E6     
       LDA    $E8     
       STA    $E7     
       LDA    $E2     
       BNE    LF3B1   
       LDA    $E3     
       BEQ    LF3C7   
       JMP    $7388   
LF3B1: LDA    $E4     
       STA    $D0     
       STA    $E0     
       LDA    $E5     
       STA    $E8     
       DEC    $E2     
       LDA    #$01    
       STA    $E1     
       JSR    $7A0F   
       JMP    $7024   
LF3C7: LDA    #$40    
       STA    $DF     
       JMP    $7024   
LF3CE: LDA    #$07    
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
       BNE    LF3F4   
       LDA    #$05    
       STA    $E3     
LF3F4: LDA    #$04    
       STA    $E2     
       LDA    #$B1    
       STA    $E9     
       STA    $EA     
       LDA    #$A6    
       STA    $ED     
       RTS            

LF403: JSR    $7FCC   
       LDX    $AB     
       CPX    #$03    
       BCC    LF411   
       LDX    #$12    
       JMP    $7413   
LF411: LDX    #$0A    
LF413: STX    $D2     
       JSR    $7A0F   
       RTS            

LF419: LDA    #$00    
       STA    $90     
       STA    $94     
       STA    $98     
       STA    $9C     
       STA    $8C     
       RTS            

LF426: LDA    $BC     
       STA    $C0     
       LDA    $BD     
       STA    $C1     
       LDA    $BE     
       STA    $C2     
       LDX    $BC     
       LDY    $BD     
       LDA    $E1     
       CMP    #$02    
       BNE    LF446   
       LDA    SWCHA   
       ASL            
       ASL            
       ASL            
       ASL            
       JMP    $7449   
LF446: LDA    SWCHA   
LF449: ASL            
       BCS    LF45E   
       LDA    $BE     
       CMP    #$80    
       BEQ    LF456   
       LDA    #$80    
       BNE    LF458   
LF456: LDA    #$60    
LF458: STA    $BE     
       INX            
       JMP    $749C   
LF45E: ASL            
       BCS    LF472   
       DEX            
       LDA    $BE     
       CMP    #$78    
       BEQ    LF46C   
       LDA    #$78    
       BNE    LF46E   
LF46C: LDA    #$58    
LF46E: STA    $BE     
       BNE    LF49C   
LF472: ASL            
       BCS    LF486   
       DEY            
       LDA    $BE     
       CMP    #$70    
       BEQ    LF480   
       LDA    #$70    
       BNE    LF482   
LF480: LDA    #$90    
LF482: STA    $BE     
       BNE    LF49C   
LF486: ASL            
       BCS    LF49C   
       CPY    #$82    
       BCS    LF49C   
       INY            
       LDA    $BE     
       CMP    #$68    
       BEQ    LF498   
       LDA    #$68    
       BNE    LF49A   
LF498: LDA    #$88    
LF49A: STA    $BE     
LF49C: STX    $BC     
       STY    $BD     
       RTS            

LF4A1: LDA    $F6     
       CMP    #$1F    
       BEQ    LF4AD   
       LDA    $BE     
       CMP    #$98    
       BNE    LF4E5   
LF4AD: JSR    $7B49   
       LDA    $84     
       ORA    #$01    
       STA    $E9     
       STA    COLUBK  
       DEC    $BF     
       LDA    $BF     
       BEQ    LF4BF   
       RTS            

LF4BF: LDA    $EA     
       STA    $E9     
       LDA    #$01    
       STA    COLUBK  
       LDA    #$00    
       STA    $BD     
       STA    $BE     
       LDA    $F6     
       CMP    #$1F    
       BEQ    LF4DB   
       JSR    $77A2   
       LDA    #$01    
       STA    $DF     
       RTS            

LF4DB: LDA    #$07    
       STA    $EC     
       STA    $F6     
       JSR    $75EB   
       RTS            

LF4E5: LDA.w  $0002   
       AND    #$80    
       BEQ    LF4F9   
       LDA    $C0     
       STA    $BC     
       LDA    $C1     
       STA    $BD     
       LDA    $C2     
       STA    $BE     
       RTS            

LF4F9: JSR    $7426   
       LDA.w  $0002   
       AND    #$80    
       BNE    LF506   
       JSR    $7507   
LF506: RTS            

LF507: LDA    $E1     
       CMP    #$02    
       BNE    LF516   
       LDA.w  $000D   
       AND    #$80    
       BNE    LF542   
       BEQ    LF51D   
LF516: LDA.w  $000C   
       AND    #$80    
       BNE    LF542   
LF51D: LDA    $C7     
       BNE    LF542   
       LDX    $BC     
       LDY    $BD     
       LDA    $BE     
       CMP    #$60    
       BEQ    LF543   
       CMP    #$80    
       BEQ    LF543   
       CMP    #$58    
       BEQ    LF54C   
       CMP    #$78    
       BEQ    LF54C   
       CMP    #$70    
       BEQ    LF555   
       CMP    #$90    
       BEQ    LF555   
       JMP    $755F   
LF542: RTS            

LF543: LDA    #$01    
       INX            
       INX            
       INX            
       INX            
       INX            
       BNE    LF54F   
LF54C: LDA    #$02    
       DEX            
LF54F: DEY            
       DEY            
       DEY            
       JMP    $7565   
LF555: LDA    #$03    
       DEY            
       INX            
       INX            
       INX            
       INX            
       JMP    $754F   
LF55F: LDA    #$04    
       INX            
       INX            
       INX            
       INX            
LF565: STA    $C8     
       STX    $C6     
       STY    $C7     
       LDA    #$44    
       ORA    $DE     
       STA    $DE     
       RTS            

LF572: LDA.w  $0004   
       AND    #$80    
       BEQ    LF57E   
       LDA    #$00    
       STA    $C7     
       RTS            

LF57E: LDX    $C6     
       LDY    $C7     
       LDA    $C7     
       BEQ    LF59E   
       LDA    $C8     
       CMP    #$01    
       BEQ    LF59D   
       CMP    #$02    
       BEQ    LF59A   
       CMP    #$03    
       BEQ    LF597   
       INY            
       BNE    LF59E   
LF597: DEY            
       BNE    LF59E   
LF59A: DEX            
       BNE    LF59E   
LF59D: INX            
LF59E: STX    $C6     
       STY    $C7     
       RTS            

LF5A3: LDA    $EC     
       CMP    #$07    
       BNE    LF5AA   
       RTS            

LF5AA: LDA    $F6     
       CMP    #$1F    
       BEQ    LF5E8   
       LDA    RSYNC   
       AND    #$80    
       BNE    LF5B9   
       JMP    $7663   
LF5B9: LDX    $CA     
       LDA    $8D,X   
       CMP    #$98    
       BNE    LF5C4   
       JMP    $7680   
LF5C4: LDA    $8C,X   
       BNE    LF5CB   
       JMP    $7690   
LF5CB: CMP    #$2C    
       BCS    LF5F8   
       LDA    $8B,X   
       CMP    #$3E    
       BCC    LF5F8   
       CMP    #$5C    
       BCS    LF5F8   
LF5D9: LDA    $F6     
       CMP    #$1F    
       BEQ    LF5E8   
       LDA    #$1F    
       STA    $F6     
       LDA    #$80    
       JSR    $7DF5   
LF5E8: JSR    $74AD   
LF5EB: LDA    #$4C    
       STA    $C3     
       LDA    #$29    
       STA    $C4     
       LDA    #$98    
       STA    $C5     
       RTS            

LF5F8: INC    $CC     
       LDX    $CA     
       LDA    $CD     
       STA    $8B,X   
       LDA    $CE     
       STA    $8C,X   
       LDA    $CC     
       AND    #$37    
       CMP    #$37    
       BNE    LF610   
       LDA    #$04    
       STA    $CC     
LF610: STA    $8E,X   
       AND    #$03    
       BEQ    LF639   
       LDA    $C9     
       AND    #$30    
       BEQ    LF639   
       LDA    $8D,X   
       CMP    #$58    
       BEQ    LF657   
       CMP    #$78    
       BEQ    LF657   
       CMP    #$70    
       BEQ    LF65B   
       CMP    #$90    
       BEQ    LF65B   
       CMP    #$60    
       BEQ    LF65F   
       CMP    #$80    
       BEQ    LF65F   
       JMP    $7653   
LF639: LDA    $8D,X   
       CMP    #$58    
       BEQ    LF65F   
       CMP    #$78    
       BEQ    LF65F   
       CMP    #$68    
       BEQ    LF65B   
       CMP    #$88    
       BEQ    LF65B   
       CMP    #$60    
       BEQ    LF657   
       CMP    #$80    
       BEQ    LF657   
LF653: LDA    #$58    
       BNE    LF661   
LF657: LDA    #$70    
       BNE    LF661   
LF65B: LDA    #$60    
       BNE    LF661   
LF65F: LDA    #$68    
LF661: STA    $8D,X   
LF663: INC    $CA     
       INC    $CA     
       INC    $CA     
       INC    $CA     
       LDA    $CA     
       CMP    #$14    
       BEQ    LF674   
       JMP    $7678   
LF674: LDA    #$00    
       STA    $CA     
LF678: LDX    $CA     
       LDA    $8D,X   
       CMP    #$98    
       BNE    LF690   
LF680: DEC    $8E,X   
       BEQ    LF687   
       JMP    $776E   
LF687: LDA    #$00    
       STA    $8C,X   
       STA    $8D,X   
       JSR    $778E   
LF690: LDA    $8C,X   
       BNE    LF6B2   
       LDA    $AB     
       CMP    #$03    
       BCC    LF6A9   
       LDA    $BB     
       BNE    LF6A9   
       LDA    $E0     
       CMP    #$0A    
       BCS    LF6A9   
       INC    $BB     
       JMP    $7663   
LF6A9: LDA    #$00    
       STA    $BB     
       STA    $CE     
       STA    $C4     
       RTS            

LF6B2: LDX    $CA     
       LDA    $8C,X   
       STA    $CE     
       LDA    $8B,X   
       STA    $CD     
       LDA    $8C,X   
       CMP    #$77    
       BCS    LF6C9   
       CMP    #$75    
       BCC    LF6C9   
       JMP    $76CC   
LF6C9: JMP    $76E4   
LF6CC: LDA    $8B,X   
       CMP    #$24    
       BCC    LF6E4   
       CMP    #$2A    
       BCC    LF6E1   
       CMP    #$6C    
       BCC    LF6E4   
       CMP    #$72    
       BCC    LF6E1   
       JMP    $76E4   
LF6E1: JMP    $7768   
LF6E4: LDA    $8E,X   
       BNE    LF6EB   
       JMP    $7764   
LF6EB: DEC    $8E,X   
       LDA    $8D,X   
       CMP    #$58    
       BEQ    LF747   
       CMP    #$78    
       BEQ    LF752   
       CMP    #$60    
       BEQ    LF756   
       CMP    #$80    
       BEQ    LF760   
       CMP    #$70    
       BEQ    LF743   
       CMP    #$90    
       BEQ    LF726   
       CMP    #$68    
       BEQ    LF722   
       LDA    #$68    
LF70D: STA    $8D,X   
       INC    $8C,X   
       LDA    $8E,X   
       CMP    #$02    
       BCS    LF71F   
       LDA    #$10    
       STA    $8E,X   
LF71B: LDA    #$58    
       STA    $8D,X   
LF71F: JMP    $776E   
LF722: LDA    #$88    
       BNE    LF70D   
LF726: LDA    #$70    
LF728: STA    $8D,X   
       DEC    $8C,X   
       LDA    $8E,X   
       CMP    #$02    
       BCS    LF740   
       LDA    #$10    
       STA    $8E,X   
       LDA    $C9     
       AND    #$01    
       BEQ    LF71B   
       LDA    #$60    
       STA    $8D,X   
LF740: JMP    $776E   
LF743: LDA    #$90    
       BNE    LF728   
LF747: LDA    #$78    
LF749: STA    $8D,X   
       DEC    $8B,X   
       DEC    $8B,X   
       JMP    $776E   
LF752: LDA    #$58    
       BNE    LF749   
LF756: LDA    #$80    
LF758: STA    $8D,X   
       INC    $8B,X   
       INC    $8B,X   
       BNE    LF76E   
LF760: LDA    #$60    
       BNE    LF758   
LF764: LDA    #$10    
       STA    $8E,X   
LF768: LDA    #$70    
       STA    $8D,X   
       DEC    $8C,X   
LF76E: LDA    $8C,X   
       CMP    #$82    
       BCC    LF776   
       LDA    #$82    
LF776: STA    $C4     
       LDA    $8B,X   
       STA    $C3     
       LDA    $8D,X   
       STA    $C5     
       LDA    RSYNC   
       AND    #$80    
       BNE    LF78D   
       LDA    $D4     
       BNE    LF78D   
       JSR    $77C5   
LF78D: RTS            

LF78E: DEC    $E0     
       LDA    $E0     
       BNE    LF7C4   
       LDA    $BE     
       CMP    #$98    
       BNE    LF79B   
       RTS            

LF79B: JSR    $77A2   
       JSR    $7A0F   
       RTS            

LF7A2: LDA    $E0     
       BNE    LF7C4   
       LDA    #$14    
       STA    $E0     
       STA    $D0     
       INC    $E8     
       LDA    $E8     
       CMP    #$04    
       BNE    LF7B8   
       LDA    #$02    
       STA    $E8     
LF7B8: LDA    $E1     
       CMP    #$02    
       BEQ    LF7C2   
       INC    $E2     
       BNE    LF7C4   
LF7C2: INC    $E3     
LF7C4: RTS            

LF7C5: LDA    $8B,X   
       STA    $D6     
       LDA    $8C,X   
       STA    $D7     
       LDA    $8D,X   
       CMP    #$60    
       BEQ    LF7EA   
       CMP    #$80    
       BEQ    LF7EA   
       CMP    #$58    
       BEQ    LF7F9   
       CMP    #$78    
       BEQ    LF7F9   
       CMP    #$70    
       BEQ    LF7FE   
       CMP    #$90    
       BEQ    LF7FE   
       JMP    $7803   
LF7EA: LDA    #$01    
LF7EC: INC    $D6     
       INC    $D6     
       INC    $D6     
LF7F2: DEC    $D7     
       DEC    $D7     
       JMP    $780B   
LF7F9: LDA    #$02    
       JMP    $77F2   
LF7FE: LDA    #$03    
       JMP    $77EC   
LF803: LDA    #$04    
       INC    $D6     
       INC    $D6     
       INC    $D6     
LF80B: STA    $D5     
       LDA    $D6     
       STA    $D3     
       LDA    $D7     
       STA    $D4     
       LDA    #$11    
       ORA    $DE     
       STA    $DE     
       RTS            

LF81C: LDA    $EC     
       CMP    #$07    
       BNE    LF823   
       RTS            

LF823: LDA    COLUP1  
       AND    #$40    
       BEQ    LF82F   
       LDA    #$00    
       STA    $D4     
       STA    $C7     
LF82F: LDA    $D4     
       CMP    #$25    
       BCC    LF84F   
       LDA.w  $0005   
       AND    #$80    
       BEQ    LF854   
       LDA    $D4     
       CMP    #$2C    
       BCS    LF84F   
       LDA    $D3     
       CMP    #$3E    
       BCC    LF84F   
       CMP    #$5C    
       BCS    LF84F   
       JMP    $75D9   
LF84F: LDA    #$00    
       STA    $D4     
       RTS            

LF854: LDX    $D3     
       LDY    $D4     
       LDA    $D4     
       BEQ    LF874   
       LDA    $D5     
       CMP    #$01    
       BEQ    LF873   
       CMP    #$02    
       BEQ    LF870   
       CMP    #$03    
       BEQ    LF86D   
       INY            
       BNE    LF874   
LF86D: DEY            
       BNE    LF874   
LF870: DEX            
       BNE    LF874   
LF873: INX            
LF874: STX    $D3     
       STY    $D4     
       RTS            

LF879: AND    #$04    
       BEQ    LF887   
       LDA    $DE     
       AND    #$FB    
       STA    $DE     
       LDA    #$02    
       STA    $DC     
LF887: LDA    #$08    
       STA    AUDC0   
       DEC    $DC     
       BMI    LF8A1   
       LDX    $DC     
       LDA    $7FC4,X 
       STA    AUDF0   
       LDA    #$17    
       STA    AUDV0   
       LDA    $DE     
       AND    #$3B    
       JMP    $78E9   
LF8A1: LDA    #$00    
       STA    AUDV0   
       LDA    $DE     
       AND    #$BB    
       STA    $DE     
       AND    #$3B    
       JMP    $78E9   
LF8B0: AND    #$01    
       BEQ    LF8BE   
       LDA    $DE     
       AND    #$FE    
       STA    $DE     
       LDA    #$02    
       STA    $DD     
LF8BE: LDA    #$08    
       STA    AUDC1   
       DEC    $DD     
       BMI    LF8D2   
       LDX    $DD     
       LDA    $7FCA,X 
       STA    AUDF1   
       LDA    #$16    
       STA    AUDV1   
       RTS            

LF8D2: LDA    #$00    
       STA    AUDV1   
       LDA    $DE     
       AND    #$EE    
       STA    $DE     
       RTS            

LF8DD: LDA    $DE     
       BEQ    LF8F2   
       CMP    #$80    
       BCS    LF8F9   
LF8E5: CMP    #$40    
       BCS    LF879   
LF8E9: CMP    #$20    
       BCS    LF952   
LF8ED: CMP    #$10    
       BCS    LF8B0   
       RTS            

LF8F2: LDA    #$00    
       STA    AUDV0   
       STA    AUDV1   
       RTS            

LF8F9: AND    #$08    
       BEQ    LF90F   
       LDA    $DE     
       AND    #$F7    
       STA    $DE     
       LDA    #$04    
       STA    $DC     
       LDA    #$0A    
       STA    $F4     
       LDA    #$FF    
       STA    $DA     
LF90F: LDA    #$08    
       STA    AUDC0   
       LDX    $DC     
       LDA.w  $00DA   
       CMP    $7FC0,X 
       BCC    LF92B   
       DEX            
       BMI    LF936   
       STX    $DC     
       LDA    $7FC0,X 
       STA    AUDV0   
       LDA    #$15    
       STA    $DA     
LF92B: STA    AUDF0   
       INC    $DA     
       LDA    $DE     
       AND    #$37    
       JMP    $78E9   
LF936: LDA    $F4     
       STA    AUDV0   
       ORA    #$10    
       STA    AUDF0   
       DEC    $F4     
       BMI    LF94B   
       LDA    $DE     
       AND    #$33    
       STA    $DE     
       JMP    $78E9   
LF94B: LDA    $DE     
       AND    #$77    
       JMP    $78E5   
LF952: AND    #$02    
       BEQ    LF968   
       LDA    $DE     
       AND    #$FD    
       STA    $DE     
       LDA    #$04    
       STA    $DD     
       LDA    #$0D    
       STA    $F4     
       LDA    #$FF    
       STA    $DB     
LF968: LDA    #$08    
       STA    AUDC1   
       LDX    $DD     
       LDA.w  $00DB   
       CMP    $7FC6,X 
       BCC    LF984   
       DEX            
       BMI    LF989   
       STX    $DD     
       LDA    $7FC6,X 
       STA    AUDV1   
       LDA    #$14    
       STA    $DB     
LF984: STA    AUDF1   
       INC    $DB     
       RTS            

LF989: LDA    $F4     
       STA    AUDV1   
       ORA    #$10    
       STA    AUDF1   
       DEC    $F4     
       BMI    LF99C   
       LDA    $DE     
       AND    #$DD    
       STA    $DE     
       RTS            

LF99C: LDA    $DE     
       AND    #$11    
       JMP    $78ED   
LF9A3: LDA    #$48    
       LDX    #$00    
       JSR    $7F96   
       LDA    #$50    
       LDX    #$01    
       JSR    $7F96   
       STA    WSYNC   
       STA    HMOVE   
       STA    WSYNC   
       STA    HMCLR   
       STA    WSYNC   
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
       DEY            
       BPL    LF9C6   
       RTS            

LF9D4: LDA    $B2     
       CMP    #$07    
       BNE    LFA07   
       DEC    $8A     
       BNE    LF9E2   
       LDA    #$07    
       STA    $8A     
LF9E2: LDA    $E0     
       CMP    #$14    
       BCC    LF9EC   
       LDA    #$20    
       BNE    LF9F3   
LF9EC: CMP    #$0A    
       BCC    LF9F3   
       CLC            
       ADC    #$06    
LF9F3: STA    $89     
       LSR            
       LSR            
       LSR            
       LSR            
       JSR    $7A08   
       STA    $85     
       LDA    $89     
       AND    #$0F    
       JSR    $7A08   
       STA    $87     
LFA07: RTS            

LFA08: ASL            
       ASL            
       ASL            
       CLC            
       ADC    #$08    
       RTS            

LFA0F: LDA    #$00    
       STA    $C4     
       STA    $C7     
       STA    $D4     
       STA    $DE     
       LDA    #$4C    
       STA    $BC     
       LDA    #$32    
       STA    $BD     
       JSR    $7419   
       JSR    $7E96   
       LDA    #$61    
       STA    $89     
       LDA    #$01    
       STA    $8A     
       LDA    $E8     
       CMP    #$02    
       BEQ    LFA3C   
       BCS    LFA41   
       LDA    #$B1    
       JMP    $7A43   
LFA3C: LDA    #$51    
       JMP    $7A43   
LFA41: LDA    #$01    
LFA43: STA    $E9     
       STA    $EA     
       RTS            

LFA48: LDA    #$28    
       LDX    #$00    
       JSR    $7F96   
       LDA    #$58    
       LDX    #$01    
       JSR    $7F96   
       STA    WSYNC   
       STA    HMOVE   
       LDX    #$2A    
       LDA    $E1     
       CMP    #$02    
       BCC    LFA64   
       LDX    #$78    
LFA64: STX    COLUP0  
       STX    COLUP1  
       LDA    #$03    
       STA    NUSIZ0  
       LDA    #$01    
       STA    NUSIZ1  
       LDY    #$07    
LFA72: STA    WSYNC   
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
       BNE    LFA72   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       LDA    $E8     
       CMP    #$02    
       BEQ    LFAA7   
       BCS    LFAAB   
       LDA    #$86    
       BNE    LFAAD   
LFAA7: LDA    #$B8    
       BNE    LFAAD   
LFAAB: LDA    #$86    
LFAAD: STA    COLUP1  
       RTS            

LFAB0: LDX    #$02    
       LDY    #$08    
LFAB4: LDA    $81,X   
       AND    #$F0    
       LSR            
       ADC    #$08    
       STA.wy $009F,Y 
       LDA    $81,X   
       AND    #$0F    
       JSR    $7A08   
       STA.wy $00A1,Y 
       LDA    #$FC    
       STA.wy $00A0,Y 
       STA.wy $00A2,Y 
       DEY            
       DEY            
       DEY            
       DEY            
       DEX            
       BPL    LFAB4   
       LDA    $E1     
       CMP    #$01    
       BEQ    LFAE9   
       LDA    $A5     
       STA    $9F     
       LDA    $A7     
       STA    $A1     
       LDA    $A9     
       STA    $A3     
LFAE9: LDA    #$08    
       STA    $A5     
       STA    $A7     
       LDX    #$00    
       LDA    #$08    
       CMP    $9F     
       BNE    LFB0B   
       STX    $9F     
       CMP    $A1     
       BNE    LFB0B   
       STX    $A1     
       CMP    $A3     
       BNE    LFB0B   
       STX    $A3     
       CMP    $A5     
       BNE    LFB0B   
       STX    $A5     
LFB0B: RTS            

LFB0C: LDA    $AC     
       CLC            
       LDX    #$02    
       SED            
LFB12: ADC.wx $0081,X 
       STA    $81,X   
       LDA    #$00    
       DEX            
       BNE    LFB12   
       CLD            
       LDA    $AD     
       CLC            
       LDX    #$01    
       SED            
LFB23: ADC    $AE,X   
       STA    $AE,X   
       STA    $B0,X   
       LDA    #$00    
       DEX            
       BPL    LFB23   
       CLD            
       LDX    #$04    
LFB31: CLC            
       ASL    $B1     
       ROL    $B0     
       DEX            
       BNE    LFB31   
       LDA    $B0     
       STA    $81     
       LDA    $82     
       AND    #$0F    
       ORA    $B1     
       STA    $82     
       JSR    $7AB0   
       RTS            

LFB49: LDX    #$00    
       LDA    #$00    
LFB4D: STA    $8B,X   
       DEC    $84     
       INX            
       CPX    #$14    
       BNE    LFB4D   
       STA    $C5     
       STA    $C7     
       STA    $D4     
       STA    $C4     
       RTS            

LFB5F: LDA    #$00    
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
       JSR    $7B0C   
       LDA    #$FC    
       STA    $B6     
       STA    $B9     
       STA    $86     
       STA    $88     
       LDA    #$10    
       STA    $CA     
       LDA    #$80    
       STA    $DF     
       RTS            

LFB8B: LDA    INTIM   
       BNE    LFB8B   
       LDA    #$82    
       NOP            
       NOP            
       STA    WSYNC   
       STA    VBLANK  
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    VSYNC   
       STA    VBLANK  
       STA    COLUPF  
       LDA    #$2E    
       STA    TIM64T  
       LDA    #$01    
       STA    $EE     
       LDA    #$33    
       STA    $F0     
       LDA    #$65    
       STA    $F2     
       RTS            

LFBC0: .byte $74,$0A,$B0,$11,$CA,$A5,$BE,$C9,$78,$F0,$04,$A9,$78,$D0,$02,$A9
       .byte $58,$85,$BE,$D0,$2A,$0A,$B0,$11,$88,$A5,$BE,$C9,$70,$F0,$04,$A9
       .byte $70,$D0,$02,$A9,$90,$85,$BE,$D0,$16,$0A,$B0,$13,$C0,$82,$B0,$0F
       .byte $C8,$A5,$BE,$C9,$68,$F0,$04,$A9,$68,$D0,$02,$A9,$88,$85,$BE,$86
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$3C,$66,$66,$66,$66,$66,$3C
       .byte $00,$3C,$18,$18,$18,$18,$38,$18,$00,$7E,$60,$60,$3C,$06,$46,$3C
       .byte $00,$3C,$46,$06,$1C,$06,$46,$3C,$00,$0C,$0C,$7E,$6C,$3C,$1C,$0C
       .byte $00,$7C,$06,$06,$7C,$60,$60,$7E,$00,$3C,$66,$66,$7C,$60,$62,$3C
       .byte $00,$18,$18,$18,$0C,$06,$66,$7E,$00,$3C,$66,$66,$3C,$66,$66,$3C
       .byte $00,$3C,$46,$06,$3E,$66,$66,$3C,$00,$00,$00,$CD,$3B,$F7,$3B,$CD
       .byte $00,$00,$00,$B3,$DC,$EF,$DC,$B3,$00,$00,$00,$FF,$6E,$DB,$7E,$99
       .byte $00,$00,$00,$99,$7E,$DB,$6E,$FF,$00,$00,$00,$CD,$36,$FA,$36,$CD
       .byte $00,$00,$00,$B3,$6C,$5F,$6C,$B3,$00,$00,$00,$FF,$5A,$F7,$7E,$99
       .byte $00,$00,$00,$99,$7E,$F7,$5A,$FF,$00,$92,$44,$10,$BA,$10,$44,$92
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
       LDA    #$82    
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
       .byte $10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10
       .byte $10,$10,$10,$F0,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10
       .byte $10,$10,$F0,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$F0,$FF,$00
       .byte $00,$00,$00,$00,$40,$40,$40,$40,$40,$43,$40,$40,$40,$40,$40,$7F
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$FF,$80,$80,$80,$80
       .byte $08,$08,$08,$08,$F8,$00,$00,$00,$00,$80,$F1,$00,$00,$00,$00,$FF
       .byte $FF,$E0,$C0,$80,$00,$00,$00,$00,$00,$00,$00,$FF,$00,$00,$00,$00
       .byte $00,$07,$00,$80,$80,$80,$80,$FF,$80,$80,$80,$80,$80,$E0,$80,$80
       .byte $80,$80,$02,$02,$02,$02,$FE,$00,$00,$00,$00,$00,$C7,$00,$00,$00
       .byte $00,$FF
LFD96: .byte $00,$31,$49,$B5,$A5,$A5,$B5,$49,$31
LFD9F: .byte $00,$D2,$D2,$52,$D2,$92,$D2,$57,$D7
LFDA8: .byte $00,$37,$37,$37,$25,$25,$25,$37,$37
LFDB1: .byte $00,$54,$54,$64,$77,$77,$55,$55,$77
LFDBA: LDA    COLUP1  
       AND    #$80    
       BEQ    LFDCE   
       LDA    #$02    
       STA    $D9     
       JSR    $7DEF   
       JSR    $778E   
       JSR    $7EBA   
LFDCD: RTS            

LFDCE: LDA    VSYNC   
       AND    #$80    
       BEQ    LFDCD   
       LDX    $CA     
       LDA    $8D,X   
       CMP    #$98    
       BNE    LFDDD   
       RTS            

LFDDD: LDA    #$01    
       STA    $D9     
       JSR    $7EBA   
       RTS            

LFDE5: LDA    VBLANK  
       AND    #$80    
       BEQ    LFDFE   
       LDA    #$00    
       STA    $D4     
LFDEF: LDA    #$98    
       STA    $BE     
       LDA    #$28    
LFDF5: STA    $BF     
       LDA    #$E0    
       STA    $84     
       JSR    $7EE3   
LFDFE: RTS            

LFDFF: .byte $FF,$F0,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10
       .byte $10,$10,$10,$10,$10,$10,$10,$30,$70,$F0,$F0,$70,$30,$10,$10,$10
       .byte $10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10
       .byte $10,$10,$F0,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$C0,$C0,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$FF,$FF,$E0,$C0,$80,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$80,$C0,$E0,$C0,$F0,$FC,$FE,$FE,$E0
       .byte $80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$FF
LFE96: LDA    $E1     
       CMP    #$02    
       BEQ    LFEA1   
       LDA    $E2     
       JMP    $7EA3   
LFEA1: LDA    $E3     
LFEA3: CMP    #$09    
       BCC    LFEA9   
       LDA    #$09    
LFEA9: JSR    $7A08   
       CLC            
       ADC    #$08    
       STA    $BE     
       LDA    #$18    
       STA    $DF     
       LDA    #$C0    
       STA    $EC     
       RTS            

LFEBA: LDX    $CA     
       LDA    #$98    
       STA    $8D,X   
       LDA    #$04    
       STA    $8E,X   
       LDA    #$00    
       STA    $C7     
       LDA    $E1     
       CMP    #$02    
       BNE    LFED8   
       LDA    $D9     
       STA    $AC     
       LDA    #$00    
       STA    $AD     
       BEQ    LFEE0   
LFED8: LDA    $D9     
       STA    $AD     
       LDA    #$00    
       STA    $AC     
LFEE0: JSR    $7B0C   
LFEE3: LDA    #$AA    
       ORA    $DE     
       STA    $DE     
       RTS            

LFEEA: .byte $FF,$FF,$A9,$1F,$85,$F6,$A9,$80,$20,$F5,$7D,$20,$AD,$74,$A9,$4C
       .byte $85,$C3,$A9,$29,$85,$C4,$F0,$10,$10,$10,$10,$10,$10,$10,$10,$10
       .byte $10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10
       .byte $10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10
       .byte $10,$10,$10,$10,$10,$10,$10,$FF,$FF,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$FF,$FF,$E0,$C0,$80,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$E0,$00,$00,$00,$00,$00,$00,$00,$FF
LFF96: CLC            
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
       BCC    LFFB0   
       SBC    #$0F    
       INY            
LFFB0: EOR    #$07    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    HMP0,X  
       STA    WSYNC   
LFFBA: DEY            
       BPL    LFFBA   
       STA    RESP0,X 
       RTS            

LFFC0: .byte $1B,$1F,$1E,$1A
LFFC4: .byte $06,$08
LFFC6: .byte $1C,$1E,$1D,$18
LFFCA: .byte $04,$06
LFFCC: LDA    #$00    
       STA    $AE     
       STA    $AF     
       STA    $C4     
       STA    $83     
       STA    $81     
       STA    $82     
       STA    $EC     
       RTS            

LFFDD: .byte $FF,$FF,$FF,$80,$D0,$02,$A9,$60,$85,$BE,$E8,$4C,$9C,$74,$0A,$B0
       .byte $11,$CA,$A5,$BE,$C9,$78,$F0,$04,$A9,$78,$D0,$02,$A9,$58,$85,$00
       .byte $F0,$00,$F0
