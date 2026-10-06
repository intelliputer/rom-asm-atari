; Disassembly of roms/Q-bert.bin
; Disassembled Tue Oct  6 15:22:41 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Q-bert.bin
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
AUDF1   =  $18
AUDV0   =  $19
AUDV1   =  $1A
GRP0    =  $1B
GRP1    =  $1C
HMP0    =  $20
HMP1    =  $21
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXP1FB  =  $33
CXPPMM  =  $37
INPT4   =  $3C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296
T1024T  =  $0297

       ORG $B000

START:
       JMP    LB63C   
LB003: .byte $00,$38,$44,$44,$44,$44,$44,$38,$00,$38,$10,$10,$10,$10,$30,$10
       .byte $00,$7C,$40,$40,$38,$04,$44,$38,$00,$38,$44,$04,$18,$04,$44,$38
       .byte $00,$08,$08,$7C,$48,$28,$18,$08,$00,$38,$44,$04,$04,$78,$40,$7C
       .byte $00,$38,$44,$44,$78,$40,$20,$1C,$00,$20,$20,$20,$10,$08,$04,$7C
       .byte $00,$38,$44,$44,$38,$44,$44,$38,$00,$70,$08,$04,$3C,$44,$44,$38
LB053: LDA    $84     
       STA    $C1     
       LDA    $8A     
       STA    $CA     
       ASL            
       ROL    $84     
       ASL            
       ROL    $84     
       CLC            
       ADC    $CA     
       STA    $8A     
       LDA    #$00    
       ADC    $84     
       CLC            
       ADC    $C1     
       STA    $84     
       LDA    #$00    
       INC    $8A     
       ADC    $84     
       STA    $84     
       RTS            

LB078: .byte $00,$00,$00,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
       .byte $01,$01,$01,$01,$01,$01
LB08E: .byte $02,$87,$03,$CF,$4B,$87,$4B,$87,$4B,$87,$4B,$87,$4B,$87,$4B,$87
       .byte $4B,$87,$49,$85,$48,$48
LB0A4: .byte $02,$07,$06,$0F,$0E,$0F,$0E,$8F,$8E,$0F,$0E,$0F,$0E,$0F,$0E,$0F
       .byte $0E,$0F,$0C,$0D,$08,$08
LB0BA: .byte $00,$80,$80,$C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0
       .byte $C0,$C0,$C0,$C0,$40,$40
LB0D0: STA    CXCLR   
       LDY    $A7     
       BMI    LB102   
       BEQ    LB102   
       DEY            
       LDX    LBAFA,Y 
       LDA    VSYNC,X 
       LDY    $A9     
       CPY    #$07    
       BEQ    LB102   
       STA    $A9     
       STY    VSYNC,X 
       LDX    $A7     
       JSR    LBE90   
       BNE    LB0FB   
       LDA    $AB,X   
LB0F1: JSR    LBEDE   
       STA    $BB,X   
       STY    $CA,X   
       JMP    LB106   
LB0FB: LDY    $C5     
       LDA    LBCC6,Y 
       BNE    LB0F1   
LB102: STA    WSYNC   
       STA    WSYNC   
LB106: LDA    $C3     
       CMP    #$37    
       BCC    LB170   
       LDX    #$00    
       STX    REFP1   
       STX    GRP0    
       LDA    #$10    
       STA    HMP1    
       LDA    #$03    
       STA    NUSIZ0  
       STA    VDELP1  
       INX            
       STX    NUSIZ1  
       LDY    $E3     
       LDA    LBE24,Y 
       STA    COLUP0  
       STA    COLUP1  
       LDY    #$06    
       STA    WSYNC   
LB12C: DEY            
       BNE    LB12C   
       STA    RESP0   
       STA    RESP1   
       LDY    #$07    
LB135: LDA    ($93),Y 
       TAX            
       STA    WSYNC   
       STA    HMOVE   
       LDA    ($8D),Y 
       STA    GRP1    
       LDA    ($8B),Y 
       STA    GRP0    
       NOP            
       NOP            
       LDA    ($91),Y 
       STA    GRP1    
       LDA    ($8F),Y 
       STA    GRP0    
       STX    GRP0    
       STA    HMCLR   
       DEY            
       BPL    LB135   
       JSR    LBB29   
       INX            
       STX    VDELP1  
       STX    NUSIZ0  
       STX    NUSIZ1  
       STX    GRP0    
       STX    GRP1    
       LDY    $88     
       BPL    LB169   
       STY    WSYNC   
LB169: SEC            
       LDA    $A1     
       SBC    #$17    
       STA    $A1     
LB170: LDA    #$34    
       STA    COLUP1  
       LDA    $D4     
       STA    REFP1   
       LDA    $AB     
       JSR    LBEDE   
       TAX            
       STY    WSYNC   
       STX    HMP1    
       LDA    #$66    
       STA    COLUP0  
       LDA    #$30    
       STA    HMP0    
       LDX    #$08    
LB18C: DEY            
       BPL    LB18C   
       STA    RESP1   
       STX    WSYNC   
LB193: DEX            
       BPL    LB193   
       STA    RESP0   
       STX    WSYNC   
       STX    HMOVE   
       STX    WSYNC   
       LDA    $C3     
       CMP    #$37    
       BCS    LB1D3   
       LDX    #$15    
LB1A6: STX    WSYNC   
       LDA    #$00    
       STA    PF2     
       STA    HMP1    
       LDA    $86     
       STA    COLUPF  
       LDY    $A1     
       LDA    ($B2),Y 
       STA    GRP1    
       DEC    $A1     
       TXA            
       TAY            
       LDA    LBF76,X 
       ASL            
       ASL            
       ASL            
       STA.w  $000F   
       STA    PF2     
       LDA    $A7     
       BNE    LB1D0   
       LDA    LBF51,X 
       STA    GRP0    
LB1D0: DEX            
       BPL    LB1A6   
LB1D3: INX            
       STX    HMP1    
       LDY    $A1     
       LDA    ($B2),Y 
       STA    WSYNC   
       STA    GRP1    
       LDY    $BC     
       LDX    $CB     
       LDA    $EB     
       STA    COLUP0  
LB1E6: DEX            
       BPL    LB1E6   
       STY    RESP0   
       STY    HMP0    
       LDX    #$04    
LB1EF: STX    WSYNC   
       STX    HMOVE   
       DEC    $A1     
       NOP            
       LDA    ($B6,X) 
       LDA    ($B6,X) 
       LDA    LBFBB,X 
       LDY    $A1     
       STX    HMP0    
       STA    PF2     
       LDA    $95     
       STA    COLUPF  
       LDA    LBE15,X 
       STA    PF2     
       LDA    ($B2),Y 
       STA    GRP1    
       DEX            
       BPL    LB1EF   
       LDX    #$15    
LB215: STY    WSYNC   
       TXA            
       CLC            
       ADC    $DC     
       TAY            
       LDA    LBF00,Y 
       STA    GRP0    
       NOP            
       DEC    $A1     
       LDY    $A1     
       LDA    #$F0    
       AND    LBE74,X 
       STA    PF2     
       LDA    $82     
       STA    COLUPF  
       LDA    LBC09,X 
       STA    PF2     
       LDA    ($B2),Y 
       STA    GRP1    
       DEX            
       BPL    LB215   
       LDY    $A1     
       LDA    ($B2),Y 
       STA    WSYNC   
       STA    GRP1    
       LDA    $BD     
       LDX    $CC     
       LDY    $EC     
       STY    COLUP0  
LB24D: DEX            
       BPL    LB24D   
       STA    RESP0   
       STA    HMP0    
       LDX    #$04    
LB256: STX    WSYNC   
       STX    HMOVE   
       DEC    $A1     
       LDY    $A1     
       LDA    ($B6,X) 
       LDA    ($B6,X) 
       DEC    $C1     
       LDA    LBE9F,X 
       STA    PF2     
       LDA    $B4     
       STA    COLUPF  
       NOP            
       LDA    $B6     
       STA    COLUPF  
       STX    HMP0    
       LDA    ($B2),Y 
       STA    GRP1    
       DEX            
       BPL    LB256   
       CLC            
       LDX    #$15    
LB27E: STX    WSYNC   
       TXA            
       ADC    $DD     
       TAY            
       LDA    LBF00,Y 
       STA    GRP0    
       LDY    $C2     
       STY    COLUPF  
       LDA    LBF76,X 
       STA    PF1     
       LDY    $82     
       LDA    LBEA3,X 
       AND    #$FE    
       STY    COLUPF  
       STA    PF2     
       DEC    $A1     
       LDY    $A1     
       NOP            
       LDA    $C8     
       STA    COLUPF  
       LDA    ($B2),Y 
       STA    GRP1    
       DEX            
       BPL    LB27E   
       LDX    $82     
       STX    COLUPF  
       DEC    $A1     
       LDY    $A1     
       LDA    ($B2),Y 
       STA    WSYNC   
       STA    GRP1    
       LDA    $ED     
       STA    COLUP0  
       LDX    $CD     
       LDA    $BE     
LB2C3: DEX            
       BPL    LB2C3   
       STA    RESP0   
       STA    HMP0    
       LDX    #$04    
LB2CC: STX    WSYNC   
       STX    HMOVE   
       NOP            
       CLC            
       DEC    $A1     
       LDY    $D5     
       LDA    $D3     
       STA    COLUPF  
       LDA    LBC1F,X 
       STA    PF1     
       LDA    LBCDB,X 
       STA    PF2     
       STX    HMP0    
       LDA    LBCB3,X 
       STY    COLUPF  
       STA    PF2     
       LDY    $D7     
       STY    COLUPF  
       LDY    $A1     
       LDA    ($B2),Y 
       STA    GRP1    
       DEX            
       BPL    LB2CC   
       LDX    #$15    
LB2FC: STX    WSYNC   
       TXA            
       ADC    $DE     
       TAY            
       LDA    LBF00,Y 
       STA    GRP0    
       LDY    $A1     
       LDA    LB078,X 
       STA    PF1     
       LDA    $82     
       STA    COLUPF  
       LDA    LBE74,X 
       STA    PF2     
       LDA    $C1,X   
       LDA    LB08E,X 
       STA    PF2     
       DEC    $A1     
       LDA    ($B2),Y 
       STA    GRP1    
       DEX            
       BPL    LB2FC   
       LDY    $A1     
       STY    WSYNC   
       LDA    ($B2),Y 
       STA    GRP1    
       DEC    $A1     
       DEY            
       LDA    ($B2),Y 
       STA    WSYNC   
       STA    GRP1    
       LDA    $EE     
       STA    COLUP0  
       LDY    $CE     
       LDA    $BF     
LB340: DEY            
       BPL    LB340   
       STA    RESP0   
       STA    HMP0    
       LDX    #$04    
LB349: STX    WSYNC   
       STX    HMOVE   
       DEC    $A1     
       LDY    $A1     
       NOP            
       NOP            
       LDA    $E2     
       STA    COLUPF  
       LDA    LBCB7,X 
       STA    PF1     
       LDA    LBCBC,X 
       STA    PF2     
       LDA    $E4     
       STA    COLUPF  
       NOP            
       LDA    $E6     
       STA    COLUPF  
       STX    HMP0    
       LDA    $E8     
       STA    COLUPF  
       LDA    ($B2),Y 
       STA    GRP1    
       DEX            
       BPL    LB349   
       LDX    #$15    
LB379: STX    WSYNC   
       LDY    $82     
       LDA    $F0     
       STA    COLUPF  
       LDA    LBF85,X 
       STA    PF0     
       LDA    LB0A4,X 
       STA    PF1     
       LDA    LBEA3,X 
       STA    PF2     
       STY    COLUPF  
       DEC    $A1     
       TXA            
       TAY            
       LDA    ($E0),Y 
       STA    GRP0    
       LDY    $A1     
       LDA    ($B2),Y 
       STA    GRP1    
       LDY    $FA     
       STY    COLUPF  
       DEX            
       BPL    LB379   
       LDX    $82     
       STX    COLUPF  
       LDY    $A1     
       LDA    ($B2),Y 
       TAX            
       DEY            
       LDA    ($B2),Y 
       STA    WSYNC   
       STX.w  $001C   
       LDX    $C0     
       LDY    $CF     
       DEC    $A1     
LB3BE: DEY            
       BPL    LB3BE   
       STX    RESP0   
       STX    HMP0    
       LDY    #$04    
       STY    WSYNC   
LB3C9: STY    HMOVE   
       STA.w  $001C   
       LDX    $81     
       STX    COLUPF  
       LDX    LBCBC,Y 
       STX    PF1     
       LDX    LBCDB,Y 
       STX    PF2     
       LDX    $85     
       LDA    $83     
       STA    COLUPF  
       NOP            
       LDA    LBCB3,Y 
       STX    COLUPF  
       STA    PF2     
       LDA    $87     
       STA    COLUPF  
       LDA    $89     
       NOP            
       STA    COLUPF  
       STY    HMP0    
       LDA.wy $0096,Y 
       LDX    #$15    
       DEY            
       BPL    LB3C9   
       INY            
       STY    COLUPF  
       SEC            
       LDA    $A1     
       SBC    #$05    
       STA    $A1     
       LDY    $A1     
       LDA    ($B2),Y 
       STA    GRP1    
       DEC    $A1     
       CLC            
LB410: STX    WSYNC   
       TXA            
       ADC    $DF     
       TAY            
       LDA    LBF00,Y 
       STA.w  $001B   
       LDY    $82     
       STY    COLUPF  
       LDY    LBFC5,X 
       STY    PF1     
       LDY    LBE74,X 
       STY    PF2     
       LDY    $EF     
       STY    COLUP0  
       LDY    LB08E,X 
       STY    PF2     
       LDY    $A1     
       DEC    $A1     
       LDA    ($B2),Y 
       STA    GRP1    
       DEX            
       BPL    LB410   
       STA    WSYNC   
       LDX    #$04    
       STX    WSYNC   
LB444: LDY    $A2     
       LDA    $A0     
       STA    COLUPF  
       LDA    LBE15,X 
       STA    PF0     
       LDA    LBCDB,X 
       STA    PF1     
       LDA    LBCBC,X 
       STA    PF2     
       STY    COLUPF  
       LDA    $A4     
       NOP            
       STA    COLUPF  
       LDA    $A6     
       NOP            
       STA    COLUPF  
       LDA    $A8     
       LDY    $AA     
       STA    COLUPF  
       LDA    $9B,X   
       STY.w  $0008   
       STA    GRP1    
       NOP            
       DEX            
       BPL    LB444   
       INX            
       STX    COLUPF  
       SEC            
       LDA    $A1     
       SBC    #$05    
       STA    $A1     
       LDY    $A1     
       LDA    ($B2),Y 
       STA    GRP1    
       DEC    $A1     
       LDX    #$15    
LB48A: STX    WSYNC   
       LDA    $82     
       STA    COLUPF  
       LDA    LB0BA,X 
       STA    PF0     
       LDA    LBE44,X 
       STA    PF1     
       LDA    LBEA3,X 
       STA    PF2     
       LDY    $A1     
       LDA    ($B2),Y 
       STA    GRP1    
       DEC    $A1     
       DEX            
       BPL    LB48A   
       INX            
       STX    PF0     
       STX    PF1     
       STX    PF2     
       STX    GRP1    
       LDY    #$04    
LB4B5: LDX    LBE6F,Y 
       LDA    VSYNC,X 
       BEQ    LB4C4   
       DEC    VSYNC,X 
       BNE    LB4C4   
       LDA    #$EA    
       STA    VSYNC,X 
LB4C4: DEY            
       BPL    LB4B5   
       JSR    LBC50   
       LDX    $D8     
       BEQ    LB4D0   
       DEC    $D8     
LB4D0: LDX    $E5     
       BEQ    LB4DB   
       DEC    $E5     
       BNE    LB514   
       JSR    LBECC   
LB4DB: LDX    $D1     
       BEQ    LB4E5   
       DEC    $D1     
       BNE    LB514   
       BEQ    LB517   
LB4E5: LDX    $BB     
       BMI    LB523   
       BEQ    LB550   
       LDA    $F1     
       BPL    LB4FC   
       LDA    #$09    
       STA    $FB     
       LDX    #$11    
       LDA    #$02    
       LDY    #$04    
       JSR    LBFE5   
LB4FC: LDX    $C3     
       CPX    #$13    
       BCS    LB575   
       LDX    $AB     
       CPX    #$4D    
       BEQ    LB517   
       LDX    $A3     
       CPX    #$05    
       BCC    LB512   
       DEC    $AB     
       BNE    LB514   
LB512: INC    $AB     
LB514: JMP    LB627   
LB517: JSR    LBBF4   
       LDX    #$00    
       STX    $BB     
       INX            
       STX    CTRLPF  
       BNE    LB514   
LB523: LDX    #$05    
       STX    CTRLPF  
       JSR    LBECC   
       LDX    #$14    
       CPX    $F2     
       BEQ    LB535   
       DEC    $88     
       JSR    LBFDB   
LB535: LDX    #$00    
       STX    $D2     
       INC    $C3     
       INC    $C3     
       CLC            
       LDA    $C4     
       ADC    #$03    
       STA    $C4     
       CMP    #$BF    
       BCC    LB514   
       CMP    #$D0    
       BCS    LB514   
       STA    $D1     
       BNE    LB514   
LB550: LDX    $B7     
       BEQ    LB59E   
       DEC    $B7     
       BMI    LB57B   
       CPX    #$0D    
       BCS    LB571   
       LDY    $D6     
       BEQ    LB564   
       DEC    $AB     
       BNE    LB566   
LB564: INC    $AB     
LB566: CPX    #$07    
       BCS    LB575   
LB56A: INC    $C4     
       INC    $C3     
       JMP    LB627   
LB571: DEC    $C4     
       DEC    $C3     
LB575: DEC    $C4     
       DEC    $C3     
       BNE    LB5B8   
LB57B: CPX    #$E5    
       BEQ    LB59A   
       CPX    #$F4    
       BCS    LB58A   
       INC    $C3     
       INC    $C4     
       JMP    LB56A   
LB58A: LDY    $D6     
       BEQ    LB592   
       INC    $AB     
       BNE    LB594   
LB592: DEC    $AB     
LB594: CPX    #$FA    
       BCC    LB56A   
       BCS    LB575   
LB59A: LDX    #$00    
       STX    $B7     
LB59E: LDA    CXP1FB  
       BPL    LB56A   
       LDY    $A3     
       LDA    LBCC6,Y 
       STA    $AB     
       JSR    LBCF6   
       LDY    #$19    
LB5AE: CMP    LBE5A,Y 
       BEQ    LB5BB   
       DEY            
       BPL    LB5AE   
LB5B6: STY    $BB     
LB5B8: JMP    LB627   
LB5BB: CPY    #$15    
       BCS    LB62E   
       LDX    $D2     
       BEQ    LB627   
       TAX            
       LDA    VSYNC,X 
       PHA            
       LDY    #$00    
       STY    $D2     
       LDY    $E3     
       CPY    #$04    
       BCS    LB5D8   
LB5D1: LDA    LBE24,Y 
LB5D4: STA    VSYNC,X 
       BNE    LB610   
LB5D8: CPY    #$08    
       BCS    LB5EB   
       CMP    LBE24,Y 
       BEQ    LB610   
       CMP    LBE30,Y 
       BNE    LB5D1   
LB5E6: LDA    LBE3C,Y 
       BNE    LB5D4   
LB5EB: CPY    #$0C    
       BCS    LB5F9   
       CMP    LBE30,Y 
       BEQ    LB5D1   
LB5F4: LDA    LBE30,Y 
       BNE    LB5D4   
LB5F9: CPY    #$10    
       BCS    LB604   
       CMP    LBE3C,Y 
       BEQ    LB5D1   
       BNE    LB5E6   
LB604: CMP    LBE30,Y 
       BEQ    LB5E6   
       CMP    LBE3C,Y 
       BEQ    LB5D1   
       BNE    LB5F4   
LB610: LDA    VSYNC,X 
       CMP    LBE24,Y 
       BEQ    LB61A   
       PLA            
       BNE    LB627   
LB61A: PLA            
       CMP    LBE24,Y 
       BEQ    LB627   
       LDA    #$25    
       LDX    #$02    
       JSR    LBFEE   
LB627: LDA    INTIM   
       BNE    LB627   
       BEQ    LB68E   
LB62E: TAX            
       LDY    #$FF    
       LDA    VSYNC,X 
       BEQ    LB639   
       INY            
       STY    VSYNC,X 
       INY            
LB639: JMP    LB5B6   
LB63C: SEI            
       CLD            
       LDX    #$FF    
       TXS            
       LDA    #$00    
LB643: STA    VSYNC,X 
       DEX            
       BNE    LB643   
LB648: LDA    #$01    
       AND    SWCHB   
       BEQ    LB648   
       STA    CTRLPF  
       STA    $E9     
       LDX    #$02    
       STX    $88     
       LDX    #$BD    
       STX    $B3     
       LDX    #$BF    
       STX    $E1     
       LDX    #$09    
       STX    $E7     
       LDA    #$B0    
LB665: STA    $8B,X   
       DEX            
       DEX            
       BPL    LB665   
       LDA    #$94    
       JSR    LBAEF   
       STA    $F0     
       STA    $FA     
       STA    $D1     
       JSR    LBECC   
       LDA    #$41    
       STA    $AC     
       STA    $AE     
       STA    $B0     
       LDA    #$35    
       STA    $AD     
       STA    $AF     
       STA    $B8     
       LDA    #$0B    
       JSR    LBEB9   
LB68E: LDA    #$02    
       STA    WSYNC   
       STA    WSYNC   
       STA    VBLANK  
       STA    VSYNC   
       LDX    #$04    
       LDA    $A1     
       CLC            
       ADC    #$37    
       TAY            
LB6A0: LDA    ($B2),Y 
       STA    $96,X   
       DEY            
       DEX            
       BPL    LB6A0   
       LDX    #$04    
       LDA    $A1     
       CLC            
       ADC    #$1C    
       TAY            
LB6B0: LDA    ($B2),Y 
       STA    $9B,X   
       DEY            
       DEX            
       BPL    LB6B0   
       LDY    $E3     
       LDA    LBE1A,Y 
       STA    $82     
       INX            
       STX    WSYNC   
       STX    VSYNC   
       LDA    #$32    
       STA    TIM64T  
       LDA    $80     
       CMP    #$04    
       BEQ    LB6D2   
       JMP    LB788   
LB6D2: LDA    $A7     
       BEQ    LB6E8   
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    $C5     
       LDX    #$08    
LB6DE: CMP    LBF9D,X 
       BEQ    LB6EF   
       DEX            
       BPL    LB6DE   
       BMI    LB6FC   
LB6E8: JSR    LBCF6   
       CMP    #$86    
       BNE    LB6FC   
LB6EF: JSR    LBECC   
       JSR    LBFDB   
       LDA    #$05    
       LDX    #$01    
       JSR    LBFEE   
LB6FC: LDY    $A7     
       BMI    LB77C   
       LDA    $BA     
       BNE    LB77C   
       LDA    #$51    
       LDX    $B8     
       CPX    #$0E    
       BCS    LB70F   
       LDA    LBCDF,X 
LB70F: CMP    #$3B    
       BNE    LB726   
       LDY    $F8     
       BPL    LB726   
       LDY    #$1E    
       STY    $F7     
       LDY    #$05    
       STY    $F8     
       DEY            
       STY    $EA     
       LDY    #$07    
       STY    $F6     
LB726: LDY    $B1     
       BMI    LB72E   
       STA    $A9     
       BEQ    LB73C   
LB72E: LDY    $A9     
       CPY    #$07    
       BNE    LB77C   
       LDY    $A7     
       DEY            
       LDX    LBAFA,Y 
       STA    VSYNC,X 
LB73C: LDX    #$07    
       CPX    $B8     
       BNE    LB77C   
       LDA    #$F0    
       AND    $C3     
       LDX    #$06    
LB748: DEX            
       BMI    LB77C   
       CMP    LBCC0,X 
       BNE    LB748   
       LDY    $C5     
       CPX    $A7     
       BCC    LB764   
       BEQ    LB764   
       CPY    $A3     
       BCS    LB760   
       INC    $C9     
       BPL    LB76E   
LB760: INC    $C9     
       BPL    LB774   
LB764: LDA    $A7     
       BEQ    LB77C   
       CPY    $A3     
       BCS    LB772   
       DEC    $C9     
LB76E: INC    $C7     
       BPL    LB77C   
LB772: DEC    $C9     
LB774: DEC    $C7     
       BPL    LB77C   
       LDA    #$0E    
       STA    $C7     
LB77C: LDA    $E3     
       AND    #$1F    
       LSR            
       LSR            
       TAX            
       LDA    LBFC0,X 
       STA    $C6     
LB788: LDA    $80     
       CMP    #$03    
       BNE    LB792   
       DEC    $B8     
       BEQ    LB795   
LB792: JMP    LB891   
LB795: LDA    $C6     
       STA    $B8     
       LDA    $B1     
       BEQ    LB7B1   
       LDX    $A7     
       BMI    LB7B1   
       JSR    LBE90   
       DEX            
       LDY    LBAFA,X 
       LDA.wy $0000,Y 
       LDX    $A9     
       STA    $A9     
       STX    VSYNC,Y 
LB7B1: LDY    #$03    
LB7B3: LDX    LBAFA,Y 
       LDA    VSYNC,X 
       LDX    LBAFB,Y 
       STA    VSYNC,X 
       DEY            
       BPL    LB7B3   
       JSR    LB053   
       PHA            
       LDX    #$03    
LB7C6: LDY    #$0B    
       LDA    $AC,X   
LB7CA: DEY            
       CMP    LBCC6,Y 
       BNE    LB7CA   
       PLA            
       LSR            
       PHA            
       BCS    LB7D8   
       DEY            
       BPL    LB7D9   
LB7D8: INY            
LB7D9: LDA    LBCC6,Y 
       STA    $AD,X   
       DEX            
       BPL    LB7C6   
       PLA            
       LDY    #$04    
       LSR            
       BCS    LB7E9   
       LDY    #$06    
LB7E9: LDA    LBCC6,Y 
       STA    $AC     
       LDX    #$03    
LB7F0: LDA    $EB,X   
       STA    $EC,X   
       DEX            
       BPL    LB7F0   
       JSR    LB053   
       BMI    LB83E   
       CMP    #$55    
       BCC    LB81F   
LB800: LDY    #$44    
       LDA    $A7     
       BPL    LB812   
       LDX    #$04    
       LDA    #$66    
LB80A: CMP    $EB,X   
       BEQ    LB812   
       DEX            
       BPL    LB80A   
       TAY            
LB812: LDA    #$11    
       BIT    SWCHB   
       BVS    LB844   
       CPY    #$44    
       BEQ    LB842   
       BNE    LB844   
LB81F: CMP    #$15    
       BCC    LB82F   
       DEC    $E7     
       BNE    LB83E   
       LDA    #$11    
       STA    $E7     
LB82B: LDY    #$C4    
       BNE    LB844   
LB82F: DEC    $E9     
       BNE    LB83E   
       STY    $E9     
       LDA    #$1D    
       JSR    LBCD1   
       LDA    #$26    
       BNE    LB82B   
LB83E: CMP    #$DD    
       BCS    LB800   
LB842: LDA    #$07    
LB844: STA    $DC     
       STY    $EB     
       LDX    #$04    
LB84A: LDA    $DC,X   
       BNE    LB852   
       LDA    #$11    
       STA    $DC,X   
LB852: DEX            
       BPL    LB84A   
       LDX    #$04    
LB857: LDA    $AC,X   
       JSR    LBEDE   
       STA    $BC,X   
       STY    $CB,X   
       DEX            
       BPL    LB857   
       LDA    $A7     
       EOR    $EF     
       EOR    $DF     
       CMP    #$88    
       BNE    LB889   
       LDX    #$0A    
       LDA    $B0     
LB871: CMP    LBCC6,X 
       BEQ    LB879   
       DEX            
       BPL    LB871   
LB879: STX    $C7     
       LDX    #$66    
       STX    $A9     
       STX    $B5     
       LDX    #$05    
       STX    $C9     
       LDX    #$07    
       STX    $DF     
LB889: LDA    $C9     
       STA    $A7     
       LDA    $C7     
       STA    $C5     
LB891: LDA    $80     
       CMP    #$02    
       BEQ    LB89A   
       JMP    LB94C   
LB89A: LDA    $B8     
       BMI    LB909   
       LDX    #$08    
       LDA    #$F0    
       STA    $C1     
LB8A4: LDY    LBCED,X 
       LDA    $C1     
       EOR    #$FF    
       STA    $C1     
       AND.wy $0000,Y 
       BIT    $C1     
       BPL    LB8B8   
       LSR            
       LSR            
       LSR            
       LSR            
LB8B8: TAY            
       LDA    LBC46,Y 
       STA    $8B,X   
       DEX            
       DEX            
       BPL    LB8A4   
       LDA    $D8     
       AND    #$F1    
       STA    COLUBK  
       BEQ    LB8E8   
       LDX    $F8     
       BPL    LB8E8   
       LDX    #$0D    
       STX    $F5     
       LDX    #$04    
       STX    $F6     
       CMP    #$66    
       BCC    LB8DF   
       INX            
       LDY    #$42    
       BNE    LB8E3   
LB8DF: LDX    #$02    
       LDY    #$5A    
LB8E3: LDA    #$17    
       JSR    LBEC3   
LB8E8: LDA    $D0     
       BEQ    LB923   
       LDY    #$14    
LB8EE: LDX    LBE5A,Y 
       SEC            
       LDA    VSYNC,X 
       SBC    #$33    
       STA    VSYNC,X 
       DEY            
       BPL    LB8EE   
       DEC    $D0     
       BNE    LB94C   
       JSR    LBECC   
       INX            
       STX    $D2     
       INC    $E3     
       INC    $B9     
LB909: LDY    $E3     
       CPY    #$05    
       BCC    LB91A   
       CPY    #$14    
       BCC    LB917   
       LDY    #$10    
       STY    $E3     
LB917: JSR    LBBE8   
LB91A: JSR    LBBF0   
       LDA    LBE30,Y 
       JSR    LBAEF   
LB923: LDA    $B8     
       CMP    #$06    
       BNE    LB94C   
       LDX    #$04    
LB92B: LDA    #$11    
       CMP    $DC,X   
       BNE    LB949   
       LDA    #$00    
       STA    $DC,X   
       LDY    $F8     
       BPL    LB949   
       TAY            
       STY    $F7     
       STA    $F9     
       INY            
       STY    $EA     
       LDA    #$0C    
       STA    $F6     
       LDA    #$03    
       STA    $F8     
LB949: DEX            
       BPL    LB92B   
LB94C: LDA    $80     
       CMP    #$01    
       BEQ    LB955   
       JMP    LBA06   
LB955: LDY    #$84    
       LDA    $D0     
       BNE    LB98D   
       LDX    CXPPMM  
       BPL    LB9DE   
       LDX    #$06    
       LDA    #$F0    
       AND    $C3     
LB965: DEX            
       BMI    LB9DE   
       CMP    LBCC0,X 
       BNE    LB965   
       LDA    $C3     
       CMP    LBE8A,X 
       BCC    LB975   
       INX            
LB975: LDY    LBAF9,X 
       LDA    $EA,X   
       CMP    #$C4    
       BNE    LB99F   
       LDA.wy $0000,Y 
       CMP    #$26    
       BEQ    LB991   
       LDA    #$38    
       STA    $B8     
       LDA    #$D8    
       STA    $D8     
LB98D: LDA    #$01    
       BNE    LB993   
LB991: LDA    #$03    
LB993: LDX    #$01    
       JSR    LBFEE   
       LDA    #$07    
       STA.wy $0000,Y 
       BNE    LB9DE   
LB99F: CPX    #$01    
       BNE    LB9AA   
       LDA.wy $0000,Y 
       CMP    #$11    
       BEQ    LB9DE   
LB9AA: LDA    $E5     
       ORA    $D8     
       ORA    $BA     
       ORA    $BB     
       BNE    LB9DE   
       LDA    $A7     
       BEQ    LB9C2   
       DEX            
       LDY    LBAFA,X 
       LDA    #$FF    
       STA    $EB,X   
       INC    $CB,X   
LB9C2: DEC    $88     
       LDA    #$A6    
       STA.wy $0000,Y 
       LDA    #$15    
       STA    $BA     
       JSR    LBCD1   
       LDA    #$40    
       STA    $B8     
       ASL            
       STA    $E5     
       LDX    #$03    
       STX    $F4     
       JSR    LBFDD   
LB9DE: LDY    #$05    
LB9E0: DEY            
       BMI    LBA06   
       LDX    LBAFA,Y 
       LDA    VSYNC,X 
       CMP    #$26    
       BNE    LB9E0   
       LDA.wy $00AC,Y 
       LDX    #$0B    
LB9F1: DEX            
       CMP    LBCC6,X 
       BNE    LB9F1   
       TXA            
       CLC            
       ADC    LBCC1,Y 
       ORA    #$80    
       TAX            
       LDY    $E3     
       LDA    LBE30,Y 
       STA    VSYNC,X 
LBA06: LDA    $80     
       BEQ    LBA0D   
       JMP    LBAAE   
LBA0D: LDY    $E3     
       LDA    LBE24,Y 
       LDY    #$14    
LBA14: LDX    LBE5A,Y 
       CMP    VSYNC,X 
       BNE    LBA29   
       DEY            
       BPL    LBA14   
       LDA    #$20    
       STA    $B8     
       STA    $D0     
       LDA    #$19    
LBA26: JSR    LBEB9   
LBA29: LDA    $88     
       BMI    LBA31   
       CMP    #$04    
       BCS    LBA43   
LBA31: LDX    $D2     
       BEQ    LBA47   
       LDA    #$04    
       CMP    $B9     
       BCS    LBA47   
       INC    $88     
       LDX    #$01    
       STX    $B9     
       BNE    LBA26   
LBA43: LDA    #$04    
       STA    $88     
LBA47: LDA    $B7     
       ORA    $BB     
       ORA    $D2     
       ORA    $D0     
       ORA    $E5     
       ORA    $D1     
       BNE    LBAAA   
       LDA    SWCHA   
       AND    #$F0    
       CMP    #$70    
       BEQ    LBA7F   
       CMP    #$B0    
       BEQ    LBA8B   
       CMP    #$E0    
       BEQ    LBA85   
       CMP    #$D0    
       BNE    LBAAA   
       DEC    $A3     
       LDX    #$00    
LBA6E: STX    $D4     
       STX    $D6     
       LDX    #$00    
       STX    $B2     
       STX    $A5     
       DEX            
       STX    $B7     
       STX    $D2     
       BMI    LBAA1   
LBA7F: INC    $A3     
       LDX    #$08    
       BNE    LBA6E   
LBA85: INC    $A3     
       LDA    #$00    
       BEQ    LBA8F   
LBA8B: DEC    $A3     
       LDA    #$FF    
LBA8F: STA    $D6     
       EOR    #$FF    
       STA    $D4     
       LDX    #$16    
       STX    $B2     
       LDX    #$1A    
       STX    $B7     
       STX    $A5     
       STX    $D2     
LBAA1: LDX    #$03    
       LDA    #$00    
       LDY    #$01    
       JSR    LBFE5   
LBAAA: LDA    #$05    
       STA    $80     
LBAAE: DEC    $80     
       LDA    #$FE    
       CMP    $88     
       BNE    LBACB   
       STA    $C3     
       STA    $C4     
       STA    $B8     
       LDX    INPT4   
       BPL    LBADB   
       DEC    $CA     
       BNE    LBACB   
       INC    $E3     
       STA    $CA     
       JSR    LBECC   
LBACB: LDX    $C3     
       LDA    $A5     
       BEQ    LBAD3   
       LDX    $C4     
LBAD3: STX    $A1     
       LDA    SWCHB   
       LSR            
       BCS    LBADE   
LBADB: JMP    LB63C   
LBADE: LDA    INTIM   
       BNE    LBADE   
       STA    WSYNC   
       STA    VBLANK  
       LDA    #$11    
       STA    T1024T  
       JMP    LB0D0   
LBAEF: LDY    #$14    
LBAF1: LDX    LBE5A,Y 
       STA    VSYNC,X 
       DEY            
       BPL    LBAF1   
LBAF9: RTS            

LBAFA: .byte $DC
LBAFB: .byte $DD,$DE,$E0,$DF,$FF
LBB00: .byte $10,$1F,$16,$1D,$16,$1D,$16,$1D,$16,$1D,$16,$1D,$16,$1D,$16,$1D
       .byte $16,$1D,$16,$1D,$1F,$03,$10,$1F,$1E,$1D,$1C,$1B,$1A,$19,$18,$17
       .byte $16,$15,$14,$13,$12,$11,$10
LBB27: .byte $0B,$0D
LBB29: LDA    #$00    
       TAY            
       LDX    $88     
       BMI    LBB36   
       LDA    LBF99,X 
       LDY    LBF98,X 
LBB36: STA    NUSIZ0  
       STY    NUSIZ1  
       LDX    #$0C    
LBB3C: STA    WSYNC   
       LDA    LBD07,X 
       LDY    $88     
       BMI    LBB4B   
       BEQ    LBB49   
       STA    GRP1    
LBB49: STA    GRP0    
LBB4B: DEX            
       BPL    LBB3C   
       RTS            

LBB4F: .byte $0C,$0C,$0C,$0C,$04,$0C,$0C,$0C,$04,$0C,$0C,$04,$0C,$04,$0C,$0C
       .byte $04,$0C,$0C,$0C,$08,$08,$08,$0C,$0C,$0C,$0C,$0C,$0C,$0C,$0C,$0C
       .byte $0C,$0C,$0C,$0C,$0C,$0C,$0C
LBB76: .byte $06,$0D,$14,$1D,$0F,$0F,$00,$0F,$00,$0F,$0F,$13,$17,$13,$17,$18
       .byte $00,$17,$17,$14,$17,$14,$1A,$1B,$1A,$00,$1A,$17,$1A,$17,$00,$00
       .byte $05,$0E,$08,$09,$03,$04,$07,$09,$0B,$0F,$0F,$0F,$00,$13,$17,$13
       .byte $17,$13,$17,$00,$06,$09,$00,$04,$06,$00,$0D,$0F,$00,$00,$10,$11
       .byte $11,$11,$09,$13,$0F,$16,$11,$17,$13,$17,$09,$13,$0F,$16,$11,$17
       .byte $13,$17,$09,$13,$0F,$16,$11,$17,$13,$17,$1B,$14,$1A,$13,$19,$12
       .byte $18,$11,$17,$10,$16,$0F,$15,$0E,$14,$0D,$13,$0C,$12,$0B,$11,$0A
       .byte $10,$09
LBBE8: LDA    #$EA    
       STA    $86     
       STA    $C2     
       STA    $C8     
LBBF0: STA    $F0     
       STA    $FA     
LBBF4: LDX    #$19    
       STX    $C3     
       LDX    #$02    
       STX    $C4     
       LDX    #$05    
       STX    $A3     
       LDX    #$4D    
       STX    $AB     
       RTS            

LBC05: .byte $04,$07,$09,$0B
LBC09: .byte $00,$80,$00,$C0,$40,$80,$40,$80,$40,$80,$40,$80,$40,$80,$40,$80
       .byte $40,$80,$40,$80,$40,$40
LBC1F: .byte $00,$00,$01,$00,$00,$00,$05,$06,$07,$08,$02,$06,$0C,$03,$09,$0B
       .byte $0C,$08,$00,$06,$05,$04,$02,$03,$09,$00,$04,$02,$00,$04,$02,$00
       .byte $05,$0A,$00,$00,$06,$05,$04
LBC46: .byte $03,$0B,$13,$1B,$23,$2B,$33,$3B,$43,$4B
LBC50: LDA    $F1     
       BMI    LBC77   
       DEC    $F4     
       BPL    LBC81   
       DEC    $F1     
       CLC            
       ADC    $F2     
       TAX            
       LDY    $F3     
       STY    $F4     
       LDA    $FB     
       BNE    LBC69   
       LDA    LBB27,X 
LBC69: STA    AUDV0   
       LDA    LBB00,X 
       STA    AUDF0   
       LDA    LBB4F,X 
       STA    AUDC0   
       BNE    LBC81   
LBC77: DEC    $F4     
       BPL    LBC81   
       LDA    #$00    
       STA    AUDV0   
       STA    $FB     
LBC81: LDA    $F8     
       BMI    LBCA6   
       DEC    $F9     
       BPL    LBCA5   
       DEC    $F8     
       CLC            
       ADC    $F7     
       TAX            
       LDY    $EA     
       STY    $F9     
       LDA    $F5     
       BNE    LBC9A   
       LDA    LBC05,X 
LBC9A: STA    AUDV1   
       LDA    LBB76,X 
       STA    AUDF1   
       LDA    $F6     
       STA    AUDC1   
LBCA5: RTS            

LBCA6: DEC    $F9     
       BPL    LBCA5   
       LDA    #$00    
       STA    AUDV1   
       STA    $F5     
       STA    $F6     
       RTS            

LBCB3: .byte $02,$87,$CF,$87
LBCB7: .byte $02,$07,$0F,$07,$02
LBCBC: .byte $10,$38,$7D,$38
LBCC0: .byte $10
LBCC1: .byte $30,$50,$60,$80,$A0
LBCC6: .byte $10,$1D,$29,$35,$41,$4D,$5D,$69,$75,$81,$8D
LBCD1: LDX    #$01    
       STX    $F6     
       LDY    #$24    
       JSR    LBEC3   
       RTS            

LBCDB: .byte $82,$C7,$EF,$C7
LBCDF: .byte $82,$3B,$3B,$51,$51,$66,$66,$66,$51,$51,$3B,$3B,$3B,$3B
LBCED: .byte $D9,$00,$DA,$00,$DA,$00,$DB,$00,$DB
LBCF6: LDA    #$F0    
       AND    $C3     
       ORA    #$80    
       CLC            
       ADC    $A3     
       RTS            

LBD00: .byte $00,$28,$34,$14,$14,$14,$1C
LBD07: .byte $5E,$DE,$BF,$FF,$7F,$3F,$2B,$2B,$2B,$2A,$1E,$0C,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$14,$3C,$14,$14,$1C,$1E
       .byte $1E,$3F,$3F,$3F,$3F,$6F,$EF,$CF,$8E,$1E,$0C,$00,$00,$00
LBE15: .byte $00,$80,$C0,$80,$00
LBE1A: .byte $B8,$26,$08,$08,$26,$08,$08,$00,$16,$08
LBE24: .byte $1A,$94,$04,$1A,$D6,$1A,$1A,$56,$A2,$0A,$1A,$94
LBE30: .byte $94,$1A,$0A,$98,$94,$64,$56,$1A,$98,$04,$94,$1A
LBE3C: .byte $D6,$94,$1A,$64,$1A,$98,$94,$94
LBE44: .byte $82,$C7,$86,$EF,$AE,$CF,$AE,$CF,$AE,$CF,$AE,$CF,$AE,$CF,$AE,$CF
       .byte $AE,$CF,$2C,$4D,$28,$28
LBE5A: .byte $95,$B4,$B6,$D3,$D5,$D7,$E2,$E4,$E6,$E8,$81,$83,$85,$87,$89,$A0
       .byte $A2,$A4,$A6,$A8,$AA
LBE6F: .byte $86,$C2,$C8,$F0,$FA
LBE74: .byte $82,$C7,$C3,$EF,$EB,$E7,$EB,$E7,$EB,$E7,$EB,$E7,$EB,$E7,$EB,$E7
       .byte $EB,$E7,$69,$65,$28,$28
LBE8A: .byte $1B,$37,$53,$6F,$8B,$A7
LBE90: LDA    $EA,X   
       LDY    $B5     
       STY    $EA,X   
       STA    $B5     
       LDA    #$FF    
       EOR    $B1     
       STA    $B1     
       RTS            

LBE9F: .byte $10,$38,$7C,$38
LBEA3: .byte $10,$38,$18,$7D,$5D,$3C,$5D,$3C,$5D,$3C,$5D,$3C,$5D,$3C,$5D,$3C
       .byte $5D,$3C,$4D,$2C,$45,$45
LBEB9: LDX    #$0D    
       STX    $F5     
       LDY    #$04    
       STY    $F6     
       LDX    #$05    
LBEC3: STA    $F8     
       STY    $F7     
       STX    $EA     
       STX    $F9     
       RTS            

LBECC: LDA    #$00    
       STA    $BA     
       LDX    #$04    
       LDA    #$07    
LBED4: STA    $DC,X   
       DEX            
       BPL    LBED4   
       STX    $C9     
       STX    $A7     
       RTS            

LBEDE: CLC            
       ADC    #$2E    
       TAY            
       AND    #$0F    
       STA    $C1     
       TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       CLC            
       ADC    $C1     
       CMP    #$0F    
       BCC    LBEF6   
       SBC    #$0F    
       INY            
LBEF6: EOR    #$07    
       ASL            
       ASL            
       ASL            
       ASL            
       DEY            
       DEY            
       DEY            
       RTS            

LBF00: .byte $00,$3E,$7F,$7F,$3E,$3E,$1C,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$1C,$3E,$3E
       .byte $7F,$7F,$7F,$3E,$3E,$1C,$00,$7E,$14,$14,$1C,$3E,$7E,$FF,$9F,$FF
       .byte $A7,$A7,$A6,$26,$7E,$3E,$1C,$0A,$04,$00,$00,$00,$18,$24,$40,$40
       .byte $5C,$7E,$72,$FE,$CC,$C0,$CC,$FE,$73,$DE,$C0,$CA,$7E,$7E,$34,$14
       .byte $0A
LBF51: .byte $00,$1C,$22,$40,$5C,$7E,$7E,$CC,$C0,$FC,$7F,$FF,$DC,$CA,$7E,$7E
       .byte $34,$14,$0A,$00,$00,$00,$1C,$22,$5C,$7E,$FE,$CC,$7F,$FF,$FC,$CA
       .byte $7E,$7E,$34,$14,$0A
LBF76: .byte $00,$00,$00,$00,$00,$00,$00,$06,$06,$00,$00,$00,$00,$00,$00
LBF85: .byte $00,$00,$00,$00,$00,$00,$00,$80,$80,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00
LBF98: .byte $00
LBF99: .byte $00,$00,$01,$01
LBF9D: .byte $03,$07,$12,$18,$21,$29,$30,$3A,$4E,$00,$04,$00,$04,$04,$04,$02
       .byte $01,$09,$06,$00,$00,$14,$14,$BE,$14,$BE,$94,$94,$80,$80
LBFBB: .byte $80,$C0,$E0,$C0,$80
LBFC0: .byte $0D,$0B,$0A,$0A,$09
LBFC5: .byte $10,$38,$30,$7D,$75,$79,$75,$79,$75,$79,$75,$79,$75,$79,$75,$79
       .byte $75,$79,$65,$69,$45,$45
LBFDB: LDX    #$12    
LBFDD: LDA    #$0D    
       STA    $FB     
       LDA    #$14    
       LDY    #$02    
LBFE5: STX    $F1     
       STA    $F2     
       STY    $F3     
       STY    $F4     
       RTS            

LBFEE: SED            
       CLC            
LBFF0: ADC    $D9,X   
       STA    $D9,X   
       LDA    #$00    
       DEX            
       BPL    LBFF0   
       CLD            
       RTS            

LBFFB: .byte $CD,$00,$B0,$00,$B0
