; Disassembly of roms/Zoo Fun.bin
; Disassembled Tue Oct  6 15:24:49 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Zoo Fun.bin
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
PF1     =  $0E
PF2     =  $0F
RESP0   =  $10
RESP1   =  $11
RESM1   =  $13
AUDC0   =  $15
AUDC1   =  $16
AUDF0   =  $17
AUDF1   =  $18
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
CXP0FB  =  $32
CXP1FB  =  $33
CXPPMM  =  $37
INPT4   =  $3C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM8T   =  $0295
TIM64T  =  $0296

       ORG $F000

START:
       SEI            
       CLD            
       LDX    #$FF    
       TXS            
       INX            
       TXA            
LF007: STA    VSYNC,X 
       INX            
       BNE    LF007   
       JSR    LF86D   
       LDA    #$FF    
       STA    $DB     
       STA    $F0     
       LDX    #$0A    
       LDA    #$FC    
LF019: STA    $AF,X   
       DEX            
       DEX            
       BPL    LF019   
       LDA    #$FE    
       STA    $A4     
LF023: LDY    #$FF    
       STY    VSYNC   
       STY    VBLANK  
       LDA    #$17    
       STA    TIM8T   
       INC    $DC     
       DEC    $DD     
       INC    $DE     
       INC    $DF     
LF036: LDY    INTIM   
       BNE    LF036   
       STY    WSYNC   
       STY    VSYNC   
       LDA    #$17    
       STA    TIM64T  
       LDA    SWCHB   
       LSR            
       BCS    LF077   
       LDA    $EB     
       BMI    LF050   
LF04E: DEC    $EB     
LF050: LDA    $C6     
       STA    $EF     
       LDX    #$9C    
       LDA    #$00    
LF058: STA    $4E,X   
       DEX            
       BNE    LF058   
       LDA    $EF     
       STA    $C6     
       JSR    LF069   
       JSR    LF86D   
       BPL    LF0CC   
LF069: CLC            
       ADC    #$01    
       CMP    #$0A    
       BCC    LF074   
       SBC    #$0A    
       ORA    #$10    
LF074: STA    $AA     
       RTS            

LF077: LDX    #$00    
       LSR            
       BCS    LF09B   
       LDA    $EB     
       BPL    LF04E   
       LDA    $DA     
       BEQ    LF088   
       DEC    $DA     
       BPL    LF09D   
LF088: STX    $A9     
       STX    $A8     
       INC    $EF     
       LDA    $EF     
       AND    #$0F    
       STA    $EF     
       STA    $C6     
       JSR    LF069   
       LDX    #$1E    
LF09B: STX    $DA     
LF09D: LDA    $E9     
       BMI    LF0DF   
       LDA    INPT4   
       BMI    LF0BF   
       LDA    $EB     
       BPL    LF04E   
       LDA    $C6     
       STA    $EF     
       LDA    #$30    
       STA    $80     
       LDA    #$FF    
       STA    $E9     
       INC    $EB     
       LDY    #$00    
       STY    $AA     
       STY    $E5     
       BEQ    LF0CC   
LF0BF: LDA    SWCHA   
       AND    #$F0    
       CMP    #$F0    
       BEQ    LF0CA   
       LDY    #$FF    
LF0CA: STY    $E5     
LF0CC: LDA    #$00    
       STA    AUDV0   
       STA    AUDV1   
       JSR    LF214   
       LDX    #$01    
       STX    CTRLPF  
       INX            
       STX    $A7     
       JMP    LF60C   
LF0DF: LDA    $C4     
       BNE    LF104   
       LDA    $DB     
       BPL    LF10A   
       LDA    LFC34   
       STA    $9A     
       LDA    LFC35   
       STA    $9B     
       LDA    LFC36   
       STA    $F6     
       LDA    LFC37   
       STA    $F7     
       LDA    #$00    
       STA    $F5     
       STA    $DB     
       JMP    LF10A   
LF104: LDA    #$FF    
       STA    $F5     
       STA    $DB     
LF10A: LDX    $F0     
       BPL    LF111   
       INX            
       STX    $CA     
LF111: LDA    $CB     
       CMP    $CA     
       BEQ    LF133   
       BCC    LF133   
       STA    $CA     
       TAY            
       LDA    LFC38,Y 
       STA    $F1     
       INY            
       INY            
       INY            
       INY            
       INY            
       INY            
       INY            
       LDA    LFC38,Y 
       STA    $F2     
       LDA    #$00    
       STA    $F0     
       STA    AUDV1   
LF133: LDA    #$00    
       STA    $CB     
       LDY    $F0     
       BMI    LF15B   
       BNE    LF159   
       LDA    ($F1),Y 
       STA    AUDV0   
       BEQ    LF159   
       LSR            
       LSR            
       LSR            
       LSR            
       STA    AUDC0   
       INY            
       LDA    ($F1),Y 
       STA    AUDF0   
       LSR            
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $F0     
       INC    $F1     
       INC    $F1     
LF159: DEC    $F0     
LF15B: LDY    $DB     
       BMI    LF1A4   
       BNE    LF187   
       LDA    ($9A),Y 
       BEQ    LF19F   
       PHA            
       AND    #$0F    
       TAY            
       LDA    LFE98,Y 
       BNE    LF170   
       STA    AUDV1   
LF170: STA    AUDF1   
       STA    $FB     
       LDA    #$05    
       STA    AUDC1   
       PLA            
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $F3     
       STA    $F4     
       INC    $9A     
       LDY    #$06    
       STY    $DB     
LF187: DEC    $F4     
       BNE    LF1A1   
       LDA    $F3     
       STA    $F4     
       DEY            
       STY    $DB     
       LDA    $FB     
       BEQ    LF19B   
       INY            
       INY            
       INY            
       INY            
       TYA            
LF19B: STA    AUDV1   
       BPL    LF1A1   
LF19F: DEC    $DB     
LF1A1: JSR    LF922   
LF1A4: LDA    $E6     
       BPL    LF1AB   
       JMP    LF5BB   
LF1AB: LDA    $83     
       BEQ    LF1C2   
       LDA    $DF     
       AND    #$0F    
       BNE    LF1D5   
       LDX    $80     
       BEQ    LF1D8   
       LDA    #$01    
       JSR    LFFD3   
       DEC    $83     
       BNE    LF1D5   
LF1C2: LDA    $DF     
       AND    #$3F    
       BNE    LF1D5   
       LDX    $80     
       BEQ    LF1D8   
       DEX            
       TXA            
       STA    $80     
       LDA    #$02    
       JSR    LF878   
LF1D5: JMP    LF1EC   
LF1D8: LDX    #$FF    
       STX    $E6     
       INX            
       STX    $C3     
       STX    $83     
       LDA    #$30    
       STA    $80     
       LDA    #$07    
       STA    $CB     
       JMP    LF5BB   
LF1EC: LDY    $C4     
       LDA    LFEB0,Y 
       STA    $E0     
       LDA    $EF     
       AND    #$0F    
       TAY            
       LDA    $E0     
       CPY    #$05    
       BCC    LF206   
       CPY    #$0A    
       BCC    LF20A   
       AND    #$F9    
       BNE    LF20C   
LF206: AND    #$FB    
       BNE    LF20C   
LF20A: AND    #$FD    
LF20C: STA    $E0     
       JSR    LF214   
       JMP    LF23D   
LF214: LDX    #$00    
       LDY    $C4     
LF218: LDA    LFC0F,Y 
       STA    $9E,X   
       INY            
       INY            
       INY            
       INY            
       LDA    LFC0F,Y 
       STA    $98,X   
       INY            
       INY            
       INY            
       INY            
       LDA    LFC0F,Y 
       STA    $AC,X   
       INX            
       CPX    #$02    
       BEQ    LF23C   
       CLC            
       LDA    #$0C    
       ADC    $C4     
       TAY            
       BNE    LF218   
LF23C: RTS            

LF23D: LDA    $C3     
       LSR            
       LSR            
       BCC    LF255   
       JSR    LF348   
       JSR    LF37C   
       BCS    LF268   
       JSR    LF348   
       JSR    LF37C   
       BCS    LF268   
       BCC    LF26E   
LF255: LSR            
       BCC    LF271   
       JSR    LF351   
       JSR    LF37C   
       BCS    LF268   
       JSR    LF351   
       JSR    LF37C   
       BCC    LF26E   
LF268: LDA    #$F9    
       AND    $C3     
       STA    $C3     
LF26E: JMP    LF3D8   
LF271: LDA    SWCHA   
       STA    $BA     
       LDA    $DC     
       LSR            
       BCC    LF2A2   
       LDA    $BA     
       ASL            
       BMI    LF290   
       JSR    LF855   
       INC    $DF     
       JSR    LF36B   
       LDA    #$06    
       CMP    $93     
       BCC    LF290   
       STA    $93     
LF290: LDA    $BA     
       BMI    LF2A2   
       JSR    LF855   
       JSR    LF35A   
       LDA    #$90    
       CMP    $93     
       BCS    LF2A2   
       STA    $93     
LF2A2: LDA    $C4     
       BNE    LF2CC   
       LDA    $BA     
       AND    #$20    
       BNE    LF2B9   
       JSR    LF855   
       DEC    $92     
       LDA    #$14    
       CMP    $92     
       BCC    LF2B9   
       STA    $92     
LF2B9: LDA    $BA     
       AND    #$10    
       BNE    LF26E   
       JSR    LF855   
       INC    $92     
       LDA    #$BE    
       CMP    $92     
       BCS    LF26E   
       STA    $92     
LF2CC: LDA    $C3     
       LSR            
       BCC    LF2E6   
       LDA    $BA     
       AND    #$20    
       BNE    LF2E9   
       LDA    $D0     
       BNE    LF2E6   
       LDA    #$FF    
       STA    $D0     
       JSR    LF317   
       LDA    #$02    
       STA    $CB     
LF2E6: JMP    LF3D8   
LF2E9: LDA    $BA     
       AND    #$10    
       BNE    LF301   
       LDA    $D0     
       BNE    LF2E6   
       LDA    #$FF    
       STA    $D0     
       JSR    LF332   
       LDA    #$02    
       STA    $CB     
       JMP    LF3D8   
LF301: LDA    #$00    
       STA    $D0     
       BEQ    LF2E6   
LF307: LDX    $C4     
       DEX            
       LDA    LFC00,X 
       STA    $E7     
       LDA    LFC03,X 
       STA    $E8     
       LDY    #$00    
       RTS            

LF317: JSR    LF307   
LF31A: LDA    ($E7),Y 
       CMP    $92     
       BNE    LF32F   
       INY            
       LDA    ($E7),Y 
       BEQ    LF32E   
LF325: STA    $92     
       TAX            
       LDA    $C3     
       BPL    LF32E   
       STX    $C0     
LF32E: RTS            

LF32F: INY            
       BNE    LF31A   
LF332: JSR    LF307   
LF335: LDA    ($E7),Y 
       CMP    $92     
       BNE    LF345   
       TYA            
       BEQ    LF32E   
       DEY            
       LDA    ($E7),Y 
       BEQ    LF32E   
       BNE    LF325   
LF345: INY            
       BNE    LF335   
LF348: INC    $92     
       LDA    $C3     
       BPL    LF350   
       INC    $C0     
LF350: RTS            

LF351: DEC    $92     
       LDA    $C3     
       BPL    LF359   
       DEC    $C0     
LF359: RTS            

LF35A: INC    $93     
       LDA    $C3     
       BPL    LF36A   
       INC    $C1     
       LDA    #$88    
       CMP    $C1     
       BCS    LF36A   
       STA    $C1     
LF36A: RTS            

LF36B: DEC    $93     
       LDA    $C3     
       BPL    LF37B   
       DEC    $C1     
       LDA    #$0C    
       CMP    $C1     
       BCC    LF37B   
       STA    $C1     
LF37B: RTS            

LF37C: JSR    LF307   
LF37F: LDA    ($E7),Y 
       BEQ    LF389   
       CMP    $92     
       BNE    LF38B   
       SEC            
       RTS            

LF389: CLC            
       RTS            

LF38B: INY            
       BNE    LF37F   
LF38E: JSR    LF307   
LF391: LDA    ($E7),Y 
       CMP    $C0     
       BNE    LF3D5   
LF397: INY            
       LDA    ($E7),Y 
       BEQ    LF39E   
       BNE    LF3A2   
LF39E: LDY    #$00    
       LDA    ($E7),Y 
LF3A2: TAX            
       LDA    $EF     
       AND    #$0F    
       CMP    #$04    
       BCC    LF3D2   
       CMP    #$08    
       BCC    LF3C4   
       CMP    #$0C    
       BCC    LF3B9   
       CPX    $92     
       BEQ    LF397   
       BNE    LF3D2   
LF3B9: CPX    $92     
       BNE    LF3D2   
       LDA    $C3     
       LSR            
       BCS    LF3D2   
       BCC    LF397   
LF3C4: CPX    $92     
       BNE    LF3D2   
       LDA    $C3     
       LSR            
       BCS    LF3D2   
       LDA    $DF     
       LSR            
       BCS    LF3D2   
LF3D2: STX    $C0     
       RTS            

LF3D5: INY            
       BNE    LF391   
LF3D8: LDA    $C4     
       BNE    LF405   
       LDA    $DF     
       BNE    LF405   
       LDY    $D6     
       CPY    #$03    
       BEQ    LF3E9   
       INY            
       BNE    LF3EC   
LF3E9: DEY            
       DEY            
       DEY            
LF3EC: STY    $D6     
       LDA    LFE38,Y 
       STA    $C1     
       LDA    LFE3C,Y 
       STA    $C0     
       LDY    $D5     
       CPY    #$02    
       BEQ    LF401   
       INY            
       BNE    LF403   
LF401: DEY            
       DEY            
LF403: STY    $D5     
LF405: LDY    $D5     
       BEQ    LF412   
       DEY            
       BEQ    LF410   
       LDY    #$06    
       BNE    LF412   
LF410: LDY    #$03    
LF412: LDA    $DC     
       LSR            
       LSR            
       LSR            
       LSR            
       BCC    LF429   
       INY            
       LDA    LFC06,Y 
       STA    $A0     
LF420: INY            
       LDA    LFC06,Y 
       STA    $CE     
       JMP    LF431   
LF429: LDA    LFC06,Y 
       STA    $A0     
       INY            
       BNE    LF420   
LF431: LDA    $C4     
       BNE    LF498   
       LDA    CXPPMM  
       ASL            
       BCC    LF498   
       LDX    $D5     
       INX            
       STX    $C4     
       DEX            
       BEQ    LF479   
       DEX            
       BEQ    LF45F   
       LDA    #$19    
       STA    $92     
       LDA    #$23    
       STA    $93     
       LDA    #$05    
       STA    CTRLPF  
       LDA    #$90    
       STA    $C0     
       LDA    #$5A    
       STA    $C1     
       LDA    #$FF    
       STA    $D2     
       BNE    LF491   
LF45F: LDA    #$B4    
       STA    $92     
       LDA    #$1E    
       STA    $93     
       LDA    #$01    
       STA    CTRLPF  
       LDA    #$2C    
       STA    $C0     
       LDA    #$1E    
       STA    $C1     
       LDA    #$00    
       STA    $D2     
       BEQ    LF491   
LF479: LDA    #$19    
       STA    $92     
       LDA    #$7D    
       STA    $93     
       LDA    #$05    
       STA    CTRLPF  
       LDA    #$B2    
       STA    $C0     
       LDA    #$34    
       STA    $C1     
       LDA    #$FF    
       STA    $D2     
LF491: LDA    #$06    
       STA    $CB     
       JMP    LF5BB   
LF498: LDA    $C4     
       BNE    LF4B3   
       LDA    CXP1FB  
       ASL            
       BCC    LF4B3   
       LDA    $92     
       CMP    #$7C    
       BCS    LF4B3   
       CMP    #$48    
       BCC    LF4B3   
       LDA    #$05    
       STA    $CB     
       LDA    #$02    
       STA    $83     
LF4B3: LDA    $C3     
       LSR            
       BCS    LF4CD   
       LDA    INPT4   
       ASL            
       BCS    LF4E0   
       LDA    #$01    
       ORA    $C3     
       STA    $C3     
       LDA    #$80    
       STA    $D3     
       LDA    #$02    
       STA    $CB     
       BNE    LF4E0   
LF4CD: LDA    $D3     
       BEQ    LF4D6   
       INC    $D3     
       JMP    LF4E0   
LF4D6: LDA    #$FE    
       AND    $C3     
       STA    $C3     
       LDA    #$02    
       STA    $CB     
LF4E0: LDA    $C4     
       BEQ    LF514   
       LDA    CXPPMM  
       ASL            
       BCC    LF514   
       LDA    $C3     
       BMI    LF514   
       LSR            
       BCC    LF50A   
       LDA    $92     
       CMP    #$79    
       BCC    LF502   
       LDA    #$01    
       STA    $CB     
       LDA    #$04    
       ORA    $C3     
       STA    $C3     
       BNE    LF514   
LF502: LDA    #$02    
       ORA    $C3     
       STA    $C3     
       BNE    LF514   
LF50A: LDA    #$80    
       ORA    $C3     
       STA    $C3     
       LDA    #$04    
       STA    $CB     
LF514: LDA    $C4     
       BEQ    LF55D   
       LDA    CXP1FB  
       ASL            
       BCS    LF527   
       LDA    #$03    
       STA    $CB     
       LDA    #$04    
       ORA    $C3     
       STA    $C3     
LF527: LDA    $C3     
       BPL    LF55D   
       LDA    $93     
       CMP    #$17    
       BCC    LF535   
       CMP    #$78    
       BCC    LF55D   
LF535: LDA    $C4     
       CMP    #$02    
       BEQ    LF543   
       LDA    $92     
       CMP    #$1B    
       BCC    LF549   
       BCS    LF55D   
LF543: LDA    $92     
       CMP    #$AC    
       BCC    LF55D   
LF549: LDA    #$00    
       STA    $C4     
       STA    $C3     
       STA    $D0     
       LDA    #$99    
       JSR    LF878   
       JSR    LF86F   
       LDA    #$FF    
       STA    $DF     
LF55D: LDX    $C4     
       BEQ    LF5BB   
       LDA    $C3     
       BMI    LF5BB   
       DEX            
       BNE    LF585   
       LDA    $C1     
       CMP    #$50    
       BNE    LF574   
       JSR    LF38E   
       JMP    LF5A9   
LF574: CMP    #$1C    
       BCC    LF57C   
       CMP    #$7C    
       BCC    LF59F   
LF57C: LDA    $D2     
       EOR    #$FF    
       STA    $D2     
       JMP    LF5A9   
LF585: LDA    $C1     
       CMP    #$9A    
       BNE    LF594   
       JSR    LF38E   
       LDX    #$00    
       STX    $D2     
       BEQ    LF5A9   
LF594: CMP    #$02    
       BNE    LF59F   
       JSR    LF38E   
       LDX    #$FF    
       STX    $D2     
LF59F: LDA    CXP0FB  
       BMI    LF5A9   
       LDA    $D2     
       EOR    #$FF    
       STA    $D2     
LF5A9: LDA    $D2     
       BEQ    LF5B5   
       INC    $C1     
       LDA    #$00    
       STA    $D4     
       BEQ    LF5BB   
LF5B5: DEC    $C1     
       LDA    #$08    
       STA    $D4     
LF5BB: LDA    $E6     
       BPL    LF5F4   
       DEC    $E2     
       BPL    LF5F4   
       LDX    #$02    
       STX    $E2     
       LDX    $E3     
       INX            
       CPX    #$15    
       BCC    LF5EF   
       CLC            
       LDY    #$00    
       DEC    $A7     
       BPL    LF5D7   
       STY    $E9     
LF5D7: STY    $E6     
       STY    $C4     
       STY    $E3     
       STY    $E2     
       DEY            
       STY    $DF     
       JSR    LF214   
       LDA    #$40    
       STA    $E0     
       JSR    LF86F   
       JMP    LF5F4   
LF5EF: STX    $E3     
       TXA            
       DEC    $E0     
LF5F4: LDX    #$FF    
LF5F6: INX            
       CPX    #$03    
       BEQ    LF603   
       LDA    $A8,X   
       CMP    $EC,X   
       BCC    LF60C   
       BEQ    LF5F6   
LF603: LDX    #$02    
LF605: LDA    $A8,X   
       STA    $EC,X   
       DEX            
       BPL    LF605   
LF60C: LDX    #$0A    
       LDY    #$00    
       LDA    $E5     
       BPL    LF616   
       LDY    #$44    
LF616: JSR    LF61C   
       JMP    LF656   
LF61C: LDA.wy $00A8,Y 
       AND    #$F0    
       LSR            
       ADC    LFC29   
       STA    $AE,X   
       LDA    #$FC    
       STA    $AF,X   
       DEX            
       DEX            
       LDA.wy $00A8,Y 
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       ADC    LFC29   
       STA    $AE,X   
       LDA    #$FC    
       STA    $AF,X   
       INY            
       DEX            
       DEX            
       BPL    LF61C   
       LDX    #$08    
       LDY    LFC33   
LF648: LDA    $B0,X   
       CMP    LFC29   
       BNE    LF655   
       STY    $B0,X   
       DEX            
       DEX            
       BPL    LF648   
LF655: RTS            

LF656: LDA    #$FF    
       STA    CXCLR   
       LDX    INTIM   
       BNE    LF656   
       STX    WSYNC   
       STX    VBLANK  
       LDY    #$08    
LF665: STA    WSYNC   
       STA    HMOVE   
       DEY            
       BNE    LF665   
       LDY    #$07    
       JSR    LF8CA   
       STA    WSYNC   
       STA    WSYNC   
       STA    HMOVE   
       STA    HMCLR   
       LDY    #$00    
       STY    NUSIZ1  
       LDA    $EF     
       AND    #$03    
       TAY            
       LDA    $E0     
       STA    COLUBK  
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    PF0     
       STA    PF2     
       STA    PF1     
       LDA    #$FF    
       STA    CXCLR   
       LDA    #$F7    
       STA    TIM64T  
       LDA    $93     
       STA    WSYNC   
       STA    HMOVE   
       SEC            
LF6A2: SBC    #$0F    
       BCS    LF6A2   
       EOR    #$0F    
       ASL            
       ASL            
       ASL            
       ASL            
       ADC    #$90    
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       STA    HMCLR   
       LDX    $94     
       LDA    #$C0    
       STA    $D9     
       LDA    #$00    
       STA    NUSIZ0  
       LDA    $D6     
       STA    WSYNC   
       STA    HMOVE   
       SEC            
LF6CD: SBC    #$0F    
       BCS    LF6CD   
       EOR    #$0F    
       ASL            
       ASL            
       ASL            
       ASL            
       ADC    #$90    
       STA    RESM1   
       STA    WSYNC   
       STA    HMOVE   
       STA    HMM1    
       STA    WSYNC   
       STA    HMOVE   
       STA    HMCLR   
       LDA    $C1     
       STA    WSYNC   
       STA    HMOVE   
       SEC            
LF6EE: SBC    #$0F    
       BCS    LF6EE   
       EOR    #$0F    
       ASL            
       ASL            
       ASL            
       ASL            
       ADC    #$90    
       STA    RESP0   
       STA    WSYNC   
       STA    HMOVE   
       STA    HMP0    
       STA    WSYNC   
       STA    HMOVE   
       STA    HMCLR   
       LDA    $A0     
       STA    $A3     
       LDA    #$FE    
       STA    $A4     
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       LDA    #$02    
       STA    COLUP1  
       STA    WSYNC   
       STA    HMOVE   
       LDA    $D4     
       STA    REFP0   
       LDA    $9D     
       STA    $D1     
       LDY    #$00    
       STY    $BD     
       STA    WSYNC   
       STA    HMOVE   
       LDA    $C3     
       LSR            
       BCC    LF789   
LF733: LDA    $D9     
       DEC    $D9     
       CMP    $92     
       BCS    LF748   
       LDY    $E0     
       INY            
       STY    COLUP1  
       LDA    LFEC4,X 
       BEQ    LF746   
       INX            
LF746: STA    GRP1    
LF748: LDA    $D9     
       LSR            
       BCS    LF764   
       LDA    $C0     
       CMP    $D9     
       BCC    LF75D   
       LDY    $BD     
       LDA    ($A3),Y 
       STA    GRP0    
       BEQ    LF75D   
       INC    $BD     
LF75D: STA    WSYNC   
       STA    HMOVE   
       JMP    LF733   
LF764: LSR            
       BCS    LF77A   
       TAY            
       LDA    ($9E),Y 
       STA    PF1     
       STA    PF0     
       LDA    $D9     
       CMP    #$01    
       BEQ    LF7DF   
       STA    WSYNC   
       STA    HMOVE   
       BNE    LF733   
LF77A: TAY            
       LDA    ($98),Y 
       STA    PF2     
       LDA    ($AC),Y 
       STA    COLUPF  
       STA    WSYNC   
       STA    HMOVE   
       BCS    LF733   
LF789: LDA    $D9     
       DEC    $D9     
       CMP    $92     
       BCS    LF79E   
       LDA    LFE01,X 
       STA    COLUP1  
       LDA    LFEC4,X 
       BEQ    LF79C   
       INX            
LF79C: STA    GRP1    
LF79E: LDA    $D9     
       LSR            
       BCS    LF7BA   
       LDA    $C0     
       CMP    $D9     
       BCC    LF7B3   
       LDY    $BD     
       LDA    ($A3),Y 
       STA    GRP0    
       BEQ    LF7B3   
       INC    $BD     
LF7B3: STA    WSYNC   
       STA    HMOVE   
       JMP    LF789   
LF7BA: LSR            
       BCS    LF7D0   
       TAY            
       LDA    ($9E),Y 
       STA    PF1     
       STA    PF0     
       LDA    $D9     
       CMP    #$01    
       BEQ    LF7DF   
       STA    WSYNC   
       STA    HMOVE   
       BNE    LF789   
LF7D0: TAY            
       LDA    ($98),Y 
       STA    PF2     
       LDA    ($AC),Y 
       STA    COLUPF  
       STA    WSYNC   
       STA    HMOVE   
       BCS    LF789   
LF7DF: STA    WSYNC   
       STA    HMOVE   
LF7E3: STA    HMOVE   
       LDA    INTIM   
       BNE    LF7E3   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    COLUBK  
       STA    PF0     
       STA    PF1     
       STA    PF2     
       STA    REFP0   
       STA    ENAM1   
       LDA    #$28    
       STA    TIM64T  
       STA    WSYNC   
       LDX    #$0A    
       LDA    $E9     
       BPL    LF82F   
       LDA    $E6     
       BMI    LF81C   
       JSR    LFEF8   
       LDX    #$0A    
       LDY    #$DC    
       JSR    LFF63   
       LDY    #$03    
       JMP    LF83D   
LF81C: LDY    $A7     
LF81E: LDA    LFC28   
       DEY            
       BPL    LF827   
       LDA    LFC33   
LF827: STA    $AE,X   
       DEX            
       DEX            
       BPL    LF81E   
       BMI    LF83B   
LF82F: LDA    LFC27   
       CLC            
LF833: STA    $AE,X   
       ADC    #$08    
       DEX            
       DEX            
       BPL    LF833   
LF83B: LDY    #$07    
LF83D: LDX    #$00    
       STX    COLUBK  
       STA    WSYNC   
       JSR    LF8CA   
LF846: LDA    INTIM   
       BNE    LF846   
       LDY    #$02    
LF84D: STA    WSYNC   
       DEY            
       BPL    LF84D   
       JMP    LF023   
LF855: LDA    $E6     
       BMI    LF869   
       LDX    #$00    
       LDA    $DC     
       LSR            
       LSR            
       LSR            
       LSR            
       BCC    LF865   
       BCS    LF867   
LF865: LDX    #$1A    
LF867: STX    $94     
LF869: RTS            

LF86A: .byte $60,$60,$60
LF86D: LDX    #$24    
LF86F: LDA    #$50    
       STA    $92     
       LDA    #$48    
       STA    $93     
       RTS            

LF878: SED            
       CMP    #$90    
       LDY    $A9     
       LDX    #$02    
LF87F: ADC    $A8,X   
       STA    $A8,X   
       LDA    #$00    
       DEX            
       BPL    LF87F   
       CLD            
       TYA            
       EOR    $A9     
       AND    #$F0    
       BEQ    LF899   
       LDY    $A7     
       INY            
       CPY    #$07    
       BCS    LF899   
       STY    $A7     
LF899: RTS            

LF89A: STA    WSYNC   
       SEC            
LF89D: SBC    #$0F    
       BCS    LF89D   
       EOR    #$0F    
       ASL            
       ASL            
       ASL            
       ASL            
       ADC    #$90    
       STA    RESP0,X 
       STA    WSYNC   
       STA    HMP0,X  
       RTS            

LF8B0: .byte $85,$02,$85,$2A,$38,$E9,$0F,$B0,$FC,$49,$0F,$0A,$0A,$0A,$0A,$69
       .byte $90,$95,$10,$85,$02,$85,$2A,$95,$20,$60
LF8CA: STX    GRP0    
       STX    GRP1    
       STX    WSYNC   
       LDA    #$3B    
       JSR    LF89A   
       LDA    #$43    
       INX            
       JSR    LF89A   
       STX    VDELP0  
       STX    VDELP1  
       LDX    #$03    
       STX    NUSIZ0  
       STX    NUSIZ1  
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$68    
       STA    COLUP0  
       STA    COLUP1  
LF8EF: LDA    ($AE),Y 
       STA    $BA     
       STA    WSYNC   
       LDA    ($B8),Y 
       STA    GRP0    
       LDA    ($B6),Y 
       STA    GRP1    
       LDA    ($B4),Y 
       STA    GRP0    
       LDA    ($B2),Y 
       TAX            
       LDA    ($B0),Y 
       STY    $BB     
       LDY    $BA     
       STX    GRP1    
       STA    GRP0    
       STY    GRP1    
       STY    GRP0    
       LDY    $BB     
       DEY            
       BPL    LF8EF   
       LDA    #$00    
       STA    VDELP0  
       STA    VDELP1  
       STA    GRP0    
       STA    GRP1    
       RTS            

LF922: LDY    $F5     
       BMI    LF968   
       BNE    LF94E   
       LDA    ($F6),Y 
       BEQ    LF966   
       PHA            
       AND    #$0F    
       TAY            
       LDA    LFE98,Y 
       BNE    LF937   
       STA    AUDV0   
LF937: STA    AUDF0   
       STA    $F8     
       LDA    #$05    
       STA    AUDC0   
       PLA            
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $F9     
       STA    $FA     
       INC    $F6     
       LDY    #$06    
       STY    $F5     
LF94E: DEC    $FA     
       BNE    LF968   
       LDA    $F9     
       STA    $FA     
       DEY            
       STY    $F5     
       LDA    $F8     
       BEQ    LF961   
       INY            
       INY            
       INY            
       TYA            
LF961: STA    AUDV0   
       JMP    LF968   
LF966: DEC    $F5     
LF968: RTS            

LF969: .byte $00,$00,$54,$FE,$54,$FE,$44,$EE,$54,$FE,$54,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$0F,$0A,$0F,$0A,$00,$0A,$0F,$0A,$0F
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$40,$90,$20,$40,$80,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$0F,$0A,$0F,$0A,$00,$0A,$0F,$0A,$0F
       .byte $5C,$0E,$0E,$0E,$0E,$98,$9A,$5C,$5C,$5C,$5C,$56,$56,$56,$56,$56
       .byte $56,$56,$5C,$5C,$5C,$5C,$88,$88,$88,$A4,$A6,$06,$04,$5C,$5C,$5C
       .byte $56,$56,$56,$56,$56,$5C,$5C,$5C,$04,$06,$08,$24,$26,$28,$5C,$5C
       .byte $7F,$A0,$60,$A0,$60,$A0,$20,$E0,$00,$24,$1A,$7F,$1F,$07,$04,$01
       .byte $00,$00,$00,$00,$2D,$1E,$1B,$05,$01,$06,$00,$00,$00,$00,$01,$07
       .byte $03,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $EF,$D0,$E0,$E0,$C0,$C0,$C0,$C0,$C0,$C4,$92,$EE,$F9,$F7,$C2,$E9
       .byte $C0,$C0,$C0,$C0,$ED,$B7,$ED,$FF,$C6,$FB,$C0,$C0,$C0,$C0,$DD,$BE
       .byte $F7,$DB,$6F,$C0,$C0,$C8,$DE,$EC,$F8,$70,$E0,$C0,$C0,$80,$80,$80
       .byte $46,$46,$46,$46,$46,$46,$46,$46,$46,$5A,$56,$56,$3C,$5A,$50,$50
       .byte $46,$46,$46,$46,$5C,$5A,$56,$54,$30,$3E,$46,$46,$46,$46,$56,$56
       .byte $3E,$5A,$5C,$46,$46,$50,$56,$56,$5C,$5A,$54,$54,$56,$38,$38,$56
       .byte $FF,$FF,$FF,$FF,$FF,$B8,$20,$FF,$FF,$FF,$FF,$FF,$FF,$CC,$80,$FF
       .byte $FF,$FF,$FF,$FF,$DF,$40,$FF,$FF,$FF,$FF,$FF,$FF,$B8,$10,$FE,$FE
       .byte $FE,$FE,$F8,$40,$F8,$F8,$F8,$E0,$20,$A0,$60,$A0,$60,$A0,$20,$E0
       .byte $FF,$FF,$3F,$3F,$3F,$03,$00,$0F,$0F,$0F,$0F,$0F,$0F,$00,$00,$03
       .byte $03,$03,$03,$03,$03,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $44,$44,$44,$44,$44,$44,$44,$C4,$C4,$C4,$C4,$C4,$C4,$C4,$C4,$26
       .byte $26,$26,$26,$26,$26,$26,$56,$56,$56,$56,$56,$56,$56,$56,$88,$88
       .byte $88,$88,$88,$88,$94,$94,$94,$94,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $7F,$A0,$60,$A0,$60,$A0,$20,$E0,$00,$B7,$B5,$DA,$F6,$04,$00,$00
       .byte $00,$00,$00,$4E,$58,$8C,$02,$00,$00,$00,$00,$00,$27,$73,$B3,$40
       .byte $00,$00,$00,$00,$00,$0C,$B6,$57,$29,$01,$02,$00,$00,$00,$00,$00
       .byte $FF,$00,$00,$00,$00,$00,$00,$00,$00,$9A,$8E,$52,$AD,$40,$00,$00
       .byte $00,$00,$00,$BA,$71,$3A,$00,$00,$00,$00,$00,$00,$88,$BD,$CE,$04
       .byte $00,$00,$00,$00,$00,$98,$BC,$BE,$45,$00,$C0,$00,$00,$00,$00,$00
       .byte $00,$52,$00,$00,$00,$00,$00,$00,$00,$50,$50,$54,$56,$3C,$8C,$32
       .byte $32,$32,$32,$32,$32,$54,$5A,$80,$50,$50,$50,$50,$50,$50,$54,$38
       .byte $24,$56,$56,$56,$56,$56,$56,$54,$3A,$38,$86,$54,$54,$54,$54,$54
       .byte $54,$B2,$9A,$7C,$50,$19,$00,$B4,$A0,$8C,$69,$4C,$2C,$19,$00,$B9
       .byte $90,$6C,$47,$19,$00,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF
LFC00: .byte $AA,$B0,$B8
LFC03: .byte $FB,$FB,$FB
LFC06: .byte $40,$4E,$5D,$5E,$69,$5D,$74,$86,$97
LFC0F: .byte $69,$F9,$89,$19,$99,$29,$B9,$49,$C9,$59,$E9,$79,$F9,$F9,$FA,$FB
       .byte $F9,$FA,$FA,$FB,$F9,$FA,$FA,$FB
LFC27: .byte $47
LFC28: .byte $CF
LFC29: .byte $77,$7F,$87,$8F,$97,$9F,$A7,$AF,$B7,$BF
LFC33: .byte $C7
LFC34: .byte $60
LFC35: .byte $FD
LFC36: .byte $00
LFC37: .byte $FD
LFC38: .byte $FF,$E2,$ED,$CC,$B6,$BF,$F6,$CF,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$3C
       .byte $72,$72,$72,$72,$72,$72,$3C,$18,$18,$18,$18,$18,$18,$18,$38,$7E
       .byte $46,$40,$3C,$0E,$0E,$4E,$3C,$3E,$4E,$0E,$1C,$1C,$0E,$4E,$3C,$0C
       .byte $0C,$7E,$4C,$4C,$4C,$4C,$4C,$7C,$4E,$0E,$0E,$7C,$40,$40,$7E,$3C
       .byte $4E,$4E,$4E,$7C,$40,$42,$3C,$18,$18,$0C,$0C,$06,$06,$46,$7E,$3C
       .byte $4E,$4E,$3C,$3C,$72,$72,$3C,$3C,$42,$02,$3E,$72,$72,$72,$3C,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$4A,$1C,$28,$28,$3C,$3C,$24,$81
       .byte $66,$7E,$3C,$3C,$7E,$66,$81,$00,$81,$24,$42,$18,$18,$42,$24,$81
       .byte $00,$24,$81,$42,$81,$81,$42,$81,$24,$00,$00,$00,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$23,$21,$23,$25,$23,$21,$23,$25
       .byte $23,$23,$26,$25,$24,$26,$23,$23,$21,$21,$23,$25,$23,$21,$23,$25
       .byte $23,$23,$26,$25,$22,$21,$23,$25,$23,$32,$15,$26,$24,$26,$23,$43
       .byte $32,$15,$24,$22,$23,$24,$25,$25,$32,$15,$26,$24,$26,$23,$43,$22
       .byte $25,$24,$22,$21,$23,$25,$23,$21,$23,$25,$23,$21,$23,$25,$23,$23
       .byte $26,$25,$24,$26,$23,$23,$21,$21,$23,$25,$23,$21,$23,$25,$23,$23
       .byte $26,$25,$22,$21,$23,$21,$2F,$00,$23,$65,$23,$65,$23,$25,$24,$23
       .byte $22,$26,$25,$25,$23,$65,$23,$65,$23,$25,$24,$23,$22,$61,$23,$36
       .byte $17,$28,$26,$26,$25,$45,$32,$13,$24,$22,$23,$24,$25,$2F,$36,$17
       .byte $28,$26,$26,$25,$45,$22,$23,$24,$22,$65,$23,$65,$23,$65,$23,$25
       .byte $24,$23,$22,$26,$25,$25,$23,$65,$23,$65,$23,$25,$24,$23,$22,$21
       .byte $6F,$00,$36,$17,$48,$00,$36,$17,$48,$00,$36,$17,$48,$00,$CF,$C7
       .byte $CF,$CA,$CF,$C8,$CF,$CF,$00,$CF,$DC,$CF,$DA,$CF,$D8,$CF,$D4,$CF
       .byte $D4,$CF,$D9,$00,$9F,$FF,$00,$1F,$FE,$CF,$6C,$1F,$FC,$1C,$FA,$CF
       .byte $6A,$1A,$FC,$17,$FA,$14,$FE,$12,$FA,$00,$CF,$CB,$CF,$CA,$CF,$CC
       .byte $CF,$CF,$CF,$CC,$00,$5F,$FC,$5F,$FA,$5F,$F8,$5F,$FB,$00,$1F,$CF
       .byte $1F,$CE,$1F,$CD,$1F,$CC,$1F,$CB,$00
LFE01: .byte $65,$65,$65,$65,$65,$65,$65,$65,$65,$4A,$4A,$4A,$2C,$2C,$2C,$98
       .byte $98,$98,$98,$4A,$4A,$4A,$4A,$4A,$4A,$00,$65,$65,$65,$65,$65,$65
       .byte $65,$65,$65,$4A,$4A,$4A,$2C,$2C,$2C,$94,$94,$94,$94,$4A,$4A,$4A
       .byte $4A,$4A,$4A,$00,$A4,$AA,$00
LFE38: .byte $24,$10,$80,$6C
LFE3C: .byte $BC,$20,$20,$BC,$07,$06,$07,$87,$9C,$BC,$7C,$7C,$24,$64,$44,$44
       .byte $44,$00,$27,$46,$85,$87,$9F,$FC,$7C,$7C,$64,$C6,$AA,$AB,$A9,$81
       .byte $00,$5D,$04,$8A,$97,$9B,$76,$7D,$7C,$C6,$83,$81,$00,$04,$0A,$17
       .byte $1B,$F7,$7C,$7C,$48,$28,$28,$00,$02,$02,$07,$03,$1A,$3E,$7C,$7C
       .byte $74,$F2,$32,$10,$10,$18,$0C,$06,$02,$00,$02,$02,$07,$03,$02,$06
       .byte $0E,$1E,$1F,$3D,$3D,$3C,$58,$50,$50,$9E,$00,$22
LFE98: .byte $1C,$1A,$17,$14,$13,$11,$0F,$0D,$0C,$0B,$0A,$09,$08,$1E,$1C,$00
       .byte $33,$30,$33,$30,$33,$30,$33,$30
LFEB0: .byte $5F,$8F,$BF,$CF,$01,$05,$0C,$01,$05,$0C,$D7,$E0,$E9,$F2,$F2,$FC
       .byte $FC,$FC,$FC,$FC
LFEC4: .byte $14,$3E,$3E,$7F,$3E,$7F,$77,$63,$2A,$1D,$15,$09,$1D,$3F,$5E,$1C
       .byte $1C,$1C,$14,$14,$14,$36,$30,$30,$10,$00,$14,$3E,$3E,$7F,$3E,$7F
       .byte $77,$63,$2A,$5C,$54,$48,$5C,$7E,$3D,$1C,$1C,$1C,$14,$14,$14,$36
       .byte $06,$06,$04,$00
LFEF8: LDA    $80     
       BEQ    LFF1A   
       CMP    #$30    
       BEQ    LFF23   
       CMP    #$20    
       BEQ    LFF27   
       BCS    LFF32   
       CMP    #$10    
       BEQ    LFF44   
       BCS    LFF4F   
       LDA    #$00    
       STA    $85     
       STA    $86     
       LDX    $80     
       LDA    LFF95,X 
       STA    $84     
       RTS            

LFF1A: LDA    #$00    
LFF1C: STA    $84     
       STA    $85     
       STA    $86     
       RTS            

LFF23: LDA    #$88    
       BNE    LFF1C   
LFF27: LDA    #$88    
       STA    $84     
       STA    $85     
       LDA    #$00    
       STA    $86     
       RTS            

LFF32: LDA    #$88    
       STA    $84     
       STA    $85     
       SEC            
       LDA    $80     
       SBC    #$20    
       TAX            
       LDA    LFF95,X 
       STA    $86     
       RTS            

LFF44: LDA    #$88    
       STA    $84     
       LDA    #$00    
       STA    $85     
       STA    $86     
       RTS            

LFF4F: LDA    #$88    
       STA    $84     
       LDA    #$00    
       STA    $86     
       SEC            
       LDA    $80     
       SBC    #$10    
       TAX            
       LDA    LFF95,X 
       STA    $85     
       RTS            

LFF63: LDA.wy $00A8,Y 
       AND    #$F0    
       LSR            
       LSR            
       LSR            
       LSR            
       STX    $BA     
       TAX            
       LDA    LFFCA,X 
       LDX    $BA     
       STA    $AE,X   
       LDA    #$FF    
       STA    $AF,X   
       DEX            
       DEX            
       LDA.wy $00A8,Y 
       AND    #$0F    
       STX    $BA     
       TAX            
       LDA    LFFCA,X 
       LDX    $BA     
       STA    $AE,X   
       LDA    #$FF    
       STA    $AF,X   
       INY            
       DEX            
       DEX            
       BPL    LFF63   
       RTS            

LFF95: .byte $10,$10,$20,$30,$40,$50,$60,$70,$80,$81,$82,$83,$84,$85,$86,$87
       .byte $88,$00,$00,$00,$00,$80,$80,$80,$80,$C0,$C0,$C0,$C0,$E0,$E0,$E0
       .byte $E0,$F0,$F0,$F0,$F0,$F8,$F8,$F8,$F8,$FC,$FC,$FC,$FC,$FE,$FE,$FE
       .byte $FE,$FF,$FF,$FF,$FF
LFFCA: .byte $A6,$AA,$AE,$B2,$B6,$BA,$BE,$C2,$C6
LFFD3: CLC            
       ADC    $80     
       CMP    #$30    
       BCC    LFFDC   
       LDA    #$30    
LFFDC: STA    $80     
       RTS            

LFFDF: .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$00,$F0,$00
       .byte $F0
