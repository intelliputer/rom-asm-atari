; Disassembly of roms/Bi! Bi! (PAL).bin
; Disassembled Tue Oct  6 15:21:07 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Bi! Bi! (PAL).bin
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
HMP0    =  $20
HMP1    =  $21
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXPPMM  =  $37
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296

       ORG $F000

START:
       JMP    LF93E   
LF003: LDA    $80     
       LDA    $80     
       LDA    $80     
       JMP    LF045   
LF00C: NOP            
       NOP            
       JMP    LF045   
LF011: LDA    $E6     
       BIT    CXPPMM  
       BMI    LF01D   
       AND    LFFED,X 
       JMP    LF020   
LF01D: ORA    LFFF4,X 
LF020: STA    $E6     
       LDA    $CB     
       ORA    WSYNC   
       STA    CXCLR   
       STA    WSYNC   
       STA    $CB     
       LDA    $80     
       STA    GRP0    
       LDA    LFE00,Y 
       STA    PF0     
       LDA    ($C9),Y 
       STA    PF2     
       CPY    $8A     
       BCC    LF003   
       CPY    $8B     
       BCS    LF00C   
       LDA    ($8C),Y 
       STA    $80     
LF045: INY            
       LDA    $95,X   
       STA    VDELP1  
       STA    VDELP1  
       BIT    $C8     
       BPL    LF05C   
       LDA    LFEEC,X 
       STA    COLUBK  
       LDA    LFC2A,X 
       STA    COLUP1  
       BNE    LF067   
LF05C: LDA    LFEE6,X 
       STA    COLUBK  
       LDA    LFC24,X 
       STA    COLUP1  
       NOP            
LF067: LDA    $81     
       STA    GRP1    
       LDX    $82     
       BMI    LF086   
       NOP            
LF070: DEX            
       BPL    LF070   
       LDX    $8E     
       STA    RESP1   
       LDA    $A2,X   
       STA    REFP1   
       LDA    $83,X   
       TAX            
       LDA    LFDA3,X 
       STA    $81     
       JMP    LF0A0   
LF086: LDX    $8E     
       LDA    $A2,X   
       STA    REFP1   
       LDA    $83,X   
       TAX            
       LDA    LFDA3,X 
       STA    $81     
       LDX    $82     
       LDX    $82     
       LDX    $82     
       NOP            
LF09B: INX            
       BMI    LF09B   
       STA    RESP1   
LF0A0: STA    WSYNC   
       STA    HMOVE   
LF0A4: LDA    $80     
       STA    GRP0    
       LDA    LFE00,Y 
       STA    PF0     
       LDA    ($C9),Y 
       STA    PF2     
       CPY    $8A     
       BCC    LF0BD   
       CPY    $8B     
       BCS    LF0BD   
       LDA    ($8C),Y 
       STA    $80     
LF0BD: INY            
       LDX    $8E     
       LDA    $95,X   
       LSR            
       STA    $89     
       STA    WSYNC   
       LDA    $81     
       STA    GRP1    
       TYA            
       CMP    $89     
       BNE    LF0E6   
       LDA    LFEE0,X 
       STA    CTRLPF  
       LDA    $9C,X   
       STA    NUSIZ1  
       STA    HMP1    
       LDA    $A8,X   
       STA    $82     
       LDA    #$00    
       STA    $81     
       JMP    LF011   
LF0E6: BCC    LF103   
       SEC            
       SBC    LFC50,X 
       BMI    LF0F4   
       CMP    $89     
       BCC    LF0F4   
       INC    $8E     
LF0F4: INC    $83,X   
       LDA    $83,X   
       TAX            
       LDA    LFDA3,X 
LF0FC: STA    $81     
       STA    WSYNC   
LF100: JMP    LF0A4   
LF103: CPY    #$70    
       BCS    LF10B   
       LDA    #$00    
       BEQ    LF0FC   
LF10B: LDA    $B1     
       STA    HMP0    
       AND    #$0F    
       TAY            
       LDA    $E6     
       BIT    CXPPMM  
       BMI    LF11E   
       AND    LFFED,X 
       JMP    LF121   
LF11E: ORA    LFFF4,X 
LF121: STA    $E6     
       STA    WSYNC   
       LDA    #$6A    
       STA    COLUP0  
       LDA    #$04    
       STA    NUSIZ0  
       LDA    $B0     
       STA    REFP0   
LF131: DEY            
       BPL    LF131   
       STA    RESP0   
       STA    WSYNC   
       STA    HMOVE   
       BIT    $C8     
       BPL    LF152   
       LDA    $ED     
       AND    #$F0    
       ORA    #$0F    
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$00    
       STA    NUSIZ1  
       STA    NUSIZ0  
       LDA    #$01    
       BNE    LF15F   
LF152: LDA    #$4A    
       STA    COLUP1  
       LDA    #$04    
       STA    NUSIZ1  
       ASL    LF100,X 
       LDA    #$05    
LF15F: STA    CTRLPF  
       LDA    $CB     
       ORA    WSYNC   
       STA    RESP1   
       STA    $CB     
       LDA    #$00    
       STA    REFP1   
       LDY    #$0F    
       LDX    #$00    
       STX    VDELP0  
       STX    VDELP1  
LF175: LDA    ($B2),Y 
       TAX            
       LDA    ($AE),Y 
       STA    WSYNC   
       STA    GRP0    
       STX    GRP1    
       LDA    #$00    
       NOP            
       STA    PF0     
       LDA    LFC40,Y 
       STA    PF2     
       DEY            
       BPL    LF175   
       STA    WSYNC   
       LDA    $C6     
       STA    COLUBK  
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    PF0     
       STA    PF2     
       NOP            
       STA    HMP0    
       STA    RESP0   
       STA    RESP1   
       STA    REFP0   
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$07    
       STA    $80     
       STA    VDELP0  
       STA    VDELP1  
       LDA    #$10    
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       LDA    #$8F    
       STA    COLUP0  
       STA    COLUP1  
LF1C8: LDY    $80     
       LDA    ($BE),Y 
       STA    $81     
       LDA    ($BC),Y 
       TAX            
       LDA    ($B4),Y 
       STA    WSYNC   
       NOP            
       STA    GRP0    
       LDA    ($B6),Y 
       STA    GRP1    
       LDA    ($B8),Y 
       STA    GRP0    
       LDA    ($BA),Y 
       LDY    $81     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       DEC    $80     
       BPL    LF1C8   
       STA    WSYNC   
       LDA    #$00    
       STA    COLUBK  
       STA    VDELP0  
       STA    VDELP1  
       STA    GRP0    
       STA    GRP1    
       LDA    #$38    
       STA    TIM64T  
       JSR    LFAF8   
       LDA    $C3     
       BEQ    LF270   
       LDA    #$02    
       AND    $E7     
       BNE    LF270   
       LDX    #$06    
LF212: LDA    $E6     
       AND    LFFF4,X 
       BEQ    LF26B   
       LDA    $E8     
       BEQ    LF252   
       LDA    $ED     
       AND    #$01    
       BNE    LF252   
       BIT    $E7     
       BMI    LF26B   
       DEX            
       LDA    $A2,X   
       AND    #$80    
       BNE    LF26A   
       LDA    $E5     
       CLC            
       ADC    #$04    
       CMP    $95,X   
       BCC    LF26A   
       SEC            
       SBC    #$08    
       CMP    $95,X   
       BCS    LF26A   
       LDA    #$80    
       ORA    $A2,X   
       STA    $A2,X   
       LDA    $95,X   
       STA    $E2     
       INX            
       LDA    #$A0    
       ORA    $E7     
       STA    $E7     
       JMP    LF270   
LF252: LDA    #$02    
       ORA    $E7     
       STA    $E7     
       LDA    #$FF    
       STA    $EA     
       LDA    #$4C    
       STA    $EB     
       LDA    #$00    
       STA    $E8     
       LDA    #$44    
       STA    $E1     
       BNE    LF270   
LF26A: INX            
LF26B: DEX            
       CPX    #$03    
       BNE    LF212   
LF270: LDA    #$80    
       AND    $E6     
       STA    $E6     
       LDA    $C3     
       BNE    LF2CD   
       LDA    $D0     
       BNE    LF2A0   
       LDX    $CE     
       DEX            
       BPL    LF285   
       LDX    #$1B    
LF285: STX    $CE     
       LDA    LF9C4,X 
       AND    #$07    
       TAY            
       LDA    LF9BE,Y 
       STA    $D0     
       LDA    LF9C4,X 
       AND    #$38    
       LSR            
       LSR            
       LSR            
       STA    $CF     
       LDA    #$06    
       STA    $D1     
LF2A0: DEC    $D0     
       LDA    #$00    
       STA    AUDC0   
       LDA    #$00    
       STA    AUDC1   
       LDX    $CF     
       LDA    LF9B2,X 
       STA    AUDF0   
       LDA    LF9B8,X 
       STA    AUDF1   
       LDA    $ED     
       AND    #$01    
       BNE    LF2C4   
       DEC    $D1     
       BPL    LF2C4   
       LDA    #$02    
       STA    $D1     
LF2C4: LDA    $D1     
       STA    AUDV0   
       STA    AUDV1   
       JMP    LF3A1   
LF2CD: LDA    #$02    
       AND    $E7     
       BEQ    LF30C   
       LDA    #$0C    
       STA    AUDC0   
       DEC    $E1     
       BNE    LF2F6   
       LDA    #$04    
       STA    $E7     
       LDA    #$22    
       STA    $EA     
       LDA    #$8C    
       STA    $E4     
       LDA    #$00    
       STA    $E3     
       DEC    $C3     
       JSR    LFB81   
       LDA    #$7F    
       AND    $C8     
       STA    $C8     
LF2F6: LDA    $E1     
       CMP    #$3C    
       BCS    LF300   
       LDY    #$00    
       BEQ    LF307   
LF300: SEC            
       SBC    #$20    
       STA    AUDF0   
       LDY    #$06    
LF307: STY    AUDV0   
       JMP    LF342   
LF30C: LDA    #$10    
       BIT    $E7     
       BNE    LF325   
       LDA    $E8     
       BEQ    LF33E   
       LSR            
       STA    AUDF0   
       LSR            
       EOR    #$0F    
       STA    AUDV0   
       LDA    #$06    
       STA    AUDC0   
       JMP    LF342   
LF325: LDA    $ED     
       AND    #$07    
       BNE    LF342   
       JSR    LFB66   
       AND    #$1F    
       ORA    #$10    
       STA    AUDF0   
       LDA    #$0E    
       STA    AUDC0   
       LDA    #$05    
       STA    AUDV0   
       BNE    LF342   
LF33E: LDA    #$00    
       STA    AUDV0   
LF342: NOP            
       LDA    $DF     
       BEQ    LF356   
       LDA    #$06    
       STA    AUDC1   
       STA    AUDF1   
       DEC    $DF     
       LDA    $DF     
       STA    AUDV1   
       JMP    LF3A0   
LF356: LDA    #$06    
       AND    $E7     
       BNE    LF3A0   
       STA    AUDC1   
       LDA    $ED     
       AND    #$3F    
       BNE    LF36E   
       LDA    #$0F    
       STA    AUDV1   
       LDA    #$02    
       STA    AUDF1   
       BNE    LF3A0   
LF36E: CMP    #$03    
       BNE    LF378   
       LDA    #$00    
       STA    AUDV1   
       BEQ    LF3A0   
LF378: CMP    #$1F    
       BNE    LF386   
       LDA    #$0F    
       STA    AUDV1   
       LDA    #$05    
       STA    AUDF1   
       BNE    LF3A0   
LF386: CMP    #$22    
       BNE    LF3A0   
       LDA    #$00    
       STA    AUDV1   
       SEC            
       SED            
       LDA    $C5     
       SBC    #$01    
       STA    $C5     
       CLD            
       BCS    LF3A0   
       LDA    #$00    
       STA    $C5     
       JMP    LF252   
LF3A0: NOP            
LF3A1: LDA    INTIM   
       BNE    LF3A1   
       LDY    #$82    
       STY    WSYNC   
       STY    VBLANK  
       STY    VSYNC   
       STY    WSYNC   
       STY    WSYNC   
       STY    WSYNC   
       STA    VSYNC   
       LDA    #$2C    
       STA    TIM64T  
       INC    $ED     
       LDA    SWCHB   
       STA    $80     
       LSR            
       BCS    LF3D4   
       LDA    #$04    
       STA    $C3     
       STA    $E7     
       JSR    LFB81   
       JSR    LFBB4   
       JMP    LF3F9   
LF3D4: LDA    #$0F    
       AND    $ED     
       BNE    LF3F9   
       LDA    $80     
       LSR            
       LSR            
       BCS    LF3F9   
       LDA    #$00    
       STA    $C3     
       LDA    #$05    
       STA    $E7     
       JSR    LFBB4   
       LDA    $E0     
       CMP    #$04    
       BNE    LF3F7   
       LDA    #$01    
       STA    $E0     
       BNE    LF3F9   
LF3F7: INC    $E0     
LF3F9: NOP            
       LDA    #$02    
       AND    $E7     
       BEQ    LF403   
       JMP    LF67A   
LF403: BIT    $C8     
       BPL    LF40A   
       JMP    LF48F   
LF40A: LDA    $E8     
       BEQ    LF411   
       JMP    LF4CD   
LF411: LDA    #$04    
       BIT    $E7     
       BVC    LF41A   
       JMP    LF628   
LF41A: BNE    LF430   
       LDA    $EA     
       CMP    #$24    
       BCS    LF48F   
       LDA    #$22    
       STA    $EA     
       LDA    #$04    
       ORA    $E7     
       STA    $E7     
       LDA    #$8C    
       STA    $E4     
LF430: LDA    #$90    
       STA    $81     
       LDA    #$00    
       STA    $82     
       LDA    $E3     
       BEQ    LF44A   
       LDA    $ED     
       AND    #$0F    
       BNE    LF48C   
       DEC    $E3     
       JSR    LFB4F   
       JMP    LF48C   
LF44A: LDA    $C3     
       BEQ    LF48C   
       LDA    REFP1   
       ASL            
       BCS    LF464   
       LDA    $E7     
       ORA    #$40    
       AND    #$CB    
       STA    $E7     
       LDX    $E0     
       LDA    #$60    
       STA    $C5     
       JMP    LF67A   
LF464: BIT    SWCHA   
       BMI    LF472   
       INC    $EB     
       LDA    #$F7    
       AND    $E7     
       JMP    LF47A   
LF472: BVS    LF48C   
       DEC    $EB     
       LDA    #$08    
       ORA    $E7     
LF47A: STA    $E7     
       LDA    #$3C    
       CMP    $EB     
       BCC    LF484   
       STA    $EB     
LF484: LDA    #$5C    
       CMP    $EB     
       BCS    LF48C   
       STA    $EB     
LF48C: JMP    LF67A   
LF48F: BIT    $C8     
       BPL    LF4B6   
       BIT    $CB     
       BPL    LF4B6   
       LDA    $C7     
       ASL            
       BCC    LF4A1   
       DEC    $EB     
       JMP    LF4B6   
LF4A1: ASL            
       BCC    LF4A9   
       INC    $EB     
       JMP    LF4B6   
LF4A9: ASL            
       BCC    LF4B1   
       DEC    $EA     
       JMP    LF4B6   
LF4B1: ASL            
       BCC    LF4B6   
       INC    $EA     
LF4B6: LDA    SWCHA   
       AND    #$F0    
       EOR    #$F0    
       STA    $81     
       STA    $C7     
       BEQ    LF4CD   
       LDA    $ED     
       AND    #$0F    
       LSR            
       LSR            
       TAY            
       JMP    LF4D8   
LF4CD: LDA    $ED     
       AND    #$1F    
       LSR            
       LSR            
       LSR            
       TAY            
       JMP    LF5A6   
LF4D8: LDA    $81     
       ASL            
       BCC    LF4FB   
       LDA    #$F7    
       AND    $E7     
       STA    $E7     
       LDA    $EB     
       CMP    #$90    
       BCS    LF4EB   
       INC    $EB     
LF4EB: BIT    $C8     
       BPL    LF4F3   
       BIT    REFP1   
       BMI    LF510   
LF4F3: LDA    LF9AE,Y 
       LDY    #$05    
       JMP    LF59F   
LF4FB: ASL            
       BCC    LF51D   
       LDA    #$08    
       ORA    $E7     
       STA    $E7     
       LDA    $EB     
       BEQ    LF50A   
       DEC    $EB     
LF50A: BIT    $C8     
       BPL    LF515   
       BIT    REFP1   
LF510: BPL    LF515   
       JMP    LF59A   
LF515: LDA    LF9AE,Y 
       LDY    #$05    
       JMP    LF59F   
LF51D: ASL            
       BCC    LF55B   
       LDA    $EA     
       CMP    #$CD    
       BCS    LF530   
       INC    $EA     
LF528: LDA    LF9AA,Y 
       LDY    #$00    
       JMP    LF59F   
LF530: LDA    $EB     
       CMP    #$58    
       BCS    LF528   
       CMP    #$40    
       BCC    LF528   
       LDX    #$05    
       LDA    #$FF    
LF53E: CMP    $95,X   
       BNE    LF528   
       DEX            
       CPX    #$02    
       BNE    LF53E   
       LDA    #$80    
       ORA    $C8     
       STA    $C8     
       LDA    #$0A    
       STA    $EA     
       LDA    #$E0    
       STA    $CD     
       LDA    #$00    
       STA    $CC     
       BNE    LF528   
LF55B: ASL            
       BCC    LF5A6   
       LDA    $EA     
       BIT    $C8     
       BPL    LF58A   
       CMP    #$08    
       BCS    LF598   
       LDA    #$7F    
       AND    $C8     
       STA    $C8     
       LDA    #$CB    
       STA    $EA     
       LDA    #$48    
       STA    $EB     
       JSR    LFB81   
       LDX    $CC     
       CLC            
       LDA    $E3     
       ADC    LF586,X 
       STA    $E3     
       JMP    LF95C   
LF586: .byte $00,$05,$0A,$64
LF58A: CMP    #$2D    
       BCS    LF598   
       LDA    $EB     
       CMP    #$51    
       BCS    LF59A   
       CMP    #$48    
       BCC    LF59A   
LF598: DEC    $EA     
LF59A: LDA    LF9A6,Y 
       LDY    #$00    
LF59F: STA    $81     
       STY    $82     
LF5A3: JMP    LF67A   
LF5A6: LDA    #$00    
       STA    $82     
       LDA    LF9A6,Y 
       STA    $81     
       BIT    $C8     
       BMI    LF5A3   
       LDA    $E8     
       BNE    LF5D1   
       LDA    REFP1   
       ASL            
       BCS    LF5FA   
       LDA    #$01    
       STA    $E8     
       LDA    #$7F    
       AND    $E7     
       STA    $E7     
       LDA    $EB     
       STA    $E9     
       LDA    $EA     
       SEC            
       SBC    #$06    
       STA    $E5     
LF5D1: LDA    $ED     
       AND    #$07    
       LSR            
       TAY            
       LDA    LFDF7,Y 
       STA    $83     
       LDA    #$80    
       AND    $E7     
       BNE    LF60E   
       LDA    $E8     
       CMP    #$40    
       BEQ    LF605   
       LDA    $E9     
       BEQ    LF605   
       CMP    #$98    
       BCS    LF605   
       INC    $E8     
       LDA    #$08    
       AND    $E7     
       BNE    LF600   
LF5F8: INC    $E9     
LF5FA: JMP    LF670   
LF5FD: .byte $4C,$70,$F6
LF600: DEC    $E9     
       JMP    LF670   
LF605: LDA    #$80    
       ORA    $E7     
       STA    $E7     
       JMP    LF670   
LF60E: LDA    #$10    
       AND    $E7     
       BEQ    LF61A   
       LDA    $ED     
       AND    #$07    
       BNE    LF5FA   
LF61A: LDA    $E8     
       BEQ    LF5FA   
       DEC    $E8     
       LDA    #$08    
       AND    $E7     
       BNE    LF5F8   
       BEQ    LF600   
LF628: LDA    #$12    
       STA    $81     
       LDA    #$00    
       STA    $82     
       LDA    #$20    
       BIT    $E7     
       BNE    LF64A   
       DEC    $EA     
       JSR    LF664   
       LDA    $EA     
       CMP    #$18    
       BCS    LF647   
       LDA    #$20    
       ORA    $E7     
       STA    $E7     
LF647: JMP    LF67A   
LF64A: LDA    $EA     
       CMP    #$22    
       BCS    LF653   
       JSR    LF664   
LF653: INC    $EA     
       LDA    $EA     
       CMP    #$70    
       BCC    LF67A   
       LDA    #$BF    
       AND    $E7     
       STA    $E7     
       JMP    LF67A   
LF664: LDA    #$08    
       BIT    $E7     
       BNE    LF66D   
       INC    $EB     
       RTS            

LF66D: DEC    $EB     
       RTS            

LF670: LDA    $E8     
       BEQ    LF67A   
       LDA    #$01    
       AND    $ED     
       BEQ    LF690   
LF67A: LDA    $82     
       STA    NUSIZ0  
       LDA    $81     
       STA    $80     
       LDA    $EA     
       LDY    #$AC    
       STY    COLUP0  
       JSR    LF9E0   
       LDA    $EB     
       JMP    LF6A3   
LF690: LDA    #$00    
       STA    NUSIZ0  
       LDA    #$0F    
       STA    COLUP0  
       LDA    $83     
       STA    $80     
       LDA    $E5     
       JSR    LF9E0   
       LDA    $E9     
LF6A3: LDX    #$00    
       JSR    LFFBD   
       JSR    LFFDC   
       LDA    $E7     
       STA    REFP0   
       LDA    $ED     
       AND    #$3F    
       STA    $83     
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $82     
       TAY            
       LDA    #$48    
       CLC            
       ADC    LF986,Y 
       STA    $84     
       LDA    $ED     
       AND    #$0F    
       TAY            
       LDA    LF98A,Y 
       LDY    #$07    
       STY    $81     
       LDX    #$01    
       JSR    LFA5B   
       BIT    $C8     
       BPL    LF70F   
       LDA    $EA     
       CMP    #$CD    
       BNE    LF6FD   
       LDX    #$02    
LF6E1: LDA    $EB     
       CMP    LF709,X 
       BNE    LF6FA   
       LDA    LF70C,X 
       AND    $CD     
       BEQ    LF6FA   
       INC    $CC     
       LDA    LF70C,X 
       EOR    #$FF    
       AND    $CD     
       STA    $CD     
LF6FA: DEX            
       BPL    LF6E1   
LF6FD: LDY    #$04    
       LDA    #$20    
       AND    $CD     
       BNE    LF711   
       LDY    #$05    
       BNE    LF711   
LF709: PHP            
       BCC    LF754   
LF70C: .byte $80 ;.NOP
       RTI            

LF70E: .byte $20
LF70F: LDY    $82     
LF711: LDA    LF99A,Y 
       STA    $B2     
       BIT    $C8     
       BPL    LF737   
       LDY    #$04    
       LDA    $ED     
       AND    #$01    
       BNE    LF72F   
       LDA    #$08    
       BIT    $CD     
       BMI    LF72A   
LF728: LDY    #$05    
LF72A: STY    $82     
       JMP    LF754   
LF72F: LDA    #$90    
       BIT    $CD     
       BVC    LF728   
       BVS    LF72A   
LF737: LDA    $83     
       CMP    #$0F    
       BEQ    LF741   
       CMP    #$2F    
       BNE    LF743   
LF741: INC    $EC     
LF743: LDX    #$00    
       LDA    $EC     
       BIT    $EC     
       BPL    LF74F   
       LDX    #$08    
       EOR    #$FF    
LF74F: CLC            
       ADC    #$10    
       STX    $B0     
LF754: LDX    #$00    
       JSR    LFFBD   
       STA    $80     
       DEY            
       DEY            
       DEY            
       TYA            
       ORA    $80     
       STA    $B1     
       LDY    $82     
       LDA    LF9A0,Y 
       STA    $AE     
       LDA    $EA     
       CLC            
       ADC    #$12    
       STA    $82     
       LDX    #$05    
LF773: LDA    $95,X   
       CMP    #$FF    
       BNE    LF77C   
       JMP    LF8CC   
LF77C: LDA    $A2,X   
       AND    #$80    
       BNE    LF785   
       JMP    LF80E   
LF785: LDA    $E8     
       CMP    #$0B    
       BCS    LF7A8   
       JSR    LFADC   
       LDA    #$3C    
       STA    $E4     
       CLC            
       LDA    $E3     
       ADC    #$05    
       STA    $E3     
       LDA    #$7F    
       AND    $A2,X   
       STA    $A2,X   
       LDA    #$EF    
       AND    $E7     
       STA    $E7     
       JMP    LF773   
LF7A8: LDA    $ED     
       AND    #$07    
       BNE    LF7BB   
       LDA    #$08    
       AND    $E7     
       BEQ    LF7B9   
       INC    $8F,X   
       JMP    LF7BB   
LF7B9: DEC    $8F,X   
LF7BB: LDA    $E8     
       AND    #$30    
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    $A2,X   
       AND    #$40    
       BNE    LF7ED   
       LDA    $95,X   
       SEC            
       SBC    $E2     
       BCC    LF7DF   
       SBC    LFDFB,Y 
       BCC    LF7DF   
       LDA    #$40    
       ORA    $A2,X   
LF7DA: STA    $A2,X   
LF7DC: JMP    LF8C9   
LF7DF: JSR    LFABB   
       LDA    $A2,X   
       AND    #$40    
       BNE    LF7DC   
       INC    $E5     
       JMP    LF8C9   
LF7ED: LDA    $E2     
       SEC            
       SBC    $95,X   
       BCC    LF800   
       SBC    LFDFB,Y 
       BCC    LF800   
       LDA    #$BF    
       AND    $A2,X   
       JMP    LF7DA   
LF800: JSR    LFAA7   
       LDA    $A2,X   
       AND    #$40    
       BEQ    LF7DC   
       DEC    $E5     
       JMP    LF8C9   
LF80E: LDA    $E0     
       BIT    $C8     
       BPL    LF81A   
       CMP    #$03    
       BCS    LF880   
       BCC    LF87A   
LF81A: AND    #$01    
       BEQ    LF827   
       LDA    $ED     
       AND    #$01    
       BEQ    LF827   
       JMP    LF8C9   
LF827: LDA    $E7     
       AND    #$10    
       BNE    LF87A   
       LDA    $82     
       CMP    $95,X   
       BCC    LF87A   
       INX            
       LDA    $95,X   
       DEX            
       CMP    $EA     
       BCC    LF87A   
       LDA    $8F,X   
       CMP    $EB     
       BCS    LF848   
       LDA    #$F7    
       AND    $A2,X   
       JMP    LF84E   
LF848: BEQ    LF853   
       LDA    #$08    
       ORA    $A2,X   
LF84E: STA    $A2,X   
       JSR    LFA72   
LF853: LDA    $ED     
       AND    #$01    
       BNE    LF86A   
       LDA    $95,X   
       CMP    $EA     
       BCC    LF86D   
       LDA    $82     
       SBC    $95,X   
       CMP    #$09    
       BCS    LF86A   
       JSR    LFAA7   
LF86A: JMP    LF8C9   
LF86D: ADC    #$09    
       SEC            
       SBC    $EA     
       BCS    LF86A   
       JSR    LFABB   
       JMP    LF8C9   
LF87A: LDA    $ED     
       AND    #$01    
       BNE    LF8C9   
LF880: LDA    $ED     
       AND    #$3F    
       CMP    LFEF2,X 
       BNE    LF896   
       JSR    LFB66   
       CMP    #$40    
       BCS    LF896   
       LDA    #$08    
       EOR    $A2,X   
       STA    $A2,X   
LF896: JSR    LFA72   
       LDA    $E7     
       AND    #$10    
       BNE    LF8C9   
       LDA    $ED     
       AND    #$0F    
       CMP    LFEF8,X 
       BNE    LF8C6   
       JSR    LFB66   
       LDY    #$00    
       CMP    #$2A    
       BCS    LF8B6   
       LDY    #$10    
       JMP    LF8BC   
LF8B6: CMP    #$54    
       BCS    LF8BC   
       LDY    #$20    
LF8BC: STY    $81     
       LDA    #$CF    
       AND    $A2,X   
       ORA    $81     
       STA    $A2,X   
LF8C6: JSR    LFA9A   
LF8C9: JSR    LFA4F   
LF8CC: DEX            
       CPX    #$02    
       BEQ    LF8D4   
       JMP    LF773   
LF8D4: LDA    #$80    
       AND    $E6     
       BEQ    LF8F5   
       LDA    #$58    
       STA    $BE     
       LDA    #$60    
       STA    $BC     
       LDA    #$68    
       STA    $BA     
       LDA    #$70    
       STA    $B8     
       LDA    #$78    
       STA    $B6     
       LDA    #$80    
       STA    $B4     
       JMP    LF93B   
LF8F5: LDA    #$04    
       AND    $E7     
       BEQ    LF923   
       LDA    #$01    
       AND    $E7     
       BNE    LF913   
       LDA    $C0     
       STA    $80     
       LDA    $C1     
       STA    $81     
       LDA    $C2     
       STA    $82     
       JSR    LFF90   
       JMP    LF93B   
LF913: LDA    #$00    
       STA    $80     
       STA    $81     
       LDA    $E0     
       STA    $82     
       JSR    LFF90   
       JMP    LF93B   
LF923: LDA    $C3     
       SEC            
       SBC    #$01    
       STA    $80     
       LDA    $C5     
       STA    $82     
       JSR    LFF90   
       LDA    #$88    
       STA    $B4     
       LDA    #$50    
       STA    $B8     
       STA    $BA     
LF93B: JMP    LF95C   
LF93E: SEI            
       CLD            
       LDX    #$00    
       LDA    #$00    
LF944: STA    VSYNC,X 
       TXS            
       INX            
       BNE    LF944   
       JSR    LFB81   
       JSR    LFBB4   
       LDA    #$04    
       STA    $E7     
       LDA    #$01    
       STA    $E0     
       LDA    #$80    
       STA    $E6     
LF95C: JSR    LFBEB   
LF95F: LDA    INTIM   
       BNE    LF95F   
       STA    WSYNC   
       STA    HMOVE   
       STA    WSYNC   
       STA    VBLANK  
       STA    HMCLR   
       STA    CXCLR   
       BIT    $C8     
       BMI    LF976   
       STA    WSYNC   
LF976: LDY    #$02    
       CPY    $8A     
       BCC    LF980   
       LDA    ($8C),Y 
       STA    $80     
LF980: INY            
       STA    WSYNC   
       JMP    LF0A4   
LF986: .byte $FF,$FF,$FF,$FF
LF98A: .byte $10,$30,$50,$70,$10,$30,$50,$70,$10,$30,$50,$70,$10,$30,$50,$70
LF99A: .byte $00,$10,$20,$30,$40,$87
LF9A0: .byte $50,$60,$70,$80,$93,$87
LF9A6: .byte $00,$09,$12,$1B
LF9AA: .byte $24,$2D,$36,$3F
LF9AE: .byte $48,$51,$5A,$63
LF9B2: .byte $1D,$1A,$17,$15,$13,$11
LF9B8: .byte $1A,$15,$13,$11,$0F,$11
LF9BE: .byte $08,$0F,$16,$1D,$24,$2B
LF9C4: .byte $05,$11,$09,$19,$20,$22,$09,$09,$09,$19,$09,$09,$09,$19,$0D,$19
       .byte $11,$21,$28,$22,$11,$11,$11,$21,$11,$11,$11,$21
LF9E0: STA    VDELP0  
       LSR            
       STA    $8A     
       CLC            
       ADC    #$09    
       STA    $8B     
       LDA    #$67    
       SEC            
       SBC    $8A     
       CLC            
       ADC    $80     
       STA    $8C     
       RTS            

LF9F5: LDA    $ED     
       AND    #$1F    
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $80     
       LDA    $ED     
       AND    #$0F    
       LSR            
       LSR            
       LSR            
       STA    $81     
       LDA    $ED     
       AND    #$07    
       LSR            
       LSR            
       STA    $82     
       RTS            

LFA11: LDX    #$05    
LFA13: LDA    $A2,X   
       AND    #$07    
       TAY            
       LDA    #$00    
       CLC            
LFA1B: DEY            
       BMI    LFA23   
       ADC    #$12    
       JMP    LFA1B   
LFA23: STA    $89     
       LDA    $A2,X   
       AND    #$07    
       TAY            
       LDA    LFA47,Y 
       TAY            
       LDA    #$80    
       AND    $A2,X   
       BEQ    LFA35   
       INY            
LFA35: LDA.wy $0080,Y 
       TAY            
       LDA    $89     
       CLC            
       ADC    LFFE6,Y 
       STA    $83,X   
       DEX            
       CPX    #$02    
       BNE    LFA13   
       RTS            

LFA47: .byte $00,$01,$01,$00,$00,$00,$00,$00
LFA4F: LDA    $A2,X   
       AND    #$07    
       TAY            
       LDA    LFFE8,Y 
       STA    $81     
       LDA    $8F,X   
LFA5B: JSR    LFFBD   
       ORA    $81     
       STA    $9C,X   
       DEY            
       DEY            
       DEY            
       TYA            
       CMP    #$06    
       BCC    LFA6F   
       SEC            
       SBC    #$06    
       EOR    #$FF    
LFA6F: STA    $A8,X   
       RTS            

LFA72: LDA    #$07    
       AND    $A2,X   
       TAY            
       LDA    #$08    
       AND    $A2,X   
       BEQ    LFA88   
       LDA    $8F,X   
       CMP    #$02    
       BCC    LFA93   
       SBC    #$01    
       JMP    LFA90   
LFA88: LDA    $8F,X   
       CMP    #$8F    
       BCS    LFA93   
       ADC    #$01    
LFA90: STA    $8F,X   
       RTS            

LFA93: LDA    #$08    
       EOR    $A2,X   
       STA    $A2,X   
       RTS            

LFA9A: LDA    $A2,X   
       AND    #$30    
       CMP    #$10    
       BEQ    LFAA7   
       CMP    #$20    
       BEQ    LFABB   
       RTS            

LFAA7: LDA    $95,X   
       DEX            
       SEC            
       SBC    $95,X   
       SBC    LFC50,X 
       SBC    LFC50,X 
       SBC    #$06    
       INX            
       BCC    LFAD5   
       DEC    $95,X   
       RTS            

LFABB: INX            
       LDA    $95,X   
       DEX            
       SEC            
       SBC    $95,X   
       SBC    LFC50,X 
       SBC    LFC50,X 
       SBC    #$04    
       BCC    LFAD5   
       LDA    $95,X   
       CMP    #$CA    
       BCS    LFAD5   
       INC    $95,X   
       RTS            

LFAD5: LDA    #$40    
       EOR    $A2,X   
       STA    $A2,X   
       RTS            

LFADC: STX    $80     
LFADE: INX            
       LDA    $A2,X   
       STA    $81     
       LDA    $95,X   
       LDY    $8F,X   
       DEX            
       STA    $95,X   
       STY    $8F,X   
       LDA    $81     
       STA    $A2,X   
       INX            
       CPX    #$06    
       BNE    LFADE   
       LDX    $80     
       RTS            

LFAF8: LDA    $ED     
       BNE    LFB21   
       JSR    LFB66   
       LDY    #$07    
LFB01: BIT    $C8     
       BPL    LFB09   
       LDA    #$03    
       BNE    LFB11   
LFB09: CMP    LFB3F,Y 
       BCS    LFB22   
       LDA    LFB47,Y 
LFB11: STA    $80     
       LDY    #$03    
LFB15: LDA    #$FF    
       CMP.wy $0095,Y 
       BEQ    LFB26   
       INY            
       CPY    #$06    
       BNE    LFB15   
LFB21: RTS            

LFB22: DEY            
       BPL    LFB01   
       RTS            

LFB26: DEY            
       LDA.wy $0095,Y 
       CMP    #$B2    
       BCS    LFB21   
       INY            
       LDA    $80     
       STA.wy $00A2,Y 
       LDA    #$40    
       STA.wy $008F,Y 
       LDA    #$CA    
       STA.wy $0095,Y 
       RTS            

LFB3F: .byte $FF,$E0,$C0,$A0,$80,$60,$40,$20
LFB47: .byte $00,$01,$02,$00,$01,$02,$00,$01
LFB4F: LDX    #$02    
       SED            
       CLC            
LFB53: LDA    LFB63,X 
       ADC    $C0,X   
       STA    $C0,X   
       DEX            
       BPL    LFB53   
       CLD            
       LDA    #$0F    
       STA    $DF     
       RTS            

LFB63: .byte $00,$01,$00
LFB66: LDA    $EE     
       AND    #$40    
       LSR            
       STA    $81     
       LDA    $EE     
       AND    #$20    
       EOR    $81     
       BNE    LFB78   
       CLC            
       BCC    LFB79   
LFB78: SEC            
LFB79: LDA    $EE     
       ROL            
       AND    #$7F    
       STA    $EE     
       RTS            

LFB81: LDA    #$5C    
       STA    $EE     
       LDA    #$00    
       STA    $A2     
       STA    $A5     
       STA    $94     
       LDA    #$09    
       STA    $A6     
       LDA    #$02    
       STA    $A7     
       LDA    #$08    
       STA    $8F     
       STA    $95     
       LDA    #$38    
       STA    $92     
       LDA    #$68    
       STA    $93     
       LDA    #$54    
       STA    $98     
       LDA    #$78    
       STA    $99     
       LDA    #$8C    
       STA    $9A     
       LDA    #$FF    
       STA    $9B     
       RTS            

LFBB4: LDX    #$0C    
       LDA    #$FF    
LFBB8: STA    $B3,X   
       DEX            
       DEX            
       BNE    LFBB8   
       LDA    #$FE    
       STA    $CA     
       LDA    #$00    
       STA    $C0     
       STA    $C1     
       STA    $C2     
       STA    $E6     
       STA    $C8     
       STA    $E3     
       STA    AUDV0   
       STA    AUDV1   
       LDA    #$FD    
       STA    $AF     
       STA    $B3     
       LDA    #$22    
       STA    $EA     
       LDA    #$4C    
       STA    $EB     
       LDA    #$FC    
       STA    $8D     
       LDA    #$8C    
       STA    $E4     
       RTS            

LFBEB: BIT    $C8     
       BPL    LFC01   
       LDA    #$08    
       STA    $95     
       LDA    #$12    
       STA    $96     
       LDA    #$1C    
       STA    $97     
       LDY    #$00    
       LDA    #$42    
       BNE    LFC0D   
LFC01: LDA    #$2E    
       STA    $96     
       LDA    #$38    
       STA    $97     
       LDY    #$70    
       LDA    #$62    
LFC0D: STA    $C6     
       STA    COLUPF  
       STY    $C9     
       JSR    LF9F5   
       JSR    LFA11   
       LDA    #$00    
       STA    $CB     
       STA    $8E     
       STA    $80     
       STA    $81     
       RTS            

LFC24: .byte $00,$94,$8A,$2A,$6A,$4A
LFC2A: .byte $94,$94,$94,$1A,$6A,$4A,$F0,$F0,$F0,$F0,$70,$70,$70,$30,$30,$30
       .byte $30,$30,$30,$30,$30,$30
LFC40: .byte $C0,$C0,$C0,$C0,$E0,$E0,$E0,$E0,$E0,$E0,$E0,$FE,$FE,$3A,$3A,$3A
LFC50: .byte $04,$03,$02,$09,$09,$09,$84,$99,$A0,$00,$B1,$8B,$20,$D6,$2C,$C8
       .byte $C4,$99,$D0,$F6,$B1,$8B,$20,$60,$7F,$E4,$78,$60,$30,$30,$30,$00
       .byte $60,$7F,$E4,$78,$60,$38,$28,$28,$00,$60,$7F,$E4,$78,$60,$38,$28
       .byte $44,$00,$60,$7F,$E4,$78,$60,$30,$38,$28,$00,$10,$10,$10,$18,$18
       .byte $30,$10,$10,$00,$24,$28,$10,$18,$18,$30,$10,$10,$00,$28,$28,$10
       .byte $18,$18,$30,$10,$10,$00,$44,$28,$10,$18,$18,$30,$10,$10,$00,$00
       .byte $00,$04,$3F,$2D,$0C,$00,$00,$00,$00,$00,$C4,$3F,$D8,$00,$00,$00
       .byte $00,$00,$00,$84,$7F,$58,$80,$00,$00,$00,$00,$00,$C4,$3F,$58,$80
       .byte $00,$00,$00,$00,$00,$84,$42,$3F,$42,$84,$00,$00,$00,$00,$00,$42
       .byte $3F,$42,$00,$00,$00,$00,$00,$00,$00,$FF,$00,$00,$00,$00,$00,$00
       .byte $00,$42,$3F,$42,$00,$00,$00,$18,$18,$38,$3F,$18,$00,$00,$00,$00
       .byte $3C,$3A,$56,$56,$65,$A9,$AA,$CA,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $3C,$5A,$5A,$65,$A9,$95,$95,$A6,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $3C,$56,$56,$9A,$A9,$A5,$95,$55,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $3C,$36,$3A,$59,$55,$95,$A5,$AA,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$7E,$7E,$3C,$3C,$7E,$7E,$FF,$99,$99,$DB,$DB
       .byte $38,$48,$58,$40,$60,$70,$7C,$FC,$F8,$F0,$60,$74,$E8,$74,$20,$70
       .byte $3C,$24,$24,$20,$30,$38,$7E,$7E,$3C,$18,$18,$3A,$74,$3A,$10,$38
       .byte $1E,$12,$10,$10,$18,$1E,$1F,$3F,$3C,$18,$0C,$1D,$3A,$1D,$08,$1C
       .byte $1C,$10,$10,$10,$18,$1C,$1E,$3E,$3C,$18,$18,$3A,$74,$3A,$10,$38
       .byte $00,$00,$00,$00,$00,$00,$00,$3C,$18,$18,$7E,$BD,$BD,$7E,$7E,$18
       .byte $18,$18,$3C
LFDA3: .byte $00,$A6,$EF,$5D,$7F,$7C,$7E,$0F,$00,$A0,$E6,$4F,$5D,$7F,$7E,$3F
       .byte $0C,$00,$3C,$7E,$7E,$5A,$3C,$DA,$A9,$45,$00,$3C,$7E,$5A,$7E,$3C
       .byte $5B,$A5,$48,$00,$00,$08,$84,$7E,$BD,$1E,$08,$10,$00,$00,$88,$44
       .byte $7E,$BD,$1A,$0C,$10,$00,$00,$5A,$3C,$5A,$FF,$24,$42,$24,$00,$81
       .byte $5A,$3C,$5A,$FF,$18,$24,$18,$00,$88,$DD,$FF,$44,$EE,$FF,$22,$77
       .byte $FF,$11,$BB,$FF
LFDF7: .byte $6C,$75,$7E,$87
LFDFB: .byte $04,$08,$10,$20,$88
LFE00: .byte $00,$00,$00,$00,$00,$00,$00,$30,$38,$78,$FE,$FF,$72,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$F0,$70,$30,$10,$10,$90,$F0,$F0,$F0
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$80,$80,$F0,$E0,$A3,$E6,$FE,$FC,$FC,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $15,$15,$1F,$1F,$1F,$0E,$0E,$AA,$AA,$FE,$FE,$DE,$DE,$FE,$FE,$7E
LFEE0: .byte $01,$01,$05,$05,$05,$05
LFEE6: .byte $0A,$94,$94,$94,$94,$94
LFEEC: .byte $94,$94,$94,$94,$94,$94
LFEF2: .byte $00,$00,$00,$00,$14,$28
LFEF8: .byte $00,$00,$00,$00,$04,$0A,$A0,$A0,$7E,$66,$66,$66,$66,$66,$66,$7E
       .byte $7E,$18,$18,$18,$18,$38,$18,$08,$7E,$62,$60,$10,$08,$06,$66,$7E
       .byte $7E,$66,$66,$0C,$0C,$66,$66,$7E,$1E,$0C,$0C,$7E,$4C,$2C,$1C,$0C
       .byte $7E,$46,$06,$3E,$60,$60,$7E,$7E,$7E,$66,$66,$66,$7C,$60,$66,$7E
       .byte $18,$18,$18,$18,$04,$02,$42,$7E,$7E,$66,$66,$3C,$3C,$66,$66,$7E
       .byte $7E,$66,$06,$3E,$66,$66,$66,$7E,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$F3,$60,$63,$63,$63,$63,$F3
       .byte $00,$FE,$66,$66,$7C,$66,$66,$FE,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$F3,$60,$63,$63,$63,$63,$F3,$00,$FE,$66,$66,$7C,$66,$66,$FE
       .byte $44,$28,$30,$60,$F8,$E4,$7F,$60
LFF90: LDX    #$02    
LFF92: TXA            
       ASL            
       ASL            
       TAY            
       LDA    $80,X   
       AND    #$F0    
       LSR            
       STA.wy $00B4,Y 
       LDA    $80,X   
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA.wy $00B6,Y 
       DEX            
       BPL    LFF92   
       INX            
LFFAC: LDA    $B4,X   
       CMP    #$00    
       BNE    LFFBC   
       LDA    #$50    
       STA    $B4,X   
       INX            
       INX            
       CPX    #$09    
       BCC    LFFAC   
LFFBC: RTS            

LFFBD: CLC            
       ADC    #$2E    
       TAY            
       AND    #$0F    
       STA    $80     
       TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       CLC            
       ADC    $80     
       CMP    #$0F    
       BCC    LFFD5   
       SBC    #$0F    
       INY            
LFFD5: EOR    #$07    
       ASL            
       ASL            
       ASL            
       ASL            
       RTS            

LFFDC: STA    HMP0,X  
       STA    WSYNC   
LFFE0: DEY            
       BPL    LFFE0   
       STA    RESP0,X 
       RTS            

LFFE6: .byte $00,$09
LFFE8: .byte $05,$05,$07,$05,$05
LFFED: .byte $FE,$FD,$FB,$F7,$EF,$DF,$BF
LFFF4: .byte $01,$02,$04,$08,$10,$20,$40,$A0,$00,$F0,$E0,$88
