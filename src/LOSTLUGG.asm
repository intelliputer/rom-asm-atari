; Disassembly of roms/LOSTLUGG.BIN
; Disassembled Tue Oct  6 15:21:50 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/LOSTLUGG.BIN
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
PF0     =  $0D
PF2     =  $0F
RESP0   =  $10
RESP1   =  $11
RESM0   =  $12
RESM1   =  $13
AUDC0   =  $15
AUDF0   =  $17
AUDV0   =  $19
GRP0    =  $1B
GRP1    =  $1C
ENAM0   =  $1D
ENAM1   =  $1E
HMP0    =  $20
HMP1    =  $21
HMM0    =  $22
HMM1    =  $23
RESMP1  =  $29
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXM0P   =  $30
CXM1P   =  $31
CXM0FB  =  $34
CXBLPF  =  $36
CXPPMM  =  $37
INPT4   =  $3C
INPT5   =  $3D
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM8T   =  $0295
TIM64T  =  $0296
L7003   =   $7003
L700B   =   $700B
L701C   =   $701C
L7024   =   $7024
L707E   =   $707E
L7124   =   $7124
L7229   =   $7229
L722E   =   $722E
L7554   =   $7554
L7954   =   $7954
L7A84   =   $7A84
L7AF9   =   $7AF9
L7B00   =   $7B00
L7F59   =   $7F59
L7F5A   =   $7F5A
L7F62   =   $7F62
L7F77   =   $7F77
L7F7B   =   $7F7B
L7F7D   =   $7F7D
L7F7F   =   $7F7F
L7FC9   =   $7FC9
L7FCD   =   $7FCD
L7FD1   =   $7FD1
L7FD5   =   $7FD5
L7FD9   =   $7FD9

       ORG $7000

START:
L7000: CLD            
       SEI            
       LDX    #$FF    
L7004: TXS            
       INX            
       TXA            
L7007: STA    VSYNC,X 
       INX            
       BNE    L7007   
       LDX    #$6E    
       JSR    L7123   
       LDA    #$01    
       STA    $94     
       LDA    #$AA    
       STA    $95     
       LDA    #$A1    
       STA    $96     
L701D: INC    $D6     
       LDA    #$2A    
       STA    WSYNC   
       STA    VBLANK  
       STA    VSYNC   
       STA    TIM8T   
       LDX    #$00    
       STX    $A3     
L702E: TXA            
       ASL            
       TAY            
       LDA    $94,X   
       AND    #$F0    
L7035: BNE    L7042   
       PHA            
       LDA    $A3     
       BNE    L7041   
       PLA            
       LDA    #$50    
       BNE    L7045   
L7041: PLA            
L7042: DEC    $A3     
       LSR            
L7045: STA.wy $0097,Y 
       CPX    #$02    
       BNE    L704E   
       DEC    $A3     
L704E: LDA    $94,X   
       AND    #$0F    
       BNE    L705F   
       PHA            
       LDA    $A3     
       BNE    L705E   
       PLA            
       LDA    #$50    
       BNE    L7064   
L705E: PLA            
L705F: DEC    $A3     
       ASL            
       ASL            
       ASL            
L7064: STA.wy $009D,Y 
       INX            
       CPX    #$03    
       BCC    L702E   
L706C: LDA    INTIM   
       BNE    L706C   
       STA    WSYNC   
       STA    VSYNC   
       LDA    #$2D    
       STA    TIM64T  
       JSR    L7C08   
       JSR    L7B95   
       JSR    L7BA3   
       JSR    L720E   
       JSR    L75FB   
       LDY    $A8     
       BNE    L7093   
       JSR    L734F   
       JSR    L7166   
L7093: LDA    $A5     
       BEQ    L70CD   
       LDA    #$00    
       STA    $CB     
       JSR    L7BD0   
       LDA    $A6     
       BNE    L70AE   
       JSR    L73D6   
       JSR    L7275   
       JSR    L7430   
       JMP    L70D0   
L70AE: LDA    $D2     
       BEQ    L70B8   
       JSR    L7178   
       JMP    L70D0   
L70B8: LDA    $C7     
       CMP    #$06    
       BCS    L70C4   
       JSR    L7510   
       JMP    L70D0   
L70C4: JSR    L7275   
       JSR    L7113   
       JMP    L70D0   
L70CD: JSR    L748C   
L70D0: LDA    $D5     
       STA    HMP0    
       AND    #$0F    
       TAX            
       STA    WSYNC   
L70D9: DEX            
       BNE    L70D9   
       STA    RESP0   
       LDA    $D4     
       STA    HMP1    
       AND    #$0F    
       TAX            
       STA    WSYNC   
L70E7: DEX            
       BNE    L70E7   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       JSR    L720D   
       JSR    L720D   
       STA    HMCLR   
       JMP    L7800   
L70FB: LDA    $A5     
       BEQ    L7105   
       JSR    L7498   
       JMP    L7108   
L7105: JSR    L712C   
L7108: JSR    L71AA   
L710B: LDA    INTIM   
       BNE    L710B   
       JMP    L701D   
L7113: LDY    $D6     
       LDA    L7113,Y 
       STA    AUDF0   
       LDA    #$05    
       STA    AUDC0   
       LDA    #$0B    
       STA    AUDV0   
       RTS            

L7123: LDA    L758D,X 
       STA    $80,X   
       DEX            
       BPL    L7123   
       RTS            

L712C: LDA    $D6     
       AND    #$1F    
       BNE    L7165   
       LDA    $C8     
       BEQ    L7165   
       DEC    $C8     
       LDX    #$74    
       LDY    $A7     
L713C: LDA    L7587,Y 
       BPL    L7163   
       LDA    $94     
       LDY    $CC     
       STA    $CC     
       STY    $94     
       LDA    $95     
       LDY    $CD     
       STA    $CD     
       STY    $95     
       LDA    $96     
       LDY    $CE     
       STA    $CE     
       STY    $96     
       LDA    $C1     
       EOR    #$01    
       STA    $C1     
       BEQ    L7163   
       LDX    #$36    
L7163: STX    $8F     
L7165: RTS            

L7166: LDA    SWCHB   
L7169: ASL            
       LDX    $C1     
       BNE    L716F   
       ASL            
L716F: LDX    #$00    
       BCS    L7175   
       LDX    #$01    
L7175: STX    $D1     
       RTS            

L7178: LDA    $D6     
       AND    #$07    
       BNE    L71A9   
       DEC    $D3     
       BNE    L7196   
       LDA    #$00    
       STA    $D2     
       STA    AUDV0   
       LDA    #$FC    
       STA    $8D     
       LDA    #$08    
       LDX    #$05    
L7190: STA    $AB,X   
       DEX            
       BPL    L7190   
       RTS            

L7196: LDA    $D3     
       STA    AUDV0   
       LDA    #$08    
       STA    AUDC0   
       LDA    #$0F    
       STA    AUDF0   
       LDX    $D6     
       LDA    L7178,X 
       STA    $8D     
L71A9: RTS            

L71AA: LDA    $A5     
       BNE    L71BA   
       LDA    $A8     
       BNE    L71BA   
       LDA    INPT4   
       BPL    L71C0   
       LDA    INPT5   
       BPL    L71C0   
L71BA: LDA    SWCHB   
       LSR            
       BCS    L71DC   
L71C0: LDY    $A7     
       LDX    #$53    
       JSR    L7123   
       STY    $A7     
       LDA    #$36    
       STA    $A8     
       LDA    #$00    
       STA    $E8     
       STA    AUDV0   
       STA    $CA     
       LDA    #$FF    
       LDA    #$0D    
       STA    $E4     
       RTS            

L71DC: LSR            
       BCS    L720D   
       LDA    $D6     
       AND    #$0F    
       BNE    L720D   
       LDY    $A7     
       LDX    #$53    
       JSR    L7123   
       LDX    #$00    
       STX    AUDV0   
       INY            
       CPY    #$06    
       BNE    L71F7   
       LDY    #$00    
L71F7: STY    $A7     
       STY    $94     
       INC    $94     
       LDA    #$AA    
       STA    $95     
       LDA    L7587,Y 
       LDX    #$50    
       STX    $96     
       ASL            
       ROL    $96     
       INC    $96     
L720D: RTS            

L720E: LDA    $A5     
       BEQ    L7216   
       LDA    $A9     
       BEQ    L7274   
L7216: LDA    $DD     
       CMP    #$3D    
       BEQ    L725A   
       LDA    $A8     
       BNE    L722F   
L7220: LDA    #$02    
       STA    AUDC0   
       LDA    #$04    
       STA    AUDF0   
       LDA    $DD     
       SEC            
       SBC    #$29    
       STA    AUDV0   
L722F: LDA    $DF     
       LDY    #$F0    
       JSR    L7B50   
       STA    $DF     
       CMP    #$44    
       BNE    L724D   
       LDA    #$3D    
       STA    $DD     
       LDA    $A8     
       BNE    L7246   
       STA    AUDV0   
L7246: LDA    $A9     
       BEQ    L7274   
       DEC    $A9     
       RTS            

L724D: LDA    $D6     
       AND    #$0F    
       BNE    L7274   
       INC    $DD     
       INC    $E0     
       INC    $E2     
       RTS            

L725A: LDA    $A8     
       BNE    L7274   
       LDA    $D8     
       CMP    #$10    
       BNE    L7274   
       LDA    #$2D    
       STA    $DD     
       LDA    #$52    
       STA    $E0     
       LDA    #$77    
       STA    $E2     
       LDA    #$8D    
       STA    $DF     
L7274: RTS            

L7275: LDA    $A9     
       BNE    L729C   
       LDA    $BF     
       CMP    #$08    
       BMI    L7292   
       INC    $C0     
       SED            
       SEC            
       SBC    #$08    
       CLD            
       STA    $A3     
       LDA    $D6     
       AND    #$07    
       CMP    $A3     
       BPL    L72A1   
       BMI    L729F   
L7292: STA    $A3     
       LDA    $D6     
       AND    #$07    
       CMP    $A3     
       BMI    L729F   
L729C: JMP    L734E   
L729F: INC    $C0     
L72A1: LDA    $C0     
       CMP    #$0F    
       BMI    L7326   
       LDX    #$00    
       STX    $C0     
L72AB: LDA    $AC,X   
       STA    $AB,X   
       LDA    $B2,X   
       STA    $B1,X   
       LDA    $B8,X   
       STA    $B7,X   
       LDA    $82,X   
       STA    $81,X   
       INX            
       CPX    #$05    
       BNE    L72AB   
       LDA    #$08    
       STA    $B0     
       LDA    $C6     
       BEQ    L7326   
       DEC    $C6     
       LDA    #$00    
       STA    $B0     
       LDY    $A7     
       LDA    L7587,Y 
       AND    #$20    
       BEQ    L72F7   
       LDA    SWCHA   
       LDX    $C1     
       BNE    L72E2   
       ASL            
       ASL            
       ASL            
       ASL            
L72E2: ASL            
       BCS    L72E9   
       LDA    #$10    
       BCC    L72FF   
L72E9: ASL            
       BCS    L72F0   
       LDA    #$F0    
       BCC    L72FF   
L72F0: ASL            
       BCS    L72F7   
       LDA    #$00    
       BCC    L72FF   
L72F7: LDA    $D8     
       AND    #$07    
       TAX            
       LDA    L77CE,X 
L72FF: STA    $BC     
       LDA    $D8     
       AND    #$0F    
       TAX            
       LDA    L7577,X 
       STA    $B6     
       LDY    $A7     
       LDA    L7587,Y 
       AND    #$40    
       BEQ    L731E   
       LDA    $D8     
       CMP    #$F0    
       BCC    L731E   
       LDA    #$00    
       BEQ    L7324   
L731E: LDA    $D8     
L7320: AND    #$F0    
       ORA    #$06    
L7324: STA    $86     
L7326: LDA    $C0     
       AND    #$01    
       BNE    L734E   
       LDX    #$05    
L732E: LDA    $AB,X   
       CMP    #$08    
       BEQ    L734B   
       LDA    #$01    
       STA    $C5     
       LDA    $B1,X   
       LDY    $B7,X   
       JSR    L7B50   
       CMP    #$83    
       BNE    L7345   
       LDA    #$D3    
L7345: STA    $B1,X   
       LDA    #$00    
       STA    $C5     
L734B: DEX            
       BPL    L732E   
L734E: RTS            

L734F: LDA    SWCHA   
       LDY    #$40    
       STY    $EA     
       LDY    #$C0    
       STY    $E9     
L735A: LDX    $C1     
       BEQ    L7362   
       ASL            
       ASL            
       ASL            
       ASL            
L7362: STA    $C4     
       LDY    #$00    
       STY    $EB     
       ASL            
       BCS    L736D   
       LDY    $EA     
L736D: ASL            
       BCS    L7376   
       LDY    $E9     
       LDX    #$08    
       STX    $EB     
L7376: ASL            
       BCS    L737D   
       DEC    $E8     
       DEC    $E8     
L737D: ASL            
       BCS    L7384   
       INC    $E8     
       INC    $E8     
L7384: LDA    $E4     
       JSR    L7B50   
       STA    $E4     
       JSR    L7BEF   
       TAX            
       LDA    $D1     
       AND    #$01    
       TAY            
       TXA            
       CMP    L77D6,Y 
       BCS    L739F   
       LDX    L77DA,Y 
       STX    $E4     
L739F: CMP    L77D8,Y 
       BCC    L73A9   
       LDX    L77DC,Y 
       STX    $E4     
L73A9: LDA    $E8     
       CMP    #$02    
       BMI    L73B7   
       CMP    #$3C    
       BMI    L73B9   
       LDA    #$3C    
       BNE    L73B9   
L73B7: LDA    #$02    
L73B9: STA    $E8     
       LDY    #$00    
       LDA    $C4     
       AND    #$F0    
       CMP    #$F0    
       BEQ    L73CF   
       LDA    $D6     
       AND    #$0F    
       CMP    #$08    
       BCS    L73CF   
       LDY    #$75    
L73CF: TYA            
       CLC            
       ADC    $E8     
       STA    $E7     
       RTS            

L73D6: LDX    $C9     
       BEQ    L73EF   
       DEX            
       STX    $C9     
       BEQ    L73EB   
       LDA    L73EF,X 
       STA    AUDF0   
       STA    AUDV0   
       STA    AUDC0   
       JMP    L73EF   
L73EB: LDA    #$00    
       STA    AUDV0   
L73EF: LDX    $C2     
       CPX    #$80    
       BEQ    L742F   
       INX            
       LDA    #$08    
       STA    $AB,X   
       LDA    #$0A    
       STA    $C9     
       SED            
       CLC            
       LDA    $96     
       ADC    $BF     
       STA    $96     
       LDA    $95     
       BCC    L7424   
       TAY            
       ADC    #$00    
       STA    $95     
       LDA    $94     
       ADC    #$00    
       STA    $94     
       TYA            
       AND    #$03    
       CMP    #$03    
       BNE    L7424   
       LDX    $CA     
       CPX    #$06    
       BPL    L7424   
       INC    $CA     
L7424: CLD            
       LDA    $D8     
       ORA    #$01    
       STA    $DA     
       AND    #$FD    
       STA    $D9     
L742F: RTS            

L7430: LDX    #$05    
L7432: LDA    $AB,X   
       CMP    #$08    
       BEQ    L7442   
       LDA    $B1,X   
       CMP    #$03    
       BEQ    L7451   
       CMP    #$0C    
       BEQ    L7451   
L7442: DEX            
       BPL    L7432   
       LDA    $AB     
       CMP    #$08    
       BEQ    L748B   
       LDA    $C0     
       CMP    #$0D    
       BMI    L748B   
L7451: LDX    #$01    
       STX    $A6     
       DEX            
       LDA    $AB,X   
       CMP    #$08    
       BNE    L745D   
       INX            
L745D: STX    $C7     
       LDY    $A7     
       LDA    L7587,Y 
       AND    #$40    
       BEQ    L7476   
       LDA    $81,X   
       BNE    L7476   
       LDA    #$01    
       STA    $D2     
       STA    $CA     
       LDA    #$0F    
       STA    $D3     
L7476: LDA    #$00    
       STA    $C6     
       STA    $C9     
       LDA    #$1E    
       STA    $C8     
       DEC    $CA     
       SED            
       SEC            
       LDA    $BF     
       SBC    #$01    
       STA    $BF     
       CLD            
L748B: RTS            

L748C: DEC    $CB     
       BNE    L7497   
       LDX    #$11    
L7492: INC    $80,X   
       DEX            
       BPL    L7492   
L7497: RTS            

L7498: LDX    #$05    
       LDA    $C6     
       BNE    L750F   
L749E: LDA    $AB,X   
       CMP    #$08    
       BNE    L750F   
       DEX            
       BPL    L749E   
       SED            
       CLC            
       LDA    $BF     
       ADC    #$01    
       STA    $BF     
       CLD            
       LDY    $A7     
       LDA    L7587,Y 
       BPL    L74F3   
       LDA    $D0     
       BEQ    L74F3   
       LDY    #$74    
       LDA    $C1     
       EOR    #$01    
       STA    $C1     
       BEQ    L74C7   
       LDY    #$36    
L74C7: STY    $87     
       STY    $8F     
       LDA    $BF     
       LDY    $CF     
       STA    $CF     
       STY    $BF     
       LDA    $CA     
       LDY    $D0     
       STA    $D0     
       STY    $CA     
       LDA    $94     
       LDY    $CC     
       STA    $CC     
       STY    $94     
       LDA    $95     
       LDY    $CD     
       STA    $CD     
       STY    $95     
       LDA    $96     
       LDY    $CE     
       STA    $CE     
       STY    $96     
L74F3: LDX    #$00    
       STX    $A6     
       STX    AUDV0   
       LDA    $CA     
       BNE    L7506   
       STA    $A5     
       STA    $A9     
       LDA    #$0A    
       STA    $C8     
       RTS            

L7506: INX            
       STX    $A9     
       STX    $A5     
       LDA    #$19    
       STA    $C6     
L750F: RTS            

L7510: DEC    $C8     
       BNE    L7526   
       LDA    #$1E    
       STA    $C8     
L7518: INC    $C7     
       LDX    $C7     
       CPX    #$06    
       BEQ    L756A   
       LDA    $AB,X   
       CMP    #$08    
       BEQ    L7518   
L7526: LDY    $C8     
       LDA    L7D09,Y 
       STA    AUDV0   
       STA    AUDC0   
       STA    AUDF0   
       LDX    $C7     
       LDA    #$18    
       CPY    #$18    
       BPL    L7567   
       LDA    #$26    
       CPY    #$12    
       BPL    L7567   
       LDA    #$34    
       CPY    #$0C    
       BPL    L7567   
       LDA    #$42    
       CPY    #$06    
       BPL    L7567   
       LDA    #$50    
       CPY    #$02    
       BPL    L7567   
       LDA    $D8     
       AND    #$07    
L7555: TAY            
       LDA    #$0E    
       CPY    #$02    
       BMI    L7562   
       LDA    $D8     
       AND    #$F0    
       ORA    #$06    
L7562: STA    $81,X   
       LDA    L756F,Y 
L7567: STA    $AB,X   
       RTS            

L756A: LDA    #$00    
       STA    AUDV0   
       RTS            

L756F: .byte $6C,$88,$7A,$5E,$96,$A4,$B2,$C0
L7577: .byte $A6,$27,$27,$A7,$A7,$A7,$28,$28,$28,$28,$A8,$A8,$A8,$29,$29,$A9
L7587: .byte $00,$A0,$80,$40,$E0,$C0
L758D: .byte $74,$00,$00,$00,$00,$00,$00,$74,$36,$0E,$14,$18,$08,$FC,$C8,$74
       .byte $FC,$00,$5B,$7F,$00,$00,$00,$00,$7F,$00,$7F,$00,$7F,$00,$7F,$00
       .byte $7F,$00,$7F,$00,$00,$00,$00,$00,$00,$00,$00,$08,$08,$08,$08,$08
       .byte $08,$08,$08,$08,$08,$08,$08,$00,$00,$00,$00,$00,$00,$00,$77,$04
       .byte $00,$00,$00,$00,$00,$00,$19,$06,$00,$00,$00,$00,$00,$00,$00,$03
       .byte $03,$00,$00,$00,$08,$0A,$00,$00,$01,$01,$05,$3D,$7D,$3D,$7D,$6D
       .byte $52,$7D,$77,$7D,$34,$00,$7E,$00,$00,$00,$00,$00,$08,$77
L75FB: LDY    $AA     
       BEQ    L7605   
       LDY    $A8     
       DEC    $AA     
       BPL    L762D   
L7605: LDY    $A8     
       BNE    L760C   
       JMP    L76CC   
L760C: DEY            
       STY    $A8     
       BNE    L7616   
       INY            
       STY    $A5     
       STY    $A9     
L7616: LDY    $A8     
       LDA    L7C37,Y 
       STA    $AA     
       LDA    L7CA3,Y 
       STA    AUDV0   
       LSR            
       LSR            
L7624: LSR            
       LSR            
       STA    AUDC0   
       LDA    L7C6D,Y 
       STA    AUDF0   
L762D: LDA    #$36    
       STA    $81     
       LDA    #$77    
       STA    $ED     
       LDA    #$08    
       STA    $EC     
       LDA    #$F0    
       JSR    L7169   
       CPY    #$2F    
       BCC    L764A   
       LDA    #$00    
       STA    $EC     
       LDA    #$B0    
       BCS    L76A8   
L764A: CPY    #$2E    
       BCC    L7656   
       LDA    #$01    
       STA    $CA     
       LDA    #$F0    
       BCS    L76A8   
L7656: CPY    #$27    
       BCC    L765E   
       LDA    #$70    
       BCS    L76A8   
L765E: CPY    #$21    
       BCC    L766A   
       LDA    #$00    
       STA    $EC     
L7666: LDA    #$B0    
       BCS    L76A8   
L766A: CPY    #$20    
       BCC    L7676   
       LDA    #$02    
       STA    $CA     
       LDA    #$F0    
       BCS    L76A8   
L7676: CPY    #$19    
       BCC    L767E   
       LDA    #$70    
       BCS    L76A8   
L767E: CPY    #$11    
       BCC    L768A   
       LDA    #$00    
       STA    $EC     
       LDA    #$B0    
       BCS    L76A8   
L768A: CPY    #$10    
       BCC    L7696   
       LDA    #$03    
       STA    $CA     
       LDA    #$F0    
       BCS    L76A8   
L7696: CPY    #$0D    
       BCC    L769E   
       LDA    #$E0    
       BCS    L76A8   
L769E: CPY    #$0A    
       BCC    L76A6   
       LDA    #$60    
       BCS    L76A8   
L76A6: LDA    #$F0    
L76A8: JSR    L735A   
       LDA    $E4     
       TAX            
       AND    #$F0    
       CMP    #$80    
       BCC    L76BE   
       CMP    #$E0    
       BCS    L76BE   
       TXA            
       SEC            
       SBC    #$70    
       BNE    L76C2   
L76BE: TXA            
       SEC            
       SBC    #$61    
L76C2: STA    $B1     
       LDA    #$E0    
       STA    $E9     
       LDA    #$20    
       STA    $EA     
L76CC: RTS            

L76CD: .byte $20,$41,$9B,$A2,$26,$0B,$20,$20,$4C,$53,$52,$20,$41,$9B,$AC,$26
       .byte $0B,$20,$20,$4C,$53,$52,$20,$41,$9B,$B6,$26,$12,$20,$20,$53,$54
       .byte $41,$20,$53,$4E,$44,$54,$59,$50,$45,$31,$9B,$C0,$26,$12,$20,$20
       .byte $4C,$44,$41
L7700: .byte $00,$7E,$7E,$7E,$7E,$7E,$24,$3C,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$3C,$3C,$3C,$3C,$3C,$18,$00
       .byte $00,$00,$00,$00
L7724: .byte $00,$00,$00,$18,$18,$18,$18,$18,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$18,$18,$3C,$24,$66,$42,$00,$00,$00,$00,$00,$00,$00,$00,$18
       .byte $3C,$66,$C3,$18,$10,$00,$00,$00,$00,$00,$00,$00,$00,$FF,$FF,$00
       .byte $00,$58,$78,$70,$60,$60,$00,$00,$00,$00,$00,$24,$24,$24,$24,$24
       .byte $24,$3C,$3C,$3C,$2C,$24,$3C,$3C,$00,$00,$00,$00,$00,$00,$6C,$7C
       .byte $6E,$81,$81,$42,$34,$00,$00,$00,$30,$20,$30,$20,$30,$20,$30,$20
       .byte $30,$20,$30,$00,$00,$00,$00,$00,$00,$18,$18,$3C,$7E,$7E,$00,$00
       .byte $00,$00,$00,$44,$CC,$66,$66,$33,$33,$33,$33,$33,$00,$00,$00,$00
       .byte $00,$00,$00,$16,$1E,$1C,$18,$18,$00,$58,$78,$70,$60,$60,$00,$00
       .byte $00,$00,$18,$18,$18,$99,$BD,$7E,$3C,$18,$00,$00,$00,$28,$28,$28
       .byte $28,$38,$38,$00,$18,$5A,$7E,$3C,$18,$18
L77CE: .byte $F0,$F0,$00,$00,$00,$00,$10,$10
L77D6: .byte $46,$46
L77D8: .byte $D1,$C0
L77DA: .byte $14,$14
L77DC: .byte $6D,$8B,$20,$4C,$44,$41,$20,$23,$53,$55,$49,$54,$43,$41,$53,$45
       .byte $26,$32,$35,$35,$9B,$4C,$27,$13,$20,$20,$53,$54,$41,$20,$49,$4E
       .byte $54
L77FD: JMP    L70FB   
L7800: LDA    INTIM   
       BNE    L7800   
       LDX    $91     
       STA    WSYNC   
       STA    HMOVE   
       STA    VBLANK  
       LDA    L7D11,X 
       STA    COLUBK  
       LDA    $88     
       STA    COLUP0  
       LDA    $89     
L7818: STA    COLUP1  
       LDY    #$07    
L781C: STA    WSYNC   
       STA    HMOVE   
       LDA    L7D11,X 
       STA    COLUBK  
       LDA    L7D00,Y 
       STA    GRP1    
       LDA    ($DB),Y 
       STA    GRP0    
       INX            
       DEY            
       BPL    L781C   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
L783C: LDA    L7D11,X 
       STA    COLUBK  
       INX            
       LDA    $DF     
       STA    HMP0    
       AND    #$0F    
       TAY            
       STA    WSYNC   
       STA    HMOVE   
L784D: DEY            
       BNE    L784D   
       STA    RESP0   
       STA    WSYNC   
       STA    HMOVE   
       LDA    L7D11,X 
       STA    COLUBK  
       INX            
       JSR    L7C07   
       STA    HMCLR   
       STA    WSYNC   
       STA    HMOVE   
       LDA    L7D11,X 
       STA    COLUBK  
       INX            
       LDA    $80     
       STA    COLUP0  
       LDY    #$0F    
L7871: STA    WSYNC   
       STA    HMOVE   
       LDA    L7D11,X 
       STA    COLUBK  
       LDA    ($E0),Y 
       STA    NUSIZ0  
       LDA    ($DD),Y 
       STA    GRP0    
       LDA    ($E2),Y 
       STA    HMP0    
       INX            
       DEY            
       BPL    L7871   
       STA    WSYNC   
       STA    HMOVE   
       INY            
       STY    GRP0    
       STY    NUSIZ0  
       STY    COLUBK  
       INY            
       STY    CTRLPF  
       LDX    #$08    
       LDA    #$C0    
       STA    HMP0    
       STA    WSYNC   
       STA    HMOVE   
       LDA    $8A     
       STA    COLUBK  
       STA    WSYNC   
       STA    HMOVE   
L78AA: DEX            
       BNE    L78AA   
       STA    RESP0   
       LDX    #$08    
       LDA    #$F0    
       STA    HMM0    
       STA    WSYNC   
       STA    HMOVE   
L78B9: DEX            
       BNE    L78B9   
       STA    RESM0   
       STX    HMP0    
       LDX    #$09    
       LDA    #$50    
       STA    HMM1    
       STA    WSYNC   
       STA    HMOVE   
L78CA: DEX            
       BNE    L78CA   
       STA    RESM1   
       STX    HMM0    
       STA    WSYNC   
       STA    HMOVE   
       LDA    $8B     
       STA    COLUP1  
       LDA    $90     
       STA    COLUP0  
       LDA    $8C     
       STA    COLUPF  
       NOP            
       NOP            
       NOP            
       STA    HMCLR   
       LDX    #$03    
L78E8: STA    WSYNC   
       STA    HMOVE   
       DEX            
       BNE    L78E8   
       STX    COLUBK  
       STA    WSYNC   
       STA    HMOVE   
       LDA    $8D     
       STA    COLUBK  
       STA    WSYNC   
       STA    HMOVE   
       LDA    L7F5A   
       STA    GRP0    
       STA    WSYNC   
       STA    HMOVE   
       LDA    $8B     
       STA    WSYNC   
       STA    HMOVE   
       STA    COLUP0  
       LDA    L7F59   
       STA    GRP0    
       STA    WSYNC   
       STA    HMOVE   
       STA    WSYNC   
       STA    HMOVE   
       LDA    L7F58   
       STA    GRP0    
       STA    WSYNC   
       STA    HMOVE   
       JSR    L7C05   
       JSR    L7C05   
       LDA    #$50    
       STA    HMP0    
       LDY    #$03    
       LDA    #$25    
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$FF    
       STA    ENAM0   
       STA    ENAM1   
       LDA    ($92),Y 
L7942: STA    GRP0    
       DEY            
       LDA    #$30    
       STA    HMM0    
       LDA    #$C0    
       STA    HMM1    
       LDA    #$00    
       STA    HMP0    
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$C0    
       STA    PF2     
       LDA    ($92),Y 
       STA    GRP0    
       DEY            
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$E0    
       STA    PF2     
       LDA    ($92),Y 
       DEY            
       STA    GRP0    
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$F0    
       STA    PF2     
       LDA    ($92),Y 
       STA    GRP0    
       JSR    L7C05   
       LDA    #$D0    
       STA    HMM1    
       LDA    #$00    
       STA    WSYNC   
       STA    HMOVE   
       LDY    #$F8    
       STY    PF2     
       STA    GRP0    
       STA    WSYNC   
       STA    HMOVE   
       STA    ENAM0   
       STA    ENAM1   
       LDX    #$FC    
       STX    PF2     
       LDX    $8B     
       STX    COLUPF  
       STA    CXCLR   
       STA    HMCLR   
       STA    NUSIZ1  
       LDA    $D1     
       STA    NUSIZ0  
       STA    WSYNC   
       STA    HMOVE   
       LDA    $E4     
       STA    HMP0    
       AND    #$0F    
       TAX            
       STA    WSYNC   
       STA    HMOVE   
L79B3: DEX            
       BNE    L79B3   
       STA    RESP0   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$70    
       STA    PF0     
       STX    PF2     
       LDA    $8E     
       STA    COLUPF  
       LDA    $87     
       STA    COLUP0  
       LDA    $EB     
       STA    REFP0   
       LDY    $E7     
       LDX    $C0     
       STA    HMCLR   
L79D4: LDA    ($E5),Y 
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       INY            
       DEX            
       BPL    L79D4   
       LDX    #$80    
       STX    $C2     
       LDX    #$05    
L79E6: LDA    $AB,X   
       STA    $BD     
       LDA    $81,X   
       STA    COLUP1  
       LDA    $B1,X   
       STX    $A3     
       STA    HMP1    
       AND    #$0F    
       TAX            
       LDA    ($E5),Y 
       INY            
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
L7A00: DEX            
       BNE    L7A00   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       LDA    ($E5),Y 
       STA    GRP0    
       INY            
       STY    $E7     
       LDA    #$0D    
       STA    $C3     
       LDX    $A3     
       LDA    CXPPMM  
       BPL    L7A1C   
       STX    $C2     
L7A1C: STA    CXCLR   
       STA    HMCLR   
L7A20: LDA    ($E5),Y 
       INC    $E7     
       LDY    $C3     
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       LDA    ($BD),Y 
       STA    GRP1    
       LDY    $E7     
       DEC    $C3     
       BPL    L7A20   
       DEX            
       BPL    L79E6   
       LDA    #$0F    
       SEC            
       SBC    $C0     
       TAX            
       LDY    $E7     
L7A41: LDA    ($E5),Y 
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       STY    $A3     
       TXA            
       TAY            
       LDA    ($EC),Y 
       STA    GRP1    
       LDY    $A3     
       INY            
       DEX            
       BPL    L7A41   
       INX            
       STA    WSYNC   
       STA    HMOVE   
       LDA    $8E     
       STA    COLUBK  
       STX    GRP0    
       LDA    CXPPMM  
       BPL    L7A6A   
       LDA    #$FF    
       STA    $C2     
L7A6A: STA    WSYNC   
       STA    HMOVE   
       LDX    $CA     
       DEX            
       LDA    L7F7F,X 
       STA    NUSIZ0  
       LDA    L7F85,X 
       STA    NUSIZ1  
       LDA    #$10    
       STA    HMP1    
       STA    RESP0   
       STA    RESP1   
       LDA    $8F     
       STA    COLUP0  
       STA    COLUP1  
       LDY    #$07    
L7A8B: STA    WSYNC   
       STA    HMOVE   
       LDA    L7700,Y 
       CPX    #$00    
       BMI    L7A9E   
       STA    GRP0    
       CPX    #$01    
       BMI    L7A9E   
       STA    GRP1    
L7A9E: STA    HMCLR   
       DEY            
       BPL    L7A8B   
       STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    PF0     
       STA    COLUBK  
       STA    REFP0   
       LDA    #$FF    
       STA    WSYNC   
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDX    #$0A    
       JSR    L7C07   
       STA    HMCLR   
       STA    WSYNC   
L7AC4: DEX            
       BNE    L7AC4   
       STA    RESP0   
       LDX    #$0A    
       STA    WSYNC   
L7ACD: DEX            
       BNE    L7ACD   
       STA    RESP1   
       LDA    #$60    
       STA    HMP0    
       LDA    #$E0    
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       LDY    #$07    
       BNE    L7B00   
       EOR    ($20,X) 
       .byte $23 ;.RLA
       BIT    CXBLPF  
       BMI    L7A84   
       BIT    $1229   
       JSR    $4220   
       .byte $43 ;.SRE
       .byte $53 ;.SRE
       JSR    $4F43   
       LSR    $4954   
       LSR    $4555   
       .byte $9B ;.SHS
       ROL    RESMP1,X
       .byte $14 ;.NOP
       JSR    $8554   
       .byte $02 ;.JAM
       LDA    ($97),Y 
       STA    GRP0    
       LDA    ($9D),Y 
       STA    GRP1    
       STY    $A3     
       LDA    ($9B),Y 
       STA    $A4     
       LDA    ($A1),Y 
       TAX            
       TXS            
       LDA    ($9F),Y 
       TAX            
       LDA    ($99),Y 
       LDY    $A4     
       STA    GRP0    
       STX    GRP1    
       TSX            
       STY    GRP0    
       STX    GRP1    
       LDY    $A3     
       DEY            
       BPL    L7B00   
       INY            
       STY    GRP0    
       STY    GRP1    
       STY    NUSIZ0  
       STY    NUSIZ1  
       LDX    #$FF    
       TXS            
       STA    WSYNC   
       LDA    #$1F    
       STA    VBLANK  
       STA    TIM64T  
       JMP    L77FD   
L7B41: .byte $5E,$29,$09,$20,$20,$54,$41,$58,$9B,$68,$29,$0E,$20,$20,$41
L7B50: STA    $A3     
       STY    $A4     
       SEC            
       SBC    $A4     
       LDY    $A4     
       BMI    L7B69   
       LDY    $A3     
       BPL    L7B79   
       TAY            
       BMI    L7B79   
       INY            
       TYA            
       SEC            
       SBC    #$10    
       BNE    L7B79   
L7B69: LDY    $A3     
       BMI    L7B79   
       TAY            
       AND    #$F0    
       CMP    #$70    
       BCC    L7B7A   
       DEY            
       TYA            
       CLC            
       ADC    #$10    
L7B79: TAY            
L7B7A: TYA            
       JSR    L7BEF   
       STY    $A3     
       LDY    $C5     
       CMP    L7F7B,Y 
       BCC    L7B92   
       CMP    L7F7D,Y 
       BCS    L7B8F   
       LDA    $A3     
       RTS            

L7B8F: LDA    #$34    
       RTS            

L7B92: LDA    #$2E    
       RTS            

L7B95: LDA    $D6     
       BNE    L7BA2   
       LDA    $D4     
       LDY    #$10    
       JSR    L7B50   
       STA    $D4     
L7BA2: RTS            

L7BA3: LDA    $D6     
       AND    #$03    
       BNE    L7BCF   
       LDA    $DB     
       CMP    #$3D    
       BEQ    L7BC1   
       LDA    $D5     
       LDY    #$10    
       JSR    L7B50   
       STA    $D5     
       CMP    #$2E    
       BNE    L7BCF   
       LDA    #$3D    
       STA    $DB     
       RTS            

L7BC1: LDA    $D8     
       CMP    #$05    
       BCS    L7BCF   
       LDA    #$09    
       STA    $DB     
       LDA    #$44    
       STA    $D5     
L7BCF: RTS            

L7BD0: LDA    $A9     
       BNE    L7BEE   
       LDA    $D6     
       AND    #$07    
       CMP    #$04    
       BPL    L7BE0   
       LDA    #$36    
       BNE    L7BE2   
L7BE0: LDA    #$FC    
L7BE2: STA    $90     
       LDA    $D6     
       AND    #$38    
       LSR            
       CLC            
       ADC    #$5B    
       STA    $92     
L7BEE: RTS            

L7BEF: STA    $A3     
       EOR    #$F0    
       CLC            
       ADC    #$70    
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $A4     
       LDA    $A3     
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    $A4     
       RTS            

L7C05: PHA            
       PLA            
L7C07: RTS            

L7C08: LDA    $D9     
       STA    $A3     
       LDA    $D8     
       STA    $A4     
       LDA    #$00    
       LDX    #$08    
L7C14: LSR    $A3     
       BCC    L7C1B   
       CLC            
       ADC    $A4     
L7C1B: ROR            
       ROR    $D8     
       DEX            
       BNE    L7C14   
       CLC            
       LDA    $D8     
       ADC    $DA     
       STA    $D8     
       INC    $D7     
       LDX    $D7     
       BNE    L7C36   
       TAX            
       ASL            
       SEC            
       ROL            
       STA    $DA     
       BNE    L7C08   
L7C36: RTS            

L7C37: .byte $0C,$06,$06,$03,$03
L7C3C: .byte $03,$03,$06,$06,$06,$03,$03,$03,$03,$06,$06,$03,$03,$03,$03,$06
       .byte $06,$06,$06,$06,$12,$06,$0C,$06,$06,$06,$06,$06,$06,$06,$06,$06
       .byte $06,$12,$06,$06,$0C,$06,$06,$06,$06,$06,$06,$06,$06,$06,$12,$06
       .byte $00
L7C6D: .byte $00,$00,$0F,$0D,$04,$0B,$1F,$1B,$1F,$1B,$18,$06,$18,$1F,$14,$1B
       .byte $18
L7C7E: .byte $06,$18,$1F,$14,$16,$17,$18,$17,$18,$00,$0B,$1B,$1F,$10,$0F,$07
       .byte $17,$18,$1B,$1F,$1B,$1F,$08,$1F,$04,$14,$1F,$0F,$14,$1F,$18,$19
       .byte $14,$12,$14,$08,$00
L7CA3: .byte $C0,$C0,$C8,$C8,$14,$C8,$58,$C8,$58,$C8,$49,$CA,$49,$58,$C8,$C8
       .byte $49,$CA,$49,$58,$C8,$C8,$C8,$C8,$C8,$C8,$C0,$C8,$48,$C8,$C8,$C8
       .byte $C8,$C8,$C8,$C8,$C8,$C8,$C8,$C0,$C8,$14,$C8,$58,$C8,$C8,$C8,$C8
       .byte $C8,$C8,$C8,$C8,$C0,$00,$30,$9B,$44,$2A,$17,$20,$20,$2E,$42,$59
       .byte $54,$45,$20,$30,$2C,$30,$2C,$30,$2C,$30,$2C,$30,$2C,$30,$9B,$4E
       .byte $2A,$2C,$20,$53,$55,$49,$54,$31,$20,$2E,$42,$59,$54
L7D00: .byte $18,$3C,$7F,$FE,$3C,$18,$00,$00,$00
L7D09: .byte $10,$18,$9C,$FF,$FF,$9C,$18,$10
L7D11: .byte $70,$80,$71,$81,$72,$82,$73,$83,$74,$84,$75,$85,$76,$86,$77,$87
       .byte $78,$88,$79,$89,$7A,$8A,$7B,$8B,$7C,$8C,$7D,$8D,$00,$00,$00,$00
       .byte $00,$01,$03,$07,$87,$FE,$FF,$FE,$7E,$07,$03,$01,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$05,$05,$05,$05,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$D0
       .byte $00,$00,$00,$70,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$9B,$76,$2A,$2C,$20,$53,$55,$49,$54,$33
       .byte $20,$2E,$42,$59,$54,$45,$20,$24,$30,$30,$2C,$24,$31,$38,$2C,$24
       .byte $31,$38,$2C,$24,$33,$43,$2C,$24,$32,$34,$2C,$24,$36,$36,$2C,$24
       .byte $34,$32,$9B,$80,$2A,$27,$20,$20,$2E,$42,$59,$54,$45,$20,$24,$30
       .byte $30,$2C,$24,$30,$30,$2C,$24,$30,$30,$2C,$24,$30,$30,$2C,$24,$30
       .byte $30,$2C,$24,$30,$30,$2C,$24,$30,$30,$9B,$8A,$2A,$2C,$20,$53,$55
       .byte $49,$54,$34,$20,$2E,$42,$59,$54,$45,$20,$24,$30,$30,$2C,$24,$00
       .byte $00,$00,$00,$00,$00
L7E06: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00
L7E20: BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       CLC            
       CLC            
       CLC            
       BPL    L7E9E   
L7E66: SEI            
       .byte $5C ;.NOP
       LSR    $1818,X 
       .byte $1C ;.NOP
       .byte $14 ;.NOP
       .byte $14 ;.NOP
       ROL    $62,X   
       .byte $42 ;.JAM
       .byte $42 ;.JAM
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
L7E9E: BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       CLC            
       CLC            
       CLC            
       BPL    L7EF3   
       CLC            
       CLC            
       CLC            
       CLC            
       CLC            
       CLC            
       BPL    L7EF3   
       BPL    L7EF5   
       CLC            
       CLC            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
L7EF3: BRK            
       BRK            
L7EF5: BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       .byte $3C ;.NOP
       ROR    $6666,X 
       ROR    $66     
       ROR    $3C3C,X 
       .byte $3C ;.NOP
       CLC            
       CLC            
       CLC            
       CLC            
       SEC            
       CLC            
       ROR    $607E,X 
       .byte $7C ;.NOP
       ROL    L7E06,X 
       .byte $3C ;.NOP
       .byte $3C ;.NOP
       ROR    $0C06,X 
       .byte $0C ;.NOP
       ASL    $7E     
       .byte $3C ;.NOP
       .byte $0C ;.NOP
       .byte $0C ;.NOP
       ROR    $6C7E,X 
       JMP    ($1C3C) 
L7F28: .byte $3C,$7E,$06,$7E,$7C,$60,$7E,$7E,$3C,$7E,$66,$7E,$7C,$60,$7E,$3C
       .byte $60,$30,$18,$0C
L7F3C: .byte $06,$06,$7E,$7E,$3C,$7E,$66
L7F43: .byte $3C ;.NOP
       .byte $3C ;.NOP
       ROR    $7E     
       .byte $3C ;.NOP
       .byte $3C ;.NOP
       ROR    $3E06,X 
       ROR    L7E66,X 
       .byte $3C ;.NOP
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
L7F58: ROR    $183C,X 
       .byte $F7 ;.ISB
       .byte $F7 ;.ISB
       ROR    INPT4,X 
       .byte $F3 ;.ISB
       .byte $F3 ;.ISB
       ROR    INPT4,X 
       SBC    L7AF9,Y 
       .byte $3C ;.NOP
       .byte $FC ;.NOP
       .byte $FC ;.NOP
       .byte $7C ;.NOP
       .byte $3C ;.NOP
       .byte $3F ;.RLA
       .byte $3F ;.RLA
       ROL    $9F3C,X 
       .byte $9F ;.SHA
       LSR    $CF3C,X 
       .byte $CF ;.DCP
       ROR    $EF3C   
       .byte $EF ;.ISB
       ROR    $413C   
       BMI    L7F62   
       CPX    VSYNC   
       BRK            
       ORA    ($01,X) 
       .byte $03 ;.SLO
       .byte $03 ;.SLO
L7F85: BRK            
       BRK            
       BRK            
       ORA    ($01,X) 
       .byte $03 ;.SLO
       BIT    $4220   
       .byte $52 ;.JAM
       EOR    #$45    
       LSR    HMP0    
       ROL    $5942   
       .byte $54 ;.NOP
       EOR    HMP0    
       BIT    CXM0P   
       BMI    L7FC9   
       BIT    CXM0P   
       BMI    L7FCD   
       BIT    CXM0P   
       BMI    L7FD1   
       BIT    CXM0P   
       BMI    L7FD5   
       BIT    CXM0P   
       BMI    L7FD9   
       BIT    CXM1P   
       SEC            
       BIT    $3124   
       SEC            
       .byte $9B ;.SHS
       SED            
       ROL            
       .byte $27 ;.RLA
       JSR    $2E20   
       .byte $42 ;.JAM
       EOR    $4554,Y 
       JSR    $3324   
       .byte $43 ;.SRE
       BIT    $3724   
       EOR    CXCLR   
       BIT    CXPPMM  
       EOR    CXCLR   
       BIT    CXM0P   
       BMI    L7FFC   
       BIT    CXM0P   
       BMI    L7000   
       BIT    CXM0P   
       BMI    L7004   
       BIT    CXM0P   
       BMI    L7F77   
       .byte $02 ;.JAM
       .byte $2B ;.ANC
       BIT    $5320   
       .byte $4F ;.SRE
       .byte $43 ;.SRE
       .byte $4B ;.ASR
       .byte $53 ;.SRE
       JSR    $422E   
       EOR    $4554,Y 
       JSR    $3024   
       BMI    L701C   
       BIT    CXM0FB  
       .byte $34 ;.NOP
       BIT    $4324   
       .byte $43 ;.SRE
       BIT    $3624   
       ROL    CXCLR,X 
L7FFC: BRK            
       BVS    L7035   
L7FFF: .byte $2C
