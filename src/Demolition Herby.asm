; Disassembly of roms/Demolition Herby.bin
; Disassembled Tue Oct  6 15:21:09 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Demolition Herby.bin
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
PF1     =  $0E
PF2     =  $0F
RESP0   =  $10
RESP1   =  $11
AUDC0   =  $15
AUDF0   =  $17
AUDV0   =  $19
GRP0    =  $1B
GRP1    =  $1C
ENABL   =  $1F
HMP0    =  $20
HMP1    =  $21
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
INPT4   =  $3C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296

       ORG $3000
L3000: LDA    L3F01,X 
       STA    GRP0    
       LDA    L3F67,X 
       STA    WSYNC   
       STA    COLUP0  
       LDA    L3F67,Y 
       STA    COLUP1  
       LDA    L3F01,Y 
       STA    GRP1    
       LDA    L3F00,X 
       STA    GRP0    
       LDA    L3F66,X 
L301E: STA    $9E     
       LDX    $B3     
       LDA    $C2,X   
       STA    $9C     
       LDX    $B4     
       LDA    $B7,X   
       TAX            
       STX    $9A     
       LDA    L3D11,X 
       STA    $9D     
       LDX    L3F00,Y 
       LDA    L3F66,Y 
       LDY    $9E     
       STA    WSYNC   
       STY    COLUP0  
       STA    COLUP1  
       STX    GRP1    
       LDX    $9A     
       LDY    $9C     
       LDA    L3D00,X 
       STA    COLUPF  
       LDA    L3D66,Y 
       STA    COLUBK  
       LDA    $9D     
       STA    COLUPF  
       LDA    L3D44,Y 
       STA    COLUBK  
       LDA    L3D22,X 
       STA    COLUPF  
       LDA    L3D55,Y 
       STA    COLUBK  
       LDA    L3D33,X 
       STA    COLUPF  
       LDA    #$00    
       STA    COLUBK  
       STA    COLUPF  
       LDY    $86     
       LDX    $87     
       LDA    L3F69,X 
       STA    COLUP0  
       LDA    L3F03,X 
       STA    GRP0    
       LDA    L3F03,Y 
       STA    GRP1    
       LDA    L3F69,Y 
       STA    COLUP1  
       BNE    L30E0   
       LDA    $98     
       CMP    $88     
       BNE    L3093   
L308E: TYA            
       SBC    #$04    
       STA    $86     
L3093: LDA    L3F69,X 
       BNE    L30E3   
       LDA    $98     
       CMP    $89     
       BNE    L30A3   
L309E: TXA            
       SBC    #$04    
       STA    $87     
L30A3: LDA    L3F02,X 
       STA    WSYNC   
       STA    GRP0    
       LDA    L3F68,X 
       STA    COLUP0  
       LDA    L3F68,Y 
       STA    COLUP1  
       LDA    L3F02,Y 
       STA    GRP1    
       STX    $9A     
       LDX    $98     
       LDA    L3D75,X 
       BMI    L30D2   
       BEQ    L30C6   
       INC    $B3     
L30C6: DEX            
       STX    $98     
       CPX    $99     
       BEQ    L30E6   
       LDX    $9A     
       JMP    L3000   
L30D2: INC    $B4     
       DEX            
       STX    $98     
       CPX    $99     
       BEQ    L30E6   
       LDX    $9A     
       JMP    L3000   
L30E0: SEC            
       BCS    L308E   
L30E3: SEC            
       BCS    L309E   
L30E6: LDA    #$00    
       STA    PF1     
       STA    PF2     
       STA    GRP0    
       STA    GRP1    
       STA    GRP0    
       JMP    L313E   
L30F5: LDA    $80     
       STA    $98     
       SEC            
       SBC    #$27    
       STA    $99     
       LDA    $82     
       STA    $B4     
       LDA    $81     
       STA    $B3     
       LDA    #$01    
       STA    VDELP0  
       LDY    $EB     
       BEQ    L3113   
L310E: STA    WSYNC   
       DEY            
       BNE    L310E   
L3113: LDA    #$40    
       STA    WSYNC   
       STA    PF1     
       LDA    #$04    
       STA    PF2     
       LDA    #$00    
       LDY    $86     
       JMP    L301E   

START:
       SEI            
       CLD            
       LDX    #$00    
       TXA            
L3129: STA    VSYNC,X 
       TXS            
       INX            
       BNE    L3129   
       LDA    INTIM   
       STA    $B6     
       JSR    L396D   
       LDA    #$04    
       STA    $F0     
L313B: JMP    L30F5   
L313E: LDA    INTIM   
       BPL    L313E   
       LDA    #$46    
       STA    WSYNC   
       STA    TIM64T  
       JSR    L3B4D   
       LDA    #$02    
       STA    VBLANK  
       JSR    L3393   
       LDA    $F0     
       BEQ    L31C0   
       CMP    #$01    
       BNE    L3166   
       LDX    #$38    
       LDA    #$03    
       JSR    L339B   
L3163: JMP    L31C9   
L3166: CMP    #$03    
       BNE    L318B   
       LDA    $DA     
       BNE    L3163   
       LDA    $F3     
       BEQ    L3176   
       BIT    INPT4   
       BMI    L3163   
L3176: LDA    $F1     
       AND    #$0F    
       BEQ    L3185   
       TAY            
       INY            
       TYA            
       AND    #$0F    
       BEQ    L3185   
       INC    $F1     
L3185: JSR    L3982   
       JMP    L321B   
L318B: CMP    #$02    
       BNE    L3199   
       LDX    #$46    
       LDA    #$04    
       JSR    L339B   
       JMP    L31C9   
L3199: CMP    #$04    
       BNE    L31C9   
       LDA    $DA     
       BNE    L31C9   
       LDA    $F3     
       BEQ    L31A9   
       BIT    INPT4   
       BMI    L31C9   
L31A9: LDA    $F1     
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    L3DF4,Y 
       STA    $F1     
       JSR    L3972   
       LDA    #$0A    
       JSR    L3DF7   
       JMP    L321B   
L31C0: JSR    L395C   
       BNE    L31C9   
       LDA    #$01    
       STA    $F0     
L31C9: LDA    $F5     
       BNE    L3212   
       LDA    SWCHB   
       LSR            
       BCS    L31E6   
       STA    $F3     
       JSR    L3972   
       LDA    #$04    
       STA    $F0     
       LDA    $F1     
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       JMP    L3201   
L31E6: LSR            
       BCS    L3212   
       STA    $F3     
       LDA    #$18    
       STA    $F5     
       LDA    #$04    
       STA    $F0     
       LDA    $F1     
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       INX            
       CPX    #$03    
       BCC    L3201   
       LDX    #$00    
L3201: LDA    L3DF4,X 
       STA    $F1     
       INX            
       STX    $EA     
       LDX    #$00    
       STX    $E8     
       STX    $E9     
       JMP    L321B   
L3212: JSR    L33BE   
       JSR    L39F2   
       JSR    L361D   
L321B: STA    HMCLR   
       LDA    $83     
       BNE    L3229   
       DEC    $F4     
       BPL    L3229   
       LDA    #$04    
       STA    $F4     
L3229: LDA    $F0     
       BNE    L329F   
       LDA    $A3     
       CMP    #$90    
       BNE    L323F   
       LDA    $F3     
       LSR            
       LSR            
       LSR            
       LSR            
       EOR    #$0F    
       BEQ    L323F   
       STA    $A3     
L323F: LDA    $A3     
       AND    #$40    
       BEQ    L3253   
       LDA    $A3     
       AND    #$0F    
       BEQ    L3253   
       LDA    $DA     
       BNE    L3253   
       LDA    #$30    
       STA    $DA     
L3253: LDA    $83     
       BNE    L326B   
       INC    $84     
       LDA    $84     
       LSR            
       BCS    L326B   
       AND    #$03    
       TAX            
       LDA    $A3,X   
       CMP    #$90    
       BNE    L326B   
       LDA    #$00    
       STA    $A3,X   
L326B: LDA    $83     
       AND    #$1F    
       BNE    L3273   
       DEC    $EE     
L3273: LDA    $EE     
       BPL    L3291   
       LDX    $EF     
       BEQ    L3289   
       DEC    $EF     
       LDA    #$3F    
       STA    $EE     
       LDA    #$4E    
       JSR    L39E7   
       JMP    L329F   
L3289: LDA    #$02    
       STA    $F0     
       LDA    #$00    
       STA    $EE     
L3291: LDA    $EE     
       CMP    #$0C    
       BCS    L329F   
       LDA    $DB     
       BNE    L329F   
       LDA    #$18    
       STA    $DB     
L329F: INC    $83     
       LDA    $83     
       AND    #$01    
       ASL            
       STA    $85     
       JMP    L340B   
L32AB: LDA    $EF     
       BPL    L32BB   
       LDA    #$00    
       STA    $EF     
       LDA    $F0     
       BNE    L32BB   
       LDA    #$02    
       STA    $F0     
L32BB: LDX    $85     
       LDA    $A7,X   
       ASL            
       STA    $8A     
       LDA    $A8,X   
       ASL            
       STA    $8B     
       LDA    $AB,X   
       LSR            
       STA    $88     
       LDA    $AB,X   
       AND    #$01    
       ASL            
       STA    $9A     
       LDA    $9F,X   
       AND    #$F0    
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    $A3,X   
       STA    REFP1   
       AND    #$03    
       BEQ    L32E8   
       INY            
       ASL            
       ASL            
       STA    REFP1   
L32E8: LDA    L3EC9,Y 
       SEC            
       SBC    $9A     
       STA    $86     
       LDA    $AC,X   
       LSR            
       STA    $89     
       LDA    $AC,X   
       AND    #$01    
       ASL            
       STA    $9A     
       LDA    $A0,X   
       AND    #$F0    
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    $A4,X   
       STA    REFP0   
       AND    #$03    
       BEQ    L3311   
       INY            
       ASL            
       ASL            
       STA    REFP0   
L3311: LDA    L3EC9,Y 
       SEC            
       SBC    $9A     
       STA    $87     
       LDA    $8A     
       LDX    #$01    
       JSR    L33F1   
       LDA    $8B     
       LDX    #$00    
       JSR    L33F1   
       LDA    $EE     
       CLC            
       ADC    #$3C    
       LDX    #$04    
       JSR    L33F1   
       LDY    #$02    
L3333: TYA            
       ASL            
       ASL            
       TAX            
       LDA.wy $00E8,Y 
       AND    #$F0    
       LSR            
       STA    $8C,X   
       LDA    #$3E    
       STA    $8D,X   
       LDA.wy $00E8,Y 
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA    $8E,X   
       LDA    #$3E    
       STA    $8F,X   
       DEY            
       BPL    L3333   
       LDX    #$0A    
       LDA    $F3     
       BNE    L3367   
       LDA    #$78    
L335C: STA    $8C,X   
       SEC            
       SBC    #$08    
       DEX            
       DEX            
       BPL    L335C   
       BMI    L3377   
L3367: LDX    #$00    
L3369: LDA    $8C,X   
       BNE    L3377   
       LDA    #$95    
       STA    $8C,X   
       INX            
       INX            
       CPX    #$0A    
       BCC    L3369   
L3377: LDA    INTIM   
       BPL    L3377   
       LDA    #$BE    
       STA    WSYNC   
       STA    HMOVE   
       STA    TIM64T  
       LDA    $F4     
       CMP    #$04    
       BCC    L338D   
       LDA    #$00    
L338D: ASL            
       STA    VBLANK  
       JMP    L313B   
L3393: LDX    $F5     
       BEQ    L339A   
       DEX            
       STX    $F5     
L339A: RTS            

L339B: LDY    $DA     
       BNE    L33A3   
       STA    $F0     
       STX    $DA     
L33A3: RTS            

L33A4: LDA    INTIM   
       BPL    L33A4   
       LDX    #$30    
       LDA    #$02    
       STA    WSYNC   
       STA    VSYNC   
       STX    TIM64T  
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    WSYNC   
       STA    VSYNC   
L33BE: LDA    $B6     
       STA    $9B     
       ASL            
       STA    $B6     
       LDA    $B5     
       STA    $9A     
       ROL            
       STA    $B5     
       LDA    $B6     
       CLC            
       ADC    $9B     
       STA    $B6     
       LDA    $B5     
       ADC    $9A     
       STA    $B5     
       LDA    $B6     
       CLC            
       ADC    #$19    
       STA    $B6     
       LDA    $B5     
       ADC    #$36    
       STA    $B5     
       LDA    $9B     
       ASL            
       ASL            
       ASL            
       CLC            
       ADC    $B5     
       STA    $B5     
       RTS            

L33F1: LDY    #$FF    
       SEC            
L33F4: INY            
       SBC    #$0F    
       BCS    L33F4   
       EOR    #$FF    
       ADC    #$09    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    HMP0,X  
       STA    WSYNC   
L3405: DEY            
       BPL    L3405   
       STA    RESP0,X 
       RTS            

L340B: JSR    L3A80   
       LDA    $F3     
       BEQ    L341E   
       LDA    SWCHA   
       CMP    $F3     
       BEQ    L3443   
       STA    $F3     
       JMP    L343F   
L341E: LDA    #$0F    
       BIT    $A3     
       BVS    L3426   
       BNE    L346B   
L3426: LDA    $B5     
       AND    #$03    
       TAX            
       LDA    L3EDB,X 
       TAY            
       LDA    L3EEF,Y 
       AND    $A3     
       BNE    L346B   
       STY    $A3     
       LDY    #$28    
       STY    $F4     
       JMP    L346B   
L343F: LDY    #$28    
       STY    $F4     
L3443: LSR            
       LSR            
       LSR            
       LSR            
       EOR    #$FF    
       TAY            
       BIT    $A3     
       BMI    L346B   
       AND    #$03    
       BEQ    L345C   
       STA    $9A     
       LDA    #$0C    
       AND    $A3     
       ORA    $9A     
       STA    $A3     
L345C: TYA            
       AND    #$0C    
       BEQ    L346B   
       STA    $9A     
       LDA    #$03    
       AND    $A3     
       ORA    $9A     
       STA    $A3     
L346B: LDX    $85     
       STX    $8C     
L346F: LDX    $8C     
       LDA    L3EB5,X 
       STA    $8D     
       LDA    $F0     
       BNE    L34DA   
       LDA    $A3,X   
       BMI    L34D4   
       LDA    $9F,X   
       AND    #$0F    
       ASL            
       TAY            
       LDA    L3C87,Y 
       LDY    #$00    
       AND    $83     
       BNE    L34B9   
       INY            
       CPX    #$00    
       BNE    L34B9   
       LDA    INPT4   
       BMI    L34B9   
       LDA    $A3,X   
       AND    #$7F    
       BEQ    L34B9   
       LDA    $A4     
       AND    $A5     
       AND    $A6     
       BMI    L34A8   
       LDA    #$FF    
       STA    $AF,X   
L34A8: INY            
       LDA    $83     
       AND    #$1F    
       BNE    L34B1   
       DEC    $EE     
L34B1: LDA    $DA     
       BNE    L34B9   
       LDA    #$10    
       STA    $DA     
L34B9: STY    $EC     
       CPY    #$02    
       BMI    L34CB   
       LDA    $A7,X   
       AND    #$FE    
       STA    $A7,X   
       LDA    $AB,X   
       AND    #$FE    
       STA    $AB,X   
L34CB: JSR    L3651   
       JSR    L3782   
       JMP    L34D7   
L34D4: JSR    L3C0F   
L34D7: JSR    L34EA   
L34DA: LDA    $8C     
       LSR            
       BCS    L34E7   
       INC    $8C     
       JSR    L33A4   
       JMP    L346F   
L34E7: JMP    L32AB   
L34EA: LDX    $8C     
       LDY    #$00    
L34EE: CPY    $8C     
       BEQ    L3554   
       LDA    #$04    
       STA    $9A     
       LDA.wy $00A7,Y 
       SEC            
       SBC    $A7,X   
       BCS    L3509   
       PHA            
       LDA    #$08    
       STA    $9A     
       PLA            
       EOR    #$FF    
       CLC            
       ADC    #$01    
L3509: STA    $ED     
       BNE    L350F   
       STA    $9A     
L350F: CMP    #$05    
       BCS    L3554   
       LDA    #$02    
       STA    $9B     
       LDA.wy $00AB,Y 
       SEC            
       SBC    $AB,X   
       BCS    L352A   
       PHA            
       LDA    #$01    
       STA    $9B     
       PLA            
       EOR    #$FF    
       CLC            
       ADC    #$01    
L352A: BNE    L352E   
       STA    $9B     
L352E: CMP    #$05    
       BCS    L3554   
       CMP    $ED     
       BEQ    L3548   
       BCC    L353D   
       LDA    $9A     
       JMP    L353F   
L353D: LDA    $9B     
L353F: STA    $ED     
       LDA    $9A     
       ORA    $9B     
       JMP    L354E   
L3548: LDA    $9A     
       ORA    $9B     
       STA    $ED     
L354E: STA    $9A     
       LDA    #$01    
       BNE    L355B   
L3554: INY            
       CPY    #$04    
       BMI    L34EE   
       LDA    #$00    
L355B: BNE    L356D   
       LDA    $A3,X   
       AND    #$DF    
       STA    $A3,X   
L3563: RTS            

L3564: LDA    $9A     
       ORA    #$20    
       STA    $9A     
L356A: JMP    L3606   
L356D: CPY    #$00    
       BEQ    L3575   
       CPX    #$00    
       BNE    L3564   
L3575: LDA.wy $00A3,Y 
       BIT    L3EB9   
       BNE    L3563   
       ORA    #$00    
       BMI    L356A   
       LDA    $A3,X   
       BIT    L3EB9   
       BNE    L3563   
       ORA    #$00    
       BMI    L356A   
       AND    #$7F    
       BEQ    L356A   
       AND.wy $00A3,Y 
       AND    #$0F    
       BEQ    L35A2   
       LDA    $A3,X   
       AND    $9A     
       AND    #$0F    
       BEQ    L3563   
       JMP    L35E7   
L35A2: STY    $9C     
       LDA.wy $00A3,Y 
       AND    #$0F    
       TAY            
       LDA    L3EEF,Y 
       LDY    $9C     
       AND    $A3,X   
       AND    #$0F    
       BEQ    L35C0   
       JSR    L35F2   
       LDX    $9C     
       JSR    L35F2   
       JMP    L361C   
L35C0: STY    $9C     
       LDA    $A3,X   
       AND    #$0F    
       TAY            
       ORA    L3EEF,Y 
       LDY    $9C     
       EOR    #$0F    
       AND    $ED     
       BNE    L361C   
       LDA.wy $00A3,Y 
       AND    $9A     
       BEQ    L361C   
       LDA    $A3,X   
       ORA.wy $00A3,Y 
       ORA    #$A0    
       PHA            
       JSR    L35E7   
       PLA            
       STA    $A3,X   
L35E7: CPY    #$00    
       BNE    L35F2   
       LDA    #$75    
       CLC            
       ADC    $F2     
       STA    $F2     
L35F2: LDA    $A3,X   
       AND    #$0E    
       TAY            
       BIT    $B5     
       BVC    L35FC   
       INY            
L35FC: LDA    L3EDF,Y 
       ORA    #$A0    
       STA    $A3,X   
       JMP    L3611   
L3606: LDA    $A3,X   
       ORA.wy $00A3,Y 
       AND    #$F0    
       ORA    $9A     
       STA    $A3,X   
L3611: LDA    #$28    
       JSR    L39DA   
       CPX    #$00    
       BNE    L361C   
       DEC    $EF     
L361C: RTS            

L361D: STY    $9C     
       LDY    $F2     
       BEQ    L364D   
       DEC    $F2     
       LDA    $E9     
       AND    #$F0    
       STA    $9E     
       LDA    #$01    
       LDY    #$02    
       SED            
       CLC            
L3631: ADC.wy $00E8,Y 
       STA.wy $00E8,Y 
       LDA    #$00    
       DEY            
       BPL    L3631   
       LDA    $E9     
       AND    #$F0    
       CMP    $9E     
       BEQ    L364D   
       LDY    $EF     
       INY            
       CPY    #$07    
       BCS    L364D   
       STY    $EF     
L364D: CLD            
       LDY    $9C     
       RTS            

L3651: LDX    $8C     
       BNE    L3667   
       RTS            

L3656: LDA    $F1     
       AND    #$0F    
       CMP    #$0E    
       BCS    L3664   
       LDA    #$06    
       AND    $83     
       BNE    L3666   
L3664: INC    $EC     
L3666: RTS            

L3667: LDY    #$04    
       LDA    $AB,X   
       CMP    $AB     
       BNE    L367C   
       LDA    $A7,X   
       CMP    $A7     
       BCS    L3677   
       LDY    #$08    
L3677: TYA            
       AND    $A3,X   
       BNE    L3656   
L367C: LDY    #$02    
       LDA    $A7,X   
       CMP    $A7     
       BNE    L3691   
       LDA    $AB,X   
       CMP    $AB     
       BCS    L368C   
       LDY    #$01    
L368C: TYA            
       AND    $A3,X   
       BNE    L3656   
L3691: LDA    SWCHA   
       EOR    #$FF    
       AND    #$0F    
       BEQ    L36B2   
       STA    $F6     
       LDA    $A3,X   
       BEQ    L36A7   
       ASL            
       ASL            
       BMI    L36A6   
       BCS    L36A7   
L36A6: RTS            

L36A7: LDA    $A3,X   
       EOR    #$FF    
       AND    $F6     
       BEQ    L36B1   
       STA    $A3,X   
L36B1: RTS            

L36B2: LDA    $A3,X   
       ASL            
       BMI    L36BA   
       BEQ    L36E3   
       RTS            

L36BA: LDA    $AB,X   
       LSR            
       CMP    $80     
       BCC    L36C6   
       LDA    #$02    
       STA    $A3,X   
       RTS            

L36C6: CLC            
       ADC    #$27    
       CMP    $80     
       BCS    L36D2   
       LDA    #$01    
       STA    $A3,X   
       RTS            

L36D2: LDA    $A3     
       BMI    L36E3   
       LDA    $9F,X   
       AND    #$0F    
       ASL            
       TAY            
       LDA    L3C86,Y 
       AND    $B5     
       BEQ    L36F6   
L36E3: LDA    $B5     
       AND    #$03    
       TAY            
       LDA    L3EDB,Y 
       TAY            
       LDA    L3EEF,Y 
       AND    $A3,X   
       BNE    L36F5   
       STY    $A3,X   
L36F5: RTS            

L36F6: LDA    $A7,X   
       SEC            
       SBC    $A7     
       PHP            
       BCS    L3703   
       EOR    #$FF    
       CLC            
       ADC    #$01    
L3703: STA    $9B     
       LDA    $AB,X   
       SEC            
       SBC    $AB     
       PHP            
       BCS    L3712   
       EOR    #$FF    
       CLC            
       ADC    #$01    
L3712: CMP    $9B     
       BCS    L3721   
       LDA    #$08    
       PLP            
       PLP            
       BCC    L371E   
       LDA    #$04    
L371E: JMP    L3729   
L3721: LDA    #$01    
       PLP            
       BCC    L3728   
       LDA    #$02    
L3728: PLP            
L3729: STA    $A3,X   
       RTS            

L372C: .byte $A9,$00,$95,$A3,$BD,$88,$3E,$95,$A7,$BD,$8C,$3E,$95,$AB,$A9,$FF
       .byte $95,$AF,$60
L373F: LDX    $8C     
       LDA    $A7,X   
       STA    $92     
       LDA    $AB,X   
       STA    $93     
       LDA    $A3,X   
       BIT    L3EDB   
       BEQ    L3757   
       LDA    $92     
       CLC            
       ADC    $EC     
       STA    $92     
L3757: LDA    $A3,X   
       BIT    L3EDC   
       BEQ    L3765   
       LDA    $92     
       SEC            
       SBC    $EC     
       STA    $92     
L3765: LDA    $A3,X   
       BIT    L3EDD   
       BEQ    L3773   
       LDA    $93     
       SEC            
       SBC    $EC     
       STA    $93     
L3773: LDA    $A3,X   
       BIT    L3EDE   
       BEQ    L3781   
       LDA    $93     
       CLC            
       ADC    $EC     
       STA    $93     
L3781: RTS            

L3782: JSR    L373F   
       LDA    #$FF    
       STA    $8E     
       STA    $8F     
       STA    $90     
       STA    $91     
       LDX    $8C     
       LDA    #$BF    
       AND    $A3,X   
       STA    $A3,X   
       LDY    #$03    
L3799: LDA    L3EBC,Y 
       CMP    $92     
       BNE    L37A2   
       STY    $90     
L37A2: CMP    $A7,X   
       BNE    L37A8   
       STY    $8E     
L37A8: DEY            
       BPL    L3799   
       LDY    #$0A    
L37AD: LDA    L3FF1,Y 
       CMP    $93     
       BNE    L37B6   
       STY    $91     
L37B6: CMP    $AB,X   
       BNE    L37BC   
       STY    $8F     
L37BC: DEY            
       BPL    L37AD   
       LDA    $90     
       AND    $91     
       BPL    L37E3   
       BIT    $8E     
       BMI    L37D6   
       LDA    $93     
       STA    $AB,X   
       LDA    #$F3    
       AND    $A3,X   
       STA    $A3,X   
       JMP    L37EB   
L37D6: LDA    $92     
       STA    $A7,X   
       LDA    #$FC    
       AND    $A3,X   
       STA    $A3,X   
       JMP    L37EB   
L37E3: LDA    $93     
       STA    $AB,X   
       LDA    $92     
       STA    $A7,X   
L37EB: LDA    L3EBF   
       CMP    $A7,X   
       BCC    L37FC   
       BEQ    L37FC   
       STA    $A7,X   
       LDA    $A3,X   
       AND    #$FB    
       STA    $A3,X   
L37FC: LDA    L3EBC   
       CMP    $A7,X   
       BCS    L380B   
       STA    $A7,X   
       LDA    $A3,X   
       AND    #$F7    
       STA    $A3,X   
L380B: LDA    L3FFB   
       CMP    $AB,X   
       BCC    L381C   
       BEQ    L381C   
       STA    $AB,X   
       LDA    $A3,X   
       AND    #$FD    
       STA    $A3,X   
L381C: LDA    L3FF1   
       CMP    $AB,X   
       BCS    L382B   
       STA    $AB,X   
       LDA    $A3,X   
       AND    #$FE    
       STA    $A3,X   
L382B: LDA    $90     
       ORA    $91     
       BPL    L384B   
       LDA    $90     
       ORA    $8F     
       BMI    L383E   
       LDA    $8F     
       STA    $91     
       JMP    L384B   
L383E: LDA    $8E     
       ORA    $91     
       BPL    L3847   
       JMP    L38F7   
L3847: LDA    $8E     
       STA    $90     
L384B: LDA    $AF,X   
       CMP    #$F0    
       BCS    L3857   
       AND    #$0F    
       CMP    #$0F    
       BCC    L386A   
L3857: LDA    $90     
       ASL            
       ASL            
       ASL            
       ASL            
       STA    $AF,X   
       LDA    $91     
       AND    #$0F    
       ORA    $AF,X   
       STA    $AF,X   
       JMP    L38F7   
L386A: LDA    $AF,X   
       LSR            
       LSR            
       LSR            
       LSR            
       CMP    $90     
       BNE    L38AB   
       LDA    $AF,X   
       AND    #$0F    
       CMP    $91     
       BNE    L387F   
       JMP    L38F1   
L387F: BCC    L3883   
       LDA    $91     
L3883: TAX            
       INX            
       LDA    #$01    
       LDY    $90     
L3889: BEQ    L3890   
       ASL            
       DEY            
       JMP    L3889   
L3890: PHA            
       LDA    $F1     
       AND    #$0F    
       CMP    #$08    
       BCS    L38A1   
       PLA            
       PHA            
       EOR    #$FF    
       AND    $B7,X   
       STA    $B7,X   
L38A1: PLA            
       AND    $8D     
       ORA    $B7,X   
       STA    $B7,X   
       JMP    L38DC   
L38AB: BCC    L38AF   
       LDA    $90     
L38AF: TAX            
       LDA    $91     
       ASL            
       TAY            
       INY            
       LDA    #$01    
       DEX            
       INX            
L38B9: BEQ    L38C0   
       ASL            
       DEX            
       JMP    L38B9   
L38C0: PHA            
       LDA    $F1     
       AND    #$0F    
       CMP    #$08    
       BCS    L38D3   
       PLA            
       PHA            
       EOR    #$FF    
       AND.wy $00C2,Y 
       STA.wy $00C2,Y 
L38D3: PLA            
       AND    $8D     
       ORA.wy $00C2,Y 
       STA.wy $00C2,Y 
L38DC: JSR    L38F8   
       LDX    $8C     
       LDA    $90     
       ASL            
       ASL            
       ASL            
       ASL            
       STA    $AF,X   
       LDA    $91     
       AND    #$0F    
       ORA    $AF,X   
       STA    $AF,X   
L38F1: LDA    #$40    
       ORA    $A3,X   
       STA    $A3,X   
L38F7: RTS            

L38F8: LDA    #$00    
       STA    $9B     
       LDY    #$01    
       LDX    #$01    
L3900: LDA.wy $00C3,Y 
       STA    $9A     
       LDA    $B7,X   
       LSR            
       AND    $B7,X   
       AND.wy $00C2,Y 
       AND.wy $00C4,Y 
       ORA    #$08    
       ORA.wy $00C3,Y 
       STA.wy $00C3,Y 
       EOR    $9A     
       BEQ    L3929   
       STX    $9A     
       TAX            
       LDA    L3EC1,X 
       CLC            
       ADC    $9B     
       STA    $9B     
       LDX    $9A     
L3929: INX            
       INY            
       INY            
       CPY    #$15    
       BCC    L3900   
       LDX    #$20    
       LDA    $9B     
       BEQ    L395B   
       CMP    #$21    
       BCC    L3941   
       CLC            
       ADC    #$51    
       STA    $9B     
       LDX    #$02    
L3941: TXA            
       JSR    L3DF7   
       LDA    $9B     
       LSR            
       LSR            
       CLC            
       ADC    $EE     
       CMP    #$3F    
       BCC    L3952   
       LDA    #$3F    
L3952: STA    $EE     
       LDA    $9B     
       CLC            
       ADC    $F2     
       STA    $F2     
L395B: RTS            

L395C: LDX    #$02    
       LDA    #$FF    
L3960: AND    $C2,X   
       INX            
       INX            
       CPX    #$15    
       BCC    L3960   
       AND    #$07    
       CMP    #$07    
       RTS            

L396D: LDA    L3DF6   
       STA    $F1     
L3972: LDA    #$00    
       STA    $E8     
       STA    $E9     
       STA    $EA     
       LDA    #$3F    
       STA    $EE     
       LDA    #$03    
       STA    $EF     
L3982: LDA    #$28    
       STA    $F4     
       LDA    #$7E    
       STA    $80     
       LDX    #$00    
       STX    $82     
       STX    $81     
       STX    $F0     
L3992: LDA    L3E94,X 
       BMI    L399C   
       STA    $B7,X   
       INX            
       BPL    L3992   
L399C: LDX    #$13    
L399E: LDA    L3E80,X 
       STA    $9F,X   
       DEX            
       BPL    L399E   
       LDA    $F1     
       LDX    #$03    
L39AA: AND    #$07    
       TAY            
       ASL            
       ASL            
       ASL            
       ASL            
       STA    $9F,X   
       TYA            
       CLC            
       ADC    #$01    
       DEX            
       BNE    L39AA   
       LDA    $F1     
       AND    #$0F    
       LDX    #$03    
       TAY            
       LSR            
       STA    $9A     
L39C4: TYA            
       AND    #$0F    
       ORA    $9F,X   
       STA    $9F,X   
       TYA            
       CLC            
       ADC    $9A     
       CMP    #$10    
       BCC    L39D5   
       LDA    #$0F    
L39D5: TAY            
       DEX            
       BNE    L39C4   
       RTS            

L39DA: PHA            
       LDA    $AB,X   
       LSR            
       CMP    $80     
       BCS    L39F0   
       CMP    $99     
       BCC    L39F0   
       PLA            
L39E7: STA    $DB     
       LDA    #$00    
       STA    $D9     
       STA    $E7     
       RTS            

L39F0: PLA            
       RTS            

L39F2: LDX    #$00    
       JSR    L39FC   
       INX            
       JSR    L39FC   
       RTS            

L39FC: LDY    $D8,X   
       BEQ    L3A03   
       DEC    $D8,X   
       RTS            

L3A03: LDA    $E6,X   
       BEQ    L3A46   
       DEC    $E6,X   
       LDA    $DC,X   
       ASL            
       BCC    L3A10   
       INC    $DE,X   
L3A10: ASL            
       BCC    L3A15   
       DEC    $DE,X   
L3A15: ASL            
       BCC    L3A1A   
       INC    $E0,X   
L3A1A: ASL            
       BCC    L3A1F   
       DEC    $E0,X   
L3A1F: ASL            
       BCC    L3A24   
       INC    $E2,X   
L3A24: ASL            
       BCC    L3A29   
       DEC    $E2,X   
L3A29: ASL            
       BCC    L3A2E   
       INC    $E4,X   
L3A2E: ASL            
       BCC    L3A33   
       DEC    $E4,X   
L3A33: LDA    $DE,X   
       STA    $D8,X   
       LDA    $E0,X   
       STA    AUDC0,X 
       LDA    $E2,X   
       STA    AUDF0,X 
       LDA    $E4,X   
       STA    AUDV0,X 
       JMP    L3A7F   
L3A46: LDY    $DA,X   
       LDA    L3CA6,Y 
       INY            
       STA    $DC,X   
       LDA    L3CA6,Y 
       BEQ    L3A73   
       INY            
       STA    $DE,X   
       LDA    L3CA6,Y 
       INY            
       STA    $E0,X   
       LDA    L3CA6,Y 
       INY            
       STA    $E2,X   
       LDA    L3CA6,Y 
       INY            
       STA    $E4,X   
       LDA    L3CA6,Y 
       INY            
       STA    $E6,X   
       STY    $DA,X   
       JMP    L3A33   
L3A73: STA    $E4,X   
       STA    $E6,X   
       STA    AUDV0,X 
       STA    $DA,X   
       LDA    #$05    
       STA    $D8,X   
L3A7F: RTS            

L3A80: LDA    $80     
       ASL            
       SEC            
       SBC    #$1D    
       SEC            
       SBC    $AB     
       TAX            
       AND    #$FE    
       BEQ    L3AB1   
       BCC    L3A9E   
       CPX    #$04    
       BMI    L3A97   
       JSR    L3A97   
L3A97: DEC    $EB     
       BPL    L3AB1   
       JMP    L3AD3   
L3A9E: CPX    #$FE    
       BPL    L3AA5   
       JSR    L3AA5   
L3AA5: LDX    $EB     
       INX            
       STX    $EB     
       CPX    #$04    
       BMI    L3AB1   
       JSR    L3AB2   
L3AB1: RTS            

L3AB2: LDX    #$00    
       STX    $EB     
       LDX    $80     
       CPX    #$7E    
       BEQ    L3ACE   
       INX            
       STX    $80     
       LDA    L3D75,X 
       BMI    L3ACB   
       BEQ    L3ACD   
       DEC    $81     
       JMP    L3ACD   
L3ACB: DEC    $82     
L3ACD: RTS            

L3ACE: LDX    #$03    
       STX    $EB     
       RTS            

L3AD3: LDX    #$03    
       STX    $EB     
       LDX    $80     
       CPX    #$27    
       BEQ    L3AEF   
       LDA    L3D75,X 
       BMI    L3AE9   
       BEQ    L3AE6   
       INC    $81     
L3AE6: JMP    L3AEB   
L3AE9: INC    $82     
L3AEB: DEX            
       STX    $80     
       RTS            

L3AEF: LDX    #$00    
       STX    $EB     
       RTS            

L3AF4: STA    HMCLR   
       STA    WSYNC   
       LDA    #$D3    
       STA    HMP0    
       AND    #$0F    
       TAX            
       LDA    #$E1    
       STA    HMP1    
       STA    VDELP0  
       STA    VDELP1  
L3B07: DEX            
       BNE    L3B07   
       STX    RESP0   
       STX    RESP1   
       STX    REFP0   
       STX    REFP1   
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       STX    WSYNC   
       STX    HMOVE   
       RTS            

L3B1D: STY    $9A     
       LDA    ($96),Y 
       STA    $9B     
       STA    WSYNC   
       LDA    ($8C),Y 
       STA    GRP0    
       LDA    ($8E),Y 
       STA    GRP1    
       LDA    ($90),Y 
       STA    GRP0    
       LDA    ($92),Y 
       TAX            
       LDA    ($94),Y 
       LDY    $9B     
       STX    GRP1    
       STA    GRP0    
       STY    GRP1    
       STA    GRP0    
       LDY    $9A     
       DEY            
       BPL    L3B1D   
       INY            
       STY    GRP0    
       STY    GRP1    
       STY    GRP0    
       RTS            

L3B4D: LDA    #$28    
       LDY    $F2     
       BEQ    L3B55   
       LDA    $B5     
L3B55: STA    COLUP0  
       STA    COLUP1  
       JSR    L3AF4   
       LDA    #$86    
       STA    COLUBK  
       STA    COLUPF  
       LDY    #$07    
       JSR    L3B1D   
       STA    HMCLR   
       LDA    #$10    
       STA    VDELP0  
       STA    VDELP1  
       STA    HMP0    
       LDA    $EF     
       ASL            
       TAX            
       LDA    L3FE3,X 
       STA    NUSIZ1  
       AND    #$08    
       TAY            
       LDA    L3EC0,Y 
       STA    $86     
       LDA    L3FE4,X 
       STA    NUSIZ0  
       AND    #$08    
       STA    RESP1   
       STA    RESP0   
       TAY            
       LDA    L3EC0,Y 
       STA    $87     
       LDA    $EE     
       STA    WSYNC   
       STA    HMOVE   
       LSR            
       LSR            
       TAX            
       LDA    #$00    
       CPX    #$08    
       BMI    L3BA5   
       LDA    L3FD3,X 
L3BA5: STA    PF2     
       LDA    #$20    
       STA    CTRLPF  
       LDA    #$FF    
       STA    ENABL   
       STA    PF0     
       CPX    #$08    
       BPL    L3BB8   
       LDA    L3FD3,X 
L3BB8: STA    PF1     
       LDA    #$09    
       STA    $9A     
       LDA    #$06    
       STA    $9B     
       LDY    $87     
       LDX    $86     
       LDA    #$16    
       STA    $9E     
L3BCA: STA    WSYNC   
       STA    COLUBK  
       LDA    L3F00,X 
       STA    GRP1    
       LDA    L3F66,X 
       STA    COLUP1  
       STA    COLUP0  
       LDA    $9E     
       DEX            
       STA    COLUPF  
       LDA    L3F00,Y 
       STA    GRP0    
       DEY            
       LDA    #$84    
       DEC    $9B     
       NOP            
       STA    COLUPF  
       STA    COLUBK  
       BNE    L3BFA   
       LDA    #$FF    
       STA    PF1     
       STA    PF2     
       LDA    #$84    
       STA    $9E     
L3BFA: LDA    #$22    
       DEC    $9A     
       BPL    L3BCA   
       LDA    #$00    
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    COLUBK  
       STA    PF0     
       STA    ENABL   
       STA    COLUPF  
       RTS            

L3C0F: LDA    #$FF    
       STA    $AF,X   
       LDA    #$01    
       STA    $EC     
       JSR    L373F   
       LDA    $92     
       STA    $A7,X   
       LDA    $93     
       STA    $AB,X   
       LDA    L3EBF   
       SEC            
       SBC    #$08    
       CMP    $A7,X   
       BEQ    L3C3D   
       BCC    L3C3D   
       STA    $A7,X   
       LDA    $A3,X   
       BIT    L3EBA   
       BNE    L3C81   
       AND    #$FB    
       ORA    #$18    
       STA    $A3,X   
L3C3D: LDA    L3EBC   
       CLC            
       ADC    #$08    
       CMP    $A7,X   
       BCS    L3C56   
       STA    $A7,X   
       LDA    $A3,X   
       BIT    L3EBA   
       BNE    L3C81   
       AND    #$F7    
       ORA    #$14    
       STA    $A3,X   
L3C56: LDA    L3FFB   
       CMP    $AB,X   
       BCC    L3C6C   
       BEQ    L3C6C   
       LDA    $A3,X   
       BIT    L3EBB   
       BEQ    L3C81   
       AND    #$FD    
       ORA    #$01    
       STA    $A3,X   
L3C6C: LDA    L3FF1   
       CMP    $AB,X   
       BCS    L3C80   
       LDA    $A3,X   
       BIT    L3EBB   
       BEQ    L3C81   
       AND    #$FE    
       ORA    #$02    
       STA    $A3,X   
L3C80: RTS            

L3C81: LDA    #$90    
       STA    $A3,X   
       RTS            

L3C86: .byte $FE
L3C87: .byte $0E,$CC,$0E,$0C,$0E,$08,$0E,$FE,$06,$CC,$06,$0C,$06,$08,$06,$FE
       .byte $02,$CC,$02,$0C,$02,$08,$02,$FE,$00,$CC,$00,$0C,$00,$08,$00
L3CA6: .byte $00,$00,$05,$03,$04,$0F,$1C,$08,$00,$00,$08,$01,$01,$1E,$0C,$20
       .byte $00,$04,$07,$04,$06,$02,$00,$00,$06,$05,$0C,$1F,$03,$0E,$00,$00
       .byte $09,$03,$0C,$03,$07,$02,$00,$00,$09,$03,$08,$03,$0F,$06,$00,$00
       .byte $04,$02,$0D,$0C,$04,$01,$00,$00,$01,$03,$0C,$11,$0C,$02,$01,$0C
       .byte $0C,$0F,$0C,$02,$00,$00,$09,$06,$0F,$08,$08,$1E,$00,$00,$18,$01
       .byte $0C,$1C,$0C,$0C,$00,$00,$00,$00,$00,$00
L3D00: .byte $06,$06,$06,$06,$06,$06,$06,$06,$32,$32,$32,$32,$32,$32,$32,$32
       .byte $00
L3D11: .byte $06,$06,$06,$06,$32,$32,$32,$32,$06,$06,$06,$06,$32,$32,$32,$32
       .byte $00
L3D22: .byte $06,$06,$32,$32,$06,$06,$32,$32,$06,$06,$32,$32,$06,$06,$32,$32
       .byte $00
L3D33: .byte $06,$32,$06,$32,$06,$32,$06,$32,$06,$32,$06,$32,$06,$32,$06,$32
       .byte $00
L3D44: .byte $06,$06,$32,$32,$06,$06,$32,$32,$82,$82,$00,$00,$82,$82,$00,$00
       .byte $00
L3D55: .byte $06,$32,$06,$32,$06,$32,$06,$32,$82,$00,$82,$00,$82,$00,$82,$00
       .byte $00
L3D66: .byte $06,$06,$06,$06,$32,$32,$32,$32,$82,$82,$82,$82,$00,$00,$00
L3D75: .byte $00,$00,$80,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$80,$01
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$80,$01,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$01,$80,$01,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$01,$80,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$80,$01
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$80,$01,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$01,$80,$01,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$01,$80,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$80,$01
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$80,$01,$00,$00,$00
L3DF4: .byte $00,$11
L3DF6: .byte $26
L3DF7: STA    $DA     
       LDA    #$00    
       STA    $D8     
       STA    $E6     
       RTS            

L3E00: .byte $3C,$66,$66,$66,$66,$66,$66,$3C,$3C,$18,$18,$18,$18,$18,$38,$18
       .byte $7E,$60,$60,$3C,$06,$06,$46,$3C,$3C,$46,$06,$0C,$0C,$06,$46,$3C
       .byte $0C,$0C,$0C,$7E,$4C,$2C,$1C,$0C,$7C,$46,$06,$06,$7C,$60,$60,$7E
       .byte $3C,$66,$66,$66,$7C,$60,$62,$3C,$18,$18,$18,$18,$0C,$06,$42,$7E
       .byte $3C,$66,$66,$3C,$3C,$66,$66,$3C,$3C,$46,$06,$3E,$66,$66,$66,$3C
       .byte $36,$34,$36,$34,$36,$30,$78,$FC,$B6,$A2,$B6,$A4,$B6,$80,$80,$80
       .byte $4C,$44,$EC,$A8,$AC,$00,$00,$00,$78,$84,$B4,$A4,$B4,$84,$78,$00
       .byte $45,$45,$5D,$55,$5D,$00,$00,$00,$DC,$44,$DC,$44,$DC,$00,$00,$00
L3E80: .byte $8F,$00,$00,$00,$00,$08,$04,$08,$3C,$5A,$3C,$20,$FA,$CA,$CA,$CA
       .byte $FF,$FF,$FF,$FF
L3E94: .byte $10,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$10,$00,$08,$00,$08
       .byte $00,$08,$00,$08,$00,$08,$00,$08,$00,$08,$00,$08,$00,$08,$00,$08
       .byte $00
L3EB5: .byte $FF,$00,$00,$00
L3EB9: .byte $20
L3EBA: .byte $10
L3EBB: .byte $0C
L3EBC: .byte $5A,$48,$32
L3EBF: .byte $20
L3EC0: .byte $0A
L3EC1: .byte $00,$20,$20,$40,$20,$40,$40,$13
L3EC9: .byte $37,$47,$58,$69,$37,$47,$58,$69,$37,$47,$58,$69,$37,$47,$58,$69
       .byte $17,$27
L3EDB: .byte $08
L3EDC: .byte $04
L3EDD: .byte $02
L3EDE: .byte $01
L3EDF: .byte $09,$05,$06,$0A,$06,$05,$06,$07,$09,$0A,$0A,$0B,$0C,$0D,$0E,$0F
L3EEF: .byte $0F,$02,$01,$03,$08,$0A,$09,$0B,$04,$06,$05,$07,$0C,$0E,$0D,$0F
       .byte $00
L3F00: .byte $00
L3F01: .byte $00
L3F02: .byte $00
L3F03: .byte $00,$00,$00,$00,$00,$00,$00,$00,$66,$44,$F9,$FF,$FF,$63,$12,$1E
       .byte $08,$00,$00,$00,$00,$00,$00,$00,$66,$66,$7C,$FF,$FF,$46,$42,$7E
       .byte $3C,$00,$00,$00,$00,$00,$00,$00,$66,$66,$FF,$FF,$F0,$F0,$90,$10
       .byte $F0,$00,$00,$00,$00,$00,$00,$00,$66,$66,$7E,$7E,$7E,$7E,$4A,$42
       .byte $7E,$00,$00,$00,$00,$00,$00,$00,$5F,$55,$D5,$FF,$BF,$FF,$BB,$18
       .byte $0C,$02,$00,$00,$00,$00,$00,$00,$00,$63,$63,$1D,$7F,$7F,$7F,$43
       .byte $08,$10,$08
L3F66: .byte $00
L3F67: .byte $00
L3F68: .byte $00
L3F69: .byte $00,$00,$00,$00,$00,$00,$00,$00,$3C,$3C,$D4,$D8,$D6,$D6,$D6,$D6
       .byte $D6,$01,$01,$01,$00,$00,$00,$00,$3C,$3C,$D4,$D8,$D8,$D6,$D6,$D6
       .byte $D6,$01,$01,$01,$00,$00,$00,$00,$DE,$DE,$28,$2A,$26,$26,$26,$26
       .byte $26,$01,$01,$01,$00,$00,$00,$00,$2A,$2C,$28,$56,$26,$26,$26,$26
       .byte $26,$01,$01,$01,$00,$00,$00,$00,$08,$08,$16,$16,$16,$16,$16,$18
       .byte $3E,$3E,$01,$01,$01,$00,$00,$00,$00,$08,$08,$16,$16,$16,$16,$16
       .byte $18,$3E,$3E,$01,$01,$01,$00,$00,$00,$00
L3FD3: .byte $00,$80,$C0,$E0,$F0,$F8,$FC,$FE,$00,$01,$03,$07,$0F,$1F,$3F,$7F
L3FE3: .byte $00
L3FE4: .byte $00,$08,$00,$08,$08,$09,$08,$09,$09,$0B,$09,$0B,$0B
L3FF1: .byte $FA,$E2,$CA,$B2,$9A,$82,$6A,$52,$3A,$22
L3FFB: .byte $0A,$24,$31,$24,$31
