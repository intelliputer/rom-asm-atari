; Disassembly of roms/Shark Attack.bin
; Disassembled Tue Oct  6 15:22:42 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Shark Attack.bin
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
RESP1   =  $11
RESM0   =  $12
RESM1   =  $13
RESBL   =  $14
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
HMP1    =  $21
HMM0    =  $22
HMM1    =  $23
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXM0P   =  $30
CXM1P   =  $31
CXP0FB  =  $32
CXP1FB  =  $33
CXPPMM  =  $37
INPT4   =  $3C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM8T   =  $0295
TIM64T  =  $0296

       ORG $7000

START:
       CLD            
       SEI            
       LDX    #$FF    
       TXS            
       INX            
       TXA            
L7007: STA    VSYNC,X 
       INX            
       BNE    L7007   
       LDY    #$0E    
       LDX    #$7E    
L7010: STX    $81,Y   
       DEY            
       DEY            
       BPL    L7010   
       LDY    #$17    
       JSR    L7EB6   
L701B: LDA    #$2A    
       STA    WSYNC   
       STA    VBLANK  
       STA    VSYNC   
       STA    TIM8T   
       LDA    $F0     
       ASL            
       BMI    L7042   
       ASL            
       ASL            
       BMI    L7080   
       AND    #$10    
       BNE    L7056   
       LDA    $D9     
       LDY    $DE     
       JSR    L72E9   
       BNE    L7080   
       LDA    $F0     
       ORA    #$40    
       STA    $F0     
L7042: LDA    #$00    
       STA    $D9     
       LDX    $D7     
       STX    $C8     
       STX    AUDF0   
       LDA    #$0C    
       STA    AUDC0   
       STA    AUDV0   
       CPX    #$74    
       BNE    L7080   
L7056: LDA    $E2     
       AND    #$03    
       TAX            
       LDY    L7EFB,X 
       LDA    L7FF8,X 
       BIT    $F0     
       BVS    L7076   
       STA    $EF     
       STY    $EB     
       LDX    #$10    
       TYA            
       BPL    L7070   
       LDX    #$F0    
L7070: STX    $F5     
       LDA    #$FD    
       BNE    L707C   
L7076: STA    $D9     
       STY    $DE     
       LDA    #$BF    
L707C: AND    $F0     
       STA    $F0     
L7080: LDX    #$06    
L7082: LDA    $EC,X   
       LDY    #$00    
       AND    #$0F    
       BNE    L708E   
       LDA    #$50    
       BNE    L7092   
L708E: DEY            
       ASL            
       ASL            
       ASL            
L7092: STA    $80,X   
       LDA    $ED,X   
       PHA            
       AND    #$F0    
       BNE    L70A3   
       CPY    #$00    
       BNE    L70A3   
       LDA    #$50    
       BNE    L70A5   
L70A3: DEY            
       LSR            
L70A5: STA    $82,X   
       PLA            
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA    $84,X   
       CPX    #$00    
       BEQ    L70B7   
       LDX    #$00    
       BPL    L7082   
L70B7: LDA    $F1     
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA    $8E     
       LDA    $F1     
       AND    #$F0    
       LSR            
       STA    $8C     
L70C7: LDA    INTIM   
       BNE    L70C7   
       STA    WSYNC   
       STA    VSYNC   
       STA    VBLANK  
       LDX    #$26    
       STX    TIM64T  
       LDX    #$86    
       STX    COLUBK  
       LDA    SWCHB   
       LSR            
       BCS    L70E4   
       JSR    L7CF3   
L70E4: LDY    #$16    
       LDA    #$03    
       PHA            
       LDX    #$2A    
L70EB: LDA    $91,X   
       STA    $9D,X   
       STA    $9B,X   
       STA    $99,X   
       STA    $97,X   
       STA    $95,X   
       STA    $93,X   
       LDA    $90,X   
       STA    $DA     
       STX    $FC     
       PLA            
       TAX            
       LDA    L7CEF,X 
       STA    $DB     
       DEX            
       TXA            
       PHA            
       LDA.wy $00D9,Y 
       STA    $DC     
       JSR    L7C2D   
       LDX    $FC     
       LDA    $E5     
       STA    $92,X   
       LDA    $E6     
       STA    $94,X   
       LDA    $E7     
       STA    $96,X   
       LDA    $E8     
       STA    $98,X   
       LDA    $E9     
       STA    $9A,X   
       LDA    $EA     
       STA    $9C,X   
       CPX    #$1C    
       BNE    L7131   
       LDY    #$00    
L7131: TXA            
       SEC            
       SBC    #$0E    
       TAX            
       BPL    L70EB   
       PLA            
       STA    WSYNC   
       LDX    #$09    
L713D: DEX            
       BPL    L713D   
       STA    RESP1   
       STA    WSYNC   
       LDA    $D7     
       LDX    #$07    
L7148: DEX            
       BPL    L7148   
       STA    RESM0   
       STA    RESBL   
       STA    RESM1   
       STA    HMCLR   
       AND    #$0F    
       BNE    L7193   
       LDA    SWCHB   
       AND    #$02    
       BNE    L7193   
       STA    $EC     
       STA    $F2     
       LDX    $F9     
       INX            
       CPX    #$10    
       BNE    L716B   
       LDX    #$00    
L716B: TXA            
       STA    $F9     
       INX            
       TXA            
       CPX    #$0A    
       BMI    L7182   
       LDA    #$10    
       STA    $E5     
       TXA            
       SEC            
       SBC    #$0A    
       ORA    $E5     
       BNE    L7182   
       LDA    #$01    
L7182: STA    $ED     
       LSR            
       LDX    #$02    
       BCC    L718B   
       LDX    #$01    
L718B: STX    $F3     
       LDA    $F4     
       ORA    #$80    
       STA    $F4     
L7193: LDA    $F1     
       BNE    L71B0   
       LDA    $F9     
       LSR            
       BCC    L71AA   
       LDA    $D6     
       AND    #$33    
       BNE    L71B0   
L71A2: LDA    $F4     
       ORA    #$80    
       STA    $F4     
       BNE    L71B0   
L71AA: LDA    $D6     
       AND    #$30    
       BEQ    L71A2   
L71B0: LDA    $F0     
       TAY            
       AND    #$10    
       BNE    L71E5   
       LDA    CXPPMM  
       BPL    L722F   
       TYA            
       LSR            
       BCS    L71CB   
       LDA    $F4     
       AND    #$10    
       BEQ    L71CB   
       LDA    $F4     
       AND    #$02    
       BNE    L722F   
L71CB: LDA    #$C0    
       STA    $90     
       LDA    #$CB    
       STA    $9E     
       LDA    $D6     
       SEC            
       BPL    L71DC   
       SBC    #$01    
       BMI    L71DE   
L71DC: SBC    #$10    
L71DE: STA    $D6     
       TYA            
       ORA    #$10    
       STA    $F0     
L71E5: INC    $D9     
       LDA    $F0     
       ORA    #$08    
       TAX            
       LDA    $D7     
       AND    #$02    
       BEQ    L71F6   
       TXA            
       AND    #$F7    
       TAX            
L71F6: STX    $F0     
       LDX    $D9     
       LDA    #$0F    
       STA    AUDV0   
       LDA    #$01    
       STA    AUDC0   
       TXA            
       EOR    #$FF    
       LSR            
       LSR            
       LSR            
       STA    AUDF0   
       CPX    #$B4    
       BCC    L722F   
       LDA    $F9     
       LSR            
       BCC    L7219   
       JSR    L72D5   
       JSR    L7E9C   
L7219: TYA            
       AND    #$EF    
       STA    $F0     
       LDY    #$07    
       JSR    L7EB6   
       STY    $F4     
       LDA    $F9     
       AND    #$08    
       BNE    L7238   
       STA    $F1     
       BEQ    L7238   
L722F: LDA    $EF     
       LDY    $EB     
       JSR    L72E9   
       BNE    L7240   
L7238: STX    $EF     
       LDA    $F0     
       AND    #$FB    
       STA    $F0     
L7240: LDX    #$05    
L7242: LDA    $CD,X   
       BNE    L726F   
       DEX            
       BPL    L7242   
       LDA    $F9     
       CMP    #$08    
       BMI    L725A   
       LDA    $F4     
       LSR            
       BCS    L726F   
       LDA    $F4     
       ORA    #$04    
       STA    $F4     
L725A: LDA    $F1     
       BNE    L726F   
       LDA    $F4     
       AND    #$FB    
       STA    $F4     
       JSR    L7E9C   
       LDA    $F9     
       LSR            
       BCC    L726F   
       JSR    L72D5   
L726F: LDA    $F4     
       AND    #$08    
       BNE    L729B   
       LDA    $EF     
       STA    $DC     
       JSR    L7B0D   
       LDA    CXM0P   
       BMI    L7287   
       BIT    CXM1P   
       BVC    L729B   
       INX            
       INX            
       INX            
L7287: LDA    $CD,X   
       AND    $DC     
       STA    $CD,X   
       LDA    $F4     
       ORA    #$08    
       STA    $F4     
       STA    AUDC0   
       STA    AUDF0   
       LDA    #$0F    
       STA    AUDV0   
L729B: LDA    INTIM   
       BNE    L729B   
       STA    VBLANK  
       JMP    L777B   
L72A5: .byte $E0,$DE,$DF,$D9,$90,$91,$9E,$9F,$D6,$EB,$C8,$C9,$CC,$CB,$CA,$BA
       .byte $F6,$E4,$BB,$AC,$AD,$FB,$F4,$FA
L72BD: .byte $09,$09,$4A,$4A,$34,$7B,$63,$7C,$33,$2E,$74,$34,$72,$1A,$C9,$87
       .byte $11,$FF,$7C,$03,$7D,$7F,$80,$60
L72D5: LDA    $D6     
       TAX            
       BMI    L72DF   
       AND    #$03    
       BNE    L72E3   
       RTS            

L72DF: AND    #$30    
       BEQ    L72E8   
L72E3: TXA            
       EOR    #$80    
       STA    $D6     
L72E8: RTS            

L72E9: CMP    #$7D    
       BPL    L72F1   
       CMP    #$02    
       BNE    L72FB   
L72F1: CPY    #$84    
       BEQ    L72F9   
       CPY    #$DD    
       BNE    L72FB   
L72F9: LDX    #$00    
L72FB: RTS            

L72FC: LDA    #$10    
       LDX    $F5     
       BMI    L7304   
       LDA    #$F0    
L7304: CLC            
       ADC    $E5     
       RTS            

L7308: LDA    #$1D    
       STA    TIM64T  
       LDA    $F4     
       BPL    L732A   
       LDA    $D7     
       BNE    L7320   
       LDX    #$04    
L7317: INC    $C8,X   
       DEX            
       BPL    L7317   
       INC    $BA     
       INC    $9E     
L7320: LDA    INPT4   
       BMI    L7327   
       JSR    L7CF3   
L7327: JMP    L773A   
L732A: LDA    $F0     
       AND    #$10    
       BEQ    L733C   
       LDA    $F9     
       AND    #$08    
       BNE    L7339   
       JMP    L756F   
L7339: JMP    L7508   
L733C: LDA    CXP0FB  
       BPL    L7348   
       LDA    $DF     
       STA    $D9     
       LDA    $E0     
       STA    $DE     
L7348: LDA    $D9     
       STA    $DF     
       LDA    $DE     
       STA    $E0     
       LDA    SWCHA   
       LDX    $D6     
       BMI    L735B   
       LSR            
       LSR            
       LSR            
       LSR            
L735B: LDX    #$00    
       LDY    $90     
       LSR            
       BCS    L7365   
       INX            
       LDY    #$57    
L7365: LSR            
       BCS    L736C   
       LDX    #$02    
       LDY    #$7A    
L736C: LSR            
       BCS    L7379   
       LDA    $F0     
       AND    #$F7    
       STA    $F0     
       LDX    #$03    
       BNE    L7384   
L7379: LSR            
       BCS    L738E   
       LDA    $F0     
       ORA    #$08    
       STA    $F0     
       LDX    #$04    
L7384: LDY    #$9D    
       LDA    $D7     
       AND    #$08    
       BNE    L738E   
       LDY    #$34    
L738E: STY    $90     
       LDA    $D6     
       ASL            
       BIT    SWCHB   
       BCS    L739C   
       BVC    L73A3   
       BVS    L739E   
L739C: BPL    L73A3   
L739E: LDA    $D7     
       LSR            
       BCC    L73DC   
L73A3: LDA    $F0     
       BMI    L73DC   
       LDY    #$00    
       CPX    #$04    
       BNE    L73B1   
       LDY    #$10    
       BNE    L73B7   
L73B1: CPX    #$03    
       BNE    L73C0   
       LDY    #$F0    
L73B7: LDA    $DE     
       JSR    L7ABA   
       STA    $DE     
       BNE    L73D2   
L73C0: CPX    #$02    
       BNE    L73CC   
       LDY    $D9     
       CPY    #$02    
       BEQ    L73CC   
       DEC    $D9     
L73CC: CPX    #$01    
       BNE    L73DC   
       INC    $D9     
L73D2: LDA    $D7     
       ORA    #$01    
       STA    $E4     
       AND    #$FD    
       STA    $E3     
L73DC: LDA    $F0     
       BMI    L73EB   
       LDA    $F9     
       AND    #$08    
       BEQ    L73EB   
       LDA    $F4     
       LSR            
       BCS    L7431   
L73EB: LDA    $D9     
       STA    $DC     
       JSR    L7B0D   
       BIT    CXM0P   
       BVC    L7434   
L73F6: LDA    $F0     
       BMI    L743F   
       LDA    $DC     
       EOR    #$FF    
       AND    $CD,X   
       BEQ    L7456   
L7402: LDA    $CD,X   
       AND    $DC     
       STA    $CD,X   
       LDA    $F4     
       ORA    #$01    
       STA    $F4     
       LDA    $F9     
       CMP    #$08    
       BPL    L741C   
       SED            
       LDA    $F1     
       CLC            
       ADC    #$01    
       STA    $F1     
L741C: LDA    #$0C    
       STA    AUDC0   
       LDA    #$05    
       STA    AUDF0   
       LDA    #$0F    
       STA    AUDV0   
       CLD            
       LDA    $F0     
       BMI    L746B   
       ORA    #$80    
       STA    $F0     
L7431: JMP    L7471   
L7434: LDA    CXM1P   
       BPL    L746B   
       TXA            
       CLC            
       ADC    #$03    
       TAX            
       BNE    L73F6   
L743F: LDA    $DC     
       EOR    #$FF    
       ORA    $CD,X   
       STA    $CD,X   
       LDA    $F9     
       CMP    #$08    
       BPL    L7456   
       SED            
       LDA    $F1     
       SEC            
       SBC    #$01    
       STA    $F1     
       CLD            
L7456: LDA    $DC     
       LSR            
       ROR    $DC     
       LDA    $DC     
       CMP    #$FE    
       BNE    L7468   
       INX            
       CPX    #$03    
       BNE    L7468   
       LDX    #$00    
L7468: JMP    L7402   
L746B: LDA    $F0     
       AND    #$7F    
       STA    $F0     
L7471: LDA    $D7     
       AND    #$7F    
       BNE    L749F   
       LDA    $F4     
       AND    #$FD    
       STA    $F4     
       LDX    #$60    
       LDA    $F9     
       AND    #$06    
       BEQ    L749D   
       LDY    $E2     
       BMI    L749D   
       CMP    #$02    
       BNE    L7497   
       LDX    #$C0    
       LDA    $F4     
       ORA    #$02    
       STA    $F4     
       BNE    L749D   
L7497: CMP    #$06    
       BNE    L749D   
       LDX    #$90    
L749D: STX    $FA     
L749F: LDA    $F4     
       AND    #$EF    
       STA    $F4     
       LDA    $D9     
       CMP    #$36    
       BCC    L74BC   
       CMP    #$4E    
       BCS    L74BC   
       LDA    $DE     
       JSR    L7E86   
       CMP    #$8A    
       BCC    L74BC   
       CMP    #$9D    
       BCC    L74BF   
L74BC: JMP    L756F   
L74BF: LDA    $F4     
       ORA    #$10    
       STA    $F4     
       LDA    $F9     
       AND    #$06    
       CMP    #$04    
       BNE    L74E4   
       LDY    #$60    
       LDX    #$00    
       LDA    $D6     
       BPL    L74D6   
       INX            
L74D6: LDA    INPT4,X 
       BMI    L74E2   
       LDY    #$C0    
       LDA    $F4     
       ORA    #$02    
       STA    $F4     
L74E2: STY    $FA     
L74E4: SED            
       LDA    CXP0FB  
       BPL    L7514   
       LDA    $F9     
       CMP    #$08    
       BMI    L7508   
       LDY    $F4     
       TYA            
       LSR            
       BCC    L7503   
       LDA    $F1     
       ADC    #$00    
       STA    $F1     
       TYA            
       AND    #$FE    
       STA    $F4     
       JMP    L7562   
L7503: TYA            
       AND    #$04    
       BEQ    L756E   
L7508: LDX    #$00    
       LDA    $D6     
       BPL    L7510   
       LDX    #$06    
L7510: LDA    $D7     
       AND    #$03    
L7514: BNE    L756E   
       LDA    $F1     
       BEQ    L756E   
       SED            
       SEC            
       SBC    #$01    
       STA    $F1     
       LDA    $ED,X   
       CLC            
       ADC    #$01    
       STA    $ED,X   
       BCC    L754D   
       LDA    $EC,X   
       ADC    #$00    
       STA    $EC,X   
       LDA    $D6     
       TAY            
       CPX    #$00    
       BEQ    L7541   
       AND    #$03    
       CMP    #$03    
       BEQ    L754D   
       TYA            
       ADC    #$01    
       BNE    L754B   
L7541: AND    #$30    
       CMP    #$30    
       BEQ    L754D   
       TYA            
       CLC            
       ADC    #$10    
L754B: STA    $D6     
L754D: LDA    $ED,X   
       BEQ    L7555   
       CMP    #$50    
       BNE    L7562   
L7555: LDA    #$01    
       CPX    #$00    
       BEQ    L755D   
       LDA    #$10    
L755D: CLC            
       ADC    $F6     
       STA    $F6     
L7562: LDA    #$0C    
       STA    AUDC0   
       LDA    #$07    
       STA    AUDF0   
       LDA    #$0F    
       STA    AUDV0   
L756E: CLD            
L756F: LDA    $F0     
       AND    #$04    
       BEQ    L7578   
       JMP    L75FA   
L7578: LDA    $F6     
       LDX    $D6     
       BPL    L7582   
       LSR            
       LSR            
       LSR            
       LSR            
L7582: AND    #$0F    
       TAY            
       LDA    L7DF5,Y 
       CMP    $E2     
       BCC    L75F7   
       JSR    L7BF9   
       LDA    L7EF0,Y 
       CMP    $E2     
       BCS    L75E3   
       TYA            
       BNE    L759B   
       LDA    #$01    
L759B: CMP    #$07    
       BCC    L75A1   
       LDA    #$07    
L75A1: ASL            
       ASL            
       ASL            
       ASL            
       TAX            
       LDA    $E2     
       LSR            
       BCC    L75BB   
       LDY    #$34    
       LDA    $EE     
       ORA    #$08    
       STA    $EE     
       LDA    $F4     
       AND    #$F7    
       STA    $F4     
       BNE    L75CA   
L75BB: LDY    #$2E    
       TXA            
       EOR    #$F0    
       CLC            
       ADC    #$10    
       TAX            
       LDA    $EE     
       AND    #$F7    
       STA    $EE     
L75CA: STY    $EB     
       STX    $F5     
       LDA    $E2     
       CMP    #$03    
       BMI    L7637   
       CMP    #$7D    
       BPL    L7637   
       STA    $EF     
       LDA    $F0     
       AND    #$FE    
       STA    $F0     
       JMP    L75F1   
L75E3: LDA    #$45    
       STA    $AC     
       LDA    #$A8    
       STA    $BA     
       LDA    $F0     
       ORA    #$03    
       STA    $F0     
L75F1: LDA    $F0     
       ORA    #$04    
       STA    $F0     
L75F7: JMP    L7709   
L75FA: LDA    $F0     
       AND    #$01    
       BNE    L763D   
       LDA    #$87    
       STA    $BA     
       LDX    #$0F    
       LDA    $D7     
       AND    #$10    
       BEQ    L760E   
       LDX    #$00    
L760E: STX    AUDV1   
       LDA    RSYNC   
       STA    AUDC1   
       LDY    ENAM0   
       LDX    #$03    
       LDA    $D7     
       AND    #$10    
       BNE    L7622   
       LDX    #$24    
       LDY    ENABL   
L7622: STX    $AC     
       STY    AUDF1   
       LDA    $EB     
       AND    #$0F    
       LDX    $F5     
       BMI    L7633   
       CMP    #$0E    
       JMP    L7635   
L7633: CMP    #$04    
L7635: BNE    L75F7   
L7637: LDA    #$00    
       STA    $EF     
       BEQ    L769F   
L763D: LDY    $EE     
       LDA    $EF     
       CMP    #$2D    
       BCC    L7656   
       CMP    #$60    
       BCS    L7656   
       LDA    $EB     
       JSR    L7E86   
       CMP    #$7B    
       BCC    L7656   
       CMP    #$AD    
       BCC    L76B7   
L7656: LDA    $EF     
       CMP    #$01    
       BEQ    L7660   
       LDA    CXP1FB  
       BPL    L76B7   
L7660: LDA    $F8     
       STA    $EB     
       LDA    $F7     
       STA    $EF     
       TYA            
       AND    #$20    
       BNE    L76A2   
       TYA            
       ORA    #$20    
       TAY            
       AND    #$04    
       BNE    L7691   
       LDA    $EB     
       JSR    L7E86   
       STA    $E7     
       LDA    $DE     
       JSR    L7E86   
       CMP    $E7     
       LDX    #$F0    
       BCC    L7689   
       LDX    #$10    
L7689: STX    $F5     
       TYA            
       ORA    #$04    
       TAY            
       BNE    L76E2   
L7691: TYA            
       AND    #$FB    
       TAY            
       LDA    $EF     
       STA    $F7     
       CMP    $D9     
       BCS    L76C8   
       BCC    L76D8   
L769F: JMP    L7703   
L76A2: TYA            
       AND    #$04    
       BEQ    L76B3   
       LDA    $F5     
       EOR    #$F0    
       CLC            
       ADC    #$10    
       STA    $F5     
       JMP    L76B7   
L76B3: TYA            
       EOR    #$10    
       TAY            
L76B7: LDA    $EF     
       STA    $F7     
       TYA            
       AND    #$DF    
       TAY            
       AND    #$04    
       BNE    L76E2   
       TYA            
       AND    #$10    
       BEQ    L76D8   
L76C8: DEC    $EF     
       LDA    $EF     
       CMP    #$FF    
       BNE    L76D2   
       INC    $EF     
L76D2: TYA            
       ORA    #$10    
       TAY            
       BNE    L76DE   
L76D8: INC    $EF     
       TYA            
       AND    #$EF    
       TAY            
L76DE: LDA    #$00    
       STA    $F5     
L76E2: LDA    $D7     
       AND    #$07    
       STA    AUDF1   
       LDA    #$05    
       STA    AUDC1   
       LDA    #$0F    
       STA    AUDV1   
       LDA    $D7     
       AND    #$04    
       BNE    L76FB   
       TYA            
       ORA    #$08    
       BNE    L76FE   
L76FB: TYA            
       AND    #$F7    
L76FE: STA    $EE     
       JMP    L7709   
L7703: LDA    $F0     
       AND    #$FB    
       STA    $F0     
L7709: LDA    $F5     
       TAY            
       BEQ    L772E   
       CMP    #$30    
       BCC    L771B   
       CMP    #$E0    
       BCS    L771B   
       STA    $E5     
       JSR    L72FC   
L771B: STA    $E5     
       TYA            
       AND    #$10    
       BNE    L772C   
       LDA    $D7     
       LSR            
       BCC    L772C   
       JSR    L72FC   
       STA    $E5     
L772C: LDY    $E5     
L772E: LDA    $EB     
       STA    $F8     
       JSR    L7ABA   
       STA    $EB     
       JSR    L7BF9   
L773A: LDA    $F4     
       AND    #$08    
       BNE    L7770   
       LDA    $EF     
       CMP    #$3E    
       BCC    L7770   
       CMP    #$44    
       BCS    L7770   
       LDA    $EB     
       AND    #$0F    
       CMP    #$09    
       BNE    L7770   
       LDA    CXP1FB  
       BPL    L7770   
       SED            
       LDA    $F1     
       BEQ    L7770   
       SEC            
       SBC    #$01    
       STA    $F1     
       STA    AUDF0   
       LDA    #$0F    
       STA    AUDV0   
       LDA    #$0C    
       STA    AUDC0   
       LDA    $F4     
       ORA    #$08    
       STA    $F4     
L7770: CLD            
       INC    $D7     
L7773: LDA    INTIM   
       BNE    L7773   
       JMP    L701B   
L777B: LDX    #$18    
       STA    WSYNC   
       LDA    L7D7E,X 
       STA    COLUBK  
       LDA    $CB     
       STA    COLUPF  
       LDA    #$01    
       STA    NUSIZ0  
       LDA    #$05    
       STA    NUSIZ1  
       LDA    #$00    
       STA    RESP0   
       STA    CTRLPF  
       LDA    L7DDC   
       STA    COLUP0  
       LDA    L7DC6   
       STA    COLUP1  
       DEX            
       LDY    #$17    
L77A3: STA    WSYNC   
       LDA    L7D7E,X 
       STA    COLUBK  
       LDA    L7B2D,X 
       STA    PF1     
       LDA    L7EC3,Y 
       STA    GRP0    
       LDA    L7DAF,X 
       STA    PF2     
       LDA    L7ED9,Y 
       STA    GRP1    
       LDA    #$00    
       STA    PF1     
       STA    PF2     
       LDA    L7DDC,X 
       STA    COLUP0  
       LDA    L7DC6,X 
       STA    COLUP1  
       DEY            
       DEX            
       CPX    #$0D    
       BPL    L77A3   
       STA    WSYNC   
       STA    HMCLR   
       LDA    L7EC3,Y 
       STA    GRP0    
       TXA            
       LDX    #$07    
L77E0: DEX            
       BNE    L77E0   
       TAX            
       LDA    L7DDC,X 
       STA    COLUP0  
       DEX            
       DEY            
       STA    RESP1   
L77ED: STA    WSYNC   
       LDA    L7D7E,X 
       STA    COLUBK  
       LDA    L7B2D,X 
       STA    PF1     
       LDA    L7EC3,Y 
       STA    GRP0    
       LDA    L7DAF,X 
       STA    PF2     
       LDA    L7ED9,Y 
       STA    GRP1    
       LDA    #$00    
       STA    PF1     
       STA    PF2     
       LDA    L7DDC,X 
       STA    COLUP0  
       LDA    L7DC6,X 
       STA    COLUP1  
       DEY            
       DEX            
       BNE    L77ED   
       LDA    $DE     
       AND    #$0F    
       TAX            
       STA    WSYNC   
L7823: DEX            
       BNE    L7823   
       STA    RESP0   
       STA    WSYNC   
       LDA    $EB     
       STA    HMP1    
       LDA    $DE     
       STA    HMP0    
       LDA    $EB     
       AND    #$0F    
       TAX            
       STA    WSYNC   
L7839: DEX            
       BNE    L7839   
       STA    RESP1   
       STA    WSYNC   
       LDA    $CA     
       STA    COLUPF  
       LDA    $F0     
       STA    REFP0   
       LDA    $EE     
       STA    REFP1   
       DEX            
       STX    PF0     
       STX    PF1     
       STX    PF2     
       STX    CXCLR   
       INX            
       STX    GRP0    
       STX    GRP1    
       STX    NUSIZ0  
       LDA    $F0     
       LSR            
       BCC    L7863   
       STX    NUSIZ1  
L7863: INX            
       STX    CTRLPF  
       INX            
       STX    $E6     
       LDX    #$0A    
       STX    $E8     
       LDX    #$2F    
       LDY    #$17    
       LDA    ($C6),Y 
       STA    COLUP1  
       LDA    ($AA),Y 
       STA    COLUP0  
       LDA    L7F00,X 
       STA    PF0     
       LDA    L7F30,X 
       STA    PF1     
       LDA    L7F60,X 
       STA    PF2     
       LDA    $C8     
       STA    COLUBK  
L788C: STX    $E5     
       LDA    ($9C),Y 
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       LDA    ($B8),Y 
       STA    GRP1    
       LDX    $E6     
       LDA    $CD,X   
       STA    ENAM0   
       NOP            
       NOP            
       NOP            
       LDA    $D0,X   
       STA    ENAM1   
       NOP            
       NOP            
       NOP            
       NOP            
       STA    HMCLR   
       LDA    ($C6),Y 
       STA    COLUP1  
       LDA    ($AA),Y 
       DEY            
       STA    COLUP0  
       LDA    ($9C),Y 
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       LDA    ($B8),Y 
       STA    GRP1    
       LDX    $E5     
       NOP            
       NOP            
       NOP            
       LDA    L7E55,X 
       STA    HMM1    
       LDA    L7E56,X 
       STA    HMM0    
       NOP            
       NOP            
       NOP            
       NOP            
       LDA    ($AA),Y 
       STA    COLUP0  
       LDA    ($C6),Y 
       STA    COLUP1  
       DEY            
       LDA    ($9C),Y 
       STA    GRP0    
       STA    WSYNC   
       STA    HMOVE   
       LDA    ($B8),Y 
       STA    GRP1    
       LDA    #$00    
       STA    ENAM1   
       STA    ENAM0   
       NOP            
       NOP            
       LDA    ($C6),Y 
       STA    COLUP1  
       LDA    ($AA),Y 
       STA    COLUP0  
       DEX            
       LDA    L7F00,X 
       STA    PF0     
       LDA    L7F30,X 
       DEY            
       STY    $FC     
       STX    $E5     
       STA    PF1     
       LDA    ($9C),Y 
       STA    GRP0    
       STA    WSYNC   
       STA    HMOVE   
       LDA    ($B8),Y 
       STA    GRP1    
       TXA            
       TAY            
       LDA    ($FA),Y 
       STA    PF2     
       LDY    $FC     
       LDX    $E6     
       LDA    $D0,X   
       LSR            
       ROR    $D0,X   
       LDA    ($C6),Y 
       STA    COLUP1  
       LDA    ($AA),Y 
       DEY            
       STA    COLUP0  
       LDA    ($9C),Y 
       STA    GRP0    
       LDA    ($B8),Y 
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP1    
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       LDA    $CD,X   
       LSR            
       ROR    $CD,X   
       STX    $E6     
       LDX    $E5     
       LDA    ($AA),Y 
       STA    COLUP0  
       LDA    ($C6),Y 
       STA    COLUP1  
       DEY            
       LDA    ($9C),Y 
       STA    GRP0    
       LDA    ($B8),Y 
       STA    GRP1    
       STA    WSYNC   
       STA    HMOVE   
       LDA    ($C6),Y 
       STA    COLUP1  
       LDA    ($AA),Y 
       STA    COLUP0  
       STY    $FC     
       DEX            
       BMI    L79B0   
       LDA    L7F00,X 
       STA    PF0     
       TXA            
       TAY            
       LDA    ($FA),Y 
       STA    PF2     
       LDA    L7F30,X 
       LDY    $FC     
       DEY            
       BMI    L7984   
       STA    PF1     
       JMP    L788C   
L7984: STA    WSYNC   
       STA    HMOVE   
       STX    $E5     
       LDA    $E8     
       SEC            
       SBC    #$02    
       TAX            
       LDA    $92,X   
       STA    $9C     
       LDA    $A0,X   
       STA    $AA     
       LDA    $AE,X   
       STA    $B8     
       LDA    $BC,X   
       STA    $C6     
       TXA            
       AND    #$02    
       BEQ    L79A7   
       DEC    $E6     
L79A7: STX    $E8     
       LDX    $E5     
       LDY    #$17    
       JMP    L788C   
L79B0: STA    WSYNC   
       LDA    $CA     
       STA    COLUBK  
       LDA    #$00    
       LDX    #$03    
       STX    NUSIZ0  
       STX    NUSIZ1  
       INX            
L79BF: STA    REFP0,X 
       DEX            
       BPL    L79BF   
       STA    ENAM0   
       STA    ENAM1   
       STA    AUDV0   
       STA    AUDV1   
       LDA    $CC     
       STA    COLUP1  
       LDA    $C9     
       STA    COLUP0  
       LDA    $CB     
       STA    COLUBK  
       LDX    #$05    
       STA    WSYNC   
L79DC: DEX            
       BNE    L79DC   
       STA    RESP0   
       LDX    #$05    
L79E3: DEX            
       BNE    L79E3   
       STA    RESP1   
       LDA    #$50    
       STA    HMP0    
       STA    HMP1    
       LDY    #$07    
L79F0: STA    WSYNC   
       LDA    ($80),Y 
       NOP            
       NOP            
       NOP            
       NOP            
       STA    GRP0    
       LDA    ($82),Y 
       TAX            
       LDA    ($84),Y 
       STX    GRP0    
       NOP            
       STA    GRP0    
       LDA    ($86),Y 
       STA    $E6     
       STA    GRP1    
       LDA    ($88),Y 
       TAX            
       LDA    ($8A),Y 
       STX    GRP1    
       NOP            
       STA    GRP1    
       DEY            
       BPL    L79F0   
       INY            
       STY    GRP0    
       STY    GRP1    
       STA    WSYNC   
       LDX    #$08    
L7A20: DEX            
       BNE    L7A20   
       STA    RESP0   
       STY    $E5     
       STY    $E6     
       INY            
       STY    NUSIZ0  
       STY    NUSIZ1  
       INY            
       INY            
       STY    CTRLPF  
       LDA    $D6     
       TAY            
       AND    #$30    
       BEQ    L7A4D   
       CMP    #$30    
       BNE    L7A41   
       LDX    #$DB    
       BNE    L7A4B   
L7A41: CMP    #$20    
       BNE    L7A49   
       LDX    #$D8    
       BNE    L7A4B   
L7A49: LDX    #$C0    
L7A4B: STX    $E5     
L7A4D: STA    WSYNC   
       LDX    #$08    
L7A51: DEX            
       BNE    L7A51   
       STA    RESP1   
       TYA            
       AND    #$03    
       BEQ    L7A6F   
       CMP    #$03    
       BNE    L7A63   
       LDX    #$DB    
       BNE    L7A6D   
L7A63: CMP    #$02    
       BNE    L7A6B   
       LDX    #$D8    
       BNE    L7A6D   
L7A6B: LDX    #$C0    
L7A6D: STX    $E6     
L7A6F: LDY    #$07    
L7A71: LDA    #$00    
       TAX            
       STA    WSYNC   
       CPY    #$02    
       STA    PF1     
       BMI    L7A89   
       CPY    #$07    
       BPL    L7A8B   
       LDA    $E5     
       STA    PF1     
       LDX    $E6     
       JMP    L7A8F   
L7A89: NOP            
       NOP            
L7A8B: NOP            
       NOP            
       NOP            
       NOP            
L7A8F: NOP            
       NOP            
       LDA    $D6     
       BMI    L7AA2   
       LDA    ($8C),Y 
       STA    GRP0    
       LDA    ($8E),Y 
       STA    $FC     
       STA    GRP0    
       JMP    L7AAC   
L7AA2: BPL    L7AA4   
L7AA4: LDA    ($8C),Y 
       STA    GRP1    
       LDA    ($8E),Y 
       STA    GRP1    
L7AAC: STX    PF1     
       DEY            
       BPL    L7A71   
       INY            
       STY    GRP0    
       STY    GRP1    
       JMP    L7308   
L7AB9: .byte $26
L7ABA: STA    $E5     
       STY    $E6     
       SEC            
       SBC    $E6     
       LDY    $E6     
       BMI    L7AD3   
       LDY    $E5     
       BPL    L7AE3   
       TAY            
       BMI    L7AE3   
       INY            
       TYA            
       SEC            
       SBC    #$10    
       BNE    L7AE3   
L7AD3: LDY    $E5     
       BMI    L7AE3   
       TAY            
       AND    #$F0    
       CMP    #$70    
       BCC    L7AE4   
       DEY            
       TYA            
       CLC            
       ADC    #$10    
L7AE3: TAY            
L7AE4: TYA            
       AND    #$0F    
       CMP    #$04    
       BCC    L7B0A   
       BNE    L7AF8   
       TYA            
       BMI    L7B06   
       AND    #$F0    
       CMP    #$40    
       BCC    L7B05   
       BCS    L7B0A   
L7AF8: CMP    #$0E    
       BNE    L7B05   
       TYA            
       BMI    L7B07   
       AND    #$F0    
       CMP    #$20    
       BCC    L7B07   
L7B05: TYA            
L7B06: RTS            

L7B07: LDA    #$34    
       RTS            

L7B0A: LDA    #$2E    
       RTS            

L7B0D: LDX    #$FF    
       LDY    #$17    
L7B11: TYA            
       AND    #$07    
       CMP    #$07    
       BNE    L7B19   
       INX            
L7B19: LDA    L7D97,Y 
       CMP    $DC     
       BCS    L7B23   
       DEY            
       BPL    L7B11   
L7B23: TYA            
       AND    #$07    
       TAY            
       LDA    L7FF0,Y 
       STA    $DC     
       RTS            

L7B2D: .byte $00,$00,$7F,$FF,$7F,$3F,$0C,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$FF
       .byte $00,$03,$26,$4C,$FC,$FE,$FB,$39,$00,$FF,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$FF,$00,$42,$6E,$38,$1C,$5C,$3C,$18,$00,$FF,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$FF,$00,$18,$3C,$5C,$1C,$38,$6E,$42,$00,$FF
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$FF,$00,$40,$40,$40,$FF,$FC,$F8
       .byte $38,$00,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$08,$00,$10,$00,$20
       .byte $08,$00,$04,$10,$00,$20,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
L7BF9: LDA    $E3     
       STA    $E5     
       LDA    $E2     
       STA    $E6     
       LDA    #$00    
       LDX    #$08    
L7C05: LSR    $E5     
       BCC    L7C0C   
       CLC            
       ADC    $E6     
L7C0C: ROR            
       ROR    $E2     
       DEX            
       BNE    L7C05   
       CLC            
       LDA    $E2     
       ADC    $E4     
       STA    $E2     
       INC    $E1     
       LDX    $E1     
       BNE    L7C2C   
       TAX            
       ASL            
       SEC            
       ROL            
       STA    $E3     
       TXA            
       SEC            
       ROL            
       STA    $E4     
       BNE    L7BF9   
L7C2C: RTS            

L7C2D: LDA    $DA     
       LDX    #$05    
L7C31: STA    $E5,X   
       DEX            
       BPL    L7C31   
       LDA    $DC     
       BEQ    L7C62   
       CMP    #$91    
       BCS    L7C62   
       LDX    #$00    
L7C40: SEC            
       SBC    #$18    
       BMI    L7C48   
       INX            
       BPL    L7C40   
L7C48: STA    $DD     
       LDA    $E5,X   
       SEC            
       SBC    $DD     
       STA    $E5,X   
       CPX    #$05    
       BEQ    L7C62   
       LDA    $DD     
       CMP    $DB     
       BCC    L7C62   
       LDA    $E5,X   
       CLC            
       ADC    #$18    
       STA    $E6,X   
L7C62: RTS            

L7C63: .byte $0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D
       .byte $0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$74,$74,$1A,$1A,$1A,$1A,$1A,$1A
       .byte $1A,$1A,$74,$74,$74,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D
       .byte $0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$06,$06,$06,$06
       .byte $06,$06,$06,$06,$06,$06,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D
       .byte $0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$46,$46,$46
       .byte $46,$46,$46,$46,$46,$46,$46,$46,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D
       .byte $0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D
       .byte $0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D
L7CEF: .byte $F5,$F4,$F7,$F7
L7CF3: JSR    L7E9C   
       LDY    #$11    
       JSR    L7EB6   
       LDX    #$09    
L7CFD: STY    $EC,X   
       DEX            
       BPL    L7CFD   
       RTS            

L7D03: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$01,$13,$37,$FE,$FE,$7E,$1F,$0B
       .byte $09,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$10,$B3,$7F,$FE,$7F,$1B
       .byte $08,$08,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$C7,$6C,$29,$39,$FE,$9C
       .byte $96,$32,$E3,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
L7D7E: .byte $74,$74,$74,$74,$8E,$7E,$8D,$7D,$8C,$7C,$8B,$7B,$8A,$7A,$89,$79
       .byte $88,$78,$87,$77,$86,$86,$86,$86,$86
L7D97: .byte $8F,$89,$83,$7D,$77,$71,$6B,$65,$5F,$59,$53,$4D,$47,$41,$3B,$35
       .byte $2F,$29,$23,$1D,$17,$11,$0B,$05
L7DAF: .byte $00,$00,$03,$0F,$03,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$04,$0E,$0E,$04,$00
L7DC6: .byte $00,$1C,$1C,$1C,$1C,$34,$34,$34,$34,$34,$34,$00,$00,$00,$00,$0D
       .byte $0D,$0D,$0D,$0D,$0D,$0D
L7DDC: .byte $0D,$00,$00,$00,$00,$16,$16,$16,$16,$16,$B7,$B7,$B7,$16,$B7,$B7
       .byte $B7,$00,$00,$00,$00,$00,$00,$00,$00
L7DF5: .byte $00,$03,$09,$0C,$18,$24,$30,$3C,$48,$54,$60,$3C,$7E,$66,$66,$66
       .byte $66,$7E,$3C,$3C,$3C,$18,$18,$18,$18,$38,$18,$7E,$7E,$60,$7C,$3E
       .byte $06,$7E,$3C,$3C,$7E,$06,$0C,$0C,$06,$7E,$3C,$0C,$0C,$7E,$7E,$6C
       .byte $6C,$3C,$1C,$3C,$7E,$06,$7E,$7C,$60,$7E,$7E,$3C,$7E,$66,$7E,$7C
       .byte $60,$7E,$3C,$60,$30,$18,$0C,$06,$06,$7E,$7E,$3C,$7E,$66,$3C,$3C
       .byte $66,$7E,$3C,$3C,$7E,$06,$3E,$7E,$66,$7E,$3C,$00,$00,$00,$00,$00
L7E55: .byte $00
L7E56: .byte $00,$00,$90,$C0,$30,$C0,$50,$30,$A0,$30,$20,$80,$40,$20,$B0,$50
       .byte $70,$D0,$C0,$C0,$40,$50,$E0,$B0,$D0,$40,$40,$A0,$A0,$60,$B0,$A0
       .byte $70,$30,$40,$70,$A0,$B0,$C0,$C0,$60,$60,$E0,$40,$B0,$A0,$00,$60
L7E86: STA    $E5     
       EOR    #$F0    
       CLC            
       ADC    #$70    
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $E6     
       LDA    $E5     
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    $E6     
       RTS            

L7E9C: LDX    #$08    
L7E9E: LDA    $E2     
       CPX    #$06    
       BMI    L7EA6   
       AND    #$55    
L7EA6: CPX    #$05    
       BEQ    L7EAE   
       CPX    #$02    
       BNE    L7EB0   
L7EAE: AND    #$FD    
L7EB0: STA    $CD,X   
       DEX            
       BPL    L7E9E   
       RTS            

L7EB6: LDX    L72A5,Y 
       LDA    L72BD,Y 
       STA    VSYNC,X 
       DEY            
       BPL    L7EB6   
       INY            
       RTS            

L7EC3: .byte $00,$00,$00,$00,$60,$60,$60,$30,$30,$6F,$EE,$CC,$18,$1E,$1C,$18
       .byte $00,$00,$00,$00,$00,$00
L7ED9: .byte $00,$00,$00,$7F,$7F,$FF,$F8,$18,$18,$08,$08,$00,$00,$00,$00,$38
       .byte $38,$7F,$7F,$FE,$FE,$1C,$1C
L7EF0: .byte $00,$02,$06,$0D,$1A,$27,$34,$41,$4D,$59,$66
L7EFB: .byte $55,$65,$ED,$FD,$9B
L7F00: .byte $70,$70,$70,$70,$70,$70,$70,$70,$70,$F0,$70,$70,$70,$70,$70,$70
       .byte $70,$70,$70,$70,$70,$70,$F0,$F0,$F0,$70,$70,$70,$70,$70,$70,$70
       .byte $70,$70,$70,$70,$70,$70,$70,$70,$F0,$F0,$70,$70,$70,$70,$70,$FF
L7F30: .byte $60,$40,$40,$40,$00,$06,$0F,$00,$08,$80,$00,$00,$01,$00,$00,$70
       .byte $60,$20,$20,$20,$20,$04,$04,$04,$04,$04,$1C,$10,$30,$30,$60,$40
       .byte $40,$40,$40,$00,$08,$08,$08,$08,$0F,$81,$01,$00,$00,$00,$08,$FF
L7F60: .byte $06,$00,$00,$00,$00,$60,$7F,$40,$40,$40,$40,$40,$0F,$08,$08,$08
       .byte $08,$F8,$11,$11,$11,$01,$01,$83,$01,$01,$11,$11,$11,$F0,$10,$10
       .byte $10,$10,$1F,$80,$80,$80,$80,$80,$F8,$30,$00,$00,$00,$00,$80,$FF
       .byte $06,$00,$00,$00,$00,$60,$7F,$40,$40,$40,$40,$40,$0F,$08,$08,$08
       .byte $08,$78,$11,$11,$11,$11,$11,$93,$11,$11,$11,$11,$11,$70,$10,$10
       .byte $10,$10,$1F,$80,$80,$80,$80,$80,$F8,$30,$00,$00,$00,$00,$80,$FF
       .byte $06,$00,$00,$00,$00,$60,$7F,$40,$40,$40,$40,$40,$0F,$08,$08,$08
       .byte $08,$F8,$11,$11,$11,$11,$11,$93,$11,$11,$11,$11,$11,$F0,$10,$10
       .byte $10,$10,$1F,$80,$80,$80,$80,$80,$F8,$30,$00,$00,$00,$00,$80,$FF
L7FF0: .byte $FD,$FB,$F7,$EF,$DF,$BF,$7F,$FE
L7FF8: .byte $7F,$02,$02,$7F,$00,$70,$20,$41
