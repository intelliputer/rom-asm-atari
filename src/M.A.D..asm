; Disassembly of roms/M.A.D..bin
; Disassembled Tue Oct  6 15:21:51 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/M.A.D..bin
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
AUDF0   =  $17
AUDV0   =  $19
AUDV1   =  $1A
GRP0    =  $1B
GRP1    =  $1C
HMP0    =  $20
HMP1    =  $21
HMM0    =  $22
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXM0P   =  $30
CXPPMM  =  $37
INPT4   =  $3C
INPT5   =  $3D
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM8T   =  $0295
TIM64T  =  $0296
T1024T  =  $0297

       ORG $B000

START:
       SEI            
       CLD            
       LDX    #$FF    
       TXS            
       LDX    #$00    
       JSR    LB09F   
       JSR    LBC41   
       JSR    LBC4F   
       LDA    SWCHB   
       ROR            
       BCS    LB01C   
       LDA    $8C     
       ORA    #$01    
       STA    $8C     
LB01C: LDA    #$01    
       BIT    $8C     
       BEQ    LB03D   
       LDX    #$80    
       JSR    LB0A3   
       LDA    $FA     
       STA    $EB     
       STA    $EC     
       LDA    #$00    
       STA    $80     
       STA    $82     
       STA    $84     
       STA    $86     
       JSR    LB8C9   
       JMP    LB088   
LB03D: LDA    $FA     
       AND    #$0F    
       BNE    LB069   
       LDA    SWCHB   
       ROR            
       ROR            
       BCS    LB069   
       LDA    $FB     
       EOR    #$01    
       STA    $FB     
       TAY            
       LDX    #$80    
       JSR    LB0A3   
       LDA    #$00    
       STA    $86     
       LDA    #$02    
       STA    $EF     
       LDA    #$0C    
       STA    $93     
       STA    $F1     
       LDA    LB09D,Y 
       STA    $82     
LB069: JSR    LB8C9   
       JSR    LB147   
       JSR    LBEBB   
       JSR    LB298   
       LDA    $FA     
       AND    #$03    
       BNE    LB07E   
       JSR    LB26E   
LB07E: LDA    $FB     
       BNE    LB085   
       JMP    LBA25   
LB085: JSR    LB503   
LB088: JSR    LB225   
       JSR    LB382   
       JSR    LBAC2   
       JSR    LB484   
       JSR    LBC5E   
       JSR    LB4C8   
       JMP    LB55C   
LB09D: .byte $2D,$1E
LB09F: LDA    #$01    
       STA    $FB     
LB0A3: LDA    #$00    
LB0A5: STA    VSYNC,X 
       INX            
       CPX    #$FA    
       BNE    LB0A5   
       LDA    #$00    
       STA    COLUBK  
       LDA    #$D2    
       STA    $80     
       LDA    #$C3    
       STA    $82     
       LDA    #$B4    
       STA    $84     
       LDA    #$A5    
       STA    $86     
       LDA    #$BD    
       STA    $81     
       STA    $83     
       STA    $85     
       STA    $87     
       LDA    #$3F    
       STA    $F8     
       STA    $F9     
       LDA    #$02    
       STA    $F2     
       LDA    $FB     
       STA    $F5     
       LDA    #$44    
       STA    $D6     
       LDA    #$16    
       STA    $D7     
LB0E0: LDA    #$07    
       STA    $A0     
       LDA    #$20    
       STA    $BA     
       LDA    #$26    
       STA    $BE     
       LDA    #$FF    
       STA    $BB     
       STA    $BC     
       STA    $BD     
       STA    $BF     
       STA    $C0     
       STA    $C1     
       LDA    #$68    
       STA    $C3     
       STA    $C4     
       LDA    #$1B    
       STA    $D0     
       LDA    #$0F    
       STA    $A7     
       STA    $A8     
       STA    $AA     
       STA    $AB     
       STA    $AC     
       STA    $AD     
       LDA    #$A0    
       STA    $B5     
       LDA    #$90    
       STA    $B4     
       LDA    #$0D    
       STA    $D2     
       STA    $D3     
       LDA    #$03    
       STA    $E2     
       LDA    #$10    
       STA    $A3     
       STA    $A4     
       STA    $A5     
       STA    $A6     
       STA    $A9     
       LDA    #$0D    
       STA    $C9     
       STA    $CA     
       STA    $CC     
       STA    $CD     
       STA    $CE     
       STA    $CF     
       LDA    #$01    
       STA    $F6     
       LDA    #$1F    
       STA    $95     
       RTS            

LB147: LDX    #$01    
LB149: LDA    $F1     
       BNE    LB1A9   
       LDA    $F2     
       CMP    #$02    
       BCS    LB1A9   
       LDY    $EF,X   
       BEQ    LB1B5   
       LDA    $93,X   
       CMP    LB205,Y 
       BEQ    LB1B5   
       STA    AUDF0,X 
       LDA    LB20D,Y 
       STA    AUDC0,X 
       LDA    #$0F    
       STA    AUDV0,X 
       INC    $90,X   
       LDA    $90,X   
       CMP    LB21D,Y 
       BNE    LB17E   
       LDA    #$00    
       STA    $90,X   
       LDA    $93,X   
       CLC            
       ADC    LB215,Y 
       STA    $93,X   
LB17E: LDA    $95     
       AND    #$80    
       BEQ    LB1A9   
LB184: LDA    $95     
       AND    #$7F    
       CMP    #$1F    
       BEQ    LB1AD   
       STA    AUDF0   
       LSR            
       TAY            
       LDA    #$0F    
       STA    AUDV0   
       LDA    #$02    
       STA    AUDC0   
       LDA    #$00    
       STA    AUDV1   
       LDA    $FA     
       AND    #$03    
       BNE    LB1A9   
       INC    $95     
       LDA    LB822,Y 
       STA    COLUBK  
LB1A9: DEX            
       BPL    LB149   
       RTS            

LB1AD: LDA    #$00    
       STA    COLUBK  
       LDA    #$1F    
       STA    $95     
LB1B5: LDA    $95     
       AND    #$80    
       BNE    LB184   
       CPX    #$01    
       BEQ    LB1CA   
LB1BF: LDA    $99,X   
       BNE    LB1D0   
       INX            
       CPX    #$04    
       BNE    LB1BF   
       LDX    #$00    
LB1CA: LDA    #$00    
       STA    AUDV0,X 
       BEQ    LB1A9   
LB1D0: LDA    $95     
       AND    #$1F    
       STA    AUDF0   
       TAY            
       LDA    #$08    
       STA    AUDC0   
       LDA    #$03    
       STA    AUDV0   
       LDA    $FA     
       AND    #$03    
       BNE    LB204   
       LDA    $95     
       AND    #$40    
       BNE    LB1F2   
       DEY            
       BNE    LB1F9   
       INY            
       INY            
       BNE    LB1FF   
LB1F2: INY            
       CPY    #$20    
       BNE    LB1FF   
       DEY            
       DEY            
LB1F9: TYA            
       AND    #$BF    
       STA    $95     
       RTS            

LB1FF: TYA            
       ORA    #$40    
       STA    $95     
LB204: RTS            

LB205: .byte $12,$1A,$0C,$23,$1F,$1F,$1F,$08
LB20D: .byte $0D,$13,$01,$1A,$0D,$08,$09,$02
LB215: .byte $00,$00,$00,$00,$01,$01,$01,$01
LB21D: .byte $0C,$12,$00,$00,$01,$01,$04,$03
LB225: LDX    #$01    
LB227: LDA    $C3,X   
       CMP    #$68    
       BEQ    LB26A   
       SEC            
       SBC    #$02    
       STA    $C3,X   
       LDY    $E3,X   
       CPY    #$03    
       BCC    LB24D   
       LDA    $D4,X   
       SEC            
       SBC    LBE0D,Y 
       STA    $D4,X   
       CMP    #$90    
       BNE    LB25F   
       LDA    #$F0    
       STA    $D4,X   
       DEC    $D2,X   
       JMP    LB25F   
LB24D: LDA    $D4,X   
       CLC            
       ADC    LBE0D,Y 
       STA    $D4,X   
       CMP    #$F0    
       BNE    LB25F   
       LDA    #$90    
       STA    $D4,X   
       INC    $D2,X   
LB25F: LDA    $C3,X   
       CMP    LBE14,Y 
       BNE    LB26A   
       LDA    #$68    
       STA    $C3,X   
LB26A: DEX            
       BPL    LB227   
       RTS            

LB26E: LDY    #$01    
       JSR    LB445   
       BNE    LB285   
       LDA    $D0     
       CMP    #$36    
       BEQ    LB297   
       CLC            
       ADC    #$09    
       STA    $D0     
       INC    $E2     
       JMP    LB297   
LB285: LDY    #$03    
       JSR    LB445   
       BNE    LB297   
       LDA    $D0     
       BEQ    LB297   
       SEC            
       SBC    #$09    
       STA    $D0     
       DEC    $E2     
LB297: RTS            

LB298: JSR    LB635   
       BCC    LB2A4   
       LDA    $8C     
       AND    #$EF    
       STA    $8C     
       RTS            

LB2A4: LDA    #$10    
       BIT    $8C     
       BNE    LB2D3   
       LDX    #$00    
LB2AC: LDA    $C3,X   
       CMP    #$68    
       BNE    LB2D4   
       SEC            
       SBC    #$02    
       STA    $C3,X   
       LDY    $E2     
       STY    $E3,X   
       LDA    LBDFF,Y 
       STA    $D2,X   
       LDA    LBE06,Y 
       STA    $D4,X   
       LDA    #$04    
       STA    $F0     
       LDA    #$01    
       STA    $94     
LB2CD: LDA    $8C     
       EOR    #$10    
       STA    $8C     
LB2D3: RTS            

LB2D4: INX            
       CPX    #$02    
       BNE    LB2AC   
       BEQ    LB2CD   
       LDA    $D8,X   
       AND    #$80    
       BNE    LB323   
       JMP    LB2EE   
LB2E4: LDA    $D8,X   
       AND    #$80    
       BNE    LB31F   
       LDA    #$00    
       STA    $D8,X   
LB2EE: LDA    $A3,X   
       CMP    #$1A    
       BNE    LB2FA   
       LDA    $AE,X   
       CMP    #$30    
       BEQ    LB30C   
LB2FA: LDA    $AE,X   
       CLC            
       ADC    #$10    
       CMP    #$70    
       STA    $AE,X   
       BNE    LB31E   
       LDA    #$10    
       STA    $AE,X   
       INC    $A3,X   
       RTS            

LB30C: LDA    $99,X   
       CMP    #$0E    
       BCC    LB31E   
       LDA    #$00    
       STA    $99,X   
       CPX    #$08    
       BNE    LB31E   
       LDA    $FB     
       STA    $F5     
LB31E: RTS            

LB31F: LDA    #$80    
       STA    $D8,X   
LB323: LDA    $A3,X   
       CMP    #$02    
       BNE    LB32F   
       LDA    $AE,X   
       CMP    #$B0    
       BEQ    LB30C   
LB32F: LDA    $AE,X   
       SEC            
       SBC    #$10    
       CMP    #$90    
       STA    $AE,X   
       BNE    LB31E   
       LDA    #$F0    
       STA    $AE,X   
       DEC    $A3,X   
       RTS            

LB341: LDA    $EA     
       BEQ    LB37E   
       JSR    LB9AA   
       CMP    #$32    
       BCS    LB37E   
       LDY    $E5     
       CMP    LBFED,Y 
       BCS    LB364   
       LDA    LBCFE   
       STA    $99,X   
       LDA    #$01    
       STA    $A3,X   
       LDA    #$10    
       STA    $AE,X   
       LDA    #$00    
       BEQ    LB373   
LB364: LDA    LBCFF   
       STA    $99,X   
       LDA    #$1A    
       STA    $A3,X   
       LDA    #$30    
       STA    $AE,X   
       LDA    #$80    
LB373: STA    $D8,X   
       LDY    $E5     
       LDA    LBDE1,Y 
       STA    $C5,X   
       DEC    $EA     
LB37E: JMP    LBAF0   
LB381: RTS            

LB382: LDX    #$00    
LB384: LDA    CXM0P,X 
       AND    LB9FE,X 
       BEQ    LB3AF   
       LDA    $C3,X   
       LDY    #$00    
LB38F: CMP    LBFE6,Y 
       BCC    LB381   
       CMP    LB9F8,Y 
       BCS    LB3AC   
       LDA    #$68    
       STA    $C3,X   
       TYA            
       TAX            
       LDA    $99,X   
       CMP    #$2E    
       BCS    LB381   
       LDA    #$2E    
       STA    $99,X   
       JMP    LB3D4   
LB3AC: INY            
       BNE    LB38F   
LB3AF: TXA            
       TAY            
       LDA    CXM0P,X 
       AND    LBA00,X 
       BEQ    LB3F5   
       LDA    $C3,X   
       LDX    #$01    
LB3BC: CMP    $BA,X   
       BCC    LB3F1   
       CMP    $BE,X   
       BCS    LB3F2   
       LDA    $A0,X   
       CMP    #$2E    
       BCS    LB3F1   
       LDA    #$2E    
       STA    $A0,X   
       TYA            
       TAX            
       LDA    #$68    
       STA    $C3,X   
LB3D4: LDA    #$05    
       STA    $EF     
       LDA    #$01    
       STA    $93     
       LDA    #$00    
       STA    $90     
       LDA    $E5     
       CMP    #$06    
       BCC    LB3EC   
       LDY    #$14    
       JSR    LB935   
       RTS            

LB3EC: LDY    #$0A    
       JSR    LB935   
LB3F1: RTS            

LB3F2: INX            
       BNE    LB3BC   
LB3F5: INX            
       CPX    #$02    
       BEQ    LB3F1   
       JMP    LB384   
LB3FD: LDX    $BA     
       CPX    #$08    
       BEQ    LB410   
       LDY    #$04    
       JSR    LB445   
       BNE    LB410   
       DEC    $BA     
       DEC    $BE     
       BNE    LB41F   
LB410: CPX    #$59    
       BEQ    LB41F   
       LDY    #$06    
       JSR    LB445   
       BNE    LB41F   
       INC    $BA     
       INC    $BE     
LB41F: LDY    #$07    
       JSR    LB445   
       BNE    LB42A   
       LDA    #$00    
       BEQ    LB433   
LB42A: LDY    #$05    
       JSR    LB445   
       BNE    LB43D   
       LDA    #$80    
LB433: LDY    $E5     
       ORA    LBDED,Y 
       TAX            
       DEX            
       STX    $DF     
       RTS            

LB43D: LDA    #$FF    
       STA    $DF     
       RTS            

LB442: LDA    #$FF    
LB444: RTS            

LB445: CPY    #$04    
       BCS    LB44D   
       LDA    $D1     
       BNE    LB444   
LB44D: LDA    SWCHA   
       EOR    #$FF    
       BEQ    LB442   
       LDA    $F2     
       BEQ    LB463   
       CMP    #$02    
       BCS    LB442   
       LDA    SWCHA   
       AND    LB472,Y 
       RTS            

LB463: LDA    SWCHA   
       AND    LB46A,Y 
       RTS            

LB46A: .byte $10,$80,$20,$40,$01,$08,$02,$04
LB472: .byte $01,$08,$02,$04,$10,$80,$20,$40
LB47A: INX            
       CPX    #$0A    
       BNE    LB498   
       LDA    $F5     
       STA    $97     
       RTS            

LB484: LDX    #$07    
       LDA    $F5     
       BEQ    LB498   
       INX            
       LDA    $BB     
       SEC            
       SBC    $BA     
       CMP    #$1A    
       BCC    LB498   
       LDA    $FB     
       STA    $F5     
LB498: LDY    $99,X   
       CPY    #$0E    
       BCC    LB47A   
       LDA    $B3,X   
       CMP    #$69    
       BNE    LB4B7   
       CPY    #$2E    
       BCS    LB47A   
       LDA    #$2E    
       STA    $99,X   
       LDA    $FA     
       AND    #$03    
       BNE    LB47A   
       INC    $FA     
       JMP    LB47A   
LB4B7: INC    $B3,X   
       INC    $B7,X   
       LDY    $E5     
       CPY    #$04    
       BCC    LB47A   
       INC    $B3,X   
       INC    $B7,X   
       JMP    LB47A   
LB4C8: STA    WSYNC   
       LDY    #$07    
LB4CC: DEY            
       BNE    LB4CC   
       STA    RESP0   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       LDY    #$00    
LB4D9: STA    WSYNC   
       STA    HMCLR   
       LDA    ($86),Y 
       STA    GRP0    
       LDA    ($84),Y 
       STA    GRP1    
       LDX    LBD0F,Y 
       LDA    ($80),Y 
       PHA            
       LDA    ($82),Y 
       TAY            
       PLA            
       NOP            
       STY    GRP0    
       STA    GRP1    
       STX    GRP0    
       INC    $96     
       LDY    $96     
       CPY    #$0F    
       BNE    LB4D9   
       LDA    #$00    
       STA    $96     
       RTS            

LB503: DEC    $F6     
       BNE    LB53A   
       LDX    $E5     
       LDA    LB548,X 
       STA    $F6     
       LDY    #$00    
LB510: LDX    $99,Y   
       BEQ    LB521   
       CPX    #$2E    
       BCS    LB521   
       LDX    $C5,Y   
       CPX    #$0D    
       BNE    LB521   
       JSR    LBA67   
LB521: INY            
       CPY    #$04    
       BNE    LB510   
       JSR    LB9AA   
       LDY    #$04    
       AND    #$03    
       TAX            
LB52E: LDA    $99,X   
       BEQ    LB53B   
       CMP    #$2E    
       BCS    LB53B   
       LDA    #$0D    
       STA    $C5,X   
LB53A: RTS            

LB53B: DEY            
       BEQ    LB53A   
       INX            
       CPX    #$04    
       BNE    LB52E   
       LDX    #$00    
       JMP    LB52E   
LB548: .byte $7F,$72,$64,$48,$7F,$64,$50,$32,$28,$28,$28,$22,$19,$04,$06,$06
       .byte $0A,$0A,$0A,$0A
LB55C: LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    $D4     
       STA    HMM0    
       LDA    #$B5    
       PHA            
       LDA    #$84    
       PHA            
       LDA    #$BA    
       PHA            
       STA    WSYNC   
       LDA    $D2     
       PHA            
       LDA    #$00    
       LDX    #$02    
       RTS            

LB57D: .byte $03,$13,$23,$33,$43,$53,$00,$00,$85,$2B,$A5,$D5,$85,$23,$A9,$B5
       .byte $48,$A9,$C8,$48,$A9,$BA,$48,$85,$02,$A5,$D3,$48,$A9,$00,$A2,$03
       .byte $60,$E0,$D0,$10,$10,$90,$90,$90,$90
LB5A6: .byte $20,$10,$08,$00,$04,$02,$01,$A6,$F2,$E0,$03,$F0,$0C,$A5,$FB,$F0
       .byte $04,$A5,$F8,$F0,$04,$BD,$37,$BC,$60,$A5,$92,$60
LB5C2: .byte $DF,$EF,$F7,$00,$FB,$FD,$FE,$85,$02,$85,$2B,$E8,$E0,$12,$D0,$F7
       .byte $A4,$E5,$A5,$C5,$85,$07,$A9,$00,$A8,$C8,$C8,$18,$69,$04,$85,$96
       .byte $A2,$1E,$9A,$A6,$97,$B5,$CC,$85,$06,$A5,$96,$D5,$BA,$90,$3F,$D5
       .byte $BE,$B0,$3B,$A6,$B8,$BD,$B8,$BC,$E6,$B8,$85,$02,$A2,$00,$86,$1B
       .byte $C4,$C4,$08,$C4,$C3,$08,$A8,$A2,$FF,$9A,$A6,$97,$A9,$B6,$48,$A9
       .byte $60,$48,$A9,$BA,$48,$B5,$AA,$48,$B5,$A0,$85,$B8,$B5,$B5,$85,$20
       .byte $A6,$98,$B5,$99,$85,$02,$EA,$A2,$00,$95,$B9,$A9,$00,$60,$A9,$00
       .byte $4C,$FC,$B5
LB635: LDA    $D1     
       BNE    LB649   
       LDA    $F2     
       BEQ    LB645   
       CMP    #$02    
       BCS    LB649   
       LDA    INPT5   
       ROL            
       RTS            

LB645: LDA    INPT4   
       ROL            
       RTS            

LB649: SEC            
       RTS            

LB64B: LDA    $F2     
       BEQ    LB657   
       CMP    #$02    
       BCS    LB65B   
       LDA    INPT4   
       ROL            
       RTS            

LB657: LDA    INPT5   
       ROL            
       RTS            

LB65B: SEC            
       RTS            

LB65D: .byte $00,$00,$00,$00,$A2,$1E,$9A,$A6,$96,$E4,$C4,$08,$E4,$C3,$08,$A2
       .byte $FF,$9A,$A6,$98,$85,$2B,$B5,$AE,$85,$21,$A5,$B9,$18,$69,$07,$85
       .byte $C2,$E0,$06,$D0,$08,$A9,$B8,$48,$A9,$53,$4C,$8F,$B6,$A9,$B7,$48
       .byte $A9,$00,$85,$02,$84,$1B,$48,$A9,$BA,$48,$B5,$A3,$48,$E6,$96,$A5
       .byte $96,$A6,$97,$D5,$BA,$90,$4E,$D5,$BE,$B0,$4A,$A6,$B8,$BC,$B8,$BC
       .byte $E6,$B8,$E6,$96,$A5,$96,$A2,$1E,$9A,$A6,$97,$C5,$C4,$85,$02,$84
       .byte $1B,$08,$C5,$C3,$08,$D5,$BA,$90,$31,$D5,$BE,$B0,$2D,$A6,$B8,$BC
       .byte $B8,$BC,$E6,$B8,$E6,$96,$A6,$97,$A5,$96,$D5,$BA,$90,$21,$D5,$BE
       .byte $B0,$1D,$A6,$B8,$BD,$B8,$BC,$E6,$B8,$A2,$FB,$85,$02,$84,$1B,$9A
       .byte $A2,$01,$A4,$B9,$60,$A0,$00,$4C,$AF,$B6,$A0,$00,$4C,$D1,$B6,$A9
       .byte $00,$4C,$E6,$B6,$E6,$96,$A5,$96,$A2,$1E,$9A,$C5,$C4,$08,$C5,$C3
       .byte $08,$A6,$97,$D5,$BA,$90,$26,$D5,$BE,$B0,$22,$A6,$B8,$BD,$B8,$BC
       .byte $E6,$B8,$BE,$B8,$BC,$85,$02,$86,$1C,$85,$1B,$C8,$98,$29,$01,$F0
       .byte $D3,$98,$C5,$C2,$F0,$11,$E6,$96,$A5,$96,$4C,$0E,$B7,$A9,$00,$4C
       .byte $1F,$B7,$A9,$00,$4C,$59,$B7,$E6,$96,$A5,$96,$A6,$97,$D5,$BA,$90
       .byte $F1,$D5,$BE,$B0,$ED,$A6,$B8,$BD,$B8,$BC,$E6,$B8,$A2,$1E,$9A,$E6
       .byte $98,$A6,$98,$A0,$00,$85,$02,$84,$1C,$85,$1B,$85,$2B,$E0,$03,$D0
       .byte $02,$84,$1F,$B5,$C5,$85,$07,$E6,$96,$A5,$96,$C5,$C4,$08,$C5,$C3
       .byte $08,$A6,$97,$D5,$BA,$90,$1A,$D5,$BE,$B0,$16,$A6,$B8,$BC,$B8,$BC
       .byte $E6,$B8,$A6,$97,$85,$02,$84,$1B,$D5,$BE,$90,$0A,$E6,$97,$4C,$DA
       .byte $B5,$A0,$00,$4C,$8F,$B7,$A0,$00,$E6,$96,$A5,$96,$D5,$BA,$90,$0B
       .byte $D5,$BE,$B0,$07,$A6,$B8,$BC,$B8,$BC,$E6,$B8,$85,$02,$84,$1B,$E6
       .byte $96,$A5,$96,$A2,$1E,$9A,$C5,$C4,$08,$C5,$C3,$08,$A6,$97,$D5,$BA
       .byte $90,$49,$D5,$BE,$B0,$45,$A6,$B8,$BC,$B8,$BC,$E6,$B8,$A6,$98,$B5
       .byte $99,$85,$B9,$E6,$96,$A6,$97,$85,$02,$84,$1B,$A0,$00,$A5,$96,$D5
       .byte $BA,$90,$0B,$D5,$BE,$B0,$07,$A6,$B8,$BC,$B8,$BC,$E6,$B8,$E6,$96
       .byte $A6,$97,$A5,$96,$D5,$BA,$90,$18,$D5,$BE,$B0,$14,$A6,$B8,$BD,$B8
       .byte $BC,$E6,$B8,$85,$02,$84,$1B,$A8,$4C,$61,$B6,$A0,$00,$4C,$DA,$B7
       .byte $A9,$00,$4C,$10,$B8
LB822: .byte $08,$1A,$29,$38,$4A,$67,$75,$67,$4A,$38,$29,$1A,$00,$A9,$00,$4C
       .byte $75,$B8
LB834: LDA    $99,X   
       CMP    #$0E    
       BCC    LB850   
       CMP    #$2E    
       BCS    LB850   
       AND    #$08    
       BEQ    LB84A   
       LDA    $99,X   
       EOR    #$10    
       STA    $99,X   
       BNE    LB850   
LB84A: LDA    $99,X   
       EOR    #$30    
       STA    $99,X   
LB850: DEX            
       BPL    LB834   
       RTS            

LB854: .byte $A9,$00,$85,$1D,$85,$1E,$A9,$05,$85,$05,$A4,$D0,$E6,$96,$A5,$96
       .byte $A6,$97,$D5,$BA,$90,$C5,$D5,$BE,$B0,$C1,$A6,$B8,$BD,$B8,$BC,$E6
       .byte $B8,$85,$02,$85,$1B,$B9,$79,$BC,$85,$1C,$C8,$E6,$96,$A5,$96,$C9
       .byte $71,$D0,$DD,$A9,$BB,$48,$A9,$C0,$85,$0F,$48,$A5,$F8,$29,$38,$4A
       .byte $4A,$4A,$A8,$B9,$B1,$B8,$85,$20,$A9,$BA,$48,$B9,$B9,$B8,$48,$B9
       .byte $C1,$B8,$85,$02,$85,$04,$A9,$00,$85,$1B,$A2,$00,$60,$30,$C0,$00
       .byte $00,$E0,$E0,$E0,$E0,$05,$14,$16,$16,$19,$19,$19,$19,$00,$00,$00
       .byte $01,$00,$02,$01,$03
LB8C9: LDA    $D6     
       STA    COLUP0  
       STA    COLUP1  
       LDA    $80     
       CMP    #$D2    
       BEQ    LB8DC   
       LDA    #$03    
       STA    NUSIZ0  
       JMP    LB8EA   
LB8DC: LDA    #$01    
       STA    NUSIZ0  
       LDA    $82     
       CMP    #$C3    
       BEQ    LB8EA   
       LDA    #$00    
       STA    COLUP1  
LB8EA: LDA    #$01    
       STA    NUSIZ1  
       INC    $FA     
       LDA    #$00    
       STA    $96     
       STA    $98     
       STA    PF0     
       STA    PF1     
       STA    PF2     
       LDA    #$90    
       STA    HMP1    
       LDA    #$80    
       STA    HMP0    
       LDA    #$05    
       STA    CTRLPF  
       LDA    #$BB    
       STA    COLUPF  
       LDA    $FA     
       AND    #$03    
       BNE    LB917   
       LDX    #$09    
       JSR    LB834   
LB917: INC    $92     
       LDA    $92     
       AND    #$0F    
       BNE    LB926   
       CLC            
       ADC    #$10    
       ORA    #$04    
       STA    $92     
LB926: LDA    #$26    
       STA    $CB     
       LDA    $D1     
       BEQ    LB934   
       DEC    $D1     
       LDA    $92     
       STA    $CB     
LB934: RTS            

LB935: LDA    $80     
       CLC            
       BNE    LB93C   
       ADC    #$0F    
LB93C: ADC    #$0F    
       STA    $80     
       CMP    #$A5    
       BEQ    LB948   
LB944: DEY            
       BNE    LB935   
       RTS            

LB948: LDX    #$00    
LB94A: LDA    #$0F    
       STA    $80,X   
       INX            
       INX            
       CPX    #$08    
       BEQ    LB944   
       LDA    $80,X   
       CLC            
       BNE    LB95B   
       ADC    #$0F    
LB95B: ADC    #$0F    
       STA    $80,X   
       CMP    #$A5    
       BNE    LB944   
       BEQ    LB94A   
LB965: BMI    LB976   
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    $E7     
       STY    $E7     
       SEC            
       SBC    $E7     
       STA    $E7     
       RTS            

LB976: EOR    #$F0    
       LSR            
       LSR            
       LSR            
       LSR            
       CLC            
       ADC    #$01    
       CLC            
       ADC    $E7     
       STA    $E7     
       RTS            

LB985: LDA    #$1B    
       SEC            
       SBC    $E7     
       ASL            
       STA    $E7     
       ASL            
       CLC            
       ADC    $E7     
       STA    $E7     
       RTS            

LB994: LDA    $FA     
       AND    #$03    
       BNE    LB9A4   
       CPY    #$3E    
       BEQ    LB9A5   
       TYA            
       CLC            
       ADC    #$08    
       STA    $99,X   
LB9A4: RTS            

LB9A5: LDA    #$00    
       STA    $99,X   
       RTS            

LB9AA: LDA    $EB     
       STA    $ED     
       LDA    $EC     
       STA    $EE     
       ASL            
       ROL    $EB     
       ASL            
       ROL    $EB     
       CLC            
       ADC    $EE     
       STA    $EC     
       LDA    #$00    
       ADC    $EB     
       CLC            
       ADC    $ED     
       STA    $EB     
       LDA    #$00    
       INC    $EC     
       ADC    $EB     
       STA    $EB     
       RTS            

LB9CF: LDX    $D6     
       LDA    $D7     
       STX    $D7     
       STA    $D6     
       LDX    $F8     
       LDA    $F9     
       STX    $F9     
       STA    $F8     
       LDX    #$8B    
       TXS            
       LDX    #$03    
LB9E4: TXA            
       LDY    $88,X   
       ASL            
       TAX            
       LDA    $80,X   
       STY    $80,X   
       PHA            
       TXA            
       LSR            
       TAX            
       DEX            
       BPL    LB9E4   
       LDX    #$FB    
       TXS            
       RTS            

LB9F8: .byte $0F,$1F,$2F,$3F,$4F,$5F
LB9FE: .byte $80,$40
LBA00: .byte $40,$80,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA
       .byte $EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$95,$10,$85,$02
       .byte $85,$2A,$85,$1B,$60
LBA25: LDA    $F5     
       BNE    LBA31   
       LDA    CXPPMM  
       ROL            
       BCS    LBA3A   
LBA2E: JSR    LB3FD   
LBA31: LDA    $8C     
       AND    #$7F    
       STA    $8C     
       JMP    LB088   
LBA3A: LDY    #$00    
       LDA    $BA     
LBA3E: CMP    LB57D,Y 
       BCC    LBA2E   
       CMP    LBDF9,Y 
       BCC    LBA4C   
       INY            
       JMP    LBA3E   
LBA4C: JSR    LB64B   
       BCS    LBA5E   
       LDX    $D8,Y   
       STX    $DF     
       LDA    $8C     
       ORA    #$80    
       STA    $8C     
       JMP    LB088   
LBA5E: LDA    #$80    
       BIT    $8C     
       BNE    LBA67   
       JMP    LBA2E   
LBA67: LDA    $BB     
       STA    $BC     
       LDA    $BF     
       STA    $C0     
       LDA    LBE1B,Y 
       STA    $BA     
       STA    $BB     
       INC    $BB     
       CLC            
       ADC    #$08    
       STA    $BF     
       SEC            
       SBC    #$02    
       STA    $BE     
       LDA    #$01    
       STA    $F5     
       LDA    $AB     
       STA    $AC     
       LDA    $B6     
       STA    $B7     
       LDA    $A1     
       STA    $A2     
       LDA    $CD     
       STA    $CE     
       LDA    $E0     
       STA    $E1     
       LDX    $A3,Y   
       STX    $AB     
       LDX    $AE,Y   
       STX    $B6     
       LDX    $99,Y   
       STX    $A1     
       LDX    $C5,Y   
       STX    $CD     
       LDX    $D8,Y   
       STX    $E0     
       LDX    #$00    
       STX    $99,Y   
       LDA    #$06    
       STA    $EF     
       LDA    #$0D    
       STA    $93     
       LDA    $FB     
       BEQ    LBABF   
       RTS            

LBABF: JMP    LBA31   
LBAC2: LDX    #$00    
LBAC4: LDA    $99,X   
       BNE    LBACF   
       CPX    #$04    
       BCS    LBAD3   
       JMP    LB341   
LBACF: CMP    #$2E    
       BCS    LBB01   
LBAD3: CPX    #$06    
       BEQ    LBAF0   
       CPX    #$07    
       BNE    LBADF   
       LDA    $F5     
       BNE    LBAF0   
LBADF: LDY    $E5     
       INC    $D8,X   
       LDA    $D8,X   
       AND    #$7F    
       CMP    LBDED,Y 
       BNE    LBAEF   
       JSR    LB2E4   
LBAEF: NOP            
LBAF0: INX            
       CPX    #$0A    
       BNE    LBAC4   
       RTS            

LBAF6: CPX    #$08    
       BNE    LBAF0   
       LDA    $FB     
       STA    $F5     
       JMP    LBAF0   
LBB01: TAY            
       JSR    LB994   
       CPX    #$07    
       BCC    LBAD3   
       LDA    $99,X   
       BEQ    LBAF6   
       LDA    $B3,X   
       CMP    #$69    
       BNE    LBAD3   
       LDA    $99,X   
       CMP    #$36    
       BNE    LBAF0   
       LDA    #$07    
       STA    $EF     
       LDA    #$01    
       STA    $93     
       LDA    #$00    
       STA    $90     
       LDA    $A3,X   
       STA    $E7     
       JSR    LB985   
       LDA    $AE,X   
       JSR    LB965   
       LDY    #$00    
LBB33: CMP    LBBE8,Y 
       BCC    LBAF0   
       CMP    LBC3A,Y 
       BCS    LBB5F   
       CPY    #$03    
       BNE    LBB59   
       LDA    #$3C    
       STA    $D1     
       LDA    $FB     
       BEQ    LBAF0   
       LDY    #$06    
LBB4B: JSR    LBB66   
       LDA    $95     
       CMP    #$81    
       BEQ    LBAF0   
       DEY            
       BPL    LBB4B   
       BMI    LBAF0   
LBB59: JSR    LBB66   
       JMP    LBAF0   
LBB5F: INY            
       CPY    #$07    
       BEQ    LBAF0   
       BNE    LBB33   
LBB66: LDA    LB5A6,Y 
       AND    $F8     
       BEQ    LBB78   
       LDA    LB5C2,Y 
       AND    $F8     
       STA    $F8     
       LDA    #$81    
       STA    $95     
LBB78: RTS            

LBB79: .byte $00,$1D,$1D,$1F,$1D,$18,$1D,$1F,$1D,$12,$13,$15,$00,$1D,$1D,$1F
       .byte $1D,$18,$00,$1D,$1D,$1F,$1D,$12,$13,$15,$1D,$1D,$13,$18,$1D,$18
       .byte $1D,$13,$14
LBB9C: .byte $70,$01,$0F,$10,$10,$32,$10,$10,$10,$07,$07,$20,$70,$01,$0F,$10
       .byte $10,$32,$70,$01,$10,$10,$10,$07,$07,$20,$01,$14,$14,$14,$14,$14
       .byte $14,$14,$3C,$00,$00,$85,$2B,$A9,$BB,$48,$A9,$EE,$48,$A5,$F8,$29
       .byte $07,$A8,$B9,$C1,$B8,$85,$05,$B9,$9E,$B5,$85,$21,$A9,$BA,$48,$B9
       .byte $54,$B5,$85,$02,$48,$AD,$21,$BE,$EA,$A2,$01,$60
LBBE8: .byte $0A,$1A,$2B,$48,$6D,$7C,$8C,$A2,$00,$BD,$37,$BE,$85,$0F,$BD,$8B
       .byte $BE,$85,$08,$BD,$4C,$BE,$85,$1B,$85,$1C,$BD,$61,$BE,$85,$06,$85
       .byte $07,$A9,$00,$85,$1B,$EA,$BD,$76,$BE,$85,$1C,$EA,$EA,$A9,$00,$85
       .byte $1C,$85,$02,$E8,$BD,$21,$BE,$85,$1B,$E0,$15,$D0,$CC,$A2,$FF,$86
       .byte $0D,$86,$0E,$86,$0F,$20,$AD,$B5,$85,$02,$85,$08,$4C,$71,$BC,$33
       .byte $1B,$33
LBC3A: .byte $14,$24,$33,$57,$75,$86,$96
LBC41: LDA    #$02    
       STA    WSYNC   
       STA    VBLANK  
       STA    VSYNC   
       LDA    #$29    
       STA    TIM8T   
       RTS            

LBC4F: LDA    INTIM   
       BNE    LBC4F   
       STA    WSYNC   
       STA    VSYNC   
       LDA    #$31    
       STA    TIM64T  
       RTS            

LBC5E: LDA    INTIM   
       BNE    LBC5E   
       STA    WSYNC   
       STA    VBLANK  
       LDA    #$11    
       STA    T1024T  
       STA    WSYNC   
       STA    CXCLR   
       RTS            

LBC71: .byte $AD,$84,$02,$D0,$FB,$4C,$0A,$B0,$40,$40,$70,$70,$7C,$7C,$7F,$7F
       .byte $00,$20,$20,$38,$38,$3E,$3E,$7F,$7F,$00,$10,$10,$1C,$1C,$3E,$3E
       .byte $7F,$7F,$00,$08,$08,$1C,$1C,$3E,$3E,$7F,$7F,$00,$04,$04,$1C,$1C
       .byte $3E,$3E,$7F,$7F,$00,$02,$02,$0E,$0E,$3E,$3E,$7F,$7F,$00,$01,$01
       .byte $07,$07,$1F,$1F,$7F,$7F,$00,$00,$00,$00,$00,$00,$00,$00,$30,$30
       .byte $CC,$CC,$30,$30,$00,$FF,$1E,$20,$40,$F4,$D8,$F4,$00,$C0,$60,$FE
       .byte $67,$FE,$60,$C0,$00,$FF,$1E,$20,$40,$F0,$B8,$F0,$00,$C0,$60,$7E
       .byte $DB,$7E,$60,$C0,$00,$00,$00,$1C,$36,$36,$1C,$00,$00,$00,$24,$5A
       .byte $24,$5A,$24,$00,$00,$18,$42,$24,$42,$24,$42,$18,$00
LBCFE: .byte $0E
LBCFF: .byte $16,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
LBD0F: .byte $FE,$FE,$FE,$C6,$C6,$C6,$C6,$C6,$C6,$C6,$C6,$C6,$FE,$FE,$FE,$18
       .byte $18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$FE,$FE
       .byte $FE,$C6,$C6,$0E,$1C,$38,$70,$E0,$C0,$C0,$FE,$FE,$FE,$FE,$FE,$FE
       .byte $06,$06,$3E,$3E,$3E,$06,$06,$06,$06,$FE,$FE,$FE,$CC,$CC,$CC,$CC
       .byte $CC,$FE,$FE,$FE,$0C,$0C,$0C,$0C,$0C,$0C,$0C,$FE,$FE,$FE,$C0,$C0
       .byte $FE,$FE,$FE,$06,$06,$06,$06,$FE,$FE,$FE,$C0,$C0,$C0,$C0,$C0,$FE
       .byte $FE,$FE,$C6,$C6,$C6,$C6,$FE,$FE,$FE,$FE,$FE,$FE,$06,$06,$06,$06
       .byte $06,$06,$06,$06,$06,$06,$06,$06,$FE,$FE,$FE,$C6,$C6,$C6,$FE,$FE
       .byte $FE,$C6,$C6,$C6,$FE,$FE,$FE,$FE,$FE,$FE,$C6,$C6,$C6,$FE,$FE,$FE
       .byte $06,$06,$06,$06,$06,$06,$A7,$A4,$A7,$A1,$A1,$E7,$E7,$00,$03,$04
       .byte $09,$09,$09,$04,$03,$3C,$25,$21,$2D,$25,$3D,$3D,$00,$C1,$21,$91
       .byte $11,$91,$21,$C1,$00,$D1,$5B,$D5,$51,$51,$51,$00,$77,$55,$55,$77
       .byte $15,$15,$17,$00,$77,$44,$67,$41,$41,$77,$00,$70,$50,$10,$20,$40
       .byte $40,$70
LBDE1: .byte $29,$C6,$79,$0C,$FB,$47,$59,$0C,$97,$B9,$4B,$0C
LBDED: .byte $04,$03,$03,$02,$04,$03,$02,$02,$02,$02,$02,$01
LBDF9: .byte $0F,$1F,$2F,$3F,$4F,$5F
LBDFF: .byte $0F,$0F,$0E,$0E,$0D,$0D,$0C
LBE06: .byte $C0,$B0,$E0,$A0,$C0,$B0,$F0
LBE0D: .byte $30,$20,$10,$00,$10,$20,$30
LBE14: .byte $38,$20,$02,$02,$02,$1E,$38
LBE1B: .byte $08,$18,$28,$38,$48,$58,$95,$A0,$84,$A7,$87,$A4,$84,$A7,$87,$AC
       .byte $94,$A7,$C7,$A4,$94,$8F,$97,$A6,$C7,$B7,$FF,$00,$40,$40,$C0,$E0
       .byte $40,$40,$E0,$E0,$40,$40,$F0,$F0,$60,$60,$F8,$F8,$50,$50,$F8,$F8
       .byte $F8,$10,$01,$7C,$39,$11,$90,$15,$94,$15,$95,$94,$95,$15,$DC,$D5
       .byte $D5,$D4,$DD,$DD,$DF,$FF,$21,$1D,$1A,$29,$36,$44,$33,$52,$63,$74
       .byte $76,$70,$80,$84,$92,$A6,$C4,$C8,$D5,$D7,$CB,$08,$1C,$3E,$7F,$3E
       .byte $1C,$08,$1D,$08,$1D,$09,$1D,$09,$1D,$1D,$09,$09,$1F,$1F,$1F,$1F
       .byte $AA,$AA,$98,$98,$98,$98,$88,$88,$88,$88,$78,$78,$78,$78,$68,$68
       .byte $68,$68,$58,$58,$58
LBEA0: LDA    $FA     
       AND    #$3F    
       BNE    LBEBA   
       JSR    LB9CF   
       RTS            

LBEAA: LDA    #$00    
       STA    AUDV0   
       CPY    #$02    
       BEQ    LBEBA   
       STA    $F1     
       BCS    LBEBA   
       LDA    #$10    
       STA    $EA     
LBEBA: RTS            

LBEBB: LDA    $F1     
       BNE    LBEF9   
       LDA    $F2     
       CMP    #$03    
       BEQ    LBEA0   
       LDA    $EA     
       BNE    LBEBA   
       LDA    #$80    
       BIT    $95     
       BNE    LBEBA   
       LDA    $D1     
       BNE    LBEBA   
       LDX    #$00    
LBED5: CPX    #$07    
       BEQ    LBEDD   
       LDA    $99,X   
       BNE    LBEBA   
LBEDD: INX            
       CPX    #$0A    
       BNE    LBED5   
       STX    $F1     
       LDA    #$00    
       STA    AUDV0   
       STA    AUDV1   
       STA    $F0     
       STA    $90     
       STA    $93     
       LDY    $F2     
       STY    $EF     
       LDA    LB21D,Y 
       STA    $93     
LBEF9: LDY    $EF     
       LDA    $93     
       CMP    LB205,Y 
       BEQ    LBEAA   
       CMP    LB20D,Y 
       BNE    LBF46   
       LDA    $80     
       CMP    #$D2    
       BEQ    LBF42   
       CPY    #$02    
       BNE    LBF1A   
       LDA    #$00    
       STA    $F2     
       JSR    LBFDC   
       BNE    LBF42   
LBF1A: JSR    LB0E0   
       LDA    $FB     
       BEQ    LBF27   
       JSR    LBF69   
       JMP    LBF42   
LBF27: LDA    #$02    
       BIT    $8C     
       BEQ    LBF33   
       JSR    LBF69   
       JMP    LBF42   
LBF33: JSR    LB9CF   
       JSR    LBF61   
       LDA    #$04    
       BIT    $8C     
       BEQ    LBF42   
       JSR    LB9CF   
LBF42: LDA    #$0F    
       STA    AUDV0   
LBF46: LDX    $93     
       LDA    LBB79,X 
       STA    AUDF0   
       LDA    #$01    
       STA    AUDC0   
       INC    $90     
       LDA    $90     
       CMP    LBB9C,X 
       BNE    LBF60   
       LDA    #$00    
       STA    $90     
       INC    $93     
LBF60: RTS            

LBF61: LDA    $F2     
       EOR    #$01    
       STA    $F2     
       BNE    LBFDC   
LBF69: LDA    $E5     
       CMP    #$0B    
       BEQ    LBF71   
       INC    $E5     
LBF71: LDA    $F8     
       BEQ    LBF97   
       LDA    $F9     
       BNE    LBFDC   
       LDX    #$03    
LBF7B: LDY    $88,X   
       TXA            
       ASL            
       TAX            
       TYA            
       CMP    $80,X   
       BCC    LBFC0   
       BEQ    LBF8F   
       LDA    $8C     
       ORA    #$02    
       STA    $8C     
       BNE    LBFDC   
LBF8F: TXA            
       LSR            
       TAX            
       DEX            
       BPL    LBF7B   
       BMI    LBFC0   
LBF97: LDA    $FB     
       BNE    LBFC0   
       LDA    $F9     
       BEQ    LBFC0   
       LDX    #$06    
LBFA1: LDY    $80,X   
       TXA            
       LSR            
       TAX            
       TYA            
       CMP    $88,X   
       BCC    LBFC0   
       BEQ    LBFB9   
       LDA    #$01    
       STA    $F2     
       LDA    $8C     
       ORA    #$04    
       STA    $8C     
       BNE    LBFDC   
LBFB9: TXA            
       ASL            
       TAX            
       DEX            
       DEX            
       BPL    LBFA1   
LBFC0: LDA    #$03    
       STA    $F2     
       LDA    $FB     
       BEQ    LBFDC   
       LDA    #$D2    
       STA    $88     
       LDA    #$C3    
       STA    $89     
       LDA    #$B4    
       STA    $8A     
       LDA    #$A5    
       STA    $8B     
       LDA    $F8     
       STA    $F9     
LBFDC: LDY    $F2     
       STY    $EF     
       LDA    LB20D,Y 
       STA    $93     
       RTS            

LBFE6: .byte $08,$18,$28,$38,$48,$58,$69
LBFED: .byte $00,$32,$19,$19,$32,$19,$00,$19,$20,$00,$19,$19,$00,$00,$00,$00
       .byte $B0,$00,$B0
