; Disassembly of roms/Space Tunnel (PAL).bin
; Disassembled Tue Oct  6 15:22:44 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Space Tunnel (PAL).bin
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
HMP0    =  $20
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296
T1024T  =  $0297

       ORG $F000

START:
       CLD            
       LDX    #$00    
       LDA    #$00    
LF005: STA    VSYNC,X 
       TXS            
       INX            
       BNE    LF005   
       LDA    #$38    
       STA    $8D     
       LDA    #$03    
       STA    VSYNC   
       LDA    #$02    
       STA    $8A     
       LDA    #$10    
       STA    $8C     
       STA    $8B     
       LDA    #$10    
       STA    $92     
       LDA    #$FF    
       STA    $94     
       LDA    #$00    
       STA    $E8     
       STA    $E9     
       STA    $EA     
       STA    $EB     
LF02F: LDA    #$00    
       LDX    #$A0    
LF033: STA    VSYNC,X 
       INX            
       BNE    LF033   
       STA    $ED     
       LDA    #$50    
       STA    $E6     
       LDA    #$40    
       STA    $AE     
       STA    $CC     
       STA    $CA     
       LDA    #$00    
       STA    $AC     
       LDA    #$25    
       STA    $B4     
       LDA    #$2E    
       STA    $D3     
       LDA    LFB9A   
       STA    $DD     
       LDA    #$6A    
       STA    $DC     
LF05B: JSR    LF844   
       LDA    #$00    
       STA    COLUBK  
       STA    WSYNC   
       STA    WSYNC   
       JSR    LF87B   
       LDX    #$03    
LF06B: STA    WSYNC   
       DEX            
       BPL    LF06B   
       JSR    LF6A9   
       LDA    #$13    
       STA    T1024T  
       LDA    $B4     
       STA    NUSIZ1  
       LDA    $E2     
       STA    NUSIZ0  
       LDA    $D3     
       AND    $A5     
       STA    COLUPF  
       LDA    #$2C    
       AND    $A5     
       STA    COLUP0  
       LDA    $8D     
       AND    $A5     
       STA    COLUP1  
       LDA    $90     
       LDX    #$00    
       JSR    LF81A   
       LDA    $B5     
       LDX    #$01    
       JSR    LF81A   
       LDA    $A1     
       LDX    #$00    
       JSR    LF81A   
       LDA    $A2     
       LDX    #$03    
       JSR    LF81A   
       STA    WSYNC   
       STA    HMOVE   
       LDA    $E7     
       AND    $A5     
       STA    COLUBK  
       LDA    #$01    
       STA    CTRLPF  
       LDA    #$00    
       STA    $AB     
       LDA    #$EC    
       STA    $A8     
       LDX    #$00    
       STX    $B0     
       STX    $B1     
       LDA    $CA     
       STA    $AE     
       STA    HMCLR   
       LDX    #$07    
       LDA    $A8     
LF0D4: LDY    #$00    
       CMP    $C6     
       BNE    LF0DC   
       LDY    #$02    
LF0DC: STY    ENAM0   
       CMP    $91     
       BNE    LF0E4   
       STX    $B0     
LF0E4: LDY    $B0     
       BEQ    LF0EA   
       DEC    $B0     
LF0EA: LDA    LFF00,Y 
       AND    $A5     
       STA    COLUP0  
       LDA    ($AC),Y 
       STA    GRP0    
       DEC    $A8     
       STA    WSYNC   
       LDY    #$00    
       LDA    $A8     
       CMP    $CD     
       BNE    LF103   
       LDY    #$02    
LF103: STY    ENAM1   
       CMP    $B6     
       BNE    LF10B   
       STX    $B1     
LF10B: LDY    $B1     
       BEQ    LF111   
       DEC    $B1     
LF111: LDA    LFF08,Y 
       ORA    $8D     
       AND    $A5     
       STA    COLUP1  
       LDA    ($AE),Y 
       STA    GRP1    
       DEC    $A8     
       LDY    $A8     
       STA    WSYNC   
       LDA    ($A6),Y 
       STA    PF0     
       LDA    $A8     
       CMP    #$80    
       BCS    LF0D4   
LF12E: DEC    $A8     
       LDY    #$00    
       LDA    $A8     
       CMP    $CD     
       BNE    LF13A   
       LDY    #$02    
LF13A: STY    ENAM1   
       LDX    #$03    
       JSR    LF7E9   
       LDA    $A8     
       CMP    #$27    
       BCS    LF12E   
       LDA    $ED     
       BNE    LF151   
       JSR    LF941   
       JMP    LF164   
LF151: LDA    #$00    
       STA    PF0     
       STA    GRP0    
       STA    GRP1    
       STA    ENAM1   
       STA    ENAM0   
       LDX    #$0C    
LF15F: STA    WSYNC   
       DEX            
       BPL    LF15F   
LF164: SEC            
       LDA    $A8     
       SBC    #$0A    
       STA    $A8     
       LDA    $DD     
       STA    $E7     
       LDA    $94     
       BEQ    LF176   
       JMP    LF2A3   
LF176: JSR    LF790   
       LDA    $86     
       BNE    LF180   
       JMP    LF27A   
LF180: LDA    $8B     
       ORA    $8C     
       BNE    LF1BC   
       LDA    $B3     
       AND    #$0F    
       TAY            
       LDA    LFB60,Y 
       STA    AUDF1   
       LDA    $E1     
       AND    #$07    
       TAY            
       LDA    LFB70,Y 
       STA    AUDC1   
       SEC            
       LDA    $B6     
       SBC    $91     
       BCS    LF1A3   
       EOR    #$FF    
LF1A3: TAX            
       LSR            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    LFF74,Y 
       STA    $C5     
       CLC            
       LDA    $B3     
       AND    #$07    
       TAY            
       LDA    LFF78,Y 
       ADC    $C5     
       STA    AUDV1   
LF1BC: INC    $E0     
       LDA    $8C     
       BNE    LF1DA   
       LDA    $C9     
       CMP    #$47    
       BCC    LF1DA   
       LDA    #$05    
       STA    AUDC0   
       LDA    #$08    
       STA    AUDV0   
       LDA    $C9     
       AND    #$0F    
       EOR    #$0F    
       ADC    #$08    
       STA    AUDF0   
LF1DA: LDA    NUSIZ1  
       ASL            
       BCC    LF1E3   
       LDA    #$01    
       STA    $DE     
LF1E3: LDA    $DE     
       BEQ    LF1F5   
       LDA    #$0F    
       STA    AUDV0   
       DEC    $DE     
       LDA    #$07    
       STA    AUDC0   
       LDA    #$0A    
       STA    AUDF0   
LF1F5: LDA    $8C     
       CMP    #$10    
       BCC    LF21D   
       LDA    #$08    
       STA    AUDC0   
       LDA.w  $008C   
       LSR            
       LSR            
       TAY            
       LSR            
       STA    AUDV0   
       STA    AUDV1   
       TYA            
       EOR    #$1F    
       STA    AUDF0   
       LDA    #$07    
       STA    AUDC1   
       LDA    #$1F    
       STA    AUDF1   
       LDA    $8C     
       ASL            
       ASL            
       STA    $E7     
LF21D: LDA    $8C     
       BNE    LF233   
       LDA    $8B     
       CMP    #$11    
       BCC    LF233   
       AND    #$1F    
       STA    AUDF0   
       LDA    #$0C    
       STA    AUDC0   
       LDA    #$0B    
       STA    AUDV0   
LF233: LDA    $8C     
       BNE    LF251   
       LDA    $8B     
       CMP    #$25    
       BCC    LF251   
       AND    #$0F    
       STA    AUDV0   
       STA    AUDV1   
       LDA    #$04    
       STA    AUDC0   
       STA    AUDC1   
       LDA    #$0F    
       STA    AUDF0   
       LDA    #$0E    
       STA    AUDF1   
LF251: LDA    $D5     
       BEQ    LF27A   
       DEC    $D5     
       LDA    $D5     
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    LFB89,Y 
       STA    AUDF0   
       LDA    $D5     
       AND    #$0F    
       ORA    #$03    
       SEC            
       SBC    #$03    
       STA    AUDV0   
       LDA    #$0C    
       STA    AUDC0   
       LDA    #$00    
       STA    AUDC1   
       STA    AUDF1   
       STA    AUDV1   
LF27A: LDA    $DB     
       BEQ    LF2A3   
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    $DB     
       AND    #$0F    
       ORA    #$03    
       SEC            
       SBC    #$03    
       STA    AUDV1   
       LDA    #$04    
       STA    AUDC1   
       LDA    LFB78,Y 
       STA    AUDF1   
       DEC    $DB     
       BNE    LF2A3   
       LDA    #$00    
       STA    AUDC0   
       STA    AUDF0   
       STA    AUDV0   
LF2A3: LDA    $94     
       BEQ    LF2ED   
       DEC    $94     
       LDA    $94     
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    #$04    
       STA    AUDC0   
       STA    AUDC1   
       LDA    LFB9E,Y 
       STA    AUDF0   
       LDA    $94     
       AND    #$07    
       ASL            
       STA    AUDV1   
       STA    AUDV0   
       LDA    LFBBE,Y 
       STA    AUDF1   
       LDA    $94     
       BNE    LF2ED   
       LDA    #$06    
       STA    $86     
       JSR    LF6E6   
       LDA    #$50    
       STA    $90     
       LDA    #$A0    
       STA    $91     
       LDA    #$00    
       STA    $88     
       STA    $89     
       STA    $8C     
       STA    $8E     
       LDA    #$08    
       STA    $92     
       LDA    #$10    
       STA    $8B     
LF2ED: LDA    INTIM   
       BNE    LF2ED   
       JSR    LF862   
       LDA    #$26    
       STA    TIM64T  
       LDA    SWCHB   
       LSR            
       BCS    LF325   
       LDA    #$FF    
       STA    $94     
       LDA    #$00    
       STA    $E8     
       STA    $E9     
       STA    $EA     
       STA    $EB     
       LDA    #$10    
       STA    $8C     
       STA    $8B     
       LDA    #$00    
       STA    $86     
       STA    $88     
       STA    $89     
LF31C: LDA    SWCHB   
       LSR            
       BCC    LF31C   
       JMP    LF02F   
LF325: LSR            
       BCS    LF369   
       LDA    #$00    
       STA    $86     
       JSR    LF6E6   
       INC    $87     
       LDA    $87     
       CMP    #$04    
       BNE    LF33B   
       LDA    #$00    
       STA    $87     
LF33B: LDY    $87     
       INY            
       TYA            
       ASL            
       ASL            
       ASL            
       CLC            
       ADC    #$08    
       STA    $92     
       LDA    #$00    
       STA    $88     
       STA    $89     
       LDY    #$01    
       LDA    $87     
       LSR            
       LSR            
       BCS    LF357   
       LDY    #$03    
LF357: STY    $8F     
       LDA    #$60    
       STA    $8C     
       STA    $8B     
LF35F: LDA    SWCHB   
       LSR            
       LSR            
       BCC    LF35F   
       JMP    LF02F   
LF369: LDY    #$FF    
       LSR            
       LSR            
       BCS    LF371   
       LDY    #$0F    
LF371: STY    $A5     
       LDY    #$15    
       LDA    SWCHB   
       ASL            
       ASL            
       BCS    LF37E   
       LDY    #$10    
LF37E: STY    $E2     
       LDA    $94     
       BEQ    LF397   
       LDA    $E8     
       CMP    #$11    
       BCS    LF39A   
       LDA    #$07    
       STA    $86     
       JSR    LF6E6   
       LDA    #$00    
       STA    $86     
       BEQ    LF39A   
LF397: JSR    LF6E6   
LF39A: LDA    $8C     
       BEQ    LF3C0   
       CMP    #$10    
       BEQ    LF3AE   
       CMP    #$30    
       BCC    LF3AA   
       DEC    $8C     
       DEC    $8C     
LF3AA: DEC    $8C     
       BNE    LF3E8   
LF3AE: LDA    $86     
       BEQ    LF3E8   
       DEC    $86     
       BEQ    LF3E8   
       LDA    #$00    
       STA    $8C     
       LDA    #$50    
       STA    $90     
       BNE    LF414   
LF3C0: LDA    $C9     
       BNE    LF3E8   
       LDA    REFP1   
       ASL            
       BCS    LF3E8   
       LDY    #$04    
       LDA    $E2     
       AND    #$0F    
       BEQ    LF3D3   
       LDY    #$08    
LF3D3: TYA            
       CLC            
       ADC    $90     
       STA    $A1     
       LDA    $91     
       SEC            
       SBC    #$04    
       STA    $C6     
       LDA    $8E     
       STA    $C7     
       LDA    #$50    
       STA    $C9     
LF3E8: LDA    $86     
       BEQ    LF414   
       LDA    $8C     
       BNE    LF414   
       LDA    WSYNC   
       ASL            
       BCS    LF403   
       LDA    VBLANK  
       ASL            
       BCS    LF403   
       LDA    $8B     
       BNE    LF414   
       LDA    COLUP1  
LF400: ASL            
       BCC    LF414   
LF403: LDA    #$70    
       STA    $8C     
       LDA    #$D0    
       STA    $AC     
       LDA    #$11    
       STA    $CD     
       STA    $B6     
       JMP    LF400   
LF414: LDA    $8C     
       BNE    LF452   
       LDA    $8B     
       BEQ    LF424   
       CMP    #$10    
       BEQ    LF44E   
       DEC    $8B     
       BNE    LF452   
LF424: LDA    VSYNC   
       ASL            
       BCS    LF42E   
       LDA    COLUP1  
       ASL            
       BCC    LF452   
LF42E: JSR    LF8E1   
       JSR    LF79F   
       LDA    $C5     
       BNE    LF452   
       INC    $E5     
       LDA    $E5     
       AND    #$07    
       TAY            
       LDA    LFF80,Y 
       STA    $8D     
       LDA    #$08    
       STA    $CA     
       LDA    #$30    
       STA    $8B     
       BNE    LF452   
LF44E: LDA    #$00    
       STA    $CA     
LF452: INC    $B3     
       LDA    $8C     
       BNE    LF4A5   
       INC    $A9     
       LDA    $8F     
       LSR            
       AND    $A9     
       BNE    LF4A5   
       LDA    $8E     
       LSR            
       BCS    LF486   
       DEC    $A6     
       DEC    $A6     
       INC    $A4     
       LDA    $A4     
       AND    #$07    
       STA    $AA     
       BNE    LF483   
       SED            
       SEC            
       LDA    $D9     
       SBC    #$10    
       STA    $D9     
       LDA    $D8     
       SBC    #$00    
       STA    $D8     
       CLD            
LF483: JMP    LF4A5   
LF486: INC    $A6     
       INC    $A6     
       DEC    $A4     
       LDA    $A4     
       AND    #$07    
       STA    $AA     
       CMP    #$07    
       BNE    LF4A5   
       SED            
       CLC            
       LDA    $D9     
       ADC    #$10    
       STA    $D9     
       LDA    $D8     
       ADC    #$00    
       STA    $D8     
       CLD            
LF4A5: LDA    #$FD    
       STA    $A7     
       LDA    #$FA    
       STA    $AD     
       STA    $AF     
       LDA    $AA     
       STA    $A3     
       LDA    $94     
       BNE    LF4F5   
       LDA    $8F     
       LSR            
       AND    $B3     
       BNE    LF4F5   
       LDY    $8E     
       LDX    $90     
       LDA    SWCHA   
       ASL            
       BCS    LF4D6   
       CPX    #$90    
       BCS    LF4D6   
       INX            
       INX            
       TYA            
       AND    #$03    
       ORA    #$08    
       TAY            
       BNE    LF4F1   
LF4D6: ASL            
       BCS    LF4E7   
       CPX    #$08    
       BCC    LF4E7   
       DEX            
       DEX            
       TYA            
       AND    #$03    
       ORA    #$04    
       TAY            
       BNE    LF4F1   
LF4E7: ASL            
       BCS    LF4EC   
       LDY    #$00    
LF4EC: ASL            
       BCS    LF4F1   
       LDY    #$01    
LF4F1: STY    $8E     
       STX    $90     
LF4F5: LDA    $C9     
       BEQ    LF547   
       CMP    #$40    
       BEQ    LF4FF   
       DEC    $C9     
LF4FF: LDX    $A1     
       LDY    $C6     
       LDA    $C7     
       LSR            
       LSR            
       LSR            
       BCC    LF514   
       DEX            
       DEX            
       DEX            
       DEX            
       CPX    #$18    
       BCS    LF539   
       BCC    LF53F   
LF514: LSR            
       BCC    LF521   
       INX            
       INX            
       INX            
       INX            
       CPX    #$80    
       BCC    LF539   
       BCS    LF53F   
LF521: LDA    $C7     
       LSR            
       BCC    LF531   
       INY            
       INY            
       INY            
       INY            
       CPY    #$EC    
       BCC    LF539   
       JMP    LF53F   
LF531: DEY            
       DEY            
       DEY            
       DEY            
       CPY    #$68    
       BCC    LF53F   
LF539: STX    $A1     
       STY    $C6     
       BNE    LF547   
LF53F: LDA    #$00    
       STA    $A1     
       STA    $C6     
       STA    $C9     
LF547: LDA    $8C     
       BEQ    LF54E   
       JMP    LF5B3   
LF54E: LDA    $8B     
       BEQ    LF574   
       LDY    $B6     
       LDA    $8E     
       LSR            
       BCS    LF567   
       INY            
       INY            
       INY            
       INY            
       CPY    #$F0    
       BCC    LF572   
       JSR    LF74A   
       JMP    LF572   
LF567: DEY            
       DEY            
       DEY            
       DEY            
       CPY    #$11    
       BCS    LF572   
       JSR    LF74A   
LF572: STY    $B6     
LF574: LDA    $8B     
       BNE    LF5B3   
       INC    $CF     
       LDA    $CF     
       AND    $8F     
       BNE    LF5B3   
       INC    $D0     
       LDA    $D0     
       AND    #$0F    
       BNE    LF58A   
       INC    $D4     
LF58A: LDA    $D4     
       AND    #$1F    
       TAY            
       LDA    LFF10,Y 
       STA    $C5     
       LDA    LFF30,Y 
       STA    $C8     
       LDY.w  $00B5   
       CPY    $C5     
       BCS    LF5A2   
       INY            
       INY            
LF5A2: DEY            
       STY    $B5     
       LDY    $B6     
       CPY    $C8     
       BCS    LF5AF   
       INY            
       INY            
       INY            
       INY            
LF5AF: DEY            
       DEY            
       STY    $B6     
LF5B3: DEC    $D6     
       BEQ    LF5BA   
       JMP    LF63E   
LF5BA: JSR    LF72E   
       LDY    $CD     
       CPY    #$FC    
       BCS    LF5FF   
       CPY    #$08    
       BCC    LF5FF   
       LDA    NUSIZ1  
       ASL            
       BCS    LF62A   
       LDA.w  $00A2   
       LDX.w  $00CB   
       BNE    LF5D9   
       CLC            
       ADC    $8A     
       BNE    LF5DE   
LF5D9: SEC            
       LDA    $A2     
       SBC    $8A     
LF5DE: STA    $A2     
       SEC            
       LDA    #$07    
       SBC    $8A     
       AND    #$FE    
       STA    $C5     
       LDA    $D7     
       BEQ    LF5F6   
       SEC            
       LDA    $CD     
       SBC    $C5     
       STA    $CD     
       BNE    LF63E   
LF5F6: LDA    $C5     
       CLC            
       ADC    $CD     
       STA    $CD     
       BNE    LF63E   
LF5FF: LDA    $8B     
       ORA    $8C     
       BNE    LF63E   
       LDY    #$01    
       LDA    $B6     
       CMP    $91     
       BCS    LF60F   
       LDY    #$00    
LF60F: STY    $D7     
       LDX    $B5     
       STX    $A2     
       LDY    $B6     
       STY    $CD     
       JSR    LF72E   
       LDA    $D1     
       ADC    $D2     
       AND    #$07    
       TAY            
       LDA    LFF88,Y 
       STA    $8A     
       BNE    LF63E   
LF62A: LDA.w  $00CB   
       EOR    #$01    
       STA    $CB     
       LDA    $A2     
       CMP    #$40    
       BCS    LF639   
       ADC    #$08    
LF639: SEC            
       SBC    #$04    
       STA    $A2     
LF63E: LDA    $8C     
       BNE    LF64D   
       LDY    #$E0    
       LDA    $8E     
       LSR            
       BCS    LF64B   
       LDY    #$F0    
LF64B: STY    $AC     
LF64D: LDX    #$01    
       SED            
       SEC            
LF651: LDA    #$00    
       ADC    $D1,X   
       STA    $D1,X   
       DEX            
       BPL    LF651   
       CLD            
       JSR    LF8F9   
       JSR    LF667   
       JSR    LF689   
       JMP    LF05B   
LF667: LDA    $89     
       AND    #$F0    
       CMP    $E6     
       BNE    LF688   
       SED            
       LDA    $E6     
       CLC            
       ADC    #$50    
       STA    $E6     
       CLD            
       LDA    #$FF    
       STA    $DB     
       INC    $E4     
       LDA    $E4     
       AND    #$03    
       TAY            
       LDA    LFB9A,Y 
       STA    $DD     
LF688: RTS            

LF689: LDA    $88     
       AND    #$0F    
       CMP    $DA     
       BEQ    LF6A8   
       STA    $DA     
       INC    $E3     
       LDA    $86     
       CMP    #$06    
       BEQ    LF69D   
       INC    $86     
LF69D: LDA    #$F0    
       STA    $D5     
       CLC            
       LDA    $DC     
       ADC    #$40    
       STA    $DC     
LF6A8: RTS            

LF6A9: LDA    #$20    
       LDX    #$00    
       JSR    LF81A   
       LDA    #$50    
       LDX    #$01    
       JSR    LF81A   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$2C    
       AND    $A5     
       STA    COLUP0  
       STA    COLUP1  
       LDA    $80     
       STA    NUSIZ0  
       LDA    $81     
       STA    NUSIZ1  
       STA    HMCLR   
       LDY    #$07    
LF6CF: STA    WSYNC   
       LDA    LFF00,Y 
       AND    $A5     
       STA    COLUP0  
       STA    COLUP1  
       LDA    ($82),Y 
       STA    GRP0    
       LDA    ($84),Y 
       STA    GRP1    
       DEY            
       BPL    LF6CF   
       RTS            

LF6E6: LDA    #$FA    
       STA    $83     
       STA    $85     
       LDY    $86     
       BEQ    LF6F9   
       DEY            
       CPY    #$04    
       BCS    LF717   
       CPY    #$01    
       BCS    LF705   
LF6F9: LDA    #$00    
       STA    $80     
       STA    $81     
       STA    $82     
       STA    $84     
       BEQ    LF72A   
LF705: LDA    #$00    
       STA    $84     
       STA    $81     
       DEY            
       LDA    LF72B,Y 
       STA    $80     
       LDA    #$F0    
       STA    $82     
       BNE    LF72A   
LF717: LDA    #$03    
       STA    $80     
       DEY            
       DEY            
       DEY            
       DEY            
       LDA    LF72B,Y 
       STA    $81     
       LDA    #$F0    
       STA    $82     
       STA    $84     
LF72A: RTS            

LF72B: .byte $00,$01,$03
LF72E: LDA    $87     
       LSR            
       BCC    LF738   
       LDA    $89     
       JMP    LF73E   
LF738: LDA    $89     
       LSR            
       LSR            
       LSR            
       LSR            
LF73E: AND    #$0F    
       CLC            
       ADC    $DA     
       TAY            
       LDA    LFFA0,Y 
       STA    $D6     
       RTS            

LF74A: CLC            
       LDA    $CC     
       ADC    #$08    
       CMP    #$90    
       BCC    LF755   
       LDA    #$40    
LF755: STA    $CC     
       TAY            
       STA.w  $00CA   
       LDA    ($A6),Y 
       ADC    $CC     
       AND    #$7F    
       ADC    #$10    
       STA.w  $00B5   
       LDA    #$00    
       STA    $8B     
       LDA    $D1     
       ADC    $D2     
       AND    #$1F    
       CMP    #$08    
       BCC    LF776   
       LDA    #$05    
LF776: CLC            
       AND    #$07    
       TAY            
       STA    $E1     
       ADC    #$20    
       STA    $B4     
       LDA    LFF90,Y 
       STA    $D3     
       LDA    $D2     
       LSR            
       BCS    LF78D   
       LDY    #$13    
       RTS            

LF78D: LDY    #$EF    
       RTS            

LF790: LDA    #$00    
       STA    AUDC0   
       STA    AUDC1   
       STA    AUDF0   
       STA    AUDF1   
       STA    AUDV0   
       STA    AUDV1   
       RTS            

LF79F: LDA    $B4     
       AND    #$0F    
       CMP    #$00    
       BEQ    LF7E4   
       CMP    #$05    
       BEQ    LF7E4   
       CMP    #$07    
       BEQ    LF7E4   
       STA    $C5     
       LDA    $B5     
       CLC            
       ADC    #$0B    
       CMP    $A1     
       BCC    LF7D1   
       LDA    $C5     
       LSR            
       BCC    LF7C3   
       LDA    #$10    
       BNE    LF7CC   
LF7C3: LSR            
       BCC    LF7CA   
       LDA    #$20    
       BNE    LF7CC   
LF7CA: LDA    #$40    
LF7CC: CLC            
       ADC    $B5     
       STA    $B5     
LF7D1: LDA    $C5     
       LSR            
       AND    $C5     
       TAY            
       CLC            
       ADC    #$20    
       STA    $B4     
       STA    $C5     
       LDA    LFF90,Y 
       STA    $D3     
       RTS            

LF7E4: LDA    #$00    
       STA    $C5     
       RTS            

LF7E9: LDA    $A8     
       STA    WSYNC   
       CMP    $B6     
       BNE    LF7F5   
       LDA    #$07    
       STA    $B1     
LF7F5: LDY    $B1     
       BEQ    LF7FB   
       DEC    $B1     
LF7FB: LDA    LFF08,Y 
       ORA    $8D     
       AND    $A5     
       STA    COLUP1  
       LDA    ($AE),Y 
       STA    GRP1    
       JSR    LF80E   
       DEC    $A8     
       RTS            

LF80E: STA    WSYNC   
       LDY    $A8     
       LDA    ($A6),Y 
       STA    PF0     
       RTS            

LF817: .byte $EA,$EA,$EA
LF81A: CLC            
       ADC    #$2E    
       TAY            
       AND    #$0F    
       STA.w  $00A0   
       TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       CLC            
       ADC.w  $00A0   
       CMP    #$0F    
       BCC    LF834   
       SBC    #$0F    
       INY            
LF834: EOR    #$07    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    HMP0,X  
       STA    WSYNC   
LF83E: DEY            
       BPL    LF83E   
       STA    RESP0,X 
       RTS            

LF844: LDA    INTIM   
       BNE    LF844   
       STA    WSYNC   
       STA    VBLANK  
       STA    CXCLR   
       STA    HMCLR   
       STA    COLUBK  
       STA    GRP0    
       STA    GRP1    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       STA    ENAM0   
       STA    ENAM1   
       RTS            

LF862: LDA    #$82    
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
       RTS            

LF87B: LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    ENAM0   
       STA    ENAM1   
       STA    PF0     
       LDA    #$38    
       LDX    #$00    
       JSR    LF81A   
       LDA    #$40    
       LDX    #$01    
       JSR    LF81A   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$03    
       STA    NUSIZ0  
       LDA    #$01    
       STA    NUSIZ1  
       LDA    $DC     
       AND    $A5     
       STA    COLUP1  
       STA    COLUP0  
       LDY    #$07    
       STY    $C5     
       NOP            
       NOP            
       STA    HMCLR   
LF8B1: LDY    $C5     
       LDA    ($92),Y 
       STA    $A0     
       STA    WSYNC   
       LDA    ($BB),Y 
       STA    GRP0    
       LDA    ($BD),Y 
       STA    GRP1    
       NOP            
       NOP            
       LDA    ($C1),Y 
       TAX            
       NOP            
       NOP            
       NOP            
       LDA    ($BF),Y 
       LDY    $A0     
       STA.w  $001B   
       STX    GRP1    
       STY    GRP0    
       DEC    $C5     
       BPL    LF8B1   
       STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       RTS            

LF8E1: LDA    $B4     
       AND    #$07    
       TAY            
       LDA    LFF98,Y 
       CLC            
       LDX    #$01    
       SED            
LF8ED: ADC.wx $0088,X 
       STA    $88,X   
       LDA    #$00    
       DEX            
       BPL    LF8ED   
       CLD            
       RTS            

LF8F9: LDA    $88     
       STA    $B8     
       LDA    $89     
       STA    $B9     
       LDX    #$01    
       LDY    #$04    
LF905: LDA    $B8,X   
       AND    #$F0    
       LSR            
       ADC    #$08    
       STA.wy $00BB,Y 
       LDA    $B8,X   
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       ADC    #$08    
       STA.wy $00BD,Y 
       LDA    #$FB    
       STA.wy $00BC,Y 
       STA.wy $00BE,Y 
       DEY            
       DEY            
       DEY            
       DEY            
       DEX            
       BPL    LF905   
       LDA    #$FB    
       STA    $93     
       LDX    #$00    
LF930: LDA    $BB,X   
       CMP    #$08    
       BNE    LF940   
       LDA    #$00    
       STA    $BB,X   
       INX            
       INX            
       CMP    #$08    
       BNE    LF930   
LF940: RTS            

LF941: LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    ENAM0   
       STA    ENAM1   
       STA    PF0     
       LDA    #$20    
       LDX    #$00    
       JSR    LF81A   
       LDA    #$28    
       LDX    #$01    
       JSR    LF81A   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$01    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$0C    
       STA    COLUP1  
       STA    COLUP0  
       LDX    #$08    
       NOP            
       NOP            
       NOP            
       NOP            
       STA    HMCLR   
LF973: STA    WSYNC   
       LDA    LFF50,X 
       STA    GRP0    
       LDA    LFF59,X 
       STA    GRP1    
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       LDA    LFF6B,X 
       TAY            
       LDA    LFF62,X 
       STA    GRP0    
       STY    GRP1    
       STA    HMCLR   
       DEX            
       BPL    LF973   
       RTS            

LF995: .byte $00,$85,$8C,$A9,$50,$85,$90,$D0,$54,$A5,$C9,$D0,$24,$A5,$0C,$0A
       .byte $B0,$1F,$A0,$04,$A5,$E2,$29,$0F,$F0,$02,$A0,$08,$98,$18,$65,$90
       .byte $85,$A1,$A5,$91,$38,$E9,$04,$85,$C6,$A5,$8E,$85,$C7,$A9,$50,$85
       .byte $C9,$A5,$86,$F0,$28,$A5,$8C,$D0,$24,$A5,$02,$0A,$B0,$0E,$A5,$01
       .byte $0A,$B0,$09,$A5,$8B,$D0,$16,$A5,$07,$0A,$90,$11,$A9,$70,$85,$8C
       .byte $A9,$D0,$85,$AC,$A9,$11,$85,$CD,$85,$B6,$4C,$29,$F4,$A5,$8C,$D0
       .byte $3A,$A5,$8B,$F0,$08,$C9,$10,$F0,$FF,$FF,$FF,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$44,$00,$20,$01,$44,$00,$F8,$38,$A5,$D9,$E9
       .byte $10,$85,$D9,$A5,$D8,$E9,$00,$85,$D8,$D8,$4C,$A5,$F4,$E6,$A6,$E6
       .byte $A6,$C6,$A4,$A5,$A4,$29,$07,$85,$AA,$C9,$07,$D0,$0F,$F8,$18,$A5
       .byte $D9,$69,$10,$85,$D9,$A5,$D8,$69,$00,$85,$D8,$00,$00,$24,$5A,$99
       .byte $42,$24,$18,$00,$10,$44,$28,$92,$28,$44,$10,$00,$63,$22,$14,$08
       .byte $55,$36,$08,$00,$10,$28,$44,$D6,$28,$6C,$00,$00,$24,$00,$5A,$5A
       .byte $81,$18,$24,$00,$10,$38,$54,$FE,$10,$38,$7C,$00,$00,$18,$24,$18
       .byte $24,$81,$66,$00,$0C,$18,$0C,$36,$49,$49,$22,$00,$42,$5A,$24,$42
       .byte $81,$5A,$24,$00,$28,$44,$92,$92,$6C,$10,$28,$85,$04,$A5,$81,$85
       .byte $05,$85,$2B,$A0,$07,$85,$02,$B9,$00,$FF,$25,$A5,$85,$06,$85,$07
       .byte $B1,$82,$85,$1B,$B1,$84,$85,$1C,$88,$10,$EA,$60,$A9,$FA,$85,$83
       .byte $85,$85,$A4,$86,$F0,$09,$88,$C0,$04,$B0,$22,$C0,$01,$B0,$0C,$A9
       .byte $00,$85,$80,$85,$81,$85,$82,$85,$84,$F0,$25,$00,$10,$56,$38,$5E
       .byte $64,$60,$10,$00,$10,$56,$38,$5E,$64,$00,$00,$00,$D6,$10,$28,$54
       .byte $C6,$38,$10,$00,$D6,$10,$28,$54,$C6,$38,$10,$00,$10,$38,$C6,$54
       .byte $28,$10,$D6,$00,$3C,$A5,$66,$5A,$E7,$3C,$08,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$3C,$66,$66,$66,$66,$66,$66,$3C,$3C,$18,$18,$18,$18
       .byte $18,$38,$18,$7E,$60,$60,$3C,$06,$06,$46,$3C,$3C,$46,$06,$0C,$0C
       .byte $06,$46,$3C,$0C,$0C,$0C,$7E,$4C,$2C,$1C,$0C,$7C,$46,$06,$06,$7C
       .byte $60,$60,$7E,$3C,$66,$66,$66,$7C,$60,$62,$3C,$18,$18,$18,$18,$0C
       .byte $06,$42,$7E,$3C,$66,$66,$3C,$3C,$66,$66,$3C,$3C,$46,$06,$3E,$66
       .byte $66,$66,$3C,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
LFB60: .byte $FF,$FF,$FF,$FF,$AA,$AA,$AA,$AA,$CC,$CC,$CC,$CC,$88,$88,$88,$88
LFB70: .byte $07,$01,$0A,$04,$09,$0C,$05,$08
LFB78: .byte $1B,$16,$12,$10,$14,$12,$14,$16,$14,$12,$12,$10,$14,$10,$14,$10
       .byte $14
LFB89: .byte $08,$08,$07,$09,$08,$0A,$09,$0B,$0A,$0C,$0B,$0D,$0C,$0E,$0D,$0F
       .byte $00
LFB9A: .byte $D3,$14,$C3,$00
LFB9E: .byte $11,$14,$17,$14,$0E,$14,$11,$0B,$17,$14,$11,$0E,$14,$11,$0B,$0B
       .byte $05,$0B,$09,$08,$06,$08,$09,$0B,$11,$14,$17,$1A,$11,$14,$17,$1A
LFBBE: .byte $14,$1A,$17,$1A,$13,$1A,$14,$0E,$1C,$1A,$14,$13,$1A,$14,$0E,$0E
       .byte $13,$0E,$0C,$0B,$08,$0B,$0C,$0E,$14,$1A,$1C,$1E,$14,$1A,$17,$1E
       .byte $FF,$FF,$C8,$C0,$F0,$90,$11,$20,$4A,$F7,$4C,$72,$F5,$88,$88,$88
       .byte $88,$C0,$11,$B0,$03,$20,$4A,$F7,$84,$B6,$A5,$8B,$D0,$3B,$E6,$CF
       .byte $A5,$CF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$4C,$49,$4E,$4B,$20,$31,$2E,$36,$0D,$49,$4E,$49,$54,$20,$2F
       .byte $F0,$C1,$41,$20,$20,$20,$20,$05,$F0,$D4,$4F,$50,$20,$20,$20,$00
       .byte $F0,$54,$50,$4C,$45,$4E,$20,$FF,$00,$58,$4D,$49,$4E,$20,$20,$08
       .byte $00,$59,$4D,$49,$4E,$20,$20,$08,$00,$59,$4D,$41,$58,$20,$20,$EC
       .byte $00,$58,$4D,$41,$58,$20,$20,$90,$00,$53,$54,$41,$52,$54,$20,$00
       .byte $00,$43,$45,$4E,$54,$20,$20,$A0,$00,$43,$43,$30,$39,$20,$20,$73
       .byte $00,$43,$43,$30,$36,$20,$20,$2C,$00,$43,$43,$30,$37,$20,$20,$38
       .byte $00,$43,$43,$30,$38,$20,$20,$2E,$00,$FF,$FC,$FC,$FC,$FC,$FC,$FC
       .byte $FC,$FC,$30,$30,$30,$30,$70,$70,$70,$70,$F0,$F0,$F0,$F0,$F0,$F0
       .byte $F0,$F0,$70,$70,$70,$70,$30,$30,$30,$30,$30,$30,$30,$30,$10,$10
       .byte $10,$10,$30,$30,$30,$30,$10,$10,$10,$10,$30,$30,$30,$30,$30,$30
       .byte $30,$30,$70,$70,$70,$70,$70,$70,$70,$70,$30,$30,$30,$30,$10,$10
       .byte $10,$10,$10,$10,$10,$10,$70,$70,$70,$70,$F0,$F0,$F0,$F0,$70,$70
       .byte $70,$70,$30,$30,$30,$30,$70,$70,$70,$70,$30,$30,$30,$30,$10,$10
       .byte $10,$10,$10,$10,$10,$10,$30,$30,$30,$30,$70,$70,$70,$70,$F0,$F0
       .byte $F0,$F0,$70,$70,$70,$70,$F0,$F0,$F0,$F0,$70,$70,$70,$70,$10,$10
       .byte $10,$10,$30,$30,$30,$30,$10,$10,$10,$10,$10,$10,$10,$10,$30,$30
       .byte $30,$30,$70,$70,$70,$70,$10,$10,$10,$10,$30,$30,$30,$30,$70,$70
       .byte $70,$70,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$70,$70,$70,$70,$30,$30
       .byte $30,$30,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$30,$30,$30,$30,$10,$10
       .byte $10,$10,$10,$10,$10,$10,$30,$30,$30,$30,$10,$10,$10,$10,$10,$10
       .byte $10,$10,$30,$30,$30,$30,$30,$30,$30,$30,$70,$70,$70,$70,$F0,$F0
       .byte $F0,$F0,$F0,$F0,$F0,$F0,$70,$70,$70,$70,$30,$30,$30,$30,$10,$10
       .byte $10,$10,$30,$30,$30,$30,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$30,$30
       .byte $30,$30,$10,$10,$10,$10,$10,$10,$10,$10,$30,$30,$30,$30,$70,$70
       .byte $70,$70,$30,$30,$30,$30,$F0,$F0,$F0,$F0,$10,$10,$10,$10,$30,$30
       .byte $30,$30,$70,$70,$70,$70,$70,$70,$70,$70,$F0,$F0,$F0,$F0,$10,$10
       .byte $10,$10,$30,$30,$30,$30,$F0,$F0,$F0,$F0,$70,$70,$70,$70,$30,$30
       .byte $30,$30,$10,$10,$10,$10,$70,$70,$70,$70,$30,$30,$30,$30,$10,$10
       .byte $10,$10,$10,$10,$10,$10,$30,$30,$30,$30,$10,$10,$10,$10,$70,$70
       .byte $70,$70,$70,$70,$70,$70,$30,$30,$30,$30,$10,$10,$10,$10,$30,$30
       .byte $30,$30,$30,$30,$30,$30,$70,$70,$70,$70,$F0,$F0,$F0,$F0,$F0,$F0
       .byte $F0,$F0,$70,$70,$70,$70,$30,$30,$30,$30,$30,$30,$30,$30,$10,$10
       .byte $10,$10,$30,$30,$30,$30,$10,$10,$10,$10,$30,$30,$30,$30,$30,$30
       .byte $30,$30,$70,$70,$70,$70,$70,$70,$70,$70,$30,$30,$30,$30,$10,$10
       .byte $10,$10,$10,$10,$10,$10,$70,$70,$70,$70,$F0,$F0,$F0,$F0,$70,$70
       .byte $70,$70,$30,$30,$30,$30,$70,$70,$70,$70,$30,$30,$30,$30,$10,$10
       .byte $10,$10,$10,$10,$10,$10,$30,$30,$30,$30,$70,$70,$70,$70,$F0,$F0
       .byte $F0,$F0,$70,$70,$70,$70,$F0,$F0,$F0,$F0,$70,$70,$70,$70,$10,$10
       .byte $10,$10,$30,$30,$30,$30,$10,$10,$10,$10,$10,$10,$10,$10,$30,$30
       .byte $30,$30
LFF00: .byte $AE,$66,$88,$CA,$4A,$AA,$88,$AE
LFF08: .byte $2C,$2C,$08,$67,$64,$2B,$2C,$00
LFF10: .byte $6A,$48,$34,$16,$08,$06,$5D,$74,$82,$6C,$4F,$3D,$38,$48,$5A,$32
       .byte $36,$1A,$05,$24,$12,$44,$64,$5A,$7C,$6A,$86,$3F,$93,$6A,$5F,$44
LFF30: .byte $1A,$24,$42,$74,$B3,$DE,$EC,$E2,$86,$70,$52,$6D,$B4,$C6,$C0,$A0
       .byte $C6,$E2,$B8,$64,$38,$22,$44,$88,$54,$78,$A4,$C1,$D8,$C8,$C1,$92
LFF50: .byte $00,$31,$49,$B5,$A5,$A5,$B5,$49,$31
LFF59: .byte $00,$D2,$D2,$52,$D2,$92,$D2,$57,$D7
LFF62: .byte $00,$37,$37,$37,$25,$25,$25,$37,$37
LFF6B: .byte $00,$54,$54,$64,$77,$77,$55,$55,$77
LFF74: .byte $08,$05,$03,$01
LFF78: .byte $00,$01,$02,$03,$04,$03,$02,$01
LFF80: .byte $38,$18,$0E,$2E,$5A,$4C,$8A,$AA
LFF88: .byte $02,$01,$03,$05,$03,$04,$04,$01
LFF90: .byte $2E,$C8,$C8,$64,$C8,$2E,$64,$BA
LFF98: .byte $03,$05,$05,$08,$05,$03,$08,$04
LFFA0: .byte $07,$06,$05,$05,$04,$04,$03,$03,$02,$01,$03,$04,$05,$01,$04,$02
       .byte $FF,$85,$1B,$84,$1C,$85,$2B,$CA,$10,$DF,$60,$00,$85,$8C,$A9,$50
       .byte $85,$90,$D0,$54,$A5,$C9,$D0,$24,$A5,$0C,$0A,$B0,$1F,$A0,$04,$A5
       .byte $E2,$29,$0F,$F0,$02,$A0,$08,$98,$18,$65,$90,$85,$A1,$A5,$91,$38
       .byte $E9,$04,$85,$C6,$A5,$8E,$85,$C7,$A9,$50,$85,$C9,$A5,$86,$F0,$28
       .byte $A5,$8C,$D0,$24,$A5,$02,$0A,$B0,$FF,$FF,$FF,$FF,$00,$F0,$00,$F0
