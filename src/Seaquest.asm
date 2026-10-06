; Disassembly of roms/Seaquest.bin
; Disassembled Tue Oct  6 15:22:42 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Seaquest.bin
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
ENAM0   =  $1D
ENABL   =  $1F
HMP0    =  $20
HMP1    =  $21
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
LF7ED   =   $F7ED

       ORG $F000

START:
       SEI            
       CLD            
       LDX    #$FF    
       TXS            
       INX            
       JSR    LFB56   
       INC    $82     
       JMP    LF716   
LF00E: LDX    #$02    
       LDY    $E7     
       LDA    LFC2A,Y 
       JSR    LFECB   
       LDX    #$0A    
LF01A: LDA    LFCF0,X 
       EOR    $85     
       AND    $86     
       STA    $87,X   
       DEX            
       BPL    LF01A   
       LDX    $C6     
       LDA    LFC28,X 
       STA    $CB     
       LDX    $F6     
       CPX    #$A0    
       BCC    LF035   
       LDX    #$00    
LF035: LDA    LFC29,X 
       STA    $F7     
       LDX    #$03    
LF03C: LDY    #$08    
       LDA    $9E,X   
       CMP    #$80    
       BCC    LF04A   
       SBC    #$80    
       JSR    LFFAF   
       TAY            
LF04A: LDA    $A4,X   
       AND    LFEEB,Y 
       STA    $A8,X   
       DEX            
       BPL    LF03C   
       LDY    #$02    
LF056: TYA            
       ASL            
       ASL            
       TAX            
       LDA.wy $00B8,Y 
       AND    #$F0    
       LSR            
       STA    $92,X   
       LDA.wy $00B8,Y 
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA    $94,X   
       DEY            
       BPL    LF056   
       INY            
LF070: LDA.wy $0092,Y 
       BNE    LF080   
       LDA    #$50    
       STA.wy $0092,Y 
       INY            
       INY            
       CPY    #$0A    
       BNE    LF070   
LF080: JSR    LFCDA   
       LDA    $8C     
       STA    COLUBK  
LF087: LDA    INTIM   
       BNE    LF087   
       STA    WSYNC   
       STA    HMOVE   
       STA    VBLANK  
       LDX    $B7     
       LDA    $87,X   
       STA    COLUP0  
       STA    COLUP1  
       STA    WSYNC   
       STA    HMOVE   
       JSR    LFFB0   
       LDY    #$07    
       STY    VDELP0  
       STY    VDELP1  
       STA    HMCLR   
LF0A9: STY    $E2     
       LDA    ($9C),Y 
       STA    $E3     
       STA    WSYNC   
       STA    HMOVE   
       LDA    ($92),Y 
       STA    GRP0    
       LDA    ($94),Y 
       STA    GRP1    
       LDA    ($96),Y 
       STA    GRP0    
       LDA    ($9A),Y 
       TAX            
       LDA    ($98),Y 
       LDY    $E3     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       LDY    $E2     
       DEY            
       BPL    LF0A9   
       INY            
       LDX    #$04    
LF0D6: STA    WSYNC   
       STA    HMOVE   
       STY    VDELP0  
       STY    VDELP1  
       STY    GRP0    
       STY    GRP1    
       DEX            
       BPL    LF0D6   
       LDY    $BB     
       LDA    LFF56,Y 
       STA    NUSIZ1  
       JSR    LFFAF   
       STA    NUSIZ0  
       LDX    #$08    
LF0F3: LDA    LFF5D,X 
       STA    WSYNC   
       STA    HMOVE   
       CPY    #$00    
       BEQ    LF100   
       STA    GRP0    
LF100: CPY    #$02    
       BCC    LF106   
       STA    GRP1    
LF106: DEX            
       BPL    LF0F3   
       LDA    $CB     
       AND    #$0F    
       STA    $E2     
       STA    WSYNC   
       STA    HMOVE   
       NOP            
       NOP            
       NOP            
       LDA    $F7     
       AND    #$0F    
       TAX            
       BNE    LF126   
       LDA    #$60    
       NOP            
       STA    RESP1   
       STA    HMP1    
       BNE    LF12C   
LF126: DEX            
       BNE    LF126   
       NOP            
       STA    RESP1   
LF12C: STA    WSYNC   
       STA    HMOVE   
       LDA    $F7     
       LDX    $CB     
       LDY    $E2     
       STY    $E2     
LF138: DEY            
       BPL    LF138   
       STA.w  $0010   
       STX    HMP0    
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$74    
       EOR    $85     
       AND    $86     
       STA    COLUBK  
       LDX    $E0     
       LDA    LFCFB,X 
       STA    $98     
       LDA    #$FD    
       STA    $99     
       STA    $93     
       LDA    #$FD    
       STA    $95     
       STA    $97     
       STA    HMCLR   
       LDA    $D6     
       STA    REFP0   
       LDX    $B7     
       LDA    $8A,X   
       STA    COLUP0  
       LDA    #$35    
       STA    WSYNC   
       STA    HMOVE   
       STA    NUSIZ0  
       LDY    $E1     
       LDX    $E9     
       BEQ    LF18F   
       LDA    LFF17,X 
       STA    COLUP0  
       CPX    #$0F    
       BCS    LF18F   
       CPX    #$0A    
       BCS    LF18A   
       LDX    #$0A    
LF18A: LDA    LFDF0,X 
       STA    $98     
LF18F: LDX    #$09    
       STX    REFP1   
       STX    COLUP1  
       STX    CXCLR   
       LDX    #$09    
LF199: LDA    LFCE6,X 
       EOR    $85     
       AND    $86     
       STA    WSYNC   
       STA    HMOVE   
       STA    COLUBK  
       DEX            
       BPL    LF199   
       INX            
       STX    NUSIZ1  
       LDA    $82     
       STA    $E3     
       LDX    $E0     
       LDA    LFCFB,X 
       ADC    #$02    
       STA    $92     
       LDX    #$09    
LF1BB: DEY            
       STY    $E2     
       LDA    $E3     
       CMP    #$80    
       ROL            
       STA    $E3     
       AND    #$02    
       EOR    $89     
       STA    $E4     
       CPX    #$02    
       BCC    LF1EC   
       TXA            
       TAY            
       LDA    $E4     
       STA    WSYNC   
       STA    HMOVE   
       STA    COLUBK  
       LDA    ($92),Y 
       STA    GRP1    
       LDY    $E2     
       CPY    #$0C    
       BCS    LF1E7   
       LDA    ($98),Y 
LF1E5: STA    GRP0    
LF1E7: DEX            
       BPL    LF1BB   
       BMI    LF1F8   
LF1EC: STA    WSYNC   
       STA    HMOVE   
       STA    COLUBK  
       LDA    #$00    
       STA    GRP1    
       BEQ    LF1E5   
LF1F8: DEY            
       LDA    $8D     
       DEY            
       STA    WSYNC   
       STA    HMOVE   
       STA    COLUBK  
       LDA    #$FF    
       LDX    #$06    
LF206: STA    $B0,X   
       DEX            
       BPL    LF206   
       STA    WSYNC   
       STA    HMOVE   
       LDA    $89     
       STA    COLUBK  
       LDX    #$03    
       LDA    COLUP1  
       STA    $F8     
LF219: STX    $E5     
       DEY            
       CPY    #$0C    
       STA    WSYNC   
       STA    HMOVE   
       BCS    LF22D   
       LDA    ($98),Y 
       STA    GRP0    
       LDA    LFE54,Y 
       STA    ENAM0   
LF22D: STY    $E2     
       LDA    $A8,X   
       BEQ    LF240   
       TAY            
       LDA    LFF51,Y 
       CLC            
       ADC    $9E,X   
       CMP    #$A0    
       BCC    LF240   
       SBC    #$60    
LF240: TAX            
       LDA    LFC29,X 
       STA    $CC     
       LDY    $E2     
       DEY            
       CPY    #$0C    
       STA    WSYNC   
       STA    HMOVE   
       BCS    LF25A   
       LDA    ($98),Y 
       STA    GRP0    
       LDA    LFE54,Y 
       STA    ENAM0   
LF25A: LDA    #$00    
       TAX            
       DEY            
       CPY    #$0C    
       BCS    LF267   
       LDA    ($98),Y 
       LDX    LFE54,Y 
LF267: STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       STX    ENAM0   
       LDA    $CC     
       AND    #$0F    
       TAX            
       BNE    LF27F   
       LDA    #$60    
       NOP            
       STA    RESP1   
       STA    HMP1    
       BNE    LF285   
LF27F: DEX            
       BNE    LF27F   
       NOP            
       STA    RESP1   
LF285: STA    WSYNC   
       STA    HMOVE   
       DEY            
       CPY    #$0C    
       BCS    LF297   
       LDA    ($98),Y 
       STA    GRP0    
       LDA    LFE54,Y 
       STA    ENAM0   
LF297: LDX    $E5     
       LDA    $C7,X   
       CMP    #$A0    
       BCC    LF2A1   
       LDA    #$00    
LF2A1: TAX            
       LDA    LFC2C,X 
       STA    $CD     
       STA    HMCLR   
       LDA    #$00    
       TAX            
       DEY            
       CPY    #$0C    
       BCS    LF2B6   
       LDA    ($98),Y 
       LDX    LFE54,Y 
LF2B6: STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       STX    ENAM0   
       LDA    $CD     
       AND    #$0F    
       TAX            
       BNE    LF2CE   
       LDA    #$60    
       NOP            
       STA    RESBL   
       STA    HMBL    
       BNE    LF2D4   
LF2CE: DEX            
       BNE    LF2CE   
       NOP            
       STA    RESBL   
LF2D4: STA    WSYNC   
       STA    HMOVE   
       DEY            
       CPY    #$0C    
       BCS    LF2E6   
       LDA    ($98),Y 
       STA    GRP0    
       LDA    LFE54,Y 
       STA    ENAM0   
LF2E6: LDX    $E5     
       LDA    $A8,X   
       TAX            
       LDA    LFEF4,X 
       STA    NUSIZ1  
       LDA    $CC     
       STA    HMP1    
       LDA    $CD     
       STA    HMBL    
       LDX    $E5     
       LDA    $D9,X   
       STA    REFP1   
       AND    #$07    
       TAX            
       DEY            
       CPY    #$0C    
       STA    WSYNC   
       STA    HMOVE   
       BCS    LF313   
       LDA    ($98),Y 
       STA    GRP0    
       LDA    LFE54,Y 
       STA    ENAM0   
LF313: LDA    LFFA2,X 
       CPX    #$04    
       BCS    LF31C   
       ADC    $DD     
LF31C: STA    $92     
       STA    CXCLR   
       LDX    $E5     
       LDA    #$01    
       STA    VDELP1  
       LDA    $AC,X   
       STA    COLUP1  
       STA    HMCLR   
       LDA    $D9,X   
       AND    #$0F    
       TAX            
       DEY            
       CPY    #$0C    
       LDA    ($98),Y 
       STA    WSYNC   
       STA    HMOVE   
       BCS    LF343   
       STA    GRP0    
       LDA    LFE54,Y 
       STA    ENAM0   
LF343: LDA    LFF7E,X 
       STA    $94     
       LDA    LFF92,X 
       STA    $96     
       LDX    #$0E    
LF34F: DEY            
       STX    $E3     
       STY    $E2     
       LDY    $E3     
       LDA    ($92),Y 
       STA    GRP1    
       LDA    ($94),Y 
       STA    HMBL    
       LDA    ($96),Y 
       LDY    $E2     
       CPY    #$0C    
       LDX    LFE54,Y 
       STA    WSYNC   
       STA    HMOVE   
       STA    ENABL   
       STA    CTRLPF  
       BCS    LF37E   
       STX    ENAM0   
       LDA    ($98),Y 
LF375: STA    GRP0    
       LDX    $E3     
       DEX            
       BPL    LF34F   
       BMI    LF382   
LF37E: LDA    #$00    
       BCS    LF375   
LF382: INX            
       TXA            
       STA    VDELP1  
       DEY            
       CPY    #$0C    
       BCS    LF390   
       LDA    ($98),Y 
       LDX    LFE54,Y 
LF390: STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       STX    ENAM0   
       LDX    $E5     
       TXA            
       BIT    WSYNC   
       BVC    LF3A1   
       STX    $B6     
LF3A1: BIT    VSYNC   
       BPL    LF3A7   
       STX    $B4     
LF3A7: BIT    RSYNC   
       BVC    LF3AD   
       STA    $B0,X   
LF3AD: BIT    COLUP1  
       BPL    LF3B3   
       STX    $B5     
LF3B3: DEX            
       BMI    LF3C1   
       JMP    LF219   
LF3B9: .byte $C0,$C0,$C0,$C0,$B0,$B0,$A0,$A0
LF3C1: LDX    #$07    
LF3C3: LDA    LF3B9,X 
       EOR    $85     
       AND    $86     
       STA    WSYNC   
       STA    HMOVE   
       STA    COLUBK  
       DEX            
       BPL    LF3C3   
       LDA    $8F     
       STA    COLUPF  
       LDY    #$04    
       LDA    #$01    
       STA    CTRLPF  
LF3DD: LDA    LFFED,Y 
       STA    WSYNC   
       STA    HMOVE   
       STA    PF0     
       STA    PF1     
       STA    PF2     
       DEY            
       BNE    LF3DD   
       STA    WSYNC   
       STA    HMOVE   
       STX    PF0     
       STX    PF1     
       STX    PF2     
       STY    GRP0    
       STY    GRP1    
       LDA    #$21    
       STA    CTRLPF  
       STA    RESP0   
       STA    RESP1   
       STA    HMCLR   
       STY    NUSIZ1  
       INY            
       STY    NUSIZ0  
       LDA    $E6     
       BEQ    LF411   
       CLC            
       ADC    #$2E    
LF411: TAY            
       LDA    LFC29,Y 
       TAY            
       AND    #$0F    
       TAX            
       STA    WSYNC   
       STA    HMOVE   
       LDA    $8D     
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$10    
       NOP            
LF426: DEX            
       BPL    LF426   
       STA    RESBL   
       STA    HMP1    
       STY    HMBL    
       LDA    $8F     
       STA    WSYNC   
       STA    HMOVE   
       STA    COLUPF  
       STA    $E4     
       JSR    LFFB0   
       STA    HMCLR   
       INX            
       STX    REFP0   
       STX    REFP1   
       STA    WSYNC   
       STA    HMOVE   
       LDA    $90     
       STA    COLUBK  
       STA    WSYNC   
       STA    HMOVE   
       LDY    #$00    
       LDX    $8E     
       LDA    $E1     
       CMP    #$0D    
       BEQ    LF46F   
       LDA    $E6     
       BEQ    LF46F   
       LDA    $E9     
       BNE    LF46F   
       LDA    #$10    
       CMP    $E6     
       BCC    LF46F   
       LDY    #$0F    
       AND    $81     
       BNE    LF46F   
       LDX    $8D     
LF46F: STX    $E2     
       STY    $F9     
       LDA    $E6     
       LSR            
       LSR            
       TAY            
       LDA    #$02    
       LDX    #$04    
       STA    ENABL   
LF47E: STA    WSYNC   
       STA    HMOVE   
       LDA    LFF66,X 
       STA    GRP0    
       LDA    LFF6B,X 
       STA    GRP1    
       LDA    LFF2F,Y 
       STA    PF2     
       LDA    LFF70,X 
       STA.w  $001B   
       LDA    $E2     
       STA.w  $0008   
       LDA    LFF40,Y 
       NOP            
       STA    PF2     
       LDA    $E4     
       NOP            
       NOP            
       NOP            
       STA    COLUPF  
       DEX            
       BPL    LF47E   
       LDY    $BE     
       STA    WSYNC   
       STA    HMOVE   
       STA    COLUBK  
       INX            
       STX    GRP0    
       STX    GRP1    
       STX    PF0     
       STX    PF1     
       STX    PF2     
       STX    ENABL   
       LDA    LFF56,Y 
       STA    NUSIZ1  
       JSR    LFFAF   
       STA    NUSIZ0  
       LDA    $E4     
       STA    WSYNC   
       STA    HMOVE   
       JSR    LFFB0   
       JSR    LFFB1   
       STA    RESP0   
       STA    RESP1   
       LDA    #$F0    
       STA    HMP0    
       STA    WSYNC   
       STA    HMOVE   
       LDX    #$82    
       LDA    $BE     
       CMP    #$06    
       BNE    LF4F9   
       LDA    $E1     
       CMP    #$0D    
       BEQ    LF4F9   
       LDA    $81     
       AND    #$08    
       BNE    LF4F9   
       LDX    #$06    
LF4F9: TXA            
       EOR    $85     
       AND    $86     
       STA    COLUP0  
       STA    COLUP1  
       STA    HMCLR   
       LDX    #$09    
LF506: LDA    LFFF1,X 
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       STA    GRP1    
       LDA    #$00    
       CPY    #$02    
       BCS    LF519   
       STA    GRP1    
LF519: CPY    #$00    
       BNE    LF51F   
       STA    GRP0    
LF51F: DEX            
       BNE    LF506   
       STA    WSYNC   
       STA    HMOVE   
       STX    GRP0    
       STX    GRP1    
       STX    GRP0    
       STA    WSYNC   
       STA    HMOVE   
       LDA    $8D     
       STA    COLUBK  
       LDA    $91     
       STA    COLUP0  
       STA    COLUP1  
       STA    COLUPF  
       LDX    #$03    
       STX    NUSIZ0  
       STX    NUSIZ1  
       LDY    #$0F    
       LDA    #$07    
       STA    $E3     
       STA    WSYNC   
       STA    HMOVE   
       STA    VDELP0  
       STA    VDELP1  
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    GRP0    
       LDA    $A3     
       LSR            
       LSR            
       LSR            
       CMP    #$14    
       BCS    LF56A   
       LDY    #$07    
       CMP    #$0C    
       BCC    LF56A   
       SBC    #$04    
       TAY            
LF56A: STY    $E4     
       STA    HMCLR   
LF56E: LDY    $E4     
       LDA    LFEAB,Y 
       STA    $E2     
       STA    WSYNC   
       STA    HMOVE   
       LDA    LFE9B,Y 
       TAX            
       LDA    LFE5B,Y 
       STA    GRP0    
       DEC    $E4     
       LDA    LFE6B,Y 
       STA    GRP1    
       LDA    LFE7B,Y 
       STA    GRP0    
       LDA    LFE8B,Y 
       LDY    $E2     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       DEC    $E3     
       BPL    LF56E   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$00    
       STA    VDELP0  
       STA    VDELP1  
       STA    GRP0    
       STA    GRP1    
       LDA    #$1F    
       LDX    #$82    
       STA    WSYNC   
       STA    TIM64T  
       STX    VBLANK  
       LDY    #$0C    
       LDA    $EA     
       BEQ    LF5D7   
       DEC    $EA     
       LSR            
       STA    AUDV1   
       STY    AUDC1   
       LDA    $BE     
       CMP    #$06    
       BCC    LF5CD   
       LDY    #$03    
LF5CD: STY    AUDF1   
       LDA    #$00    
       STA    $EB     
       STA    $EC     
       STA    $F9     
LF5D7: LDA    $F9     
       BEQ    LF5F4   
       LDA    #$01    
       STA    $EB     
       STA    $EC     
       LDA    $81     
       AND    #$10    
       LSR            
       ORA    #$04    
       STA    AUDC1   
       LDA    #$18    
       STA    AUDF1   
       LDA    #$08    
       STA    AUDV1   
       BPL    LF619   
LF5F4: LDY    #$0C    
       LDA    $EB     
       BEQ    LF605   
       DEC    $EB     
       LSR            
       STA    AUDF1   
       AND    #$04    
       STA    AUDV1   
       STY    AUDC1   
LF605: LDA    $EC     
       BEQ    LF619   
       DEC    $EC     
       LSR            
       STA    AUDV1   
       LSR            
       BCC    LF613   
       LDY    #$14    
LF613: STY    AUDF1   
       LDA    #$08    
       STA    AUDC1   
LF619: LDX    #$03    
LF61B: LDA    $BD     
       AND    #$07    
       TAY            
       LDA    $D9,X   
       ASL            
       AND    #$08    
       BNE    LF62A   
       LDA    LFF0F,Y 
LF62A: EOR    $85     
       AND    $86     
       STA    $AC,X   
       DEX            
       BPL    LF61B   
       LDA    $BC     
       CLC            
       ADC    #$02    
       CMP    #$09    
       BCC    LF63E   
       LDA    #$09    
LF63E: ASL            
       ASL            
       ASL            
       ASL            
       STA    $CE     
       LDX    #$04    
LF646: LDA    $F0,X   
       BPL    LF654   
       DEX            
       BNE    LF646   
       LDY    #$03    
LF64F: STX    $F1,Y   
       DEY            
       BPL    LF64F   
LF654: LDA    $A3     
       BEQ    LF672   
       LDA    $BA     
       AND    #$0F    
       BNE    LF66C   
       LDA    $81     
       AND    #$7F    
       BNE    LF66C   
       LDA    $80     
       LSR            
       BCC    LF66C   
       JSR    LFFDA   
LF66C: DEC    $A3     
       BNE    LF672   
       DEC    $A3     
LF672: LDA    $81     
       AND    #$03    
       BNE    LF680   
       DEC    $E0     
       BPL    LF680   
       LDA    #$02    
       STA    $E0     
LF680: LDA    $81     
       AND    #$07    
       BNE    LF689   
       JSR    LFEDB   
LF689: LDA    INTIM   
       BNE    LF689   
       LDY    #$82    
       STY    WSYNC   
       STY    VSYNC   
       STY    WSYNC   
       STY    WSYNC   
       STY    WSYNC   
       STA    VSYNC   
       INC    $81     
       BNE    LF6A7   
       INC    $A2     
       BNE    LF6A7   
       SEC            
       ROR    $A2     
LF6A7: LDY    #$FF    
       LDA    SWCHB   
       AND    #$08    
       BNE    LF6B2   
       LDY    #$0F    
LF6B2: TYA            
       LDY    #$00    
       BIT    $A2     
       BPL    LF6BD   
       AND    #$F7    
       LDY    $A2     
LF6BD: STY    $85     
       ASL    $85     
       STA    $86     
       LDA    #$30    
       STA    WSYNC   
       STA    TIM64T  
       LDA    SWCHA   
       TAY            
       LDX    $B7     
       BNE    LF6D5   
       JSR    LFFAF   
LF6D5: AND    #$0F    
       STA    $84     
       INY            
       BEQ    LF6E0   
       LDA    #$00    
       STA    $A2     
LF6E0: LDA    SWCHB   
       LSR            
       BCS    LF6EC   
       JSR    LFB54   
       JMP    LF00E   
LF6EC: LDY    #$00    
       LSR            
       BCS    LF714   
       LDA    $83     
       BEQ    LF6F9   
       DEC    $83     
       BPL    LF716   
LF6F9: INC    $80     
       LDA    $80     
       AND    #$01    
       STA    $80     
       STA    $A2     
       TAY            
       JSR    LFB54   
       INY            
       STY    $BA     
       LDX    #$FF    
       STX    $A3     
       LDY    #$1E    
       STY    $83     
       BPL    LF755   
LF714: STY    $83     
LF716: LDA    $A3     
       BEQ    LF71D   
       JMP    LF7F6   
LF71D: LDA    $E8     
       LSR            
       LSR            
       BCS    LF726   
       JMP    LF7A6   
LF726: LDX    $B7     
       LDA    $E6     
       BEQ    LF758   
       AND    #$0F    
       EOR    #$FF    
       STA    AUDF0   
       SEC            
       SBC    #$05    
       STA    AUDF1   
       LDA    #$0C    
       STA    AUDC0   
       STA    AUDC1   
       LSR            
       TAX            
       LDA    $81     
       AND    #$01    
       BNE    LF755   
       STA    $F9     
       DEC    $E6     
       BNE    LF74C   
       TAX            
LF74C: STX    AUDV0   
       STX    AUDV1   
       LDA    $CE     
       JSR    LFB9D   
LF755: JMP    LF00E   
LF758: LDA    $81     
       AND    #$0F    
       BEQ    LF768   
       LSR    $ED     
       LDA    $ED     
       STA    AUDV0   
       STA    AUDV1   
       BPL    LF755   
LF768: LDA    $BE     
       BNE    LF77F   
       INC    $BC     
       LDA    $BD     
       CMP    $BC     
       BCS    LF776   
       INC    $BD     
LF776: JSR    LFC0A   
       LDA    #$01    
       STA    $E8     
       BNE    LF755   
LF77F: DEC    $BE     
       LDA    #$1F    
       STA    $ED     
       STA    AUDV0   
       STA    AUDV1   
       LDA    #$0C    
       STA    AUDC0   
       STA    AUDC1   
       STA    AUDF0   
       LSR            
       STA    AUDF1   
       LDX    $BC     
       CPX    #$13    
       BCC    LF79C   
       LDX    #$13    
LF79C: LDA    #$50    
       JSR    LFB9D   
       DEX            
       BPL    LF79C   
       BMI    LF755   
LF7A6: LDY    $BC     
       CPY    #$02    
       BCC    LF7BB   
       CPY    #$06    
       BCC    LF7B2   
       LDY    #$06    
LF7B2: LDA    $81     
       AND    LF7ED,Y 
       BNE    LF7BB   
       DEC    $F6     
LF7BB: BIT    $F8     
       BPL    LF7C9   
       LDA    #$00    
       STA    $F6     
       STA    $E8     
       LDA    #$17    
       STA    $E9     
LF7C9: LDA    $E8     
       LSR            
       BCC    LF7F6   
       JSR    LFFB4   
       BCC    LF7EC   
       LDA    $81     
       LDX    #$03    
LF7D7: JSR    LFBCB   
       LSR    $E2     
       LDA    $E2     
       DEX            
       BPL    LF7D7   
       INX            
       STX    $E7     
       STX    AUDV1   
       LDA    $E8     
       EOR    #$01    
       STA    $E8     
LF7EC: JMP    LF00E   
LF7EF: .byte $03,$03,$03,$01,$01,$01,$00
LF7F6: LDY    #$00    
       LDX    $B6     
       BMI    LF827   
       LDA    $D9,X   
       AND    #$04    
       BEQ    LF80A   
       STY    $C7,X   
       LDA    #$17    
       STA    $E9     
       BNE    LF824   
LF80A: LDA    $BE     
       CMP    #$06    
       BCS    LF827   
       INC    $BE     
       LDA    #$17    
       STA    $EA     
       LDA    $D9,X   
       AND    #$0F    
       STA    $D9,X   
       STY    $C7,X   
       LDA    #$FF    
       STA    $F1,X   
       BMI    LF827   
LF824: JMP    LF8BC   
LF827: LDX    $B4     
       BMI    LF875   
       LDA    $E7     
       CMP    #$08    
       BCC    LF875   
       CMP    #$99    
       BCS    LF875   
       STY    $E7     
       STA    $E2     
       LDA    $CE     
       JSR    LFB9D   
       LDY    #$20    
       LDA    $D9,X   
       AND    #$0F    
       STA    $D9,X   
       AND    #$04    
       BNE    LF850   
       LDY    #$10    
       STY    $EB     
       BPL    LF852   
LF850: STY    $EC     
LF852: LDA    $E2     
       ADC    #$08    
       SEC            
       SBC    $9E,X   
       JSR    LFFAF   
       TAY            
       LDA    $A4,X   
       AND    LFF04,Y 
LF862: STA    $A4,X   
       BNE    LF875   
       LDA    #$FF    
       STA    $B0,X   
       LDA    $D9,X   
       AND    #$04    
       BNE    LF875   
       LDA    $82     
       JSR    LFBCB   
LF875: LDX    #$03    
LF877: LDA    $B0,X   
       BMI    LF891   
       LDA    $D9,X   
       AND    #$04    
       BNE    LF891   
       LDA    $C7,X   
       CMP    #$08    
       BCC    LF891   
       CMP    #$97    
       BCS    LF891   
       LDA    $D9,X   
       ORA    #$10    
       STA    $D9,X   
LF891: DEX            
       BPL    LF877   
       LDX    $B5     
       BMI    LF8BC   
       LDA    #$FF    
       STA    $B5     
       LDA    $CE     
       JSR    LFB9D   
       LDA    #$17    
       STA    $E9     
       LDA    $C6     
       CLC            
       ADC    #$10    
       SEC            
       SBC    $9E,X   
       BCS    LF8B1   
       LDA    #$38    
LF8B1: LSR            
       LSR            
       LSR            
       TAY            
       LDA    $A4,X   
       AND    LFF07,Y 
       BPL    LF862   
LF8BC: LDX    $81     
       TXA            
       LSR            
       LSR            
       AND    #$0F    
       CMP    #$08    
       BCC    LF8C9   
       EOR    #$0F    
LF8C9: STA    $DD     
       TXA            
       AND    #$07    
       BNE    LF8D8   
       DEC    $DE     
       BPL    LF8D8   
       LDA    #$02    
       STA    $DE     
LF8D8: TXA            
       LSR            
       AND    #$01    
       STA    $E2     
       LDX    #$03    
LF8E0: LDY    $D9,X   
       TYA            
       AND    #$04    
       BEQ    LF8EF   
       LDA    $D9,X   
       AND    #$0C    
       ORA    $E0     
       BPL    LF900   
LF8EF: TYA            
       CMP    #$10    
       BCC    LF8FA   
       AND    #$18    
       ORA    $E2     
       BPL    LF900   
LF8FA: LDA    $D9,X   
       AND    #$08    
       ORA    $DE     
LF900: STA    $D9,X   
       DEX            
       BPL    LF8E0   
       LDA    $A3     
       BNE    LF90D   
       LDX    $E9     
       BNE    LF910   
LF90D: JMP    LF983   
LF910: LDA    #$00    
       STA    $E7     
       STA    $F9     
       LDA    $81     
       AND    #$03    
       BNE    LF980   
       STA    $F6     
       STA    AUDV1   
       DEC    $E9     
       BEQ    LF94E   
       LDA    $E9     
       CMP    #$0F    
       BCC    LF93E   
       LDX    #$03    
       AND    #$01    
       BNE    LF932   
       LDX    #$10    
LF932: STX    AUDF0   
       LDA    #$06    
       STA    AUDV0   
       LDA    #$0F    
       STA    AUDC0   
       BPL    LF94C   
LF93E: STA    AUDV0   
       LDA    #$08    
       STA    AUDC0   
       LDA    #$10    
       STA    AUDF0   
       LDA    #$00    
       STA    $E6     
LF94C: BPL    LF980   
LF94E: STA    AUDV0   
       STA    AUDC0   
       STA    $D6     
       JSR    LFC0A   
       JSR    LFB7B   
       LDX    $BE     
       BEQ    LF960   
       DEC    $BE     
LF960: LDX    #$03    
LF962: LDA    $D9,X   
       AND    #$0F    
       STA    $D9,X   
       DEX            
       BPL    LF962   
       LDA    $E8     
       ORA    #$01    
       STA    $E8     
       LDA    $BB     
       ORA    $C2     
       BNE    LF97D   
       INC    $A3     
       STA    $E1     
       BPL    LF980   
LF97D: JSR    LFCCD   
LF980: JMP    LFB4F   
LF983: LDA    $BD     
       CLC            
       ADC    #$10    
       STA    $E4     
       SEC            
       SBC    #$0A    
       STA    $E3     
       LSR            
       STA    $E2     
       LDX    #$02    
LF994: LDA    $E2,X   
       JSR    LFB84   
       DEX            
       BPL    LF994   
       LDX    #$03    
LF99E: LDA    $D9,X   
       JSR    LFFAF   
       STA    $E2     
       LDA    $9E,X   
       BCS    LF9B4   
       ADC    $93     
       STA    $9E,X   
       AND    #$F8    
       CMP    #$A0    
       JMP    LF9BC   
LF9B4: SBC    $93     
       STA    $9E,X   
       AND    #$F8    
       CMP    #$D8    
LF9BC: BNE    LF9D5   
       LDA    $D9,X   
       AND    #$04    
       EOR    #$04    
       STA    $E2     
       LDA    $82     
       AND    #$08    
       ORA    $E2     
       STA    $D9,X   
       LDA    $82     
       STA    $E2     
       JSR    LFBEB   
LF9D5: LDA    $D9,X   
       LSR            
       LSR            
       LSR            
       BCS    LFA19   
       LSR            
       LDY    $F1,X   
       DEY            
       BPL    LF9E5   
       JMP    LFA5C   
LF9E5: BCS    LF9F5   
       LSR    $E2     
       LDA    $93     
       BCS    LF9EF   
       LDA    $92     
LF9EF: CLC            
       ADC    $C7,X   
       JMP    LFA0E   
LF9F5: LSR    $E2     
       LDA    $93     
       BCS    LF9FD   
       LDA    $92     
LF9FD: STA    $E3     
       BEQ    LFA5C   
       LDA    $C7,X   
       BNE    LFA07   
       LDA    #$A0    
LFA07: SEC            
       SBC    $E3     
       BNE    LFA0E   
       LDA    #$A0    
LFA0E: CMP    #$A0    
       BCC    LFA5A   
       LDA    #$00    
       STA    $F1,X   
       JMP    LFA5A   
LFA19: LDA    $C7,X   
       STA    $E2     
       BNE    LFA39   
       LDY    $A4,X   
       BEQ    LFA4D   
       LDA    $D9,X   
       AND    #$08    
       ORA    $A4,X   
       TAY            
       LDA    $9E,X   
       CLC            
       ADC    LFC18,Y 
       STA    $E2     
       SEC            
       SBC    #$27    
       CMP    #$58    
       BCS    LFA58   
LFA39: LDA    $D9,X   
       JSR    LFFAF   
       LDA    $E2     
       BCS    LFA47   
       ADC    $94     
       JMP    LFA49   
LFA47: SBC    $94     
LFA49: CMP    #$A0    
       BCC    LFA5A   
LFA4D: LDA    $A4,X   
       BNE    LFA58   
       LDA    $82     
       ORA    #$80    
       JSR    LFBCB   
LFA58: LDA    #$00    
LFA5A: STA    $C7,X   
LFA5C: DEX            
       BMI    LFA62   
       JMP    LF99E   
LFA62: LDA    $A3     
       BNE    LFA7A   
       LDA    $E1     
       CMP    #$0D    
       BNE    LFA94   
       LDA    $E6     
       CMP    #$40    
       BEQ    LFA94   
       LDA    $BE     
       BNE    LFA7D   
       LDA    #$17    
       STA    $E9     
LFA7A: JMP    LFB4F   
LFA7D: CMP    #$06    
       BNE    LFA85   
       STA    $E8     
       BPL    LFA7A   
LFA85: JSR    LFFB4   
       BCC    LFA7A   
       DEC    $BE     
       INC    $BD     
       LDA    #$00    
       STA    AUDV0   
       STA    AUDV1   
LFA94: LDA    $84     
       AND    #$01    
       BNE    LFAA2   
       LDX    $E1     
       CPX    #$0E    
       BCC    LFAA2   
       DEC    $E1     
LFAA2: LDA    $84     
       AND    #$02    
       BNE    LFAB0   
       LDX    $E1     
       CPX    #$6C    
       BCS    LFAB0   
       INC    $E1     
LFAB0: LDA    $84     
       AND    #$04    
       BNE    LFAC2   
       LDA    #$08    
       STA    $D6     
       LDA    $C6     
       CMP    #$16    
       BCC    LFAC2   
       DEC    $C6     
LFAC2: LDA    $84     
       AND    #$08    
       BNE    LFAD2   
       STA    $D6     
       LDA    $C6     
       CMP    #$86    
       BCS    LFAD2   
       INC    $C6     
LFAD2: LDA    $E7     
       BNE    LFAF6   
       STA    AUDV0   
       LDA    $D6     
       STA    $D7     
       LDY    $B7     
       LDA.wy $000C,Y 
       BMI    LFB37   
       LDA    $E1     
       CMP    #$12    
       BCC    LFB37   
       LDA    #$10    
       STA    $ED     
       LDA    #$0F    
       STA    AUDC0   
       LDA    $C6     
       CLC            
       ADC    #$08    
LFAF6: TAY            
       LDA    $ED     
       STA    AUDF0   
       LDX    $E6     
       CPX    #$11    
       BCS    LFB03   
       LDA    #$00    
LFB03: LSR            
       STA    AUDV0   
       LDA    $81     
       AND    #$03    
       BNE    LFB0E   
       DEC    $ED     
LFB0E: LDA    SWCHB   
       STA    $E2     
       LDA    $D7     
       LSR            
       LSR            
       LSR            
       TAX            
       TYA            
       ADC    LFFAD,X 
       ASL    $E2     
       LDY    $B7     
       BNE    LFB25   
       ASL    $E2     
LFB25: BCC    LFB2B   
       CLC            
       ADC    LFB52,X 
LFB2B: STA    $E7     
       CMP    #$A0    
       BCC    LFB35   
       LDA    #$00    
       STA    AUDV0   
LFB35: STA    $E7     
LFB37: LDY    $E6     
       LDA    $E1     
       CMP    #$14    
       BCC    LFB4D   
       LDA    $81     
       AND    #$1F    
       BNE    LFB4D   
       DEY            
       BNE    LFB4D   
       TAY            
       LDA    #$17    
       STA    $E9     
LFB4D: STY    $E6     
LFB4F: JMP    LF00E   
LFB52: .byte $FE,$02
LFB54: LDX    #$A2    
LFB56: LDA    #$00    
LFB58: STA    VSYNC,X 
       INX            
       CPX    #$FB    
       BNE    LFB58   
       LDX    #$03    
LFB61: LDA    #$B8    
       STA    $AB,X   
       DEX            
       BNE    LFB61   
       STX    AUDV0   
       STX    AUDV1   
       INX            
       STX    $E8     
       LDX    #$03    
       STX    $BB     
       INX            
       LDA    $80     
       LSR            
       BCC    LFB7B   
       STX    $C2     
LFB7B: LDA    #$0D    
       STA    $E1     
       LDA    #$4C    
       STA    $C6     
       RTS            

LFB84: STA    $FA     
       JSR    LFFAF   
       STA    $92,X   
       LDA    $FA     
       AND    #$0F    
       CLC            
       ADC    $CF,X   
       CMP    #$10    
       BCC    LFB98   
       INC    $92,X   
LFB98: AND    #$0F    
       STA    $CF,X   
       RTS            

LFB9D: SED            
       CLC            
       ADC    $BA     
       STA    $BA     
       BCC    LFBC9   
       LDA    $B9     
       ADC    #$00    
       STA    $B9     
       LDA    $B8     
       ADC    #$00    
       BCC    LFBB9   
       LDA    #$99    
       STA    $B9     
       STA    $BA     
       INC    $A3     
LFBB9: STA    $B8     
       LDA    $B9     
       AND    #$FF    
       BNE    LFBC9   
       LDA    $BB     
       CMP    #$06    
       BCS    LFBC9   
       INC    $BB     
LFBC9: CLD            
       RTS            

LFBCB: STA    $E2     
       LDA    $BD     
       AND    #$07    
       TAY            
       LDA    $E2     
       AND    #$08    
       STA    $D9,X   
       BNE    LFBE3   
       LDA    LFEFC,Y 
       AND    #$0F    
       STA    $A4,X   
       BNE    LFBEB   
LFBE3: LDA    LFEFC,Y 
       JSR    LFFAF   
       STA    $A4,X   
LFBEB: LDY    #$A8    
       LDA    $D9,X   
       AND    #$0F    
       STA    $D9,X   
       AND    #$08    
       BEQ    LFBF9   
       LDY    #$D7    
LFBF9: STY    $9E,X   
       LDA    $E2     
       LDY    $F1,X   
       BMI    LFC09   
       CMP    #$50    
       BCC    LFC09   
       LDY    #$01    
       STY    $F1,X   
LFC09: RTS            

LFC0A: LDX    #$03    
LFC0C: LDA    #$D0    
       STA    $9E,X   
       LDA    #$00    
       STA    $C7,X   
       DEX            
       BPL    LFC0C   
       RTS            

LFC18: .byte $00,$20,$10,$20,$00,$20,$10,$20,$00,$20,$10,$10,$00,$00,$00,$00
LFC28: .byte $DA
LFC29: .byte $60
LFC2A: .byte $50,$40
LFC2C: .byte $30,$20,$10,$00,$F0,$E0,$D0,$C0,$B0,$A0,$90,$71,$61,$51,$41,$31
       .byte $21,$11,$01,$F1,$E1,$D1,$C1,$B1,$A1,$91,$72,$62,$52,$42,$32,$22
       .byte $12,$02,$F2,$E2,$D2,$C2,$B2,$A2,$92,$73,$63,$53,$43,$33,$23,$13
       .byte $03,$F3,$E3,$D3,$C3,$B3,$A3,$93,$74,$64,$54,$44,$34,$24,$14,$04
       .byte $F4,$E4,$D4,$C4,$B4,$A4,$94,$75,$65,$55,$45,$35,$25,$15,$05,$F5
       .byte $E5,$D5,$C5,$B5,$A5,$95,$76,$66,$56,$46,$36,$26,$16,$06,$F6,$E6
       .byte $D6,$C6,$B6,$A6,$96,$77,$67,$57,$47,$37,$27,$17,$07,$F7,$E7,$D7
       .byte $C7,$B7,$A7,$97,$78,$68,$58,$48,$38,$28,$18,$08,$F8,$E8,$D8,$C8
       .byte $B8,$A8,$98,$79,$69,$59,$49,$39,$29,$19,$09,$F9,$E9,$D9,$C9,$B9
       .byte $A9,$99,$7A,$6A,$5A,$4A,$3A,$2A,$1A,$0A,$FA,$EA,$DA,$CA,$BA,$AA
       .byte $9A
LFCCD: JSR    LFFDA   
       LDA    $BB     
       BNE    LFCD7   
       JSR    LFFDA   
LFCD7: DEC    $BB     
       RTS            

LFCDA: LDY    #$0B    
       LDA    #$FE    
LFCDE: STA.wy $0092,Y 
       DEY            
       DEY            
       BPL    LFCDE   
       RTS            

LFCE6: .byte $14,$24,$34,$34,$44,$44,$54,$54,$64,$64
LFCF0: .byte $1A,$AF,$90,$18,$AA,$84,$00,$0C,$06,$32,$86
LFCFB: .byte $A4,$B2,$C0,$EA,$EA,$00,$10,$10,$E0,$30,$10,$00,$20,$00,$E0,$00
       .byte $F0,$F0,$00,$00,$10,$10,$10,$10,$00,$20,$00,$E0,$F0,$F0,$00,$00
       .byte $00,$10,$10,$E0,$30,$10,$00,$20,$00,$E0,$00,$F0,$F0,$00,$00,$F0
       .byte $F0,$F0,$F0,$D0,$20,$F0,$00,$20,$00,$10,$10,$00,$D0,$00,$00,$E0
       .byte $F0,$F0,$D0,$20,$F0,$00,$20,$10,$10,$00,$00,$D0,$00,$F0,$F0,$F0
       .byte $F0,$D0,$20,$F0,$00,$20,$00,$10,$10,$00,$D0,$00,$02,$02,$02,$22
       .byte $12,$22,$12,$02,$02,$02,$00,$02,$02,$00,$00,$02,$12,$12,$12,$22
       .byte $12,$02,$02,$00,$02,$02,$00,$02,$00,$02,$02,$02,$22,$12,$22,$12
       .byte $02,$02,$02,$02,$00,$02,$02,$00,$00,$00,$00,$10,$28,$10,$00,$00
       .byte $00,$00,$00,$00,$44,$10,$00,$28,$00,$10,$44,$00,$00,$00,$00,$82
       .byte $10,$00,$00,$54,$00,$00,$10,$82,$00,$00,$00,$FE,$FF,$7D,$FF,$BF
       .byte $0C,$0C,$0C,$0C,$04,$00,$00,$00,$80,$7E,$FF,$FD,$7F,$BF,$0C,$0C
       .byte $0C,$0C,$04,$00,$00,$00,$80,$FE,$7F,$FD,$FF,$3F,$0C,$0C,$0C,$0C
       .byte $04,$00,$00,$00,$22,$00,$00,$22,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$10,$D8,$7F,$7F,$DF,$0C,$08,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $91,$DB,$7E,$7F,$DF
LFDF0: .byte $8C,$08,$00,$00,$00,$00,$00,$00,$00,$00,$99,$8D,$8D,$82,$82,$EA
       .byte $3C,$66,$66,$66,$66,$66,$66,$3C,$3C,$18,$18,$18,$18,$18,$38,$18
       .byte $7E,$60,$60,$3C,$06,$06,$46,$3C,$3C,$46,$06,$0C,$0C,$06,$46,$3C
       .byte $0C,$0C,$0C,$7E,$4C,$2C,$1C,$0C,$7C,$46,$06,$06,$7C,$60,$60,$7E
       .byte $3C,$66,$66,$66,$7C,$60,$62,$3C,$18,$18,$18,$18,$0C,$06,$42,$7E
       .byte $3C,$66,$66,$3C,$3C,$66,$66,$3C,$3C,$46,$06,$3E,$66,$66,$66,$3C
       .byte $00,$00,$00,$00
LFE54: .byte $00,$00,$00,$00,$02,$00,$00
LFE5B: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$F7,$95,$87,$80,$90,$F0
LFE6B: .byte $AD,$A9,$E9,$A9,$ED,$41,$0F,$00,$47,$41,$77,$55,$75,$00,$00,$00
LFE7B: .byte $50,$58,$5C,$56,$53,$11,$F0,$00,$03,$00,$4B,$4A,$6B,$00,$08,$00
LFE8B: .byte $BA,$8A,$BA,$A2,$3A,$80,$FE,$00,$80,$80,$AA,$AA,$BA,$22,$27,$02
LFE9B: .byte $E9,$AB,$AF,$AD,$E9,$00,$00,$00,$00,$00,$11,$11,$17,$15,$17,$00
LFEAB: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$77,$51,$73,$51,$77,$00
LFEBB: STA    HMP0,X  
       AND    #$0F    
       TAY            
       INY            
       INY            
       INY            
       STA    WSYNC   
LFEC5: DEY            
       BPL    LFEC5   
       STA    RESP0,X 
       RTS            

LFECB: JSR    LFEBB   
       STA    WSYNC   
       STA    HMOVE   
       JSR    LFFB3   
       JSR    LFFB3   
       STA    HMCLR   
       RTS            

LFEDB: LDY    #$02    
LFEDD: LDA    $82     
       ASL            
       ASL            
       ASL            
       EOR    $82     
       ASL            
       ROL    $82     
       DEY            
       BPL    LFEDD   
       RTS            

LFEEB: .byte $06,$04,$00,$00,$00,$00,$01,$03,$07
LFEF4: .byte $00,$00,$00,$01,$00,$02,$01,$03
LFEFC: .byte $41,$41,$63,$63,$55,$55,$77,$77
LFF04: .byte $03,$05,$06
LFF07: .byte $03,$03,$01,$05,$04,$06,$06,$04
LFF0F: .byte $C8,$E8,$58,$36,$C6,$E8,$C8,$36
LFF17: .byte $90,$90,$90,$90,$90,$90,$92,$94,$96,$98,$9A,$9C,$9C,$9C,$9C,$0E
       .byte $00,$0E,$00,$0E,$00,$0E,$00,$0E
LFF2F: .byte $00,$01,$03,$07,$0F,$1F,$3F,$7F,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF
LFF40: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$C0,$E0,$F0,$F8,$FC,$FE
       .byte $FF
LFF51: .byte $00,$20,$10,$10,$00
LFF56: .byte $00,$00,$00,$10,$11,$31,$33
LFF5D: .byte $00,$80,$FC,$FE,$FE,$BE,$0C,$0C,$04
LFF66: .byte $EA,$AE,$A4,$AE,$EA
LFF6B: .byte $4E,$4A,$4A,$E8,$AE
LFF70: .byte $D2,$96,$DE,$9A,$D2,$00,$80,$C0,$E0,$F0,$F8,$FC,$FE,$FF
LFF7E: .byte $00,$0D,$1B,$1B,$1B,$1B,$1B,$1B,$29,$38,$47,$47,$00,$00,$00,$00
       .byte $00,$00,$00,$00
LFF92: .byte $56,$64,$73,$73,$CC,$CC,$CC,$CC,$56,$64,$73,$73,$CC,$CC,$CC,$CC
LFFA2: .byte $D4,$E3,$E3,$00,$A4,$B2,$C0,$B8,$B8,$C0,$B8
LFFAD: .byte $05,$FB
LFFAF: LSR            
LFFB0: LSR            
LFFB1: LSR            
       LSR            
LFFB3: RTS            

LFFB4: LDA    $81     
       AND    #$01    
       BNE    LFFBE   
       STA    $F9     
       INC    $E6     
LFFBE: LDA    $E6     
       LSR            
       EOR    #$FF    
       STA    AUDF0   
       CLC            
       ADC    #$07    
       STA    AUDF1   
       LDA    #$08    
       STA    AUDC0   
       STA    AUDC1   
       LSR            
       STA    AUDV0   
       STA    AUDV1   
       LDA    $E6     
       CMP    #$40    
       RTS            

LFFDA: LDX    #$06    
LFFDC: LDA    $B8,X   
       LDY    $BF,X   
       STA    $BF,X   
       STY    $B8,X   
       DEX            
       BPL    LFFDC   
       LDA    $B7     
       EOR    #$01    
       STA    $B7     
LFFED: RTS            

LFFEE: .byte $FF,$E7,$C3
LFFF1: .byte $81,$80,$40,$20,$F0,$18,$0F,$0C,$02,$02,$EA,$00,$F0,$00,$FD
