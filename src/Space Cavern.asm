; Disassembly of roms/Space Cavern.bin
; Disassembled Tue Oct  6 15:22:43 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Space Cavern.bin
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
RESP0   =  $10
RESP1   =  $11
RESM0   =  $12
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
HMBL    =  $24
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXM0P   =  $30
CXM1P   =  $31
CXP0FB  =  $32
CXP1FB  =  $33
CXM0FB  =  $34
CXM1FB  =  $35
CXPPMM  =  $37
INPT4   =  $3C
INPT5   =  $3D
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM8T   =  $0295
TIM64T  =  $0296

       ORG $7000

START:
       SEI            
       CLD            
       LDX    #$00    
       TXA            
L7005: STA    VSYNC,X 
       INX            
       BNE    L7005   
       DEX            
       TXS            
       LDA    #$01    
       STA    $FB     
       LDA    #$7F    
       LDX    #$0D    
L7014: STA    $86,X   
       DEX            
       DEX            
       BPL    L7014   
       LDA    #$7E    
       LDX    #$0D    
L701E: STA    $9D,X   
       DEX            
       DEX            
       BPL    L701E   
       LDA    #$00    
       STA    $92     
       LDA    #$7E    
       STA    $93     
       LDA    #$09    
       STA    $9A     
       STA    $BB     
       STA    $BC     
       STA    $B3     
       STA    $B4     
       LDA    #$A1    
       STA    $E8     
       STA    $E9     
       LDA    #$01    
       STA    CTRLPF  
       LDA    #$11    
       STA    $94     
       LDA    #$7C    
       STA    $95     
       LDX    #$23    
L704C: LDA    $9B,X   
       STA    $BF,X   
       DEX            
       BPL    L704C   
L7053: STA    WSYNC   
       STX    VSYNC   
       LDA    #$2A    
       STA    TIM8T   
       LDX    #$00    
       STX    $F2     
L7060: TXA            
       ASL            
       TAY            
       LDA    $80,X   
       AND    #$F0    
       BNE    L7075   
       STA    $F3     
       LDA    $F2     
       BNE    L7073   
       LDA    #$50    
       BNE    L7078   
L7073: LDA    $F3     
L7075: DEC    $F2     
       LSR            
L7078: STA.wy $0086,Y 
       CPX    #$02    
       BNE    L7081   
       DEC    $F2     
L7081: LDA    $80,X   
       AND    #$0F    
       BNE    L7093   
       STA    $F3     
       LDA    $F2     
       BNE    L7091   
       LDA    #$50    
       BNE    L7098   
L7091: LDA    $F3     
L7093: DEC    $F2     
       ASL            
       ASL            
       ASL            
L7098: STA.wy $008C,Y 
       INX            
       CPX    #$03    
       BCC    L7060   
L70A0: LDA    INTIM   
       BNE    L70A0   
       STA    WSYNC   
       STA    VSYNC   
       LDA    #$2A    
       STA    TIM64T  
       LDA    $F7     
       AND    #$08    
       BNE    L70BE   
       LDA    $F7     
       AND    #$70    
       LSR            
       LSR            
       LSR            
       LSR            
       BPL    L70C2   
L70BE: LDA    $F7     
       AND    #$07    
L70C2: TAX            
       BEQ    L70D2   
       DEX            
       BEQ    L70D2   
       DEX            
       BEQ    L70D6   
       DEX            
       BEQ    L70D5   
       LDX    #$03    
       BNE    L70D6   
L70D2: DEX            
       BMI    L70D6   
L70D5: INX            
L70D6: STX    $FC     
       LDA    $E3     
       AND    #$F0    
       STA    $F9     
       ORA    #$06    
       STA    COLUP0  
       STA    COLUP1  
       LDA    $EE     
       AND    #$01    
       BNE    L711D   
       LDA    $E3     
       BNE    L70FD   
       LDX    $F1     
       INX            
       STX    $F1     
       BPL    L70FD   
       LDA    #$00    
       STA    $92     
       LDA    #$7E    
       STA    $93     
L70FD: LDA    $EE     
       AND    #$40    
       BEQ    L711A   
       LDA    $82     
       CMP    #$A0    
       BCS    L711A   
       LDA    $E3     
       BNE    L711A   
       LDX    #$02    
L710F: LDA    $80,X   
       LDY    $83,X   
       STA    $83,X   
       STY    $80,X   
       DEX            
       BPL    L710F   
L711A: JMP    L760E   
L711D: LDY    #$44    
       LDX    #$20    
       LDA    $F7     
       AND    #$08    
       BEQ    L712B   
       LDY    #$2A    
       LDX    #$70    
L712B: STX    $F9     
       STY    COLUP0  
       STY    COLUP1  
       JSR    L7C49   
       LDA    $EE     
       BMI    L713B   
       JMP    L723A   
L713B: INC    $F1     
       LDA    $F1     
       BPL    L7144   
       JMP    L718B   
L7144: AND    #$20    
       BEQ    L7158   
       LDA    #$A5    
       STA    $92     
       LDA    #$7E    
       STA    $95     
       LDA    #$00    
       STA    $A7     
       STA    $A9     
       BEQ    L7162   
L7158: LDA    #$BD    
       STA    $92     
       LDA    #$7C    
       STA    $95     
       LDA    #$11    
L7162: STA    $94     
       LDA    $F1     
       AND    #$02    
       BEQ    L716E   
       LDA    #$10    
       BNE    L7170   
L716E: LDA    #$F0    
L7170: STA    $E4     
       LDA    $9A     
       STA    $E5     
       JSR    L7BDB   
       STA    $9A     
       LDA    $F1     
       AND    #$03    
       TAY            
       LDA    #$04    
L7182: LSR            
       DEY            
       BPL    L7182   
       STA    AUDF1   
       JMP    L7261   
L718B: CMP    #$80    
       BNE    L719A   
       LDA    #$48    
       STA    $92     
       LDA    #$7E    
       STA    $93     
       JMP    L7261   
L719A: CMP    #$FF    
       BEQ    L71A7   
       AND    #$07    
       BEQ    L71A5   
       JMP    L7261   
L71A5: DEC    $92     
L71A7: LDA    #$00    
       STA    AUDV0   
       STA    AUDV1   
       STA    $96     
       STA    $9D     
       STA    $C1     
       LDA    #$7E    
       STA    $9E     
       STA    $C2     
       LDA    #$58    
       STA    $92     
       LDA    #$7F    
       STA    $93     
       LDA    #$11    
       STA    $94     
       LDA    #$7C    
       STA    $95     
       LDA    #$0C    
       STA    $9A     
       LDA    $EE     
       AND    #$7F    
       STA    $EE     
       LDA    $F7     
       TAX            
       AND    #$08    
       BEQ    L71E3   
       TXA            
       AND    #$07    
       BEQ    L71ED   
       DEX            
       JMP    L71ED   
L71E3: TXA            
       AND    #$70    
       BEQ    L71ED   
       TXA            
       SEC            
       SBC    #$10    
       TAX            
L71ED: STX    $F7     
       TXA            
       AND    #$77    
       BNE    L7202   
       JSR    L7B95   
       LDA    $EE     
       AND    #$7E    
       STA    $EE     
       STA    $FA     
       JMP    L760E   
L7202: LDA    $EE     
       AND    #$40    
       BEQ    L7235   
       JSR    L7B95   
L720B: TXA            
       EOR    #$88    
       TAX            
       STX    $F2     
       LDA    $EE     
       LDX    $FA     
       STA    $FA     
       STX    $EE     
       LDX    #$02    
L721B: LDA    $80,X   
       LDY    $83,X   
       STA    $83,X   
       STY    $80,X   
       DEX            
       BPL    L721B   
       LDX    $F2     
       TXA            
       BPL    L7231   
       AND    #$70    
       BEQ    L720B   
       BNE    L7235   
L7231: AND    #$07    
       BEQ    L720B   
L7235: STX    $F7     
       JMP    L760E   
L723A: LDY    #$00    
       LDA    $EA     
       BEQ    L724F   
       LDA    ($EA),Y 
       STA    AUDF0   
       BEQ    L724B   
       DEC    $EA     
       JMP    L724F   
L724B: STA    $EA     
       STA    AUDV0   
L724F: LDA    $EC     
       BEQ    L7261   
       LDA    ($EC),Y 
       STA    AUDF1   
       BNE    L725F   
       STA    AUDV1   
       STA    $EC     
       BEQ    L7261   
L725F: DEC    $EC     
L7261: LDY    #$02    
       LDX    #$01    
L7265: LDA    $B1,X   
       CMP    #$08    
       BNE    L727F   
       LDA    $B5,X   
       CMP    #$38    
       BCC    L727F   
       LDA    #$00    
       STA    AUDV0   
       STA.wy $00A3,Y 
       STA    $B1,X   
       LDA    #$7E    
       STA.wy $00A4,Y 
L727F: DEY            
       DEY            
       DEX            
       BPL    L7265   
       LDX    #$02    
       LDA    $EE     
       AND    #$02    
       BNE    L7292   
       LDA    $E3     
       AND    #$01    
       BNE    L72C4   
L7292: LDA    $A7,X   
       BEQ    L72C0   
       TAY            
       INY            
       LDA    $80     
       CMP    #$04    
       BCC    L729F   
       INY            
L729F: LDA    $F7     
       AND    #$08    
       BNE    L72AE   
       LDA    SWCHB   
       BPL    L72B5   
       INY            
       JMP    L72B5   
L72AE: LDA    SWCHB   
       ASL            
       BPL    L72B5   
       INY            
L72B5: TYA            
       STA    $A7,X   
       CMP    #$4B    
       BCC    L72C0   
       LDA    #$00    
       STA    $A7,X   
L72C0: DEX            
       DEX            
       BPL    L7292   
L72C4: LDA    $EE     
       AND    #$02    
       BNE    L72D3   
       LDA    $E3     
       AND    #$01    
       BNE    L72D3   
       JMP    L73B8   
L72D3: LDX    #$00    
       STX    $F2     
       INX            
L72D8: TXA            
       ASL            
       TAY            
       DEC    $F2     
       LDA.wy $00A3,Y 
       BEQ    L731A   
       LDA    $B1,X   
       CMP    #$08    
       BNE    L72EE   
       LDA    $BD,X   
       CMP    #$5C    
       BEQ    L731A   
L72EE: INC    $F2     
       LDA    $B3,X   
       CMP    #$65    
       BNE    L72FC   
       DEC    $F2     
       LDY    #$10    
       STY    $B9,X   
L72FC: CMP    #$0D    
       BNE    L7306   
       DEC    $F2     
       LDY    #$F0    
       STY    $B9,X   
L7306: LDA    $B5,X   
       BNE    L7310   
       DEC    $F2     
       LDY    #$01    
       STY    $B7,X   
L7310: CMP    #$1E    
       BCC    L731A   
       DEC    $F2     
       LDY    #$FF    
       STY    $B7,X   
L731A: DEX            
       BPL    L72D8   
       LDA    $F2     
       BMI    L7378   
       LDA    $E3     
       AND    #$0E    
       BNE    L7378   
       LDA    $E7     
       BMI    L732F   
       LDX    #$00    
       BEQ    L7331   
L732F: LDX    #$01    
L7331: AND    #$0F    
       BEQ    L7349   
       CMP    #$01    
       BEQ    L734D   
       CMP    #$02    
       BEQ    L7351   
       CMP    #$03    
       BEQ    L7355   
       CMP    #$04    
       BNE    L7359   
       LDA    #$00    
       BEQ    L7357   
L7349: LDA    #$F0    
       BNE    L7357   
L734D: LDA    #$E0    
       BNE    L7357   
L7351: LDA    #$10    
       BNE    L7357   
L7355: LDA    #$20    
L7357: STA    $B9,X   
L7359: LDA    $E7     
       AND    #$0F    
       CMP    #$05    
       BEQ    L7371   
       CMP    #$06    
       BEQ    L736D   
       CMP    #$07    
       BNE    L7378   
       LDA    #$00    
       BEQ    L7373   
L736D: LDA    #$01    
       BNE    L7373   
L7371: LDA    #$FF    
L7373: STA    $B7,X   
       JMP    L7378   
L7378: LDY    #$02    
       LDY    #$01    
L737C: LDA.wy $00B9,Y 
       STA    $E4     
       LDA.wy $00B3,Y 
       STA    $E5     
       JSR    L7BDB   
       STA.wy $00B3,Y 
       DEY            
       BPL    L737C   
       LDY    #$02    
       LDX    #$01    
L7393: LDA    $B1,X   
       BEQ    L73B3   
       LDA    $B5,X   
       CLC            
       ADC    $B7,X   
       STA    $B5,X   
       CLC            
       ADC    $B1,X   
       STA.wy $00A3,Y 
       LDA    $BD,X   
       CLC            
       ADC    $B5,X   
       STA.wy $00AB,Y 
       LDA    #$00    
       ADC    #$7B    
       STA.wy $00AC,Y 
L73B3: DEY            
       DEY            
       DEX            
       BPL    L7393   
L73B8: LDA    INPT4   
       STA    $F3     
       LDA    $EE     
       BPL    L73C3   
       JMP    L760E   
L73C3: LDA    SWCHA   
       STA    $F2     
       LDA    $F7     
       AND    #$08    
       BNE    L73DC   
       LDA    $F2     
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    #$0F    
       STA    $F2     
       LDA    INPT5   
       STA    $F3     
L73DC: LDA    $F2     
       BPL    L73E5   
       ASL            
       BPL    L73EC   
       BNE    L741D   
L73E5: LDX    #$00    
       LDY    #$10    
       JMP    L73F0   
L73EC: LDX    #$FF    
       LDY    #$F0    
L73F0: STY    $E4     
       STX    $97     
       LDA    $9A     
       STA    $E5     
       JSR    L7BDB   
       CMP    #$8C    
       BNE    L7401   
       LDA    #$9C    
L7401: STA    $9A     
       LDA    $E3     
       AND    #$04    
       BNE    L7411   
       LDA    #$58    
       LDX    #$11    
       LDY    #$7C    
       BNE    L7417   
L7411: LDA    #$72    
       LDX    #$11    
       LDY    #$7C    
L7417: STA    $92     
       STX    $94     
       STY    $95     
L741D: LDA    $EE     
       AND    #$04    
       BNE    L7426   
       JMP    L7522   
L7426: LDA    $E3     
       AND    #$01    
       BEQ    L742F   
       JMP    L74B1   
L742F: LDA    $9D     
       BNE    L7452   
       LDA    $E7     
       AND    #$7F    
       BEQ    L743C   
       JMP    L7522   
L743C: LDA    $E7     
       BMI    L7447   
       LDX    #$65    
       LDA    #$FF    
       JMP    L744B   
L7447: LDX    #$0D    
       LDA    #$00    
L744B: STX    $9B     
       STA    $9C     
       JMP    L749B   
L7452: LDA    $9E     
       CMP    #$7E    
       BNE    L746B   
       LDX    $9D     
       DEX            
       STX    $9D     
       CPX    #$3B    
       BEQ    L7464   
L7461: JMP    L7522   
L7464: LDA    #$00    
       STA    AUDV0   
       JMP    L751A   
L746B: LDA    $E3     
       AND    #$02    
       BEQ    L7461   
       LDY    #$03    
L7473: LDA    $9C     
       BMI    L747B   
       LDA    #$F0    
       BNE    L747D   
L747B: LDA    #$10    
L747D: STA    $E4     
       LDA    $9B     
       STA    $E5     
       JSR    L7BDB   
       STA    $9B     
       DEY            
       BMI    L749B   
       LDA    $80     
       CMP    #$05    
       BCS    L7473   
       DEY            
       CMP    #$02    
       BCS    L7473   
       DEY            
       CMP    #$01    
       BCS    L7473   
L749B: LDA    $E3     
       AND    #$04    
       BEQ    L74A7   
       LDX    #$7D    
       LDA    #$D5    
       BNE    L74AB   
L74A7: LDX    #$7D    
       LDA    #$EE    
L74AB: STX    $9E     
       STA    $9D     
       BNE    L7522   
L74B1: LDA    $9D     
       BNE    L7501   
       LDA    $F2     
       CMP    #$EF    
       BEQ    L74C8   
       CMP    #$DF    
       BNE    L74F1   
       LDX    #$00    
       LDY    $9A     
       INY            
       STY    $9B     
       BNE    L74CF   
L74C8: LDX    #$FF    
       LDY    $9A     
       DEY            
       STY    $9B     
L74CF: LDA    #$7C    
       STA    $ED     
       LDA    #$CC    
       STA    $EC     
       LDA    #$01    
       STA    AUDC1   
       LDA    #$0E    
       STA    AUDV1   
       LDA    #$72    
       STA    $92     
       LDA    #$7C    
       STA    $95     
       LDA    #$11    
       STA    $94     
       LDA    #$8C    
       LDY    #$7D    
       BNE    L74F7   
L74F1: LDA    #$00    
       LDY    #$7E    
       LDX    $97     
L74F7: STX    $97     
       STX    $9C     
       STA    $9D     
       STY    $9E     
       BNE    L7522   
L7501: LDA    $9C     
       AND    #$C0    
       ORA    #$20    
       STA    $E4     
       LDA    $9B     
       STA    $E5     
       JSR    L7BDB   
       STA    $9B     
       CMP    #$65    
       BEQ    L751A   
       CMP    #$0D    
       BNE    L7522   
L751A: LDA    #$00    
       STA    $9D     
       LDA    #$7E    
       STA    $9E     
L7522: LDA    $98     
       BEQ    L7535   
       CMP    #$0E    
       BCC    L7531   
       DEC    $98     
       DEC    $98     
       JMP    L7582   
L7531: LDA    #$00    
       STA    $98     
L7535: LDA    $F2     
       AND    #$F0    
       CMP    #$F0    
       BNE    L7582   
       LDA    $EC     
       BNE    L7582   
       LDA    $F3     
       BMI    L7582   
       STA    WSYNC   
       LDA    #$8C    
       STA    $92     
       LDA    #$2C    
       STA    $94     
       LDA    #$7C    
       STA    $95     
       LDA    #$7E    
       STA    $99     
       LDA    #$3B    
       STA    $98     
       LDA    $9A     
       STA    $E5     
       LDA    #$70    
       STA    $E4     
       JSR    L7BDB   
       STA    HMBL    
       AND    #$0F    
       TAX            
       STA    WSYNC   
L756D: DEX            
       BNE    L756D   
       STA    RESBL   
       LDX    #$01    
       STX    AUDC1   
       LDX    #$06    
       STX    AUDV1   
       LDA    #$D4    
       STA    $EC     
       LDA    #$7C    
       STA    $ED     
L7582: LDX    #$01    
       LDY    #$02    
L7586: LDA.wy $00A7,Y 
       BNE    L75B4   
       LDA.wy $00A3,Y 
       BEQ    L75B4   
       LDA    $BD,X   
       CMP    #$5C    
       BEQ    L75B4   
       LDA    #$7E    
       STA.wy $00A8,Y 
       LDA    $B5,X   
       CLC            
       ADC    #$16    
       STA.wy $00A7,Y 
       LDA    $B3,X   
       STA    $E5     
       LDA    #$70    
       STA    $E4     
       STX    $F2     
       JSR    L7BDB   
       LDX    $F2     
       STA    $BB,X   
L75B4: DEX            
       DEY            
       DEY            
       BPL    L7586   
       LDA    $EE     
       AND    #$08    
       BNE    L75DF   
       LDA    $EE     
       AND    #$02    
       BNE    L75CB   
       LDA    $E3     
       AND    #$01    
       BEQ    L75DF   
L75CB: LDY    #$01    
L75CD: LDA    $F8     
       STA    $E4     
       LDA.wy $00BB,Y 
       STA    $E5     
       JSR    L7BDB   
       STA.wy $00BB,Y 
       DEY            
       BPL    L75CD   
L75DF: LDX    #$01    
L75E1: LDA    $BB,X   
       STA    HMM0,X  
       AND    #$0F    
       TAY            
       STA    WSYNC   
L75EA: DEY            
       BNE    L75EA   
       STA    RESM0,X 
       DEX            
       BPL    L75E1   
       STA    WSYNC   
       STA    HMOVE   
       LDA    $E3     
       BNE    L760E   
       LDA    $E7     
       BMI    L7602   
       LDA    #$00    
       BEQ    L760C   
L7602: CMP    #$C0    
       BCC    L760A   
       LDA    #$10    
       BNE    L760C   
L760A: LDA    #$F0    
L760C: STA    $F8     
L760E: LDA    INTIM   
       BNE    L760E   
       STA    WSYNC   
       STA    VBLANK  
       STA    HMCLR   
       LDA    $96     
       STA    COLUBK  
       LDA    #$00    
       STA    REFP0   
       STA    REFP1   
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDX    #$0A    
       STA    HMCLR   
       STA    WSYNC   
L762F: DEX            
       BNE    L762F   
       STA    RESP0   
       LDX    #$0A    
       STA    WSYNC   
L7638: DEX            
       BNE    L7638   
       STA    RESP1   
       LDA    #$60    
       STA    HMP0    
       LDA    #$E0    
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       LDY    #$07    
L764B: STA    WSYNC   
       LDA    ($86),Y 
       STA    GRP0    
       LDA    ($8C),Y 
       STA    GRP1    
       STY    $F2     
       LDA    ($8A),Y 
       STA    $F3     
       LDA    ($90),Y 
       TAX            
       TXS            
       LDA    ($8E),Y 
       TAX            
       LDA    ($88),Y 
       LDY    $F3     
       STA    GRP0    
       STX    GRP1    
       TSX            
       STY    GRP0    
       STX    GRP1    
       LDY    $F2     
       DEY            
       BPL    L764B   
       STA    WSYNC   
       INY            
       STY    GRP0    
       STY    GRP1    
       STY    NUSIZ0  
       STY    NUSIZ1  
       LDX    #$07    
L7681: STA    WSYNC   
       DEX            
       BPL    L7681   
       LDA    $E3     
       AND    #$04    
       BEQ    L7690   
       LDA    #$FF    
       BMI    L7690   
L7690: STA    REFP0   
       STA    REFP1   
       LDX    #$01    
L7696: LDA    $B3,X   
       STA    HMP0,X  
       AND    #$0F    
       TAY            
       STA    WSYNC   
L769F: DEY            
       BNE    L769F   
       STA    RESP0,X 
       STA    WSYNC   
       DEX            
       BPL    L7696   
       STA    WSYNC   
       STA    HMOVE   
       LDY    #$44    
       LDA    ($A5),Y 
       TAX            
       LDA    ($A3),Y 
L76B4: STA    WSYNC   
       STA    GRP0    
       STX    GRP1    
       LDA    ($AB),Y 
       STA    COLUP0  
       LDA    ($AD),Y 
       STA    COLUP1  
       LDA    ($98),Y 
       STA    $F2     
       LDA    ($A9),Y 
       TAX            
       LDA    ($A7),Y 
       STA    WSYNC   
       STA    ENAM0   
       STX    ENAM1   
       LDA    $F2     
       STA    ENABL   
       DEY            
       CPY    #$11    
       BEQ    L76E2   
       LDA    ($A5),Y 
       TAX            
       LDA    ($A3),Y 
       JMP    L76B4   
L76E2: LDA    CXP0FB  
       STA    $E5     
       LDA    CXP1FB  
       STA    $E4     
       STY    $F2     
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       LDX    #$01    
L76F4: LDA    $9A,X   
       STA    HMP0,X  
       AND    #$0F    
       BNE    L76FE   
       LDA    #$05    
L76FE: TAY            
       STA    WSYNC   
L7701: DEY            
       BNE    L7701   
       STA    RESP0,X 
       STA    WSYNC   
       LDY    $F2     
       LDA    ($98),Y 
       STA    ENABL   
       LDA    ($A7),Y 
       STA    ENAM0   
       LDA    ($A9),Y 
       STA    ENAM1   
       DEY            
       STY    $F2     
       DEX            
       BPL    L76F4   
       STA    WSYNC   
       STA    HMOVE   
       LDY    $F2     
       LDA    $97     
       STA    REFP0   
       LDA    $9C     
       STA    REFP1   
       LDA    CXM0FB  
       AND    #$40    
       ASL            
       STA    $F6     
       LDA    CXM1FB  
       AND    #$40    
       ORA    $F6     
       STA    $F6     
       STA    CXCLR   
       LDA    $E3     
       AND    #$01    
       BNE    L7746   
       LDA    #$00    
       JMP    L7748   
L7746: LDA    #$1A    
L7748: STA    COLUP1  
       LDA    $F9     
       STA    WSYNC   
       STA    COLUBK  
       LDX    #$06    
L7752: LDA    $F9     
       STA    WSYNC   
       STA    COLUBK  
       LDA    ($98),Y 
       STA    ENABL   
       LDA    ($A7),Y 
       STA    ENAM0   
       LDA    ($A9),Y 
       STA    ENAM1   
       DEX            
       STA    WSYNC   
       INC    $F9     
       DEY            
       DEX            
       BNE    L7752   
       LDA    #$30    
       STA    PF0     
       LDA    $E3     
       AND    #$F0    
       STA    COLUPF  
       STX    NUSIZ0  
       STX    NUSIZ1  
       STY    $F5     
       LDY    #$19    
L777F: LDA    ($92),Y 
       TAX            
       TXS            
       LDA    $F9     
       TAX            
       LDA    ($94),Y 
       STA    $F2     
       LDA    ($9D),Y 
       STA    WSYNC   
       STX    COLUBK  
       STA    GRP1    
       TSX            
       STX    GRP0    
       LDA    $F2     
       STA    COLUP0  
       DEY            
       STY    $F4     
       LDY    $F5     
       DEY            
       LDA    ($A7),Y 
       STA    $F2     
       LDA    ($A9),Y 
       STA    $F3     
       STY    $F5     
       LDY    $F4     
       LDA    ($92),Y 
       TAX            
       TXS            
       LDA    ($9D),Y 
       STA    WSYNC   
       STA    GRP1    
       TSX            
       STX    GRP0    
       LDA    $F2     
       STA    ENAM0   
       LDA    $F3     
       STA    ENAM1   
       INC    $F9     
       DEY            
       BPL    L777F   
       LDX    #$00    
       STX    PF0     
       STX    ENAM0   
       STX    ENAM1   
       LDA    $F9     
       STA    WSYNC   
       STA    COLUBK  
       LDX    #$05    
       LDA    $F7     
       AND    #$08    
       BNE    L77DD   
       LDX    #$0B    
L77DD: STA    WSYNC   
L77DF: DEX            
       BNE    L77DF   
       STA    RESP0   
       STA    WSYNC   
       LDX    #$0C    
       LDA    $FC     
       BMI    L7802   
       STA    NUSIZ0  
       LDA    #$00    
       STA    REFP0   
       LDA    #$0E    
       STA    COLUP0  
L77F6: STA    WSYNC   
       LDA    L7BCC,X 
       STA    GRP0    
       DEX            
       BPL    L77F6   
       BMI    L7807   
L7802: STA    WSYNC   
       DEX            
       BPL    L7802   
L7807: LDA    #$2D    
       STA    TIM64T  
       LDX    #$FF    
       TXS            
       STA    WSYNC   
       STX    VBLANK  
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       INC    $E3     
       LDA    SWCHB   
       AND    #$01    
       BEQ    L788D   
       LDA    $E3     
       AND    #$0F    
       BNE    L7833   
       LDA    $EE     
       BMI    L7833   
       LDA    SWCHB   
       AND    #$02    
       BEQ    L783F   
L7833: LDA    $EE     
       AND    #$01    
       BNE    L783C   
       JMP    L7B62   
L783C: JMP    L78BD   
L783F: JSR    L7B95   
       LDA    #$7E    
       STA    $93     
       LDA    #$00    
       STA    $92     
       STA    $F7     
       LDA    $EE     
       AND    #$7E    
       STA    $EE     
       LDY    $FB     
       INY            
       TYA            
       CMP    #$31    
       BCC    L785C   
       LDY    #$01    
L785C: STY    $FB     
       LDX    #$00    
       LDA    $FB     
L7862: CMP    #$0A    
       BCC    L786D   
       INX            
       SEC            
       SBC    #$0A    
       JMP    L7862   
L786D: STA    $F2     
       TXA            
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    $F2     
       STA    $81     
       LDA    $FB     
       AND    #$01    
       BNE    L7882   
       LDA    #$A2    
       BNE    L7884   
L7882: LDA    #$A1    
L7884: STA    $82     
       LDA    #$00    
       STA    $80     
       JMP    L7B62   
L788D: LDX    $FB     
       LDA    L7DA4,X 
       ORA    #$01    
       STA    $FA     
       STA    $EE     
       LDX    #$4C    
       AND    #$40    
       BNE    L78A0   
       LDX    #$0C    
L78A0: STX    $F7     
       JSR    L7B95   
       LDA    #$58    
       STA    $92     
       LDA    #$7F    
       STA    $93     
       LDA    #$0C    
       STA    $9A     
       LDA    #$00    
       LDX    #$05    
L78B5: STA    $80,X   
       DEX            
       BPL    L78B5   
       JMP    L7B62   
L78BD: LDA    $9A     
       AND    #$F0    
       BNE    L78D6   
       LDA    $E3     
       ORA    #$01    
       ASL            
       CLC            
       ADC    #$01    
       STA    $E9     
       ORA    #$01    
       ASL            
       ASL            
       CLC            
       ADC    #$01    
       STA    $E8     
L78D6: LDA    $EE     
       AND    #$02    
       BEQ    L78EB   
       LDX    #$23    
L78DE: LDA    $9B,X   
       LDY    $BF,X   
       STA    $BF,X   
       STY    $9B,X   
       DEX            
       BPL    L78DE   
       BMI    L78F8   
L78EB: LDX    #$03    
L78ED: LDA    $9B,X   
       LDY    $BF,X   
       STA    $BF,X   
       STY    $9B,X   
       DEX            
       BPL    L78ED   
L78F8: LDA    $EE     
       BPL    L78FF   
       JMP    L7A42   
L78FF: LDA    CXM0P   
       AND    #$40    
       BNE    L790C   
       LDA    CXM1P   
       BMI    L790C   
       JMP    L7931   
L790C: STA    CXCLR   
       LDA    $EE     
       ORA    #$80    
       STA    $EE     
       LDA    #$00    
       STA    AUDV0   
       STA    $F1     
       LDA    #$00    
       STA    $98     
       STA    $A7     
       STA    $A9     
       STA    $CB     
       STA    $CD     
       LDA    #$0E    
       STA    AUDV1   
       LDA    #$08    
       STA    AUDC1   
       JMP    L7B62   
L7931: LDY    #$02    
       LDX    #$01    
       LDA    #$00    
       STA    $F3     
       LDA    $EE     
       AND    #$02    
       BEQ    L7947   
       LDY    #$26    
       LDX    #$25    
       LDA    #$24    
       STA    $F3     
L7947: LDA.wy $00A3,Y 
       BEQ    L79A1   
       LDA    $BD,X   
       CMP    #$5C    
       BEQ    L79A1   
       LDA    $E4     
       AND    #$40    
       BEQ    L79A1   
       STX    $F2     
       LDA    $B1,X   
       CMP    #$08    
       BEQ    L7968   
       CMP    #$3B    
       BEQ    L7968   
       LDA    #$15    
       BNE    L796A   
L7968: LDA    #$65    
L796A: LDX    #$01    
       JSR    L7C7D   
       LDX    $F2     
       LDA    #$7E    
       STA.wy $00A4,Y 
       LDA    #$08    
       STA.wy $00A3,Y 
       STA    $B1,X   
       LDA    #$01    
       STA    $B7,X   
       LDA    #$04    
       STA    AUDC0   
       LDA    #$08    
       STA    AUDV0   
       LDA    #$7A    
       STA    $EB     
       LDA    #$B3    
       STA    $EA     
       LDA    #$7A    
       STA.wy $00AB,Y 
       LDA    #$5C    
       STA.wy $00AB,Y 
       STA    $BD,X   
       LDA    #$00    
       STA    $98     
L79A1: LDA    $E5     
       STA    $E4     
       DEX            
       DEY            
       DEY            
       CPY    $F3     
       BEQ    L7947   
       LDA    $EE     
       AND    #$02    
       BEQ    L79B6   
       LDX    #$24    
       BNE    L79B8   
L79B6: LDX    #$00    
L79B8: LDY    #$00    
       LDA    $F6     
       BPL    L79C2   
       STY    $A7,X   
       STY    $98     
L79C2: ASL            
       BPL    L79C9   
       STY    $A9,X   
       STY    $98     
L79C9: LDA    CXPPMM  
       BPL    L79D0   
       JMP    L790C   
L79D0: STA    CXCLR   
       LDA    $E3     
       AND    #$01    
       BEQ    L79E2   
       LDA    $C2     
       CMP    #$7E    
       BEQ    L79E2   
       LDA    $9D     
       BNE    L79E5   
L79E2: JMP    L7A42   
L79E5: LDX    #$01    
       LDA    $BF     
       STA    $F5     
L79EB: AND    #$F0    
       EOR    #$FF    
       CLC            
       ADC    #$70    
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $F2     
       LDA    $BF     
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    $F2     
       DEX            
       BNE    L7A0B   
       STA    $F4     
       LDA    $9B     
       STA    $BF     
       BNE    L79EB   
L7A0B: LDY    $F5     
       STY    $BF     
       LDX    $9C     
       BMI    L7A1C   
       SEC            
       SBC    #$09    
       CMP    $F4     
       BCC    L7A23   
       BCS    L7A42   
L7A1C: CLC            
       ADC    #$09    
       CMP    $F4     
       BCC    L7A42   
L7A23: LDA    #$7E    
       STA    $C2     
       LDA    #$40    
       STA    $C1     
       LDA    #$08    
       STA    AUDV0   
       LDA    #$08    
       STA    AUDC0   
       LDA    #$79    
       STA    $EB     
       STA    $EA     
       LDX    #$02    
       LDA    #$00    
       STA    AUDV1   
       JSR    L7C7D   
L7A42: LDA    $E3     
       AND    #$01    
       BEQ    L7A6D   
       LDA    $9D     
       BEQ    L7A6D   
       LDA    $9C     
       AND    #$80    
       ORA    #$40    
       STA    $E4     
       LDA    $9B     
       STA    $E5     
       JSR    L7BDB   
       STA    $9B     
       CMP    #$65    
       BEQ    L7A65   
       CMP    #$0D    
       BNE    L7A6D   
L7A65: LDA    #$7E    
       STA    $9E     
       LDA    #$00    
       STA    $9D     
L7A6D: LDA    $E3     
       AND    #$04    
       BEQ    L7A77   
       LDA    #$0E    
       BNE    L7A79   
L7A77: LDA    #$44    
L7A79: STA    COLUPF  
       LDY    #$02    
       LDX    #$01    
L7A7F: LDA    $B1,X   
       BEQ    L7A86   
       JMP    L7B56   
L7A86: LDA    $E7     
       AND    #$0F    
       CMP    #$06    
       BCS    L7A93   
       CLC            
       ADC    #$06    
       BNE    L7A9A   
L7A93: CMP    #$0D    
       BCC    L7A9A   
       SEC            
       SBC    #$05    
L7A9A: STA    $B3,X   
       LDA    $E7     
       BMI    L7AA4   
       LDA    #$01    
       BNE    L7AA6   
L7AA4: LDA    #$02    
L7AA6: STA    $B7,X   
       LDA    $E7     
       ASL            
       BMI    L7AB1   
       LDA    #$10    
       BNE    L7AB3   
L7AB1: LDA    #$F0    
L7AB3: STA    $B9,X   
       LDA    #$00    
       STA    $B5,X   
       LDA    $EE     
       AND    #$30    
       BEQ    L7ACD   
       SEC            
       SBC    #$10    
       BEQ    L7ACA   
L7AC4: LDA    $E7     
       BMI    L7B3E   
       BPL    L7B29   
L7ACA: TXA            
       BEQ    L7AC4   
L7ACD: LDA    $E7     
       AND    #$C0    
       BEQ    L7ADB   
       ASL            
       BEQ    L7AF5   
       BCC    L7B0F   
       JMP    L7B56   
L7ADB: LDA    #$38    
       STA.wy $00AB,Y 
       STA    $BD,X   
       LDA    #$7B    
       STA.wy $00AC,Y 
       LDA    #$7E    
       STA.wy $00A4,Y 
       LDA    #$5B    
       STA.wy $00A3,Y 
       STA    $B1,X   
       BNE    L7B51   
L7AF5: LDA    #$44    
       STA.wy $00AB,Y 
       STA    $BD,X   
       LDA    #$7B    
       STA.wy $00AC,Y 
       LDA    #$7E    
       STA.wy $00A4,Y 
       LDA    #$8E    
       STA.wy $00A3,Y 
       STA    $B1,X   
       BNE    L7B51   
L7B0F: LDA    #$46    
       STA.wy $00AB,Y 
       STA    $BD,X   
       LDA    #$7B    
       STA.wy $00AC,Y 
       LDA    #$7C    
       STA.wy $00A4,Y 
       LDA    #$D5    
       STA.wy $00A3,Y 
       STA    $B1,X   
       BNE    L7B51   
L7B29: LDA    #$4E    
       STA.wy $00AB,Y 
       STA    $BD,X   
       LDA    #$7B    
       STA.wy $00AC,Y 
       LDA    #$7D    
       STA.wy $00A4,Y 
       LDA    #$08    
       BNE    L7B51   
L7B3E: LDA    #$53    
       STA.wy $00AB,Y 
       STA    $BD,X   
       LDA    #$7B    
       STA.wy $00AC,Y 
       LDA    #$7D    
       STA.wy $00A4,Y 
       LDA    #$3B    
L7B51: STA.wy $00A3,Y 
       STA    $B1,X   
L7B56: DEY            
       DEY            
       BMI    L7B62   
       JSR    L7C49   
       LDX    #$00    
       JMP    L7A7F   
L7B62: LDX    INTIM   
       BNE    L7B62   
       DEX            
       JMP    L7053   
L7B6B: .byte $0E,$1A,$DC,$08,$E4,$7C,$18,$66,$66,$66,$66,$1E,$1C,$1A,$18,$C0
       .byte $C2,$C4,$C6,$C8,$44,$0E,$0E,$A6,$D4,$68,$0A,$EC,$2E,$58,$24,$9E
       .byte $4A,$46,$42,$2A,$2A,$0E,$16,$16,$16,$0E
L7B95: LDA    #$7E    
       STA    $A4     
       STA    $A6     
       STA    $C8     
       STA    $CA     
       STA    $9E     
       STA    $C2     
       LDA    #$00    
       STA    AUDV0   
       STA    AUDV1   
       STA    $EA     
       STA    $EC     
       STA    $A3     
       STA    $A5     
       STA    $C7     
       STA    $C9     
       STA    $A7     
       STA    $A9     
       STA    $CB     
       STA    $CD     
       STA    $9D     
       STA    $C1     
       STA    $98     
       STA    $B1     
       STA    $B2     
       STA    $D5     
       STA    $D6     
       RTS            

L7BCC: .byte $00,$28,$28,$28,$38,$38,$BA,$BA,$FE,$7C,$7C,$38,$38,$6E,$10
L7BDB: LDA    $E5     
       SEC            
       SBC    $E4     
       LDX    $E4     
       BMI    L7BF2   
       LDX    $E5     
       BPL    L7C02   
       TAX            
       BMI    L7C03   
       INX            
       TXA            
       SEC            
       SBC    #$10    
       BNE    L7C02   
L7BF2: LDX    $E5     
       BMI    L7C02   
       TAX            
       AND    #$F0    
       CMP    #$70    
       BCC    L7C03   
       DEX            
       TXA            
       CLC            
       ADC    #$10    
L7C02: TAX            
L7C03: TXA            
       AND    #$0F    
       CMP    #$05    
       BCC    L7C46   
       CMP    #$0D    
       BCC    L7C11   
       TXA            
       BMI    L7C2B   
L7C11: TXA            
       RTS            

L7C13: .byte $08,$08,$08,$08,$0E,$0E,$0E,$0E,$0E,$0E,$0E,$0E,$0E,$0E,$40,$40
       .byte $0E,$0E,$0E,$0E,$74,$74,$0E,$0E
L7C2B: LDA    #$0D    
       RTS            

L7C2E: .byte $08,$08,$08,$08,$0E,$0E,$0E,$0E,$0E,$0E,$0E,$0E,$0E,$0E,$40,$40
       .byte $0E,$0E,$0E,$0E,$0E,$0E,$0E,$0E
L7C46: LDA    #$65    
       RTS            

L7C49: LDA    $E8     
       STA    $F2     
       LDA    $E7     
       STA    $F3     
       LDA    #$00    
       LDX    #$08    
L7C55: LSR    $F2     
       BCC    L7C5C   
       CLC            
       ADC    $F3     
L7C5C: ROR            
       ROR    $E7     
       DEX            
       BNE    L7C55   
       CLC            
       LDA    $E7     
       ADC    $E9     
       STA    $E7     
       INC    $E6     
       LDX    $E6     
       BNE    L7C7C   
       TAX            
       ASL            
       SEC            
       ROL            
       STA    $E8     
       TXA            
       SEC            
       ROL            
       STA    $E9     
       BNE    L7C49   
L7C7C: RTS            

L7C7D: SED            
       CLC            
       ADC    $82     
       STA    $82     
       TXA            
       ADC    $81     
       STA    $81     
       BCC    L7CC3   
       LDA    #$00    
       ADC    $80     
       STA    $80     
       CLD            
       AND    #$01    
       BNE    L7CC3   
       LDA    $F7     
       TAX            
       AND    #$08    
       BEQ    L7CA7   
       TXA            
       AND    #$07    
       CMP    #$04    
       BEQ    L7CB4   
       INX            
       TXA            
       BNE    L7CB2   
L7CA7: TXA            
       AND    #$70    
       CMP    #$40    
       BEQ    L7CB4   
       TXA            
       CLC            
       ADC    #$10    
L7CB2: STA    $F7     
L7CB4: LDA    $EE     
       AND    #$30    
       CMP    #$30    
       BEQ    L7CC3   
       LDA    $EE     
       CLC            
       ADC    #$10    
       STA    $EE     
L7CC3: CLD            
       RTS            

L7CC5: .byte $00,$0F,$0E,$0D,$0C,$0B,$0A,$09,$08,$07,$06,$05,$04,$03,$02,$01
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$42,$52,$52,$7E,$C7
       .byte $FF,$3C,$FF,$55,$AA,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$40,$50,$50,$7E,$18,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$40,$10,$3C,$10,$41,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$0B,$00,$FF,$00,$16,$00
L7DA4: .byte $00,$0C,$4C,$0E,$4E,$04,$44,$06,$46,$08,$48,$0A,$4A,$00,$40,$02
       .byte $42,$1C,$5C,$1E,$5E,$14,$54,$16,$56,$18,$58,$1A,$5A,$10,$50,$12
       .byte $52,$3C,$7C,$3E,$7E,$34,$74,$36,$76,$38,$78,$3A,$7A,$30,$70,$32
       .byte $72,$00,$40,$40,$50,$54,$7E,$FF,$FF,$57,$57,$03,$03,$07,$AF,$AF
       .byte $FE,$DC,$78,$00,$00,$00,$00,$00,$00,$00,$00,$10,$10,$14,$54,$54
       .byte $7E,$7F,$FF,$FF,$57,$57,$AB,$AF,$FF,$FE,$DC,$78,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$38,$7C,$52,$24,$0A,$50,$2A,$00,$10,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$88,$8A,$AA,$FF,$FF,$AA
       .byte $55,$FF,$5E,$7E,$18,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$C0,$E0
       .byte $F0,$FF,$DE,$7E,$2E,$3E,$2A,$89,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$7E,$66,$66,$66
       .byte $66,$66,$66,$7E,$3C,$3C,$3C,$3C,$10,$10,$10,$30,$7E,$60,$60,$60
       .byte $7E,$06,$06,$7E,$7E,$06,$06,$06,$3C,$04,$04,$7C,$06,$06,$7E,$66
       .byte $66,$60,$60,$60,$7E,$06,$06,$06,$7E,$40,$40,$7E,$7E,$62,$62,$7E
       .byte $20,$20,$24,$3C,$10,$10,$10,$1E,$02,$02,$42,$7E,$7E,$66,$66,$66
       .byte $3C,$24,$24,$3C,$06,$06,$06,$06,$7E,$42,$42,$7E,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$38,$7C,$EE,$C7,$83,$83,$82,$82,$C2,$42,$66
       .byte $24,$3C,$38,$38,$78,$78,$78,$7E,$7F,$38,$38,$38,$10,$00,$00,$78
       .byte $38,$10,$18,$18,$18,$10,$10,$10,$10,$10,$10,$38,$38,$38,$78,$78
       .byte $78,$7E,$7F,$38,$38,$38,$10,$00,$00,$38,$38,$28,$28,$28,$28,$28
       .byte $28,$28,$28,$28,$28,$38,$38,$38,$38,$7C,$FE,$BA,$BA,$D6,$6C,$38
       .byte $10,$00,$00,$00,$00,$00,$82,$82,$82,$C6,$44,$44,$6C,$38,$10,$38
       .byte $10,$38,$10,$38,$54,$92,$BA,$10,$38,$00,$00,$00,$00,$00,$C3,$C3
       .byte $42,$42,$66,$24,$3C,$24,$24,$24,$66,$42,$C3,$E7,$A5,$A5,$A5,$BD
       .byte $99,$99,$00,$10,$38,$7C,$38,$10,$00,$10,$10,$00,$00,$38,$28,$28
       .byte $38,$00,$28,$44,$00,$44,$10,$49,$00,$01,$80,$24,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$70,$11,$20,$00,$70,$54,$41
