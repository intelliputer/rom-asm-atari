; Disassembly of roms/Worm War I.bin
; Disassembled Tue Oct  6 15:24:49 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Worm War I.bin
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
RESM1   =  $13
AUDC0   =  $15
AUDC1   =  $16
AUDF0   =  $17
AUDF1   =  $18
AUDV0   =  $19
AUDV1   =  $1A
GRP0    =  $1B
GRP1    =  $1C
ENAM1   =  $1E
HMP0    =  $20
HMP1    =  $21
HMM1    =  $23
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXM1P   =  $31
CXP1FB  =  $33
CXM1FB  =  $35
CXPPMM  =  $37
INPT4   =  $3C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM8T   =  $0295
TIM64T  =  $0296

       ORG $F000

START:
LF000: SEI            
       CLD            
       LDA    #$00    
       TAX            
LF005: STA    VSYNC,X 
       INX            
       BNE    LF005   
       DEX            
       TXS            
       LDA    #$81    
       STA    $F9     
       LDA    #$01    
       STA    $FD     
       STA    CTRLPF  
       LDA    #$07    
       STA    $FE     
       DEC    $FB     
LF01C: LDX    #$2A    
       LDA    #$02    
       STA    WSYNC   
       STA    VBLANK  
       STA    VSYNC   
       STX    TIM8T   
       LDY    #$07    
       LDA    $F9     
       BEQ    LF039   
       CMP    #$A0    
       BCS    LF039   
       LDA    $FD     
       STA    $E7     
       STA    $E8     
LF039: LDX    #$00    
       LDA    $E0     
       BEQ    LF044   
       LDA    $F5     
       EOR    #$01    
       TAX            
LF044: LDA    $E7,X   
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA.wy $00C8,Y 
       DEY            
       LDA    $E7,X   
       AND    #$F0    
       LSR            
       STA.wy $00C8,Y 
       INX            
       INX            
       DEY            
       BPL    LF044   
       LDY    #$50    
       LDX    #$00    
LF060: LDA    $CA,X   
       BNE    LF06B   
       STY    $CA,X   
       INX            
       CPX    #$06    
       BNE    LF060   
LF06B: LDA    $CA     
       CLC            
       ADC    #$60    
       STA    $CA     
       LDA    $CC     
       ADC    #$60    
       STA    $CC     
       LDA    $CE     
       ADC    #$60    
       STA    $CE     
       LDA    $C8     
       ADC    #$60    
       STA    $C8     
       LDX    #$2D    
LF086: LDA    INTIM   
       BNE    LF086   
       STA    WSYNC   
       STA    VSYNC   
       STX    TIM64T  
       LDA    #$FF    
       STA    $F2     
       LDA    SWCHB   
       AND    #$08    
       BNE    LF0A1   
       LDA    #$0F    
       STA    $F2     
LF0A1: LDA    $F9     
       BEQ    LF0A9   
       LDA    #$B0    
       STA    $CE     
LF0A9: LDA    SWCHB   
       ASL            
       LDA    #$48    
       BCS    LF0B3   
       LDA    #$14    
LF0B3: STA    $F1     
       LDY    $F9     
       BMI    LF0BC   
       JMP    LF176   
LF0BC: LDA    #$00    
       LDX    #$70    
LF0C0: STA    $80,X   
       DEX            
       BPL    LF0C0   
       LDA    #$00    
       STA    $D8     
       LDA    #$00    
       STA    $F7     
       LDA    #$FF    
       STA    $F6     
       LDA    #$F0    
       STA    $F8     
       LDY    $FD     
       LDA    #$FD    
       STA    $A5     
       CPY    #$05    
       BEQ    LF0FB   
       CPY    #$02    
       BEQ    LF0FB   
       CPY    #$08    
       BEQ    LF0FB   
       LDA    #$80    
       STA    $F7     
       CPY    #$01    
       BEQ    LF0FB   
       CPY    #$04    
       BEQ    LF0FB   
       CPY    #$07    
       BEQ    LF0FB   
       LDA    #$00    
       STA    $F6     
LF0FB: LDA    #$99    
       STA    $ED     
       STA    $EE     
       LDA    #$10    
       STA    $E1     
       LDX    #$07    
LF107: LDA    $F7     
       STA    $84,X   
       STA    $9C,X   
       LDA    #$E0    
       STA    $B8,X   
       LDA    #$E8    
       STA    $B0,X   
       LDA    #$01    
       STA    $C0,X   
       DEX            
       BPL    LF107   
       LDA    #$04    
       STA    $E3     
       LDA    #$3D    
       STA    $E4     
       CPY    #$04    
       BCC    LF136   
       LDA    #$20    
       STA    $E4     
       LDA    #$50    
       STA    $E5     
       CPY    #$07    
       BCC    LF136   
       STY    $E0     
LF136: LDA    $F9     
       CMP    #$A0    
       BCC    LF15F   
       LDA    #$B0    
       STA    $CE     
       STA    $CC     
       STA    $CA     
       LDA    #$50    
       STA    $CF     
       STA    $CB     
       STA    $CD     
       LDA    SWCHB   
       LSR            
       BCC    LF15C   
       LDA    #$00    
       STA    $F9     
       STA    $F5     
       LDA    $F1     
       STA    $DB     
LF15C: JMP    LF1B1   
LF15F: LDA    $F9     
       CMP    #$81    
       BNE    LF167   
       INC    $D8     
LF167: LDA    $F1     
       STA    $DB     
       LDA    #$01    
       STA    $F9     
       LDA    #$04    
       STA    $A9     
       JMP    LF79D   
LF176: LDA    SWCHB   
       LSR            
       LSR            
       BCS    LF1A1   
       LDA    $F9     
       BNE    LF187   
       LDA    #$80    
       STA    $F9     
       BMI    LF1A1   
LF187: CLC            
       ADC    #$04    
       STA    $F9     
       BPL    LF1A1   
       LDA    $FD     
       CLC            
       ADC    #$01    
       STA    $FD     
       CMP    #$0A    
       BNE    LF1A1   
       LDA    #$01    
       STA    $FD     
       LDA    #$00    
       STA    $F5     
LF1A1: LDA    SWCHB   
       LSR            
       BCS    LF1B1   
       INC    $F3     
       BNE    LF1AD   
       INC    $F4     
LF1AD: LDA    #$FF    
       STA    $F9     
LF1B1: LDA    #$04    
       STA    $A9     
       LDA    $F0     
       BEQ    LF1F8   
       STA    AUDF0   
       LDA    #$07    
       STA    AUDC0   
       LDA    #$08    
       STA    AUDV0   
       LDA    #$00    
       STA    AUDV1   
       LDA    $F0     
       AND    #$1F    
       BNE    LF1ED   
       STA    $E2     
       LDA    $E0     
       BNE    LF1ED   
       LDY    $D8     
LF1D5: SED            
       LDA    #$05    
       CLC            
       ADC    $E7     
       STA    $E7     
       LDA    $E9     
       ADC    #$00    
       STA    $E9     
       LDA    $EB     
       ADC    #$00    
       STA    $EB     
       CLD            
       DEY            
       BPL    LF1D5   
LF1ED: DEC    $F0     
       BNE    LF1F5   
       LDA    #$A0    
       STA    $B8     
LF1F5: JMP    LF79D   
LF1F8: LDA    $AF     
       BEQ    LF265   
       AND    $F2     
       STA    COLUP1  
       STA    COLUP0  
       LDA    $AF     
       CMP    #$F0    
       BCS    LF21E   
       LSR            
       STA    AUDF0   
       STA    AUDV0   
       EOR    #$AA    
       STA    AUDF1   
       STA    AUDV1   
       LDA    #$05    
       STA    AUDC0   
       LDA    #$09    
       STA    AUDC1   
       JMP    LF265   
LF21E: LDA    #$FC    
       STA    $A5     
       INC    $AA     
       LDX    $AA     
       LDA    #$40    
       STA    $AF     
       CPX    #$07    
       BNE    LF240   
       LDX    #$01    
       STX    $AA     
       LDA    #$FF    
       STA    $F0     
       INC    $D8     
       LDA    $D8     
       CMP    #$10    
       BNE    LF240   
       DEC    $D8     
LF240: LDY    #$00    
LF242: LDA    LFF58,X 
       STA.wy $00C0,Y 
       LDA    #$10    
       STA.wy $00B8,Y 
       INY            
       DEX            
       BNE    LF242   
       LDA    $FE     
       LSR            
       LSR            
       ORA    #$01    
       STA    $C0     
       LDA    $F3     
       STA    $AD     
       LDA    $F0     
       BEQ    LF265   
       LDA    #$E0    
       STA    $B8     
LF265: LDA    $D5     
       CLC            
       ADC    $DB     
       STA    $D5     
       BCS    LF271   
       JMP    LF39A   
LF271: INC    $E1     
       LDA    $E1     
       CMP    #$14    
       BEQ    LF27C   
       JMP    LF39A   
LF27C: LDX    #$01    
LF27E: LDA    $D1,X   
       BEQ    LF292   
       INC    $D1,X   
       LDA    $D1,X   
       CMP    #$09    
       BNE    LF292   
       LDA    #$00    
       STA    $D1,X   
       LDA    #$E0    
       STA    $BF     
LF292: DEX            
       BPL    LF27E   
       LDX    #$06    
       LDA    $BF     
       CMP    #$D0    
       BNE    LF29F   
       LDA    #$00    
LF29F: STA    $FF     
       LDA    $C7     
       STA    $DD     
LF2A5: LDA    $C0,X   
       STA    $C1,X   
       LDA    $B8,X   
       STA    $B9,X   
       DEX            
       BPL    LF2A5   
       LDA    $FF     
       STA    $B8     
       LDA    $DD     
       STA    $C0     
       ROR    $AD     
       LDA    #$01    
       STA    $E1     
       LDA    $F7     
       BNE    LF2C5   
       JMP    LF2FF   
LF2C5: LDX    #$1E    
LF2C7: LDA    $84,X   
       STA    $85,X   
       DEX            
       BPL    LF2C7   
       LDA    $F3     
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDX    $D8     
       LDA    LFCB0,X 
       CLC            
LF2DB: ROL            
       DEY            
       BPL    LF2DB   
       STA    $DD     
       LDX    #$03    
LF2E3: LDA    $F3     
       CLC            
       ADC    $F4     
       STA    $F3     
       LDA    $80,X   
       EOR    $F3     
       STA    $FF     
       LSR            
       EOR    $FF     
       INC    $F3     
       AND    $DD     
       ORA    LFFB8,X 
       STA    $80,X   
       DEX            
       BPL    LF2E3   
LF2FF: LDA    $F3     
       LSR            
       BCC    LF31A   
       LDA    $F3     
       BPL    LF314   
       INC    $FE     
       LDA    $FE     
       CMP    #$1B    
       BNE    LF31A   
       DEC    $FE     
       BNE    LF31A   
LF314: DEC    $FE     
       BNE    LF31A   
       INC    $FE     
LF31A: LDA    $FE     
       AND    #$0F    
       TAY            
       LDA    $FE     
       LSR            
       LSR            
       LSR            
       TAX            
       LDA    LFCD0,Y 
       AND    $80,X   
       STA    $80,X   
       CPX    #$03    
       BEQ    LF338   
       INX            
       LDA    LFCF0,Y 
       AND    $80,X   
       STA    $80,X   
LF338: LDA    $80     
       STA    $84     
       LDA    $81     
       STA    $8C     
       LDA    $82     
       STA    $94     
       LDA    $83     
       STA    $9C     
       LDA    $E3     
       SEC            
       SBC    #$10    
       STA    $E3     
       LDA    $A7     
       BEQ    LF35A   
       ASL            
       BCC    LF358   
       LDA    #$80    
LF358: STA    $A7     
LF35A: LDA    $A8     
       BEQ    LF365   
       ASL            
       BCC    LF363   
       LDA    #$80    
LF363: STA    $A8     
LF365: LDX    $F5     
       LDA    $A7,X   
       STA    $A6     
       LDA    $F9     
       BNE    LF377   
       LDA    $E3     
       AND    #$10    
       CMP    #$10    
       BNE    LF399   
LF377: SED            
       LDA    $ED     
       SEC            
       SBC    #$01    
       STA    $ED     
       CLD            
       BCS    LF386   
       LDA    #$00    
       STA    $ED     
LF386: LDA    $E0     
       BEQ    LF399   
       SED            
       LDA    $EE     
       SEC            
       SBC    #$01    
       STA    $EE     
       CLD            
       BCS    LF399   
       LDA    #$00    
       STA    $EE     
LF399: NOP            
LF39A: LDA    $D7     
       CLC            
       ADC    #$90    
       STA    $D7     
       BCC    LF406   
       LDX    #$07    
       LDA    $AD     
       STA    $FF     
LF3A9: LDA    $B8,X   
       CMP    #$D0    
       BCC    LF3B4   
       LSR    $FF     
       JMP    LF403   
LF3B4: LSR    $FF     
       BCC    LF3DD   
       SEC            
       SBC    #$10    
       STA    $B8,X   
       BCS    LF3C3   
       LDA    #$A0    
       STA    $B8,X   
LF3C3: CMP    #$50    
       BNE    LF403   
       DEC    $C0,X   
       LDA    $C0,X   
       BNE    LF403   
       INC    $C0,X   
       LDA    #$60    
       STA    $B8,X   
       LDA    LFDC0,X 
       EOR    $AD     
       STA    $AD     
       JMP    LF403   
LF3DD: CLC            
       ADC    #$10    
       STA    $B8,X   
       CMP    #$B0    
       BNE    LF3EA   
       LDA    #$00    
       STA    $B8,X   
LF3EA: CMP    #$60    
       BNE    LF403   
       INC    $C0,X   
       LDA    $C0,X   
       CMP    #$08    
       BNE    LF403   
       DEC    $C0,X   
       LDA    #$50    
       STA    $B8,X   
       LDA    LFDC0,X 
       EOR    $AD     
       STA    $AD     
LF403: DEX            
       BPL    LF3A9   
LF406: LDA    $ED     
       LDY    $E0     
       BEQ    LF40E   
       ORA    $EE     
LF40E: CMP    #$00    
       BNE    LF43F   
       DEC    $D4     
       LDA    $D4     
       CMP    #$01    
       BNE    LF43F   
       LDA    #$02    
       STA    $D4     
       LDA    #$00    
       STA    AUDV0   
       STA    AUDV1   
       STA    COLUBK  
       LDA    $F9     
       BEQ    LF43C   
       BMI    LF43C   
       LDY    $FD     
       LDA    #$01    
       CPY    #$07    
       BEQ    LF436   
       LDA    #$07    
LF436: STA    $FD     
       LDA    #$81    
       STA    $F9     
LF43C: JMP    LF49F   
LF43F: LDA    $D4     
       BEQ    LF49F   
       AND    $F2     
       STA    COLUPF  
       LDA    #$07    
       STA    AUDC0   
       LDA    #$08    
       STA    AUDC1   
       LDA    #$FF    
       STX    AUDV0   
       LDA    #$FF    
       STX    AUDV1   
       LDA    $D4     
       LSR            
       EOR    #$07    
       ORA    #$10    
       STA    AUDF0   
       SEC            
       SBC    #$03    
       STA    AUDF1   
       LDX    #$07    
       LDA    #$00    
       STA    $A8     
       STA    $A7     
       STA    $A6     
       LDA    #$E0    
LF471: STA    $B8,X   
       DEX            
       BPL    LF471   
       INX            
       STX    $D1     
       STX    $D2     
       DEC    $D4     
       BEQ    LF482   
       JMP    LF79D   
LF482: LDX    #$07    
LF484: LDA    $F7     
       STA    $84,X   
       STA    $9C,X   
       LDA    #$00    
       STA    $94,X   
       STA    $8C,X   
       DEX            
       BPL    LF484   
       STA    $E6     
       LDA    #$04    
       STA    $E2     
       DEC    $AA     
       BNE    LF49F   
       INC    $AA     
LF49F: LDA    $F4     
       CMP    #$F8    
       BCC    LF4B2   
       LDA    SWCHB   
       ASL            
       ASL            
       BCC    LF4B2   
       LDA    $AD     
       EOR    $F3     
       STA    $AD     
LF4B2: LDA    $AF     
       BEQ    LF4B9   
       JMP    LF587   
LF4B9: LDX    $F5     
       LDA    $DE     
       ORA    $DF     
       BNE    LF4DC   
       LDA    $AB     
       ORA    $AC     
       BNE    LF4FD   
       LDA    $D9,X   
       BNE    LF53F   
       LDA    $DB     
       LSR            
       LSR            
       LSR            
       LSR            
       STA    AUDV1   
       STA    AUDF1   
       LDA    #$03    
       STA    AUDC1   
       JMP    LF549   
LF4DC: LSR            
       TAX            
       LDA    LFEC8,X 
       STA    AUDF1   
       LDA    #$0F    
       STA    AUDC1   
       LDA    $DE     
       ORA    $DF     
       LSR            
       STA    AUDV1   
       DEC    $DE     
       BPL    LF4F4   
       INC    $DE     
LF4F4: DEC    $DF     
       BPL    LF4FA   
       INC    $DF     
LF4FA: JMP    LF549   
LF4FD: LDA    $DC     
       BEQ    LF517   
       DEC    $DC     
       BNE    LF517   
       LDY    #$E0    
       LDA    $BE     
       CMP    #$D0    
       BNE    LF50F   
       STY    $BE     
LF50F: LDA    $BF     
       CMP    #$D0    
       BNE    LF517   
       STY    $BF     
LF517: STX    $FF     
       LSR            
       LSR            
       EOR    #$0F    
       TAX            
       LDA    LFEC8,X 
       STA    AUDF1   
       LDA    #$0F    
       STA    AUDC1   
       LDA    LFEC8,X 
       ORA    #$0C    
       STA    AUDV1   
       LDX    $F5     
       DEC    $AB     
       BPL    LF536   
       INC    $AB     
LF536: DEC    $AC     
       BPL    LF53C   
       INC    $AC     
LF53C: JMP    LF549   
LF53F: STA    AUDF1   
       EOR    #$AA    
       STA    AUDC1   
       LDA    #$FF    
       STA    AUDV1   
LF549: LDA    $D1     
       ORA    $D2     
       TAX            
       BNE    LF57A   
       LDA    $D0     
       BNE    LF55E   
       LDA    $A6     
       BNE    LF56B   
       LDA    #$00    
       STA    AUDV0   
       BEQ    LF587   
LF55E: DEC    $D0     
       STA    AUDV0   
       EOR    #$FF    
       STA    AUDC0   
       STA    AUDF0   
       JMP    LF587   
LF56B: ORA    #$03    
       STA    AUDF0   
       LDA    #$0D    
       STA    AUDC0   
       LDA    #$0C    
       STA    AUDV0   
       JMP    LF587   
LF57A: TAX            
       LDA    $B7,X   
       STA    AUDV0   
       EOR    #$FF    
       STA    AUDC0   
       LDA    #$AA    
       STA    AUDF0   
LF587: LDA    $FD     
       CMP    #$04    
       BCS    LF594   
       LDA    $F5     
       BEQ    LF594   
       JMP    LF757   
LF594: LDA    $A5     
       CMP    #$FC    
       BNE    LF59D   
       JMP    LF757   
LF59D: LDX    $F5     
       LDA    $D9,X   
       ORA    $AB,X   
       ORA    $DE,X   
       BEQ    LF5AA   
       JMP    LF692   
LF5AA: LDA    CXP1FB  
       BPL    LF5B1   
       JMP    LF631   
LF5B1: LDA    CXPPMM  
       BMI    LF5B8   
       JMP    LF692   
LF5B8: LDX    #$06    
       LDA    $AE     
       BMI    LF5BF   
       INX            
LF5BF: LDA    #$00    
       STA    $AE     
       LDA    $B8,X   
       CMP    #$D0    
       BCC    LF606   
       BEQ    LF5CE   
       JMP    LF692   
LF5CE: LDA    $DC     
       BEQ    LF5D4   
       INC    $E6     
LF5D4: INC    $DC     
       INC    $DC     
       LDA    $DB     
       LSR            
       LSR            
       LDY    $F5     
       STA.wy $00AB,Y 
       DEC    $E6     
       LDA    $DB     
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       LDA    $E0     
       BNE    LF5F0   
       LDY    #$00    
LF5F0: SED            
       LDA    LFCC0,X 
       CLC            
       ADC.wy $00ED,Y 
       STA.wy $00ED,Y 
       CLD            
       BCC    LF603   
       LDA    #$99    
       STA.wy $00ED,Y 
LF603: JMP    LF692   
LF606: LDY    $F5     
       LDA    #$40    
       STA.wy $00DE,Y 
       STA.wy $00D9,Y 
       LDA    $E0     
       BNE    LF616   
       LDY    #$00    
LF616: SED            
       LDA.wy $00ED,Y 
       SEC            
       SBC    #$10    
       STA.wy $00ED,Y 
       CLD            
       BCS    LF628   
       LDA    #$00    
       STA.wy $00ED,Y 
LF628: NOP            
       NOP            
       LDA    #$00    
       STA    $B8,X   
       JMP    LF692   
LF631: LDX    $F5     
       LDA    $E0     
       BNE    LF639   
       LDX    #$00    
LF639: SED            
       LDA    $ED,X   
       SEC            
       SBC    #$06    
       STA    $ED,X   
       CLD            
       BCS    LF648   
       LDA    #$00    
       STA    $ED,X   
LF648: LDA    #$10    
       LDX    $F5     
       STA    $D9,X   
       LDA    $E4,X   
       STA    $FF     
       SEC            
       SBC    #$02    
       LSR            
       LSR            
       AND    #$0F    
       TAY            
       LDA    $E4,X   
       SEC            
       SBC    #$02    
       LSR            
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       LDA    LFEC4,X 
       TAX            
       LDA    LFCD0,Y 
       AND    $8B,X   
       STA    $8B,X   
       DEX            
       LDA    LFCD0,Y 
       AND    $8B,X   
       STA    $8B,X   
       LDA    $FF     
       CMP    #$60    
       BCS    LF692   
       TXA            
       CLC            
       ADC    #$08    
       TAX            
       LDA    LFCF0,Y 
       AND    $8B,X   
       STA    $8B,X   
       INX            
       LDA    LFCF0,Y 
       AND    $8B,X   
       STA    $8B,X   
LF692: LDA    $F7     
       ORA    $A3     
       STA    $A3     
       LDA    $F7     
       ORA    $A2     
       STA    $A2     
       LDA    CXM1FB  
       BPL    LF701   
       LDX    $F5     
       LDA    $E0     
       BNE    LF6AA   
       LDX    #$00    
LF6AA: SED            
       LDA    $E7,X   
       CLC            
       ADC    #$05    
       STA    $E7,X   
       LDA    $E9,X   
       ADC    #$00    
       STA    $E9,X   
       LDA    $EB,X   
       ADC    #$00    
       STA    $EB,X   
       CLD            
       LDX    #$00    
       LDA    $A6     
       STX    $A6     
LF6C5: LSR            
       BCS    LF6CC   
       INX            
       BNE    LF6C5   
       DEX            
LF6CC: LDY    $F5     
       LDA.wy $00E4,Y 
       STA    $FF     
       LSR            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    LFEC4,Y 
       STX    $DD     
       CLC            
       ADC    $DD     
       TAX            
       LDA    $FF     
       AND    #$1F    
       LSR            
       LSR            
       STA    $FF     
       TYA            
       AND    #$01    
       ASL            
       ASL            
       ASL            
       ORA    $FF     
       TAY            
       LDA    LFDC0,Y 
       EOR    $84,X   
       STA    $84,X   
       LDA    #$10    
       STA    $D0     
       JMP    LF757   
LF701: LDA    CXM1P   
       BPL    LF757   
       DEC    $E6     
       LDX    #$00    
       LDA    $A6     
       STX    $A6     
LF70D: LSR            
       BCS    LF714   
       INX            
       BNE    LF70D   
       DEX            
LF714: LDA    $B8,X   
       CMP    #$D0    
       BNE    LF725   
       LDA    #$E0    
       STA    $B8,X   
       LDA    #$3C    
       STA    $D4     
       JMP    LF757   
LF725: CMP    #$C1    
       BCC    LF72E   
       INC    $E6     
       JMP    LF757   
LF72E: LDA    #$F0    
       STA    $B8,X   
       INX            
       TXA            
       LDX    $F5     
       STA    $D1,X   
       LDA    $E0     
       BNE    LF73E   
       LDX    #$00    
LF73E: SED            
       LDA    $E7,X   
       CLC            
       LDY    $D8     
       ADC    LFE48,Y 
       STA    $E7,X   
       LDA    $E9,X   
       ADC    LFE58,Y 
       STA    $E9,X   
       LDA    $EB,X   
       ADC    #$00    
       STA    $EB,X   
       CLD            
LF757: STA    CXCLR   
       LDA    $E6     
       ORA    $D1     
       ORA    $D2     
       ORA    $D4     
       ORA    $DE     
       ORA    $DF     
       ORA    $AB     
       ORA    $AC     
       BNE    LF79D   
       DEC    $AF     
       BNE    LF79D   
       LDA    #$FD    
       STA    $A5     
       LDY    $AA     
       STY    $E6     
       LDX    #$07    
LF779: LDA    $B8,X   
       CMP    #$C1    
       BCS    LF785   
       LDA    LFE40,Y 
       STA    $B8,X   
       DEY            
LF785: DEX            
       BPL    LF779   
       LDA    $F3     
       CMP    #$90    
       BCC    LF79D   
       LDX    #$00    
LF790: LDA    $B8,X   
       CMP    #$C1    
       BCC    LF799   
       INX            
       BNE    LF790   
LF799: LDA    #$D0    
       STA    $B8,X   
LF79D: LDX    $F5     
       LDA    $A6     
       STA    $A7,X   
       TXA            
       EOR    #$01    
       STA    $F5     
       LDA    #$FF    
       STA    $DD     
       LDA    $FD     
       CMP    #$04    
       BCS    LF7BD   
       LDA    $F5     
       BEQ    LF7BD   
       LDA    #$00    
       STA    $DD     
       JMP    LF85A   
LF7BD: LDX    $F5     
       LDA    $A7,X   
       STA    $A6     
       ORA    $D1,X   
       ORA    $DE,X   
       ORA    $AB,X   
       ORA    $D9,X   
       ORA    $AF     
       BNE    LF7E2   
       LDA    $F9     
       BEQ    LF7D8   
       LDA    $F3     
       JMP    LF7DA   
LF7D8: LDA    INPT4,X 
LF7DA: BMI    LF7E2   
       LDA    #$80    
       STA    $A6     
       BMI    LF7E4   
LF7E2: LSR    $A6     
LF7E4: LDX    $F5     
       LDA    $E0     
       BNE    LF7EC   
       LDX    #$00    
LF7EC: LDA    $ED,X   
       BNE    LF7F8   
       LDA    #$00    
       STA    $A6     
       STA    $A7,X   
       BEQ    LF85A   
LF7F8: LDX    $F5     
       LDA    $A6     
       STA    $A7,X   
       LDA    $F9     
       BEQ    LF80D   
       LDA    $AD     
       ROL            
       ORA    $F4     
       AND    #$DD    
       ORA    #$22    
       BNE    LF810   
LF80D: LDA    SWCHA   
LF810: CMP    #$FF    
       BEQ    LF85A   
       LDX    $F5     
       BNE    LF81C   
       LSR            
       LSR            
       LSR            
       LSR            
LF81C: EOR    #$0F    
       AND    #$0F    
       STA    $FF     
       AND    #$03    
       TAX            
       LDA    LFE18,X 
       BEQ    LF83D   
       BMI    LF839   
       INC    $DB     
       INC    $DB     
       BNE    LF83D   
       LDA    #$FE    
       STA    $DB     
       JMP    LF83D   
LF839: LDA    $F1     
       STA    $DB     
LF83D: LDA    $FF     
       LSR            
       LSR            
       TAX            
       LDA    LFE1C,X 
       CLC            
       LDX    $F5     
       ADC    $E4,X   
       STA    $E4,X   
       CMP    #$79    
       BCC    LF854   
       LDA    #$79    
       STA    $E4,X   
LF854: CMP    #$05    
       BNE    LF85A   
       INC    $E4,X   
LF85A: LDA    $F3     
       CLC            
       ADC    $F4     
       STA    $F3     
       LDA    $F4     
       ADC    #$08    
       STA    $F4     
       LDX    $E1     
       LDA    LFE98,X 
       STA    $B6     
       CLC            
       ADC    #$13    
       STA    $B7     
       LDX    $F5     
       LDY    $FD     
       CPY    #$04    
       BCS    LF87D   
       LDX    #$00    
LF87D: LDA    $D9,X   
       BEQ    LF8AE   
       BMI    LF8AE   
       CPY    #$04    
       BCS    LF88B   
       LDY    $F5     
       BNE    LF893   
LF88B: DEC    $D9,X   
       LDY    $DD     
       BEQ    LF893   
       DEC    $D9,X   
LF893: AND    #$04    
       BEQ    LF8A8   
       LDA    $B6     
       CLC            
       ADC    #$80    
       STA    $B6     
       LDA    $B7     
       CLC            
       ADC    #$80    
       STA    $B7     
       JMP    LF8AE   
LF8A8: LDA    #$E8    
       STA    $B6     
       STA    $B7     
LF8AE: LDY    #$01    
LF8B0: LDA.wy $00D1,Y 
       BEQ    LF8C6   
       TAX            
       DEX            
       DEC    $B8,X   
       DEC    $B8,X   
       LDA    $B8,X   
       CMP    #$E0    
       BNE    LF8C6   
       LDA    #$00    
       STA.wy $00D1,Y 
LF8C6: DEY            
       BPL    LF8B0   
       LDA    $DD     
       BEQ    LF8E7   
       LDX    $F5     
       LDA    $E4,X   
       LDX    #$01    
LF8D3: CMP    #$0F    
       BCC    LF8DD   
       SEC            
       SBC    #$0F    
       INX            
       BNE    LF8D3   
LF8DD: STX    $FC     
       TAX            
       LDA    LFDB0,X 
       ORA    $FC     
       STA    $FC     
LF8E7: LDA    $F6     
       BNE    LF8ED   
       INC    $F8     
LF8ED: LDA    INTIM   
       BNE    LF8ED   
       STA    WSYNC   
       STA    VBLANK  
       LDX    $F5     
       LDA    $FD     
       CMP    #$04    
       BCS    LF900   
       LDX    #$00    
LF900: LDA    $F9     
       BNE    LF90A   
       LDA    $D4     
       CMP    #$02    
       BNE    LF910   
LF90A: LDA    $E3     
       EOR    #$FC    
       BNE    LF913   
LF910: LDA    LFC77,X 
LF913: AND    $F2     
       STA    COLUP0  
       STA    COLUP1  
       LDA    $AB,X   
       BEQ    LF923   
       AND    $F2     
       STA    COLUP0  
       STA    COLUP1  
LF923: LDA    $D9,X   
       STA    WSYNC   
       BEQ    LF931   
       LDA    #$34    
       AND    $F2     
       STA    COLUP0  
       STA    COLUP1  
LF931: LDA    #$00    
       STA    $DD     
       LDA    $F9     
       BNE    LF942   
       LDA    $E0     
       BEQ    LF942   
       LDA    $F5     
       ASL            
       STA    $DD     
LF942: STA    WSYNC   
       BIT    $FF     
       LDA    #$01    
       STA    NUSIZ0  
       LDA    #$00    
       STA    NUSIZ1  
       LDX    #$05    
       LDA    #$10    
       STA    HMP1    
       LDY    $DD     
LF956: DEY            
       BPL    LF956   
       NOP            
       NOP            
       NOP            
       NOP            
       STA    RESP0   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       LDA    $F9     
       BEQ    LF999   
       CMP    #$A0    
       BCS    LF999   
       LDA    #$02    
       STA    NUSIZ1  
       STA    WSYNC   
       STA    WSYNC   
LF975: STA    WSYNC   
       STX    $FA     
       LDA    LFE20,X 
       STA    GRP0    
       LDA    LFE28,X 
       STA    GRP1    
       LDY    $CE     
       LDA    ($FA),Y 
       LDY    $CF     
       ORA    ($FA),Y 
       TAY            
       LDA    LFE30,X 
       STA    GRP0    
       STY    GRP1    
       DEX            
       BPL    LF975   
       JMP    LF9F4   
LF999: STA    WSYNC   
       LDA    $DD     
       BNE    LF9CB   
LF99F: STX    $FA     
       LDY    $CE     
       LDA    ($FA),Y 
       LDY    $CF     
       ORA    ($FA),Y 
       STA    $FF     
       STA    WSYNC   
       LDY    $CA     
       LDA    ($FA),Y 
       LDY    $CB     
       ORA    ($FA),Y 
       STA    GRP0    
       LDY    $CC     
       LDA    ($FA),Y 
       LDY    $CD     
       ORA    ($FA),Y 
       STA    GRP1    
       LDA    $FF     
       STA    GRP0    
       DEX            
       BPL    LF99F   
       JMP    LF9F4   
LF9CB: STX    $FA     
       LDY    $CE     
       LDA    ($FA),Y 
       LDY    $CF     
       STA    WSYNC   
       ORA    ($FA),Y 
       STA    $FF     
       LDY    $CA     
       LDA    ($FA),Y 
       LDY    $CB     
       ORA    ($FA),Y 
       STA    GRP0    
       LDY    $CC     
       LDA    ($FA),Y 
       LDY    $CD     
       ORA    ($FA),Y 
       STA    GRP1    
       LDA    $FF     
       STA    GRP0    
       DEX            
       BPL    LF9CB   
LF9F4: STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    NUSIZ0  
       LDY    #$06    
       LDX    #$05    
       LDA    $E0     
       BEQ    LFA0C   
       LDA    $F5     
       BEQ    LFA0C   
       LDY    #$08    
LFA0C: LDA    #$00    
       STA    HMP0    
       STA    WSYNC   
       STA    HMOVE   
       BIT    $FF     
LFA16: DEY            
       BPL    LFA16   
       STA    RESP0   
LFA1B: STA    WSYNC   
       STX    $FA     
       LDY    $C8     
       LDA    ($FA),Y 
       LDY    $C9     
       ORA    ($FA),Y 
       STA    GRP0    
       DEX            
       BPL    LFA1B   
       STA    WSYNC   
       LDA    #$00    
       STA    NUSIZ1  
       STA    GRP0    
       LDA    #$05    
       STA    NUSIZ0  
       LDA    $FC     
       AND    #$0F    
       STA    $FF     
       STA    WSYNC   
       LDX    $FF     
       LDA    #$00    
       STA    GRP0    
       LDA    $FC     
       NOP            
       NOP            
LFA4A: DEX            
       BNE    LFA4A   
       STA    HMP1    
       STA    HMM1    
       STA    RESP1   
       STA    WSYNC   
       LDA    $FC     
       LDX    $FF     
       LDA    $E3     
       ORA    #$08    
       EOR    #$F0    
       AND    $F6     
       AND    $F2     
       STA    COLUP0  
LFA65: DEX            
       BNE    LFA65   
       STA    RESM1   
       STA    WSYNC   
       STA    HMOVE   
       LDX    $C0     
       ROL    LF000,X 
       ROL    LF000,X 
       NOP            
LFA77: DEX            
       BNE    LFA77   
       STA    RESP0   
       LDA    $E1     
       STA    WSYNC   
       STA    $D6     
       TAY            
       LDA    #$00    
       STA    $D3     
       LDA    $84     
       STA    $80     
       LDA    $8C     
       STA    $81     
       LDA    $94     
       STA    $82     
       LDA    $9C     
       STA    $83     
       LDA    $E3     
       STA    $E2     
       AND    $F2     
       STA    COLUPF  
       LDX    #$E8    
       LDA    LFEB0,Y 
       CLC            
       ADC    $B8     
       TAY            
       LDA    #$70    
       STA    $DD     
       LDA    $F8     
       AND    #$7F    
       CMP    #$08    
       BCS    LFAB8   
       LDA    #$04    
       BNE    LFABA   
LFAB8: LDA    #$00    
LFABA: ORA    $D9     
       ORA    $DA     
       ORA    $DE     
       ORA    $DF     
       ORA    $D4     
       AND    $F2     
       AND    #$FD    
       STA    COLUBK  
       LDA    $D6     
       CMP    #$11    
       BCC    LFADC   
LFAD0: STA    WSYNC   
       DEC    $A9     
       DEC    $D6     
       LDA    $D6     
       CMP    #$11    
       BCS    LFAD0   
LFADC: LDA    $A6     
       ASL            
       STA    ENAM1   
LFAE1: STA    WSYNC   
       LDA    ($A4),Y 
       STA    GRP0    
       LDA    LFE00,X 
       STA    GRP1    
       LDA    $80     
       STA    PF1     
       LDA    $81     
       STA    PF2     
       ASL    LF000   
       INX            
       INY            
       TXS            
       LDX    $83     
       LDA    $82     
       STA    PF2     
       STX    PF1     
       TSX            
       DEC    $D6     
       BNE    LFB7F   
       LDA    #$10    
       STA    $D6     
       INC    $D3     
       LDA    #$00    
       STA    PF1     
       STA    PF2     
       LDA    LFE00,X 
       STA    GRP1    
       INX            
       LDA    LFE00,X 
       LDY    $D3     
       LDX    $C0,Y   
LFB20: DEX            
       BNE    LFB20   
       STA    RESP0   
       STX    GRP0    
       STA    WSYNC   
       STA    GRP1    
       LDX    $D3     
       LDA.wy $0084,Y 
       STA    $80     
       LDA.wy $008C,Y 
       STA    $81     
       LDA.wy $0094,Y 
       STA    $82     
       LDA.wy $009C,Y 
       STA    $83     
       LDA    $E2     
       CLC            
       ADC    #$10    
       STA    $E2     
       ORA    $D0     
       AND    $F2     
       STA    COLUPF  
       LDX    $B0,Y   
       LSR    $A6     
       LDA    $A6     
       ASL            
       STA    ENAM1   
       CPY    #$07    
       BNE    LFB5F   
       LDA    CXPPMM  
       STA    $AE     
LFB5F: LDA.wy $00B8,Y 
       TAY            
       LDA    LFE00,X 
       STA    GRP1    
       LDA    $E2     
       EOR    #$F8    
       TXS            
       LDX    $A5     
       CPX    #$FC    
       BEQ    LFB79   
       CPY    #$D0    
       BCS    LFB79   
       AND    $F6     
LFB79: AND    $F2     
       STA    COLUP0  
       TSX            
       INX            
LFB7F: DEC    $DD     
       BEQ    LFB86   
       JMP    LFAE1   
LFB86: STA    WSYNC   
       LDA    #$00    
       STA    PF1     
       STA    PF2     
       STA    GRP1    
       STA    GRP0    
       STA    ENAM1   
       LDY    $A9     
LFB96: STA    WSYNC   
       DEY            
       BNE    LFB96   
       LDA    #$00    
       STA    PF1     
       STA    PF2     
       STA    COLUPF  
       LDA    #$FF    
       STA    PF0     
       LDA    #$04    
       AND    $F2     
       STA    COLUBK  
       STA    WSYNC   
       LDA    #$00    
       STA    PF1     
       STA    PF2     
       STA    GRP0    
       STA    GRP1    
       STA    ENAM1   
       LDA    $F9     
       BNE    LFBC5   
       LDA    $D4     
       CMP    #$02    
       BNE    LFBCB   
LFBC5: LDA    $E3     
       EOR    #$0C    
       BNE    LFBCD   
LFBCB: LDA    #$38    
LFBCD: AND    $F2     
       STA    COLUP0  
       STA    COLUP1  
       LDX    #$04    
       STA    WSYNC   
LFBD7: DEX            
       BNE    LFBD7   
       NOP            
       ROL    LF000,X 
       BIT    $FF     
       LDA    #$10    
       STA    HMP1    
       STA    RESP0   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$07    
       STA    $DD     
       STA    VDELP0  
       STA    VDELP1  
LFBFA: LDY    $DD     
       LDA    LFFE8,Y 
       STA.w  $00FF   
       STA    WSYNC   
       LDA    LFFE0,Y 
       TAX            
       LDA    LFFC0,Y 
       NOP            
       NOP            
       STA    GRP0    
       LDA    LFFC8,Y 
       STA.w  $001C   
       LDA    LFFD0,Y 
       STA.w  $001B   
       LDA    LFFD8,Y 
       LDY.w  $00FF   
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       DEC    $DD     
       BPL    LFBFA   
       LDA    #$00    
       STA    VDELP0  
       STA    VDELP1  
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    HMCLR   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       LDA    #$00    
       STA    PF0     
       STA    COLUBK  
       LDX    $F5     
       LDA    $A7,X   
       STA    $A6     
       LDY    #$29    
LFC4F: STA    WSYNC   
       DEY            
       BNE    LFC4F   
       LDA    $E6     
       BPL    LFC5C   
       LDA    #$00    
       STA    $E6     
LFC5C: LDA    $B8     
       AND    $B9     
       AND    $BA     
       AND    $BB     
       AND    $BC     
       AND    $BD     
       AND    $BE     
       AND    $BF     
       CMP    #$E0    
       BNE    LFC74   
       LDA    #$00    
       STA    $E6     
LFC74: JMP    LF01C   
LFC77: .byte $48,$1F,$42,$18,$66,$3C,$00,$00,$00,$00,$00,$00,$36,$00,$42,$00
       .byte $24,$24,$00,$42,$00,$36,$00,$00,$00,$00,$00,$42,$18,$00,$24,$00
       .byte $42,$42,$00,$24,$00,$18,$42,$00,$00,$00,$42,$00,$00,$00,$81,$00
       .byte $42,$42,$00,$81,$00,$00,$00,$42,$00
LFCB0: .byte $00,$01,$08,$05,$03,$43,$0D,$4D,$5D,$8F,$9F,$AF,$CF,$EF,$DF,$FF
LFCC0: .byte $04,$04,$04,$05,$05,$06,$06,$07,$08,$09,$10,$11,$12,$12,$12,$12
LFCD0: .byte $1F,$8F,$C7,$E3,$F1,$F8,$FC,$FE,$F8,$F1,$E3,$C7,$8F,$1F,$3F,$7F
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
LFCF0: .byte $FF,$FF,$FF,$FF,$FF,$FF,$FE,$FC,$FF,$FF,$FF,$FF,$FF,$FF,$7F,$3F
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$FF,$FF
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$08,$1C,$7F,$77,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$04,$0E,$0E,$0B,$1B,$1B,$00
       .byte $00,$00,$00,$00,$00,$00,$02,$07,$07,$05,$05,$05,$05,$0D,$0D,$00
       .byte $00,$00,$00,$00,$00,$01,$01,$03,$03,$03,$03,$03,$03,$07,$07,$00
       .byte $00,$00,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$00
       .byte $00,$00,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$00
       .byte $00,$00,$00,$00,$00,$00,$80,$C0,$C0,$C0,$C0,$C0,$C0,$E0,$E0,$00
       .byte $00,$00,$00,$00,$00,$00,$40,$E0,$E0,$A0,$A0,$A0,$A0,$D0,$D0,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$20,$70,$70,$50,$D8,$D8,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$10,$38,$FE,$EE,$00
LFDB0: .byte $70,$60,$50,$40,$30,$20,$10,$00,$F0,$E0,$D0,$C0,$B0,$A0,$90,$00
LFDC0: .byte $80,$40,$20,$10,$08,$04,$02,$01,$01,$02,$04,$08,$10,$20,$40,$80
       .byte $00,$38,$38,$7C,$44,$C6,$82,$82,$7C,$7C,$44,$44,$44,$44,$44,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $99,$00,$5A,$00,$3C,$00,$18,$00,$18,$00,$3C,$00,$5A,$00,$99,$00
LFE00: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$20,$20,$A8,$F8
       .byte $F8,$F8,$A8,$00,$00,$00,$00,$00
LFE18: .byte $00,$04,$FC,$00
LFE1C: .byte $00,$FF,$01,$00
LFE20: .byte $00,$EE,$28,$EE,$88,$EE,$00,$00
LFE28: .byte $00,$EE,$88,$8E,$88,$8E,$00,$00
LFE30: .byte $00,$E4,$84,$84,$84,$EE,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
LFE40: .byte $30,$70,$10,$40,$50,$20,$00,$60
LFE48: .byte $20,$40,$80,$00,$20,$40,$80,$00,$20,$40,$80,$00,$20,$40,$80,$00
LFE58: .byte $00,$00,$00,$01,$01,$01,$01,$02,$02,$02,$02,$03,$03,$03,$03,$04
       .byte $04,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$99,$53,$53
       .byte $3C,$3C,$3C,$FF,$3C,$3C,$3C,$53,$53,$99,$00,$00,$00,$00,$00,$00
LFE98: .byte $00,$F0,$F1,$F2,$F3,$F4,$F5,$F6,$F7,$F8,$F9,$FA,$FB,$FC,$FD,$FE
       .byte $FF,$00,$01,$02,$03,$04,$FF,$FF
LFEB0: .byte $00,$0F,$0E,$0D,$0C,$0B,$0A,$09,$08,$07,$06,$05,$04,$03,$02,$01
       .byte $00,$00,$00,$00
LFEC4: .byte $00,$08,$10,$18
LFEC8: .byte $10,$10,$10,$10,$10,$0F,$0F,$0F,$0F,$0E,$0E,$0E,$0D,$0D,$0D,$0C
       .byte $0C,$0B,$0B,$0A,$09,$08,$07,$06,$05,$04,$03,$02,$01,$01,$01,$01
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$0E,$0A,$0A,$0A,$0E,$00,$C3,$00
       .byte $04,$04,$04,$04,$04,$00,$CF,$00,$0E,$08,$0E,$02,$0E,$00,$D0,$00
       .byte $0E,$02,$0E,$02,$0E,$00,$D9,$00,$02,$02,$0E,$0A,$0A,$00,$D2,$00
       .byte $0E,$02,$0E,$08,$0E,$00,$C9,$00,$0E,$0A,$0E,$08,$08,$00,$C7,$00
       .byte $02,$02,$02,$02,$0E,$00,$C8,$00,$0E,$0A,$0E,$0A,$0E,$00,$D4,$00
       .byte $02,$02,$0E,$0A,$0E,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
LFF58: .byte $01,$07,$04,$02,$05,$03,$07,$04,$E0,$A0,$A0,$A0,$E0,$00,$B1,$00
       .byte $40,$40,$40,$40,$40,$00,$B9,$00,$E0,$80,$E0,$20,$E0,$00,$B8,$00
       .byte $E0,$20,$E0,$20,$E0,$00,$B2,$00,$20,$20,$E0,$A0,$A0,$00,$D3,$00
       .byte $E0,$20,$E0,$80,$E0,$00,$C9,$00,$E0,$A0,$E0,$80,$80,$00,$D2,$00
       .byte $20,$20,$20,$20,$E0,$00,$C9,$00,$E0,$A0,$E0,$A0,$E0,$00,$D5,$00
       .byte $20,$20,$E0,$A0,$E0,$00,$D3,$00,$00,$00,$00,$00,$00,$00,$00,$00
LFFB8: .byte $80,$00,$00,$80,$00,$00,$00,$00
LFFC0: .byte $00,$89,$DA,$AA,$AA,$8A,$8A,$89
LFFC8: .byte $00,$92,$52,$54,$5C,$52,$52,$9C
LFFD0: .byte $00,$88,$88,$88,$A8,$A8,$D8,$88
LFFD8: .byte $00,$45,$6D,$55,$55,$45,$45,$44
LFFE0: .byte $00,$29,$29,$2A,$EE,$29,$29,$CE
LFFE8: .byte $00,$0E,$04,$04,$04,$04,$0C,$04,$C3,$C3,$30,$E0,$C3,$FF,$78,$FF
       .byte $42,$7E,$FC,$7E,$00,$F0,$00,$F0
