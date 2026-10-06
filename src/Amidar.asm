; Disassembly of roms/Amidar.bin
; Disassembled Tue Oct  6 15:19:35 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Amidar.bin
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
PF1     =  $0E
PF2     =  $0F
RESP0   =  $10
RESP1   =  $11
RESM0   =  $12
AUDC0   =  $15
AUDF0   =  $17
AUDV0   =  $19
GRP0    =  $1B
GRP1    =  $1C
ENAM0   =  $1D
HMP0    =  $20
HMP1    =  $21
HMM0    =  $22
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
INPT4   =  $3C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296

       ORG $F000

START:
LF000: CLD            
       LDX    #$00    
       TXA            
LF004: STA    VSYNC,X 
       TXS            
       STX    $E2     
       INX            
       BNE    LF004   
       INX            
       STX    CTRLPF  
       STA    COLUBK  
       LDY    #$03    
       LDA    SWCHB   
       AND    #$40    
       BNE    LF01C   
       LDY    #$0B    
LF01C: STY    $D6     
       JSR    LF7DF   
       JMP    LF28C   
LF024: LDA    #$B0    
       STA    TIM64T  
       INC    $80     
       LDA    $80     
       AND    #$03    
       STA    $BA     
       LDA    #$BA    
       STA    $82     
       STA    $83     
       LDA    #$FF    
       STA    $B4     
       STA    $B5     
       LDX    #$07    
       STX    $E5     
       BNE    LF051   
LF043: LDY    #$01    
       BNE    LF049   
LF047: LDY    #$02    
LF049: STY    $B8     
       TXA            
       ORA    $E8     
       STA.wy $00B3,Y 
LF051: DEC    $E5     
       BMI    LF0BA   
       LDX    $E5     
       LDA    $BB,X   
       CMP    #$FF    
       BEQ    LF051   
       LDA    $C9,X   
       AND    #$03    
       CMP    $BA     
       BNE    LF069   
       LDA    #$18    
       BNE    LF070   
LF069: LDA    #$10    
       CPX    $D7     
       BEQ    LF070   
       LSR            
LF070: STA    $E8     
       LDA    $B5     
       BMI    LF047   
       LDA    $B4     
       BMI    LF043   
       LDA    $B8     
       CMP    #$01    
       BNE    LF0A8   
       BEQ    LF08E   
LF082: LDA    $B4     
       CMP    $E8     
       BCC    LF043   
       LDA    $E8     
       CMP    #$18    
       BNE    LF051   
LF08E: LDA    $B5     
       AND    #$07    
       TAY            
       LDA.wy $00BB,Y 
       SBC    $BB,X   
       CMP    #$12    
       BCS    LF0CF   
       LDA    $B5     
       CMP    $E8     
       BCC    LF047   
       LDA    $E8     
       CMP    #$18    
       BNE    LF051   
LF0A8: LDA    $B4     
       AND    #$07    
       TAY            
       LDA.wy $00BB,Y 
       SBC    $BB,X   
       CMP    #$12    
       BCC    LF082   
LF0B6: LDY    #$00    
       BEQ    LF0D1   
LF0BA: LDA    #$00    
       STA    $B8     
       LDA    $B5     
       AND    #$07    
       TAX            
       LDA    $B4     
       AND    #$07    
       TAY            
       LDA    $BB,X   
       CMP.wy $00BB,Y 
       BCC    LF0B6   
LF0CF: LDY    #$01    
LF0D1: LDA.wy $00B4,Y 
       AND    #$07    
       TAX            
       STY    $84     
       SEC            
       LDA.wy $0082,Y 
       SBC    $BB,X   
       LDY    #$FF    
LF0E1: INY            
       SBC    #$05    
       BCS    LF0E1   
       STY    $B9     
       LDY    $84     
       STA    $84     
       EOR    #$FF    
       ADC    #$01    
       STA    $E4     
       BNE    LF0F8   
       DEC    $B9     
       STA    $84     
LF0F8: LDA    $C9,X   
       AND    #$70    
       ORA    $E4     
       ADC    LF9CE,Y 
       PHA            
       LDA    $BB,X   
       ADC    $84     
       STA.wy $0082,Y 
       LDA    $B9     
       CMP    #$10    
       BCS    LF172   
LF10F: LDA    $C2,X   
       STA    $84     
       LSR            
       LSR            
       LSR            
       LSR            
       SEC            
       ADC    $84     
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $85     
       CLC            
       ADC    $84     
       EOR    #$FF    
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    $85     
       CLC            
       ADC    #$80    
       TAX            
       AND    #$F0    
       ORA    $B9     
       PHA            
       TXA            
       AND    #$0F    
       ASL            
       ADC    LF968,Y 
       TAX            
       INX            
       LDA    LF903,X 
       PHA            
       DEX            
       LDA    LF903,X 
       PHA            
       DEY            
       BMI    LF17B   
       LDA    $83     
       CMP    $82     
       BCC    LF162   
       TSX            
       LDA    #$04    
       STA    $84     
       INX            
LF155: LDA    VSYNC,X 
       LDY    NUSIZ0,X
       STA    NUSIZ0,X
       STY    VSYNC,X 
       INX            
       DEC    $84     
       BNE    LF155   
LF162: LDX    $E5     
       LDA    $B8     
       BNE    LF16D   
       DEC    $B8     
       JMP    LF0B6   
LF16D: BMI    LF18B   
       JMP    LF047   
LF172: STA.wy $00DF,Y 
       LDA    #$00    
       STA    $B9     
       BEQ    LF10F   
LF17B: LDX    $E5     
       LDA    $B8     
       BNE    LF186   
       DEC    $B8     
       JMP    LF0CF   
LF186: BMI    LF18B   
       JMP    LF043   
LF18B: LDX    #$02    
LF18D: LDY    #$FF    
       SEC            
       LDA    $81,X   
LF192: INY            
       SBC    #$05    
       BCS    LF192   
       DEY            
       STY    $B3,X   
       DEX            
       BNE    LF18D   
       STX    $82     
       STX    $83     
       STX    $84     
       STX    $85     
       STX    $B8     
       LDA    #$0C    
       STA    $B9     
       LDA    #$20    
       STA    $BA     
LF1AF: LDA    INTIM   
       BMI    LF1AF   
       LDA    #$40    
       STA    WSYNC   
       STA    VBLANK  
       JMP    LFD4D   
LF1BD: STA    WSYNC   
       LDX    #$00    
       STX    GRP0    
       STX    GRP1    
       STX    PF2     
       STX    COLUPF  
       LDA    #$15    
       STA    CTRLPF  
       LDA    $B7     
       ADC    #$A8    
       STA    COLUP0  
       STA    COLUP1  
       LDA    $D6     
       AND    #$03    
       TAY            
       STA    RESP0   
       STA    RESP1   
       LDA    LF9D0,Y 
       STA    PF1     
       LDA    #$10    
       STA    HMP0    
       ASL            
       STA    RESM0   
       STA    HMP1    
       STX    HMM0    
       STX    WSYNC   
       STX    HMOVE   
       LDY    #$02    
LF1F4: LDA.wy $00D9,Y 
       PHA            
       AND    #$F0    
       LSR            
       ADC    #$13    
       STA    $EE,X   
       INX            
       PLA            
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       ADC    #$13    
       STA    $EE,X   
       INX            
       DEY            
       BPL    LF1F4   
       STA    WSYNC   
       LDY    #$0B    
LF212: DEX            
       LDA    #$FA    
       STA.wy $00F4,Y 
       DEY            
       LDA    $EE,X   
       STA.wy $00F4,Y 
       DEY            
       BPL    LF212   
       LDY    #$63    
LF223: LDA    $F4,X   
       CMP    #$13    
       BNE    LF231   
       STY    $F4,X   
       INX            
       INX            
       CPX    #$0A    
       BNE    LF223   
LF231: TXA            
       ASL            
       TAX            
       INX            
       INX            
       CMP    #$16    
       BCC    LF231   
       LDX    #$03    
       STX    WSYNC   
       STX    NUSIZ0  
       STX    NUSIZ1  
       STX    VDELP0  
       STX    VDELP1  
       TXA            
       AND    $D6     
       BEQ    LF24D   
       STX    ENAM0   
LF24D: LDA    #$06    
       STA    $E4     
LF251: LDY    $E4     
       LDA    ($F4),Y 
       STA    GRP0    
       STA    WSYNC   
       LDA    ($F6),Y 
       STA    GRP1    
       LDA    ($F8),Y 
       STA    GRP0    
       LDA    ($FA),Y 
       STA    $84     
       LDA    ($FC),Y 
       TAX            
       LDA    ($FE),Y 
       TAY            
       LDA    $84     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STY    GRP0    
       DEC    $E4     
       BPL    LF251   
       LDA    #$00    
       LDX    #$01    
       STX    CTRLPF  
LF27F: STA    NUSIZ0,X
       STA    VDELP0,X
       STA    GRP0,X  
       DEX            
       BPL    LF27F   
       STA    ENAM0   
       STA    $F3     
LF28C: LDY    #$AC    
       STY    TIM64T  
       LDA    $E1     
       STA    $DF     
       LDA    #$F8    
       STA    $E0     
       LDA    $D6     
       AND    #$20    
       BEQ    LF2CC   
       LDX    $D7     
       DEC    $DC     
       BEQ    LF2B6   
       LDA    $DC     
       LSR            
       BCC    LF2D9   
       LDA    $C9,X   
       AND    #$08    
       BNE    LF306   
       JSR    LF507   
       JMP    LF311   
LF2B6: LDA    #$05    
       STA    $DC     
       LDA    $D6     
       LSR            
       LSR            
       AND    #$07    
       TAY            
       LDA    LFA0B,Y 
       ADC    $D8     
       STA    $D8     
       BCC    LF321   
       BCS    LF2D9   
LF2CC: JSR    LF760   
       LDA    $D6     
       BPL    LF321   
       LDA    $80     
       AND    #$01    
       BEQ    LF321   
LF2D9: LDX    #$07    
LF2DB: DEX            
       BMI    LF2FA   
       LDA    $BB,X   
       CMP    #$FF    
       BEQ    LF2DB   
       CPX    $D7     
       BEQ    LF2DB   
       CPX    $D0     
       BEQ    LF2DB   
       JSR    LF408   
       JSR    LF495   
       BEQ    LF2DB   
       JSR    LF3BD   
       JMP    LF2DB   
LF2FA: JSR    LF383   
       JMP    LF321   
LF300: JSR    LF760   
       JMP    LF321   
LF306: JSR    LF5F2   
       LDX    $D7     
       LDA    $C9,X   
       AND    #$F7    
       STA    $C9,X   
LF311: LDA    $DC     
       CMP    #$03    
       BNE    LF300   
       LDA    INTIM   
       CMP    #$A0    
       BCC    LF321   
       JSR    LF68D   
LF321: JSR    LF426   
LF324: LDA    INTIM   
       BMI    LF324   
       STA    WSYNC   
       LDA    $F3     
       CLC            
       SED            
       ADC    $D9     
       STA    $D9     
       LDA    #$00    
       ADC    $DA     
       STA    $DA     
       LDA    #$00    
       ADC    $DB     
       STA    $DB     
       CLD            
       LDA    #$02    
       STA    WSYNC   
       STA    VBLANK  
       STA    WSYNC   
       LDY    $E2     
       BMI    LF36A   
       BNE    LF368   
       LDA    ($DF),Y 
       BEQ    LF364   
       PHA            
       AND    #$03    
       TAX            
       LDA    LFFF8,X 
       STA    AUDC0   
       PLA            
       LSR            
       LSR            
       STA    AUDF0   
       LDA    #$04    
       STA    $E2     
LF364: STA    AUDV0   
       INC    $DF     
LF368: DEC    $E2     
LF36A: STA    WSYNC   
       LDA    $DF     
       STA    $E1     
       STA    WSYNC   
       LDA    #$02    
       STA    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    WSYNC   
       STA    VSYNC   
       JMP    LF024   
LF383: LDX    $D0     
       JSR    LF408   
       LDA    $C9,X   
       AND    #$04    
       BEQ    LF3A6   
       LDA    $BB,X   
       CMP    #$07    
       BEQ    LF398   
       CMP    #$99    
       BNE    LF3DF   
LF398: LDA    $C2,X   
       CMP    #$06    
       BEQ    LF3D9   
LF39E: LDA    $C9,X   
       AND    #$FB    
       ORA    #$80    
       BNE    LF3BA   
LF3A6: LDA    $C2,X   
       CMP    #$06    
       BEQ    LF3B0   
       CMP    #$82    
       BNE    LF3DF   
LF3B0: LDA    $BB,X   
       CMP    #$07    
       BNE    LF400   
LF3B6: LDA    #$84    
LF3B8: ORA    $C9,X   
LF3BA: STA    $C9,X   
       RTS            

LF3BD: CMP    #$03    
       BEQ    LF3E8   
       BCS    LF3B6   
       LDA    $C2,X   
       CMP    #$06    
       BEQ    LF3D5   
       CMP    #$82    
       BEQ    LF3E0   
       LDA    $C9,X   
       AND    #$08    
       BNE    LF39E   
       BEQ    LF3D9   
LF3D5: LDA    #$73    
       BNE    LF3DB   
LF3D9: LDA    #$7B    
LF3DB: AND    $C9,X   
LF3DD: STA    $C9,X   
LF3DF: RTS            

LF3E0: LDA    $C9,X   
       ORA    #$08    
       STA    $C9,X   
       BNE    LF39E   
LF3E8: CPX    $D7     
       BEQ    LF400   
       LDA    $BB,X   
       CMP    #$43    
       BEQ    LF3F6   
       CMP    #$7F    
       BNE    LF400   
LF3F6: LDA    $C2,X   
       CMP    #$06    
       BEQ    LF3B6   
       CMP    #$82    
       BEQ    LF3B6   
LF400: LDA    $C9,X   
       ORA    #$04    
       AND    #$7F    
       BNE    LF3DD   
LF408: LDA    $C9,X   
       AND    #$04    
       BNE    LF41A   
       LDA    $C9,X   
       AND    #$80    
       BEQ    LF417   
       DEC    $C2,X   
       RTS            

LF417: INC    $C2,X   
LF419: RTS            

LF41A: LDA    $C9,X   
       AND    #$80    
       BEQ    LF423   
       INC    $BB,X   
       RTS            

LF423: DEC    $BB,X   
       RTS            

LF426: LDA    #$00    
       STA    $84     
       STA    $EB     
LF42C: LDX    #$07    
       LDY    #$06    
LF430: DEX            
       DEY            
       BMI    LF489   
       CPX    $84     
       BEQ    LF419   
       LDA    $BB,X   
       CMP.wy $00BB,Y 
       BCS    LF430   
       LDA    $BB,X   
       STA    $E4     
       LDA.wy $00BB,Y 
       STA    $BB,X   
       LDA    $E4     
       STA.wy $00BB,Y 
       LDA    $C2,X   
       STA    $E4     
       LDA.wy $00C2,Y 
       STA    $C2,X   
       LDA    $E4     
       STA.wy $00C2,Y 
       LDA    $C9,X   
       STA    $E4     
       LDA.wy $00C9,Y 
       STA    $C9,X   
       LDA    $E4     
       STA.wy $00C9,Y 
       CPX    $D7     
       BNE    LF471   
       STY    $D7     
       BEQ    LF47F   
LF471: CPY    $D7     
       BNE    LF477   
       STX    $D7     
LF477: CPX    $D0     
       BNE    LF47F   
       STY    $D0     
       BEQ    LF485   
LF47F: CPY    $D0     
       BNE    LF485   
       STX    $D0     
LF485: INC    $EB     
       BNE    LF430   
LF489: LDA    $EB     
       BEQ    LF419   
       INC    $84     
       LDA    #$00    
       STA    $EB     
       BEQ    LF42C   
LF495: LDA    $BB,X   
       CLC            
       ADC    #$09    
       LSR            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    $C9,X   
       AND    #$04    
       BEQ    LF4B3   
       LDA    LFA05,Y 
       CMP    $BB,X   
       BEQ    LF4B0   
LF4AD: LDA    #$00    
       RTS            

LF4B0: LDA    #$02    
       RTS            

LF4B3: TYA            
       ASL            
       ASL            
       TAY            
       LDA    $C2,X   
       CMP    #$26    
       BCC    LF4D2   
       CMP    #$46    
       BCC    LF4D6   
       CMP    #$66    
       BCC    LF4CC   
       LDA    #$62    
       INY            
       INY            
       INY            
       BNE    LF4D9   
LF4CC: INY            
       INY            
       LDA    #$42    
       BNE    LF4D9   
LF4D2: LDA    #$02    
       BNE    LF4D9   
LF4D6: LDA    #$22    
       INY            
LF4D9: STA    $BA     
       LDA    LFA67,Y 
       STA    $84     
       LDA    LFA6B,Y 
       STA    $85     
       LDA    $BA     
       LDY    #$09    
LF4E9: DEY            
       BEQ    LF4AD   
       CLC            
       ADC    #$04    
       ROR    $84     
       BCS    LF4FE   
       ROR    $85     
       BCC    LF4E9   
       CMP    $C2,X   
       BNE    LF4E9   
       LDA    #$04    
LF4FD: RTS            

LF4FE: ROR    $85     
       CMP    $C2,X   
       BNE    LF4E9   
       LDA    #$03    
       RTS            

LF507: JSR    LF5B9   
       BCC    LF4FD   
       LDA    $F0     
       CMP    $D5     
       BNE    LF51F   
       LDA    $EB     
       STA    $D5     
       LDA    $C9,X   
       EOR    #$80    
       STA    $C9,X   
       JMP    LF408   
LF51F: JSR    LF495   
       BNE    LF531   
       JSR    LF408   
       JSR    LF495   
       BEQ    LF4FD   
       LDA    #$08    
       JMP    LF3B8   
LF531: STA    $84     
       LDA    $EB     
       CMP    $D5     
       BNE    LF573   
       CMP    #$40    
       BCS    LF5A7   
       LDA    $C2,X   
       CMP    #$06    
       BEQ    LF547   
       CMP    #$82    
       BNE    LF551   
LF547: LDA    $BB,X   
       CMP    #$07    
       BEQ    LF551   
       CMP    #$99    
       BNE    LF5B6   
LF551: RTS            

LF552: TAY            
       LDA    LF9C5,Y 
       CMP    $EB     
       BEQ    LF570   
       LDA    $BB,X   
       CMP    #$99    
       BEQ    LF5A7   
       CMP    #$07    
       BEQ    LF5A7   
       LDA    $C2,X   
       CMP    #$82    
       BEQ    LF56E   
       CMP    #$06    
       BNE    LF5A7   
LF56E: LDY    #$04    
LF570: TYA            
       BNE    LF598   
LF573: LDA    $84     
       CMP    #$02    
       BNE    LF552   
       LDA    $EB     
       AND    #$80    
       BEQ    LF589   
       LDA    $C9,X   
       AND    #$F7    
       STA    $C9,X   
       LDY    #$82    
       BNE    LF591   
LF589: LDY    #$06    
       LDA    $C9,X   
       ORA    #$08    
       STA    $C9,X   
LF591: TYA            
       CMP    $C2,X   
       BEQ    LF551   
       LDA    #$02    
LF598: JSR    LF3BD   
       LDA    $C9,X   
       EOR    #$80    
       STA    $C9,X   
       LDA    $F0     
       STA    $D5     
       BNE    LF551   
LF5A7: LDY    #$82    
       LDA    $C9,X   
       AND    #$80    
       BEQ    LF5B1   
       LDY    #$06    
LF5B1: TYA            
       CMP    $C2,X   
       BEQ    LF551   
LF5B6: JMP    LF408   
LF5B9: LDY    #$30    
       STY    $85     
       CLC            
       LDY    #$C0    
       LDA    $C9,X   
       AND    #$04    
       BEQ    LF5CA   
       STY    $85     
       LDY    #$30    
LF5CA: STY    $84     
       LDA    SWCHA   
       EOR    #$FF    
       AND    #$F0    
       BEQ    LF5EA   
       STA    $EB     
       AND    $84     
       BEQ    LF5E3   
       STA    $EB     
       EOR    $84     
       BNE    LF5E7   
       SEC            
       RTS            

LF5E3: LDA    $EB     
       EOR    $85     
LF5E7: STA    $F0     
       SEC            
LF5EA: RTS            

LF5EB: ROL    $D4     
       TYA            
       STA    $E5     
       BNE    LF629   
LF5F2: LDA    $D3     
       TAY            
       SEC            
       LDA    $C2,X   
       SBC    $D1     
       BEQ    LF659   
       LDA    #$FC    
       STA    $E4     
       LDA    #$FF    
       STA    $84     
       BCS    LF60D   
       TYA            
       AND    #$01    
       BNE    LF61A   
       BEQ    LF630   
LF60D: LDA    #$04    
       STA    $E4     
       LDA    #$01    
       STA    $84     
       TYA            
       AND    #$01    
       BNE    LF630   
LF61A: ASL    $D4     
       BCS    LF622   
       STY    $E5     
       BCC    LF638   
LF622: ROR    $D4     
       LDA    #$00    
       STA    $E5     
       TYA            
LF629: ADC    $84     
       STA    $D3     
       TAY            
       BNE    LF638   
LF630: LSR    $D4     
       BCS    LF5EB   
       LDA    #$00    
       STA    $E5     
LF638: LDA    ($81),Y 
       ORA    $D4     
       CMP    ($81),Y 
       BEQ    LF648   
       INC    $F3     
       STA    ($81),Y 
       LDA    #$D6    
       BRK            
       NOP            
LF648: CLC            
       LDA    $D1     
       ADC    $E4     
       STA    $D1     
       CMP    $C2,X   
       BEQ    LF68C   
       LDA    $E5     
       BEQ    LF630   
       BNE    LF61A   
LF659: LDA    $BB,X   
       LDX    #$01    
       CMP    $D2     
       BEQ    LF68C   
       BCC    LF664   
       DEX            
LF664: STA    $D2     
       LDA    $81     
       CLC            
       ADC    LF9CC,X 
       STA    $81     
       LDA    ($81),Y 
       ORA    $D4     
       CMP    ($81),Y 
       BEQ    LF67E   
       INC    $F3     
       STA    ($81),Y 
       LDA    #$D6    
       BRK            
       NOP            
LF67E: LDA    $81     
       CLC            
       ADC    LF9CC,X 
       STA    $81     
       LDA    ($81),Y 
       ORA    $D4     
       STA    ($81),Y 
LF68C: RTS            

LF68D: DEC    $DD     
       BPL    LF695   
       LDA    #$04    
       STA    $DD     
LF695: LDA    $DD     
       ASL            
       TAY            
       LDX    LF9BC,Y 
       STX    $ED     
       STX    $F0     
       LDX    LF9BD,Y 
       STX    $EE     
       STX    $EF     
       ASL            
       ASL            
       ADC    #$09    
       TAY            
       LDX    #$05    
       STX    $84     
       DEX            
LF6B1: LDA.wy $0084,Y 
       STA    $E4,X   
       DEY            
       STX    $EB     
       DEX            
       BPL    LF6B1   
       DEY            
LF6BD: LDA    #$80    
       BNE    LF6CB   
LF6C1: LDA    #$00    
       STA    $EB     
       LDA    $EA     
       BPL    LF6BD   
LF6C9: LDA    #$01    
LF6CB: STA    $EA     
       INY            
       INX            
       DEC    $84     
       BEQ    LF68C   
       LDA.wy $0086,Y 
       CMP    #$FF    
       BEQ    LF6C1   
       AND    $ED,X   
       BEQ    LF6C1   
       LDA    $EB     
       BNE    LF71B   
LF6E2: LDA    $ED,X   
       AND    $EA     
       BEQ    LF6FD   
       AND.wy $0086,Y 
       BEQ    LF6FD   
       BNE    LF751   
LF6EF: LDA.wy $0085,Y 
       STA    $E4,X   
       LDA.wy $0086,Y 
       STA    $E5,X   
       LDA    #$00    
       STA    $EB     
LF6FD: TYA            
       LSR            
       BCS    LF707   
       LSR    $EA     
       BCC    LF6E2   
       BCS    LF6C9   
LF707: ASL    $EA     
       BCC    LF6E2   
       BCS    LF6BD   
LF70D: TYA            
       LSR            
       BCS    LF717   
       LSR    $EA     
       BCC    LF71B   
       BCS    LF6C9   
LF717: ASL    $EA     
       BCS    LF6BD   
LF71B: LDA    $EA     
       AND.wy $008A,Y 
       AND.wy $0082,Y 
       BEQ    LF6EF   
       AND    $ED,X   
       BNE    LF738   
       LDA    $EA     
       AND.wy $0086,Y 
       BNE    LF6EF   
       LDA    $EA     
       ORA    $E5,X   
       STA    $E5,X   
       BNE    LF70D   
LF738: AND.wy $0086,Y 
       BEQ    LF6EF   
       LDA    $E4,X   
       STA.wy $0085,Y 
       LDA    $E5,X   
       STA.wy $0086,Y 
       LDA    #$D2    
       BRK            
       NOP            
       LDA    #$48    
       STA    $F3     
       BNE    LF70D   
LF751: STA    $EB     
       LDA.wy $0085,Y 
       STA    $E4,X   
       LDA.wy $0086,Y 
       STA    $E5,X   
       JMP    LF70D   
LF760: LDA    SWCHB   
       AND    #$01    
       BNE    LF76A   
       JMP    LF000   
LF76A: LDA    $D6     
       AND    #$20    
       BNE    LF78A   
       DEC    $DE     
       BNE    LF789   
       LDA    $D6     
       AND    #$03    
       BNE    LF783   
       LDA    #$80    
       STA    $D6     
       LDX    $D7     
       JMP    LF9B1   
LF783: LDA    $D6     
       ORA    #$20    
       STA    $D6     
LF789: RTS            

LF78A: LDA    INPT4   
       BMI    LF791   
       JMP    LF8B3   
LF791: LDX    #$27    
       LDA    #$FF    
LF795: AND    $8A,X   
       DEX            
       BPL    LF795   
       CMP    #$FF    
       BEQ    LF7A1   
       JMP    LF82A   
LF7A1: LDY    $D6     
       INY            
       TYA            
       AND    #$03    
       BNE    LF7AB   
       LDA    #$03    
LF7AB: STA    $84     
       LDA    $D6     
       AND    #$FC    
       ORA    $84     
       STA    $D6     
       LDA    #$00    
       STA    $E3     
       LDX    #$2F    
LF7BB: STA    $82,X   
       DEX            
       BPL    LF7BB   
       CLC            
       LDA    $D6     
       ADC    #$04    
       AND    #$1C    
       BNE    LF7CB   
       LDA    #$18    
LF7CB: STA    $84     
       LDA    $D6     
       AND    #$E3    
       ORA    $84     
       STA    $D6     
LF7D5: LDA    #$00    
       STA    $DE     
       LDA    $D6     
       AND    #$DF    
       STA    $D6     
LF7DF: LDY    #$24    
       LDA    $D6     
       AND    #$04    
       BEQ    LF7E9   
       LDY    #$D4    
LF7E9: STY    $B6     
       LDY    #$76    
       STY    $B7     
       LDX    #$1B    
LF7F1: LDA    LF9E9,X 
       STA    $BA,X   
       DEX            
       BNE    LF7F1   
       STX    $D7     
       LDA    #$9D    
       STA    $81     
       LDA    #$80    
       ORA    $9D     
       STA    $9D     
       ORA    $A1     
       STA    $A1     
       LDA    $D6     
       AND    #$1C    
       CMP    #$08    
       BCS    LF814   
       DEX            
       STX    $C0     
LF814: LDA    $D6     
       AND    #$04    
       ASL            
       ASL            
       STA    $84     
       LDX    #$06    
LF81E: LDA    $C9,X   
       AND    #$AF    
       ORA    $84     
       STA    $C9,X   
       DEX            
       BPL    LF81E   
       RTS            

LF82A: LDA    $8A     
       AND    $8D     
       AND    $AA     
       AND    $AD     
       AND    #$FE    
       CMP    #$FE    
       BNE    LF85D   
       LDA    $E3     
       BMI    LF84F   
       BNE    LF85D   
       LDA    #$FF    
       STA    $E3     
       LDA    $DE     
       AND    #$F0    
       STA    $DE     
       LDA    #$70    
       STA    $84     
       JMP    LF8E9   
LF84F: DEC    $E3     
LF851: BPL    LF814   
       LDA    $E3     
       CMP    #$90    
       BNE    LF85D   
       LDA    #$DA    
       BRK            
       NOP            
LF85D: LDX    #$07    
       LDY    $D7     
       SEC            
LF862: DEX            
       BMI    LF8A3   
       CPX    $D7     
       BEQ    LF862   
       LDA.wy $00BB,Y 
       SBC    $BB,X   
       BCS    LF874   
       EOR    #$FF    
       ADC    #$01    
LF874: CMP    #$06    
       BCS    LF862   
       LDA.wy $00C2,Y 
       SBC    $C2,X   
       BCS    LF883   
       EOR    #$FF    
       ADC    #$01    
LF883: CMP    #$06    
       BCS    LF862   
       LDA    $C9,X   
       AND    #$70    
       CMP    #$60    
       BEQ    LF8A3   
       CMP    #$70    
       BNE    LF8AA   
       LDA    $C9,X   
       AND    #$8F    
       ORA    #$60    
       STA    $C9,X   
       LDA    #$99    
       STA    $F3     
       LDA    #$CE    
       BRK            
       NOP            
LF8A3: LDA    $DE     
       AND    #$0F    
       BNE    LF8BD   
LF8A9: RTS            

LF8AA: DEC    $D6     
       LDA    #$CE    
       BRK            
       NOP            
       JMP    LF7D5   
LF8B3: LDA    $E3     
       BMI    LF8CB   
       LDA    $DE     
       AND    #$0F    
       BEQ    LF8C7   
LF8BD: DEC    $DE     
       LDA    $DE     
       AND    #$0F    
       BNE    LF8A9   
       BEQ    LF851   
LF8C7: LDA    $DE     
       BPL    LF8E1   
LF8CB: JMP    LF791   
LF8CE: .byte $72,$42,$4E,$00,$28,$38,$54,$00,$2C,$38,$40,$00,$3D,$25,$15,$39
       .byte $2D,$11,$00
LF8E1: ADC    #$2E    
       STA    $DE     
       LDA    #$60    
       STA    $84     
LF8E9: LDX    #$06    
LF8EB: CPX    $D7     
       BEQ    LF8F7   
       LDA    $C9,X   
       AND    #$8F    
       ORA    $84     
       STA    $C9,X   
LF8F7: DEX            
       BPL    LF8EB   
       RTS            

LF8FB: .byte $00,$00,$00,$00,$00,$00,$00,$70
LF903: .byte $82,$FA,$AB,$FA,$CA,$FA,$F8,$FA,$21,$FB,$48,$FB,$70,$FB,$97,$FB
       .byte $BF,$FB,$EA,$FB,$10,$FC,$2F,$FC,$5D,$FC,$86,$FC,$AD,$FC,$D8,$FC
       .byte $FC,$FC,$24,$FD
LF927: .byte $00,$00,$0A,$0A,$0A,$0A,$0A,$00,$08,$08,$08,$08,$08,$00,$06,$06
       .byte $06,$06,$06,$00,$04,$04,$04,$04,$04,$00,$02,$02,$02,$02,$02,$00
       .byte $0C
LF948: .byte $00,$2C,$28,$28,$28,$28,$28,$24,$20,$20,$20,$20,$20,$1C,$18,$18
       .byte $18,$18,$18,$14,$10,$10,$10,$10,$10,$0C,$08,$08,$08,$08,$08,$04
LF968: .byte $00,$12
LF96A: .byte $FF,$00,$5D,$5D,$5D,$7F,$6B,$3E,$1C,$00,$00,$00,$00,$00,$00,$1E
       .byte $FF,$00,$02,$02,$02,$7E,$40,$7F,$7F,$00,$00,$00,$00,$00,$00,$1E
       .byte $FF,$00,$36,$14,$7F,$7F,$2A,$1C,$3E,$00,$00,$00,$00,$00,$00,$D8
       .byte $FF,$00,$24,$7E,$7F,$7F,$7A,$7C,$04,$00,$00,$00,$00,$00,$00,$48
       .byte $85,$DF,$A9,$00,$85,$E2,$40
LF9B1: INC    $B7     
       INC    $B6     
       LDA    #$FF    
       STA    $BB,X   
       RTS            

LF9BA: .byte $FF
LF9BB: .byte $FF
LF9BC: .byte $82
LF9BD: .byte $44,$88,$12,$90,$08,$84,$40,$82
LF9C5: .byte $10,$00,$00,$10,$20,$FF,$00
LF9CC: .byte $04,$FC
LF9CE: .byte $09,$08
LF9D0: .byte $00,$FF,$0F,$00,$00,$00,$00,$00,$00,$00,$FF,$00,$0C,$08,$1C,$3C
       .byte $0C,$06,$04,$00,$00,$00,$00,$00,$00
LF9E9: .byte $1E,$52,$07,$07,$07,$82,$99,$99,$82,$06,$22,$06,$06,$06,$2A,$04
       .byte $21,$22,$23,$24,$21,$22,$01,$82,$61,$04,$80,$10
LFA05: .byte $07,$25,$43,$61,$7F,$99
LFA0B: .byte $00,$32,$64,$64,$C8,$C8,$FF,$FF,$1C,$22,$63,$63,$63,$22,$1C,$00
       .byte $7F,$0C,$0C,$0C,$1C,$0C,$04,$00,$7F,$60,$60,$3E,$03,$03,$3E,$00
       .byte $7E,$03,$03,$3E,$03,$03,$7E,$00,$06,$7F,$26,$16,$0E,$06,$02,$00
       .byte $7E,$03,$03,$3E,$60,$60,$7E,$00,$3E,$63,$63,$7E,$60,$60,$3E,$00
       .byte $30,$18,$0C,$06,$03,$61,$7F,$00,$3E,$63,$63,$3E,$63,$63,$3E,$00
       .byte $3E,$03,$03,$3F,$63,$63,$3E,$00,$00,$00,$00,$00
LFA67: .byte $00,$00,$00,$00
LFA6B: .byte $41,$44,$22,$82,$11,$12,$48,$88,$09,$08,$10,$90,$21,$40,$02,$84
       .byte $41,$10,$08,$82,$00,$00,$00,$00,$68,$85,$10,$8D,$20,$00,$29,$0F
       .byte $D0,$1C,$AD,$DF,$00,$85,$B4,$B9,$84,$00,$85,$0F,$B9,$85,$00,$85
       .byte $0E,$A5,$80,$EA,$68,$85,$B2,$A5,$B6,$85,$08,$4C,$B0,$FE,$4C,$90
       .byte $FA,$68,$85,$20,$29,$0F,$85,$10,$D0,$13,$AD,$DF,$00,$8D,$B4,$00
       .byte $B9,$84,$00,$85,$0F,$B9,$85,$00,$85,$0E,$4C,$9E,$FA,$4C,$B8,$FA
       .byte $68,$85,$20,$29,$0F,$D0,$14,$A5,$DF,$85,$10,$EA,$85,$B4,$B9,$84
       .byte $00,$85,$0F,$B9,$85,$00,$85,$0E,$4C,$9E,$FA,$EA,$85,$10,$85,$B4
       .byte $EA,$B9,$84,$00,$85,$0F,$B9,$85,$00,$85,$0E,$4C,$9E,$FA,$68,$85
       .byte $20,$29,$0F,$D0,$1F,$AD,$DF,$00,$8D,$B4,$00,$85,$10,$B9,$84,$00
       .byte $85,$0F,$B9,$85,$00,$85,$0E,$A5,$80,$EA,$68,$85,$B2,$A5,$B6,$85
       .byte $08,$4C,$B0,$FE,$4C,$03,$FB,$68,$85,$20,$29,$0F,$D0,$1D,$AD,$DF
       .byte $00,$85,$B4,$EA,$B6,$84,$85,$10,$86,$0F,$B9,$85,$00,$85,$0E,$EA
       .byte $EA,$68,$85,$B2,$A5,$B6,$85,$08,$4C,$B0,$FE,$4C,$2C,$FB,$68,$85
       .byte $20,$29,$0F,$D0,$1E,$AD,$DF,$00,$85,$B4,$B6,$85,$B9,$84,$00,$85
       .byte $0F,$85,$10,$A5,$80,$86,$0E,$A5,$80,$68,$85,$B2,$A5,$B6,$85,$08
       .byte $4C,$B0,$FE,$4C,$53,$FB,$68,$85,$20,$29,$0F,$D0,$1D,$AD,$DF,$00
       .byte $85,$B4,$B6,$85,$B9,$84,$00,$85,$0F,$86,$0E,$EA,$85,$10,$EA,$EA
       .byte $68,$85,$B2,$A5,$B6,$85,$08,$4C,$B0,$FE,$4C,$7B,$FB,$68,$85,$20
       .byte $29,$0F,$D0,$1E,$AD,$DF,$00,$85,$B4,$B6,$85,$B9,$84,$00,$85,$0F
       .byte $86,$0E,$68,$85,$B2,$85,$10,$A5,$80,$A5,$80,$A5,$B6,$85,$08,$4C
       .byte $B0,$FE,$4C,$A2,$FB,$68,$85,$20,$29,$0F,$D0,$1E,$AD,$DF,$00,$85
       .byte $B4,$B6,$85,$B9,$84,$00,$85,$0F,$86,$0E,$68,$85,$B2,$EA,$A5,$80
       .byte $85,$10,$A5,$B6,$8D,$08,$00,$4C,$B0,$FE,$4C,$CA,$FB,$4C,$F8,$FB
       .byte $68,$84,$11,$8D,$21,$00,$29,$0F,$D0,$F3,$AD,$E0,$00,$85,$B5,$B9
       .byte $84,$00,$85,$0F,$B9,$85,$00,$85,$0E,$A5,$80,$EA,$68,$85,$B3,$A5
       .byte $B6,$85,$08,$4C,$B3,$FF,$68,$85,$21,$29,$0F,$85,$11,$D0,$13,$AD
       .byte $E0,$00,$8D,$B5,$00,$B9,$84,$00,$85,$0F,$B9,$85,$00,$85,$0E,$4C
       .byte $06,$FC,$4C,$1D,$FC,$68,$85,$21,$29,$0F,$D0,$14,$A5,$E0,$85,$11
       .byte $EA,$85,$B5,$B9,$84,$00,$85,$0F,$B9,$85,$00,$85,$0E,$4C,$06,$FC
       .byte $EA,$85,$11,$85,$B5,$EA,$B9,$84,$00,$85,$0F,$B9,$85,$00,$85,$0E
       .byte $4C,$06,$FC,$68,$85,$21,$29,$0F,$D0,$1F,$AD,$E0,$00,$8D,$B5,$00
       .byte $85,$11,$B9,$84,$00,$85,$0F,$B9,$85,$00,$85,$0E,$A5,$80,$EA,$68
       .byte $85,$B3,$A5,$B6,$85,$08,$4C,$B3,$FF,$4C,$68,$FC,$68,$85,$21,$29
       .byte $0F,$D0,$1D,$AD,$E0,$00,$85,$B5,$EA,$B6,$84,$85,$11,$86,$0F,$B9
       .byte $85,$00,$85,$0E,$EA,$EA,$68,$85,$B3,$A5,$B6,$85,$08,$4C,$B3,$FF
       .byte $4C,$91,$FC,$68,$85,$21,$29,$0F,$D0,$1E,$AD,$E0,$00,$85,$B5,$B6
       .byte $85,$B9,$84,$00,$85,$0F,$85,$11,$A5,$80,$86,$0E,$A5,$80,$68,$85
       .byte $B3,$A5,$B6,$85,$08,$4C,$B3,$FF,$4C,$B8,$FC,$4C,$E3,$FC,$68,$85
       .byte $21,$29,$0F,$D0,$F6,$AD,$E0,$00,$85,$B5,$B6,$85,$B9,$84,$00,$85
       .byte $0F,$86,$0E,$EA,$85,$11,$EA,$EA,$68,$85,$B3,$A5,$B6,$85,$08,$4C
       .byte $B3,$FF,$68,$85,$21,$29,$0F,$D0,$1E,$AD,$E0,$00,$85,$B5,$B6,$85
       .byte $B9,$84,$00,$85,$0F,$86,$0E,$68,$85,$B3,$85,$11,$A5,$80,$A5,$80
       .byte $A5,$B6,$85,$08,$4C,$B3,$FF,$4C,$07,$FD,$68,$85,$21,$29,$0F,$D0
       .byte $1E,$AD,$E0,$00,$85,$B5,$B6,$85,$B9,$84,$00,$85,$0F,$86,$0E,$68
       .byte $85,$B3,$EA,$A5,$80,$85,$11,$A5,$B6,$8D,$08,$00,$4C,$B3,$FF,$4C
       .byte $2F,$FD
LFD4D: STA    WSYNC   
LFD4F: LDY    $B2     
       LDA    LF96A,Y 
       BMI    LFD6B   
       STA    GRP0    
       LDY    $B3     
       LDA    LF96A,Y 
       BMI    LFD7B   
       STA    GRP1    
       DEC    $B2     
       DEC    $B3     
       STA.w  $002B   
       JMP    LFD91   
LFD6B: LDY    $B3     
       LDA    LF96A,Y 
       BMI    LFD82   
       STA    GRP1    
       DEC    $B3     
       NOP            
       NOP            
       JMP    LFD8B   
LFD7B: DEC    $B2     
       NOP            
       NOP            
       JMP    LFD8B   
LFD82: LDA    $80     
       NOP            
       NOP            
       NOP            
       NOP            
       JMP    LFD8B   
LFD8B: STA.w  $002B   
       JMP    LFD91   
LFD91: LDY    $B3     
       LDX    LF96A,Y 
       BMI    LFDB3   
       LDA    $80     
       DEC    $B3     
LFD9C: LDA    $B7     
       LDY    $B4     
       BNE    LFDB9   
       LDY    $B8     
       STA    COLUPF  
       STX    GRP1    
       LDA.wy $0082,Y 
       STA    PF1     
       LDA.wy $0083,Y 
       STA    PF2     
       RTS            

LFDB3: LDX    #$00    
       NOP            
       JMP    LFD9C   
LFDB9: STA.w  $0008   
       DEC    $B4     
       STX    GRP1    
       LDY    $B2     
       LDA    LF96A,Y 
       BMI    LFDDA   
       STA    GRP0    
       LDY    $B8     
       LDA.wy $0082,Y 
       STA    PF1     
       LDA.wy $0083,Y 
       STA    PF2     
       DEC    $B2     
LFDD7: JMP    LFDEB   
LFDDA: LDY    $B8     
       LDA.wy $0082,Y 
       STA    PF1     
       LDA.wy $0083,Y 
       STA    PF2     
       NOP            
       NOP            
       JMP    LFDD7   
LFDEB: LDA.wy $0084,Y 
       STA.w  $000F   
       LDA.wy $0085,Y 
       STA    PF1     
       LDY    $B9     
       LDX    LF9BA,Y 
       LDA    $80     
       LDA    $80     
       NOP            
       LDA    $B6     
       STA    COLUPF  
       LDY    $B3     
       LDA    LF96A,Y 
       BMI    LFE46   
       STA    GRP1    
       STX    PF1     
       LDY    $B2     
       LDA    LF96A,Y 
       BMI    LFE36   
       STA    GRP0    
       LDY    $B9     
       LDA    LF9BB,Y 
       STA    PF2     
       DEC    $B2     
       DEC    $B3     
       LDY    $B2     
       LDX    LF96A,Y 
       BMI    LFE7D   
       DEC    $B2     
       DEC    $B5     
       LDA    $B7     
       STA    COLUPF  
       NOP            
       JMP    LFF01   
LFE36: LDY    $B9     
       LDA    LF9BB,Y 
       STA    PF2     
       DEC    $B3     
       NOP            
       NOP            
       LDA    $80     
       JMP    LFE9B   
LFE46: STX    PF1     
       LDY    $B2     
       LDA    LF96A,Y 
       BMI    LFE8A   
       STA    GRP0    
       LDY    $B9     
       LDA    LF9BB,Y 
       STA    PF2     
       DEC    $B2     
       LDY    $B2     
       LDX    LF96A,Y 
       BMI    LFE9B   
       DEC    $B2     
       LDA    $B7     
       LDY    $B5     
       BNE    LFEA7   
       LDY    $80     
LFE6B: LDY    $B8     
       STA.w  $0008   
       STX    GRP0    
       LDA.wy $0082,Y 
       STA    PF1     
       LDA.wy $0083,Y 
       STA    PF2     
       RTS            

LFE7D: LDX    #$00    
       NOP            
       NOP            
       DEC    $B5     
       LDA    $B7     
       STA    COLUPF  
       JMP    LFF01   
LFE8A: LDY    $B9     
       LDA    LF9BB,Y 
       STA    PF2     
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       JMP    LFE9B   
LFE9B: LDX    #$00    
       LDA    $B7     
       LDY    $B5     
       NOP            
       BNE    LFEA7   
       JMP    LFE6B   
LFEA7: DEC    $B5     
       LDY    $80     
       STA    COLUPF  
       JMP    LFF01   
LFEB0: .byte $85,$2A,$A4,$B3,$B9,$6A,$F9,$30,$37,$85,$1C,$A4,$B9,$B9,$BA,$F9
       .byte $85,$0E,$B9,$BB,$F9,$85,$0F,$C6,$B3,$A5,$B2,$29,$70,$A8,$B9,$79
       .byte $F9,$8D,$06,$00,$A2,$00,$A5,$B7,$A4,$B5,$D0,$CB,$A4,$B8,$86,$1B
       .byte $8D,$08,$00,$B9,$83,$00,$85,$0F,$B9,$82,$00,$85,$0E,$85,$2B,$60
       .byte $A4,$B9,$B9,$BA,$F9,$85,$0E,$B9,$BB,$F9,$85,$0F,$EA,$EA,$4C,$C9
       .byte $FE
LFF01: STX    GRP0    
       LDY    $B3     
       LDA    LF96A,Y 
       BMI    LFF35   
       STA    GRP1    
       LDY    $B8     
       LDA.wy $0082,Y 
       STA    PF1     
       LDA.wy $0083,Y 
       STA    PF2     
       DEC    $B3     
LFF1A: LDA    $80     
       LDA.wy $0084,Y 
       STA    PF2     
       LDA.wy $0085,Y 
       STA    PF1     
       LDY    $B9     
       LDX    LF9BA,Y 
       LDA    $80     
       NOP            
       LDA    $B6     
       STA    COLUPF  
       JMP    LFF46   
LFF35: LDY    $B8     
       LDA.wy $0082,Y 
       STA    PF1     
       LDA.wy $0083,Y 
       STA    PF2     
       NOP            
       NOP            
       JMP    LFF1A   
LFF46: LDY    $B3     
       LDA    LF96A,Y 
       BMI    LFF8A   
       STA    GRP1    
       STX    PF1     
       LDY    $B2     
       LDA    LF96A,Y 
       BMI    LFF7C   
       STA    GRP0    
       LDY    $B9     
       LDA    LF9BB,Y 
       STA    PF2     
       DEC    $B2     
       DEC    $B3     
LFF65: DEC    $BA     
       BNE    LFF6C   
       JMP    LF1BD   
LFF6C: LDY    $BA     
       LDA    LF948,Y 
       STA    $B8     
       LDA    LF927,Y 
       STA.w  $00B9   
       JMP    LFD4F   
LFF7C: LDY    $B9     
       LDA    LF9BB,Y 
       STA    PF2     
       DEC    $B3     
       NOP            
       NOP            
       JMP    LFF65   
LFF8A: STX    PF1     
       LDY    $B2     
       LDA    LF96A,Y 
       BMI    LFFA3   
       STA    GRP0    
       LDY    $B9     
       LDA    LF9BB,Y 
       STA    PF2     
       DEC    $B2     
       NOP            
       NOP            
       JMP    LFF65   
LFFA3: LDY    $B9     
       LDA    LF9BB,Y 
       STA    PF2     
       NOP            
       NOP            
       NOP            
       NOP            
       LDA    $80     
       JMP    LFF65   
LFFB3: .byte $85,$2A,$A4,$B2,$B9,$6A,$F9,$30,$2B,$85,$1B,$A4,$B9,$B9,$BA,$F9
       .byte $85,$0E,$B9,$BB,$F9,$85,$0F,$C6,$B2,$A5,$B3,$29,$70,$A8,$B9,$79
       .byte $F9,$85,$07,$C6,$BA,$A4,$BA,$B9,$48,$F9,$85,$B8,$B9,$27,$F9,$85
       .byte $B9,$4C,$4F,$FD,$A4,$B9,$B9,$BA,$F9,$85,$0E,$B9,$BB,$F9,$85,$0F
       .byte $EA,$EA,$4C,$CC,$FF
LFFF8: .byte $0C,$04,$08,$09,$00,$F0,$AA,$F9
