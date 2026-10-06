; Disassembly of roms/Spacechase.bin
; Disassembled Tue Oct  6 15:22:44 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Spacechase.bin
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
RESM0   =  $12
RESM1   =  $13
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
HMP0    =  $20
HMP1    =  $21
HMM0    =  $22
HMM1    =  $23
HMOVE   =  $2A
HMCLR   =  $2B
INPT4   =  $3C
SWCHA   =  $0280
SWACNT  =  $0281
SWCHB   =  $0282
SWBCNT  =  $0283
INTIM   =  $0284
TIM8T   =  $0295
TIM64T  =  $0296

       ORG $F000

START:
       SEI            
       CLD            
       LDA    #$00    
       STA    SWACNT  
       STA    SWBCNT  
       TAX            
LF00B: STA    VSYNC,X 
       INX            
       BNE    LF00B   
LF010: LDX    #$FF    
       TXS            
       LDX    #$0E    
       LDA    #$00    
       STA    AUDV0   
       STA    AUDV1   
LF01B: STA    $C2,X   
       DEX            
       BPL    LF01B   
       STA    $B8     
       STA    $B9     
       LDA    #$08    
       STA    $BA     
       STA    $BB     
       LDX    #$07    
LF02C: STA    $82,X   
       DEX            
       BPL    LF02C   
       LDA    #$42    
       LDY    #$FA    
       LDX    #$0B    
LF037: STY    $A9,X   
       DEX            
       STA    $A9,X   
       DEX            
       BPL    LF037   
       LDA    #$6C    
       STA    $D2     
       STY    $D3     
       LDY    $81     
       CPY    #$24    
       BNE    LF04F   
       LDY    #$01    
       BNE    LF056   
LF04F: TYA            
       SED            
       CLC            
       ADC    #$01    
       CLD            
       TAY            
LF056: STY    $81     
       STY    $9A     
       LDX    #$00    
       STX    $9C     
       LDA    LFAA8,Y 
       ASL            
       ROL    $9C     
       INC    $9C     
       LDA    #$0F    
       STA    $A4     
       JSR    LF902   
       JSR    LFB51   
       JSR    LF746   
       LDY    #$00    
       LDX    #$04    
       STX    $E8     
LF079: STY    $90,X   
       LDA    $95,X   
       AND    #$F0    
       STA    $95,X   
       DEX            
       BPL    LF079   
LF084: JSR    LFB51   
       LDA    $A4     
       BEQ    LF08D   
       DEC    $A4     
LF08D: BPL    LF084   
LF08F: LDX    #$FF    
       TXS            
       LDA    #$00    
       STA    AUDV0   
       STA    AUDV1   
       STA    $8A     
       LDX    #$73    
LF09C: STA    $8B,X   
       DEX            
       BPL    LF09C   
       LDY    $81     
       LDA    LFAA8,Y 
       ASL            
       ASL            
       ROL    $9D     
       ASL            
       ROL    $9D     
       LDA    $9D     
       STA    $A2     
       LDA    #$01    
       STA    $BA     
       STA    $BB     
       LDA    #$03    
       STA    $9E     
       STA    $A3     
       LDA    #$42    
       LDY    #$FA    
       LDX    #$00    
LF0C3: STA    $A9,X   
       INX            
       STY    $A9,X   
       INX            
       CPX    #$0C    
       BNE    LF0C3   
       LDA    #$6C    
       STA    $D2     
       STY    $D3     
       JSR    LF902   
       JSR    LFB51   
       JSR    LF746   
LF0DC: LDA    $9A     
       LDY    #$02    
       CMP    #$04    
       BPL    LF0EB   
       LDY    #$01    
       CMP    #$01    
       BPL    LF0EB   
       DEY            
LF0EB: CPY    $9D     
       BMI    LF0F1   
       STY    $9D     
LF0F1: JSR    LFB51   
       JSR    LF7FE   
LF0F7: LDA    #$08    
       STA    $E8     
       JSR    LFB51   
       LDA    SWCHA   
       LDY    $A6     
       BEQ    LF109   
       AND    #$0F    
       BNE    LF10D   
LF109: LSR            
       LSR            
       LSR            
       LSR            
LF10D: LDY    $D2     
       CPY    #$6C    
       BNE    LF149   
       LSR            
       BCS    LF121   
       LSR            
       LDY    $82     
       BEQ    LF12E   
       DEC    $82     
       DEC    $82     
       BPL    LF12E   
LF121: LSR            
       BCS    LF12E   
       LDY    $82     
       CPY    #$08    
       BEQ    LF12E   
       INC    $82     
       INC    $82     
LF12E: LSR            
       BCS    LF13D   
       LDA    $83     
       LDX    #$02    
       JSR    LF720   
       STA    $83     
       JMP    LF149   
LF13D: LSR            
       BCS    LF149   
       LDA    $83     
       LDX    #$02    
       JSR    LF6FA   
       STA    $83     
LF149: LDX    #$05    
LF14B: TXA            
       PHA            
       ASL            
       TAX            
       LDY    $A9,X   
       PLA            
       TAX            
       CPY    #$42    
       BCS    LF1C5   
       LDA    $A8     
       TAY            
       LSR            
       ROR    $A8     
       CPY    #$FA    
       BCC    LF18B   
       TXA            
       CLC            
       ADC    #$03    
       CMP    #$06    
       BMI    LF16C   
       SEC            
       SBC    #$06    
LF16C: TAY            
       LDA    $84,X   
       AND    #$0F    
       STA    $F0     
       LDA.wy $0084,Y 
       AND    #$0F    
       SEC            
       SBC    $F0     
       CMP    #$02    
       BPL    LF183   
       CMP    #$FF    
       BPL    LF18B   
LF183: ROR    $B6     
       ROL            
       EOR    #$01    
       ROR            
       ROL    $B6     
LF18B: LDY    $84,X   
       ROR    $B6     
       BCC    LF1AA   
       ROL    $B6     
       CPY    #$8B    
       BNE    LF19F   
       ROR    $B6     
       CLC            
       ROL    $B6     
       JMP    LF1B8   
LF19F: TXA            
       PHA            
       LDX    #$05    
       TYA            
       JSR    LF6FA   
       JMP    LF1C0   
LF1AA: ROL    $B6     
       CPY    #$65    
       BNE    LF1B8   
       ROR    $B6     
       SEC            
       ROL    $B6     
       JMP    LF19F   
LF1B8: TXA            
       PHA            
       LDX    #$05    
       TYA            
       JSR    LF720   
LF1C0: TAY            
       PLA            
       TAX            
       STY    $84,X   
LF1C5: LDA    $B6     
       LSR            
       ROR    $B6     
       DEX            
       BMI    LF1D0   
       JMP    LF14B   
LF1D0: ROR    $B6     
       ROR    $B6     
       JSR    LFB51   
       LDA    #$6C    
       CMP    $D2     
       BNE    LF212   
       LDX    $A6     
       LDA    INPT4,X 
       BMI    LF212   
       LDA    $C1     
       BNE    LF212   
       LDA    $BF     
       CMP    #$0F    
       BPL    LF212   
       LDA    #$EF    
       STA    $EA     
       LDA    #$FA    
       STA    $EB     
       LDA    #$22    
       STA    $EC     
       LDA    $82     
       CLC            
       ADC    #$21    
       STA    $C1     
       LDA    $83     
       SEC            
       SBC    #$40    
       CMP    #$80    
       BCS    LF210   
       CMP    #$40    
       BCC    LF210   
       SEC            
       SBC    #$0F    
LF210: STA    $BD     
LF212: LDA    SWCHB   
       ASL            
       LDY    $A6     
       BNE    LF21B   
       ASL            
LF21B: LDX    $BF     
       BEQ    LF22B   
       DEC    $BF     
       BEQ    LF22B   
       DEC    $BF     
       BEQ    LF22B   
       BCS    LF22B   
       DEC    $BF     
LF22B: LDX    $C1     
       BEQ    LF244   
       DEX            
       DEX            
       BCS    LF234   
       DEX            
LF234: STX    $C1     
       CPX    #$1B    
       BPL    LF244   
       STX    $BF     
       LDA    $BD     
       STA    $BB     
       LDX    #$00    
       STX    $C1     
LF244: LDA    $DC     
       CMP    $A8     
       BCS    LF24D   
LF24A: JMP    LF2CF   
LF24D: LDA    $BE     
       BNE    LF24A   
       LDY    #$06    
       LDX    $CF     
       INX            
LF256: CPX    #$06    
       BNE    LF25C   
       LDX    #$00    
LF25C: TXA            
       PHA            
       ASL            
       TAX            
       LDA    $A9,X   
       CMP    #$42    
       BCC    LF26E   
       PLA            
       TAX            
       DEY            
       BMI    LF2CF   
       INX            
       BPL    LF256   
LF26E: PLA            
       TAX            
       LDY    #$06    
       CPX    #$01    
       BMI    LF294   
       BEQ    LF282   
       CPX    #$03    
       BMI    LF28E   
       BEQ    LF294   
       CPX    #$05    
       BEQ    LF28E   
LF282: LDY    #$11    
       LDA    $C0     
       BEQ    LF294   
       CMP    #$2E    
       BMI    LF2CF   
       BPL    LF294   
LF28E: LDY    #$1C    
       LDA    $C0     
       BNE    LF2CF   
LF294: STY    $BE     
       STX    $CF     
       LDA    #$11    
       STA    $EA     
       LDA    #$FB    
       STA    $EB     
       LDA    #$22    
       STA    $EC     
       LDA    $A8     
       ASL            
       ROL    $A8     
       LDA    $8A     
       CMP    $A8     
       BCC    LF2BD   
       ROL    $D0     
       LDA    #$CD    
       STA    $EA     
       LDA    #$FA    
       STA    $EB     
       LDA    #$22    
       STA    $EC     
LF2BD: LDA    $84,X   
       SEC            
       SBC    #$40    
       CMP    #$80    
       BCS    LF2CD   
       CMP    #$40    
       BCC    LF2CD   
       SEC            
       SBC    #$0F    
LF2CD: STA    $BA     
LF2CF: LDX    $BE     
       BEQ    LF2F5   
       INX            
       INX            
       LDY    $9D     
       BEQ    LF2DF   
       INX            
       CPY    #$01    
       BEQ    LF2DF   
       INX            
LF2DF: STX    $BE     
       CPX    #$19    
       BMI    LF2F5   
       LDA    $BA     
       STA    $BC     
       LDA    $D0     
       STA    $D1     
       LDA    #$00    
       STA    $BE     
       STA    $D0     
       BEQ    LF30D   
LF2F5: LDX    $C0     
       BEQ    LF30F   
       INX            
       INX            
       LDY    $9D     
       BEQ    LF305   
       INX            
       CPY    #$01    
       BEQ    LF305   
       INX            
LF305: CPX    #$32    
       BMI    LF30D   
       LDX    #$00    
       STX    $D1     
LF30D: STX    $C0     
LF30F: LDA    $D0     
       BEQ    LF333   
       LDA    $BA     
       LDX    $83     
       JSR    LF6AF   
       BEQ    LF333   
       BPL    LF32A   
       LDA    $BA     
       LDX    #$02    
       JSR    LF6FA   
       STA    $BA     
       JMP    LF333   
LF32A: LDA    $BA     
       LDX    #$02    
       JSR    LF720   
       STA    $BA     
LF333: LDA    $D1     
       BEQ    LF357   
       LDA    $BC     
       LDX    $83     
       JSR    LF6AF   
       BEQ    LF357   
       BPL    LF34E   
       LDA    $BC     
       LDX    #$02    
       JSR    LF6FA   
       STA    $BC     
       JMP    LF357   
LF34E: LDA    $BC     
       LDX    #$02    
       JSR    LF720   
       STA    $BC     
LF357: LDX    #$00    
       LDY    #$01    
       JSR    LF660   
       LDX    #$00    
       LDY    #$03    
       JSR    LF660   
       LDX    #$02    
       LDY    #$01    
       JSR    LF660   
       LDX    #$02    
       LDY    #$03    
       JSR    LF660   
       JSR    LF603   
       JSR    LFB51   
       LDY    #$08    
       LDA    $9D     
       BEQ    LF387   
       LDY    #$06    
       CMP    #$01    
       BEQ    LF387   
       LDY    #$04    
LF387: LDA    $C1     
       BEQ    LF3E6   
       CMP    #$1E    
       BPL    LF3E6   
       LDA    $AD     
       CMP    #$42    
       BCS    LF3BC   
       LDA    $BD     
       LDX    $86     
       JSR    LF6AF   
       STY    $F0     
       CMP    $F0     
       BCS    LF3BC   
       LDA    #$11    
       STA    $D6     
       LDA    #$00    
       STA    $C1     
       LDA    #$C4    
       STA    $ED     
       LDA    #$F9    
       STA    $EE     
       LDA    #$6C    
       STA    $EF     
       JSR    LF89A   
       JMP    LF3E6   
LF3BC: LDA    $B3     
       CMP    #$42    
       BCS    LF3E6   
       LDA    $BD     
       LDX    $89     
       JSR    LF6AF   
       STY    $F0     
       CMP    $F0     
       BCS    LF3E6   
       LDA    #$11    
       STA    $D9     
       LDA    #$00    
       STA    $C1     
       LDA    #$C4    
       STA    $ED     
       LDA    #$F9    
       STA    $EE     
       LDA    #$6C    
       STA    $EF     
       JSR    LF89A   
LF3E6: LDA    $BF     
       BEQ    LF434   
       LDX    #$05    
LF3EC: STX    $F0     
       LDA    $BF     
       CMP    LFA90,X 
       BPL    LF42F   
       CMP    LFA96,X 
       BMI    LF42F   
       TXA            
       ASL            
       TAX            
       LDA    $A9,X   
       CMP    #$42    
       BCS    LF42F   
       LDX    $F0     
       LDA    $84,X   
       TAX            
       LDA    $BB     
       JSR    LF6AF   
       LDX    $F0     
       STY    $F2     
       CMP    $F2     
       BCS    LF42F   
       LDA    #$00    
       STA    $BF     
       LDA    #$11    
       STA    $D4,X   
       LDA    #$C4    
       STA    $ED     
       LDA    #$F9    
       STA    $EE     
       LDA    #$6C    
       STA    $EF     
       JSR    LF89A   
       JMP    LF434   
LF42F: LDX    $F0     
       DEX            
       BPL    LF3EC   
LF434: LDX    #$00    
LF436: LDA    $D4,X   
       BEQ    LF472   
       DEC    $D4,X   
       LDY    #$57    
       CMP    #$0E    
       BPL    LF45C   
       LDY    #$51    
       CMP    #$0B    
       BPL    LF45C   
       LDY    #$4B    
       CMP    #$08    
       BPL    LF45C   
       LDY    #$51    
       CMP    #$05    
       BPL    LF45C   
       LDY    #$4B    
       CMP    #$02    
       BPL    LF45C   
       LDY    #$42    
LF45C: TXA            
       PHA            
       ASL            
       TAX            
       STY    $A9,X   
       STY    $F2     
       LDA    #$FA    
       STA    $AA,X   
       STA    $F3     
       PLA            
       TAX            
       LDY    #$05    
       LDA    ($F2),Y 
       STA    $E2,X   
LF472: INX            
       CPX    #$06    
       BNE    LF436   
       JSR    LF603   
       JSR    LFB51   
       LDA    $D2     
       CMP    #$6C    
       BNE    LF4B5   
       LDA    $C0     
       BEQ    LF4B5   
       SEC            
       SBC    $82     
       CMP    #$1E    
       BMI    LF4B5   
       CMP    #$29    
       BPL    LF4B5   
       LDA    $BC     
       LDX    $83     
       JSR    LF6AF   
       CMP    #$09    
       BCS    LF4B5   
       LDA    #$00    
       STA    $C0     
       LDA    #$11    
       STA    $DA     
       LDA    #$05    
       STA    $B5     
       LDA    #$C4    
       STA    $ED     
       LDA    #$F9    
       STA    $EE     
       LDA    #$6C    
       STA    $EF     
LF4B5: LDA    $DA     
       BEQ    LF4EB   
       DEC    $DA     
       LDY    #$75    
       CMP    #$0E    
       BPL    LF4DB   
       LDY    #$7E    
       CMP    #$0B    
       BPL    LF4DB   
       LDY    #$87    
       CMP    #$08    
       BPL    LF4DB   
       LDY    #$7E    
       CMP    #$05    
       BPL    LF4DB   
       LDY    #$87    
       CMP    #$02    
       BPL    LF4DB   
       LDY    #$42    
LF4DB: STY    $D2     
       LDY    #$FA    
       STY    $D3     
       LDY    #$08    
       LDA    ($D2),Y 
       STA    $DF     
       LDA    $DA     
       BEQ    LF4EE   
LF4EB: JMP    LF5D6   
LF4EE: LDY    #$05    
LF4F0: TYA            
       PHA            
       LDA    LF4F0,Y 
       LDX    #$0A    
LF4F7: STA    $DD,X   
       DEX            
       BPL    LF4F7   
       LDX    #$05    
LF4FE: TXA            
       PHA            
       JSR    LFB51   
       PLA            
       TAX            
       DEX            
       BNE    LF4FE   
       PLA            
       TAY            
       DEY            
       BPL    LF4F0   
       STX    $B5     
       JSR    LF902   
       DEC    $9E     
       BNE    LF521   
       LDY    $81     
       LDA    LFAA8,Y 
       BPL    LF566   
       LDA    $A3     
       BEQ    LF566   
LF521: LDA    #$42    
       LDX    #$0A    
LF525: STA    $A9,X   
       DEX            
       DEX            
       BPL    LF525   
       LDA    #$00    
       LDX    #$05    
LF52F: STA    $D4,X   
       DEX            
       BPL    LF52F   
       LDX    #$1E    
LF536: TXA            
       PHA            
       JSR    LFB51   
       PLA            
       TAX            
       DEX            
       BNE    LF536   
       LDA    #$02    
       STA    $F0     
LF544: LDY    $81     
       LDA    LFAA8,Y 
       BPL    LF55E   
       LDX    #$04    
LF54D: LDA    $9A,X   
       LDY    $9F,X   
       STY    $9A,X   
       STA    $9F,X   
       DEX            
       BPL    LF54D   
       LDA    $A6     
       EOR    #$01    
       STA    $A6     
LF55E: LDA    $9E     
       BNE    LF5D3   
       DEC    $F0     
       BNE    LF544   
LF566: LDA    #$08    
       STA    AUDC0   
       LDY    #$0F    
       STY    AUDF0   
LF56E: TYA            
       PHA            
       STY    AUDV0   
       LDA    LF4F0,Y 
       LDX    #$0A    
LF577: STA    $DD,X   
       DEX            
       BPL    LF577   
       LDX    #$08    
LF57E: TXA            
       PHA            
       JSR    LFB51   
       PLA            
       TAX            
       DEX            
       BNE    LF57E   
       PLA            
       TAY            
       DEY            
       BPL    LF56E   
       JSR    LF902   
       LDA    #$0A    
       STA    $E8     
LF594: PHA            
       TXA            
       PHA            
       JSR    LFB51   
       PLA            
       TAX            
       PLA            
       DEX            
       BNE    LF594   
       TAX            
       BEQ    LF594   
       DEX            
       TXA            
       PHA            
       LDY    $81     
       LDA    LFAA8,Y 
       BPL    LF5CF   
       LDX    #$02    
LF5AF: LDA    $9A,X   
       LDY    $9F,X   
       STY    $9A,X   
       STA    $9F,X   
       DEX            
       BPL    LF5AF   
       JSR    LF746   
       LDY    #$94    
       LDA    $A6     
       EOR    #$01    
       STA    $A6     
       BEQ    LF5C9   
       LDY    #$44    
LF5C9: STY    $E0     
       STY    $DF     
       LDX    #$00    
LF5CF: PLA            
       JMP    LF594   
LF5D3: JMP    LF0DC   
LF5D6: JSR    LF746   
       LDY    #$94    
       LDA    $A6     
       BEQ    LF5E1   
       LDY    #$44    
LF5E1: STY    $E0     
       LDA    $DA     
       BNE    LF5F8   
       STY    $DF     
       LDX    #$0A    
LF5EB: LDA    $A9,X   
       CMP    #$42    
       BNE    LF5F8   
       DEX            
       DEX            
       BPL    LF5EB   
       JMP    LF0DC   
LF5F8: JMP    LF0F7   
LF5FB: .byte $4C,$F7,$F0,$F0,$4C,$F7,$F0,$00
LF603: LDX    $C1     
       BEQ    LF613   
       LDA    #$30    
       STA    $B9     
       CPX    #$21    
       BPL    LF613   
       LDA    #$0C    
       STA    $B9     
LF613: LDA    #$02    
       LDX    $BF     
       BEQ    LF61C   
       JSR    LF6DC   
LF61C: LDA    #$02    
       LDX    $C1     
       BEQ    LF625   
       JSR    LF6DC   
LF625: LDX    $C0     
       BEQ    LF635   
       LDA    #$0C    
       STA    $B8     
       CPX    #$23    
       BMI    LF635   
       LDA    #$30    
       STA    $B8     
LF635: LDA    $D0     
       BEQ    LF641   
       LDA    $80     
       AND    #$07    
       CMP    #$04    
       BPL    LF64A   
LF641: LDA    #$01    
       LDX    $BE     
       BEQ    LF64A   
       JSR    LF6DC   
LF64A: LDA    $D1     
       BEQ    LF656   
       LDA    $80     
       AND    #$07    
       CMP    #$04    
       BPL    LF65F   
LF656: LDA    #$01    
       LDX    $C0     
       BEQ    LF65F   
       JSR    LF6DC   
LF65F: RTS            

LF660: LDA.wy $00BE,Y 
       BEQ    LF6AE   
       LDA    $BE,X   
       BEQ    LF6AE   
       SEC            
       SBC.wy $00BE,Y 
       CMP    #$03    
       BPL    LF6AE   
       CMP    #$FD    
       BMI    LF6AE   
       STX    $F0     
       LDA    $BA,X   
       LDX    $BA,Y   
       JSR    LF6AF   
       CMP    #$02    
       BPL    LF6AE   
       CMP    #$FF    
       BMI    LF6AE   
       LDA    #$00    
       LDX    $F0     
       STA    $BE,X   
       STA.wy $00BE,Y 
       SED            
       TXA            
       LSR            
       TAX            
       LDA    #$50    
       LDY    $D0,X   
       BEQ    LF69C   
       SEC            
       BCS    LF6A1   
LF69C: CLC            
       ADC    $9C     
       STA    $9C     
LF6A1: LDA    #$00    
       ADC    $9B     
       STA    $9B     
       LDA    #$00    
       ADC    $9A     
       STA    $9A     
       CLD            
LF6AE: RTS            

LF6AF: PHA            
       AND    #$0F    
       STA    $F1     
       ASL            
       ASL            
       ASL            
       ASL            
       SEC            
       SBC    $F1     
       STA    $F1     
       PLA            
       LSR            
       LSR            
       LSR            
       LSR            
       EOR    #$0F    
       SEC            
       SBC    #$09    
       AND    #$0F    
       CLC            
       ADC    $F1     
       PHA            
       TXA            
       BEQ    LF6D4   
       LDX    #$00    
       BEQ    LF6AF   
LF6D4: PLA            
       STA    $F1     
       PLA            
       SEC            
       SBC    $F1     
       RTS            

LF6DC: LDY    #$03    
       STA    $F0     
LF6E0: TXA            
LF6E1: CMP    #$0D    
       BMI    LF6EE   
       SEC            
       SBC    #$0D    
       ASL    $F0     
       ASL    $F0     
       BNE    LF6E1   
LF6EE: TAX            
       LDA    $F0     
       ORA    $C2,X   
       STA    $C2,X   
       INX            
       DEY            
       BNE    LF6E0   
       RTS            

LF6FA: STA    $F0     
LF6FC: LDA    $F0     
       AND    #$F0    
       CMP    #$80    
       BNE    LF713   
       LDA    $F0     
       AND    #$0F    
       CMP    #$0B    
       BEQ    LF71A   
       LDA    $F0     
       SEC            
       SBC    #$0F    
       STA    $F0     
LF713: LDA    $F0     
       SEC            
       SBC    #$10    
       STA    $F0     
LF71A: DEX            
       BNE    LF6FC   
       LDA    $F0     
       RTS            

LF720: STA    $F0     
LF722: LDA    $F0     
       AND    #$F0    
       CMP    #$60    
       BNE    LF739   
       LDA    $F0     
       AND    #$0F    
       CMP    #$05    
       BEQ    LF740   
       LDA    $F0     
       CLC            
       ADC    #$0F    
       STA    $F0     
LF739: LDA    $F0     
       CLC            
       ADC    #$10    
       STA    $F0     
LF740: DEX            
       BNE    LF722   
       LDA    $F0     
       RTS            

LF746: LDA    #$01    
       STA    $F4     
       LDA    #$00    
       STA    $F1     
       STA    $F0     
LF750: LDX    $F1     
       LDA    $9A,X   
       LSR            
       LSR            
       LSR            
       LSR            
       BNE    LF762   
       LDX    $F4     
       BEQ    LF766   
       LDA    #$0A    
       BNE    LF766   
LF762: LDX    #$00    
       STX    $F4     
LF766: STA    $F2     
       ASL            
       ASL            
       CLC            
       ADC    $F2     
       TAY            
       LDX    $F0     
       LDA    #$05    
       STA    $F2     
LF774: LDA    LF951,Y 
       ASL            
       ASL            
       ASL            
       ASL            
       STA    $8B,X   
       INY            
       INX            
       DEC    $F2     
       BNE    LF774   
       LDX    $F1     
       LDA    $9A,X   
       AND    #$0F    
       BNE    LF793   
       LDX    $F4     
       BEQ    LF797   
       LDA    #$0A    
       BNE    LF797   
LF793: LDX    #$00    
       STX    $F4     
LF797: STA    $F2     
       ASL            
       ASL            
       CLC            
       ADC    $F2     
       TAY            
       LDX    $F0     
       LDA    #$05    
       STA    $F2     
LF7A5: LDA    LF951,Y 
       ORA    $8B,X   
       STA    $8B,X   
       INY            
       INX            
       DEC    $F2     
       BNE    LF7A5   
       STX    $F0     
       INC    $F1     
       LDA    $F1     
       CMP    #$03    
       BNE    LF750   
       LDA    $95     
       BNE    LF7CE   
       LDA    #$E0    
       STA    $95     
       STA    $99     
       LDA    #$A0    
       STA    $96     
       STA    $97     
       STA    $98     
LF7CE: LDX    #$00    
LF7D0: LDA    $8B,X   
       AND    #$0F    
       TAY            
       LDA    LF941,Y 
       ASL            
       ASL            
       ASL            
       ASL            
       STA    $F1     
       LDA    $8B,X   
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    LF941,Y 
       ORA    $F1     
       STA    $8B,X   
       INX            
       CPX    #$05    
       BMI    LF7D0   
       BEQ    LF7F9   
       CPX    #$0F    
       BMI    LF7D0   
       BPL    LF7FD   
LF7F9: LDX    #$0A    
       BNE    LF7D0   
LF7FD: RTS            

LF7FE: LDX    #$00    
LF800: LDA    LF988,X 
       STA    $84     
       STA    $85     
       STA    $86     
       CLC            
       ADC    #$02    
       STA    $87     
       STA    $88     
       STA    $89     
       LDA    #$54    
       LDY    $9D     
       BEQ    LF820   
       LDA    #$C6    
       CPY    #$01    
       BEQ    LF820   
       LDA    #$00    
LF820: TAY            
       TXA            
       LDX    #$05    
LF824: STY    $E2,X   
       DEX            
       BPL    LF824   
       TAX            
       CPX    #$18    
       BMI    LF84A   
       CPX    #$2A    
       BMI    LF84E   
       CPX    #$34    
       BMI    LF852   
       LDY    $9D     
       BEQ    LF846   
       CPY    #$01    
       BEQ    LF842   
       LDA    #$3C    
       BNE    LF854   
LF842: LDA    #$36    
       BNE    LF854   
LF846: LDA    #$30    
       BNE    LF854   
LF84A: LDA    #$5D    
       BNE    LF854   
LF84E: LDA    #$62    
       BNE    LF854   
LF852: LDA    #$67    
LF854: STX    $F0     
       LDY    #$FA    
       LDX    #$00    
LF85A: STA    $A9,X   
       INX            
       STY    $A9,X   
       INX            
       CPX    #$0C    
       BNE    LF85A   
       LDA    #$42    
       LDY    #$FA    
       LDX    $9D     
       CPX    #$02    
       BEQ    LF87A   
       STA    $B3     
       STY    $B4     
       CPX    #$01    
       BEQ    LF87A   
       STA    $AD     
       STY    $AE     
LF87A: STY    $D3     
       LDA    #$6C    
       STA    $D2     
       LDA    $F0     
       PHA            
       JSR    LFB51   
       PLA            
       TAX            
       INX            
       CPX    #$3C    
       BEQ    LF890   
       JMP    LF800   
LF890: LDX    #$03    
       LDA    #$00    
LF894: STA    $BE,X   
       DEX            
       BPL    LF894   
       RTS            

LF89A: SED            
       LDX    #$00    
       LDY    $81     
       LDA    LFAA8,Y 
       AND    #$01    
       BEQ    LF8A8   
       LDX    #$03    
LF8A8: TXA            
       CLC            
       ADC    $9D     
       TAX            
       CLC            
       LDA    LFAA2,X 
       ADC    $9C     
       STA    $9C     
       LDA    LFA9C,X 
       ADC    $9B     
       STA    $9B     
       BCC    LF8C6   
       LDA    #$00    
       ADC    $9A     
       STA    $9A     
       INC    $9E     
LF8C6: CLD            
       LDA    $9B     
       LSR            
       LDY    $9D     
       BEQ    LF8E4   
       LDA    #$4C    
       CPY    #$01    
       BEQ    LF8D6   
       LDA    #$64    
LF8D6: STA    $F0     
       LDA    $9A     
       ASL            
       ASL            
       ASL            
       CLC            
       ADC    $F0     
       BCC    LF8E4   
       LDA    #$FF    
LF8E4: CMP    #$40    
       BCS    LF8EA   
       LDA    #$40    
LF8EA: STA    $DC     
       LDX    $9A     
       LDY    $81     
       LDA    LFAA8,Y 
       AND    #$10    
       BEQ    LF8FB   
       TXA            
       ASL            
       ASL            
       TAX            
LF8FB: CPX    $8A     
       BCC    LF901   
       STX    $8A     
LF901: RTS            

LF902: LDA    #$00    
       STA    $DD     
       LDA    #$3A    
       STA    $DE     
       LDA    #$94    
       LDX    $A6     
       BEQ    LF912   
       LDA    #$44    
LF912: STA    $DF     
       STA    $E0     
       LDA    #$3C    
       STA    $E1     
       LDA    #$54    
       LDY    $9D     
       BEQ    LF928   
       LDA    #$C6    
       CPY    #$01    
       BEQ    LF928   
       LDA    #$00    
LF928: LDX    #$05    
LF92A: STA    $E2,X   
       DEX            
       BPL    LF92A   
       LDY    $81     
       LDA    LFAA8,Y 
       AND    #$08    
       BEQ    LF940   
       LDA    #$75    
       STA    $DE     
       LDA    #$78    
       STA    $E1     
LF940: RTS            

LF941: .byte $00,$08,$04,$0C,$02,$0A,$06,$0E,$01,$09,$05,$0D,$03,$0B,$07,$0F
LF951: .byte $0E,$0A,$0A,$0A,$0E,$04,$04,$04,$04,$04,$0E,$02,$0E,$08,$0E,$0E
       .byte $02,$06,$02,$0E,$02,$0A,$0E,$02,$02,$0E,$08,$0E,$02,$0E,$0E,$08
       .byte $0E,$0A,$0E,$0E,$02,$02,$04,$04,$0E,$0A,$0E,$0A,$0E,$0E,$0A,$0E
       .byte $02,$0E,$00,$00,$00,$00,$00
LF988: .byte $8A,$9A,$AA,$BA,$CA,$DA,$EA,$FA,$0A,$1A,$2A,$3A,$4A,$5A,$6A,$89
       .byte $99,$A9,$B9,$C9,$D9,$E9,$F9,$09,$19,$29,$39,$49,$59,$69,$88,$98
       .byte $A8,$B8,$C8,$D8,$E8,$F8,$08,$18,$28,$38,$48,$58,$68,$87,$87,$97
       .byte $97,$97,$A7,$A7,$A7,$B7,$B7,$B7,$C7,$C7,$C7,$D7,$00,$00,$01,$27
       .byte $01,$30,$01,$27,$02,$30,$02,$27,$02,$30,$03,$27,$03,$30,$03,$27
       .byte $04,$30,$04,$27,$04,$30,$05,$27,$05,$30,$05,$27,$06,$30,$06,$27
       .byte $06,$30,$07,$27,$07,$30,$07,$27,$08,$30,$08,$27,$08,$30,$09,$27
       .byte $09,$30,$09,$27,$0A,$30,$0A,$27,$0A,$30,$0C,$27,$0C,$30,$0C,$27
       .byte $0D,$30,$0D,$27,$0D,$30,$0C,$27,$0C,$30,$0C,$27,$0D,$30,$0D,$27
       .byte $0D,$30,$07,$27,$07,$30,$07,$27,$04,$30,$04,$27,$04,$30,$02,$27
       .byte $02,$30,$02,$27,$0F,$86,$0F,$86,$7E,$FF,$7E,$5A,$18,$54,$78,$B4
       .byte $FC,$48,$30,$C6,$00,$90,$60,$F0,$90,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$7E,$FF,$FF,$FF,$7E,$0F,$54,$38,$7C,$38,$54,$9E,$10
       .byte $54,$38,$54,$10,$0F,$00,$00,$10,$00,$00,$00,$10,$38,$10,$00,$10
       .byte $7C,$3C,$10,$00,$00,$18,$FF,$7E,$3C,$18,$3C,$18,$94,$00,$00,$54
       .byte $38,$38,$54,$00,$00,$0F,$00,$10,$54,$38,$FE,$38,$54,$10,$9E,$00
       .byte $7E,$FF,$FF,$FF,$FF,$FF,$7E,$0F
LFA90: .byte $08,$13,$1E,$08,$13,$1E
LFA96: .byte $03,$0E,$19,$03,$0E,$19
LFA9C: .byte $01,$02,$02,$01,$02,$03
LFAA2: .byte $25,$00,$75,$75,$50,$25
LFAA8: .byte $00,$00,$80,$20,$A0,$40,$C0,$10,$90,$30,$00,$00,$00,$00,$00,$00
       .byte $B0,$50,$D0,$08,$88,$28,$A8,$48,$C8,$18,$00,$00,$00,$00,$00,$00
       .byte $98,$38,$B8,$58,$D8,$00,$00,$04,$C7,$08,$C8,$04,$C6,$08,$C7,$04
       .byte $C5,$08,$C6,$04,$C4,$08,$C5,$04,$C7,$08,$C8,$04,$C6,$08,$C7,$04
       .byte $C5,$08,$C6,$04,$C4,$08,$C5,$00,$00,$04,$CF,$08,$CE,$04,$CD,$08
       .byte $CC,$04,$CB,$08,$CA,$04,$C9,$08,$C8,$04,$CF,$08,$CE,$04,$CD,$08
       .byte $CC,$04,$CB,$08,$CA,$04,$C9,$08,$C8,$00,$00,$02,$CA,$05,$CA,$08
       .byte $CA,$08,$C9,$08,$C8,$08,$C7,$08,$C6,$08,$4F,$08,$4E,$08,$4D,$08
       .byte $4C,$08,$4B,$08,$4A,$08,$49,$08,$48,$08,$47
LFB33: DEX            
       BNE    LFB33   
       STA    RESM0   
LFB38: DEY            
       BNE    LFB38   
       STA    RESM1   
       STA    WSYNC   
       LDA    $A8     
       STA    ENAM0   
       ROR            
       STA    ENAM1   
       ROR    $A8     
       STA    WSYNC   
       STA    WSYNC   
       STX    ENAM0   
       STX    ENAM1   
       RTS            

LFB51: LDX    INTIM   
       BNE    LFB51   
       STA    WSYNC   
       STX    VBLANK  
       STX    PF0     
       STX    PF1     
       STX    PF2     
       STX    CTRLPF  
       LDA    $DD     
       STA    COLUBK  
       STA    WSYNC   
       DEC    $E9     
       BNE    LFB83   
       DEC    $E8     
       BNE    LFB83   
       ASL            
       LDX    #$05    
       STX    $E8     
LFB75: ROL    $DD,X   
       DEX            
       BPL    LFB75   
       LDA    $E2     
       LDX    #$04    
LFB7E: STA    $E3,X   
       DEX            
       BPL    LFB7E   
LFB83: STA    WSYNC   
       LDA    $E1     
       STA    COLUP0  
       STA    COLUP1  
       LDA    $E0     
       STA    COLUPF  
       DEC    $A7     
       LDA    $A8     
       ADC    $80     
       ADC    $A7     
       STA    WSYNC   
       STA    $A8     
       LDX    #$05    
       LDY    #$04    
       JSR    LFB33   
       STA    WSYNC   
       STA    WSYNC   
       LDX    #$03    
       LDY    #$03    
       JSR    LFB33   
       STA    WSYNC   
       STA    WSYNC   
LFBB1: LDY    #$03    
LFBB3: STA    WSYNC   
       LDA    #$00    
       STA    PF0     
       STA    PF1     
       LDA    $8B,X   
       ASL            
       ASL            
       ASL            
       ASL            
       STA    PF2     
       LDA    $8B,X   
       NOP            
       NOP            
       STA    PF0     
       LDA    $90,X   
       STA    PF1     
       LDA    $95,X   
       STA    PF2     
       DEY            
       BNE    LFBB3   
       INX            
       CPX    #$05    
       BNE    LFBB1   
       STA    WSYNC   
       STY    PF0     
       STY    PF1     
       STY    PF2     
       STA    WSYNC   
       LDY    $EC     
       BEQ    LFBF9   
       DEY            
       LDA    ($EA),Y 
       STA    AUDF0   
       LSR            
       LSR            
       LSR            
       LSR            
       STA    AUDC0   
       DEY            
       LDA    ($EA),Y 
       STA    AUDV0   
       STY    $EC     
LFBF9: STA    WSYNC   
       LDX    #$04    
       LDY    #$03    
       JSR    LFB33   
       STA    WSYNC   
       LDY    $EF     
       BEQ    LFC1A   
       DEY            
       LDA    ($ED),Y 
       STA    AUDF1   
       LSR            
       LSR            
       LSR            
       LSR            
       STA    AUDC1   
       DEY            
       LDA    ($ED),Y 
       STA    AUDV1   
       STY    $EF     
LFC1A: STA    WSYNC   
       LDX    #$03    
       LDY    #$06    
       JSR    LFB33   
       STA    WSYNC   
       STA    WSYNC   
       LDA    $BA     
       AND    #$0F    
       STA    WSYNC   
       TAY            
LFC2E: DEY            
       BNE    LFC2E   
       STA    RESM0   
       LDA    $BB     
       AND    #$0F    
       STA    WSYNC   
       TAY            
LFC3A: DEY            
       BNE    LFC3A   
       STA    RESM1   
       STA    WSYNC   
       STA    HMCLR   
       LDA    $BA     
       AND    #$F0    
       STA    HMM0    
       LDA    $BB     
       AND    #$F0    
       STA    HMM1    
       STA    WSYNC   
       STA    HMOVE   
       LDA    $E1     
       STA    COLUPF  
       LDA    #$01    
       STA    CTRLPF  
LFC5B: STA    WSYNC   
       LDA    LFE3A,X 
       STA    PF0     
       INX            
       LDA    LFE3A,X 
       STA    PF1     
       INX            
       LDA    LFE3A,X 
       STA    PF2     
       INX            
       CPX    #$18    
       BNE    LFC5B   
       LDA    $DE     
       STA    COLUBK  
       LDX    #$00    
       STX    NUSIZ0  
       STX    NUSIZ1  
       LDY    $80     
       LDA    $A7     
       LSR            
       BCS    LFC8B   
       DEY            
       CPY    #$FF    
       BNE    LFC8B   
       LDY    #$CF    
LFC8B: STY    $80     
       STY    $A5     
       DEX            
       STX    $B7     
       INX            
LFC93: STX    $F0     
       JSR    LFE09   
       LDX    $F0     
       LDA    $84,X   
       AND    #$0F    
       STA    WSYNC   
       TAX            
LFCA1: DEX            
       BNE    LFCA1   
       STA    RESP0   
       JSR    LFE09   
       LDX    $F0     
       LDA    $87,X   
       AND    #$0F    
       STA    WSYNC   
       TAY            
LFCB2: DEY            
       BNE    LFCB2   
       STA    RESP1   
       JSR    LFE09   
       LDX    $F0     
       STA    HMCLR   
       LDA    $84,X   
       AND    #$F0    
       STA    HMP0    
       LDA    $87,X   
       AND    #$F0    
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       LDA    $E2,X   
       STA    COLUP0  
       LDA    $E5,X   
       STA    COLUP1  
       TXA            
       ASL            
       TAX            
       LDA    $A9,X   
       STA    $F2     
       LDA    $AF,X   
       STA    $F4     
       LDA    $AA,X   
       STA    $F3     
       LDA    $B0,X   
       STA    $F5     
LFCE9: JSR    LFE09   
       STA    WSYNC   
       LDA    ($F2),Y 
       STA    GRP0    
       LDA    ($F4),Y 
       STA    GRP1    
       INY            
       CPY    #$05    
       BNE    LFCE9   
       JSR    LFE09   
       LDA    #$00    
       STA    WSYNC   
       STA    GRP0    
       STA    GRP1    
       STA    WSYNC   
       LDY    $A5     
       LDA    LFE52,Y 
       STA    PF0     
       LDA    LFF22,Y 
       STA    PF1     
       INY            
       CPY    #$D0    
       BNE    LFD1B   
       LDY    #$00    
LFD1B: STY    $A5     
       LSR    $B8     
       BCC    LFD2F   
       LDA    $BC     
       AND    #$0F    
       STA    WSYNC   
       TAY            
LFD28: DEY            
       BNE    LFD28   
       STA    RESM0   
       BEQ    LFD48   
LFD2F: LDX    $B7     
       INX            
       CPX    #$0D    
       BNE    LFD38   
       LDX    #$00    
LFD38: STX    $B7     
       LDA    $C2,X   
       ASL            
       STA    WSYNC   
       STA    ENAM0   
       LSR            
       STA    ENAM1   
       LSR    $C2,X   
       LSR    $C2,X   
LFD48: NOP            
       NOP            
       STA    WSYNC   
       LSR    $B9     
       BCC    LFD5F   
       LDA    $BD     
       AND    #$0F    
       SEC            
       SBC    #$04    
       NOP            
       NOP            
       TAY            
LFD5A: DEY            
       BNE    LFD5A   
       STA    RESM1   
LFD5F: JSR    LFE09   
       STA    HMCLR   
       LSR    $B8     
       BCC    LFD6E   
       LDA    $BC     
       AND    #$F0    
       STA    HMM0    
LFD6E: LSR    $B9     
       BCC    LFD78   
       LDA    $BD     
       AND    #$F0    
       STA    HMM1    
LFD78: STA    WSYNC   
       STA    HMOVE   
       LDX    $F0     
       INX            
       CPX    #$03    
       BEQ    LFD86   
       JMP    LFC93   
LFD86: JSR    LFE09   
       LDA    $83     
       AND    #$0F    
       STA    WSYNC   
       TAY            
LFD90: DEY            
       BNE    LFD90   
       STA    RESP1   
       JSR    LFE09   
       STA    HMCLR   
       LDA    $83     
       AND    #$F0    
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       LDA    $DF     
       STA    COLUP1  
       LDX    $B5     
       STX    NUSIZ1  
       LDX    #$00    
LFDAE: STX    $F0     
       CPX    $82     
       BEQ    LFDC2   
       JSR    LFE09   
       LDX    $F0     
       STA    WSYNC   
LFDBB: INX            
       CPX    #$10    
       BMI    LFDAE   
       BPL    LFDDA   
LFDC2: JSR    LFE09   
       LDX    $F0     
       LDY    #$07    
LFDC9: STA    WSYNC   
       LDA    ($D2),Y 
       STA    GRP1    
       DEY            
       BMI    LFDBB   
       JSR    LFE09   
       LDX    $F0     
       JMP    LFDC9   
LFDDA: LDX    #$FF    
       LDA    #$2A    
       STA    WSYNC   
       STX    VBLANK  
       STX    VSYNC   
       STA    TIM8T   
LFDE7: LDA    INTIM   
       BNE    LFDE7   
       STA    WSYNC   
       STA    VSYNC   
       LDA    #$24    
       STA    TIM64T  
       LDA    SWCHB   
       LSR            
       BCS    LFDFE   
       JMP    LF08F   
LFDFE: LDY    $A4     
       BNE    LFE08   
       LSR            
       BCS    LFE08   
       JMP    LF010   
LFE08: RTS            

LFE09: STA    WSYNC   
       LDX    $A5     
       LDA    LFE52,X 
       STA    PF0     
       LDA    LFF22,X 
       STA    PF1     
       INX            
       CPX    #$D0    
       BNE    LFE1E   
       LDX    #$00    
LFE1E: STX    $A5     
       LDX    $B7     
       INX            
       CPX    #$0D    
       BNE    LFE29   
       LDX    #$00    
LFE29: STX    $B7     
       LDA    $C2,X   
       ASL            
       STA    WSYNC   
       STA    ENAM0   
       LSR            
       STA    ENAM1   
       LSR    $C2,X   
       LSR    $C2,X   
       RTS            

LFE3A: .byte $00,$00,$FE,$00,$03,$FF,$00,$1F,$FF,$00,$7F,$FF,$80,$FF,$FF,$C0
       .byte $FF,$FF,$E0,$FF,$FF,$F0,$FF,$FF
LFE52: .byte $FF,$FF,$FF,$FF,$7F,$7F,$3F,$10,$0F,$0F,$0F,$0F,$0F,$FF,$FF,$FF
       .byte $EF,$CF,$8F,$0F,$8F,$7F,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$7F,$7F
       .byte $7F,$0F,$0F,$FF,$FF,$FF,$FF,$7F,$FF,$FF,$1F,$EF,$1F,$FF,$FF,$FF
       .byte $FF,$EF,$EF,$CF,$CF,$0F,$CF,$FF,$FF,$EF,$CF,$FF,$EF,$CF,$8F,$8F
       .byte $0F,$0F,$CF,$FF,$FF,$7F,$BF,$DF,$DF,$3F,$2F,$EF,$EF,$EF,$6F,$6F
       .byte $6F,$6F,$2F,$2F,$2F,$2F,$2F,$2F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
       .byte $0F,$CF,$FF,$DF,$9F,$9F,$9F,$8F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
       .byte $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$FF,$FF,$BF,$1F,$0F,$0F,$0F,$FF
       .byte $DF,$DF,$DF,$9F,$8F,$0F,$FF,$FF,$EF,$EF,$EF,$CF,$FF,$7F,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$7F,$7F,$7F,$7F,$7F,$7F,$3F,$1F,$0F,$0F,$8F,$FF
       .byte $FF,$7F,$7F,$3F,$1F,$0F,$0F,$CF,$FF,$7F,$FF,$BF,$BF,$1F,$1F,$0F
       .byte $0F,$8F,$CF,$FF,$EF,$CF,$FF,$FF,$BF,$FF,$FF,$FF,$FF,$FF,$EF,$EF
       .byte $EF,$EF,$EF,$EF,$EF,$EF,$CF,$8F,$8F,$8F,$0F,$0F,$0F,$0F,$0F,$0F
LFF22: .byte $7F,$7F,$3F,$3F,$3F,$3F,$3F,$3F,$3F,$1F,$07,$07,$01,$C0,$FF,$FF
       .byte $FF,$FF,$EF,$6F,$E7,$E7,$67,$A7,$C7,$87,$83,$83,$81,$81,$00,$00
       .byte $06,$0D,$1B,$FD,$F8,$F0,$80,$00,$BF,$7F,$FF,$3F,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$BF
       .byte $9F,$8F,$FF,$FF,$0F,$F7,$EF,$CF,$1F,$3D,$29,$F9,$F1,$E0,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$7F,$7F,$7F,$7F,$3F,$3F,$3F,$3F,$1F,$1F,$0D,$0D
       .byte $7D,$F9,$F1,$E0,$E0,$E0,$FF,$FF,$F5,$F7,$77,$73,$71,$71,$21,$21
       .byte $00,$00,$00,$00,$07,$1B,$FD,$DB,$17,$FF,$FF,$7F,$1F,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$5F,$DF,$DF,$9F
       .byte $9F,$9F,$9F,$9F,$9F,$9F,$0F,$0F,$07,$03,$01,$00,$07,$3F,$DF,$EB
       .byte $5B,$33,$71,$27,$3F,$1F,$7F,$BF,$3F,$1F,$FF,$7F,$FF,$FF,$FF,$7F
       .byte $1F,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$7F,$7F,$7F,$7F,$0F
       .byte $00,$18,$FF,$7E,$3C,$18,$3C,$18,$00,$F0,$00,$F0,$00,$F0
