; Disassembly of roms/SolarPlexus.bin
; Disassembled Tue Oct  6 15:22:43 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/SolarPlexus.bin
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
ENAM0   =  $1D
ENAM1   =  $1E
ENABL   =  $1F
HMP0    =  $20
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296
LF5A4   =   $F5A4

       ORG $F000
LF000: STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    PF1     
       STA    PF2     
       STA    CXCLR   
       LDA    $DB     
       STA    $D4     
       LDA    $85     
       STA    $D5     
       LDA    $86     
       STA    $D6     
       LDA    $87     
       STA    $D8     
       LDA    $88     
       STA    $D9     
       LDA    #$00    
       STA    $D7     
       LDX    #$58    
       JMP    LF039   
LF02B: .byte $04,$00,$EA,$EA,$4C,$45,$F0,$04,$00,$EA,$EA,$4C,$74,$F0
LF039: LDA    $8E     
       .byte $C7 ;.DCP
       STA    $90     
       CPX    $85A4   
       LDA    ($8A),Y 
       STA    GRP0    
       LDA    $90     
       .byte $C7 ;.DCP
       .byte $87 ;.SAX
       LDY    $D7     
       ROL            
       ROL            
       STA    ENAM0   
       LDA.wy $00A4,Y 
       STA    PF1     
       LDA.wy $00A5,Y 
       STA    PF2     
       LDA.wy $00A7,Y 
       STA    PF1     
       LDA.wy $00A6,Y 
       STA    PF2     
       DEC    $D4     
       BEQ    LF0A0   
       NOP            
       LDA    $8F     
       .byte $C7 ;.DCP
       STX    $90     
       CPY    $A4     
       STX    $B1     
       STY    $1C85   
       LDA    $91     
       .byte $C7 ;.DCP
       DEY            
       LDY    $D7     
       ROL            
       ROL            
       STA    ENAM1   
       LDA.wy $00A4,Y 
       STA    PF1     
       LDA.wy $00A5,Y 
       STA    PF2     
       LDA.wy $00A7,Y 
       STA    PF1     
       LDA.wy $00A6,Y 
       STA    PF2     
       NOP            
       NOP            
LF094: DEX            
       BNE    LF039   
       BEQ    LF0CE   
       .byte $04 ;.NOP
       BRK            
       NOP            
       NOP            
       JMP    LF0AD   
LF0A0: NOP            
       LDA    $8F     
       .byte $C7 ;.DCP
       STX    $90     
       .byte $F2 ;.JAM
       LDY    $86     
       LDA    ($8C),Y 
       STA    GRP1    
LF0AD: LDA    $91     
       .byte $C7 ;.DCP
       DEY            
       LDY    $D7     
       ROL            
       ROL            
       STA    ENAM1   
       LDA    #$00    
       STA    PF1     
       STA    PF2     
       .byte $04 ;.NOP
       BRK            
       LDA    $D7     
       CLC            
       ADC    #$04    
       STA    $D7     
       LDA    #$08    
       STA    $D4     
       NOP            
       JMP    LF094   
LF0CE: STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       STA    ENAM0   
       STA    ENAM1   
       STA    ENABL   
       STA    WSYNC   
       NOP            
       STA    GRP0    
       STA    GRP1    
       LDY    #$07    
       STY    $D4     
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    VDELP0  
       STA    VDELP1  
       LDA    #$F0    
       STA    HMP0    
       LDA    $A3     
       NOP            
       STA    RESP0   
       STA    RESP1   
       STA    COLUP0  
       STA    COLUP1  
       STA    WSYNC   
       STA    HMOVE   
LF10A: LDY    $D4     
       LDA    ($96),Y 
       STA    GRP0    
       STA    WSYNC   
       LDA    ($98),Y 
       STA    GRP1    
       LDA    ($9A),Y 
       STA    GRP0    
       LDA    ($9C),Y 
       STA    $D7     
       LDA    ($9E),Y 
       TAX            
       LDA    ($A0),Y 
       TAY            
       LDA    $D7     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       DEC    $D4     
       BPL    LF10A   
       STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    VDELP0  
       STA    VDELP1  
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    $D5     
       STA    $85     
       LDA    $D6     
       STA    $86     
       LDA    $D8     
       STA    $87     
       LDA    $D9     
       STA    $88     
       LDA    #$2B    
       STA    TIM64T  
       LDA    #$42    
       STA    WSYNC   
       STA    VBLANK  
       RTS            


START:
       SEI            
       CLD            
       LDX    #$00    
       TXA            
LF163: INX            
       TXS            
       PHA            
       BNE    LF163   
       LDA    #$08    
       STA    $DB     
       LDX    #$0B    
LF16E: LDA    #$FF    
       STA    $96,X   
       DEX            
       LDA    #$AC    
       STA    $96,X   
       DEX            
       BPL    LF16E   
       LDA    #$01    
       STA    CTRLPF  
       ORA    INTIM   
       STA    $A2     
       JMP    LF39B   
LF186: STA    $D5     
       TXA            
       LSR            
       LSR            
       LSR            
       STA    $D4     
       TYA            
       ASL            
       ASL            
       CLC            
       ADC    $D4     
       TAY            
       LDA    $D5     
       RTS            

LF198: JSR    LF186   
       JMP    LF1CF   
LF19E: JSR    LF186   
       JMP    LF1AB   
LF1A4: INX            
       TXA            
       AND    #$07    
       BNE    LF1AB   
       INY            
LF1AB: JSR    LF1CF   
       CPX    $D6     
       BMI    LF1A4   
       RTS            

LF1B3: .byte $20,$86,$F1,$84,$D4,$E6,$D6,$A5,$D6,$0A,$0A,$18,$65,$D4,$85,$D6
       .byte $20,$CF,$F1,$C8,$C8,$C8,$C8,$C4,$D6,$30,$F5,$60
LF1CF: LDA    $D5     
       BEQ    LF1E0   
       LSR            
       BCS    LF1EA   
       LDA.wy $00A4,Y 
       EOR    LF28F,X 
       STA.wy $00A4,Y 
       RTS            

LF1E0: LDA.wy $00A4,Y 
       ORA    LF28F,X 
       STA.wy $00A4,Y 
       RTS            

LF1EA: LDA.wy $00A4,Y 
       EOR    #$FF    
       AND    LF28F,X 
       STA.wy $00A4,Y 
       RTS            

LF1F6: .byte $D0,$14,$A2,$30,$B5,$A3,$4A,$36,$A2,$76,$A1,$36,$A0,$76,$A3,$CA
       .byte $CA,$CA,$CA,$D0,$EF,$60,$4A,$90,$13,$A2,$30,$B5,$A0,$4A,$36,$A1
       .byte $76,$A2,$36,$A3,$76,$A0,$8A,$CA,$CA,$CA,$CA,$60,$4A,$90,$33,$C6
       .byte $DB,$D0,$65,$A9,$08,$85,$DB,$A2,$04,$B5,$A3,$95,$D3,$CA,$D0,$F9
       .byte $B5,$A8,$95,$A4,$B5,$A9,$95,$A5,$B5,$AA,$95,$A6,$B5,$AB,$95,$A7
       .byte $E8,$E8,$E8,$E8,$E0,$2C,$D0,$E8,$A2,$04,$B5,$D3,$95,$CF,$CA,$D0
       .byte $F9,$60,$E6,$DB,$A5,$DB,$C9,$09,$D0,$2E,$A9,$01,$85,$DB,$A2,$04
       .byte $B5,$CF,$95,$D3,$CA,$D0,$F9,$A2,$2C,$B5,$A3,$95,$A7,$B5,$A2,$95
       .byte $A6,$B5,$A1,$95,$A5,$B5,$A0,$95,$A4,$CA,$CA,$CA,$CA,$D0,$EA,$A2
       .byte $04,$B5,$D3,$95,$A3,$CA,$D0,$F9,$60
LF28F: .byte $80,$40,$20,$10,$08,$04,$02,$01,$01,$02,$04,$08,$10,$20,$40,$80
       .byte $80,$40,$20,$10,$08,$04,$02,$01,$01,$02,$04,$08,$10,$20,$40,$80
LF2AF: LDA    #$01    
       BIT    SWCHB   
       RTS            

LF2B5: .byte $A9,$02,$2C,$82,$02,$60
LF2BB: LDA    #$40    
       BIT    SWCHB   
       RTS            

LF2C1: .byte $A9,$80,$2C,$82,$02,$60,$A9,$08,$2C,$82,$02,$60
LF2CD: LDA    #$10    
       BIT    SWCHA   
       RTS            

LF2D3: LDA    #$20    
       BIT    SWCHA   
       RTS            

LF2D9: LDA    #$40    
       BIT    SWCHA   
       RTS            

LF2DF: LDA    #$80    
       BIT    SWCHA   
       RTS            

LF2E5: LDA    #$80    
       BIT    REFP1   
       RTS            

LF2EA: SEC            
       STA    WSYNC   
LF2ED: SBC    #$0F    
       BCS    LF2ED   
       EOR    #$07    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    RESP0,X 
       STA    HMP0,X  
       STA    WSYNC   
       STA    HMOVE   
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       STA    HMCLR   
       RTS            

LF30E: JSR    LF2EA   
       STY    $85,X   
       RTS            

LF314: LDA    $A2     
       LSR            
       BCC    LF31B   
       EOR    #$B2    
LF31B: STA    $A2     
       RTS            

LF31E: TAX            
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       ADC    #$AC    
       TAY            
       TXA            
       AND    #$F0    
       LSR            
       ADC    #$AC    
       TAX            
       RTS            

LF32F: LDA    INTIM   
       BNE    LF32F   
       LDA    #$02    
       STA    WSYNC   
       STA    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    WSYNC   
       STA    VSYNC   
       STA    VBLANK  
       LDA    #$25    
       STA    TIM64T  
       LDA    $80     
       LDX    #$00    
       LDY    $85     
       JSR    LF30E   
       LDA    $81     
       LDX    #$01    
       LDY    $86     
       JSR    LF30E   
       LDA    $82     
       LDX    #$02    
       LDY    $87     
       JSR    LF30E   
       LDA    $83     
       LDX    #$03    
       LDY    $88     
       JSR    LF30E   
       LDA    $83     
       LDX    #$04    
       LDY    $88     
       JSR    LF30E   
       LDA    $95     
       JSR    LF31E   
       STY    $A0     
       STX    $9E     
       LDA    $94     
       JSR    LF31E   
       STY    $9C     
       STX    $9A     
       LDA    $93     
       JSR    LF31E   
       STY    $98     
       STX    $96     
LF393: LDA    INTIM   
       BNE    LF393   
       JMP    LF000   
LF39B: JMP    LF886   
LF39E: LDA    #$00    
       STA    $95     
       LDA    #$00    
       STA    $94     
       LDA    #$00    
       STA    $93     
       LDA    #$00    
       STA    $EB     
       LDA    #$02    
       STA    $EC     
       LDA    #$00    
       STA    $E0     
LF3B6: LDA    #$5A    
       STA    $F3     
       LDA    #$2D    
       STA    $F4     
       LDA    #$00    
       STA    $F1     
       LDA    #$FF    
       STA    $F2     
       LDA    #$18    
       STA    $EF     
       LDA    #$00    
       STA    $F0     
       LDA    #$00    
       STA    $E1     
       LDA    #$00    
       STA    $E9     
       LDA    #$01    
       STA    $ED     
       LDA    #$1E    
       STA    $DC     
       LDA    #$32    
       STA    $DD     
       LDA    #$01    
       STA    $DE     
       LDA    #$01    
       STA    $DF     
       LDA    #$01    
       STA    $E7     
       LDA    #$8C    
       STA    $E5     
       LDA    #$3C    
       STA    $E6     
       LDA    #$01    
       STA    $EE     
       LDA    #$54    
       STA    $E8     
       LDA    #$80    
       STA    COLUPF  
       LDA    #$00    
       STA    COLUBK  
       LDA    $E8     
       STA    COLUP0  
       LDA    $F3     
       STA    $80     
       LDA    $F4     
       STA    $85     
       LDA    #$44    
       STA    COLUP1  
       LDA    $DC     
       STA    $81     
       LDA    $DD     
       STA    $86     
       LDA    $E5     
       STA    $82     
       LDA    $E6     
       STA    $87     
       LDA    #$02    
       STA    $90     
       LDA    #$0F    
       STA    $A3     
       LDA    #$00    
       STA    $E4     
LF432: LDA    $E4     
       ASL            
       STA    $E0     
       LDX    $E0     
       LDY    #$0A    
       LDA    #$00    
       JSR    LF198   
       LDA    $E4     
       CMP    $EC     
       INC    $E4     
       BCC    LF432   
       LDX    #$08    
       LDY    #$0A    
       LDA    #$18    
       STA    $D6     
       LDA    #$00    
       JSR    LF19E   
LF455: LDA    $F2     
       CMP    #$FF    
       BNE    LF473   
       LDA    #$66    
       STA    $8A     
       LDA    #$F4    
       STA    $8B     
       JMP    LF46F   
LF466: .byte $00,$81,$99,$DB,$FF,$BD,$18,$18,$18
LF46F: LDA    #$08    
       STA    $8E     
LF473: LDA    $F2     
       CMP    #$01    
       BNE    LF491   
       LDA    #$84    
       STA    $8A     
       LDA    #$F4    
       STA    $8B     
       JMP    LF48D   
LF484: .byte $00,$18,$18,$18,$BD,$FF,$DB,$99,$81
LF48D: LDA    #$08    
       STA    $8E     
LF491: LDA    $F1     
       CMP    #$FF    
       BNE    LF4AF   
       LDA    #$A2    
       STA    $8A     
       LDA    #$F4    
       STA    $8B     
       JMP    LF4AB   
LF4A2: .byte $00,$1F,$0C,$18,$FF,$FF,$18,$0C,$1F
LF4AB: LDA    #$08    
       STA    $8E     
LF4AF: LDA    $F1     
       CMP    #$01    
       BNE    LF4CD   
       LDA    #$C0    
       STA    $8A     
       LDA    #$F4    
       STA    $8B     
       JMP    LF4C9   
LF4C0: .byte $00,$F8,$30,$18,$7F,$7F,$18,$30,$F8
LF4C9: LDA    #$08    
       STA    $8E     
LF4CD: LDA    $E9     
       CMP    #$04    
       BCC    LF4D6   
       JMP    LF4F1   
LF4D6: LDA    #$E1    
       STA    $8C     
       LDA    #$F4    
       STA    $8D     
       JMP    LF4EA   
LF4E1: .byte $00,$02,$CE,$6C,$78,$1E,$36,$73,$40
LF4EA: LDA    #$08    
       STA    $8F     
       JMP    LF515   
LF4F1: LDA    #$00    
       STA    $8C     
       LDA    #$F5    
       STA    $8D     
       JMP    LF509   
LF4FC: .byte $EA,$EA,$EA,$EA,$00,$10,$30,$36,$1F,$F8,$6C,$0C,$08
LF509: LDA    #$08    
       STA    $8F     
       JSR    LF2AF   
       BNE    LF515   
       JMP    LF886   
LF515: JSR    LF2CD   
       BNE    LF522   
       LDA    #$00    
       STA    $F1     
       LDA    #$FF    
       STA    $F2     
LF522: JSR    LF2D3   
       BNE    LF52F   
       LDA    #$00    
       STA    $F1     
       LDA    #$01    
       STA    $F2     
LF52F: JSR    LF2D9   
       BNE    LF53C   
       LDA    #$FF    
       STA    $F1     
       LDA    #$00    
       STA    $F2     
LF53C: JSR    LF2DF   
       BNE    LF549   
       LDA    #$01    
       STA    $F1     
       LDA    #$00    
       STA    $F2     
LF549: LDA    $F3     
       CMP    #$14    
       BCS    LF553   
       LDA    #$14    
       STA    $F3     
LF553: LDA    $F3     
       CMP    #$A0    
       BCC    LF55D   
       LDA    #$A0    
       STA    $F3     
LF55D: LDA    $F4     
       CMP    #$0A    
       BCS    LF567   
       LDA    #$0A    
       STA    $F4     
LF567: LDA    $F4     
       CMP    #$50    
       BCC    LF571   
       LDA    #$50    
       STA    $F4     
LF571: LDA    $DC     
       CMP    #$14    
       BCS    LF57F   
       LDA    #$01    
       STA    $DE     
       LDA    #$05    
       STA    $ED     
LF57F: LDA    $DC     
       CMP    #$8C    
       BCC    LF593   
       LDA    $EB     
       CMP    #$03    
       BNE    LF593   
       LDA    #$FF    
       STA    $DE     
       LDA    #$05    
       STA    $ED     
LF593: LDA    $DC     
       CMP    #$8C    
       BCC    LF5A7   
       LDA    $EB     
       CMP    #$04    
       BNE    LF5A7   
       LDA    #$FF    
       STA    $DE     
       LDA    #$05    
       STA    $ED     
LF5A7: LDA    $DC     
       CMP    #$9B    
       BCC    LF5B5   
       LDA    #$FF    
       STA    $DE     
       LDA    #$05    
       STA    $ED     
LF5B5: LDA    $DD     
       CMP    #$0A    
       BCS    LF5C3   
       LDA    #$01    
       STA    $DF     
       LDA    #$05    
       STA    $ED     
LF5C3: LDA    $DD     
       CMP    #$50    
       BCC    LF5D1   
       LDA    #$FF    
       STA    $DF     
       LDA    #$05    
       STA    $ED     
LF5D1: LDA    $F3     
       CLC            
       ADC    $F1     
       STA    $F3     
       LDA    $F4     
       CLC            
       ADC    $F2     
       STA    $F4     
       LDA    #$00    
       STA    AUDV0   
       LDA    #$00    
       STA    AUDC0   
       LDA    #$00    
       STA    AUDF0   
       LDA    #$00    
       STA    AUDV1   
       LDA    #$00    
       STA    AUDC1   
       LDA    #$00    
       STA    AUDF1   
       LDA    #$01    
       STA    $E4     
LF5FB: LDA    $DC     
       CLC            
       ADC    $DE     
       STA    $DC     
       LDA    $DD     
       CLC            
       ADC    $DF     
       STA    $DD     
       LDA    $E4     
       CMP    $E7     
       INC    $E4     
       BCC    LF5FB   
       JSR    LF2E5   
       BNE    LF624   
       LDA    $F3     
       CLC            
       ADC    $F1     
       STA    $F3     
       LDA    $F4     
       CLC            
       ADC    $F2     
       STA    $F4     
LF624: INC    $F0     
       INC    $E9     
       LDA    $E9     
       CMP    #$0A    
       BNE    LF632   
       LDA    #$00    
       STA    $E9     
LF632: LDA    #$05    
       SEC            
       SBC    $EB     
       STA    $E0     
       LDA    $E0     
       ASL            
       STA    $E0     
       LDA    $E0     
       CLC            
       ADC    #$09    
       STA    $E0     
       LDA    $F0     
       CMP    $E0     
       BCC    LF65A   
       LDX    $EF     
       LDY    #$0A    
       LDA    #$02    
       JSR    LF198   
       DEC    $EF     
       LDA    #$00    
       STA    $F0     
LF65A: LDA    $EF     
       CMP    #$07    
       BEQ    LF6DA   
       LDA    $E8     
       STA    COLUP0  
       LDA    $F3     
       STA    $80     
       LDA    $F4     
       STA    $85     
       LDA    #$44    
       STA    COLUP1  
       LDA    $DC     
       STA    $81     
       LDA    $DD     
       STA    $86     
       LDA    $E5     
       STA    $82     
       LDA    $E6     
       STA    $87     
       LDA    #$02    
       STA    $90     
       LDA    #$00    
       STA    NUSIZ0  
       LDA    $E9     
       CMP    #$05    
       BCC    LF692   
       LDA    #$10    
       STA    NUSIZ0  
LF692: JSR    LF836   
       LDA    $ED     
       CMP    #$01    
       BEQ    LF6A9   
       DEC    $ED     
       LDA    $ED     
       STA    AUDV0   
       LDA    #$0E    
       STA    AUDC0   
       LDA    #$02    
       STA    AUDF0   
LF6A9: LDA    $EE     
       CMP    #$01    
       BEQ    LF6C9   
       SED            
       CLC            
       LDA    $95     
       ADC    #$10    
       STA    $95     
       LDA    $94     
       ADC    #$00    
       STA    $94     
       LDA    $93     
       ADC    #$00    
       STA    $93     
       CLD            
       DEC    $EE     
       JMP    LF869   
LF6C9: BIT    COLUP1  
       BMI    LF6DA   
       BIT    VSYNC   
       BVC    LF6D4   
       JSR    LF7A7   
LF6D4: JSR    LF32F   
       JMP    LF455   
LF6DA: LDA    #$01    
       STA    $EF     
LF6DE: LDA    #$10    
       STA    $E4     
LF6E2: LDA    #$05    
       STA    AUDV1   
       LDA    #$03    
       STA    AUDC1   
       LDA    $E4     
       STA    AUDF1   
       LDA    $E4     
       STA    COLUP0  
       LDA    $E4     
       STA    $A3     
       LDA    $F3     
       STA    $80     
       LDA    $F4     
       STA    $85     
       LDA    #$40    
       STA    COLUP1  
       LDA    $DC     
       STA    $81     
       LDA    $DD     
       STA    $86     
       JSR    LF836   
       JSR    LF32F   
       LDA    $E4     
       CMP    #$1E    
       INC    $E4     
       BCC    LF6E2   
       LDA    $EF     
       CMP    #$05    
       INC    $EF     
       BCC    LF6DE   
       LDA    #$00    
       STA    AUDV1   
       LDA    #$00    
       STA    AUDC1   
       LDA    #$00    
       STA    AUDF1   
       LDA    #$00    
       STA    AUDV0   
       LDA    #$00    
       STA    AUDC0   
       LDA    #$00    
       STA    AUDF0   
       LDA    #$00    
       STA    $F0     
LF73C: JSR    LF2E5   
       BNE    LF745   
       LDA    #$01    
       STA    $F0     
LF745: JSR    LF2E5   
       BEQ    LF753   
       LDA    $F0     
       CMP    #$01    
       BNE    LF753   
       JMP    LF778   
LF753: LDA    $E4     
       STA    COLUP0  
       LDA    $E4     
       STA    $A3     
       LDA    $F3     
       STA    $80     
       LDA    $F4     
       STA    $85     
       LDA    #$40    
       STA    COLUP1  
       LDA    $DC     
       STA    $81     
       LDA    $DD     
       STA    $86     
       JSR    LF836   
       JSR    LF32F   
       JMP    LF73C   
LF778: LDA    #$00    
       STA    $80     
       LDA    #$00    
       STA    $85     
       LDA    #$FF    
       STA    $81     
       LDA    #$FF    
       STA    $86     
       JSR    LF32F   
       LDA    $EC     
       ASL            
       STA    $E0     
       LDX    $E0     
       LDY    #$0A    
       LDA    #$01    
       JSR    LF198   
       DEC    $EC     
       LDA    $EC     
       CMP    #$FF    
       BNE    LF7A4   
       JMP    LFB3C   
LF7A4: JMP    LF3B6   
LF7A7: LDA    $EF     
       SEC            
       SBC    #$05    
       STA    $E4     
       JSR    LF2E5   
       BEQ    LF7B8   
       LDA    $E4     
       ASL            
       STA    $E4     
LF7B8: LDA    $EE     
       CLC            
       ADC    $E4     
       STA    $EE     
       LDA    #$18    
       STA    $EF     
       LDX    #$08    
       LDY    #$0A    
       LDA    #$18    
       STA    $D6     
       LDA    #$00    
       JSR    LF19E   
       LDA    $DC     
       STA    $A2     
       LDA    $E5     
       CMP    #$28    
       BNE    LF7E1   
       LDA    #$8C    
       STA    $E5     
       JMP    LF7E5   
LF7E1: LDA    #$28    
       STA    $E5     
LF7E5: JSR    LF314   
       STA    $E6     
LF7EA: LDA    $E6     
       CMP    #$46    
       BCC    LF7FA   
       LDA    $E6     
       SEC            
       SBC    #$46    
       STA    $E6     
       JMP    LF7EA   
LF7FA: LDA    $E6     
       CLC            
       ADC    #$0A    
       STA    $E6     
       INC    $E1     
       LDA    $E1     
       CMP    #$03    
       BNE    LF80F   
       LDA    #$00    
       STA    $E1     
       INC    $E7     
LF80F: LDA    $E7     
       CMP    #$04    
       BNE    LF81B   
       LDA    #$01    
       STA    $E7     
       INC    $EB     
LF81B: LDA    $EB     
       CMP    #$06    
       BNE    LF829   
       LDA    #$05    
       STA    $E7     
       LDA    #$05    
       STA    $EB     
LF829: LDA    $E5     
       STA    $82     
       LDA    $E6     
       STA    $87     
       LDA    #$02    
       STA    $90     
       RTS            

LF836: LDA    $EB     
       CMP    #$01    
       BNE    LF840   
       LDA    #$05    
       STA    NUSIZ1  
LF840: LDA    $EB     
       CMP    #$02    
       BNE    LF84A   
       LDA    #$01    
       STA    NUSIZ1  
LF84A: LDA    $EB     
       CMP    #$03    
       BNE    LF854   
       LDA    #$02    
       STA    NUSIZ1  
LF854: LDA    $EB     
       CMP    #$04    
       BNE    LF85E   
       LDA    #$03    
       STA    NUSIZ1  
LF85E: LDA    $EB     
       CMP    #$05    
       BNE    LF868   
       LDA    #$07    
       STA    NUSIZ1  
LF868: RTS            

LF869: LDA    $EE     
       STA    $E0     
       LDA    $E0     
       CMP    #$1F    
       BCC    LF877   
       LDA    #$1F    
       STA    $E0     
LF877: LDA    #$07    
       STA    AUDV1   
       LDA    #$07    
       STA    AUDC1   
       LDA    $E0     
       STA    AUDF1   
       JMP    LF6C9   
LF886: LDA    #$48    
       STA    $F3     
       LDA    #$23    
       STA    $F4     
       LDA    #$48    
       STA    $DC     
       LDA    #$2D    
       STA    $DD     
       LDA    #$00    
       STA    $EF     
       LDA    #$00    
       STA    $E0     
       LDA    #$00    
       STA    $82     
       LDA    #$00    
       STA    $87     
       LDA    #$00    
       STA    COLUPF  
LF8AA: JSR    LF2E5   
       BNE    LF8B1   
       INC    $EF     
LF8B1: LDA    $EF     
       CMP    #$05    
       BCC    LF8BA   
       JMP    LF39E   
LF8BA: JSR    LFDE7   
       JSR    LF2CD   
       BNE    LF8CC   
       LDA    $E0     
       CMP    #$01    
       BNE    LF8CC   
       LDA    #$02    
       STA    $E0     
LF8CC: JSR    LF2CD   
       BNE    LF8DB   
       LDA    $E0     
       CMP    #$00    
       BNE    LF8DB   
       LDA    #$01    
       STA    $E0     
LF8DB: JSR    LF2D3   
       BNE    LF8EA   
       LDA    $E0     
       CMP    #$03    
       BNE    LF8EA   
       LDA    #$04    
       STA    $E0     
LF8EA: JSR    LF2D3   
       BNE    LF8F9   
       LDA    $E0     
       CMP    #$02    
       BNE    LF8F9   
       LDA    #$03    
       STA    $E0     
LF8F9: JSR    LF2D9   
       BNE    LF908   
       LDA    $E0     
       CMP    #$04    
       BNE    LF908   
       LDA    #$05    
       STA    $E0     
LF908: JSR    LF2D9   
       BNE    LF917   
       LDA    $E0     
       CMP    #$06    
       BNE    LF917   
       LDA    #$07    
       STA    $E0     
LF917: JSR    LF2DF   
       BNE    LF926   
       LDA    $E0     
       CMP    #$05    
       BNE    LF926   
       LDA    #$06    
       STA    $E0     
LF926: JSR    LF2DF   
       BNE    LF935   
       LDA    $E0     
       CMP    #$07    
       BNE    LF935   
       LDA    #$08    
       STA    $E0     
LF935: JSR    LF2BB   
       BNE    LF944   
       LDA    $E0     
       CMP    #$08    
       BNE    LF944   
       LDA    #$09    
       STA    $E0     
LF944: JSR    LF2BB   
       BEQ    LF953   
       LDA    $E0     
       CMP    #$09    
       BNE    LF953   
       LDA    #$0A    
       STA    $E0     
LF953: JSR    LF2AF   
       BNE    LF961   
       LDA    $E0     
       CMP    #$0A    
       BNE    LF961   
       JMP    LF964   
LF961: JMP    LF8AA   
LF964: LDA    #$0A    
       STA    $F3     
       LDA    #$3C    
       STA    $F4     
       LDA    #$64    
       STA    $DC     
       LDA    #$1E    
       STA    $DD     
       LDA    #$00    
       STA    $F0     
       LDA    #$01    
       STA    $DE     
       LDA    #$FF    
       STA    $DF     
       LDA    #$00    
       STA    $EE     
       LDA    #$01    
       STA    $E7     
       LDA    #$00    
       STA    $E9     
       LDA    #$00    
       STA    $95     
       LDA    #$00    
       STA    $94     
       LDA    #$00    
       STA    $93     
       LDA    #$0E    
       STA    $A3     
LF99C: LDA    #$A7    
       STA    $8A     
       LDA    #$F9    
       STA    $8B     
       JMP    LF9CD   
LF9A7: .byte $00,$1C,$1C,$1C,$7F,$7F,$00,$3E,$63,$63,$63,$3E,$00,$63,$6F,$7F
       .byte $7B,$63,$00,$00,$63,$6B,$7F,$77,$63,$00,$63,$63,$7F,$36,$1C,$00
       .byte $00,$3E,$1C,$1C,$1C,$3E
LF9CD: LDA    #$25    
       STA    $8E     
       LDA    #$DC    
       STA    $8C     
       LDA    #$F9    
       STA    $8D     
       JMP    LF9E5   
LF9DC: .byte $00,$E0,$F0,$F0,$70,$0E,$0F,$0F,$07
LF9E5: LDA    #$08    
       STA    $8F     
       JSR    LF2CD   
       BNE    LF9F5   
       LDA    $F4     
       CLC            
       ADC    #$FE    
       STA    $F4     
LF9F5: LDA    $F4     
       CMP    #$64    
       BCC    LF9FF   
       LDA    #$64    
       STA    $F4     
LF9FF: JSR    LF2D3   
       BNE    LFA0B   
       LDA    $F4     
       CLC            
       ADC    #$02    
       STA    $F4     
LFA0B: LDA    $F4     
       CMP    #$23    
       BCS    LFA15   
       LDA    #$23    
       STA    $F4     
LFA15: LDA    #$01    
       STA    $E4     
LFA19: LDA    $DC     
       CLC            
       ADC    $DE     
       STA    $DC     
       LDA    $DD     
       CLC            
       ADC    $DF     
       STA    $DD     
       LDA    $E4     
       CMP    $E7     
       INC    $E4     
       BCC    LFA19   
       LDA    $DC     
       CMP    #$96    
       BCC    LFA3D   
       LDA    #$FF    
       STA    $DE     
       LDA    #$04    
       STA    $EE     
LFA3D: LDA    $DC     
       CMP    #$14    
       BCS    LFA46   
       JMP    LFB12   
LFA46: LDA    $DD     
       CMP    #$50    
       BCC    LFA54   
       LDA    #$FF    
       STA    $DF     
       LDA    #$04    
       STA    $EE     
LFA54: LDA    $DD     
       CMP    #$0A    
       BCS    LFA62   
       LDA    #$01    
       STA    $DF     
       LDA    #$04    
       STA    $EE     
LFA62: BIT    COLUP1  
       BPL    LFA89   
       LDA    #$01    
       STA    $DE     
       SED            
       CLC            
       LDA    $95     
       ADC    #$10    
       STA    $95     
       LDA    $94     
       ADC    #$00    
       STA    $94     
       LDA    $93     
       ADC    #$00    
       STA    $93     
       CLD            
       LDA    #$1E    
       STA    $DC     
       LDA    #$05    
       STA    $EE     
       INC    $E9     
LFA89: INC    $F0     
       LDA    $F0     
       CMP    #$02    
       BNE    LFA95   
       LDA    #$00    
       STA    $F0     
LFA95: LDA    $EE     
       CMP    #$01    
       BCC    LFAAE   
       LDA    $EE     
       CLC            
       ADC    #$FF    
       STA    $EE     
       LDA    $EE     
       STA    AUDV0   
       LDA    #$01    
       STA    AUDC0   
       LDA    #$02    
       STA    AUDF0   
LFAAE: LDA    $EE     
       CMP    #$00    
       BNE    LFAC0   
       LDA    #$00    
       STA    AUDV0   
       LDA    #$00    
       STA    AUDC0   
       LDA    #$00    
       STA    AUDF0   
LFAC0: LDA    $E9     
       CMP    #$05    
       BCC    LFACC   
       LDA    #$00    
       STA    $E9     
       INC    $E7     
LFACC: LDA    $E7     
       CMP    #$07    
       BCC    LFAD6   
       LDA    #$07    
       STA    $E7     
LFAD6: LDA    $F3     
       STA    $80     
       LDA    $F4     
       STA    $85     
       LDA    #$0E    
       STA    COLUP0  
       LDA    $F0     
       CMP    #$00    
       BNE    LFAF4   
       LDA    $DC     
       STA    $81     
       LDA    $DD     
       STA    $86     
       LDA    #$44    
       STA    COLUP1  
LFAF4: LDA    $F0     
       CMP    #$01    
       BNE    LFB0C   
       LDA    $DC     
       CLC            
       ADC    #$04    
       STA    $81     
       LDA    $DD     
       CLC            
       ADC    #$04    
       STA    $86     
       LDA    #$38    
       STA    COLUP1  
LFB0C: JSR    LF32F   
       JMP    LF99C   
LFB12: LDA    #$00    
       STA    AUDV0   
       LDA    #$00    
       STA    AUDC0   
       LDA    #$00    
       STA    AUDF0   
LFB1E: LDA    #$46    
       STA    $A3     
       LDA    $F3     
       STA    $80     
       LDA    $F4     
       STA    $85     
       LDA    #$0F    
       STA    COLUP0  
       JSR    LF2E5   
       BNE    LFB36   
       JMP    LF886   
LFB36: JSR    LF32F   
       JMP    LFB1E   
LFB3C: LDA    #$4D    
       STA    $F3     
       LDA    #$37    
       STA    $F4     
       LDA    #$65    
       STA    $DC     
       LDA    #$37    
       STA    $DD     
       LDA    #$00    
       STA    $DE     
       LDA    #$00    
       STA    $E9     
       LDA    #$00    
       STA    $F0     
       LDA    #$02    
       STA    $E7     
       LDA    #$00    
       STA    $E4     
       LDA    #$00    
       STA    $ED     
LFB64: LDA    #$6F    
       STA    $8A     
       LDA    #$FB    
       STA    $8B     
       JMP    LFB87   
LFB6F: .byte $00,$FF,$E0,$FC,$E0,$FF,$00,$E1,$E9,$FD,$F7,$E3,$00,$E1,$E1,$FF
       .byte $E1,$FF,$00,$FF,$E1,$EF,$E0,$FF
LFB87: LDA    #$17    
       STA    $8E     
       LDA    #$96    
       STA    $8C     
       LDA    #$FB    
       STA    $8D     
       JMP    LFBAE   
LFB96: .byte $00,$E7,$EE,$FE,$E3,$FE,$00,$FF,$E0,$FC,$E0,$FF,$00,$1C,$3A,$71
       .byte $E1,$E1,$00,$FF,$E1,$E1,$E1,$FF
LFBAE: LDA    #$17    
       STA    $8F     
       LDA    #$00    
       STA    $A3     
       LDA    #$00    
       STA    COLUPF  
       INC    $F0     
       LDA    $F0     
       CMP    $E7     
       BCC    LFBC8   
       LDA    #$00    
       STA    $F0     
       INC    $E9     
LFBC8: LDA    $E9     
       CMP    #$09    
       BNE    LFBD4   
       LDA    #$01    
       STA    $E9     
       INC    $E4     
LFBD4: LDA    $E4     
       CMP    #$02    
       BCC    LFBE0   
       LDA    #$00    
       STA    $E4     
       INC    $E7     
LFBE0: LDA    $E7     
       CMP    #$06    
       BCC    LFBE9   
       JMP    LFD86   
LFBE9: LDA    $E9     
       CMP    #$01    
       BNE    LFC07   
       LDA    #$4F    
       STA    $F3     
       LDA    #$63    
       STA    $DC     
       LDA    #$15    
       STA    NUSIZ0  
       LDA    #$15    
       STA    NUSIZ1  
       LDA    #$00    
       STA    REFP0   
       LDA    #$00    
       STA    REFP1   
LFC07: LDA    $E9     
       CMP    #$02    
       BNE    LFC25   
       LDA    #$59    
       STA    $F3     
       LDA    #$62    
       STA    $DC     
       LDA    #$10    
       STA    NUSIZ0  
       LDA    #$10    
       STA    NUSIZ1  
       LDA    #$00    
       STA    REFP0   
       LDA    #$00    
       STA    REFP1   
LFC25: LDA    $E9     
       CMP    #$08    
       BNE    LFC43   
       LDA    #$59    
       STA    $F3     
       LDA    #$62    
       STA    $DC     
       LDA    #$10    
       STA    NUSIZ0  
       LDA    #$10    
       STA    NUSIZ1  
       LDA    #$00    
       STA    REFP0   
       LDA    #$00    
       STA    REFP1   
LFC43: LDA    $E9     
       CMP    #$03    
       BNE    LFC61   
       LDA    #$A0    
       STA    $F3     
       LDA    #$C8    
       STA    $DC     
       LDA    #$10    
       STA    NUSIZ0  
       LDA    #$10    
       STA    NUSIZ1  
       LDA    #$00    
       STA    REFP0   
       LDA    #$00    
       STA    REFP1   
LFC61: LDA    $E9     
       CMP    #$07    
       BNE    LFC7F   
       LDA    #$A0    
       STA    $F3     
       LDA    #$C8    
       STA    $DC     
       LDA    #$10    
       STA    NUSIZ0  
       LDA    #$10    
       STA    NUSIZ1  
       LDA    #$00    
       STA    REFP0   
       LDA    #$00    
       STA    REFP1   
LFC7F: LDA    $E9     
       CMP    #$04    
       BNE    LFC9D   
LFC85: LDA    #$62    
       STA    $F3     
       LDA    #$59    
       STA    $DC     
       LDA    #$10    
       STA    NUSIZ0  
       LDA    #$10    
       STA    NUSIZ1  
       LDA    #$08    
       STA    REFP0   
       LDA    #$08    
       STA    REFP1   
LFC9D: LDA    $E9     
       CMP    #$06    
       BNE    LFCBB   
       LDA    #$62    
       STA    $F3     
       LDA    #$59    
       STA    $DC     
       LDA    #$10    
       STA    NUSIZ0  
       LDA    #$10    
       STA    NUSIZ1  
       LDA    #$08    
       STA    REFP0   
       LDA    #$08    
       STA    REFP1   
LFCBB: LDA    $E9     
       CMP    #$05    
       BNE    LFCD9   
       LDA    #$63    
       STA    $F3     
       LDA    #$4F    
       STA    $DC     
       LDA    #$15    
       STA    NUSIZ0  
       LDA    #$15    
       STA    NUSIZ1  
       LDA    #$08    
       STA    REFP0   
       LDA    #$08    
       STA    REFP1   
LFCD9: LDA    #$08    
       STA    AUDV0   
       LDA    $E9     
       STA    AUDC0   
       LDA    $E4     
       STA    AUDF0   
       JSR    LF2E5   
       BNE    LFCEE   
       LDA    #$01    
       STA    $ED     
LFCEE: JSR    LF2E5   
       BEQ    LFD01   
       LDA    $ED     
       CMP    #$01    
       BNE    LFD01   
       LDA    #$05    
       STA    $E7     
       LDA    #$08    
       STA    $E9     
LFD01: LDA    #$1E    
       STA    COLUP0  
       LDA    #$2C    
       STA    COLUP1  
       LDA    $E9     
       CMP    #$03    
       BNE    LFD12   
       JMP    LFD2E   
LFD12: LDA    $E9     
       CMP    #$07    
       BNE    LFD1B   
       JMP    LFD2E   
LFD1B: LDA    $F3     
       STA    $80     
       LDA    $F4     
       STA    $85     
       LDA    $DC     
       STA    $81     
       LDA    $DD     
       STA    $86     
       JMP    LFD3E   
LFD2E: LDA    #$00    
       STA    $80     
       LDA    #$00    
       STA    $85     
       LDA    #$00    
       STA    $81     
       LDA    #$00    
       STA    $86     
LFD3E: LDA    $E9     
       CMP    #$03    
       BEQ    LFD4D   
       LDA    $E9     
       CMP    #$07    
       BEQ    LFD4D   
       JMP    LFD68   
LFD4D: LDA    #$17    
       STA    $90     
       LDA    #$61    
       STA    $82     
       LDA    #$37    
       STA    $87     
       LDA    #$17    
       STA    $91     
       LDA    #$63    
       STA    $83     
       LDA    #$37    
       STA    $88     
       JMP    LFD80   
LFD68: LDA    #$00    
       STA    $90     
       LDA    #$00    
       STA    $82     
       LDA    #$00    
       STA    $87     
       LDA    #$00    
       STA    $91     
       LDA    #$00    
       STA    $83     
       LDA    #$00    
       STA    $88     
LFD80: JSR    LF32F   
       JMP    LFB64   
LFD86: LDA    #$00    
       STA    $E4     
       LDA    #$00    
       STA    $F0     
       LDA    #$00    
       STA    AUDV0   
       LDA    #$00    
       STA    AUDC0   
       LDA    #$00    
       STA    AUDF0   
LFD9A: INC    $E4     
       LDA    $E4     
       CMP    #$FF    
       BCC    LFDA6   
       LDA    #$00    
       STA    $E4     
LFDA6: JSR    LF2E5   
       BNE    LFDAF   
       LDA    #$01    
       STA    $F0     
LFDAF: JSR    LF2E5   
       BEQ    LFDBD   
       LDA    $F0     
       CMP    #$01    
       BNE    LFDBD   
       JMP    LF886   
LFDBD: LDA    #$4F    
       STA    $80     
       LDA    #$37    
       STA    $85     
       LDA    #$63    
       STA    $81     
       LDA    #$37    
       STA    $86     
       LDA    $E4     
       STA    $A3     
       LDA    #$1E    
       STA    COLUP0  
       LDA    #$2C    
       STA    COLUP1  
       LDA    #$15    
       STA    NUSIZ0  
       LDA    #$15    
       STA    NUSIZ1  
       JSR    LF32F   
       JMP    LFD9A   
LFDE7: INC    $D8     
       LDA    $D8     
       CMP    #$04    
       BCC    LFDF5   
       INC    $D5     
       LDA    #$00    
       STA    $D8     
LFDF5: JMP    LFF00   
LFDF8: .byte $00,$00,$00,$00,$00,$00,$00,$00,$4C,$24,$FE
LFE03: .byte $00,$00,$00,$00,$00,$01,$0F,$7F,$9F,$9C,$80,$9E,$98,$81,$8E,$F0
       .byte $83,$9C,$E1,$86,$80,$81,$8E,$F0,$C0,$F1,$FF,$FE,$F8,$C0,$00,$00
       .byte $00,$4C,$48,$FE
LFE27: .byte $00,$00,$00,$07,$39,$C1,$87,$9F,$9F,$9F,$9F,$9F,$B8,$D0,$11,$11
       .byte $11,$30,$D0,$17,$38,$C8,$04,$07,$3E,$F8,$C0,$03,$0F,$3F,$00,$00
       .byte $00,$4C,$6C,$FE
LFE4B: .byte $03,$1E,$E3,$07,$3B,$03,$07,$3A,$03,$1E,$E2,$02,$02,$E2,$E2,$C2
       .byte $03,$1E,$E2,$02,$03,$1F,$FF,$FF,$7F,$7F,$FF,$F7,$E1,$C3,$00,$00
       .byte $00,$4C,$90,$FE
LFE6F: .byte $C0,$38,$1F,$89,$C1,$83,$07,$13,$F9,$3D,$07,$01,$31,$3D,$3F,$3F
       .byte $BF,$7F,$03,$02,$84,$F8,$FE,$FF,$FC,$F8,$FE,$DF,$0F,$87,$00,$00
       .byte $00,$4C,$B4,$FE
LFE93: .byte $00,$00,$00,$E0,$1C,$03,$01,$31,$39,$39,$B9,$F9,$3D,$3F,$39,$09
       .byte $31,$39,$89,$61,$1D,$03,$04,$C8,$F8,$3F,$07,$81,$E0,$F8,$00,$00
       .byte $00,$4C,$D8,$FE
LFEB7: .byte $00,$00,$00,$00,$00,$80,$70,$8E,$E1,$19,$01,$21,$19,$87,$F1,$3F
       .byte $3D,$11,$01,$32,$39,$81,$71,$0F,$03,$0F,$FF,$FF,$3F,$0F,$00,$00
       .byte $00,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
LFF00: LDA    INTIM   
       BNE    LFF00   
       LDA    #$02    
       STA    WSYNC   
       STA    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LSR            
       STA    WSYNC   
       STA    VSYNC   
       STA    VBLANK  
       LDA    #$25    
       STA    TIM64T  
LFF1B: LDA    INTIM   
       BNE    LFF1B   
       LDX    #$32    
LFF22: STA    WSYNC   
       DEX            
       BNE    LFF22   
       STX    GRP0    
       STX    GRP1    
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    VDELP0  
       STA    VDELP1  
       LDA    #$F0    
       STA    HMP0    
       LDA    $D5     
       LDX    #$20    
       STX    $D7     
       STA    RESP0   
       STA    RESP1   
       STA    $D4     
       STA    COLUP0  
       STA    COLUP1  
       STA    WSYNC   
       STA    HMOVE   
       LDX    $D7     
       LDA    LFE03,X 
       STA    GRP0    
       LDY    #$0D    
LFF56: DEY            
       BNE    LFF56   
       NOP            
       JMP    LFF64   
LFF5D: STA    COLUP1  
       LDA    LFE03,X 
       STA    GRP0    
LFF64: LDA    LFE27,X 
       STA    GRP1    
       LDA    LFE4B,X 
       STA    GRP0    
       LDA    LFE6F,X 
       STA    $D6     
       LDY    LFE93,X 
       LDA    LFEB7,X 
       TAX            
       LDA    $D6     
       STA    GRP1    
       STY    GRP0    
       STX    GRP1    
       STA    GRP0    
       .byte $A7 ;.LAX
       .byte $D7 ;.DCP
       ASL            
       ADC    $D4     
       STA.w  $0006   
       DEX            
       STX    $D7     
       BNE    LFF5D   
       STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    VDELP0  
       LDX    #$6D    
LFF9D: STA    WSYNC   
       DEX            
       BNE    LFF9D   
       LDA    #$2B    
       STA    TIM64T  
       RTS            

LFFA8: .byte $FF,$FF,$FF,$FF,$3C,$66,$66,$66,$66,$66,$66,$3C,$7E,$18,$18,$18
       .byte $18,$38,$18,$08,$7E,$60,$60,$3C,$06,$06,$46,$3C,$3C,$46,$06,$06
       .byte $1C,$06,$46,$3C,$0C,$0C,$7E,$4C,$4C,$2C,$1C,$0C,$3C,$46,$06,$06
       .byte $3C,$60,$60,$7E,$3C,$66,$66,$66,$7C,$60,$62,$3C,$30,$30,$30,$18
       .byte $0C,$06,$42,$3E,$3C,$66,$66,$66,$3C,$66,$66,$3C,$3C,$46,$06,$3E
       .byte $66,$66,$66,$3C,$5E,$F1,$5E,$F1
