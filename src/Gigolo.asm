; Disassembly of roms/Gigolo.bin
; Disassembled Tue Oct  6 15:21:49 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Gigolo.bin
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
AUDC0   =  $15
AUDC1   =  $16
AUDF0   =  $17
AUDF1   =  $18
AUDV0   =  $19
AUDV1   =  $1A
GRP0    =  $1B
GRP1    =  $1C
HMP0    =  $20
HMOVE   =  $2A
INPT0   =  $38
INPT4   =  $3C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296
L97FF   =   $97FF
L9C0C   =   $9C0C
L9C90   =   $9C90
L9CA4   =   $9CA4

       ORG $9000

START:
       SEI            
       LDY    #$00    
L9003: CLD            
       LDA    #$00    
       TAX            
L9007: STA    VSYNC,X 
       INX            
       BNE    L9007   
       STY    $90     
       TYA            
       BEQ    L9013   
       LDA    #$04    
L9013: STA    $8F     
       LDX    #$00    
       LDY    #$00    
L9019: LDA    L9DA1,Y 
       STA    $A3,X   
       STA    $AA,X   
       LDA    L9DA2,Y 
       STA    $A4,X   
       STA    $AB,X   
       TXA            
       CLC            
       ADC    #$09    
       TAX            
       INY            
       INY            
       CPY    #$0A    
       BNE    L9019   
       LDX    #$FF    
       TXS            
       JMP    L933A   
L9038: LDA    SWCHB   
       EOR    #$FF    
       AND    #$01    
       TAX            
       BNE    L9048   
       LDY    $90     
       LDA    $85     
       BNE    L9003   
L9048: STX    $85     
       LDA    SWCHA   
       EOR    #$FF    
       BEQ    L9055   
       LDA    #$00    
       STA    $82     
L9055: LDA    $82     
       NOP            
       NOP            
       LDA    $80     
       AND    #$01    
       JSR    L9B0F   
       LDA    #$17    
       STA    $DE     
       LDA    #$9C    
       STA    $DF     
       LDA    $8F     
       BMI    L9070   
       CMP    #$02    
       BCS    L9078   
L9070: LDA    #$DF    
       STA    $DE     
       LDA    #$9F    
       STA    $DF     
L9078: LDA    $87     
       AND    #$40    
       BEQ    L9081   
       JMP    L925F   
L9081: LDA    $80     
       ROR            
       BCC    L9089   
       JMP    L9123   
L9089: LDA    $87     
       ORA    #$01    
       STA    $87     
       LDY    #$00    
       STY    $94     
       LDX    #$A3    
       LDA    NUSIZ0,X
       AND    #$80    
       BEQ    L90A1   
       JSR    L99FC   
       JMP    L90F1   
L90A1: LDA    NUSIZ0,X
       AND    #$E7    
       ORA    #$08    
       STA    NUSIZ0,X
       LDA    INPT4   
       BMI    L90BB   
       LDA    $87     
       AND    #$80    
       BNE    L90BB   
       LDA    NUSIZ0,X
       BMI    L90BB   
       EOR    #$18    
       STA    NUSIZ0,X
L90BB: LDA    SWCHA   
       EOR    #$FF    
       AND    #$F0    
       STA    $E0     
       BNE    L90CE   
       LDA    NUSIZ0,X
       AND    #$E7    
       ORA    #$08    
       STA    NUSIZ0,X
L90CE: LDY    #$00    
       LDA    $8F     
       BMI    L90D6   
       BNE    L90D8   
L90D6: STY    $E0     
L90D8: LDA    $87     
       AND    #$80    
       BEQ    L90E0   
       STY    $E0     
L90E0: LDA    COLUP0,X
       AND    #$0F    
       ORA    $E0     
       STA    COLUP0,X
       LDA    $87     
       AND    #$FE    
       STA    $87     
       JSR    L992D   
L90F1: JSR    L97E3   
       LDA    $87     
       ORA    #$01    
L90F8: STA    $87     
       LDY    #$02    
       STY    $94     
       LDX    #$B5    
       LDA    NUSIZ0,X
       AND    #$E7    
       ORA    #$08    
       LDY    $91     
       BEQ    L910C   
       EOR    #$18    
L910C: STA    NUSIZ0,X
       LDY    #$1E    
       LDA    $D1     
       AND    #$0F    
       CMP    #$06    
       BCC    L911A   
       LDY    #$06    
L911A: JSR    L996E   
       JSR    L99FC   
       JSR    L97E3   
L9123: LDA    $80     
       ROR            
       BCS    L912B   
       JMP    L91EB   
L912B: LDY    #$03    
       STY    $94     
       LDX    #$BE    
       LDA    NUSIZ0,X
       AND    #$E7    
       ORA    #$08    
       LDY    $91     
       BEQ    L913D   
       EOR    #$18    
L913D: STA    NUSIZ0,X
       LDY    #$1E    
       LDA    $D1     
       AND    #$0F    
       CMP    #$05    
       BCC    L914B   
       LDY    #$06    
L914B: JSR    L996E   
       JSR    L99FC   
       JSR    L97E3   
       LDA    $87     
       AND    #$80    
       BEQ    L915D   
       JMP    L91D9   
L915D: LDY    #$04    
       STY    $94     
       LDX    #$C7    
       LDA    NUSIZ0,X
       AND    #$E7    
       ORA    #$90    
       STA    NUSIZ0,X
       LDA    $87     
       AND    #$0C    
       ORA    $91     
       BNE    L917B   
       LDA    $D2     
       AND    #$0F    
       CMP    #$01    
       BCS    L9181   
L917B: LDA    NUSIZ0,X
       EOR    #$18    
       STA    NUSIZ0,X
L9181: LDA    $81     
       AND    #$03    
       BEQ    L91BD   
       LDA    NUSIZ0,X
       AND    #$10    
       BEQ    L91B8   
       LDA    $A3     
       STA    $CE     
       LDA    $A4     
       STA    $CF     
       JSR    L9A47   
       BPL    L91E5   
       LDA    #$00    
       STA    $D2     
       STA    $D3     
       LDA    #$4F    
       STA    $A5     
       LDA    #$9F    
       STA    $A6     
       LDA    #$40    
       STA    $A7     
       LDA    #$04    
       STA    $8B     
       LDA    #$FF    
       STA    $8F     
       STA    $93     
       BNE    L917B   
L91B8: JSR    L9A3B   
       BPL    L91E5   
L91BD: JSR    L9AEC   
       AND    #$1E    
       TAY            
       CMP    #$03    
       BCS    L91E5   
       LDA    L9DAB,Y 
       STA    $CE     
       LDA    L9DAC,Y 
       STA    $CF     
       LDY    #$04    
       STY    $94     
       LDX    #$C7    
       BNE    L91E5   
L91D9: LDA    $87     
       AND    #$FE    
       STA    $87     
       LDY    #$01    
       STY    $94     
       LDX    #$AC    
L91E5: JSR    L99FC   
       JSR    L97E3   
L91EB: LDA    $80     
       ROR            
       BCS    L9210   
       LDX    #$00    
L91F2: LDA    $A3,X   
       STA    $95,X   
       INX            
       CPX    #$05    
       BNE    L91F2   
       LDA    #$55    
       STA    $9A     
       LDX    #$00    
L9201: LDA    $B5,X   
       STA    $9B,X   
       INX            
       CPX    #$05    
       BNE    L9201   
       LDA    #$84    
       STA    $A0     
       BNE    L924E   
L9210: LDX    #$00    
L9212: LDA    $BE,X   
       STA    $95,X   
       INX            
       CPX    #$05    
       BNE    L9212   
       LDA    #$84    
       STA    $9A     
       LDA    $A7     
       BMI    L923F   
       LDA    $8D     
       BNE    L923F   
       LDA    $87     
       AND    #$80    
       BEQ    L923F   
       LDX    #$00    
L922F: LDA    $AC,X   
       STA    $9B,X   
       INX            
       CPX    #$05    
       BNE    L922F   
       LDA    #$55    
       STA    $A0     
       JMP    L924E   
L923F: LDX    #$00    
L9241: LDA    $C7,X   
       STA    $9B,X   
       INX            
       CPX    #$05    
       BNE    L9241   
       LDA    #$99    
       STA    $A0     
L924E: LDA    $95     
       JSR    L9AC5   
       STA    $A1     
       LDA    $9B     
       JSR    L9AC5   
       STA    $A2     
       JMP    L92CC   
L925F: LDA    SWCHA   
       BIT    L9EE3   
       BEQ    L92BB   
       BIT    L9EE2   
       BNE    L92CC   
       LDA    $ED     
       BNE    L92CC   
       LDA    #$FF    
       STA    $ED     
       LDY    #$00    
       JSR    L92AD   
       LDA    #$02    
       STA    $8B     
       LDA    #$01    
       JSR    L929F   
       DEC    $E4     
       LDA    $E4     
       BIT    L9EE3   
       BEQ    L92CC   
       LDA    #$01    
       STA    $8B     
       STA    $8C     
       LDA    #$0A    
       JSR    L929F   
       LDA    $87     
       AND    #$BF    
       STA    $87     
L929C: JMP    L92CC   
L929F: SED            
       CLC            
       ADC    $D5     
       STA    $D5     
       LDA    $D4     
       ADC    #$00    
       STA    $D4     
       CLD            
       RTS            

L92AD: LDX    #$00    
L92AF: LDA    L9C22,Y 
L92B2: STA    $E5,X   
       INY            
       INX            
       CPX    #$08    
       BCC    L92AF   
       RTS            

L92BB: LDA    $ED     
       BEQ    L92CC   
       LDA    #$00    
       STA    $ED     
       LDY    #$08    
       JSR    L92AD   
       LDA    #$02    
       STA    $8C     
L92CC: LDA    $80     
       ROR            
       BCS    L933A   
       LDA    $86     
       ORA    #$02    
       STA    $86     
       LDA    $83     
       BNE    L92ED   
       LDA    $A3     
       CMP    #$31    
       BCS    L9302   
       LDA    $A4     
       CMP    #$A0    
       BCC    L9302   
       LDA    $87     
       AND    #$40    
       BNE    L9302   
L92ED: LDA    $86     
       AND    #$FD    
       STA    $86     
       LDA    $D2     
       AND    #$0F    
       ORA    #$A0    
       STA    $D2     
       LDA    $D2     
       LDX    $D3     
       JMP    L9306   
L9302: LDA    $D4     
       LDX    $D5     
L9306: STA    $E0     
       STX    $E1     
       LDX    #$00    
       LDA    $E0     
       ROR            
       ROR            
       ROR            
       JSR    L9AFF   
       LDA    $E0     
       ROL            
       JSR    L9AFF   
       LDA    $E1     
       ROR            
       ROR            
       ROR            
       JSR    L9AFF   
       LDA    $E1     
       ROL            
       JSR    L9AFF   
       LDA    $8F     
       BEQ    L9330   
       LDA    $87     
       BPL    L933A   
L9330: LDX    #$07    
L9332: LDA    L9E13,X 
       STA    $D6,X   
       DEX            
       BPL    L9332   
L933A: LDY    #$18    
       STY    COLUPF  
       LDY    #$82    
       LDA    $86     
       AND    #$42    
       BNE    L9348   
       LDY    #$D4    
L9348: STY    COLUBK  
L934A: LDA    INTIM   
       BNE    L934A   
       STA    WSYNC   
       STA    VBLANK  
       LDA    #$8F    
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$01    
       STA    NUSIZ0  
       STA    REFP0   
       STA    NUSIZ1  
       STA    REFP1   
       LDA    $80     
       AND    #$01    
       BNE    L93AB   
       STA    WSYNC   
       LDA    #$07    
       LDX    #$00    
       JSR    L9ADD   
       LDA    #$87    
       LDX    #$01    
       JSR    L9ADD   
       STA    WSYNC   
       STA    HMOVE   
       LDY    #$07    
L937F: STA    WSYNC   
       LDX    #$03    
L9383: DEX            
       BNE    L9383   
       LDA    ($DC),Y 
       TAX            
       LDA    ($D6),Y 
       STA    GRP0    
       LDA    ($D8),Y 
       STA    GRP1    
       LDA    ($DA),Y 
       STA    GRP0    
       STX    GRP1    
       DEY            
       BPL    L937F   
       STA    WSYNC   
       LDX    #$00    
       STX    GRP0    
       STX    GRP1    
       LDY    #$06    
L93A4: STA    WSYNC   
       DEY            
       BPL    L93A4   
       BMI    L93E7   
L93AB: LDX    $8F     
       BPL    L93B1   
       LDX    #$00    
L93B1: LDA    L9C0C,X 
       STA    NUSIZ0  
       LDA    #$03    
       STA    NUSIZ1  
       LDA    #$91    
       LDX    #$00    
       JSR    L9ADD   
       LDA    #$91    
       LDX    #$01    
       JSR    L9ADD   
       STA    WSYNC   
       STA    HMOVE   
       LDY    #$0A    
L93CE: STA    WSYNC   
       LDA    ($DE),Y 
       STA    GRP0    
       DEY            
       BPL    L93CE   
       LDY    #$05    
L93D9: STA    WSYNC   
       LDA    L9C11,Y 
       STA    GRP1    
       LDA    #$00    
       STA    GRP0    
       DEY            
       BPL    L93D9   
L93E7: LDA    $93     
       STA    COLUBK  
       LDA    #$00    
       STA    $93     
       STA    GRP0    
       STA    GRP1    
       LDA    $87     
       AND    #$40    
       BNE    L93FC   
       JMP    L9491   
L93FC: LDA    #$01    
       STA    CTRLPF  
       LDA    #$00    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       LDY    #$1D    
L940A: STA    WSYNC   
       DEY            
       BPL    L940A   
       LDA    #$00    
       STA    PF0     
       LDA    #$FF    
       STA    PF1     
       STA    PF2     
       LDY    #$22    
L941B: STA    WSYNC   
       DEY            
       BPL    L941B   
       LDA    #$00    
       STA    PF2     
       LDY    #$22    
L9426: STA    WSYNC   
       DEY            
       BPL    L9426   
       LDA    #$07    
       LDX    #$00    
       JSR    L9ADD   
       LDA    #$87    
       LDX    #$01    
       JSR    L9ADD   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$55    
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$01    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$00    
       STA    REFP0   
       STA    REFP1   
       LDY    #$13    
L9451: STA    WSYNC   
       LDX    #$03    
L9455: DEX            
       BNE    L9455   
       LDA    ($EB),Y 
       TAX            
       LDA    ($E5),Y 
       STA    GRP0    
       LDA    ($E7),Y 
       STA    GRP1    
       LDA    ($E9),Y 
       STA    GRP0    
       STX    GRP1    
       DEY            
       BPL    L9451   
       STA    WSYNC   
       LDX    #$00    
       STX    GRP0    
       STX    GRP1    
       LDX    #$FF    
       STX    PF1     
       STX    PF2     
       LDY    #$1E    
L947C: STA    WSYNC   
       DEY            
       BPL    L947C   
       LDA    #$00    
       STA    PF1     
       STA    PF2     
       LDY    #$18    
L9489: STA    WSYNC   
       DEY            
       BNE    L9489   
       JMP    L95AE   
L9491: STA    WSYNC   
       LDA    $A1     
       LDX    #$00    
       STX    CTRLPF  
       JSR    L9ADD   
       LDA    $99     
       ROL            
       AND    #$08    
       STA    REFP0   
       STA    NUSIZ0  
       LDA    $9A     
       STA    COLUP0  
       LDA    $A2     
       LDX    #$01    
       JSR    L9ADD   
       LDA    $9F     
       ROL            
       AND    #$08    
       STA    REFP1   
       STA    NUSIZ1  
       LDA    $A0     
       STA    COLUP1  
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$00    
       TAX            
       STA    $E0     
L94C6: STA    WSYNC   
       STA    GRP0    
       LDA    $E0     
       STA    GRP1    
       DEC    $9C     
       LDA    $9C     
       TAY            
       AND    #$F0    
       BEQ    L94D9   
       LDY    #$0F    
L94D9: LDA    ($9D),Y 
       STA    $E0     
       DEC    $96     
       LDA    $96     
       TAY            
       AND    #$F0    
       BEQ    L94E8   
       LDY    #$0F    
L94E8: LDA    ($97),Y 
       LDY    L9D29,X 
       STY    PF0     
       LDY    L9D2A,X 
       STY    PF1     
       STA    WSYNC   
       STA    GRP0    
       LDA    $E0     
       STA    GRP1    
       LDA    L9D2B,X 
       STA    PF2     
       DEC    $9C     
       LDA    $9C     
       TAY            
       AND    #$F0    
       BEQ    L950C   
       LDY    #$0F    
L950C: LDA    ($9D),Y 
       STA    $E0     
       DEC    $96     
       LDA    $96     
       TAY            
       AND    #$F0    
       BEQ    L951B   
       LDY    #$0F    
L951B: LDA    ($97),Y 
       INX            
       INX            
       INX            
       STA    WSYNC   
       STA    GRP0    
       LDA    $E0     
       STA    GRP1    
       DEC    $9C     
       LDA    $9C     
       TAY            
       AND    #$F0    
       BEQ    L9533   
       LDY    #$0F    
L9533: LDA    ($9D),Y 
       STA    $E0     
       DEC    $96     
       LDA    $96     
       TAY            
       AND    #$F0    
       BEQ    L9542   
       LDY    #$0F    
L9542: LDA    ($97),Y 
       INX            
       LDY    L9D28,X 
       STY    $88     
       BEQ    L9579   
L954C: STA    WSYNC   
       STA    GRP0    
       LDA    $E0     
       STA    GRP1    
       DEC    $9C     
       LDA    $9C     
       TAY            
       AND    #$F0    
       BEQ    L955F   
       LDY    #$0F    
L955F: LDA    ($9D),Y 
       STA    $E0     
       DEC    $96     
       LDA    $96     
       TAY            
       AND    #$F0    
       BEQ    L956E   
       LDY    #$0F    
L956E: LDA    ($97),Y 
       LDY    #$00    
       DEC    $88     
       BNE    L954C   
       JMP    L94C6   
L9579: LDY    #$06    
       STY    COLUPF  
L957D: STA    WSYNC   
       STA    GRP0    
       LDA    $E0     
       STA    GRP1    
       DEC    $9C     
       LDA    $9C     
       TAY            
       AND    #$F0    
       BEQ    L9590   
       LDY    #$0F    
L9590: LDA    ($9D),Y 
       STA    $E0     
       DEC    $96     
       LDA    $96     
       LDY    L9D43,X 
       STY    PF1     
       TAY            
       AND    #$F0    
       BEQ    L95A4   
       LDY    #$0F    
L95A4: LDA    ($97),Y 
       INX            
       LDY    L9D28,X 
       STY    PF1     
       BNE    L957D   
L95AE: STA    GRP0    
       STA    GRP1    
       LDA    #$16    
       STA    TIM64T  
       LDA    $87     
       AND    #$40    
       BNE    L961A   
       LDA    $8F     
       BMI    L95D5   
       BEQ    L95D5   
       LDA    $A7     
       BMI    L95D5   
       LDA    $8D     
       BNE    L95D5   
       LDA    $87     
       BMI    L95F5   
       LDA    $D1     
       AND    #$0F    
       BEQ    L95D8   
L95D5: JMP    L9697   
L95D8: LDA    $87     
       ORA    #$80    
       STA    $87     
       JSR    L9AEC   
       AND    #$0E    
       TAY            
       LDA    L9F0A,Y 
       STA    $D0     
       LDA    L9F0B,Y 
       STA    $D1     
       JSR    L9AEC   
       AND    #$0F    
       STA    $89     
L95F5: LDY    #$01    
       STA    $94     
       LDX    #$AC    
       LDA    $89     
       AND    #$C0    
       CMP    #$80    
       BNE    L9607   
       LDA    $8E     
       BNE    L961A   
L9607: JSR    L9A3B   
       BPL    L961A   
       LDA    $D1     
       AND    #$0F    
       CMP    #$07    
       BCC    L961D   
       LDA    $87     
       AND    #$7F    
       STA    $87     
L961A: JMP    L97B1   
L961D: LDA    $89     
       CLC            
       ADC    #$40    
       STA    $89     
       AND    #$C0    
       CMP    #$40    
       BEQ    L9634   
       CMP    #$80    
       BEQ    L9655   
       CMP    #$C0    
       BEQ    L9679   
       BNE    L9683   
L9634: INC    $89     
       LDA    $89     
       AND    #$1F    
       TAY            
       LDA    L9EED,Y 
       TAY            
       CMP    #$08    
       BCS    L964C   
       LDA    $D0     
       AND    L9EE5,Y 
       BEQ    L9634   
       BNE    L961A   
L964C: LDA    $D1     
       AND    L9EDD,Y 
       BEQ    L9634   
       BNE    L961A   
L9655: LDA    #$76    
       STA    $AC     
       STA    $B3     
       LDA    #$AE    
       STA    $AD     
       LDA    $B0     
       ORA    #$90    
       STA    $B0     
       LDA    $89     
       AND    #$1F    
       TAY            
       LDA    L9EED,Y 
       ASL            
       TAY            
       STA    $8A     
       LDA    L9DB4,Y 
       STA    $B4     
       JMP    L97B1   
L9679: LDY    $8A     
       LDA    L9DCB,Y 
       STA    $B3     
       JMP    L97B1   
L9683: LDA    #$01    
       STA    $80     
       LDY    $8A     
       LDA    L9DCC,Y 
       STA    $B4     
       LDA    #$40    
       STA    $8C     
       INC    $D1     
       JMP    L97B1   
L9697: JSR    L9A7F   
       BPL    L969F   
       JMP    L97B1   
L969F: CMP    #$0C    
       BCC    L970B   
       BEQ    L96CA   
       LDA    $A7     
       AND    #$80    
       BNE    L96AE   
       JMP    L97B1   
L96AE: LDA    #$20    
       STA    $8B     
       LDA    #$04    
       DEC    $8F     
       BNE    L96C1   
       STA    $8B     
       LDA    #$FF    
       STA    $93     
       JMP    L97B1   
L96C1: LDA    $A7     
       AND    #$7F    
       STA    $A7     
       JMP    L97B1   
L96CA: SED            
       LDA    $D2     
       AND    #$0F    
       CMP    #$02    
       BCC    L96D6   
       JMP    L97B1   
L96D6: CLC            
       LDA    $D3     
       ADC    #$55    
       STA    $D3     
       LDA    $D2     
       ADC    #$00    
       STA    $D2     
       CLD            
       LDA    #$10    
       STA    $8B     
       LDA    #$10    
       STA    $A8     
       LDA    $A7     
       ORA    #$40    
       STA    $A7     
       LDA    #$FE    
       STA    $CC     
       LDA    $CB     
       ORA    #$40    
       STA    $CB     
       LDA    #$30    
       STA    $A3     
       LDA    #$5F    
       STA    $A5     
       LDA    #$9F    
       STA    $A6     
       JMP    L97B1   
L970B: TYA            
       CMP    #$08    
       BCS    L972F   
       LDA    $D0     
       AND    L9EE5,Y 
       BEQ    L978E   
       LDA    $D2     
       AND    #$0F    
       BNE    L9723   
       LDA    $D3     
       CMP    #$20    
       BCC    L978A   
L9723: LDA    L9EE5,Y 
       EOR    #$FF    
       AND    $D0     
       STA    $D0     
       JMP    L974B   
L972F: LDA    $D1     
       AND    L9EDD,Y 
       BEQ    L978E   
       LDA    $D2     
       AND    #$0F    
       BNE    L9742   
       LDA    $D3     
       CMP    #$20    
       BCC    L978A   
L9742: LDA    L9EDD,Y 
       EOR    #$FF    
       AND    $D1     
       STA    $D1     
L974B: LDA    $87     
       ORA    #$40    
       STA    $87     
       JSR    L9AEC   
       AND    #$DF    
       STA    $E4     
       AND    #$0F    
       CMP    #$08    
       BCS    L9768   
       CMP    #$03    
       BEQ    L9768   
       LDA    $E4     
       ADC    #$07    
       STA    $E4     
L9768: SED            
       LDA    $D3     
       SEC            
       SBC    #$20    
       STA    $D3     
       LDA    $D2     
       SBC    #$00    
       STA    $D2     
       CLD            
       LDA    #$00    
       STA    AUDV0   
       STA    AUDV1   
       DEC    $D1     
       LDA    $D4     
       AND    #$0F    
       CMP    #$03    
       BCC    L9796   
       JMP    L978E   
L978A: LDA    #$FE    
       STA    $83     
L978E: LDA    #$FF    
       STA    $91     
       LDA    #$15    
       STA    $A8     
L9796: LDA    #$4F    
       STA    $A5     
       LDA    #$9F    
       STA    $A6     
       LDA    $A7     
       ORA    #$40    
       STA    $A7     
       TYA            
       ASL            
       TAY            
       LDA    L9DB4,Y 
       STA    $A4     
       LDA    L9DB3,Y 
       STA    $A3     
L97B1: CLD            
L97B2: LDA    INTIM   
       BNE    L97B2   
       LDY    #$82    
       STY    WSYNC   
       STY    VBLANK  
       STY    VSYNC   
       STY    WSYNC   
       INC    $80     
       BNE    L97C9   
       INC    $81     
       INC    $82     
L97C9: STY    WSYNC   
       LDX    $83     
       BEQ    L97D1   
       DEC    $83     
L97D1: STY    WSYNC   
       STA    VSYNC   
       LDA    #$2C    
       STA    TIM64T  
       JSR    L9AEC   
       JMP    L9038   
L97E0: JMP    L98A2   
L97E3: LDA    NUSIZ0,X
       AND    #$40    
       BEQ    L97F3   
       DEC    NUSIZ1,X
       BNE    L97E0   
       LDA    NUSIZ0,X
       AND    #$BF    
       STA    NUSIZ0,X
L97F3: LDA    COLUP0,X
       AND    #$F0    
       BNE    L97FC   
       JMP    L989E   
L97FC: LDA    $80     
       STA    $E0     
       LDA    NUSIZ0,X
       AND    #$18    
       BNE    L9809   
       JMP    L989E   
L9809: AND    #$10    
       BNE    L981E   
       LDA    #$02    
       STA    $E1     
       LDA    $E0     
       AND    $E1     
       BEQ    L981A   
       JMP    L98A2   
L981A: LSR    $E0     
       LSR    $E0     
L981E: LDY    VSYNC,X 
       STY    $E2     
       LDY    VBLANK,X
       STY    $E3     
       LDA    COLUP0,X
       BIT    L9EE2   
       BEQ    L983D   
       DEC    $E3     
       LDA    $E0     
       AND    #$02    
       BNE    L983D   
       DEC    $E3     
       LDA    NUSIZ0,X
       ORA    #$20    
       STA    NUSIZ0,X
L983D: LDA    COLUP0,X
       BIT    L9EE3   
       BEQ    L9854   
       INC    $E3     
       LDA    $E0     
       AND    #$02    
       BNE    L9854   
       INC    $E3     
       LDA    NUSIZ0,X
       AND    #$DF    
       STA    NUSIZ0,X
L9854: LDA    COLUP0,X
       BIT    L9EE4   
       BEQ    L9863   
       DEC    $E2     
       LDA    NUSIZ0,X
       ORA    #$04    
       STA    NUSIZ0,X
L9863: LDA    COLUP0,X
       BIT    L9EE5   
       BEQ    L9872   
       INC    $E2     
       LDA    NUSIZ0,X
       AND    #$FB    
       STA    NUSIZ0,X
L9872: JSR    L98F3   
       BNE    L9891   
       LDA    $E2     
       STA    $E0     
       LDA    VSYNC,X 
       STA    $E2     
       JSR    L98F3   
       BNE    L9891   
       LDA    $E0     
       STA    $E2     
       LDA    VBLANK,X
       STA    $E3     
       JSR    L98F3   
       BEQ    L989E   
L9891: LDA    $E2     
       STA    VSYNC,X 
       LDA    $E3     
       STA    VBLANK,X
       INC    NUSIZ1,X
       JMP    L98A2   
L989E: LDA    #$00    
       STA    NUSIZ1,X
L98A2: LDA    #$00    
       STA    COLUP0,X
       LDA    NUSIZ0,X
       AND    #$40    
       BNE    L98D4   
       LDA    $94     
       ASL            
       ASL            
       ASL            
       STA    $E1     
       LDA    NUSIZ0,X
       AND    #$18    
       STA    $E0     
       LDA    NUSIZ1,X
       AND    #$07    
       CLC            
       ADC    $E0     
       TAY            
       LDA    L9FE3,Y 
       STA    $E0     
       ASL            
       ADC    $E1     
       TAY            
       LDA    L9DEB,Y 
       STA    WSYNC,X 
       LDA    L9DEC,Y 
       STA    RSYNC,X 
L98D4: LDA    $8C     
       BNE    L98F2   
       LDA    $8F     
       BMI    L98F2   
       BEQ    L98F2   
       LDY    #$02    
       LDA    $E0     
       CMP    #$01    
       BEQ    L98E8   
       LDY    #$00    
L98E8: STY    AUDV1   
       LDA    #$01    
       STA    AUDC1   
       LDA    #$1F    
       STA    AUDF1   
L98F2: RTS            

L98F3: CLC            
       LDA    $E3     
       ADC    #$E9    
       LSR            
       LSR            
       LSR            
       STA    $E1     
       ASL            
       ASL            
       ADC    $E1     
       STA    $E1     
       LDA    $E2     
       ADC    #$04    
       PHA            
       LSR            
       LSR            
       LSR            
       LSR            
       LSR            
       CLC            
       ADC    $E1     
       TAY            
       LDA    $87     
       ROR            
       LDA    L9E1B,Y 
       BCC    L991C   
       LDA    L9E7A,Y 
L991C: STA    $E1     
       PLA            
       LSR            
       LSR            
       AND    #$07    
       TAY            
       LDA    L9EE5,Y 
       AND    $E1     
       RTS            

L992A: .byte $A9,$FF,$60
L992D: LDA    $A7     
       AND    #$10    
       STA    $E0     
       BEQ    L9941   
       LDA    $92     
       BNE    L9941   
       LDA    $91     
       BNE    L9941   
       LDA    #$3C    
       STA    $92     
L9941: LDA    $92     
       BEQ    L9951   
       DEC    $92     
       BNE    L9951   
       LDA    $E0     
       BEQ    L9951   
       LDA    #$FF    
       STA    $91     
L9951: LDA    $91     
       BEQ    L996D   
       LDA    #$08    
       STA    AUDV0   
       LDA    #$05    
       STA    AUDC0   
       LDA    $80     
       BIT    L9EE3   
       BNE    L9966   
       EOR    #$FF    
L9966: ROR            
       AND    #$0F    
       ADC    #$09    
       STA    AUDF0   
L996D: RTS            

L996E: STY    $E0     
       LDA    NUSIZ0,X
       ORA    #$80    
       STA    NUSIZ0,X
       LDY    $91     
       BEQ    L997F   
       DEC    $91     
       JMP    L9993   
L997F: LDA    NUSIZ0,X
       PHA            
       AND    #$E7    
       ORA    #$08    
       STA    NUSIZ0,X
       LDA    $87     
       AND    #$F3    
       STA    $87     
       PLA            
       AND    #$10    
       BNE    L99E9   
L9993: LDA    $A7     
       BMI    L99D5   
       LDA    NUSIZ0,X
       AND    #$08    
       BNE    L99DE   
       LDY    $94     
       JSR    L9A47   
       BPL    L99D5   
       LDA    $87     
       ORA    L9EDE,Y 
       STA    $87     
       LDA    #$00    
       STA    $91     
       STA    $92     
L99B1: LDA    $B9     
       EOR    #$18    
       STA    $B9     
       LDA    $C2     
       EOR    #$18    
       STA    $C2     
       LDA    $A7     
       AND    #$E7    
       ORA    #$88    
       STA    $A7     
       LDA    L9DAD   
       STA    $AA     
       LDA    L9DAE   
       STA    $AB     
       LDA    #$00    
       STA    $D2     
       STA    $D3     
L99D5: LDA    $A3     
       STA    COLUP1,X
       LDA    $A4     
       STA    COLUPF,X
       RTS            

L99DE: LDA    $81     
       AND    #$03    
       BEQ    L99E9   
       JSR    L9A3B   
       BPL    L99FB   
L99E9: JSR    L9AEC   
       AND    $E0     
       BEQ    L99FB   
       TAY            
       LDA    L9DAB,Y 
       STA    COLUP1,X
       LDA    L9DAC,Y 
       STA    COLUPF,X
L99FB: RTS            

L99FC: LDA    #$00    
       STA    $E0     
       JSR    L9A3B   
       BPL    L9A08   
       JMP    L9A32   
L9A08: LDY    #$01    
       LDA    VSYNC,X 
       CMP    COLUP1,X
       BEQ    L9A1D   
       BCC    L9A14   
       LDY    #$00    
L9A14: LDA    $E0     
       AND    #$30    
       ORA    L9EE4,Y 
       STA    $E0     
L9A1D: LDY    #$01    
       LDA    VBLANK,X
       CMP    COLUPF,X
       BEQ    L9A32   
       BCC    L9A29   
       LDY    #$00    
L9A29: LDA    $E0     
       AND    #$C0    
       ORA    L9EE2,Y 
       STA    $E0     
L9A32: LDA    COLUP0,X
       AND    #$0F    
       ORA    $E0     
       STA    COLUP0,X
       RTS            

L9A3B: LDA    COLUP1,X
       CLC            
       ADC    #$14    
       STA    $E1     
       LDA    COLUPF,X
       JMP    L9A50   
L9A47: LDA    $A3     
       CLC            
       ADC    #$14    
       STA    $E1     
       LDA    $A4     
L9A50: STA    $E2     
       LDA    #$02    
       STA    $E3     
       LDA    VSYNC,X 
       CLC            
       ADC    #$16    
       CMP    $E1     
       BCC    L9A6A   
       SEC            
       SBC    #$05    
       CMP    $E1     
       BCS    L9A6A   
       DEC    $E3     
       DEC    $E3     
L9A6A: LDA    VBLANK,X
       CLC            
       ADC    #$04    
       CMP    $E2     
       BCC    L9A7C   
       SEC            
       SBC    #$07    
       CMP    $E2     
       BCS    L9A7C   
       DEC    $E3     
L9A7C: LDA    $E3     
       RTS            

L9A7F: LDA    $80     
       AND    #$01    
       BNE    L9ABD   
       LDY    #$00    
L9A87: LDA    $A4     
       CLC            
       ADC    #$04    
       CMP    L9DCC,Y 
       BCC    L9A99   
       SEC            
       SBC    #$07    
       CMP    L9DCC,Y 
       BCC    L9AA4   
L9A99: TYA            
       CLC            
       ADC    #$08    
       TAY            
       CPY    #$20    
       BCS    L9ABD   
       BCC    L9A87   
L9AA4: LDX    #$03    
L9AA6: LDA    $A3     
       CLC            
       ADC    #$02    
       CMP    L9DCB,Y 
       BCC    L9AB8   
       SEC            
       SBC    #$05    
       CMP    L9DCB,Y 
       BCC    L9AC1   
L9AB8: INY            
       INY            
       DEX            
       BPL    L9AA6   
L9ABD: LDY    #$FF    
       TYA            
       RTS            

L9AC1: TYA            
       LSR            
       TAY            
       RTS            

L9AC5: LDY    #$FF    
       CLC            
       ADC    #$2F    
       SEC            
L9ACB: INY            
       SBC    #$0F    
       BCS    L9ACB   
       STY    $E0     
       EOR    #$FF    
       ADC    #$09    
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    $E0     
       RTS            

L9ADD: STA    HMP0,X  
       AND    #$0F    
       TAY            
       STA    WSYNC   
L9AE4: DEY            
       BPL    L9AE4   
       STA    RESP0,X 
       STA    WSYNC   
       RTS            

L9AEC: LDA    $90     
       BNE    L9AF4   
       LDA    #$A5    
       STA    $90     
L9AF4: ASL            
       ASL            
       ASL            
       EOR    $90     
       ASL            
       ROL    $90     
       LDA    $90     
       RTS            

L9AFF: AND    #$1E    
       TAY            
       LDA    L9BF6,Y 
       STA    $D6,X   
       LDA    L9BF7,Y 
       STA    $D7,X   
       INX            
       INX            
       RTS            

L9B0F: LDA    $80     
       AND    #$0F    
       BNE    L9B1B   
       LDA    #$00    
       STA    AUDV0   
       STA    AUDV1   
L9B1B: LDX    #$00    
L9B1D: LDY    #$00    
       LDA    $8B,X   
       AND    #$04    
       BEQ    L9B28   
       JMP    L9BBF   
L9B28: LDA    $8B,X   
       AND    #$20    
       BEQ    L9B31   
       JMP    L9BB7   
L9B31: LDA    $8B,X   
       AND    #$40    
       BNE    L9B93   
       LDA    $8B,X   
       AND    #$10    
       BEQ    L9B40   
       JMP    L9BD7   
L9B40: LDA    $8B,X   
       AND    #$01    
       BNE    L9B4E   
       INY            
       INY            
       LDA    $8B,X   
       AND    #$02    
       BEQ    L9B83   
L9B4E: JSR    L9AEC   
       AND    L9B8F,Y 
       STA    $E0     
       LDA    $8D,X   
       BNE    L9B63   
       JSR    L9AEC   
       AND    L9B8F,Y 
       ADC    L9B8F,Y 
L9B63: STA    $8D,X   
       DEC    $8D,X   
       BEQ    L9B89   
       LDA    #$04    
       STA    AUDC0,X 
       LDA    $8D,X   
       CMP    L9B90,Y 
       BCC    L9B76   
       EOR    #$FF    
L9B76: AND    L9B8F,Y 
       ADC    L9B8F,Y 
       STA    AUDV0,X 
       LSR            
       ADC    $E0     
       STA    AUDF0,X 
L9B83: INX            
       CPX    #$02    
       BCC    L9B1D   
       RTS            

L9B89: LDA    #$00    
       STA    $8B,X   
       BEQ    L9B83   
L9B8F: .byte $7F ;.RRA
L9B90: JSR    $1003   
L9B93: LDY    $8D,X   
       BNE    L9B99   
       LDY    #$0A    
L9B99: STY    $8D,X   
       LDA    L9BEB,Y 
       STA    AUDF0,X 
       LDA    #$05    
       STA    AUDC0,X 
       LDA    #$00    
       STA    $8B     
L9BA8: LDA    #$08    
       STA    AUDV0,X 
       LDA    $80     
       AND    #$0F    
       BNE    L9BB4   
L9BB2: DEC    $8D,X   
L9BB4: BEQ    L9B89   
       RTS            

L9BB7: LDA    $8D,X   
       BNE    L9BBD   
       LDA    #$14    
L9BBD: BNE    L9BC5   
L9BBF: LDA    $8D,X   
       BNE    L9BC5   
       LDA    #$3C    
L9BC5: STA    $8D,X   
       ROR            
       BCC    L9BCD   
       SEC            
       SBC    #$03    
L9BCD: EOR    #$FF    
       STA    AUDF0,X 
       LDA    #$0F    
       STA    AUDC0,X 
       BNE    L9BA8   
L9BD7: LDA    $8D,X   
       BNE    L9BDD   
       LDA    #$0F    
L9BDD: STA    $8D,X   
       STA    AUDV0,X 
       LDA    #$05    
       STA    AUDC0,X 
       LDA    #$0A    
       STA    AUDF0,X 
       BNE    L9BB2   
L9BEB: BRK            
       .byte $17 ;.SLO
       .byte $17 ;.SLO
       CLC            
       CLC            
       .byte $1F ;.SLO
       .byte $1F ;.SLO
       .byte $17 ;.SLO
       CLC            
       CLC            
       .byte $1F ;.SLO
L9BF6: .byte $D2 ;.JAM
L9BF7: .byte $9C ;.SHY
       .byte $DA ;.NOP
       .byte $9C ;.SHY
       .byte $E2 ;.NOP
       .byte $9C ;.SHY
       NOP            
       .byte $9C ;.SHY
       .byte $F2 ;.JAM
       .byte $9C ;.SHY
       .byte $FA ;.NOP
       .byte $9C ;.SHY
       .byte $02 ;.JAM
       STA    L9D0A,X 
       .byte $12 ;.JAM
       STA    L9D1A,X 
       .byte $22 ;.JAM
       STA.wx $0000,X 
       BRK            
       ORA    ($03,X) 
L9C11: BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       CLC            
       CLC            
       .byte $3C ;.NOP
       .byte $3C ;.NOP
       ROR    $FFFF,X 
       BRK            
       BRK            
       BRK            
       BRK            
L9C22: .byte $32 ;.JAM
       .byte $9C ;.SHY
       LSR    $9C     
       .byte $5A ;.NOP
       .byte $9C ;.SHY
       ROR    $829C   
       .byte $9C ;.SHY
       STX    $9C,Y   
       TAX            
       .byte $9C ;.SHY
       LDX    $0E9C,Y 
       .byte $1F ;.SLO
       .byte $1F ;.SLO
L9C35: .byte $1F ;.SLO
       .byte $1F ;.SLO
       .byte $0F ;.SLO
       ASL    NUSIZ0  
       BRK            
       BRK            
       BRK            
       JSR    $F9B1   
       SBC    $FFFB,Y 
       .byte $FF ;.ISB
       .byte $7B ;.RRA
       AND    $7D,X   
       .byte $FB ;.ISB
       .byte $FF ;.ISB
       .byte $FF ;.ISB
       .byte $7F ;.RRA
L9C4B: .byte $1F ;.SLO
       .byte $03 ;.SLO
       .byte $03 ;.SLO
       ORA    ($81,X) 
       STA    ($C1,X) 
       CMP    ($C3,X) 
       .byte $E7 ;.ISB
       .byte $FF ;.ISB
       .byte $BF ;.LAX
       .byte $6F ;.RRA
       .byte $B7 ;.LAX
L9C59: .byte $1B ;.SLO
       SED            
       .byte $FC ;.NOP
       INC    $FFFF,X 
       .byte $77 ;.RRA
       ORA    $8C     
       TYA            
       BCC    L9C35   
       CPX    #$E0    
       BEQ    L9C59   
       BEQ    L9C4B   
       CPX    #$C0    
       .byte $80 ;.NOP
       .byte $02 ;.JAM
       ASL    REFP1   
       .byte $0C ;.NOP
       ASL    $F2B2,X 
       CPX    #$60    
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
       ASL    $1F1F   
       .byte $1F ;.SLO
       ORA    $040D,X 
L9C89: .byte $04 ;.NOP
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       ORA    ($01,X) 
       .byte $03 ;.SLO
       .byte $03 ;.SLO
       ORA    ($01,X) 
       BRK            
       BVS    L9C90   
L9C98: .byte $FC ;.NOP
       .byte $FF ;.ISB
       .byte $7F ;.RRA
       .byte $1F ;.SLO
       .byte $27 ;.RLA
       .byte $33 ;.RLA
       SEI            
       ROR    $3F7F,X 
       ROL    $FEB1,X 
       SED            
       BEQ    L9C98   
       CPX    #$E0    
       BVS    L9CA4   
       .byte $FC ;.NOP
       INC    $F7FF,X 
       LDA    INPT0,X 
       SEC            
       .byte $3C ;.NOP
       .byte $FC ;.NOP
       INC    $BE7E,X 
       .byte $5C ;.NOP
       PLP            
       BPL    L9CBC   
L9CBC: BRK            
       BRK            
       ORA    ($03,X) 
       ASL    PF1     
       .byte $1B ;.SLO
       CMP    $F0F1,Y 
       RTS            

L9CC7: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$1E,$33,$33,$33,$33
       .byte $33,$1E,$00,$1E,$0C,$0C,$0C,$0C,$3C,$1C,$00,$3F,$30,$30,$1E,$03
       .byte $03,$1E,$00,$1E,$23,$03,$06,$03,$23,$1E,$00,$06,$06,$06,$3F,$36
       .byte $36,$36,$00,$3E,$03,$03,$3E,$30,$30,$3E,$00,$1E,$33,$33,$3E,$30
       .byte $30,$1E,$00
L9D0A: .byte $18,$18,$0C,$06,$03,$03,$3F,$00,$1E,$33,$33,$1E,$33,$33,$1E,$00
L9D1A: .byte $06,$03,$03,$1F,$33,$33,$1E,$00,$7C,$12,$12,$7C,$88,$88
L9D28: .byte $3C
L9D29: .byte $00
L9D2A: .byte $00
L9D2B: .byte $00,$01,$C0,$F8,$7F,$01,$80,$F0,$7F,$05,$80,$50,$4B,$05,$80,$70
       .byte $7B,$04,$00,$00,$00,$12,$80,$E0
L9D43: .byte $70,$01,$C0,$F8,$7F,$05,$40,$A8,$45,$05,$C0,$E8,$7D,$04,$00,$00
       .byte $00,$12,$C0,$80,$1C,$01,$C0,$F8,$7F,$05,$40,$88,$55,$05,$40,$88
       .byte $77,$04,$00,$00,$00,$10,$00,$00,$00,$00,$FE,$FE,$FE,$FE,$FE,$FE
       .byte $F2,$F2,$D2,$D2,$D2,$D2,$D2,$D2,$D3,$D3,$D3,$D3,$D2,$D2,$DE,$DE
       .byte $DE,$DE,$DE,$00,$FF,$FF,$A9,$A9,$FF,$FF,$A9,$A9,$FF,$FF,$A9,$A9
       .byte $FF,$FF,$A9,$A9,$FF,$FF,$A9,$A9,$FF,$FF,$A9,$A9,$FF,$FF
L9DA1: .byte $3F
L9DA2: .byte $AD,$73,$AD,$53,$AD,$65,$AD,$73,$AD
L9DAB: .byte $5F
L9DAC: .byte $AE
L9DAD: .byte $76
L9DAE: .byte $AE,$4E,$AE,$97,$AE
L9DB3: .byte $00
L9DB4: .byte $31,$25,$31,$4E,$31,$76,$31,$00,$61,$25,$61,$4E,$61,$76,$61,$00
       .byte $91,$25,$91,$4E,$91,$76,$91
L9DCB: .byte $0D
L9DCC: .byte $21,$36,$21,$5D,$21,$86,$21,$1A,$51,$32,$51,$69,$51,$81,$51,$09
       .byte $81,$39,$81,$59,$81,$8A,$81,$2C,$AE,$76,$AE,$76,$AE,$76,$AE
L9DEB: .byte $5F
L9DEC: .byte $9F,$6F,$9F,$6F,$9F,$7F,$9F,$1F,$9F,$2F,$9F,$2F,$9F,$3F,$9F,$1F
       .byte $9F,$2F,$9F,$2F,$9F,$3F,$9F,$1F,$9F,$2F,$9F,$2F,$9F,$3F,$9F,$8F
       .byte $9F,$9F,$9F,$9F,$9F,$AF,$9F
L9E13: .byte $BF,$9F,$C7,$9F,$CF,$9F,$D7,$9F
L9E1B: .byte $00,$00,$00,$00,$00,$08,$02,$00,$80,$20,$08,$02,$00,$80,$20,$7F
       .byte $FF,$FF,$FF,$FE,$40,$20,$08,$02,$00,$40,$20,$08,$02,$00,$40,$20
       .byte $08,$02,$00,$41,$24,$08,$12,$40,$41,$24,$08,$12,$40,$7F,$FF,$FF
       .byte $FF,$FE,$40,$20,$08,$02,$00,$40,$20,$08,$02,$00,$40,$20,$08,$02
       .byte $00,$50,$21,$09,$02,$10,$50,$21,$09,$02,$10,$7F,$FF,$FF,$FF,$FE
       .byte $00,$0F,$FF,$02,$FE,$00,$0F,$FF,$02,$FE,$00,$0F,$FF,$FF,$FE
L9E7A: .byte $00,$00,$00,$00
L9E7E: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$7F,$FF,$FF,$FF,$FE
       .byte $40,$20,$08,$02,$02,$40,$20,$08,$02,$02,$40,$20,$08,$02,$02,$40
       .byte $20,$08,$02,$02,$40,$20,$08,$02,$02,$7F,$FF,$FF,$FF,$FE,$40,$20
       .byte $08,$02,$02
L9EB1: .byte $40,$20,$08,$02,$02,$40,$20,$08,$02,$02,$40,$20,$08,$02,$02,$40
       .byte $20,$08,$02,$02,$7F,$FF,$FF,$FF,$FE,$00,$0F,$FF,$26,$FE,$00,$0F
       .byte $FF,$26,$FE,$00,$0F,$FF,$FF,$FE,$00,$00,$00,$00
L9EDD: .byte $00
L9EDE: .byte $01,$02,$04,$08
L9EE2: .byte $10
L9EE3: .byte $20
L9EE4: .byte $40
L9EE5: .byte $80,$40,$20,$10,$08,$04,$02,$01
L9EED: .byte $06,$09,$01,$08,$05,$0A,$03,$00,$07,$02,$04,$0B,$06,$09,$01,$08
       .byte $05,$0A,$03,$00,$07,$02,$04,$0B,$06,$09,$01,$08,$05
L9F0A: .byte $9D
L9F0B: .byte $30,$E6,$A0,$AD,$50,$95,$D0,$27,$E0,$6D,$60,$B6,$90,$B5,$A0,$A3
       .byte $AC,$B5,$BE,$C7
L9F1F: .byte $1C,$18,$18,$18,$18,$38,$38,$38,$38,$38,$38,$10,$38,$38,$38,$00
       .byte $60,$46,$44,$24,$24,$38,$38,$78,$7A,$7C,$38,$10,$38,$38,$38,$00
       .byte $00,$80,$E0,$23,$22,$3E,$38,$B8,$B8,$BF,$78,$10,$38,$38,$38,$00
       .byte $7F,$21,$60,$70,$60,$20,$F0,$70,$30,$00,$00,$00,$00,$00,$00,$00
       .byte $18,$10,$10,$10,$10,$30,$30,$10,$30,$38,$30,$10,$78,$38,$18,$00
       .byte $30,$2C,$28,$28,$28,$38,$38,$30,$30,$38,$30,$10,$78,$38,$10,$00
L9F7F: .byte $00,$80,$E0,$20,$23,$22,$3E,$B8,$B0,$BE,$70,$10,$F8,$38,$18,$00
       .byte $1C,$00,$18,$00,$18,$20,$38,$20,$38,$20,$38,$10,$38,$38,$38,$00
       .byte $60,$46,$20,$08,$20,$08,$38,$40,$7A,$44,$38,$10,$38,$38,$38,$00
       .byte $00,$80,$E0,$23,$22,$0E,$38,$80,$B8,$87,$78,$10,$38,$38,$38,$00
       .byte $8B,$8D,$8D,$EB,$B8,$B8,$E8,$00,$E9,$29,$EF,$A9,$A9,$0F,$06,$00
       .byte $89,$96,$D6,$AA,$00,$00,$00,$00,$D6,$DA,$DA,$E6,$02,$02,$02,$00
       .byte $00,$00,$00,$00
L9FE3: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$01,$02,$00
       .byte $00,$01,$02,$03,$03,$03,$02,$01
L9FFB: .byte $FF,$00,$90,$00
L9FFF: .byte $90
