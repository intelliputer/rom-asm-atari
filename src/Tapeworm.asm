; Disassembly of roms/Tapeworm.bin
; Disassembled Tue Oct  6 15:24:47 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Tapeworm.bin
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
PF0     =  $0D
PF1     =  $0E
PF2     =  $0F
RESP0   =  $10
RESP1   =  $11
AUDC0   =  $15
AUDF0   =  $17
AUDV0   =  $19
GRP0    =  $1B
GRP1    =  $1C
HMP0    =  $20
HMP1    =  $21
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXP1FB  =  $33
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
       LDA    #$00    
       TAX            
LF005: STA    VSYNC,X 
       INX            
       BNE    LF005   
       DEX            
       TXS            
       LDA    INTIM   
       STA    $F1     
LF011: LDA    #$20    
       STA    $F4     
       STA    $F5     
       LDA    #$02    
       STA    $FA     
       LDA    $F3     
       AND    #$FE    
       STA    $F3     
       LDA    #$00    
       STA    $E4     
       LDA    #$00    
       STA    $E6     
       LDA    #$00    
       STA    $E3     
       STA    $E5     
       STA    $F6     
       STA    $F8     
       STA    $F9     
LF035: LDA    $F3     
       AND    #$01    
       TAX            
       LDA    $F4,X   
       LDX    #$3F    
       AND    #$07    
       BEQ    LF05C   
       CMP    #$01    
       BEQ    LF065   
       CMP    #$02    
       BEQ    LF058   
       CMP    #$03    
       BEQ    LF06F   
LF04E: LDA    LFE80,X 
       STA    $80,X   
       DEX            
       BPL    LF04E   
       BMI    LF077   
LF058: LDA    #$64    
       STA    $FD     
LF05C: LDA    #$00    
       STA    $80,X   
       DEX            
       BPL    LF05C   
       BMI    LF077   
LF065: LDA    LFE00,X 
       STA    $80,X   
       DEX            
       BPL    LF065   
       BMI    LF077   
LF06F: LDA    LFE40,X 
       STA    $80,X   
       DEX            
       BPL    LF06F   
LF077: LDY    #$00    
       STY    $C0     
       STY    $FC     
       STY    $ED     
       STY    $EE     
       STY    $E8     
       STY    $EC     
       STY    $F0     
       STY    COLUPF  
       STY    COLUBK  
       LDA    #$10    
       STA    $E9     
       STA    $EB     
       STA    $D8     
       LDX    #$07    
LF095: STY    $D9,X   
       DEX            
       BPL    LF095   
       INY            
       STY    $EA     
       INY            
       STY    $E1     
       LDA    #$0A    
       STA    $E2     
       JSR    LFAA1   
       LDA    #$05    
       STA    $E7     
LF0AB: LDA    INTIM   
       BNE    LF0AB   
       LDA    #$00    
       STA    WSYNC   
       STA    VBLANK  
       LDA    #$FC    
       STA    TIM64T  
       LDA    #$01    
       STA    CTRLPF  
       LDA    $FB     
       BEQ    LF0C6   
       JMP    LF1E4   
LF0C6: LDA    #$45    
       STA    $D6     
       LDA    #$63    
       STA    $D4     
       LDA    #$81    
       STA    $D2     
       LDA    #$9F    
       STA    $D0     
       LDA    #$FF    
       LDY    #$1D    
       JSR    LF191   
       LDA    $F2     
       LSR            
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       LDA    LFFE9,X 
       STA    NUSIZ0  
       LDA    LFFE1,X 
       STA    HMP0    
       AND    #$0F    
       TAY            
       STA    WSYNC   
LF0F4: DEY            
       BNE    LF0F4   
       STA    RESP0   
       LDY    $E3     
       LDA    LFCF0,Y 
       STA    $D4     
       LDA    LFCF4,Y 
       STA    $D5     
       LDA    LFCF8,Y 
       STA    $D6     
       LDA    LFCFC,Y 
       STA    $D7     
       LDY    LFFD9,X 
LF112: STA    WSYNC   
       DEY            
       BNE    LF112   
       LDY    #$07    
LF119: LDA    LFFF1,X 
       STA    $E5     
LF11E: STA    WSYNC   
       STA    HMOVE   
       LDA    ($D4),Y 
       STA    GRP0    
       LDA    ($D6),Y 
       STA    COLUP0  
       LDA    ($D4),Y 
       CMP    ($D4),Y 
       LDA    ($D6),Y 
       CMP    ($D6),Y 
       STA    HMCLR   
       DEC    $E5     
       BNE    LF11E   
       DEY            
       BPL    LF119   
       INY            
       STA    WSYNC   
       STY    GRP0    
       LDA    LFFD9,X 
       SEC            
       SBC    #$0A    
       TAY            
LF147: STA    WSYNC   
       DEY            
       BNE    LF147   
       LDY    $E3     
       LDA    LFBF0,Y 
       STA    $D6     
       CLC            
       ADC    #$09    
       STA    $D4     
       ADC    #$09    
       STA    $D2     
       ADC    #$09    
       STA    $D0     
       LDA    #$FB    
       LDY    #$08    
       JSR    LF191   
       LDA    $F2     
       BEQ    LF17B   
       CMP    #$FF    
       BNE    LF178   
       LDA    $E3     
       CLC            
       ADC    #$01    
       AND    #$03    
       STA    $E3     
LF178: JMP    LF49B   
LF17B: LDA    #$39    
       SEC            
       SBC    #$00    
       STA    $F7     
       LDA    #$17    
       STA    $F8     
       LDA    #$05    
       STA    $F9     
       LDA    #$00    
       STA    $F6     
       JMP    LF178   
LF191: STA    $D1     
       STA    $D3     
       STA    $D5     
       STA    $D7     
       LDA    #$00    
       STA    HMP0    
       LDA    #$10    
       STA    HMP1    
       LDA    $F2     
       AND    #$F0    
       ORA    #$08    
       STA    COLUP0  
       STA    COLUP1  
       LDX    #$08    
       STA    WSYNC   
LF1AF: DEX            
       BNE    LF1AF   
       STA    RESP0   
       STA    RESP1   
       INX            
       STX    NUSIZ0  
       STX    NUSIZ1  
LF1BB: STA    WSYNC   
       STA    HMOVE   
       LDA    ($D6),Y 
       STA    GRP0    
       LDA    ($D4),Y 
       STA    GRP1    
       LDA    ($D0),Y 
       TAX            
       LDA    ($D2),Y 
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       STA    GRP0    
       STX    GRP1    
       STA    HMCLR   
       DEY            
       BPL    LF1BB   
       STA    WSYNC   
       INY            
       STY    GRP0    
       STY    GRP1    
       RTS            

LF1E4: LDA    $F3     
       AND    #$01    
       TAX            
       LDA    $E3,X   
       AND    #$0F    
       TAY            
       LDA    LFEF0,Y 
       STA    $D0     
       LDA    $E3,X   
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    LFEF0,Y 
       STA    $D2     
       LDA    $E5,X   
       AND    #$0F    
       TAY            
       LDA    LFEF0,Y 
       STA    $D4     
       LDA    $E5,X   
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    LFEF0,Y 
       STA    $D6     
       LDA    #$FD    
       STA    $D1     
       STA    $D3     
       STA    $D5     
       STA    $D7     
       LDA    $F3     
       AND    #$01    
       TAX            
       LDA    LFFD7,X 
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$01    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$00    
       LDY    #$10    
       STA    HMP0    
       STY    HMP1    
       LDY    #$08    
       STA    WSYNC   
LF23D: DEY            
       BNE    LF23D   
       STA    RESP0   
       STA    RESP1   
       LDY    #$07    
LF246: STA    WSYNC   
       STA    HMOVE   
       LDA    ($D6),Y 
       STA    GRP0    
       LDA    ($D4),Y 
       STA    GRP1    
       CMP    ($D0),Y 
       CMP    ($D2),Y 
       LDA    $80     
       LDA    ($D0),Y 
       TAX            
       LDA    ($D2),Y 
       STA    GRP0    
       STX    GRP1    
       STA    HMCLR   
       DEY            
       BPL    LF246   
       INY            
       STA    WSYNC   
       STY    GRP0    
       STY    GRP1    
       STY    COLUP1  
       LDA    $E8     
       CMP    #$01    
       BNE    LF285   
       LDA    $E9     
       BEQ    LF28B   
       CMP    #$21    
       BEQ    LF28B   
       LDA    $EA     
       BEQ    LF28B   
       CMP    #$0F    
       BEQ    LF28B   
LF285: LDA    #$FF    
       LDX    #$F0    
       BNE    LF297   
LF28B: LDA    $F2     
       AND    #$0F    
       CMP    #$07    
       BCC    LF285   
       LDA    #$00    
       LDX    #$70    
LF297: STA    WSYNC   
       STA    $80     
       STA    $8F     
       STA    $90     
       STA    $9F     
       STA    $A0     
       STA    $AF     
       STA    $B0     
       STA    $BF     
       STX    PF0     
       STA    CXCLR   
       LDA    $F3     
       AND    #$01    
       TAX            
       LDA    $F4,X   
       AND    #$07    
       TAX            
       LDA    LFFBD,X 
       CPX    #$02    
       BNE    LF2C8   
       LDX    $FD     
       BNE    LF2C6   
       LDX    $E8     
       BEQ    LF2C8   
LF2C6: LDA    #$08    
LF2C8: STA    $D3     
       LDA    #$00    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    $F0     
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       LDA    LFEFA,X 
       STA    $D1     
       LDA    #$FD    
       STA    $D5     
       STA    $D7     
       LDX    $E9     
       LDA    LFF03,X 
       STA    HMP1    
       AND    #$0F    
       TAX            
       STA    WSYNC   
LF2EE: DEX            
       BNE    LF2EE   
       STA    RESP1   
       LDX    #$09    
LF2F5: DEX            
       BNE    LF2F5   
       LDX    $EF     
       LDA    LFF03,X 
       STA    HMP0    
       AND    #$0F    
       TAX            
       STA    WSYNC   
LF304: DEX            
       BNE    LF304   
       STA    RESP0   
       LDX    #$05    
LF30B: DEX            
       BNE    LF30B   
       LDA    $F3     
       AND    #$01    
       TAX            
       LDA    LFFD7,X 
       STA    $D0     
       LDX    #$0F    
LF31A: LDA    $F0     
       AND    #$0F    
       STA    $D2     
       CPX    $D2     
       BEQ    LF329   
       LDA    #$50    
       JMP    LF32B   
LF329: LDA    $D1     
LF32B: STA    $D4     
       CLC            
       ADC    #$08    
       STA    $D6     
       LDA    #$0F    
       CPX    $EA     
       BEQ    LF33A   
       LDA    #$00    
LF33A: STA    WSYNC   
       STA    HMOVE   
       STA    GRP1    
       LDA    $D3     
       STA    COLUBK  
       CMP    ($D4,X) 
       CMP    ($D4,X) 
       CMP    ($D4,X) 
       CMP    ($D4,X) 
       CMP    ($D4,X) 
       LDY    #$07    
       STA    HMCLR   
LF352: LDA    ($D6),Y 
       STA    WSYNC   
       STA    HMOVE   
       STA    COLUP0  
       LDA    $B0,X   
       STA    PF1     
       LDA    $A0,X   
       STA    PF2     
       LDA    ($D4),Y 
       STA    GRP0    
       LDA    $D0     
       STA    COLUP1  
       LDA    $80,X   
       STA    PF1     
       LDA    $90,X   
       STA    PF2     
       STA    HMCLR   
       DEY            
       BPL    LF352   
       INY            
       STA    WSYNC   
       STY    PF1     
       STY    PF2     
       STY    GRP0    
       STY    GRP1    
       DEX            
       BPL    LF31A   
       STA    WSYNC   
       LDA    #$00    
       STA    COLUBK  
       LDA    $F3     
       AND    #$01    
       TAX            
       LDA    $F4,X   
       AND    #$07    
       TAY            
       INY            
       LDA    LFEFA,Y 
       STA    $D0     
       CLC            
       ADC    #$08    
       STA    $D2     
       LDA    #$FD    
       STA    $D1     
       STA    $D3     
       LDX    #$80    
       STX    HMP0    
       LDX    #$0D    
       STA    WSYNC   
LF3AE: DEX            
       BNE    LF3AE   
       STA    RESP0   
       LDA    $E8     
       BEQ    LF3BC   
       LDA    #$C0    
       JMP    LF3C7   
LF3BC: LDA    $F2     
       AND    #$18    
       LSR            
       LSR            
       LSR            
       TAX            
       LDA    LFEEC,X 
LF3C7: STA    $D4     
       LDA    #$FE    
       STA    $D5     
       LDA    $E7     
       STA    HMP1    
       AND    #$0F    
       TAX            
       LDY    #$0A    
       STA    WSYNC   
LF3D8: DEX            
       BNE    LF3D8   
       STA    RESP1   
       LDX    #$09    
LF3DF: DEX            
       BNE    LF3DF   
       LDA    #$00    
       STA    NUSIZ1  
LF3E6: STA    WSYNC   
       STA    HMOVE   
       LDA    ($D4),Y 
       STA    GRP1    
       LDA    LFEE1,Y 
       STA    COLUP1  
       LDX    #$06    
LF3F5: DEX            
       BNE    LF3F5   
       STA    HMCLR   
       DEY            
       CPY    #$07    
       BNE    LF3E6   
LF3FF: STA    WSYNC   
       STA    HMOVE   
       LDA    ($D4),Y 
       STA    GRP1    
       LDA    LFEE1,Y 
       STA    COLUP1  
       LDA    ($D0),Y 
       STA    GRP0    
       LDA    ($D2),Y 
       STA    COLUP0  
       LDX    #$03    
LF416: DEX            
       BNE    LF416   
       STA    HMCLR   
       DEY            
       BPL    LF3FF   
       STA    WSYNC   
       INY            
       STY    GRP0    
       STY    GRP1    
       LDA    $F3     
       AND    #$01    
       TAX            
       LDA    $F4,X   
       AND    #$38    
       LSR            
       LSR            
       LSR            
       TAX            
       LDA    LFFC2,X 
       STA    NUSIZ0  
       CPX    #$02    
       BCC    LF43F   
       LDA    #$48    
       BNE    LF441   
LF43F: LDA    #$00    
LF441: STA    COLUP0  
       LDX    #$05    
       STA    WSYNC   
LF447: DEX            
       BNE    LF447   
       STA    RESP0   
       LDX    #$04    
LF44E: DEX            
       BNE    LF44E   
       STA    RESP1   
       LDA    #$01    
       STA    NUSIZ1  
       LDA    #$78    
       STA    COLUP1  
       LDA    $D8     
       AND    #$0F    
       TAX            
       LDA    LFEF0,X 
       STA    $D0     
       LDA    $D8     
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       LDA    LFEF0,X 
       STA    $D2     
       LDA    #$FD    
       STA    $D1     
       STA    $D3     
       LDY    #$07    
LF479: STA    WSYNC   
       STA    HMOVE   
       LDA    LFF25,Y 
       STA    GRP0    
       LDA    ($D2),Y 
       STA    GRP1    
       LDA    ($D0),Y 
       LDX    #$06    
LF48A: DEX            
       BNE    LF48A   
       STA    GRP1    
       STA    HMCLR   
       DEY            
       BPL    LF479   
       STA    WSYNC   
       INY            
       STY    GRP0    
       STY    GRP1    
LF49B: LDA    INTIM   
       BNE    LF49B   
       LDA    #$0A    
       STA    TIM64T  
       LDA    SWCHB   
       AND    #$02    
       STA    $D0     
       LDA    $FA     
       CMP    $D0     
       BEQ    LF4DA   
       LDA    $D0     
       STA    $FA     
       BEQ    LF4C1   
       LDA    $F3     
       CLC            
       ADC    #$02    
       AND    #$06    
       STA    $F3     
LF4C1: LDA    $F3     
       AND    #$06    
       LSR            
       ADC    #$01    
       STA    $E3     
       LDA    #$00    
       STA    $E5     
       STA    $F6     
       STA    $F8     
       STA    $F9     
       LDA    #$04    
       STA    $E8     
       STA    $FB     
LF4DA: LDA    INTIM   
       BNE    LF4DA   
       LDA    #$82    
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
       LDA    #$2A    
       STA    TIM64T  
       LDA    SWCHB   
       LSR            
       BCS    LF509   
       LDA    #$01    
       STA    $FB     
       JMP    LF011   
LF509: LDA    $FB     
       BNE    LF510   
       JMP    LF9AF   
LF510: LDA    $E8     
       BEQ    LF517   
       JMP    LF8BC   
LF517: LDA    $F3     
       AND    #$01    
       TAX            
       LDA    $F4,X   
       AND    #$07    
       CMP    #$02    
       BNE    LF545   
       LDA    $FD     
       BEQ    LF52D   
       DEC    $FD     
       JMP    LF545   
LF52D: LDA    INPT4,X 
       BMI    LF545   
       LDA    #$64    
       STA    $FD     
       SED            
       LDA    $D8     
       CLC            
       ADC    #$01    
       CLD            
       STA    $D8     
       CMP    #$1E    
       BCC    LF545   
       JMP    LF677   
LF545: LDA    $F2     
       AND    #$03    
       CMP    #$02    
       BNE    LF5A1   
       BIT    CXPPMM  
       BPL    LF59D   
       LDA    $F0     
       AND    #$F0    
       CMP    #$60    
       BCS    LF596   
       LDA    #$23    
       SEC            
       SBC    #$00    
       STA    $F7     
       LDA    #$08    
       STA    $F8     
       LDA    #$0A    
       STA    $F9     
       LDA    #$00    
       STA    $F6     
       LDA    #$02    
       STA    $E8     
       LDA    $F3     
       AND    #$01    
       TAX            
       LDA    $F4,X   
       AND    #$07    
       TAY            
       INY            
       STY    $D0     
       LDA    $F4,X   
       AND    #$F8    
       CPY    #$05    
       BEQ    LF587   
       ORA    $D0     
LF587: STA    $F4,X   
       DEY            
       TYA            
       ASL            
       CLC            
       ADC    #$0A    
       TAY            
       JSR    LFA52   
       JMP    LF8BC   
LF596: LDA    #$05    
       STA    $E8     
       JMP    LF8BC   
LF59D: BIT    CXP1FB  
       BMI    LF5A4   
LF5A1: JMP    LF693   
LF5A4: LDY    $E9     
       DEY            
       STY    $D0     
       TYA            
       AND    #$08    
       BNE    LF5C3   
       LDA    $D0     
       AND    #$07    
       STA    $D1     
       LDA    #$07    
       SEC            
       SBC    $D1     
       STA    $D1     
       LDA    $D0     
       AND    #$F8    
       ORA    $D1     
       STA    $D0     
LF5C3: LDX    #$07    
LF5C5: LDA    $D9,X   
       BEQ    LF5DA   
       AND    #$0F    
       ASL            
       CMP    $D0     
       BNE    LF5DA   
       LDA    $D9,X   
       LSR            
       LSR            
       LSR            
       LSR            
       CMP    $EA     
       BEQ    LF5E0   
LF5DA: DEX            
       BPL    LF5C5   
       JMP    LF677   
LF5E0: LDA    #$00    
       STA    $D9,X   
       LDA    #$05    
       STA    $E7     
       LDA    #$64    
       STA    $FD     
       LDA    $F3     
       AND    #$01    
       TAX            
       LDA    $F4,X   
       AND    #$07    
       ASL            
       TAY            
       JSR    LFA52   
       LDA    #$04    
       SEC            
       SBC    #$00    
       STA    $F7     
       LDA    #$05    
       STA    $F8     
       LDA    #$02    
       STA    $F9     
       LDA    #$00    
       STA    $F6     
       LDX    $E9     
       LDY    $EA     
       JSR    LFA27   
       LDA    $F3     
       AND    #$01    
       TAX            
       LDA    LFFD5,X 
       AND    SWCHB   
       BEQ    LF629   
       LDA    $E2     
       CMP    #$40    
       BCS    LF633   
       BCC    LF631   
LF629: LDA    $E2     
       CMP    #$3F    
       BCS    LF633   
       INC    $E2     
LF631: INC    $E2     
LF633: SED            
       LDA    $D8     
       SEC            
       SBC    #$01    
       STA    $D8     
       CLD            
       BEQ    LF64D   
       LDX    #$07    
LF640: LDA    $D9,X   
       BNE    LF64A   
       DEX            
       BPL    LF640   
       JSR    LFAA1   
LF64A: JMP    LF693   
LF64D: LDA    $F3     
       AND    #$01    
       TAX            
       LDY    $F4,X   
       INY            
       TYA            
       AND    #$07    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    $D0     
       LDA    $F1     
       BPL    LF666   
       LDA    #$00    
       BEQ    LF668   
LF666: LDA    #$0F    
LF668: ORA    $D0     
       STA    $F0     
       LDA    $F1     
       AND    #$1F    
       TAX            
       INX            
       STX    $EF     
       JMP    LF7A8   
LF677: LDA    #$01    
       STA    $E8     
       LDA    #$0B    
       SEC            
       SBC    #$00    
       STA    $F7     
       LDA    $E1     
       LSR            
       LSR            
       STA    $F8     
       LDA    #$20    
       STA    $F9     
       LDA    #$00    
       STA    $F6     
       JMP    LF8BC   
LF693: LDY    SWCHA   
       LDA    $F3     
       LSR            
       BCS    LF6A1   
       TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
LF6A1: TYA            
       AND    #$0F    
       CMP    #$0F    
       BEQ    LF6AA   
       STA    $FC     
LF6AA: LDA    $F3     
       CMP    #$04    
       BCS    LF6B4   
       LDA    #$0F    
       BNE    LF6B6   
LF6B4: LDA    #$07    
LF6B6: AND    $F2     
       CMP    #$01    
       BEQ    LF6BF   
       JMP    LF7A8   
LF6BF: LDX    $E9     
       LDY    $EA     
       JSR    LF9FE   
       LDA    $F8     
       BNE    LF6DD   
       LDA    #$00    
       SEC            
       SBC    #$00    
       STA    $F7     
       LDA    #$04    
       STA    $F8     
       LDA    #$01    
       STA    $F9     
       LDA    #$00    
       STA    $F6     
LF6DD: LDA    $ED     
       AND    #$3C    
       LSR            
       LSR            
       TAX            
       LDA    $C0,X   
       TAY            
       LDA    $ED     
       AND    #$03    
       TAX            
       BEQ    LF6F5   
       TYA            
LF6EF: LSR            
       LSR            
       DEX            
       BNE    LF6EF   
       TAY            
LF6F5: TYA            
       AND    #$03    
       STA    $D0     
       LDA    $FB     
       BNE    LF70D   
       LDA    $F1     
       AND    #$07    
       TAX            
       LDA    LFFCF,X 
       EOR    #$FF    
       AND    #$0F    
       JMP    LF70F   
LF70D: LDA    $FC     
LF70F: CMP    #$0F    
       BNE    LF718   
       LDX    $D0     
       JMP    LF720   
LF718: LDX    #$00    
LF71A: LSR            
       BCC    LF720   
       INX            
       BNE    LF71A   
LF720: LDY    $D0     
       BEQ    LF736   
       DEY            
       BEQ    LF742   
       DEY            
       BEQ    LF74E   
       CPX    #$00    
       BEQ    LF758   
       CPX    #$01    
       BEQ    LF758   
       LDX    #$03    
       BNE    LF758   
LF736: CPX    #$02    
       BEQ    LF758   
       CPX    #$03    
       BEQ    LF758   
       LDX    #$00    
       BEQ    LF758   
LF742: CPX    #$02    
       BEQ    LF758   
       CPX    #$03    
       BEQ    LF758   
       LDX    #$01    
       BNE    LF758   
LF74E: CPX    #$00    
       BEQ    LF758   
       CPX    #$01    
       BEQ    LF758   
       LDX    #$02    
LF758: LDA    LFFCB,X 
       CLC            
       ADC    $E9     
       STA    $E9     
       LDA    LFFC7,X 
       CLC            
       ADC    $EA     
       STA    $EA     
       INC    $E1     
       LDA    #$FC    
       STA    $D1     
       INC    $ED     
       LDA    $ED     
       AND    #$3F    
       STA    $ED     
       STX    $D0     
       AND    #$03    
       TAX            
       BEQ    LF789   
LF77D: ASL    $D0     
       ASL    $D0     
       SEC            
       ROL    $D1     
       ROL    $D1     
       DEX            
       BNE    LF77D   
LF789: LDA    $ED     
       AND    #$3C    
       LSR            
       LSR            
       TAX            
       LDA    $C0,X   
       AND    $D1     
       ORA    $D0     
       STA    $C0,X   
       LDA    $E1     
       CMP    $E2     
       BNE    LF7A8   
       LDX    $EB     
       LDY    $EC     
       JSR    LFA27   
       JSR    LFB1A   
LF7A8: LDA    $F2     
       AND    #$07    
       CMP    #$03    
       BNE    LF7E8   
       LDA    $F0     
       AND    #$F0    
       BNE    LF7E8   
       LDA    $F1     
       AND    #$3F    
       BNE    LF7E8   
       BIT    $F1     
       BPL    LF7DA   
       LDA    $F2     
       AND    #$0F    
       BNE    LF7CA   
       LDA    #$01    
       BNE    LF7D0   
LF7CA: CMP    #$0F    
       BNE    LF7D0   
       LDA    #$0E    
LF7D0: ORA    #$70    
       STA    $F0     
       LDA    #$00    
       STA    $EF     
       BEQ    LF7E8   
LF7DA: LDA    #$8F    
       STA    $F0     
       LDA    $F2     
       AND    #$1F    
       BNE    LF7E6   
       LDA    #$01    
LF7E6: STA    $EF     
LF7E8: BIT    $F1     
       BVS    LF7F0   
       LDA    #$07    
       BNE    LF7F2   
LF7F0: LDA    #$03    
LF7F2: AND    $F2     
       CMP    #$03    
       BNE    LF869   
       LDA    $F0     
       AND    #$F0    
       CMP    #$60    
       BCC    LF869   
       CMP    #$80    
       BEQ    LF831   
       LDA    $F0     
       EOR    #$10    
       STA    $F0     
       LDA    $F1     
       AND    #$03    
       TAX            
       LDA    $F0     
       CLC            
       ADC    LFFCB,X 
       TAY            
       AND    #$0F    
       BEQ    LF820   
       CMP    #$0F    
       BEQ    LF820   
       STY    $F0     
LF820: LDX    $EF     
       INX            
       STX    $EF     
       CPX    #$22    
       BNE    LF856   
LF829: LDA    #$00    
       STA    $F0     
       STA    $EF     
       BEQ    LF869   
LF831: LDA    $F1     
       AND    #$03    
       TAX            
       LDA    $EF     
       CLC            
       ADC    LFFCB,X 
       TAY            
       BEQ    LF845   
       CMP    #$21    
       BEQ    LF845   
       STY    $EF     
LF845: LDX    $F0     
       DEX            
       STX    $F0     
       CPX    #$7F    
       BEQ    LF829   
       LDA    #$1F    
       SEC            
       SBC    #$00    
       JMP    LF85B   
LF856: LDA    #$1B    
       SEC            
       SBC    #$00    
LF85B: STA    $F7     
       LDA    #$04    
       STA    $F8     
       LDA    #$02    
       STA    $F9     
       LDA    #$00    
       STA    $F6     
LF869: LDA    $F3     
       CMP    #$04    
       BCS    LF873   
       LDA    #$07    
       BNE    LF875   
LF873: LDA    #$03    
LF875: AND    $F2     
       BNE    LF8B4   
       LDA    $E7     
       AND    #$F0    
       CMP    #$80    
       BNE    LF883   
       INC    $E7     
LF883: LDA    $E7     
       SEC            
       SBC    #$20    
       CMP    #$0D    
       BNE    LF8B2   
       SED            
       CLC            
       LDA    $D8     
       ADC    #$02    
       CLD            
       CMP    #$30    
       BCC    LF89E   
       LDA    #$30    
       STA    $D8     
       JMP    LF677   
LF89E: STA    $D8     
       JSR    LFAA1   
       JSR    LFAA1   
       LDA    $F0     
       CMP    #$60    
       BCS    LF8B0   
       LDA    #$00    
       STA    $F0     
LF8B0: LDA    #$05    
LF8B2: STA    $E7     
LF8B4: LDA    $F1     
       ADC    $E9     
       ADC    $EA     
       STA    $F1     
LF8BC: LDA    $E8     
       CMP    #$01    
       BEQ    LF8E8   
       CMP    #$02    
       BEQ    LF8E8   
       CMP    #$05    
       BEQ    LF8CD   
LF8CA: JMP    LF96A   
LF8CD: LDA    $F2     
       AND    #$0F    
       BNE    LF8CA   
       LDA    #$36    
       SEC            
       SBC    #$00    
       STA    $F7     
       LDA    #$03    
       STA    $F8     
       LDA    #$03    
       STA    $F9     
       LDA    #$00    
       STA    $F6     
       BEQ    LF8EE   
LF8E8: LDA    $F2     
       AND    #$07    
       BNE    LF96A   
LF8EE: LDA    $E1     
       CMP    #$01    
       BNE    LF960   
       LDA    $FB     
       BNE    LF8FB   
       JMP    LF011   
LF8FB: LDA    $E8     
       CMP    #$02    
       BNE    LF904   
       JMP    LF035   
LF904: LDA    $F3     
       AND    #$01    
       TAX            
       LDA    $F4,X   
       SEC            
       SBC    #$08    
       STA    $F4,X   
       LDA    $F3     
       AND    #$02    
       BEQ    LF952   
       LDA    $F3     
       EOR    #$01    
       STA    $F3     
       AND    #$01    
       TAX            
       LDA    $F4,X   
       AND    #$38    
       BNE    LF95D   
       LDA    $F3     
       EOR    #$01    
       STA    $F3     
       AND    #$01    
       TAX            
       LDA    $F4,X   
       AND    #$38    
       BNE    LF95D   
LF934: LDA    #$2B    
       SEC            
       SBC    #$00    
       STA    $F7     
       LDA    #$0B    
       STA    $F8     
       LDA    #$0A    
       STA    $F9     
       LDA    #$00    
       STA    $F6     
       LDA    #$00    
       STA    $F2     
       LDA    #$03    
       STA    $E8     
       JMP    LF96A   
LF952: LDA    $F3     
       AND    #$01    
       TAX            
       LDA    $F4,X   
       AND    #$38    
       BEQ    LF934   
LF95D: JMP    LF035   
LF960: LDX    $EB     
       LDY    $EC     
       JSR    LFA27   
       JSR    LFB1A   
LF96A: LDX    #$07    
LF96C: LDA    $D9,X   
       BEQ    LF9AC   
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $D0     
       LDA    $D9,X   
       AND    #$0C    
       ASL            
       ASL            
       ORA    $D0     
       STA    $D0     
       LDA    $D9,X   
       AND    #$03    
       ASL            
       TAY            
       LDA    $F2     
       AND    #$01    
       BNE    LF99D   
       LDA    LFFCF,Y 
       EOR    #$FF    
       STA    $D1     
       LDY    $D0     
       LDA.wy $0080,Y 
       AND    $D1     
       JMP    LF9A9   
LF99D: LDA    LFFCF,Y 
       STA    $D1     
       LDY    $D0     
       LDA.wy $0080,Y 
       ORA    $D1     
LF9A9: STA.wy $0080,Y 
LF9AC: DEX            
       BPL    LF96C   
LF9AF: LDA    $F6     
       BNE    LF9DF   
       LDA    $F8     
       BEQ    LF9D5   
       DEC    $F8     
       LDA    $F9     
       STA    $F6     
       LDA    $F7     
       CLC            
       ADC    $F8     
       TAX            
       LDA    LFC00,X 
       STA    AUDC0   
       LDA    LFC50,X 
       STA    AUDF0   
       LDA    LFCA0,X 
       STA    AUDV0   
       JMP    LF9E1   
LF9D5: LDA    #$00    
       STA    AUDC0   
       STA    AUDF0   
       STA    AUDV0   
       BEQ    LF9E1   
LF9DF: DEC    $F6     
LF9E1: LDA    $E8     
       CMP    #$03    
       BNE    LF9F9   
       LDA    $F2     
       AND    #$3F    
       BNE    LF9F9   
       LDA    $F3     
       AND    #$02    
       BEQ    LF9F9   
       LDA    $F3     
       EOR    #$01    
       STA    $F3     
LF9F9: INC    $F2     
       JMP    LF0AB   
LF9FE: DEX            
       TXA            
       AND    #$18    
       ASL            
       STY    $D3     
       ORA    $D3     
       TAY            
       AND    #$10    
       BEQ    LFA12   
       TXA            
       AND    #$07    
       JMP    LFA1C   
LFA12: TXA            
       AND    #$07    
       STA    $D3     
       LDA    #$07    
       SEC            
       SBC    $D3     
LFA1C: TAX            
       LDA.wy $0080,Y 
       ORA    LFFCF,X 
       STA.wy $0080,Y 
       RTS            

LFA27: DEX            
       TXA            
       AND    #$18    
       ASL            
       STY    $D3     
       ORA    $D3     
       TAY            
       AND    #$10    
       BEQ    LFA3B   
       TXA            
       AND    #$07    
       JMP    LFA45   
LFA3B: TXA            
       AND    #$07    
       STA    $D3     
       LDA    #$07    
       SEC            
       SBC    $D3     
LFA45: TAX            
       LDA    LFFCF,X 
       EOR    #$FF    
       AND.wy $0080,Y 
       STA.wy $0080,Y 
       RTS            

LFA52: LDA    $FB     
       BEQ    LFAA0   
       LDA    $F3     
       AND    #$01    
       TAX            
       SED            
       CLC            
       LDA    $E3,X   
       ADC    LFDD8,Y 
       STA    $E3,X   
       LDA    $E5,X   
       STA    $D0     
       ADC    LFDD9,Y 
       STA    $E5,X   
       CLD            
       BCC    LFA7C   
       LDA    #$03    
       STA    $E8     
       LDA    #$99    
       STA    $E3,X   
       STA    $E5,X   
       BNE    LFA8B   
LFA7C: LDA    $D0     
       AND    #$F0    
       STA    $D0     
       LDA    $E5,X   
       SEC            
       SBC    $D0     
       CMP    #$10    
       BCC    LFAA0   
LFA8B: LDA    $F4,X   
       AND    #$38    
       CMP    #$20    
       BEQ    LFAA0   
       CLC            
       ADC    #$08    
       STA    $D0     
       LDA    $F4,X   
       AND    #$C7    
       ORA    $D0     
       STA    $F4,X   
LFAA0: RTS            

LFAA1: LDX    #$07    
LFAA3: LDA    $D9,X   
       BEQ    LFAAB   
       DEX            
       BPL    LFAA3   
       RTS            

LFAAB: STX    $D3     
       LDA    #$09    
       SEC            
       SBC    #$00    
       STA    $F7     
       LDA    #$02    
       STA    $F8     
       LDA    #$03    
       STA    $F9     
       LDA    #$00    
       STA    $F6     
       LDA    $F1     
LFAC2: AND    #$3F    
       TAX            
       AND    #$0F    
       BEQ    LFAD3   
       CMP    $EA     
       BEQ    LFADF   
       CMP    #$0F    
       BNE    LFAD7   
       DEX            
       DEX            
LFAD3: INX            
       JMP    LFAE1   
LFAD7: LDA    $80,X   
       AND    #$55    
       CMP    #$55    
       BNE    LFAE5   
LFADF: INX            
       INX            
LFAE1: TXA            
       JMP    LFAC2   
LFAE5: LDY    #$00    
LFAE7: LSR            
       BCC    LFAF0   
       INY            
       INY            
       LSR            
       JMP    LFAE7   
LFAF0: LDA    $80,X   
       ORA    LFFCF,Y 
       STA    $80,X   
       TXA            
       ASL            
       ASL            
       ASL            
       ASL            
       STA    $D2     
       TXA            
       AND    #$30    
       LSR            
       LSR            
       ORA    $D2     
       STA    $D2     
       TYA            
       AND    #$06    
       LSR            
       ORA    $D2     
       LDX    $D3     
       STA    $D9,X   
       LDA    $F1     
       ADC    $E9     
       ADC    $EA     
       STA    $F1     
       RTS            

LFB1A: DEC    $E1     
       LDA    $EE     
       AND    #$3C    
       LSR            
       LSR            
       TAX            
       LDA    $C0,X   
       TAY            
       STA    $D0     
       LDA    $EE     
       AND    #$03    
       BEQ    LFB36   
       TAX            
LFB2F: LSR    $D0     
       LSR    $D0     
       DEX            
       BNE    LFB2F   
LFB36: LDA    $D0     
       AND    #$03    
       TAX            
       INC    $EE     
       LDA    $EE     
       AND    #$3F    
       STA    $EE     
       LDA    LFFCB,X 
       CLC            
       ADC    $EB     
       STA    $EB     
       LDA    LFFC7,X 
       CLC            
       ADC    $EC     
       STA    $EC     
       RTS            

LFB54: .byte $AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$00,$78,$08,$08
       .byte $08,$78,$40,$40,$78,$00,$C4,$84,$84,$84,$84,$80,$84,$84,$00,$49
       .byte $49,$49,$49,$79,$41,$01,$01,$04,$42,$82,$8E,$4A,$0A,$0A,$00,$00
       .byte $01,$79,$09,$09,$09,$79,$41,$40,$78,$00,$0E,$0A,$CE,$42,$42,$CE
       .byte $00,$00,$00,$49,$49,$49,$49,$79,$41,$01,$01,$04,$42,$82,$8E,$4A
       .byte $0A,$0A,$00,$00,$00,$1C,$12,$12,$12,$1C,$12,$12,$1C,$00,$30,$49
       .byte $41,$79,$49,$49,$30,$00,$00,$C5,$26,$06,$E5,$24,$24,$C4,$04,$10
       .byte $08,$08,$38,$28,$28,$28,$00,$00,$00,$E1,$92,$92,$93,$E2,$92,$91
       .byte $E0,$00,$86,$49,$08,$CF,$49,$49,$86,$00,$00,$08,$10,$10,$10,$10
       .byte $38,$10,$10,$00,$C6,$89,$88,$8F,$89,$89,$86,$80
LFBF0: .byte $60,$84,$A8,$CC,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA
LFC00: .byte $01,$01,$01,$01,$04,$04,$04,$04,$04,$04,$04,$03,$03,$03,$03,$03
       .byte $03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$04,$04,$04,$04,$04
       .byte $04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$00
       .byte $04,$04,$04,$00,$04,$04,$03,$03,$03,$04,$04,$04,$00,$04,$04,$04
       .byte $00,$04,$04,$04,$00,$04,$04,$04,$00,$04,$04,$04,$00,$04,$04,$04
LFC50: .byte $06,$04,$02,$00,$18,$16,$15,$1A,$14,$17,$1A,$02,$03,$04,$05,$06
       .byte $07,$08,$09,$0A,$0B,$0C,$0D,$0E,$0F,$10,$11,$06,$02,$03,$07,$1E
       .byte $1B,$1C,$1F,$1E,$1B,$1A,$17,$19,$1B,$1A,$1E,$16,$14,$19,$15,$00
       .byte $13,$11,$14,$00,$13,$10,$00,$01,$01,$05,$08,$09,$00,$07,$0A,$0B
       .byte $00,$09,$0C,$0D,$00,$0B,$0E,$0F,$00,$0D,$10,$11,$00,$0F,$12,$13
LFCA0: .byte $08,$09,$0A,$0B,$08,$09,$0A,$0A,$0D,$0B,$0E,$0F,$0F,$0E,$0E,$0D
       .byte $0D,$0C,$0C,$0B,$0B,$0A,$0A,$09,$09,$08,$08,$0B,$0B,$0B,$0B,$0A
       .byte $0A,$0A,$0A,$0A,$0A,$0A,$0A,$0A,$0A,$0A,$0A,$0E,$0E,$0E,$0E,$0E
       .byte $0E,$0E,$0E,$0E,$0E,$0E,$08,$0A,$0B,$0F,$0E,$0E,$00,$0E,$0D,$0D
       .byte $00,$0D,$0C,$0C,$00,$0C,$0B,$0B,$00,$0B,$0A,$0A,$00,$0A,$09,$09
LFCF0: .byte $25,$C8,$B8,$35
LFCF4: .byte $FF,$FD,$FD,$FF
LFCF8: .byte $2D,$D0,$C0,$3D
LFCFC: .byte $FF,$FD,$FD,$FF,$3C,$66,$66,$66,$66,$66,$66,$3C,$7E,$18,$18,$18
       .byte $18,$78,$38,$18,$7E,$60,$60,$3C,$06,$06,$46,$3C,$3C,$46,$06,$0C
       .byte $0C,$06,$46,$3C,$0C,$0C,$0C,$7E,$4C,$2C,$1C,$0C,$7C,$46,$06,$06
       .byte $7C,$60,$60,$7E,$3C,$66,$66,$66,$7C,$60,$62,$3C,$18,$18,$18,$18
       .byte $0C,$06,$42,$7E,$3C,$66,$66,$3C,$3C,$66,$66,$3C,$3C,$46,$06,$3E
       .byte $66,$66,$66,$3C,$00,$00,$00,$00,$00,$00,$00,$00,$7C,$F6,$FA,$FC
       .byte $FE,$FE,$FC,$38,$44,$44,$44,$44,$44,$44,$44,$C6,$74,$FA,$FC,$FE
       .byte $FE,$FE,$EE,$7C,$28,$28,$28,$28,$28,$28,$28,$28,$60,$F2,$F7,$F7
       .byte $F7,$62,$36,$1F,$54,$54,$54,$54,$54,$54,$28,$28,$20,$70,$F8,$50
       .byte $04,$0E,$1F,$0A,$42,$42,$42,$42,$42,$42,$42,$42,$38,$74,$7A,$FD
       .byte $8E,$07,$01,$07,$1A,$1A,$1A,$1A,$1A,$1A,$12,$12,$02,$06,$0E,$1E
       .byte $7F,$4C,$C0,$40,$12,$08,$08,$08,$12,$12,$02,$12,$04,$0E,$1F,$EE
       .byte $4C,$16,$23,$41,$12,$12,$12,$02,$08,$08,$08,$12,$81,$5A,$3C,$FF
       .byte $99,$3C,$5A,$A5,$82,$04,$04,$04,$82,$04,$04,$82
LFDD8: .byte $05
LFDD9: .byte $00,$10,$00,$15,$00,$20,$00,$25,$00,$50,$00,$00,$01,$50,$01,$00
       .byte $02,$50,$02,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA
       .byte $AA,$AA,$AA,$AA,$AA,$AA,$AA
LFE00: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$FF,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$FF,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
LFE40: .byte $00,$00,$00,$00,$00,$00,$02,$02,$03,$02,$02,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$FF,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$FF,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$02,$02,$03,$02,$02,$00,$00,$00,$00,$00
LFE80: .byte $00,$00,$00,$03,$02,$02,$02,$00,$00,$02,$02,$02,$03,$00,$00,$00
       .byte $00,$00,$00,$03,$00,$00,$00,$00,$00,$00,$00,$00,$03,$00,$00,$00
       .byte $00,$00,$00,$03,$00,$00,$00,$00,$00,$00,$00,$00,$03,$00,$00,$00
       .byte $00,$00,$00,$03,$02,$02,$02,$00,$00,$02,$02,$02,$03,$00,$00,$00
       .byte $21,$52,$94,$1C,$3F,$7E,$3F,$1C,$94,$52,$21,$32,$54,$14,$1D,$3E
       .byte $7E,$3E,$1D,$14,$54,$32,$12,$2A,$54,$1C,$3F,$7E,$3F,$1C,$54,$2A
       .byte $12
LFEE1: .byte $18,$18,$18,$C6,$C6,$C6,$C6,$C6,$18,$18,$18
LFEEC: .byte $C0,$CB,$D6,$C0
LFEF0: .byte $00,$08,$10,$18,$20,$28,$30,$38,$40,$48
LFEFA: .byte $50,$58,$68,$78,$88,$98,$A8,$B8,$C8
LFF03: .byte $ED,$2D,$6D,$BC,$FC,$3C,$8B,$CB,$0B,$4B,$9A,$DA,$1A,$5A,$A9,$E9
       .byte $29,$69,$B8,$F8,$38,$78,$C7,$07,$47,$96,$D6,$16,$56,$A5,$E5,$25
       .byte $65,$B4
LFF25: .byte $EE,$AA,$BA,$82,$C2,$42,$E3,$A0,$42,$42,$42,$42,$42,$04,$06,$0A
       .byte $6C,$A8,$3D,$7F,$7F,$3D,$A8,$6C,$CA,$C6,$CA,$C6,$C6,$CA,$C6,$CA
       .byte $FF,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$81,$00,$74,$14
       .byte $77,$45,$77,$00,$87,$8F,$8F,$8F,$9F,$9F,$9F,$FF,$FF,$FF,$FE,$1E
       .byte $1E,$3F,$3F,$3F,$7F,$7F,$7F,$F3,$F3,$F3,$F3,$00,$77,$44,$74,$44
       .byte $77,$00,$C0,$80,$80,$80,$00,$00,$00,$80,$80,$80,$5A,$4A,$5A,$52
       .byte $5A,$00,$80,$80,$80,$C0,$C0,$C0,$E0,$00,$24,$25,$27,$24,$77,$00
       .byte $F8,$7C,$7C,$7C,$3E,$3E,$3E,$7F,$7F,$7F,$E9,$A9,$AB,$AF,$ED,$01
       .byte $01,$01,$01,$01,$01,$01,$01,$00,$A4,$3C,$A4,$A4,$18,$00,$01,$01
       .byte $01,$01,$01,$01,$01,$81,$81,$FF
LFFBD: .byte $C8,$88,$00,$48,$08
LFFC2: .byte $00,$00,$00,$01,$03
LFFC7: .byte $01,$FF,$00,$00
LFFCB: .byte $00,$00,$01,$FF
LFFCF: .byte $01,$02,$04,$08,$10,$20
LFFD5: .byte $40,$80
LFFD7: .byte $18,$36
LFFD9: .byte $42,$3A,$32,$32,$32,$32,$3A,$42
LFFE1: .byte $39,$A8,$08,$08,$08,$08,$A8,$39
LFFE9: .byte $00,$05,$07,$07,$07,$07,$05,$00
LFFF1: .byte $01,$03,$05,$05,$05,$05,$03,$01,$AA,$AA,$AA,$00,$F0,$AA,$AA
