; Disassembly of roms/Oink!.bin
; Disassembled Tue Oct  6 15:22:40 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Oink!.bin
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
RESBL   =  $14
AUDC0   =  $15
AUDC1   =  $16
AUDF0   =  $17
AUDF1   =  $18
AUDV0   =  $19
AUDV1   =  $1A
GRP0    =  $1B
GRP1    =  $1C
ENAM1   =  $1E
ENABL   =  $1F
HMP0    =  $20
HMP1    =  $21
HMM1    =  $23
HMBL    =  $24
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296

       ORG $F000

START:
       SEI            
       CLD            
       LDX    #$00    
LF004: LDA    #$00    
LF006: STA    VSYNC,X 
       TXS            
       INX            
       BNE    LF006   
       LDA    #$02    
       STA    $87     
       JSR    LFB1A   
       LDX    #$0D    
LF015: STA    $89,X   
       DEX            
       DEX            
       BPL    LF015   
       JSR    LFAEA   
       LSR            
       STA    $A0     
       STA    $88     
       JSR    LFA9F   
       LDA    $81     
       ORA    $82     
       BNE    LF037   
       INX            
       STX    $D4     
       LDA    #$40    
       STA    $D0     
       STA    $82     
       DEC    $D2     
LF037: LDX    #$00    
       LDY    $88     
       LDA    #$80    
       BIT    $D0     
       BVC    LF044   
       JMP    LF13C   
LF044: BPL    LF05B   
       CPY    $BD     
       BNE    LF051   
       JSR    LF4DA   
       STA    $88     
       TAY            
       TXA            
LF051: CPY    $BD     
       BCC    LF056   
       INX            
LF056: ORA    LFD51,X 
       STA    $84     
LF05B: LDA    $D2     
       BNE    LF071   
       BIT    $D0     
       BMI    LF071   
       LDX    $DD     
       LDA    $DA,X   
       BEQ    LF071   
       JSR    LFB9A   
       STA    $E1     
       JMP    LF0FE   
LF071: LDA    $DE     
       LDY    #$87    
       LDX    #$8F    
       ROR    $96     
       BCS    LF07D   
       INC    $DE     
LF07D: ROL    $96     
       CMP    #$1D    
       BCC    LF0C7   
       CMP    #$3B    
       BCS    LF08D   
       STY    $84     
       STX    $85     
       BNE    LF0DB   
LF08D: CMP    #$3B    
       BNE    LF0DE   
       STX    $85     
       LDY    $84     
       CPY    #$8F    
       BEQ    LF0B6   
       LDA    $81     
       AND    #$3F    
       ADC    #$3C    
       STA    $A1     
       LDY    $87     
       CPY    #$02    
       BNE    LF0AD   
       LDX    $DD     
       LDA    #$00    
       STA    $EA,X   
LF0AD: LDA    LFFF9,Y 
       STA    $A2     
       STA    $A3     
       LDA    #$3C    
LF0B6: STA    $DE     
       JMP    LF0DB   
LF0BB: CMP    #$83    
       BCS    LF0C9   
       LDA    $81     
       AND    #$01    
       ADC    #$4B    
       STA    $CF     
LF0C7: BNE    LF13C   
LF0C9: CMP    #$94    
       BCS    LF0EE   
       STX    $85     
       LDY    #$8E    
LF0D1: LDA    $96     
       AND    #$0C    
       BNE    LF0D9   
       LDY    #$8F    
LF0D9: STY    $84     
LF0DB: JMP    LF13F   
LF0DE: CMP    #$62    
       BCS    LF0E6   
       STY    $85     
       BNE    LF0DB   
LF0E6: CMP    #$62    
       BNE    LF0BB   
       STA    $DE     
       BEQ    LF0DB   
LF0EE: CMP    #$B5    
       BCS    LF0F6   
       STX    $85     
       BNE    LF0D1   
LF0F6: CMP    #$E5    
       BCS    LF0FE   
       STY    $85     
       BNE    LF0D1   
LF0FE: JSR    LFAEA   
       BIT    $D0     
       BMI    LF119   
       LDA    $80     
       BEQ    LF119   
       LDA    $D2     
       BNE    LF119   
       LDA    $DD     
       EOR    #$01    
       STA    $DD     
       BEQ    LF119   
       INC    $87     
       BPL    LF132   
LF119: LDA    $87     
       BNE    LF132   
       BIT    $D0     
       BPL    LF126   
       LDX    #$DE    
       JMP    LF004   
LF126: LDA    #$E6    
       STA    $DE     
       LDA    $D2     
       BNE    LF13C   
       DEC    $D2     
       BNE    LF13C   
LF132: DEC    $87     
       JSR    LFA9F   
       STX    $DE     
       JSR    LFB1A   
LF13C: JSR    LFB25   
LF13F: BIT    $E3     
       BVS    LF15D   
       LDA    $AC     
       CMP    #$5A    
       BCS    LF1A3   
       BIT    VBLANK  
       BMI    LF14F   
       BVC    LF1A3   
LF14F: SBC    #$78    
       LSR            
       STA    $E2     
       JSR    LFA9B   
       LDA    #$40    
       STA    $E3     
       BNE    LF1A3   
LF15D: LDX    $E1     
       LDA    $EC     
       BMI    LF189   
       LDY    $CF     
       CPY    #$39    
       BCS    LF16F   
       STY    $9A     
       LDA    $BD     
       STA    $9B     
LF16F: INY            
       STY    $CF     
       CPY    #$4B    
       BCS    LF185   
       LDA    $96     
       AND    #$03    
       BNE    LF1A3   
       LDA    $BD     
       ADC    LFDFB,X 
       STA    $BD     
       BNE    LF1A3   
LF185: INC    $DE     
       BNE    LF19D   
LF189: LDA    $9A     
       STA    $CF     
       LDA    $9B     
       CMP    #$19    
       BCS    LF195   
       LDA    #$19    
LF195: CMP    #$75    
       BCC    LF19B   
       LDA    #$75    
LF19B: STA    $BD     
LF19D: LDA    #$00    
       STA    $E3     
       STA    $E2     
LF1A3: LDA    $E4     
       BEQ    LF220   
       DEC    $C3     
       BEQ    LF210   
       LDA    #$03    
       STA    $CD     
       LDA    $E4     
       LSR            
       BCS    LF223   
       LDA    $C3     
       CMP    #$0C    
       BNE    LF20D   
       BIT    $E4     
       BVS    LF223   
       SBC    #$09    
       STA    $C3     
       LDA    $CF     
       BIT    $E3     
       BMI    LF20D   
       CMP    #$10    
       BCS    LF20D   
       LDA    $BD     
LF1CE: LDY    $E0     
       CLC            
       ADC    LFEFE,Y 
       LSR            
       LSR            
       ORA    #$01    
       TAY            
       LSR            
       LSR            
       LSR            
       TAX            
       CPY    #$02    
       BCC    LF1EC   
       CPY    #$1E    
       BCS    LF1EC   
       LDA    $C7,X   
       AND    LFDD7,Y 
       BNE    LF1FA   
LF1EC: DEC    $CD     
       BEQ    LF20D   
       LDX    $CD     
       LDA    $BD     
       CLC            
       ADC    LFDF5,X 
       BNE    LF1CE   
LF1FA: LDA    LFDD7,Y 
       EOR    #$FF    
       AND    $C7,X   
       STA    $C7,X   
       LDA    #$2E    
       STA    $DF     
       DEC    $CB     
       LDA    #$80    
       STA    $E3     
LF20D: JMP    LF300   
LF210: LDY    #$00    
       LDA    $E4     
       STY    $E4     
       BPL    LF220   
       LDA    $84     
       BPL    LF220   
       ORA    #$C0    
       STA    $84     
LF220: JMP    LF2DC   
LF223: LDY    #$00    
       BIT    $D0     
       BMI    LF23A   
       LDA    $DD     
       BEQ    LF234   
       BIT    SWCHB   
       BMI    LF239   
       BPL    LF23A   
LF234: BIT    SWCHB   
       BVC    LF23A   
LF239: INY            
LF23A: DEY            
       BNE    LF243   
       LDA    $CF     
       CMP    #$32    
       BCC    LF20D   
LF243: LDA    $C0     
       CLC            
       ADC    #$F0    
       LSR            
       STA    $CE     
LF24B: LSR            
       TAY            
       LSR            
       LSR            
       LSR            
       TAX            
       LDA    $E4     
       LSR            
       BCS    LF25A   
       BIT    $E3     
LF258: BPL    LF20D   
LF25A: LDA    #$00    
       STA    $AE     
       STX    $AB     
       TXA            
       ASL            
       ADC    $AB     
       TAX            
LF265: LDA    $AF,X   
       AND    LFDD7,Y 
       BEQ    LF290   
       INX            
       INC    $AE     
       LDA    $AE     
       CMP    #$03    
       BCC    LF265   
       LDA    $CE     
       EOR    #$01    
       STA    $CE     
       AND    #$01    
       TAX            
       LDA    $CE     
       ADC    LFDCF,X 
       DEC    $CD     
       BNE    LF24B   
       LDA    $C3     
       SEC            
       SBC    #$0A    
       STA    $C3     
       BPL    LF258   
LF290: STA    $E3     
       LDA    #$41    
       STA    $E4     
       LDA    $BF     
       CMP    #$56    
       BCC    LF300   
       DEC    $E4     
       LDA    $AF,X   
       ORA    LFDD7,Y 
       STA    $AF,X   
       STA    $E9     
       LDA    #$2D    
       STA    $DF     
       BIT    $D0     
       BMI    LF2D9   
       SED            
       LDX    $DD     
       LDY    #$03    
LF2B4: LDA    $D4,X   
       SEC            
       ADC    $EA,X   
       STA    $D4,X   
       LDA    $D6,X   
       ADC    #$00    
       STA    $D6,X   
       LDA    $D8     
       LDA    $D8,X   
       ADC    #$00    
       STA    $D8,X   
       BCC    LF2D5   
       LDA    #$99    
       STA    $DA,X   
       STA    $D4,X   
       STA    $D6,X   
       STA    $D8,X   
LF2D5: DEY            
       BPL    LF2B4   
       CLD            
LF2D9: JSR    LFA9B   
LF2DC: LDA    $84     
       BIT    $E3     
       BVS    LF300   
       BPL    LF2E8   
       CMP    #$C0    
       BCS    LF2F4   
LF2E8: AND    #$C0    
       BNE    LF300   
       LDY    #$80    
       LDX    #$06    
       LDA    $E3     
       BPL    LF2F8   
LF2F4: LDY    #$40    
       LDX    #$07    
LF2F8: STY    $E4     
       STX    $E6     
       LDA    #$10    
       STA    $C3     
LF300: LDY    $E2     
       BNE    LF352   
       DEY            
       STY    $AC     
       STY    $C2     
       LDA    $85     
       BMI    LF352   
       LDA    $E7     
       CMP    $A3     
       BCC    LF352   
       INY            
       STY    $E7     
       LDA    #$17    
       STA    $E2     
       JSR    LF48E   
       PHA            
       LDA    LFD4D,Y 
       STA    $A4     
       LDA    $D1     
       STA    $BC     
       LDY    $AE     
       INY            
       LDA    LFFE1,Y 
       STA    $AC     
       PLA            
       BCS    LF352   
       EOR    #$FF    
       AND    $AC,X   
       STA    $AC,X   
       LDA    #$97    
       STA    $E2     
       LDA    LFDCB,Y 
       STA    $CC     
       LDA    #$56    
       STA    $C2     
       LDA    $CD     
       SBC    #$00    
       AND    #$FC    
       SBC    #$02    
       LDX    #$02    
       JSR    LFA84   
LF352: LDY    #$7A    
       LDA    $E2     
       DEC    $E2     
       AND    #$7F    
       BNE    LF360   
       LDY    #$83    
       STA    $E2     
LF360: STY    $C5     
       LSR            
       LSR            
       LSR            
       TAX            
       LDA    LFFE6,X 
       STA    $98     
       LDX    $E1     
       LDA    $BC     
       CLC            
       ADC    LFD4F,X 
       CMP    #$E8    
       BCC    LF379   
       SBC    #$60    
LF379: CMP    #$A0    
       BCC    LF37F   
       SBC    #$A0    
LF37F: LDX    #$03    
       JSR    LFA73   
       LDX    #$00    
       STX    $AE     
       LDY    $E2     
       BNE    LF3AE   
       INX            
       LDA    $85     
       LSR            
       LSR            
       LDY    $AD     
       LSR            
       BCS    LF3A0   
       CPY    #$07    
       BEQ    LF3A0   
       STX    $E1     
       INC    $AE     
       DEC    $AD     
LF3A0: DEX            
       LSR            
       BCS    LF3AE   
       CPY    #$85    
       BEQ    LF3AE   
       STX    $E1     
       INC    $AE     
       INC    $AD     
LF3AE: JSR    LF6D6   
       STA    $9E     
       ADC    #$4D    
       STA    $9C     
       LDA    $AD     
       CMP    #$F8    
       BCC    LF3BF   
       ADC    #$07    
LF3BF: JSR    LFA84   
       STX    $AE     
       INX            
       LDA    #$63    
       CMP    $DE     
       BEQ    LF41C   
       LDA    $E4     
       BNE    LF40C   
       BIT    $E3     
       BVS    LF41C   
       LDA    $84     
       LDY    $CF     
       LSR            
       BCS    LF3E2   
       CPY    #$0D    
       BEQ    LF3E2   
       INC    $AE     
       DEC    $CF     
LF3E2: LSR            
       BCS    LF3ED   
       CPY    #$38    
       BEQ    LF3ED   
       INC    $AE     
       INC    $CF     
LF3ED: LDY    $BD     
       LSR            
       BCS    LF3FC   
       CPY    #$19    
       BEQ    LF3FC   
       STX    $E0     
       INC    $AE     
       DEC    $BD     
LF3FC: DEX            
       LSR            
       BCS    LF41B   
       LDA    $DE     
       CMP    #$94    
       BCS    LF411   
       CPY    #$75    
       BEQ    LF41B   
       BNE    LF415   
LF40C: JSR    LF6ED   
       BCC    LF41F   
LF411: CPY    #$87    
       BEQ    LF41B   
LF415: STX    $E0     
       INC    $AE     
       INC    $BD     
LF41B: INX            
LF41C: JSR    LF6D6   
LF41F: STA    $AA     
       ADC    #$4D    
       CPY    #$07    
       BNE    LF429   
       LDA    #$72    
LF429: STA    $A7     
       LDA    LFF65,Y 
       STA    $A8     
       LDA    #$A8    
       STA    $A5     
       LDA    #$FE    
       STA    $A6     
       STA    $A9     
       LDA    $E0     
       BEQ    LF44C   
       LDX    #$02    
LF440: LDA    $A5,X   
       LDY    $A8,X   
       STY    $A5,X   
       STA    $A8,X   
       DEX            
       DEX            
       BPL    LF440   
LF44C: LDA    $E4     
       LSR            
       BCC    LF457   
       LDA    $BF     
       ADC    #$07    
       BNE    LF471   
LF457: BIT    $E3     
       BPL    LF46F   
       LDX    $E6     
       LDA    $CF     
       ADC    LFD53,X 
       CMP    #$56    
       BCC    LF471   
       JSR    LFA9B   
       LDA    $E3     
       AND    #$7F    
       STA    $E3     
LF46F: LDA    #$00    
LF471: STA    $BF     
       CLC            
       ADC    #$03    
       STA    $CE     
       LDY    $E0     
       LDA    $BD     
       ADC    LFDF8,Y 
       STA    $C0     
       LDX    #$04    
       JSR    LFA73   
       LDA    $BD     
       JSR    LFA84   
       JMP    LF4E8   
LF48E: LDY    $E1     
       LDA    #$03    
       STA    $AE     
       LDA    $AD     
       CLC            
       ADC    LFE13,Y 
       STA    $CD     
       STA    $D1     
       CMP    #$19    
       BCC    LF4E6   
       CMP    #$88    
       BCS    LF4E6   
LF4A6: LDA    $CD     
       CMP    LFDFF,Y 
       BEQ    LF4E6   
       CLC            
       ADC    LFDFA,Y 
       STA    $CD     
       DEC    $AE     
       BMI    LF4E6   
       LDA    $CD     
       SEC            
       SBC    #$11    
       LSR            
       LSR            
       TAX            
       LDA    LFDD7,X 
       STA    $AB     
       TXA            
       LSR            
       LSR            
       LSR            
       TAX            
       INX            
       LDA    $AE     
       CLC            
LF4CD: ADC    #$03    
       DEX            
       BNE    LF4CD   
       TAX            
       LDA    $AC,X   
       AND    $AB     
       BEQ    LF4A6   
       RTS            

LF4DA: LDA    $81     
LF4DC: AND    #$7F    
       ADC    #$19    
       CMP    #$75    
       BCC    LF4E6   
       SBC    #$40    
LF4E6: SEC            
       RTS            

LF4E8: LDY    INTIM   
       BNE    LF4E8   
       STA    WSYNC   
       STA    HMOVE   
       LDA    $DC     
       ROL            
       ROL            
       ROL            
       AND    #$02    
       STA    VBLANK  
       LDA    #$88    
       STA    COLUBK  
       LDY    $DD     
       LDA    LFFD9,Y 
       STA    COLUP0  
       STA    COLUP1  
       STA    HMCLR   
       JSR    LFB2C   
       STA    VDELP0  
       STA    VDELP1  
       TAY            
       BIT    $D0     
       BMI    LF517   
       LDY    $DD     
LF517: LDX    LFFD9,Y 
       STX    COLUP0  
       STX    $AE     
       STA    HMCLR   
       STA    WSYNC   
       STA    HMOVE   
       STA    NUSIZ1  
       LDX    $87     
       CPX    #$02    
       BCS    LF560   
       STA    $0104   
LF52F: LDA    #$25    
       STA    CTRLPF  
       LDA    #$04    
       STA    COLUPF  
       LDY    #$12    
       STA    $0111   
       LDA    $87     
       BEQ    LF55A   
       STA    RESP0   
       DEC    $D1     
       NOP            
LF545: LDA    $0180   
       CMP    #$02    
       BNE    LF558   
       STA    $0111   
LF54F: LDA    #$FF    
       STA    $89     
       STA    GRP1    
       JMP    LF582   
LF558: BNE    LF54F   
LF55A: STA    $D1     
       STA    RESP0   
       BEQ    LF545   
LF560: BCS    LF52F   
LF562: STA    PF2     
       LDA    LFD5F,Y 
       STA    $0107   
       JSR    LFB19   
       BCS    LF5A4   
LF56F: NOP            
       NOP            
LF571: NOP            
       BCS    LF5B0   
LF574: STA    RESP0   
       STA    RESP1   
       LDA    #$50    
       STA    HMP0    
       LDA    #$60    
       STA    HMP1    
       BNE    LF5D5   
LF582: LDX    #$88    
LF584: STA    WSYNC   
       STA    HMOVE   
       NOP            
       LDA    LFF50,Y 
       CPY    #$0B    
       BCS    LF562   
       STA    PF1     
       LDA    LFF60,Y 
       STA    PF0     
       LDA    #$44    
       STA    COLUP1  
       LDA    LFD5F,Y 
       STA    GRP0    
       LDA    #$00    
       STA    COLUBK  
LF5A4: CPY    #$0E    
       TYA            
       BCS    LF56F   
       LSR            
       BCS    LF571   
       TXA            
       SBC    #$0F    
       TAX            
LF5B0: STX    COLUBK  
       DEY            
       BPL    LF584   
       STY    HMP0    
       LDA    #$00    
       STA    GRP1    
       STA    GRP0    
       STA    HMOVE   
       STY    PF0     
       STA    $D1     
       LDA    $99     
       AND    #$0F    
       LDX    #$13    
       STX    $AB     
       TAY            
       BEQ    LF574   
LF5CE: DEY            
       BNE    LF5CE   
       STA    RESP0   
       STA    RESP1   
LF5D5: STA    WSYNC   
       STA    HMOVE   
       STY    COLUBK  
       STY    PF2     
       STY    PF0     
       STY    PF1     
       LDA    $E0     
       ASL            
       ASL            
       ASL            
       STA    REFP0   
       STA    REFP1   
       LDA    $99     
       STA    HMP0    
       STA    HMP1    
       STY    NUSIZ0  
       LDA    $AE     
       STA    COLUP1  
       LDX    #$0B    
       LDY    $87     
       LDA    LFD4A,Y 
       STA    COLUPF  
       LDA    #$02    
       LDY    $AC     
       BEQ    LF606   
       LSR            
LF606: STA    $AE     
LF608: STA    WSYNC   
       STA    HMOVE   
       LDA    #$FF    
       STA    PF0     
       LDA    $C7     
       STA    PF1     
       LDA    $C8     
       STA    PF2     
       INX            
       LDA    #$07    
       ADC    $CF     
       TAY            
       BIT    LFFFD   
       STA    HMCLR   
       LDA    $CA     
       STA    PF1     
       LDA    $C9     
       STA    PF2     
       CPX    #$0E    
       BNE    LF608   
       STA    CXCLR   
       LDA    #$00    
       STA    PF2     
       LDA    #$C0    
       STA    PF1     
       LDA    $AE     
       STA    ENAM1   
LF63D: TXA            
       STA    WSYNC   
LF640: STA    HMOVE   
       DEY            
       BEQ    LF67D   
       CPY    #$13    
       BCS    LF68F   
       LDA    ($A5),Y 
       STA    GRP0    
       LDA    ($A8),Y 
LF64F: STA    GRP1    
       TXA            
LF652: AND    #$03    
       CMP    #$01    
       BNE    LF698   
       LDA    $A4     
       STA    $0123   
LF65D: CPX    $C2     
       BEQ    LF69C   
       CPX    #$58    
       BEQ    LF6D2   
       INX            
       LDA    #$02    
       CPX    $CE     
       BNE    LF673   
       STA    $D1     
       LSR            
       STA    ENABL   
       BNE    LF63D   
LF673: CPX    $BF     
       BNE    LF63D   
       STA    ENABL   
       TXA            
       NOP            
       BNE    LF640   
LF67D: BVC    LF68C   
       CLV            
       LDY    $A7     
       STY    $A5     
       LDY    $AA     
       STY    $A8     
       LDY    #$0B    
       BNE    LF652   
LF68C: NOP            
       BVC    LF692   
LF68F: STA    $01D1   
LF692: LDA    #$00    
       STA    GRP0    
       BEQ    LF64F   
LF698: STA    HMCLR   
       BNE    LF65D   
LF69C: INX            
       LDA    #$06    
       STA    $AB     
       LDA    $98     
       STA    $A5     
       LDA    #$17    
       STA    $A8     
       INX            
       LDA    $97     
       STA    HMP0    
       STA    HMOVE   
       LDY    $BB     
       STY    GRP0    
       STY    GRP1    
       AND    #$0F    
       LDY    #$1E    
       STY    COLUP0  
       TAY            
       CLV            
LF6BE: DEY            
       BNE    LF6BE   
       STA    RESP0   
       STA    WSYNC   
       STA    HMOVE   
       JSR    LFB13   
       JSR    LFB15   
       STA    HMCLR   
       LDY    $01CC   
LF6D2: NOP            
       JMP    LF725   
LF6D6: LDA    $AE     
       BEQ    LF6EB   
       LDA    $96     
       AND    LFF59,X 
       BNE    LF6ED   
       INC    $E5,X   
       LDA    $E5,X   
       CMP    #$06    
       BCC    LF6EB   
       LDA    #$01    
LF6EB: STA    $E5,X   
LF6ED: LDY    $E5,X   
       LDA    LFFE9,Y 
       CLC            
       RTS            

LF6F4: .byte $00,$00,$00
LF6F7: NOP            
LF6F8: NOP            
       NOP            
       LDA    #$00    
       STA    HMOVE   
       STA    GRP0    
       BEQ    LF735   
LF702: BVC    LF6F7   
       CLV            
       LDY    $A7     
       STY    $A5     
       LDY    $AA     
       STA    HMOVE   
       STY    $A8     
       LDY    #$0B    
       BNE    LF737   
LF713: LDA    #$C0    
       STA    PF1     
       INC    $89     
       LDA    #$00    
       STA    ENABL   
       BEQ    LF74A   
LF71F: LDX    #$FF    
       TXS            
       JMP    LF7C9   
LF725: DEY            
       BEQ    LF702   
       CPY    $AB     
       BCS    LF6F8   
       LDA    ($A5),Y 
       STA    GRP0    
       STA    $012A   
       LDA    ($A8),Y 
LF735: STA    GRP1    
LF737: CPX    #$64    
       BCC    LF713   
       LDA    #$0C    
       STA    $89     
       LDA    #$D6    
       STA    COLUBK  
       LDA    #$00    
       STA    PF1     
       STA    $010D   
LF74A: STA    PF2     
       INX            
       INX            
       LDA    $A4     
       STA    HMM1    
       CPX    #$6E    
       BEQ    LF71F   
       CPX    $AC     
       BCC    LF7B9   
       LDA    #$02    
       NOP            
LF75D: TXS            
       DEY            
       BEQ    LF7A1   
       STA    $011E   
       CPY    $AB     
       BCS    LF797   
LF768: STA    HMOVE   
       LDA    ($A5),Y 
       STA    GRP0    
       LDA    ($A8),Y 
LF770: STA    GRP1    
LF772: LDX    $89     
       LDA    $AF,X   
       STA    PF1     
       LDA    $B2,X   
       STA    PF2     
       LDA    $B8,X   
       STA    PF1     
       LDA    $B5,X   
       STA    PF2     
       TSX            
       TXA            
       AND    #$03    
       BEQ    LF725   
       INX            
       TXS            
       STA    $012B   
       DEY            
       BEQ    LF7A3   
       CPY    $AB     
       BCC    LF768   
       NOP            
LF797: STA    HMOVE   
       NOP            
LF79A: NOP            
       LDA    #$00    
       STA    GRP0    
       BEQ    LF770   
LF7A1: STA    ENAM1   
LF7A3: BVC    LF7B4   
       CLV            
       LDY    $A7     
       STA    HMOVE   
       STY    $A5     
       LDY    $AA     
       STY    $A8     
       LDY    #$0B    
       BNE    LF772   
LF7B4: NOP            
       STA    HMOVE   
       BVC    LF79A   
LF7B9: BCC    LF75D   
LF7BB: STA    RESP0   
       STA    RESP1   
       LDA    #$50    
       STA    HMP0    
       LDA    #$60    
       STA    HMP1    
       BNE    LF7E8   
LF7C9: LDA    $95     
       AND    #$0F    
       STX    HMP0    
       INX            
       STA    WSYNC   
       STA    HMOVE   
       STX    GRP0    
       STX    GRP1    
       LDY    #$FE    
       STY    $9D     
       STY    $9F     
       TAY            
       BEQ    LF7BB   
LF7E1: DEY            
       BNE    LF7E1   
       STA    RESP0   
       STA    RESP1   
LF7E8: STX    HMM1    
       STA    WSYNC   
       STA    HMOVE   
       LDA    $E1     
       ASL            
       ASL            
       ASL            
       STA    REFP0   
       STA    REFP1   
       LDX    #$04    
       STX    COLUP0  
       LDY    $95     
       STY    HMP0    
       STY    HMP1    
       LDY    #$22    
       BNE    LF832   
LF805: STA    WSYNC   
       STA    HMOVE   
       STX    COLUP1  
       STX    ENAM1   
       BEQ    LF816   
       BCS    LF816   
       STA    GRP1    
       LDA    LFDA6,Y 
LF816: STA    GRP0    
       BNE    LF81F   
       LDA    LFDA6,Y 
       STA    GRP1    
LF81F: INC    $E1     
       DEY            
       BPL    LF828   
       LDY    #$07    
       BNE    LF857   
LF828: STA    HMCLR   
       CPY    #$19    
       BNE    LF832   
       LDA    #$7A    
       STA    $C5     
LF832: LDA    $AD     
       CMP    #$F8    
       LDA    ($C5),Y 
       DEC    $E1     
       BVC    LF805   
LF83C: STA    WSYNC   
       STA    HMOVE   
       STX    COLUBK  
       BEQ    LF84A   
       BCS    LF84A   
       STA    GRP1    
       LDA    ($9C),Y 
LF84A: STA    GRP0    
       BNE    LF852   
       LDA    ($9C),Y 
       STA    GRP1    
LF852: INC    $E1     
       DEY            
       BEQ    LF863   
LF857: LDA    $AD     
       CMP    #$F8    
       LDA    ($9E),Y 
       LDX    #$16    
       DEC    $E1     
       BVC    LF83C   
LF863: STA    WSYNC   
       STA    HMOVE   
       STY    GRP0    
       STY    GRP1    
       LDA    #$0E    
       STA    COLUP0  
       STA    COLUP1  
       LDY    #$07    
       LDA    $D2     
       AND    #$1F    
       CMP    #$14    
       BCS    LF884   
       LDY    #$00    
       CMP    #$0C    
       BCC    LF884   
       SBC    #$0C    
       TAY            
LF884: TYA            
       EOR    #$07    
       STA    $CD     
       LDA    #$D1    
       LDX    #$08    
       SEC            
       STA    WSYNC   
       STA    HMOVE   
LF892: STA    $8B,X   
       SBC    #$08    
       STA    $89,X   
       SBC    #$08    
       DEX            
       DEX            
       DEX            
       DEX            
       BPL    LF892   
       LDX    #$03    
LF8A2: STA    WSYNC   
       STA    HMOVE   
       DEX            
       BNE    LF8A2   
       STX    COLUBK  
       STX    COLUPF  
       LDA    #$30    
       STA    CTRLPF  
       LDA    WSYNC   
       ORA    RSYNC   
       STA    $EC     
       TYA            
       JSR    LFB30   
       LDA    #$1C    
       STA    PF2     
       LDA    #$11    
       STA    NUSIZ1  
       LDY    #$07    
       STY    ENABL   
       STA    HMCLR   
       STA    HMBL    
LF8CB: STA    WSYNC   
       STA    HMOVE   
       LDX    LFFA4,Y 
       LDA    LFF84,Y 
       STA    GRP0    
       LDA    LFFDA,Y 
       STA    COLUPF  
       LDA    LFF8C,Y 
       STA    GRP1    
       LDA    LFF94,Y 
       STA    GRP0    
       NOP            
       NOP            
       LDA    LFF9C,Y 
       DEY            
       STA    GRP1    
       STX    GRP0    
       STA    GRP1    
       LDA    #$00    
       STA    COLUPF  
       DEC    $CD     
       BPL    LF8CB   
       LDY    #$1F    
       LDX    #$82    
       STY    TIM64T  
       STX    VBLANK  
       STA    VDELP0  
       STA    VDELP1  
       STA    GRP0    
       STA    GRP1    
       STA    ENABL   
       STA    PF2     
       TAY            
       LDX    $D2     
       BEQ    LF93D   
       LDA    $96     
       AND    #$07    
       BNE    LF93D   
       DEX            
       TXA            
       AND    #$1F    
       BNE    LF92F   
       LDA    $80     
       BEQ    LF92F   
       LDA    $D0     
       LSR            
       BCC    LF92F   
       LDA    $DD     
       EOR    #$01    
       STA    $DD     
LF92F: DEC    $D2     
       BNE    LF93D   
       DEC    $D2     
       LDA    $D3     
       BMI    LF93D   
       ORA    #$80    
       STA    $D3     
LF93D: JSR    LFB96   
       LDY    $DD     
       LDX    LFF7D,Y 
       LDY    #$00    
LF947: LDA    $D4,X   
       AND    #$F0    
       LSR            
       STA.wy $0089,Y 
       LDA    $D4,X   
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA.wy $008B,Y 
       INY            
       INY            
       INY            
       INY            
       DEX            
       DEX            
       BPL    LF947   
       LDX    #$00    
LF963: LDA    $89,X   
       BNE    LF971   
       LDA    #$63    
       STA    $89,X   
       INX            
       INX            
       CPX    #$09    
       BCC    LF963   
LF971: LDA    $82     
       ASL            
       EOR    $82     
       ASL            
       ASL            
       ROL    $81     
       ROL    $82     
       LDA    $E2     
       BNE    LF986   
       INC    $E7     
       BNE    LF986   
       DEC    $E7     
LF986: JSR    LF48E   
LF989: LDA    INTIM   
       BNE    LF989   
       LDY    #$82    
       STY    WSYNC   
       STY    VSYNC   
       STY    WSYNC   
       STY    WSYNC   
       STY    WSYNC   
       STA    VSYNC   
       ROL            
       STA    $D1     
       INC    $96     
       BNE    LF9B6   
       INC    $D3     
       LDA    $D3     
       AND    #$C7    
       STA    $D3     
       AND    #$07    
       BNE    LF9B6   
       INC    $DC     
       BNE    LF9B6   
       SEC            
       ROR    $DC     
LF9B6: LDA    #$30    
       STA    WSYNC   
       STA    TIM64T  
       LDY    $84     
       LDA    SWCHA   
       TAX            
       AND    #$0F    
       STA    $85     
       TXA            
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $84     
       INX            
       BEQ    LF9D5   
       LDA    #$00    
       STA    $DC     
LF9D5: LDX    $DD     
       BEQ    LF9E1   
       LDA    $84     
       LDX    $85     
       STX    $84     
       STA    $85     
LF9E1: LDX    $DD     
       LDA    REFP1,X 
       AND    #$80    
       BPL    LF9F1   
       CPY    #$80    
       BCS    LF9F7   
       LDA    #$C0    
       BNE    LF9F7   
LF9F1: CPY    #$80    
       BCS    LF9F7   
       LDA    #$40    
LF9F7: ORA    $84     
       STA    $84     
       LDA    $DD     
       EOR    #$01    
       TAX            
       LDA    REFP1,X 
       AND    #$80    
       ORA    $85     
       STA    $85     
       LDA    SWCHB   
       LSR            
       LDY    #$00    
       BCS    LFA18   
       LDX    #$D2    
       INY            
LFA13: STY    $D0     
LFA15: JMP    LF004   
LFA18: LSR            
       BCS    LFA45   
       LDA    $83     
       BEQ    LFA23   
       DEC    $83     
       BPL    LFA47   
LFA23: INC    $80     
       LDA    $80     
       CMP    #$03    
       BCC    LFA2C   
       TYA            
LFA2C: STA    $80     
       STA    $DC     
       STA    $D3     
       STY    $DD     
       DEY            
       STY    $D2     
       TAY            
       INY            
       STY    $D4     
       LDA    #$40    
       STA    $83     
       STA    $D0     
       LDX    #$D5    
       BNE    LFA15   
LFA45: STY    $83     
LFA47: BIT    $D0     
       BMI    LFA51   
       LDA    $80     
       CMP    #$02    
       BEQ    LFA54   
LFA51: JSR    LFC55   
LFA54: LDA    $D3     
       BPL    LFA65   
       LDA    $D0     
       AND    #$01    
       ORA    #$80    
       TAY            
       LDX    #$DE    
       LDA    $D0     
       BPL    LFA13   
LFA65: LDA    $D2     
       BEQ    LFA70   
       BIT    $D0     
       BMI    LFA70   
       JSR    LFB25   
LFA70: JMP    LF037   
LFA73: JSR    LFAF7   
       STA    HMP0,X  
       STA    WSYNC   
       JSR    LFB18   
LFA7D: DEY            
       BPL    LFA7D   
       STA    $0110,X 
       RTS            

LFA84: JSR    LFAF7   
       STY    $95,X   
       ORA    $95,X   
       STA    $95,X   
       RTS            

LFA8E: LDY    #$00    
       LDA    LFE14,X 
       BEQ    LFA97   
       LDY    #$02    
LFA97: TAX            
       LDA    #$08    
       RTS            

LFA9B: LDA    $CB     
       BPL    LFAE9   
LFA9F: INC    $86     
       LDX    $DD     
       SED            
       LDA    $EA,X   
       CLC            
       ADC    #$01    
       BCS    LFAAD   
       STA    $EA,X   
LFAAD: CLD            
       LDY    #$00    
       BIT    $D0     
       BMI    LFACB   
       LDA    $80     
       CMP    #$02    
       BNE    LFACB   
       LDA    $DD     
       BNE    LFAC5   
       BIT    SWCHB   
       BMI    LFACA   
       BPL    LFACB   
LFAC5: BIT    SWCHB   
       BVC    LFACB   
LFACA: INY            
LFACB: DEC    $A2     
       BPL    LFAD1   
       INC    $A2     
LFAD1: CLC            
       LDA    $A3     
       SBC    LFDF9,Y 
       CMP    #$02    
       BCS    LFADD   
       LDA    #$02    
LFADD: STA    $A3     
       LDX    #$06    
LFAE1: LDA    LFDD0,X 
       STA    $C5,X   
       DEX            
       BNE    LFAE1   
LFAE9: RTS            

LFAEA: LDA    #$06    
       STA    $BD     
       LDA    #$F8    
       STA    $AD     
       LDA    #$28    
       STA    $CF     
       RTS            

LFAF7: CLC            
       ADC    #$2E    
       TAY            
       AND    #$0F    
       STA    $AE     
       TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       SEC            
       SBC    #$03    
       TAY            
       ADC    #$02    
       ADC    $AE     
       CMP    #$0F    
       BCC    LFB13   
       SBC    #$0F    
       INY            
LFB13: EOR    #$07    
LFB15: ASL            
       ASL            
       ASL            
LFB18: ASL            
LFB19: RTS            

LFB1A: LDA    #$FF    
       LDX    #$0C    
LFB1E: STA    $AE,X   
       DEX            
       BNE    LFB1E   
       STX    $86     
LFB25: LDX    #$8F    
       STX    $84     
       STX    $85     
       RTS            

LFB2C: LDA    #$07    
       LDX    #$FE    
LFB30: LDY    #$00    
       STA    WSYNC   
       STA    HMOVE   
       STA    $AB     
       LDA    #$07    
       STA    VDELP0  
       STA    VDELP1  
       STY    GRP0    
       STY    GRP1    
       STY    GRP0    
       STA    REFP0   
       STA    REFP1   
       LSR            
       STA    NUSIZ0  
       STA    RESP0   
       STA    RESP1   
       STA    RESBL,X 
       STA    NUSIZ1  
       LDA    #$90    
       STA    HMP1    
       LDA    #$80    
       STA    HMP0    
       NOP            
       NOP            
LFB5D: LDY    $AB     
       LDA    ($91),Y 
       TAX            
       LDA    ($93),Y 
       STA    HMOVE   
       STA    $AE     
       LDA    ($89),Y 
       STA    GRP0    
       LDA    ($8B),Y 
       STA    GRP1    
       LDA    ($8D),Y 
       STA    HMCLR   
       STA    GRP0    
       LDA    ($8F),Y 
       LDY    $AE     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STY    GRP0    
       DEC    $AB     
       BPL    LFB5D   
       LDA    #$80    
       STA    HMP0    
       STA    HMP1    
       ASL            
       STA    GRP0    
       STA    GRP1    
       STA    HMOVE   
       STA    GRP0    
       RTS            

LFB96: LDA    $D2     
       BEQ    LFBA3   
LFB9A: LDA    #$00    
       STA    AUDV0   
       STA    AUDV1   
       STA    $DF     
       RTS            

LFBA3: BIT    $E3     
       BVS    LFBB1   
       LDX    $DE     
       CPX    #$63    
       BCC    LFBF7   
       CPX    #$E5    
       BCS    LFBF7   
LFBB1: LDY    $DF     
       BPL    LFBB8   
       DEY            
       BMI    LFBBA   
LFBB8: LDY    #$8F    
LFBBA: STY    $DF     
       LDA    LFEED,Y 
       LSR            
       LSR            
       LSR            
       LSR            
       STA    AUDF1   
       LDA    LFE6E,Y 
       STA    AUDC1   
       LSR            
       LSR            
       LSR            
       LSR            
       STA    AUDV1   
       BVS    LFC35   
       TXA            
       SEC            
       SBC    #$63    
       LDY    #$00    
LFBD8: CMP    #$07    
       BCC    LFBE1   
       INY            
       SBC    #$07    
       BCS    LFBD8   
LFBE1: CPY    #$09    
       LDX    LFFF1,Y 
       BCC    LFBEB   
       LDX    LFFE8,Y 
LFBEB: LDA    #$07    
       STA    AUDC0   
       CPY    #$12    
       BNE    LFC4E   
       LDY    #$00    
       BEQ    LFC50   
LFBF7: LDY    $DF     
       BPL    LFBFD   
       LDY    #$00    
LFBFD: STY    $DF     
       BEQ    LFC2A   
       TYA            
       AND    #$01    
       TAX            
       LDA    #$0C    
       STA    AUDC1   
       LDA    $86     
LFC0B: CMP    #$18    
       BCC    LFC13   
       SBC    #$18    
       BCS    LFC0B   
LFC13: EOR    #$FF    
       ADC    LFDFD,X 
       STA    AUDF1   
       TYA            
       LSR            
       TAX            
       LDA    LFF6D,X 
       STA    AUDV1   
       DEY            
       BEQ    LFC26   
       DEY            
LFC26: STY    $DF     
       BPL    LFC35   
LFC2A: LDX    $E6     
       JSR    LFA8E   
       STY    AUDV1   
       STX    AUDF1   
       STA    AUDC1   
LFC35: LDX    $E5     
       JSR    LFA8E   
       STA    AUDC0   
       LDA    $E2     
       BEQ    LFC50   
       LSR            
       TAY            
       LDA    #$1F    
       SEC            
       SBC    $86     
       ORA    #$10    
       TAX            
       LDA    $C2     
       BPL    LFC50   
LFC4E: LDY    #$06    
LFC50: STY    AUDV0   
       STX    AUDF0   
       RTS            

LFC55: LDX    $E1     
       LDA    $AD     
       CLC            
       ADC    LFE13,X 
       CMP    $A0     
       BEQ    LFC7D   
       DEX            
       BPL    LFC6F   
       LDA    #$CA    
       LDY    $A0     
       CPY    $AD     
       BCC    LFCA6   
       ASL            
       BNE    LFCA6   
LFC6F: LDA    $AD     
       CLC            
       ADC    #$13    
       CMP    $A0     
       LDA    #$CA    
       BCS    LFCA6   
       ASL            
       BNE    LFCA6   
LFC7D: LDA    $D1     
       BNE    LFCA9   
       LDA    $E7     
       CMP    $A3     
       BCC    LFCA4   
       LDA    $81     
       CMP    $A2     
       BCS    LFCA4   
       LDA    $96     
       JSR    LF4DC   
       STA    $A0     
       LDA    #$8F    
       BNE    LFCA6   
LFC98: LDA    $E8     
       BNE    LFCC4   
       LDY    $E7     
       CPY    $A3     
       BCC    LFCA4   
       STY    $E8     
LFCA4: LDA    #$0F    
LFCA6: STA    $85     
       RTS            

LFCA9: LDA    $81     
       AND    #$70    
       BEQ    LFC98   
       LDA    $CF     
       AND    #$30    
       LSR            
       LSR            
       LSR            
       ADC    $E1     
       TAY            
       LDA    LFD72,Y 
       ADC    $BD     
       SBC    $AD     
       CMP    #$0F    
       BCC    LFC98   
LFCC4: LDA    #$00    
       STA    $E8     
       LDA    $A1     
       SEC            
       SBC    $A0     
       CMP    #$18    
       BCC    LFCE0   
       LDA    $A0     
       CMP    $A1     
       LDA    $A1     
       BCS    LFCDB   
       SBC    #$16    
LFCDB: STA    $A0     
LFCDD: JMP    LFC55   
LFCE0: LDA    $A0     
       STA    $AE     
       LDA    $81     
       AND    #$03    
       TAY            
       LDX    $DD     
       LDA    $EA,X   
       CMP    #$99    
       BNE    LFCF3   
       LDY    #$02    
LFCF3: LDA    LFDC9,Y 
       LDX    $E1     
       BEQ    LFCFF   
       EOR    #$FF    
       CLC            
       ADC    #$01    
LFCFF: CLC            
       ADC    $A0     
       STA    $A0     
       LDA    $A1     
       SEC            
       SBC    $A0     
       CMP    #$18    
LFD0B: BCC    LFCDD   
       LDY    #$00    
       LDA    $E9     
       BEQ    LFD1E   
       LDA    LFD5D,X 
       ADC    $A0     
       STA    $A0     
       STY    $E9     
       BNE    LFCDD   
LFD1E: LDA    $BD     
       ADC    #$07    
       CMP    $AE     
       BCS    LFD27   
       INY            
LFD27: LDA    $A1     
       TAX            
       CLC            
       ADC    LFD5B,Y 
       STA    $A1     
       CMP    #$38    
       BCC    LFD38   
       CMP    #$81    
       BCC    LFD0B   
LFD38: STX    $A1     
       JMP    LFC55   
LFD3D: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
LFD4A: .byte $34,$14,$1A
LFD4D: .byte $10,$F0
LFD4F: .byte $16,$EA
LFD51: .byte $0A,$06
LFD53: .byte $10,$10,$10,$10,$10,$10,$08,$14
LFD5B: .byte $04,$FC
LFD5D: .byte $F7,$07
LFD5F: .byte $70,$F8,$FE,$FC,$FF,$ED,$EC,$F8,$70,$50,$00,$0E,$44,$44,$44,$0E
       .byte $44,$44,$44
LFD72: .byte $E8,$22,$EC,$20,$F2,$1B,$F4,$17,$E0,$E0,$E0,$E0,$E0,$E0,$E0,$A0
       .byte $A0,$60,$60,$E0,$E0,$E0,$E0,$F0,$F0,$68,$68,$E4,$E4,$E2,$C2,$C0
       .byte $C0,$E0,$F0,$F0,$F8,$F8,$FC,$7A,$CC,$06,$02,$E0,$F0,$E8,$E4,$F2
       .byte $78,$CC,$06,$02
LFDA6: .byte $03,$07,$0F,$1F,$1F,$37,$37,$67,$67,$C7,$C7,$86,$06,$05,$05,$06
       .byte $06,$07,$07,$07,$03,$03,$01,$01,$03,$03,$07,$07,$0F,$0F,$0F,$0F
       .byte $0B,$03,$02
LFDC9: .byte $03,$04
LFDCB: .byte $06,$07,$0B,$0F
LFDCF: .byte $FD
LFDD0: .byte $01,$FD,$D5,$AA,$55,$CA,$0C
LFDD7: .byte $80,$40,$20,$10,$08,$04,$02,$01,$01,$02,$04,$08,$10,$20,$40,$80
       .byte $80,$40,$20,$10,$08,$04,$02,$01,$01,$02,$04,$08,$10,$20
LFDF5: .byte $40,$08,$F8
LFDF8: .byte $10
LFDF9: .byte $00
LFDFA: .byte $01
LFDFB: .byte $FF,$01
LFDFD: .byte $1A,$1D
LFDFF: .byte $88,$19,$C7,$B8,$B8,$70,$70,$E0,$C0,$C0,$E0,$F8,$E0,$FC,$FC,$A4
       .byte $A0,$C0,$40,$40
LFE13: .byte $13
LFE14: .byte $00,$1C,$18,$14,$00,$00,$00,$00,$00,$1C,$18,$18,$38,$F0,$E0,$F0
       .byte $F8,$F8,$80,$00,$70,$60,$60,$60,$60,$E0,$F0,$F8,$F8,$0C,$0E,$18
       .byte $38,$30,$70,$70,$E0,$F0,$F8,$F8,$38,$30,$30,$30,$60,$E0,$E0,$E0
       .byte $F0,$F8,$F8,$E0,$C0,$C0,$E0,$E0,$E0,$E0,$E0,$F0,$F8,$F8,$80,$00
       .byte $20,$60,$70,$F0,$E0,$E0,$F0,$F8,$F8,$80,$00,$70,$60,$60,$60,$60
       .byte $E7,$F7,$E8,$E8,$0E,$0C,$0C,$0C,$0E,$06
LFE6E: .byte $06,$27,$5F,$AF,$0F,$03,$03,$03,$03,$03,$03,$03,$27,$5F,$AF,$0F
       .byte $18,$10,$10,$18,$1C,$0E,$0E,$27,$5F,$AF,$0F,$00,$08,$0E,$0F,$03
       .byte $03,$07,$27,$5F,$AF,$0F,$00,$00,$02,$03,$03,$07,$07,$27,$5F,$AF
       .byte $0F,$03,$03,$03,$03,$03,$07,$07,$27,$5F,$AF,$0F,$0F,$0F,$0F,$07
       .byte $07,$03,$03,$07,$0F,$0F,$0F,$0F,$0F,$07,$03,$03,$02,$F8,$F8,$F8
       .byte $08,$08,$E4,$C4,$C3,$E3,$F8,$E0,$FC,$FC,$A4,$A0,$C0,$40,$40,$D8
       .byte $B8,$B8,$70,$70,$E0,$C0,$C0,$E0,$F8,$E0,$FC,$FC,$A4,$A0,$C0,$40
       .byte $40,$42,$24,$42,$24,$3C,$42,$81,$42,$81,$66,$81,$00,$81,$00
LFEED: .byte $81,$98,$84,$74,$64,$74,$68,$68,$A4,$98,$84,$74,$64,$74,$68,$68
       .byte $A4
LFEFE: .byte $FD,$F0,$3C,$66,$66,$66,$66,$66,$66,$3C,$3C,$18,$18,$18,$18,$18
       .byte $38,$18,$7E,$60,$60,$3C,$06,$06,$46,$3C,$3C,$46,$06,$0C,$0C,$06
       .byte $46,$3C,$0C,$0C,$0C,$7E,$4C,$2C,$1C,$0C,$7C,$46,$06,$06,$7C,$60
       .byte $60,$7E,$3C,$66,$66,$66,$7C,$60,$62,$3C,$18,$18,$18,$18,$0C,$06
       .byte $42,$7E,$3C,$66,$66,$3C,$3C,$66,$66,$3C,$3C,$46,$06,$3E,$66,$66
       .byte $66,$3C
LFF50: .byte $FF,$FF,$FF,$FF,$7F,$3F,$1F,$0F,$07
LFF59: .byte $03,$01,$C3,$FE,$FC,$F8,$F0
LFF60: .byte $E0,$C0,$80,$00,$00
LFF65: .byte $00,$00,$00,$00,$00,$00,$BA,$CC
LFF6D: .byte $E1,$D1,$F1,$E1,$F1,$F1,$62,$42,$42,$52,$62,$73,$83,$83,$F3,$C4
LFF7D: .byte $04,$05,$04,$06,$08,$0A,$08
LFF84: .byte $0C,$06,$03,$01,$00,$00,$00,$00
LFF8C: .byte $2D,$29,$E9,$A9,$ED,$61,$2F,$00
LFF94: .byte $50,$58,$5C,$56,$53,$11,$F0,$00
LFF9C: .byte $BA,$8A,$BA,$A2,$3A,$80,$FE,$00
LFFA4: .byte $E9,$AB,$AF,$AD,$E9,$00,$00,$00,$F7,$95,$87,$90,$F0,$00,$47,$41
       .byte $77,$55,$75,$00,$00,$00,$03,$00,$4B,$4A,$6B,$00,$08,$00,$80,$80
       .byte $AA,$AA,$BA,$27,$22,$00,$00,$00,$11,$11,$17,$15,$17,$00,$00,$00
       .byte $77,$51,$73,$51,$77
LFFD9: .byte $4C
LFFDA: .byte $84,$D6,$D6,$1A,$26,$26,$44
LFFE1: .byte $00,$5A,$5E,$62,$62
LFFE6: .byte $DE,$E3
LFFE8: .byte $E8
LFFE9: .byte $25,$1A,$30,$3B,$46,$51,$25,$5C
LFFF1: .byte $0E,$0E,$11,$0C,$0E,$0E,$11,$11
LFFF9: .byte $11,$16,$22,$00
LFFFD: .byte $F0,$00,$F0
