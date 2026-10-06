; Disassembly of roms/Condor Attack.bin
; Disassembled Tue Oct  6 15:21:08 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Condor Attack.bin
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
ENAM1   =  $1E
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
TIM8T   =  $0295

       ORG $F000

START:
       CLD            
       LDX    #$00    
       LDA    #$00    
LF005: STA    VSYNC,X 
       TXS            
       INX            
       BNE    LF005   
       LDA    #$08    
       STA    $C2     
       STA    $C0     
       LDA    #$B0    
       STA    $CF     
       STA    $BE     
       STA    $C4     
       LDA    #$03    
       STA    $D1     
       LDA    #$05    
       STA    $C7     
       LDA    #$35    
       STA    $9F     
LF025: LDA    #$00    
       STA    $B9     
       STA    $BA     
       STA    $BB     
       STA    $BC     
       STA    AUDV0   
       STA    AUDV1   
       STA    $88     
       STA    $89     
       STA    $8A     
       LDA    #$06    
       STA    $AC     
       STA    $AE     
       STA    $AD     
       STA    $AF     
       ASL            
       ASL            
       ASL            
       STA    $86     
       LDA    #$30    
       STA    $84     
       LDA    #$02    
       STA    $B0     
       LDA    #$FF    
       STA    $B1     
       LDA    #$08    
       STA    $AA     
       LDA    #$4C    
       STA    $AB     
       LDA    #$3F    
       STA    $A7     
       STA    $A4     
       LDA    #$10    
       STA    $BD     
       LDA    #$88    
       STA    $83     
       LDA    #$78    
       STA    $82     
       LDA    $AB     
       STA    $80     
       ADC    #$30    
       STA    $81     
       LDA    #$05    
       STA    $C5     
       STA    $C6     
       LDA    #$0B    
       STA    $CA     
       LDA    #$3F    
       STA    $D9     
LF084: LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$1D    
       AND    $A0     
       STA    COLUP0  
       STA    COLUP1  
       LDA    $CE     
       STA    COLUBK  
       LDA    #$00    
       STA    HMP0    
       LDA    #$18    
       STA    HMP1    
       LDY    #$05    
       LDA    #$10    
       STA    WSYNC   
LF0A4: DEY            
       BPL    LF0A4   
       STA    RESP0   
       STA    RESP1   
LF0AB: LDA    INTIM   
       BNE    LF0AB   
       STA    WSYNC   
       STA    VBLANK  
       STA    CXCLR   
       STA    HMCLR   
       STA    GRP0    
       STA    GRP1    
       LDX    #$14    
LF0BE: STA    WSYNC   
       DEX            
       BPL    LF0BE   
       LDA    #$07    
       STA    VDELP0  
       STA    VDELP1  
       LDA    #$07    
       STA    $9A     
LF0CD: LDY    $9A     
       LDA    ($98),Y 
       STA    $9B     
       LDA    ($96),Y 
       TAX            
       STA    WSYNC   
       NOP            
       LDA    ($8E),Y 
       STA    GRP0    
       LDA    ($90),Y 
       STA    GRP1    
       LDA    ($92),Y 
       STA    GRP0    
       LDA    ($94),Y 
       LDY    $9B     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       DEC    $9A     
       BPL    LF0CD   
       LDA    #$00    
       STA    WSYNC   
       STA    GRP1    
       STA    GRP0    
       STA    ENAM0   
       STA    ENAM1   
       STA    ENABL   
       STA    VDELP0  
       STA    VDELP1  
       LDA    $9F     
       AND    $A0     
       ORA    #$04    
       STA    COLUP0  
       CLC            
       ADC    #$BA    
       AND    $A0     
       ORA    #$04    
       STA    COLUP1  
       LDA    #$2D    
       AND    $A0     
       STA    COLUPF  
       LDA.w  $0087   
       LDX    #$04    
       JSR    LF9F0   
       STA    WSYNC   
       STA    HMOVE   
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       STA    WSYNC   
       NOP            
       NOP            
       STA    HMCLR   
       LDA    $8A     
       AND    #$F8    
       CMP    #$98    
       BNE    LF141   
       LDA    #$02    
       STA    ENABL   
LF141: LDA    $AC     
       CMP    #$0F    
       BNE    LF14B   
       LDA    #$00    
       STA    COLUP0  
LF14B: STA    NUSIZ0  
       LDA    $AD     
       CMP    #$0F    
       BNE    LF157   
       LDA    #$00    
       STA    COLUP1  
LF157: STA    NUSIZ1  
       LDX    #$01    
       LDA.w  $00AA   
       JSR    LFA1A   
       JSR    LFA52   
       LDA    #$00    
       STA    WSYNC   
       STA    GRP1    
       STA    GRP0    
       LDA    $9F     
       ADC    #$20    
       AND    $A0     
       ORA    #$04    
       STA    COLUP0  
       CLC            
       ADC    #$5A    
       AND    $A0     
       ORA    #$04    
       STA    COLUP1  
       LDA    $8A     
       AND    #$F8    
       CMP    #$90    
       BNE    LF18B   
       LDA    #$02    
       STA    ENABL   
LF18B: LDA    $AE     
       CMP    #$0F    
       BNE    LF195   
       LDA    #$00    
       STA    COLUP0  
LF195: STA    NUSIZ0  
       LDA    $AF     
       CMP    #$0F    
       BNE    LF1A1   
       LDA    #$00    
       STA    COLUP1  
LF1A1: STA    NUSIZ1  
       LDA    $AB     
       JSR    LFA1A   
       JSR    LFA52   
       LDA    #$00    
       STA    WSYNC   
       STA    GRP0    
       STA    GRP1    
       STA    ENAM0   
       STA    ENAM1   
       STA    ENABL   
       STA    VDELP0  
       STA    VDELP1  
       STA    NUSIZ1  
       LDA    #$05    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    $9F     
       EOR    $82     
       ORA    $B4     
       AND    $A0     
       ORA    #$08    
       STA    COLUP1  
       LDA    $9F     
       EOR    $84     
       AND    $A0     
       ORA    #$0B    
       STA    COLUP0  
       LDA    #$88    
       STA    $9D     
       LDA    $85     
       LDX    #$02    
       JSR    LF9F0   
       LDA.w  $0086   
       LDX    #$03    
       JSR    LF9F0   
       LDA    $80     
       LDX    #$00    
       JSR    LF9F0   
       LDA    $81     
       LDX    #$01    
       JSR    LF9F0   
       STA    WSYNC   
       STA    HMOVE   
       NOP            
       NOP            
       NOP            
       STA    WSYNC   
       NOP            
       NOP            
       STA    HMCLR   
LF209: LDX    #$02    
LF20B: LDA    $9D     
       AND    #$F8    
       STA    $9E     
       LDA    $8B,X   
       LDY    #$00    
       CMP    $9E     
       BNE    LF21B   
       LDY    #$02    
LF21B: STY    ENAM0,X 
       LDA    $83     
       CMP    $9D     
       BNE    LF24A   
       LDY    #$07    
LF225: LDA    ($C4),Y 
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP1    
       DEC    $9D     
       LDA    ($C4),Y 
       STA    HMCLR   
       LDA    $D7     
       CMP    #$02    
       BNE    LF23D   
       STA    WSYNC   
       DEC    $9D     
LF23D: DEY            
       BPL    LF225   
       LDY    #$05    
LF242: NOP            
       DEY            
       BPL    LF242   
       LDA    #$00    
       STA    GRP1    
LF24A: LDA    $82     
       CMP    $9D     
       BNE    LF281   
       LDY    #$07    
LF252: LDA    LFAA0,Y 
       AND    $A0     
       STA    COLUP0  
       LDA    ($BE),Y 
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       DEC    $9D     
       LDA    ($BE),Y 
       STA    HMCLR   
       LDA    $D7     
       CMP    #$01    
       BNE    LF271   
       STA    WSYNC   
       DEC    $9D     
LF271: DEY            
       BPL    LF252   
       LDY    #$05    
LF276: NOP            
       DEY            
       BPL    LF276   
       LDA    #$00    
       STA    GRP0    
       JMP    LF283   
LF281: DEC    $9D     
LF283: STA    WSYNC   
       LDA    $9D     
       SEC            
       CMP    #$0E    
       BCC    LF295   
       DEX            
       BMI    LF292   
       JMP    LF20B   
LF292: JMP    LF209   
LF295: LDA    #$00    
       STA    GRP0    
       STA    WSYNC   
       LDA    $B5     
       BNE    LF2A6   
       LDX    #$04    
LF2A1: STA    WSYNC   
       DEX            
       BPL    LF2A1   
LF2A6: LDA    $C7     
       STA    NUSIZ1  
       LDA    #$05    
       STA    NUSIZ0  
       LDA    $B5     
       BEQ    LF2BB   
       AND    #$0F    
       TAY            
       LDA    LFAB0,Y 
       JMP    LF2BD   
LF2BB: LDA    #$6B    
LF2BD: AND    $A0     
       STA    COLUP1  
       LDA    $84     
       LDX    #$01    
       JSR    LF9F0   
       LDA    #$50    
       LDX    #$00    
       JSR    LF9F0   
       LDA    #$0C    
       STA    $9A     
       LDY    #$07    
LF2D5: LDA.w  $00C0   
       AND    #$F0    
       CMP    #$E0    
       BNE    LF2E5   
       LDA    LFA98,Y 
       AND    $A0     
       STA    COLUP1  
LF2E5: LDA    ($C0),Y 
       STA    WSYNC   
       STA    HMOVE   
       NOP            
       NOP            
       STA    GRP1    
       LDA    ($C2),Y 
       STA    GRP0    
       LDA    ($C2),Y 
       STA    HMCLR   
       LDA    $B5     
       BEQ    LF2FF   
       STA    WSYNC   
       DEC    $9A     
LF2FF: DEY            
       BPL    LF2D5   
       NOP            
       NOP            
       NOP            
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    ENAM0   
       STA    ENABL   
       STA    ENAM1   
       STA    GRP1    
       STA    GRP0    
       LDA    #$9A    
       AND    $A0     
       STA    COLUPF  
       STA    WSYNC   
       LDY    #$05    
LF31F: LDA    LFAA8,Y 
       STA    PF0     
       STA    PF1     
       STA    PF2     
       STA    WSYNC   
       LDA    LFAA8,Y 
       LDA    LFAA8,Y 
       DEY            
       BPL    LF31F   
       LDA    #$00    
       STA    HMP0    
       STA    WSYNC   
       STA    HMOVE   
       STA    RESBL   
       LDX    #$00    
       STX    PF0     
       STX    PF1     
       STX    PF2     
       STX    COLUPF  
       INX            
       STX    NUSIZ0  
       STA    RESP0   
       STA    RESP1   
       STX    NUSIZ1  
       LDA    #$30    
       STA    HMCLR   
       STA    HMBL    
       LSR            
       STA    HMP1    
       LDA    #$0C    
       STA    COLUP1  
       STA    COLUP0  
       LDX    #$01    
LF361: STA    WSYNC   
       STA    HMOVE   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       NOP            
       TAY            
       STA    GRP0    
       STY    GRP1    
       STA    HMCLR   
       DEX            
       BPL    LF361   
       LDX    $9A     
LF378: STA    WSYNC   
       DEX            
       BPL    LF378   
       LDA    #$68    
       STA    TIM8T   
       INC    $A1     
       LDA    SWCHB   
       LSR            
       BCS    LF39F   
       LDA    #$06    
       STA    $CB     
       LDA    #$38    
       STA    $C2     
       LDA    #$00    
       STA    $C0     
LF396: LDA    SWCHB   
       LSR            
       BCC    LF396   
       JMP    LF025   
LF39F: LSR            
       BCS    LF3E2   
       INC    $D2     
       LDA    $D2     
       CMP    #$03    
       BCC    LF3AE   
       LDA    #$00    
       STA    $D2     
LF3AE: ASL            
       ADC    #$03    
       STA    $D1     
       LDY    #$B0    
       LDA    $D2     
       BEQ    LF3C1   
       LDY    #$C0    
       CMP    #$01    
       BEQ    LF3C1   
       LDY    #$D0    
LF3C1: STY    $CF     
       STY    $BE     
       STY    $C4     
       LDA    $D2     
       ASL            
       ASL            
       ASL            
       ADC    #$08    
       STA    $C0     
       LDA    #$00    
       STA    $CB     
       LDA    #$08    
       STA    $C2     
LF3D8: LDA    SWCHB   
       LSR            
       LSR            
       BCC    LF3D8   
       JMP    LF025   
LF3E2: LDY    #$FF    
       LSR            
       LSR            
       BCS    LF3EA   
       LDY    #$0F    
LF3EA: STY    $A0     
       LDY    #$05    
       LDX    #$08    
       LDA    SWCHB   
       ASL            
       ASL            
       BCS    LF3FB   
       LDY    #$00    
       LDX    #$04    
LF3FB: STY    $D3     
       STX    $D8     
       LDA    $A7     
       LSR            
       LSR            
       LSR            
       STA    $A8     
       LDA    $A1     
       AND    $A8     
       BNE    LF42E   
       JSR    LFA47   
       LDX    #$01    
LF411: LDA    $AA,X   
       CLC            
       ADC    $B0,X   
       STA    $AA,X   
       CMP    #$08    
       BEQ    LF420   
       CMP    #$4C    
       BNE    LF42B   
LF420: LDA    $B0,X   
       EOR    #$FF    
       CLC            
       ADC    #$01    
       STA    $B0,X   
       INC    $A0     
LF42B: DEX            
       BPL    LF411   
LF42E: LDA    $B4     
       BEQ    LF435   
       JMP    LF582   
LF435: LDA    $A1     
       AND    $A7     
       BNE    LF43D   
       INC    $A2     
LF43D: LDA    $A7     
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $A8     
       INC    $A3     
       LDA    $A3     
       AND    $A8     
       BNE    LF46C   
       INC    $A6     
       LDA    $A6     
       AND    #$01    
       BNE    LF461   
       LDA    $BE     
       EOR    #$08    
       STA    $BE     
       LDA    $CF     
       EOR    #$08    
       STA    $CF     
LF461: LDA    $A2     
       AND    #$1F    
       TAY            
       LDA    LFA78,Y 
       JMP    LF46E   
LF46C: LDA    #$00    
LF46E: LDX    $80     
       LDY    $82     
       LSR            
       BCS    LF47D   
       CPX    #$8C    
       BCC    LF47B   
       LDX    #$04    
LF47B: INX            
       INX            
LF47D: LSR            
       BCS    LF488   
       CPX    #$06    
       BCS    LF486   
       LDX    #$8C    
LF486: DEX            
       DEX            
LF488: LSR            
       BCS    LF490   
       CPY    #$30    
       BCC    LF490   
       DEY            
LF490: LSR            
       BCS    LF498   
       CPY    #$78    
       BCS    LF498   
       INY            
LF498: INC    $DB     
       LDA    $DB     
       AND    #$01    
       BNE    LF4A9   
       CPX    $84     
       BCS    LF4A8   
       INX            
       JMP    LF4A9   
LF4A8: DEX            
LF4A9: STX    $80     
       STY    $82     
       LDA    $A7     
       LSR            
       LSR            
       LSR            
       STA    $D6     
       INC    $D4     
       LDA    $D4     
       AND    $D6     
       BNE    LF4D5   
       INC    $D5     
       LDA    $D5     
       AND    #$01    
       BNE    LF4CA   
       LDA    $C4     
       EOR    #$08    
       STA    $C4     
LF4CA: LDA    $A2     
       AND    #$1F    
       TAY            
       LDA    LFA78,Y 
       JMP    LF4D7   
LF4D5: LDA    #$00    
LF4D7: LDX    $81     
       LDY    $83     
       LSR            
       BCC    LF4E6   
       CPX    #$8C    
       BCC    LF4E4   
       LDX    #$04    
LF4E4: INX            
       INX            
LF4E6: LSR            
       BCC    LF4F1   
       CPX    #$06    
       BCS    LF4EF   
       LDX    #$8C    
LF4EF: DEX            
       DEX            
LF4F1: LSR            
       BCC    LF4F9   
       CPY    #$20    
       BCC    LF4F9   
       DEY            
LF4F9: LSR            
       BCC    LF501   
       CPY    #$88    
       BCS    LF501   
       INY            
LF501: STX    $81     
       STY    $83     
       CLC            
       LDA    $82     
       ADC    #$08    
       TAX            
       SEC            
       SBC    #$10    
       TAY            
       CPX    $83     
       BCC    LF526   
       CPY    $83     
       BCS    LF526   
       SEC            
       LDA    $83     
       SBC    #$10    
       STA    $83     
       CMP    #$20    
       BCS    LF526   
       LDA    #$20    
       STA    $83     
LF526: LDA.w  $00CB   
       BEQ    LF582   
       LDA    $8A     
       CMP    #$07    
       BCC    LF540   
       CMP    #$30    
       BCC    LF568   
       LDA    $B5     
       BNE    LF568   
       LDA    #$E0    
       STA    $C0     
       JMP    LF568   
LF540: LDA    #$00    
       STA    AUDV0   
       STA    AUDC0   
       LDA    $C0     
       BEQ    LF582   
       LDA    REFP1   
       ASL            
       BCS    LF582   
       LDA    $B5     
       BNE    LF559   
       LDA    $C0     
       ORA    #$08    
       STA    $C0     
LF559: LDA    #$08    
       STA    AUDC0   
       LDA    $84     
       CLC            
       ADC    $D8     
       STA    $87     
       LDA    #$08    
       STA    $8A     
LF568: LDA    $8A     
       CLC            
       ADC    $D1     
       STA    $8A     
       CMP    #$B8    
       BCS    LF540   
       LSR            
       LSR            
       LSR            
       LSR            
       EOR    #$0F    
       SEC            
       SBC    #$05    
       STA    AUDF0   
       AND    #$FC    
       STA    AUDV0   
LF582: LDA.w  $00CB   
       BNE    LF58A   
       JMP    LF65D   
LF58A: LDA    $C0     
       BNE    LF5A5   
       LDA    SWCHA   
       AND    #$10    
       BNE    LF5C8   
       LDA    #$00    
       STA    $C2     
       LDA    #$E0    
       STA    $C0     
       LDA    #$30    
       STA    $84     
       LDA    $D3     
       STA    $C7     
LF5A5: LDA    $B5     
       BEQ    LF5AC   
       JMP    LF65D   
LF5AC: LDA    SWCHA   
       LDY    $84     
       ASL            
       BCS    LF5BD   
       CPY    #$8C    
       BCS    LF5C6   
       INY            
       INY            
       JMP    LF5C6   
LF5BD: ASL            
       BCS    LF5C6   
       CPY    #$0A    
       BCC    LF5C6   
       DEY            
       DEY            
LF5C6: STY    $84     
LF5C8: LDA    $88     
       BEQ    LF5E7   
       LDA    #$0C    
       STA    AUDC1   
       LDA    $88     
       SEC            
       SBC    $D1     
       STA    $88     
       CMP    #$07    
       BCS    LF601   
       LDA    $A7     
       STA    $A4     
       LDA    #$00    
       STA    $88     
       STA    AUDV1   
       STA    AUDC1   
LF5E7: DEC    $A4     
       BNE    LF601   
       LDA    #$0F    
       STA    $CD     
       LDA    $80     
       CLC            
       ADC    #$08    
       STA    $85     
       LDA    $82     
       SEC            
       SBC    #$08    
       BCS    LF5FF   
       LDA    #$00    
LF5FF: STA    $88     
LF601: LDA    $CC     
       BEQ    LF610   
       DEC    $CC     
       LDA    $CC     
       STA    AUDV1   
       ASL            
       EOR    #$FF    
       STA    AUDF1   
LF610: LDA    $89     
       BEQ    LF634   
       LDA    #$0C    
       STA    AUDC1   
       LDA    $D1     
       LSR            
       STA    $9C     
       LDA    $89     
       SEC            
       SBC    $9C     
       STA    $89     
       CMP    #$07    
       BCS    LF64E   
       LDA    $A7     
       STA    $A5     
       LDA    #$00    
       STA    $89     
       STA    AUDV1   
       STA    AUDC1   
LF634: DEC    $A5     
       BNE    LF64E   
       LDA    #$0C    
       STA    $CC     
       LDA    $81     
       CLC            
       ADC    #$08    
       STA    $86     
       LDA    $83     
       SEC            
       SBC    #$08    
       BCS    LF64C   
       LDA    #$00    
LF64C: STA    $89     
LF64E: LDA    $CD     
       BEQ    LF65D   
       DEC    $CD     
       LDA    $CD     
       STA    AUDV1   
       ASL            
       EOR    #$FF    
       STA    AUDF1   
LF65D: LDA    INTIM   
       BNE    LF65D   
       LDA    #$82    
       STA    WSYNC   
       STA    VBLANK  
       STA    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    VSYNC   
       LDA    #$68    
       STA    TIM8T   
       LDA    $B4     
       BEQ    LF680   
       JMP    LF784   
LF680: LDA    $8D     
       SEC            
       CMP    #$12    
       BCC    LF69D   
       LDA    $8D     
       SEC            
       CMP    #$90    
       BCS    LF691   
       JMP    LF6A0   
LF691: LDA    WSYNC   
       ASL            
       ASL            
       BCS    LF6BF   
       LDA    RSYNC   
       ASL            
       ASL            
       BCS    LF6BF   
LF69D: JMP    LF7DC   
LF6A0: LDA    #$00    
       STA    $B8     
       LDY    #$01    
       STY    $D7     
       LDA    WSYNC   
       ASL            
       ASL            
       BCS    LF6D6   
       LDY    #$02    
       STY    $D7     
       LDA    RSYNC   
       ASL            
       ASL            
       BCS    LF6D6   
       LDY    #$00    
       STY    $D7     
       JMP    LF7DC   
LF6BF: LDA    #$07    
       STA    $B8     
       LDA    #$04    
       STA    AUDC0   
       STA    AUDF0   
       LDA    #$0F    
       STA    AUDV0   
       LDA    #$00    
       STA    $8A     
       CLC            
       LDA    #$03    
       BNE    LF6D9   
LF6D6: LDA    $BD     
       CLC            
LF6D9: LDX    #$02    
       SED            
LF6DC: ADC.wx $00B9,X 
       STA.wx $00B9,X 
       LDA    #$00    
       DEX            
       BPL    LF6DC   
       CLD            
       LDA    $BA     
       AND    #$F0    
       CMP    $BC     
       BEQ    LF707   
       STA    $BC     
       LDA    #$4F    
       STA    $DA     
       LDA    $CB     
       CMP    #$09    
       BCS    LF6FE   
       INC    $CB     
LF6FE: LDA    $CB     
       ASL            
       ASL            
       ASL            
       ADC    #$08    
       STA    $C2     
LF707: DEC    $CA     
       BNE    LF73E   
       LDA    #$3F    
       STA    $D9     
       CLC            
       SED            
       LDA    $BD     
       CMP    #$40    
       BCC    LF71F   
       ADC    #$09    
       BCC    LF721   
       LDA    #$99    
       BNE    LF721   
LF71F: ADC    $BD     
LF721: STA    $BD     
       CLD            
       LDA.w  $00BA   
       AND    #$07    
       TAY            
       LDA    LF958,Y 
       STA    $A7     
       LDA    #$0C    
       STA    $CA     
       CLC            
       LDA    $9F     
       ADC    #$03    
       STA    $9F     
       LDA    #$00    
       STA    $C2     
LF73E: LDA    #$0F    
       STA    $AE     
       STA    $AF     
       LDX    #$00    
       SEC            
       LDA    $CA     
       CMP    #$07    
       BCC    LF758   
       SEC            
       SBC    #$06    
       LDY    #$06    
       STY    $AC     
       STY    $AD     
       LDX    #$02    
LF758: TAY            
       LDA    LF9A9,Y 
       TAY            
       AND    #$0F    
       STA    $AD,X   
       TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $AC,X   
       LDA    $B8     
       BNE    LF7DC   
       LDA    #$08    
       STA    AUDC0   
       LDA    #$31    
       STA    $B4     
       LDA    #$00    
       STA    $8A     
       STA    $B6     
       LDA    $D7     
       LSR            
       AND    #$01    
       TAX            
       LDA    #$05    
       STA    $C5,X   
LF784: DEC    $B4     
       LDA    $B4     
       BEQ    LF7B1   
       LSR            
       LSR            
       CLC            
       ADC    #$03    
       STA    AUDV0   
       ASL            
       EOR    #$FF    
       STA    AUDF0   
       LDA    $D7     
       LSR            
       AND    #$01    
       TAX            
       LDA    $B4     
       AND    #$18    
       CLC            
       ADC    #$60    
       CPX    #$00    
       BNE    LF7AC   
       STA    $BE     
       JMP    LF7DC   
LF7AC: STA    $C4     
       JMP    LF7DC   
LF7B1: LDA    $D7     
       LSR            
       AND    #$01    
       TAX            
       LDA    $AA,X   
       STA    $80,X   
       LDA    #$05    
       STA    $C5,X   
       LDA    $A7     
       STA    $A4     
       LDA    #$00    
       STA    $D7     
       LDA    $CF     
       CPX    #$00    
       BNE    LF7D6   
       STA    $BE     
       LDA    #$78    
       STA    $82     
       JMP    LF7DC   
LF7D6: STA    $C4     
       LDA    #$88    
       STA    $83     
LF7DC: LDA    $B5     
       BNE    LF812   
       LDA    $8B     
       CMP    #$0F    
       BCS    LF858   
       LDA    VSYNC   
       ASL            
       BCS    LF7F9   
       LDA    $8C     
       CMP    #$0F    
       BCS    LF858   
       LDA    VBLANK  
       ASL            
       ASL            
       BCS    LF7F9   
       BCC    LF858   
LF7F9: LDA.w  $00B5   
       LDA    #$0F    
       STA    AUDC1   
       LDA    #$31    
       STA    $B5     
       LDA    #$00    
       STA    $88     
       STA    $89     
       STA    $8A     
       STA    $B7     
       LDA    #$07    
       STA    $C7     
LF812: DEC    $B5     
       LDA    $B5     
       BEQ    LF82E   
       LSR            
       LSR            
       CLC            
       STA    AUDV1   
       ASL            
       EOR    #$FF    
       STA    AUDF1   
       LDA    $B5     
       AND    #$18    
       CLC            
       ADC    #$88    
       STA    $C0     
       JMP    LF858   
LF82E: LDA    #$00    
       STA    $C0     
       LDA    #$05    
       STA    $C7     
       LDA    #$00    
       STA    AUDV1   
       LDA    $CB     
       BEQ    LF849   
       DEC    $CB     
       LDA    $CB     
       ASL            
       ASL            
       ASL            
       ADC    #$08    
       STA    $C2     
LF849: LDA    #$00    
       LDX    #$05    
LF84D: STA    AUDC0,X 
       DEX            
       BPL    LF84D   
       STA    $88     
       STA    $89     
       STA    $8A     
LF858: LDX    #$02    
       LDY    #$08    
LF85C: LDA    $B9,X   
       AND    #$F0    
       LSR            
       ADC    #$08    
       STA.wy $008E,Y 
       LDA    $B9,X   
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       ADC    #$08    
       STA.wy $0090,Y 
       LDA    #$F9    
       STA.wy $008F,Y 
       STA.wy $0091,Y 
       DEY            
       DEY            
       DEY            
       DEY            
       DEX            
       BPL    LF85C   
       LDX    #$00    
LF883: LDA.wx $008E,X 
       EOR    #$08    
       BNE    LF893   
       STA.wx $008E,X 
       INX            
       INX            
       CPX    #$0A    
       BCC    LF883   
LF893: LDA    #$F9    
       STA    $BF     
       STA    $C1     
       STA    $C3     
       STA    $C5     
       STA    $D0     
       LDA    $C0     
       AND    #$F0    
       CMP    #$E0    
       BNE    LF8AB   
       LDA    $D3     
       STA    $C7     
LF8AB: LDX    #$02    
LF8AD: LDA    $88,X   
       AND    #$F8    
       STA    $8B,X   
       DEX            
       BPL    LF8AD   
       LDA    $CB     
       BEQ    LF8D0   
       LDA.w  $00D9   
       BEQ    LF8D0   
       DEC    $D9     
       LDA    #$04    
       STA    AUDC1   
       LDA.w  $00D9   
       BEQ    LF8CE   
       EOR    #$FF    
       STA    AUDF1   
LF8CE: STA    AUDV1   
LF8D0: LDA.w  $00DA   
       BEQ    LF8E9   
       DEC    $DA     
       LDA.w  $00DA   
       BEQ    LF8E7   
       LDY    #$07    
       STY    AUDC0   
       LSR            
       LSR            
       LSR            
       STA    AUDF0   
       ADC    #$06    
LF8E7: STA    AUDV0   
LF8E9: JMP    LF084   
LF8EC: .byte $D8,$A2,$00,$A9,$00,$95,$00,$9A,$E8,$D0,$FA,$A9,$08,$85,$C2,$85
       .byte $C0,$A9,$B0,$85,$00,$00,$00,$00,$00,$00,$00,$00,$3C,$66,$66,$66
       .byte $66,$66,$66,$3C,$3C,$18,$18,$18,$18,$18,$38,$18,$7E,$60,$60,$3C
       .byte $06,$06,$46,$3C,$3C,$46,$06,$0C,$0C,$06,$46,$3C,$0C,$0C,$0C,$7E
       .byte $4C,$2C,$1C,$0C,$7C,$46,$06,$06,$7C,$60,$60,$7E,$3C,$66,$66,$66
       .byte $7C,$60,$62,$3C,$18,$18,$18,$18,$0C,$06,$42,$7E,$3C,$66,$66,$3C
       .byte $3C,$66,$66,$3C,$3C,$46,$06,$3E,$66,$66,$66,$3C
LF958: .byte $3F,$1F,$0F,$0F,$07,$1F,$0F,$07,$00,$00,$00,$10,$08,$00,$00,$00
       .byte $00,$00,$18,$24,$24,$18,$00,$00,$24,$42,$99,$24,$24,$99,$42,$24
       .byte $89,$52,$18,$A6,$65,$18,$4A,$91,$FE,$C6,$7E,$38,$28,$FE,$38,$10
       .byte $28,$10,$00,$00,$00,$00,$00,$00,$44,$00,$44,$10,$00,$00,$00,$00
       .byte $44,$28,$92,$54,$28,$00,$10,$00,$44,$28,$54,$92,$28,$44,$92,$10
       .byte $00
LF9A9: .byte $FF,$0F,$00,$20,$22,$62,$66,$00,$24,$99,$5A,$24,$00,$00,$00,$00
       .byte $24,$18,$18,$24,$24,$42,$81,$24,$18,$18,$3C,$A5,$5A,$18,$24,$81
       .byte $81,$5A,$3C,$24,$5A,$99,$24,$42,$3C,$D7,$56,$3C,$18,$00,$00,$42
       .byte $3C,$EB,$6A,$3C,$18,$24,$42,$7C,$EE,$7C,$00,$38,$7C,$10,$10,$10
       .byte $28,$28,$6C,$38,$44,$82,$00
LF9F0: CLC            
       ADC    #$2E    
       TAY            
       AND    #$0F    
       STA.w  $009C   
       TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       CLC            
       ADC.w  $009C   
       CMP    #$0F    
       BCC    LFA0A   
       SBC    #$0F    
       INY            
LFA0A: EOR    #$07    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    HMP0,X  
       STA    WSYNC   
LFA14: DEY            
       BPL    LFA14   
       STA    RESP0,X 
       RTS            

LFA1A: CLC            
       ADC    #$2E    
       TAY            
       AND    #$0F    
       STA    $9C     
       TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       CLC            
       ADC    $9C     
       CMP    #$0F    
       BCC    LFA32   
       SBC    #$0F    
       INY            
LFA32: EOR    #$07    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    HMP0    
       STA    HMP1    
       STA    WSYNC   
LFA3E: DEY            
       BPL    LFA3E   
       STA    RESP0   
       STA.w  $0011   
       RTS            

LFA47: STX    $DC     
       LDX    #$0A    
LFA4B: NOP            
       DEX            
       BPL    LFA4B   
       LDX    $DC     
       RTS            

LFA52: LDY    #$07    
LFA54: LDA    ($CF),Y 
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       NOP            
       NOP            
       STA.w  $001C   
       NOP            
       NOP            
       STA.w  $001B   
       NOP            
       NOP            
       NOP            
       NOP            
       STA    GRP1    
       STA    GRP0    
       STA    GRP1    
       STA    GRP0    
       STA    HMCLR   
       DEY            
       BPL    LFA54   
       RTS            

LFA78: .byte $0A,$0A,$0A,$0A,$0A,$0A,$0A,$0A,$0D,$0D,$05,$0D,$0D,$05,$05,$05
       .byte $06,$06,$06,$0E,$06,$0E,$06,$06,$09,$09,$09,$0D,$0D,$0D,$09,$09
LFA98: .byte $26,$28,$2A,$2C,$1B,$1C,$1E,$1F
LFAA0: .byte $BE,$BE,$DB,$DB,$EB,$FC,$FC,$0F
LFAA8: .byte $FF,$AA,$55,$55,$AA,$FF,$00,$FF
LFAB0: .byte $1F,$0D,$32,$20,$56,$44,$7A,$68,$9E,$8C,$B3,$A1,$D7,$C5,$FB,$E9
       .byte $D8,$A2,$00,$A9,$00,$95,$00,$9A,$E8,$D0,$FA,$A9,$08,$85,$C2,$85
       .byte $C0,$A9,$B0,$85,$CF,$85,$BE,$85,$C4,$A9,$03,$85,$D1,$A9,$05,$85
       .byte $C7,$A9,$35,$85,$9F,$A9,$00,$85,$B9,$85,$BA,$85,$BB,$85,$BC,$85
       .byte $19,$85,$1A,$85,$88,$85,$89,$85,$8A,$A9,$06,$85,$AC,$85,$AE,$85
       .byte $AD,$85,$AF,$0A,$0A,$0A,$85,$86,$A9,$30,$85,$84,$A9,$02,$85,$B0
       .byte $A9,$FF,$85,$B1,$A9,$08,$85,$AA,$A9,$4C,$85,$AB,$A9,$3F,$85,$A7
       .byte $85,$A4,$A9,$10,$85,$BD,$A9,$88,$85,$83,$A9,$78,$85,$82,$A5,$AB
       .byte $85,$80,$69,$30,$85,$81,$A9,$05,$85,$C5,$85,$C6,$A9,$0B,$85,$CA
       .byte $A9,$3F,$85,$D9,$A9,$03,$85,$04,$85,$05,$A9,$1D,$25,$A0,$85,$06
       .byte $85,$07,$A5,$CE,$85,$09,$A9,$00,$85,$20,$A9,$18,$85,$21,$A0,$05
       .byte $A9,$10,$85,$02,$88,$10,$FD,$85,$10,$85,$11,$AD,$84,$02,$D0,$FB
       .byte $85,$02,$85,$01,$85,$2C,$85,$2B,$85,$1B,$85,$1C,$A2,$14,$85,$02
       .byte $CA,$10,$FB,$A9,$07,$85,$25,$85,$26,$A9,$07,$85,$9A,$A4,$9A,$B1
       .byte $98,$85,$9B,$B1,$96,$AA,$85,$02,$EA,$B1,$8E,$85,$1B,$B1,$90,$85
       .byte $1C,$B1,$92,$85,$1B,$B1,$94,$A4,$9B,$85,$1C,$86,$1B,$84,$1C,$85
       .byte $1B,$C6,$9A,$10,$D8,$A9,$00,$85,$02,$85,$1C,$85,$1B,$85,$1D,$85
       .byte $1E,$85,$1F,$85,$25,$85,$26,$A5,$9F,$25,$A0,$09,$04,$85,$06,$18
       .byte $69,$BA,$25,$A0,$09,$04,$85,$07,$A9,$2D,$25,$A0,$85,$08,$AD,$87
       .byte $00,$A2,$04,$20,$F0,$F9,$85,$02,$85,$2A,$EA,$EA,$EA,$EA,$EA,$85
       .byte $02,$EA,$EA,$85,$2B,$A5,$8A,$29,$F8,$C9,$98,$D0,$04,$A9,$02,$85
       .byte $85,$1B,$B1,$A6,$85,$1C,$B1,$A8,$85,$1B,$B1,$AA,$A4,$81,$85,$1C
       .byte $86,$1B,$84,$1C,$85,$1B,$C6,$80,$10,$D8,$A9,$00,$85,$02,$85,$1C
       .byte $85,$1B,$85,$1D,$85,$1E,$85,$1F,$85,$25,$85,$26,$60,$A2,$08,$85
       .byte $02,$85,$2A,$BD,$64,$FB,$85,$1B,$BD,$6D,$FB,$85,$1C,$EA,$BD,$7F
       .byte $FB,$A8,$BD,$76,$FB,$85,$1B,$84,$1C,$85,$2B,$CA,$10,$E1,$60,$18
       .byte $B5,$CC,$79,$06,$FF,$95,$CC,$B5,$CE,$79,$0C,$FF,$95,$CE,$B5,$D0
       .byte $69,$00,$95,$D0,$D8,$A6,$E1,$60,$8A,$F0,$02,$A9,$40,$99,$D2,$00
       .byte $BD,$1B,$FF,$99,$D3,$00,$BD,$EC,$FE,$99,$D4,$00,$60,$A9,$00,$A2
       .byte $05,$95,$CC,$CA,$10,$FB,$85,$98,$85,$AC,$60,$B5,$BB,$29,$10,$D0
       .byte $18,$D6,$B6,$D0,$67,$B5,$BB,$30,$04,$A9,$00,$F0,$02,$A9,$5B,$95
       .byte $B6,$B5,$BB,$09,$10,$95,$BB,$D0,$53,$B5,$BB,$2A,$B0,$52,$10,$37
       .byte $F6,$B6,$B5,$B6,$C9,$0B,$D0,$12,$A9,$00,$95,$B6,$A9,$0B,$99,$D8
       .byte $00,$B5,$BB,$29,$0F,$09,$80,$95,$BB,$60,$C9,$06,$10,$13,$99,$DB
       .byte $00,$AA,$18,$BD,$0D,$FF,$BE,$19,$FF,$75,$DD,$95,$DD,$A9,$08,$D0
       .byte $02,$B5,$B6,$99,$D8,$00,$60,$F6,$B6,$A9,$5B,$D5,$B6,$D0,$F2,$B5
       .byte $BB,$29,$0F,$09,$60,$95,$BB,$B9,$25,$FF,$95,$B6,$A9,$70,$D0,$E3
       .byte $30,$16,$D6,$B6,$A9,$51,$D5,$B6,$D0,$D7,$A9,$46,$95,$B6,$B5,$BB
       .byte $29,$0F,$09,$C0,$95,$BB,$D0,$E4,$D6,$B6,$10,$96,$B5,$BB,$29,$0F
       .byte $09,$A0,$95,$BB,$D0,$D1,$B5,$BB,$29,$0F,$09,$30,$95,$BB,$A9,$51
       .byte $D0,$0A,$B5,$BB,$29,$0F,$09,$F0,$95,$BB,$A9,$0B,$95,$B6,$60,$08
       .byte $0A,$28,$2A,$88,$8A,$A8,$AA,$00,$40,$10,$50,$04,$44,$14,$54,$01
       .byte $41,$11,$51,$05,$45,$15,$55,$00,$80,$20,$A0,$01,$05,$11,$15,$41
       .byte $45,$51,$55,$80,$A0,$88,$A8,$82,$A2,$8A,$AA,$00,$02,$08,$0A,$20
       .byte $22,$28,$2A,$80,$82,$88,$8A,$A0,$A2,$A8,$AA,$08,$88,$28,$A8,$09
       .byte $89,$29,$A9,$80,$81,$84,$85,$90,$91,$94,$95,$AA,$FF,$FF,$FF,$99
       .byte $DD,$7E,$3C,$55,$FF,$FF,$FF,$99,$BB,$7E,$3C,$AA,$FF,$FF,$FF,$BB
       .byte $99,$7E,$3C,$55,$FF,$FF,$FF,$DD,$99,$7E,$3C,$8B,$93,$9B,$A3,$38
       .byte $7C,$FE,$FE,$FE,$6C,$38,$7C,$FE,$E0,$FE,$6C,$38,$7E,$E0,$C0,$E0
       .byte $6C,$38,$AF,$B5,$BB,$B5,$00,$00,$00,$00,$E7,$A5,$E7,$00,$3C,$7E
       .byte $C3,$C3,$E7,$66,$24,$18,$3C,$7E,$E7,$E7,$C3,$C3,$3C,$7E,$E7,$C3
       .byte $00,$00,$00,$FF,$7E,$00,$00,$00,$00,$00,$14,$08,$14,$00,$00,$22
       .byte $14,$00,$14,$22,$00,$41,$00,$41,$00,$22,$F3,$EE,$E8,$E8,$E3,$E3
       .byte $DC,$DC,$D5,$D5,$CE,$CE,$CE,$AF,$AF,$AF,$10,$10,$08,$00,$08,$C9
       .byte $39,$C9,$CF,$80,$20,$01,$00,$45,$00,$29,$00,$0D,$60,$11,$00,$15
       .byte $20,$00,$80,$60,$19,$00,$1D,$03,$00,$67,$00,$80,$20,$0B,$00,$00
       .byte $6F,$00,$13,$20,$17,$40,$1B,$00,$3F,$00,$80,$80,$40,$01,$00,$25
       .byte $00,$49,$00,$80,$60,$0D,$00,$11,$40,$15,$00,$79,$00,$1D,$00,$00
       .byte $03,$60,$07,$00,$4B,$00,$0F,$00,$73,$00,$80,$40,$17,$20,$1B,$00
       .byte $5F,$00,$80,$10,$50,$90,$D0,$40,$00,$C0,$80,$40,$20,$10,$08,$04
       .byte $02,$01,$02,$03,$05,$07,$08,$0A,$0C,$08,$0C,$03,$07,$0B,$0F,$02
       .byte $06,$0A,$0E,$01,$05,$09,$0D,$00,$04,$79,$85,$B5,$A5,$B5,$85,$79
       .byte $17,$15,$15,$77,$55,$55,$77,$41,$41,$41,$41,$41,$41,$40,$49,$49
       .byte $49,$C9,$49,$49,$BE,$55,$55,$55,$D9,$55,$55,$99,$3C,$66,$66,$66
       .byte $66,$66,$3C,$66,$66,$7C,$60,$62,$3C,$66,$66,$3C,$66,$66,$3C,$46
       .byte $06,$3E,$66,$66,$3C,$46,$06,$0C,$06,$46,$3C,$0C,$0C,$7E,$4C,$2C
       .byte $1C,$0C,$18,$18,$08,$04,$02,$62,$7E,$60,$60,$3C,$06,$46,$7C,$46
       .byte $06,$7C,$60,$60,$7E,$18,$18,$18,$18,$78,$38,$00,$00,$00,$00,$00
       .byte $00,$00,$01,$05,$15,$55,$AC,$E4,$D8,$C4,$CB,$DE,$B2,$D2,$B8,$BE
       .byte $EB,$A5,$9E,$97,$90,$89,$20,$40,$80,$60,$01,$05,$00,$00,$00,$01
       .byte $00,$00,$01,$06,$05,$04,$03,$02,$01,$00,$02,$00,$00,$80,$A0,$A8
       .byte $AA,$AA,$AA,$AA,$AA,$10,$40,$08,$0A,$0C,$0E,$FC,$EC,$DC,$CC,$7A
       .byte $5A,$FB,$84,$F7,$44,$C4,$0E,$0E,$0E,$0E,$09,$04,$0F,$00,$07,$04
       .byte $0A,$90,$F0,$B9,$E9,$FF,$25,$E8,$D0,$0A,$B9,$6E,$FE,$85,$E8,$B9
       .byte $ED,$FF,$85,$E9,$60,$A5,$E8,$4A,$90,$0D,$A9,$04,$85,$D3,$A5,$E9
       .byte $29,$1F,$A8,$49,$0F,$B0,$1B,$4A,$90,$04,$A9,$0D,$D0,$11,$4A,$90
       .byte $03,$4C,$6A,$FF,$4A,$90,$1C,$A0,$09,$84,$D3,$A5,$E9,$D0,$03,$A8
       .byte $85,$D3,$D6,$E9,$D0,$05,$A9,$00,$85,$E8,$60,$95,$19,$A5,$D3,$95
       .byte $15,$94,$17,$60,$A9,$08,$24,$E7,$50,$0C,$A5,$E4,$85,$19,$4A,$85
       .byte $17,$A9,$04,$85,$15,$60,$F0,$2B,$A5,$E4,$D0,$06,$A9,$F7,$25,$E7
       .byte $85,$E7,$4A,$4A,$4A,$29,$07,$AA,$E0,$04,$10,$2C,$BD,$F1,$FF,$85
       .byte $17,$BD,$F5,$FF,$85,$18,$A9,$04,$85,$15,$85,$16,$A9,$08,$85,$19
       .byte $85,$1A,$60,$A5,$9A,$0A,$10,$10,$A9,$04,$85,$D3,$A5,$80,$4A,$29
       .byte $0F,$A8,$49,$0F,$4A,$4C,$8B,$FF,$60,$07,$03,$01,$00,$09,$18,$10
       .byte $30,$08,$04,$0C,$04,$14,$18,$14,$18,$00,$00,$00,$00,$F0,$00,$F0
