; Disassembly of roms/BloodyHumanFreeway_NTSC.bin
; Disassembled Tue Oct  6 15:21:07 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/BloodyHumanFreeway_NTSC.bin
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
       JSR    LF5A7   
LF00F: LDX    #$05    
LF011: LDA    LF6DD,X 
       EOR    $86     
       AND    $87     
       STA    $88,X   
       CPX    #$04    
       BCS    LF020   
       STA    COLUP0,X
LF020: DEX            
       BPL    LF011   
       STX    $90     
       STX    $91     
       STA    WSYNC   
       STA    RESBL   
       LDA    #$22    
       STA    HMBL    
       STA    ENABL   
       LDA    #$28    
       INX            
       STX    COLUPF  
       JSR    LF60A   
       LDA    #$30    
       STA    CTRLPF  
       INX            
       JSR    LF60A   
       LDA    #$04    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDY    $88     
       LDA    $E6     
       BNE    LF05B   
       LDA    $E9     
       CMP    #$20    
       BCC    LF055   
       INC    $E6     
LF055: CMP    #$1E    
       BCC    LF05B   
       LDY    $81     
LF05B: STY    COLUP0  
       STY    COLUP1  
LF05F: LDA    INTIM   
       BNE    LF05F   
       STA    WSYNC   
       STA    HMOVE   
       STA    VBLANK  
       STA    CXCLR   
       LDY    #$07    
LF06E: STA    WSYNC   
       STA    HMCLR   
       LDA    ($DD),Y 
       STA    GRP0    
       LDA    ($E1),Y 
       STA    GRP1    
       JSR    LF606   
       LDA    ($DF),Y 
       STA    GRP0    
       LDA    ($E3),Y 
       STA    GRP1    
       DEY            
       BPL    LF06E   
       LDA    #$40    
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       INY            
       STY    GRP0    
       STY    GRP1    
       STY    NUSIZ1  
       LDA    #$08    
       STA    REFP0   
       JSR    LF606   
       STA    HMCLR   
       STA    WSYNC   
       STA    HMOVE   
       LDA    $8C     
       STA    COLUBK  
       LDY    $EA     
       BMI    LF0AD   
       TYA            
LF0AD: STA    COLUP1  
       LDA    $C0     
       STA    $D9     
       LDA    $CC     
       STA    $DB     
       LDY    #$09    
LF0B9: STA    WSYNC   
       LDA    $8D     
       CPY    #$01    
       BNE    LF0C3   
       LDA    $8C     
LF0C3: STA    COLUBK  
       LDA    ($D9),Y 
       STA    GRP1    
       JSR    LF609   
       LDA    ($DB),Y 
       STA    GRP1    
       DEY            
       BNE    LF0B9   
       STA    WSYNC   
       STA    HMOVE   
       LDA    $8B     
       STA    COLUBK  
       LDA    #$09    
       STA    $95     
       LDA    ($D9),Y 
       STA    GRP1    
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       LDA    ($DB),Y 
       STA    GRP1    
       LDX    $95     
       LDA    $B6,X   
       STA    $D9     
       LDA    $C2,X   
       STA    $DB     
LF0F6: LDY    #$0F    
       LDA    #$00    
       STA    WSYNC   
       STA    HMOVE   
       STA    PF1     
       STA    PF2     
       STA    COLUPF  
       LDA    ($D9),Y 
       STA    GRP1    
       LDA    $CD,X   
       STA    $94     
       LDA    $AB,X   
       AND    #$0F    
       STA    $F6     
       LDA    ($DB),Y 
       DEY            
       STA    GRP1    
       LDA    $97,X   
       AND    #$07    
       STA    NUSIZ0  
       CMP    #$05    
       BNE    LF125   
       LDA    #$C8    
       BNE    LF128   
LF125: LDA    #$BD    
       NOP            
LF128: STA    $D7     
       LDA    ($D9),Y 
       STA    GRP1    
       LDA    $97,X   
       BMI    LF150   
       LDX    $F6     
       CPX    #$03    
       LDA    ($DB),Y 
LF138: DEX            
       BPL    LF138   
       STA    RESP0   
       BCS    LF142   
       JSR    LF609   
LF142: STA    GRP1    
       DEY            
       LDX    $95     
       LDA    $AB,X   
       STA    HMP0    
       LDA    $8C     
       JMP    LF16C   
LF150: NOP            
       NOP            
       STA    CXCLR   
       LDX    $95     
       LDA    $AB,X   
       STA    HMP0    
       LDA    $F6     
       SEC            
       SBC    #$06    
       TAX            
       LDA    ($DB),Y 
       DEY            
       STA    GRP1    
       LDA    $8C     
LF167: DEX            
       BPL    LF167   
       STA    RESP0   
LF16C: STA    WSYNC   
LF16E: STA    HMOVE   
       STA    COLUP0  
       LDA    ($D7),Y 
       STA    GRP0    
       LDA    $93     
       ORA    COLUP1  
       STA    $93     
       STA    CXCLR   
       LDA    ($D9),Y 
       STA    GRP1    
       CPY    #$06    
       LDA    $92     
       ORA    COLUP1  
       STA    $92     
       STA    CXCLR   
       LDA    ($DB),Y 
       STA    GRP1    
       BCC    LF19F   
       DEY            
       STA.w  $002B   
       LDA    $94     
       EOR    $86     
       AND    $87     
       JMP    LF16E   
LF19F: LDA    $8C     
       DEY            
       STA    WSYNC   
       STA    HMOVE   
       STA    COLUP0  
       LDA    ($D7),Y 
       STA    GRP0    
       LDA    $93     
       ORA    COLUP1  
       STA    $93     
       STA    CXCLR   
       LDA    ($D9),Y 
       STA    GRP1    
       NOP            
       LDA    $92     
       ORA    COLUP1  
       STA    $92     
       STA    CXCLR   
       LDA    ($DB),Y 
       STA    GRP1    
       DEY            
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$00    
       STA    GRP0    
       LDA    ($D9),Y 
       STA    GRP1    
       LDX    $95     
       BIT    $92     
       BPL    LF1DA   
       STX    $90     
LF1DA: LDA    $93     
       ORA    COLUP1  
       BPL    LF1E2   
       STX    $91     
LF1E2: LDA    ($DB),Y 
       STA    GRP1    
       STA    CXCLR   
       DEY            
       LDA    $95     
       BEQ    LF258   
       LDX    $8B     
       CMP    #$05    
       BNE    LF1F5   
       LDX    $89     
LF1F5: STA    WSYNC   
       STA    HMOVE   
       LDA    #$AA    
       STA    PF0     
       STA    PF2     
       LSR            
       STA    PF1     
       STX    COLUPF  
       LDA    ($D9),Y 
       STA    GRP1    
       DEC    $95     
       LDA    ($DB),Y 
       STA    GRP1    
       DEY            
       STA    WSYNC   
       STA    HMOVE   
       CPX    $89     
       BNE    LF220   
       LDA    #$00    
       STA    REFP0   
       LDA    $8B     
       JMP    LF222   
LF220: LDA    $8A     
LF222: STA    COLUPF  
       LDA    ($D9),Y 
       STA    GRP1    
       JSR    LF609   
       LDA    ($DB),Y 
       STA    GRP1    
       DEY            
       STA    WSYNC   
       STA    HMOVE   
       STX    COLUPF  
       LDA    ($D9),Y 
       STA    GRP1    
       LDX    $95     
       LDA    $B6,X   
       STA    $D9     
       LDA    $C2,X   
       STA    $F6     
       NOP            
       LDA    ($DB),Y 
       STA    GRP1    
       LDA    $F6     
       STA    $DB     
       LDA    #$00    
       STA    $92     
       STA    $93     
       STA    PF0     
       JMP    LF0F6   
LF258: STA    WSYNC   
       STA    HMOVE   
       LDA    ($D9),Y 
       STA    GRP1    
       JSR    LF608   
       JSR    LF609   
       LDA    ($DB),Y 
       STA    GRP1    
       DEY            
       BPL    LF258   
       LDY    #$0F    
LF26F: LDA    $8D     
       STA    WSYNC   
       STA    HMOVE   
       CPY    #$0F    
       BNE    LF27B   
       LDA    $8C     
LF27B: STA    COLUBK  
       LDA    $B5     
       STA    $D9     
       LDA    $C1     
       STA    $DB     
       LDA    ($D9),Y 
       STA    GRP1    
       LDA    ($DB),Y 
       STA    GRP1    
       DEY            
       CPY    #$06    
       BCS    LF26F   
       STA    WSYNC   
       STA    HMOVE   
       LDA    $8C     
       STA    COLUBK  
       LDX    #$00    
       STX    GRP1    
       STX    HMCLR   
       INX            
       STX    NUSIZ0  
       STX    NUSIZ1  
       STA    RESP0   
       STA    RESP1   
       LDA    #$10    
       STA    HMP1    
       LDA    $88     
       STA    COLUP0  
       STA    COLUP1  
       LDX    #$07    
LF2B5: STA    WSYNC   
       STA    HMOVE   
       LDA    LF695,X 
       STA    GRP0    
       LDA    LF69D,X 
       STA    GRP1    
       NOP            
       LDA    LF6AD,X 
       TAY            
       LDA    LF6A5,X 
       STA    GRP0    
       STY    GRP1    
       STA    HMCLR   
       DEX            
       BPL    LF2B5   
       LDA    #$1A    
       STA    TIM64T  
       LDA    $81     
       AND    #$01    
       TAX            
       ASL            
       TAY            
       LDA    $E7,X   
       AND    #$F0    
       LSR            
       BNE    LF2E9   
       LDA    #$50    
LF2E9: STA.wy $00DD,Y 
       LDA    $E7,X   
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA.wy $00E1,Y 
       LDY    #$00    
       JSR    LF68B   
       BPL    LF314   
       LDA    $EA,X   
       BEQ    LF349   
       AND    #$40    
       BEQ    LF32D   
       LDA    #$08    
       STA    AUDC0,X 
       LDA    $EA,X   
       STA    AUDF0,X 
       DEC    $EA,X   
       LDA    $EA,X   
       AND    #$0F    
       TAY            
LF314: STY    AUDV0,X 
       CMP    #$00    
       BNE    LF31E   
       LDA    #$00    
       STA    $EA,X   
LF31E: LDA    SWCHB   
       AND    LF7FE,X 
       BEQ    LF32A   
       LDA    #$06    
       STA    $8E,X   
LF32A: JMP    LF42E   
LF32D: LDA    $EA,X   
       STA    AUDV0,X 
       LDA    #$0C    
       STA    AUDC0,X 
       TXA            
       ADC    #$06    
       STA    AUDF0,X 
       DEC    $EA,X   
       LDA    $EA,X   
       AND    #$0F    
       BNE    LF346   
       LDA    #$00    
       STA    $EA,X   
LF346: JMP    LF42E   
LF349: LDA    $83     
       CMP    #$08    
       LDA    #$02    
       BCS    LF374   
       LDA    $E6     
       BEQ    LF35C   
       LDA    #$00    
       STA    AUDV0,X 
       JMP    LF42E   
LF35C: LDA    $EA     
       ORA    $EB     
       BNE    LF38C   
       LDA    $82     
       EOR    #$40    
       CMP    #$E0    
       BCC    LF38C   
       LDA    $82     
       EOR    $81     
       AND    #$3F    
       BEQ    LF38C   
       LDA    $82     
LF374: AND    #$03    
       ORA    #$04    
       STA    AUDF0   
       SEC            
       SBC    #$01    
       STA    AUDF1   
       LDA    #$01    
       STA    AUDC0   
       STA    AUDC1   
       STA    AUDV0   
       STA    AUDV1   
       JMP    LF42E   
LF38C: LDA    $8E,X   
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       CPY    #$0A    
       BCC    LF399   
       LDY    #$09    
LF399: LDA    #$00    
       CPY    #$05    
       BCC    LF3A1   
       LDA    #$01    
LF3A1: STA    $FB     
       LDA.wy $0097,Y 
       STA    $FA     
       LSR            
       LSR            
       LSR            
       LSR            
       AND    #$07    
       STA    $F8     
       CMP    #$02    
       LDA    #$20    
       BCC    LF3BC   
       LDA    #$FF    
       STA    $FB     
       LDA    #$10    
LF3BC: STA    $F7     
       LDA    #$03    
       STA    AUDC0,X 
       LDA.wy $00EC,Y 
       STA    $F9     
       LDA    #$7F    
       STA    $FD     
       LDA    $FB     
       STA    $FE     
       LDA    $FA     
       AND    #$07    
       ASL            
       ASL            
       ORA    #$03    
       TAY            
LF3D8: LDA    $FB     
       STA    $F6     
       CLC            
       LDA    LF7DA,Y 
       ADC    $F9     
       CMP    #$A0    
       BCC    LF3E8   
       SBC    #$A0    
LF3E8: STA    $FC     
       LDA    LF7F6,X 
       SEC            
       SBC    $FC     
       BCS    LF3F6   
       EOR    #$FF    
       INC    $F6     
LF3F6: CMP    $FD     
       BCS    LF400   
       STA    $FD     
       LDA    $F6     
       STA    $FE     
LF400: DEY            
       TYA            
       AND    #$03    
       BNE    LF3D8   
       LDA    $FD     
       CMP    $F7     
       BCC    LF41B   
       LDA    #$0F    
       STA    AUDC0,X 
       LDA    #$1F    
       STA    AUDF0,X 
       LDA    #$01    
       STA    AUDV0,X 
       JMP    LF42E   
LF41B: DEC    $F7     
       EOR    $F7     
       LSR            
       LSR            
       STA    AUDV0,X 
       LDY    $FE     
       INY            
       LDA    LF7F8,Y 
       CLC            
       ADC    $F8     
       STA    AUDF0,X 
LF42E: LDA    $81     
       AND    #$1F    
       BNE    LF43E   
       LDA    $82     
       ASL            
       ASL            
       ASL            
       EOR    $82     
       ASL            
       ROL    $82     
LF43E: LDA    $E6     
       BNE    LF450   
       LDX    #$09    
       LDA    #$FF    
       STA    $96     
LF448: JSR    LF617   
       DEX            
       CPX    #$05    
       BCS    LF448   
LF450: LDA    INTIM   
       BNE    LF450   
       LDY    #$82    
       STY    WSYNC   
       STY    VBLANK  
       STY    VSYNC   
       STY    WSYNC   
       STY    WSYNC   
       STY    WSYNC   
       STA    VSYNC   
       INC    $81     
       BNE    LF472   
       INC    $E9     
       INC    $E5     
       BNE    LF472   
       SEC            
       ROR    $E5     
LF472: LDY    #$FF    
       LDA    SWCHB   
       AND    #$08    
       BNE    LF47D   
       LDY    #$0F    
LF47D: TYA            
       LDY    #$00    
       BIT    $E5     
       BPL    LF488   
       AND    #$F7    
       LDY    $E5     
LF488: STY    $86     
       ASL    $86     
       STA    $87     
       LDA    #$2C    
       STA    WSYNC   
       STA    TIM64T  
       LDA    $E6     
       BNE    LF4A5   
       LDX    #$04    
       LDA    #$01    
       STA    $96     
LF49F: JSR    LF617   
       DEX            
       BPL    LF49F   
LF4A5: LDA    SWCHA   
       TAY            
       AND    #$0F    
       STA    $85     
       TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $84     
       INY            
       BEQ    LF4BB   
       LDA    #$00    
       STA    $E5     
LF4BB: LDA    $82     
       BNE    LF4C3   
       INC    $82     
       BNE    LF4DB   
LF4C3: JSR    LF68B   
       BMI    LF4CD   
       LDX    #$E5    
       JMP    LF004   
LF4CD: LDY    #$00    
       BCS    LF4F4   
       LDA    $83     
       BEQ    LF4D9   
       DEC    $83     
       BPL    LF4F6   
LF4D9: INC    $80     
LF4DB: JSR    LF5A7   
       LDA    $80     
       AND    #$07    
       STA    $80     
       STA    $E5     
       ORA    #$A0    
       TAY            
       INY            
       STY    $E7     
       LDA    #$AA    
       STA    $E8     
       LDY    #$1E    
       STY    $E6     
LF4F4: STY    $83     
LF4F6: LDA    $E6     
       BEQ    LF4FD   
       JMP    LF00F   
LF4FD: LDX    #$01    
LF4FF: LDA    $EA,X   
       BNE    LF52F   
       LDA    $84,X   
       LSR            
       BCS    LF520   
       INC    $8E,X   
       LDY    $8E,X   
       CPY    #$B2    
       BCC    LF520   
       SED            
       LDA    $E7,X   
       CLC            
       ADC    #$01    
       STA    $E7,X   
       CLD            
       LDA    #$8F    
       STA    $EA,X   
       JMP    LF52B   
LF520: LSR            
       BCS    LF52F   
       DEC    $8E,X   
       LDA    $8E,X   
       CMP    #$06    
       BCS    LF52F   
LF52B: LDA    #$06    
       STA    $8E,X   
LF52F: LDA    $EA,X   
       BNE    LF53B   
       LDA    $90,X   
       BMI    LF53B   
       LDA    #$4F    
       STA    $EA,X   
LF53B: DEX            
       BPL    LF4FF   
       LDX    #$00    
       JSR    LF664   
       STA.wy $00B5,Y 
       CPY    #$0B    
       BEQ    LF550   
       CLC            
       ADC    #$10    
       STA.wy $00B6,Y 
LF550: INX            
       JSR    LF664   
       STA.wy $00C1,Y 
       CPY    #$0B    
       BEQ    LF561   
       CLC            
       ADC    #$10    
       STA.wy $00C2,Y 
LF561: LDA    $81     
       AND    #$70    
       BNE    LF5A4   
       LDA    $80     
       AND    #$04    
       BEQ    LF5A4   
       LDA    $81     
       AND    #$0F    
       TAX            
       CPX    #$0A    
       BCS    LF5A4   
       LDA    $97,X   
       LSR            
       LSR            
       LSR            
       LSR            
       AND    #$07    
       TAY            
       LDA    $81     
       EOR    $82     
       LSR            
       BCC    LF58B   
       DEY            
       BPL    LF58B   
       LDY    #$00    
LF58B: LSR            
       BCC    LF595   
       INY            
       CPY    #$06    
       BCC    LF595   
       LDY    #$05    
LF595: TYA            
       ASL            
       ASL            
       ASL            
       ASL            
       STA    $F6     
       LDA    $97,X   
       AND    #$8F    
       ORA    $F6     
       STA    $97,X   
LF5A4: JMP    LF00F   
LF5A7: LDX    #$01    
LF5A9: LDA    #$06    
       STA    $8E,X   
       LDA    #$00    
       STA    AUDV0,X 
       DEX            
       BPL    LF5A9   
       LDX    #$0D    
       LDA    #$F7    
LF5B8: STA    $D7,X   
       DEX            
       DEX            
       BPL    LF5B8   
       LDX    #$09    
LF5C0: LDA    #$01    
       STA    $A1,X   
       LDA    LF6E3,X 
       STA    $CD,X   
       CLC            
       LDA    $80     
       AND    #$03    
       TAY            
       TXA            
       ADC    LF7D6,Y 
       TAY            
       LDA    LF6B5,Y 
       STA    $97,X   
       LDA    #$60    
       STA    $AB,X   
       LDA    #$50    
       STA    $B5,X   
       STA    $B7,X   
       STA    $C1,X   
       STA    $C3,X   
       DEX            
       BPL    LF5C0   
       RTS            

LF5EB: CLC            
       ADC    #$2E    
       TAY            
       AND    #$0F    
       STA    $F6     
       TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       CLC            
       ADC    $F6     
       CMP    #$0F    
       BCC    LF603   
       SBC    #$0F    
       INY            
LF603: EOR    #$07    
       ASL            
LF606: ASL            
       ASL            
LF608: ASL            
LF609: RTS            

LF60A: JSR    LF5EB   
       STA    HMP0,X  
       STA    WSYNC   
LF611: DEY            
       BPL    LF611   
       STA    RESP0,X 
       RTS            

LF617: DEC    $A1,X   
       BPL    LF646   
       LDA    $97,X   
       LSR            
       LSR            
       LSR            
       LSR            
       AND    #$07    
       SEC            
       SBC    #$01    
       BPL    LF631   
       LDA    $EC,X   
       CLC            
       ADC    $96     
       STA    $EC,X   
       LDA    #$00    
LF631: STA    $A1,X   
       LDA    $EC,X   
       CLC            
       ADC    $96     
       CMP    #$C8    
       BCC    LF63E   
       LDA    #$9F    
LF63E: CMP    #$A0    
       BCC    LF644   
       LDA    #$00    
LF644: STA    $EC,X   
LF646: LDA    $EC,X   
       JSR    LF5EB   
       STA    $F6     
       DEY            
       DEY            
       DEY            
       ASL    $97,X   
       CPY    #$06    
       ROR    $97,X   
       TYA            
       ORA    $F6     
       STA    $AB,X   
       LDA    #$50    
       STA    $B5,X   
       STA    $C3,X   
       STA    $B9,X   
       RTS            

LF664: LDA    $8E,X   
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    $8E,X   
       AND    #$0F    
       STA    $F6     
       LDA    $EA,X   
       BEQ    LF67D   
       AND    #$40    
       BEQ    LF67D   
       LDA    #$A0    
       BNE    LF687   
LF67D: LDA    $F6     
       LSR            
       LSR            
       LDA    #$60    
       BCC    LF687   
       LDA    #$80    
LF687: SEC            
       SBC    $F6     
       RTS            

LF68B: LDA    SWCHB   
       LSR            
       ROR            
       AND    REFP1   
       AND    PF0     
       RTS            

LF695: .byte $00,$AD,$A9,$E9,$A9,$ED,$41,$0F
LF69D: .byte $00,$50,$58,$5C,$56,$53,$11,$F0
LF6A5: .byte $00,$BA,$8A,$BA,$A2,$3A,$80,$FE
LF6AD: .byte $00,$E9,$AB,$AF,$AD,$E9,$00,$00
LF6B5: .byte $40,$31,$22,$13,$04,$15,$14,$23,$32,$41,$46,$36,$20,$16,$05,$00
       .byte $16,$20,$36,$46,$05,$15,$25,$15,$05,$05,$15,$25,$15,$05,$34,$14
       .byte $24,$00,$15,$15,$00,$24,$14,$34
LF6DD: .byte $1A,$1A,$0C,$06,$00,$08
LF6E3: .byte $1A,$D8,$44,$88,$24,$82,$4A,$12,$DC,$42,$00,$00,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$3C,$66,$66
       .byte $66,$66,$66,$66,$3C,$7E,$18,$18,$18,$18,$78,$38,$18,$7E,$60,$60
       .byte $3C,$06,$06,$46,$3C,$3C,$46,$06,$0C,$0C,$06,$46,$3C,$0C,$0C,$0C
       .byte $7E,$4C,$2C,$1C,$0C,$7C,$46,$06,$06,$7C,$60,$60,$7E,$3C,$66,$66
       .byte $66,$7C,$60,$62,$3C,$18,$18,$18,$18,$0C,$06,$42,$7E,$3C,$66,$66
       .byte $3C,$3C,$66,$66,$3C,$3C,$46,$06,$3E,$66,$66,$66,$3C,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$08,$28,$30
       .byte $10,$18,$38,$30,$10,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$20,$28,$18
       .byte $10,$30,$38,$18,$10,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$08,$3C,$1E
       .byte $3C,$3E,$78,$3C,$10,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$66,$FE
       .byte $CF,$B3,$B3,$B3,$B3,$CF,$FE,$66,$00,$85,$FF,$85,$FD,$FD,$FD,$FD
       .byte $85,$FF,$85
LF7D6: .byte $00,$0A,$14,$1E
LF7DA: .byte $00,$00,$00,$00,$00,$00,$10,$10,$00,$00,$00,$20,$00,$00,$10,$20
       .byte $00,$00,$00,$40,$00,$00,$00,$00,$00,$00,$20,$40
LF7F6: .byte $30,$68
LF7F8: .byte $10,$10,$11,$10,$00,$F0
LF7FE: .byte $40,$80
