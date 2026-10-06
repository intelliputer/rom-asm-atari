; Disassembly of roms/Sssnake.bin
; Disassembled Tue Oct  6 15:22:44 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Sssnake.bin
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
HMP0    =  $20
HMP1    =  $21
HMM0    =  $22
RESMP0  =  $28
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
SWCHA   =  $0280
SWCHB   =  $0282
SWBCNT  =  $0283
INTIM   =  $0284
TIM64T  =  $0296

       ORG $F000

START:
       SEI            
       CLD            
       LDX    #$FF    
       TXS            
       JSR    LF3A8   
LF008: JSR    LF3BC   
LF00B: LDA    #$02    
       STA    WSYNC   
       STA    VBLANK  
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    VSYNC   
       INC    $D0     
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    WSYNC   
       STA    VSYNC   
       LDA    #$2C    
       STA    TIM64T  
       JSR    LF3E0   
LF02D: LDA    INTIM   
       BNE    LF02D   
       STA    WSYNC   
       STA    HMOVE   
       STA    VBLANK  
       STA    WSYNC   
       STA    HMCLR   
       STA    CXCLR   
       STA    $BC     
       STA    $BD     
       STA    $CF     
       LDX    $B8     
       LDA    LFFF4,X 
       STA    COLUBK  
       LDX    #$01    
LF04D: LDA    $C0,X   
       AND    #$0F    
       STA    $C5     
       ASL            
       ASL            
       CLC            
       ADC    $C5     
       STA    $BE,X   
       LDA    $C0,X   
       AND    #$F0    
       LSR            
       LSR            
       STA    $C5     
       LSR            
       LSR            
       CLC            
       ADC    $C5     
       STA    $C2,X   
       DEX            
       BPL    LF04D   
       INC    $CF     
       INC    $CF     
       LDX    $B8     
       LDA    LFFF5,X 
       STA    COLUPF  
LF077: STA    WSYNC   
       LDA    $BC     
       STA    PF1     
       LDY    $C3     
       LDA    LFFAE,Y 
       AND    #$F0    
       STA    $BC     
       LDY    $BF     
       LDA    LFFAE,Y 
       AND    #$0F    
       ORA    $BC     
       STA    $BC     
       LDA    $BD     
       STA    PF1     
       LDY    $C2     
       LDA    LFFAE,Y 
       AND    #$F0    
       STA    $BD     
       LDY    $BE     
       LDA    LFFAE,Y 
       AND    #$0F    
       ORA    $BD     
       STA    $BD     
       STA    WSYNC   
       INC    $CF     
       LDA    $CF     
       CMP    #$0D    
       BCS    LF0C8   
       LDA    $BC     
       STA    PF1     
       INC    $BF     
       INC    $C3     
       INC    $BE     
       INC    $C2     
       LDA    $BD     
       STA    PF1     
       INC    $CF     
       JMP    LF077   
LF0C8: LDA    #$00    
       STA    PF1     
       STA    WSYNC   
       JSR    LFF2D   
       INC    $CF     
       STA    WSYNC   
       INC    $CF     
       LDA    $C4     
       BEQ    LF0E5   
       DEC    $C4     
       AND    #$08    
       BEQ    LF0E5   
       LDA    #$0F    
       BNE    LF0E7   
LF0E5: LDA    #$00    
LF0E7: STA    COLUBK  
       STA    WSYNC   
       INC    $CF     
       LDY    $E5     
       LDA    $B8     
       EOR    #$06    
       BNE    LF0F7   
       STA    COLUP1  
LF0F7: LDA    $D3     
       ASL            
       ASL            
       ASL            
       ASL            
       LDX    $B8     
       ORA    LFFF6,X 
       LDX    #$00    
       STA    COLUP0  
       LDA    SWCHA   
       EOR    #$FF    
       BEQ    LF113   
       ORA    $B9     
       STA    $B9     
       STX    $B8     
LF113: STA    WSYNC   
       JSR    LF2D5   
       STA    WSYNC   
       JSR    LF2E9   
       STX    $E7     
       LDX    $B8     
       LDA    LFFF5,X 
       STA    COLUPF  
       LDX    $E7     
       LDA    #$04    
       STA    $D0     
       STA    WSYNC   
       LDA    #$A0    
       STA    PF0     
       LDA    #$55    
       STA    PF1     
       LDA    #$AA    
       STA    PF2     
LF13A: JSR    LF2D5   
       DEC    $D0     
       STA    WSYNC   
       JSR    LF2E9   
       DEC    $D0     
       STA    WSYNC   
       BNE    LF13A   
       LDA    #$00    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       STX    $E7     
       LDX    $B8     
       LDA    LFFF7,X 
       LDX    $E7     
       STA    COLUPF  
       JSR    LF2D5   
       STA    WSYNC   
       JSR    LF2E9   
       JSR    LF315   
       STA    WSYNC   
       JSR    LF2D5   
       TYA            
       CLC            
       ADC    #$08    
       TAY            
       LDA    $E9     
       STA    $E8     
       STA    WSYNC   
       JSR    LF2E9   
       LDA    $80,X   
       STA    $CC     
       INX            
       LDA    $80,X   
       STA    $CD     
       INX            
       STX    $E7     
       LDX    #$01    
       JSR    LF331   
       TYA            
       SEC            
       SBC    #$08    
       TAY            
       LDX    $E7     
       JSR    LF2D5   
       STA    WSYNC   
       JSR    LF2E9   
       LDA    $CF     
       EOR    #$40    
       BEQ    LF1D2   
       LDA    $CF     
       EOR    #$C0    
       BNE    LF1CF   
       STA    WSYNC   
       DEC    $BB     
       BNE    LF1BF   
       DEC    $BA     
       DEC    $BA     
       DEC    $BA     
       DEC    $BA     
       BNE    LF1BF   
       LDA    $B9     
       BNE    LF1C9   
       LDA    #$06    
       STA    $B8     
LF1BF: LDY    #$08    
LF1C1: STA    WSYNC   
       DEY            
       BNE    LF1C1   
       JMP    LF00B   
LF1C9: LDA    #$00    
       STA    $B9     
       BEQ    LF1BF   
LF1CF: JMP    LF113   
LF1D2: LDY    $F1     
LF1D4: STA    WSYNC   
       JSR    LF301   
       STA    WSYNC   
       JSR    LF2E9   
       LDA    #$04    
       STA    $D0     
       STX    $E7     
       LDX    $B8     
       LDA    LFFF5,X 
       LDX    $E7     
       STA    COLUPF  
LF1ED: LDA    #$A0    
       STA    WSYNC   
       STA    PF0     
       LDA    #$55    
       STA    PF1     
       LDA    #$00    
       STA    PF2     
       CLC            
       LDA    $CE     
       ADC    $CF     
       AND    #$F0    
       EOR    #$F0    
       BEQ    LF20C   
       NOP            
       NOP            
       NOP            
       NOP            
       BNE    LF212   
LF20C: LDA    LFF1D,Y 
       STA    GRP0    
       INY            
LF212: LDA    #$00    
       STA    PF0     
       LDA    #$01    
       STA    PF1     
       LDA    #$AA    
       STA    PF2     
       INC    $CF     
       DEC    $D0     
       LDA    #$A0    
       STA    WSYNC   
       STA    PF0     
       LDA    #$55    
       STA    PF1     
       LDA    #$00    
       STA    PF2     
       CLC            
       LDA    $E6     
       ADC    $CF     
       AND    #$FC    
       EOR    #$FC    
       BEQ    LF243   
       LDA    #$00    
       STA    ENAM0   
       NOP            
       NOP            
       BEQ    LF24A   
LF243: LDA    #$02    
       STA    ENAM0   
       NOP            
       NOP            
       NOP            
LF24A: LDA    #$00    
       STA    PF0     
       LDA    #$01    
       STA    PF1     
       LDA    #$AA    
       STA    PF2     
       INC    $CF     
       DEC    $D0     
       BNE    LF1ED   
       STA    WSYNC   
       LDA    #$00    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       STX    $E7     
       LDX    $B8     
       LDA    LFFF7,X 
       LDX    $E7     
       STA    COLUPF  
       JSR    LF301   
       STA    WSYNC   
       JSR    LF2E9   
       JSR    LF315   
       STA    WSYNC   
       JSR    LF301   
       LDA    $CE     
       STA    $E8     
       STA    WSYNC   
       CLC            
       LDA    $E6     
       ADC    $CF     
       AND    #$FC    
       EOR    #$FC    
       BEQ    LF298   
       LDA    #$00    
       STA    ENAM0   
       BEQ    LF29C   
LF298: LDA    #$02    
       STA    ENAM0   
LF29C: LDA    $80,X   
       STA    $CC     
       INX            
       LDA    $80,X   
       STA    $CD     
       LDA    $F0     
       AND    #$10    
       BEQ    LF2B3   
       STA    RESP0   
       LDA    $F0     
       AND    #$EF    
       STA    $F0     
LF2B3: INC    $CF     
       INX            
       STX    $E7     
       LDX    #$00    
       JSR    LF331   
       JSR    LF301   
       LDX    $E7     
       STA    WSYNC   
       JSR    LF2E9   
       LDA    $CF     
       EOR    #$90    
       BEQ    LF2D0   
       JMP    LF1D4   
LF2D0: LDY    $E5     
       JMP    LF113   
LF2D5: CLC            
       LDA    $E9     
       ADC    $CF     
       AND    #$F0    
       EOR    #$F0    
       BNE    LF2E6   
       LDA    LFF25,Y 
       STA    GRP1    
       INY            
LF2E6: INC    $CF     
       RTS            

LF2E9: CLC            
       LDA    $E6     
       ADC    $CF     
       AND    #$FC    
       EOR    #$FC    
       BNE    LF2FA   
       LDA    #$02    
       STA    ENAM0   
       BNE    LF2FE   
LF2FA: LDA    #$00    
       STA    ENAM0   
LF2FE: INC    $CF     
       RTS            

LF301: CLC            
       LDA    $CE     
       ADC    $CF     
       AND    #$F0    
       EOR    #$F0    
       BNE    LF312   
       LDA    LFF1D,Y 
       STA    GRP0    
       INY            
LF312: INC    $CF     
       RTS            

LF315: LDA    $80,X   
       AND    #$F0    
       STA    $CB     
       LDA    #$0F    
       AND    $80,X   
       ASL            
       ASL            
       ASL            
       ASL            
       STA    $C8     
       INX            
       LDA    $80,X   
       STA    $C9     
       INX            
       LDA    $80,X   
       STA    $CA     
       INX            
       RTS            

LF331: LDA    #$04    
       STA    $D0     
LF335: LDA    $C8     
       STA    WSYNC   
       STA    PF0     
       LDA    $C9     
       STA    PF1     
       LDA    $CA     
       STA    PF2     
       LDA    $E8     
       ADC    $CF     
       AND    #$F0    
       EOR    #$F0    
       BEQ    LF353   
       NOP            
       NOP            
       NOP            
       NOP            
       BNE    LF359   
LF353: LDA    LFF1D,Y 
       STA    GRP0,X  
       INY            
LF359: LDA    $CB     
       STA    PF0     
       LDA    $CC     
       STA    PF1     
       LDA    $CD     
       STA    PF2     
       INC    $CF     
       DEC    $D0     
       LDA    $C8     
       STA    WSYNC   
       STA    PF0     
       LDA    $C9     
       STA    PF1     
       LDA    $CA     
       STA    PF2     
       CLC            
       LDA    $E6     
       ADC    $CF     
       AND    #$FC    
       EOR    #$FC    
       BNE    LF388   
       LDA    #$02    
       STA    ENAM0   
       BNE    LF38D   
LF388: LDA    #$00    
       STA    ENAM0   
       NOP            
LF38D: LDA    $CB     
       STA    PF0     
       LDA    $CC     
       STA    PF1     
       LDA    $CD     
       STA    PF2     
       INC    $CF     
       DEC    $D0     
       BNE    LF335   
       LDA    #$00    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       RTS            

LF3A8: LDA    #$00    
       LDX    #$F3    
LF3AC: STA    VSYNC,X 
       DEX            
       BNE    LF3AC   
       LDA    #$0F    
       STA    $C7     
       LDA    #$10    
       STA    NUSIZ0  
       STA    $D6     
       RTS            

LF3BC: LDA    #$02    
       STA    RESMP0  
       STA    CXCLR   
       LDA    #$00    
       STA    $F1     
       LDA    #$57    
       STA    $D4     
       LDA    #$19    
       STA    $D2     
       LDA    #$01    
       STA    $D3     
       LDA    #$10    
       STA    SWBCNT  
       STA    $F0     
       RTS            

LF3DA: .byte $F0,$60,$00,$00,$00,$00
LF3E0: LDA    SWCHB   
       AND    #$01    
       BNE    LF3F6   
       LDA    $C6     
       BEQ    LF3F3   
       DEC    $C6     
       JSR    LF3A8   
       JSR    LF3BC   
LF3F3: JMP    LF492   
LF3F6: STA    $C6     
       LDA    $D6     
       ROL            
       BCC    LF430   
       LDA    $EB     
       BEQ    LF40A   
       DEC    $EB     
       LDA    #$00    
       STA    AUDV1   
LF407: JMP    LF492   
LF40A: STA    AUDV0   
       LDA    $D6     
       AND    #$10    
       BEQ    LF407   
       LDA    PF0     
       AND    #$80    
       BNE    LF407   
       STA    $D6     
       LDA    #$0F    
       STA    $C7     
       LDA    #$0C    
       STA    $ED     
       LDA    #$13    
       STA    $EE     
       LDA    #$00    
       STA    $EF     
       LDX    #$FF    
       TXS            
       JMP    LF008   
LF430: LDA    WSYNC   
       ROL            
       BCC    LF455   
       LDA    #$3F    
       STA    $C4     
       LDA    $D6     
       ORA    #$80    
       STA    $D6     
       LDA    #$89    
       STA    $F1     
       LDA    #$0A    
       STA    AUDV0   
       LDA    #$08    
       STA    AUDC0   
       LDA    #$08    
       STA    AUDF0   
       LDA    #$80    
       STA    $EB     
       BNE    LF492   
LF455: LDA    NUSIZ0  
       ROL            
       BCC    LF460   
       LDA    #$40    
       ORA    $D6     
       STA    $D6     
LF460: LDA    $F0     
       ROL            
       ROL            
       BCC    LF46C   
       JSR    LFBCC   
       JMP    LF48F   
LF46C: SEC            
       ROR            
       ROR            
       STA    $F0     
       LDA    $EB     
       BEQ    LF47A   
       DEC    $EB     
       JMP    LF48F   
LF47A: JSR    LFEF8   
       LDA    $C7     
       AND    #$0F    
       TAX            
       LDA    LFF5B,X 
       AND    $F5     
       STA    $EB     
       JSR    LF72C   
       JSR    LF560   
LF48F: JSR    LF8D8   
LF492: LDA    $D4     
       EOR    #$FF    
       STA    $CE     
       LDA    $D5     
       EOR    #$FF    
       STA    $E6     
       LDA    $D7     
       EOR    #$FF    
       STA    $E9     
       RTS            

LF4A5: LDA    $DA     
       AND    #$0F    
       ORA    VSYNC,X 
       STA    VSYNC,X 
       INX            
       LDA    $DB     
       ORA    VSYNC,X 
       STA    VSYNC,X 
       INX            
       LDA    $DC     
       ORA    VSYNC,X 
       STA    VSYNC,X 
       DEX            
       DEX            
       DEX            
       DEX            
       DEX            
       LDA    $DF     
       ORA    VSYNC,X 
       STA    VSYNC,X 
       DEX            
       LDA    $DE     
       ORA    VSYNC,X 
       STA    VSYNC,X 
       DEX            
       LDA    $DD     
       ORA    VSYNC,X 
       STA    VSYNC,X 
       RTS            

LF4D5: LDA    $DD     
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    $DA     
       ORA    VSYNC,X 
       STA    VSYNC,X 
       INX            
       LDA    $DB     
       ORA    VSYNC,X 
       STA    VSYNC,X 
       INX            
       LDA    $DC     
       ORA    VSYNC,X 
       STA    VSYNC,X 
       INX            
       LDA    $DE     
       ORA    VSYNC,X 
       STA    VSYNC,X 
       INX            
       LDA    $DF     
       ORA    VSYNC,X 
       STA    VSYNC,X 
       RTS            

LF4FE: LDA    $DA     
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    $DD     
       ORA    VSYNC,X 
       STA    VSYNC,X 
       INX            
       LDA    $DE     
       ORA    VSYNC,X 
       STA    VSYNC,X 
       INX            
       LDA    $DF     
       ORA    VSYNC,X 
       STA    VSYNC,X 
       INX            
       LDA    $DB     
       ORA    VSYNC,X 
       STA    VSYNC,X 
       INX            
       LDA    $DC     
       ORA    VSYNC,X 
       STA    VSYNC,X 
       RTS            

LF527: LDA    $DA     
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    VSYNC,X 
       STA    VSYNC,X 
       INX            
       INX            
       INX            
       LDA    $DB     
       ORA    VSYNC,X 
       STA    VSYNC,X 
       INX            
       LDA    $DC     
       ORA    VSYNC,X 
       STA    VSYNC,X 
       DEX            
       DEX            
       DEX            
       DEX            
       DEX            
       LDA    $DF     
       ORA    VSYNC,X 
       STA    VSYNC,X 
       DEX            
       LDA    $DE     
       ORA    VSYNC,X 
       STA    VSYNC,X 
       DEX            
       LDA    $DD     
       ASL            
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    VSYNC,X 
       STA    VSYNC,X 
       RTS            

LF560: ORA    $DA     
       ORA    $DB     
       ORA    $DC     
       ORA    $DD     
       ORA    $DE     
       ORA    $DF     
       BNE    LF588   
       STA    $DB     
       STA    $DC     
       STA    $EC     
       LDA    #$01    
       STA    $DA     
       STA    $ED     
       LDA    #$0A    
       STA    $DD     
       DEC    $C7     
       LDA    #$55    
       STA    $DE     
       LDA    #$2A    
       STA    $DF     
LF588: LDA    $ED     
       ROR            
       BCC    LF5BA   
       LDA    $EC     
       SBC    #$13    
       BMI    LF5A4   
       LDA    $EC     
       SBC    #$27    
       BMI    LF5AF   
       JSR    LF6BC   
       INC    $ED     
       LDA    #$03    
       STA    $E6     
       BNE    LF5FE   
LF5A4: JSR    LF684   
       INC    $EC     
       LDA    #$00    
       STA    $E6     
       BEQ    LF5FE   
LF5AF: JSR    LF6F4   
       INC    $EC     
       LDA    #$01    
       STA    $E6     
       BNE    LF5FE   
LF5BA: LDA    $EC     
       BEQ    LF5CE   
       SEC            
       SBC    #$15    
       BMI    LF5DF   
       JSR    LF6BC   
       DEC    $EC     
       LDA    #$03    
       STA    $E6     
       BNE    LF5FE   
LF5CE: LDA    $ED     
       EOR    #$0C    
       BEQ    LF5EA   
       JSR    LF684   
       INC    $ED     
       LDA    #$00    
       STA    $E6     
       BEQ    LF5FE   
LF5DF: JSR    LF62C   
       DEC    $EC     
       LDA    #$02    
       STA    $E6     
       BNE    LF5FE   
LF5EA: LDA    #$00    
       STA    $DA     
       STA    $DB     
       STA    $DC     
       STA    $DD     
       STA    $DE     
       STA    $DF     
       LDA    #$02    
       STA    $E6     
       BNE    LF5FE   
LF5FE: CLC            
       LDY    $ED     
       TYA            
       EOR    #$0C    
       BEQ    LF62B   
       LDA    #$80    
LF608: DEY            
       BEQ    LF60F   
       ADC    #$05    
       BNE    LF608   
LF60F: TAX            
       ROR    $E6     
       BCC    LF620   
       ROR    $E6     
       BCC    LF61C   
       JSR    LF527   
       RTS            

LF61C: JSR    LF4D5   
       RTS            

LF620: ROR    $E6     
       BCC    LF628   
       JSR    LF4FE   
       RTS            

LF628: JSR    LF4A5   
LF62B: RTS            

LF62C: CLC            
       LDA    $DC     
       STA    $E6     
       LDA    $DB     
       STA    $E7     
       LDA    $DA     
       STA    $E8     
       JSR    LF673   
       LDA    $E6     
       STA    $DC     
       LDA    $E7     
       STA    $DB     
       LDA    $E8     
       STA    $DA     
       LDA    $DF     
       STA    $E6     
       LDA    $DE     
       STA    $E7     
       LDA    $DD     
       STA    $E8     
       JSR    LF673   
       LDA    $E6     
       STA    $DF     
       LDA    $E7     
       STA    $DE     
       LDA    $E8     
       STA    $DD     
       RTS            

LF664: ROL    $E6     
       LDA    #$10    
       AND    $E6     
       ROL            
       ROL            
       ROL            
       ROL            
       ROR    $E7     
       ROL    $E8     
       RTS            

LF673: ROR    $E6     
       ROL    $E7     
       LDA    #$00    
       ROR            
       ROR            
       ROR            
       ROR            
       ORA    $E8     
       STA    $E8     
       ROR    $E8     
       RTS            

LF684: CLC            
       LDA    $DF     
       STA    $E6     
       LDA    $DE     
       STA    $E7     
       LDA    $DD     
       STA    $E8     
       JSR    LF673   
       LDA    $E6     
       STA    $DF     
       LDA    $E7     
       STA    $DE     
       LDA    $E8     
       STA    $DD     
       LDA    $DA     
       STA    $E6     
       LDA    $DB     
       STA    $E7     
       LDA    $DC     
       STA    $E8     
       JSR    LF664   
       LDA    $E6     
       STA    $DA     
       LDA    $E7     
       STA    $DB     
       LDA    $E8     
       STA    $DC     
       RTS            

LF6BC: CLC            
       LDA    $DD     
       STA    $E6     
       LDA    $DE     
       STA    $E7     
       LDA    $DF     
       STA    $E8     
       JSR    LF664   
       LDA    $E6     
       STA    $DD     
       LDA    $E7     
       STA    $DE     
       LDA    $E8     
       STA    $DF     
       LDA    $DC     
       STA    $E6     
       LDA    $DB     
       STA    $E7     
       LDA    $DA     
       STA    $E8     
       JSR    LF673   
       LDA    $E6     
       STA    $DC     
       LDA    $E7     
       STA    $DB     
       LDA    $E8     
       STA    $DA     
       RTS            

LF6F4: CLC            
       LDA    $DA     
       STA    $E6     
       LDA    $DB     
       STA    $E7     
       LDA    $DC     
       STA    $E8     
       JSR    LF664   
       LDA    $E6     
       STA    $DA     
       LDA    $E7     
       STA    $DB     
       LDA    $E8     
       STA    $DC     
       LDA    $DD     
       STA    $E6     
       LDA    $DE     
       STA    $E7     
       LDA    $DF     
       STA    $E8     
       JSR    LF664   
       LDA    $E6     
       STA    $DD     
       LDA    $E7     
       STA    $DE     
       LDA    $E8     
       STA    $DF     
       RTS            

LF72C: LDA    #$00    
       ORA    $E0     
       ORA    $E1     
       ORA    $E2     
       BNE    LF748   
       STA    $EE     
       LDA    #$FF    
       AND    $F5     
       STA    $E0     
       LDA    #$0F    
       AND    $F5     
       STA    $E1     
       LDA    #$0B    
       STA    $EF     
LF748: LDA    $EE     
       EOR    #$13    
       BNE    LF75A   
       LDA    $EF     
       BNE    LF75A   
       STA    $E0     
       STA    $E1     
       STA    $E2     
       BEQ    LF72C   
LF75A: LDA    $E0     
       ROL            
       ROL    $E1     
       ROL    $E2     
       ROL    $E0     
       LDA    $EE     
       ROR            
       BCC    LF775   
       LDA    $EF     
       BEQ    LF771   
       DEC    $EF     
       JMP    LF781   
LF771: INC    $EE     
       BNE    LF781   
LF775: LDA    $EF     
       EOR    #$0B    
       BEQ    LF77F   
       INC    $EF     
       BNE    LF781   
LF77F: INC    $EE     
LF781: LDX    $EE     
       LDA    LFF00,X 
       STA    $D1     
       AND    #$07    
       STA    $C8     
       LDA    $D1     
       AND    #$38    
       LSR            
       LSR            
       LSR            
       STA    $C9     
       LDA    $C8     
       ROR            
       BCS    LF7D4   
       ROR            
       BCS    LF7C0   
       ROR            
       BCC    LF7B4   
       LDA    #$84    
       STA    $E9     
       LDA    $C9     
       SBC    #$02    
       STA    $E8     
       LDA    #$83    
       STA    $E7     
       LDA    #$01    
       STA    $E6     
       BNE    LF814   
LF7B4: LDX    $C9     
       DEX            
       DEX            
       STX    $E8     
       LDA    #$80    
       STA    $E9     
       BNE    LF814   
LF7C0: LDA    #$01    
       STA    $E6     
       LDA    #$81    
       STA    $E7     
       LDA    $C9     
       SBC    #$02    
       STA    $E8     
       LDA    #$82    
       STA    $E9     
       BNE    LF814   
LF7D4: ROR            
       BCS    LF802   
       ROR            
       BCS    LF7EE   
       LDA    #$81    
       STA    $E9     
       LDX    $C9     
       INX            
       INX            
       STX    $E8     
       LDA    #$80    
       STA    $E7     
       LDA    #$02    
       STA    $E6     
       BNE    LF814   
LF7EE: LDA    #$80    
       STA    $E9     
       LDA    $C9     
       SBC    #$02    
       STA    $E8     
       LDA    #$82    
       STA    $E7     
       LDA    #$06    
       STA    $E6     
       BNE    LF814   
LF802: LDA    #$83    
       STA    $E9     
       LDX    $C9     
       INX            
       INX            
       STX    $E8     
       LDA    #$80    
       STA    $E7     
       LDA    #$06    
       STA    $E6     
LF814: JSR    LF818   
       RTS            

LF818: LDA    $E9     
       STA    $CE     
       LDA    $EE     
       ROR            
       BCC    LF83C   
       LDA    $E2     
       STA    $D0     
       LDA    $E1     
       STA    $CD     
       JSR    LF86C   
       LDA    $E8     
       STA    $C9     
       LDA    $E0     
       STA    $D0     
       LDA    $E1     
       STA    $CD     
       JSR    LF8A2   
       RTS            

LF83C: LDA    $E0     
       STA    $D0     
       LDA    $E1     
       STA    $CD     
       JSR    LF8A2   
       LDA    $C8     
       BEQ    LF86B   
       LDA    $D1     
       ROL            
       ROL            
       BCC    LF85C   
       LDA    $E6     
       STA    $C9     
       LDA    $E7     
       STA    $CE     
       JMP    LF860   
LF85C: LDA    $E8     
       STA    $C9     
LF860: LDA    $E2     
       STA    $D0     
       LDA    $E1     
       STA    $CD     
       JSR    LF86C   
LF86B: RTS            

LF86C: LDA    #$03    
       STA    $CB     
       LDA    #$07    
       STA    $CA     
       LDY    #$00    
       STY    $CF     
       ROL    $D0     
       LDX    $C9     
LF87C: BCC    LF886   
       LDA    LFF15,X 
       ORA    ($CE),Y 
       STA    ($CE),Y 
       CLC            
LF886: TYA            
       ADC    #$05    
       TAY            
       LDA    $CA     
       BEQ    LF896   
       DEC    $CA     
       ROL    $D0     
       LDA    #$00    
       BEQ    LF87C   
LF896: LDA    $CB     
       BEQ    LF8A1   
       DEC    $CB     
       ROL    $CD     
       JMP    LF87C   
LF8A1: RTS            

LF8A2: LDA    #$03    
       STA    $CB     
       LDA    #$07    
       STA    $CA     
       LDY    #$00    
       STY    $CF     
       ROR    $D0     
       LDX    $C9     
LF8B2: BCC    LF8BC   
       LDA    LFF15,X 
       ORA    ($CE),Y 
       STA    ($CE),Y 
       CLC            
LF8BC: TYA            
       ADC    #$05    
       TAY            
       LDA    $CA     
       BEQ    LF8CB   
       DEC    $CA     
       ROR    $D0     
       JMP    LF8B2   
LF8CB: LDA    $CB     
       BEQ    LF8D6   
       DEC    $CB     
       ROR    $CD     
       JMP    LF8B2   
LF8D6: RTS            

LF8D7: .byte $B5
LF8D8: JSR    LFAA5   
       JSR    LF8E5   
       JSR    LF99E   
       JSR    LF9D5   
       RTS            

LF8E5: JSR    LFBA8   
       LDA    #$0F    
       AND    $F0     
       BNE    LF966   
       LDA    $D6     
       AND    #$10    
       BEQ    LF8F8   
       LDA    REFP1   
       BNE    LF8FA   
LF8F8: LDA    PF0     
LF8FA: AND    #$80    
       BNE    LF978   
       STA    RESMP0  
       JSR    LFB92   
       LDA    $D3     
       ROR            
       BCS    LF924   
       ROR            
       BCS    LF93A   
       ROR            
       BCS    LF950   
       LDA    #$A0    
       STA    HMM0    
       LDA    $F0     
       ORA    #$08    
       STA    $F0     
       LDA    $D4     
       SEC            
       SBC    #$06    
       STA    $D5     
       LDA    #$0B    
       STA    $D9     
       RTS            

LF924: LDA    $D4     
       SEC            
       SBC    #$08    
       STA    $D5     
       LDA    $D2     
       STA    $E3     
       LDA    $F0     
       ORA    #$01    
       STA    $F0     
       LDA    #$08    
       STA    $D9     
       RTS            

LF93A: LDA    $D4     
       CLC            
       ADC    #$08    
       STA    $D5     
       LDA    $D2     
       STA    $E3     
       LDA    $F0     
       ORA    #$02    
       STA    $F0     
       LDA    #$07    
       STA    $D9     
       RTS            

LF950: LDA    #$60    
       STA    HMM0    
       LDA    $F0     
       ORA    #$04    
       STA    $F0     
       LDA    $D4     
       SEC            
       SBC    #$06    
       STA    $D5     
       LDA    #$0E    
       STA    $D9     
       RTS            

LF966: DEC    $D9     
       BNE    LF979   
       LDA    #$00    
       STA    HMM0    
       LDA    $F0     
       AND    #$F0    
       STA    $F0     
       LDA    #$02    
       STA    RESMP0  
LF978: RTS            

LF979: LDA    $F0     
       ROR            
       BCS    LF996   
       ROR            
       BCS    LF98E   
       ROR            
       BCS    LF989   
       LDA    #$C0    
       STA    HMM0    
       RTS            

LF989: LDA    #$40    
       STA    HMM0    
       RTS            

LF98E: LDA    $D5     
       CLC            
       ADC    #$08    
       STA    $D5     
       RTS            

LF996: LDA    $D5     
       SEC            
       SBC    #$08    
       STA    $D5     
       RTS            

LF99E: LDA    $F0     
       AND    #$20    
       BNE    LF9A5   
       RTS            

LF9A5: LDA    VSYNC   
       ROL            
       BCS    LF9AB   
       RTS            

LF9AB: LDA    #$79    
       STA    $E5     
       LDA    #$4F    
       STA    $D8     
       LDA    $F0     
       AND    #$DF    
       STA    $F0     
       SED            
       CLC            
       LDA    $D6     
       AND    #$10    
       BEQ    LF9C6   
       LDA    $C1     
       JMP    LF9CF   
LF9C6: LDA    $C0     
       ADC    #$01    
       STA    $C0     
       JMP    LF9D3   
LF9CF: ADC    #$01    
       STA    $C1     
LF9D3: CLD            
       RTS            

LF9D5: LDA    $F0     
       AND    #$20    
       BEQ    LF9DF   
       JSR    LFA00   
       RTS            

LF9DF: LDA    $D8     
       BEQ    LF9F2   
       LDA    #$0A    
       STA    AUDV1   
       LDA    #$08    
       STA    AUDC1   
       LDA    #$10    
       STA    AUDF1   
       DEC    $D8     
       RTS            

LF9F2: STA    $EA     
       STA    AUDV1   
       LDA    $F0     
       ORA    #$20    
       STA    $F0     
       JSR    LFA1F   
       RTS            

LFA00: LDA    $E4     
       STA    HMP1    
       LDA    $EA     
       AND    #$10    
       BNE    LFA0E   
       STA    $E5     
       BEQ    LFA12   
LFA0E: LDA    #$5E    
       STA    $E5     
LFA12: DEC    $EA     
       DEC    $D8     
       BNE    LFA1E   
       LDA    $F0     
       AND    #$DF    
       STA    $F0     
LFA1E: RTS            

LFA1F: LDA    $EF     
       ADC    $ED     
       AND    #$07    
       TAX            
       LDA    LFF8E,X 
       STA    $D7     
       LDA    $EC     
       AND    #$07    
       TAX            
       LDA    LFF96,X 
       STA    COLUP1  
       LDA    $EC     
       ASL            
       ASL            
       ASL            
       ASL            
       ROL            
       BCS    LFA47   
       ROR            
       AND    #$30    
       LDX    #$08    
       STX    REFP1   
       BNE    LFA4E   
LFA47: ROR            
       ORA    #$40    
       LDX    #$00    
       STX    REFP1   
LFA4E: STA    $E4     
       STA    HMP1    
       LDA    $EC     
       ORA    #$F0    
       STA    $D8     
       AND    #$07    
       STA    NUSIZ1  
       RTS            

LFA5D: DEC    $D2     
       DEC    $D4     
       RTS            

LFA62: DEC    $D2     
       INC    $D4     
       RTS            

LFA67: DEC    $D2     
       LDA    #$F0    
       STA    HMP0    
       RTS            

LFA6E: DEC    $D2     
       LDA    #$10    
       STA    HMP0    
       RTS            

LFA75: LDA    #$10    
       STA    HMP0    
       LDA    #$33    
       STA    $D2     
       LDA    #$01    
       STA    $D3     
       RTS            

LFA82: LDA    #$F0    
       STA    HMP0    
       LDA    #$33    
       STA    $D2     
       LDA    #$02    
       STA    $D3     
       RTS            

LFA8F: DEC    $D4     
       LDA    #$27    
       STA    $D2     
       LDA    #$08    
       STA    $D3     
       RTS            

LFA9A: INC    $D4     
       LDA    #$27    
       STA    $D2     
       LDA    #$04    
       STA    $D3     
       RTS            

LFAA5: LDA    $D6     
       AND    #$10    
       BEQ    LFAB5   
       LDA    SWCHA   
       ROR            
       ROR            
       ROR            
       ROR            
       JMP    LFAB8   
LFAB5: LDA    SWCHA   
LFAB8: LDY    $D3     
       ROR            
       BCC    LFAFC   
       ROR            
       BCC    LFB10   
       ROR            
       BCC    LFAC7   
       ROR            
       BCC    LFAE1   
LFAC6: RTS            

LFAC7: TYA            
       ROR            
       BCS    LFADB   
       ROR            
       BCS    LFB30   
       ROR            
       BCS    LFB1A   
       LDA    $D2     
       EOR    #$27    
       BNE    LFB06   
       INC    $D4     
       BNE    LFB3A   
LFADB: LDY    $D2     
       BEQ    LFA9A   
       BNE    LFA6E   
LFAE1: TYA            
       ROR            
       BCS    LFB32   
       ROR            
       BCS    LFAF5   
       ROR            
       BCC    LFB34   
       LDA    $D2     
       EOR    #$01    
       BNE    LFB4C   
       INC    $D4     
       BNE    LFA82   
LFAF5: LDA    $D2     
       BEQ    LFA8F   
       JMP    LFA67   
LFAFC: TYA            
       ROR            
       BCS    LFAC6   
       ROR            
       BCS    LFB24   
       ROR            
       BCS    LFB4C   
LFB06: LDA    $D2     
       BEQ    LFB0D   
       JMP    LFA5D   
LFB0D: JMP    LFA75   
LFB10: TYA            
       ROR            
       BCS    LFAC6   
       ROR            
       BCS    LFAC6   
       ROR            
       BCC    LFB34   
LFB1A: LDA    $D2     
       BEQ    LFB21   
       JMP    LFA62   
LFB21: JMP    LFA82   
LFB24: LDX    $D2     
       DEX            
       BNE    LFB62   
       LDA    #$F0    
       STA    HMP0    
       JMP    LFA8F   
LFB30: BCS    LFB62   
LFB32: BCS    LFB7A   
LFB34: LDA    $D2     
       EOR    #$28    
       BNE    LFB47   
LFB3A: LDA    #$10    
       STA    HMP0    
       LDA    #$01    
       STA    $D2     
       LDA    #$02    
       STA    $D3     
       RTS            

LFB47: INC    $D4     
       INC    $D2     
       RTS            

LFB4C: LDA    $D2     
       EOR    #$28    
       BNE    LFB5D   
       LDA    #$F0    
       STA    HMP0    
       LDA    #$01    
       STA    $D2     
       STA    $D3     
       RTS            

LFB5D: DEC    $D4     
       INC    $D2     
       RTS            

LFB62: LDA    $D2     
       EOR    #$34    
       BNE    LFB73   
       DEC    $D4     
       LDA    #$01    
       STA    $D2     
       LDA    #$04    
       STA    $D3     
       RTS            

LFB73: LDA    #$10    
       STA    HMP0    
       INC    $D2     
       RTS            

LFB7A: LDA    $D2     
       EOR    #$34    
       BNE    LFB8B   
       INC    $D4     
       LDA    #$01    
       STA    $D2     
       LDA    #$08    
       STA    $D3     
       RTS            

LFB8B: LDA    #$F0    
       STA    HMP0    
       INC    $D2     
       RTS            

LFB92: LDA    $F2     
       ROL            
       SEC            
       ROR            
       STA    $F2     
       LDA    #$08    
       STA    AUDF0   
       STA    $F3     
       LDA    #$0C    
       STA    AUDC0   
       LDA    #$08    
       STA    AUDV0   
       RTS            

LFBA8: LDA    $F2     
       ROL            
       BCC    LFBC2   
       INC    $F3     
       INC    $F3     
       LDA    $F3     
       STA    AUDF0   
       EOR    #$1E    
       BNE    LFBC2   
       STA    AUDV0   
       LDA    $F2     
       ROL            
       CLC            
       ROR            
       STA    $F2     
LFBC2: RTS            

LFBC3: .byte $A5,$F2,$2A,$18,$6A,$85,$F2,$60,$85
LFBCC: ROR            
       BCS    LFC08   
       LDA    $D6     
       ROL            
       ROL            
       BCC    LFBFF   
       LDA    #$BF    
       AND    $D6     
       STA    $D6     
       JSR    LFCAA   
       JSR    LFC46   
       JSR    LFD2D   
       JSR    LFD8F   
       LDA    $D6     
       STA    $D1     
       JSR    LFEBF   
       LDA    #$00    
       STA    $EB     
       JSR    LFEF8   
       LDA    $F0     
       AND    #$F0    
       STA    $F0     
       LDA    #$02    
       STA    RESMP0  
LFBFF: LDA    $F0     
       AND    #$3F    
       ORA    #$80    
       STA    $F0     
       RTS            

LFC08: LDA    $D6     
       AND    #$03    
       BEQ    LFC30   
       STA    $D0     
       ROR    $D0     
       BCC    LFC1B   
       JSR    LFDF6   
       LDA    #$00    
       STA    $E1     
LFC1B: ROR    $D0     
       BCC    LFC26   
       JSR    LFE3C   
       LDA    #$00    
       STA    $DC     
LFC26: LDA    #$FC    
       AND    $D6     
       STA    $D6     
       LDA    #$00    
       STA    $EB     
LFC30: LDA    $F0     
       AND    #$3F    
       STA    $F0     
       LDA    NUSIZ0  
       ROL            
       BCC    LFC45   
       LDA    $F0     
       AND    #$F0    
       STA    $F0     
       LDA    #$02    
       STA    RESMP0  
LFC45: RTS            

LFC46: LDA    #$08    
       STA    $CB     
       LDX    #$1A    
       LDA    #$FF    
LFC4E: STA    $84,X   
       DEX            
       BNE    LFC4E   
       LDA    $EE     
       ASL            
       STA    $85     
       ROR            
       ROR            
       LDY    $EF     
       LDX    #$00    
       BCC    LFC64   
       JSR    LFC88   
       RTS            

LFC64: JSR    LFC68   
       RTS            

LFC68: STY    $87,X   
       DEC    $CB     
       BEQ    LFC87   
       TYA            
       BEQ    LFC75   
       DEY            
       INX            
       BNE    LFC68   
LFC75: LDX    #$00    
LFC77: STY    $93,X   
       DEC    $CB     
       BEQ    LFC81   
       INY            
       INX            
       BNE    LFC77   
LFC81: LDY    $85     
       DEY            
       DEY            
       STY    $86     
LFC87: RTS            

LFC88: STY    $87,X   
       DEC    $CB     
       BEQ    LFCA9   
       TYA            
       EOR    #$0B    
       BEQ    LFC97   
       INY            
       INX            
       BNE    LFC88   
LFC97: LDX    #$00    
LFC99: STY    $93,X   
       DEC    $CB     
       BEQ    LFCA3   
       DEY            
       INX            
       BNE    LFC99   
LFCA3: LDY    $85     
       DEY            
       DEY            
       STY    $86     
LFCA9: RTS            

LFCAA: LDA    #$0F    
       AND    $DA     
       STA    $DA     
       LDA    #$0F    
       AND    $DD     
       STA    $DD     
       LDA    #$08    
       STA    $CB     
       LDX    #$16    
       LDA    #$FF    
LFCBE: STA    $9F,X   
       DEX            
       BNE    LFCBE   
       LDY    $ED     
       DEY            
       STY    $A1     
       LDX    #$00    
       LDA    $ED     
       ROR            
       LDA    $EC     
       TAY            
       BCC    LFCD6   
       JSR    LFD09   
       RTS            

LFCD6: JSR    LFCDA   
       RTS            

LFCDA: STA    $A2,X   
       DEC    $CB     
       BEQ    LFD08   
       EOR    #$27    
       BEQ    LFCEF   
       INY            
       TYA            
       EOR    #$27    
       BEQ    LFD00   
       INY            
       TYA            
       INX            
       BNE    LFCDA   
LFCEF: LDA    #$26    
       TAY            
LFCF2: LDX    #$00    
LFCF4: STA    $AC,X   
       DEC    $CB     
       BEQ    LFD03   
       DEY            
       DEY            
       TYA            
       INX            
       BNE    LFCF4   
LFD00: TYA            
       BNE    LFCF2   
LFD03: LDY    $A1     
       DEY            
       STY    $A0     
LFD08: RTS            

LFD09: STY    $A2,X   
       DEC    $CB     
       BEQ    LFD2C   
       TYA            
       BEQ    LFD19   
       DEY            
       BEQ    LFD1A   
       DEY            
       INX            
       BNE    LFD09   
LFD19: INY            
LFD1A: LDX    #$00    
LFD1C: STY    $AC,X   
       DEC    $CB     
       BEQ    LFD27   
       INY            
       INY            
       INX            
       BNE    LFD1C   
LFD27: LDY    $A1     
       DEY            
       STY    $A0     
LFD2C: RTS            

LFD2D: LDA    $D5     
       AND    #$F8    
       CLC            
       ROR            
       ROR            
       ROR            
       STA    $C8     
       LDA    $F0     
       AND    #$03    
       BNE    LFD4D   
       LDA    $C8     
       ROR            
       BCC    LFD51   
       ROL            
LFD43: AND    #$FE    
       ROR            
       STA    $C8     
       DEC    $C8     
       JMP    LFD55   
LFD4D: LDA    $C8     
       BCC    LFD43   
LFD51: LDA    #$EE    
       STA    $C8     
LFD55: LDA    $F0     
       AND    #$03    
       BEQ    LFD7B   
       LDA    $E3     
       AND    #$FC    
       CLC            
       ROR            
       ROR            
       ROR            
       BCC    LFD76   
       TAX            
       LDA    $F0     
       ROR            
       BCS    LFD70   
       LDA    LFF7D,X 
       BNE    LFD73   
LFD70: LDA    LFF77,X 
LFD73: STA    $C9     
       RTS            

LFD76: LDA    #$EE    
       STA    $C9     
LFD7A: RTS            

LFD7B: LDA    $F0     
       ROR            
       ROR            
       LDX    $D9     
       DEX            
       STX    $C9     
       ROR            
       BCS    LFD7A   
       LDA    #$27    
       SEC            
       SBC    $C9     
       STA    $C9     
       RTS            

LFD8F: LDA    #$00    
       STA    $CF     
       LDA    $C9     
       EOR    $85     
       BNE    LFDA0   
       LDA    #$87    
       STA    $CE     
       JSR    LFDC8   
LFDA0: LDA    $C9     
       EOR    $86     
       BNE    LFDAD   
       LDA    #$93    
       STA    $CE     
       JSR    LFDC8   
LFDAD: LDA    $C8     
       EOR    $A1     
       BNE    LFDBA   
       LDA    #$A2    
       STA    $CE     
       JSR    LFDDF   
LFDBA: LDA    $C8     
       EOR    $A0     
       BNE    LFDC7   
       LDA    #$AC    
       STA    $CE     
       JSR    LFDDF   
LFDC7: RTS            

LFDC8: LDY    #$08    
LFDCA: LDA    $C8     
       EOR    ($CE),Y 
       BEQ    LFDD8   
       TYA            
       BEQ    LFDDE   
       DEY            
       LDA    #$00    
       BEQ    LFDCA   
LFDD8: LDA    #$01    
       ORA    $D6     
       STA    $D6     
LFDDE: RTS            

LFDDF: LDY    #$07    
LFDE1: LDA    $C9     
       EOR    ($CE),Y 
       BEQ    LFDEF   
       TYA            
       BEQ    LFDF5   
       DEY            
       LDA    #$00    
       BEQ    LFDE1   
LFDEF: LDA    #$02    
       ORA    $D6     
       STA    $D6     
LFDF5: RTS            

LFDF6: LDA    $EE     
       ROR            
       BCS    LFE0C   
       LDA    $EF     
       AND    #$F8    
       BNE    LFE1D   
       LDA    $E0     
       JSR    LFE25   
       STA    $E0     
       LDA    #$00    
       BEQ    LFE24   
LFE0C: LDA    $EF     
       AND    #$F8    
       BNE    LFE1D   
       LDA    $E2     
       JSR    LFE25   
       STA    $E2     
       LDA    #$00    
       BEQ    LFE24   
LFE1D: LDA    $E1     
       JSR    LFE25   
       STA    $E1     
LFE24: RTS            

LFE25: LDX    #$00    
       SEC            
LFE28: ROL            
       BCS    LFE2E   
       INX            
       BNE    LFE28   
LFE2E: CLC            
LFE2F: ROR            
       STA    $B7     
       TXA            
       BEQ    LFE3B   
       DEX            
       LDA    $B7     
       JMP    LFE2F   
LFE3B: RTS            

LFE3C: LDA    $EC     
       SEC            
       LDX    #$00    
LFE41: SBC    #$04    
       BMI    LFE52   
       INX            
       SBC    #$08    
       BMI    LFE52   
       INX            
       SBC    #$08    
       BMI    LFE52   
       INX            
       BNE    LFE41   
LFE52: LDA    $ED     
       ROR            
       BCS    LFE5C   
       LDA    LFF71,X 
       BNE    LFE5F   
LFE5C: LDA    LFF6B,X 
LFE5F: STA    $CF     
       ROL            
       BCS    LFE78   
       ROL            
       BCS    LFE80   
       ROL            
       BCS    LFE88   
       ROL            
       BCS    LFE90   
       ROL            
       BCS    LFE98   
       LDA    $DF     
       STA    $CD     
       LDY    #$05    
       BNE    LFE9E   
LFE78: LDA    $DA     
       STA    $CD     
       LDY    #$00    
       BEQ    LFE9E   
LFE80: LDA    $DB     
       STA    $CD     
       LDY    #$01    
       BNE    LFE9E   
LFE88: LDA    $DC     
       STA    $CD     
       LDY    #$02    
       BNE    LFE9E   
LFE90: LDA    $DD     
       STA    $CD     
       LDY    #$03    
       BNE    LFE9E   
LFE98: LDA    $DE     
       STA    $CD     
       LDY    #$04    
LFE9E: LDA    $CF     
       ROR            
       BCS    LFEAC   
       LDA    $CD     
       JSR    LFE25   
LFEA8: STA.wy $00DA,Y 
       RTS            

LFEAC: LDA    $CD     
       SEC            
       LDX    #$00    
LFEB1: ROR            
       BCS    LFEB7   
       INX            
       BNE    LFEB1   
LFEB7: LDA    LFF15,X 
       EOR    $CD     
       JMP    LFEA8   
LFEBF: ROR    $D1     
       BCC    LFEDB   
       LDA    $88     
       EOR    #$FF    
       BEQ    LFED1   
       LDA    $88     
       STA    $EF     
       LDX    #$00    
       BEQ    LFEDB   
LFED1: LDA    $86     
       CLC            
       ROR            
       STA    $EE     
       LDA    $93     
       STA    $EF     
LFEDB: ROR    $D1     
       BCC    LFEF6   
       LDA    $A3     
       EOR    #$FF    
       BEQ    LFEED   
       LDA    $A3     
       STA    $EC     
       LDX    #$00    
       BEQ    LFEF6   
LFEED: LDA    $AC     
       STA    $EC     
       LDY    $A0     
       INY            
       STY    $ED     
LFEF6: RTS            

LFEF7: .byte $ED
LFEF8: LDX    #$37    
LFEFA: STA    $7F,X   
       DEX            
       BNE    LFEFA   
       RTS            

LFF00: .byte $00,$90,$79,$29,$19,$89,$42,$12,$22,$B2,$65,$B5,$7B,$2B,$1B,$8B
       .byte $44,$14,$24,$34,$00
LFF15: .byte $01,$02,$04,$08,$10,$20,$40,$80
LFF1D: .byte $00,$18,$3C,$7E,$3C,$18,$00,$00
LFF25: .byte $04,$1F,$37,$7C,$FD,$FF,$78,$00
LFF2D: LDA    SWCHB   
       AND    #$02    
       BNE    LFF54   
       LDA    $F4     
       BNE    LFF58   
       LDA    #$02    
       STA    $F4     
       LDA    $F5     
       BEQ    LFF4A   
       LDA    #$00    
       STA    $F5     
       LDA    #$01    
       STA    $C0     
       BNE    LFF58   
LFF4A: LDA    #$FF    
       STA    $F5     
       LDA    #$02    
       STA    $C0     
       BNE    LFF58   
LFF54: LDA    #$00    
       STA    $F4     
LFF58: RTS            

LFF59: .byte $00,$00
LFF5B: .byte $00,$00,$00,$00,$01,$01,$02,$02,$03,$03,$04,$04,$05,$05,$06,$06
LFF6B: .byte $82,$41,$22,$12,$09,$06
LFF71: .byte $11,$0A,$05,$81,$42,$21
LFF77: .byte $10,$12,$14,$16,$18,$1A
LFF7D: .byte $1A,$18,$16,$14,$12,$10,$04,$1F,$3B,$7E,$FF,$FF,$78,$00,$00,$00
       .byte $00
LFF8E: .byte $2F,$1F,$2F,$3F,$9F,$AF,$BF,$1F
LFF96: .byte $1C,$2C,$4C,$6C,$8C,$AC,$CC,$EC,$10,$28,$45,$AA,$54,$28,$18,$00
       .byte $7E,$7E,$7E,$7E,$40,$40,$40,$00
LFFAE: .byte $0E,$0A,$0A,$0A,$0E,$22,$22,$22,$22,$22,$EE,$22,$EE,$88,$EE,$EE
       .byte $22,$66,$22,$EE,$AA,$AA,$EE,$22,$22,$EE,$88,$EE,$22,$EE,$EE,$88
       .byte $EE,$AA,$EE,$EE,$22,$22,$22,$22,$EE,$AA,$EE,$AA,$EE,$EE,$AA,$EE
       .byte $22,$EE,$00,$80,$86,$FF,$FF,$38,$30,$00,$00,$BE,$88,$FF,$FF,$08
       .byte $3E,$00,$00,$80,$C0,$FE
LFFF4: .byte $62
LFFF5: .byte $32
LFFF6: .byte $08
LFFF7: .byte $18,$00,$00,$00,$F0,$00,$F0,$00,$00
