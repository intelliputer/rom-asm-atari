; Disassembly of roms/Cosmic Commuter.bin
; Disassembled Tue Oct  6 15:21:08 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Cosmic Commuter.bin
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
REFP1   =  $0C
PF1     =  $0E
PF2     =  $0F
RESP0   =  $10
RESP1   =  $11
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
HMBL    =  $24
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXM0P   =  $30
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
       LDX    #$FF    
       TXS            
       INX            
       TXA            
LF007: STA    VSYNC,X 
       INX            
       BNE    LF007   
       TAY            
       INC    $81     
       INC    $B9     
       JSR    LFF0A   
LF014: DEY            
       STA    WSYNC   
       STY    VBLANK  
       LDA    #$20    
       STA    TIM64T  
       CPY    SWCHA   
       BEQ    LF026   
       INY            
       STY    $BA     
LF026: LDA    $D0     
       LSR            
       BCC    LF033   
       DEC    $E4     
       BPL    LF033   
       LDA    #$02    
       STA    $E4     
LF033: BIT    $BB     
       BMI    LF047   
       LDA    $82     
       BNE    LF04F   
       LDA    $E5     
       CMP    #$09    
       BNE    LF047   
       DEC    $BB     
       LDX    #$BD    
       BNE    LF059   
LF047: LDA    $D0     
       AND    #$07    
       BNE    LF04F   
       DEC    $BC     
LF04F: LDY    #$00    
       LDA    SWCHB   
       LSR            
       BCS    LF069   
       LDX    #$B7    
LF059: LDA    #$00    
LF05B: STA    VSYNC,X 
       INX            
       BNE    LF05B   
       DEX            
       STX    $82     
       JSR    LFF0A   
LF066: JMP    LF4AF   
LF069: LSR            
       BCS    LF091   
       STY    $82     
       LDA    $CC     
       BEQ    LF076   
       DEC    $CC     
       BPL    LF093   
LF076: STY    $B8     
       STY    $B7     
       STY    $BB     
       STY    $E5     
       STY    $F7     
       STY    $EA     
       LDX    $81     
       INX            
       CPX    #$03    
       BNE    LF08B   
       LDX    #$01    
LF08B: STX    $B9     
       STX    $81     
       LDY    #$1E    
LF091: STY    $CC     
LF093: LDA    $82     
       BEQ    LF066   
       LDA    $BB     
       ORA    $CE     
       BNE    LF0C7   
       LDX    #$FF    
LF09F: INX            
       CPX    #$04    
       BCS    LF0C7   
       LDA    $92,X   
       BPL    LF09F   
       LDY    $E6,X   
       BNE    LF0C7   
       LDA    #$D7    
       STA    $C8,X   
       LDA    $D1,X   
       CMP    #$5C    
       BEQ    LF0BD   
       JSR    LFC12   
       DEC    $CE     
       BNE    LF0F4   
LF0BD: INY            
       JSR    LFC0A   
       LDA    #$48    
       STA    $C4     
       BNE    LF0F4   
LF0C7: LDY    #$51    
       LDA    $E3     
       CMP    #$08    
       BCC    LF0F4   
       BIT    CXM0P   
       BPL    LF0F4   
       LDX    #$FF    
LF0D5: INX            
       CPX    #$04    
       BCS    LF0F4   
       LDA    $BD     
       ADC    #$19    
       CMP    $D6,X   
       BCC    LF0D5   
       BEQ    LF0D5   
       LDA    $E6,X   
       BNE    LF0F4   
       STY    $E3     
       LDA    #$0F    
       STA    $E6,X   
       JSR    LFF27   
       JSR    LFC08   
LF0F4: LDA    $D0     
       LDY    $F0     
       AND    LFC20,Y 
       BNE    LF10B   
       LDA    $CE     
       ORA    $BF     
       BNE    LF10F   
       DEC    $C4     
       BPL    LF10F   
       DEC    $CE     
       INC    $C4     
LF10B: AND    #$07    
       BNE    LF128   
LF10F: LDY    $E1     
       BNE    LF128   
       LDA    #$10    
       AND    SWCHA   
       ORA    $BB     
       BNE    LF124   
LF11C: INC    $CF     
       LDX    #$09    
       CPX    $CF     
       BCS    LF128   
LF124: DEC    $CF     
       BMI    LF11C   
LF128: LDA    $E1     
       ORA    $BB     
       BPL    LF151   
       JSR    LFC08   
       LDA    #$10    
       STA    $F1     
       LDA    #$80    
       STA    $BE     
       STA    $F3     
       LDA    $E2     
       BEQ    LF145   
       STA    $DF     
       LDX    #$40    
       STX    $E1     
LF145: AND    #$07    
       CMP    #$04    
       LDA    #$2F    
       BCC    LF14F   
       LDA    #$1F    
LF14F: BNE    LF17B   
LF151: LDX    #$3F    
       LDA    SWCHA   
       STA    $F3     
       AND    #$C0    
       CMP    #$C0    
       BEQ    LF16C   
       CMP    $BE     
       BNE    LF16C   
       INC    $F1     
       CPX    $F1     
       BCS    LF178   
       STX    $F1     
       BCC    LF178   
LF16C: DEC    $F1     
       BPL    LF178   
       CMP    #$C0    
       BEQ    LF176   
       STA    $BE     
LF176: INC    $F1     
LF178: TXA            
       AND    $F3     
LF17B: ORA    $BE     
       STA    $80     
       LDA    $F1     
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       CPY    #$03    
       BEQ    LF18B   
       INY            
LF18B: STY    $F0     
       LDA    $E1     
       BEQ    LF1A1   
       LDA    $CE     
       BEQ    LF19B   
       LDA    $BD     
       CMP    #$06    
       BCC    LF1A1   
LF19B: BIT    $80     
       BPL    LF1B9   
       BVC    LF1E3   
LF1A1: LDX    #$00    
       STX    $F2     
       STX    $F4     
       LDA    #$03    
       STA    $F5     
       LDA    #$FE    
       STA    $F6     
       STX    $F0     
       STX    $F1     
       LDA    #$C0    
       STA    $BE     
       BNE    LF1E0   
LF1B9: LDA    $C2     
       CMP    #$A0    
       BNE    LF1C7   
       DEC    $E2     
       BPL    LF1C7   
       LDX    #$3F    
       STX    $E2     
LF1C7: CLC            
       ADC    #$FF    
       BCS    LF1CE   
       LDA    #$A6    
LF1CE: STA    $C2     
       DEY            
       BNE    LF1B9   
       LDA    $C7     
       CLC            
       SBC    $F0     
       CMP    #$A0    
       BCC    LF1DE   
       LDA    #$9E    
LF1DE: STA    $C7     
LF1E0: JMP    LF20E   
LF1E3: LDX    #$00    
LF1E5: TXA            
       SEC            
       ADC    $C2     
       CMP    #$A8    
       BCC    LF1EE   
       TXA            
LF1EE: STA    $C2     
       CMP    #$A0    
       BNE    LF1FE   
       INC    $E2     
       LDA    $E2     
       CMP    #$40    
       BCC    LF1FE   
       STX    $E2     
LF1FE: DEY            
       BNE    LF1E5   
       LDA    $C7     
       SEC            
       ADC    $F0     
       CMP    #$A0    
       BCC    LF20C   
       LDA    #$01    
LF20C: STA    $C7     
LF20E: LDA    $CE     
       ORA    $BF     
       BNE    LF256   
       LDA    $E1     
       BNE    LF24C   
       LDA    $C5     
       CMP    #$03    
       BEQ    LF256   
       LDX    $CF     
       LDA    #$85    
       CPX    #$06    
       BCC    LF256   
       BEQ    LF22A   
       INC    $BD     
LF22A: INC    $BD     
       CMP    $BD     
       BCS    LF294   
       STA    $BD     
       TAY            
       BPL    LF294   
       LDX    $CD     
       BEQ    LF294   
       LDA    #$00    
       STA    $DF     
       TXA            
       ASL            
       ASL            
       ASL            
       ASL            
       BMI    LF245   
       LSR            
LF245: LDY    #$04    
       JSR    LFC15   
       BNE    LF294   
LF24C: LDA    #$10    
       BIT    $80     
       BNE    LF256   
       LDA    #$68    
       BNE    LF22A   
LF256: LDX    #$00    
       LDY    #$04    
       CPY    $C5     
       BEQ    LF294   
       INY            
       LDA    $CE     
       BEQ    LF2A1   
       STX    $DF     
       LDA    $BD     
       CMP    #$07    
       BCS    LF297   
       STY    $BD     
       DEC    $E0     
       BNE    LF294   
       STX    $CE     
       STX    $E1     
       STX    $E2     
       STX    $CD     
       BIT    $BB     
       BPL    LF282   
       DEX            
       STX    $C6     
       BNE    LF284   
LF282: DEC    $C3     
LF284: LDA    #$85    
       STA    $BD     
       STA    $BF     
       LDA    #$4B    
       STA    $C2     
       LDA    $C6     
       BNE    LF294   
       INC    $C6     
LF294: JMP    LF36A   
LF297: LDA    #$50    
       STA    $E0     
       DEC    $BD     
LF29D: DEC    $BD     
       BNE    LF294   
LF2A1: LDA    $BF     
       BEQ    LF2CE   
       LDA    $C3     
       BEQ    LF294   
       STY    $CF     
       LDA    $DB     
       ORA    $DC     
       ORA    $F7     
       BNE    LF294   
       LDA    $BD     
       CMP    #$69    
       BNE    LF29D   
       LDA    #$48    
       STA    $C4     
       BIT    $BB     
       BMI    LF2CA   
       LDA    #$10    
       BIT    SWCHA   
       BNE    LF294   
       LDA    #$80    
LF2CA: STX    $BF     
       BMI    LF294   
LF2CE: LDA    $E1     
       BEQ    LF32D   
       LDA    #$20    
       BIT    $80     
       BNE    LF2DA   
       DEC    $BD     
LF2DA: LDA    $C2     
       SEC            
       SBC    #$49    
       CMP    #$05    
       BCS    LF2EF   
       LDA    #$07    
       LDY    $E2     
       BEQ    LF2F1   
       LDY    $8B     
       CPY    #$86    
       BEQ    LF2F1   
LF2EF: LDA    #$08    
LF2F1: CMP    $BD     
       BCC    LF2F7   
       STA    $BD     
LF2F7: LDA    $BD     
       CMP    #$08    
       BCS    LF36A   
       LDA    $E2     
       BNE    LF31A   
       LDA    $C6     
       BNE    LF317   
       LDA    $CD     
       BEQ    LF36A   
       LDA    #$00    
       STA    $E1     
       STA    $EB     
       LDA    #$4B    
       STA    $C2     
       LDA    #$05    
       STA    $BD     
LF317: JMP    LF36A   
LF31A: LSR            
       LSR            
       LSR            
       TAY            
       LDA    LFF02,Y 
       AND    $C6     
       STA    $C6     
       LDA    #$C8    
       STA    $F7     
       INC    $CD     
       BNE    LF36A   
LF32D: LDA    $BD     
       CMP    #$05    
       BEQ    LF361   
       LDX    $CF     
       CPX    #$04    
       BCS    LF36A   
       SBC    LFC32,X 
       STA    $BD     
       CMP    #$06    
       BCS    LF36A   
       STY    $BD     
       CPX    #$02    
       BCC    LF352   
       LDA    $CD     
       BNE    LF36A   
       LDA    #$64    
       STA    $F7     
       BNE    LF36A   
LF352: BIT    $BB     
       BMI    LF36A   
       DEC    $CE     
       JSR    LFC08   
       LDA    #$40    
       STA    $E0     
       BNE    LF36A   
LF361: LDA    $CD     
       ORA    $F7     
       BNE    LF36A   
       SEC            
       ROR    $E1     
LF36A: LDX    #$03    
LF36C: LDA    $C0     
       ASL            
       ASL            
       ASL            
       EOR    $C0     
       ASL            
       ROL    $C0     
       LDA    $E6,X   
       BEQ    LF37E   
       DEC    $E6,X   
       BEQ    LF3B6   
LF37E: LDY    $DB,X   
       BEQ    LF3B6   
       LDA    LFBBC,Y 
       CLC            
       ADC    $F0     
       ADC    $FA     
       TAY            
       LDA    $CE     
       ORA    $BF     
       BEQ    LF393   
       LDY    #$07    
LF393: LDA    LFC22,Y 
       AND    $D0     
       BNE    LF3B3   
       LDA    $C8,X   
       BIT    $BE     
       BPL    LF3A6   
       ADC    LFFE1,Y 
       JMP    LF3AA   
LF3A6: SEC            
       SBC    LFFE1,Y 
LF3AA: STA    $C8,X   
       SEC            
       SBC    #$D2    
       CMP    #$0A    
       BCC    LF3B6   
LF3B3: JMP    LF426   
LF3B6: LDA    $C0     
       AND    #$0F    
       STA    $80     
       LSR            
       TAY            
       INY            
       BIT    $BB     
       BMI    LF3CE   
       LDA    $81     
       LSR            
       BCC    LF3CE   
       LDY    $C1     
       LDA    LFBC5,Y 
       TAY            
LF3CE: STY    $DB,X   
       LSR            
       BCS    LF3D9   
       BIT    $C0     
       BPL    LF3D9   
       DEC    $DB,X   
LF3D9: TXA            
       BNE    LF3F1   
       INC    $F8     
       LDY    $C1     
       LDA    #$03    
       CPY    #$05    
       BCS    LF3E7   
       LSR            
LF3E7: AND    $F8     
       ORA    $F2     
       BNE    LF3F1   
       LDA    #$09    
       STA    $DB,X   
LF3F1: LDA    $DF     
       BNE    LF3F7   
       STA    $DB,X   
LF3F7: LDA    $80     
       ORA    #$F0    
       BIT    $BE     
       BMI    LF401   
       AND    #$AF    
LF401: STA    $C8,X   
       LDY    #$01    
LF405: LDA    $BD     
       CLC            
       ADC    LFBCE,Y 
       CMP    LFDFC,X 
       BEQ    LF424   
       BCS    LF417   
       CMP    LFBB9,X 
       BCS    LF424   
LF417: DEY            
       BPL    LF405   
       LDA    LFDFC,X 
       BIT    $C0     
       BPL    LF424   
       LDA    LFBB9,X 
LF424: STA    $D6,X   
LF426: DEX            
       BMI    LF42C   
       JMP    LF36C   
LF42C: LDY    #$01    
       LDA    $E1     
       BEQ    LF448   
       LDA    $C6     
       ORA    $F7     
       ORA    $CE     
       BNE    LF448   
       STX    $C5     
       STX    $F2     
       LDA    $D0     
       AND    #$10    
       BEQ    LF448   
       TYA            
       JSR    LFC15   
LF448: INC    $F4     
       BNE    LF465   
       DEC    $F5     
       BPL    LF465   
       LDY    #$03    
       STY    $F5     
       LDA    $C6     
       AND    $F6     
       CMP    $C6     
       BEQ    LF462   
       STA    $C6     
       DEY            
       JSR    LFC12   
LF462: SEC            
       ROL    $F6     
LF465: LDA    $C3     
       ORA    $CE     
       ORA    $DB     
       ORA    $DC     
       ORA    $DD     
       ORA    $DE     
       BNE    LF477   
       STA    $82     
       STA    $E5     
LF477: LDA    $E1     
       BEQ    LF4A0   
       LDA    $E3     
       CMP    #$51    
       BNE    LF493   
       BIT    $BB     
       BMI    LF48F   
       BIT    INPT4   
       BMI    LF4A0   
       BIT    $F3     
       BVC    LF499   
       BPL    LF495   
LF48F: BIT    $BE     
       BMI    LF499   
LF493: BCC    LF499   
LF495: ADC    #$04    
       BNE    LF49C   
LF499: SEC            
       SBC    #$05    
LF49C: CMP    #$9C    
       BCC    LF4A2   
LF4A0: LDA    #$51    
LF4A2: BIT    $CE     
       BPL    LF4A8   
       LDA    #$01    
LF4A8: STA    $E3     
       LDX    #$02    
       JSR    LFED9   
LF4AF: LDX    INTIM   
       BNE    LF4AF   
       LDY    #$82    
       STY    WSYNC   
       STY    VSYNC   
       STY    WSYNC   
       STY    WSYNC   
       STY    WSYNC   
       STX    VSYNC   
       INC    $D0     
       BNE    LF4D5   
       INC    $E5     
       LDA    $E5     
       AND    #$07    
       BNE    LF4D5   
       INC    $BA     
       BNE    LF4D5   
       SEC            
       ROR    $BA     
LF4D5: LDA    #$29    
       STA    WSYNC   
       STA    TIM64T  
       JSR    LFF58   
       JSR    LFBD2   
       LDX    #$03    
LF4E4: LDA    #$B9    
       LDY    $DB,X   
       CPY    #$09    
       BEQ    LF51C   
       CPY    #$03    
       BCS    LF4F7   
       LDY    $E4     
       LDA    LFCD8,Y 
       BNE    LF51C   
LF4F7: CPY    #$07    
       BCC    LF505   
       LDY    $E4     
       JSR    LFBE5   
       LDA    LFDF9,Y 
       BNE    LF51C   
LF505: LDA    $D0     
       LSR            
       LSR            
       AND    #$03    
       CPY    #$05    
       BCC    LF518   
       TAY            
       JSR    LFBDF   
       LDA    LFFF7,Y 
       BNE    LF51C   
LF518: TAY            
       LDA    LFDF5,Y 
LF51C: STA    $97,X   
       LDY    $DB,X   
       LDA    LFECF,Y 
       STA    $D1,X   
       LDA    $E6,X   
       BEQ    LF533   
       AND    #$04    
       LSR            
       LSR            
       TAY            
       LDA    LFFED,Y 
       STA    $97,X   
LF533: LDA    $C8,X   
       CMP    #$A0    
       BCC    LF53B   
       LDA    #$00    
LF53B: JSR    LFEF1   
       STA    $92,X   
       STY    $8D,X   
       DEX            
       BPL    LF4E4   
       LDA    $97     
       STA    $89     
       LDA    #$FC    
       STA    $8A     
       LDA    $D6     
       STA    $DA     
       LDA    $BD     
       BPL    LF557   
       LDA    #$70    
LF557: LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    LFFEF,Y 
       BIT    $E1     
       BMI    LF568   
       BVS    LF568   
       LDA    LFB47,Y 
LF568: STA    $83     
       INX            
       LDA    $BF     
       ORA    $CE     
       ORA    $BB     
       BNE    LF5AB   
       LDA    $82     
       BEQ    LF5AB   
       TYA            
       TAX            
       INX            
       LDA    #$F1    
       BIT    $E1     
       BEQ    LF5A1   
       LDA    $F0     
       TAX            
       LDA    LFFE9,X 
       STA    AUDF0   
       INX            
       INX            
       LDA    $C6     
       BEQ    LF5A3   
       LDA    $E3     
       CMP    #$51    
       BEQ    LF5A3   
       LDX    #$05    
       LSR            
       LSR            
       LSR            
       CMP    #$0A    
       BCC    LF5A1   
       EOR    #$FF    
       ADC    #$95    
LF5A1: STA    AUDF0   
LF5A3: LDA    $C4     
       CMP    #$19    
       BCS    LF5AB   
       LDX    $C0     
LF5AB: STX    AUDV0   
       LDA    LFB39,Y 
       AND    $D0     
       TAX            
       LDA    LFE3E,X 
       LDY    #$42    
       LDX    $E1     
       BEQ    LF5C0   
       LDA    #$5F    
       LDY    #$5F    
LF5C0: STA    $B1     
       LDA    $CE     
       BEQ    LF5E4   
       LDA    $BD     
       CMP    #$05    
       BNE    LF5E4   
       LDA    $E0     
       LDX    $E1     
       BNE    LF5DC   
       LDX    $C0     
       CMP    #$20    
       BCS    LF5E6   
       LDX    #$22    
       STX    $83     
LF5DC: LSR            
       LSR            
       AND    #$01    
       TAX            
       LDY    LFFED,X 
LF5E4: LDX    #$FF    
LF5E6: STY    $9B     
       STX    $EE     
       LDA    #$FC    
       STA    $9C     
       STA    $B2     
       LDY    #$06    
LF5F2: LDA    ($B1),Y 
       STA.wy $009D,Y 
       DEY            
       BPL    LF5F2   
       STY    $EF     
       LDA    #$92    
       STA    COLUBK  
       LDX    #$04    
       LDA    $E2     
       BNE    LF60E   
       LDA    $E1     
       BNE    LF630   
       LDX    #$02    
       BNE    LF638   
LF60E: DEX            
       AND    #$07    
       CMP    #$05    
       BNE    LF630   
       DEX            
       LDA    $E2     
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    $C6     
LF61E: LSR            
       DEY            
       BPL    LF61E   
       BCC    LF630   
       LDA    #$44    
       STA    COLUBK  
       DEX            
       LDA    #$10    
       BIT    $D0     
       BEQ    LF630   
       DEX            
LF630: LDA    #$05    
       CPX    #$03    
       BCS    LF638   
       LDA    #$00    
LF638: STA    $EB     
       LDA    $C2     
       CMP    #$A1    
       BCC    LF649   
       CPX    #$03    
       BCS    LF646   
       LDX    #$05    
LF646: SEC            
       SBC    #$08    
LF649: CMP    #$A0    
       BCC    LF64F   
       LDA    #$9F    
LF64F: JSR    LFEF1   
       STA    $96     
       STY    $91     
       CPX    #$03    
       BCC    LF66E   
       LDY    $C2     
       CPY    #$98    
       BCC    LF66E   
       LDA    #$0F    
       STA    $EF     
       CPY    #$A1    
       BCS    LF66E   
       LDA    #$08    
       ORA    $EB     
       STA    $EB     
LF66E: LDA    LFE7A,X 
       STA    $87     
       LDA    LFE80,X 
       STA    $8B     
       LDA    LFB41,X 
       STA    $85     
       LDA    $C0     
       AND    #$05    
       STA    $80     
       LDA    #$53    
       LDX    $E1     
       BEQ    LF69A   
       BIT    $F3     
       BVC    LF697   
       BPL    LF695   
       BIT    $BE     
       BVC    LF697   
       BMI    LF69A   
LF695: LDA    #$4E    
LF697: CLC            
       ADC    $80     
LF69A: JSR    LFEF1   
       STA    $B0     
       LDA    $F7     
       BEQ    LF6AD   
       LDY    #$03    
       JSR    LFC0A   
       DEC    $F7     
       JSR    LFF27   
LF6AD: LDA    $E2     
       EOR    #$FF    
       LSR            
       SEC            
       SBC    #$41    
       LDX    #$03    
       JSR    LFED9   
       DEX            
       LDY    #$08    
       STY    AUDC0   
       LDA    $C6     
       CPX    $F5     
       BCC    LF6D1   
       LDA    $F4     
       ASL            
       ASL            
       ASL            
       ASL            
       LDA    $C6     
       BCS    LF6D1   
       AND    $F6     
LF6D1: ASL            
       ROL    $EC     
       ROL    $ED     
       CLC            
       ROL    $EC     
       ROL    $ED     
       DEY            
       BNE    LF6D1   
LF6DE: TXA            
       ASL            
       ASL            
       TAY            
       LDA    $B7,X   
       AND    #$F0    
       LSR            
       STA.wy $00A4,Y 
       LDA    $B7,X   
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA.wy $00A6,Y 
       DEX            
       BPL    LF6DE   
       INX            
       LDY    #$C8    
LF6FA: LDA    $A4,X   
       BNE    LF706   
       STY    $A4,X   
       INX            
       INX            
       CPX    #$0A    
       BCC    LF6FA   
LF706: LDA    INTIM   
       BNE    LF706   
       STX    WSYNC   
       STX    HMOVE   
       STA    $D5     
       BIT    $BA     
       BPL    LF717   
       LDA    #$02    
LF717: STA    VBLANK  
       LDA    #$FE    
       STA    $84     
       STA    $86     
       STA    $88     
       STA    $8C     
       STA    HMCLR   
       NOP            
       JSR    LFB4F   
       STA    COLUPF  
       STA    NUSIZ1  
       STA    VDELP0  
       LDX    $B0     
       LDA    $D1     
       STA    COLUP1  
       LDA    #$30    
       STA    CTRLPF  
       LDY    #$22    
       STA    RESP0   
       STA    HMCLR   
       JSR    LFFC2   
       STY    HMBL    
       STY.w  $001F   
       STA    RESBL   
       STA    HMOVE   
       LDY    #$12    
LF74D: LDA    ($9B),Y 
       AND    $EE     
       STA.wy $00A4,Y 
       DEY            
       BPL    LF74D   
       LDY    $8D     
       STA    WSYNC   
       JSR    LFFC2   
LF75E: DEY            
       BPL    LF75E   
       STA.w  $0011   
       STA    WSYNC   
       STA    HMOVE   
       INY            
       STY    ENABL   
       STA    CXCLR   
       LDY    #$05    
       LDA    #$20    
LF771: DEY            
       BPL    LF771   
       STA.w  $0014   
       STX    HMBL    
       STA    HMP0    
       STA    CTRLPF  
       LDA    $92     
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$35    
       STA    NUSIZ0  
       LDA    #$1F    
       STA    COLUPF  
       LDX    $C1     
       LDY    LFCE9,X 
       LDX    #$85    
       LDA    $BD     
       CMP    #$6C    
       STA    HMCLR   
       STA    WSYNC   
       STA    HMOVE   
       STY    COLUBK  
       BCC    LF7C0   
       TXA            
       SEC            
       SBC    $BD     
       TAY            
       LDA    LFE90,Y 
       STA    COLUP0  
       LDA    LFDDB,Y 
       JMP    LF7D3   
LF7B2: TXA            
       SBC    $DA     
       BEQ    LF7EA   
       TAY            
       CMP    #$09    
       BCS    LF7C0   
       LDA    ($89),Y 
       STA    GRP1    
LF7C0: TXA            
       SEC            
       SBC    $BD     
       CMP    #$1A    
       BCC    LF7CA   
       LDA    #$00    
LF7CA: TAY            
       LDA    LFE90,Y 
       STA    COLUP0  
       LDA    LFDC2,Y 
LF7D3: STA    HMP0    
       STA    WSYNC   
LF7D7: STA    HMOVE   
       STA    ENAM0   
       STA    ENABL   
       LDA.wy $009D,Y 
       STA    GRP0    
       DEX            
       CPX    #$1A    
       BNE    LF7B2   
       JMP    LF910   
LF7EA: STA    GRP1    
       LDY    $D5     
       LDA.wy $0093,Y 
       STA    $89     
       TXA            
       SEC            
       SBC    $BD     
       CMP    #$1A    
       BCC    LF7FD   
       LDA    #$00    
LF7FD: TAY            
       LDA    LFDC2,Y 
       STA    HMP0    
       DEX            
       INC    $D5     
       STA    WSYNC   
       STA    HMOVE   
       STA    ENAM0   
       STA    ENABL   
       LDA.wy $009D,Y 
       STA    GRP0    
       LDA    LFE90,Y 
       STA    COLUP0  
       LDY    $D5     
       LDA.wy $00D6,Y 
       STA    $DA     
       LDA.wy $008D,Y 
       STA    $97     
       LDA    CXPPMM  
       STA.wy $0091,Y 
       TXA            
       DEX            
       SEC            
       SBC    $BD     
       CMP    #$1A    
       BCC    LF834   
       LDA    #$00    
LF834: TAY            
       LDA    LFDC2,Y 
       STA    HMP0    
       STA    WSYNC   
       STA    HMOVE   
       STA    ENAM0   
       STA    ENABL   
       LDA.wy $009D,Y 
       STA    GRP0    
       LDA    LFE90,Y 
       STA    COLUP0  
       TXA            
       DEX            
       NOP            
       SEC            
       SBC    $BD     
       CMP    #$1A    
       BCC    LF858   
       LDA    #$00    
LF858: TAY            
       LDA    LFDC1,Y 
       STA    $80     
       LDA.wy $009D,Y 
       STA    GRP0    
       LDA    LFE90,Y 
       STA    COLUP0  
       LDA    LFDC2,Y 
       STA    HMP0    
       STA    WSYNC   
       STA    HMOVE   
       STA    ENAM0   
       STA    ENABL   
       LDA    $80     
       LDY    $97     
       BEQ    LF8F4   
       CPY    #$0A    
       BEQ    LF8F6   
LF87F: DEY            
       BNE    LF87F   
       STA    RESP1   
       STA    HMP0    
LF886: STA    WSYNC   
LF888: STA    HMOVE   
       STA    ENAM0   
       STA    ENABL   
       TXA            
       SEC            
       SBC    $BD     
       CMP    #$1A    
       BCC    LF898   
       LDA    #$00    
LF898: TAY            
       LDA.wy $009D,Y 
       STA    GRP0    
       LDA    LFE90,Y 
       STA    COLUP0  
       LDA    $89     
       STA    HMP1    
       DEX            
       TXA            
       SEC            
       SBC    $BD     
       CMP    #$1A    
       BCC    LF8B2   
       LDA    #$00    
LF8B2: TAY            
       LDA    LFDC2,Y 
       STA    HMP0    
       DEX            
       STA    WSYNC   
       STA    HMOVE   
       STA    ENAM0   
       STA    ENABL   
       LDA    LFE90,Y 
       STA    COLUP0  
       LDA.wy $009D,Y 
       STA    GRP0    
       LDY    $D5     
       STY    HMP1    
       LDA.wy $0097,Y 
       STA    $89     
       LDA.wy $00D1,Y 
       STA    COLUP1  
       TXA            
       SEC            
       SBC    $BD     
       CMP    #$1A    
       BCC    LF8E6   
       LDA    #$00    
       TAY            
       BEQ    LF8EA   
LF8E6: TAY            
       LDA    LFE90,Y 
LF8EA: STA    COLUP0  
       LDA    LFDC2,Y 
       STA    HMP0    
       JMP    LF7D7   
LF8F4: BEQ    LF905   
LF8F6: NOP            
       STA.w  $0020   
       LDY    #$07    
LF8FC: DEY            
       BPL    LF8FC   
       STA.w  $0011   
       JMP    LF888   
LF905: STA    RESP1   
       LDY    #$60    
       STY    HMP1    
       STA    HMP0    
       JMP    LF886   
LF910: STX    VDELP1  
       DEY            
       BPL    LF916   
       INY            
LF916: LDX    #$05    
       STX    ENABL   
       LDA    $EB     
       STA    NUSIZ1  
       STA    REFP1   
LF920: LDA    LFDC2,Y 
       STA    HMP0    
       STA    WSYNC   
       STA    HMOVE   
       STA    ENAM0   
       LDA    LFCF2,X 
       STA    COLUBK  
       LDA.wy $009D,Y 
       STA    GRP0    
       LDA    LFE90,Y 
       STA    COLUP0  
       DEY            
       BPL    LF93E   
       INY            
LF93E: DEX            
       BPL    LF920   
       TYA            
       TAX            
       LDY    #$00    
       BEQ    LF94B   
LF947: DEX            
       BPL    LF94B   
       INX            
LF94B: LDA    LFDC2,X 
       STA    HMP0    
       CMP    ($80,X) 
       LDA    LFE90,X 
       STA    COLUP0  
       LDA    $9D,X   
       STA    GRP0    
       STA    WSYNC   
       STA    HMOVE   
       LDA    ($87),Y 
       AND    $EF     
       STA    GRP1    
       LDA    ($8B),Y 
       STA    COLUP1  
       INY            
       CPY    #$0A    
       BCC    LF947   
       LDY    #$00    
       STY    COLUP0  
       STY.w  $0008   
       STY    GRP0    
       LDX    #$65    
       STX    NUSIZ1  
       STA    RESP0   
       STX    HMP0    
LF97F: STA    WSYNC   
       STA    HMOVE   
       LDA    ($83),Y 
       STA    GRP0    
       LDA    ($85),Y 
       AND    $EF     
       STA    GRP1    
       INY            
       CPY    #$07    
       STA    HMCLR   
       BNE    LF97F   
       LDY    #$04    
       STY    NUSIZ1  
       LDY    #$FD    
       STY    $A5     
       STY    $A7     
       STY    $A9     
       STY    $AB     
       STY    $AD     
       STY    $AF     
       LDA    #$30    
       STA    CTRLPF  
       STA    REFP1   
       LDA    #$E2    
       STA    HMBL    
       LDX    #$01    
       STA    RESBL   
       STA    HMOVE   
       STA    ENABL   
       STX    $AA     
       LDA    $C7     
       JSR    LFED9   
       STA    WSYNC   
       STA    WSYNC   
       LDX    #$03    
LF9C5: STA    WSYNC   
       STA    HMOVE   
       LDA    #$08    
       STA    ENABL   
       STA    COLUP1  
       LDA    LFE76,X 
       STA    GRP1    
       LDA    #$C8    
       STA    $A4     
       LDA    #$9C    
       DEX            
       STA    HMCLR   
       BPL    LF9C5   
       STA    COLUP1  
       TAY            
       LDA    $C6     
       BNE    LF9EC   
       LDA    $D0     
       AND    #$10    
       BNE    LF9F2   
LF9EC: LDA    $EC     
       STA    $AA     
       LDY    #$1C    
LF9F2: LDX    #$92    
       STX    COLUPF  
       STA    WSYNC   
       STA    HMOVE   
       STX    COLUBK  
       LDA    #$15    
       STA    VDELP0  
       STA    NUSIZ0  
       STA    NUSIZ1  
       STY    COLUP0  
       LDY    #$05    
       LDA    #$1F    
       STA    PF1     
       STA.w  $0011   
       LSR            
       STA    RESP0   
       STA    PF2     
       LDA    #$F0    
       STA    HMP0    
LFA18: STA    WSYNC   
       STA    HMOVE   
       LDA    $AA     
       CPY    #$02    
       BCS    LFA2C   
       STA    GRP0    
       LDA    $ED     
       STA    GRP1    
       LDA    #$1C    
       STA    COLUP1  
LFA2C: LDA    LFE00,Y 
       STA    COLUPF  
       ASL            
       STA    ENAM1   
       JSR    LFC1E   
       DEY            
       STA    HMCLR   
       STX    COLUPF  
       BPL    LFA18   
       STA    WSYNC   
       STA    HMOVE   
       INY            
       STY    GRP0    
       STY    GRP1    
       LDA    $CD     
       ASL            
       ASL            
       ASL            
       STA    $A6     
       LDY    #$08    
       STA    RESP0   
       LDA    $C3     
       ASL            
       ASL            
       ASL            
       CMP    #$09    
       BCC    LFA5F   
       SBC    #$08    
       STA    $A4     
LFA5F: STA    WSYNC   
       STA    HMOVE   
       LDA    #$06    
       STA    NUSIZ1  
       LDA    #$D2    
       STA    NUSIZ0  
       LDX    #$1C    
       LDA    $C4     
       STA    $A8     
       CMP    #$18    
       BCS    LFA77   
       LDX    $D0     
LFA77: LDA    #$CA    
       STA    COLUP0  
LFA7B: STA    WSYNC   
       STA    HMOVE   
       STA    COLUP1  
       LDA    ($A6),Y 
       STA    GRP0    
       LDA    LFD50,Y 
       STA    GRP1    
       LDA    ($A4),Y 
       STA    GRP0    
       LDA    LFD59,Y 
       STA    GRP1    
       LDA    ($A8),Y 
       EOR    #$FF    
       STA.w  $001C   
       STX    COLUP1  
       LDA    #$CA    
       DEY            
       BPL    LFA7B   
       STA    WSYNC   
       STA    HMOVE   
       INY            
       STY    PF2     
       STY    GRP1    
       LDA    $BC     
       AND    #$1F    
       CMP    #$0C    
       BCC    LFABB   
       LDY    #$07    
       CMP    #$14    
       BCS    LFABB   
       SBC    #$0B    
       TAY            
LFABB: STY    $B1     
       TYA            
       EOR    #$07    
       STA    $B2     
       LDA    #$92    
       LDX    #$08    
       SEC            
       STA    WSYNC   
       STA    HMOVE   
LFACB: STA    $A6,X   
       SBC    #$08    
       STA    $A4,X   
       SBC    #$08    
       DEX            
       DEX            
       DEX            
       DEX            
       BPL    LFACB   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$92    
       STA    COLUPF  
       JSR    LFB53   
       LDA    #$78    
       STA    PF1     
       LDA    #$31    
       STA    CTRLPF  
       STA    NUSIZ1  
       STA    HMCLR   
       LSR            
       STA    HMBL    
       LDY    #$07    
       STY    ENABL   
LFAF7: LDX    LFDBA,Y 
       LDA    LFD9A,Y 
       STA    GRP0    
       STA    WSYNC   
       STA    HMOVE   
       LDA    LFD62,Y 
       STA    COLUPF  
       LDA    LFDA2,Y 
       STA    GRP1    
       LDA    LFDAA,Y 
       STA    GRP0    
       LDA    ($A4),Y 
       LDA    LFDB2,Y 
       STA    GRP1    
       STX    GRP0    
       STA    GRP1    
       LDA    #$92    
       STA    COLUPF  
       DEY            
       DEC    $B2     
       BPL    LFAF7   
       STA    WSYNC   
       STA    HMOVE   
       LDY    #$00    
       STY    ENABL   
       STY    GRP1    
       STY    GRP0    
       STY    GRP1    
       STY    PF1     
       JMP    LF014   
LFB39: .byte $01,$03,$03,$07,$07,$07,$07,$07
LFB41: .byte $37,$37,$37,$37,$06,$37
LFB47: .byte $06,$0D,$1B,$14,$22,$22,$29,$30
LFB4F: LDA    #$07    
       STA    $B1     
LFB53: STA    WSYNC   
       STA    HMOVE   
       LDA    #$0C    
       STA    COLUP0  
       STA    COLUP1  
       LDX    #$F3    
       STX    NUSIZ0  
       STX    NUSIZ1  
       STX    VDELP0  
       STX    VDELP1  
       STA    RESP0   
       STA    RESP1   
       STA    RESBL   
       LDA    #$40    
       STA    HMBL    
       STX    HMP0    
       STA    WSYNC   
       STA    HMOVE   
       LDX    #$05    
LFB79: DEX            
       BPL    LFB79   
       STA    HMCLR   
LFB7E: LDY    $B1     
       LDA    ($AE),Y 
       STA    $80     
       LDA    ($AC),Y 
       TAX            
       LDA    ($A4),Y 
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       LDA    ($A6),Y 
       STA    GRP1    
       LDA    ($A8),Y 
       STA    GRP0    
       LDA    ($AA),Y 
       LDY    $80     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       DEC    $B1     
       BPL    LFB7E   
       LDA    #$80    
       STA    HMP0    
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       ASL            
       STA    GRP0    
       STA    GRP1    
       STA    GRP0    
       RTS            

LFBB9: .byte $71,$56,$3B
LFBBC: .byte $20,$01,$02,$02,$03,$01,$02,$02,$03
LFBC5: .byte $02,$01,$03,$05,$07,$02,$04,$06,$08
LFBCE: .byte $0B,$18,$0B,$18
LFBD2: LDA    $D0     
       AND    #$0F    
       BNE    LFBDE   
       LDA    #$80    
       EOR    $F9     
       STA    $F9     
LFBDE: RTS            

LFBDF: BIT    $F9     
       BPL    LFBF1   
       BMI    LFBFC   
LFBE5: LDA    $BD     
       CLC            
       ADC    LFBCE,X 
       CMP    $D6,X   
       BEQ    LFC07   
       BCC    LFBFC   
LFBF1: INC    $D6,X   
       LDA    LFDFC,X 
       CMP    $D6,X   
       BCC    LFC05   
       BCS    LFC07   
LFBFC: DEC    $D6,X   
       LDA    LFBB9,X 
       CMP    $D6,X   
       BCC    LFC07   
LFC05: STA    $D6,X   
LFC07: RTS            

LFC08: LDY    #$00    
LFC0A: LDX    $C5     
       BMI    LFC12   
       CPX    #$02    
       BCS    LFC1F   
LFC12: LDA    LFFDA,Y 
LFC15: STY    $C5     
       STA    $EA     
       LDA    LFFDD,Y 
       STA    AUDC1   
LFC1E: NOP            
LFC1F: RTS            

LFC20: .byte $7F,$3F
LFC22: .byte $1F,$0F,$07,$03,$01,$00,$00,$00,$00,$00,$10,$18,$18,$38,$38,$18
LFC32: .byte $02,$01,$00,$00,$00,$18,$38,$38,$18,$00,$00,$10,$18,$38,$38,$18
       .byte $81,$99,$BD,$BD,$FF,$7E,$7E,$3C,$3C,$60,$E0,$F0,$F0,$F8,$F8,$F0
       .byte $F0,$E0,$60,$00,$14,$20,$08,$22,$04,$10,$08,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$60,$E0,$F0,$F0,$F8,$F8,$F0,$F0,$E0,$60
       .byte $00,$22,$40,$14,$41,$08,$22,$04,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$18,$0C,$1A,$16,$3F,$3B,$1E,$1E,$0C,$08,$1E,$1F,$15
       .byte $3E,$3E,$1E,$04,$1E,$2E,$3A,$1D,$1E,$1E,$08,$10,$1E,$3A,$3F,$17
       .byte $1A,$0E,$0C,$00,$7E,$FF,$DB,$FF,$FF,$5A,$24,$7E,$DB,$FF,$FF,$DB
       .byte $7E,$24,$5A,$FF,$FF,$DB,$FF,$7E,$00,$3C,$6E,$6E,$66,$6E,$66,$3C
       .byte $FF,$6D,$DB,$B6,$6D,$DB,$B6,$FF,$DB,$B6,$6D,$DB,$B6,$6D,$FF,$B6
       .byte $6D,$DB,$B6,$6D,$DB,$FF
LFCD8: .byte $C1,$C8,$CF,$28,$02,$98,$3D,$BC,$19,$40,$14,$40,$19,$BC,$3D,$98
       .byte $02
LFCE9: .byte $28,$00,$04,$94,$04,$00,$04,$94,$04
LFCF2: .byte $C4,$1A,$28,$36,$44,$42,$80,$00,$F8,$1E,$40,$F0,$F8,$3A,$00,$3C
       .byte $66,$66,$66,$66,$66,$3C,$00,$3C,$18,$18,$18,$18,$38,$18,$00,$7E
       .byte $60,$60,$3C,$06,$46,$3C,$00,$3C,$46,$06,$0C,$06,$46,$3C,$00,$0C
       .byte $0C,$7E,$4C,$2C,$1C,$0C,$00,$7C,$46,$06,$7C,$60,$60,$7E,$00,$3C
       .byte $66,$66,$7C,$60,$62,$3C,$00,$18,$18,$18,$0C,$06,$42,$7E,$00,$3C
       .byte $66,$66,$3C,$66,$66,$3C,$00,$3C,$46,$06,$3E,$66,$66,$3C
LFD50: .byte $00,$6C,$28,$BA,$BA,$7C,$10,$38,$38
LFD59: .byte $00,$C3,$DB,$FF,$3C,$7E,$7E,$3C,$18
LFD62: .byte $84,$D6,$D6,$1A,$26,$26,$44,$92,$00,$00,$00,$F7,$95,$87,$90,$F0
       .byte $00,$47,$41,$77,$55,$75,$00,$00,$00,$03,$00,$4B,$4A,$6B,$00,$08
       .byte $00,$80,$80,$AA,$AA,$BA,$27,$22,$00,$00,$00,$11,$11,$17,$15,$17
       .byte $00,$00,$00,$71,$51,$77,$55,$75
LFD9A: .byte $0C,$06,$03,$01,$00,$00,$00,$00
LFDA2: .byte $2D,$29,$E9,$A9,$ED,$61,$2F,$00
LFDAA: .byte $50,$58,$5C,$56,$53,$11,$F0,$00
LFDB2: .byte $BA,$8A,$BA,$A2,$3A,$80,$FE,$00
LFDBA: .byte $E9,$AB,$AF,$AD,$E9,$00,$00
LFDC1: .byte $00
LFDC2: .byte $00,$F0,$00,$10,$00,$F0,$00,$00,$00,$00,$00,$00,$00,$00,$00,$40
       .byte $10,$F0,$00,$F0,$02,$12,$00,$10,$F0
LFDDB: .byte $00,$30,$40,$40,$30,$30,$40,$40,$40,$40,$40,$40,$40,$40,$40,$40
       .byte $00,$F0,$00,$00,$12,$12,$00,$00,$F0,$00
LFDF5: .byte $94,$8D,$9C,$85
LFDF9: .byte $A4,$AB,$B2
LFDFC: .byte $7B,$60,$45,$2A
LFE00: .byte $C6,$C6,$48,$02,$03,$03,$BD,$FF,$FF,$7E,$3C,$00,$00,$3C,$7E,$FF
       .byte $FF,$7E,$3C,$00,$18,$7E,$FF,$7E,$18,$00,$00,$3C,$7E,$FF,$7E,$3C
       .byte $00,$00,$3C,$7E,$3C,$00,$00,$00,$00,$18,$3C,$18,$00,$00,$00,$00
       .byte $10,$3C,$08,$00,$00,$00,$00,$60,$F0,$60,$00,$00,$00,$00
LFE3E: .byte $7F,$27,$27,$34,$3B,$2B,$3B,$34,$18,$5A,$42,$3C,$18,$18,$34,$24
       .byte $24,$00,$18,$18,$00,$3C,$5A,$18,$34,$24,$24,$00,$3C,$3C,$7E,$7E
       .byte $FF,$BD,$BD,$99,$81,$00,$18,$3C,$7E,$FF,$FF,$FF,$7E,$3C,$00,$00
       .byte $20,$38,$3C,$38,$20,$20,$20,$20
LFE76: .byte $00,$FE,$7C,$30
LFE7A: .byte $46,$50,$6D,$64,$5A,$6D
LFE80: .byte $86,$86,$C6,$B4,$AA,$BD,$4C,$4C,$0E,$0E,$0E,$98,$98,$98,$98,$00
LFE90: .byte $1E,$1E,$1E,$1E,$1E,$1E,$1E,$90,$9A,$9A,$9A,$9A,$9A,$96,$9A,$9A
       .byte $96,$98,$48,$9C,$9C,$9C,$9C,$48,$98,$96,$9A,$9A,$96,$9A,$9A,$9A
       .byte $9A,$9A,$90,$00,$2A,$28,$26,$26,$24,$00,$00,$00,$00,$C4,$C4,$C4
       .byte $C4,$C4,$C4,$C4,$C4,$C4,$C4,$0E,$46,$46,$46,$0E,$0E,$0E,$0E
LFECF: .byte $C4,$1C,$9C,$0E,$CE,$0E,$1E,$1E,$4E,$5C
LFED9: SEC            
       STA    WSYNC   
       BCS    LFEDE   
LFEDE: SBC    #$0F    
       BCS    LFEDE   
       EOR    #$0F    
       ASL            
       ASL            
       ASL            
       ASL            
       ADC    #$80    
       STA    RESP0,X 
       STA    WSYNC   
       STA    HMP0,X  
       RTS            

LFEF1: LDY    #$FF    
       SEC            
LFEF4: INY            
       SBC    #$0F    
       BCS    LFEF4   
       EOR    #$0F    
       ASL            
       ASL            
       ASL            
       ASL            
       ADC    #$80    
       RTS            

LFF02: .byte $FE,$FD,$FB,$F7,$EF,$DF,$BF,$7F
LFF0A: LDX    #$09    
LFF0C: LDA    LFF15,X 
       STA    $BD,X   
       DEX            
       BPL    LFF0C   
       RTS            

LFF15: .byte $85,$C0,$85,$01,$01,$4B,$04,$48,$FF
LFF1E: .byte $FF,$25,$30,$35,$40,$45,$50,$55,$60
LFF27: LDA    #$01    
LFF29: LDX    #$02    
       LDY    $B7     
       BIT    $BB     
       BMI    LFF57   
       SED            
       CLC            
LFF33: ADC    $B7,X   
       STA    $B7,X   
       LDA    #$00    
       DEX            
       BPL    LFF33   
       CLD            
       BCC    LFF4B   
       STA    $82     
       STA    $E5     
       LDA    #$AA    
       STA    $B9     
       STA    $B8     
       STA    $B7     
LFF4B: CPY    $B7     
       BEQ    LFF57   
       LDX    #$0A    
       CPX    $C3     
       BEQ    LFF57   
       INC    $C3     
LFF57: RTS            

LFF58: LDA    $C5     
       TAX            
       ORA    $BB     
       BMI    LFFBB   
       LDA    #$03    
       AND    $D0     
       BNE    LFFC2   
       DEC    $EA     
       BMI    LFFBB   
       LDY    $EA     
       CPX    #$04    
       BNE    LFFA8   
       LDX    $E4     
       LDA    #$07    
       STA    AUDV1   
       STA    $BF     
       CPY    #$40    
       BCS    LFF7C   
       INX            
LFF7C: LDY    $C1     
       AND    $EA     
       BNE    LFF9E   
       BIT    $EA     
       BVS    LFF9E   
       DEC    $CD     
       BNE    LFF9E   
       LDA    $C6     
       BNE    LFF9E   
       DEC    $C6     
       INC    $C1     
       LDA    $C1     
       CMP    #$09    
       BCC    LFF9E   
       LDA    #$01    
       STA    $C1     
       STA    $FA     
LFF9E: LDA    LFFCD,X 
       STA    AUDF1   
       LDA    LFF1E,Y 
       BNE    LFF29   
LFFA8: LDA    LFFC5,X 
       STA    $B1     
       LDA    #$FF    
       STA    $B2     
       LDA    ($B1),Y 
       STA    AUDF1   
       LDA    LFFCD,X 
       STA    AUDV1   
       RTS            

LFFBB: LDX    #$00    
       STX    AUDV1   
       DEX            
       STX    $C5     
LFFC2: JMP    LFC1F   
LFFC5: .byte $D5,$CD,$CD,$C9,$07,$08,$09,$0B
LFFCD: .byte $07,$08,$09,$0A,$0C,$0C,$0C,$0C,$12,$11,$0F,$0E,$0D
LFFDA: .byte $05,$05,$05
LFFDD: .byte $08,$0C,$09,$0C
LFFE1: .byte $0C,$01,$01,$01,$01,$01,$02,$03
LFFE9: .byte $05,$1F,$1D,$1B
LFFED: .byte $72,$55
LFFEF: .byte $22,$22,$29,$29,$29,$30,$30,$30
LFFF7: .byte $DA,$E1,$DA,$E1,$EF,$00,$F0,$00,$F0
