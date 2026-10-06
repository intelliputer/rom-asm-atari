; Disassembly of roms/lochjaw.bin
; Disassembled Tue Oct  6 15:24:50 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/lochjaw.bin
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
       LDA    #$11    
       STA    $E2     
       LDA    #$21    
       STA    $E3     
       JSR    L7AE7   
       LDY    #$12    
       JSR    L7EB6   
       JSR    L7E9C   
       LDA    #$60    
       STA    $FA     
L702D: LDA    #$2A    
       STA    WSYNC   
       STA    VBLANK  
       STA    VSYNC   
       STA    TIM8T   
       LDA    $F0     
       ASL            
       BMI    L7050   
       AND    #$04    
       BNE    L7066   
       LDA    $D8     
       LDY    $DD     
       JSR    L72FA   
       BNE    L7090   
       LDA    $F0     
       ORA    #$40    
       STA    $F0     
L7050: LDA    #$00    
       STA    $D8     
       LDX    $D6     
       STX    $EB     
       STX    AUDF0   
       LDA    #$0C    
       STA    AUDC0   
       LDA    #$0F    
       STA    AUDV0   
       CPX    #$74    
       BNE    L7090   
L7066: LDA    $E1     
       AND    #$03    
       TAX            
       LDY    L7EFC,X 
       LDA    L7FF8,X 
       BIT    $F0     
       BVS    L7086   
       STA    $EF     
       STY    $EA     
       LDX    #$10    
       TYA            
       BPL    L7080   
       LDX    #$F0    
L7080: STX    $F5     
       LDA    #$FD    
       BNE    L708C   
L7086: STA    $D8     
       STY    $DD     
       LDA    #$BF    
L708C: AND    $F0     
       STA    $F0     
L7090: LDX    #$06    
L7092: LDA    $EC,X   
       LDY    #$00    
       AND    #$0F    
       BNE    L709E   
       LDA    #$50    
       BNE    L70A2   
L709E: DEY            
       ASL            
       ASL            
       ASL            
L70A2: STA    $80,X   
       LDA    $ED,X   
       PHA            
       AND    #$F0    
       BNE    L70B3   
       CPY    #$00    
       BNE    L70B3   
       LDA    #$50    
       BNE    L70B5   
L70B3: DEY            
       LSR            
L70B5: STA    $82,X   
       PLA            
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA    $84,X   
       CPX    #$00    
       BEQ    L70C7   
       LDX    #$00    
       BPL    L7092   
L70C7: LDA    $F1     
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA    $8E     
       LDA    $F1     
       AND    #$F0    
       LSR            
       STA    $8C     
L70D7: LDA    INTIM   
       BNE    L70D7   
       STA    WSYNC   
       STA    VSYNC   
       STA    VBLANK  
       LDX    #$2D    
       STX    TIM64T  
       LDX    #$86    
       STX    COLUBK  
       LDA    SWCHB   
       LSR            
       BCS    L70F4   
       JSR    L7CF3   
L70F4: LDX    #$C3    
       LDA    $D6     
       BMI    L70FC   
       LDX    #$D8    
L70FC: STX    $C8     
       LDY    #$17    
       LDA    #$03    
       PHA            
       LDX    #$2A    
L7105: LDA    $91,X   
       STA    $9D,X   
       STA    $9B,X   
       STA    $99,X   
       STA    $97,X   
       STA    $95,X   
       STA    $93,X   
       LDA    $90,X   
       STA    $D9     
       STX    $FC     
       PLA            
       TAX            
       LDA    L7CEF,X 
       STA    $DA     
       DEX            
       TXA            
       PHA            
       LDA.wy $00D8,Y 
       STA    $DB     
       JSR    L7C2D   
       LDX    $FC     
       LDA    $E4     
       STA    $92,X   
       LDA    $E5     
       STA    $94,X   
       LDA    $E6     
       STA    $96,X   
       LDA    $E7     
       STA    $98,X   
       LDA    $E8     
       STA    $9A,X   
       LDA    $E9     
       STA    $9C,X   
       CPX    #$1C    
       BNE    L714B   
       LDY    #$00    
L714B: TXA            
       SEC            
       SBC    #$0E    
       TAX            
       BPL    L7105   
       PLA            
       LDA    $D7     
       STA    HMP1    
       AND    #$0F    
       TAX            
       STA    WSYNC   
L715C: DEX            
       BNE    L715C   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       LDX    #$07    
L7167: DEX            
       BPL    L7167   
       STA    RESM0   
       STA    RESBL   
       STA    RESM1   
       STA    HMCLR   
       LDA    $D6     
       AND    #$0F    
       BNE    L71AE   
       LDA    SWCHB   
       AND    #$02    
       BNE    L71AE   
       STA    $EC     
       STA    $F2     
       LDX    $F9     
       INX            
       CPX    #$10    
       BNE    L718C   
       LDX    #$00    
L718C: TXA            
       STA    $F9     
       INX            
       TXA            
       CPX    #$0A    
       BMI    L71A3   
       LDA    #$10    
       STA    $E4     
       TXA            
       SEC            
       SBC    #$0A    
       ORA    $E4     
       BNE    L71A3   
       LDA    #$01    
L71A3: STA    $ED     
       LSR            
       LDX    #$02    
       BCC    L71AC   
       LDX    #$01    
L71AC: STX    $F3     
L71AE: LDA    $F1     
       BNE    L71CB   
       LDA    $F9     
       LSR            
       BCC    L71C5   
       LDA    $D5     
       AND    #$33    
       BNE    L71CB   
L71BD: LDA    $F4     
       ORA    #$80    
       STA    $F4     
       BNE    L71CB   
L71C5: LDA    $D5     
       AND    #$30    
       BEQ    L71BD   
L71CB: LDA    $F0     
       TAY            
       AND    #$10    
       BNE    L71FC   
       LDA    CXPPMM  
       BPL    L7244   
       LDA    $F4     
       AND    #$10    
       BEQ    L71E2   
       LDA    $F4     
       AND    #$02    
       BNE    L7244   
L71E2: LDA    #$C7    
       STA    $90     
       LDA    #$CB    
       STA    $9E     
       LDA    $D5     
       SEC            
       BPL    L71F3   
       SBC    #$01    
       BMI    L71F5   
L71F3: SBC    #$10    
L71F5: STA    $D5     
       TYA            
       ORA    #$10    
       STA    $F0     
L71FC: INC    $D8     
       LDA    $F0     
       ORA    #$08    
       TAX            
       LDA    $D6     
       AND    #$02    
       BEQ    L720D   
       TXA            
       AND    #$F7    
       TAX            
L720D: STX    $F0     
       LDX    $D8     
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
       BCC    L7244   
       LDA    $F9     
       LSR            
       BCC    L7230   
       JSR    L72E6   
       JSR    L7E9C   
L7230: TYA            
       AND    #$EF    
       STA    $F0     
       LDY    #$07    
       JSR    L7EB6   
       LDA    $F9     
       AND    #$08    
       BNE    L724D   
       STA    $F1     
       BEQ    L724D   
L7244: LDA    $EF     
       LDY    $EA     
       JSR    L72FA   
       BNE    L7255   
L724D: STX    $EF     
       LDA    $F0     
       AND    #$FB    
       STA    $F0     
L7255: LDX    #$05    
L7257: LDA    $CC,X   
       BNE    L7284   
       DEX            
       BPL    L7257   
       LDA    $F9     
       CMP    #$08    
       BMI    L726F   
       LDA    $F4     
       LSR            
       BCS    L7284   
       LDA    $F4     
       ORA    #$04    
       STA    $F4     
L726F: LDA    $F1     
       BNE    L7284   
       LDA    $F4     
       AND    #$FB    
       STA    $F4     
       JSR    L7E9C   
       LDA    $F9     
       LSR            
       BCC    L7284   
       JSR    L72E6   
L7284: LDA    $F4     
       AND    #$08    
       BNE    L72B0   
       LDA    $EF     
       STA    $DB     
       JSR    L7B1B   
       LDA    CXM0P   
       BMI    L729C   
       BIT    CXM1P   
       BVC    L72B0   
       INX            
       INX            
       INX            
L729C: LDA    $CC,X   
       AND    $DB     
       STA    $CC,X   
       LDA    $F4     
       ORA    #$08    
       STA    $F4     
       STA    AUDC0   
       STA    AUDF0   
       LDA    #$0F    
       STA    AUDV0   
L72B0: LDA    INTIM   
       BNE    L72B0   
       STA    VBLANK  
       JMP    L7764   
L72BA: .byte $41,$52,$41,$4E,$44,$4F
L72C0: .byte $DF,$DD,$DE,$D8,$90,$91,$9E,$9F,$D5,$EA,$EB,$D7,$BA,$BB,$AC,$AD
       .byte $C9,$FB,$F4
L72D3: .byte $09,$09,$4A,$4A,$3B,$7B,$63,$7C,$33,$2E,$74,$F5,$87,$7C,$03,$7D
       .byte $7E,$7F,$80
L72E6: LDA    $D5     
       TAX            
       BMI    L72F0   
       AND    #$03    
       BNE    L72F4   
       RTS            

L72F0: AND    #$30    
       BEQ    L72F9   
L72F4: TXA            
       EOR    #$80    
       STA    $D5     
L72F9: RTS            

L72FA: CMP    #$7D    
       BPL    L7302   
       CMP    #$02    
       BNE    L730C   
L7302: CPY    #$84    
       BEQ    L730A   
       CPY    #$DD    
       BNE    L730C   
L730A: LDX    #$00    
L730C: RTS            

L730D: LDA    #$1F    
       STA    TIM64T  
       LDA    $F4     
       BPL    L7319   
       JMP    L7754   
L7319: LDA    $F0     
       AND    #$10    
       BEQ    L732B   
       LDA    $F9     
       AND    #$08    
       BNE    L7328   
       JMP    L756A   
L7328: JMP    L750B   
L732B: LDA    CXP0FB  
       BPL    L7337   
       LDA    $DE     
       STA    $D8     
       LDA    $DF     
       STA    $DD     
L7337: LDA    $D8     
       STA    $DE     
       LDA    $DD     
       STA    $DF     
       LDA    SWCHA   
       LDX    $D5     
       BMI    L734A   
       LSR            
       LSR            
       LSR            
       LSR            
L734A: LDX    #$00    
       LDY    $90     
       LSR            
       BCS    L7355   
       LDX    #$01    
       LDY    #$5E    
L7355: LSR            
       BCS    L735C   
       LDX    #$02    
       LDY    #$81    
L735C: LSR            
       BCS    L7369   
       LDA    $F0     
       AND    #$F7    
       STA    $F0     
       LDX    #$03    
       BNE    L7374   
L7369: LSR            
       BCS    L737E   
       LDA    $F0     
       ORA    #$08    
       STA    $F0     
       LDX    #$04    
L7374: LDY    #$A4    
       LDA    $D6     
       AND    #$08    
       BNE    L737E   
       LDY    #$3B    
L737E: STY    $90     
       LDA    $D5     
       ASL            
       BIT    SWCHB   
       BCS    L738C   
       BVC    L7393   
       BVS    L738E   
L738C: BPL    L7393   
L738E: LDA    $D6     
       LSR            
       BCC    L73CC   
L7393: LDA    $F0     
       BMI    L73CC   
       LDY    #$00    
       CPX    #$04    
       BNE    L73A1   
       LDY    #$10    
       BNE    L73A7   
L73A1: CPX    #$03    
       BNE    L73B0   
       LDY    #$F0    
L73A7: LDA    $DD     
       JSR    L7A94   
       STA    $DD     
       BNE    L73C2   
L73B0: CPX    #$02    
       BNE    L73BC   
       LDY    $D8     
       CPY    #$02    
       BEQ    L73BC   
       DEC    $D8     
L73BC: CPX    #$01    
       BNE    L73CC   
       INC    $D8     
L73C2: LDA    $D6     
       ORA    #$01    
       STA    $E3     
       AND    #$FD    
       STA    $E2     
L73CC: LDA    $F0     
       BMI    L73DB   
       LDA    $F9     
       AND    #$08    
       BEQ    L73DB   
       LDA    $F4     
       LSR            
       BCS    L742C   
L73DB: LDA    $D8     
       STA    $DB     
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
       JSR    L7B1B   
       BIT    CXM0P   
       BVC    L742F   
L73F1: LDA    $F0     
       BMI    L743A   
       LDA    $DB     
       EOR    #$FF    
       AND    $CC,X   
       BEQ    L7451   
L73FD: LDA    $CC,X   
       AND    $DB     
       STA    $CC,X   
       LDA    $F4     
       ORA    #$01    
       STA    $F4     
       LDA    $F9     
       CMP    #$08    
       BPL    L7417   
       SED            
       LDA    $F1     
       CLC            
       ADC    #$01    
       STA    $F1     
L7417: LDA    #$0C    
       STA    AUDC0   
       LDA    #$05    
       STA    AUDF0   
       LDA    #$0F    
       STA    AUDV0   
       CLD            
       LDA    $F0     
       BMI    L7466   
       ORA    #$80    
       STA    $F0     
L742C: JMP    L746C   
L742F: LDA    CXM1P   
       BPL    L7466   
       TXA            
       CLC            
       ADC    #$03    
       TAX            
       BNE    L73F1   
L743A: LDA    $DB     
       EOR    #$FF    
       ORA    $CC,X   
       STA    $CC,X   
       LDA    $F9     
       CMP    #$08    
       BPL    L7451   
       SED            
       LDA    $F1     
       SEC            
       SBC    #$01    
       STA    $F1     
       CLD            
L7451: LDA    $DB     
       LSR            
       ROR    $DB     
       LDA    $DB     
       CMP    #$FE    
       BNE    L7463   
       INX            
       CPX    #$03    
       BNE    L7463   
       LDX    #$00    
L7463: JMP    L73FD   
L7466: LDA    $F0     
       AND    #$7F    
       STA    $F0     
L746C: LDA    $D6     
       AND    #$7F    
       BNE    L749A   
       LDA    $F4     
       AND    #$FD    
       STA    $F4     
       LDX    #$60    
       LDA    $F9     
       AND    #$06    
       BEQ    L7498   
       LDY    $E1     
       BMI    L7498   
       CMP    #$02    
       BNE    L7492   
       LDX    #$C0    
       LDA    $F4     
       ORA    #$02    
       STA    $F4     
       BNE    L7498   
L7492: CMP    #$06    
       BNE    L7498   
       LDX    #$90    
L7498: STX    $FA     
L749A: LDA    $F4     
       AND    #$EF    
       STA    $F4     
       LDA    $D8     
       CMP    #$36    
       BCC    L74B7   
       CMP    #$4E    
       BCS    L74B7   
       LDA    $DD     
       JSR    L7E86   
       CMP    #$8A    
       BCC    L74B7   
       CMP    #$9D    
       BCC    L74BA   
L74B7: JMP    L756A   
L74BA: LDA    $F4     
       ORA    #$10    
       STA    $F4     
       LDA    $F9     
       AND    #$06    
       CMP    #$04    
       BNE    L74DF   
       LDY    #$60    
       LDX    #$00    
       LDA    $D5     
       BPL    L74D1   
       INX            
L74D1: LDA    INPT4,X 
       BMI    L74DD   
       LDY    #$C0    
       LDA    $F4     
       ORA    #$02    
       STA    $F4     
L74DD: STY    $FA     
L74DF: SED            
       LDA    CXP0FB  
       BPL    L750F   
       LDX    #$00    
       LDA    $D5     
       BPL    L74EC   
       LDX    #$06    
L74EC: LDA    $F9     
       CMP    #$08    
       BMI    L750B   
       LDY    $F4     
       TYA            
       LSR            
       BCC    L7506   
       LDA    $F1     
       ADC    #$00    
       STA    $F1     
       TYA            
       AND    #$FE    
       STA    $F4     
       JMP    L755D   
L7506: TYA            
       AND    #$04    
       BEQ    L7569   
L750B: LDA    $D6     
       AND    #$03    
L750F: BNE    L7569   
       LDA    $F1     
       BEQ    L7569   
       SED            
       SEC            
       SBC    #$01    
       STA    $F1     
       LDA    $ED,X   
       CLC            
       ADC    #$01    
       STA    $ED,X   
       BCC    L7548   
       LDA    $EC,X   
       ADC    #$00    
       STA    $EC,X   
       LDA    $D5     
       TAY            
       CPX    #$00    
       BEQ    L753C   
       AND    #$03    
       CMP    #$03    
       BEQ    L7548   
       TYA            
       ADC    #$01    
       BNE    L7546   
L753C: AND    #$30    
       CMP    #$30    
       BEQ    L7548   
       TYA            
       CLC            
       ADC    #$10    
L7546: STA    $D5     
L7548: LDA    $ED,X   
       BEQ    L7550   
       CMP    #$50    
       BNE    L755D   
L7550: CLC            
       LDA    #$01    
       CPX    #$00    
       BEQ    L7559   
       LDA    #$10    
L7559: ADC    $F6     
       STA    $F6     
L755D: LDA    #$0C    
       STA    AUDC0   
       LDA    #$07    
       STA    AUDF0   
       LDA    #$0F    
       STA    AUDV0   
L7569: CLD            
L756A: LDA    $F0     
       AND    #$04    
       BEQ    L7573   
       JMP    L75F5   
L7573: LDA    $F6     
       LDX    $D5     
       BPL    L757D   
       LSR            
       LSR            
       LSR            
       LSR            
L757D: AND    #$0F    
       TAY            
       LDA    L7DF5,Y 
       CMP    $E1     
       BCC    L75F2   
       JSR    L7AE7   
       LDA    L7EF1,Y 
       CMP    $E1     
       BCS    L75DE   
       TYA            
       BNE    L7596   
       LDA    #$01    
L7596: CMP    #$07    
       BCC    L759C   
       LDA    #$07    
L759C: ASL            
       ASL            
       ASL            
       ASL            
       TAX            
       LDA    $E1     
       LSR            
       BCC    L75B6   
       LDY    #$34    
       LDA    $EE     
       ORA    #$08    
       STA    $EE     
       LDA    $F4     
       AND    #$F7    
       STA    $F4     
       BNE    L75C5   
L75B6: LDY    #$2E    
       TXA            
       EOR    #$F0    
       CLC            
       ADC    #$10    
       TAX            
       LDA    $EE     
       AND    #$F7    
       STA    $EE     
L75C5: STY    $EA     
       STX    $F5     
       LDA    $E1     
       CMP    #$03    
       BMI    L7632   
       CMP    #$7D    
       BPL    L7632   
       STA    $EF     
       LDA    $F0     
       AND    #$FE    
       STA    $F0     
       JMP    L75EC   
L75DE: LDA    #$45    
       STA    $AC     
       LDA    #$A8    
       STA    $BA     
       LDA    $F0     
       ORA    #$03    
       STA    $F0     
L75EC: LDA    $F0     
       ORA    #$04    
       STA    $F0     
L75F2: JMP    L7704   
L75F5: LDA    $F0     
       AND    #$01    
       BNE    L7638   
       LDA    #$87    
       STA    $BA     
       LDX    #$0F    
       LDA    $D6     
       AND    #$10    
       BEQ    L7609   
       LDX    #$00    
L7609: STX    AUDV1   
       LDA    RSYNC   
       STA    AUDC1   
       LDY    ENAM0   
       LDX    #$03    
       LDA    $D6     
       AND    #$10    
       BNE    L761D   
       LDX    #$24    
       LDY    ENABL   
L761D: STX    $AC     
       STY    AUDF1   
       LDA    $EA     
       AND    #$0F    
       LDX    $F5     
       BMI    L762E   
       CMP    #$0E    
       JMP    L7630   
L762E: CMP    #$04    
L7630: BNE    L75F2   
L7632: LDA    #$00    
       STA    $EF     
       BEQ    L769A   
L7638: LDY    $EE     
       LDA    $EF     
       CMP    #$30    
       BCC    L7651   
       CMP    #$60    
       BCS    L7651   
       LDA    $EA     
       JSR    L7E86   
       CMP    #$7B    
       BCC    L7651   
       CMP    #$AD    
       BCC    L76B2   
L7651: LDA    $EF     
       CMP    #$01    
       BEQ    L765B   
       LDA    CXP1FB  
       BPL    L76B2   
L765B: LDA    $F8     
       STA    $EA     
       LDA    $F7     
       STA    $EF     
       TYA            
       AND    #$20    
       BNE    L769D   
       TYA            
       ORA    #$20    
       TAY            
       AND    #$04    
       BNE    L768C   
       LDA    $EA     
       JSR    L7E86   
       STA    $E6     
       LDA    $DD     
       JSR    L7E86   
       CMP    $E6     
       LDX    #$F0    
       BCC    L7684   
       LDX    #$10    
L7684: STX    $F5     
       TYA            
       ORA    #$04    
       TAY            
       BNE    L76DD   
L768C: TYA            
       AND    #$FB    
       TAY            
       LDA    $EF     
       STA    $F7     
       CMP    $D8     
       BCS    L76C3   
       BCC    L76D3   
L769A: JMP    L76FE   
L769D: TYA            
       AND    #$04    
       BEQ    L76AE   
       LDA    $F5     
       EOR    #$F0    
       CLC            
       ADC    #$10    
       STA    $F5     
       JMP    L76B2   
L76AE: TYA            
       EOR    #$10    
       TAY            
L76B2: TYA            
       AND    #$DF    
       TAY            
       AND    #$04    
       BNE    L76DD   
       LDA    $EF     
       STA    $F7     
       TYA            
       AND    #$10    
       BEQ    L76D3   
L76C3: DEC    $EF     
       LDA    $EF     
       CMP    #$FF    
       BNE    L76CD   
       INC    $EF     
L76CD: TYA            
       ORA    #$10    
       TAY            
       BNE    L76D9   
L76D3: INC    $EF     
       TYA            
       AND    #$EF    
       TAY            
L76D9: LDA    #$00    
       STA    $F5     
L76DD: LDA    $D6     
       AND    #$07    
       STA    AUDF1   
       LDA    #$05    
       STA    AUDC1   
       LDA    #$0F    
       STA    AUDV1   
       LDA    $D6     
       AND    #$04    
       BNE    L76F6   
       TYA            
       ORA    #$08    
       BNE    L76F9   
L76F6: TYA            
       AND    #$F7    
L76F9: STA    $EE     
       JMP    L7704   
L76FE: LDA    $F0     
       AND    #$FB    
       STA    $F0     
L7704: LDA    $D6     
       LSR            
       BCC    L7714   
       LDA    #$F0    
       LDX    $F5     
       BMI    L7711   
       LDA    #$10    
L7711: CLC            
       ADC    $F5     
L7714: LDY    $F5     
       LDA    $EA     
       STA    $F8     
       JSR    L7A94   
       STA    $EA     
       LDA    $F4     
       AND    #$08    
       BNE    L7754   
       LDA    $EF     
       CMP    #$3E    
       BCC    L7754   
       CMP    #$44    
       BCS    L7754   
       LDA    $EA     
       AND    #$0F    
       CMP    #$09    
       BNE    L7754   
       LDA    CXP1FB  
       BPL    L7754   
       SED            
       LDA    $F1     
       SEC            
       SBC    #$01    
       STA    $F1     
       CLD            
       STA    AUDF0   
       LDA    #$0F    
       STA    AUDV0   
       LDA    #$0C    
       STA    AUDC0   
       LDA    $F4     
       ORA    #$08    
       STA    $F4     
L7754: JSR    L7AE7   
       INC    $D6     
L7759: LDA    INTIM   
       BNE    L7759   
       JMP    L702D   
L7761: .byte $9A,$24,$10
L7764: STA    WSYNC   
       LDX    #$18    
       LDA    L7D7E   
       STA    COLUBK  
       LDA    #$1A    
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
L778C: STA    WSYNC   
       LDA    L7D7E,X 
       STA    COLUBK  
       LDA    L7C00,X 
       STA    PF1     
       LDA    ($C8),Y 
       STA    GRP0    
       LDA    L7DAF,X 
       STA    PF2     
       LDA    L7C15,Y 
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
       BPL    L778C   
       STA    WSYNC   
       STA    HMCLR   
       LDA    ($C8),Y 
       STA    GRP0    
       TXA            
       LDX    #$07    
L77C7: DEX            
       BNE    L77C7   
       TAX            
       LDA    L7DDC,X 
       STA    COLUP0  
       DEX            
       DEY            
       STA    RESP1   
L77D4: STA    WSYNC   
       LDA    L7D7E,X 
       STA    COLUBK  
       LDA    L7C00,X 
       STA    PF1     
       LDA    ($C8),Y 
       STA    GRP0    
       LDA    L7DAF,X 
       STA    PF2     
       LDA    L7C15,Y 
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
       BNE    L77D4   
       LDA    $DD     
       AND    #$0F    
       TAX            
       STA    WSYNC   
L7809: DEX            
       BNE    L7809   
       STA    RESP0   
       STA    WSYNC   
       LDA    $EA     
       STA    HMP1    
       LDA    $DD     
       STA    HMP0    
       LDA    $EA     
       AND    #$0F    
       TAX            
       STA    WSYNC   
L781F: DEX            
       BNE    L781F   
       STA    RESP1   
       STA    WSYNC   
       LDA    #$C9    
       STA    COLUPF  
       LDA    #$01    
       STA    CTRLPF  
       LDA    #$FF    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       STA    CXCLR   
       LDA    $F0     
       STA    REFP0   
       LDA    $EE     
       STA    REFP1   
       LDY    #$05    
       STY    NUSIZ1  
       LDY    #$00    
       LDA    $F0     
       LSR            
       BCC    L784D   
       STY    NUSIZ1  
L784D: STY    GRP0    
       STY    GRP1    
       STY    NUSIZ0  
       LDX    #$02    
       STX    $E5     
       LDX    #$0A    
       STX    $E7     
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
       LDA    $EB     
       STA    COLUBK  
L787A: STX    $E4     
       LDA    ($9C),Y 
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       LDA    ($B8),Y 
       STA    GRP1    
       LDX    $E5     
       LDA    $CC,X   
       STA    ENAM0   
       NOP            
       NOP            
       NOP            
       LDA    $CF,X   
       STA    ENAM1   
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
       LDX    $E4     
       NOP            
       NOP            
       NOP            
       LDA    L7E55,X 
       STA    HMM1    
       LDA    L7E56,X 
       STA    HMM0    
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
       STX    $E4     
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
       LDX    $E5     
       LDA    $CF,X   
       LSR            
       ROR    $CF,X   
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
       LDA    $CC,X   
       LSR            
       ROR    $CC,X   
       STX    $E5     
       LDX    $E4     
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
       BMI    L7992   
       LDA    L7F00,X 
       STA    PF0     
       TXA            
       TAY            
       LDA    ($FA),Y 
       STA    PF2     
       LDA    L7F30,X 
       LDY    $FC     
       DEY            
       BMI    L7966   
       STA    PF1     
       JMP    L787A   
L7966: STA    WSYNC   
       STA    HMOVE   
       STX    $E4     
       LDA    $E7     
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
       BEQ    L7989   
       DEC    $E5     
L7989: STX    $E7     
       LDX    $E4     
       LDY    #$17    
       JMP    L787A   
L7992: STA    WSYNC   
       LDA    #$C9    
       STA    COLUBK  
       LDA    #$00    
       LDX    #$04    
L799C: STA    REFP0,X 
       DEX            
       BPL    L799C   
       STA    ENAM0   
       STA    ENAM1   
       STA    AUDV0   
       STA    AUDV1   
       LDX    #$05    
       STA    WSYNC   
L79AD: DEX            
       BNE    L79AD   
       STA    RESP0   
       LDX    #$05    
L79B4: DEX            
       BNE    L79B4   
       STA    RESP1   
       LDA    #$50    
       STA    HMP0    
       STA    HMP1    
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$1A    
       STA    COLUBK  
       LDA    #$34    
       STA    COLUP0  
       LDA    #$72    
       STA    COLUP1  
       LDY    #$07    
L79D3: STA    WSYNC   
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
       STA    $E5     
       STA    GRP1    
       LDA    ($88),Y 
       TAX            
       LDA    ($8A),Y 
       STX    GRP1    
       NOP            
       STA    GRP1    
       DEY            
       BPL    L79D3   
       INY            
       STA    WSYNC   
       STY    GRP0    
       STY    GRP1    
       LDX    #$06    
L7A03: DEX            
       BNE    L7A03   
       LDA    #$01    
       LDX    #$03    
       STA    RESP0   
       STX    CTRLPF  
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    $D5     
       TAY            
       AND    #$30    
       CMP    #$30    
       BNE    L7A1F   
       LDX    #$DB    
       BNE    L7A29   
L7A1F: CMP    #$20    
       BNE    L7A27   
       LDX    #$D8    
       BNE    L7A29   
L7A27: LDX    #$C0    
L7A29: STX    $E4     
       STA    WSYNC   
       LDX    #$08    
L7A2F: DEX            
       BNE    L7A2F   
       STA    RESP1   
       TYA            
       AND    #$03    
       CMP    #$03    
       BNE    L7A3F   
       LDX    #$DB    
       BNE    L7A49   
L7A3F: CMP    #$02    
       BNE    L7A47   
       LDX    #$D8    
       BNE    L7A49   
L7A47: LDX    #$C0    
L7A49: STX    $E5     
       LDY    #$07    
L7A4D: LDA    #$00    
       TAX            
       STA    WSYNC   
       CPY    #$02    
       STA    PF1     
       BMI    L7A64   
       CPY    #$07    
       BPL    L7A66   
       LDA    $E4     
       STA    PF1     
       LDX    $E5     
       BNE    L7A6A   
L7A64: NOP            
       NOP            
L7A66: NOP            
       NOP            
       NOP            
       NOP            
L7A6A: NOP            
       NOP            
       LDA    $D5     
       BMI    L7A7D   
       LDA    ($8C),Y 
       STA    GRP0    
       LDA    ($8E),Y 
       STA    $FC     
       STA    GRP0    
       JMP    L7A87   
L7A7D: BPL    L7A7F   
L7A7F: LDA    ($8C),Y 
       STA    GRP1    
       LDA    ($8E),Y 
       STA    GRP1    
L7A87: STX    PF1     
       DEY            
       BPL    L7A4D   
       INY            
       STY    GRP0    
       STY    GRP1    
       JMP    L730D   
L7A94: STA    $E4     
       STY    $E5     
       SEC            
       SBC    $E5     
       LDY    $E5     
       BMI    L7AAD   
       LDY    $E4     
       BPL    L7ABD   
       TAY            
       BMI    L7ABD   
       INY            
       TYA            
       SEC            
       SBC    #$10    
       BNE    L7ABD   
L7AAD: LDY    $E4     
       BMI    L7ABD   
       TAY            
       AND    #$F0    
       CMP    #$70    
       BCC    L7ABE   
       DEY            
       TYA            
       CLC            
       ADC    #$10    
L7ABD: TAY            
L7ABE: TYA            
       AND    #$0F    
       CMP    #$04    
       BCC    L7AE4   
       BNE    L7AD2   
       TYA            
       BMI    L7AE0   
       AND    #$F0    
       CMP    #$40    
       BCC    L7ADF   
       BCS    L7AE4   
L7AD2: CMP    #$0E    
       BNE    L7ADF   
       TYA            
       BMI    L7AE1   
       AND    #$F0    
       CMP    #$20    
       BCC    L7AE1   
L7ADF: TYA            
L7AE0: RTS            

L7AE1: LDA    #$34    
       RTS            

L7AE4: LDA    #$2E    
       RTS            

L7AE7: LDA    $E2     
       STA    $E4     
       LDA    $E1     
       STA    $E5     
       LDA    #$00    
       LDX    #$08    
L7AF3: LSR    $E4     
       BCC    L7AFA   
       CLC            
       ADC    $E5     
L7AFA: ROR            
       ROR    $E1     
       DEX            
       BNE    L7AF3   
       CLC            
       LDA    $E1     
       ADC    $E3     
       STA    $E1     
       INC    $E0     
       LDX    $E0     
       BNE    L7B1A   
       TAX            
       ASL            
       SEC            
       ROL            
       STA    $E2     
       TXA            
       SEC            
       ROL            
       STA    $E3     
       BNE    L7AE7   
L7B1A: RTS            

L7B1B: LDX    #$FF    
       LDY    #$17    
L7B1F: TYA            
       AND    #$07    
       CMP    #$07    
       BNE    L7B27   
       INX            
L7B27: LDA    L7D97,Y 
       CMP    $DB     
       BCS    L7B31   
       DEY            
       BPL    L7B1F   
L7B31: TYA            
       AND    #$07    
       TAY            
       LDA    L7FF0,Y 
       STA    $DB     
       RTS            

L7B3B: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$FF,$00,$03,$26,$4C,$FC,$FE,$FB
       .byte $39,$00,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$FF,$00,$42,$6E,$38
       .byte $1C,$5C,$3C,$18,$00,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$FF,$00
       .byte $18,$3C,$5C,$1C,$38,$6E,$42,$00,$FF,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$FF,$00,$40,$40,$40,$FF,$FC,$F8,$38,$00,$FF,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$08,$00,$10,$00,$20,$08,$00,$04,$10,$00,$20,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00
L7C00: .byte $00,$00,$7F,$FF,$7F,$3F,$0C,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00
L7C15: .byte $00,$00,$00,$7F,$7F,$FF,$F8,$18,$18,$08,$08,$00,$00,$00,$00,$38
       .byte $38,$7F,$7F,$FE,$FE,$1C,$1C,$00
L7C2D: LDA    $D9     
       LDX    #$05    
L7C31: STA    $E4,X   
       DEX            
       BPL    L7C31   
       LDA    $DB     
       BEQ    L7C62   
       CMP    #$91    
       BCS    L7C62   
       LDX    #$00    
L7C40: SEC            
       SBC    #$18    
       BMI    L7C48   
       INX            
       BPL    L7C40   
L7C48: STA    $DC     
       LDA    $E4,X   
       SEC            
       SBC    $DC     
       STA    $E4,X   
       CPX    #$05    
       BEQ    L7C62   
       LDA    $DC     
       CMP    $DA     
       BCC    L7C62   
       LDA    $E4,X   
       CLC            
       ADC    #$18    
       STA    $E5,X   
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
       LDY    #$0A    
       JSR    L7EB6   
       LDX    #$0A    
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
       .byte $00,$00,$08,$1C,$1C,$08,$00
L7DC6: .byte $00,$1C,$1C,$1C,$1C,$34,$34,$34,$34,$34,$34,$00,$00,$00,$00,$0D
       .byte $0D,$0D,$0D,$0D,$0D,$0D
L7DDC: .byte $0D,$00,$00,$00,$00,$16,$16,$16,$16,$16,$B7,$B7,$B7,$16,$B7,$B7
       .byte $B7,$00,$00,$00,$00,$00,$00,$00,$00
L7DF5: .byte $03,$09,$0C,$18,$24,$30,$3C,$48,$54,$60,$80,$3C,$7E,$66,$66,$66
       .byte $66,$7E,$3C,$3C,$3C,$18,$18,$18,$18,$38,$18,$7E,$7E,$60,$7C,$3E
       .byte $06,$7E,$3C,$3C,$7E,$06,$0C,$0C,$06,$7E,$3C,$0C,$0C,$7E,$7E,$6C
       .byte $6C,$3C,$1C,$3C,$7E,$06,$7E,$7C,$60,$7E,$7E,$3C,$7E,$66,$7E,$7C
       .byte $60,$7E,$3C,$60,$30,$18,$0C,$06,$06,$7E,$7E,$3C,$7E,$66,$3C,$3C
       .byte $66,$7E,$3C,$3C,$7E,$06,$3E,$7E,$66,$7E,$3C,$00,$00,$00,$00,$00
L7E55: .byte $00
L7E56: .byte $00,$00,$90,$C0,$30,$C0,$50,$30,$A0,$30,$20,$80,$40,$20,$B0,$50
       .byte $70,$D0,$C0,$C0,$40,$50,$E0,$B0,$D0,$40,$40,$A0,$A0,$60,$B0,$A0
       .byte $70,$30,$40,$70,$A0,$B0,$C0,$C0,$60,$60,$E0,$40,$B0,$A0,$00,$60
L7E86: STA    $E4     
       EOR    #$F0    
       CLC            
       ADC    #$70    
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $E5     
       LDA    $E4     
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    $E5     
       RTS            

L7E9C: LDX    #$08    
L7E9E: LDA    $E1     
       CPX    #$06    
       BMI    L7EA6   
       AND    #$55    
L7EA6: CPX    #$05    
       BEQ    L7EAE   
       CPX    #$02    
       BNE    L7EB0   
L7EAE: AND    #$FD    
L7EB0: STA    $CC,X   
       DEX            
       BPL    L7E9E   
       RTS            

L7EB6: LDX    L72C0,Y 
       LDA    L72D3,Y 
       STA    VSYNC,X 
       DEY            
       BPL    L7EB6   
       INY            
       RTS            

L7EC3: .byte $00,$00,$00,$00,$60,$60,$60,$30,$30,$6F,$EE,$CC,$18,$1E,$1C,$18
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$60,$60,$60,$60,$60,$DC,$D8
       .byte $D8,$30,$38,$38,$30,$00,$00,$00,$00,$00,$00,$00,$00,$00
L7EF1: .byte $00,$06,$0D,$1A,$27,$34,$41,$4D,$59,$66,$73
L7EFC: .byte $55,$65,$ED,$FD
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
L7FF8: .byte $7F,$02,$02,$7F,$00,$70,$00,$00
