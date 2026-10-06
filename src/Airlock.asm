; Disassembly of roms/Airlock.bin
; Disassembled Tue Oct  6 15:19:35 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Airlock.bin
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
SWCHA   =  $0280
SWCHB   =  $0282
SWBCNT  =  $0283
INTIM   =  $0284
TIM64T  =  $0296
LF01F   =   $F01F

       ORG $F000

START:
       SEI            
       CLD            
       LDA    #$00    
       TAX            
LF005: STA    VSYNC,X 
       DEX            
       BNE    LF005   
       LDA    #$11    
       STA    CTRLPF  
       LDA    #$41    
       STA    $EF     
       LDA    #$80    
       STA    $F8     
       LDA    #$01    
       STA    $B7     
       STA    $EC     
       LDA    #$10    
       STA    SWBCNT  
LF021: LDA    #$02    
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
       LDA    #$2C    
       STA    TIM64T  
       LDX    #$FF    
       TXS            
       JSR    LF297   
LF044: LDA    INTIM   
       BNE    LF044   
       STA    WSYNC   
       STA    HMOVE   
       STA    VBLANK  
       LDA    #$00    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       STA    COLUBK  
       BIT    $EF     
       BVC    LF060   
       JMP    LF8A8   
LF060: LDA    #$20    
       LDX    #$60    
       BIT    $F9     
       BVS    LF072   
       LDX    #$68    
       LDA    #$28    
       BIT    $ED     
       BVC    LF072   
       LDA    #$FE    
LF072: STA    COLUP0  
       STA    COLUP1  
       STX    COLUPF  
       STA    WSYNC   
       LDX    #$04    
       STX    NUSIZ0  
       STX    NUSIZ1  
       LDA    #$12    
       STA    HMP1    
       AND    #$0F    
       TAY            
LF087: DEY            
       BPL    LF087   
       STA    RESP0   
       STA    RESP1   
       LDY    #$08    
LF090: STA    WSYNC   
       STA    HMOVE   
       LDA    ($A4),Y 
       STA    GRP0    
       LDA    ($A6),Y 
       STA    GRP1    
       LDA    #$48    
       LDA    $E3     
       LDA    $E3     
       LDA    $E3     
       LDA    $E3     
       LDA    ($AA),Y 
       TAX            
       LDA    ($A8),Y 
       STA    GRP0    
       STX    GRP1    
       STA    HMCLR   
       DEY            
       BPL    LF090   
       INY            
       STA    WSYNC   
       STY    GRP0    
       LDA    $87     
       STY    GRP1    
       STA    HMP0    
       AND    #$0F    
       TAX            
LF0C2: DEX            
       BPL    LF0C2   
       STA    RESP0   
       STA    WSYNC   
       STA    HMOVE   
       LDY    #$00    
       STY    $F0     
       STY    $F1     
       LDX    #$03    
LF0D3: DEX            
       BNE    LF0D3   
       STA    HMCLR   
       STA    WSYNC   
       LDA    #$90    
       STA    PF0     
       LDA    #$FF    
       STA    PF1     
       STA    PF2     
       LDA    #$48    
       BIT    $F9     
       BVC    LF0EC   
       LDA    #$40    
LF0EC: STA    COLUP1  
LF0EE: INY            
       STA    WSYNC   
       LDA    ($80),Y 
       STA    GRP0    
       LDX    $F0     
       LDA    $9A,X   
       STA    $82     
       LDA    $BD,X   
       STA    $89     
       LDA    $C7,X   
       STA    $8B     
       LDX    $F1     
       LDA    $D6,X   
       STA    $84     
       LDA    $AE,X   
       STA    $86     
       LDA    $B6     
       CMP    $F1     
       BCS    LF117   
       LDA    #$74    
       STA    COLUBK  
LF117: INY            
       STA    WSYNC   
       LDA    ($80),Y 
       STA    GRP0    
       INC    $F0     
       LDX    $F0     
       LDA    $90,X   
       STA    $81     
       LDA    $9A,X   
       STA    $83     
       LDA    $BD,X   
       STA    $8A     
       LDA    $C7,X   
       STA    $8C     
       INY            
       STA    WSYNC   
       LDA    ($80),Y 
       STA    GRP0    
       LDX    $F0     
       DEX            
       LDA    $90,X   
       STA    $80     
       INC    $F0     
       INC    $F1     
       LDA    #$00    
       STA    ENAM0   
       LDA    #$10    
       STA    NUSIZ0  
       LDA    $F1     
       CMP    #$06    
       BEQ    LF155   
       JMP    LF165   
LF155: LDX    #$1C    
       LDA    #$FF    
       STA    PF0     
       STA    RESM0   
LF15D: STA    WSYNC   
       DEX            
       BNE    LF15D   
       JMP    LF021   
LF165: LDY    #$00    
       STA    WSYNC   
       LDA    ($80),Y 
       STA    GRP0    
       LDA    $F1     
       LSR            
       BCS    LF182   
       LDX    #$02    
LF174: DEX            
       BNE    LF174   
       STA    RESM0   
       LDX    #$06    
LF17B: DEX            
       BNE    LF17B   
       STA    RESM1   
       BEQ    LF193   
LF182: LDX    #$02    
LF184: DEX            
       BNE    LF184   
       LDA    #$02    
       STA    RESM1   
       LDX    #$06    
LF18D: DEX            
       BNE    LF18D   
       STA    RESM0   
       INY            
LF193: STA    WSYNC   
       LDA    ($80),Y 
       STA    GRP0    
       LDA    $84     
       STA    PF0     
       LDA    #$00    
       STA    PF1     
       STA    PF2     
       STA    NUSIZ1  
       BIT    $86     
       BVC    LF1AD   
       LDA    #$02    
       STA    ENAM0   
LF1AD: BIT    $86     
       BPL    LF1B5   
       LDA    #$02    
       STA    ENAM1   
LF1B5: INY            
       CPY    #$0A    
       BEQ    LF1DD   
       STA    WSYNC   
       LDA    ($80),Y 
       STA    GRP0    
       BIT    $EB     
       BVC    LF1CA   
       LDA    $AD     
       CMP    #$40    
       BCS    LF1DA   
LF1CA: BIT    $EA     
       BPL    LF1DA   
       LDA    $B6     
       CMP    $F1     
       BCS    LF1DA   
       LDA    #$74    
       STA    COLUBK  
       BNE    LF1DA   
LF1DA: JMP    LF1B5   
LF1DD: LDA    #$00    
       STA    ENAM0   
       STA    ENAM1   
       LDX    $F1     
       DEX            
       STA    WSYNC   
       LDA    ($80),Y 
       STA    GRP0    
       LDA    $D1,X   
       STA    HMP1    
       AND    #$0F    
       TAX            
LF1F3: DEX            
       BPL    LF1F3   
       STA    RESP1   
       INY            
       STA    WSYNC   
       STA    HMOVE   
       LDA    ($80),Y 
       STA    GRP0    
       LDA    $F1     
       LSR            
       BCC    LF20A   
       LDA    #$70    
       BNE    LF20C   
LF20A: LDA    #$E9    
LF20C: STA    $E3     
       STA    $E3     
       STA    HMCLR   
       INY            
       STA    WSYNC   
       LDA    ($80),Y 
       STA    GRP0    
       LDA    $E3     
       STA    HMM0    
       AND    #$0F    
       TAX            
LF220: DEX            
       BPL    LF220   
       STA    RESM0   
       INY            
       STA    WSYNC   
       STA    HMOVE   
       LDA    ($80),Y 
       STA    GRP0    
       LDX    #$03    
LF230: DEX            
       BNE    LF230   
       STA    HMCLR   
LF235: INY            
       CPY    #$16    
       BEQ    LF247   
       STA    WSYNC   
       LDA    ($80),Y 
       STA    GRP0    
       LDA    ($82),Y 
       STA    GRP1    
       JMP    LF235   
LF247: LDX    $F1     
       DEX            
       CPX    $E7     
       BNE    LF256   
       LDA    #$02    
       STA    ENABL   
       LDA    $84     
       STA    PF0     
LF256: STA    WSYNC   
       LDA    ($80),Y 
       STA    GRP0    
       LDA    ($82),Y 
       STA    GRP1    
       LDA    ($89),Y 
       STA    PF1     
       LDA    ($8B),Y 
       STA    PF2     
       INY            
       CPY    #$1E    
       BNE    LF256   
       LDA    $86     
       LSR            
       BCC    LF278   
       LDA    #$30    
       STA    NUSIZ0  
       LDA    #$02    
LF278: STA    WSYNC   
       STA    ENAM0   
       LDX    $F1     
       LDA    $DB,X   
       STA    PF0     
       LDA    #$FF    
       STA    PF1     
       STA    PF2     
       LDA    #$00    
       STA    GRP1    
       LDA    #$00    
       STA    ENABL   
       LDA    ($80),Y 
       STA    GRP0    
       JMP    LF0EE   
LF297: BIT    $F8     
       BPL    LF2AD   
       INC    $FB     
       BNE    LF2AD   
       INC    $B4     
       LDA    $B4     
       CMP    #$70    
       BNE    LF2AD   
       LDA    $F9     
       ORA    #$40    
       STA    $F9     
LF2AD: LDA    SWCHB   
       ROR            
       BCS    LF2C0   
       LDA    $ED     
       AND    #$BF    
       STA    $ED     
       LDA    #$00    
       STA    $EB     
       JMP    LF2CB   
LF2C0: BIT    $EF     
       BVC    LF2C7   
       JMP    LFB91   
LF2C7: BIT    $EF     
       BPL    LF2DC   
LF2CB: BIT    $EB     
       BVS    LF2D9   
       LDA    #$49    
       BIT    $F8     
       BVC    LF2D7   
       LDA    #$99    
LF2D7: STA    $AD     
LF2D9: JMP    LF79D   
LF2DC: LDA    SWCHB   
       AND    #$02    
       BNE    LF325   
       BIT    $F9     
       BMI    LF32B   
       LDA    #$80    
       STA    $F9     
       LDA    #$00    
       STA    $EB     
       INC    $EC     
       LDA    $EC     
       CMP    #$05    
       BCC    LF2FB   
       LDA    #$01    
       STA    $EC     
LF2FB: LDA    $EC     
       LSR            
       BCS    LF306   
       LDA    #$80    
       STA    $ED     
       BNE    LF30A   
LF306: LDA    #$00    
       STA    $ED     
LF30A: LDA    $EC     
       CMP    #$03    
       BCC    LF318   
       LDA    $F8     
       ORA    #$40    
       STA    $F8     
       BNE    LF31E   
LF318: LDA    $F8     
       AND    #$BF    
       STA    $F8     
LF31E: LDA    $EC     
       STA    $AD     
       JMP    LF79D   
LF325: LDA    #$7F    
       AND    $F9     
       STA    $F9     
LF32B: BIT    $F8     
       BPL    LF361   
       BIT    $ED     
       BVC    LF33A   
       LDA    PF0     
       ASL            
       BCS    LF33F   
       BCC    LF342   
LF33A: LDA    REFP1   
       ASL            
       BCC    LF342   
LF33F: JMP    LF659   
LF342: LDA    $F8     
       AND    #$7F    
       STA    $F8     
       LDA    $F9     
       AND    #$BF    
       STA    $F9     
       LDA    #$00    
       STA    $FB     
       STA    $B4     
       LDA    #$49    
       BIT    $F8     
       BVC    LF35C   
       LDA    #$99    
LF35C: STA    $AD     
       JMP    LF715   
LF361: BIT    $EA     
       BVC    LF392   
       LDA    $B7     
       ORA    #$40    
       STA    $B7     
       LDA    $EF     
       ORA    #$41    
       STA    $EF     
       BIT    $ED     
       BPL    LF385   
       BVS    LF37F   
       LDA    $ED     
       ORA    #$40    
       STA    $ED     
       BNE    LF38B   
LF37F: LDA    $ED     
       AND    #$BF    
       STA    $ED     
LF385: LDA    $B7     
       ORA    #$01    
       STA    $B7     
LF38B: LDA    #$00    
       STA    $EB     
       JMP    LF715   
LF392: LDA    $AD     
       BNE    LF39C   
       LDA    $B3     
       CMP    #$01    
       BEQ    LF3BA   
LF39C: BIT    $EA     
       BPL    LF3C3   
       LDA    $EA     
       AND    #$7F    
       STA    $EA     
       BIT    $EB     
       BVC    LF3B0   
       LDA    $AD     
       CMP    #$41    
       BCS    LF3B2   
LF3B0: DEC    $B6     
LF3B2: INC    $B5     
       LDA    $AC     
       CMP    $B5     
       BCS    LF3D5   
LF3BA: LDA    $EA     
       ORA    #$40    
       STA    $EA     
       JMP    LF715   
LF3C3: LDA    $AD     
       AND    #$0F    
       BNE    LF3D5   
       LDA    $B3     
       CMP    #$05    
       BNE    LF3D5   
       LDA    $EA     
       ORA    #$80    
       STA    $EA     
LF3D5: LDA    $EE     
       BEQ    LF3DE   
       DEC    $EE     
       JMP    LF631   
LF3DE: LDA    $F6     
       BNE    LF3E5   
       JMP    LF469   
LF3E5: CMP    #$22    
       BCS    LF3EC   
       JMP    LF4C5   
LF3EC: CLC            
       SED            
       LDA    $AC     
       ADC    #$01    
       STA    $AC     
       CLD            
       LDA    $F4     
       BNE    LF446   
       LDA    #$00    
       STA    $F6     
       BIT    $F8     
       BVC    LF414   
       BIT    $EB     
       BVS    LF414   
       LDA    $EB     
       ORA    #$40    
       STA    $EB     
       LDA    $EF     
       ORA    #$80    
       STA    $EF     
       JMP    LF715   
LF414: BIT    $ED     
       BPL    LF42E   
       BVS    LF428   
       LDA    $ED     
       ORA    #$40    
       STA    $ED     
       LDA    $EF     
       ORA    #$80    
       STA    $EF     
       BNE    LF434   
LF428: LDA    $ED     
       AND    #$BF    
       STA    $ED     
LF42E: LDA    $B7     
       ORA    #$01    
       STA    $B7     
LF434: LDA    $EF     
       ORA    #$41    
       STA    $EF     
       LDA    $B7     
       ORA    #$80    
       STA    $B7     
       LDA    $EB     
       AND    #$BF    
       STA    $EB     
LF446: LDX    $F4     
       LDA    #$00    
       STA    $90,X   
       LDX    $E7     
       LDA    #$90    
       STA    $D6,X   
       LDA    #$F0    
       STA    $DB,X   
       DEC    $F4     
       DEC    $F4     
       DEC    $E7     
       LDX    $E7     
       LDA    #$10    
       STA    $D6,X   
       LDA    #$00    
       STA    $F6     
       JMP    LF61C   
LF469: BIT    COLUP1  
       BPL    LF490   
       LDA    #$00    
       STA    $F5     
       STA    $F3     
       STA    $E6     
       LDA    #$2C    
       STA    $E5     
       LDA    #$58    
       STA    $E1     
       LDA    #$01    
       STA    $F7     
       LDA    #$FF    
       STA    $EE     
       LDX    $F4     
       LDA    #$58    
       STA    $90,X   
       LDA    #$FE    
       STA    $91,X   
       RTS            

LF490: BIT    WSYNC   
       BVC    LF4E8   
       LDA    $F2     
       AND    #$03    
       CMP    #$03    
       BNE    LF4E8   
       BIT    $E9     
       BVS    LF4A5   
       INC    $88     
       JMP    LF4A7   
LF4A5: DEC    $88     
LF4A7: LDA    #$00    
       STA    $E6     
       LDA    #$0C    
       STA    $E5     
       LDA    #$88    
       STA    $E1     
       LDA    #$01    
       STA    $F7     
       LDA    #$00    
       STA    $F6     
       STA    $F2     
       LDX    $E7     
       LDA    $AE,X   
       AND    #$FE    
       STA    $AE,X   
LF4C5: LDX    $F4     
       LDA    $F6     
       ADC    #$81    
       STA    $90,X   
       LDA    #$FE    
       STA    $91,X   
       LDA    $F6     
       CMP    #$16    
       BMI    LF4E3   
       LDX    $F4     
       BEQ    LF4E3   
       DEX            
       DEX            
       LDA    $F6     
       ADC    #$60    
       STA    $90,X   
LF4E3: INC    $F6     
       JMP    LF631   
LF4E8: BIT    WSYNC   
       BPL    LF50F   
       LDA    #$01    
       STA    $F7     
       LDA    #$00    
       STA    $E6     
       LDA    #$38    
       STA    $E5     
       LDA    #$18    
       STA    $E1     
       BIT    $E9     
       BVS    LF504   
       INC    $88     
       BNE    LF506   
LF504: DEC    $88     
LF506: LDA    #$00    
       STA    $F3     
       STA    $F5     
       JMP    LF618   
LF50F: BIT    VSYNC   
       BVC    LF533   
       LDA    #$00    
       STA    $E6     
       LDA    #$14    
       STA    $E5     
       LDA    #$00    
       STA    $E1     
       LDA    #$01    
       STA    $F7     
       LDA    #$01    
       STA    $F2     
       LDX    $E7     
       LDA    $AE,X   
       AND    #$BF    
       STA    $AE,X   
       LDA    #$90    
       STA    $D6,X   
LF533: BIT    VBLANK  
       BPL    LF55B   
       LDA    $F2     
       BEQ    LF55B   
       ORA    #$02    
       STA    $F2     
       LDA    #$01    
       STA    $F7     
       LDA    #$00    
       STA    $E6     
       LDA    #$14    
       STA    $E5     
       LDA    #$00    
       STA    $E1     
       LDX    $E7     
       LDA    $AE,X   
       AND    #$7F    
       STA    $AE,X   
       LDA    #$10    
       STA    $D6,X   
LF55B: LDA    $F5     
       BEQ    LF580   
       LDA    $F3     
       CMP    #$0F    
       BPL    LF57A   
       LDA    #$C0    
       BIT    $E9     
       BEQ    LF573   
       BVS    LF571   
       DEC    $88     
       BNE    LF573   
LF571: INC    $88     
LF573: INC    $F3     
       BEQ    LF57A   
       JMP    LF614   
LF57A: LDA    #$00    
       STA    $F3     
       STA    $F5     
LF580: BIT    $ED     
       BVC    LF58B   
       LDA    PF0     
       ASL            
       BCS    LF5CA   
       BCC    LF590   
LF58B: LDA    REFP1   
       ASL            
       BCS    LF5CA   
LF590: LDA    #$00    
       STA    $E6     
       LDA    #$18    
       STA    $E5     
       LDA    #$98    
       STA    $E1     
       LDA    #$01    
       STA    $F7     
       LDA    #$01    
       STA    $F5     
       LDA    #$00    
       STA    $F3     
       BIT    $ED     
       BVC    LF5B7   
       LDA    SWCHA   
       AND    #$0C    
       CMP    #$0C    
       BNE    LF5D4   
       BEQ    LF5C0   
LF5B7: LDA    SWCHA   
       AND    #$C0    
       CMP    #$C0    
       BMI    LF5D4   
LF5C0: LDA    #$D0    
       STA    $8E     
       LDA    #$FE    
       STA    $8F     
       BNE    LF5DC   
LF5CA: LDA    #$00    
       STA    $8E     
       LDA    #$FE    
       STA    $8F     
       BNE    LF5DC   
LF5D4: LDA    #$E0    
       STA    $8E     
       LDA    #$FE    
       STA    $8F     
LF5DC: LDA    #$00    
       STA    $E9     
       BIT    $ED     
       BVC    LF5F4   
       LDA    SWCHA   
       AND    #$08    
       BEQ    LF600   
       LDA    SWCHA   
       AND    #$04    
       BEQ    LF608   
       BNE    LF61C   
LF5F4: LDA    SWCHA   
       ASL            
       BCC    LF600   
       ASL            
       BCC    LF608   
       JMP    LF61C   
LF600: INC    $88     
       LDA    #$40    
       STA    $E9     
       BNE    LF60E   
LF608: DEC    $88     
       LDA    #$80    
       STA    $E9     
LF60E: LDA    #$80    
       ORA    $85     
       STA    $85     
LF614: LDA    #$03    
       STA    $EE     
LF618: STA    WSYNC   
       STA    HMOVE   
LF61C: LDX    $F4     
       LDY    $F3     
       CLC            
       LDA    ($8E),Y 
       ADC    #$0E    
       STA    $90,X   
       LDA    #$FE    
       STA    $91,X   
       STA    HMCLR   
       BIT    $F8     
       BMI    LF659   
LF631: LDA    $B3     
       BEQ    LF63A   
       DEC    $B3     
       JMP    LF68C   
LF63A: LDA    #$7F    
       BIT    $ED     
       BVC    LF647   
       BIT    SWCHB   
       BMI    LF64E   
       BPL    LF64C   
LF647: BIT    SWCHB   
       BVS    LF64E   
LF64C: LDA    #$58    
LF64E: STA    $B3     
       SEC            
       SED            
       LDA    $AD     
       SBC    #$01    
       STA    $AD     
       CLD            
LF659: LDA    #$04    
       STA    $E3     
       LDX    #$01    
LF65F: LDA    $AC,X   
       AND    #$F0    
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    LFF1E,Y 
       LDY    $E3     
       STA.wy $00A4,Y 
       LDA    $AC,X   
       AND    #$0F    
       TAY            
       LDA    LFF1E,Y 
       LDY    $E3     
       STA.wy $00A6,Y 
       LDA    #$FF    
       STA.wy $00A5,Y 
       STA.wy $00A7,Y 
       LDY    #$00    
       STY    $E3     
       DEX            
       BPL    LF65F   
LF68C: LDA    $E8     
       BNE    LF6DB   
       LDA    #$03    
       STA    $E8     
       LDX    #$00    
LF696: LDA    $B8,X   
       CMP    #$80    
       BCS    LF6B8   
       SEC            
       SBC    #$01    
       CPX    #$00    
       BNE    LF6A5   
       SBC    #$01    
LF6A5: STA    $B8,X   
       CMP    #$08    
       BCC    LF6B2   
       JSR    LFCCA   
       STA    $D1,X   
       BNE    LF6D4   
LF6B2: ORA    #$80    
       STA    $B8,X   
       BNE    LF6D4   
LF6B8: AND    #$7F    
       CLC            
       ADC    #$01    
       CPX    #$01    
       BNE    LF6C3   
       ADC    #$01    
LF6C3: STA    $B8,X   
       CMP    #$7D    
       BCS    LF6D2   
       JSR    LFCCA   
       STA    $D1,X   
       LDA    $B8,X   
       ORA    #$80    
LF6D2: STA    $B8,X   
LF6D4: INX            
       CPX    #$05    
       BNE    LF696   
       BEQ    LF6DD   
LF6DB: DEC    $E8     
LF6DD: LDA    $E7     
       LSR            
       BCC    LF6F1   
       LDX    #$0E    
       LDA    #$C0    
       STA    HMBL    
       STA    WSYNC   
LF6EA: DEX            
       BNE    LF6EA   
       STA    RESBL   
       BEQ    LF6FA   
LF6F1: LDX    #$04    
       STA    WSYNC   
LF6F5: DEX            
       BNE    LF6F5   
       STA    RESBL   
LF6FA: STA    WSYNC   
       STA    HMOVE   
       LDA    #$00    
       STA    HMM0    
       STA    HMM1    
       STA    HMBL    
       LDA    #$00    
       STA    NUSIZ1  
       STA    CXCLR   
       STA    HMCLR   
       LDA    $88     
       JSR    LFCCA   
       STA    $87     
LF715: BIT    $85     
       BPL    LF754   
       LDA    $85     
       AND    #$7F    
       STA    $85     
       CMP    #$01    
       BNE    LF73E   
       LDA    #$08    
       SEC            
       SBC    $8D     
       SBC    $8D     
       STA    AUDV1   
       DEC    $8D     
       BEQ    LF733   
       JMP    LF768   
LF733: LDA    #$02    
       STA    $85     
       LDA    #$08    
       STA    $8D     
       JMP    LF768   
LF73E: LDA    #$00    
       STA    AUDV1   
       DEC    $8D     
       BEQ    LF749   
       JMP    LF768   
LF749: LDA    #$01    
       STA    $85     
       LDA    #$05    
       STA    $8D     
       JMP    LF768   
LF754: LDA    #$00    
       STA    AUDV1   
       LDA    #$05    
       STA    $8D     
       LDA    #$08    
       STA    AUDC1   
       LDA    #$0A    
       STA    AUDF1   
       LDA    #$01    
       STA    $85     
LF768: LDA    $F7     
       BEQ    LF772   
       LDA    $E4     
       BEQ    LF773   
       DEC    $E4     
LF772: RTS            

LF773: LDY    $E6     
       CPY    $E5     
       BEQ    LF794   
       LDA    ($E1),Y 
       STA    $E4     
       INY            
       LDA    ($E1),Y 
       STA    AUDC0   
       INY            
       LDA    ($E1),Y 
       STA    AUDF0   
       INY            
       LDA    ($E1),Y 
       STA    AUDV0   
       CLC            
       LDA    $E6     
       ADC    #$04    
       STA    $E6     
       RTS            

LF794: LDA    #$00    
       STA    AUDV0   
       STA    $F7     
       STA    $E6     
       RTS            

LF79D: LDA    #$08    
       STA    $F4     
       LDA    #$04    
       STA    $E7     
       LDA    #$BF    
       AND    $F9     
       STA    $F9     
       LDA    #$00    
       STA    COLUBK  
       LDA    #$10    
       STA    NUSIZ0  
       LDA    #$FD    
       STA    $E2     
       BIT    $EB     
       BVS    LF7E2   
       LDA    #$00    
       STA    $AC     
       STA    $EA     
       STA    $B7     
       STA    $B5     
       LDA    $F8     
       ORA    #$80    
       STA    $F8     
       LDA    #$7F    
       STA    $B3     
       LDA    $EC     
       LSR            
       BCC    LF7DC   
       LDA    $ED     
       AND    #$7F    
       STA    $ED     
       BPL    LF7E2   
LF7DC: LDA    $ED     
       ORA    #$80    
       STA    $ED     
LF7E2: LDA    #$04    
       STA    $B6     
       LDA    #$00    
       STA    $F3     
       STA    $F5     
       STA    $F2     
       STA    $F6     
       STA    $EF     
       STA    $EE     
       STA    $B4     
       STA    $FB     
       LDX    #$00    
LF7FA: STA    $90,X   
       INX            
       INX            
       CPX    #$0A    
       BNE    LF7FA   
       LDA    #$FE    
       LDX    #$00    
LF806: STA    $91,X   
       INX            
       INX            
       CPX    #$0A    
       BNE    LF806   
       LDA    #$0A    
       LDX    #$00    
LF812: STA    $9A,X   
       INX            
       INX            
       CPX    #$0A    
       BNE    LF812   
       LDA    #$FE    
       LDX    #$00    
LF81E: STA    $9B,X   
       INX            
       INX            
       CPX    #$0A    
       BNE    LF81E   
       LDA    #$C1    
       LDX    #$00    
LF82A: STA    $AE,X   
       INX            
       CPX    #$05    
       BNE    LF82A   
       LDA    #$A8    
       STA    $B8     
       LDA    #$40    
       STA    $B9     
       LDA    #$32    
       STA    $BA     
       LDA    #$C1    
       STA    $BB     
       LDA    #$9E    
       STA    $BC     
       LDA    #$3A    
       LDX    #$00    
LF849: STA    $BD,X   
       INX            
       INX            
       CPX    #$0A    
       BNE    LF849   
       LDA    #$FE    
       LDX    #$00    
LF855: STA    $BE,X   
       INX            
       INX            
       CPX    #$0A    
       BNE    LF855   
       LDA    #$4A    
       BIT    $EB     
       BVC    LF865   
       LDA    #$3A    
LF865: LDX    #$00    
       LDX    #$00    
LF869: STA    $C7,X   
       INX            
       INX            
       CPX    #$0A    
       BNE    LF869   
       LDA    #$FE    
       LDX    #$00    
LF875: STA    $C8,X   
       INX            
       INX            
       CPX    #$0A    
       BNE    LF875   
       LDA    #$90    
       LDX    #$00    
LF881: STA    $D6,X   
       STA    $DB,X   
       INX            
       CPX    #$05    
       BNE    LF881   
       LDA    #$F0    
       STA    $DB,X   
       LDA    #$63    
       BIT    $EB     
       BVC    LF89A   
       LDA    #$95    
       LDY    #$10    
       STY    $DA     
LF89A: STA    $88     
       JSR    LFCCA   
       STA    $87     
       JMP    LF61C   
LF8A4: .byte $0C,$F6,$02,$A2
LF8A8: STA    WSYNC   
       LDA    #$18    
       BIT    $F9     
       BVC    LF8B2   
       LDA    #$10    
LF8B2: STA    COLUP0  
       STA    COLUP1  
       LDA    #$00    
       STA    PF0     
       STA    ENAM1   
       LDX    #$0A    
LF8BE: STA    WSYNC   
       DEX            
       BNE    LF8BE   
       STA    WSYNC   
       LDX    #$01    
       STX    NUSIZ0  
       STX    NUSIZ1  
       LDA    #$14    
       STA    HMP1    
       AND    #$0F    
       TAY            
LF8D2: DEY            
       BPL    LF8D2   
       STA    RESP0   
       STA    RESP1   
       LDY    #$08    
LF8DB: STA    WSYNC   
       STA    HMOVE   
       LDA    ($90),Y 
       STA    GRP0    
       LDA    ($92),Y 
       STA    GRP1    
       LDA    $E3     
       LDA    $E3     
       LDA    $E3     
       LDA    $E3     
       LDA    #$00    
       LDA    ($96),Y 
       TAX            
       LDA    ($94),Y 
       STA    GRP0    
       STX    GRP1    
       STA    HMCLR   
       LDA    $E3     
       DEY            
       BPL    LF8DB   
       INY            
       STA    WSYNC   
       STY    GRP0    
       STY    GRP1    
       LDX    #$15    
LF90A: STA    WSYNC   
       DEX            
       BNE    LF90A   
       STA    WSYNC   
       LDA    $80,X   
       LDA    $80,X   
       LDA    #$D0    
       STA    HMP0    
       LDX    #$06    
LF91B: DEX            
       BNE    LF91B   
       STA    RESP0   
       STA    WSYNC   
       STA    HMOVE   
       LDX    #$07    
LF926: DEX            
       BNE    LF926   
       STA    HMCLR   
       STA    WSYNC   
       LDA    $80,X   
       LDA    $80,X   
       LDA    #$D0    
       STA    HMP1    
       LDX    #$06    
LF937: DEX            
       BNE    LF937   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       LDX    #$07    
LF942: DEX            
       BNE    LF942   
       STA    HMCLR   
       STA    WSYNC   
       LDX    #$48    
       LDA    #$0E    
       BIT    $F9     
       BVC    LF955   
       LDX    #$40    
       LDA    #$00    
LF955: STX    COLUPF  
       STA    COLUP1  
       LDA    #$28    
       LDX    $ED     
       CPX    #$80    
       BNE    LF963   
       LDA    #$FE    
LF963: STA    COLUP0  
       LDA    #$00    
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    WSYNC   
       LDA    #$02    
       STA    ENAM1   
       LDX    #$0A    
LF973: STA    WSYNC   
       DEX            
       BNE    LF973   
       LDA    #$10    
       STA    NUSIZ1  
       LDY    #$00    
LF97E: STA    WSYNC   
       LDA    #$C0    
       BIT    $B7     
       BEQ    LF98A   
       LDA    ($BD),Y 
       STA    GRP0    
LF98A: INY            
       CPY    #$0A    
       BNE    LF97E   
       LDX    #$04    
LF991: STA    WSYNC   
       LDA    #$C0    
       BIT    $B7     
       BEQ    LF9A2   
       LDA    #$02    
       STA    ENABL   
       LDA    ($BD),Y 
       STA    GRP0    
       INY            
LF9A2: DEX            
       BNE    LF991   
       BIT    $B7     
       BVC    LF9AC   
       JMP    LFA8E   
LF9AC: STA    WSYNC   
       LDA    #$48    
       BIT    $F9     
       BVC    LF9B6   
       LDA    #$40    
LF9B6: STA    COLUP0  
       LDA    #$C0    
       STA    PF2     
       LDA    #$00    
       STA    GRP0    
       STA    ENAM1   
       STA    ENABL   
       STA    WSYNC   
       LDA    $80,X   
       LDA    $80,X   
       LDA    #$F0    
       STA    HMP0    
       LDX    #$05    
LF9D0: DEX            
       BNE    LF9D0   
       STA    RESP0   
       STA    WSYNC   
       STA    HMOVE   
       LDX    #$07    
LF9DB: DEX            
       BNE    LF9DB   
       STA    HMCLR   
       STA    WSYNC   
       LDX    #$00    
LF9E4: LDA    LFCE0,X 
       STA    GRP0    
       LDA    LFFB6,X 
       STA    GRP1    
       STA    WSYNC   
       INX            
       CPX    #$10    
       BNE    LF9E4   
       BIT    $B7     
       BPL    LF9FC   
       JMP    LFA8E   
LF9FC: LDX    #$10    
LF9FE: LDA    LFCE0,X 
       STA    GRP0    
       LDA    LFFB6,X 
       STA    GRP1    
       STA    WSYNC   
       INX            
       CPX    #$1B    
       BNE    LF9FE   
       LDA    #$05    
       STA    NUSIZ1  
       LDA    #$48    
       BIT    $F9     
       BVC    LFA1B   
       LDA    #$40    
LFA1B: STA    COLUP1  
       LDX    #$00    
       STA    WSYNC   
       LDA    LFCFC   
       STA    GRP0,X  
       LDA    #$C0    
       STA    HMP1    
       LDX    #$09    
LFA2C: DEX            
       BNE    LFA2C   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       LDX    #$07    
LFA37: DEX            
       BNE    LFA37   
       STA    HMCLR   
       LDA    #$00    
       STA    GRP0    
       LDX    #$00    
       STA    WSYNC   
       LDA    #$F0    
       STA    PF2,X   
       LDA    #$00    
       LDA    #$A0    
       STA    HMP0    
       LDX    #$02    
LFA50: DEX            
       BNE    LFA50   
       STA    RESP0   
       LDX    #$03    
LFA57: DEX            
       BNE    LFA57   
       LDA    #$C0    
       STA    PF2     
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$F0    
       STA    PF2     
       LDX    #$07    
LFA68: DEX            
       BNE    LFA68   
       LDA    #$C0    
       STA    PF2     
       STA    HMCLR   
       STA    WSYNC   
       LDA    #$FF    
       STA    PF2     
       LDA    #$0F    
       STA    PF1     
       LDX    #$00    
LFA7D: STA    WSYNC   
       LDA    LFF82,X 
       STA    GRP0    
       LDA    LFF8A,X 
       STA    GRP1    
       INX            
       CPX    #$08    
       BNE    LFA7D   
LFA8E: STA    WSYNC   
       LDA    #$88    
       BIT    $F9     
       BVC    LFA98   
       LDA    #$80    
LFA98: STA    COLUBK  
       LDA    #$00    
       STA    PF1     
       STA    PF2     
       STA    GRP0    
       STA    GRP1    
       STA    ENAM1   
       STA    ENABL   
       LDA    #$00    
       STA    COLUP0  
       LDA    #$05    
       STA    NUSIZ0  
       STA    WSYNC   
       LDA    $E3     
       LDA    $E3     
       LDA    $98     
       STA    HMP0    
       AND    #$0F    
       TAX            
LFABD: DEX            
       BPL    LFABD   
       STA    RESP0   
       STA    WSYNC   
       STA    HMOVE   
       LDX    #$08    
LFAC8: DEX            
       BNE    LFAC8   
       STA    HMCLR   
       LDX    #$00    
LFACF: STA    WSYNC   
       LDA    LFF92,X 
       STA    GRP0    
       INX            
       CPX    #$06    
       BNE    LFACF   
       STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       BIT    $B7     
       BVS    LFAEB   
       BMI    LFAEF   
       LDX    #$18    
       BNE    LFAF1   
LFAEB: LDX    #$44    
       BNE    LFAF1   
LFAEF: LDX    #$30    
LFAF1: STA    WSYNC   
       DEX            
       BNE    LFAF1   
       STA    WSYNC   
       LDA    $E3     
       LDA    $E3     
       LDA    $99     
       STA    HMP1    
       AND    #$0F    
       TAX            
LFB03: DEX            
       BPL    LFB03   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       LDX    #$08    
LFB0E: DEX            
       BNE    LFB0E   
       STA    HMCLR   
       STA    WSYNC   
       LDA    #$2C    
       BIT    $F9     
       BVC    LFB1D   
       LDA    #$20    
LFB1D: STA    COLUP1  
       LDA    #$03    
       STA    NUSIZ1  
       LDX    #$00    
LFB25: STA    WSYNC   
       LDA    LFF99,X 
       STA    GRP1    
       INX            
       CPX    #$07    
       BNE    LFB25   
       STA    WSYNC   
       LDA    #$00    
       STA    GRP1    
       LDX    #$08    
LFB39: STA    WSYNC   
       DEX            
       BNE    LFB39   
       STA    WSYNC   
       LDA    $E3     
       LDA    $E3     
       LDA    $9A     
       STA    HMP0    
       AND    #$0F    
       TAX            
LFB4B: DEX            
       BPL    LFB4B   
       STA    RESP0   
       STA    WSYNC   
       STA    HMOVE   
       LDX    #$06    
LFB56: DEX            
       BNE    LFB56   
       STA    HMCLR   
       STA    WSYNC   
       LDA    #$0F    
       LDA    #$0C    
       BIT    $F9     
       BVC    LFB67   
       LDA    #$00    
LFB67: STA    COLUP0  
       LDA    #$05    
       STA    NUSIZ0  
       LDA    #$08    
       STA    REFP0   
       LDX    #$00    
LFB73: STA    WSYNC   
       LDA    LFF99,X 
       STA    GRP0    
       INX            
       CPX    #$07    
       BNE    LFB73   
       STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       STA    REFP0   
       LDX    #$1E    
LFB89: STA    WSYNC   
       DEX            
       BNE    LFB89   
       JMP    LF01F   
LFB91: LDA    #$FD    
       STA    $E2     
       LDA    #$01    
       BIT    $EF     
       BEQ    LFBC7   
       LDA    #$FE    
       AND    $EF     
       STA    $EF     
       LDA    #$FF    
       STA    $C9     
       LDA    #$00    
       STA    $C7     
       STA    $C8     
       STA    $E6     
       LDA    #$01    
       STA    $F7     
       BIT    $B7     
       BMI    LFBBF   
       BVS    LFBB9   
       BPL    LFBD7   
LFBB9: LDA    #$30    
       LDX    #$B0    
       BNE    LFBC3   
LFBBF: LDA    #$20    
       LDX    #$E0    
LFBC3: STA    $E5     
       STX    $E1     
LFBC7: DEC    $C9     
       BNE    LFBF1   
       LDA    #$01    
       BIT    $B7     
       BNE    LFBD7   
       LDA    #$80    
       STA    $EF     
       BNE    LFBF1   
LFBD7: LDA    #$00    
       STA    $E6     
       LDA    #$01    
       STA    $F7     
       LDA    #$18    
       STA    $E5     
       LDA    #$58    
       STA    $E1     
       LDA    $F8     
       ORA    #$80    
       STA    $F8     
       LDA    #$01    
       STA    $B7     
LFBF1: LDA    #$00    
       STA    COLUBK  
       INC    $9B     
       INC    $9B     
       LDA    $9B     
       CMP    #$A1    
       BCC    LFC03   
       LDA    #$00    
       STA    $9B     
LFC03: JSR    LFCCA   
       STA    $98     
       DEC    $9C     
       LDA    $9C     
       CMP    #$04    
       BCS    LFC14   
       LDA    #$A0    
       STA    $9C     
LFC14: JSR    LFCCA   
       STA    $99     
       INC    $9D     
       LDA    $9D     
       CMP    #$A1    
       BCC    LFC25   
       LDA    #$00    
       STA    $9D     
LFC25: JSR    LFCCA   
       STA    $9A     
       STA    WSYNC   
       LDA    ($80),Y 
       LDA    ($80),Y 
       LDA    #$B0    
       STA    HMM1    
       LDX    #$05    
LFC36: DEX            
       BNE    LFC36   
       STA    RESM1   
       STA    WSYNC   
       STA    HMOVE   
       LDX    #$08    
       LDX    #$07    
LFC43: DEX            
       BNE    LFC43   
       STA    HMCLR   
       STA    WSYNC   
       LDA    ($80),Y 
       LDA    $80     
       LDA    #$00    
       STA    HMBL    
       LDX    #$06    
LFC54: DEX            
       BNE    LFC54   
       STA    RESBL   
       STA    WSYNC   
       STA    HMOVE   
       LDX    #$07    
LFC5F: DEX            
       BNE    LFC5F   
       STA    HMCLR   
       LDA    #$09    
       STA    $90     
       LDA    #$13    
       STA    $92     
       LDA    #$A2    
       STA    $94     
       LDA    #$AC    
       STA    $96     
       LDA    #$FF    
       STA    $91     
       STA    $93     
       STA    $95     
       STA    $97     
       BIT    $B7     
       BVS    LFCA6   
       BPL    LFCC5   
       LDA    $C7     
       BNE    LFCC3   
       LDA    #$08    
       STA    $C7     
       LDA    $C8     
       BNE    LFC98   
       LDA    #$01    
       STA    $C8     
       LDX    #$D6    
       BNE    LFC9E   
LFC98: LDX    #$DC    
       LDA    #$00    
       STA    $C8     
LFC9E: STX    $BD     
       LDA    #$FF    
       STA    $BE     
       BNE    LFCC5   
LFCA6: LDX    $C8     
       CPX    #$08    
       BCS    LFCC5   
       LDA    $C7     
       BNE    LFCC3   
       LDA    #$20    
       STA    $C7     
       INC    $C8     
       SEC            
       LDA    #$D6    
       SBC    $C8     
       STA    $BD     
       LDA    #$FF    
       STA    $BE     
       BNE    LFCC5   
LFCC3: DEC    $C7     
LFCC5: JMP    LF715   
LFCC8: .byte $32,$23
LFCCA: LDY    #$FF    
       SEC            
LFCCD: INY            
       SBC    #$0F    
       BCS    LFCCD   
       STY    $E3     
       EOR    #$FF    
       ADC    #$09    
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    $E3     
       RTS            

LFCDF: .byte $00
LFCE0: .byte $01,$01,$01,$01,$03,$03,$03,$03,$07,$07,$07,$07,$0F,$0F,$0F,$0F
       .byte $1F,$1F,$1F,$1F,$3F,$3F,$3F,$3F,$7F,$7F,$7F,$7F
LFCFC: .byte $FF,$FF,$FF,$FF,$00,$0C,$0C,$1E,$00,$0C,$00,$00,$00,$0C,$02,$02
       .byte $00,$0C,$00,$04,$00,$0C,$06,$06,$00,$00,$00,$00,$00,$0F,$1F,$0F
       .byte $00,$0F,$1F,$0E,$00,$0F,$1F,$0D,$00,$0F,$1F,$0C,$00,$0F,$1F,$0B
       .byte $00,$0F,$1F,$0A,$00,$0F,$1F,$09,$00,$0F,$1F,$08,$00,$0F,$1F,$07
       .byte $00,$0F,$1F,$06,$00,$0F,$1F,$05,$00,$0F,$1F,$04,$00,$0F,$1F,$03
       .byte $00,$0F,$1F,$02,$00,$0F,$1F,$01,$00,$00,$00,$00,$00,$0C,$12,$0F
       .byte $01,$0C,$12,$0A,$02,$0C,$12,$07,$05,$0C,$12,$04,$10,$0C,$12,$01
       .byte $08,$0C,$12,$00,$00,$0C,$17,$05,$01,$0C,$17,$04,$02,$0C,$17,$03
       .byte $10,$0C,$17,$02,$30,$0C,$17,$01,$00,$00,$00,$00,$0C,$0C,$16,$08
       .byte $0C,$0C,$10,$08,$0C,$0C,$0D,$08,$24,$0C,$0A,$08,$00,$0C,$1F,$08
       .byte $01,$0C,$1C,$08,$02,$0C,$1D,$08,$03,$0C,$0C,$08,$04,$0C,$08,$08
       .byte $05,$0C,$04,$0C,$05,$0C,$0C,$08,$10,$0C,$0C,$00,$07,$0C,$10,$08
       .byte $10,$0C,$10,$00,$09,$0C,$14,$08,$14,$0C,$14,$00,$0B,$0C,$18,$08
       .byte $18,$0C,$18,$00,$0D,$0C,$1C,$08,$1C,$0C,$1C,$00,$40,$0C,$1F,$08
       .byte $20,$0C,$1F,$00,$0C,$0C,$12,$08,$06,$0C,$0F,$08,$06,$0C,$12,$08
       .byte $0C,$0C,$18,$08,$06,$0C,$12,$08,$06,$0C,$18,$08,$0C,$0C,$12,$08
       .byte $06,$06,$0F,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$3C,$3C,$18,$7E,$3C,$3C,$24,$24,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$02,$02,$02,$02,$02,$02,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$3C,$3C,$18,$7E,$3C,$BD,$FF,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$3C,$3C,$18,$7E,$3C
       .byte $3C,$24,$24,$FF,$FF,$FF,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$01,$02,$04,$06,$08,$0A,$0C,$0E,$0C,$0A,$08,$06
       .byte $04,$02,$01,$00,$01,$03,$05,$07,$09,$0A,$0C,$0D,$0C,$0A,$09,$07
       .byte $05,$03,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$E5,$55,$57
       .byte $55,$55,$52,$50,$50,$E0,$00,$25,$25,$27,$25,$25,$72,$00,$00,$00
       .byte $00,$00
LFF1E: .byte $28,$31,$3A,$43,$4C,$55,$5E,$67,$70,$79,$3C,$66,$66,$66,$66,$66
       .byte $66,$66,$3C,$3C,$18,$18,$18,$18,$18,$18,$38,$18,$7E,$60,$60,$60
       .byte $3C,$06,$06,$46,$3C,$3C,$46,$06,$06,$0C,$18,$0C,$46,$3C,$0C,$0C
       .byte $7E,$4C,$4C,$2C,$2C,$1C,$0C,$7C,$46,$06,$06,$7C,$60,$60,$60,$7E
       .byte $3C,$66,$66,$66,$7C,$60,$60,$62,$3C,$18,$18,$18,$18,$0C,$0C,$06
       .byte $42,$7E,$3C,$66,$66,$66,$3C,$66,$66,$66,$3C,$3C,$46,$06,$06,$3E
       .byte $66,$66,$66,$3C
LFF82: .byte $01,$01,$03,$03,$07,$07,$0F,$0F
LFF8A: .byte $80,$C0,$E0,$F0,$F8,$FC,$FE,$FF
LFF92: .byte $00,$5C,$3E,$7F,$3E,$5C,$00
LFF99: .byte $00,$31,$7A,$DE,$FE,$7A,$31,$00,$00,$09,$09,$09,$09,$0F,$09,$09
       .byte $09,$06,$00,$17,$74,$54,$77,$44,$77,$00,$00,$00,$00
LFFB6: .byte $00,$00,$00,$00,$00,$00,$00,$00,$88,$88,$88,$F8,$88,$88,$88,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$3C,$BD,$99,$7E,$3C,$3C,$24,$24,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$F0,$00,$F0,$00,$00
