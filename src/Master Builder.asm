; Disassembly of roms/Master Builder.bin
; Disassembled Tue Oct  6 15:21:51 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Master Builder.bin
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
PF2     =  $0F
RESP0   =  $10
RESP1   =  $11
AUDC0   =  $15
AUDC1   =  $16
AUDF0   =  $17
AUDV0   =  $19
AUDV1   =  $1A
GRP0    =  $1B
GRP1    =  $1C
ENAM1   =  $1E
HMP0    =  $20
HMP1    =  $21
HMM1    =  $23
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXPPMM  =  $37
INPT4   =  $3C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296

       ORG $F000

START:
       SEI            
       CLD            
       LDA    #$00    
       TAX            
LF005: STA    VSYNC,X 
       TXS            
       INX            
       BNE    LF005   
       JSR    LFAEF   
       JSR    LFB7C   
       JSR    LFE83   
LF014: STA    WSYNC   
       STX    VBLANK  
       LDA    #$FC    
       STA    TIM64T  
       LDA    $E5     
       STA    NUSIZ1  
       JSR    LFAB4   
       STA    NUSIZ0  
       LDA    $D0     
       JSR    LFA83   
       LDA    #$FF    
       STA    $D7     
       STA    $D9     
       STA    $DB     
       STA    $DD     
       LDA    #$FE    
       STA    $81     
       STA    $83     
       STA    $85     
       STA    $87     
       LDA    $CF     
       INX            
       JSR    LFA97   
       STX    CTRLPF  
       STA    CXCLR   
       LDA    $D2     
       STA    WSYNC   
       STA    COLUBK  
       LDY    #$11    
LF051: LDA    ($D6),Y 
       STA    WSYNC   
       STA    GRP0    
       LDA    ($D8),Y 
       STA    GRP1    
       LDA    ($DA),Y 
       STA    COLUP0  
       LDA    ($DC),Y 
       STA    COLUP1  
       DEY            
       BPL    LF051   
       JSR    LFB52   
       LDY    $D3     
       STA    WSYNC   
       STY    COLUBK  
       LDY    $D4     
       BIT    $BD     
       BPL    LF096   
       BIT    CXPPMM  
       BPL    LF096   
       LDA    #$05    
       STA    $BC     
       LDA    #$86    
       STA    $D6     
       STA    $D8     
       LDA    $BB     
       AND    #$03    
       STA    $BB     
       LDA    $BD     
       AND    #$7F    
       STA    $BD     
       DEC    $C5     
       LDA    #$05    
       JSR    LFBBF   
LF096: STA    WSYNC   
       JSR    LFA7E   
       STA    CXCLR   
       STY    COLUBK  
       STA    WSYNC   
       LDA    $CC     
       JSR    LFAB4   
       AND    #$07    
       TAY            
       LDA    LFDCC,Y 
       STA    COLUPF  
       STA    WSYNC   
       LDA    $BD     
       AND    #$60    
       BEQ    LF0BD   
       LDA    $BD     
       BIT    $BD     
       BVS    LF0BD   
       ASL            
LF0BD: STA    REFP1   
       STA    WSYNC   
       BIT    $CB     
       BPL    LF0CD   
       LDA    $BA     
       ASL            
       ASL            
       ASL            
       JMP    LF0D1   
LF0CD: LDA    $C0     
       LSR            
       LSR            
LF0D1: STA    REFP0   
       LDA    $BB     
       LSR            
       BCS    LF0E4   
LF0D8: LDY    $C7     
       LDA    $BD     
       LSR            
       BCC    LF0E1   
       LDY    $C8     
LF0E1: TYA            
       BNE    LF0EC   
LF0E4: LDA    $BD     
       AND    #$60    
       BEQ    LF0D8   
       LDA    $C8     
LF0EC: JSR    LFA83   
       LDY    $D5     
       STY    COLUBK  
       LDA    #$10    
       BIT    $BD     
       BEQ    LF0FB   
       LDA    #$72    
LF0FB: STA    ENAM1   
       STA    HMM1    
       LDY    #$60    
       LDA    $CD     
       DEX            
       JSR    LFA97   
       JSR    LF9A7   
       STY    HMM1    
       LDY    #$00    
       LDX    #$14    
LF110: STY    PF2     
       LDA    $E6,X   
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    LFDDB,Y 
       STA    $86     
       LDA    LFDE3,Y 
       STA    $84     
       LDA    $E6,X   
       AND    #$0F    
       TAY            
       LDA    LFDEC,Y 
       STA    $82     
       LDA    LFDF1,Y 
       STA    $80     
       CPX    #$01    
       BNE    LF13A   
       LDA    #$70    
       STA    PF0     
LF13A: LDY    #$05    
LF13C: LDA    ($86),Y 
       PHA            
       LDA    ($84),Y 
       STA    WSYNC   
       STA    COLUP0  
       PLA            
       STA    GRP0    
       LDA    ($82),Y 
       STA    GRP1    
       LDA    ($80),Y 
       STA    COLUP1  
       CPX    #$14    
       BEQ    LF15E   
       LDA    $8C,X   
       STA    PF2     
       LDA    $A0,X   
       NOP            
       NOP            
       STA    PF2     
LF15E: DEY            
       BPL    LF13C   
       INY            
       DEX            
       BPL    LF110   
       INC    $BB     
       STA    WSYNC   
       STX    PF2     
       LDA    #$F6    
       JSR    LFA80   
       STA    COLUBK  
       STY    PF0     
       STY    PF2     
       STY    GRP0    
       STY    GRP1    
       STY    ENAM1   
       LDA    #$D6    
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$F3    
       STY    HMP1    
       STA    RESP0   
       STA    RESP1   
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    HMP0    
       LDY    #$02    
       STA    WSYNC   
LF194: LDA.wy $00B6,Y 
       JSR    LFACF   
       TYA            
       ASL            
       ASL            
       TAX            
       LDA    $CA     
       STA    $80,X   
       INX            
       INX            
       LDA    $C9     
       STA    $80,X   
       DEY            
       BPL    LF194   
       INY            
       STY    COLUBK  
       STY    REFP0   
       STY    REFP1   
       LDA    #$FC    
       STA    $81     
       STA    $83     
       STA    $85     
       STA    $87     
       STA    $89     
       STA    $8B     
       STA    WSYNC   
       STA    HMOVE   
       LDY    #$07    
       STY    $CA     
       STY    VDELP0  
       STY    VDELP1  
       JSR    LFEB5   
       LDY    #$00    
       STA    WSYNC   
       STY    GRP0    
       STY    GRP1    
       STY    GRP0    
       LDA    $CC     
       LSR            
       BCS    LF1F3   
       LDA    $BE     
       JSR    LFAC3   
       LDA    $C3     
       JSR    LFACF   
       LDA    $CA     
       STA    $84     
       LDA    #$88    
       STA    $86     
       JMP    LF207   
LF1F3: LDA    $BF     
       JSR    LFAC3   
       LDA    $C4     
       JSR    LFACF   
       LDA    $CA     
       STA    $86     
       LDA    #$E0    
       STA    $84     
       LDA    #$88    
LF207: STA    $88     
       LDA    #$38    
       STA    COLUP0  
       STA    COLUP1  
       STA    WSYNC   
       LDY    #$07    
       STY    $CA     
       LDA    $CB     
       AND    #$07    
       TAX            
       LDA    LFDC8,X 
       STA    $8A     
       JSR    LFEB5   
       STA    HMCLR   
       LDY    #$00    
       JSR    LFB55   
       STY    COLUP0  
       STY    COLUP1  
       STY    VDELP0  
       STY    VDELP1  
LF231: LDA    INTIM   
       BNE    LF231   
       LDA    #$0E    
       STA    TIM64T  
       LDA    $BC     
       CMP    #$06    
       BEQ    LF279   
       LDA    #$00    
       STA    AUDC1   
       STA    AUDV1   
       LDA    $DF     
       BEQ    LF250   
       DEC    $DF     
       JMP    LF276   
LF250: LDX    $E3     
       LDA    LFF1F,X 
       BNE    LF25B   
       DEX            
       JMP    LF26B   
LF25B: STA    AUDF0   
       LSR            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    LFF3E,Y 
       STA    $DF     
       LDA    LFF00,X 
LF26B: STA    AUDV0   
       LSR            
       LSR            
       LSR            
       LSR            
       STA    AUDC0   
       INX            
       STX    $E3     
LF276: JMP    LF290   
LF279: LDA    #$FC    
       STA    $8B     
       STA    $89     
       LDA    #$34    
       LDY    #$4D    
       LDX    #$00    
       JSR    LFBC6   
       LDA    #$66    
       LDY    #$77    
       INX            
       JSR    LFBC6   
LF290: LDA    $CE     
       BNE    LF2D8   
       LDA    $CC     
       LSR            
       BCC    LF2D8   
       LDX    $BC     
       CPX    #$02    
       BMI    LF2D8   
       CPX    #$06    
       BEQ    LF2D8   
       LDA    $C1     
       BNE    LF2D8   
       LDA    $BF     
       ORA    $C4     
       BNE    LF2BD   
       STX    $C1     
       LDA    $CB     
       AND    #$F8    
       STA    $CB     
       LDA    $D1     
       ORA    #$20    
       STA    $D1     
       BNE    LF2D8   
LF2BD: DEC    $B5     
       BPL    LF2D8   
       LDA    #$3B    
       STA    $B5     
       SED            
       LDA    $BF     
       SEC            
       SBC    #$01    
       BCS    LF2CF   
       LDA    #$59    
LF2CF: STA    $BF     
       LDA    $C4     
       SBC    #$00    
       STA    $C4     
       CLD            
LF2D8: LDA    INTIM   
       BNE    LF2D8   
       LDY    #$26    
       STA    WSYNC   
       STY    VBLANK  
       JSR    LFA7C   
       STY    VSYNC   
       JSR    LFA7C   
       STA    VSYNC   
       STY    TIM64T  
       LDA    SWCHB   
       TAY            
       LDA    $CE     
       BEQ    LF2FD   
       DEC    $CE     
LF2FA: JMP    LF8D2   
LF2FD: TYA            
       LSR            
       BCC    LF306   
       LSR            
       BCS    LF31D   
       INC    $CC     
LF306: LDA    $CC     
       AND    #$01    
       STA    $CC     
       LDA    #$02    
       STA    $E3     
       STA    $E4     
       LDA    #$00    
       STA    $DF     
       STA    $E0     
       JSR    LFAE6   
       BNE    LF2FA   
LF31D: LDA    $BC     
       BNE    LF33A   
LF321: LDA    #$86    
       STA    $D6     
       STA    $D8     
       JSR    LFEA1   
LF32A: LDA    LFD00,Y 
       STA    $8C,X   
       DEY            
       DEX            
       BPL    LF32A   
       STX    $CE     
LF335: INC    $BC     
LF337: JMP    LF8D2   
LF33A: CMP    #$01    
       BEQ    LF341   
       JMP    LF47B   
LF341: JSR    LFB7C   
       JSR    LFEDE   
       STY    $BA     
       BMI    LF335   
LF34B: LDA    $B5     
       BNE    LF36A   
       LDA    $B9     
       CMP    #$14    
       BEQ    LF39B   
       TAX            
       LDY    $DE     
       LDA    LFD00,Y 
       STA    $8C,X   
       LDA    LFD14,Y 
       STA    $A0,X   
       INC    $B9     
       INC    $DE     
       LDA    #$10    
       STA    $B5     
LF36A: DEC    $B5     
LF36C: LDA    $BB     
       AND    #$03    
       BEQ    LF375   
       JMP    LF76B   
LF375: BIT    $D1     
       BMI    LF37C   
       JMP    LF4FA   
LF37C: LDA    $CD     
       JSR    LFAB2   
       BIT    $C0     
       BVS    LF395   
       CMP    #$49    
       BCS    LF38F   
LF389: LDA    $C0     
       EOR    #$60    
       STA    $C0     
LF38F: LDA    #$04    
       STA    $D1     
       BNE    LF337   
LF395: CMP    #$A7    
       BCS    LF389   
       BCC    LF38F   
LF39B: LDX    #$00    
       JSR    LFBA4   
       JSR    LFEDE   
       JSR    LFEA1   
       TYA            
       SEC            
       STX    $CA     
       SBC    $CA     
       CMP    #$C8    
       BNE    LF3B8   
       LDA    $CC     
       AND    #$0F    
       STA    $CC     
       LDA    #$00    
LF3B8: STA    $DE     
       BCC    LF36C   
LF3BC: CMP    #$05    
       BNE    LF34B   
       LDY    #$9E    
       LDA    $BB     
       BEQ    LF401   
       CMP    #$05    
       BNE    LF3F6   
       LDX    #$14    
LF3CC: DEX            
       BMI    LF3E5   
       LDA    $8C,X   
       ORA    $A0,X   
       BEQ    LF3CC   
       LDA    #$00    
       STA    $8C,X   
       STA    $A0,X   
       TXA            
       BEQ    LF3E5   
       DEX            
       CPX    $BA     
       BEQ    LF3E5   
       BPL    LF3EB   
LF3E5: LDA    $D1     
       ORA    #$20    
       STA    $D1     
LF3EB: STY    $D5     
       STY    $D4     
       STY    $D3     
       STY    $D2     
LF3F3: JMP    LF8D2   
LF3F6: AND    #$07    
       BNE    LF3F3   
       LDA    $D2     
       EOR    #$0E    
       TAY            
       BNE    LF3EB   
LF401: LDY    #$02    
       STY    $BC     
       JSR    LFB7C   
       LDA    $BD     
       ORA    #$10    
       STA    $BD     
       JSR    LFB5E   
       BNE    LF3F3   
LF413: CMP    #$04    
       BNE    LF3BC   
       LDA    $CF     
       CMP    #$BB    
       BNE    LF47F   
       LDX    #$00    
       LDA    $CC     
       LSR            
       BCC    LF425   
       INX            
LF425: LDA    $CC     
       AND    #$70    
       JSR    LFAB4   
       TAY            
       SED            
       LDA    $B6     
       CLC            
       ADC    $BE,X   
       STA    $B6     
       LDA    LFE7E,Y 
       ADC    $C3,X   
       ADC    $B7     
       STA    $B7     
       LDA    $B8     
       ADC    #$00    
       STA    $B8     
       BCC    LF44E   
       LDA    #$99    
       STA    $B6     
       STA    $B7     
       STA    $B8     
LF44E: CLD            
       JSR    LFBA2   
       JSR    LFAFD   
       LDA    #$16    
       JSR    LFBBF   
       JMP    LF321   
LF45D: CMP    #$03    
       BNE    LF413   
       JSR    LFEA1   
LF464: LDA    LFD00,Y 
       CMP    $8C,X   
       BNE    LF472   
       DEY            
       DEX            
       BPL    LF464   
       JMP    LF335   
LF472: LDA    #$E0    
       STA    $D1     
       DEC    $BC     
       JMP    LF8D2   
LF47B: CMP    #$02    
       BNE    LF45D   
LF47F: LDA    $BB     
       TAX            
       BNE    LF492   
       LDA    #$10    
       BIT    $BD     
       BEQ    LF491   
       EOR    $BD     
       STA    $BD     
       JSR    LFB6D   
LF491: TXA            
LF492: AND    #$03    
       BEQ    LF499   
       JMP    LF76B   
LF499: LDA    #$20    
       BIT    $D1     
       BVS    LF4E8   
       BEQ    LF4F0   
       LDA    $BA     
       BNE    LF4EB   
       STA    $C0     
       LDA    #$08    
       BIT    $CB     
       BEQ    LF4DB   
       BIT    $C2     
       BMI    LF4BB   
       LDA    $BB     
       BNE    LF4E8   
       LDA    #$80    
       STA    $C2     
       BNE    LF4E4   
LF4BB: LDA    $BB     
       BNE    LF4E8   
       STA    $C2     
       LDA    $CB     
       AND    #$07    
       BNE    LF4CD   
       JSR    LFE83   
       TXA            
       BEQ    LF4D4   
LF4CD: LDA    $CB     
       AND    #$37    
       SEC            
       SBC    #$01    
LF4D4: STA    $CB     
       JSR    LFB13   
       BNE    LF4E8   
LF4DB: EOR    $CB     
       STA    $CB     
       LDA    #$0E    
       JSR    LFBBF   
LF4E4: LDA    #$80    
       STA    $BB     
LF4E8: JMP    LF863   
LF4EB: LDA    #$02    
       JMP    LF70F   
LF4F0: LDA    SWCHA   
       STA    $C9     
       TAY            
       BIT    $D1     
       BMI    LF528   
LF4FA: DEC    $D1     
       LDA    $D1     
       BNE    LF508   
       STA    $BA     
       LDX    #$80    
       STX    $D1     
       BNE    LF511   
LF508: LDX    #$02    
       AND    #$02    
       BNE    LF50F   
       DEX            
LF50F: STX    $BA     
LF511: BIT    $C0     
       BVS    LF518   
       JMP    LF647   
LF518: JMP    LF6BC   
LF51B: ORA    $CB     
       STA    $CB     
       LDA    $D1     
       ORA    #$20    
       STA    $D1     
       JMP    LF863   
LF528: BIT    CXPPMM  
       BPL    LF55B   
       LDA    $BA     
       BNE    LF55B   
       LDA    #$20    
       BIT    $CB     
       BNE    LF55B   
       BIT    $BD     
       BVS    LF51B   
       BEQ    LF55B   
       LDA    $BD     
       LDX    #$04    
       LSR            
       BCC    LF54E   
       INX            
       LDY    $CD     
       STY    $C7     
       LDA    $CB     
       ORA    #$40    
       STA    $CB     
LF54E: TXA            
       EOR    $BD     
       STA    $BD     
       LDA    $CB     
       ORA    #$20    
       STA    $CB     
       BNE    LF57B   
LF55B: BIT    INPT4   
       BMI    LF5BE   
       TYA            
       AND    #$10    
       BNE    LF57E   
       LDA    $C0     
       AND    #$1F    
       CMP    #$1E    
       BEQ    LF57B   
       LDA    $C6     
       ORA    #$80    
       STA    $C6     
       JSR    LF93C   
       LDA    $C6     
       AND    #$7F    
       STA    $C6     
LF57B: JMP    LF863   
LF57E: TYA            
       AND    #$C0    
       CMP    #$C0    
       BNE    LF58A   
       TYA            
       AND    #$20    
       BNE    LF57B   
LF58A: LDA    $C0     
       AND    #$1F    
       BEQ    LF5BE   
       LDA    $C6     
       ORA    #$40    
       STA    $C6     
       JSR    LF93C   
       LDA    $C6     
       AND    #$BF    
       STA    $C6     
       LDA    $C9     
       AND    #$20    
       BEQ    LF57B   
       LDA    $C9     
       AND    #$C0    
       CMP    #$80    
       BNE    LF5B6   
       LDA    $C0     
       AND    #$BF    
       STA    $C0     
       JMP    LF5DA   
LF5B6: LDA    $C0     
       ORA    #$40    
       STA    $C0     
       BNE    LF5DA   
LF5BE: TYA            
       AND    #$C0    
       CMP    #$80    
       BEQ    LF5D4   
       CMP    #$40    
       BEQ    LF5CC   
       JMP    LF6F3   
LF5CC: LDA    $C0     
       ORA    #$60    
       STA    $C0     
       BNE    LF5DA   
LF5D4: LDA    $C0     
       AND    #$9F    
       STA    $C0     
LF5DA: LDA    $BA     
       BEQ    LF605   
       LDA    $C9     
       AND    #$80    
       BEQ    LF5EB   
       JSR    LF93C   
       BEQ    LF647   
LF5E9: BNE    LF57B   
LF5EB: LDA    $C6     
       AND    #$1F    
       CMP    #$1A    
       BEQ    LF57B   
       CMP    #$19    
       BNE    LF5FD   
       LDA    $C7     
       CMP    #$D9    
       BNE    LF5E9   
LF5FD: JSR    LF93C   
       BNE    LF5E9   
       JMP    LF6BC   
LF605: LDA    $CD     
       CMP    $C7     
       BNE    LF60E   
       JMP    LF6C9   
LF60E: LDA    $CB     
       AND    #$BF    
       STA    $CB     
       LDA    $C9     
       TAX            
       AND    #$10    
       BNE    LF63C   
       LDA    $CD     
       JSR    LFAB2   
       TAY            
       TXA            
       AND    #$80    
       BNE    LF62D   
       CPY    #$A7    
       BMI    LF631   
       JMP    LF6B6   
LF62D: CPY    #$49    
       BMI    LF641   
LF631: LDA    #$04    
       STA    $D1     
       INC    $BA     
       LDA    #$10    
       JSR    LFBBF   
LF63C: TXA            
       AND    #$80    
       BEQ    LF6B6   
LF641: LDA    $CD     
       CMP    #$82    
       BEQ    LF68A   
LF647: LDA    $C0     
       ORA    #$80    
       STA    $C0     
LF64D: LDA    $CD     
       JSR    LFB24   
LF652: STA    $CD     
       LDA    $CB     
       AND    #$7F    
       STA    $CB     
       LDX    $BA     
       BNE    LF666   
       AND    #$40    
       BEQ    LF666   
       LDA    $CD     
       STA    $C7     
LF666: JMP    LF863   
LF669: TAX            
       BEQ    LF666   
       EOR    $C0     
       STA    $C0     
       LDA    #$00    
LF672: SED            
       CLC            
       ADC    #$01    
       CLD            
       DEX            
       BNE    LF672   
       SED            
       CLC            
       ADC    $BE     
       STA    $BE     
       LDA    $C3     
       ADC    #$00    
       STA    $C3     
       CLD            
       JMP    LF863   
LF68A: LDA    $C0     
       AND    #$1F    
       BIT    INPT4   
       BPL    LF669   
       CMP    #$08    
       BPL    LF666   
       LDA    $BE     
       BNE    LF6A4   
       LDA    $C3     
       BEQ    LF666   
       SED            
       SEC            
       SBC    #$01    
       STA    $C3     
LF6A4: SED            
       LDA    $BE     
       SEC            
       SBC    #$01    
       STA    $BE     
       CLD            
       LDA    #$02    
       JSR    LFBBF   
       INC    $C0     
       BNE    LF666   
LF6B6: LDA    $CD     
       CMP    #$FB    
       BEQ    LF68A   
LF6BC: LDA    $C0     
       ORA    #$80    
       STA    $C0     
LF6C2: LDA    $CD     
       JSR    LFB3B   
       BNE    LF652   
LF6C9: LDA    $CB     
       ORA    #$40    
       STA    $CB     
       LDA    $C9     
       AND    #$80    
       BEQ    LF6E4   
       LDA    $C7     
       CMP    #$A4    
       BNE    LF6E1   
       LDA    $CB     
       AND    #$BF    
       STA    $CB     
LF6E1: JMP    LF641   
LF6E4: LDA    $C7     
       CMP    #$D9    
       BNE    LF6F0   
       LDA    $CB     
       AND    #$BF    
       STA    $CB     
LF6F0: JMP    LF6B6   
LF6F3: LDA    $BD     
       LSR            
       BCS    LF71A   
       LDX    $CD     
       CPX    $C7     
       BNE    LF71A   
       TYA            
       AND    #$30    
       CMP    #$20    
       BEQ    LF71D   
       CMP    #$10    
       BNE    LF71A   
       LDA    $BA     
       BEQ    LF71A   
LF70D: LDA    #$00    
LF70F: JSR    LFBBF   
       DEC    $BA     
       LDA    $CB     
       ORA    #$80    
       STA    $CB     
LF71A: JMP    LF863   
LF71D: LDA    $BA     
       CMP    #$13    
       BEQ    LF729   
       INC    $BA     
       INC    $BA     
       BNE    LF70D   
LF729: BIT    $CC     
       BPL    LF748   
       LDA    $CD     
       CMP    $CF     
       BNE    LF71A   
       LDA    #$C0    
       STA    $D1     
       LDA    #$C4    
       LDX    #$D6    
       LDY    #$E8    
       JSR    LFB99   
       LDA    #$15    
       STA    $BA     
       INC    $BC     
       BNE    LF71A   
LF748: LDA    $BD     
       AND    #$E0    
       BNE    LF71A   
       LDA    $CC     
       ORA    #$80    
       STA    $CC     
       LDA    #$00    
       STA    $E5     
       LDA    #$42    
       STA    $CF     
       LDA    #$C2    
       STA    $D0     
       LDA    #$8E    
       LDX    #$A0    
       LDY    #$B2    
       JSR    LFB99   
       BNE    LF71A   
LF76B: CMP    #$02    
       BNE    LF7CD   
       BIT    $C0     
       BPL    LF71A   
       BIT    $D1     
       BPL    LF782   
       LDA    $BC     
       CMP    #$06    
       BEQ    LF782   
       LDA    #$00    
       JSR    LFBBF   
LF782: LDA    $C0     
       EOR    #$80    
       STA    $C0     
       AND    #$40    
       BNE    LF791   
       DEC    $C6     
       JMP    LF64D   
LF791: INC    $C6     
       JMP    LF6C2   
LF796: LDA    $CC     
       AND    #$7F    
       STA    $CC     
       LDA    $D1     
       AND    #$40    
       BEQ    LF7AE   
       EOR    $D1     
       STA    $D1     
       AND    #$20    
       BEQ    LF7AE   
       LDA    #$BB    
       STA    $CD     
LF7AE: JSR    LFB7C   
       BNE    LF7CA   
LF7B3: LDA    $CF     
       CMP    #$BB    
       BEQ    LF796   
       JSR    LFB3B   
       STA    $CF     
       LDA    $D0     
       JSR    LFB3B   
       STA    $D0     
       LDA    #$0A    
       JSR    LFBBF   
LF7CA: JMP    LF8D2   
LF7CD: BIT    $CC     
       BMI    LF7B3   
       LDA    $BD     
       AND    #$E0    
       BNE    LF7DA   
       JMP    LF863   
LF7DA: BIT    $BD     
       BMI    LF82D   
       BVS    LF845   
       LDY    #$24    
       LDX    $C7     
       CPX    $C8     
       BNE    LF7FC   
       LDA    $BD     
       ORA    #$01    
       STA    $BD     
       LDA    $BA     
       BEQ    LF7FC   
       CPX    $CD     
       BNE    LF7FC   
       LDA    $D1     
       ORA    #$20    
       STA    $D1     
LF7FC: LDA    $BD     
       AND    #$04    
       BNE    LF84D   
LF802: LDA    $C8     
       CMP    #$82    
       BEQ    LF80D   
       JSR    LFB24   
       BNE    LF856   
LF80D: TYA            
       EOR    $BD     
       AND    #$FE    
       STA    $BD     
       LDA    $CB     
       AND    #$DF    
       STA    $CB     
       DEC    $C5     
       BNE    LF863   
       LDA    $BB     
       CMP    #$01    
       BNE    LF86D   
       LDA    $BD     
       AND    #$6F    
       STA    $BD     
       JMP    LF8D2   
LF82D: LDA    $BB     
       AND    #$07    
       CMP    #$01    
       BNE    LF843   
       LDA    $CF     
       JSR    LFB3B   
       STA    $CF     
       LDA    $D0     
       JSR    LFB24   
       STA    $D0     
LF843: BNE    LF86D   
LF845: LDY    #$48    
       LDA    $BD     
       AND    #$08    
       BEQ    LF802   
LF84D: LDA    $C8     
       CMP    #$BB    
       BEQ    LF80D   
       JSR    LFB3B   
LF856: STA    $C8     
       LDA    $CB     
       EOR    #$10    
       STA    $CB     
       LDA    #$0C    
       JSR    LFBBF   
LF863: LDA    $BC     
       CMP    #$02    
       BNE    LF8D2   
       LDA    $BD     
       AND    #$E0    
LF86D: BNE    LF8D2   
       BIT    $CC     
       BMI    LF8D2   
       LDA    $C5     
       BNE    LF8C1   
       TAY            
       LDA    #$80    
       LDX    $BA     
       CPX    #$0D    
       BPL    LF888   
       CPX    #$07    
       BMI    LF886   
       LSR            
       INY            
LF886: LSR            
       INY            
LF888: EOR    $BD     
       STA    $BD     
       TAX            
       TYA            
       BEQ    LF89D   
       CPY    #$01    
       BEQ    LF8B6   
       TXA            
       AND    #$04    
       BNE    LF8BB   
LF899: LDA    #$FB    
       BNE    LF8BD   
LF89D: LDA    #$46    
       TAX            
       LDY    #$79    
       JSR    LFB99   
       LDA    #$32    
       STA    $CF     
       LDA    #$CA    
       STA    $D0     
       LDA    #$77    
       STA    $E5     
       JSR    LFB5E   
       BNE    LF8D2   
LF8B6: TXA            
       AND    #$08    
       BEQ    LF899   
LF8BB: LDA    #$73    
LF8BD: STA    $C8     
       BNE    LF8D2   
LF8C1: LDA    $BB     
       AND    #$03    
       BNE    LF8D2   
       LDA    $C9     
       SEC            
       SBC    $BB     
       ADC    $CD     
       BMI    LF8D2   
       DEC    $C5     
LF8D2: LDY    #$00    
       JSR    LFC0E   
       INY            
       LDA    $BB     
       LSR            
       BCC    LF8FB   
       LDA    $BD     
       AND    #$60    
       BEQ    LF8FB   
       BIT    $BD     
       BVS    LF8EB   
       LDY    #$0B    
       BNE    LF8EC   
LF8EB: INY            
LF8EC: LDA    $CB     
       AND    #$10    
       BNE    LF8F3   
       INY            
LF8F3: STY    $E7     
       INY            
       INY            
       STY    $E6     
       BNE    LF8FE   
LF8FB: JSR    LFC0E   
LF8FE: BIT    $C2     
       BMI    LF934   
       LDY    #$02    
       BIT    $C0     
       BPL    LF90B   
LF908: DEY            
       BNE    LF91C   
LF90B: BIT    $D1     
       BPL    LF908   
       LDA    #$08    
       BIT    $CB     
       BNE    LF918   
       BPL    LF91C   
       INY            
LF918: INY            
       INY            
       BNE    LF908   
LF91C: LDX    $BA     
       CPX    #$14    
       BPL    LF934   
       TYA            
       ASL            
       ASL            
       ASL            
       ASL            
       PHA            
       ORA    $E6,X   
       STA    $E6,X   
       PLA            
       CLC            
       ADC    #$40    
       ORA    $E7,X   
       STA    $E7,X   
LF934: LDX    INTIM   
       BNE    LF934   
       JMP    LF014   
LF93C: LDA    $C6     
       AND    #$1F    
       STA    $CA     
       BIT    $C6     
       BMI    LF950   
       BVS    LF950   
       LDA    $C0     
       AND    #$20    
       BNE    LF958   
       BEQ    LF956   
LF950: LDA    $C0     
       AND    #$20    
       BEQ    LF958   
LF956: INC    $CA     
LF958: LDA    $CA     
       SEC            
       SBC    #$0A    
       BMI    LF9A7   
       CMP    #$08    
       BMI    LF966   
       JMP    LFA06   
LF966: TAY            
       LDA    #$00    
       SEC            
LF96A: ROL            
       DEY            
       BPL    LF96A   
       STA    $CA     
       TAY            
       LDX    $BA     
       BIT    $C6     
       BMI    LF9E1   
       BVS    LF9EE   
       LDA    $C0     
       AND    #$40    
       BEQ    LF98C   
       LDA    $CA     
       CMP    #$80    
       BNE    LF988   
       JMP    LFA3B   
LF988: ASL    $CA     
       BNE    LF994   
LF98C: LDA    $CA     
       CMP    #$02    
       BEQ    LF9A8   
       LSR    $CA     
LF994: LDA    $CA     
       AND    $8C,X   
       BEQ    LF99E   
LF99A: LDA    $CD     
       BNE    LF9DD   
LF99E: DEX            
       LDA    $CA     
       AND    $8C,X   
       BEQ    LF9A8   
       LDA    #$00    
LF9A7: RTS            

LF9A8: LDA    $BD     
       AND    #$01    
       BNE    LF9A7   
       LDA    $CD     
       JSR    LFAB2   
       STA    $CA     
       TAX            
       LDA    $C0     
       AND    #$40    
       BNE    LF9CC   
       TXA            
       AND    #$0F    
       CMP    #$05    
       BPL    LF9C5   
       DEC    $CA     
LF9C5: LDA    $CA     
       SEC            
       SBC    #$04    
       BNE    LF9DA   
LF9CC: TXA            
       AND    #$0F    
       CMP    #$0C    
       BMI    LF9D5   
       INC    $CA     
LF9D5: LDA    $CA     
       CLC            
       ADC    #$04    
LF9DA: JSR    LFAAD   
LF9DD: SEC            
       SBC    $C7     
LF9E0: RTS            

LF9E1: AND    $8C,X   
       BEQ    LF9E0   
       INC    $C0     
       EOR    $8C,X   
       STA    $8C,X   
       JMP    LFA5B   
LF9EE: AND    $8C,X   
       BNE    LF9E0   
       TXA            
       BEQ    LF9FC   
       DEX            
       TYA            
       AND    $8C,X   
       BEQ    LF9E0   
       INX            
LF9FC: DEC    $C0     
       TYA            
       EOR    $8C,X   
       STA    $8C,X   
       JMP    LFA76   
LFA06: SEC            
       SBC    #$08    
       CMP    #$08    
       BPL    LF9A7   
       TAY            
       LDA    #$00    
       SEC            
LFA11: ROR            
       DEY            
       BPL    LFA11   
       STA    $CA     
       TAY            
       LDX    $BA     
       BIT    $C6     
       BMI    LFA51   
       BVS    LFA61   
       LDA    $C0     
       AND    #$40    
       BEQ    LFA30   
       LDA    $CA     
       CMP    #$02    
       BEQ    LFA4B   
       LSR    $CA     
       BNE    LFA3B   
LFA30: LDA    $CA     
       CMP    #$80    
       BNE    LFA39   
       JMP    LF994   
LFA39: ASL    $CA     
LFA3B: LDA    $CA     
       AND    $A0,X   
       BEQ    LFA44   
       JMP    LF99A   
LFA44: DEX            
       LDA    $CA     
       AND    $A0,X   
       BNE    LFA4E   
LFA4B: JMP    LF9A8   
LFA4E: LDA    #$00    
       RTS            

LFA51: AND    $A0,X   
       BEQ    LFA60   
       INC    $C0     
       EOR    $A0,X   
       STA    $A0,X   
LFA5B: LDA    #$02    
       JSR    LFBBF   
LFA60: RTS            

LFA61: AND    $A0,X   
       BNE    LFA7B   
       TXA            
       BEQ    LFA6F   
       DEX            
       TYA            
       AND    $A0,X   
       BEQ    LFA7B   
       INX            
LFA6F: DEC    $C0     
       TYA            
       EOR    $A0,X   
       STA    $A0,X   
LFA76: LDA    #$02    
       JSR    LFBBF   
LFA7B: RTS            

LFA7C: STA    WSYNC   
LFA7E: STA    WSYNC   
LFA80: STA    WSYNC   
       RTS            

LFA83: STX    $CA     
       LDY    $CA     
       STA    WSYNC   
       STA.wy $0020,Y 
       AND    #$0F    
       TAY            
LFA8F: DEY            
       BNE    LFA8F   
       STA    RESP0,X 
       STA    WSYNC   
       RTS            

LFA97: STX    $CA     
       LDY    $CA     
       STA    WSYNC   
       STA.wy $0020,Y 
       AND    #$0F    
       TAY            
LFAA3: DEY            
       BNE    LFAA3   
       STA    RESP0,X 
       STA    WSYNC   
       STA    HMOVE   
       RTS            

LFAAD: EOR    #$07    
       JMP    LFAB4   
LFAB2: EOR    #$70    
LFAB4: TAY            
       ASL            
       ASL            
       ASL            
       ASL            
       STA    $CA     
       TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       ORA    $CA     
       RTS            

LFAC3: JSR    LFACF   
       LDA    $CA     
       STA    $80     
       LDA    $C9     
       STA    $82     
       RTS            

LFACF: STA    $C9     
       AND    #$0F    
       TAX            
       LDA    LFDD1,X 
       STA    $CA     
       LDA    $C9     
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       LDA    LFDD1,X 
       STA    $C9     
       RTS            

LFAE6: LDY    #$00    
       LDX    #$36    
LFAEA: STY    $8C,X   
       DEX            
       BPL    LFAEA   
LFAEF: LDY    #$03    
       STY    $CB     
       LDA    #$86    
       TAX            
       TAY            
       JSR    LFB99   
       JSR    LFB6D   
LFAFD: LDX    #$06    
       STX    $C4     
       LDA    #$04    
       STA    $C3     
       LDA    #$D9    
       STA    $C7     
       STA    $CF     
       STA    $D0     
       LDA    #$3C    
       STA    $CE     
       STA    $BA     
LFB13: LDA    #$F7    
       STA    $CD     
       LDA    #$12    
       STA    $C6     
       LDA    #$80    
       STA    $D1     
       LDX    #$FF    
       STX    $C5     
       RTS            

LFB24: JSR    LFAB2   
       STA    $CA     
       AND    #$0F    
       CMP    #$03    
       BCS    LFB31   
       DEC    $CA     
LFB31: DEC    $CA     
       DEC    $CA     
       LDA    $CA     
       JSR    LFAAD   
       RTS            

LFB3B: JSR    LFAB2   
       STA    $CA     
       AND    #$0F    
       CMP    #$0E    
       BCC    LFB48   
       INC    $CA     
LFB48: INC    $CA     
       INC    $CA     
       LDA    $CA     
       JSR    LFAAD   
       RTS            

LFB52: INY            
       STA    WSYNC   
LFB55: STY    GRP0    
       STY    GRP1    
       STY    NUSIZ0  
       STY    NUSIZ1  
       RTS            

LFB5E: LDY    #$91    
       STY    $D5     
       INY            
       STY    $D4     
       LDY    #$95    
       STY    $D3     
       INY            
       STY    $D2     
       RTS            

LFB6D: LDY    #$98    
       STY    $D5     
       DEY            
       STY    $D4     
       LDY    #$94    
       STY    $D3     
       DEY            
       STY    $D2     
       RTS            

LFB7C: LDA    #$36    
       STA    $E5     
       LDA    #$44    
       STA    $CF     
       LDA    #$A7    
       STA    $D0     
       LDA    #$53    
       STA    $D8     
       LDA    #$46    
       STA    $D6     
       LDA    #$65    
       STA    $DA     
       LDA    #$6D    
       STA    $DC     
       RTS            

LFB99: STA    $D8     
       STX    $D6     
       STY    $DA     
       STY    $DC     
       RTS            

LFBA2: LDX    #$07    
LFBA4: LDA    #$00    
LFBA6: STA    $B9,X   
       DEX            
       BPL    LFBA6   
       LDA    $CC     
       AND    #$7F    
       CLC            
       ADC    #$10    
       STA    $CC     
       AND    #$70    
       CMP    #$50    
       BNE    LFBBE   
       EOR    $CC     
       STA    $CC     
LFBBE: RTS            

LFBBF: STA    $E3     
       LDA    #$00    
       STA    $DF     
       RTS            

LFBC6: STA    $88     
       STY    $8A     
       LDA    $BB     
       AND    #$01    
       BEQ    LFBD6   
       LDA    $E1,X   
       BEQ    LFBD6   
       DEC    $E1,X   
LFBD6: LDA    $E1,X   
       STA    AUDV0,X 
       LDA    $DF,X   
       BEQ    LFBE1   
       DEC    $DF,X   
       RTS            

LFBE1: LDY    $E3,X   
       LDA    ($8A),Y 
       BNE    LFBEC   
       STA    $E3,X   
       JMP    LFBE1   
LFBEC: STA    AUDF0,X 
       LSR            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    LFF3E,Y 
       STA    $DF,X   
       LDY    $E3,X   
       LDA    ($88),Y 
       STA    AUDV0,X 
       AND    #$0F    
       STA    $E1,X   
       LDA    ($88),Y 
       LSR            
       LSR            
       LSR            
       LSR            
       STA    AUDC0,X 
       INC    $E3,X   
       RTS            

LFC0E: LDX    #$14    
LFC10: STY    $E6,X   
       DEX            
       BPL    LFC10   
       RTS            

LFC16: .byte $AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA
       .byte $AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$4F,$4F
       .byte $4F,$4F,$4F,$4F,$CF,$4F,$4F,$4F,$4F,$4F,$4F,$4F,$4F,$4F,$4F,$4F
       .byte $4F,$CF,$4F,$4F,$4F,$CF,$00,$97,$9C,$BC,$9A,$9F,$BF,$8B,$9F,$9C
       .byte $9A,$97,$97,$B7,$97,$9C,$BC,$9A,$9F,$BF,$8B,$9C,$97,$97,$CB,$00
       .byte $C8,$48,$48,$48,$C8,$48,$48,$48,$C8,$48,$C8,$48,$C8,$48,$C8,$48
       .byte $00,$6B,$77,$7C,$77,$6B,$77,$7C,$77,$6F,$77,$6C,$77,$6F,$77,$6C
       .byte $77,$00,$00,$00,$00,$00,$00,$00,$00,$00,$1C,$22,$22,$22,$22,$22
       .byte $22,$1C,$1C,$08,$08,$08,$08,$08,$18,$08,$3E,$20,$10,$0C,$02,$22
       .byte $22,$1C,$1C,$22,$22,$02,$0C,$04,$02,$3E,$04,$04,$3E,$24,$14,$14
       .byte $0C,$04,$1C,$22,$02,$02,$3C,$20,$20,$3E,$1C,$22,$22,$22,$3C,$10
       .byte $10,$0E,$10,$10,$10,$10,$08,$04,$02,$3E,$1C,$22,$22,$22,$1C,$22
       .byte $22,$1C,$30,$08,$04,$02,$1E,$22,$22,$1C,$00,$0C,$0C,$00,$00,$0C
       .byte $0C,$00,$80,$80,$80,$80,$80,$80,$80,$80,$90,$90,$90,$90,$90,$90
       .byte $90,$90,$92,$92,$92,$92,$92,$92,$92,$92
LFD00: .byte $FF,$FF,$FE,$FE,$FE,$FE,$FE,$F8,$F8,$F8,$F8,$F8,$F8,$F0,$F0,$F0
       .byte $F0,$C0,$C0,$80
LFD14: .byte $FF,$FF,$FE,$FE,$FE,$FE,$FE,$F8,$F8,$F8,$F8,$F8,$F8,$F0,$F0,$F0
       .byte $F0,$C0,$C0,$80,$5F,$5E,$FC,$F0,$F0,$E0,$E0,$E0,$E0,$E0,$E0,$E0
       .byte $E0,$E0,$E0,$E0,$E0,$C0,$80,$80,$5F,$5E,$FC,$F0,$F0,$E0,$E0,$E0
       .byte $E0,$E0,$E0,$E0,$E0,$E0,$E0,$E0,$E0,$C0,$80,$80,$FE,$FE,$FE,$7E
       .byte $BE,$DE,$EE,$F6,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $DE,$BE,$7E,$FE,$F2,$F2,$FE,$92,$92,$FE,$9E,$9E,$FE,$F2,$F2,$FE
       .byte $92,$92,$FE,$FE,$FF,$FE,$FC,$BC,$B8,$B8,$F0,$F0,$E0,$E0,$C0,$C0
       .byte $80,$80,$00,$00,$00,$00,$00,$00,$FF,$80,$C0,$C0,$E0,$A0,$B0,$B0
       .byte $F8,$B8,$BC,$B4,$F6,$F6,$FE,$DE,$5F,$5F,$3F,$3F,$1F,$1F,$1F,$1F
       .byte $1F,$1F,$0E,$0E,$0E,$0E,$0E,$0E,$0E,$1E,$3E,$7F,$FF,$FF,$FF,$FF
       .byte $1F,$1F,$1F,$1F,$1F,$1F,$0E,$0E,$0E,$0E,$0E,$0E,$0E,$1E,$3E,$7F
       .byte $FF,$FF,$FF,$FF
LFDC8: .byte $88,$E8,$F0,$F8
LFDCC: .byte $FC,$28,$E8,$46,$5A
LFDD1: .byte $90,$98,$A0,$A8,$B0,$B8,$C0,$C8,$D0,$D8
LFDDB: .byte $00,$0C,$18,$72,$24,$06,$12,$00
LFDE3: .byte $1E,$30,$30,$78,$30,$2A,$2A,$00,$2A
LFDEC: .byte $00,$66,$36,$36,$3C
LFDF1: .byte $42,$6C,$48,$48,$48,$48,$4E,$5A,$54,$60,$00,$48,$48,$48,$48,$00
       .byte $00,$00,$00,$00,$00,$1A,$1A,$A6,$98,$A8,$98,$00,$20,$42,$4E,$78
       .byte $19,$1D,$1D,$22,$4C,$DE,$CC,$34,$14,$14,$14,$14,$09,$1A,$1A,$2C
       .byte $D8,$BC,$98,$0C,$08,$28,$28,$68,$7B,$02,$02,$E6,$0C,$48,$48,$B4
       .byte $B4,$B4,$B4,$B4,$B4,$E1,$53,$00,$00,$00,$00,$91,$4B,$3E,$B7,$7B
       .byte $E1,$6B,$25,$7E,$3F,$7D,$E1,$02,$02,$02,$02,$02,$02,$3A,$5C,$B0
       .byte $50,$30,$00,$61,$23,$26,$3C,$19,$39,$2D,$0E,$18,$38,$18,$00,$1C
       .byte $0C,$0C,$0C,$0C,$6D,$81,$81,$FF,$81,$81,$81,$FA,$2A,$2A,$2A,$FA
       .byte $FA,$DF,$11,$11,$71,$03,$00,$F4,$F4,$F4,$F4,$F4,$F4
LFE7E: .byte $10,$20,$30,$40,$50
LFE83: LDA    #$3C    
       STA    $B5     
       STA    $BA     
       LDA    $CC     
       AND    #$0F    
       STA    $CC     
       LDA    #$D9    
       STA    $C7     
       LDY    #$06    
       STY    $BC     
       LDX    #$00    
LFE99: STX    $DE,Y   
       DEY            
       BPL    LFE99   
       STX    $B9     
       RTS            

LFEA1: LDA    $CC     
       JSR    LFAB4   
       AND    #$07    
       TAY            
       LDA    #$FF    
LFEAB: CLC            
       ADC    #$28    
       DEY            
       BPL    LFEAB   
       TAY            
       LDX    #$27    
       RTS            

LFEB5: LDY    $CA     
       LDA    ($8A),Y 
       STA    GRP0    
       STA    WSYNC   
       LDA    ($88),Y 
       STA    GRP1    
       LDA    ($86),Y 
       STA    GRP0    
       LDA    ($84),Y 
       STA    $C9     
       LDA    ($82),Y 
       TAX            
       LDA    ($80),Y 
       TAY            
       LDA    $C9     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STY    GRP0    
       DEC    $CA     
       BPL    LFEB5   
       RTS            

LFEDE: LDX    #$27    
       LDY    #$00    
LFEE2: STY    $8C,X   
       DEX            
       BPL    LFEE2   
       RTS            

LFEE8: .byte $AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA
       .byte $AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA
LFF00: .byte $4F,$00,$44,$49,$00,$8F,$8F,$84,$81,$00,$EF,$00,$4F,$00,$8F,$00
       .byte $4F,$4E,$4D,$4C,$4B,$00,$4F,$4F,$4F,$4F,$4F,$4F,$00,$4F,$00
LFF1F: .byte $2F,$00,$03,$08,$00,$FF,$FF,$FF,$FD,$00,$5E,$00,$13,$00,$53,$00
       .byte $0A,$0B,$0C,$0D,$0E,$00,$72,$56,$69,$6A,$6B,$67,$66,$74,$00
LFF3E: .byte $00,$01,$03,$07,$0F,$1F,$3F,$7F,$00,$00,$00,$00,$00,$00,$37,$7E
       .byte $7F,$FF,$7E,$7E,$38,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$3F
       .byte $3F,$7F,$FE,$FE,$7C,$6C,$00,$0E,$0E,$0E,$0E,$0E,$0E,$0E,$0E,$0E
       .byte $0E,$0E,$0E,$0E,$0E,$0E,$0E,$0E,$0E,$08,$08,$08,$08,$08,$08,$08
       .byte $08,$02,$02,$02,$02,$02,$02,$02,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$03,$07,$07,$38,$40
       .byte $E0,$43,$80,$40,$20,$10,$08,$04,$02,$02,$7C,$28,$FF,$D7,$AE,$5C
       .byte $F8,$F0,$60,$FC,$FA,$FA,$FA,$FA,$FA,$FA,$FA,$FA,$E2,$E2,$E4,$E6
       .byte $14,$F6,$1A,$06,$D6,$D6,$01,$01,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $01,$03,$07,$07,$38,$40,$E0,$43,$40,$E0,$70,$30,$48,$B4,$B2,$C2
       .byte $7C,$28,$FF,$D7,$AE,$5C,$F8,$F0,$60,$FC,$C6,$C6,$C6,$C6,$56,$56
       .byte $56,$56,$E2,$E2,$E4,$E6,$14,$F6,$1A,$06,$D6,$D6,$AA,$AA,$00,$F0
       .byte $AA,$AA
