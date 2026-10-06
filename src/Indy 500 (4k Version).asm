; Disassembly of roms/Indy 500 (4k Version).bin
; Disassembled Tue Oct  6 15:21:50 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Indy 500 (4k Version).bin
;

      processor 6502
VSYNC   =  $00
VBLANK  =  $01
WSYNC   =  $02
NUSIZ0  =  $04
NUSIZ1  =  $05
COLUP0  =  $06
CTRLPF  =  $0A
REFP0   =  $0B
PF0     =  $0D
PF1     =  $0E
PF2     =  $0F
RESP0   =  $10
AUDC0   =  $15
AUDF0   =  $17
AUDV0   =  $19
AUDV1   =  $1A
GRP0    =  $1B
GRP1    =  $1C
ENAM0   =  $1D
ENAM1   =  $1E
ENABL   =  $1F
HMP0    =  $20
VDELP0  =  $25
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXM0P   =  $30
CXP0FB  =  $32
CXM0FB  =  $34
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
       LDA    #$00    
       LDX    #$00    
LF006: STA    VSYNC,X 
       STA    SWCHA,X 
       INX            
       BNE    LF006   
       LDA    #$20    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDX    #$FF    
       TXS            
       JSR    LF1FF   
       JSR    LF470   
       JSR    LF246   
LF020: JSR    LF096   
       JSR    LF3E5   
       LDA    $BF     
       AND    #$3F    
       BNE    LF048   
       INC    $90     
       LDA    $A3     
       BEQ    LF048   
       LDA    $90     
       CMP    #$40    
       BEQ    LF043   
       BIT    $81     
       BVS    LF048   
       LDX    #$01    
       JSR    LF48D   
       BNE    LF048   
LF043: LDA    #$00    
       JSR    LF474   
LF048: LDA    $A3     
       BEQ    LF087   
       JSR    LF4F7   
       JSR    LF2AC   
       JSR    LF334   
       JSR    LF568   
       LDA    $80     
       CMP    #$04    
       BCC    LF06F   
       CMP    #$0A    
       BCS    LF06F   
       CMP    #$08    
       BCS    LF078   
       JSR    LF59C   
       JSR    LF496   
       JMP    LF087   
LF06F: JSR    LF59C   
       JSR    LF41C   
       JMP    LF087   
LF078: JSR    LF5D1   
       LDX    $95     
       LDA    $BF     
       AND    #$02    
       BEQ    LF087   
       LDA    #$FF    
       STA    $C3,X   
LF087: JSR    LF609   
       JSR    LF0B5   
       JSR    LF1BF   
       JSR    LF217   
       JMP    LF020   
LF096: LDA    INTIM   
       BNE    LF096   
       STA    WSYNC   
       LDA    #$16    
       STA    VSYNC   
       STA    TIM8T   
       INC    $BF     
LF0A6: LDA    INTIM   
       BNE    LF0A6   
       STA    WSYNC   
       STA    VSYNC   
       LDA    #$24    
       STA    TIM64T  
       RTS            

LF0B5: LDA    #$00    
       STA    CXCLR   
       STA    $A7     
       STA    $88     
       STA    $89     
       LDA    #$02    
       STA    CTRLPF  
       TSX            
       STX    $A0     
LF0C6: LDA    INTIM   
       BNE    LF0C6   
       STA    WSYNC   
       STA    VBLANK  
LF0CF: INC    $A7     
       STA    WSYNC   
       LDA    $A7     
       CMP    #$02    
       BCC    LF0CF   
LF0D9: STA    WSYNC   
       LDA    $88     
       STA    PF1     
       LDY    $86     
       LDA    LF63B,Y 
       AND    #$F0    
       STA    $88     
       LDY    $84     
       LDA    LF63B,Y 
       AND    #$0F    
       ORA    $88     
       STA    $88     
       LDA    $89     
       STA    PF1     
       LDY    $87     
       LDA    LF63B,Y 
       AND    #$F0    
       STA    $89     
       LDY    $85     
       LDA    LF63B,Y 
       AND    #$0F    
       ORA    $89     
       STA    $89     
       NOP            
       NOP            
       NOP            
       NOP            
       INC    $A7     
       LDA    $A7     
       CMP    #$08    
       BCS    LF12A   
       LDA    $88     
       STA    PF1     
       INC    $84     
       INC    $86     
       INC    $85     
       INC    $87     
       LDA    $89     
       STA    PF1     
       JMP    LF0D9   
LF12A: LDA    #$00    
       STA    PF1     
       LDA    ($00,X) 
       LDA    #$20    
       STA    $A7     
       LDA    #$01    
       STA    CTRLPF  
LF138: LDX    #$1E    
       TXS            
       SEC            
       LDA    $CD     
       SBC    $A7     
       AND    #$FE    
       TAX            
       AND    $C3     
       BEQ    LF14B   
       LDA    #$00    
       BEQ    LF14D   
LF14B: LDA    $AF,X   
LF14D: STA    WSYNC   
       STA    GRP0    
       CLC            
       LDA    $98     
       SBC    $A7     
       AND    #$F8    
       PHP            
       PHP            
       LDA    $A7     
       BPL    LF160   
       EOR    #$F8    
LF160: LSR            
       LSR            
       LSR            
       TAY            
       INC    $84     
       NOP            
       LDA    $A7     
       CMP    $D1     
       BCC    LF16F   
       STA    ENABL   
LF16F: LDA    $CE     
       SEC            
       SBC    $A7     
       ORA    #$01    
       TAX            
       AND    $C4     
       BEQ    LF17F   
       LDA    #$00    
       BEQ    LF181   
LF17F: LDA    $AF,X   
LF181: STA    GRP1    
       LDA    ($D3),Y 
       STA    PF0     
       LDA    ($D5),Y 
       STA    PF1     
       LDA    ($D7),Y 
       STA    PF2     
       CLC            
       LDA    $A7     
       ADC    #$02    
       STA    $A7     
       CMP    #$DE    
       BCC    LF138   
       LDX    $A0     
       TXS            
       LDA    #$F0    
       STA    $C3     
       STA    $C4     
       LDA    #$00    
       STA    ENAM0   
       STA    ENAM1   
       STA    ENABL   
       STA    GRP0    
       STA    GRP1    
       STA    GRP0    
       STA    PF2     
       STA    PF1     
       STA    PF0     
       LDA    #$D2    
       STA    TIM8T   
       STA    VBLANK  
       RTS            

LF1BF: LDA    SWCHB   
       LSR            
       BCS    LF1E3   
       LDA    #$FF    
       STA    $A3     
       LDA    #$00    
       LDX    #$20    
LF1CD: STA    $82,X   
       DEX            
       BPL    LF1CD   
       LDA    $BF     
       AND    #$01    
       STA    $BF     
       LDA    #$60    
       BIT    $81     
       BVS    LF1E0   
       STA    $83     
LF1E0: LDA    #$00    
       RTS            

LF1E3: LSR            
       BCS    LF20F   
       LDA    $C0     
       BNE    LF214   
       LDA    #$1E    
       STA    $C0     
       LDA    $80     
       CMP    #$0D    
       BCC    LF1F8   
       LDA    #$FF    
       STA    $80     
LF1F8: INC    $80     
       JSR    LF470   
       STA    $83     
LF1FF: SED            
       CLC            
       LDA    $80     
       TAX            
       ADC    #$01    
       STA    $82     
       CLD            
       LDA    LF66D,X 
       STA    $81     
       RTS            

LF20F: LDA    #$00    
       STA    $C0     
       RTS            

LF214: DEC    $C0     
       RTS            

LF217: LDY    #$18    
       SEC            
       LDA    SWCHB   
       AND    #$08    
       BEQ    LF227   
       LDA    $81     
       AND    #$38    
       LSR            
       TAY            
LF227: LDX    #$03    
LF229: LDA    LF7B8,Y 
       BIT    $A3     
       BVS    LF232   
       EOR    $90     
LF232: BCC    LF236   
       AND    #$0F    
LF236: STA    COLUP0,X
       DEY            
       DEX            
       BPL    LF229   
       LDA    SWCHB   
       AND    #$03    
       EOR    #$03    
       BNE    LF246   
       RTS            

LF246: LDA    LF6AC   
       STA    $D3     
       LDA    #$F7    
       STA    $D4     
       STA    $D6     
       STA    $D8     
       LDA    $81     
       AND    #$07    
       TAY            
       CMP    #$01    
       BNE    LF261   
       LDA    LF6AD   
       STA    $D3     
LF261: LDA    LF6A3,Y 
       TAX            
       LDA    LF6AE,X 
       STA    $D5     
       LDA    LF6B2,Y 
       STA    $D7     
       LDX    #$06    
       LDY    #$06    
       LDA    $81     
       AND    #$02    
       BEQ    LF27B   
       LDY    #$0D    
LF27B: LDA    LF78B,Y 
       STA    $CB,X   
       DEY            
       DEX            
       BPL    LF27B   
       INX            
       JSR    LF537   
       INX            
       LDA    $CC     
       JSR    LF537   
       LDX    #$04    
       LDA    #$55    
       JSR    LF537   
       STA    WSYNC   
       STA    HMOVE   
       LDA    $80     
       TAY            
       LDA    LF6B7,Y 
       TAY            
       LDX    #$03    
LF2A2: LDA    LF799,Y 
       STA    $C5,X   
       DEY            
       DEX            
       BPL    LF2A2   
       RTS            

LF2AC: LDX    #$01    
       LDA    SWCHB   
       STA    $AC     
       LDA    SWCHA   
       BIT    $81     
       BVC    LF311   
LF2BA: AND    #$03    
       STA    $9E,X   
       LDA    INPT4,X 
       BPL    LF2D6   
       LDA    $A8,X   
       BNE    LF31E   
       LDA    $8A,X   
       BEQ    LF2F0   
       DEC    $8A,X   
       LDA    $C6     
       STA    $A8,X   
       JSR    LF329   
       JMP    LF2F0   
LF2D6: LDA    $A8,X   
       BNE    LF31E   
       LDA    $C7     
       BIT    $AC     
       BMI    LF2E3   
       SEC            
       SBC    #$02    
LF2E3: CMP    $8A,X   
       BCC    LF2F0   
       INC    $8A,X   
       LDA    $C5     
       STA    $A8,X   
       JSR    LF329   
LF2F0: LDA    $9E,X   
       ASL            
       ASL            
       ORA    $AA,X   
       TAY            
       LDA    $CF,X   
       CMP    $A1,X   
       BNE    LF323   
       LDA    LF7A9,Y 
       STA    $91,X   
LF302: CLC            
       ADC    $CF,X   
       AND    #$0F    
       STA    $CF,X   
       TYA            
       LSR            
       LSR            
       STA    $AA,X   
       JSR    LF3AD   
LF311: ASL    $AC     
       LDA    SWCHA   
       LSR            
       LSR            
       LSR            
       LSR            
       DEX            
       BEQ    LF2BA   
       RTS            

LF31E: DEC    $A8,X   
       JMP    LF2F0   
LF323: LDA    LF7A9,Y 
       JMP    LF302   
LF329: LDA    $8A,X   
       AND    #$07    
       TAY            
       LDA    LF69B,Y 
       STA    $8C,X   
       RTS            

LF334: LDX    #$01    
LF336: LDA    $8A,X   
       AND    #$08    
       BEQ    LF33F   
       JSR    LF351   
LF33F: LDA    $8C,X   
       SEC            
       BMI    LF345   
       CLC            
LF345: ROL            
       STA    $8C,X   
       BCC    LF34D   
       JSR    LF351   
LF34D: DEX            
       BEQ    LF336   
       RTS            

LF351: INC    $C9,X   
       STA    HMCLR   
       LDA    $A1,X   
       SEC            
       SBC    #$02    
       AND    #$03    
       BNE    LF364   
       LDA    $C9,X   
       AND    #$03    
       BEQ    LF3AC   
LF364: LDA    $C9,X   
       AND    #$01    
       BEQ    LF36C   
       LDA    #$10    
LF36C: ORA    $A1,X   
       TAY            
       LDA    LF67B,Y 
       STA    HMP0,X  
       AND    #$0F    
       SEC            
       SBC    #$08    
       STA    $AE     
       CLC            
       ADC    $CD,X   
       STA    $CD,X   
       BIT    $AE     
       BMI    LF38C   
       CMP    #$E8    
       BCC    LF392   
       LDA    #$2E    
       BNE    LF392   
LF38C: CMP    #$28    
       BCS    LF392   
       LDA    #$DD    
LF392: STA    $CD,X   
       STA    VDELP0,X
       LDA    LF67B,Y 
       LSR            
       LSR            
       LSR            
       LSR            
       CMP    #$08    
       BCC    LF3A4   
       ORA    #$F0    
       CLC            
LF3A4: ADC    $CB,X   
       STA    $CB,X   
       STA    WSYNC   
       STA    HMOVE   
LF3AC: RTS            

LF3AD: LDA    $8A,X   
       CMP    $C8     
       BCC    LF3DD   
       LDA    $93,X   
       BNE    LF3E2   
       LDA    $CF,X   
       CMP    $A1,X   
       BEQ    LF3D4   
       LDA    $91,X   
       BMI    LF3D8   
       INC    $A1,X   
LF3C3: LDA    $A1,X   
       AND    #$0F    
       STA    $A1,X   
       LDA    $80     
       CMP    #$0A    
       LDA    $8A,X   
       BCS    LF3D5   
       LSR            
LF3D2: STA    $93,X   
LF3D4: RTS            

LF3D5: ASL            
       BNE    LF3D2   
LF3D8: DEC    $A1,X   
       JMP    LF3C3   
LF3DD: LDA    $CF,X   
       STA    $A1,X   
       RTS            

LF3E2: DEC    $93,X   
       RTS            

LF3E5: LDA    $BF     
       AND    #$01    
       TAX            
       LDA    $CF,X   
       STA    REFP0,X 
       ASL            
       ASL            
       ASL            
       CMP    #$3F    
       CLC            
       BMI    LF3F9   
       SEC            
       EOR    #$47    
LF3F9: TAY            
       STX    $9D     
       TXA            
       EOR    #$0E    
       TAX            
LF400: TXA            
       AND    #$01    
       BEQ    LF40D   
       BIT    $81     
       BVS    LF40D   
       LDA    #$00    
       BEQ    LF410   
LF40D: LDA    LF6DF,Y 
LF410: STA    $AF,X   
       BCC    LF416   
       DEY            
       DEY            
LF416: INY            
       DEX            
       DEX            
       BPL    LF400   
       RTS            

LF41C: LDA    $BF     
       AND    #$01    
       TAX            
       LDA    $96,X   
       ASL            
       BPL    LF464   
       LDA    $CD,X   
       CMP    #$80    
       LDA    #$00    
       BCS    LF430   
       LDA    #$01    
LF430: STA    $9D     
       LDA    $CB,X   
       CMP    #$CD    
       LDA    $9D     
       BCC    LF43C   
       ORA    #$02    
LF43C: TAY            
       LDA    LF6A8,Y 
       ORA    $8E,X   
       STA    $8E,X   
       CMP    #$0F    
       BNE    LF463   
       LDA    CXP0FB,X
       AND    #$40    
       BEQ    LF46B   
       LDA    $96,X   
       BMI    LF463   
       LDA    #$C6    
       STA    $96,X   
       STA    $CB,X   
       LDA    #$00    
       STA    $8E,X   
       JSR    LF47F   
       CMP    #$25    
       BEQ    LF470   
LF463: RTS            

LF464: LDA    CXP0FB,X
       AND    #$40    
       STA    $96,X   
       RTS            

LF46B: LDA    #$40    
       STA    $96,X   
       RTS            

LF470: LDA    #$00    
       STA    $98     
LF474: STA    $A3     
       STA    AUDV0   
       STA    AUDV1   
       STA    $90     
       STA    $BF     
       RTS            

LF47F: LDA    #$00    
       STA    $90     
       SED            
       CLC            
       LDA    $82,X   
       ADC    #$01    
LF489: STA    $82,X   
       CLD            
       RTS            

LF48D: SED            
       LDA    $83     
       SEC            
       SBC    #$01    
       JMP    LF489   
LF496: STA    HMCLR   
       LDA    $8E     
       BEQ    LF4EF   
       LDA    $BF     
       AND    #$01    
       TAX            
       LDA    CXM0FB,X
       BMI    LF4DF   
       LDA    $99,X   
       BNE    LF4E6   
       LDA    CXM0P,X 
       ASL            
       BPL    LF4B1   
       JSR    LF4B2   
LF4B1: RTS            

LF4B2: LDA    #$08    
       STA    $99,X   
       JSR    LF47F   
       CMP    #$50    
       BEQ    LF4E9   
       LDA    $BF     
LF4BF: AND    #$7F    
       ADC    #$40    
       STA    $98     
       EOR    $AF,X   
       AND    #$7F    
       ADC    #$10    
LF4CB: STA    $D2     
       STA    $8E     
       LDX    #$02    
       PHA            
       JSR    LF537   
       INX            
       PLA            
       JSR    LF537   
       STA    WSYNC   
       STA    HMOVE   
       RTS            

LF4DF: LDA    $BF     
       ADC    #$0A    
       JMP    LF4BF   
LF4E6: DEC    $99,X   
       RTS            

LF4E9: LDA    #$00    
       JSR    LF474   
       RTS            

LF4EF: LDA    #$84    
       STA    $98     
       LDA    #$56    
       BNE    LF4CB   
LF4F7: LDA    $BF     
       AND    #$01    
       TAX            
       STX    $9D     
       LDA    $9B,X   
       BNE    LF533   
       LDA    $99,X   
       BNE    LF52F   
       LDA    $8A,X   
       LSR            
       TAY            
       BNE    LF519   
       LDA    $C1,X   
       BEQ    LF515   
       DEC    $C1,X   
       JMP    LF51D   
LF515: LDY    #$06    
       BNE    LF51D   
LF519: LDA    #$3F    
       STA    $C1,X   
LF51D: LDA    LF6D7,Y 
       STA    AUDV0,X 
LF522: LDA    LF6C5,Y 
       ORA    $9D     
       STA    AUDF0,X 
       LDA    LF6CE,Y 
       STA    AUDC0,X 
       RTS            

LF52F: LDY    #$07    
       BNE    LF51D   
LF533: LDY    #$08    
       BNE    LF522   
LF537: CLC            
       ADC    #$31    
       PHA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       PLA            
       AND    #$0F    
       STY    $9D     
       CLC            
       ADC    $9D     
       CMP    #$0E    
       BCC    LF550   
       SEC            
       SBC    #$0E    
       INY            
LF550: CMP    #$08    
       EOR    #$0F    
       BCS    LF559   
       ADC    #$01    
       DEY            
LF559: INY            
       ASL            
       ASL            
       ASL            
       ASL            
       STY    WSYNC   
LF560: DEY            
       BNE    LF560   
       STA    RESP0,X 
       STA    HMP0,X  
       RTS            

LF568: LDA    $BF     
       AND    #$01    
       TAX            
       LDA    CXP0FB,X
       BPL    LF58B   
       LDA    $81     
       AND    #$02    
       BNE    LF590   
       LDA    $A4,X   
       BNE    LF590   
       INC    $A4,X   
       LDA    #$00    
       STA    $8A,X   
       JSR    LF329   
       LDA    #$0F    
       STA    $9B,X   
       STA    AUDV0,X 
LF58A: RTS            

LF58B: LDA    #$00    
       STA    $A4,X   
       RTS            

LF590: LDA    #$02    
       CMP    $8A,X   
       BCS    LF58A   
       LSR    $8A,X   
       JSR    LF329   
       RTS            

LF59C: LDA    CXPPMM  
       BPL    LF5CC   
       LDA    $A6     
       BNE    LF5CB   
       INC    $A6     
       LDA    $BF     
       AND    #$01    
       TAX            
       INC    $CF,X   
       INC    $A1,X   
       LSR    $8A,X   
       JSR    LF329   
       TXA            
       EOR    #$01    
       TAX            
       DEC    $CF,X   
       DEC    $A1,X   
       LSR    $8A,X   
       JSR    LF329   
       LDA    #$0F    
       STA    $9B     
       STA    $9C     
       STA    AUDV0   
       STA    AUDV1   
LF5CB: RTS            

LF5CC: LDA    #$00    
       STA    $A6     
       RTS            

LF5D1: LDA    $99     
       ORA    $9A     
       BNE    LF5EF   
       LDA    CXPPMM  
       BMI    LF5FB   
       LDA    $BF     
       AND    #$3F    
       BNE    LF5EA   
       LDX    $95     
       JSR    LF47F   
       CMP    #$99    
       BEQ    LF5EB   
LF5EA: RTS            

LF5EB: JSR    LF470   
       RTS            

LF5EF: LDA    #$00    
       LDX    $AD     
       STA    $8A,X   
       JSR    LF329   
       DEC    $99,X   
       RTS            

LF5FB: LDA    $95     
       STA    $AD     
       TAX            
       EOR    #$01    
       STA    $95     
       LDA    #$3F    
       STA    $99,X   
       RTS            

LF609: LDA    $BF     
       AND    #$01    
       TAX            
       LDA    $9B,X   
       BEQ    LF619   
       SEC            
       SBC    #$01    
       STA    AUDV0,X 
       STA    $9B,X   
LF619: LDX    #$01    
LF61B: LDA    $82,X   
       AND    #$0F    
       STA    $9D     
       ASL            
       ASL            
       CLC            
       ADC    $9D     
       STA    $84,X   
       LDA    $82,X   
       AND    #$F0    
       LSR            
       LSR            
       STA    $9D     
       LSR            
       LSR            
       CLC            
       ADC    $9D     
       STA    $86,X   
       DEX            
       BEQ    LF61B   
       RTS            

LF63B: .byte $0E,$0A,$0A,$0A,$0E,$22,$22,$22,$22,$22,$EE,$22,$EE,$88,$EE,$EE
       .byte $22,$66,$22,$EE,$AA,$AA,$EE,$22,$22,$EE,$88,$EE,$22,$EE,$EE,$88
       .byte $EE,$AA,$EE,$EE,$22,$22,$22,$22,$EE,$AA,$EE,$AA,$EE,$EE,$AA,$EE
       .byte $22,$EE
LF66D: .byte $48,$08,$D1,$91,$5A,$1A,$DB,$9B,$62,$E3,$6C,$2C,$E8,$A8
LF67B: .byte $F8,$F7,$F6,$06,$06,$06,$16,$17,$18,$19,$1A,$0A,$0A,$0A,$FA,$F9
       .byte $F8,$F7,$F6,$F6,$06,$16,$16,$17,$18,$19,$1A,$1A,$0A,$FA,$FA,$F9
LF69B: .byte $00,$01,$11,$25,$55,$DA,$EE,$EF
LF6A3: .byte $00,$03,$00,$02,$01
LF6A8: .byte $08,$01,$04,$02
LF6AC: .byte $1B
LF6AD: .byte $1C
LF6AE: .byte $28,$34,$3A,$46
LF6B2: .byte $51,$5D,$69,$6F,$7B
LF6B7: .byte $03,$03,$0B,$0B,$03,$03,$0B,$0B,$03,$0B,$07,$07,$0F,$0F
LF6C5: .byte $0E,$08,$06,$04,$1A,$18,$0F,$00,$37
LF6CE: .byte $02,$02,$02,$02,$07,$07,$02,$0A,$08
LF6D7: .byte $0C,$0C,$0C,$09,$06,$08,$06,$0A
LF6DF: .byte $EE,$EE,$44,$7F,$7F,$44,$EE,$EE,$18,$D8,$CB,$5E,$7E,$64,$36,$36
       .byte $30,$32,$CC,$DC,$3B,$33,$0C,$0C,$04,$CC,$F8,$1F,$DB,$F0,$3E,$06
       .byte $18,$DB,$FF,$DB,$18,$DB,$FF,$C3,$20,$33,$1F,$F8,$DB,$0F,$7C,$60
       .byte $0C,$4C,$33,$3B,$DC,$CC,$30,$30,$18,$1B,$D3,$7A,$3E,$26,$6C,$6C
       .byte $F0,$F0,$70,$30,$30,$30,$30,$30,$30,$30,$30,$30,$F0,$FF,$00,$00
       .byte $00,$00,$00,$00,$01,$01,$01,$01,$01,$FF,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$03,$03,$00,$00,$00,$00,$FF,$00,$00,$00,$00
       .byte $00,$03,$00,$00,$00,$00,$FF,$E0,$C0,$80,$00,$00,$00,$01,$03,$07
       .byte $FF,$FF,$FF,$00,$00,$00,$00,$00,$FF,$E0,$C0,$80,$80,$80,$F0,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$80,$00,$00,$00,$00
       .byte $FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$07,$FF
LF78B: .byte $86,$86,$C0,$D2,$08,$08,$80,$1C,$88,$CA,$44,$00,$08,$FF
LF799: .byte $0F,$07,$08,$05,$1F,$0F,$08,$03,$08,$04,$0A,$0F,$18,$0A,$08,$03
LF7A9: .byte $00,$FF,$01,$00,$01,$00,$00,$FF,$FF,$00,$00,$01,$00,$01,$FF
LF7B8: .byte $00,$DA,$3A,$27,$74,$5A,$98,$36,$E4,$7A,$E8,$2A,$33,$EA,$9A,$46
       .byte $00,$16,$66,$98,$09,$0F,$00,$08,$0A,$11,$77,$77,$05,$22,$44,$11
       .byte $11,$11,$55,$11,$55,$11,$05,$22,$77,$33,$77,$77,$77,$11,$77,$77
       .byte $05,$22,$11,$11,$55,$44,$44,$11,$55,$55,$07,$22,$77,$77,$55,$77
       .byte $77,$77,$77,$77,$00,$F0,$00,$F0,$78,$D8,$A9,$00,$A2,$00,$95,$00
       .byte $9D,$80,$02,$E8,$D0,$F8,$A9,$20,$85,$04,$85,$05,$A2,$FF,$9A,$20
       .byte $FF,$F1,$20,$70,$F4,$20,$46,$F2,$20,$96,$F0,$20,$E5,$F3,$A5,$BF
       .byte $29,$3F,$D0,$1C,$E6,$90,$A5,$A3,$F0,$16,$A5,$90,$C9,$40,$F0,$0B
       .byte $24,$81,$70,$0C,$A2,$01,$20,$8D,$F4,$D0,$05,$A9,$00,$20,$74,$F4
       .byte $A5,$A3,$F0,$3B,$20,$F7,$F4,$20,$AC,$F2,$20,$34,$F3,$20,$68,$F5
       .byte $A5,$80,$C9,$04,$90,$11,$C9,$0A,$B0,$0D,$C9,$08,$B0,$12,$20,$9C
       .byte $F5,$20,$96,$F4,$4C,$87,$F0,$20,$9C,$F5,$20,$1C,$F4,$4C,$87,$F0
       .byte $20,$D1,$F5,$A6,$95,$A5,$BF,$29,$02,$F0,$04,$A9,$FF,$95,$C3,$20
       .byte $09,$F6,$20,$B5,$F0,$20,$BF,$F1,$20,$17,$F2,$4C,$20,$F0,$AD,$84
       .byte $02,$D0,$FB,$85,$02,$A9,$16,$85,$00,$8D,$95,$02,$E6,$BF,$AD,$84
       .byte $02,$D0,$FB,$85,$02,$85,$00,$A9,$24,$8D,$96,$02,$60,$A9,$00,$85
       .byte $2C,$85,$A7,$85,$88,$85,$89,$A9,$02,$85,$0A,$BA,$86,$A0,$AD,$84
       .byte $02,$D0,$FB,$85,$02,$85,$01,$E6,$A7,$85,$02,$A5,$A7,$C9,$02,$90
       .byte $F6,$85,$02,$A5,$88,$85,$0E,$A4,$86,$B9,$3B,$F6,$29,$F0,$85,$88
       .byte $A4,$84,$B9,$3B,$F6,$29,$0F,$05,$88,$85,$88,$A5,$89,$85,$0E,$A4
       .byte $87,$B9,$3B,$F6,$29,$F0,$85,$89,$A4,$85,$B9,$3B,$F6,$29,$0F,$05
       .byte $89,$85,$89,$EA,$EA,$EA,$EA,$E6,$A7,$A5,$A7,$C9,$08,$B0,$13,$A5
       .byte $88,$85,$0E,$E6,$84,$E6,$86,$E6,$85,$E6,$87,$A5,$89,$85,$0E,$4C
       .byte $D9,$F0,$A9,$00,$85,$0E,$A1,$00,$A9,$20,$85,$A7,$A9,$01,$85,$0A
       .byte $A2,$1E,$9A,$38,$A5,$CD,$E5,$A7,$29,$FE,$AA,$25,$C3,$F0,$04,$A9
       .byte $00,$F0,$02,$B5,$AF,$85,$02,$85,$1B,$18,$A5,$98,$E5,$A7,$29,$F8
       .byte $08,$08,$A5,$A7,$10,$02,$49,$F8,$4A,$4A,$4A,$A8,$E6,$84,$EA,$A5
       .byte $A7,$C5,$D1,$90,$02,$85,$1F,$A5,$CE,$38,$E5,$A7,$09,$01,$AA,$25
       .byte $C4,$F0,$04,$A9,$00,$F0,$02,$B5,$AF,$85,$1C,$B1,$D3,$85,$0D,$B1
       .byte $D5,$85,$0E,$B1,$D7,$85,$0F,$18,$A5,$A7,$69,$02,$85,$A7,$C9,$DE
       .byte $90,$9E,$A6,$A0,$9A,$A9,$F0,$85,$C3,$85,$C4,$A9,$00,$85,$1D,$85
       .byte $1E,$85,$1F,$85,$1B,$85,$1C,$85,$1B,$85,$0F,$85,$0E,$85,$0D,$A9
       .byte $D2,$8D,$95,$02,$85,$01,$60,$AD,$82,$02,$4A,$B0,$1E,$A9,$FF,$85
       .byte $A3,$A9,$00,$A2,$20,$95,$82,$CA,$10,$FB,$A5,$BF,$29,$01,$85,$BF
       .byte $A9,$60,$24,$81,$70,$02,$85,$83,$A9,$00,$60,$4A,$B0,$29,$A5,$C0
       .byte $D0,$2A,$A9,$1E,$85,$C0,$A5,$80,$C9,$0D,$90,$04,$A9,$FF,$85,$80
       .byte $E6,$80,$20,$70,$F4,$85,$83,$F8,$18,$A5,$80,$AA,$69,$01,$85,$82
       .byte $D8,$BD,$6D,$F6,$85,$81,$60,$A9,$00,$85,$C0,$60,$C6,$C0,$60,$A0
       .byte $18,$38,$AD,$82,$02,$29,$08,$F0,$06,$A5,$81,$29,$38,$4A,$A8,$A2
       .byte $03,$B9,$B8,$F7,$24,$A3,$70,$02,$45,$90,$90,$02,$29,$0F,$95,$06
       .byte $88,$CA,$10,$ED,$AD,$82,$02,$29,$03,$49,$03,$D0,$01,$60,$AD,$AC
       .byte $F6,$85,$D3,$A9,$F7,$85,$D4,$85,$D6,$85,$D8,$A5,$81,$29,$07,$A8
       .byte $C9,$01,$D0,$05,$AD,$AD,$F6,$85,$D3,$B9,$A3,$F6,$AA,$BD,$AE,$F6
       .byte $85,$D5,$B9,$B2,$F6,$85,$D7,$A2,$06,$A0,$06,$A5,$81,$29,$02,$F0
       .byte $02,$A0,$0D,$B9,$8B,$F7,$95,$CB,$88,$CA,$10,$F7,$E8,$20,$37,$F5
       .byte $E8,$A5,$CC,$20,$37,$F5,$A2,$04,$A9,$55,$20,$37,$F5,$85,$02,$85
       .byte $2A,$A5,$80,$A8,$B9,$B7,$F6,$A8,$A2,$03,$B9,$99,$F7,$95,$C5,$88
       .byte $CA,$10,$F7,$60,$A2,$01,$AD,$82,$02,$85,$AC,$AD,$80,$02,$24,$81
       .byte $50,$57,$29,$03,$95,$9E,$B5,$3C,$10,$14,$B5,$A8,$D0,$58,$B5,$8A
       .byte $F0,$26,$D6,$8A,$A5,$C6,$95,$A8,$20,$29,$F3,$4C,$F0,$F2,$B5,$A8
       .byte $D0,$44,$A5,$C7,$24,$AC,$30,$03,$38,$E9,$02,$D5,$8A,$90,$09,$F6
       .byte $8A,$A5,$C5,$95,$A8,$20,$29,$F3,$B5,$9E,$0A,$0A,$15,$AA,$A8,$B5
       .byte $CF,$D5,$A1,$D0,$26,$B9,$A9,$F7,$95,$91,$18,$75,$CF,$29,$0F,$95
       .byte $CF,$98,$4A,$4A,$95,$AA,$20,$AD,$F3,$06,$AC,$AD,$80,$02,$4A,$4A
       .byte $4A,$4A,$CA,$F0,$9D,$60,$D6,$A8,$4C,$F0,$F2,$B9,$A9,$F7,$4C,$02
       .byte $F3,$B5,$8A,$29,$07,$A8,$B9,$9B,$F6,$95,$8C,$60,$A2,$01,$B5,$8A
       .byte $29,$08,$F0,$03,$20,$51,$F3,$B5,$8C,$38,$30,$01,$18,$2A,$95,$8C
       .byte $90,$03,$20,$51,$F3,$CA,$F0,$E6,$60,$F6,$C9,$85,$2B,$B5,$A1,$38
       .byte $E9,$02,$29,$03,$D0,$06,$B5,$C9,$29,$03,$F0,$48,$B5,$C9,$29,$01
       .byte $F0,$02,$A9,$10,$15,$A1,$A8,$B9,$7B,$F6,$95,$20,$29,$0F,$38,$E9
       .byte $08,$85,$AE,$18,$75,$CD,$95,$CD,$24,$AE,$30,$08,$C9,$E8,$90,$0A
       .byte $A9,$2E,$D0,$06,$C9,$28,$B0,$02,$A9,$DD,$95,$CD,$95,$25,$B9,$7B
       .byte $F6,$4A,$4A,$4A,$4A,$C9,$08,$90,$03,$09,$F0,$18,$75,$CB,$95,$CB
       .byte $85,$02,$85,$2A,$60,$B5,$8A,$C5,$C8,$90,$2A,$B5,$93,$D0,$2B,$B5
       .byte $CF,$D5,$A1,$F0,$17,$B5,$91,$30,$17,$F6,$A1,$B5,$A1,$29,$0F,$95
       .byte $A1,$A5,$80,$C9,$0A,$B5,$8A,$B0,$04,$4A,$95,$93,$60,$0A,$D0,$FA
       .byte $D6,$A1,$4C,$C3,$F3,$B5,$CF,$95,$A1,$60,$D6,$93,$60,$A5,$BF,$29
       .byte $01,$AA,$B5,$CF,$95,$0B,$0A,$0A,$0A,$C9,$3F,$18,$30,$03,$38,$49
       .byte $47,$A8,$86,$9D,$8A,$49,$0E,$AA,$8A,$29,$01,$F0,$08,$24,$81,$70
       .byte $04,$A9,$00,$F0,$03,$B9,$DF,$F6,$95,$AF,$90,$02,$88,$88,$C8,$CA
       .byte $CA,$10,$E5,$60,$A5,$BF,$29,$01,$AA,$B5,$96,$0A,$10,$3E,$B5,$CD
       .byte $C9,$80,$A9,$00,$B0,$02,$A9,$01,$85,$9D,$B5,$CB,$C9,$CD,$A5,$9D
       .byte $90,$02,$09,$02,$A8,$B9,$A8,$F6,$15,$8E,$95,$8E,$C9,$0F,$D0,$1B
       .byte $B5,$32,$29,$40,$F0,$1D,$B5,$96,$30,$11,$A9,$C6,$95,$96,$95,$CB
       .byte $A9,$00,$95,$8E,$20,$7F,$F4,$C9,$25,$F0,$0D,$60,$B5,$32,$29,$40
       .byte $95,$96,$60,$A9,$40,$95,$96,$60,$A9,$00,$85,$98,$85,$A3,$85,$19
       .byte $85,$1A,$85,$90,$85,$BF,$60,$A9,$00,$85,$90,$F8,$18,$B5,$82,$69
       .byte $01,$95,$82,$D8,$60,$F8,$A5,$83,$38,$E9,$01,$4C,$89,$F4,$85,$2B
       .byte $A5,$8E,$F0,$53,$A5,$BF,$29,$01,$AA,$B5,$34,$30,$3A,$B5,$99,$D0
       .byte $3D,$B5,$30,$0A,$10,$03,$20,$B2,$F4,$60,$A9,$08,$95,$99,$20,$7F
       .byte $F4,$C9,$50,$F0,$2C,$A5,$BF,$29,$7F,$69,$40,$85,$98,$55,$AF,$29
       .byte $7F,$69,$10,$85,$D2,$85,$8E,$A2,$02,$48,$20,$37,$F5,$E8,$68,$20
       .byte $37,$F5,$85,$02,$85,$2A,$60,$A5,$BF,$69,$0A,$4C,$BF,$F4,$D6,$99
       .byte $60,$A9,$00,$20,$74,$F4,$60,$A9,$84,$85,$98,$A9,$56,$D0,$D4,$A5
       .byte $BF,$29,$01,$AA,$86,$9D,$B5,$9B,$D0,$31,$B5,$99,$D0,$29,$B5,$8A
       .byte $4A,$A8,$D0,$0D,$B5,$C1,$F0,$05,$D6,$C1,$4C,$1D,$F5,$A0,$06,$D0
       .byte $04,$A9,$3F,$95,$C1,$B9,$D7,$F6,$95,$19,$B9,$C5,$F6,$05,$9D,$95
       .byte $17,$B9,$CE,$F6,$95,$15,$60,$A0,$07,$D0,$EA,$A0,$08,$D0,$EB,$18
       .byte $69,$31,$48,$4A,$4A,$4A,$4A,$A8,$68,$29,$0F,$84,$9D,$18,$65,$9D
       .byte $C9,$0E,$90,$04,$38,$E9,$0E,$C8,$C9,$08,$49,$0F,$B0,$03,$69,$01
       .byte $88,$C8,$0A,$0A,$0A,$0A,$84,$02,$88,$D0,$FD,$95,$10,$95,$20,$60
       .byte $A5,$BF,$29,$01,$AA,$B5,$32,$10,$1A,$A5,$81,$29,$02,$D0,$19,$B5
       .byte $A4,$D0,$15,$F6,$A4,$A9,$00,$95,$8A,$20,$29,$F3,$A9,$0F,$95,$9B
       .byte $95,$19,$60,$A9,$00,$95,$A4,$60,$A9,$02,$D5,$8A,$B0,$F4,$56,$8A
       .byte $20,$29,$F3,$60,$A5,$37,$10,$2C,$A5,$A6,$D0,$27,$E6,$A6,$A5,$BF
       .byte $29,$01,$AA,$F6,$CF,$F6,$A1,$56,$8A,$20,$29,$F3,$8A,$49,$01,$AA
       .byte $D6,$CF,$D6,$A1,$56,$8A,$20,$29,$F3,$A9,$0F,$85,$9B,$85,$9C,$85
       .byte $19,$85,$1A,$60,$A9,$00,$85,$A6,$60,$A5,$99,$05,$9A,$D0,$18,$A5
       .byte $37,$30,$20,$A5,$BF,$29,$3F,$D0,$09,$A6,$95,$20,$7F,$F4,$C9,$99
       .byte $F0,$01,$60,$20,$70,$F4,$60,$A9,$00,$A6,$AD,$95,$8A,$20,$29,$F3
       .byte $D6,$99,$60,$A5,$95,$85,$AD,$AA,$49,$01,$85,$95,$A9,$3F,$95,$99
       .byte $60,$A5,$BF,$29,$01,$AA,$B5,$9B,$F0,$07,$38,$E9,$01,$95,$19,$95
       .byte $9B,$A2,$01,$B5,$82,$29,$0F,$85,$9D,$0A,$0A,$18,$65,$9D,$95,$84
       .byte $B5,$82,$29,$F0,$4A,$4A,$85,$9D,$4A,$4A,$18,$65,$9D,$95,$86,$CA
       .byte $F0,$E1,$60,$0E,$0A,$0A,$0A,$0E,$22,$22,$22,$22,$22,$EE,$22,$EE
       .byte $88,$EE,$EE,$22,$66,$22,$EE,$AA,$AA,$EE,$22,$22,$EE,$88,$EE,$22
       .byte $EE,$EE,$88,$EE,$AA,$EE,$EE,$22,$22,$22,$22,$EE,$AA,$EE,$AA,$EE
       .byte $EE,$AA,$EE,$22,$EE,$48,$08,$D1,$91,$5A,$1A,$DB,$9B,$62,$E3,$6C
       .byte $2C,$E8,$A8,$F8,$F7,$F6,$06,$06,$06,$16,$17,$18,$19,$1A,$0A,$0A
       .byte $0A,$FA,$F9,$F8,$F7,$F6,$F6,$06,$16,$16,$17,$18,$19,$1A,$1A,$0A
       .byte $FA,$FA,$F9,$00,$01,$11,$25,$55,$DA,$EE,$EF,$00,$03,$00,$02,$01
       .byte $08,$01,$04,$02,$1B,$1C,$28,$34,$3A,$46,$51,$5D,$69,$6F,$7B,$03
       .byte $03,$0B,$0B,$03,$03,$0B,$0B,$03,$0B,$07,$07,$0F,$0F,$0E,$08,$06
       .byte $04,$1A,$18,$0F,$00,$37,$02,$02,$02,$02,$07,$07,$02,$0A,$08,$0C
       .byte $0C,$0C,$09,$06,$08,$06,$0A,$EE,$EE,$44,$7F,$7F,$44,$EE,$EE,$18
       .byte $D8,$CB,$5E,$7E,$64,$36,$36,$30,$32,$CC,$DC,$3B,$33,$0C,$0C,$04
       .byte $CC,$F8,$1F,$DB,$F0,$3E,$06,$18,$DB,$FF,$DB,$18,$DB,$FF,$C3,$20
       .byte $33,$1F,$F8,$DB,$0F,$7C,$60,$0C,$4C,$33,$3B,$DC,$CC,$30,$30,$18
       .byte $1B,$D3,$7A,$3E,$26,$6C,$6C,$F0,$F0,$70,$30,$30,$30,$30,$30,$30
       .byte $30,$30,$30,$F0,$FF,$00,$00,$00,$00,$00,$00,$01,$01,$01,$01,$01
       .byte $FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$03,$03,$00,$00
       .byte $00,$00,$FF,$00,$00,$00,$00,$00,$03,$00,$00,$00,$00,$FF,$E0,$C0
       .byte $80,$00,$00,$00,$01,$03,$07,$FF,$FF,$FF,$00,$00,$00,$00,$00,$FF
       .byte $E0,$C0,$80,$80,$80,$F0,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$80,$80,$00,$00,$00,$00,$FF,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$07,$FF,$86,$86,$C0,$D2,$08,$08,$80,$1C,$88,$CA,$44,$00,$08
       .byte $FF,$0F,$07,$08,$05,$1F,$0F,$08,$03,$08,$04,$0A,$0F,$18,$0A,$08
       .byte $03,$00,$FF,$01,$00,$01,$00,$00,$FF,$FF,$00,$00,$01,$00,$01,$FF
       .byte $00,$DA,$3A,$27,$74,$5A,$98,$36,$E4,$7A,$E8,$2A,$33,$EA,$9A,$46
       .byte $00,$16,$66,$98,$09,$0F,$00,$08,$0A,$11,$77,$77,$05,$22,$44,$11
       .byte $11,$11,$55,$11,$55,$11,$05,$22,$77,$33,$77,$77,$77,$11,$77,$77
       .byte $05,$22,$11,$11,$55,$44,$44,$11,$55,$55,$07,$22,$77,$77,$55,$77
       .byte $77,$77,$77,$77,$00,$F0,$00,$F0
