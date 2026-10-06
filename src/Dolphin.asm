; Disassembly of roms/Dolphin.bin
; Disassembled Tue Oct  6 15:21:09 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Dolphin.bin
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
PF1     =  $0E
RESP0   =  $10
RESP1   =  $11
RESM0   =  $12
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
ENABL   =  $1F
HMP0    =  $20
HMP1    =  $21
HMM0    =  $22
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
       JSR    LFA91   
       LDA    $85     
       BNE    LF04C   
       LDX    #$01    
       STX    $85     
       JMP    LF696   
LF01A: .byte $3C,$2E,$48
LF01D: .byte $00,$1E,$3A,$55
LF021: LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    GRP0    
       STA    VDELP0  
       STA    VDELP1  
       RTS            

LF02E: LDX    #$07    
LF030: LDA    $C8,X   
       CLC            
       JSR    LFB84   
       STY    $F9     
       ORA    $F9     
       STA    $86,X   
       CPX    #$04    
       BMI    LF049   
       CPY    #$00    
       BNE    LF049   
       CLC            
       ADC    #$50    
       STA    $86,X   
LF049: DEX            
       BPL    LF030   
LF04C: LDA    #$88    
       STA    COLUBK  
       LDA    #$1E    
       STA    COLUPF  
       LDY    $B1     
       LDA    LFBCC,Y 
       STA    COLUP0  
       STA    COLUP1  
       STA    WSYNC   
       LDX    #$F3    
       STX    HMP0    
       JSR    LFBA3   
       STA    RESP0   
       STA    RESP1   
       STX    NUSIZ1  
       JSR    LFBA5   
       STA    RESBL   
       STX    NUSIZ0  
LF073: LDA    INTIM   
       BNE    LF073   
       STA    WSYNC   
       STA    HMOVE   
       TAX            
       LDA    $A1     
       ROL            
       ROL            
       ROL            
       AND    #$02    
       STA    VBLANK  
       LDA    #$07    
       STA    $FA     
       JSR    LFC57   
       STA    WSYNC   
       STA    HMOVE   
       JSR    LF021   
       LDA    #$0E    
       STA    COLUP0  
       STA    COLUP1  
       LDX    #$07    
       STX    NUSIZ0  
       STX    NUSIZ1  
       STA    WSYNC   
       STA    HMOVE   
       LDA    $8C     
       AND    #$0F    
       TAY            
       INC    $F2,X   
LF0AB: DEY            
       BPL    LF0AB   
       STA    RESP0   
       STA    WSYNC   
       STA    HMOVE   
       LDA    $8D     
       AND    #$0F    
       TAY            
       DEC    $F2,X   
LF0BB: DEY            
       BPL    LF0BB   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       JSR    LFBA1   
       LDA    $8C     
       STA    HMP0    
       LDA    $8D     
       STA    HMP1    
       INY            
LF0D0: STA    WSYNC   
       STA    HMOVE   
       LDA    LFE9F,X 
       STA    GRP0    
       LDA    LFEA7,X 
       STA    GRP1    
       STY    PF1     
       LDA    LFE78,X 
       STA    ENABL   
       STA    HMBL    
       LDA    LFEB9,X 
       STA    CTRLPF  
       LDA    LFE71,X 
       STA    PF1     
       LDA    LFB20,X 
       STA    HMP0    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    HMP1    
       DEX            
       BPL    LF0D0   
       LDX    #$01    
       STA    WSYNC   
       STA    HMOVE   
       INC    $F9     
LF107: LDA    $86,X   
       AND    #$0F    
       TAY            
LF10C: DEY            
       BPL    LF10C   
       STA    RESP0,X 
       STA    WSYNC   
       STA    HMOVE   
       DEX            
       BEQ    LF107   
       LDA    $8A     
       AND    #$0F    
       TAY            
       INX            
LF11E: DEY            
       BPL    LF11E   
       STA    RESM0   
       STA    WSYNC   
       STA    HMOVE   
       LDA    $8B     
       AND    #$0F    
       TAY            
       DEC    $F9,X   
LF12E: DEY            
       BPL    LF12E   
       STA    RESBL   
       STA    WSYNC   
       STA    HMOVE   
       LDY    #$15    
       STY    NUSIZ0  
       STY    NUSIZ1  
       LDA    $F7     
       STA    REFP1   
       ASL            
       STA    REFP0   
       LDA    $86     
       STA    HMP0    
       LDA    $87     
       STA    HMP1    
       LDA    $8A     
       STA    HMM0    
       LDA    $8B     
       STA    HMBL    
       STA    WSYNC   
       STA    HMOVE   
       LDY    $C0     
       LDA    LFB7F,Y 
       STA    $FC     
       LDY    #$14    
       LDA    #$06    
       STA    $FB     
       LDA    $85     
       STA    $F9     
       LDX    #$0E    
       STX    $FA     
       STX    COLUPF  
       LDX    $B8     
       LDA    $8E     
       STA    COLUP0  
       LDA    $8F     
       STA    COLUP1  
       STA    HMCLR   
       STA    CXCLR   
       CLV            
LF17E: LDA    LFBA7,Y 
       CPY    #$09    
       STA    WSYNC   
       STA    HMOVE   
       BCS    LF195   
       LDA    #$96    
       ASL    $F9     
       BCC    LF191   
       LDA    #$92    
LF191: STA    COLUBK  
       BVC    LF1A1   
LF195: STA    COLUBK  
       LDA    ($D2),Y 
       STA    CTRLPF  
       LDA    ($D0),Y 
       STA    ENABL   
       STA    HMBL    
LF1A1: DEX            
       BEQ    LF1C0   
LF1A4: DEY            
       BNE    LF17E   
       LDY    $B9     
       STY    $F9     
       LDA    #$10    
       STA    CTRLPF  
       LDA    $90     
       STA    COLUPF  
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$80    
       STA    COLUBK  
       LDY    $FA     
       JMP    LF251   
LF1C0: LDX    #$8E    
LF1C2: DEY            
       BNE    LF1E1   
       LDY    $B9     
       STY    $F9     
       LDA    #$10    
       STA    CTRLPF  
       LDA    $90     
       STA    COLUPF  
       LDA    $8F     
       STA    COLUP1  
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$80    
       STA    COLUBK  
       LDY    $FA     
       BNE    LF251   
LF1E1: LDA    $67,X   
       CPY    #$09    
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP1    
       BCS    LF1FF   
       LDA    #$96    
       ASL    $F9     
       BCC    LF1F5   
       LDA    #$92    
LF1F5: STA    COLUBK  
       CPY    #$04    
       BPL    LF20E   
       STA    COLUP1  
       BVC    LF20E   
LF1FF: LDA    ($D2),Y 
       STA    CTRLPF  
       LDA    LFBA7,Y 
       STA    COLUBK  
       LDA    ($D0),Y 
       STA    ENABL   
       STA    HMBL    
LF20E: LDA    $58,X   
       STA    HMP1    
       DEX            
       BMI    LF1C2   
       BPL    LF1A4   
LF217: BNE    LF21B   
       LDY    #$8F    
LF21B: LDA    #$00    
       BEQ    LF23A   
LF21F: BNE    LF223   
       LDX    #$8E    
LF223: LDY    #$00    
       BVC    LF245   
LF227: STA    ENAM0   
       ASL            
       STA    HMM0    
LF22C: DEY            
       STY    $FA     
       LDY    $F9     
       DEY            
       BPL    LF217   
       LDA    $C5     
       STA    HMP0    
       LDA    ($C6),Y 
LF23A: STY    $F9     
       DEX            
       BPL    LF21F   
       LDY    $5A,X   
       STY    HMP1    
       LDY    $68,X   
LF245: STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       STY    GRP1    
       LDY    $FA     
       BEQ    LF259   
LF251: LDA    ($C1),Y 
       BPL    LF227   
       STA    NUSIZ0  
       BMI    LF22C   
LF259: DEC    $FB     
       BMI    LF2D5   
       BIT    $FC     
       ASL    $FC     
       LDY    $F9     
       DEY            
       BPL    LF2B4   
       LDA    $C5     
       STA    HMP0    
       LDA    ($C6),Y 
LF26C: STY    $F9     
       DEX            
       BPL    LF2BC   
       LDY    $5A,X   
       STY    HMP1    
       LDY    $68,X   
LF277: STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       STY    GRP1    
       LDY    #$0F    
       BVC    LF251   
       LDA    ($C3),Y 
       STA    ENABL   
LF287: DEY            
       STY    $FA     
       LDY    $F9     
       STA    HMBL    
       DEY            
       BPL    LF2C5   
       LDA    $C5     
       STA    HMP0    
       LDA    ($C6),Y 
LF297: STY    $F9     
       DEX            
       BPL    LF2CD   
       LDY    $5A,X   
       STY    HMP1    
       LDY    $68,X   
LF2A2: STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       STY    GRP1    
       LDY    $FA     
       BEQ    LF259   
       LDA    ($C3),Y 
       STA    ENABL   
       BVS    LF287   
LF2B4: BNE    LF2B8   
       LDY    #$8F    
LF2B8: LDA    #$00    
       BEQ    LF26C   
LF2BC: BNE    LF2C0   
       LDX    #$8E    
LF2C0: LDY    #$00    
       JMP    LF277   
LF2C5: BNE    LF2C9   
       LDY    #$8F    
LF2C9: LDA    #$00    
       BEQ    LF297   
LF2CD: BNE    LF2D1   
       LDX    #$8E    
LF2D1: LDY    #$00    
       BVS    LF2A2   
LF2D5: STA    WSYNC   
       STA    HMOVE   
       STA    RESBL   
       LDX    #$00    
       STX    COLUPF  
       STX    REFP0   
       STX    REFP1   
       LDA    #$38    
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$30    
       STA    CTRLPF  
       STA    HMBL    
       STA    WSYNC   
       STA    HMOVE   
       JSR    LFD00   
       LDA    #$0E    
       STA    COLUP1  
       STA    COLUP0  
       LDX    #$03    
       STX    NUSIZ1  
       STX    NUSIZ0  
       LDY    #$07    
       LDA    $A3     
       AND    #$1F    
       CMP    #$14    
       BCS    LF315   
       LDY    #$00    
       CMP    #$0C    
       BCC    LF315   
       SBC    #$0C    
       TAY            
LF315: STY    $FA     
       TYA            
       EOR    #$07    
       STA    $FB     
       LDA    #$00    
       STA    WSYNC   
       STA    HMOVE   
       STA    COLUBK  
       LDA    #$A8    
       LDX    #$08    
       CLC            
LF329: STA    $93,X   
       ADC    #$08    
       STA    $91,X   
       ADC    #$08    
       DEX            
       DEX            
       DEX            
       DEX            
       BPL    LF329   
       STA    WSYNC   
       STA    HMOVE   
       LDX    #$00    
       JSR    LFC57   
       LDA    #$80    
       STA    HMP0    
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       ASL            
       STA    GRP0    
       STA    GRP1    
       STA    GRP0    
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
LF364: LDA    LFFA0,Y 
       TAX            
       LDA    LFF80,Y 
       STA    GRP0    
       STA    WSYNC   
       STA    HMOVE   
       LDA    LFFD8,Y 
       STA    COLUPF  
       LDA    LFF88,Y 
       STA    GRP1    
       LDA    LFF90,Y 
       STA    GRP0    
       INC    $FA     
       LDA    LFF98,Y 
       STA    GRP1    
       STX    GRP0    
       STA    GRP1    
       LDA    #$00    
       STA    COLUPF  
       DEY            
       DEC    $FB     
       BPL    LF364   
       LDA    #$1F    
       LDX    #$82    
       STA    WSYNC   
       STA    TIM64T  
       STX    VBLANK  
       JSR    LF021   
       STA    PF1     
       STA    ENABL   
       STA    HMCLR   
       LDX    #$02    
       LDY    #$0A    
LF3AC: LDA    $A4,X   
       AND    #$F0    
       LSR            
       STA.wy $0091,Y 
       DEY            
       DEY            
       LDA    $A4,X   
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA.wy $0091,Y 
       DEY            
       DEY            
       DEX            
       BPL    LF3AC   
       LDA    #$50    
       LDX    #$0A    
LF3C9: LDY    $91,X   
       BNE    LF3D3   
       STA    $91,X   
       DEX            
       DEX            
       BNE    LF3C9   
LF3D3: LDA    $A6     
       AND    #$0E    
       CMP    $B0     
       STA    $B0     
       BEQ    LF3EA   
       SED            
       LDA    $A7     
       CMP    #$AA    
       BEQ    LF3E9   
       CLC            
       ADC    #$01    
       STA    $A7     
LF3E9: CLD            
LF3EA: LDA    $A7     
       BNE    LF3F4   
       LDA    #$50    
       STA    $9D     
       BNE    LF404   
LF3F4: AND    #$F0    
       LSR            
       BNE    LF3FB   
       LDA    #$50    
LF3FB: STA    $9D     
       LDA    $A7     
       AND    #$0F    
       ASL            
       ASL            
       ASL            
LF404: STA    $9F     
       JSR    LFA88   
       CPX    $A9     
       BEQ    LF416   
       LDA    $A9     
       LSR            
       BCC    LF416   
       LDA    #$9E    
       BNE    LF419   
LF416: LDA    LFECA,X 
LF419: STA    $8E     
       LDA    $81     
       TAY            
       AND    #$07    
       BNE    LF443   
       LDX    #$01    
LF424: DEC    $CE,X   
       BNE    LF42C   
       LDA    #$A0    
       STA    $CE,X   
LF42C: TYA            
       AND    #$3F    
       BEQ    LF434   
       DEX            
       BEQ    LF424   
LF434: LDX    #$01    
LF436: LDA    $85     
       ASL            
       ASL            
       ASL            
       EOR    $85     
       ASL            
       ROL    $85     
       DEX            
       BPL    LF436   
LF443: LDA    $A6     
       CMP    #$AB    
       BEQ    LF490   
       LDX    #$01    
LF44B: LDA    $B5,X   
       BEQ    LF46E   
       TYA            
       LSR            
       BCC    LF46E   
       AND    #$01    
       STA    $F9     
       CPX    $F9     
       BNE    LF46E   
       LDA    LFB71,X 
       JSR    LFB36   
       DEC    $B5,X   
       LDA    LFED8,X 
       STA    AUDC1   
       STA    AUDF1   
       LDA    #$02    
       STA    $BF     
LF46E: DEX            
       BPL    LF44B   
       LDA    $BF     
       BEQ    LF478   
       ASL            
       DEC    $BF     
LF478: STA    AUDV1   
       LDA    $BE     
       BEQ    LF490   
       LDA    $BF     
       BNE    LF490   
       LDA    #$0A    
       STA    AUDC1   
       TYA            
       AND    #$08    
       LSR            
       ORA    #$13    
       STA    AUDV1   
       STA    AUDF1   
LF490: LDY    $F6     
       LDA    $A3     
       BEQ    LF4A0   
       LDA    $A2     
       BPL    LF49D   
       JMP    LF5A3   
LF49D: JMP    LF61D   
LF4A0: TYA            
       BMI    LF49D   
       BIT    $F7     
       BVS    LF49D   
       LDA    $BC     
       BNE    LF4BE   
       BIT    COLUP1  
       BPL    LF4BE   
       LDA    #$80    
       STA    $F6     
       STA    $81     
       ASL            
       STA    $A8     
       STA    $BF     
       STA    $BE     
       BEQ    LF49D   
LF4BE: TYA            
       AND    #$02    
       BEQ    LF4EC   
       LDA    #$C0    
       BIT    $F6     
       BNE    LF4CD   
       BIT    RSYNC   
       BVS    LF4D0   
LF4CD: JMP    LF538   
LF4D0: JSR    LFA88   
       LDA    LFBA7,X 
       STA    $B5     
       LDA    #$BA    
       STA    $D0     
       LDA    SWCHB   
       LDX    $B1     
       BNE    LF4E4   
       ASL            
LF4E4: EOR    #$80    
       ORA    #$7F    
       STA    $BD     
       BNE    LF538   
LF4EC: BIT    RSYNC   
       BVC    LF512   
       TYA            
       AND    #$10    
       BNE    LF512   
       TYA            
       LSR            
       LDA    $F7     
       AND    #$08    
       BCC    LF501   
       BNE    LF507   
       BEQ    LF503   
LF501: BEQ    LF507   
LF503: DEC    $BE     
       BNE    LF50C   
LF507: LDA    #$04    
       JSR    LFB28   
LF50C: TYA            
       ORA    #$10    
       STA    $F6     
       TAY            
LF512: BIT    WSYNC   
       BVC    LF538   
       TYA            
       AND    #$20    
       BNE    LF538   
       TYA            
       LSR            
       LDA    $F7     
       AND    #$04    
       BCC    LF527   
       BEQ    LF52D   
       BNE    LF529   
LF527: BNE    LF52D   
LF529: DEC    $BE     
       BNE    LF532   
LF52D: LDA    #$0D    
       JSR    LFB28   
LF532: TYA            
       ORA    #$20    
       STA    $F6     
       TAY            
LF538: LDA    SWCHB   
       LSR            
       BCC    LF580   
       TYA            
       AND    #$02    
       BEQ    LF56A   
       LDA    $BD     
       BNE    LF56A   
       LDA    $CD     
       BNE    LF551   
       LDA    $81     
       AND    #$20    
       BEQ    LF56A   
LF551: LDA    #$04    
       STA    AUDC0   
       LDA    $81     
       AND    #$0F    
       TAX            
       LDA    LFBBC,X 
       STA    AUDF0   
       CLC            
       ADC    $CD     
       LSR            
       LSR            
       LSR            
       LSR            
       STA    AUDV0   
       BPL    LF5A3   
LF56A: LDA    #$08    
       AND    $F7     
       BNE    LF586   
       LDA    $CC     
       CMP    #$20    
       BCS    LF580   
       CMP    #$01    
       BNE    LF590   
LF57A: LDA    $81     
       AND    #$08    
       BEQ    LF590   
LF580: LDA    #$00    
       STA    AUDV0   
       BEQ    LF5A3   
LF586: LDA    $CC     
       CMP    #$80    
       BCC    LF580   
       CMP    #$A0    
       BEQ    LF57A   
LF590: LDA    #$0C    
       STA    AUDC0   
       LDA    $81     
       STA    AUDV0   
       LDX    $B2     
       LDA    LFE80,X 
       TAX            
       LDA    LFED3,X 
       STA    AUDF0   
LF5A3: LDA    $F7     
       AND    #$08    
       LSR            
       LSR            
       LSR            
       STA    $F9     
       TYA            
       AND    #$01    
       EOR    $F9     
       TAX            
       LDA    LFEEB,X 
       STA    $90     
       LDA    $A9     
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       INX            
       BCC    LF5C7   
       LDA    $81     
       LSR            
       BCC    LF5C7   
       INX            
LF5C7: STX    $F9     
       LDA    $CD     
       BNE    LF5E4   
       LDA    $81     
       AND    #$3F    
       BNE    LF61D   
       TYA            
       AND    #$03    
       TAX            
       LDA    LF01A,X 
       STA    $C3     
       CPX    #$01    
       BNE    LF5E4   
       LDA    #$A0    
       STA    $CD     
LF5E4: TYA            
       ROR            
       LDA    $CD     
       BCC    LF5F4   
       SBC    $F9     
       STA    $CD     
       BEQ    LF5FC   
       BCC    LF5FC   
       BCS    LF61D   
LF5F4: ADC    $F9     
       STA    $CD     
       CMP    #$A0    
       BCC    LF61D   
LF5FC: LDA    #$00    
       STA    $CD     
       STA    $BE     
       LDA    #$48    
       STA    $C3     
       TYA            
       AND    #$08    
       STA    $F6     
       LDA    $B3     
       BEQ    LF615   
       DEC    $B3     
       LDA    #$02    
       BNE    LF619   
LF615: LDA    $85     
       AND    #$01    
LF619: ORA    $F6     
       STA    $F6     
LF61D: LDA    INTIM   
       BNE    LF61D   
       LDY    #$82    
       STY    WSYNC   
       STY    VSYNC   
       STY    WSYNC   
       STY    WSYNC   
       STY    WSYNC   
       STA    VSYNC   
       INC    $81     
       BNE    LF647   
       INC    $A2     
       LDA    $A2     
       AND    #$C7    
       STA    $A2     
       AND    #$07    
       BNE    LF647   
       INC    $A1     
       BNE    LF647   
       SEC            
       ROR    $A1     
LF647: LDA    #$30    
       STA    WSYNC   
       STA    TIM64T  
       LDY    SWCHA   
       LDA    $81     
       AND    #$07    
       BNE    LF669   
       LDA    $A3     
       BEQ    LF669   
       LDY    #$FF    
       DEC    $A3     
       BNE    LF669   
       STY    $A3     
       LDA    $A2     
       ORA    #$80    
       STA    $A2     
LF669: TYA            
       AND    #$0F    
       STA    $84     
       TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $83     
       INY            
       BEQ    LF67C   
       LDA    #$00    
       STA    $A1     
LF67C: LDA    SWCHB   
       LSR            
       BCS    LF687   
       LDX    #$A1    
       JMP    LF004   
LF687: LDY    #$00    
       LSR            
       BCS    LF6AC   
       LDA    $82     
       BEQ    LF694   
       DEC    $82     
       BPL    LF6AE   
LF694: INC    $80     
LF696: LDA    $80     
       AND    #$07    
       STA    $80     
       STA    $A1     
       STA    $A2     
       TAY            
       INY            
       STY    $A7     
       STY    $AD     
       LDA    #$FF    
       STA    $A3     
       LDY    #$1E    
LF6AC: STY    $82     
LF6AE: LDA    $A3     
       BEQ    LF6CD   
       JSR    LFCF1   
       LDA    $AD     
       CMP    #$AA    
       BNE    LF6BF   
       LDA    $81     
       BEQ    LF713   
LF6BF: LDA    $A2     
       BPL    LF6CA   
       LDY    #$00    
       STY    $F7     
       JMP    LF94D   
LF6CA: JMP    LF02E   
LF6CD: BIT    $F6     
       BMI    LF6D4   
       JMP    LF7A9   
LF6D4: LDA    $A6     
       CMP    #$AB    
       BNE    LF6E0   
       LDA    $81     
       BEQ    LF6F9   
       BNE    LF6CA   
LF6E0: LDA    $81     
       BNE    LF746   
       LDA    $BD     
       BNE    LF732   
       STA    $B3     
       SED            
       SEC            
       LDA    $A7     
       SBC    #$01    
       STA    $A7     
       CLD            
       BCS    LF708   
       LDY    #$AA    
       STY    $A7     
LF6F9: LDA    $80     
       LSR            
       BCC    LF702   
       CPY    $AD     
       BNE    LF713   
LF702: LDY    #$FF    
       STY    $A3     
       BNE    LF743   
LF708: LDA    $80     
       LSR            
       BCC    LF73A   
       LDA    $AD     
       CMP    #$AA    
       BEQ    LF73A   
LF713: LDX    #$05    
LF715: LDA    $AA,X   
       LDY    $A4,X   
       STA    $A4,X   
       STY    $AA,X   
       DEX            
       BPL    LF715   
       LDA    $A6     
       AND    #$0E    
       STA    $B0     
       LDA    $B1     
       EOR    #$01    
       STA    $B1     
       LDA    $A3     
       BEQ    LF73A   
       BNE    LF6BF   
LF732: JSR    LFA88   
       LDA    LFBA7,X 
       STA    $B6     
LF73A: JSR    LFCBF   
       JSR    LFCF1   
       JSR    LFAFA   
LF743: JMP    LF6CA   
LF746: CMP    #$88    
       BMI    LF743   
       LDA    $BD     
       BEQ    LF780   
       LDA    $F7     
       ORA    #$04    
       STA    $F7     
       LDA    #$F0    
       STA    $C5     
       LDA    $81     
       LSR            
       BCC    LF766   
       LSR            
       BCC    LF764   
       DEC    $B9     
       BNE    LF766   
LF764: INC    $B9     
LF766: LDA    $81     
       STA    AUDV0   
       LSR            
       LSR            
       ORA    #$10    
       STA    AUDF0   
       AND    #$01    
       BNE    LF776   
       LDA    #$04    
LF776: STA    AUDC0   
       LDA    $C8     
       BEQ    LF743   
       DEC    $C8     
       BPL    LF743   
LF780: LDY    #$08    
       LDA    $81     
       EOR    #$FF    
       ADC    #$01    
       AND    #$7F    
       LSR            
       BCS    LF78F   
       LDY    #$0F    
LF78F: LSR            
       CMP    #$10    
       BCC    LF796   
       EOR    #$1F    
LF796: LSR            
       STA    AUDV0   
       STY    AUDC0   
       LDA    #$00    
       STA    AUDF0   
       LDA    $8F     
       CMP    #$80    
       BEQ    LF743   
       DEC    $8F     
       BNE    LF743   
LF7A9: BIT    $F7     
       BVC    LF7C4   
       LDA    $B6     
       BNE    LF7B7   
       LDX    $B1     
       LDA    REFP1,X 
       BPL    LF7BA   
LF7B7: JMP    LF02E   
LF7BA: LDY    #$00    
       STY    $BC     
       STY    $BD     
       STY    $F7     
       STY    $81     
LF7C4: LDY    $BC     
       BEQ    LF7DA   
       LDA    $81     
       LSR            
       BCS    LF7FC   
       LDA    LFEEC,Y 
       CLC            
       ADC    $B8     
       STA    $B8     
       DEY            
       STY    $BC     
       BPL    LF7FC   
LF7DA: LDX    $B1     
       LDA    $83,X   
       ROR            
       BCC    LF7F0   
       ROR            
       BCS    LF7F2   
       INC    $B8     
       LDA    #$73    
       CMP    $B8     
       BPL    LF7F2   
       STA    $B8     
       BMI    LF7F2   
LF7F0: DEC    $B8     
LF7F2: LDA    #$15    
       CMP    $B8     
       BCC    LF7FC   
       LDA    #$13    
       STA    $BC     
LF7FC: LDA    $BD     
       BEQ    LF810   
       AND    #$03    
       BNE    LF810   
       LDA    $F7     
       AND    #$08    
       BEQ    LF80E   
       DEC    $C9     
       BNE    LF810   
LF80E: INC    $C9     
LF810: LDA    $81     
       AND    #$03    
       BNE    LF846   
       LDX    #$01    
       LDA    $F6     
       TAY            
       AND    #$30    
       BEQ    LF846   
       CMP    #$20    
       BEQ    LF826   
       JSR    LFEAF   
LF826: DEX            
       LDA    $81     
       AND    #$07    
       BNE    LF846   
       TYA            
       AND    #$20    
       BEQ    LF846   
       JSR    LFEAF   
       TYA            
       AND    #$01    
       STA    $F9     
       LDA    $F7     
       LSR            
       LSR            
       EOR    $F9     
       LSR            
       BCC    LF846   
       JSR    LFEAF   
LF846: LDY    $F7     
       LDA    $F6     
       AND    #$20    
       BNE    LF856   
       JSR    LFA88   
       LDA    LFEC1,X 
       AND    $81     
LF856: BNE    LF8B6   
       LDA    $BD     
       BNE    LF883   
       LDA    $C9     
       SEC            
       SBC    $C8     
       BMI    LF878   
       AND    #$F0    
       BEQ    LF883   
       TYA            
       AND    #$04    
       BEQ    LF89E   
LF86C: TYA            
       AND    #$7B    
       STA    $F7     
       CLC            
       LDA    $C8     
       ADC    #$08    
       BNE    LF898   
LF878: ADC    #$10    
       BPL    LF883   
       TYA            
       AND    #$04    
       BEQ    LF88E   
       BNE    LF89E   
LF883: TYA            
       AND    #$0C    
       CMP    #$04    
       BEQ    LF86C   
       CMP    #$08    
       BNE    LF89E   
LF88E: TYA            
       ORA    #$04    
       STA    $F7     
       SEC            
       LDA    $C8     
       SBC    #$08    
LF898: STA    $C8     
       LDA    #$00    
       STA    $B7     
LF89E: LDA    $BD     
       BNE    LF8AC   
       LDA    $B8     
       SEC            
       SBC    #$0F    
       SEC            
       SBC    $B9     
       BMI    LF8B0   
LF8AC: LDA    #$01    
       BNE    LF8B2   
LF8B0: LDA    #$FF    
LF8B2: STA    $B7     
       BNE    LF8C3   
LF8B6: LDA    $B9     
       CLC            
       ADC    $B7     
       BEQ    LF8AC   
       CMP    #$5D    
       BEQ    LF8B0   
       STA    $B9     
LF8C3: LDA    $81     
       AND    #$03    
       BEQ    LF8CF   
       LDA    $BD     
       BNE    LF8E8   
       BEQ    LF8D3   
LF8CF: LDA    $BD     
       BEQ    LF8E8   
LF8D3: TYA            
       AND    #$0C    
       CMP    #$08    
       BEQ    LF8E4   
       CMP    #$04    
       BNE    LF8E8   
       DEC    $C8     
       INC    $C9     
       BNE    LF8E8   
LF8E4: DEC    $C9     
       INC    $C8     
LF8E8: BIT    VSYNC   
       BPL    LF90F   
       LDA    $B4     
       BEQ    LF90F   
       STA    $BF     
       LDA    #$04    
       STA    AUDF1   
       LDA    #$0A    
       STA    AUDC1   
       TYA            
       AND    #$08    
       BEQ    LF906   
       LDA    $C9     
       CLC            
       ADC    $B4     
       BCC    LF90B   
LF906: LDA    $C9     
       SEC            
       SBC    $B4     
LF90B: STA    $C9     
       DEC    $B4     
LF90F: LDA    #$10    
       CMP    $C9     
       BCS    LF91B   
       LDA    #$78    
       CMP    $C9     
       BCS    LF91D   
LF91B: STA    $C9     
LF91D: LDA    #$04    
       AND    $F7     
       LSR            
       LSR            
       TAY            
       LDA    LFC55,Y 
       CMP    $C8     
       BPL    LF932   
       LDA    LFEE7,Y 
       CMP    $C8     
       BPL    LF934   
LF932: STA    $C8     
LF934: LDA    $F7     
       AND    #$08    
       ASL            
       ASL            
       ADC    $C9     
       SEC            
       SBC    $CC     
       AND    #$F8    
       BNE    LF94D   
       LDX    $B4     
       CPX    $B5     
       BCC    LF94D   
       STX    $B5     
       STA    $B4     
LF94D: LDA    $81     
       AND    #$07    
       BNE    LF977   
       LDA    $BA     
       TAX            
       CMP    #$04    
       BCC    LF95C   
       EOR    #$07    
LF95C: TAY            
       LDA    LFD95,Y 
       STA    $D2     
       LDA    LF01D,Y 
       STA    $D4     
       LDA    LFEDC,Y 
       STA    $D6     
       LDA    LFB74,Y 
       STA    $D0     
       INX            
       TXA            
       AND    #$07    
       STA    $BA     
LF977: LDA    $CD     
       BEQ    LF985   
       LDA    $F6     
       AND    #$02    
       BEQ    LF985   
       LDA    $BD     
       BEQ    LF98B   
LF985: LDA    #$BA    
       STA    $D2     
       STA    $D0     
LF98B: JSR    LFACA   
       INY            
       LDA    $BD     
       BNE    LF99A   
       LDX    $B1     
       LDA    LFBCC,X 
       BNE    LF9B8   
LF99A: DEC    $BD     
       CMP    #$60    
       BCS    LF9B3   
       INY            
       STA    $BF     
       TAX            
       AND    #$04    
       ORA    #$0B    
       STA    AUDV1   
       ORA    #$10    
       STA    AUDF1   
       LDA    #$01    
       STA    AUDC1   
       TXA            
LF9B3: AND    #$0F    
       ORA    LFEDA,Y 
LF9B8: STA    $8F     
       LDA    $81     
       AND    #$10    
       BNE    LF9C4   
       LDA    $81     
       AND    #$20    
LF9C4: CLC            
       ADC    #$10    
       STA    $C6     
       LDY    #$10    
       LDA    $F7     
       AND    #$04    
       BEQ    LF9D3   
       LDY    #$F0    
LF9D3: STY    $C5     
       LDA    $81     
       AND    #$08    
       BNE    LF9DF   
       LDA    $81     
       AND    #$10    
LF9DF: ASL            
       STA    $C1     
       LDA    $A9     
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       INX            
       INX            
       LDA    $A9     
       ASL            
       ASL            
       ASL            
       ASL            
       CLC            
       ADC    $F8     
       STA    $F8     
       BCC    LF9F9   
       INX            
LF9F9: STX    $F9     
       LDY    #$00    
       LDA    #$08    
       AND    $F7     
       BEQ    LFA0C   
       LDA    $F9     
       EOR    #$FF    
       TAX            
       INX            
       STX    $F9     
       INY            
LFA0C: LDX    #$02    
LFA0E: LDA    $CA,X   
       SEC            
       SBC    $F9     
       STA    $CA,X   
       BEQ    LFA1B   
       CMP    #$A0    
       BCC    LFA82   
LFA1B: CLC            
       ADC    LFB72,Y 
       STA    $CA,X   
       CPX    #$02    
       BNE    LFA82   
       LDA    $CD     
       BEQ    LFA36   
       LDA    $F6     
       AND    #$02    
       BNE    LFA36   
       LDA    LFEE9,Y 
       STA    $CC     
       BNE    LFA82   
LFA36: STX    $FB     
       LDX    $B2     
       LDA    LFE80,X 
       STA    $C0     
       INX            
       TXA            
       AND    #$1F    
       STA    $B2     
       LDA    #$05    
       STA    $B4     
       LDA    $A2     
       BMI    LFA80   
       TYA            
       BNE    LFA5F   
       LDA    $F6     
       AND    #$08    
       BEQ    LFA6B   
       LDA    $F6     
       AND    #$F7    
LFA5A: STA    $F6     
       JMP    LFA80   
LFA5F: LDA    $F6     
       AND    #$08    
       BNE    LFA6B   
       LDA    $F6     
       ORA    #$08    
       BNE    LFA5A   
LFA6B: INC    $A8     
       JSR    LFA88   
       INX            
       INX            
       INX            
       INX            
       CPX    $A8     
       BNE    LFA80   
       LDA    #$00    
       STA    $A8     
       INC    $A9     
       INC    $B3     
LFA80: LDX    $FB     
LFA82: DEX            
       BPL    LFA0E   
       JMP    LF02E   
LFA88: LDX    $A9     
       CPX    #$08    
       BCC    LFA90   
       LDX    #$08    
LFA90: RTS            

LFA91: JSR    LFCF1   
       DEY            
       LDX    #$0F    
LFA97: STY    $91,X   
       DEX            
       DEX            
       BPL    LFA97   
       LDX    #$04    
       STX    $A7     
       STX    $AD     
       INX            
       STX    $B4     
       STA    $C0     
       LDA    $80     
       LSR            
       STA    $A9     
       STA    $AF     
       JSR    LFCBF   
       DEX            
       STX    $D7     
       STX    $D5     
       DEX            
       STX    $D3     
       STX    $D1     
       DEX            
       STX    $C7     
       STX    $C2     
       STX    $C4     
       LDY    #$10    
       STY    $C6     
       DEY            
       STY    $D6     
LFACA: LDA    $A2     
       BMI    LFAFA   
       LDX    $B1     
       LDA    $83,X   
       AND    #$0C    
       CMP    #$0C    
       BEQ    LFAFA   
       AND    #$08    
       STA    $F9     
       LDA    $F7     
       AND    #$08    
       EOR    $F9     
       BEQ    LFAFA   
       LDA    $F7     
       EOR    #$08    
       STA    $F7     
       LDA    $C9     
       LDX    $F9     
       BEQ    LFAF5   
       CLC            
       ADC    #$0A    
       BCC    LFAF8   
LFAF5: SEC            
       SBC    #$0A    
LFAF8: STA    $C9     
LFAFA: LDA    $F7     
       AND    #$08    
       BEQ    LFB02   
       LDA    #$FF    
LFB02: STA    $F9     
       LDY    #$0E    
LFB06: LDA    ($D4),Y 
       STA.wy $00E7,Y 
       LDA    ($D6),Y 
       EOR    $F9     
       CLC            
       ADC    #$01    
       STA.wy $00D8,Y 
       DEY            
       BPL    LFB06   
LFB18: RTS            

LFB19: .byte $30,$7C,$FF,$F7,$FC,$60,$C0
LFB20: .byte $00,$10,$EE,$EF,$E0,$01,$22,$22
LFB28: STA    AUDC1   
       STA    AUDF1   
       LDA    #$09    
       STA    $BF     
       LDA    #$A0    
       JSR    LFB36   
       RTS            

LFB36: SED            
       CLC            
       ADC    $A4     
       STA    $A4     
       LDA    #$00    
       ADC    $A5     
       STA    $A5     
       LDA    #$00    
       ADC    $A6     
       CLD            
       CMP    #$30    
       BEQ    LFB4E   
       STA    $A6     
       RTS            

LFB4E: JSR    LFCF1   
       STY    $BE     
       STY    $B5     
       STY    $B6     
       LDX    #$AA    
       STX    $A7     
       INX            
       STX    $A6     
       LDA    #$CD    
       STA    $A5     
       LDA    #$EF    
       STA    $A4     
       LDA    #$80    
       STA    $F6     
       STA    $81     
       PLA            
       PLA            
       JMP    LF61D   
LFB71: .byte $10
LFB72: .byte $A0,$60
LFB74: .byte $C3,$CF,$DB,$E7
LFB78: .byte $06,$18,$3C,$6A,$4A,$53,$D5
LFB7F: .byte $04,$08,$10,$20,$40
LFB84: BNE    LFB8A   
       TAY            
       LDA    #$20    
       RTS            

LFB8A: ADC    #$04    
       TAY            
       AND    #$0F    
       STA    $F9     
       TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       CLC            
       ADC    $F9     
       CMP    #$0F    
       BCC    LFBA1   
       SBC    #$0F    
       INY            
LFBA1: EOR    #$07    
LFBA3: ASL            
LFBA4: ASL            
LFBA5: ASL            
       ASL            
LFBA7: RTS            

LFBA8: .byte $0A,$14,$1E,$28,$32,$3C,$46,$50,$82,$18,$28,$28,$38,$38,$48,$48
       .byte $58,$58,$68,$68
LFBBC: .byte $78,$36,$54,$52,$50,$4F,$4D,$4B,$49,$28,$27,$07,$E7,$C7,$C7,$00
LFBCC: .byte $C4,$CC,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$02,$7A,$02,$85,$0A,$0A,$02,$02,$95,$A5
       .byte $7A,$0A,$95,$00,$00,$00,$0A,$7A,$7A,$85,$0A,$0A,$02,$02,$95,$A5
       .byte $7A,$0A,$95,$00,$00,$00,$12,$7A,$02,$85,$02,$0A,$02,$02,$95,$A5
       .byte $7A,$0A,$95,$00,$F0,$F2,$F2,$F2,$F2,$F2,$12,$12,$12,$12,$00,$00
       .byte $00,$00,$10,$12,$12,$12,$12,$12,$F2,$F2,$F2,$F2,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00
LFC55: .byte $10,$04
LFC57: LDY    #$01    
       STY    VDELP0  
       STY    VDELP1  
       STX    GRP0    
       STX    GRP1    
       STX    GRP0    
       STA    HMCLR   
LFC65: LDY    $FA     
       LDA    ($91),Y 
       STA    $F9     
       LDA    ($93),Y 
       TAX            
       LDA    ($9B),Y 
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       LDA    ($99),Y 
       STA    GRP1    
       LDA    ($97),Y 
       STA    GRP0    
       LDA    ($95),Y 
       LDY    $F9     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       DEC    $FA     
       BPL    LFC65   
       RTS            

LFC8F: .byte $00,$49,$DB,$92,$9A,$8A,$8A,$B6,$FC,$FD,$6F,$4F,$AE,$9E,$BC,$D8
       .byte $00,$09,$5B,$D3,$99,$C9,$4D,$85,$8E,$9D,$F7,$E7,$57,$4E,$5E,$6C
       .byte $00,$24,$6D,$4B,$4A,$8B,$C9,$4D,$4E,$7D,$7F,$27,$57,$4E,$7E,$6C
LFCBF: LDA    #$48    
       STA    $C3     
       LDA    #$BA    
       STA    $D0     
       LDA    #$40    
       STA    $F7     
       LDA    #$10    
       STA    $C5     
       LDX    $B1     
       LDA    LFBCC,X 
       STA    $8F     
       LDA    #$48    
       STA    $B8     
       LDA    #$58    
       STA    $B9     
       LDA    $85     
       AND    #$01    
       ORA    #$08    
       STA    $F6     
       LDX    #$07    
LFCE8: LDA    LFEE0,X 
       STA    $C8,X   
       DEX            
       BPL    LFCE8   
       RTS            

LFCF1: LDY    #$00    
       STY    AUDV0   
       STY    AUDV1   
       RTS            

LFCF8: .byte $00,$00,$00,$00,$00,$00,$00,$00
LFD00: STA    WSYNC   
       LDA    #$02    
       STA    ENABL   
       LDA    $88     
       STA    HMP0    
       AND    #$0F    
       TAY            
LFD0D: DEY            
       BPL    LFD0D   
       STA    RESP0   
       STA    WSYNC   
       LDA    $89     
       STA    HMP1    
       AND    #$0F    
       TAY            
       LDA    #$02    
       STA    NUSIZ1  
LFD1F: DEY            
       BPL    LFD1F   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       STX    ENABL   
       LDY    #$06    
       STY    NUSIZ0  
       JSR    LFBA4   
       STA    HMCLR   
LFD33: STA    WSYNC   
       STA    HMOVE   
       LDA    LFB78,Y 
       STA    GRP1    
       STA    GRP0    
       DEY            
       BNE    LFD33   
       STA    WSYNC   
       STA    HMOVE   
       STY    GRP0    
       STY    GRP1    
       LDA    LFB78   
       STA    COLUBK  
       STY    NUSIZ1  
       LDA    #$41    
       NOP            
       LDY    #$FF    
       STA    RESP0   
       STA    RESP1   
       STA    RESBL   
       STY    HMP0    
       STA    NUSIZ0  
       STA    HMBL    
       LDA    $A3     
       BNE    LFD69   
       LDA    $A7     
       BNE    LFD6A   
LFD69: INY            
LFD6A: STY    $F9     
       LDA    #$1E    
       STA    COLUP0  
       STA    WSYNC   
       STA    HMOVE   
       STA    COLUP1  
       LDY    #$07    
LFD78: LDA    ($9D),Y 
       STA    GRP0    
       LDA    ($9F),Y 
       STA    GRP1    
       LDA    LFB18,Y 
       AND    $F9     
       STA    GRP0    
       STA    HMCLR   
       STA    WSYNC   
       STA    HMOVE   
       DEY            
       BPL    LFD78   
       STX    GRP0    
       STX    GRP1    
       RTS            

LFD95: .byte $8F,$AF,$A5,$9A,$00,$20,$20,$20,$30,$30,$20,$20,$10,$10,$10,$00
       .byte $20,$20,$20,$10,$10,$10,$20,$30,$30,$20,$00,$20,$20,$20,$00,$30
       .byte $30,$30,$20,$10,$00,$20,$20,$20,$20,$30,$30,$20,$20,$30,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$F0,$14,$F2,$F2,$F2,$2A,$1A
       .byte $16,$F6,$F6,$00,$00,$00,$00,$00,$F2,$FA,$FE,$2A,$1A,$BE,$42,$00
       .byte $00,$00,$00,$00,$12,$BE,$3E,$FE,$2A,$16,$F2,$00,$00,$00,$00,$00
       .byte $06,$16,$16,$FA,$FE,$FE,$2A,$00,$00,$00,$00,$00,$02,$02,$06,$3E
       .byte $7F,$FE,$FB,$7F,$66,$62,$62,$60,$A0,$90,$00,$10,$10,$10,$20,$10
       .byte $00,$00,$D0,$F0,$F0,$F0,$F0,$10,$F0,$00,$01,$01,$01,$03,$1F,$FF
       .byte $FF,$FD,$CF,$C6,$A2,$92,$90,$00,$00,$10,$10,$10,$10,$20,$00,$E0
       .byte $F0,$F0,$F0,$F0,$00,$00,$91,$A1,$C1,$C7,$EF,$FF,$FF,$3D,$1F,$06
       .byte $02,$02,$00,$00,$10,$10,$10,$10,$20,$00,$E0,$F0,$F0,$F0,$F0,$00
       .byte $00,$90,$A1,$C1,$C1,$C3,$EF,$FF,$FE,$7B,$3E,$06,$02,$02,$00,$00
       .byte $10,$10,$10,$10,$00,$20,$00,$00,$F0,$D0,$F0,$F0
LFE71: .byte $00,$00,$80,$80,$80,$80,$80
LFE78: .byte $00,$02,$F2,$F2,$02,$02,$12,$12
LFE80: .byte $04,$02,$00,$03,$01,$03,$00,$04,$01,$02,$00,$04,$01,$03,$02,$04
       .byte $01,$03,$00,$02,$04,$00,$04,$01,$03,$01,$00,$02,$04,$01,$03
LFE9F: .byte $00,$52,$FB,$F7,$D6,$E7,$E7,$C6
LFEA7: .byte $00,$4C,$EE,$FE,$FB,$FB,$B3,$A2
LFEAF: TYA            
       LSR            
       BCS    LFEB6   
       INC    $C8,X   
       RTS            

LFEB6: DEC    $C8,X   
       RTS            

LFEB9: .byte $20,$20,$20,$30,$30,$30,$20,$20
LFEC1: .byte $FF,$7F,$7F,$7F,$3F,$3F,$3F,$1F,$1F
LFECA: .byte $18,$88,$C8,$48,$0C,$86,$4C,$08,$EC
LFED3: .byte $1F,$17,$0F,$07,$02
LFED8: .byte $05,$0D
LFEDA: .byte $12,$44
LFEDC: .byte $0F,$2C,$47,$63
LFEE0: .byte $20,$58,$08,$64,$40,$00,$28
LFEE7: .byte $78,$68
LFEE9: .byte $01,$A0
LFEEB: .byte $CA
LFEEC: .byte $4A,$04,$04,$05,$04,$03,$02,$01,$00,$00,$00,$FF,$FF,$FF,$FE,$FE
       .byte $FD,$FD,$FD,$FD,$78,$CC,$CC,$CC,$CC,$CC,$CC,$78,$78,$30,$30,$30
       .byte $30,$30,$70,$30,$FC,$C0,$C0,$78,$0C,$0C,$8C,$78,$78,$8C,$0C,$18
       .byte $18,$0C,$8C,$78,$18,$18,$18,$FC,$98,$58,$38,$18,$F8,$8C,$0C,$0C
       .byte $F8,$C0,$C0,$FC,$78,$CC,$CC,$CC,$F8,$C0,$C4,$78,$30,$30,$30,$30
       .byte $18,$0C,$84,$FC,$78,$CC,$CC,$78,$78,$CC,$CC,$78,$78,$8C,$0C,$7C
       .byte $CC,$CC,$CC,$78,$00,$00,$00,$00,$00,$00,$00,$00,$C1,$7F,$31,$19
       .byte $0D,$07,$03,$01,$80,$A2,$AA,$AA,$AA,$BE,$80,$80,$00,$F7,$92,$F1
       .byte $10,$F7,$00,$00,$00,$D4,$14,$14,$94,$D7,$00,$10,$3C,$85,$BC,$A5
       .byte $A5,$BD,$01,$01
LFF80: .byte $0C,$06,$03,$01,$00,$00,$00,$00
LFF88: .byte $2D,$29,$E9,$A9,$ED,$61,$2F,$00
LFF90: .byte $50,$58,$5C,$56,$53,$11,$F0,$00
LFF98: .byte $BA,$8A,$BA,$A2,$3A,$80,$FE,$00
LFFA0: .byte $E9,$AB,$AF,$AD,$E9,$00,$00,$00,$00,$00,$00,$F7,$95,$87,$90,$F0
       .byte $00,$47,$41,$77,$55,$75,$00,$00,$00,$03,$00,$4B,$4A,$6B,$00,$08
       .byte $00,$80,$80,$AA,$AA,$BA,$27,$22,$00,$00,$00,$11,$11,$17,$15,$17
       .byte $00,$00,$00,$77,$51,$73,$51,$77
LFFD8: .byte $84,$D6,$D6,$1A,$26,$26,$44,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$F0,$00,$00
