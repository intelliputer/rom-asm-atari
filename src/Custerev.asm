; Disassembly of roms/Custerev.bin
; Disassembled Tue Oct  6 15:21:09 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Custerev.bin
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
AUDC0   =  $15
AUDC1   =  $16
AUDF0   =  $17
AUDF1   =  $18
AUDV0   =  $19
AUDV1   =  $1A
GRP0    =  $1B
GRP1    =  $1C
ENABL   =  $1F
HMP0    =  $20
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXP0FB  =  $32
INPT4   =  $3C
SWCHA   =  $0280
SWACNT  =  $0281
SWCHB   =  $0282
SWBCNT  =  $0283
INTIM   =  $0284
TIM8T   =  $0295
TIM64T  =  $0296

       ORG $3000

START:
L3000: JMP    L3035   
L3003: JSR    L336A   
       INC    $8C     
       LDA    $8C     
       AND    #$01    
       BEQ    L3010   
       INC    $B3     
L3010: JSR    L3878   
       JSR    L36DC   
       JSR    L30A5   
       JSR    L3803   
       JMP    L308C   
L301F: JSR    L3847   
L3022: JSR    L3182   
       JSR    L360E   
       JSR    L38C7   
       STA    WSYNC   
       STA    HMOVE   
       JSR    L33B3   
       JMP    L3003   
L3035: SEI            
       CLD            
       LDX    #$FF    
       TXS            
       INX            
       LDA    #$00    
L303D: STA    VSYNC,X 
       INX            
       BNE    L303D   
       STA    SWACNT  
       STA    SWBCNT  
       LDA    #$30    
       STA    $B8     
L304C: LDY    #$00    
       LDA    ($B7),Y 
       CLC            
       ADC    $B9     
       STA    $B9     
       INC    $B7     
       BNE    L304C   
       INC    $B8     
       LDA    $B8     
       CMP    #$40    
       BNE    L304C   
       LDA    L3F24   
       CMP    $B9     
       BNE    L3081   
       LDA    #$1C    
       STA    $A3     
       LDA    #$2D    
       STA    $DA     
       LDA    #$8D    
       STA    $D9     
       LDA    #$A0    
       STA    $D5     
       STA    $DC     
       LDA    #$00    
       STA    $E6     
       JMP    L3003   
L3081: LDA    #$09    
       STA    AUDC0   
       STA    AUDF0   
       STA    AUDV0   
       JMP    L3000   
L308C: LDA    $D2     
       BEQ    L309E   
       DEC    $D5     
       BNE    L301F   
       LDA    #$00    
       STA    $D2     
       LDA    #$A0    
       STA    $D5     
       STA    $D4     
L309E: LDA    $D9     
       STA    $A5     
       JMP    L3022   
L30A5: LDA    $8F     
       CMP    #$02    
       BCS    L3104   
       LDA    $A4     
       SBC    #$0F    
       STA    $88     
       STA    $A0     
       STA    $A1     
       STA    $A2     
       LSR    $84     
       BCC    L30C2   
       CLC            
       LDA    #$10    
       ADC    $A0     
       STA    $A0     
L30C2: LSR    $84     
       BCC    L30CD   
       CLC            
       LDA    #$20    
       ADC    $A1     
       STA    $A1     
L30CD: LSR    $84     
       BCC    L30D8   
       CLC            
       LDA    #$40    
       ADC    $A2     
       STA    $A2     
L30D8: LDA    $A3     
       SEC            
       SBC    $88     
       AND    #$F8    
       BEQ    L3105   
       LDX    $E7     
       LDA    $B1,X   
       AND    #$03    
       BEQ    L3104   
       LDA    $A3     
       SEC            
       SBC    $A0     
       AND    #$F8    
       BEQ    L3105   
       LDA    $A3     
       SEC            
       SBC    $A1     
       AND    #$F8    
       BEQ    L3105   
       LDA    $A3     
       SEC            
       SBC    $A2     
       AND    #$F8    
       BEQ    L3105   
L3104: RTS            

L3105: LDA    #$FF    
       STA    $8A     
       LDA    #$0F    
       STA    $89     
       LDA    #$57    
       STA    $8F     
       RTS            

L3112: LDX    $E7     
       LDA    INPT4,X 
       STA    $DD     
       JMP    L3138   
L311B: LDA    #$00    
       STA    $CE     
       JMP    L31C9   
L3122: LDA    $B0     
       BEQ    L312A   
       BIT    $DB     
       BPL    L3135   
L312A: LDA    #$FF    
       STA    $D8     
       LDA    $CD     
       BEQ    L313C   
       JMP    L3166   
L3135: JMP    L3112   
L3138: BIT    $DD     
       BMI    L319B   
L313C: LDA    #$60    
       STA    $C5     
       LDA    #$20    
       STA    $C6     
       LDA    #$38    
       STA    $AA     
       LDA    $DC     
       BNE    L3163   
       LDA    $CC     
       CMP    #$04    
       BNE    L3158   
       LDA    #$00    
       STA    $C9     
       STA    $C7     
L3158: LDA    #$08    
       STA    $CC     
       BIT    $CD     
       BPL    L317C   
L3160: SEC            
       ROR    $CD     
L3163: JMP    L31DA   
L3166: LDA    #$08    
       STA    $CE     
       DEC    $C0     
       LDA    $C0     
       LDX    $E7     
       AND    $B4,X   
       BNE    L3163   
       DEC    $A3     
       JMP    L31BB   
L3179: JMP    L311B   
L317C: JSR    L374F   
       JMP    L3160   
L3182: JMP    L328E   
L3185: LDA    $A3     
       CMP    #$86    
       BEQ    L3122   
       LDA    $D8     
       BNE    L3166   
       LDA    $B0     
       BEQ    L31A7   
       LDA    $DB     
       BNE    L31A7   
       LDA    $DC     
       BNE    L3179   
L319B: LDX    $E7     
       LDA    $C2,X   
       STA    $DD     
       BIT    $DD     
       BVC    L3166   
       BMI    L3179   
L31A7: LDA    $A3     
       CMP    #$86    
       BEQ    L31C9   
       LDA    #$00    
       STA    $CE     
       INC    $C0     
       LDA    $C0     
       AND    $B4,X   
       BNE    L31DA   
       INC    $A3     
L31BB: LDA    $A3     
       AND    #$01    
       BNE    L31DA   
       LDA    $A3     
       AND    #$06    
       CMP    #$06    
       BNE    L31CF   
L31C9: LDA    #$00    
       STA    $CD     
       LDA    #$02    
L31CF: CLC            
       ROL            
       ROL            
       ROL            
       ROL            
       STA    $C5     
       LDA    #$00    
       STA    $C6     
L31DA: LDA    $A3     
       CMP    #$1C    
       BCS    L31EA   
       LDA    $D8     
       BEQ    L31E8   
       LDA    #$00    
       STA    $D8     
L31E8: LDA    #$1C    
L31EA: STA    $A3     
       LDA    #$3B    
       STA    $91     
       LDA    #$3C    
       STA    $93     
       LDA    $C5     
       STA    $90     
       LDA    $C6     
       STA    $92     
       LDA    $A5     
       STA    COLUBK  
       LDA    #$0F    
       STA    COLUP0  
       LDA    #$00    
       STA    COLUP1  
       LDA    #$0F    
       STA    COLUPF  
       LDA    #$07    
       STA    $81     
       LDA    #$06    
       STA    $83     
       LDA    #$01    
       STA    CTRLPF  
       LDA    #$00    
       STA    NUSIZ0  
       LDX    $85     
       BIT    $D0     
       BPL    L3223   
       INX            
L3223: INX            
       CPX    #$3F    
       BCC    L322A   
       LDX    #$10    
L322A: STX    $85     
       LDA    $DC     
       BNE    L3249   
       LDA    $D2     
       BNE    L3249   
       BIT    $D0     
       BMI    L3249   
       LDA    $8C     
       LDX    $E7     
       AND    $B1,X   
       BNE    L3260   
       LDX    $8F     
       DEC    $A4     
       DEX            
       DEX            
       DEX            
       BPL    L325E   
L3249: LDX    #$57    
       INC    $8E     
       LDA    $8C     
       ADC    $8E     
       AND    #$3F    
       TAY            
       LDA    L3D38,Y 
       STA    $A4     
       LDA    L3D78,Y 
       STA    $84     
L325E: STX    $8F     
L3260: LDX    $E7     
       LDA    $B1,X   
       AND    #$03    
       BEQ    L326A   
       LDA    $84     
L326A: STA    NUSIZ1  
       LDA    $A4     
       CMP    #$10    
       BCS    L3274   
       LDA    #$B0    
L3274: STA    $A4     
       LDX    #$01    
       JSR    L3396   
       LDA    #$A8    
       LDX    #$04    
       JSR    L3396   
       LDA    #$00    
       STA    $80     
       LDA    #$14    
       LDX    #$00    
       JSR    L3396   
       RTS            

L328E: LDA    $B0     
       BEQ    L32AA   
       LDA    $DB     
       BNE    L32AA   
       LDA    $D4     
       BNE    L32CF   
L329A: LDA    $D0     
       BNE    L32F4   
       LDA    $D3     
       BNE    L32E4   
       LDA    $8A     
       BNE    L32AD   
       BIT    CXP0FB  
       BMI    L32C2   
L32AA: JMP    L3185   
L32AD: LDA    #$A0    
       STA    $D6     
       LDA    #$80    
       STA    $D7     
       STA    $D3     
L32B7: LDA    #$FF    
       STA    $D2     
       LDA    #$00    
       STA    $8A     
       JMP    L31C9   
L32C2: LDA    #$E0    
       STA    $D6     
       LDA    #$C0    
       STA    $D7     
       STA    $D3     
       JMP    L32B7   
L32CF: LDA    #$00    
       STA    $C9     
       STA    $C7     
       STA    $CF     
       STA    $D4     
       LDA    #$06    
       STA    $CC     
       LDA    #$80    
       STA    $CD     
       JMP    L329A   
L32E4: LDA    $CE     
       BEQ    L3317   
       LDA    #$00    
L32EA: STA    $CE     
       LDA    #$80    
       STA    $D0     
       LDA    $D6     
       STA    $C5     
L32F4: INC    $D1     
       LDA    $D1     
       CMP    #$20    
       BNE    L3306   
       LDA    #$00    
       STA    $D1     
       LDA    $D7     
       STA    $C5     
       INC    $CF     
L3306: LDA    $CF     
       CMP    #$08    
       BEQ    L331C   
       AND    #$01    
       BEQ    L3314   
       LDA    $D6     
       STA    $C5     
L3314: JMP    L31DA   
L3317: LDA    #$08    
       JMP    L32EA   
L331C: LDA    #$00    
       STA    $CF     
       STA    $D1     
       STA    $D0     
       STA    $D4     
       STA    $8A     
       STA    $D3     
       STA    $CD     
       LDX    $E7     
       DEC    $E8,X   
       LDA    $E8,X   
       BNE    L335A   
       LDA    $DE     
       ROR            
       BCC    L3348   
       LDA    $DE     
       AND    #$02    
       STA    $DE     
       LDA    $E7     
       EOR    #$01    
       STA    $E7     
       JMP    L31E8   
L3348: LDA    #$03    
       STA    $E8     
       STA    $E9     
       LDA    #$FF    
       STA    $DB     
       LDA    #$83    
       STA    $D9     
       LDA    #$23    
       STA    $DA     
L335A: LDA    $DE     
       ROR            
       BCC    L3367   
       INC    $E7     
       LDA    $E7     
       AND    #$01    
       STA    $E7     
L3367: JMP    L31E8   
L336A: LDA    #$02    
       STA    WSYNC   
       STA    VBLANK  
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    WSYNC   
       STA    VSYNC   
       LDA    #$27    
       STA    TIM64T  
       RTS            

L3388: LDX    #$00    
       JMP    L3394   
L338D: .byte $A2,$01,$4C,$94,$33,$A2,$04
L3394: LDA    $A3,X   
L3396: CLC            
       ADC    #$01    
       LDY    #$00    
       SEC            
L339C: INY            
       SBC    #$0F    
       BCS    L339C   
       EOR    #$FF    
       SBC    #$06    
       ASL            
       STA    WSYNC   
       ASL            
       ASL            
       ASL            
       STA    HMP0,X  
L33AD: DEY            
       BNE    L33AD   
       STA    RESP0,X 
       RTS            

L33B3: LDA    INTIM   
       BNE    L33B3   
       STA    WSYNC   
       STA    VBLANK  
       STA    WSYNC   
       STA    HMCLR   
       STA    CXCLR   
       LDX    #$4F    
L33C4: TXA            
       SEC            
       SBC    $8F     
       TAY            
       AND    #$F0    
       BEQ    L33D1   
       LDA    #$00    
       BEQ    L33D4   
L33D1: LDA    L3D28,Y 
L33D4: STA    WSYNC   
       STA    GRP1    
       TXA            
       SEC            
       SBC    #$30    
       LSR            
       LSR            
       TAY            
       LDA    L3CE0,Y 
       STA    PF1     
       STA    PF2     
       DEX            
       CPX    #$30    
       BCS    L33C4   
       LDA    #$26    
       STA    COLUPF  
L33EF: TXA            
       SEC            
       SBC    $85     
       TAY            
       AND    #$F8    
       BEQ    L33FC   
       LDA    #$00    
       BEQ    L33FF   
L33FC: LDA    L3C48,Y 
L33FF: STA    WSYNC   
       STA    GRP0    
       TXA            
       SEC            
       SBC    $8F     
       TAY            
       AND    #$F0    
       BEQ    L3410   
       LDA    #$00    
       BEQ    L3413   
L3410: LDA    L3D28,Y 
L3413: STA    GRP1    
       TXA            
       SEC            
       SBC    #$10    
       LSR            
       LSR            
       TAY            
       LDA    L3CE8,Y 
       STA    PF1     
       STA    PF2     
       DEX            
       CPX    #$10    
       BCS    L33EF   
       LDA    #$48    
       STA    COLUP0  
       LDA    $DA     
       STA    COLUBK  
       LDA    #$00    
       STA    PF1     
       STA    PF2     
L3436: TXA            
       SEC            
       SBC    #$00    
       TAY            
       AND    #$F8    
       BEQ    L3443   
       LDA    #$00    
       BEQ    L3446   
L3443: LDA    L3C40,Y 
L3446: STA    WSYNC   
       STA    GRP0    
       TXA            
       SEC            
       SBC    $8F     
       TAY            
       AND    #$F0    
       BEQ    L3457   
       LDA    #$00    
       BEQ    L345A   
L3457: LDA    L3D28,Y 
L345A: STA    GRP1    
       DEX            
       BPL    L3436   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       LDA    #$20    
       STA    CTRLPF  
       LDA    #$88    
       STA    COLUP0  
       LDA    #$54    
       STA    COLUP1  
       LDA    #$E8    
       STA    COLUPF  
       LDA    #$02    
       STA    ENABL   
       LDA    #$05    
       STA    NUSIZ0  
       LDA    #$05    
       STA    NUSIZ1  
       LDA    #$3C    
       STA    TIM8T   
       JSR    L3388   
       LDX    #$01    
       LDA    #$94    
       JSR    L3396   
       LDA    $CE     
       STA    REFP0   
L3494: LDA    INTIM   
       BNE    L3494   
       STA    WSYNC   
       STA    HMOVE   
L349D: LDA    $80     
       LSR            
       TAY            
       LSR            
       TAX            
       LDA    ($90),Y 
       STA    WSYNC   
       STA    GRP0    
       LDA    $8B     
       BEQ    L34B0   
       LDA    L3CF0,X 
L34B0: STA    PF0     
       LDA    ($92),Y 
       STA    GRP1    
       DEC    $83     
       BNE    L34CC   
       DEC    $81     
       LDX    $81     
       LDA    $A8,X   
       STA    COLUP0  
       LDA    L3D10,X 
       STA    COLUP1  
       LDA    L3D20,X 
       STA    $83     
L34CC: INC    $80     
       INC    $80     
       LDA    $80     
       STA    WSYNC   
       EOR    #$40    
       BNE    L349D   
       LDA    #$00    
       STA    WSYNC   
       STA    PF0     
       STA    GRP0    
       STA    GRP1    
       STA    ENABL   
       LDX    #$07    
L34E6: STA    WSYNC   
       DEX            
       BPL    L34E6   
       STA    WSYNC   
       STA    HMCLR   
       LDA    #$00    
       STA    REFP0   
       LDA    #$02    
       STA    WSYNC   
       STA    VBLANK  
       JSR    L35B8   
       LDA    #$0F    
       STA    COLUP0  
       STA    COLUP1  
       BIT    $C4     
       BPL    L3518   
       LDA    $B0     
       BEQ    L3518   
       LDA    $DB     
       BEQ    L3513   
       LDY    #$00    
       JMP    L3522   
L3513: LDY    $E7     
       JMP    L3522   
L3518: JSR    L37D2   
       LDA    #$78    
       STA    COLUBK  
       JMP    L3527   
L3522: LDA.wy $00A6,Y 
       STA    COLUBK  
L3527: JSR    L377C   
       LDA    #$00    
       STA    WSYNC   
       STA    VBLANK  
       JSR    L35D7   
       LDA    #$02    
       STA    WSYNC   
       STA    VBLANK  
       LDA    #$00    
       STA    COLUBK  
       LDA    #$26    
       STA    COLUP0  
       STA    COLUP1  
       BIT    $C4     
       BPL    L3568   
       LDA    $B0     
       BEQ    L3568   
       LDA    $DB     
       BEQ    L357A   
       LDA    $E6     
       AND    #$01    
       BEQ    L3568   
       LDY    #$01    
       LDA.wy $00A6,Y 
       STA    COLUBK  
       LDA    #$0F    
       STA    COLUP0  
       STA    COLUP1  
       JSR    L377C   
       JMP    L3589   
L3568: LDA    #$00    
       STA    COLUBK  
       LDA    #$2D    
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$78    
       JSR    L35AC   
       JMP    L3589   
L357A: LDA    #$00    
       STA    COLUBK  
       LDX    $E7     
       LDA    $A6,X   
       STA    COLUP0  
       STA    COLUP1  
       JSR    L37E1   
L3589: LDA    #$00    
       STA    WSYNC   
       STA    VBLANK  
       JSR    L35D7   
       LDA    #$02    
       STA    WSYNC   
       STA    VBLANK  
       LDA    #$00    
       STA    VDELP0  
       STA    VDELP1  
       LDA    #$02    
       STA    WSYNC   
       STA    VBLANK  
       LDX    #$17    
L35A6: STA    WSYNC   
       DEX            
       BPL    L35A6   
       RTS            

L35AC: LDX    #$0A    
       SEC            
L35AF: STA    $94,X   
       SBC    #$08    
       DEX            
       DEX            
       BPL    L35AF   
       RTS            

L35B8: LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    VDELP0  
       STA    VDELP1  
       LDA    #$F0    
       STA    HMP0    
       LDY    #$07    
       STA    WSYNC   
L35CA: DEY            
       BNE    L35CA   
       NOP            
       STA    RESP0   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       RTS            

L35D7: LDA    #$06    
       STA    $87     
L35DB: LDY    $87     
       LDA    ($94),Y 
       STA    GRP0    
       STA    WSYNC   
       LDA    ($96),Y 
       STA    GRP1    
       LDA    ($98),Y 
       STA    GRP0    
       LDA    ($9A),Y 
       STA    $86     
       LDA    ($9C),Y 
       TAX            
       LDA    ($9E),Y 
       TAY            
       LDA    $86     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STY    GRP0    
       DEC    $87     
       BPL    L35DB   
       STA    WSYNC   
       LDY    #$00    
       STY    GRP0    
       STY    GRP1    
       STY    GRP0    
       RTS            

L360E: LDA    SWCHA   
       STA    $C2     
       ASL            
       ASL            
       ASL            
       ASL            
       STA    $C3     
       LDA    SWCHB   
       STA    $C1     
       ROR            
       ROR            
       ROR            
       STA    $C4     
       BIT    $C4     
       BPL    L3646   
       BVC    L3649   
       LDA    $DB     
       BNE    L3631   
       LDA    $B0     
       BNE    L3635   
L3631: BIT    INPT4   
       BPL    L3649   
L3635: LDA    #$00    
       STA    $DF     
       STA    $B6     
       LDA    $DB     
       BEQ    L3645   
       LDA    #$00    
       STA    $B1     
       STA    $B2     
L3645: RTS            

L3646: JMP    L36B5   
L3649: JMP    L364C   
L364C: LDA    $E6     
       STA    $DE     
       LDA    $DC     
       BNE    L365C   
       LDA    #$00    
       STA    $CC     
       STA    $C9     
       STA    $C7     
L365C: LDA    #$FF    
       STA    $B0     
       STA    $DC     
       LDA    #$2D    
       STA    $DA     
       LDA    #$8D    
       STA    $D9     
       LDA    #$1C    
       STA    $A3     
       LDA    #$03    
       STA    $E8     
       STA    $E9     
       LDA    #$03    
       STA    $82     
       STA    $B1     
       STA    $B2     
       BIT    $C1     
       BVS    L3682   
       LSR    $B1     
L3682: BIT    $C1     
       BMI    L3688   
       LSR    $B2     
L3688: LDA    #$00    
       STA    AUDV1   
       STA    $EE     
       STA    $EF     
       STA    $EC     
       STA    $ED     
       STA    $EA     
       STA    $EB     
       STA    $DB     
       STA    $E7     
       STA    $E5     
       STA    $E3     
       STA    $E4     
       STA    $8A     
       STA    $D0     
       STA    $D2     
       STA    $D3     
       STA    $D4     
       STA    $CF     
       STA    $D1     
       LDA    #$A0    
       STA    $D5     
       RTS            

L36B5: INC    $B6     
       LDA    $B6     
       AND    #$3F    
       BEQ    L36C1   
       LDA    $DF     
       BNE    L36DB   
L36C1: INC    $E6     
       LDA    #$00    
       STA    $DC     
       STA    $B0     
       STA    $DB     
       STA    $C9     
       STA    $C7     
       LDA    #$1C    
       STA    $DF     
       LDA    #$83    
       STA    $D9     
       LDA    #$23    
       STA    $DA     
L36DB: RTS            

L36DC: BIT    $DC     
       BMI    L36F8   
       LDA    $B0     
       BEQ    L373C   
       LDA    $DB     
       BNE    L373C   
       LDA    $D2     
       BNE    L373C   
       BIT    $CD     
       BMI    L36F8   
       LDA    $C7     
       BNE    L36F8   
       LDA    #$04    
       STA    $CC     
L36F8: LDX    $CC     
       LDA    L3745,X 
       STA    $CA     
       LDA    L3746,X 
       STA    $CB     
       LDA    $C7     
       BNE    L3713   
       BIT    $C9     
       BMI    L3744   
       SEC            
       ROR    $C9     
       STA    $C8     
       BCC    L3722   
L3713: DEC    $C7     
       BNE    L3744   
       LDA    #$04    
       STA    AUDV0   
       LSR            
       STA    AUDV0   
       LDA    #$00    
       STA    AUDV0   
L3722: LDY    $C8     
       LDX    #$00    
L3726: LDA    ($CA),Y 
       STA    AUDC0,X 
       INY            
       INX            
       INX            
       CPX    #$06    
       BNE    L3726   
       LDA    ($CA),Y 
       INY            
       STY    $C8     
       STA    $C7     
       CMP    #$00    
       BNE    L3744   
L373C: LDA    #$00    
       STA    AUDV0   
       STA    $C9     
       STA    $DC     
L3744: RTS            

L3745: .byte $00
L3746: .byte $3E,$90,$3E,$C0,$3E,$E4,$3E,$08,$3F
L374F: LDA    $DB     
       BNE    L377B   
       LDX    #$00    
       LDA    $E7     
       BEQ    L375A   
       INX            
L375A: SED            
       CLC            
       LDA    $EE,X   
       ADC    #$01    
       STA    $EE,X   
       LDA    $EC,X   
       ADC    #$00    
       STA    $EC,X   
       JMP    L3771   
L376B: .byte $B5,$EA,$69,$00,$95,$EA
L3771: CLD            
       LDA    #$00    
       STA    $EA     
       STA    $EB     
       JSR    L388B   
L377B: RTS            

L377C: LDA    #$00    
       TAX            
       STA    $E0     
L3781: STX    $E1     
       LDA.wy $00EA,Y 
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       BEQ    L378F   
       INC    $E0     
L378F: LDA    $E0     
       BNE    L3795   
       LDX    #$0A    
L3795: LDA    L3DC0,X 
       LDX    $E1     
       STA    $94,X   
       INX            
       INX            
       STX    $E1     
       LDA.wy $00EA,Y 
       AND    #$0F    
       TAX            
       BEQ    L37AA   
       INC    $E0     
L37AA: LDA    $E0     
       BNE    L37B0   
       LDX    #$0A    
L37B0: LDA    L3DC0,X 
       LDX    $E1     
       STA    $94,X   
       INX            
       INX            
       INY            
       INY            
       CPY    #$06    
       BCC    L3781   
       LDA    $E0     
       BNE    L37C7   
       LDA    #$90    
       STA    $9E     
L37C7: LDA    #$3C    
       LDX    #$0A    
L37CB: STA    $95,X   
       DEX            
       DEX            
       BPL    L37CB   
       RTS            

L37D2: LDA    $E6     
       AND    #$03    
       TAX            
       INX            
       STX    $EE     
       LDA    #$00    
       STA    $EC     
       STA    $EA     
       RTS            

L37E1: LDX    #$0A    
       LDA    #$88    
L37E5: STA    $94,X   
       DEX            
       DEX            
       BPL    L37E5   
       LDA    $E7     
       BEQ    L37F4   
       LDY    $E9     
       JMP    L37F6   
L37F4: LDY    $E8     
L37F6: DEY            
L37F7: BEQ    L3802   
       LDA    #$80    
       STA    $A0,X   
       DEX            
       DEX            
       DEY            
       BNE    L37F7   
L3802: RTS            

L3803: LDA    $B0     
       BEQ    L3811   
       LDA    $DB     
       BNE    L3811   
       LDA    $E6     
       AND    #$02    
       BEQ    L382E   
L3811: LDA    $8C     
       BNE    L382A   
       INC    $8D     
       LDA    $8D     
       AND    #$07    
       TAX            
       JMP    L382B   
L381F: .byte $A5,$A3,$A8,$C9,$4F,$90,$05,$C0,$6A,$B0,$01
L382A: RTS            

L382B: LDA    L3DB8,X 
L382E: STA    $8B     
       JMP    L382A   
L3833: LDA    #$0F    
       JMP    L385F   
L3838: LDA    #$08    
       JMP    L385F   
L383D: LDA    #$04    
       JMP    L385F   
L3842: LDA    #$02    
       JMP    L385F   
L3847: LDA    #$08    
       STA    AUDC1   
       LDA    $D5     
       CMP    #$60    
       BCS    L3833   
       CMP    #$50    
       BCS    L3838   
       CMP    #$30    
       BCS    L383D   
       CMP    #$20    
       BCS    L3842   
       LDA    #$00    
L385F: STA    AUDV1   
       LDA    $8C     
       STA    AUDF1   
       AND    #$07    
       BNE    L3877   
       LDA    $8C     
       AND    #$08    
       BEQ    L3873   
       LDA    #$8D    
       BNE    L3875   
L3873: LDA    #$38    
L3875: STA    $A5     
L3877: RTS            

L3878: LDX    #$07    
L387A: LDA    L3D00,X 
       STA    $A8,X   
       DEX            
       BPL    L387A   
       LDA    #$38    
       STA    $A6     
       LDA    #$D8    
       STA    $A7     
       RTS            

L388B: INC    $E3,X   
       LDA    $E3,X   
       CMP    #$32    
       BNE    L38B8   
       LDA    #$00    
       STA    $E3,X   
       JSR    L38B9   
       LDA    #$1C    
       STA    $A3     
       JSR    L311B   
       LDA    $8C     
       AND    #$3F    
       TAY            
       LDA    L3D38,Y 
       STA    $A4     
       LDA    L3D78,Y 
       STA    $84     
       LDA    #$57    
       STA    $8F     
       LDX    $E7     
       LSR    $B1,X   
L38B8: RTS            

L38B9: LDX    $E7     
       CLC            
       LDA    $E8,X   
       ADC    #$01    
       CMP    #$07    
       BEQ    L38C6   
       STA    $E8,X   
L38C6: RTS            

L38C7: LDX    $E7     
       LDA    $B1,X   
       CMP    #$07    
       BNE    L38D0   
       LSR            
L38D0: STA    $B4,X   
       RTS            

L38D3: .byte $30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30
       .byte $30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30
       .byte $30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30
       .byte $30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30
       .byte $30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30
       .byte $30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30
       .byte $30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30
       .byte $30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30
       .byte $30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30
       .byte $30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30
       .byte $30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30
       .byte $30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30
       .byte $30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30
       .byte $30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30
       .byte $30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30
       .byte $30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30
       .byte $30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30
       .byte $30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30
       .byte $30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30
       .byte $30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30
       .byte $30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30
       .byte $30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30
       .byte $30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30
       .byte $30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30
       .byte $30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30
       .byte $30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30
       .byte $30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30
       .byte $30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30
       .byte $30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30
       .byte $30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30
       .byte $30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30
       .byte $30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30
       .byte $30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30
       .byte $30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30
       .byte $30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$00,$28,$38
       .byte $38,$FE,$38,$3C,$34,$30,$1C,$70,$90,$30,$78,$FD,$BF,$B8,$F8,$38
       .byte $78,$78,$7F,$38,$18,$28,$28,$44,$44,$C6,$C6,$C6,$A5,$00,$28,$38
       .byte $38,$FE,$38,$3C,$34,$30,$1C,$90,$70,$10,$38,$7C,$FC,$B7,$B8,$38
       .byte $79,$7A,$7C,$38,$38,$10,$10,$10,$10,$30,$30,$30,$28,$00,$28,$38
       .byte $38,$FE,$38,$3C,$34,$30,$1C,$70,$90,$30,$78,$7C,$BE,$BA,$B9,$38
       .byte $78,$78,$7F,$38,$18,$28,$28,$44,$44,$C6,$C6,$C6,$A5,$28,$38,$3E
       .byte $F0,$00,$38,$3C,$34,$30,$1C,$38,$48,$18,$3C,$3A,$3C,$1C,$0C,$0C
       .byte $BE,$FE,$0E,$0C,$1C,$18,$30,$60,$40,$60,$60,$60,$50,$00,$28,$38
       .byte $38,$FE,$38,$78,$58,$18,$70,$16,$18,$18,$1C,$36,$32,$76,$74,$70
       .byte $78,$38,$78,$B0,$B0,$20,$20,$20,$20,$30,$30,$30,$50,$14,$1C,$1C
       .byte $7F,$00,$1C,$3C,$0C,$2C,$3C,$09,$0E,$1C,$9E,$6E,$0E,$3F,$3F,$36
       .byte $18,$0C,$04,$08,$00,$00,$00,$00,$00,$30,$30,$30,$50,$00,$28,$38
       .byte $38,$FE,$38,$78,$58,$18,$70,$16,$18,$3C,$7E,$FB,$B9,$BB,$B4,$B0
       .byte $B8,$38,$38,$70,$B0,$90,$10,$10,$10,$30,$30,$30,$50,$00,$28,$38
       .byte $38,$FE,$38,$78,$58,$18,$70,$18,$16,$3C,$7E,$FB,$B9,$BB,$B4,$30
       .byte $38,$38,$38,$F0,$30,$10,$10,$10,$10,$30,$30,$30,$50,$01,$01,$02
       .byte $02,$04,$1C,$1C,$2E,$3E,$0E,$1C,$08,$1C,$3E,$7B,$F9,$79,$1B,$1C
       .byte $1E,$0F,$0F,$06,$04,$04,$04,$04,$04,$04,$04,$04,$1C,$10,$10,$08
       .byte $08,$04,$1C,$1C,$2E,$36,$06,$1C,$08,$1C,$3E,$7B,$F9,$71,$31,$32
       .byte $F8,$FC,$FC,$38,$00,$00,$00,$00,$00,$00,$00,$00,$00
L3C40: .byte $EE,$6C,$7C,$38,$38,$10,$38,$44
L3C48: .byte $00,$38,$7C,$FE,$FE,$7C,$38,$00,$89,$A8,$A8,$D8,$D9,$8A,$8A,$00
       .byte $C7,$88,$80,$87,$48,$28,$27,$00,$1C,$88,$88,$08,$08,$AA,$3E,$00
       .byte $71,$22,$22,$22,$22,$22,$71,$00,$A7,$48,$A8,$28,$28,$28,$C8,$00
       .byte $3E,$A0,$A0,$BC,$A0,$A0,$BE,$00,$08,$08,$38,$28,$28,$08,$08,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$3C,$66,$66,$66,$66,$66,$3C,$00
       .byte $7E,$18,$18,$18,$18,$18,$78,$38,$7E,$60,$60,$3C,$06,$46,$7C,$00
       .byte $3C,$46,$06,$0C,$06,$46,$3C,$00,$0C,$0C,$7E,$4C,$2C,$1C,$0C,$00
       .byte $7C,$46,$06,$7C,$60,$60,$7E,$00,$3C,$66,$66,$7C,$60,$62,$3C,$00
       .byte $18,$18,$08,$04,$02,$62,$7E,$00,$3C,$66,$66,$3C,$66,$66,$3C,$00
       .byte $3C,$46,$06,$3E,$66,$66,$3C,$00
L3CE0: .byte $00,$01,$03,$01,$0C,$3E,$18,$00
L3CE8: .byte $FF,$FF,$7F,$3F,$17,$17,$06,$06
L3CF0: .byte $00,$00,$00,$00,$00,$00,$00,$00,$40,$40,$50,$50,$70,$40,$40,$40
L3D00: .byte $26,$3A,$3A,$3A,$48,$3A,$3A,$00,$30,$30,$30,$30,$30,$30,$30,$30
L3D10: .byte $38,$38,$38,$38,$38,$38,$00,$00,$30,$30,$30,$30,$30,$30,$30,$30
L3D20: .byte $04,$06,$03,$07,$02,$03,$02,$00
L3D28: .byte $80,$80,$80,$40,$40,$40,$20,$20,$20,$10,$10,$10,$08,$08,$08,$00
L3D38: .byte $AC,$54,$9C,$5C,$84,$6C,$9C,$4C,$44,$AC,$74,$A4,$AC,$5C,$6C,$8C
       .byte $7C,$44,$7C,$7C,$4C,$A4,$64,$84,$5C,$74,$94,$AC,$AC,$84,$5C,$64
       .byte $6C,$74,$74,$6C,$74,$AC,$54,$94,$44,$4C,$5C,$64,$9C,$94,$AC,$7C
       .byte $9C,$9C,$AC,$AC,$4C,$8C,$8C,$84,$64,$74,$7C,$94,$AC,$6C,$54,$4C
L3D78: .byte $00,$01,$01,$06,$03,$04,$01,$01,$06,$00,$03,$00,$00,$03,$01,$03
       .byte $03,$03,$00,$00,$06,$00,$04,$00,$01,$03,$01,$00,$00,$02,$06,$02
       .byte $06,$01,$03,$02,$03,$00,$06,$01,$03,$06,$04,$03,$01,$01,$00,$03
       .byte $01,$01,$00,$00,$06,$03,$02,$03,$06,$03,$02,$01,$00,$03,$03,$01
L3DB8: .byte $00,$01,$00,$00,$01,$00,$01,$01
L3DC0: .byte $90,$98,$A0,$A8,$B0,$B8,$C0,$C8,$D0,$D8,$88,$30,$30,$30,$30,$30
       .byte $30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30
       .byte $30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30
       .byte $30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30
       .byte $05,$1E,$0A,$0C,$05,$1E,$00,$04,$05,$1E,$0A,$04,$05,$1E,$00,$04
       .byte $05,$1E,$0A,$04,$05,$1E,$00,$04,$05,$1E,$0A,$0C,$05,$1E,$00,$04
       .byte $05,$1E,$0A,$04,$05,$1E,$00,$04,$05,$1E,$0A,$08,$05,$14,$0A,$10
       .byte $05,$18,$0A,$10,$05,$14,$0A,$10,$05,$18,$0A,$10,$05,$14,$0A,$10
       .byte $05,$18,$0A,$10,$05,$1E,$0A,$0C,$05,$1E,$00,$04,$05,$1E,$0A,$04
       .byte $05,$1E,$00,$04,$05,$1E,$0A,$04,$05,$1E,$00,$04,$05,$1E,$0A,$0C
       .byte $05,$1E,$00,$04,$05,$1E,$0A,$04,$05,$1E,$00,$04,$05,$1E,$0A,$08
       .byte $05,$14,$0A,$10,$05,$18,$0A,$10,$05,$14,$0A,$10,$05,$18,$0A,$10
       .byte $05,$14,$0A,$10,$05,$18,$0A,$10,$05,$1E,$0A,$20,$05,$1E,$00,$40
       .byte $0D,$15,$0A,$2C,$0D,$18,$0A,$2C,$0D,$1C,$0A,$0B,$0D,$18,$00,$0B
       .byte $0D,$1C,$0A,$0B,$0D,$1C,$00,$0B,$0D,$1C,$0A,$2C,$0D,$1F,$0A,$16
       .byte $0D,$1C,$0A,$0B,$0D,$1C,$00,$0B,$0D,$1C,$0A,$2C,$00,$00,$00,$00
       .byte $06,$0E,$0F,$03,$06,$0E,$00,$12,$06,$0E,$08,$03,$06,$0E,$00,$12
       .byte $06,$0E,$08,$03,$06,$0E,$00,$12,$06,$0E,$08,$03,$06,$0E,$00,$12
       .byte $00,$00,$00,$00,$0D,$1C,$0A,$14,$0D,$1C,$00,$04,$0D,$1C,$0A,$08
       .byte $0D,$15,$0A,$50,$0D,$15,$00,$10,$0D,$1C,$0A,$18,$0D,$15,$0A,$08
       .byte $0D,$10,$0A,$40,$00,$00,$00,$00,$0D,$15,$0A,$08,$0D,$10,$0A,$08
       .byte $0D,$0C,$0A,$08,$0D,$0A,$0A,$10,$0D,$0C,$0A,$08,$0D,$0A,$0A,$20
       .byte $00,$00,$00,$00
L3F24: .byte $00,$BE,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30
       .byte $30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30
       .byte $30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30
       .byte $30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30
       .byte $30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30
       .byte $30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30
       .byte $30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30
       .byte $30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30
       .byte $30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30
       .byte $30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30
       .byte $30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30
       .byte $30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30
       .byte $30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30
       .byte $30,$30,$30,$30,$00,$30,$00,$30,$00,$30,$00,$30
