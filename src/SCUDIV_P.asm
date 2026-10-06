; Disassembly of roms/SCUDIV_P.BIN
; Disassembled Tue Oct  6 15:22:42 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/SCUDIV_P.BIN
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
       JMP    LF965   
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
       LDA    LFEBC,X 
       STA    COLUBK  
       LDA    LFEC8,X 
       STA    COLUP1  
       BNE    LF067   
LF05C: LDA    LFEB6,X 
       STA    COLUBK  
       LDA    LFEC2,X 
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
       LDA    LFEB0,X 
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
       SBC    LFEEE,X 
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
LF103: CPY    #$58    
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
       LDA    #$17    
       STA    COLUP0  
       LDA    #$06    
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
LF152: LDA    #$D7    
       STA    COLUP1  
       LDA    #$06    
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
       LDA    LFECE,Y 
       STA    PF0     
       LDA    LFEDE,Y 
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
       LDA    #$DF    
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
       LDA    #$20    
       STA    TIM64T  
       JSR    LFB1B   
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
       LDA    #$90    
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
       LDA    #$3F    
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
       LDA    LF9E7,X 
       AND    #$07    
       TAY            
       LDA    LF9E1,Y 
       STA    $D0     
       LDA    LF9E7,X 
       AND    #$38    
       LSR            
       LSR            
       LSR            
       STA    $CF     
       LDA    #$0F    
       STA    $D1     
LF2A0: DEC    $D0     
       LDA    #$04    
       STA    AUDC0   
       LDA    #$0C    
       STA    AUDC1   
       LDX    $CF     
       LDA    LF9D5,X 
       STA    AUDF0   
       LDA    LF9DB,X 
       STA    AUDF1   
       LDA    $ED     
       AND    #$01    
       BNE    LF2C4   
       DEC    $D1     
       BPL    LF2C4   
       LDA    #$00    
       STA    $D1     
LF2C4: LDA    $D1     
       STA    AUDV0   
       STA    AUDV1   
       JMP    LF3A1   
LF2CD: LDA    #$02    
       AND    $E7     
       BEQ    LF30C   
       LDA    #$08    
       STA    AUDC0   
       DEC    $E1     
       BNE    LF2F6   
       LDA    #$04    
       STA    $E7     
       LDA    #$22    
       STA    $EA     
       LDA    #$6C    
       STA    $E4     
       LDA    #$00    
       STA    $E3     
       DEC    $C3     
       JSR    LFBA4   
       LDA    #$7F    
       AND    $C8     
       STA    $C8     
LF2F6: LDA    $E1     
       CMP    #$3C    
       BCS    LF300   
       LDY    #$00    
       .byte $F7 ;.ISB
       .byte $07 ;.SLO
LF300: SEC            
       SBC    #$20    
       STA    AUDF0   
       LDY    #$0F    
       STY    AUDV0   
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
       LDA    #$04    
       STA    AUDC0   
       JMP    LF342   
LF325: LDA    $ED     
       AND    #$07    
       BNE    LF342   
       JSR    LFB89   
       AND    #$1F    
       ORA    #$10    
       STA    AUDF0   
       LDA    #$0C    
       STA    AUDC0   
       LDA    #$05    
       STA    AUDV0   
       BNE    LF342   
LF33E: LDA    #$00    
       STA    AUDV0   
LF342: NOP            
       LDA    $DF     
       BEQ    LF356   
       LDA    #$04    
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
       JSR    LFBA4   
       JSR    LFBD7   
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
       JSR    LFBD7   
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
       JMP    LF69F   
LF403: BIT    $C8     
       BPL    LF40A   
       JMP    LF493   
LF40A: LDA    $E8     
       BEQ    LF411   
       JMP    LF4D1   
LF411: LDA    #$04    
       BIT    $E7     
       BVC    LF41A   
       JMP    LF62C   
LF41A: BNE    LF430   
       LDA    $EA     
       CMP    #$24    
       BCS    LF493   
       LDA    #$22    
       STA    $EA     
       LDA    #$04    
       ORA    $E7     
       STA    $E7     
       LDA    #$6C    
       STA    $E4     
LF430: LDA    #$90    
       STA    $81     
       LDA    #$00    
       STA    $82     
       LDA    $E3     
       BEQ    LF44A   
       LDA    $ED     
       AND    #$0F    
       BNE    LF490   
       DEC    $E3     
       JSR    LFB72   
       JMP    LF490   
LF44A: LDA    $C3     
       BEQ    LF490   
       LDA    REFP1   
       ASL            
       BCS    LF468   
       LDA    $E7     
       ORA    #$40    
       AND    #$CB    
       STA    $E7     
       LDX    $E0     
       LDA    #$60    
       STA    $C5     
       LDA    #$00    
       STA    $C4     
       JMP    LF69F   
LF468: BIT    SWCHA   
       BMI    LF476   
       INC    $EB     
       LDA    #$F7    
       AND    $E7     
       JMP    LF47E   
LF476: BVS    LF490   
       DEC    $EB     
       LDA    #$08    
       ORA    $E7     
LF47E: STA    $E7     
       LDA    #$3C    
       CMP    $EB     
       BCC    LF488   
       STA    $EB     
LF488: LDA    #$5C    
       CMP    $EB     
       BCS    LF490   
       STA    $EB     
LF490: JMP    LF69F   
LF493: BIT    $C8     
       BPL    LF4BA   
       BIT    $CB     
       BPL    LF4BA   
       LDA    $C7     
       ASL            
       BCC    LF4A5   
       DEC    $EB     
       JMP    LF4BA   
LF4A5: ASL            
       BCC    LF4AD   
       INC    $EB     
       JMP    LF4BA   
LF4AD: ASL            
       BCC    LF4B5   
       DEC    $EA     
       JMP    LF4BA   
LF4B5: ASL            
       BCC    LF4BA   
       INC    $EA     
LF4BA: LDA    SWCHA   
       AND    #$F0    
       EOR    #$F0    
       STA    $81     
       STA    $C7     
       BEQ    LF4D1   
       LDA    $ED     
       AND    #$0F    
       LSR            
       LSR            
       TAY            
       JMP    LF4DC   
LF4D1: LDA    $ED     
       AND    #$1F    
       LSR            
       LSR            
       LSR            
       TAY            
       JMP    LF5AA   
LF4DC: LDA    $81     
       ASL            
       BCC    LF4FF   
       LDA    #$F7    
       AND    $E7     
       STA    $E7     
       LDA    $EB     
       CMP    #$90    
       BCS    LF4EF   
       INC    $EB     
LF4EF: BIT    $C8     
       BPL    LF4F7   
       BIT    REFP1   
       BMI    LF514   
LF4F7: LDA    LF9D1,Y 
       LDY    #$05    
       JMP    LF5A3   
LF4FF: ASL            
       BCC    LF521   
       LDA    #$08    
       ORA    $E7     
       STA    $E7     
       LDA    $EB     
       BEQ    LF50E   
       DEC    $EB     
LF50E: BIT    $C8     
       BPL    LF519   
       BIT    REFP1   
LF514: BPL    LF519   
       JMP    LF59E   
LF519: LDA    LF9D1,Y 
       LDY    #$05    
       JMP    LF5A3   
LF521: ASL            
       BCC    LF55F   
       LDA    $EA     
       CMP    #$9D    
       BCS    LF534   
       INC    $EA     
LF52C: LDA    LF9CD,Y 
       LDY    #$00    
       JMP    LF5A3   
LF534: LDA    $EB     
       CMP    #$58    
       BCS    LF52C   
       CMP    #$40    
       BCC    LF52C   
       LDX    #$05    
       LDA    #$FF    
LF542: CMP    $95,X   
       BNE    LF52C   
       DEX            
       CPX    #$02    
       BNE    LF542   
       LDA    #$80    
       ORA    $C8     
       STA    $C8     
       LDA    #$0A    
       STA    $EA     
       LDA    #$E0    
       STA    $CD     
       LDA    #$00    
       STA    $CC     
       BNE    LF52C   
LF55F: ASL            
       BCC    LF5AA   
       LDA    $EA     
       BIT    $C8     
       BPL    LF58E   
       CMP    #$08    
       BCS    LF59C   
       LDA    #$7F    
       AND    $C8     
       STA    $C8     
       LDA    #$9B    
       STA    $EA     
       LDA    #$48    
       STA    $EB     
       JSR    LFBA4   
       LDX    $CC     
       CLC            
       LDA    $E3     
       ADC    LF58A,X 
       STA    $E3     
       JMP    LF983   
LF58A: .byte $00,$05,$0A,$64
LF58E: CMP    #$2D    
       BCS    LF59C   
       LDA    $EB     
       CMP    #$51    
       BCS    LF59E   
       CMP    #$48    
       BCC    LF59E   
LF59C: DEC    $EA     
LF59E: LDA    LF9C9,Y 
       LDY    #$00    
LF5A3: STA    $81     
       STY    $82     
LF5A7: JMP    LF69F   
LF5AA: LDA    #$00    
       STA    $82     
       LDA    LF9C9,Y 
       STA    $81     
       BIT    $C8     
       BMI    LF5A7   
       LDA    $E8     
       BNE    LF5D5   
       LDA    REFP1   
       ASL            
       BCS    LF5FE   
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
LF5D5: LDA    $ED     
       AND    #$07    
       LSR            
       TAY            
       LDA    LFDF7,Y 
       STA    $83     
       LDA    #$80    
       AND    $E7     
       BNE    LF612   
       LDA    $E8     
       CMP    #$40    
       BEQ    LF609   
       LDA    $E9     
       BEQ    LF609   
       CMP    #$98    
       BCS    LF609   
       INC    $E8     
       LDA    #$08    
       AND    $E7     
       BNE    LF604   
LF5FC: INC    $E9     
LF5FE: JMP    LF695   
LF601: .byte $4C,$95,$F6
LF604: DEC    $E9     
       JMP    LF695   
LF609: LDA    #$80    
       ORA    $E7     
       STA    $E7     
       JMP    LF695   
LF612: LDA    #$10    
       AND    $E7     
       BEQ    LF61E   
       LDA    $ED     
       AND    #$07    
       BNE    LF5FE   
LF61E: LDA    $E8     
       BEQ    LF5FE   
       DEC    $E8     
       LDA    #$08    
       AND    $E7     
       BNE    LF5FC   
       BEQ    LF604   
LF62C: LDA    #$12    
       STA    $81     
       LDA    #$00    
       STA    $82     
       LDA    #$20    
       BIT    $E7     
       BNE    LF64E   
       DEC    $EA     
       JSR    LF689   
       LDA    $EA     
       CMP    #$18    
       BCS    LF64B   
       LDA    #$20    
       ORA    $E7     
       STA    $E7     
LF64B: JMP    LF69F   
LF64E: LDA    $EA     
       CMP    #$22    
       BCS    LF657   
       JSR    LF689   
LF657: INC    $EA     
       LDA    $EA     
       CMP    #$70    
       BCC    LF668   
       LDA    #$BF    
       AND    $E7     
       STA    $E7     
LF665: JMP    LF69F   
LF668: LDA    $EA     
       CMP    #$26    
       BCC    LF665   
       CMP    #$2E    
       BCS    LF676   
       LDA    #$99    
       BNE    LF67C   
LF676: CMP    #$3A    
       BCS    LF665   
       LDA    #$A2    
LF67C: STA    $80     
       LDA    #$05    
       STA    NUSIZ0  
       LDY    #$8A    
       LDA    #$26    
       JMP    LF6AB   
LF689: LDA    #$08    
       BIT    $E7     
       BNE    LF692   
       INC    $EB     
       RTS            

LF692: DEC    $EB     
       RTS            

LF695: LDA    $E8     
       BEQ    LF69F   
       LDA    #$01    
       AND    $ED     
       BEQ    LF6B5   
LF69F: LDA    $82     
       STA    NUSIZ0  
       LDA    $81     
       STA    $80     
       LDA    $EA     
       LDY    $E4     
LF6AB: STY    COLUP0  
       JSR    LFA03   
       LDA    $EB     
       JMP    LF6C8   
LF6B5: LDA    #$00    
       STA    NUSIZ0  
       LDA    #$3C    
       STA    COLUP0  
       LDA    $83     
       STA    $80     
       LDA    $E5     
       JSR    LFA03   
       LDA    $E9     
LF6C8: LDX    #$00    
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
       ADC    LF9A9,Y 
       STA    $84     
       LDA    $ED     
       AND    #$0F    
       TAY            
       LDA    LF9AD,Y 
       LDY    #$07    
       STY    $81     
       LDX    #$01    
       JSR    LFA7E   
       BIT    $C8     
       BPL    LF734   
       LDA    $EA     
       CMP    #$9D    
       BNE    LF722   
       LDX    #$02    
LF706: LDA    $EB     
       CMP    LF72E,X 
       BNE    LF71F   
       LDA    LF731,X 
       AND    $CD     
       BEQ    LF71F   
       INC    $CC     
       LDA    LF731,X 
       EOR    #$FF    
       AND    $CD     
       STA    $CD     
LF71F: DEX            
       BPL    LF706   
LF722: LDY    #$04    
       LDA    #$20    
       AND    $CD     
       BNE    LF736   
       LDY    #$05    
       BNE    LF736   
LF72E: PHP            
       BCC    LF779   
LF731: .byte $80 ;.NOP
       RTI            

LF733: .byte $20
LF734: LDY    $82     
LF736: LDA    LF9BD,Y 
       STA    $B2     
       BIT    $C8     
       BPL    LF75C   
       LDY    #$04    
       LDA    $ED     
       AND    #$01    
       BNE    LF754   
       LDA    #$08    
       BIT    $CD     
       BMI    LF74F   
LF74D: LDY    #$05    
LF74F: STY    $82     
       JMP    LF779   
LF754: LDA    #$90    
       BIT    $CD     
       BVC    LF74D   
       BVS    LF74F   
LF75C: LDA    $83     
       CMP    #$0F    
       BEQ    LF766   
       CMP    #$2F    
       BNE    LF768   
LF766: INC    $EC     
LF768: LDX    #$00    
       LDA    $EC     
       BIT    $EC     
       BPL    LF774   
       LDX    #$08    
       EOR    #$FF    
LF774: CLC            
       ADC    #$10    
       STX    $B0     
LF779: LDX    #$00    
       JSR    LFFBD   
       STA    $FB     
       DEY            
       DEY            
       DEY            
       TYA            
       ORA    $80     
       STA    $B1     
       LDY    $82     
       LDA    LF9C3,Y 
       STA    $AE     
       LDA    $EA     
       CLC            
       ADC    #$12    
       STA    $82     
       LDX    #$05    
LF798: LDA    $95,X   
       CMP    #$FF    
       BNE    LF7A1   
       JMP    LF8F1   
LF7A1: LDA    $A2,X   
       AND    #$80    
       BNE    LF7AA   
       JMP    LF833   
LF7AA: LDA    $E8     
       CMP    #$0B    
       BCS    LF7CD   
       JSR    LFAFF   
       LDA    #$DC    
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
       JMP    LF798   
LF7CD: LDA    $ED     
       AND    #$07    
       BNE    LF7E0   
       LDA    #$08    
       AND    $E7     
       BEQ    LF7DE   
       INC    $8F,X   
       JMP    LF7E0   
LF7DE: DEC    $8F,X   
LF7E0: LDA    $E8     
       AND    #$30    
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    $A2,X   
       AND    #$40    
       BNE    LF812   
       LDA    $95,X   
       SEC            
       SBC    $E2     
       BCC    LF804   
       SBC    LFDFB,Y 
       BCC    LF804   
       LDA    #$40    
       ORA    $A2,X   
LF7FF: STA    $A2,X   
LF801: JMP    LF8EE   
LF804: JSR    LFADE   
       LDA    $A2,X   
       AND    #$40    
       BNE    LF801   
       INC    $E5     
       JMP    LF8EE   
LF812: LDA    $E2     
       SEC            
       SBC    $95,X   
       BCC    LF825   
       SBC    LFDFB,Y 
       BCC    LF825   
       LDA    #$BF    
       AND    $A2,X   
       JMP    LF7FF   
LF825: JSR    LFACA   
       LDA    $A2,X   
       AND    #$40    
       BEQ    LF801   
       DEC    $E5     
       JMP    LF8EE   
LF833: LDA    $E0     
       BIT    $C8     
       BPL    LF83F   
       CMP    #$03    
       BCS    LF8A5   
       BCC    LF89F   
LF83F: AND    #$01    
       BEQ    LF84C   
       LDA    $ED     
       AND    #$01    
       BEQ    LF84C   
       JMP    LF8EE   
LF84C: LDA    $E7     
       AND    #$10    
       BNE    LF89F   
       LDA    $82     
       CMP    $95,X   
       BCC    LF89F   
       INX            
       LDA    $95,X   
       DEX            
       CMP    $EA     
       BCC    LF89F   
       LDA    $8F,X   
       CMP    $EB     
       BCS    LF86D   
       LDA    #$F7    
       AND    $A2,X   
       JMP    LF873   
LF86D: BEQ    LF878   
       LDA    #$08    
       ORA    $A2,X   
LF873: STA    $A2,X   
       JSR    LFA95   
LF878: LDA    $ED     
       AND    #$01    
       BNE    LF88F   
       LDA    $95,X   
       CMP    $EA     
       BCC    LF892   
       LDA    $82     
       SBC    $95,X   
       CMP    #$09    
       BCS    LF88F   
       JSR    LFACA   
LF88F: JMP    LF8EE   
LF892: ADC    #$09    
       SEC            
       SBC    $EA     
       BCS    LF88F   
       JSR    LFADE   
       JMP    LF8EE   
LF89F: LDA    $ED     
       AND    #$01    
       BNE    LF8EE   
LF8A5: LDA    $ED     
       AND    #$3F    
       CMP    LFEF4,X 
       BNE    LF8BB   
       JSR    LFB89   
       CMP    #$40    
       BCS    LF8BB   
       LDA    #$08    
       EOR    $A2,X   
       STA    $A2,X   
LF8BB: JSR    LFA95   
       LDA    $E7     
       AND    #$10    
       BNE    LF8EE   
       LDA    $ED     
       AND    #$0F    
       CMP    LFEFA,X 
       BNE    LF8EB   
       JSR    LFB89   
       LDY    #$00    
       CMP    #$2A    
       BCS    LF8DB   
       LDY    #$10    
       JMP    LF8E1   
LF8DB: CMP    #$54    
       BCS    LF8E1   
       LDY    #$20    
LF8E1: STY    $81     
       LDA    #$CF    
       AND    $A2,X   
       ORA    $81     
       STA    $A2,X   
LF8EB: JSR    LFABD   
LF8EE: JSR    LFA72   
LF8F1: DEX            
       CPX    #$02    
       BEQ    LF8F9   
       JMP    LF798   
LF8F9: LDA    #$80    
       AND    $E6     
       BEQ    LF91A   
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
       JMP    LF962   
LF91A: LDA    #$04    
       AND    $E7     
       BEQ    LF948   
       LDA    #$01    
       AND    $E7     
       BNE    LF938   
       LDA    $C0     
       STA    $80     
       LDA    $C1     
       STA    $81     
       LDA    $C2     
       STA    $82     
       JSR    LFF90   
       JMP    LF962   
LF938: LDA    #$00    
       STA    $80     
       STA    $81     
       LDA    $E0     
       STA    $82     
       JSR    LFF90   
       JMP    LF962   
LF948: LDA    $C3     
       SEC            
       SBC    #$01    
       STA    $80     
       LDA    $C4     
       STA    $81     
       LDA    $C5     
       STA    $82     
       JSR    LFF90   
       LDA    #$88    
       STA    $B4     
       LDA    #$50    
       STA    $B8     
LF962: JMP    LF983   
LF965: SEI            
       CLD            
       LDX    #$00    
       LDA    #$00    
LF96B: STA    VSYNC,X 
       TXS            
       INX            
       BNE    LF96B   
       JSR    LFBA4   
       JSR    LFBD7   
       LDA    #$04    
       STA    $E7     
       LDA    #$01    
       STA    $E0     
       LDA    #$80    
       STA    $E6     
LF983: JSR    LFC0E   
LF986: LDA    INTIM   
       BNE    LF986   
       STA    WSYNC   
       STA    HMOVE   
       STA    WSYNC   
       STA    VBLANK  
       STA    WSYNC   
       STA    HMCLR   
       STA    CXCLR   
       LDY    #$02    
       CPY    $8A     
       BCC    LF9A3   
       LDA    ($8C),Y 
       STA    $80     
LF9A3: INY            
       STA    WSYNC   
       JMP    LF0A4   
LF9A9: .byte $00,$03,$06,$09
LF9AD: .byte $10,$30,$50,$70,$10,$30,$50,$70,$10,$30,$50,$70,$10,$30,$50,$70
LF9BD: .byte $00,$10,$20,$30,$40,$87
LF9C3: .byte $50,$60,$70,$80,$93,$87
LF9C9: .byte $00,$09,$12,$1B
LF9CD: .byte $24,$2D,$36,$3F
LF9D1: .byte $48,$51,$5A,$63
LF9D5: .byte $1D,$1A,$17,$15,$13,$11
LF9DB: .byte $1A,$15,$13,$11,$0F,$11
LF9E1: .byte $0A,$13,$1C,$25,$2E,$37
LF9E7: .byte $05,$11,$09,$19,$20,$22,$09,$09,$09,$19,$09,$09,$09,$19,$0D,$19
       .byte $11,$21,$28,$22,$11,$11,$11,$21,$11,$11,$11,$21
LFA03: STA    VDELP0  
       LSR            
       STA    $8A     
       CLC            
       ADC    #$09    
       STA    $8B     
       LDA    #$55    
       SEC            
       SBC    $8A     
       CLC            
       ADC    $80     
       STA    $8C     
       RTS            

LFA18: LDA    $ED     
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

LFA34: LDX    #$05    
LFA36: LDA    $A2,X   
       AND    #$07    
       TAY            
       LDA    #$00    
       CLC            
LFA3E: DEY            
       BMI    LFA46   
       ADC    #$12    
       JMP    LFA3E   
LFA46: STA    $89     
       LDA    $A2,X   
       AND    #$07    
       TAY            
       LDA    LFA6A,Y 
       TAY            
       LDA    #$80    
       AND    $A2,X   
       BEQ    LFA58   
       INY            
LFA58: LDA.wy $0080,Y 
       TAY            
       LDA    $89     
       CLC            
       ADC    LFFE6,Y 
       STA    $83,X   
       DEX            
       CPX    #$02    
       BNE    LFA36   
       RTS            

LFA6A: .byte $00,$01,$01,$00,$00,$00,$00,$00
LFA72: LDA    $A2,X   
       AND    #$07    
       TAY            
       LDA    LFFE8,Y 
       STA    $81     
       LDA    $8F,X   
LFA7E: JSR    LFFBD   
       ORA    $81     
       STA    $9C,X   
       DEY            
       DEY            
       DEY            
       TYA            
       CMP    #$06    
       BCC    LFA92   
       SEC            
       SBC    #$06    
       EOR    #$FF    
LFA92: STA    $A8,X   
       RTS            

LFA95: LDA    #$07    
       AND    $A2,X   
       TAY            
       LDA    #$08    
       AND    $A2,X   
       BEQ    LFAAB   
       LDA    $8F,X   
       CMP    #$02    
       BCC    LFAB6   
       SBC    #$01    
       JMP    LFAB3   
LFAAB: LDA    $8F,X   
       CMP    #$8F    
       BCS    LFAB6   
       ADC    #$01    
LFAB3: STA    $8F,X   
       RTS            

LFAB6: LDA    #$08    
       EOR    $A2,X   
       STA    $A2,X   
       RTS            

LFABD: LDA    $A2,X   
       AND    #$30    
       CMP    #$10    
       BEQ    LFACA   
       CMP    #$20    
       BEQ    LFADE   
       RTS            

LFACA: LDA    $95,X   
       DEX            
       SEC            
       SBC    $95,X   
       SBC    LFEEE,X 
       SBC    LFEEE,X 
       SBC    #$06    
       INX            
       BCC    LFAF8   
       DEC    $95,X   
       RTS            

LFADE: INX            
       LDA    $95,X   
       DEX            
       SEC            
       SBC    $95,X   
       SBC    LFEEE,X 
       SBC    LFEEE,X 
       SBC    #$04    
       BCC    LFAF8   
       LDA    $95,X   
       CMP    #$9A    
       BCS    LFAF8   
       INC    $95,X   
       RTS            

LFAF8: LDA    #$40    
       EOR    $A2,X   
       STA    $A2,X   
       RTS            

LFAFF: STX    $80     
LFB01: INX            
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
       BNE    LFB01   
       LDX    $80     
       RTS            

LFB1B: LDA    $ED     
       BNE    LFB44   
       JSR    LFB89   
       LDY    #$07    
LFB24: BIT    $C8     
       BPL    LFB2C   
       LDA    #$03    
       BNE    LFB34   
LFB2C: CMP    LFB62,Y 
       BCS    LFB45   
       LDA    LFB6A,Y 
LFB34: STA    $80     
       LDY    #$03    
LFB38: LDA    #$FF    
       CMP.wy $0095,Y 
       BEQ    LFB49   
       INY            
       CPY    #$06    
       BNE    LFB38   
LFB44: RTS            

LFB45: DEY            
       BPL    LFB24   
       RTS            

LFB49: DEY            
       LDA.wy $0095,Y 
       CMP    #$82    
       BCS    LFB44   
       INY            
       LDA    $80     
       STA.wy $00A2,Y 
       LDA    #$40    
       STA.wy $008F,Y 
       LDA    #$9A    
       STA.wy $0095,Y 
       RTS            

LFB62: .byte $FF,$E0,$C0,$A0,$80,$60,$40,$20
LFB6A: .byte $00,$01,$02,$00,$01,$02,$00,$01
LFB72: LDX    #$02    
       SED            
       CLC            
LFB76: LDA    LFB86,X 
       ADC    $C0,X   
       STA    $C0,X   
       DEX            
       BPL    LFB76   
       CLD            
       LDA    #$0F    
       STA    $DF     
       RTS            

LFB86: .byte $00,$01,$00
LFB89: LDA    $EE     
       AND    #$40    
       LSR            
       STA    $81     
       LDA    $EE     
       AND    #$20    
       EOR    $81     
       BNE    LFB9B   
       CLC            
       BCC    LFB9C   
LFB9B: SEC            
LFB9C: LDA    $EE     
       ROL            
       AND    #$7F    
       STA    $EE     
       RTS            

LFBA4: LDA    #$5C    
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

LFBD7: LDX    #$0C    
       LDA    #$FF    
LFBDB: STA    $B3,X   
       DEX            
       DEX            
       BNE    LFBDB   
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
       LDA    #$6C    
       STA    $E4     
       RTS            

LFC0E: BIT    $C8     
       BPL    LFC24   
       LDA    #$08    
       STA    $95     
       LDA    #$12    
       STA    $96     
       LDA    #$1C    
       STA    $97     
       LDY    #$00    
       LDA    #$32    
       BNE    LFC30   
LFC24: LDA    #$2E    
       STA    $96     
       LDA    #$38    
       STA    $97     
       LDY    #$58    
       LDA    #$D3    
LFC30: STA    $C6     
       STA    COLUPF  
       STY    $C9     
       JSR    LFA18   
       JSR    LFA34   
       LDA    #$00    
       STA    $CB     
       STA    $8E     
       STA    $80     
       STA    $81     
       RTS            

LFC47: .byte $B1,$8B,$10,$04,$C8,$4C,$47,$2C,$C8,$B1,$8B,$29,$18,$F0,$60,$7F
       .byte $E4,$F8,$60,$30,$10,$10,$00,$60,$7F,$E4,$F8,$60,$30,$28,$28,$00
       .byte $60,$7F,$E4,$F8,$60,$30,$28,$44,$00,$60,$7F,$E4,$F8,$60,$30,$28
       .byte $28,$00,$30,$30,$30,$30,$70,$60,$20,$20,$00,$50,$50,$30,$30,$70
       .byte $70,$20,$20,$00,$40,$48,$28,$30,$70,$70,$20,$20,$00,$20,$28,$28
       .byte $30,$70,$70,$20,$20,$00,$00,$00,$04,$3F,$0C,$00,$00,$00,$00,$00
       .byte $00,$24,$1F,$1C,$20,$00,$00,$00,$00,$00,$34,$1F,$0C,$30,$00,$00
       .byte $00,$00,$00,$24,$1F,$1C,$20,$00,$00,$00,$00,$00,$0C,$02,$FF,$02
       .byte $0C,$00,$00,$00,$00,$00,$0C,$FF,$0C,$00,$00,$00,$00,$00,$00,$00
       .byte $FF,$00,$00,$00,$00,$00,$00,$00,$0C,$FF,$0C,$00,$00,$00,$60,$60
       .byte $F0,$E8,$00,$00,$00,$00,$00,$42,$01,$A4,$09,$94,$00,$00,$00,$00
       .byte $00,$00,$24,$08,$14,$00,$00,$00,$00,$18,$18,$18,$28,$28,$28,$28
       .byte $50,$50,$50,$A0,$A0,$A0,$40,$40,$40,$18,$18,$18,$18,$28,$28,$28
       .byte $14,$14,$14,$28,$28,$28,$40,$40,$40,$18,$18,$18,$14,$14,$14,$14
       .byte $0A,$0A,$0A,$05,$05,$05,$02,$02,$02,$18,$18,$18,$18,$14,$14,$14
       .byte $28,$28,$28,$14,$14,$14,$08,$08,$08,$00,$00,$00,$00,$00,$7E,$7E
       .byte $3C,$3C,$7E,$7E,$FF,$99,$99,$DB,$DB,$42,$24,$FE,$FE,$7D,$39,$01
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$44,$24,$FE,$FE,$7D,$39,$01
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$24,$24,$FE,$FE,$7D,$39,$01
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$22,$24,$FE,$FE,$7D,$39,$01
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $3C,$18,$18,$7E,$BD,$BD,$7E,$7E,$18,$18,$18,$3C
LFDA3: .byte $10,$88,$4F,$3D,$3F,$5C,$8A,$10,$00,$10,$08,$8F,$7D,$3F,$DE,$08
       .byte $10,$00,$18,$0C,$0A,$1F,$7F,$8A,$0C,$18,$00,$18,$0C,$8A,$7F,$1F
       .byte $0A,$0C,$18,$00,$00,$0C,$DE,$3B,$3C,$DF,$0E,$00,$00,$00,$8C,$5E
       .byte $3B,$3F,$5E,$8C,$00,$00,$00,$5A,$3C,$5A,$FF,$24,$42,$24,$00,$81
       .byte $5A,$3C,$5A,$FF,$18,$24,$18,$00,$88,$DD,$FF,$44,$EE,$FF,$22,$77
       .byte $FF,$11,$BB,$FF
LFDF7: .byte $6C,$75,$7E,$87
LFDFB: .byte $04,$08,$10,$20,$88
LFE00: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$10,$30,$30,$70,$FC,$FC,$FC,$FE,$FE,$F0,$F0,$F0,$F0,$F0
       .byte $70,$70,$70,$30,$10,$00,$00,$00,$00,$00,$00,$10,$10,$10,$10,$10
       .byte $30,$30,$30,$30,$30,$70,$70,$70,$70,$F0,$F0,$F0,$F0,$F0,$31,$31
       .byte $31,$11,$11,$11,$11,$F1,$F1,$F1,$F1,$71,$71,$31,$31,$31,$31,$01
       .byte $01,$01,$01,$01,$01,$01,$01,$0F,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$04,$1C,$F8,$F0
       .byte $E0,$C0,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $80,$80,$C0,$C0,$E0,$E0,$F2,$B2,$7E,$FE,$FE,$FC,$7C,$78,$F8,$F8
LFEB0: .byte $01,$01,$05,$05,$05,$05
LFEB6: .byte $0A,$81,$83,$83,$83,$83
LFEBC: .byte $83,$83,$83,$83,$83,$83
LFEC2: .byte $0A,$83,$5A,$3A,$1A,$5A
LFEC8: .byte $83,$83,$83,$3A,$1A,$5A
LFECE: .byte $F0,$F0,$F0,$F0,$70,$70,$70,$30,$30,$30,$30,$30,$30,$30,$30,$30
LFEDE: .byte $C0,$C0,$C0,$C0,$C0,$E0,$E0,$E0,$E0,$E0,$E0,$F0,$F0,$F8,$F8,$F8
LFEEE: .byte $04,$03,$02,$09,$09,$09
LFEF4: .byte $00,$00,$00,$00,$14,$28
LFEFA: .byte $00,$00,$00,$00,$04,$0A,$3C,$66,$66,$66,$66,$66,$66,$3C,$3C,$18
       .byte $18,$18,$18,$18,$38,$18,$7E,$60,$60,$3C,$06,$06,$46,$3C,$3C,$46
       .byte $06,$0C,$0C,$06,$46,$3C,$0C,$0C,$0C,$7E,$4C,$2C,$1C,$0C,$7C,$46
       .byte $06,$06,$7C,$60,$60,$7E,$3C,$66,$66,$66,$7C,$60,$62,$3C,$18,$18
       .byte $18,$18,$0C,$06,$42,$7E,$3C,$66,$66,$3C,$3C,$66,$66,$3C,$3C,$46
       .byte $06,$3E,$66,$66,$66,$3C,$00,$00,$00,$00,$00,$00,$00,$00,$00,$ED
       .byte $A4,$EC,$A4,$EC,$00,$00,$00,$2E,$22,$2E,$2A,$2E,$00,$00,$00,$5C
       .byte $54,$54,$DC,$00,$00,$00,$00,$5D,$51,$51,$DD,$01,$01,$FD,$00,$BD
       .byte $A9,$A9,$BB,$00,$00,$FF,$00,$FD,$84,$B4,$A5,$B5,$85,$FD,$44,$28
       .byte $30,$60,$F8,$E4,$7F,$60
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
LFFE8: .byte $07,$05,$05,$05,$05
LFFED: .byte $FE,$FD,$FB,$F7,$EF,$DF,$BF
LFFF4: .byte $01,$02,$04,$08,$10,$20,$40,$A0,$00,$F0,$E0,$88
