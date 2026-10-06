; Disassembly of roms/CrazyValet.bin
; Disassembled Tue Oct  6 15:21:09 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/CrazyValet.bin
;

      processor 6502
VSYNC   =  $00
VBLANK  =  $01
WSYNC   =  $02
NUSIZ0  =  $04
NUSIZ1  =  $05
COLUP0  =  $06
COLUPF  =  $08
COLUBK  =  $09
CTRLPF  =  $0A
PF0     =  $0D
PF1     =  $0E
PF2     =  $0F
RESP0   =  $10
AUDC1   =  $16
AUDF1   =  $18
AUDV1   =  $1A
GRP0    =  $1B
GRP1    =  $1C
ENAM0   =  $1D
ENAM1   =  $1E
ENABL   =  $1F
HMP0    =  $20
HMOVE   =  $2A
CXCLR   =  $2C
INPT4   =  $3C
SWCHA   =  $0280
SWACNT  =  $0281
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296

       ORG $F000

START:
       SEI            
       CLD            
       LDX    #$FF    
       TXS            
       LDA    #$00    
LF007: STA    VSYNC,X 
       DEX            
       BNE    LF007   
       JSR    LF7EF   
LF00F: JSR    LF05B   
       JSR    LF024   
       JSR    LF32E   
       JSR    LF079   
       JSR    LF460   
       JSR    LF767   
       JMP    LF00F   
LF024: STA    WSYNC   
       LDX    $E4     
       CPX    #$01    
       BEQ    LF045   
       CPX    #$02    
       BEQ    LF045   
       CPX    #$03    
       BEQ    LF043   
       CPX    #$04    
       BEQ    LF042   
       CPX    #$05    
       BEQ    LF041   
       CPX    #$06    
       BEQ    LF040   
LF040: NOP            
LF041: NOP            
LF042: NOP            
LF043: NOP            
       NOP            
LF045: NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       STA    RESP0   
       LDA    LFF44,X 
       STA    HMP0    
       STA    WSYNC   
       STA    HMOVE   
       RTS            

LF05B: LDX    #$00    
       LDA    #$02    
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$2C    
       STA    TIM64T  
       LDA    #$00    
       STA    CXCLR   
       STA    WSYNC   
       STA    VSYNC   
       RTS            

LF079: LDA    $80     
       STA    COLUBK  
       LDA    #$00    
       STA    SWACNT  
       LDA    INPT4   
       STA    $E8     
       BPL    LF08E   
       LDA    #$36    
       STA    $82     
       BPL    LF099   
LF08E: JSR    LF31E   
       LDA    $BB,X   
       BEQ    LF099   
       LDA    #$C6    
       STA    $82     
LF099: LDA    #$00    
       STA    $DF     
       LDA    #$40    
       BIT    SWCHA   
       BNE    LF0AB   
       LDA    #$03    
       STA    $DF     
       JMP    LF0EE   
LF0AB: LDA    #$80    
       BIT    SWCHA   
       BNE    LF0B9   
       LDA    #$04    
       STA    $DF     
       JMP    LF0EE   
LF0B9: LDA    #$10    
       BIT    SWCHA   
       BNE    LF0C7   
       LDA    #$05    
       STA    $DF     
       JMP    LF0EE   
LF0C7: LDA    #$20    
       BIT    SWCHA   
       BNE    LF0D5   
       LDA    #$06    
       STA    $DF     
       JMP    LF0EE   
LF0D5: LDA    #$01    
       BIT    SWCHB   
       BNE    LF0E3   
       LDA    #$02    
       STA    $DF     
       JMP    LF0EE   
LF0E3: LDA    #$02    
       BIT    SWCHB   
       BNE    LF0EE   
       LDA    #$01    
       STA    $DF     
LF0EE: LDA    $E9     
       BNE    LF0F7   
       LDA    $DF     
       STA    $E9     
       RTS            

LF0F7: LDA    $DF     
       BEQ    LF0FE   
       STA    $E9     
       RTS            

LF0FE: LDX    $E9     
       LDA    #$00    
       STA    $E9     
       DEX            
       BEQ    LF14D   
       DEX            
       BEQ    LF134   
       LDA    $E8     
       BMI    LF11B   
       DEX            
       BEQ    LF128   
       DEX            
       BEQ    LF12B   
       DEX            
       BEQ    LF12E   
       DEX            
       BEQ    LF131   
       RTS            

LF11B: DEX            
       BEQ    LF16A   
       DEX            
       BEQ    LF174   
       DEX            
       BEQ    LF182   
       DEX            
       BEQ    LF18C   
       RTS            

LF128: JMP    LF19A   
LF12B: JMP    LF1E5   
LF12E: JMP    LF230   
LF131: JMP    LF290   
LF134: LDA    #$04    
       STA    $E6     
       LDA    #$01    
       STA    $E4     
       STA    $E5     
       LDA    #$00    
       STA    $EA     
       STA    $EB     
       STA    $EC     
       STA    $80     
       LDA    #$0C    
       STA    $81     
       RTS            

LF14D: LDA    #$FA    
       STA    $F3     
       LDA    #$03    
       STA    $E6     
       LDA    #$00    
       STA    $F2     
       STA    $E4     
       STA    $E5     
       INC    $E7     
       LDA    $E7     
       CMP    #$3D    
       BNE    LF169   
       LDA    #$01    
       STA    $E7     
LF169: RTS            

LF16A: DEC    $E4     
       BEQ    LF16F   
       RTS            

LF16F: LDA    #$06    
       STA    $E4     
       RTS            

LF174: LDA    $E4     
       CMP    #$06    
       BEQ    LF17D   
       INC    $E4     
       RTS            

LF17D: LDA    #$01    
       STA    $E4     
       RTS            

LF182: DEC    $E5     
       BEQ    LF187   
       RTS            

LF187: LDA    #$06    
       STA    $E5     
       RTS            

LF18C: LDA    $E5     
       CMP    #$06    
       BEQ    LF195   
       INC    $E5     
       RTS            

LF195: LDA    #$01    
       STA    $E5     
       RTS            

LF19A: LDA    $E4     
       CMP    #$01    
       BNE    LF1A1   
       RTS            

LF1A1: JSR    LF31E   
       LDA    $BB,X   
       CMP    #$01    
       BEQ    LF1C2   
       CMP    #$02    
       BEQ    LF1B3   
       CMP    #$03    
       BEQ    LF1B3   
       RTS            

LF1B3: LDY    $E4     
LF1B5: DEX            
       DEY            
       LDA    $BB,X   
       CMP    #$01    
       BNE    LF1B5   
       CPY    #$01    
       BNE    LF1C2   
       RTS            

LF1C2: DEX            
       LDA    $BB,X   
       BEQ    LF1C8   
       RTS            

LF1C8: STX    $E0     
       INX            
       STX    $E1     
LF1CD: LDA    $BB,X   
       LDX    $E0     
       STA    $BB,X   
       CMP    #$03    
       BEQ    LF1E0   
       INC    $E0     
       INC    $E1     
       LDX    $E1     
       JMP    LF1CD   
LF1E0: DEC    $E4     
       JMP    LF2EE   
LF1E5: LDA    $E4     
       CMP    #$06    
       BNE    LF1EC   
       RTS            

LF1EC: JSR    LF31E   
       LDA    $BB,X   
       CMP    #$03    
       BEQ    LF20D   
       CMP    #$01    
       BEQ    LF1FE   
       CMP    #$02    
       BEQ    LF1FE   
       RTS            

LF1FE: LDY    $E4     
LF200: INX            
       INY            
       LDA    $BB,X   
       CMP    #$03    
       BNE    LF200   
       CPY    #$06    
       BNE    LF20D   
       RTS            

LF20D: INX            
       LDA    $BB,X   
       BEQ    LF213   
       RTS            

LF213: STX    $E0     
       DEX            
       STX    $E1     
LF218: LDA    $BB,X   
       LDX    $E0     
       STA    $BB,X   
       CMP    #$01    
       BEQ    LF22B   
       DEC    $E0     
       DEC    $E1     
       LDX    $E1     
       JMP    LF218   
LF22B: INC    $E4     
       JMP    LF2EE   
LF230: LDA    $E5     
       CMP    #$01    
       BNE    LF237   
       RTS            

LF237: JSR    LF31E   
       LDA    $BB,X   
       CMP    #$04    
       BEQ    LF25C   
       CMP    #$05    
       BEQ    LF249   
       CMP    #$06    
       BEQ    LF249   
       RTS            

LF249: LDY    $E5     
LF24B: TXA            
       SEC            
       SBC    #$06    
       TAX            
       DEY            
       LDA    $BB,X   
       CMP    #$04    
       BNE    LF24B   
       CPY    #$01    
       BNE    LF25C   
       RTS            

LF25C: TXA            
       SEC            
       SBC    #$06    
       TAX            
       LDA    $BB,X   
       BEQ    LF266   
       RTS            

LF266: STX    $E0     
       TXA            
       CLC            
       ADC    #$06    
       TAX            
       STX    $E1     
LF26F: LDA    $BB,X   
       LDX    $E0     
       STA    $BB,X   
       CMP    #$06    
       BEQ    LF28C   
       LDA    $E0     
       CLC            
       ADC    #$06    
       STA    $E0     
       LDA    $E1     
       CLC            
       ADC    #$06    
       STA    $E1     
       LDX    $E1     
       JMP    LF26F   
LF28C: DEC    $E5     
       BPL    LF2EE   
LF290: LDA    $E5     
       CMP    #$06    
       BNE    LF297   
       RTS            

LF297: JSR    LF31E   
       LDA    $BB,X   
       CMP    #$06    
       BEQ    LF2BC   
       CMP    #$04    
       BEQ    LF2A9   
       CMP    #$05    
       BEQ    LF2A9   
       RTS            

LF2A9: LDY    $E5     
LF2AB: TXA            
       CLC            
       ADC    #$06    
       TAX            
       INY            
       LDA    $BB,X   
       CMP    #$06    
       BNE    LF2AB   
       CPY    #$06    
       BNE    LF2BC   
       RTS            

LF2BC: TXA            
       CLC            
       ADC    #$06    
       TAX            
       LDA    $BB,X   
       BEQ    LF2C6   
       RTS            

LF2C6: STX    $E0     
       TXA            
       SEC            
       SBC    #$06    
       TAX            
       STX    $E1     
LF2CF: LDA    $BB,X   
       LDX    $E0     
       STA    $BB,X   
       CMP    #$04    
       BEQ    LF2EC   
       LDA    $E0     
       SEC            
       SBC    #$06    
       STA    $E0     
       LDA    $E1     
       SEC            
       SBC    #$06    
       STA    $E1     
       LDX    $E1     
       JMP    LF2CF   
LF2EC: INC    $E5     
LF2EE: LDA    #$00    
       LDX    $E1     
       STA    $BB,X   
       CLC            
       LDA    $EA     
       ADC    $EB     
       ADC    $EC     
       CMP    #$1B    
       BEQ    LF31D   
       INC    $EC     
       LDA    $EC     
       CMP    #$0A    
       BEQ    LF309   
       BNE    LF31D   
LF309: LDA    #$00    
       STA    $EC     
       INC    $EB     
       LDA    $EB     
       CMP    #$0A    
       BEQ    LF317   
       BNE    LF31D   
LF317: LDA    #$00    
       STA    $EB     
       INC    $EA     
LF31D: RTS            

LF31E: LDA    $E4     
       CLC            
       LDY    $E5     
LF323: ADC    #$06    
       DEY            
       BNE    LF323   
       SEC            
       SBC    #$06    
       TAX            
       DEX            
       RTS            

LF32E: LDA    $EB     
       STA    $EE     
       LDA    $EA     
       STA    $ED     
       BNE    LF344   
       LDA    #$0A    
       STA    $ED     
       LDA    $EE     
       BNE    LF344   
       LDA    #$0A    
       STA    $EE     
LF344: LDX    #$00    
       STX    $E1     
       LDA    #$85    
       STA    $E0     
       DEC    $E0     
LF34E: LDY    $BB,X   
       LDA    LFEBE,Y 
       INC    $E0     
       STX    $E2     
       LDX    #$00    
       STA    ($E0,X) 
       LDX    $E2     
       INX            
       LDY    $BB,X   
       LDA    LFEC5,Y 
       STA    $DF     
       INX            
       LDY    $BB,X   
       LDA    LFECC,Y 
       ORA    $DF     
       INC    $E0     
       STX    $E2     
       LDX    #$00    
       STA    ($E0,X) 
       LDX    $E2     
       INX            
       LDY    $BB,X   
       LDA    LFED3,Y 
       INC    $E0     
       STX    $E2     
       LDX    #$00    
       STA    ($E0,X) 
       LDX    $E2     
       INX            
       LDY    $BB,X   
       LDA    LFEDA,Y 
       STA    $DF     
       INX            
       LDY    $BB,X   
       LDA    LFEE1,Y 
       ORA    $DF     
       INC    $E0     
       STX    $E2     
       LDX    #$00    
       STA    ($E0,X) 
       LDX    $E2     
       CLC            
       LDA    $E0     
       ADC    #$06    
       STA    $E0     
       INX            
       CPX    #$24    
       BNE    LF34E   
       LDX    #$00    
       STX    $E1     
       LDA    #$89    
       STA    $E0     
       DEC    $E0     
LF3B7: LDY    $BB,X   
       LDA    LFEE8,Y 
       INC    $E0     
       STX    $E2     
       LDX    #$00    
       STA    ($E0,X) 
       LDX    $E2     
       INX            
       LDY    $BB,X   
       LDA    LFEEF,Y 
       STA    $DF     
       INX            
       LDY    $BB,X   
       LDA    LFEF6,Y 
       ORA    $DF     
       INC    $E0     
       STX    $E2     
       LDX    #$00    
       STA    ($E0,X) 
       LDX    $E2     
       INX            
       LDY    $BB,X   
       LDA    LFEFD,Y 
       INC    $E0     
       STX    $E2     
       LDX    #$00    
       STA    ($E0,X) 
       LDX    $E2     
       INX            
       LDY    $BB,X   
       LDA    LFF04,Y 
       STA    $DF     
       INX            
       LDY    $BB,X   
       LDA    LFF0B,Y 
       ORA    $DF     
       INC    $E0     
       STX    $E2     
       LDX    #$00    
       STA    ($E0,X) 
       LDX    $E2     
       CLC            
       LDA    $E0     
       ADC    #$06    
       STA    $E0     
       INX            
       CPX    #$1E    
       BNE    LF3B7   
       LDA    $81     
       STA    COLUPF  
       LDA    $E6     
       BEQ    LF423   
       CMP    #$02    
       BEQ    LF423   
       RTS            

LF423: LDX    $F2     
       LDA    LFE9E,X 
       STA    $80     
       LDA    LFEAE,X 
       STA    $81     
       DEC    $F3     
       BNE    LF443   
       LDA    #$FA    
       STA    $F3     
       INC    $F2     
       LDA    $F2     
       CMP    #$10    
       BCC    LF443   
       LDA    #$00    
       STA    $F2     
LF443: LDA    $E6     
       CMP    #$02    
       BEQ    LF45F   
       LDA    #$00    
       STA    $EA     
       STA    $EB     
       LDA    $E7     
LF451: CMP    #$0A    
       BMI    LF45C   
       INC    $EB     
       SEC            
       SBC    #$0A    
       BPL    LF451   
LF45C: STA    $EC     
       RTS            

LF45F: RTS            

LF460: LDA    #$12    
       STA    $83     
       STA    $8D     
       STA    $97     
       STA    $A1     
       STA    $AB     
       STA    $B5     
       LDA    #$FF    
       STA    $84     
       STA    $8E     
       STA    $98     
       STA    $A2     
       STA    $AC     
       STA    $B6     
       LDA    $E6     
       CMP    #$01    
       BEQ    LF484   
       BNE    LF49D   
LF484: LDX    #$00    
       LDY    $E5     
LF488: DEY            
       BEQ    LF492   
       TXA            
       CLC            
       ADC    #$0A    
       TAX            
       BNE    LF488   
LF492: LDA    #$1E    
       CLC            
       ADC    $E3     
       STA    $83,X   
       LDA    #$FF    
       STA    $84,X   
LF49D: LDA    $82     
       STA    COLUP0  
       LDA    INTIM   
       BNE    LF49D   
       STA    WSYNC   
       STA    VBLANK  
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$01    
       STA    CTRLPF  
       LDY    #$02    
LF4B4: STA    WSYNC   
       LDA    #$00    
       STA    PF0     
       LDX    $ED     
       LDA    LFF4B,X 
       STA    PF1     
       LDX    $EE     
       LDA    LFF56,X 
       STA    $DF     
       LDX    $EC     
       LDA    LFF61,X 
       ORA    $DF     
       STA    PF2     
       NOP            
       LDA    #$00    
       STA    PF1     
       STA    PF2     
       STA    PF0     
       DEY            
       BNE    LF4B4   
       LDY    #$02    
LF4DF: STA    WSYNC   
       LDA    #$00    
       STA    PF0     
       LDX    $ED     
       LDA    LFF6C,X 
       STA    PF1     
       LDX    $EE     
       LDA    LFF77,X 
       STA    $DF     
       LDX    $EC     
       LDA    LFF82,X 
       ORA    $DF     
       STA    PF2     
       NOP            
       LDA    #$00    
       STA    PF1     
       STA    PF2     
       STA    PF0     
       DEY            
       BNE    LF4DF   
       LDY    #$02    
LF50A: STA    WSYNC   
       LDA    #$00    
       STA    PF0     
       LDX    $ED     
       LDA    LFF8D,X 
       STA    PF1     
       LDX    $EE     
       LDA    LFF98,X 
       STA    $DF     
       LDX    $EC     
       LDA    LFFA3,X 
       ORA    $DF     
       STA    PF2     
       NOP            
       LDA    #$00    
       STA    PF1     
       STA    PF2     
       STA    PF0     
       DEY            
       BNE    LF50A   
       LDY    #$02    
LF535: STA    WSYNC   
       LDA    #$00    
       STA    PF0     
       LDX    $ED     
       LDA    LFFAE,X 
       STA    PF1     
       LDX    $EE     
       LDA    LFFB9,X 
       STA    $DF     
       LDX    $EC     
       LDA    LFFC4,X 
       ORA    $DF     
       STA    PF2     
       NOP            
       LDA    #$00    
       STA    PF1     
       STA    PF2     
       STA    PF0     
       DEY            
       BNE    LF535   
       LDY    #$02    
LF560: STA    WSYNC   
       LDA    #$00    
       STA    PF0     
       LDX    $ED     
       LDA    LFFCF,X 
       STA    PF1     
       LDX    $EE     
       LDA    LFFDA,X 
       STA    $DF     
       LDX    $EC     
       LDA    LFFE5,X 
       ORA    $DF     
       STA    PF2     
       NOP            
       LDA    #$00    
       STA    PF1     
       STA    PF2     
       STA    PF0     
       DEY            
       BNE    LF560   
       LDY    #$03    
LF58B: STA    WSYNC   
       DEY            
       BNE    LF58B   
       LDY    #$06    
LF592: STA    WSYNC   
       LDA    #$00    
       STA    PF0     
       LDA    #$3F    
       STA    PF1     
       LDA    #$FF    
       STA    PF2     
       LDX    #$04    
LF5A2: DEX            
       BNE    LF5A2   
       LDA    #$1F    
       STA    PF1     
       DEY            
       BNE    LF592   
       LDY    #$06    
LF5AE: STA    WSYNC   
       LDA    #$00    
       STA    PF0     
       STA    PF2     
       LDA    #$20    
       STA    PF1     
       LDX    #$03    
LF5BC: DEX            
       BNE    LF5BC   
       LDA    #$10    
       STA    PF1     
       DEY            
       BNE    LF5AE   
       LDY    #$12    
LF5C8: STA    WSYNC   
       LDA    ($83),Y 
       STA    GRP0    
       LDA    #$00    
       STA    CTRLPF  
       STA    PF0     
       LDA    $85     
       STA    PF1     
       LDA    $86     
       STA    PF2     
       NOP            
       NOP            
       LDA    $87     
       STA    PF0     
       LDA    $88     
       STA    PF1     
       LDA    #$01    
       STA    PF2     
       DEY            
       BNE    LF5C8   
       STY    GRP0    
       LDX    #$00    
       LDA    #$01    
       STA    $E2     
       JSR    LF741   
       LDY    #$12    
LF5FA: STA    WSYNC   
       LDA    ($8D),Y 
       STA    GRP0    
       LDA    #$00    
       STA    CTRLPF  
       STA    PF0     
       LDA    $8F     
       STA    PF1     
       LDA    $90     
       STA    PF2     
       NOP            
       NOP            
       LDA    $91     
       STA    PF0     
       LDA    $92     
       STA    PF1     
       LDA    #$01    
       STA    PF2     
       DEY            
       BNE    LF5FA   
       STY    GRP0    
       LDX    #$0A    
       LDA    #$00    
       STA    $E2     
       JSR    LF741   
       LDY    #$12    
LF62C: STA    WSYNC   
       LDA    ($97),Y 
       STA    GRP0    
       LDA    #$00    
       STA    CTRLPF  
       STA    PF0     
       LDA    $99     
       STA    PF1     
       LDA    $9A     
       STA    PF2     
       NOP            
       NOP            
       LDA    $9B     
       STA    PF0     
       LDA    $9C     
       STA    PF1     
       LDA    #$00    
       STA    PF2     
       DEY            
       BNE    LF62C   
       STY    GRP0    
       LDX    #$14    
       JSR    LF741   
       LDY    #$12    
LF65A: STA    WSYNC   
       LDA    ($A1),Y 
       STA    GRP0    
       LDA    #$00    
       STA    CTRLPF  
       STA    PF0     
       LDA    $A3     
       STA    PF1     
       LDA    $A4     
       STA    PF2     
       NOP            
       NOP            
       LDA    $A5     
       STA    PF0     
       LDA    $A6     
       STA    PF1     
       LDA    #$01    
       STA    PF2     
       DEY            
       BNE    LF65A   
       STY    GRP0    
       LDX    #$1E    
       LDA    #$01    
       STA    $E2     
       JSR    LF741   
       LDY    #$12    
LF68C: STA    WSYNC   
       LDA    ($AB),Y 
       STA    GRP0    
       LDA    #$00    
       STA    CTRLPF  
       STA    PF0     
       LDA    $AD     
       STA    PF1     
       LDA    $AE     
       STA    PF2     
       NOP            
       NOP            
       LDA    $AF     
       STA    PF0     
       LDA    $B0     
       STA    PF1     
       LDA    #$01    
       STA    PF2     
       DEY            
       BNE    LF68C   
       STY    GRP0    
       LDX    #$28    
       JSR    LF741   
       LDY    #$12    
LF6BA: STA    WSYNC   
       LDA    ($B5),Y 
       STA    GRP0    
       LDA    #$00    
       STA    CTRLPF  
       STA    PF0     
       LDA    $B7     
       STA    PF1     
       LDA    $B8     
       STA    PF2     
       NOP            
       NOP            
       LDA    $B9     
       STA    PF0     
       LDA    $BA     
       STA    PF1     
       LDA    #$01    
       STA    PF2     
       DEY            
       BNE    LF6BA   
       STY    GRP0    
       LDY    #$06    
LF6E3: STA    WSYNC   
       LDA    #$01    
       STA    CTRLPF  
       LDA    #$00    
       STA    PF0     
       STA    PF2     
       LDA    #$20    
       STA    PF1     
       LDX    #$04    
LF6F5: DEX            
       BNE    LF6F5   
       LDA    #$10    
       STA    PF1     
       DEY            
       BNE    LF6E3   
       LDY    #$06    
LF701: STA    WSYNC   
       LDA    #$00    
       STA    PF0     
       LDA    #$3F    
       STA    PF1     
       LDA    #$FF    
       STA    PF2     
       LDX    #$04    
LF711: DEX            
       BNE    LF711   
       LDA    #$1F    
       STA    PF1     
       DEY            
       BNE    LF701   
       LDY    #$10    
LF71D: STA    WSYNC   
       LDA    #$00    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       DEY            
       BNE    LF71D   
       LDA    #$02    
       STA    WSYNC   
       STA    VBLANK  
       STY    PF0     
       STY    PF1     
       STY    PF1     
       STY    GRP0    
       STY    GRP1    
       STY    ENAM0   
       STY    ENAM1   
       STY    ENABL   
       RTS            

LF741: LDY    #$06    
LF743: STA    WSYNC   
       LDA    $81     
       STA    COLUPF  
       LDA    #$00    
       STA    CTRLPF  
       STA    PF0     
       LDA    $89,X   
       STA    PF1     
       LDA    $8A,X   
       STA    PF2     
       LDA    $8B,X   
       STA    PF0     
       LDA    $8C,X   
       STA    PF1     
       LDA    $E2     
       STA    PF2     
       DEY            
       BNE    LF743   
       RTS            

LF767: LDA    #$23    
       STA    TIM64T  
       LDA    $E6     
       CMP    #$04    
       BNE    LF779   
       JSR    LF831   
       LDA    #$01    
       STA    $E6     
LF779: LDA    $E6     
       CMP    #$03    
       BNE    LF786   
       JSR    LF831   
       LDA    #$00    
       STA    $E6     
LF786: LDA    $E6     
       CMP    #$01    
       BNE    LF7AE   
       LDX    #$11    
       LDA    $BB,X   
       CMP    #$03    
       BNE    LF7AE   
       LDA    #$F0    
       STA    $EF     
       LDA    #$FF    
       STA    $F0     
       LDY    #$02    
       LDA    ($EF),Y 
       STA    $F1     
       LDA    #$FA    
       STA    $F3     
       LDA    #$00    
       STA    $F2     
       LDA    #$02    
       STA    $E6     
LF7AE: LDY    #$00    
       LDA    ($EF),Y 
       BMI    LF7DF   
       BEQ    LF7DF   
       STA    AUDC1   
       INY            
       LDA    ($EF),Y 
       BEQ    LF7C6   
       STA    AUDF1   
       LDA    #$0F    
       STA    AUDV1   
       JMP    LF7CA   
LF7C6: LDA    #$00    
       STA    AUDV1   
LF7CA: DEC    $F1     
       LDA    $F1     
       BNE    LF7E7   
       INC    $EF     
       INC    $EF     
       INC    $EF     
       LDY    #$02    
       LDA    ($EF),Y 
       STA    $F1     
       JMP    LF7E7   
LF7DF: LDA    #$00    
       STA    AUDV1   
       STA    $EF     
       STA    $F0     
LF7E7: LDA    INTIM   
       BNE    LF7E7   
       STA    WSYNC   
       RTS            

LF7EF: LDA    #$26    
       STA    $80     
       LDA    #$0E    
       STA    $81     
       LDA    #$6A    
       STA    $82     
       LDA    #$00    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    $E6     
       STA    $E9     
       STA    $F2     
       STA    $EA     
       STA    $EB     
       STA    AUDV1   
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    $EF     
       STA    $F0     
       STA    $E4     
       STA    $E5     
       STA    $E3     
       LDA    #$01    
       STA    CTRLPF  
       STA    $EC     
       STA    $E7     
       JSR    LF831   
       LDA    #$FA    
       STA    $F3     
       RTS            

LF831: LDY    #$65    
       STY    $E0     
       LDY    #$F8    
       STY    $E1     
       LDY    $E7     
       LDA    $E0     
LF83D: DEY            
       BEQ    LF849   
       CLC            
       ADC    #$12    
       BCC    LF83D   
       INC    $E1     
       BNE    LF83D   
LF849: STA    $E0     
       LDY    #$11    
       LDX    #$23    
LF84F: LDA    ($E0),Y 
       STA    $DF     
       AND    #$0F    
       STA    $BB,X   
       DEX            
       LDA    $DF     
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $BB,X   
       DEX            
       DEY            
       BPL    LF84F   
       RTS            

LF865: .byte $44,$04,$44,$66,$05,$55,$13,$06,$66,$00,$01,$23,$13,$00,$00,$00
       .byte $00,$00,$04,$01,$34,$05,$13,$46,$06,$13,$64,$44,$04,$45,$56,$06
       .byte $66,$61,$23,$13,$13,$13,$04,$12,$30,$45,$13,$44,$66,$04,$65,$00
       .byte $05,$46,$00,$06,$60,$00,$40,$04,$00,$50,$05,$00,$61,$36,$00,$00
       .byte $41,$23,$00,$60,$04,$00,$12,$36,$01,$30,$40,$01,$23,$64,$13,$44
       .byte $06,$04,$66,$00,$06,$40,$00,$13,$60,$00,$04,$13,$13,$06,$44,$44
       .byte $13,$66,$66,$44,$12,$30,$66,$00,$00,$00,$00,$00,$41,$34,$00,$60
       .byte $46,$13,$13,$64,$04,$12,$36,$06,$44,$40,$00,$66,$60,$00,$40,$13
       .byte $13,$61,$23,$13,$13,$04,$04,$13,$06,$06,$01,$23,$13,$00,$01,$23
       .byte $04,$44,$13,$06,$55,$04,$13,$66,$06,$44,$13,$44,$55,$00,$66,$66
       .byte $00,$00,$01,$30,$13,$00,$00,$13,$01,$34,$44,$12,$36,$66,$41,$23
       .byte $13,$60,$00,$00,$00,$00,$00,$00,$00,$00,$01,$34,$00,$01,$35,$04
       .byte $04,$06,$05,$06,$13,$06,$00,$41,$34,$13,$64,$46,$41,$35,$60,$50
       .byte $06,$13,$60,$13,$44,$13,$13,$66,$04,$13,$44,$06,$04,$66,$01,$36
       .byte $04,$00,$13,$06,$00,$04,$00,$00,$06,$00,$12,$34,$44,$00,$46,$66
       .byte $13,$60,$00,$00,$13,$13,$41,$31,$23,$61,$31,$30,$13,$12,$34,$40
       .byte $04,$46,$61,$36,$60,$13,$41,$34,$00,$60,$06,$13,$01,$30,$00,$01
       .byte $34,$00,$13,$45,$13,$44,$66,$13,$66,$13,$13,$41,$23,$13,$61,$23
       .byte $04,$01,$30,$06,$01,$34,$13,$44,$06,$13,$55,$00,$40,$66,$13,$61
       .byte $31,$30,$13,$40,$13,$13,$60,$04,$41,$30,$05,$51,$23,$06,$60,$04
       .byte $13,$13,$06,$13,$12,$34,$44,$00,$45,$55,$13,$66,$66,$00,$00,$00
       .byte $04,$13,$00,$06,$13,$00,$01,$31,$30,$00,$00,$04,$01,$34,$45,$04
       .byte $45,$66,$06,$66,$13,$01,$30,$00,$41,$34,$00,$50,$05,$00,$61,$36
       .byte $00,$00,$41,$23,$00,$60,$04,$00,$12,$36,$04,$41,$23,$06,$54,$13
       .byte $13,$66,$04,$40,$00,$46,$60,$13,$64,$13,$12,$36,$41,$30,$04,$60
       .byte $40,$05,$13,$50,$06,$00,$61,$23,$00,$00,$40,$12,$30,$60,$04,$40
       .byte $13,$46,$64,$44,$61,$36,$56,$04,$13,$64,$45,$00,$06,$66,$13,$00
       .byte $00,$00,$13,$00,$00,$44,$01,$34,$55,$04,$45,$66,$06,$66,$13,$00
       .byte $00,$13,$04,$13,$44,$06,$40,$65,$13,$50,$06,$13,$60,$00,$41,$34
       .byte $00,$61,$36,$13,$13,$13,$40,$00,$40,$64,$04,$61,$35,$46,$01,$36
       .byte $50,$04,$13,$61,$36,$13,$00,$00,$00,$00,$44,$44,$13,$55,$66,$00
       .byte $66,$44,$44,$13,$66,$66,$13,$13,$13,$40,$00,$00,$60,$13,$44,$13
       .byte $44,$66,$13,$66,$00,$40,$13,$13,$60,$00,$01,$30,$00,$00,$04,$44
       .byte $01,$35,$55,$44,$46,$66,$66,$60,$13,$00,$00,$00,$00,$41,$30,$13
       .byte $50,$40,$13,$60,$64,$13,$12,$35,$13,$13,$06,$13,$13,$00,$01,$31
       .byte $30,$13,$13,$44,$44,$13,$55,$55,$44,$66,$66,$66,$13,$01,$31,$30
       .byte $00,$40,$13,$00,$64,$00,$01,$36,$40,$12,$30,$50,$00,$40,$60,$00
       .byte $61,$30,$13,$44,$00,$13,$65,$00,$41,$36,$00,$51,$23,$00,$61,$30
       .byte $00,$12,$30,$00,$41,$31,$34,$60,$41,$36,$13,$64,$00,$00,$05,$13
       .byte $12,$36,$40,$13,$13,$60,$00,$41,$30,$00,$60,$40,$04,$13,$60,$06
       .byte $13,$40,$01,$23,$60,$00,$00,$00,$01,$23,$40,$13,$04,$64,$13,$06
       .byte $46,$41,$30,$60,$60,$44,$13,$13,$66,$00,$13,$44,$00,$40,$65,$00
       .byte $51,$36,$00,$61,$23,$00,$00,$00,$00,$00,$01,$23,$40,$00,$13,$61
       .byte $23,$40,$13,$04,$54,$13,$46,$66,$00,$64,$13,$01,$36,$00,$00,$12
       .byte $34,$00,$41,$35,$00,$61,$36,$00,$44,$13,$00,$66,$13,$00,$12,$30
       .byte $01,$34,$40,$12,$35,$64,$13,$06,$46,$40,$13,$60,$60,$41,$34,$13
       .byte $60,$06,$41,$34,$00,$61,$35,$00,$13,$46,$04,$00,$61,$35,$00,$40
       .byte $06,$00,$61,$23,$12,$30,$04,$13,$04,$06,$13,$06,$04,$00,$44,$06
       .byte $40,$66,$13,$61,$30,$00,$12,$34,$00,$00,$46,$13,$13,$50,$00,$44
       .byte $61,$34,$66,$12,$35,$13,$13,$06,$00,$00,$00,$00,$04,$44,$01,$35
       .byte $55,$01,$36,$66,$04,$01,$30,$06,$01,$30,$40,$41,$23,$50,$64,$00
       .byte $61,$36,$00,$13,$13,$04,$00,$00,$05,$13,$13,$06,$13,$01,$23,$00
       .byte $04,$13,$41,$36,$04,$60,$41,$35,$13,$50,$06,$00,$61,$23,$04,$40
       .byte $00,$06,$54,$00,$13,$65,$44,$01,$36,$56,$40,$13,$64,$60,$01,$36
       .byte $13,$44,$13,$00,$56,$00,$13,$60,$00,$41,$31,$34,$60,$04,$05,$13
       .byte $06,$06,$04,$40,$13,$06,$50,$00,$13,$60,$00,$41,$31,$34,$61,$34
       .byte $45,$12,$36,$66,$12,$30,$44,$12,$30,$55,$13,$44,$66,$40,$66,$00
       .byte $60,$04,$13,$00,$06,$13,$40,$01,$23,$60,$04,$04,$13,$06,$45,$12
       .byte $34,$66,$00,$46,$13,$13,$61,$30,$00,$41,$34,$00,$54,$05,$13,$66
       .byte $06,$41,$23,$00,$61,$34,$40,$13,$06,$60,$04,$13,$13,$06,$12,$34
       .byte $13,$44,$06,$00,$66,$13,$40,$13,$44,$61,$23,$66,$41,$23,$13,$54
       .byte $13,$04,$66,$13,$05,$12,$34,$06,$00,$46,$13,$13,$60,$00,$13,$40
       .byte $13,$13,$60,$44,$41,$30,$55,$51,$23,$66,$60,$04,$13,$13,$06,$13
       .byte $13,$13,$04,$00,$04,$05,$13,$45,$06,$40,$56,$00,$64,$60,$13,$06
       .byte $01,$30,$40,$01,$23,$61,$34,$00,$13,$46,$04,$00,$61,$35,$00,$41
       .byte $36,$00,$61,$23,$00,$41,$23,$00,$64,$00,$13,$46,$04,$13,$61,$35
       .byte $44,$13,$06,$66,$13,$00,$00,$00,$00,$40,$04,$04,$61,$35,$05,$01
       .byte $36,$06,$04,$41,$30,$06,$60,$00,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
LFE9E: .byte $00,$16,$26,$36,$46,$56,$66,$76,$86,$96,$A6,$B6,$C6,$D6,$E6,$F6
LFEAE: .byte $0C,$1A,$2A,$3A,$4A,$5A,$6A,$7A,$8A,$9A,$AA,$BA,$CA,$DA,$EA,$FA
LFEBE: .byte $20,$2F,$2F,$2E,$2E,$2E,$2E
LFEC5: .byte $00,$0F,$0F,$07,$07,$07,$07
LFECC: .byte $00,$F0,$F0,$70,$70,$70,$70
LFED3: .byte $00,$F0,$F0,$70,$70,$70,$70
LFEDA: .byte $00,$F0,$F0,$E0,$E0,$E0,$E0
LFEE1: .byte $00,$0F,$0F,$0E,$0E,$0E,$0E
LFEE8: .byte $20,$20,$20,$20,$2E,$2E,$20
LFEEF: .byte $00,$00,$00,$00,$07,$07,$00
LFEF6: .byte $00,$00,$00,$00,$70,$70,$00
LFEFD: .byte $00,$00,$00,$00,$70,$70,$00
LFF04: .byte $00,$00,$00,$00,$E0,$E0,$00
LFF0B: .byte $00,$00,$00,$00,$0E,$0E,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$3C,$7E,$7E,$7E,$7E,$3C
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00
LFF44: .byte $00,$C0,$80,$00,$20,$40,$60
LFF4B: .byte $0E,$04,$0E,$0E,$0A,$0E,$0E,$0E,$0E,$0E,$00
LFF56: .byte $07,$02,$07,$07,$05,$07,$07,$07,$07,$07,$00
LFF61: .byte $70,$20,$70,$70,$50,$70,$70,$70,$70,$70,$00
LFF6C: .byte $0A,$04,$02,$02,$0A,$08,$08,$02,$0A,$0A,$00
LFF77: .byte $05,$02,$04,$04,$05,$01,$01,$04,$05,$05,$00
LFF82: .byte $50,$20,$40,$40,$50,$10,$10,$40,$50,$50,$00
LFF8D: .byte $0A,$04,$0E,$06,$0E,$0E,$0E,$02,$0E,$0E,$00
LFF98: .byte $05,$02,$07,$06,$07,$07,$07,$04,$07,$07,$00
LFFA3: .byte $50,$20,$70,$60,$70,$70,$70,$40,$70,$70,$00
LFFAE: .byte $0A,$04,$08,$02,$02,$02,$0A,$02,$0A,$02,$00
LFFB9: .byte $05,$02,$01,$04,$04,$04,$05,$04,$05,$04,$00
LFFC4: .byte $50,$20,$10,$40,$40,$40,$50,$40,$50,$40,$00
LFFCF: .byte $0E,$04,$0E,$0E,$02,$0E,$0E,$02,$0E,$0E,$00
LFFDA: .byte $07,$02,$07,$07,$04,$07,$07,$04,$07,$07,$00
LFFE5: .byte $70,$20,$70,$70,$40,$70,$70,$40,$70,$70,$00,$06,$02,$19,$06,$00
       .byte $04,$06,$02,$4B,$00,$00,$00,$00,$F0,$00,$F0
