; Disassembly of roms/Dragon Defender.bin
; Disassembled Tue Oct  6 15:21:09 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Dragon Defender.bin
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
AUDC0   =  $15
AUDC1   =  $16
AUDF0   =  $17
AUDF1   =  $18
AUDV0   =  $19
AUDV1   =  $1A
GRP0    =  $1B
GRP1    =  $1C
ENAM0   =  $1D
HMP0    =  $20
HMP1    =  $21
HMOVE   =  $2A
HMCLR   =  $2B
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296

       ORG $F000

START:
       CLD            
       LDX    #$00    
       LDA    #$00    
LF005: STA    VSYNC,X 
       TXS            
       INX            
       BNE    LF005   
       LDA    #$22    
       STA    TIM64T  
       JSR    LFAEA   
       LDA    #$35    
       STA    $DC     
LF017: LDA    INTIM   
       BNE    LF017   
       LDA    #$82    
       STA    WSYNC   
       STA    VBLANK  
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    VSYNC   
       STA    VBLANK  
       STA    PF0     
       STA    PF1     
       STA    PF2     
       STA    GRP0    
       STA    GRP1    
       LDA    #$28    
       STA    TIM64T  
       LDA    SWCHB   
       AND    #$01    
       BNE    LF04F   
       JSR    LFAEA   
LF04F: LDA    $DC     
       BEQ    LF063   
       LDA    $A6     
       BNE    LF063   
       INC    $80     
       LDA    $80     
       CMP    #$05    
       BCC    LF063   
       LDA    #$01    
       STA    $80     
LF063: LDA    $DB     
       BNE    LF076   
       LDA    $C9     
       AND    #$01    
       BNE    LF073   
       JSR    LFA3F   
       JMP    LF076   
LF073: JSR    LF717   
LF076: LDA    #$00    
       STA    $CC     
       STA    $CA     
       LDA    #$05    
       STA    $CF     
       LDA    $80     
       CMP    #$01    
       BNE    LF092   
       LDA    #$40    
       STA    $CB     
       LDA    #$78    
       STA    $CD     
       LDA    #$A6    
       BNE    LF0C6   
LF092: CMP    #$02    
       BNE    LF0A8   
       LDA    #$A0    
       STA    $CB     
       LDA    #$D9    
       STA    $CD     
       LDA    #$48    
       STA    $CE     
       LDA    #$0C    
       STA    $CF     
       BNE    LF0C8   
LF0A8: CMP    #$03    
       BNE    LF0B8   
       LDA    #$30    
       STA    $CB     
       LDA    #$68    
       STA    $CD     
       LDA    #$B8    
       BNE    LF0C6   
LF0B8: LDA    #$90    
       STA    $CB     
       LDA    #$26    
       STA    $CC     
       LDA    #$04    
       STA    $CD     
       LDA    #$58    
LF0C6: STA    $CE     
LF0C8: LDA    INTIM   
       BNE    LF0C8   
       LDA    #$30    
       STA    TIM64T  
       LDA    $DB     
       BEQ    LF0E1   
       AND    #$F3    
       ORA    #$01    
       STA    $CC     
       STA    $CA     
       JSR    LFBE1   
LF0E1: LDA    $D1     
       BEQ    LF107   
       DEC    $D1     
       AND    #$03    
       BEQ    LF0F1   
       LDA    #$00    
       STA    AUDV0   
       BEQ    LF104   
LF0F1: JSR    LFBB4   
       CLC            
       SED            
       LDA    $92     
       ADC    #$01    
       CMP    #$60    
       BCC    LF102   
       INC    $91     
       LDA    #$00    
LF102: STA    $92     
LF104: JMP    LF13B   
LF107: LDA    $91     
       ORA    $92     
       BEQ    LF138   
       DEC    $94     
       BNE    LF13B   
       SEC            
       SED            
       LDA    $92     
       SBC    #$01    
       STA    $92     
       BCS    LF13B   
       DEC    $91     
       LDA    $91     
       CMP    #$02    
       BCS    LF132   
       LDA    $C9     
       AND    #$03    
       BEQ    LF12F   
       LDA    #$00    
       STA    AUDV0   
       BEQ    LF132   
LF12F: JSR    LFBB4   
LF132: LDA    #$59    
       STA    $92     
       BNE    LF13B   
LF138: JSR    LFADB   
LF13B: CLD            
       LDA    $91     
       JSR    LF5F0   
       STA    $82     
       LDA    $92     
       LSR            
       LSR            
       LSR            
       LSR            
       JSR    LF5F0   
       STA    $84     
       LDA    $92     
       AND    #$0F    
       JSR    LF5F0   
       STA    $86     
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       LDA    #$FF    
       STA    $83     
       STA    $85     
       STA    $87     
       LDA    $94     
       BNE    LF16B   
       LDA    #$10    
LF16B: STA    $94     
       LDA    #$3C    
       LDX    #$00    
       JSR    LF90A   
       LDA    #$44    
       LDX    #$01    
       JSR    LF90A   
       LDA    #$01    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$6C    
       STA    COLUP0  
       STA    COLUP1  
       LDY    #$07    
LF189: STA    WSYNC   
       STA    HMOVE   
       LDA    ($82),Y 
       STA    GRP0    
       LDA    LFF58,Y 
       STA    GRP1    
       LDA    ($86),Y 
       STA    $8C     
       LDX    $8C     
       DEC    $93     
       NOP            
       NOP            
       LDA    ($84),Y 
       STA    GRP0    
       STX    GRP1    
       STA    HMCLR   
       DEY            
       BPL    LF189   
       LDA    #$00    
       STA    GRP1    
       STA    GRP0    
       LDA    #$1A    
       LDX    #$00    
       LDY    #$46    
       JSR    LF52B   
       DEC    $C9     
       LDA    $CC     
       STA    COLUPF  
       LDA    #$01    
       STA    CTRLPF  
       LDA    #$4C    
       STA    $93     
       LDA    #$FF    
       STA    PF2     
       LDA    $CA     
       STA    COLUBK  
       LDA    $C9     
       AND    #$01    
       BEQ    LF200   
       LDA    #$FC    
       STA    $85     
       LDA    #$55    
       STA    $C1     
       STA    COLUP0  
       LDA    $9F     
       LDX    #$02    
       JSR    LF90A   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$FE    
       STA    $87     
       LDX    #$00    
       STX    $86     
       STX    $82     
       LDA    #$30    
       STA    NUSIZ0  
       STA    WSYNC   
       STA    HMCLR   
       JMP    LF2BE   
LF200: LDA    #$10    
       STA    NUSIZ0  
       LDA    #$17    
       STA    NUSIZ1  
       LDA    $97     
       BEQ    LF226   
       CMP    #$04    
       BCS    LF226   
       CMP    #$01    
       BEQ    LF220   
       CMP    #$02    
       BEQ    LF21C   
       LDA    #$2C    
       BNE    LF222   
LF21C: LDA    #$24    
       BNE    LF222   
LF220: LDA    #$1C    
LF222: STA    $88     
       BNE    LF22C   
LF226: LDA    #$FF    
       STA    $96     
       BNE    LF233   
LF22C: LDA    $95     
       LDX    #$01    
       JSR    LF90A   
LF233: LDX    #$00    
       STX    $8C     
       STX    $8D     
       LDA    $98     
       JSR    LF90A   
       LDA    $9B     
       LDX    #$02    
       JSR    LF90A   
       LDA    $9A     
       STA    $8A     
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$FD    
       STA    $89     
       STA    $8B     
       STA    $87     
       LDA    #$FE    
       STA    $83     
       LDA    #$28    
       STA    COLUP1  
       LDA    #$68    
       STA    COLUP0  
       LDA    #$00    
       STA    $82     
       STA    WSYNC   
       STA    HMCLR   
LF269: LDA    INTIM   
       BNE    LF269   
       LDA    #$BC    
       STA    TIM64T  
       LDX    #$FF    
LF275: STA    WSYNC   
       DEC    $93     
       BEQ    LF2B5   
       LDA    $93     
       CMP    $99     
       BNE    LF285   
       LDY    #$0E    
       STY    $8D     
LF285: CMP    $9C     
       BNE    LF28B   
       STX    ENAM0   
LF28B: CMP    $96     
       BNE    LF293   
       LDY    #$08    
       STY    $8C     
LF293: TAY            
       LDA    ($82),Y 
       STA    PF2     
       STA    WSYNC   
       LDY    $8D     
       BEQ    LF2A4   
       LDA    ($8A),Y 
       STA    GRP0    
       DEC    $8D     
LF2A4: LDY    $8C     
       BEQ    LF2AE   
       LDA    ($88),Y 
       STA    GRP1    
       DEC    $8C     
LF2AE: LDA    #$00    
       STA    ENAM0   
       JMP    LF275   
LF2B5: LDA    #$00    
       STA    GRP1    
       STA    ENAM0   
       JMP    LF353   
LF2BE: LDA    INTIM   
       BNE    LF2BE   
       LDA    #$BC    
       STA    TIM64T  
       STA    WSYNC   
LF2CA: DEC    $93     
       BEQ    LF2B5   
       LDY    $93     
       LDA    ($86),Y 
       STA    PF2     
       TYA            
       CMP    $A8,X   
       BEQ    LF328   
       LDY    #$FF    
       CMP    $A0     
       BNE    LF2E1   
       STY    ENAM0   
LF2E1: LDA    $C0     
       STA    COLUP1  
       STA    WSYNC   
       LDA    $84     
       CMP    #$D2    
       BCS    LF2F6   
       CMP    #$AF    
       BCC    LF2F6   
       LDA    $A4     
       JMP    LF2F8   
LF2F6: LDA    #$00    
LF2F8: STA    NUSIZ1  
       LDY    $82     
       BEQ    LF321   
       CPY    #$07    
       BNE    LF304   
       STA    HMCLR   
LF304: LDA    ($84),Y 
       STA    GRP1    
       DEC    $82     
LF30A: LDA    #$00    
       STA    ENAM0   
       LDA    $80     
       CMP    #$04    
       BEQ    LF31A   
       LDA    $C0     
       SBC    #$0F    
       STA    $C0     
LF31A: STA    WSYNC   
       STA    HMOVE   
       JMP    LF2CA   
LF321: LDA    $CD     
       STA    $C0     
       JMP    LF30A   
LF328: LDA    $A9,X   
       STA    $84     
       LDA    #$00    
       STA    GRP1    
       LDA    $A7,X   
       INX            
       INX            
       INX            
       INX            
       INX            
       LDY    #$07    
       STY    $82     
       SEC            
       STA    WSYNC   
LF33E: SBC    #$0F    
       BCS    LF33E   
       EOR    #$07    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    HMP1    
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       JMP    LF2CA   
LF353: LDY    #$FF    
       LDA    $DC     
       BNE    LF367   
       LDA    $C9     
       AND    #$01    
       BNE    LF367   
       LDA    $9C     
       CMP    #$04    
       BCS    LF367   
       STY    ENAM0   
LF367: LDA    $C5     
       LDX    #$00    
       JSR    LF90A   
       LDA    #$0F    
       STA    $93     
       LDA    #$FB    
       STA    $83     
       LDA    $C6     
       STA    $82     
       LDX    #$00    
       STX    $88     
       STX    ENAM0   
       LDA    #$05    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$FE    
       STA    $89     
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$07    
       STA    $8C     
       LDX    #$5D    
       LDA    $80     
       CMP    #$04    
       BEQ    LF3A6   
       LDY    #$00    
       STY    PF2     
       CMP    #$02    
       BEQ    LF3B2   
       BCC    LF3C2   
       BCS    LF3AC   
LF3A6: TXA            
       CLC            
       ADC    #$5A    
       BNE    LF3C3   
LF3AC: TXA            
       CLC            
       ADC    #$2D    
       BNE    LF3C3   
LF3B2: LDA    #$FD    
       STA    $89     
       LDX    #$43    
       LDA    $D0     
       AND    #$01    
       BNE    LF3C2   
       LDA    #$70    
       BNE    LF3C3   
LF3C2: TXA            
LF3C3: STA    $C0     
       CLC            
       ADC    #$0F    
       STA    $C1     
       CLC            
       ADC    #$0F    
       STA    $8A     
       LDA    $CE     
       STA    COLUP1  
       STA    COLUP0  
       STA    WSYNC   
       STA    HMCLR   
       LDA    $DC     
       BNE    LF3ED   
       LDA    $C9     
       AND    #$01    
       BNE    LF3ED   
       LDA    $9C     
       CMP    #$04    
       BCS    LF3ED   
       LDX    #$FF    
       BNE    LF3EF   
LF3ED: LDX    #$00    
LF3EF: LDA    INTIM   
       BNE    LF3EF   
       LDA    #$28    
       STA    TIM64T  
LF3F9: STA    WSYNC   
       DEC    $93     
       BMI    LF43A   
       LDA    $93     
       CMP    $CF     
       BCS    LF40F   
       LDY    $8C     
       BEQ    LF40F   
       LDA    ($82),Y 
       STA    GRP0    
       DEC    $8C     
LF40F: LDA    $CB     
       STA    COLUPF  
       DEC    $CB     
       LDA    $93     
       STA    WSYNC   
       CMP    #$0F    
       BCS    LF435   
       LDY    $C0     
       LDA    ($88),Y 
       STA    PF0     
       LDY    $C1     
       LDA    ($88),Y 
       STA    PF1     
       LDY    $8A     
       LDA    ($88),Y 
       STA    PF2     
       DEC    $C0     
       DEC    $C1     
       DEC    $8A     
LF435: STX    ENAM0   
       JMP    LF3F9   
LF43A: LDA    #$00    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       STA    ENAM0   
LF444: LDA    INTIM   
       BNE    LF444   
       LDA    #$58    
       STA    COLUPF  
       STA    WSYNC   
       LDA    #$00    
       LDY    #$04    
       LDX    $81     
       BEQ    LF46D   
       CPX    #$08    
       BCC    LF45F   
       LDX    #$08    
       STX    $81     
LF45F: SEC            
       ROR            
       ROR            
       DEX            
       BEQ    LF46D   
       DEY            
       BNE    LF45F   
       TAY            
       LDA    #$00    
       BEQ    LF474   
LF46D: STA    WSYNC   
       TAY            
       LDA    #$00    
       BEQ    LF47A   
LF474: SEC            
       ROL            
       ROL            
       DEX            
       BNE    LF474   
LF47A: TAX            
       LDA    #$06    
       STA    $82     
LF47F: STA    WSYNC   
       DEC    $82     
       BEQ    LF49F   
       LDA    #$00    
       STA    PF0     
       STY    PF1     
       STX    PF2     
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       STA    PF1     
       STA    PF2     
       JMP    LF47F   
LF49F: LDA    #$18    
       STA    TIM64T  
       DEC    $A6     
       LDA    $D1     
       BEQ    LF4B4   
       CMP    #$01    
       BNE    LF4AE   
LF4AE: JSR    LFBED   
       JMP    LF017   
LF4B4: LDA    $DC     
       BNE    LF4D1   
       LDA    $DB     
       BEQ    LF4CD   
       SEC            
       SBC    #$02    
       STA    $DB     
       LDA    $A6     
       AND    #$03    
       BNE    LF4CA   
       JSR    LFF60   
LF4CA: JMP    LF017   
LF4CD: LDA    $81     
       BNE    LF4E1   
LF4D1: LDA    #$00    
       STA    AUDV0   
       STA    AUDV1   
       JSR    LFBE1   
       LDA    #$35    
       STA    $DC     
       JMP    LF017   
LF4E1: LDA    $A6     
       AND    #$07    
       BEQ    LF520   
       CMP    #$01    
       BEQ    LF503   
       CMP    #$04    
       BEQ    LF503   
       CMP    #$03    
       BEQ    LF517   
       CMP    #$06    
       BEQ    LF517   
       JSR    LF68F   
       JSR    LF91C   
       JSR    LFF60   
       JMP    LF017   
LF503: JSR    LF5F7   
       LDA    $D3     
       BEQ    LF511   
       CMP    #$50    
       BCS    LF511   
       JSR    LFB8D   
LF511: JSR    LFD8F   
       JMP    LF017   
LF517: JSR    LF717   
       JSR    LF772   
       JMP    LF017   
LF520: JSR    LF9E8   
       JSR    LFD8F   
       INC    $D0     
       JMP    LF017   
LF52B: STA    WSYNC   
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$D0    
       STA    HMP0    
       LDA    #$A0    
       STA    HMP1    
       NOP            
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    RESP0   
       LDA    $8E,X   
       AND    #$F0    
       LSR            
       CLC            
       ADC    #$08    
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       STA    $82     
       LDA    $8E,X   
       AND    #$0F    
       JSR    LF5F0   
       STA    $84     
       LDA    $8F,X   
       AND    #$F0    
       LSR            
       CLC            
       ADC    #$08    
       STA    $86     
       LDA    $8F,X   
       AND    #$0F    
       JSR    LF5F0   
       STA    $88     
       STY    COLUBK  
       LDA    $90,X   
       AND    #$F0    
       LSR            
       CLC            
       ADC    #$08    
       STA    $8A     
       STA    HMCLR   
       LDA    $90,X   
       AND    #$0F    
       JSR    LF5F0   
       STA    $8C     
       LDY    #$07    
       LDA    #$FF    
       STA    $83     
       STA    $85     
       STA    $87     
       STA    $89     
       STA    $8B     
       STA    $8D     
       LDX    #$00    
       LDA    $82     
       CMP    #$08    
       BNE    LF5BF   
       STX    $82     
       LDA    $84     
       CMP    #$08    
       BNE    LF5BF   
       STX    $84     
       LDA    $86     
       CMP    #$08    
       BNE    LF5BF   
       STX    $86     
       LDA    $88     
       CMP    #$08    
       BNE    LF5BF   
       STX    $88     
       LDA    $8A     
       CMP    #$08    
       BNE    LF5BF   
       STX    $8A     
LF5BF: STA    WSYNC   
       LDA    ($84),Y 
       TAX            
       LDA    ($82),Y 
       STA    GRP0    
       LDA    ($88),Y 
       STA    GRP1    
       LDA    ($8C),Y 
       PHA            
       STX    GRP0    
       LDA    ($86),Y 
       STA    GRP0    
       LDA    ($8A),Y 
       STA    GRP1    
       PLA            
       STA    GRP1    
       DEY            
       BNE    LF5BF   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    WSYNC   
       LDA    #$00    
       STA    COLUBK  
       RTS            

LF5F0: ASL            
       ASL            
       ASL            
       CLC            
       ADC    #$08    
       RTS            

LF5F7: LDA    REFP1   
       AND    #$80    
       BNE    LF637   
       LDA    $A6     
       AND    #$07    
       CMP    #$01    
       BEQ    LF637   
       LDA    $97     
       BNE    LF637   
       LDA    $D3     
       BNE    LF611   
       LDA    #$44    
       STA    $D3     
LF611: LDA    #$01    
       STA    $97     
       CLC            
       LDA    $98     
       ADC    #$0A    
       STA    $95     
       LDA    $99     
       STA    $96     
       LDA    $9C     
       CMP    #$FF    
       BEQ    LF629   
       JMP    LF637   
LF629: CLC            
       LDA    $98     
       ADC    #$06    
       STA    $9B     
       SEC            
       LDA    $99     
       SBC    #$04    
       STA    $9C     
LF637: LDA    SWCHA   
       ASL            
       BCS    LF641   
       INC    $98     
       INC    $98     
LF641: ASL            
       BCS    LF648   
       DEC    $98     
       DEC    $98     
LF648: ASL            
       BCS    LF64F   
       DEC    $99     
       DEC    $99     
LF64F: ASL            
       BCS    LF656   
       INC    $99     
       INC    $99     
LF656: LDA    $98     
       CMP    #$04    
       BCS    LF660   
       LDA    #$04    
       BNE    LF666   
LF660: CMP    #$30    
       BCC    LF668   
       LDA    #$30    
LF666: STA    $98     
LF668: LDA    $99     
       CMP    #$4A    
       BCC    LF672   
       LDA    #$4A    
       BNE    LF678   
LF672: CMP    #$10    
       BCS    LF67A   
       LDA    #$10    
LF678: STA    $99     
LF67A: LDA    $A6     
       AND    #$0F    
       CMP    #$01    
       BNE    LF68E   
       LDA    $9A     
       BEQ    LF68A   
       LDA    #$00    
       BEQ    LF68C   
LF68A: LDA    #$0E    
LF68C: STA    $9A     
LF68E: RTS            

LF68F: LDA    $97     
       BEQ    LF6BD   
       CLC            
       ADC    #$01    
       LDX    $91     
       CPX    #$04    
       BCS    LF6AE   
       CPX    #$02    
       BCS    LF6A7   
       CMP    #$02    
       BCC    LF6B4   
       JMP    LF6B2   
LF6A7: CMP    #$03    
       BCC    LF6B4   
       JMP    LF6B2   
LF6AE: CMP    #$06    
       BCC    LF6B4   
LF6B2: LDA    #$00    
LF6B4: STA    $97     
       CLC            
       LDA    $95     
       ADC    #$1D    
       STA    $95     
LF6BD: LDA    $9C     
       CMP    #$FF    
       BEQ    LF6CE   
       SEC            
       SBC    #$02    
       CMP    #$02    
       BCS    LF6CC   
       LDA    #$FF    
LF6CC: STA    $9C     
LF6CE: LDA    $A0     
       CMP    #$FF    
       BEQ    LF6D7   
       JMP    LF6D8   
LF6D7: RTS            

LF6D8: LDA    $A1     
       BEQ    LF703   
       CMP    #$01    
       BEQ    LF6F1   
       LDA    $A0     
       SEC            
       SBC    #$03    
       CMP    #$03    
       BCS    LF6EF   
       LDA    #$00    
       STA    $A1     
       LDA    #$03    
LF6EF: STA    $A0     
LF6F1: LDA    $9F     
       SEC            
       SBC    #$04    
       CMP    #$06    
       BCS    LF700   
       LDA    #$FF    
       STA    $A0     
       LDA    #$00    
LF700: STA    $9F     
       RTS            

LF703: LDA    $A0     
       CLC            
       ADC    #$03    
       CMP    #$4A    
       BCC    LF712   
       LDA    #$02    
       STA    $A1     
       LDA    #$4A    
LF712: STA    $A0     
       JMP    LF6F1   
LF717: LDA    #$14    
       STA    $C1     
LF71B: LDX    #$00    
LF71D: LDA    $A8,X   
       CMP    $AD,X   
       BCS    LF75F   
       LDA    $AC,X   
       STA    $C0     
       LDA    $A7,X   
       STA    $AC,X   
       LDA    $C0     
       STA    $A7,X   
       LDA    $AD,X   
       STA    $C0     
       LDA    $A8,X   
       STA    $AD,X   
       LDA    $C0     
       STA    $A8,X   
       LDA    $AE,X   
       STA    $C0     
       LDA    $A9,X   
       STA    $AE,X   
       LDA    $C0     
       STA    $A9,X   
       LDA    $AF,X   
       STA    $C0     
       LDA    $AA,X   
       STA    $AF,X   
       LDA    $C0     
       STA    $AA,X   
       LDA    $B0,X   
       STA    $C0     
       LDA    $AB,X   
       STA    $B0,X   
       LDA    $C0     
       STA    $AB,X   
LF75F: INX            
       INX            
       INX            
       INX            
       INX            
       CPX    $C1     
       BNE    LF71D   
       SEC            
       LDA    $C1     
       SBC    #$05    
       STA    $C1     
       BNE    LF71B   
       RTS            

LF772: LDA    $80     
       CMP    #$02    
       BCC    LF78A   
       BEQ    LF782   
       CMP    #$03    
       BEQ    LF786   
       LDY    #$69    
       BNE    LF78C   
LF782: LDY    #$23    
       BNE    LF78C   
LF786: LDY    #$46    
       BNE    LF78C   
LF78A: LDY    #$00    
LF78C: LDX    #$00    
       STY    $C4     
       LDA    #$4A    
       STA    $C0     
       CLC            
       LDA    $AD     
       ADC    #$09    
       STA    $C1     
       JSR    LF7E4   
       LDX    #$05    
       SEC            
       LDA    $A8     
       SBC    #$07    
       STA    $C0     
       LDA    $B2     
       CLC            
       ADC    #$09    
       STA    $C1     
       JSR    LF7E4   
       LDX    #$0A    
       SEC            
       LDA    $AD     
       SBC    #$07    
       STA    $C0     
       LDA    $B7     
       CLC            
       ADC    #$09    
       STA    $C1     
       JSR    LF7E4   
       LDX    #$0F    
       SEC            
       LDA    $B2     
       SBC    #$07    
       STA    $C0     
       LDA    $BC     
       CLC            
       ADC    #$09    
       STA    $C1     
       JSR    LF7E4   
       LDX    #$14    
       SEC            
       LDA    $B7     
       SBC    #$07    
       STA    $C0     
       LDA    #$07    
       STA    $C1     
LF7E4: LDA    $A9,X   
       CMP    #$D2    
       BCC    LF7F4   
       BEQ    LF7EF   
       JMP    LF8DE   
LF7EF: LDA    #$D9    
       STA    $A9,X   
       RTS            

LF7F4: LDY    $C4     
       CMP    #$8C    
       BCC    LF809   
       LDA    $A9,X   
       CMP    #$AF    
       BCC    LF807   
       JSR    LFBB8   
       LDY    #$AF    
       BNE    LF809   
LF807: LDY    #$8C    
LF809: LDA    $A8,X   
       BNE    LF80E   
       RTS            

LF80E: LDA    $C1     
       CMP    #$07    
       BCS    LF818   
       LDA    #$07    
       STA    $C1     
LF818: LDA    $A8,X   
       CMP    $C0     
       BCC    LF82D   
       LDA    #$02    
LF820: STA    $AB,X   
       LDA    $82,X   
       AND    #$07    
       ADC    #$05    
       STA    $AA,X   
       JMP    LF846   
LF82D: CMP    $C1     
       BCS    LF835   
       LDA    #$00    
       BEQ    LF820   
LF835: LDA    $AA,X   
       BNE    LF846   
       CLC            
       LDA    $AB,X   
       ADC    #$01    
       CMP    #$03    
       BNE    LF820   
       LDA    #$00    
       BEQ    LF820   
LF846: LDA    $A7,X   
       CMP    #$92    
       BCC    LF869   
       STY    $A9,X   
       LDA    #$FF    
       STA    $82     
       LDA    $AB,X   
       BEQ    LF862   
       CMP    #$01    
       BEQ    LF85E   
       LDA    #$FF    
       BNE    LF864   
LF85E: LDA    #$00    
       BEQ    LF864   
LF862: LDA    #$01    
LF864: STA    $84     
       JMP    LF8D5   
LF869: CMP    #$7A    
       BCC    LF88E   
       TYA            
       CLC            
       ADC    #$07    
       STA    $A9,X   
       LDA    $AB,X   
       BEQ    LF883   
       CMP    #$01    
       BEQ    LF87F   
       LDA    #$FE    
       BNE    LF885   
LF87F: LDA    #$00    
       BEQ    LF885   
LF883: LDA    #$02    
LF885: STA    $84     
       LDA    #$FE    
       STA    $82     
       JMP    LF8D5   
LF88E: CMP    #$66    
       BCC    LF89B   
       CLC            
       TYA            
       ADC    #$0E    
       STA    $A9,X   
       JMP    LF8B1   
LF89B: CLC            
       TYA            
       ADC    #$15    
       STA    $8A     
       LDA    $A9,X   
       CMP    $8A     
       BEQ    LF8AC   
       LDA    $8A     
       JMP    LF8B1   
LF8AC: LDA    $8A     
       CLC            
       ADC    #$07    
LF8B1: STA    $A9,X   
       LDA    $AB,X   
       BEQ    LF8C3   
       CMP    #$01    
       BEQ    LF8BF   
       LDA    #$FE    
       BNE    LF8C5   
LF8BF: LDA    #$00    
       BEQ    LF8C5   
LF8C3: LDA    #$02    
LF8C5: STA    $84     
       LDA    #$FD    
       STA    $82     
       LDA    $A9,X   
       CMP    #$C4    
       BCC    LF8D5   
       LDA    #$00    
       STA    $82     
LF8D5: LDA    $A7,X   
       CLC            
       ADC    $82     
       CMP    #$04    
       BCS    LF8E2   
LF8DE: LDA    #$00    
       BEQ    LF8FB   
LF8E2: STA    $A7,X   
       LDA    $A8,X   
       CLC            
       ADC    $84     
       CMP    #$C0    
       BCS    LF8F9   
       CMP    #$4A    
       BCC    LF8FB   
       CPX    #$00    
       BNE    LF8FE   
       LDA    #$4A    
       BNE    LF8FB   
LF8F9: LDA    #$08    
LF8FB: STA    $A8,X   
       RTS            

LF8FE: CPX    #$05    
       BNE    LF906   
       LDA    #$46    
       BNE    LF8FB   
LF906: LDA    #$40    
       BNE    LF8FB   
LF90A: SEC            
       STA    WSYNC   
LF90D: SBC    #$0F    
       BCS    LF90D   
       EOR    #$07    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    HMP0,X  
       STA    RESP0,X 
       RTS            

LF91C: DEC    $C2     
       LDA    $C2     
       AND    #$07    
       BNE    LF92F   
       LDA    $C3     
       SEC            
       SBC    #$01    
       CMP    #$02    
       BCC    LF941   
       STA    $C3     
LF92F: LDA    $C3     
       CMP    #$C2    
       BCC    LF939   
       LDA    #$03    
       BNE    LF943   
LF939: CMP    #$7C    
       BCC    LF941   
       LDA    #$04    
       BNE    LF943   
LF941: LDA    #$05    
LF943: STA    $82     
       LDX    #$00    
       LDY    #$00    
LF949: LDA    $A8,X   
       BEQ    LF94E   
       INY            
LF94E: INX            
       INX            
       INX            
       INX            
       INX            
       CPX    #$19    
       BNE    LF949   
       CPY    $82     
       BCC    LF95C   
       RTS            

LF95C: LDX    #$00    
LF95E: LDA    $A8,X   
       BEQ    LF96B   
       INX            
       INX            
       INX            
       INX            
       INX            
       CPX    #$19    
       BNE    LF95E   
LF96B: SEC            
       LDA    $A8     
       SBC    $AD     
       CMP    #$0E    
       BCC    LF97C   
       LDA    $A8     
       SEC            
       SBC    #$07    
       JMP    LF99D   
LF97C: SEC            
       LDA    $AD     
       SBC    $B2     
       CMP    #$0E    
       BCC    LF98D   
       SEC            
       LDA    $AD     
       SBC    #$07    
       JMP    LF99D   
LF98D: SEC            
       LDA    #$4A    
       SBC    $A8     
       CMP    #$0F    
       BCC    LF99B   
       LDA    #$49    
       JMP    LF99D   
LF99B: LDA    #$07    
LF99D: STA    $A8,X   
       LDA    #$96    
       STA    $A7,X   
       CLC            
       LDA    $C3     
       AND    #$0F    
       ADC    #$01    
       STA    $AA,X   
       AND    #$03    
       SEC            
       SBC    #$01    
       STA    $AB,X   
       LDA    $C3     
       AND    #$37    
       BEQ    LF9D9   
       CMP    #$20    
       BEQ    LF9D9   
       LDA    $C3     
       CMP    #$14    
       BEQ    LF9D3   
       CMP    #$3C    
       BEQ    LF9D3   
       CMP    #$B4    
       BEQ    LF9D3   
       CMP    #$8C    
       BEQ    LF9D3   
       CMP    #$64    
       BNE    LF9E3   
LF9D3: LDA    #$8C    
       DEC    $C3     
       BNE    LF9E5   
LF9D9: LDA    #$07    
       STA    $A4     
       LDA    #$AF    
       DEC    $C3     
       BNE    LF9E5   
LF9E3: LDA    #$00    
LF9E5: STA    $A9,X   
       RTS            

LF9E8: LDY    $C4     
       LDA    $C5     
       BNE    LF9F2   
       LDA    #$90    
       STA    $C5     
LF9F2: CMP    #$90    
       BCC    LF9FC   
       DEC    $C5     
       TYA            
       JMP    LFA2B   
LF9FC: DEC    $C5     
       DEC    $C5     
       LDA    $C5     
       CMP    #$76    
       BCC    LFA0C   
       TYA            
       CLC            
       ADC    #$07    
       BNE    LFA2B   
LFA0C: CMP    #$5D    
       BCC    LFA16   
       CLC            
       TYA            
       ADC    #$0E    
       BNE    LFA2B   
LFA16: CLC            
       TYA            
       ADC    #$15    
       STA    $8A     
       LDA    $C6     
       CMP    $8A     
       BEQ    LFA26   
       LDA    $8A     
       BNE    LFA2B   
LFA26: LDA    $8A     
       CLC            
       ADC    #$07    
LFA2B: STA    $C6     
       LDA    $C5     
       CMP    #$05    
       BCS    LFA3B   
       LDA    #$00    
       STA    $C5     
       DEC    $91     
       BMI    LFA3C   
LFA3B: RTS            

LFA3C: JMP    LFADB   
LFA3F: LDX    #$00    
LFA41: LDA    $A9,X   
       CMP    #$D2    
       BCS    LFA61   
       SEC            
       LDA    $A8,X   
       SBC    $99     
       CMP    #$07    
       BCC    LFA54   
       CMP    #$F9    
       BCC    LFA61   
LFA54: LDA    $A7,X   
       SEC            
       SBC    $98     
       CMP    #$08    
       BCC    LFA9A   
       CMP    #$F8    
       BCS    LFA9A   
LFA61: INX            
       INX            
       INX            
       INX            
       INX            
       CPX    #$19    
       BNE    LFA41   
       LDX    #$00    
LFA6C: LDA    $A9,X   
       CMP    #$D2    
       BCS    LFA90   
       LDA    $97     
       BEQ    LFA99   
       SEC            
       LDA    $A8,X   
       SBC    $96     
       CMP    #$07    
       BCC    LFA83   
       CMP    #$F9    
       BCC    LFA90   
LFA83: LDA    $A7,X   
       SEC            
       SBC    $95     
       CMP    #$20    
       BCC    LFAA9   
       CMP    #$E0    
       BCS    LFAA9   
LFA90: INX            
       INX            
       INX            
       INX            
       INX            
       CPX    #$19    
       BNE    LFA6C   
LFA99: RTS            

LFA9A: LDA    $A9,X   
       CMP    #$AF    
       BCS    LFADB   
       CMP    #$8C    
       BCC    LFADB   
       LDA    #$F0    
       STA    $D1     
       RTS            

LFAA9: LDA    #$04    
       STA    $97     
       LDA    $A9,X   
       CMP    #$AF    
       BCC    LFACA   
       LDA    $A4     
       CMP    #$07    
       BNE    LFABE   
       LDA    #$05    
LFABB: STA    $A4     
       RTS            

LFABE: CMP    #$05    
       BNE    LFAC6   
       LDA    #$00    
       BEQ    LFABB   
LFAC6: LDA    #$00    
       STA    AUDV0   
LFACA: LDA    #$D2    
       STA    $A9,X   
LFACE: LDA    #$AA    
       STA    $D3     
       LDA    #$01    
       CLC            
       SED            
       ADC    $8F     
       JMP    LFDD7   
LFADB: LDA    #$AA    
       STA    $D3     
       LDA    #$E0    
       STA    $DB     
       DEC    $81     
       LDA    #$00    
       STA    $97     
       RTS            

LFAEA: LDA    #$FF    
       STA    $C3     
       STA    $A0     
       STA    $A6     
       STA    $9C     
       LDA    #$01    
       STA    $80     
       LDA    #$07    
       STA    $81     
       JMP    LFCE1   
LFAFF: .byte $F0,$0E,$00,$00,$00,$38,$10,$00,$00,$00,$00,$00,$3C,$18,$00,$00
       .byte $00,$00,$00,$24,$18,$24,$00,$00,$00,$00,$3C,$18,$A5,$42,$00,$00
       .byte $00,$24,$18,$66,$81,$00,$00,$00,$38,$10,$00,$00,$00,$00,$00,$7C
       .byte $54,$00,$00,$00,$00,$00,$3E,$2D,$12,$00,$00,$00,$00,$FE,$2D,$12
       .byte $12,$00,$00,$00,$7F,$D4,$28,$C6,$00,$00,$00,$18,$00,$00,$00,$00
       .byte $00,$00,$18,$20,$00,$00,$00,$00,$00,$08,$F0,$60,$00,$00,$00,$00
       .byte $03,$64,$B4,$68,$00,$00,$00,$01,$6E,$B8,$60,$00,$00,$00,$18,$00
       .byte $00,$00,$00,$00,$00,$18,$20,$00,$00,$00,$00,$00,$06,$39,$37,$00
       .byte $00,$00,$00,$E6,$69,$3A,$04,$00,$00,$00,$66,$B9,$65,$02
LFB8D: CMP    #$44    
       BNE    LFB99   
       LDA    #$07    
       STA    $D6     
       LDA    #$41    
       STA    $D3     
LFB99: LDA    #$04    
       STA    AUDC1   
       LDA    #$08    
       STA    AUDV1   
       INC    $D6     
       INC    $D6     
       LDA    $D6     
       CMP    #$18    
       BCC    LFBB1   
       LDA    #$00    
       STA    $D3     
       STA    AUDV1   
LFBB1: STA    AUDF1   
       RTS            

LFBB4: LDA    #$0C    
       BNE    LFBD6   
LFBB8: LDA    $DA     
       CMP    #$13    
       BEQ    LFBCA   
       CMP    #$11    
       BEQ    LFBCE   
       CMP    #$0F    
       BEQ    LFBD2   
       LDA    #$13    
       BNE    LFBD4   
LFBCA: LDA    #$11    
       BNE    LFBD4   
LFBCE: LDA    #$0F    
       BNE    LFBD4   
LFBD2: LDA    #$0E    
LFBD4: STA    $DA     
LFBD6: STA    AUDF0   
       LDA    #$04    
       STA    AUDC0   
       LDA    #$08    
       STA    AUDV0   
       RTS            

LFBE1: LDA    #$00    
       STA    $92     
       LDA    #$06    
       STA    $91     
       STA    $A7     
       STA    $9F     
LFBED: LDA    #$00    
       STA    $A8     
       STA    $AD     
       STA    $B2     
       STA    $B7     
       STA    $BC     
       STA    $C5     
       STA    $A4     
       JMP    LFCF8   
LFC00: .byte $A8,$00,$00,$00,$3C,$18,$00,$00,$00,$00,$7E,$3C,$18,$00,$00,$00
       .byte $00,$7E,$3C,$18,$24,$00,$00,$C3,$3C,$66,$3C,$18,$24,$00,$FF,$18
       .byte $3C,$7E,$18,$24,$00,$00,$00,$3C,$18,$00,$00,$00,$00,$7C,$10,$30
       .byte $00,$00,$00,$00,$C6,$7C,$10,$70,$00,$00,$28,$FE,$38,$10,$10,$F0
       .byte $00,$E7,$3E,$08,$F8,$00,$00,$00,$00,$00,$18,$18,$00,$00,$00,$00
       .byte $08,$3E,$08,$00,$00,$00,$00,$18,$66,$3C,$18,$00,$00,$18,$3C,$E7
       .byte $3C,$18,$00,$00,$18,$24,$DB,$24,$18,$00,$00,$00,$00,$3C,$18,$00
       .byte $00,$00,$00,$24,$18,$24,$00,$00,$00,$00,$42,$24,$18,$24,$00,$00
       .byte $81,$42,$3C,$5A,$81,$81,$00,$42,$81,$5A,$24,$3C,$18,$00,$00,$00
       .byte $18,$18,$00,$00,$00,$00,$1C,$1C,$1C,$00,$00,$00,$00,$1C,$1C,$1C
       .byte $1C,$00,$00,$7E,$7E,$42,$4E,$7E,$7E,$00,$00,$FF,$C1,$F9,$FF,$00
       .byte $00,$00,$00,$18,$18,$00,$00,$00,$00,$08,$3E,$08,$00,$00,$00,$7E
       .byte $5A,$3C,$18,$24,$00,$00,$3C,$42,$7E,$5A,$3C,$18,$00,$66,$18,$7E
       .byte $66,$3C,$18,$00,$3C,$5A,$66,$66,$5A,$3C,$00,$42,$18,$3F,$FC,$18
       .byte $42
LFCE1: LDA    #$00    
       STA    $D1     
       STA    AUDV0   
       STA    AUDV1   
       STA    $D3     
       STA    $8E     
       STA    $8F     
       STA    $90     
       STA    $DB     
       STA    $DC     
       JMP    LFBE1   
LFCF8: LDA    #$28    
       STA    $94     
       STA    $98     
       STA    $99     
       RTS            

LFD01: .byte $00,$67,$B4,$1C,$7E,$BF,$5E,$5C,$98,$30,$63,$64,$DB,$76,$00,$26
       .byte $35,$1C,$7E,$BF,$9E,$9C,$58,$10,$23,$2C,$1B,$06,$00,$06,$08,$2F
       .byte $DC,$84,$08,$30,$00,$10,$20,$FF,$92,$11,$28,$44,$00,$42,$85,$F8
       .byte $28,$84,$8A,$31,$FF,$FF,$FF,$FF,$FF,$FF,$F0,$30,$10,$00,$00,$00
       .byte $00,$00,$00,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FD,$79,$30,$10,$00,$00
       .byte $00,$00,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$DF,$8E,$04,$00,$00,$00,$00
       .byte $00,$FF,$FF,$FF,$FF,$FF,$FF,$F0,$F0,$E0,$C0,$80,$80,$00,$00,$00
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$DF,$DF,$8E,$8A,$80,$00,$00,$00,$00,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$7F,$3B,$39,$31,$20,$00,$00,$00
LFD8F: JSR    LFFD0   
       LDX    #$00    
LFD94: LDA    $A0     
       CMP    #$FF    
       BNE    LFDBC   
       LDA    $A9,X   
       CMP    #$D2    
       BCS    LFDA4   
       CMP    #$AF    
       BCS    LFDB0   
LFDA4: INX            
       INX            
       INX            
       INX            
       INX            
       CPX    #$19    
       BNE    LFD94   
       JMP    LFDBC   
LFDB0: LDA    $A7,X   
       STA    $9F     
       LDA    $A8,X   
       STA    $A0     
       LDA    $A9,X   
       STA    $A1     
LFDBC: LDA    $9C     
       CMP    #$05    
       BCS    LFDCF   
       LDA    $C5     
       SEC            
       SBC    $9B     
       CMP    #$04    
       BCC    LFDD0   
       CMP    #$F4    
       BCS    LFDD0   
LFDCF: RTS            

LFDD0: LDA    #$93    
       STA    $C5     
       JMP    LFACE   
LFDD7: STA    $8F     
       LDY    $8E     
       TYA            
       ADC    #$00    
       STA    $8E     
       CLD            
       CPY    $8E     
       BEQ    LFDFB   
       INC    $81     
       LDA    $80     
       CLC            
       ADC    #$01    
       CMP    #$05    
       BNE    LFDF2   
       LDA    #$01    
LFDF2: STA    $80     
       LDA    #$FF    
       STA    $C3     
       JSR    LFBE1   
LFDFB: RTS            

LFDFC: .byte $EE,$77,$64,$6C,$80,$80,$80,$80,$80,$80,$80,$80,$C0,$C0,$C0,$C0
       .byte $C0,$C0,$E0,$E0,$E0,$E0,$E0,$E0,$E0,$E0,$E0,$E0,$F0,$F0,$F0,$F0
       .byte $F0,$F0,$F0,$F0,$F0,$F0,$F0,$F8,$F8,$F8,$F8,$F8,$F8,$F8,$F8,$FC
       .byte $FC,$FC,$FC,$FC,$FC,$FC,$FC,$FC,$FC,$FC,$FC,$FE,$FE,$FE,$FE,$FE
       .byte $FE,$FE,$FE,$FE,$FE,$FE,$FE,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$F0,$F0,$F0,$E0,$40,$40,$50,$F0,$E0,$40,$00,$00,$00
       .byte $00,$00,$FF,$FF,$FF,$04,$1F,$0E,$84,$84,$1F,$0E,$04,$00,$00,$00
       .byte $00,$FF,$FF,$FF,$7C,$3C,$1C,$3C,$78,$F8,$E0,$E0,$C0,$C0,$80,$80
       .byte $F0,$F0,$F0,$F0,$F0,$F0,$F0,$90,$90,$F0,$F0,$90,$90,$F0,$F0,$FF
       .byte $FF,$FF,$9F,$98,$F8,$F8,$18,$18,$18,$18,$00,$00,$00,$00,$FF,$FD
       .byte $FD,$FF,$A5,$A5,$BF,$BF,$25,$25,$3F,$3F,$05,$05,$07,$F0,$F0,$20
       .byte $20,$20,$20,$00,$00,$00,$00,$00,$00,$00,$00,$00,$83,$C7,$EF,$FF
       .byte $3C,$10,$10,$10,$10,$00,$01,$01,$00,$00,$00,$3F,$7F,$F8,$E0,$80
       .byte $80,$80,$C0,$F8,$3E,$87,$87,$3E,$F8,$C0
LFED6: CMP    #$88    
       BNE    LFEE2   
       LDA    #$04    
       STA    $D5     
       LDA    #$81    
       STA    $D3     
LFEE2: LDA    #$04    
       STA    AUDC1   
       LDX    $D5     
       LDA    LFEFC,X 
       STA    AUDF1   
       LDA    #$08    
       STA    AUDV1   
       DEC    $D5     
       BPL    LFEFB   
       LDA    #$00    
       STA    $D3     
       STA    AUDV1   
LFEFB: RTS            

LFEFC: .byte $0F,$0E,$13,$11,$00,$00,$00,$00,$00,$00,$00,$00,$00,$3C,$66,$66
       .byte $66,$66,$66,$3C,$00,$3C,$18,$18,$18,$18,$38,$18,$00,$7E,$60,$60
       .byte $3C,$06,$46,$3C,$00,$3C,$46,$06,$1C,$06,$46,$3C,$00,$0C,$0C,$7E
       .byte $6C,$3C,$1C,$0C,$00,$7C,$06,$06,$7C,$60,$60,$7E,$00,$3C,$66,$66
       .byte $7C,$60,$62,$3C,$00,$18,$18,$18,$0C,$06,$66,$7E,$00,$3C,$66,$66
       .byte $3C,$66,$66,$3C,$00,$3C,$46,$06,$3E,$66,$66,$3C
LFF58: .byte $00,$18,$18,$00,$00,$18,$18,$00
LFF60: LDA    $D3     
       CMP    #$A0    
       BCS    LFF6E   
       CMP    #$80    
       BCC    LFF6D   
       JMP    LFED6   
LFF6D: RTS            

LFF6E: CMP    #$AA    
       BNE    LFF7E   
       LDA    #$A1    
       STA    $D3     
       LDA    #$10    
       STA    $D7     
       LDA    #$1F    
       STA    $D8     
LFF7E: LDA    #$08    
       STA    AUDC0   
       LDA    #$03    
       STA    AUDC1   
       INC    $D9     
       LDA    $D7     
       CMP    #$09    
       BCS    LFFB1   
       LDA    $D9     
       AND    #$03    
       BEQ    LFF97   
       JMP    LFFC2   
LFF97: LDA    $D7     
       CMP    #$04    
       BCS    LFFA3   
       LDA    #$00    
       STA    $D3     
       BEQ    LFFBE   
LFFA3: SEC            
       SBC    #$01    
       STA    $D7     
       STA    AUDV0   
       AND    #$01    
       STA    AUDV1   
       JMP    LFFC2   
LFFB1: LDA    $D9     
       AND    #$01    
       BEQ    LFFC2   
       SEC            
       LDA    $D7     
       SBC    #$01    
       STA    $D7     
LFFBE: STA    AUDV0   
       STA    AUDV1   
LFFC2: SEC            
       LDA    $D8     
       SBC    #$01    
       STA    $D8     
       STA    AUDF0   
       LDA    #$15    
       STA    AUDF1   
       RTS            

LFFD0: LDA    $98     
       SEC            
       SBC    $9F     
       CMP    #$08    
       BCC    LFFDE   
       CMP    #$F8    
       BCS    LFFDE   
       RTS            

LFFDE: LDA    $99     
       SEC            
       SBC    $A0     
       CMP    #$09    
       BCC    LFFEC   
       CMP    #$FB    
       BCS    LFFEC   
       RTS            

LFFEC: LDA    #$FF    
       STA    $A0     
       JMP    LFADB   
LFFF3: .byte $AC,$D7,$B5,$60,$A9,$01,$D0,$02,$A9,$00,$F0,$C3,$AA
