; Disassembly of roms/Final Approach.bin
; Disassembled Tue Oct  6 15:21:48 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Final Approach.bin
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
HMBL    =  $24
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXP0FB  =  $32
CXP1FB  =  $33
CXPPMM  =  $37
INPT4   =  $3C
INPT5   =  $3D
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM8T   =  $0295
TIM64T  =  $0296

       ORG $3000

START:
       CLD            
       SEI            
       LDX    #$FF    
       TXS            
       INX            
       TXA            
L3007: STA    VSYNC,X 
       INX            
       BNE    L3007   
       LDX    #$70    
       JSR    L30FC   
       LDY    $E1     
       JSR    L3372   
L3016: LDA    #$2A    
       STA    WSYNC   
       STA    VBLANK  
       STA    VSYNC   
       STA    TIM8T   
L3021: LDA    INTIM   
       BNE    L3021   
       STA    WSYNC   
       STA    VSYNC   
       JSR    L372B   
       LDA    #$2D    
       STA    TIM64T  
       JSR    L37CA   
       JSR    L37DE   
       JSR    L37F2   
       JSR    L37CA   
       JSR    L37DE   
       JSR    L37CA   
       LDX    $BD     
       LDY    #$00    
       JSR    L312E   
       JSR    L35C5   
       JSR    L3105   
       JSR    L3806   
       DEC    $D4     
       BPL    L305C   
       LDY    #$02    
       STY    $D4     
L305C: DEC    $D5     
       BPL    L306E   
       LDA    $8F     
       LSR            
       CMP    #$02    
       BNE    L3069   
       LDA    #$80    
L3069: STA    $8F     
       DEY            
       STY    $D5     
L306E: LDA    $C4     
       STA    COLUBK  
       LDX    #$00    
       LDA    #$99    
       JSR    L35B3   
       LDA    #$0A    
       JSR    L35B3   
       INX            
       INX            
       LDA    $98     
       BEQ    L3087   
       JSR    L35B3   
L3087: STA    WSYNC   
       STA    HMOVE   
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    $C3     
       STA    COLUP0  
       STA    COLUP1  
       DEC    $9A     
       STA    HMCLR   
       JMP    L3900   
L309E: JSR    L3326   
       JSR    L3889   
       LDA    $E3     
       BNE    L30DB   
       LDA    $E4     
       BNE    L30DB   
       STA    CXCLR   
       STA    $E0     
       STA    $AE     
       STA    $B2     
       STA    $B6     
       STA    $BA     
       DEC    $C2     
       BNE    L30F4   
       LDX    #$0D    
L30BE: INC    $C4,X   
       DEX            
       BPL    L30BE   
       LDA    $EE     
       BEQ    L30F4   
       LDX    #$02    
       JSR    L379B   
       LDA    $BD     
       EOR    #$01    
       STA    $BD     
       TAX            
       LDA    L3F9A,X 
       STA    $C3     
       JMP    L30F4   
L30DB: JSR    L31A4   
       JSR    L3153   
       JSR    L3824   
       JSR    L3784   
       JSR    L33A0   
       LDA    $90     
       BNE    L30F4   
       JSR    L3537   
       JSR    L34D5   
L30F4: LDA    INTIM   
       BNE    L30F4   
       JMP    L3016   
L30FC: LDA    L3F58,X 
       STA    $80,X   
       DEX            
       BPL    L30FC   
       RTS            

L3105: LDA    $DA     
       BEQ    L3119   
       LDX    #$0C    
L310B: LDA    $AD,X   
       AND    #$F0    
       CMP    $DA     
       BEQ    L311A   
       DEX            
       DEX            
       DEX            
       DEX            
       BPL    L310B   
L3119: RTS            

L311A: INC    $AD,X   
       LDA    $AD,X   
       AND    #$0F    
       CLC            
       ADC    $DA     
       STA    $AD,X   
       STA    $8E     
       LDA    #$04    
       STA    $E0     
       STA    AUDC1   
       RTS            

L312E: LDA    $9D     
       BNE    L3138   
       LDA    $9E     
       CMP    #$05    
       BCC    L313C   
L3138: INC    $EC,X   
       INC    $EC,X   
L313C: STY    $9A     
       LDY    $E1     
L3140: LDA    L38DE,Y 
       SEC            
       SBC    $EC,X   
       STA    $E8,X   
       LSR            
       STA    $EA,X   
       LDA    $9A     
       BEQ    L3152   
       DEX            
       BPL    L3140   
L3152: RTS            

L3153: LDX    $BD     
       LDA    INPT4,X 
       BPL    L315C   
       STA    $91     
       RTS            

L315C: CMP    $91     
       BEQ    L3198   
       STA    $91     
       LDA    $90     
       BEQ    L3178   
L3166: JSR    L37BE   
       LDA    #$08    
       STA    $97     
       LDA    #$00    
       STA    $D6     
       STA    $96     
       STA    $BE     
L3175: STA    $90     
       RTS            

L3178: LDA    $D6     
       BEQ    L3188   
       LDA    RESM0   
       STA    $8C     
       LDA    #$01    
       STA    $EF     
       STA    $F0     
       BNE    L3175   
L3188: LDA    $D8     
       BNE    L3199   
       LDX    $D7     
       BEQ    L3198   
       LDA    #$17    
       STA    $8C     
       STX    $D8     
       STA    $D7     
L3198: RTS            

L3199: LDA    #$00    
       STA    $D8     
       STA    $D7     
       LDA    #$17    
       STA    $8C     
       RTS            

L31A4: LDY    #$00    
       STY    $DE     
       LDA    $90     
       BEQ    L31AF   
       JMP    L32B2   
L31AF: LDA    CXP1FB  
       ASL            
       BPL    L31F6   
       LDA    $A9     
       CMP    #$04    
       BCS    L31F2   
       LDA    #$01    
       STA    $D6     
       STY    $D7     
       LDX    #$0C    
L31C2: LDA    $AE,X   
       CMP    #$45    
       BCS    L31D9   
       CMP    #$41    
       BCC    L31D9   
       LDA    $AB,X   
       JSR    L376E   
       CMP    #$74    
       BCC    L31D9   
       CMP    #$8F    
       BCC    L31E1   
L31D9: DEX            
       DEX            
       DEX            
       DEX            
       BPL    L31C2   
       BMI    L31ED   
L31E1: STA    $93     
       LDA    $AC,X   
       BMI    L31ED   
       LDA    $AD,X   
       STA    $95     
       LDY    $AE,X   
L31ED: STY    $96     
       JMP    L3213   
L31F2: LDX    #$08    
       BNE    L31FD   
L31F6: LDA    CXP0FB  
       ASL            
       BPL    L3211   
       LDX    #$00    
L31FD: LDA    #$00    
       STA    $D6     
       LDY    $AD,X   
       LDA    $A9     
       CMP    $AE,X   
       BCS    L3211   
       ADC    #$03    
       CMP    $AE,X   
       BCS    L3211   
       LDY    $B1,X   
L3211: STY    $D7     
L3213: LDA    CXPPMM  
       BPL    L323F   
       LDX    #$00    
L3219: LDY    #$08    
L321B: LDA    $AE,X   
       SEC            
       SBC.wy $00AE,Y 
       BPL    L3228   
       EOR    #$FF    
       CLC            
       ADC    #$01    
L3228: CMP    #$04    
       BCS    L322F   
       JSR    L3242   
L322F: CPY    #$08    
       BNE    L3237   
       LDY    #$0C    
       BNE    L321B   
L3237: CPX    #$00    
       BNE    L323F   
       LDX    #$04    
       BNE    L3219   
L323F: STA    CXCLR   
       RTS            

L3242: LDA    $AB,X   
       JSR    L376E   
       STA    $9C     
       LDA.wy $00AB,Y 
       JSR    L376E   
       SEC            
       SBC    $9C     
       BPL    L3259   
       EOR    #$FF    
       CLC            
       ADC    #$01    
L3259: CMP    #$08    
       BCC    L3268   
       BNE    L32A7   
       LDA    $AB,X   
       EOR.wy $00AB,Y 
       AND    #$0F    
       BEQ    L32A7   
L3268: LDA    $AC,X   
       JSR    L32A8   
       STA    $AC,X   
       LDA.wy $00AC,Y 
       JSR    L32A8   
       STA.wy $00AC,Y 
       LDA    $AE,X   
       CMP.wy $00AE,Y 
       STY    $9A     
       BCS    L3286   
       TXA            
       LDX    $9A     
       STA    $9A     
L3286: LDA    #$00    
       INC    $AE,X   
       INC    $AE,X   
       BPL    L3293   
       STA    $AE,X   
       JMP    L329D   
L3293: LDX    $9A     
       DEC    $AE,X   
       DEC    $AE,X   
       BPL    L329D   
       STA    $AE,X   
L329D: INC    $DE     
       LDA    #$07    
       STA    $8C     
       PLA            
       PLA            
       STA    CXCLR   
L32A7: RTS            

L32A8: AND    #$08    
       BEQ    L32AF   
       LDA    #$78    
       RTS            

L32AF: LDA    #$B0    
       RTS            

L32B2: LDA    $E7     
       CMP    #$01    
       BNE    L3321   
       LDA    $94     
       JSR    L376E   
       CMP    #$93    
       BNE    L3321   
       LDA    $95     
       AND    #$F0    
       STA    $9A     
       LDX    #$0C    
L32C9: LDA    $AD,X   
       AND    #$F0    
       CMP    $9A     
       BEQ    L32D7   
       DEX            
       DEX            
       DEX            
       DEX            
       BPL    L32C9   
L32D7: LDA    CXP1FB  
       BPL    L3303   
       LDA    $D9     
       BPL    L3303   
       STY    $AE,X   
       LDA    #$0F    
       STA    $8C     
       LDA    $DA     
       BEQ    L32FD   
       LDA    $AD,X   
       AND    #$F0    
       CMP    $DA     
       BEQ    L32F5   
       STA    $DE     
       BNE    L3321   
L32F5: STY    $DA     
       STY    $E0     
       LDY    #$50    
       BNE    L3321   
L32FD: DEC    $DB     
       LDY    #$25    
       BNE    L3321   
L3303: LDA    #$4B    
       STA    $AB,X   
       LDA    #$68    
       STA    $AC,X   
       LDA    #$15    
       STA    $8C     
       LDA    $DA     
       BEQ    L331F   
       LDA    $AD,X   
       AND    #$F0    
       CMP    $DA     
       BNE    L3321   
       STA    $DE     
       BEQ    L3321   
L331F: STA    $DD     
L3321: STY    $D9     
       STA    CXCLR   
       RTS            

L3326: LDA    SWCHB   
       ROL            
       ROL            
       ROL            
       TAX            
       AND    #$02    
       STA    $ED     
       TXA            
       ROL            
       AND    #$02    
       STA    $EC     
       LDA    SWCHB   
       LSR            
       BCC    L3386   
       LSR            
       BCC    L3355   
       LDA    #$01    
       STA    $92     
       LDA    $E3     
       BNE    L3354   
       LDA    $E4     
       BNE    L3354   
       LDA    INPT4   
       BPL    L3386   
       LDA    INPT5   
       BPL    L3386   
L3354: RTS            

L3355: LDA    $92     
       BNE    L335A   
       RTS            

L335A: DEC    $92     
       LDY    $E1     
       INY            
       CPY    #$08    
       BCC    L3365   
       LDY    #$00    
L3365: STY    $E1     
       LDA    #$00    
       STA    $E3     
       STA    $E4     
       LDA    L38D6,Y 
       STA    $E2     
L3372: TYA            
       INY            
       STY    $9D     
       AND    #$01    
       STA    $EE     
       CLC            
       ADC    #$01    
       ORA    #$A0    
       STA    $9F     
       LDA    #$AA    
       STA    $9E     
       RTS            

L3386: LDX    #$60    
       JSR    L30FC   
       LDX    $EE     
       LDA    #$04    
L338F: STA    $E3,X   
       DEX            
       BPL    L338F   
       LDX    $EE     
       LDY    #$01    
       JSR    L313C   
       LDA    $E8     
       STA    $E6     
       RTS            

L33A0: LDA    SWCHA   
       LDX    $BD     
       BEQ    L33AB   
       ASL            
       ASL            
       ASL            
       ASL            
L33AB: LDX    $90     
       BEQ    L33B1   
       BNE    L3424   
L33B1: LDY    $D8     
       BEQ    L33E7   
       LDX    #$00    
       STX    $A9     
       LDX    #$0C    
       AND    #$F0    
       STA    $9C     
       CMP    #$F0    
       BEQ    L33E6   
       TYA            
L33C4: CMP    $AD,X   
       BEQ    L33CF   
       DEX            
       DEX            
       DEX            
       DEX            
       BPL    L33C4   
       RTS            

L33CF: LDA    $AC,X   
       AND    #$0F    
       CLC            
       ADC    $9C     
       ASL    $9C     
       BCS    L33DE   
       ORA    #$08    
       BCC    L33E4   
L33DE: ASL    $9C     
       BCS    L33E4   
       AND    #$F7    
L33E4: STA    $AC,X   
L33E6: RTS            

L33E7: LDX    #$00    
       ASL            
       BCS    L33FB   
       LDY    #$F0    
       PHA            
       LDA    $98     
       JSR    L36F1   
       STA    $98     
       PLA            
       ASL            
       JMP    L3409   
L33FB: ASL            
       BCS    L3409   
       LDY    #$10    
       PHA            
       LDA    $98     
       JSR    L36F1   
       STA    $98     
       PLA            
L3409: LDX    $97     
       ASL            
       BCS    L3415   
       DEX            
       BPL    L341F   
       LDX    #$00    
       BEQ    L3423   
L3415: ASL            
       BCS    L341F   
       INX            
       CPX    #$7E    
       BCC    L341F   
       LDX    #$7E    
L341F: STX    $A9     
       STX    $97     
L3423: RTS            

L3424: INC    $F0     
       BNE    L342F   
       INC    $EF     
       BNE    L342F   
       JSR    L3166   
L342F: LDX    $96     
       BNE    L3439   
       STX    $BE     
       STX    $C0     
       BEQ    L3423   
L3439: STA    $9C     
       LDX    $BE     
       BNE    L346F   
       LDX    $BD     
       LDA    $EA,X   
       STA    $E7     
       LDA    #$70    
       STA    $BE     
       LDA    $96     
       BNE    L344F   
       BEQ    L3423   
L344F: SEC            
       SBC    #$44    
       ASL            
       ASL            
       CLC            
       ADC    #$29    
       STA    $C0     
       LDA    #$92    
       SEC            
       SBC    $93     
       LSR            
       LSR            
       TAX            
       LDA    L38CE,X 
       STA    $94     
       LDA    $E2     
       BPL    L346E   
       LDA    $D5     
       STA    $DF     
L346E: RTS            

L346F: DEC    $E7     
       BNE    L34D4   
       LDX    $BD     
       LDA    $EA,X   
       STA    $E7     
       LDA    $E2     
       BPL    L348A   
       LDA    $DF     
       BMI    L348A   
       BEQ    L3488   
       INC    $C0     
       JMP    L348A   
L3488: DEC    $C0     
L348A: LDA    $94     
       LDY    #$F0    
       LDX    #$00    
       JSR    L36F1   
       STA    $94     
       LDX    $C0     
       LDA    $9C     
       BMI    L34A1   
       ASL            
       DEX            
       DEX            
       JMP    L34A6   
L34A1: ASL            
       BMI    L34A6   
       INX            
       INX            
L34A6: CPX    #$14    
       BCS    L34AC   
       LDX    #$14    
L34AC: CPX    #$37    
       BCC    L34B2   
       LDX    #$37    
L34B2: STX    $C0     
       LDX    $BE     
       ASL            
       BMI    L34C3   
       DEX            
       DEX            
       CPX    #$3B    
       BCS    L34CC   
       LDX    #$3B    
       BNE    L34CC   
L34C3: ASL            
       BMI    L34CC   
       INX            
       INX            
       BPL    L34CC   
       LDX    #$7F    
L34CC: STX    $BE     
       LDA    $DF     
       EOR    #$80    
       STA    $DF     
L34D4: RTS            

L34D5: DEC    $D1     
       BEQ    L34DA   
       RTS            

L34DA: LDY    #$00    
       LDX    #$0C    
L34DE: LDA    $AE,X   
       BNE    L34E6   
       STX    $9A     
       BPL    L34E7   
L34E6: INY            
L34E7: DEX            
       DEX            
       DEX            
       DEX            
       BPL    L34DE   
       LDA    $E2     
       AND    #$07    
       STA    $9B     
       CPY    $9B     
       BCS    L3536   
       LDX    $9A     
       LDA    #$09    
       STA    $8C     
       LDA    #$01    
       STA    $E0     
       LDY    $E5     
       LDA    ($D2),Y 
       DEY            
       BPL    L350A   
       LDY    #$17    
L350A: STY    $E5     
       STA    $AC,X   
       AND    #$03    
       TAY            
       LDA    #$10    
       STA    $8E     
       LDA    L38C6,Y 
       STA    $AB,X   
       LDA    L38CA,Y 
       STA    $AE,X   
       LDA    $AD,X   
       AND    #$F0    
       ORA    #$04    
       STA    $AD,X   
       LDY    $DA     
       BNE    L3536   
       LDY    $DB     
       BPL    L3536   
       AND    #$F0    
       STA    $DA     
       JSR    L37B4   
L3536: RTS            

L3537: DEC    $E6     
       BEQ    L353E   
       JMP    L35B2   
L353E: LDX    $BD     
       LDA    $E8,X   
       STA    $E6     
       LDX    #$0C    
L3546: LDY    $AE,X   
       BEQ    L35AC   
       LDA    $AC,X   
       ASL            
       BCS    L3566   
       PHA            
       LDA    $AB,X   
       STX    $9C     
       LDX    #$00    
       LDY    #$F0    
       JSR    L36F1   
       LDX    $9C     
       CMP    #$DD    
       BNE    L3563   
       BEQ    L357B   
L3563: STA    $AB,X   
       PLA            
L3566: ASL            
       BCS    L3583   
       PHA            
       LDA    $AB,X   
       STX    $9C     
       LDX    #$00    
       LDY    #$10    
       JSR    L36F1   
       LDX    $9C     
       CMP    #$65    
       BNE    L3580   
L357B: PLA            
L357C: LDY    #$00    
       BEQ    L3599   
L3580: STA    $AB,X   
       PLA            
L3583: LDY    $AE,X   
       ASL            
       BCS    L358F   
       DEY            
       CPY    #$01    
       BPL    L3599   
       BMI    L357C   
L358F: ASL            
       BCS    L35AC   
       INY            
       CPY    #$7E    
       BCC    L3599   
       LDY    #$00    
L3599: STY    $AE,X   
       CPY    #$00    
       BNE    L35AC   
       SED            
       LDA    $DC     
       CLC            
       ADC    #$05    
       STA    $DC     
       CLD            
       LDA    #$0B    
       STA    $8C     
L35AC: DEX            
       DEX            
       DEX            
       DEX            
       BPL    L3546   
L35B2: RTS            

L35B3: STA    $9A     
       AND    #$0F    
       TAY            
       STA    WSYNC   
L35BA: DEY            
       BNE    L35BA   
       STA    RESP0,X 
       LDA    $9A     
       STA    HMP0,X  
       INX            
       RTS            

L35C5: LDA    #$00    
       STA    $BB     
       STA    $BC     
       SEC            
       LDA    $AE     
       SBC    $BA     
       CMP    #$08    
       BCS    L363E   
L35D4: LDA    $D5     
       BNE    L35DE   
       JSR    L36A9   
       JSR    L36BB   
L35DE: LDA    $AE     
       STA    $A3     
       LDA    $B6     
       STA    $A6     
       LDY    $AE     
       STY    $9A     
       DEY            
       DEY            
       STY    $9B     
       LDY    #$08    
       LDX    #$01    
       LDA    $BC     
       BEQ    L3638   
       CMP    $BB     
       BNE    L3605   
       INC    $BB     
       INC    $BB     
       JMP    L3605   
L3601: LDA    $BB,X   
       BEQ    L3638   
L3605: LDA.wy $00AE,Y 
       CMP    $9A,X   
       BCC    L360E   
       LDA    $9A,X   
L360E: SEC            
       SBC    #$05    
       CMP    #$46    
       BCS    L3629   
       CMP    #$3E    
       BCC    L3629   
       INC    $BB,X   
       LDA    $BB,X   
       CMP    #$46    
       BCS    L3629   
       CMP    #$3E    
       BCC    L3629   
       LDA    #$00    
       BEQ    L3636   
L3629: SEC            
       STA    $9B     
       LDA    #$80    
       SBC    $9B     
       CMP    #$77    
       BCC    L3636   
       LDA    #$00    
L3636: STA    $BB,X   
L3638: LDY    #$00    
       DEX            
       BPL    L3601   
       RTS            

L363E: LDA    $AE     
       SBC    $B2     
       CMP    #$07    
       BCC    L365D   
       LDA    $B6     
       SBC    $BA     
       CMP    #$07    
       BCC    L3689   
       LDA    $B2     
       STA    $A5     
       STA    $BB     
       LDA    $BA     
       STA    $A8     
       STA    $BC     
       JMP    L35DE   
L365D: SEC            
       LDA    $B6     
       SBC    $BA     
       CMP    #$07    
       BCC    L367A   
       LDA    $BA     
       STA    $A8     
       STA    $BC     
       LDA    $D4     
       BEQ    L3680   
       CMP    #$01    
       BNE    L367D   
       JSR    L36A9   
       JMP    L35DE   
L367A: JMP    L35D4   
L367D: JMP    L35DE   
L3680: JSR    L36A9   
       JSR    L36CD   
       JMP    L35DE   
L3689: LDA    $D4     
       BEQ    L369D   
       CMP    #$01    
       BEQ    L3694   
       JSR    L36BB   
L3694: LDA    $B2     
       STA    $A5     
       STA    $BB     
       JMP    L35DE   
L369D: JSR    L36DF   
       LDA    $B2     
       STA    $A5     
       STA    $BB     
       JMP    L35DE   
L36A9: LDA    $B2     
       BEQ    L36BA   
       LDX    #$03    
L36AF: LDA    $AB,X   
       LDY    $AF,X   
       STA    $AF,X   
       STY    $AB,X   
       DEX            
       BPL    L36AF   
L36BA: RTS            

L36BB: LDA    $BA     
       BEQ    L36CC   
       LDX    #$03    
L36C1: LDA    $B3,X   
       LDY    $B7,X   
       STA    $B7,X   
       STY    $B3,X   
       DEX            
       BPL    L36C1   
L36CC: RTS            

L36CD: LDA    $B2     
       BEQ    L36DE   
       LDX    #$03    
L36D3: LDA    $B3,X   
       LDY    $AF,X   
       STA    $AF,X   
       STY    $B3,X   
       DEX            
       BPL    L36D3   
L36DE: RTS            

L36DF: LDA    $BA     
       BEQ    L36F0   
       LDX    #$03    
L36E5: LDA    $AF,X   
       LDY    $B7,X   
       STA    $B7,X   
       STY    $AF,X   
       DEX            
       BPL    L36E5   
L36F0: RTS            

L36F1: STY    $9B     
       STA    $9A     
       CLC            
       ADC    $9B     
       LDY    $9B     
       BPL    L3708   
       LDY    $9A     
       BPL    L3717   
       TAY            
       BMI    L3717   
       CLC            
       ADC    #$F1    
       BNE    L3717   
L3708: LDY    $9A     
       BMI    L3717   
       TAY            
       AND    #$F0    
       CMP    #$70    
       TYA            
       BCC    L3717   
       CLC            
       ADC    #$0F    
L3717: TAY            
       JSR    L376E   
       CMP    #$51    
       BCC    L3725   
       CMP    #$DA    
       BCS    L3728   
       TYA            
       RTS            

L3725: LDA    #$65    
       RTS            

L3728: LDA    #$DD    
       RTS            

L372B: LDX    #$00    
       STX    $9A     
L372F: TXA            
       ASL            
       TAY            
       LDA    $9D,X   
       AND    #$F0    
       BNE    L3743   
       PHA            
       LDA    $9A     
       BNE    L3742   
       PLA            
       LDA    #$50    
       BNE    L3746   
L3742: PLA            
L3743: DEC    $9A     
       LSR            
L3746: STA.wy $0080,Y 
       CPX    #$02    
       BNE    L374F   
       DEC    $9A     
L374F: LDA    $9D,X   
       AND    #$0F    
       BNE    L3760   
       PHA            
       LDA    $9A     
       BNE    L375F   
       PLA            
       LDA    #$50    
       BNE    L3765   
L375F: PLA            
L3760: DEC    $9A     
       ASL            
       ASL            
       ASL            
L3765: STA.wy $0086,Y 
       INX            
       CPX    #$03    
       BCC    L372F   
       RTS            

L376E: STA    $9A     
       EOR    #$F0    
       CLC            
       ADC    #$70    
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $9B     
       LDA    $9A     
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    $9B     
       RTS            

L3784: LDA    $DE     
       BEQ    L37BD   
       LDX    $BD     
       LDY    $E3,X   
       DEY            
       STY    $E3,X   
       TXA            
L3790: EOR    #$01    
       TAX            
       LDA    $E3,X   
       BEQ    L37BD   
       STX    $BD     
       LDX    #$02    
L379B: LDA    $9D,X   
       LDY    $A0,X   
       STA    $A0,X   
       STY    $9D,X   
       DEX            
       BPL    L379B   
       LDA    #$00    
       STA    $AE     
       STA    $B2     
       STA    $B6     
       STA    $BA     
       STA    $DE     
       STA    $DA     
L37B4: LDA    $E5     
       AND    #$07    
       CLC            
       ADC    #$0A    
       STA    $DB     
L37BD: RTS            

L37BE: LDA    $DD     
       BEQ    L37BD   
       LDA    #$00    
       STA    $DD     
       LDA    $BD     
       BPL    L3790   
L37CA: LDX    #$03    
       LDA    $AE     
       CMP    $B6     
       BCS    L37DD   
L37D2: LDA    $AB,X   
       LDY    $B3,X   
       STA    $B3,X   
       STY    $AB,X   
       DEX            
       BPL    L37D2   
L37DD: RTS            

L37DE: LDX    #$03    
       LDA    $B6     
       CMP    $B2     
       BCS    L37F1   
L37E6: LDA    $B3,X   
       LDY    $AF,X   
       STA    $AF,X   
       STY    $B3,X   
       DEX            
       BPL    L37E6   
L37F1: RTS            

L37F2: LDX    #$03    
       LDA    $B2     
       CMP    $BA     
       BCS    L3805   
L37FA: LDA    $AF,X   
       LDY    $B7,X   
       STA    $B7,X   
       STY    $AF,X   
       DEX            
       BPL    L37FA   
L3805: RTS            

L3806: LDX    #$03    
       LDA    $C5     
L380A: STA    $C6,X   
       DEX            
       BPL    L380A   
       LDY    $BD     
       LDX    $E3,Y   
       BEQ    L3823   
       DEX            
       LDA    $D0     
       CPX    #$04    
       BCC    L381E   
       LDX    #$03    
L381E: STA    $C6,X   
       DEX            
       BPL    L381E   
L3823: RTS            

L3824: LDX    $BD     
       SED            
       LDY    $9F     
       BNE    L3833   
       LDA    $9E     
       BNE    L3833   
       LDA    $9D     
       BEQ    L385D   
L3833: TYA            
       SEC            
       SBC    $DC     
       TAY            
       BCS    L385D   
       LDA    $9E     
       PHA            
       AND    #$0F    
       BEQ    L3845   
       CMP    #$05    
       BNE    L3851   
L3845: LDA    $E3,X   
       CMP    #$02    
       BCC    L384F   
       DEC    $E3,X   
       BPL    L3851   
L384F: INC    $DE     
L3851: CLC            
       PLA            
       SBC    #$00    
       STA    $9E     
       LDA    $9D     
       SBC    #$00    
       STA    $9D     
L385D: CLC            
       TYA            
       ADC    $D9     
       TAY            
       BCC    L387F   
       LDA    $9E     
       PHA            
       AND    #$0F    
       CMP    #$09    
       BEQ    L3871   
       CMP    #$04    
       BNE    L3873   
L3871: INC    $E3,X   
L3873: SEC            
       PLA            
       ADC    #$00    
       STA    $9E     
       LDA    $9D     
       ADC    #$00    
       STA    $9D     
L387F: STY    $9F     
       CLD            
       LDA    #$00    
       STA    $D9     
       STA    $DC     
       RTS            

L3889: LDA    RSYNC   
       STA    AUDC1   
       LDA    $8E     
       STA    AUDF1   
       LDA    $E0     
       STA    AUDV1   
       LDA    $8D     
       BEQ    L389D   
       DEC    $8D     
       BPL    L38BB   
L389D: LDA    $8C     
       BEQ    L38BC   
       DEC    $8C     
       TAY            
       LDA    L3D76,Y 
       BEQ    L38C3   
       STA    $8D     
       LDA    L3D8E,Y 
       STA    AUDV0   
       LSR            
       LSR            
       LSR            
       LSR            
       STA    AUDC0   
       LDA    L38E6,Y 
       STA    AUDF0   
L38BB: RTS            

L38BC: STA    AUDC0   
       STA    AUDV0   
       STA    AUDF0   
       RTS            

L38C3: STA    $8C     
       RTS            

L38C6: .byte $D5,$BC,$BC,$D5
L38CA: .byte $72,$72,$0E,$0E
L38CE: .byte $98,$18,$97,$17,$96,$16,$95,$15
L38D6: .byte $04,$04,$84,$84,$03,$03,$02,$02
L38DE: .byte $10,$10,$10,$10,$14,$14,$1C,$1C
L38E6: .byte $00,$0B,$03,$10,$03,$0B,$03,$10,$00,$09,$00,$0F,$00,$10,$10,$0B
       .byte $00,$12,$19,$00,$11,$09,$00,$0C,$00,$0A
L3900: LDA    INTIM   
       BNE    L3900   
       STA    WSYNC   
       STA    VBLANK  
       LDY    #$07    
L390B: STA    WSYNC   
       LDA    ($80),Y 
       STA    GRP0    
       LDA    ($86),Y 
       STA    GRP1    
       STY    $9A     
       LDA    ($84),Y 
       STA    $9B     
       LDA    ($8A),Y 
       TAX            
       TXS            
       LDA    ($88),Y 
       TAX            
       LDA    ($82),Y 
       LDY    $9B     
       STA    GRP0    
       STX    GRP1    
       TSX            
       STY    GRP0    
       STX    GRP1    
       LDY    $9A     
       DEY            
       BPL    L390B   
       STA    WSYNC   
       LDA    #$B0    
       STA    HMP0    
       LDA    #$80    
       STA    HMP1    
       LDX    #$FF    
       TXS            
       STA    $9B     
       JSR    L3DB0   
       STA    RESP0   
       JSR    L3DB0   
       STA    RESP1   
       LDY    #$03    
L394F: STA    WSYNC   
       STA    HMOVE   
       LDA    L3DE6,Y 
       STA    GRP0    
       STA    GRP1    
       LDX    $C5     
       STX    COLUP1  
       LDA    $C9     
       STA    COLUP0  
       LDA    $C7     
       STA    HMCLR   
       NOP            
       NOP            
       STA    COLUP0  
       NOP            
       STX    COLUP0  
       LDA    $C6     
       LDX    $C8     
       STA    COLUP1  
       NOP            
       DEY            
       STX    COLUP1  
       BPL    L394F   
       INY            
       STA    WSYNC   
       STY    GRP0    
       STY    GRP1    
       STY    NUSIZ0  
       STY    NUSIZ1  
       LDA    $90     
       BEQ    L398B   
       JMP    L3B7F   
L398B: STA    WSYNC   
       LDA    #$15    
       STA    CTRLPF  
       LDA    $AB     
       STA    HMP0    
       AND    #$0F    
       STA    $9A     
       LDA    $B3     
       STA    HMP1    
       AND    #$0F    
       TAX            
       STA    WSYNC   
L39A2: DEX            
       BNE    L39A2   
       STA    RESP1   
       LDX    $9A     
       STA    WSYNC   
L39AB: DEX            
       BNE    L39AB   
       STA    RESP0   
       STA    WSYNC   
       STA    HMOVE   
       LDA    $C4     
       STA    COLUPF  
       LDA    $AD     
       STA    COLUP0  
       LDA    $B5     
       STA    COLUP1  
       LDA    $AC     
       STA    REFP0   
       LDA    $B4     
       STA    REFP1   
       STA    HMCLR   
       JSR    L3DB0   
       LDA    #$1F    
       STA    PF2     
       LDA    #$FF    
       STA    PF0     
       STA    PF1     
       LDA    $CA     
       STA    COLUBK  
       BNE    L39E0   
L39DD: NOP            
       STA    PF1     
L39E0: STA    WSYNC   
       STA    HMOVE   
       LDA    ($A3),Y 
       STA    GRP0    
       LDA    ($A6),Y 
       STA    GRP1    
       LDA    ($A9),Y 
       STA    ENABL   
       INY            
       JSR    L3DB0   
       NOP            
       NOP            
       CPY    #$03    
       BCS    L3A02   
       LDA    L3FDE,Y 
       NOP            
       STA    PF2     
       BNE    L39E0   
L3A02: LDA    L3FDE,Y 
       LDX    #$00    
       STX    PF2     
       CPY    #$07    
       BCC    L39DD   
       LDA    #$70    
       STX    PF1     
       STA    PF0     
L3A13: STA    WSYNC   
       STA    HMOVE   
       STA    ENABL   
       LDA    ($A3),Y 
       STA    GRP0    
       LDA    ($A6),Y 
       STA    GRP1    
       INY            
       STA    HMCLR   
       CPY    $BB     
       BNE    L3A2B   
       JMP    L3AC7   
L3A2B: CPY    $BC     
       BNE    L3A32   
       JMP    L3B25   
L3A32: LDA    ($A9),Y 
       CPY    #$79    
       BEQ    L3A8D   
       CPY    #$3D    
       BEQ    L3A43   
       LDX    #$11    
       STX    CTRLPF  
       JMP    L3A13   
L3A43: STA    WSYNC   
       STA    HMOVE   
       STA    ENABL   
       LDA    ($A3),Y 
       STA    GRP0    
       LDA    ($A6),Y 
       STA    GRP1    
       INY            
       CPY    #$40    
       BNE    L3A6D   
       LDA    $CB     
       STA    COLUPF  
       STX    PF2     
       LDX    $C4     
       LDA    #$FF    
       NOP            
       STA    PF2     
       STX    COLUPF  
       LDA    ($A9),Y 
       LDX    #$00    
       STX    PF2     
       BEQ    L3A43   
L3A6D: LDA    ($A9),Y 
       LDX    $80     
       DEC    L3DA6   
       LDX    #$FF    
       STX    PF2     
       LDX    #$00    
       CPY    #$42    
       BNE    L3A85   
       STX    HMCLR   
       STX    PF2     
       JMP    L3A13   
L3A85: LDX    #$00    
       STX    PF2     
       LDX    $8F     
       BNE    L3A43   
L3A8D: LDX    #$14    
       LDA    #$15    
       STA    CTRLPF  
       DEC    L3DA6   
       NOP            
       NOP            
       LDA    #$F0    
       STA    PF0     
L3A9C: STA    WSYNC   
       STA    HMOVE   
       LDA    ($A3),Y 
       STA    GRP0    
       LDA    L3FC8,X 
       STA    PF1     
       LDA    ($A6),Y 
       STA    GRP1    
       LDA    L3FC9,X 
       STA    PF2     
       LDA    ($A9),Y 
       STA    ENABL   
       INY            
       DEX            
       DEX            
       DEX            
       CPY    #$80    
       BEQ    L3AC0   
       BNE    L3A9C   
L3AC0: LDY    #$00    
       LDX    #$00    
       JMP    L3C9F   
L3AC7: LDA    $AF     
       STA    HMP0    
       AND    #$0F    
       TAX            
       LDA    ($A9),Y 
       CPX    #$08    
       BCS    L3AFC   
       NOP            
       DEC    L3DA6   
       STA    ENABL   
       LDA    ($A6),Y 
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP1    
       LDA    $A5     
       DEX            
       DEX            
       DEX            
L3AE7: DEX            
       BNE    L3AE7   
       STA    RESP0   
       STA    $A3     
       INY            
       LDA    $B0     
       STA    REFP0   
       LDA    $B1     
       STA    COLUP0  
       LDA    ($A9),Y 
       JMP    L3A13   
L3AFC: STA    $9C     
       NOP            
       NOP            
       STA    ENABL   
       LDA    ($A6),Y 
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP1    
       LDA    $A5     
       STA    $A3     
       INY            
       LDA    $B0     
       STA    REFP0   
       LDA    $B1     
       STA    COLUP0  
       TXA            
       SBC    #$07    
       TAX            
       LDA    $9C     
L3B1D: DEX            
       BNE    L3B1D   
       STA    RESP0   
       JMP    L3A13   
L3B25: LDA    $B7     
       STA    HMP1    
       AND    #$0F    
       TAX            
       CPX    #$08    
       LDA    ($A9),Y 
       BCS    L3B58   
       DEC    $9C     
       STA    ENABL   
       LDA    ($A3),Y 
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       LDA    $A8     
       DEX            
       DEX            
       DEX            
L3B43: DEX            
       BNE    L3B43   
       STA    RESP1   
       STA    $A6     
       INY            
       LDA    $B8     
       STA    REFP1   
       LDA    $B9     
       STA    COLUP1  
       LDA    ($A9),Y 
       JMP    L3A13   
L3B58: STA    $9C     
       STA    ENABL   
       LDA    ($A3),Y 
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       LDA    $A8     
       STA    $A6     
       INY            
       LDA    $B8     
       STA    REFP1   
       LDA    $B9     
       STA    COLUP1  
       TXA            
       SBC    #$07    
       TAX            
       LDA    $9C     
L3B77: DEX            
       BNE    L3B77   
       STA    RESP1   
       JMP    L3A13   
L3B7F: STA    WSYNC   
       NOP            
       LDA    #$C0    
       STA    HMM0    
       LDA    $CC     
       STA    COLUP0  
       LDA    $95     
       STA    COLUP1  
       NOP            
       STA    RESM0   
       LDA    $94     
       JSR    L3DAD   
       STA    RESP0   
       STA    HMP1    
       AND    #$0F    
       TAX            
       STA    WSYNC   
L3B9F: DEX            
       BNE    L3B9F   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       JSR    L3DAA   
       STA    HMCLR   
       LDA    #$F0    
       STA    HMM0    
       STA    WSYNC   
L3BB3: STA    WSYNC   
       LDA    $C4     
       STA    COLUPF  
       LDA    L3FC9,Y 
       STA    PF0     
       INY            
       LDA    L3FC9,Y 
       STA    PF1     
       INY            
       LDA    L3FC9,Y 
       STA    PF2     
       INY            
       LDA    $CA     
       STA    COLUBK  
       CPY    #$15    
       BNE    L3BB3   
       STA    WSYNC   
       STA    HMOVE   
       STX    PF1     
       LDA    #$70    
       STA    PF0     
       LDA    #$02    
       STA    ENAM0   
       LDA    #$08    
       STA    REFP1   
       LDY    #$00    
L3BE7: STA    WSYNC   
       STA    HMOVE   
       LDA    ($BE),Y 
       STA    GRP1    
       INY            
       CPY    #$49    
       BEQ    L3C23   
       CPY    #$41    
       BNE    L3BE7   
       LDA    #$00    
L3BFA: STA    WSYNC   
       STA    HMOVE   
       STA    PF1     
       STA    PF2     
       LDA    ($BE),Y 
       STA    GRP1    
       INY            
       CPY    #$44    
       BEQ    L3BE7   
       JSR    L3DB0   
       LDA    #$FF    
       DEC    $9B     
       STA    $9B     
       STA    PF2     
       STA    PF1     
       LDA    #$00    
       CPY    #$43    
       BNE    L3BFA   
       STA    ENAM0   
       JMP    L3BFA   
L3C23: LDA    CXP1FB  
       AND    #$80    
       STA    $D9     
       STA    CXCLR   
L3C2B: STA    WSYNC   
       LDA    ($C0),Y 
       STA    GRP1    
       INY            
       CPY    #$71    
       BEQ    L3C85   
       CPY    #$58    
       BNE    L3C2B   
       LDA    #$00    
       STA    $9B     
       BEQ    L3C42   
L3C40: STX    COLUBK  
L3C42: STA    WSYNC   
       STA    PF1     
       STA    PF2     
       LDA    ($C0),Y 
       STA    GRP1    
       INY            
       CPY    #$5E    
       BNE    L3C6C   
       LDA    $CC     
       STA    COLUBK  
       INC    $9B     
       JSR    L3DB0   
       LDA    #$EA    
       STA    PF2     
       LDA    #$55    
       STA    PF1     
       LDA    #$00    
       LDX    $CA     
       DEC    $9A     
       NOP            
       JMP    L3C40   
L3C6C: CPY    #$64    
       BEQ    L3C2B   
       LDX    $9B     
       LDA    L3FF1,X 
       STA    GRP0    
       INC    $9B     
       LDA    $80     
       LDA    #$FF    
       STA    PF2     
       STA    PF1     
       LDA    #$00    
       BEQ    L3C42   
L3C85: LDX    #$14    
       LDY    #$00    
L3C89: STA    WSYNC   
       LDA    L3FC7,X 
       STA    PF0     
       LDA    L3FC8,X 
       STA    PF1     
       LDA    L3FC9,X 
       STA    PF2     
       DEX            
       DEX            
       DEX            
       BPL    L3C89   
L3C9F: STA    WSYNC   
       LDA    $C4     
       STA    COLUBK  
       STY    GRP0    
       STY    GRP1    
       STY    REFP0   
       STY    REFP1   
       STY    PF1     
       STY    PF2     
       LDA    #$11    
       STA    CTRLPF  
       STA    WSYNC   
       STA    WSYNC   
       JSR    L3DA7   
       LDA    $80     
       STA    RESP1   
       STA    HMCLR   
       LDA    $C5     
       STA    COLUP1  
       LDA    #$06    
       STA    NUSIZ1  
L3CCA: STA    WSYNC   
       LDA    L3FE6,Y 
       STA    GRP1    
       INY            
       CPY    #$0A    
       BNE    L3CCA   
       LDX    #$00    
       STA    WSYNC   
       STX    GRP1    
       LDA    #$A0    
       STA    HMBL    
       LDA    #$90    
       STA    HMM1    
       LDA    $CD     
       STA    COLUP0  
       STA    RESBL   
       LDA    $C4     
       LDY    #$30    
       NOP            
       STA    RESP0   
       STA    COLUP1  
       STY    PF0     
       STY    NUSIZ1  
       INY            
       JSR    L3DAD   
       STY    CTRLPF  
       STA    RESM1   
       LDY    #$00    
L3D01: STA    WSYNC   
       STA    HMOVE   
       LDA    L3DB1,X 
       STA    GRP0    
       INX            
       DEC    L3DA6   
       NOP            
       DEC    $9A     
       STY    COLUBK  
       STA    HMCLR   
       CPX    #$03    
       BCC    L3D01   
       LDY    $CE     
       CPX    #$04    
       BCC    L3D01   
       LDA    #$10    
       STA    HMBL    
       LDA    #$F0    
       STA    HMM1    
       LDA    #$02    
       STA    ENABL   
       STA    ENAM1   
L3D2D: STA    WSYNC   
       LDA    L3DB1,X 
       STA    GRP0    
       INX            
       CPX    #$1D    
       BEQ    L3D4D   
       STA    WSYNC   
       LDA    L3DB1,X 
       STA    GRP0    
       INX            
       STA    WSYNC   
       STA    HMOVE   
       LDA    L3DB1,X 
       STA    GRP0    
       INX            
       BNE    L3D2D   
L3D4D: STA    WSYNC   
       LDA    #$00    
       STA    ENABL   
       STA    ENAM1   
       STA    GRP0    
       STA    GRP1    
       LDA    $CF     
       STA    COLUBK  
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       JSR    L3DA7   
       STA    HMCLR   
       LDA    #$FF    
       STA    WSYNC   
       STA    VBLANK  
       LDA    #$1F    
       STA    TIM64T  
       JMP    L309E   
L3D76: .byte $00,$12,$01,$12,$01,$12,$01,$12,$00,$09,$00,$09,$00,$14,$01,$04
       .byte $00,$03,$04,$00,$1F,$1F,$00,$02
L3D8E: .byte $00,$CF,$B0,$CF,$B0,$CF,$B0,$CF,$00,$4A,$00,$6A,$00,$CA,$B0,$CA
       .byte $00,$4A,$5A,$00,$CA,$CA,$00,$CA
L3DA6: .byte $44
L3DA7: DEC    L3DA6   
L3DAA: DEC    L3DA6   
L3DAD: DEC    L3DA6   
L3DB0: RTS            

L3DB1: .byte $18,$3C,$3C,$6A,$56,$6A,$56,$6A,$56,$6A,$56,$3C,$3C,$18,$18,$18
       .byte $18,$18,$18,$18,$18,$18,$18,$3C,$3C,$42,$42,$FF,$FF,$D1,$D8,$B2
       .byte $7B,$58,$6B,$B1,$E2,$78,$91,$A2,$EB,$6B,$58,$D1,$B2,$D8,$EB,$91
       .byte $A2,$7B,$E2,$B1,$78
L3DE6: .byte $40,$E0,$E0,$40,$41,$81,$3B,$53,$45,$54,$81,$4A,$4F,$59,$53,$49
       .byte $54,$43,$4B,$81,$31,$2C,$32,$81,$54,$4F,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$02,$06,$7E,$FE,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$3C,$66,$66,$66,$66
       .byte $66,$3C,$00,$3C,$18,$18,$18,$18,$38,$18,$00,$7E,$60,$30,$18,$0C
       .byte $66,$3C,$00,$3C,$66,$06,$1C,$06,$66,$3C,$00,$0C,$7E,$6C,$6C,$3C
       .byte $1C,$0C,$00,$3C,$66,$06,$06,$7C,$60,$7C,$00,$3C,$66,$66,$7C,$60
       .byte $66,$3C,$00,$30,$30,$18,$0C,$06,$06,$7E,$00,$3C,$66,$66,$3C,$66
       .byte $66,$3C,$00,$3C,$66,$06,$3E,$66,$66,$3C,$00,$00,$00,$00,$00,$00
       .byte $00,$00
L3F58: .byte $00,$3F,$00,$3F,$00,$3F,$00,$3F,$00,$3F,$00,$3F,$00,$00,$00,$80
       .byte $00,$01,$01,$28,$E7,$15,$00,$08,$09,$02,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$3E,$00,$00,$3E,$00,$00,$3E,$35,$00,$94,$00,$BC
       .byte $08,$C4,$00,$35,$00,$44,$00,$BC,$08,$F4,$00,$00,$00,$00,$00,$3E
       .byte $00,$3E
L3F9A: .byte $00,$84,$00,$42,$C2,$C2,$C2,$C2,$D6,$1A,$0E,$12,$16,$14,$C2,$00
       .byte $CE,$3D,$02,$01,$00,$00,$00,$00,$00,$0B,$00,$00,$00,$00,$00,$00
       .byte $04,$00,$00,$17,$14,$0A,$14,$14,$0A,$0A,$00,$00,$00
L3FC7: .byte $00
L3FC8: .byte $00
L3FC9: .byte $F0,$FF,$1F,$F0,$FF,$07,$F0,$FF,$01,$F0,$FE,$00,$F0,$F8,$00,$F0
       .byte $E0,$00,$F0,$80,$00
L3FDE: .byte $1F,$07,$01,$FE,$F8,$E0,$80,$70
L3FE6: .byte $20,$70,$70,$F8,$F8,$F8,$F8,$70,$70,$20,$00
L3FF1: .byte $00,$00,$00,$DC,$94,$94,$94,$FC,$00,$00,$00,$00,$30,$2D,$2D
