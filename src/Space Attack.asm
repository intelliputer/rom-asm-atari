; Disassembly of roms/Space Attack.bin
; Disassembled Tue Oct  6 15:22:43 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Space Attack.bin
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
ENABL   =  $1F
HMP0    =  $20
HMP1    =  $21
HMBL    =  $24
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
SWCHA   =  $0280
SWCHB   =  $0282
TIM64T  =  $0296
T1024T  =  $0297

       ORG $F000

START:
LF000: SEI            
       CLD            
       LDX    #$00    
       LDA    #$00    
LF006: STA    VSYNC,X 
       TXS            
       INX            
       BNE    LF006   
       INX            
       STX    VDELP1  
       STX    CTRLPF  
       STX    $8E     
       STX    $E4     
       LDA    #$FF    
       STA    $D5     
       LDA    $0255   
       STA    TIM64T  
       LDA    #$82    
       STA    $80     
       JSR    LF370   
LF026: JSR    LFB61   
       LDA    #$02    
       STA    VBLANK  
       LDA    #$1C    
       STA    TIM64T  
       LDA    $80     
       BMI    LF086   
       AND    #$08    
       BNE    LF078   
       JSR    LFAA9   
       BCS    LF080   
       LDX    #$00    
       STX    COLUBK  
       JSR    LF3DE   
       BCS    LF0B3   
       INC    $E2     
       LDA    $E2     
       LSR            
       BCS    LF06C   
       LSR            
       BCS    LF063   
       LSR            
       BCS    LF05D   
       BIT    SWCHB   
       BPL    LF05D   
       JSR    LF712   
LF05D: JSR    LF141   
       JMP    LF0B3   
LF063: JSR    LF1BB   
       JSR    LFB00   
       JMP    LF0B3   
LF06C: JSR    LF438   
       JSR    LFA32   
       JSR    LF49B   
       JMP    LF0B3   
LF078: JSR    LF86F   
       BCS    LF080   
       JMP    LF0B3   
LF080: JSR    LF23E   
       JMP    LF0B3   
LF086: LDX    #$D2    
       STX    COLUBK  
       LSR            
       BCS    LF0AC   
       LSR            
       BCS    LF0A6   
       INC    $E2     
       LDA    $E2     
       LSR            
       BCS    LF0A0   
       JSR    LFFCE   
       JSR    LF4D7   
       JMP    LF0B3   
LF0A0: JSR    LF712   
       JMP    LF0B3   
LF0A6: JSR    LF4C1   
       JMP    LF0B6   
LF0AC: LSR            
       BCC    LF0B3   
       LDA    #$30    
       STA    COLUBK  
LF0B3: JSR    LF5E5   
LF0B6: JSR    LFB61   
       LDA    #$2A    
       STA    TIM64T  
       LDA    #$02    
       STA    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    VSYNC   
       LDA    SWCHB   
       LSR            
       BCS    LF0D5   
       JMP    LF000   
LF0D5: BIT    $80     
       BMI    LF0DC   
       JSR    LFCF6   
LF0DC: JSR    LF3A8   
       JSR    LFB61   
       LDA    #$00    
       STA    VBLANK  
       LDA    #$EE    
       STA    TIM64T  
       STA    WSYNC   
       BIT    $80     
       BMI    LF0F7   
       JSR    LFD70   
       JMP    LF026   
LF0F7: JSR    LFB7E   
       JMP    LF026   
LF0FD: STX    $DE     
       LDA    $EC,X   
       LSR            
       LSR            
       STA    $DF     
       JSR    LFABB   
       JSR    LF12B   
       INX            
       STX    COLUBK  
       STX    $E0     
       STX    AUDC0   
       LDA    #$05    
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    $E1     
       LDA    $80     
       AND    #$7B    
       STA    $80     
       LDA    #$F8    
       STA    $F3     
       STA    $F5     
       JSR    LFB00   
       SEC            
       RTS            

LF12B: LDA    #$44    
       STA    $8D     
       LDA    #$60    
       STA    $AF     
       LDA    #$82    
       STA    $D3     
       LDA    #$C4    
       STA    $CB     
       LDA    #$04    
       STA    $BD     
       CLC            
       RTS            

LF141: JSR    LFA00   
       AND    #$07    
       BNE    LF1B7   
       LDX    $DF     
       LDA    $E1     
       LSR            
       LSR            
       LSR            
       CMP    $EC,X   
       BEQ    LF1B7   
       JSR    LFA21   
       BCS    LF1B7   
       CPX    #$02    
       BCC    LF1B8   
       JSR    LFA00   
       LSR            
       BCS    LF179   
       AND    #$0B    
       TAY            
       AND    #$08    
       BEQ    LF16B   
       LDA    #$8C    
LF16B: STA    $86,X   
       JSR    LFA00   
       AND    #$7F    
       ADC    #$1E    
       STA    $A8,X   
       JMP    LF191   
LF179: AND    #$0B    
       ADC    #$03    
       TAY            
       AND    #$08    
       BEQ    LF184   
       LDA    #$AB    
LF184: ADC    #$08    
       STA    $A8,X   
       JSR    LFA00   
       AND    #$7F    
       ADC    #$06    
       STA    $86,X   
LF191: DEY            
       DEY            
       TYA            
       AND    #$0F    
       TAY            
       LDA    LFF87,Y 
       STA    $97,X   
       LDA    LFF97,Y 
       STA    $9F,X   
       LDA    #$D3    
       SEC            
       SBC    $A8,X   
       STA    $CC,X   
       LDA    #$02    
       STA    $B6,X   
       LDA    #$76    
       STA    $C4,X   
       LDA    $E1     
       CLC            
       ADC    #$08    
       STA    $E1     
LF1B7: RTS            

LF1B8: INC    $E1     
       RTS            

LF1BB: BIT    SWCHB   
       BVS    LF1C6   
       LDA    $E2     
       AND    #$0C    
       BNE    LF1ED   
LF1C6: JSR    LFA00   
       AND    #$07    
       TAY            
       LDA.wy $00B6,Y 
       CMP    #$02    
       BNE    LF1ED   
       JSR    LFA00   
       TAX            
       AND    #$03    
       BNE    LF1EE   
       TXA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       LDA    LFF87,X 
       STA.wy $0097,Y 
       LDA    LFF97,X 
       STA.wy $009F,Y 
LF1ED: RTS            

LF1EE: JSR    LFA21   
       BCS    LF23A   
       CPX    #$00    
       BEQ    LF1B8   
       LDA.wy $0086,Y 
       STA    $86,X   
       LDA.wy $00A8,Y 
       STA    $A8,X   
       LDA    #$0E    
       STA    $C4,X   
       LDA    #$10    
       STA    $B6,X   
       LDA    #$C6    
       SEC            
       SBC    $A8,X   
       STA    $CC,X   
       LDA    #$28    
       STA    $81,X   
       LDY    #$07    
       LDA    $A8,X   
       LSR            
       STA    $E6     
       LDA.wy $00A8,Y 
       JSR    LF9E4   
       STA    $9F,X   
       BCS    LF229   
       EOR    #$FF    
       ADC    #$01    
LF229: CMP    #$08    
       BCC    LF23B   
       LDA    $86,X   
       LSR            
       STA    $E6     
       LDA.wy $0086,Y 
       JSR    LF9E4   
       STA    $97,X   
LF23A: RTS            

LF23B: JMP    LFD60   
LF23E: LDX    $DE     
       LDA    $EC,X   
       AND    #$03    
       BNE    LF24A   
       LDA    #$FC    
       STA    $EC,X   
LF24A: LDX    $DF     
       LDA    $EC,X   
       BNE    LF290   
       LDY    $DE     
       LDA.wy $00EC,Y 
       ORA    #$FC    
       STA.wy $00EC,Y 
       LDA    $80     
       CLC            
       ADC    #$10    
       TAY            
       AND    #$30    
       BEQ    LF27B   
       STY    $80     
       JSR    LFA00   
       STA    $E5     
       JSR    LFA00   
       STA    $E6     
       JSR    LFA00   
       STA    $E7     
       JSR    LF32E   
       JMP    LF290   
LF27B: JSR    LF555   
       LDX    #$02    
LF280: LDA    $EC,X   
       BNE    LF290   
       DEX            
       BPL    LF280   
       LDA    $80     
       ORA    #$01    
       STA    $80     
       JSR    LF5B0   
LF290: JSR    LFABB   
       LDX    #$05    
LF295: LDA    $B0,X   
       JSR    LF38B   
       STA    $8F,X   
       LDA    #$80    
       STA    $B6,X   
       CPX    #$03    
       BCS    LF2C5   
       LDA    $EC,X   
       BEQ    LF2DD   
       LDA    #$0E    
       CPX    $DF     
       BNE    LF2B0   
       LDA    #$68    
LF2B0: STA    $C4,X   
       LDA    $EC,X   
       SEC            
       SBC    #$01    
       LSR            
       LSR            
       TAY            
       LDA    LF388,Y 
       SEC            
       SBC    $BE,X   
       STA    $CC,X   
       JMP    LF2E0   
LF2C5: LDA    $EC,X   
       AND    #$03    
       BEQ    LF2DD   
       TAY            
       DEY            
       LDA    LF385,Y 
       SEC            
       SBC    $BE,X   
       STA    $CC,X   
       LDA    LFFF1,X 
       STA    $C4,X   
       JMP    LF2E0   
LF2DD: JSR    LFD60   
LF2E0: DEX            
       BPL    LF295   
       JSR    LF370   
       LDA    $EB     
       AND    #$1F    
       STA    $EB     
       LDA    $80     
       ORA    #$80    
       AND    #$FB    
       STA    $80     
       RTS            

LF2F5: LDX    #$05    
LF2F7: LDA    #$FF    
       STA    $EC,X   
       LDA    #$00    
       STA    $BE,X   
       DEX            
       CPX    #$03    
       BCS    LF2F7   
LF304: JSR    LFA00   
       STA    $E5     
       JSR    LFA00   
       STA    $E6     
       JSR    LFA00   
       STA    $E7     
       JSR    LF32E   
       DEX            
       BPL    LF304   
LF319: JSR    LFA00   
       AND    #$03    
       CMP    #$03    
       BEQ    LF319   
       STA    $DF     
       LDX    #$05    
       LDA    #$0D    
       STA    TIM64T  
       JMP    LF295   
LF32E: LDA    $E5     
       AND    LF364,X 
       ADC    LF367,X 
       STA    $BE,X   
       LDA    $E6     
       AND    LF36A,X 
       ADC    LF36D,X 
       STA    $B0,X   
       CPX    #$02    
       BNE    LF35A   
       LDA    $E7     
       AND    #$80    
       STA    $E5     
       ADC    $B0,X   
       STA    $B0,X   
       LSR    $E5     
       LDA    $80     
       AND    #$BF    
       ORA    $E5     
       STA    $80     
LF35A: LDA    $E7     
       AND    #$03    
       CLC            
       ADC    #$09    
       STA    $EC,X   
       RTS            

LF364: .byte $0F,$0F,$3F
LF367: .byte $AB,$01,$34
LF36A: .byte $7F,$7F,$0F
LF36D: .byte $0F,$0F,$07
LF370: LDA    #$00    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$E8    
       STA    COLUPF  
       LDA    #$FA    
       STA    $F3     
       STA    $F5     
       LDA    #$7F    
       STA    $E0     
       RTS            

LF385: .byte $EC,$FD,$00
LF388: .byte $D7,$D9,$DB
LF38B: CLC            
       ADC    #$10    
       STA    $E5     
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $E6     
       LDA    $E5     
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    $E6     
       CLC            
       ADC    $E5     
       AND    #$F0    
       ADC    $E6     
       EOR    #$70    
       RTS            

LF3A8: LDX    #$FF    
       STX    $D4     
       LDX    #$FE    
       LDY    #$08    
LF3B0: DEY            
       BMI    LF3D5   
       LDA.wy $00B6,Y 
       AND    #$BF    
       BEQ    LF3B0   
LF3BA: LDA    $D6,X   
       STX    $E5     
       TAX            
       BIT    $80     
       BMI    LF3D6   
       LDA.wy $00A8,Y 
       CMP    $A8,X   
LF3C8: BCC    LF3BA   
       STX    $D6,Y   
       LDX    $E5     
       STY    $D6,X   
       LDX    #$FE    
       JMP    LF3B0   
LF3D5: RTS            

LF3D6: LDA.wy $00BE,Y 
       CMP    $BE,X   
       JMP    LF3C8   
LF3DE: LDX    #$FE    
       JMP    LF411   
LF3E3: LDA.wy $00D6,Y 
       TAY            
       BMI    LF411   
       LDA    $B6,X   
       ORA.wy $00B6,Y 
       CMP    #$24    
       BEQ    LF41D   
       CMP    #$03    
       BNE    LF3E3   
       LDA.wy $00A8,Y 
       BEQ    LF411   
       ADC    #$05    
       CMP    $A8,X   
       BCC    LF411   
       LDA.wy $0086,Y 
       SBC    $86,X   
       CMP    #$0A    
       BCC    LF40E   
       CMP    #$F6    
       BCC    LF3E3   
LF40E: JMP    LFFA7   
LF411: LDA    $D6,X   
       TAX            
       TAY            
       BMI    LF41B   
       LDA    $A8,X   
       BNE    LF3E3   
LF41B: CLC            
       RTS            

LF41D: LDA.wy $00A8,Y 
       BEQ    LF411   
       ADC    #$05    
       CMP    $A8,X   
       BCC    LF411   
       LDA.wy $0086,Y 
       SBC    $86,X   
       CMP    #$0B    
       BCC    LF435   
       CMP    #$F5    
       BCC    LF3E3   
LF435: JMP    LF851   
LF438: LDX    #$05    
LF43A: LDA    $B6,X   
       CMP    #$10    
       BEQ    LF466   
       CMP    #$20    
       BEQ    LF487   
       CMP    #$01    
       BNE    LF45C   
       DEC    $81,X   
       BEQ    LF460   
       LDA    $81,X   
       ORA    #$20    
       STA    $C4,X   
       CMP    #$2A    
       BNE    LF45C   
       LDA    $CC,X   
       ADC    #$0D    
       STA    $CC,X   
LF45C: DEX            
       BPL    LF43A   
       RTS            

LF460: JSR    LFD60   
       JMP    LF45C   
LF466: DEC    $81,X   
       BIT    SWCHB   
       BVC    LF46F   
       DEC    $81,X   
LF46F: LDA    $81,X   
       CMP    #$14    
       BNE    LF45C   
       LDA    #$20    
       STA    $B6,X   
       LDA    $CC,X   
       SEC            
       SBC    #$10    
       STA    $CC,X   
       LDA    #$34    
       STA    $C4,X   
       JMP    LF45C   
LF487: DEC    $81,X   
       BEQ    LF460   
       JMP    LF45C   
LF48E: LDA    SWCHA   
       LSR            
       LSR            
       LSR            
       LSR            
       AND    SWCHA   
       EOR    #$0F    
       RTS            

LF49B: JSR    LF48E   
       ASL            
       TAY            
       LDA    LF4AB,Y 
       STA    $9E     
       LDA    LF4AC,Y 
       STA    $A6     
       RTS            

LF4AB: .byte $00
LF4AC: .byte $00,$00,$18,$00,$E8,$00,$00,$EC,$00,$F2,$11,$F2,$EF,$00,$00,$14
       .byte $00,$0E,$11,$0E,$EF
LF4C1: JSR    LFA00   
       JSR    LF48E   
       BEQ    LF4D6   
       LDA    $80     
       AND    #$FD    
       STA    $80     
       LDA    #$7E    
       STA    $E0     
       JMP    LF2F5   
LF4D6: RTS            

LF4D7: JSR    LF48E   
       BNE    LF4DF   
       STA    $E0     
LF4DE: RTS            

LF4DF: DEC    $E0     
       BPL    LF4DE   
       CMP    #$02    
       BEQ    LF551   
       LDX    #$03    
       CMP    #$01    
       BEQ    LF4F5   
       LSR            
LF4EE: LSR            
       BCS    LF4F5   
       INX            
       JMP    LF4EE   
LF4F5: LDA    #$7F    
       STA    $E0     
       LDA    REFP1   
       AND    PF0     
       BMI    LF548   
       LDA    $EC,X   
       AND    #$03    
       BEQ    LF4DE   
       LDY    $DF     
       BMI    LF4DE   
       STA    $E5     
       LDA    $EC,X   
       BMI    LF519   
       LSR            
       LSR            
       TAY            
       LDA    #$80    
       STA.wy $00B6,Y 
       STA    $B6,X   
LF519: LDA    $DF     
       ASL            
       ASL            
       ORA    $E5     
       STA    $EC,X   
       LDA    $BE,X   
       BNE    LF545   
       LDA    LF7CE,Y 
       BIT    $80     
       BVC    LF532   
       CMP    #$40    
       BNE    LF532   
       LDA    #$5A    
LF532: STA    $B0,X   
       JSR    LF38B   
       STA    $8F,X   
       LDA    LF7D1,Y 
       STA    $BE,X   
       LDA    $CC,X   
       SEC            
       SBC    $BE,X   
       STA    $CC,X   
LF545: JMP    LF555   
LF548: LDA    $B6,X   
       AND    #$40    
       BEQ    LF4DE   
       JMP    LF0FD   
LF551: LDA    #$14    
       STA    $E0     
LF555: LDX    $DF     
       BMI    LF4DE   
       INX            
       CPX    #$03    
       BNE    LF560   
       LDX    #$00    
LF560: STX    $E5     
LF562: LDA    $EC,X   
       BEQ    LF584   
       LDY    #$02    
       STX    $E6     
LF56A: LDA.wy $00EF,Y 
       LSR            
       LSR            
       CMP    $E6     
       BEQ    LF584   
       DEY            
       BPL    LF56A   
       LDY    $DF     
       STX    $DF     
       LDA    #$0E    
       STA.wy $00C4,Y 
       LDA    #$68    
       STA    $C4,X   
       RTS            

LF584: INX            
       CPX    #$03    
       BNE    LF58B   
       LDX    #$00    
LF58B: CPX    $E5     
       BEQ    LF594   
       STX    $E6     
       JMP    LF562   
LF594: LDX    $DF     
       LDA    #$0E    
       STA    $C4,X   
       LDA    #$FF    
       STA    $DF     
       RTS            

LF59F: LDX    #$00    
       JMP    LF5A6   
LF5A4: LDX    #$01    
LF5A6: LDY    #$01    
       JMP    LF5BE   
LF5AB: LDX    #$02    
       JMP    LF5B7   
LF5B0: LDX    #$03    
       JMP    LF5B7   
LF5B5: LDX    #$04    
LF5B7: LDA    #$00    
       STA    AUDC1   
       STA    $FA     
       TAY            
LF5BE: LDA    LF5D6,X 
       STA.wy $0015,Y 
       LDA    LF5DB,X 
       STA.wy $0017,Y 
       LDA    #$0F    
       STA.wy $0019,Y 
       LDA    LF5E0,X 
       STA.wy $00F9,Y 
       RTS            

LF5D6: .byte $0D,$08,$0F,$04,$08
LF5DB: .byte $10,$18,$10,$1F,$1F
LF5E0: .byte $28,$C0,$40,$7F,$7F
LF5E5: BIT    $80     
       BMI    LF624   
       LDA    $80     
       AND    #$08    
       BNE    LF64F   
       LDA    $FA     
       BEQ    LF61B   
       BMI    LF60C   
       DEC    $FA     
       LDA    $FA     
       CMP    #$10    
       BCS    LF602   
       STA    AUDV1   
       JMP    LF603   
LF602: ASL            
LF603: AND    #$0F    
       EOR    #$1F    
       STA    AUDF1   
       JMP    LF61B   
LF60C: LDA    $FA     
       EOR    #$FF    
       LSR            
       LSR            
       STA    AUDV1   
       LSR            
       ORA    #$10    
       STA    AUDF1   
       INC    $FA     
LF61B: LDA    $80     
       AND    #$04    
       BEQ    LF67F   
       JMP    LF693   
LF624: LDA    #$00    
       STA    AUDC1   
       LDA    $80     
       LSR            
       BCS    LF66C   
       AND    #$02    
       BNE    LF693   
       INC    $F9     
       LDA    $F9     
       AND    #$7F    
       STA    $F9     
       CMP    #$09    
       BCS    LF64A   
       LDA    #$04    
       STA    AUDC0   
       LDA    #$07    
       STA    AUDF0   
       LDA    #$07    
       STA    AUDV0   
       RTS            

LF64A: LDA    #$00    
       STA    AUDC0   
       RTS            

LF64F: LDA    $F9     
       BEQ    LF667   
       DEC    $F9     
       LDA    $F9     
       LSR            
       LSR            
       EOR    #$0F    
       ORA    #$10    
       STA    AUDF0   
       LSR            
       EOR    #$0F    
       ADC    #$07    
       STA    AUDV0   
       RTS            

LF667: LDA    #$00    
       STA    AUDV0   
       RTS            

LF66C: LSR            
       BCS    LF680   
       LDA    $F9     
       BEQ    LF68E   
       DEC    $F9     
       LDA    $F9     
       CMP    #$40    
       BCC    LF67F   
       LSR            
       LSR            
       STA    AUDF0   
LF67F: RTS            

LF680: LDA    $F9     
       BEQ    LF68E   
       DEC    $F9     
       LDA    $F9     
       LSR            
       LSR            
       LSR            
       STA    AUDV0   
       RTS            

LF68E: LDA    #$00    
       STA    AUDC0   
       RTS            

LF693: LDA    #$0D    
       STA    AUDC0   
       DEC    $F9     
       BPL    LF6A6   
       LDA    $EB     
       AND    #$1F    
       EOR    #$FF    
       CLC            
       ADC    #$39    
       STA    $F9     
LF6A6: LDA    $F9     
       CMP    #$20    
       BCS    LF6B6   
       LSR            
       ORA    #$10    
       STA    AUDF0   
       LDA    #$06    
       STA    AUDV0   
       RTS            

LF6B6: LDA    #$00    
       STA    AUDV0   
       RTS            

LF6BB: BIT    $80     
       BMI    LF6C6   
       LDA    LFFF1,X 
       AND    $EB     
       BNE    LF728   
LF6C6: LDA    $EC,X   
       BEQ    LF728   
       LDA    #$04    
       STA    $E8     
       LDA    LF7CE,X 
       BIT    $80     
       BVC    LF6DB   
       CMP    #$40    
       BNE    LF6DB   
       LDA    #$5A    
LF6DB: SEC            
       SBC    $B0,X   
       STA    $E5     
       STA    $E7     
       BCS    LF6EA   
       EOR    #$FF    
       ADC    #$01    
       STA    $E7     
LF6EA: LDA    LF7D1,X 
       SEC            
       SBC    $BE,X   
       STA    $E6     
       BCS    LF6F8   
       EOR    #$FF    
       ADC    #$01    
LF6F8: CMP    $E7     
       BCS    LF6FE   
       LDA    $E7     
LF6FE: CMP    #$02    
       BCS    LF705   
       JMP    LF7D4   
LF705: STA    $E7     
       CMP    #$02    
       BCS    LF775   
       ASL    $E5     
       ASL    $E6     
       JMP    LF794   
LF712: AND    #$07    
       TAX            
       CMP    #$03    
       BCC    LF6BB   
       CMP    #$06    
       BCC    LF72A   
       BNE    LF728   
       LDA    $F8     
       CLC            
       ADC    #$05    
       AND    #$07    
       STA    $F8     
LF728: CLC            
       RTS            

LF72A: LDA    $EC,X   
       AND    #$03    
       BEQ    LF728   
       LDA    #$0C    
       STA    $E8     
       LDA    $EC,X   
       BMI    LF728   
       LSR            
       LSR            
       TAY            
       LDA.wy $00B0,Y 
       SEC            
       SBC    $B0,X   
       STA    $E5     
       STA    $E7     
       BCS    LF74D   
       EOR    #$FF    
       ADC    #$01    
       STA    $E7     
LF74D: LDA.wy $00BE,Y 
       SEC            
       SBC    $BE,X   
       STA    $E6     
       BCS    LF75B   
       EOR    #$FF    
       ADC    #$01    
LF75B: CMP    $E7     
       BCS    LF761   
       LDA    $E7     
LF761: CMP    #$04    
       BCS    LF768   
       JMP    LF803   
LF768: STA    $E7     
       CMP    #$05    
       BCS    LF775   
       ASL    $E5     
       ASL    $E6     
       JMP    LF794   
LF775: LDA    $E7     
       CMP    $E8     
       BCC    LF794   
       LSR    $E7     
       LDA    $E5     
       LSR            
       EOR    #$40    
       SEC            
       SBC    #$40    
       STA    $E5     
       LDA    $E6     
       LSR            
       EOR    #$40    
       SEC            
       SBC    #$40    
       STA    $E6     
       JMP    LF775   
LF794: BIT    $80     
       BPL    LF7BA   
       LDA    $E6     
       JSR    LFD53   
       STA    $E6     
       ADC    $BE,X   
       STA    $BE,X   
       LDA    $CC,X   
       SEC            
       SBC    $E6     
       STA    $CC,X   
       LDA    $E5     
       JSR    LFD53   
       ADC    $B0,X   
       STA    $B0,X   
       JSR    LF38B   
       STA    $8F,X   
       CLC            
       RTS            

LF7BA: LDA    $E5     
       JSR    LFD53   
       ADC    $B0,X   
       STA    $B0,X   
       LDA    $E6     
       JSR    LFD53   
       ADC    $BE,X   
       STA    $BE,X   
       CLC            
       RTS            

LF7CE: .byte $4D,$4D,$40
LF7D1: .byte $73,$55,$64
LF7D4: LDA    $80     
       ORA    #$04    
       STA    $80     
       LDA    $EC,X   
       ASL            
       ASL            
       ASL            
       CLC            
       ADC    $EA     
       STA    $EA     
       LDA    $EB     
       ADC    #$00    
       STA    $EB     
       AND    #$1F    
       CMP    #$19    
       BCC    LF802   
       JSR    LF5B5   
       LDA    $80     
       EOR    #$07    
       STA    $80     
       BMI    LF7FE   
       JMP    LF23E   
LF7FE: JSR    LFB6E   
       SEC            
LF802: RTS            

LF803: LDA    LFFF1,Y 
       ORA    $EB     
       STA    $EB     
       BIT    $80     
       BMI    LF841   
       CPX    $DE     
       BEQ    LF840   
       JSR    LFA00   
       AND    #$0F    
       BNE    LF821   
       DEC    $EC,X   
       LDA    $EC,X   
       AND    #$03    
       BEQ    LF833   
LF821: JSR    LFA00   
       AND    #$06    
       BNE    LF840   
       LDA.wy $00EC,Y 
       SEC            
       SBC    #$01    
       STA.wy $00EC,Y 
       BNE    LF840   
LF833: LDA    $EC,X   
       ORA    #$FC    
       STA    $EC,X   
       LDA    LFFF1,Y 
       EOR    $EB     
       STA    $EB     
LF840: RTS            

LF841: LDA    $B6,X   
       ORA    #$40    
       STA    $B6,X   
       LDA.wy $00B6,Y 
       ORA    #$40    
       STA.wy $00B6,Y 
       SEC            
       RTS            

LF851: LDX    $DE     
       DEC    $EC,X   
       LDA    $80     
       ORA    #$08    
       STA    $80     
       JSR    LFABB   
       INX            
       STX    $E0     
       LDA    #$05    
       STA    $E1     
       JSR    LF5AB   
       LDA    #$46    
       STA    $81     
       JMP    LFB00   
LF86F: DEC    $81     
       BEQ    LF881   
       LDA    $81     
       LSR            
       LSR            
       LDA    #$00    
       BCC    LF87D   
       LDA    #$32    
LF87D: STA    COLUBK  
       CLC            
       RTS            

LF881: LDA    $80     
       EOR    #$08    
       STA    $80     
       LDX    $DE     
       LDA    $EC,X   
       AND    #$03    
       BNE    LF891   
       SEC            
       RTS            

LF891: JMP    LF12B   
LF894: .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$C3,$C3,$C3,$C3
       .byte $C3,$C3,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$24
       .byte $24,$24,$00,$00,$00,$00,$00,$00,$00,$00,$2A,$55,$3E,$08,$1C,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$24,$42,$81,$81,$81,$42,$24,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$10,$44,$20,$9A,$3C,$19,$4A,$10,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$10,$08
LF8FC: .byte $30,$38,$08
LF8FF: .byte $10
LF900: .byte $00
LF901: .byte $01
LF902: .byte $00,$01
LF904: .byte $00,$03
LF906: .byte $00,$77,$00,$05,$00,$EF,$00,$02,$00,$B7,$00,$03,$00,$7F,$55,$01
       .byte $AA,$07,$00,$02,$00,$6F,$80,$01,$00,$07,$00,$01,$00,$0F,$80,$05
       .byte $00,$47,$00,$03,$00,$7F,$80,$01,$00,$A7,$00,$05,$00,$EF,$80,$03
       .byte $00,$C7,$00,$01,$00,$AF,$81,$01,$AA,$57,$00,$02,$00,$BF,$82,$01
       .byte $00,$07,$00,$02,$00,$6F,$82,$04,$00,$87,$00,$04,$00,$DF,$82,$03
       .byte $80,$77,$00,$05,$00,$4F,$82,$01,$20,$A7,$00,$04,$00,$DF,$82,$01
       .byte $20,$A7,$00,$03,$00,$CF,$82,$05,$80,$47,$00,$04,$00,$3F,$82,$03
       .byte $00,$27,$00,$02,$00,$6F,$82,$04,$00,$D7,$00,$03,$00,$7F,$81,$05
       .byte $AA,$47,$00,$05,$00,$9F,$80,$01,$00,$07,$00,$01,$00,$0F,$80,$01
       .byte $00,$A7,$00,$05,$00,$EF,$80,$02,$00,$17,$00,$03,$00,$7F,$80,$04
       .byte $00,$D7,$00,$04,$00,$DF,$55,$01,$AA,$A7,$00,$05,$00,$4F,$00,$04
       .byte $00,$37,$00,$04,$00,$DF,$00,$04,$00,$37,$00,$05,$00,$EF,$00,$01
       .byte $00,$57,$00,$04,$00,$8F,$00,$05,$00,$47,$00,$05,$00,$EF,$00,$01
       .byte $00,$A7,$00,$01,$00,$5F,$00,$05,$00,$47,$00,$03,$00,$CF
LF9E4: LSR            
       SEC            
       SBC    $E6     
       LSR            
       BIT    SWCHB   
       BVC    LF9F4   
       EOR    #$40    
       SEC            
       SBC    #$40    
       RTS            

LF9F4: LSR            
       EOR    #$20    
       SEC            
       SBC    #$20    
       RTS            

LF9FB: .byte $FF,$FF,$FF,$FF,$FF
LFA00: LDA    $E4     
       ASL            
       ASL            
       ASL            
       EOR    $E4     
       ASL            
       ROL    $E4     
       LDA    $E3     
       ASL            
       ASL            
       ASL            
       ASL            
       CLC            
       ADC    $E3     
       ASL            
       ASL            
       ASL            
       CLC            
       ADC    $E3     
       CLC            
       ADC    #$95    
       STA    $E3     
       EOR    $E4     
       RTS            

LFA21: LDX    #$04    
LFA23: LDA    $B6,X   
       BEQ    LFA2E   
       DEX            
       BPL    LFA23   
       LDX    #$00    
       SEC            
       RTS            

LFA2E: DEC    $E1     
       CLC            
       RTS            

LFA32: LDA    $E0     
       BNE    LFA75   
       LDA    REFP1   
       AND    PF0     
       BMI    LFAA8   
       LDA    #$1C    
       STA    $E0     
       JSR    LF59F   
       LDX    #$06    
       LDA    #$28    
       JSR    LFA4D   
       DEX            
       LDA    #$78    
LFA4D: STA    $86,X   
       LDA    $8D     
       SEC            
       SBC    $86,X   
       LSR            
       EOR    #$40    
       SEC            
       SBC    #$40    
       STA    $97,X   
       LDA    #$08    
       STA    $A8,X   
       LDA    $AF     
       SEC            
       SBC    #$08    
       LSR            
       STA    $9F,X   
       LDA    #$30    
       STA    $C4,X   
       LDA    #$F8    
       STA    $CC,X   
       LDA    #$08    
       STA    $B6,X   
       RTS            

LFA75: SEC            
       SBC    #$01    
       STA    $E0     
       CMP    #$14    
       BNE    LFAA8   
       JSR    LFA21   
       LDA    #$F2    
       SEC            
       SBC    $AE     
       STA    $CC,X   
       LDA    $AE     
       STA    $A8,X   
       LDA    $8C     
       STA    $86,X   
       LDA    #$00    
       STA    $97,X   
       STA    $9F,X   
       LDA    #$01    
       STA    $B6,X   
       LDA    #$70    
       STA    $C4,X   
       LDA    #$0F    
       STA    $81,X   
       LDA    #$00    
       STA    $BC     
       STA    $BB     
LFAA8: RTS            

LFAA9: LDA    $E1     
       AND    #$07    
       CMP    #$05    
       BNE    LFAB9   
       LDX    $DF     
       LDA    $EC,X   
       BNE    LFAB9   
       SEC            
       RTS            

LFAB9: CLC            
       RTS            

LFABB: LDX    #$07    
       LDA    #$00    
LFABF: STA    $B6,X   
       DEX            
       BPL    LFABF   
       RTS            

LFAC5: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $22,$88,$22,$88,$22,$88,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$18,$18,$18,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$C3,$C3,$C3,$18,$18,$18
LFB00: LDX    $DF     
       LDA    $EC,X   
       STA    $E5     
       ASL            
       ASL            
       ADC    $E5     
       ADC    #$20    
       STA    $F6     
       LDX    $DE     
       LDA    $EC,X   
       AND    #$03    
       STA    $E5     
       ASL            
       ASL            
       ADC    $E5     
       ADC    #$20    
       STA    $F7     
       SEC            
       RTS            

LFB20: .byte $07,$05,$05,$05,$07,$01,$01,$01,$01,$01,$07,$04,$07,$01,$07,$07
       .byte $01,$03,$01,$07,$01,$01,$07,$05,$05,$07,$01,$07,$04,$07,$07,$05
       .byte $07,$04,$07,$01,$01,$01,$01,$07,$07,$05,$07,$05,$07,$01,$01,$07
       .byte $05,$07,$17,$15,$15,$15,$17,$11,$11,$11,$11,$11,$17,$14,$17,$11
       .byte $17
LFB61: LDA    T1024T  
       BPL    LFB66   
LFB66: STA    WSYNC   
       LDA    T1024T  
       BPL    LFB66   
       RTS            

LFB6E: LDX    #$05    
       LDY    #$80    
LFB72: LDA    $B6,X   
       BEQ    LFB78   
       STY    $B6,X   
LFB78: DEX            
       BPL    LFB72   
       RTS            

LFB7C: .byte $FF,$FF
LFB7E: LDX    #$FE    
       LDY    #$BF    
       STY    $E6     
       STY    $E7     
       LDA    #$0E    
       STA    $F2     
       STA    $F4     
       LDA    #$00    
       STA    $E9     
       STA    $E8     
       JMP    LFBAA   
LFB95: STA    WSYNC   
       LDA    #$00    
       CPY    $E6     
       BCS    LFB9F   
       LDA    ($F2),Y 
LFB9F: STA    GRP0    
       DEY            
       CPY    $E7     
       BCS    LFBAA   
       LDA    ($F4),Y 
       STA    GRP1    
LFBAA: STA    HMCLR   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$00    
       CPY    $E6     
       BCS    LFBB8   
       LDA    ($F2),Y 
LFBB8: STA    GRP0    
LFBBA: DEY            
       CPY    $E7     
       BCS    LFBC6   
       LDA    ($F4),Y 
       STA    GRP1    
       JMP    LFBD6   
LFBC6: BEQ    LFBD6   
LFBC8: CPY    $E6     
       BCS    LFBD0   
       LDA    ($F2),Y 
       STA    $E9     
LFBD0: DEY            
       BEQ    LFC1B   
       JMP    LFBE5   
LFBD6: CPY    $E6     
       BCS    LFBDE   
       LDA    ($F2),Y 
       STA    $E9     
LFBDE: DEY            
       BEQ    LFC1B   
       LDA    ($F4),Y 
       STA    $E8     
LFBE5: STA    WSYNC   
       LDA    $E9     
       STA    GRP0    
       LDA    LF8FF,Y 
       STA    PF1     
       LDA    LF901,Y 
       STA    PF2     
       LDA    $E8     
       STA    GRP1    
       LDA    #$00    
       STA    $E9     
       STA    $E8     
       STA    WSYNC   
       CPY    $E6     
       BCS    LFC09   
       LDA    ($F2),Y 
       BEQ    LFC22   
LFC09: STA    GRP0    
LFC0B: DEY            
       BEQ    LFC1B   
       CPY    $E7     
       BCS    LFC18   
       LDA    ($F4),Y 
       STA    GRP1    
       BEQ    LFC7E   
LFC18: JMP    LFB95   
LFC1B: LDA    #$00    
       STA    GRP1    
       STA    GRP0    
       RTS            

LFC22: STA    GRP0    
       LDA    $D6,X   
       TAX            
       LDA    $BE,X   
       STA    $E6     
       BEQ    LFC0B   
       LDA    $CC,X   
       STA    $F2     
       DEY            
       BEQ    LFC1B   
       CPY    $E7     
       BCC    LFC41   
       BEQ    LFC45   
       LDA    #$00    
       STA    $E8     
       DEY            
       BNE    LFC4A   
LFC41: LDA    ($F4),Y 
       STA    GRP1    
LFC45: DEY            
       LDA    ($F4),Y 
       STA    $E8     
LFC4A: STA    HMCLR   
       STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       LDA    $8F,X   
       AND    #$0F    
       CMP    #$06    
       BCC    LFCCB   
       LDA    $E8     
       STA    GRP1    
       LDA    $C4,X   
       STA    COLUP0  
       LDA    $8F,X   
       STA    HMP0    
       AND    #$0F    
       SBC    #$05    
       SEC            
LFC6B: SBC    #$01    
       BNE    LFC6B   
       STA    RESP0   
LFC71: STA    WSYNC   
       STA    HMOVE   
       LDA    #$00    
       STA    GRP0    
       STA    $E8     
       JMP    LFBBA   
LFC7E: LDA    $D6,X   
       TAX            
       LDA    $BE,X   
       STA    $E7     
       BEQ    LFC18   
       LDA    #$00    
       CPY    $E6     
       BCS    LFC8F   
       LDA    ($F2),Y 
LFC8F: DEY            
       STA    HMCLR   
       STA    WSYNC   
       STA    GRP0    
       LDA    $8F,X   
       AND    #$0F    
       CMP    #$06    
       BCC    LFCE0   
       LDA    $CC,X   
       STA    $F4     
       LDA    GRP0    
       LDA    $C4,X   
       STA    COLUP1  
       LDA    $8F,X   
       STA    HMP1    
       AND    #$0F    
       SBC    #$05    
LFCB0: SBC    #$01    
       BNE    LFCB0   
       STA    RESP1   
LFCB6: STA    WSYNC   
       STA    HMOVE   
       CPY    $E6     
       BCS    LFCC2   
       LDA    ($F2),Y 
       STA    GRP0    
LFCC2: DEY            
       BNE    LFCC8   
       JMP    LFC1B   
LFCC8: JMP    LFBC8   
LFCCB: SBC    #$01    
       BPL    LFCCB   
       STA    RESP0   
       LDA    $E8     
       STA    GRP1    
       LDA    $C4,X   
       STA    COLUP0  
       LDA    $8F,X   
       STA    HMP0    
       JMP    LFC71   
LFCE0: SEC            
LFCE1: SBC    #$01    
       BNE    LFCE1   
       STA    RESP1   
       LDA    $CC,X   
       STA    $F4     
       LDA    $C4,X   
       STA    COLUP1  
       LDA    $8F,X   
       STA    HMP1    
       JMP    LFCB6   
LFCF6: LDX    #$07    
LFCF8: LDA    $B6,X   
       BEQ    LFD29   
       LDA    $97,X   
       JSR    LFD53   
       ADC    $86,X   
       CMP    #$8D    
       BCS    LFD36   
       STA    $86,X   
       JSR    LF38B   
       STA    $8F,X   
LFD0E: LDA    $9F,X   
       JSR    LFD53   
       STA    $E5     
       CLC            
       ADC    $A8,X   
       CMP    #$B4    
       BCS    LFD3C   
       CMP    #$08    
       BCC    LFD3C   
       STA    $A8,X   
       SEC            
       LDA    $CC,X   
       SBC    $E5     
       STA    $CC,X   
LFD29: DEX            
       BPL    LFCF8   
       LDA    $F8     
       CLC            
       ADC    #$05    
       AND    #$07    
       STA    $F8     
       RTS            

LFD36: CPX    #$05    
       BCS    LFD0E   
       BCC    LFD40   
LFD3C: CPX    #$05    
       BCS    LFD29   
LFD40: LDA    $B6,X   
       CMP    #$02    
       BNE    LFD4D   
       LDA    $E1     
       SEC            
       SBC    #$08    
       STA    $E1     
LFD4D: JSR    LFD60   
       JMP    LFD29   
LFD53: CLC            
       ADC    $F8     
       LSR            
       LSR            
       LSR            
       EOR    #$10    
       SEC            
       SBC    #$10    
       CLC            
       RTS            

LFD60: LDA    #$00    
       STA    $B6,X   
       INC    $E1     
       RTS            

LFD67: .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
LFD70: LDX    $D4     
       LDY    #$B1    
       STY    $E5     
       STY    $E6     
       LDA    #$49    
       STA    $F2     
       STA    $F4     
       LDA    #$00    
       STA    $E8     
       STA    $E7     
       JMP    LFDFF   
LFD87: STA    WSYNC   
       LDA    $E8     
       STA    GRP0    
       LDA    LF904,Y 
       EOR    $E3     
       AND    #$F2    
       STA    COLUPF  
       LDA    #$10    
       STA    CTRLPF  
       LDA    LF8FC,Y 
       STA    $FB     
       LDA    $E7     
       STA    GRP1    
       LDA    #$00    
       STA    HMCLR   
       JMP    LFDFF   
LFDAA: STA    GRP0    
       BEQ    LFE0D   
       DEY            
       BNE    LFE14   
       BEQ    LFE26   
LFDB3: BEQ    LFE1E   
       DEY            
       BEQ    LFE26   
LFDB8: TYA            
       AND    #$02    
       BNE    LFD87   
       STA    WSYNC   
       STA    COLUPF  
       LDA    $E8     
       STA    GRP0    
       CPY    $FB     
       BCS    LFDE6   
       LDA    LF900,Y 
LFDCC: SBC    #$01    
       BPL    LFDCC   
       STA    RESBL   
       LDA    $E7     
       STA    GRP1    
       LDA    #$02    
       STA    ENABL   
       STA    HMCLR   
       LDA    LF902,Y 
       STA    HMBL    
       LDA    #$00    
       JMP    LFDFF   
LFDE6: LDA    $E7     
       STA    GRP1    
       LDA    #$02    
       STA    ENABL   
       STA    HMCLR   
       LDA    LF906,Y 
       STA    HMBL    
       LDA    LF900,Y 
       NOP            
LFDF9: SBC    #$01    
       BNE    LFDF9   
       STA    RESBL   
LFDFF: STA    WSYNC   
       STA    HMOVE   
       CPY    $E5     
       BCS    LFDAA   
       LDA    ($F2),Y 
       STA    GRP0    
       BEQ    LFE2F   
LFE0D: DEY            
       BEQ    LFE26   
       LDA    ($F2),Y 
       STA    $E8     
LFE14: CPY    $E6     
       BCS    LFDB3   
       LDA    ($F4),Y 
       STA    GRP1    
       BEQ    LFE9D   
LFE1E: DEY            
       LDA    ($F4),Y 
       STA    $E7     
       JMP    LFDB8   
LFE26: LDA    #$00    
       STA    GRP1    
       STA    GRP0    
       JMP    LFF09   
LFE2F: STA    $E8     
       DEY            
       BEQ    LFE26   
       STA    ENABL   
       CPY    $E6     
       BCC    LFE3F   
       BEQ    LFE43   
       DEY            
       BNE    LFE48   
LFE3F: LDA    ($F4),Y 
       STA    GRP1    
LFE43: DEY            
       LDA    ($F4),Y 
       STA    $E7     
LFE48: LDA    $A8,X   
       STA    $E5     
       LDA    $CC,X   
       STA    $F2     
       STA    HMCLR   
       STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       LDA    $8F,X   
       AND    #$0F    
       CMP    #$06    
       BCC    LFE86   
       LDA    $E7     
       STA    GRP1    
       LDA    $C4,X   
       STA    COLUP0  
       LDA    $8F,X   
       STA    HMP0    
       AND    #$0F    
       SBC    #$05    
       SEC            
LFE71: SBC    #$01    
       BNE    LFE71   
       STA    RESP0   
LFE77: STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       LDA    $D6,X   
       TAX            
       DEY            
       BEQ    LFE26   
       JMP    LFE14   
LFE86: SBC    #$01    
       BPL    LFE86   
       STA    RESP0   
       LDA    $E7     
       STA    GRP1    
       LDA    $C4,X   
       STA    COLUP0  
       LDA    $8F,X   
       STA    HMP0    
       LDA    #$00    
       JMP    LFE77   
LFE9D: LDA    $A8,X   
       STA    $E6     
       LDA    $CC,X   
       STA    $F4     
       LDA    #$00    
       STA    ENABL   
       LDA    $E8     
       STA    HMCLR   
       STA    WSYNC   
       DEY            
       STA    GRP0    
       LDA    $8F,X   
       AND    #$0F    
       CMP    #$05    
       BCC    LFEF6   
       LDA    GRP0    
       LDA    $C4,X   
       STA    COLUP1  
       LDA    $8F,X   
       STA    HMP1    
       AND    #$0F    
       SBC    #$04    
LFEC8: SBC    #$01    
       BNE    LFEC8   
       STA    RESP1   
LFECE: STA    WSYNC   
       STA    HMOVE   
       STA    $E7     
       CPY    $E5     
       BCS    LFEEE   
       LDA    ($F2),Y 
       STA    GRP0    
LFEDC: DEY            
       BNE    LFEE2   
       JMP    LFE26   
LFEE2: LDA    ($F2),Y 
       STA    $E8     
LFEE6: LDA    $D6,X   
       TAX            
       CPY    $E6     
       JMP    LFDB3   
LFEEE: BEQ    LFEDC   
       DEY            
       BNE    LFEE6   
       JMP    LFE26   
LFEF6: SBC    #$01    
       BPL    LFEF6   
       STA    RESP1   
       LDA    $C4,X   
       STA    COLUP1  
       LDA    $8F,X   
       STA    HMP1    
       LDA    #$00    
       JMP    LFECE   
LFF09: STA    ENABL   
       STA    WSYNC   
       LDA    #$00    
       STA    CTRLPF  
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$FB    
       STA    $E6     
       LDX    $DE     
       LDA    LFFF1,X 
       STA    $E7     
       LDY    #$04    
LFF22: LDX    #$02    
LFF24: STA    WSYNC   
       LDA    #$34    
       STA    COLUPF  
       LDA    $F6     
       STA    $E5     
       LDA    ($E5),Y 
       STA    PF1     
       JSR    LFF51   
       LDA    $F7     
       STA    $E5     
       LDA    $E7     
       STA    COLUPF  
       LDA    ($E5),Y 
       STA    PF1     
       DEX            
       BPL    LFF24   
       DEY            
       BPL    LFF22   
       STA    WSYNC   
       LDA    #$01    
       STA    CTRLPF  
       LDA    #$00    
       STA    PF1     
LFF51: RTS            

LFF52: JSR    LFA00   
       AND    #$03    
       TAY            
LFF58: JSR    LFA21   
       LDA    #$F2    
       SEC            
       SBC    $E8     
       STA    $CC,X   
       LDA    $E8     
       STA    $A8,X   
       LDA    $E7     
       STA    $86,X   
       LDA    #$0F    
       STA    $81,X   
       LDA    #$01    
       STA    $B6,X   
       LDA    LFF97,Y 
       ASL            
       STA    $9F,X   
       LDA    LFF87,Y 
       ASL            
       STA    $97,X   
       TYA            
       ADC    #$05    
       TAY            
       CMP    #$0F    
       BCC    LFF58   
       RTS            

LFF87: .byte $07,$06,$04,$01,$FF,$FC,$FA,$F9,$F9,$FA,$FC,$FF,$01,$06,$04,$07
LFF97: .byte $02,$06,$08,$0A,$0A,$08,$06,$02,$FE,$FA,$F8,$F6,$F6,$F8,$FA,$FE
LFFA7: LDA    $86,X   
       STA    $E7     
       LDA    $A8,X   
       STA    $E8     
       JSR    LFD60   
       TYA            
       TAX            
       JSR    LFD60   
       JSR    LFF52   
       JSR    LF5A4   
       LDA    #$30    
       STA    COLUBK  
       LDX    $DF     
       DEC    $EC,X   
       LDA    $E1     
       SEC            
       SBC    #$08    
       STA    $E1     
       CLC            
       RTS            

LFFCE: AND    #$07    
       CMP    #$04    
       LDY    #$40    
       BCS    LFFD8   
       LDY    #$C0    
LFFD8: AND    #$03    
       CMP    #$03    
       BCS    LFFF0   
       ADC    #$03    
       TAX            
       LDA    $B6,X   
       AND    #$40    
       BEQ    LFFF0   
       STY    $B6,X   
       LDA    $EC,X   
       LSR            
       LSR            
       TAX            
       STY    $B6,X   
LFFF0: RTS            

LFFF1: .byte $20,$40,$80,$0C,$86,$16,$FF,$FF,$FF,$00,$F0,$00,$F0,$00,$F0
