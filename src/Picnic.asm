; Disassembly of roms/Picnic.bin
; Disassembled Tue Oct  6 15:22:41 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Picnic.bin
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
CXPPMM  =  $37
SWCHA   =  $0280
SWACNT  =  $0281
SWCHB   =  $0282
SWBCNT  =  $0283
INTIM   =  $0284
TIM8T   =  $0295
TIM64T  =  $0296
T1024T  =  $0297

       ORG $B000

START:
       JMP    LB32A   
LB003: .byte $38,$44,$44,$44,$44,$44,$38,$38,$10,$10,$10,$10,$30,$10,$7C,$40
       .byte $40,$38,$04,$44,$38,$38,$44,$04,$18,$04,$44,$38,$08,$08,$7C,$48
       .byte $28,$18,$08,$38,$44,$04,$04,$78,$40,$7C,$38,$44,$44,$78,$40,$20
       .byte $1C,$20,$20,$20,$10,$08,$04,$7C,$38,$44,$44,$38,$44,$44,$38,$70
       .byte $08,$04,$3C,$44,$44,$38,$7C,$7C,$44,$44,$44,$44,$44,$F8,$F8,$08
       .byte $08,$F8,$80,$F8,$FA,$FA,$4B,$5A,$42,$4B,$F8,$A2,$A2,$A2,$AA,$B6
       .byte $A2,$00,$EE,$82,$82,$CE,$88,$EE,$00,$00,$01,$02,$02,$02,$01,$00
       .byte $F0,$08,$64,$44,$64,$08,$F0,$21,$21,$21,$2F,$29,$29,$2F,$7B,$4A
       .byte $4A,$79,$48,$4A,$7B,$C0,$00,$00,$00,$80,$40,$C0,$E2,$92,$8B,$8A
       .byte $8A,$91,$E0,$22,$25,$E5,$28,$28,$48,$88,$3E,$08,$08,$88,$88,$88
       .byte $BE,$E0,$90,$88,$88,$88,$90,$E0,$64,$90,$90,$10,$10,$10,$FE,$E0
       .byte $91,$8A,$8A,$8A,$91,$E0,$88,$49,$2A,$2A,$2A,$4C,$88,$A2,$A6,$AA
       .byte $AA,$AA,$B2,$A2,$88,$88,$F8,$88,$88,$50,$20,$90,$80,$80,$F0,$80
       .byte $80,$F8
LB0D5: LDA    #$00    
       STA    HMP0    
       STA    REFP0   
       STA    REFP1   
       LDA    #$10    
       STA    HMP1    
       LDA    #$03    
       STA    NUSIZ0  
       STA    VDELP1  
       LDA    #$01    
       STA    NUSIZ1  
       LDX    $EF     
       LDA    LB482,X 
       STA    COLUP0  
       STA    COLUP1  
       LDY    #$08    
       STA    WSYNC   
LB0F8: DEY            
       BNE    LB0F8   
       STA    RESP0   
       STA    RESP1   
       LDY    #$06    
LB101: LDA    ($F8),Y 
       TAX            
       STA    WSYNC   
       STA    HMOVE   
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       LDA    ($F2),Y 
       STA    GRP1    
       LDA    ($F0),Y 
       STA    GRP0    
       NOP            
       NOP            
       LDA    ($F6),Y 
       STA    GRP1    
       LDA    ($F4),Y 
       STA    GRP0    
       STX    GRP0    
       STA    HMCLR   
       DEY            
       BPL    LB101   
       STA    WSYNC   
       LDA    #$00    
       STA    VDELP1  
       STA    GRP0    
       STA    GRP1    
       STA    HMP0    
       STA    HMP1    
       STA    RESP0   
       STA    RESP1   
       LDX    #$00    
       LDA    $C4     
       AND    #$04    
       BEQ    LB142   
       LDX    #$05    
LB142: STX    NUSIZ1  
       STA    WSYNC   
       LDA    SWCHB   
       AND    #$80    
       BEQ    LB14F   
       LDA    #$05    
LB14F: STA    NUSIZ0  
       RTS            

LB152: LDA    $C0     
       AND    #$02    
       BEQ    LB1CD   
       LDA    $C0     
       AND    #$04    
       BEQ    LB1C7   
       LDA    $C0     
       AND    #$FB    
       STA    $C0     
       JSR    LBFAA   
       STA    WSYNC   
       JSR    LB0D5   
       LDA    $97     
       LDX    #$01    
       STA    WSYNC   
       JSR    LBC70   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$00    
       STA    NUSIZ0  
       LDA    $92     
       CMP    #$AD    
       BCC    LB188   
       LDY    #$30    
       JMP    LB1B1   
LB188: LDY    #$30    
LB18A: STA    WSYNC   
       INY            
       CPY    $92     
       BCC    LB18A   
       STY    $86     
       LDX    $80     
LB195: LDY    LBF6D,X 
       LDA    #$59    
       STA    WSYNC   
       STY    GRP0    
       STA    COLUP0  
       INX            
       CPX    $81     
       BNE    LB195   
       STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       LDA    $86     
       CLC            
       ADC    #$09    
       TAY            
LB1B1: STA    WSYNC   
       INY            
       LDA    SWCHB   
       AND    #$80    
       BEQ    LB1BD   
       LDA    #$05    
LB1BD: STA    NUSIZ0  
       STA    WSYNC   
       JSR    LBCB0   
       JMP    LB2F3   
LB1C7: LDA    #$04    
       ORA    $C0     
       STA    $C0     
LB1CD: JSR    LBFAA   
       STA    WSYNC   
       JSR    LB0D5   
       JMP    LB1DB   
LB1D8: JMP    LB2AC   
LB1DB: LDA    #$2C    
       STA    $85     
       LDY    $85     
       STA    WSYNC   
       LDA    $C6     
       STA    COLUP1  
       LDX    $B7     
       STX    $8C     
LB1EB: LDX    $8C     
       CPX    $E3     
       BEQ    LB1D8   
       LDA    $92,X   
       JSR    LBDF5   
       LDA    $97,X   
       LDX    #$02    
       JSR    LBC70   
       STA    WSYNC   
       STA    HMOVE   
       INY            
       BIT    COLUPF  
       BMI    LB208   
       STY    $A2     
LB208: LDX    $8C     
       CPX    $BB     
       BNE    LB217   
       LDA    $A4     
       STA    WSYNC   
       INY            
       CMP    #$02    
       BCS    LB241   
LB217: LDA    $8D,X   
       BNE    LB25A   
       CPX    #$04    
       BNE    LB228   
       LDA    $A4     
       CMP    #$01    
       BNE    LB228   
       JMP    LB2A2   
LB228: LDA    $CA     
       AND    #$10    
       BEQ    LB244   
       LDX    #$09    
LB230: BIT    COLUPF  
       BMI    LB236   
       STY    $A2     
LB236: STA    WSYNC   
       LDA    LBF3B,X 
       STA    GRP1    
       INY            
       DEX            
       BNE    LB230   
LB241: JMP    LB2A2   
LB244: LDX    #$09    
LB246: BIT    COLUPF  
       BMI    LB24C   
       STY    $A2     
LB24C: STA    WSYNC   
       LDA    LBF31,X 
       STA    GRP1    
       INY            
       DEX            
       BNE    LB246   
       JMP    LB2A2   
LB25A: LDA    $CA     
       AND    #$10    
       BEQ    LB282   
       LDX    #$09    
LB262: BIT    COLUPF  
       BMI    LB268   
       STY    $A2     
LB268: STA    WSYNC   
       LDA    $C4     
       AND    #$04    
       BEQ    LB276   
       LDA    LBF63,X 
       JMP    LB279   
LB276: LDA    LBF59,X 
LB279: STA    GRP1    
       INY            
       DEX            
       BNE    LB262   
       JMP    LB2A2   
LB282: LDX    #$09    
LB284: BIT    COLUPF  
       BMI    LB28A   
       STY    $A2     
LB28A: STA    WSYNC   
       LDA    LBF4F,X 
       STA    GRP1    
       INY            
       DEX            
       BNE    LB284   
       BIT    COLUPF  
       BMI    LB29B   
       STY    $A2     
LB29B: STA    WSYNC   
       LDA    #$00    
       STA    GRP1    
       INY            
LB2A2: LDX    $8C     
       DEX            
       STX    $8C     
       BEQ    LB2AC   
       JMP    LB1EB   
LB2AC: LDA    #$00    
       STA    HMCLR   
       BIT    COLUPF  
       BMI    LB2B6   
       STY    $A2     
LB2B6: STA    WSYNC   
       LDA    $89     
       LDX    #$01    
       JSR    LBC70   
       BIT    COLUPF  
       BMI    LB2C5   
       STY    $A2     
LB2C5: STA    WSYNC   
       STA    HMOVE   
       INY            
       INY            
       LDX    $EF     
       LDA    LB482,X 
       STA    COLUP0  
       LDA    $8A     
       JSR    LBDF5   
       LDX    $C7     
LB2D9: BIT    COLUPF  
       BMI    LB2DF   
       STY    $A2     
LB2DF: STA    WSYNC   
       LDA    LBCA8,X 
       STA    GRP0    
       INX            
       INY            
       CPY    $8B     
       BNE    LB2D9   
       LDA    #$00    
       STA    GRP0    
       JSR    LBCB0   
LB2F3: JSR    LBFBB   
       JMP    LB4A7   
LB2F9: .byte $99,$41,$5C,$78,$94
LB2FE: LDA    #$B0    
       STA    $F1     
       STA    $F3     
       STA    $F5     
       STA    $F7     
       STA    $F9     
       LDA    #$03    
       STA    $F0     
       STA    $F2     
       STA    $F4     
       STA    $F6     
       STA    $F8     
       STA    $E7     
       STA    $E8     
       STA    $E9     
       STA    $EA     
       STA    $EB     
       RTS            

LB321: LDA    #$00    
LB323: STA.wy $0000,Y 
       DEY            
       BNE    LB323   
       RTS            

LB32A: SEI            
       CLD            
       LDX    #$FF    
       TXS            
       JSR    LB48E   
       LDY    #$EF    
LB334: SEI            
       CLD            
       LDX    #$FF    
       TXS            
       JSR    LB321   
       JSR    LB99D   
       LDA    #$B0    
       STA    $F1     
       STA    $F3     
       STA    $F5     
       STA    $F7     
       STA    $F9     
       JSR    LB433   
       JSR    LB40E   
       JMP    LB4A6   
LB354: INC    $BD     
       LDA    $BD     
       CMP    #$04    
       BNE    LB373   
       LDA    #$00    
       STA    $BD     
       LDX    $CE     
       LDA    LBEF5,X 
       STA    AUDC1   
       LDA    LBE7D,X 
       STA    AUDF1   
       LDA    LBEB9,X 
       STA    AUDV1   
       INC    $CE     
LB373: RTS            

LB374: LDA    $C1     
       AND    #$10    
       BNE    LB388   
       LDA    $C0     
       ORA    #$40    
       STA    $C0     
       LDA    #$1E    
       STA    $CE     
       LDA    #$28    
       STA    $C2     
LB388: RTS            

LB389: LDA    $C0     
       AND    #$40    
       BEQ    LB3DD   
       LDX    $CE     
       LDA    LBEF5,X 
       STA    AUDC1   
       LDA    LBE7D,X 
       STA    AUDF1   
       LDA    LBEB9,X 
       STA    AUDV1   
       INC    $CE     
       LDA    $CE     
       CMP    $C2     
       BNE    LB3DD   
       CMP    #$31    
       BNE    LB3CF   
       LDA    #$01    
       STA    $A4     
       LDA    $C4     
       AND    #$04    
       BEQ    LB3CF   
       LDA    #$00    
       STA    $A4     
       LDA    $C4     
       AND    #$20    
       BNE    LB3C9   
       LDA    #$20    
       ORA    $C4     
       STA    $C4     
       JMP    LB3CF   
LB3C9: LDA    #$80    
       ORA    $C4     
       STA    $C4     
LB3CF: LDA    #$00    
       STA    $CE     
       STA    $C2     
       STA    AUDV1   
       LDA    #$BF    
       AND    $C0     
       STA    $C0     
LB3DD: RTS            

LB3DE: INC    $C3     
       LDA    $C3     
       CMP    #$04    
       BNE    LB40D   
       LDA    #$00    
       STA    $C3     
       LDA    $C9     
       AND    #$01    
       BEQ    LB40D   
       LDX    $BE     
       LDA    LBEF5,X 
       STA    AUDC0   
       LDA    LBE7D,X 
       STA    AUDF0   
       LDA    LBEB9,X 
       STA    AUDV0   
       INC    $BE     
       LDA    $BE     
       CMP    #$14    
       BNE    LB40D   
       LDA    #$0B    
       STA    $BE     
LB40D: RTS            

LB40E: LDA    #$FF    
       STA    $CF     
       STA    $D0     
       STA    $D5     
       STA    $D6     
       STA    $DB     
       STA    $DC     
       STA    $E1     
       STA    $E2     
       LDA    #$7E    
       STA    $D1     
       STA    $D2     
       STA    $D3     
       STA    $D4     
       STA    $DD     
       STA    $DE     
       STA    $DF     
       STA    $E0     
       RTS            

LB433: LDA    #$0A    
       STA    $BE     
       LDY    #$B1    
       STY    $8A     
       LDY    #$B6    
       STY    $8B     
       LDA    $C4     
       AND    #$08    
       BNE    LB44C   
       JSR    LBE09   
       ORA    #$07    
       STA    $C6     
LB44C: LDA    #$00    
       STA    SWACNT  
       STA    SWBCNT  
       STA    $CB     
       LDA    #$4C    
       STA    $89     
       LDA    #$04    
       STA    AUDC1   
       LDA    #$33    
       STA    AUDF1   
       LDA    #$00    
       STA    $A4     
       LDA    #$01    
       STA    $E4     
       LDX    #$00    
LB46C: INX            
       LDA    LB4A1,X 
       STA    $92,X   
       LDA    LB49C,X 
       STA    $97,X   
       CPX    #$04    
       BNE    LB46C   
       LDA    #$01    
       STA    $B7     
       STA    $BB     
       RTS            

LB482: .byte $4F,$9F
LB484: .byte $DF
LB485: .byte $1B
LB486: .byte $CB
LB487: .byte $FF
LB488: .byte $1B,$CB
LB48A: .byte $0F,$38
LB48C: .byte $38,$0F
LB48E: LDA    #$65    
LB490: LDX    #$08    
LB492: STA    $F0,X   
       SEC            
       SBC    #$07    
       DEX            
       DEX            
       BPL    LB492   
       RTS            

LB49C: .byte $10,$80,$60,$40,$20
LB4A1: .byte $10,$41,$41,$41,$41
LB4A6: NOP            
LB4A7: JSR    LBF8D   
       INC    $CA     
       LDA    #$00    
       STA    $8E     
       STA    $8F     
       STA    $90     
       STA    $91     
       LDA    $C2     
       CMP    #$31    
       BEQ    LB4E3   
       LDA    $A4     
       BNE    LB4E3   
       LDA    $CA     
       AND    #$10    
       BEQ    LB4E3   
       LDX    $E3     
       INX            
       CPX    #$05    
       BCS    LB4E3   
LB4CD: LDA    $92,X   
       CLC            
       ADC    #$22    
       CMP    $8A     
       BCC    LB4DE   
       LDY    #$01    
       STY    $8D,X   
       STX    $D9     
       BNE    LB4E3   
LB4DE: INX            
       CPX    #$05    
       BNE    LB4CD   
LB4E3: JSR    LBF9B   
       LDA    $CD     
       AND    #$01    
       BEQ    LB4EF   
       JMP    LB864   
LB4EF: LDA    #$01    
       ORA    $CD     
       STA    $CD     
       LDA    $C4     
       AND    #$04    
       BEQ    LB506   
       LDA    $93     
       CMP    #$88    
       BCS    LB503   
       INC    $93     
LB503: JMP    LB5B6   
LB506: LDA    $B8     
       BNE    LB527   
       LDX    $B7     
LB50C: INC    $92,X   
       DEX            
       BNE    LB50C   
       INC    $84     
       LDA    $84     
       CMP    #$1B    
       BNE    LB576   
       LDA    #$00    
       STA    $84     
       INC    $B7     
       LDA    $B7     
       CMP    #$04    
       BNE    LB576   
       INC    $B8     
LB527: LDA    $C1     
       AND    #$08    
       BEQ    LB534   
       LDA    #$00    
       STA    $BC     
       JMP    LB585   
LB534: LDA    $B8     
       CMP    #$05    
       BCC    LB585   
       LDA    $BC     
       BNE    LB54B   
       LDA    #$FF    
       STA    $BC     
       LDA    $BA     
       ORA    #$01    
       STA    $BA     
       JMP    LB5B6   
LB54B: LDA    $BA     
       AND    #$01    
       BNE    LB5B6   
       LDA    $A4     
       CMP    #$04    
       BCS    LB5B6   
       LDA    #$00    
       STA    $A4     
       LDA    $B9     
       BNE    LB566   
       INC    $E3     
       INC    $BB     
       JMP    LB57C   
LB566: LDA    $B9     
       CMP    #$1B    
       BNE    LB57C   
       LDA    #$00    
       STA    $B9     
       LDA    #$01    
       ORA    $BA     
       STA    $BA     
LB576: JMP    LB5B6   
LB579: .byte $4C,$85,$B5
LB57C: LDX    #$04    
LB57E: INC    $92,X   
       DEX            
       BNE    LB57E   
       INC    $B9     
LB585: LDA    $A4     
       CMP    #$01    
       BNE    LB5B6   
       INC    $84     
       LDA    $84     
       CMP    #$1C    
       BEQ    LB59D   
       LDX    $B7     
LB595: INC    $92,X   
       DEX            
       BNE    LB595   
       JMP    LB5B6   
LB59D: LDA    #$00    
       STA    $A4     
       STA    $84     
       LDA    $C1     
       AND    #$08    
       BEQ    LB5B2   
       LDA    #$F7    
       AND    $C1     
       STA    $C1     
       JMP    LB5B4   
LB5B2: INC    $B8     
LB5B4: INC    $B7     
LB5B6: LDA    $C9     
       AND    #$01    
       BEQ    LB5DF   
       LDA    $C4     
       AND    #$01    
       BEQ    LB5D8   
       LDA    SWCHA   
       AND    #$80    
       BEQ    LB626   
       LDA    #$FE    
       AND    $C4     
       STA    $C4     
       LDX    #$B1    
       LDA    #$00    
       STA    $C7     
       JMP    LB61E   
LB5D8: LDA    SWCHA   
       AND    #$80    
       BEQ    LB5E2   
LB5DF: JMP    LB618   
LB5E2: LDA    $C4     
       AND    #$02    
       BNE    LB5FB   
       LDA    #$09    
       STA    $E4     
       LDA    $C4     
       ORA    #$02    
       STA    $C4     
       LDX    #$A9    
       LDA    #$04    
       STA    $C7     
       JMP    LB61E   
LB5FB: DEC    $E4     
       LDA    $E4     
       CMP    #$04    
       BCC    LB60C   
       LDX    #$A9    
       LDA    SWCHA   
       AND    #$80    
       BEQ    LB61E   
LB60C: LDA    #$01    
       ORA    $C4     
       STA    $C4     
       LDA    #$FD    
       AND    $C4     
       STA    $C4     
LB618: LDX    #$B1    
       LDA    #$00    
       STA    $C7     
LB61E: STX    $8A     
       TXA            
       CLC            
       ADC    #$05    
       STA    $8B     
LB626: LDA    $C1     
       AND    #$20    
       BEQ    LB636   
       LDA    #$00    
       STA    AUDV0   
       LDA    #$DF    
       AND    $C1     
       STA    $C1     
LB636: NOP            
       LDA    $A4     
       CMP    #$02    
       BCC    LB646   
       JMP    LB694   
LB640: JMP    LB6E8   
LB643: JMP    LB6D3   
LB646: LDA    $9C     
       AND    #$01    
       BNE    LB643   
       LDA    $A4     
       BNE    LB643   
       LDA    CXPPMM  
       AND    #$80    
       BEQ    LB640   
       LDA    $8A     
       CMP    #$A9    
       BNE    LB640   
       LDA    #$04    
       STA    $A4     
       LDA    #$40    
       ORA    $C0     
       STA    $C0     
       LDA    #$14    
       STA    $CE     
       LDA    #$1E    
       STA    $C2     
       LDA    #$02    
       ORA    $C0     
       STA    $C0     
       LDX    #$06    
       LDA    $C4     
       AND    #$04    
       BEQ    LB68B   
       JSR    LBE12   
       LDX    #$06    
       JSR    LBE12   
       LDX    #$06    
       JSR    LBE12   
       LDX    #$06    
LB68B: JSR    LBE12   
       LDA    #$FE    
       AND    $BA     
       STA    $BA     
LB694: LDA    #$03    
       STA    AUDC1   
       LDA    #$01    
       LDA    $C0     
       AND    #$02    
       BNE    LB6A8   
       DEC    $A4     
       LDA    $C0     
       AND    #$F7    
       STA    $C0     
LB6A8: LDA    $A4     
       CMP    #$02    
       BEQ    LB6B1   
       JMP    LB6D3   
LB6B1: LDA    #$00    
       STA    COLUBK  
       JSR    LBE43   
       LDX    #$04    
       LDY    $BB     
       LDA    LB2F9,Y 
       STA    $92,X   
       LDA    #$00    
       STA    $B2,X   
       STA    $AC,X   
       STA    $A5,X   
       LDA    #$22    
       STA    $97,X   
       LDA    #$01    
       STA    $A4     
       DEC    $B7     
LB6D3: JMP    LB78B   
LB6D6: STA    AUDF0   
       LDA    #$FF    
       STA    AUDV0   
       LDA    #$20    
       ORA    $C1     
       STA    $C1     
       LDA    LBDCC,Y 
       EOR    #$FF    
       RTS            

LB6E8: LDX    $D9     
       LDA    $8D,X   
       BEQ    LB6D3   
       LDA    $97,X   
       LDX    #$00    
       CLC            
       ADC    #$02    
       CMP    #$50    
       BCC    LB6FD   
       LDX    #$01    
       SBC    #$07    
LB6FD: LSR            
       LSR            
       TAY            
       LDA    LBDCC,Y 
       AND    $CF,X   
       BEQ    LB713   
       LDA    #$02    
       JSR    LB6D6   
       AND    $CF,X   
       STA    $CF,X   
       JMP    LB78B   
LB713: LDA    LBDCC,Y 
       AND    $D1,X   
       BEQ    LB726   
       LDA    #$07    
       JSR    LB6D6   
       AND    $D1,X   
       STA    $D1,X   
       JMP    LB78B   
LB726: LDA    LBDCC,Y 
       AND    $D3,X   
       BEQ    LB739   
       LDA    #$12    
       JSR    LB6D6   
       AND    $D3,X   
       STA    $D3,X   
       JMP    LB78B   
LB739: LDA    LBDCC,Y 
       AND    $D5,X   
       BNE    LB743   
       JMP    LB6D3   
LB743: LDA    #$1D    
       JSR    LB6D6   
       AND    $D5,X   
       STA    $D5,X   
       LDA    $D5,X   
       BNE    LB788   
       INC    $EC     
       TXA            
       EOR    #$01    
       TAX            
       LDA    $D5,X   
       BNE    LB788   
       LDA    $A4     
       BNE    LB788   
       LDA    #$01    
       ORA    $9C     
       STA    $9C     
       LDA    #$32    
       STA    $CE     
       LDA    #$00    
       STA    $BD     
       LDA    #$04    
       STA    $E5     
       LDA    #$01    
       ORA    $C0     
       STA    $C0     
       LDA    $CD     
       AND    #$80    
       BEQ    LB782   
       LDA    $CD     
       ORA    #$20    
       STA    $CD     
LB782: LDA    #$80    
       ORA    $CD     
       STA    $CD     
LB788: JMP    LB78B   
LB78B: LDA    $C1     
       AND    #$20    
       BEQ    LB795   
       LDA    #$04    
       STA    AUDC0   
LB795: STA    CXCLR   
       LDA    $C9     
       AND    #$01    
       BEQ    LB7B3   
       LDA    $A2     
       SEC            
       SBC    #$23    
       CMP    #$A9    
       BCS    LB7B3   
       STA    $89     
       SEC            
       LDA    #$9E    
       SBC    $89     
       LSR            
       LSR            
       ASL            
       ASL            
       STA    $89     
LB7B3: LDX    #$04    
LB7B5: LDA    $AC,X   
       AND    #$80    
       STA    $B1     
       LDA    $AC,X   
       AND    #$7F    
       BNE    LB7CB   
       JSR    LBE09   
       AND    #$87    
       STA    $AC,X   
       JMP    LB7D3   
LB7CB: SEC            
       SBC    #$01    
       CLC            
       ADC    $B1     
       STA    $AC,X   
LB7D3: LDA    $AC,X   
       BMI    LB7EC   
       INC    $B2,X   
       INC    $92,X   
       LDA    $B2,X   
       CMP    #$02    
       BNE    LB7FE   
       INC    $AC,X   
       LDA    $AC,X   
       EOR    #$80    
       STA    $AC,X   
       JMP    LB7FE   
LB7EC: DEC    $B2,X   
       DEC    $92,X   
       LDA    $B2,X   
       CMP    #$F5    
       BNE    LB7FE   
       INC    $AC,X   
       LDA    $AC,X   
       EOR    #$80    
       STA    $AC,X   
LB7FE: DEX            
       BNE    LB7B5   
       NOP            
       LDY    #$04    
       LDX    #$04    
LB806: LDA    $A5,X   
       AND    #$80    
       STA    $AA     
       LDA    $A5,X   
       AND    #$7F    
       BNE    LB81C   
       JSR    LBE09   
       AND    #$9F    
       STA    $A5,X   
       JMP    LB824   
LB81C: SEC            
       SBC    #$01    
       CLC            
       ADC    $AA     
       STA    $A5,X   
LB824: LDA    $A5,X   
       BMI    LB844   
       LDY    $EC     
       BEQ    LB831   
LB82C: INC    $97,X   
       DEY            
       BNE    LB82C   
LB831: INC    $97,X   
       LDA    $97,X   
       CMP    #$96    
       BCC    LB85D   
       INC    $A5,X   
       LDA    $A5,X   
       EOR    #$80    
       STA    $A5,X   
       JMP    LB85D   
LB844: LDY    $EC     
       BEQ    LB84D   
LB848: DEC    $97,X   
       DEY            
       BNE    LB848   
LB84D: DEC    $97,X   
       LDA    $97,X   
       CMP    #$06    
       BCS    LB85D   
       INC    $A5,X   
       LDA    $A5,X   
       EOR    #$80    
       STA    $A5,X   
LB85D: DEX            
       BNE    LB806   
       NOP            
       JMP    LBC30   
LB864: LDA    $C5     
       BEQ    LB874   
       INC    $CB     
       LDA    $CB     
       AND    #$1F    
       BNE    LB874   
       STA    $C5     
       STA    $CB     
LB874: LDA    $CA     
       AND    #$1F    
       BNE    LB891   
       LDA    $80     
       CLC            
       ADC    #$08    
       STA    $80     
LB881: CLC            
       ADC    #$08    
       STA    $81     
       CMP    #$28    
       BCC    LB891   
       LDA    #$00    
       STA    $80     
       JMP    LB881   
LB891: LDA    #$FE    
       AND    $CD     
       STA    $CD     
       LDA    $CD     
       AND    #$20    
       BNE    LB8A9   
       LDA    $CD     
       AND    #$40    
       BNE    LB8C3   
       LDA    $CD     
       AND    #$80    
       BEQ    LB8C3   
LB8A9: JSR    LB354   
       LDA    $CE     
       CMP    #$3D    
       BNE    LB8C3   
       LDA    $CD     
       AND    #$40    
       BEQ    LB8BD   
       LDY    #$E5    
       JMP    LB334   
LB8BD: LDA    $CD     
       ORA    #$40    
       STA    $CD     
LB8C3: NOP            
       LDA    $E5     
       BEQ    LB8DD   
       LDA    $E5     
       CMP    #$01    
       BNE    LB8D1   
       JMP    LB9D9   
LB8D1: LDA    $E5     
       CMP    #$04    
       BNE    LB8DA   
       JMP    LBA07   
LB8DA: JMP    LBA83   
LB8DD: LDA    #$03    
       STA    $E3     
       STA    $B7     
       STA    $B8     
       LDA    $CA     
       BEQ    LB907   
       CMP    #$80    
       BNE    LB941   
       LDA    $E6     
       AND    #$02    
       BNE    LB937   
       LDA    $E6     
       AND    #$01    
       BEQ    LB8FF   
       JSR    LBE65   
       JMP    LB937   
LB8FF: LDA    #$88    
       JSR    LB490   
       JMP    LB937   
LB907: LDA    $E6     
       AND    #$02    
       BNE    LB937   
       LDA    $E6     
       AND    #$01    
       BEQ    LB934   
       LDA    SWCHB   
       AND    #$C8    
       BNE    LB92E   
       LDA    SWCHA   
       AND    #$04    
       BNE    LB92E   
       LDA    #$AB    
       JSR    LB490   
       JSR    LBE65   
       LDA    #$CE    
       JSR    LB490   
LB92E: JSR    LBE65   
       JMP    LB937   
LB934: JSR    LB48E   
LB937: INC    $CB     
       INC    $D8     
       LDA    $EF     
       EOR    #$01    
       STA    $EF     
LB941: LDA    $E6     
       AND    #$01    
       BEQ    LB94E   
       LDA    SWCHA   
       AND    #$80    
       BEQ    LB9B2   
LB94E: LDA    SWCHB   
       AND    #$01    
       BEQ    LB9B2   
       INC    $BF     
       LDA    $BF     
       CMP    #$06    
       BNE    LB997   
       LDA    #$00    
       STA    $BF     
       LDA    SWCHB   
       AND    #$02    
       BNE    LB997   
       LDA    $E6     
       AND    #$01    
       BEQ    LB971   
       JMP    LB32A   
LB971: LDA    $E6     
       AND    #$02    
       BNE    LB983   
       LDA    #$02    
       ORA    $E6     
       STA    $E6     
       JSR    LB2FE   
       JMP    LB992   
LB983: INC    $EE     
       LDA    $EE     
       CMP    #$06    
       BNE    LB992   
       LDA    #$00    
       STA    $EE     
       JSR    LB2FE   
LB992: LDX    #$08    
       JSR    LBE12   
LB997: JSR    LB99D   
       JMP    LBB0B   
LB99D: LDA    $EE     
       CMP    #$03    
       BCC    LB9AC   
       SBC    #$03    
       STA    $EC     
       STA    $ED     
       JMP    LB9B1   
LB9AC: TAX            
       STX    $EC     
       STX    $ED     
LB9B1: RTS            

LB9B2: STA    $EF     
       STA    $D8     
       JSR    LB2FE   
       LDA    #$01    
       ORA    $C9     
       STA    $C9     
       LDA    #$01    
       ORA    $E6     
       STA    $E6     
       LDA    #$FD    
       AND    $E6     
       STA    $E6     
       LDA    $CD     
       AND    #$80    
       BNE    LB9E2   
       LDA    #$00    
       STA    $CE     
       LDA    #$01    
       STA    $E5     
LB9D9: LDA    $CE     
       CMP    #$0A    
       BEQ    LB9E5   
       JSR    LB354   
LB9E2: JMP    LBB0B   
LB9E5: LDA    #$02    
       STA    $E5     
       LDY    #$C8    
       JSR    LB321   
       JSR    LB433   
       LDA    #$01    
       STA    $B7     
       LDA    $E3     
       CMP    #$04    
       BEQ    LBA07   
       LDA    $C0     
       AND    #$01    
       BNE    LBA07   
       JSR    LB2FE   
       JMP    LBA7C   
LBA07: LDA    $EE     
       CMP    #$03    
       BCS    LBA13   
       LDA    $CD     
       AND    #$80    
       BNE    LBA2D   
LBA13: DEC    $A1     
       BEQ    LBA2D   
       LDA    $CD     
       AND    #$20    
       BNE    LBA2D   
       LDA    $A1     
       CMP    #$E7    
       BCS    LBA2A   
       LDA    SWCHA   
       AND    #$80    
       BEQ    LBA2D   
LBA2A: JMP    LBB0B   
LBA2D: LDA    #$02    
       STA    $E5     
       LDA    #$01    
       ORA    $C9     
       STA    $C9     
       LDA    $EE     
       CMP    #$03    
       BCC    LBA70   
       LDA    $CD     
       AND    #$80    
       BEQ    LBA4F   
       LDA    $CD     
       AND    #$10    
       BNE    LBA70   
       LDA    $CD     
       ORA    #$10    
       STA    $CD     
LBA4F: LDX    #$00    
LBA51: LDA    $CF,X   
       TAY            
       LDA    $DB,X   
       STA    $CF,X   
       STY    $DB,X   
       INX            
       CPX    #$08    
       BNE    LBA51   
       JSR    LBE65   
       LDA    $EF     
       EOR    #$01    
       STA    $EF     
       LDX    $EC     
       LDY    $ED     
       STX    $ED     
       STY    $EC     
LBA70: LDY    #$C8    
       JSR    LB321   
       JSR    LB433   
       LDA    #$01    
       STA    $B7     
LBA7C: LDA    #$00    
       STA    $E3     
       NOP            
       NOP            
       NOP            
LBA83: LDA    $CD     
       AND    #$40    
       BEQ    LBA95   
       LDA    $EE     
       CMP    #$03    
       BCS    LBA94   
LBA8F: LDY    #$E5    
       JMP    LB334   
LBA94: NOP            
LBA95: LDA    $C4     
       AND    #$80    
       BEQ    LBABB   
       JSR    LB433   
       LDA    #$04    
       STA    $E5     
       LDA    #$00    
       STA    $C4     
       STA    AUDV0   
       LDA    #$FE    
       AND    $C9     
       STA    $C9     
       INC    $EC     
       LDA    #$04    
       STA    $E3     
       STA    $B7     
       STA    $B8     
       JMP    LBB0B   
LBABB: LDA    $C4     
       AND    #$08    
       BNE    LBACD   
       LDA    $E3     
       CMP    #$04    
       BNE    LBAFA   
       LDA    $C4     
       AND    #$04    
       BNE    LBAEB   
LBACD: JSR    LB433   
       LDA    #$00    
       STA    $E3     
       LDA    #$00    
       STA    $B8     
       LDA    #$01    
       STA    $B7     
       LDA    $C4     
       AND    #$F7    
       STA    $C4     
       LDA    #$04    
       ORA    $C4     
       STA    $C4     
       JMP    LBAFA   
LBAEB: JSR    LBE09   
       STA    COLUP1  
       LDA    #$04    
       STA    $E5     
       LDA    #$7F    
       AND    $C4     
       STA    $C4     
LBAFA: LDA    SWCHB   
       AND    #$01    
       BEQ    LBA8F   
       LDA    SWCHB   
       AND    #$02    
       BNE    LBB0B   
       JMP    LB32A   
LBB0B: LDA    $C0     
       AND    #$02    
       BNE    LBB14   
       JMP    LBC27   
LBB14: LDA    $C0     
       AND    #$08    
       BNE    LBB36   
       LDA    $C0     
       ORA    #$08    
       STA    $C0     
       LDX    $BB     
       LDA    $97,X   
       STA    $97     
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $A3     
       LDA    $92,X   
       CLC            
       ADC    #$12    
       STA    $92     
       JMP    LBC27   
LBB36: LDA    $92     
       CMP    #$31    
       BCS    LBB4B   
       LDA    #$20    
       ORA    $C0     
       STA    $C0     
       JSR    LB374   
       LDA    #$01    
       ORA    $C1     
       STA    $C1     
LBB4B: LDA    $92     
       CMP    #$B4    
       BCC    LBBC0   
       LDA    #$DF    
       AND    $C0     
       STA    $C0     
       JSR    LB374   
       LDA    $C1     
       AND    #$01    
       BEQ    LBBC0   
       LDA    #$FE    
       AND    $C1     
       STA    $C1     
       LDA    #$FD    
       AND    $C0     
       STA    $C0     
       LDA    #$F7    
       AND    $C0     
       STA    $C0     
       LDA    $C4     
       AND    #$04    
       BEQ    LBB7E   
       LDA    #$08    
       ORA    $C4     
       STA    $C4     
LBB7E: LDA    $97     
       CMP    #$3B    
       BCC    LBBBA   
       CMP    #$68    
       BCS    LBBBA   
       LDA    $C4     
       AND    #$04    
       BEQ    LBB97   
       LDA    #$00    
       STA    $C6     
       LDX    #$02    
       JMP    LBB9E   
LBB97: LDX    #$06    
       JSR    LBE12   
       LDX    #$06    
LBB9E: JSR    LBE12   
       INC    $C5     
       LDA    #$28    
       STA    $CE     
       LDA    #$31    
       STA    $C2     
       LDA    $C0     
       ORA    #$40    
       STA    $C0     
       LDA    #$10    
       ORA    $C1     
       STA    $C1     
       JMP    LBBC0   
LBBBA: LDA    #$08    
       ORA    $C1     
       STA    $C1     
LBBC0: LDA    $97     
       CMP    #$09    
       BCS    LBBCF   
       LDA    #$10    
       ORA    $C0     
       STA    $C0     
       JSR    LB374   
LBBCF: LDA    $97     
       CMP    #$8E    
       BCC    LBBDE   
       LDA    #$EF    
       AND    $C0     
       STA    $C0     
       JSR    LB374   
LBBDE: LDX    $A3     
       LDA    $C0     
       AND    #$10    
       BEQ    LBC05   
       LDA    $97     
       CLC            
       ADC    LBBFB,X 
       STA    $97     
       JMP    LBC0D   
LBBF1: .byte $02,$04,$07,$08,$06,$06,$08,$07,$04,$02
LBBFB: .byte $06,$08,$06,$05,$03,$03,$05,$06,$08,$06
LBC05: LDA    $97     
       SEC            
       SBC    LBBFB,X 
       STA    $97     
LBC0D: LDA    $C0     
       AND    #$20    
       BEQ    LBC1E   
       LDA    $92     
       CLC            
       ADC    LBBF1,X 
       STA    $92     
       JMP    LBC26   
LBC1E: LDA    $92     
       SEC            
       SBC    LBBF1,X 
       STA    $92     
LBC26: NOP            
LBC27: LDA    $C1     
       AND    #$20    
       BNE    LBC30   
       JSR    LB3DE   
LBC30: LDA    $C1     
       AND    #$10    
       BNE    LBC3C   
       JSR    LB389   
       JMP    LBC57   
LBC3C: INC    $BD     
       LDA    $BD     
       CMP    #$06    
       BNE    LBC57   
       LDA    VSYNC   
       STA    $BD     
       JSR    LB389   
       LDA    $C0     
       AND    #$40    
       BNE    LBC57   
       LDA    #$EF    
       AND    $C1     
       STA    $C1     
LBC57: LDA    #$00    
       STA    GRP1    
       STA    $85     
       STA    PF0     
       STA    PF1     
       STA    PF2     
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    GRP0    
       LDA    #$82    
       STA    VBLANK  
       JMP    LB152   
LBC70: STY    $85     
       STA    $86     
       LSR            
       LSR            
       LSR            
       LSR            
       CLC            
       ADC    #$03    
       STA    $87     
       LDA    $86     
       AND    #$0F    
       TAY            
       LDA    LBC98,Y 
       LDY    $87     
       DEX            
       STY    WSYNC   
LBC8A: DEY            
       BPL    LBC8A   
       STA    RESP0,X 
       STA    WSYNC   
       STA    HMP0,X  
       LDY    $85     
       INY            
       INY            
       RTS            

LBC98: .byte $70,$60,$50,$40,$30,$20,$10,$00,$F0,$E0,$D0,$C0,$B0,$A0,$90,$80
LBCA8: .byte $3C,$7E,$C3,$81,$81,$C3,$7E,$3C
LBCB0: LDA    #$05    
       STA    CTRLPF  
       LDA    #$B7    
       JSR    LBDF5   
       LDX    $CB     
       LDA    LB484,X 
       LDA    #$E0    
       STA    PF2     
       LDA    #$B9    
       JSR    LBDF5   
LBCC7: STA    WSYNC   
       LDA    $CF     
       STA    PF1     
       LDX    $D8     
       LDA    LB485,X 
       STA    COLUPF  
       NOP            
       NOP            
       NOP            
       NOP            
       CPY    $CE     
       NOP            
       LDX    $CB     
       LDA    LB484,X 
       STA    COLUPF  
       LDA    $D0     
       STA    PF1     
       LDX    $D8     
       LDA    LB485,X 
       STA    COLUPF  
       LDA    #$E0    
       STA    PF2     
       INY            
       CPY    #$C0    
       BNE    LBCC7   
LBCF6: STA    WSYNC   
       LDA    $D1     
       STA    PF1     
       LDX    $D8     
       LDA    LB486,X 
       STA    COLUPF  
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       LDX    $CB     
       LDA    LB484,X 
       STA    COLUPF  
       LDA    $D2     
       STA    PF1     
       LDX    $D8     
       LDA    LB486,X 
       STA    COLUPF  
       LDA    #$E0    
       STA    PF2     
       INY            
       CPY    #$C5    
       BNE    LBCF6   
LBD24: STA    WSYNC   
       LDA    $D3     
       STA    PF1     
       LDX    $D8     
       LDA    LB487,X 
       STA    COLUPF  
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       LDX    $CB     
       LDA    LB484,X 
       STA    COLUPF  
       LDA    $D4     
       STA    PF1     
       LDX    $D8     
       LDA    LB487,X 
       STA    COLUPF  
       LDA    #$E0    
       STA    PF2     
       INY            
       CPY    #$CB    
       BNE    LBD24   
LBD52: STA    WSYNC   
       LDA    $D5     
       STA    PF1     
       LDX    $D8     
       LDA    LB488,X 
       STA    COLUPF  
       NOP            
       NOP            
       NOP            
       NOP            
       CPY    $CE     
       NOP            
       LDX    $CB     
       LDA    LB484,X 
       STA    COLUPF  
       LDA    $D6     
       STA    PF1     
       LDX    $D8     
       LDA    LB488,X 
       STA    COLUPF  
       LDA    #$E0    
       STA    PF2     
       INY            
       CPY    #$D2    
       BNE    LBD52   
       LDA    #$00    
       STA    GRP1    
LBD85: STA    WSYNC   
       LDX    $EF     
       LDA    LB48C,X 
       STA    COLUBK  
       LDA    LB48A,X 
       STA    COLUPF  
       LDA    #$55    
       STA    PF0     
       LDA    #$55    
       STA    PF1     
       LDA    #$55    
       STA    PF2     
       INY            
       CPY    #$D7    
       BNE    LBD85   
LBDA4: STA    WSYNC   
       LDA    LB48C,X 
       STA    COLUBK  
       LDA    LB48A,X 
       STA    COLUPF  
       LDA    #$AA    
       STA    PF0     
       LDA    #$AA    
       STA    PF1     
       LDA    #$AA    
       STA    PF2     
       INY            
       CPY    #$DC    
       BNE    LBDA4   
       LDA    #$00    
       STA    COLUBK  
       LDA    #$00    
       STA    COLUPF  
       STA    GRP1    
       RTS            

LBDCC: .byte $00,$00,$00,$00,$80,$C0,$20,$10,$08,$04,$03,$01,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$03,$04,$08
       .byte $10,$20,$C0,$80,$00,$00,$00,$00,$00
LBDF5: STA    $86     
LBDF7: STA    WSYNC   
       BIT    COLUPF  
       BMI    LBDFF   
       STY    $A2     
LBDFF: INY            
       CPY    $86     
       BNE    LBDF7   
       RTS            

LBE05: .byte $CA,$D0,$FD,$60
LBE09: LDA    $D7     
       ROL            
       SBC    LBE09,Y 
       STA    $D7     
       RTS            

LBE12: NOP            
LBE13: LDA    $F0,X   
       CMP    #$42    
       BEQ    LBE1F   
       CLC            
       ADC    #$07    
       STA    $F0,X   
LBE1E: RTS            

LBE1F: LDA    #$03    
       STA    $F0,X   
       DEX            
       DEX            
       BMI    LBE1E   
       JMP    LBE13   
LBE2A: .byte $A2,$08,$B5,$F0,$C9,$42,$F0,$06,$18,$69,$07,$95,$F0,$60,$A9,$03
       .byte $95,$F0,$CA,$CA,$30,$F7,$4C,$2C,$BE
LBE43: LDX    #$02    
LBE45: LDA    $92,X   
       LDY    $97,X   
       DEX            
       STA    $92,X   
       STY    $97,X   
       INX            
       LDA    $A5,X   
       LDY    $AC,X   
       DEX            
       STA    $A5,X   
       STY    $AC,X   
       INX            
       LDA    $B2,X   
       DEX            
       STA    $B2,X   
       INX            
       INX            
       CPX    #$05    
       BNE    LBE45   
       RTS            

LBE65: LDX    #$00    
       LDY    #$00    
LBE69: LDA.wy $00F0,Y 
       PHA            
       LDA    $E7,X   
       STA.wy $00F0,Y 
       PLA            
       STA    $E7,X   
       INX            
       INY            
       INY            
       CPY    #$0A    
       BNE    LBE69   
       RTS            

LBE7D: .byte $1D,$1A,$17,$13,$0F,$13,$17,$15,$13,$00,$00,$1A,$1B,$1C,$1B,$1C
       .byte $1B,$1A,$1B,$1A,$00,$08,$09,$0A,$0B,$08,$0A,$0A,$0B,$08,$00,$1D
       .byte $1E,$1F,$00,$00,$1D,$00,$00,$00,$00,$13,$11,$10,$0E,$1D,$00,$00
       .byte $00,$00,$13,$17,$15,$1A,$17,$1D,$1A,$17,$1D,$1D
LBEB9: .byte $00,$0F,$0E,$0D,$0C,$0B,$0C,$0D,$0E,$0F,$00,$01,$01,$02,$01,$01
       .byte $02,$02,$01,$01,$00,$0F,$0F,$0E,$0D,$0C,$0B,$09,$07,$05,$00,$0F
       .byte $0F,$0F,$00,$00,$0F,$0F,$0F,$0D,$00,$0F,$0F,$0F,$0F,$0F,$0F,$0F
       .byte $0F,$00,$00,$0F,$0E,$0D,$0C,$0B,$0C,$0D,$0E,$0F
LBEF5: .byte $00,$04,$04,$04,$04,$04,$04,$04,$04,$04,$00,$0C,$0C,$0C,$0C,$0C
       .byte $0C,$0C,$0C,$0C,$00,$01,$01,$01,$01,$01,$01,$01,$01,$01,$00,$04
       .byte $04,$04,$04,$04,$0C,$0C,$0C,$0C,$00,$04,$04,$04,$04,$04,$04,$04
       .byte $04,$04,$00,$0C,$0C,$0C,$0C,$0C,$0C,$0C,$0C,$0C
LBF31: .byte $00,$00,$18,$18,$24,$5A,$E7,$E7,$00,$00
LBF3B: .byte $00,$00,$18,$18,$24,$5A,$66,$E7,$E7,$C3,$10,$92,$77,$5A,$3D,$10
       .byte $80,$60,$40,$20
LBF4F: .byte $08,$08,$18,$18,$24,$5A,$E7,$E7,$00,$00
LBF59: .byte $08,$08,$18,$18,$24,$5A,$66,$E7,$E7,$C3
LBF63: .byte $24,$24,$24,$18,$24,$5A,$66,$E7,$E7,$C3
LBF6D: .byte $E7,$24,$FF,$5A,$FF,$81,$BD,$FF,$F5,$9D,$D7,$DC,$DC,$D7,$9D,$F5
       .byte $FF,$81,$BD,$FF,$5A,$FF,$24,$E7,$AF,$B9,$EB,$73,$73,$EB,$B9,$AF
LBF8D: LDA    #$02    
       STA    WSYNC   
       STA    VBLANK  
       STA    VSYNC   
       LDA    #$29    
       STA    TIM8T   
       RTS            

LBF9B: LDA    INTIM   
       BNE    LBF9B   
       STA    WSYNC   
       STA    VSYNC   
       LDA    #$31    
       STA    TIM64T  
       RTS            

LBFAA: LDA    INTIM   
       BNE    LBFAA   
       STA    WSYNC   
       STA    VBLANK  
       LDA    #$11    
       STA    T1024T  
       STA    WSYNC   
       RTS            

LBFBB: LDA    INTIM   
       BNE    LBFBB   
       RTS            

LBFC1: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$B0,$00,$B0
