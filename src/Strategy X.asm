; Disassembly of roms/Strategy X.bin
; Disassembled Tue Oct  6 15:24:47 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Strategy X.bin
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
AUDC0   =  $15
AUDF0   =  $17
AUDV0   =  $19
AUDV1   =  $1A
GRP0    =  $1B
GRP1    =  $1C
ENAM0   =  $1D
ENAM1   =  $1E
HMP0    =  $20
HMP1    =  $21
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM8T   =  $0295
TIM64T  =  $0296

       ORG $5000

START:
       SEI            
       CLD            
       LDX    #$FF    
       TXS            
       JSR    L5014   
L5008: JSR    L5073   
       JSR    L58CC   
       JSR    L509D   
       JMP    L5008   
L5014: LDX    #$00    
L5016: LDA    #$00    
L5018: STA    VSYNC,X 
       INX            
       CPX    #$F6    
       BNE    L5018   
       BIT    $C5     
       BVS    L502D   
       LDA    $C5     
       ORA    #$02    
       STA    $C5     
       LDA    #$17    
       STA    $94     
L502D: LDA    #$18    
       BVS    L5033   
       STA    $A7     
L5033: STA    $91     
       LDA    #$05    
       BVS    L503B   
       STA    $A6     
L503B: STA    $90     
       JSR    L565D   
       LDX    #$08    
L5042: LDA    L5FEF,X 
       STA    $BC,X   
       DEX            
       BPL    L5042   
       STA    $D1     
       LDX    #$02    
L504E: LDA    #$80    
       STA    $B0,X   
       LDY    #$00    
       LDA    $94     
       AND    #$10    
       BEQ    L5061   
       LDY    L5FF8,X 
       BVS    L5061   
       STY    $9C,X   
L5061: STY    $86,X   
       LDA    L5070,X 
       BVS    L506A   
       STA    $9F,X   
L506A: STA    $89,X   
       DEX            
       BPL    L504E   
       RTS            

L5070: .byte $62,$E8,$85
L5073: LDA    #$02    
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
       LDA    #$E8    
       STA    TIM8T   
       JSR    L5666   
L5093: LDA    INTIM   
       BNE    L5093   
       STA    WSYNC   
       STA    VBLANK  
       RTS            

L509D: LDA    #$2D    
       STA    TIM64T  
       BIT    $C5     
       BMI    L50CD   
       LDA    SWCHB   
       LSR            
       BCS    L50D3   
       LDA    $C5     
       PHA            
       JSR    L5014   
       PLA            
       AND    #$B7    
       ORA    #$82    
       STA    $C5     
       LDA    #$02    
       STA    $8F     
       STA    $A5     
       LDA    #$17    
       STA    $94     
       STA    $AA     
       LDA    #$5F    
       STA    $B4     
       LDA    #$10    
       STA    $B3     
L50CD: JSR    L5C6A   
       JMP    L5585   
L50D3: LDA    SWCHB   
       LSR            
       LSR            
       BCS    L50FD   
       DEC    $D0     
       BPL    L50FD   
       LDA    $C5     
       AND    #$F5    
       EOR    #$03    
       PHA            
       LDX    #$80    
       JSR    L5016   
       PLA            
       STA    $C5     
       LSR            
       LDA    #$02    
       BCS    L50F4   
       LDA    #$01    
L50F4: STA    $8E     
       LDA    #$10    
       STA    $D0     
       JMP    L5585   
L50FD: LDA    $93     
       BPL    L5121   
       DEC    $CF     
       BPL    L5114   
       AND    #$BF    
       STA    $93     
       LDA    #$7F    
       STA    $CF     
       LDX    #$08    
L510F: INC    $BC,X   
       DEX            
       BPL    L510F   
L5114: LDA    $C5     
       ORA    #$02    
       STA    $C5     
       LDA    #$00    
       STA    $8F     
       JMP    L5585   
L5121: BIT    $C5     
       BVC    L5138   
       BIT    $D0     
       BMI    L5135   
       LDA    #$5F    
       STA    $B4     
       LDA    #$32    
       STA    $B3     
       LDA    #$80    
       STA    $D0     
L5135: JSR    L5C6A   
L5138: LDA    $D6     
       BPL    L514A   
       LDA    #$00    
       STA    $D6     
       STA    $C8     
       TAX            
       LDY    #$16    
       LDA    #$15    
       JSR    L58B7   
L514A: LDX    #$09    
L514C: LDA    $82,X   
       AND    #$80    
       BNE    L5159   
       DEX            
       DEX            
       DEX            
       BPL    L514C   
       BMI    L5165   
L5159: STX    $E2     
       LDA    $CA     
       BNE    L5165   
       LDA    $C5     
       AND    #$22    
       BEQ    L5168   
L5165: JMP    L5229   
L5168: TAY            
       LDA    L5FC1,Y 
       STA    $82,X   
       LDA    #$08    
       BIT    $C5     
       BEQ    L517F   
       LDA    SWCHA   
       ASL            
       ASL            
       ASL            
       ASL            
       STA    $DD     
       BNE    L5184   
L517F: LDA    SWCHA   
       STA    $DD     
L5184: LDA    #$04    
       STA    $E8     
       LSR            
       STA    $E9     
       TAY            
       BVS    L51EA   
       LDA    $DC     
       BPL    L51C5   
       LDA    $CC     
       SEC            
       SBC    #$04    
       STA    $CC     
       LDA    #$00    
       STA    $DC     
       DEC    $C9     
       BPL    L51AC   
       LDA    #$06    
       STA    $C9     
       LDA    $C7     
       LSR            
       LDY    #$02    
       BCS    L51B0   
L51AC: INC    $CA     
       LDY    #$00    
L51B0: LDA    $94     
       AND    #$10    
       BNE    L51BE   
       DEC    $CA     
       LDA    $C9     
       ASL            
       TAY            
       BCS    L51C2   
L51BE: STY    $E8     
       STY    $E9     
L51C2: JMP    L51C9   
L51C5: LDA    #$00    
       STA    $C9     
L51C9: LDA    $81,X   
       AND    #$0F    
       CMP    #$04    
       BCC    L51FE   
       CMP    #$0C    
       BCS    L520B   
       BIT    $DD     
       BPL    L51FE   
       BVC    L520B   
       LDA    $DD     
       ASL            
       ASL            
       STA    $DE     
       BIT    $DE     
       BPL    L521D   
       BVC    L51F0   
       JMP    L5229   
L51EA: LSR    $E8     
       LDA    #$48    
       STA    $81,X   
L51F0: LDA    $80,X   
       CMP    #$32    
       BCC    L5229   
       LDA    $80,X   
       SBC    $E8     
       STA    $80,X   
       BNE    L5229   
L51FE: LDA    $81,X   
       CPY    #$00    
       BEQ    L5207   
       JSR    L5C4C   
L5207: LDY    #$02    
       BNE    L5216   
L520B: LDA    $81,X   
       CPY    #$00    
       BEQ    L5214   
       JSR    L5C5B   
L5214: LDY    #$01    
L5216: STA    $81,X   
       LDA    L5FC1,Y 
       STA    $82,X   
L521D: LDA    $80,X   
       CMP    #$60    
       BCS    L5229   
       LDA    $80,X   
       ADC    $E9     
       STA    $80,X   
L5229: INC    $C7     
       BIT    $C5     
       BVC    L5232   
       JMP    L5585   
L5232: LDY    #$01    
       LDA    SWCHA   
       ORA    #$22    
       EOR    #$FF    
       BNE    L523F   
       LDY    #$4D    
L523F: STY    $B5     
       LDA    $80,X   
       STA    $DF     
       LDA    $81,X   
       STA    $E0     
       LDA    $82,X   
       STA    $E7     
       AND    #$0F    
       CMP    #$0C    
       BCS    L527F   
       LDA    $AD     
       BNE    L527F   
       LDA    #$08    
       BIT    $C5     
       BNE    L5263   
       LDA    REFP1   
       BMI    L52A3   
       BPL    L5267   
L5263: LDA    PF0     
       BMI    L52A3   
L5267: LDA    $82,X   
       STA    $D3     
       LDA    $DF     
       CLC            
       ADC    #$08    
       STA    $AC     
       LDA    $E0     
       LDY    #$03    
       JSR    L5C4C   
       STA    $AD     
       LDA    #$10    
       STA    $B6     
L527F: LDA    $D3     
       AND    #$0F    
       CMP    #$05    
       BEQ    L529F   
       LDY    #$02    
       LDA    #$20    
       BIT    $D3     
       BNE    L5296   
       LDA    $AD     
       JSR    L5C5B   
       BEQ    L529B   
L5296: LDA    $AD     
       JSR    L5C4C   
L529B: STA    $AD     
       BEQ    L52A3   
L529F: DEC    $AC     
       DEC    $AC     
L52A3: DEC    $CD     
       BEQ    L52AA   
       JMP    L537B   
L52AA: LDA    $94     
       ASL            
       ASL            
       ASL            
       ASL            
       LDA    $94     
       AND    #$0F    
       BCC    L52B8   
       SBC    $C8     
L52B8: BNE    L52BC   
       LDA    #$01    
L52BC: STA    $CD     
       LDA    $AF     
       BNE    L532D   
       LDX    #$09    
L52C4: LDA    $82,X   
       AND    #$0F    
       CMP    #$03    
       BEQ    L52D2   
       CMP    #$09    
       BEQ    L52E0   
       BNE    L52D9   
L52D2: LDA    $C7     
       LSR            
       BCS    L52E0   
       LSR    $C7     
L52D9: DEX            
       DEX            
       DEX            
       BPL    L52C4   
       BMI    L532A   
L52E0: LDA    $81,X   
       LSR            
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $C8     
       LDA    $80,X   
       CMP    #$50    
       BCS    L532A   
       SEC            
       SBC    $DF     
       STA    $D4     
       LDA    $80,X   
       CLC            
       ADC    #$08    
       STA    $AE     
       LDA    $81,X   
       AND    #$0F    
       STA    $E1     
       LDA    $E0     
       AND    #$0F    
       SEC            
       SBC    $E1     
       STA    $D5     
       LDA    $81,X   
       BCC    L5313   
       LDY    #$04    
       JSR    L5C4C   
L5313: STA    $AF     
       LDY    #$10    
       LDA    $D4     
       AND    #$F0    
       BEQ    L5321   
       CMP    #$F0    
       BNE    L5328   
L5321: LDA    #$00    
       STA    $AE     
       STA    $AF     
       TAY            
L5328: STY    $B6     
L532A: JMP    L537B   
L532D: LDA    $D5     
       BEQ    L5356   
       BPL    L5348   
       LDA    #$00    
       SEC            
       SBC    $D5     
       CMP    #$04    
       BCC    L533E   
       LDA    #$03    
L533E: TAY            
       BEQ    L5356   
       LDA    $AF     
       JSR    L5C5B   
       BEQ    L5354   
L5348: CMP    #$04    
       BCC    L534E   
       LDA    #$03    
L534E: TAY            
       LDA    $AF     
       JSR    L5C4C   
L5354: STA    $AF     
L5356: LDA    $94     
       AND    #$10    
       BNE    L5362   
       LDA    #$0A    
       STA    $E4     
       BNE    L5374   
L5362: LDA    $D4     
       BPL    L5368   
       EOR    #$FF    
L5368: LSR            
       LSR            
       LSR            
       LSR            
       CMP    #$02    
       BCS    L5372   
       LDA    #$02    
L5372: STA    $E4     
L5374: LDA    $AE     
       CLC            
       ADC    $E4     
       STA    $AE     
L537B: LDX    #$02    
L537D: LDA    $AD,X   
       AND    #$0F    
       CMP    #$04    
       BCC    L538F   
       CMP    #$0D    
       BCS    L538F   
       LDA    $AC,X   
       CMP    #$70    
       BCC    L5395   
L538F: LDA    #$00    
       STA    $AC,X   
       STA    $AD,X   
L5395: DEX            
       DEX            
       BPL    L537D   
       LDA    $C5     
       AND    #$04    
       BEQ    L53CE   
       EOR    $C5     
       STA    $C5     
       DEC    $CE     
       BEQ    L53B5   
       LDA    $B0     
       BPL    L53CE   
       LDA    #$36    
       STA    $B5     
       LDA    #$00    
       STA    $B3     
       BEQ    L5414   
L53B5: LDX    #$09    
L53B7: LDA    $82,X   
       AND    #$0F    
       CMP    #$01    
       BNE    L53C7   
       LDA    #$00    
       STA    $80,X   
       STA    $81,X   
       STA    $82,X   
L53C7: DEX            
       DEX            
       DEX            
       BPL    L53B7   
       BMI    L53F9   
L53CE: LDA    #$10    
       STA    $CE     
       LDA    $D8     
       CMP    #$0F    
       BCS    L53DC   
       LDY    #$05    
       STY    $B5     
L53DC: DEC    $CC     
       BPL    L5414   
       LDA    $D8     
       BNE    L53EB   
       LDA    #$80    
       STA    $CC     
       JMP    L545A   
L53EB: LDY    #$01    
       LDA    $D7     
       JSR    L5C4C   
       STA    $D7     
       DEC    $D8     
       JMP    L5410   
L53F9: LDY    #$14    
       LDA    $D7     
       JSR    L5C5B   
       STA    $D7     
       LDA    $D8     
       CLC            
       ADC    #$14    
       STA    $D8     
       CMP    #$23    
       BCC    L5410   
       JSR    L565D   
L5410: LDA    #$42    
       STA    $CC     
L5414: BIT    COLUP1  
       BPL    L5456   
       LDX    #$09    
L541A: LDA    $82,X   
       AND    #$0F    
       CMP    #$04    
       BCC    L5426   
       CMP    #$0B    
       BNE    L5451   
L5426: LDA    $DF     
       JSR    L558B   
       BEQ    L5451   
       LDA    $82,X   
       AND    #$0F    
       CMP    #$01    
       BNE    L543D   
       LDA    $C5     
       ORA    #$04    
       STA    $C5     
       BNE    L5456   
L543D: CMP    #$0B    
       BNE    L5445   
       LDA    #$00    
       STA    $95     
L5445: LDA    $B2     
       BPL    L544D   
       STX    $B2     
       BMI    L545A   
L544D: STX    $B1     
       BPL    L545A   
L5451: DEX            
       DEX            
       DEX            
       BPL    L541A   
L5456: BIT    VBLANK  
       BPL    L547F   
L545A: LDA    #$00    
       STA    $AE     
       STA    $AF     
       LDA    $E2     
       STA    $B0     
       LDA    #$FF    
       STA    $CD     
       LDA    $C5     
       ORA    #$22    
       STA    $C5     
L546E: LDA    #$18    
       STA    $B5     
       LDA    #$27    
       STA    $B6     
       LDA    #$00    
       STA    $B3     
       STA    $B4     
       JMP    L5535   
L547F: BIT    VSYNC   
       BMI    L548A   
       BIT    VBLANK  
       BVS    L548A   
       JMP    L5535   
L548A: LDX    #$09    
L548C: LDA    $82,X   
       AND    #$0F    
       CMP    #$01    
       BEQ    L54E1   
       CMP    #$03    
       BEQ    L54E1   
       CMP    #$09    
       BEQ    L54E1   
       CMP    #$0B    
       BEQ    L54A3   
       JMP    L552D   
L54A3: BIT    VBLANK  
       BVS    L5500   
       LDA    $AC     
       JSR    L558B   
       BEQ    L54E1   
       LDA    $AD     
       LDY    #$00    
L54B2: CLC            
       ADC    #$10    
       BPL    L54BD   
       CMP    #$90    
       BCS    L54BD   
       SBC    #$F0    
L54BD: CMP    $81,X   
       BEQ    L54C8   
       INY            
       CPY    #$10    
       BCC    L54B2   
       LDY    #$0F    
L54C8: TYA            
       LSR            
       SEC            
       SBC    #$08    
       EOR    #$FF    
       TAY            
       LDA    $95     
       ORA    L5FE7,Y 
       STA    $95     
       LDA    $C6     
       CLC            
       ADC    #$20    
       STA    $C6     
       JMP    L556D   
L54E1: BIT    VSYNC   
       BPL    L5500   
       LDA    $AC     
       JSR    L558B   
       BEQ    L552D   
       LDA    #$00    
       STA    $AC     
       STA    $AD     
       LDA    $81,X   
       AND    #$F0    
       STA    $C6     
       LDY    #$00    
       BIT    VBLANK  
       BVS    L5516   
       BVC    L5520   
L5500: LDA    $82,X   
       AND    #$0F    
       TAY            
       CMP    #$01    
       BEQ    L550D   
       CMP    #$0C    
       BCC    L552D   
L550D: LDA    $AE     
       BEQ    L552D   
       JSR    L558B   
       BEQ    L552D   
L5516: LDA    #$00    
       STA    $AE     
       STA    $AF     
       CPY    #$0C    
       BCS    L552D   
L5520: LDA    $B2     
       BPL    L5528   
       STX    $B2     
       BMI    L552A   
L5528: STX    $B1     
L552A: JMP    L546E   
L552D: DEX            
       DEX            
       DEX            
       BMI    L5535   
       JMP    L548C   
L5535: LDX    #$0C    
       LDA    $CC     
       AND    #$18    
       CMP    #$18    
       BEQ    L554A   
       INX            
       CMP    #$10    
       BEQ    L554A   
       INX            
       CMP    #$08    
       BEQ    L554A   
       INX            
L554A: STX    $E1     
       LDY    #$02    
L554E: LDA.wy $00B0,Y 
       BMI    L555C   
       TAX            
       LDA    $82,X   
       AND    #$F0    
       ORA    $E1     
       STA    $82,X   
L555C: DEY            
       BPL    L554E   
       LDA    $AC     
       BEQ    L5573   
       BIT    COLUP1  
       BVC    L5573   
       LDA    #$00    
       STA    $AE     
       STA    $AF     
L556D: LDA    #$00    
       STA    $AC     
       STA    $AD     
L5573: LDX    #$01    
L5575: LDA    $B3,X   
       BNE    L557D   
       LDA    $B5,X   
       BEQ    L5582   
L557D: STA    $B3,X   
       JSR    L55A4   
L5582: DEX            
       BPL    L5575   
L5585: LDA    INTIM   
       BNE    L5585   
       RTS            

L558B: STA    $E3     
       LDA    $80,X   
       SEC            
       SBC    $E3     
       BCS    L559A   
       CMP    #$F0    
       BCC    L55A1   
       BCS    L559E   
L559A: CMP    #$10    
       BCS    L55A1   
L559E: LDA    $E3     
       RTS            

L55A1: LDA    #$00    
       RTS            

L55A4: LDA    $B7,X   
       BEQ    L55AB   
       JMP    L565A   
L55AB: LDA    $B9,X   
       STA    $B7,X   
       LDY    $B3,X   
L55B1: LDA    L5F70,Y 
       BNE    L55B9   
       JMP    L5650   
L55B9: CMP    #$E0    
       BCC    L55DC   
       BEQ    L55E8   
       CMP    #$F0    
       BCS    L55CC   
       AND    #$0F    
       STA    $B9,X   
       STA    $B7,X   
       INY            
       BNE    L55B1   
L55CC: AND    #$0F    
       BNE    L55D3   
       JMP    L5654   
L55D3: STA    AUDC0,X 
       INY            
       BNE    L55B1   
       INY            
       LDA    L5F70,Y 
L55DC: STA    AUDF0,X 
       LSR            
       LSR            
       LSR            
       LSR            
       STA    AUDV0,X 
       INY            
       STY    $B3,X   
       RTS            

L55E8: LDY    $B0     
       BMI    L5632   
       LDA    #$80    
       STA    $B0     
       LDA    #$85    
       STA.wy $0082,Y 
       JSR    L565D   
       LDA    $93     
       BMI    L5632   
       DEC    $8F     
       BPL    L561C   
       ORA    #$01    
       STA    $93     
       LDA    $C5     
       LSR            
       BCC    L560E   
       LDA    $A9     
       LSR            
       BCC    L561C   
L560E: LDA    #$C0    
       STA    $93     
       LDA    $C2     
       STA    $CC     
       LDA    #$7F    
       STA    $CF     
       BNE    L5632   
L561C: LDA    $C5     
       LSR            
       BCC    L5632   
       LDA    $A9     
       LSR            
       BCS    L5632   
       LDA    $C5     
       EOR    #$08    
       STA    $C5     
       LDA    #$80    
       STA    $D6     
       STA    $CD     
L5632: LDX    #$02    
L5634: LDA    $B0,X   
       BMI    L5647   
       TAY            
       LDA    #$80    
       STA    $B0,X   
       ASL            
       STA.wy $0080,Y 
       STA.wy $0081,Y 
       STA.wy $0082,Y 
L5647: DEX            
       BNE    L5634   
       LDA    $C5     
       AND    #$09    
       STA    $C5     
L5650: LDA    #$00    
       STA    AUDV0,X 
L5654: LDA    #$00    
       STA    $B3,X   
       STA    $B5,X   
L565A: DEC    $B7,X   
       RTS            

L565D: LDA    #$0A    
       STA    $D7     
       LDA    #$20    
       STA    $D8     
       RTS            

L5666: DEC    $CA     
       BMI    L566D   
       JMP    L5795   
L566D: LDA    $94     
       AND    #$0F    
       CMP    #$05    
       BCS    L5677   
       LDA    #$05    
L5677: STA    $CA     
       LDA    $C5     
       AND    #$02    
       BEQ    L5682   
       JMP    L5795   
L5682: DEC    $91     
       DEC    $91     
       LDX    #$09    
L5688: LDA    $82,X   
       BEQ    L56CC   
       BMI    L56CC   
       AND    #$0F    
       TAY            
       LDA    $94     
       AND    #$10    
       BNE    L56C8   
       CPY    #$01    
       BEQ    L56C8   
       CPY    #$0A    
       BEQ    L56C8   
       LDA    $80,X   
       CLC            
       ADC    #$04    
       STA    $80,X   
       CPY    #$0C    
       BCS    L56C8   
       INC    $D2     
       LDY    #$09    
       LDA    $CC     
       AND    #$08    
       BNE    L56C8   
       LDA    $D2     
       AND    #$08    
       BNE    L56C1   
       LDA    $81,X   
       JSR    L5C5B   
       BEQ    L56C6   
L56C1: LDA    $81,X   
       JSR    L5C4C   
L56C6: STA    $81,X   
L56C8: INC    $80,X   
       INC    $80,X   
L56CC: DEX            
       DEX            
       DEX            
       BPL    L5688   
       LDX    #$09    
L56D3: LDA    $80,X   
       CMP    #$70    
       BCC    L570A   
       LDA    $82,X   
       AND    #$0F    
       CMP    #$0B    
       BEQ    L56FE   
       CMP    #$0C    
       BCC    L5702   
       LDY    #$01    
L56E7: TXA            
       CMP.wy $00B1,Y 
       BNE    L56F9   
       LDA    $B1     
       BMI    L56F4   
       STA    $B2     
       DEY            
L56F4: LDA    #$80    
       STA.wy $00B1,Y 
L56F9: DEY            
       BPL    L56E7   
       BMI    L5702   
L56FE: LDA    #$00    
       STA    $95     
L5702: LDA    #$00    
       STA    $80,X   
       STA    $81,X   
       STA    $82,X   
L570A: DEX            
       DEX            
       DEX            
       BPL    L56D3   
       LDA    $91     
       BEQ    L5716   
       JMP    L5795   
L5716: LDA    #$18    
       STA    $91     
       LDA    $C6     
       CLC            
       ADC    #$10    
       STA    $C6     
       LDA    $90     
       ASL            
       CLC            
       ADC    $90     
       TAX            
       LDY    L5D68,X 
       CPY    #$26    
       BNE    L573D   
       LDY    #$08    
       STY    $80     
       LDY    #$27    
       STY    $81     
       LDY    #$4A    
       STY    $82     
       BNE    L5793   
L573D: LDA    $94     
       AND    #$10    
       BEQ    L5755   
       TYA            
       LDY    #$43    
       LSR            
       BCS    L577C   
       LDY    #$41    
       LSR            
       BCS    L577C   
       LDY    #$4B    
       LSR            
       BCS    L577C   
       BCC    L5793   
L5755: TYA            
       CMP    #$E2    
       BCC    L5793   
       LDY    #$41    
       CMP    #$E2    
       BNE    L5769   
       STY    $82     
       LDX    $92     
       LDA    L5FCF,X 
       BNE    L5778   
L5769: LDY    #$49    
       STY    $82     
       LSR            
       LDA    $E0     
       BCS    L5776   
       ADC    #$01    
       BNE    L5778   
L5776: SBC    #$01    
L5778: STA    $81     
       BNE    L578F   
L577C: STY    $82     
       LDX    $92     
       LDY    L5FCF,X 
       LDA    $B3     
       LSR            
       BCC    L578B   
       LDY    L5CE9,X 
L578B: STY    $81     
       INC    $92     
L578F: LDA    #$02    
       STA    $80     
L5793: INC    $90     
L5795: LDX    #$09    
       LDY    #$06    
L5799: LDA    $80,X   
       CMP.wy $0080,Y 
       BCS    L57AD   
       STX    $E5     
       STY    $E6     
       LDA    #$02    
       JSR    L58B7   
       LDX    $E5     
       LDY    $E6     
L57AD: DEY            
       DEY            
       DEY            
       BPL    L5799   
       TXA            
       SEC            
       SBC    #$03    
       TAX            
       SEC            
       SBC    #$03    
       TAY            
       BPL    L5799   
       LDA    #$02    
       STA    $DD     
       LDX    #$09    
L57C3: LDA    $80,X   
       BEQ    L57FB   
       LDA    $82,X   
       AND    #$EF    
       STA    $82,X   
       BPL    L57D1   
       STX    $E1     
L57D1: STX    $DB     
       LDY    #$00    
       LDA    $82,X   
       BMI    L57DB   
       LDY    $DD     
L57DB: LDA.wy $00B0,Y 
       BMI    L57F2   
       LDA    $82,X   
       AND    #$0F    
       CMP    #$0C    
       BCC    L57F2   
       CPY    #$00    
       BEQ    L57EE   
       DEC    $DD     
L57EE: TXA            
       STA.wy $00B0,Y 
L57F2: DEX            
       DEX            
       DEX            
       BPL    L57C3   
       LDA    #$00    
       STA    $DB     
L57FB: LDX    $DB     
       CPX    #$09    
       BCS    L581E   
L5801: TXA            
       TAY            
       INX            
       INX            
       INX            
       SEC            
       LDA    $80,X   
       SBC.wy $0080,Y 
       CMP    #$10    
       BCS    L581A   
       STA    $CB     
       LDA.wy $0082,Y 
       ORA    #$10    
       STA.wy $0082,Y 
L581A: CPX    #$09    
       BCC    L5801   
L581E: LDX    #$00    
       LDA    $90     
       CMP    #$34    
       BCC    L5831   
       LDA    $C5     
       ORA    #$40    
       STA    $C5     
       STX    $AC     
       STX    $AD     
       DEX            
L5831: STX    $D9     
       LDA    $93     
       BMI    L5856   
       LDA    $94     
       AND    #$F0    
       STA    $DD     
       SED            
       CLC            
       LDA    $C6     
       ADC    $8E     
       STA    $8E     
       LDA    #$00    
       ADC    $8D     
       STA    $8D     
       LDA    #$00    
       ADC    $8C     
       AND    #$0F    
       ORA    $DD     
       STA    $8C     
       CLD            
L5856: LDY    #$02    
       LDX    #$0A    
L585A: LDA.wy $008C,Y 
       STA    $DD     
       AND    #$0F    
       STA    $E2,X   
       LDA    $DD     
       LSR            
       LSR            
       LSR            
       LSR            
       DEX            
       DEX            
       STA    $E2,X   
       LDA    #$5D    
       STA    $E3,X   
       STA    $E5,X   
       DEX            
       DEX            
       DEY            
       BPL    L585A   
       LDA    #$FF    
       STA    $DD     
       LDX    #$00    
L587E: LDA    $E2,X   
       BNE    L588E   
       LDY    $DD     
       BEQ    L5896   
       CPX    #$0A    
       BEQ    L5896   
       LDA    #$60    
       BNE    L5899   
L588E: CPX    #$00    
       BEQ    L5896   
       LDY    #$00    
       STY    $DD     
L5896: ASL            
       ASL            
       ASL            
L5899: STA    $E2,X   
       INX            
       INX            
       CPX    #$0C    
       BNE    L587E   
       BIT    $C5     
       BPL    L58B6   
       LDA    #$BC    
       LDY    #$5E    
       LDX    #$0A    
L58AB: SEC            
       SBC    #$0A    
       STA    $E2,X   
       STY    $E3,X   
       DEX            
       DEX            
       BPL    L58AB   
L58B6: RTS            

L58B7: STA    $E0     
L58B9: LDA    $80,X   
       PHA            
       LDA.wy $0080,Y 
       STA    $80,X   
       PLA            
       STA.wy $0080,Y 
       INX            
       INY            
       DEC    $E0     
       BPL    L58B9   
       RTS            

L58CC: LDA    $C2     
       STA    COLUBK  
       LDX    #$07    
L58D2: STA    WSYNC   
       DEX            
       BNE    L58D2   
       STX    $C6     
       STX    REFP0   
       LDA    $C4     
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDY    #$07    
       STA    WSYNC   
L58EB: DEY            
       BNE    L58EB   
       NOP            
       STA    RESP0   
       STA    RESP1   
       LDA    #$F0    
       STA    HMP0    
       STY    HMP1    
       LDA    #$01    
       STA    VDELP0  
       STA    VDELP1  
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$09    
       BIT    $C5     
       BMI    L590B   
       LDA    #$07    
L590B: STA    $DE     
L590D: LDY    $DE     
       LDA    ($E2),Y 
       STA    GRP0    
       STA    WSYNC   
       LDA    ($E4),Y 
       STA    GRP1    
       LDA    ($E6),Y 
       STA    GRP0    
       LDA    ($E8),Y 
       STA    $DD     
       LDA    ($EA),Y 
       TAX            
       LDA    ($EC),Y 
       TAY            
       LDA    $DD     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STY    GRP0    
       DEC    $DE     
       BPL    L590D   
       LDX    #$00    
       STX    GRP0    
       STX    GRP1    
       STX    VDELP0  
       STX    VDELP1  
       DEX            
       STX    $ED     
       LDX    #$10    
       LDY    #$03    
       LDA    $94     
       AND    #$10    
       BNE    L5950   
       LDX    #$05    
       LDY    #$10    
L5950: STX    $F1     
       STY    $F2     
       STA    HMCLR   
       LDX    #$02    
       LDA    $AD     
       JSR    L5C3D   
       LDX    #$03    
       LDA    $AF     
       JSR    L5C3D   
       LDA    $AC     
       BEQ    L596B   
       CLC            
       ADC    #$03    
L596B: STA    $EF     
       LDA    $AE     
       BEQ    L5973   
       ADC    $F2     
L5973: STA    $F0     
       LDY    $E1     
       LDA.wy $0080,Y 
       STA    $DE     
       ADC    #$0F    
       STA    $DF     
       LDA    $C7     
       LSR            
       TAX            
       LDA    SWCHA   
       ORA    #$22    
       EOR    #$FF    
       BNE    L598F   
       TXA            
       LSR            
L598F: LDA.wy $0082,Y 
       TAX            
       AND    #$20    
       BEQ    L5999   
       LDA    #$08    
L5999: STA    REFP0   
       TXA            
       AND    #$0F    
       BCC    L59A6   
       CMP    #$08    
       BCS    L59A6   
       ADC    #$01    
L59A6: TAX            
       LDA    L5D50,X 
       STA    $E2     
       LDX    #$00    
       LDA.wy $0081,Y 
       JSR    L5C2C   
       LDA    #$5E    
       STA    $E3     
       STX    $E4     
       STA    $E5     
       STX    $E6     
       STX    $EB     
       STX    $DA     
       STA    $F3     
       STA    $F5     
       STA    $F7     
       TSX            
       STX    $F8     
       LDA    #$10    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    $94     
       ASL            
       ASL            
       ASL            
       ASL            
       LDA    $C3     
       BCC    L59DD   
       ADC    #$B0    
L59DD: STA    COLUPF  
       AND    #$F0    
       STA    $EC     
       LDX    $BC     
       LDA    #$01    
       BIT    $C5     
       BVC    L59ED   
       LDA    #$05    
L59ED: STA    CTRLPF  
       LDA    $C5     
       AND    #$08    
       BEQ    L59F7   
       LDX    $C4     
L59F7: STX    COLUP0  
       LDA    $90     
       STA    $EA     
       LDA    #$05    
       STA    $E9     
       STA    CXCLR   
       LDX    $B0     
       BMI    L5A0F   
       LDA    $D1     
       ADC    #$02    
       STA    $D1     
       STA    COLUBK  
L5A0F: STA    WSYNC   
       LDA    #$C8    
       STA    TIM64T  
L5A16: LDA    #$00    
       STA    $DD     
       JMP    L5B34   
L5A1D: STA    ENAM0   
       STA    ENAM1   
       LDA    $DA     
       BEQ    L5A27   
       DEC    $E8     
L5A27: LDX    $DA     
       LDY    #$80    
       JMP    L5AE9   
L5A2E: INX            
       INX            
       STX    $DA     
       LDY    $DB     
       CPY    #$0C    
       BCC    L5A3B   
       JMP    L5BA1   
L5A3B: LDA    $DA     
       CMP.wy $0080,Y 
       BCS    L5A45   
       JMP    L5BA1   
L5A45: LDA    #$0E    
       STA    $E1     
L5A49: LDA.wy $0082,Y 
       STA    $DD     
       BMI    L5AAB   
       AND    #$0F    
       TAX            
       LDA.wy $0080,Y 
       STA    $ED     
       CLC            
       ADC    #$0F    
       STA    $EE     
       LDA    L5D50,X 
       STA    $E4     
       CPX    #$0B    
       BNE    L5A6E   
       LDX    $95     
       STX    $EB     
       LDX    #$15    
       BNE    L5A7C   
L5A6E: CPX    #$0A    
       BNE    L5A7A   
       LDX    #$17    
       STX    NUSIZ1  
       LDA    $EC     
       BNE    L5A93   
L5A7A: LDX    $F1     
L5A7C: STX    NUSIZ1  
       LDA    $94     
       AND    #$10    
       BEQ    L5A87   
       LDA.wy $0081,Y 
L5A87: LSR            
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       LDA    L5FC8,X 
       CLC            
       ADC    $BE     
L5A93: STA    COLUP1  
       STA    HMCLR   
       LDA.wy $0081,Y 
       STA    HMP1    
       AND    #$0F    
       TAX            
       STA    WSYNC   
L5AA1: DEX            
       BPL    L5AA1   
       STA    $0111   
       STA    WSYNC   
       STA    HMOVE   
L5AAB: INY            
       INY            
       INY            
       STY    $DB     
       LDA    $DD     
       AND    #$10    
       BEQ    L5AC4   
       LDA    $DD     
       STA    $E7     
       LDA    $E1     
       CLC            
       ADC    $CB     
       STA    $E1     
       JMP    L5A49   
L5AC4: LDA    $E1     
       CMP    #$0E    
       BEQ    L5ADD   
       LDY    #$00    
       LDA    $E7     
       BMI    L5AD2   
       LDY    #$02    
L5AD2: LDA.wy $00E2,Y 
       LSR    $CB     
       SEC            
       SBC    $CB     
       STA.wy $00E2,Y 
L5ADD: LDX    $DA     
       LDA    $E1     
       LSR            
       TAY            
L5AE3: DEC    $E8     
       DEC    $E8     
       BMI    L5B2B   
L5AE9: STA    WSYNC   
       LDA    #$02    
       CPX    $AC     
       BCC    L5AF5   
       CPX    $EF     
       BCC    L5AF7   
L5AF5: LDA    #$00    
L5AF7: STA    ENAM0   
       LDA    #$02    
       CPX    $AE     
       BCC    L5B03   
       CPX    $F0     
       BCC    L5B05   
L5B03: LDA    #$00    
L5B05: STA    ENAM1   
       STY    $E0     
       LDA    $E8     
       LSR            
       LSR            
       TAY            
       BIT    $D9     
       BPL    L5B18   
       EOR    #$07    
       ORA    $EC     
       STA    COLUPF  
L5B18: LDA    ($F2),Y 
       STA    PF0     
       LDA    ($F4),Y 
       STA    PF1     
       LDA    ($F6),Y 
       STA    PF2     
       LDY    $E0     
       BPL    L5B70   
       JMP    L5A2E   
L5B2B: DEC    $EA     
       DEC    $E9     
       BPL    L5B34   
       JMP    L5BB3   
L5B34: TXS            
       LDA    $EA     
       ASL            
       CLC            
       ADC    $EA     
       TAX            
       LDA    L5D6A,X 
       STA    $F6     
       CMP    #$F2    
       BNE    L5B49   
       LDA    #$00    
       STA    $D9     
L5B49: LDA    L5D69,X 
       STA    $F4     
       LDA    L5D68,X 
       AND    #$F0    
       STA    $F2     
       LDX    #$18    
       LDA    $E9     
       BNE    L5B5D   
       LDX    $91     
L5B5D: CMP    #$05    
       BCC    L5B66   
       LDA    #$18    
       SBC    $91     
       TAX            
L5B66: STX    $E8     
       TSX            
       LDA    $DD     
       BNE    L5B70   
       JMP    L5A1D   
L5B70: CPX    $DE     
       BCC    L5B7E   
       CPX    $DF     
       LDA    #$00    
       BCS    L5B7C   
       LDA    ($E2),Y 
L5B7C: STA    GRP0    
L5B7E: CPX    $ED     
       BCC    L5B8E   
       CPX    $EE     
       LDA    #$00    
       BCS    L5B8C   
       LDA    ($E4),Y 
       EOR    $EB     
L5B8C: STA    GRP1    
L5B8E: INX            
       INX            
       DEY            
       BMI    L5B96   
       JMP    L5AE3   
L5B96: STX    $DA     
       INY            
       STY    $E4     
       STY    $EB     
       STY    GRP0    
       STY    GRP1    
L5BA1: DEC    $E8     
       DEC    $E8     
       BMI    L5BAA   
       JMP    L5A27   
L5BAA: DEC    $EA     
       DEC    $E9     
       BMI    L5BB3   
       JMP    L5A16   
L5BB3: LDA    WSYNC   
       STA    $DC     
       LDA    #$00    
       LDX    #$03    
L5BBB: STA    PF0,X   
       STA    GRP0,X  
       DEX            
       BPL    L5BBB   
       LDX    $F8     
       TXS            
       LDA    $C2     
       LDX    #$05    
L5BC9: CLC            
       ADC    #$01    
       STA    COLUBK  
       STA    WSYNC   
       DEX            
       BNE    L5BC9   
       LDA    $BD     
       BIT    $93     
       BVC    L5BDF   
       LDA    $CC     
       ADC    #$02    
       STA    $CC     
L5BDF: STA    COLUBK  
       STA    COLUPF  
       LDA    #$07    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDX    $C0     
       LDA    $D8     
       CMP    #$0F    
       BCS    L5BF3   
       LDX    $C1     
L5BF3: STX    COLUP0  
       LDA    $BF     
       STA    COLUP1  
       LDA    #$05    
       STA    CTRLPF  
       LDA    #$04    
       LDX    #$01    
       JSR    L5C3D   
       LDA    $D7     
       DEX            
       JSR    L5C2C   
       LDY    $8F     
       LDA    L5FC4,Y 
       STA    GRP1    
       LDA    #$FF    
       STA    GRP0    
       LDA    #$F0    
       STA    PF0     
       LDX    #$07    
L5C1B: STA    WSYNC   
       DEX            
       BNE    L5C1B   
       STX    GRP0    
       STX    GRP1    
       STX    PF0     
L5C26: LDA    INTIM   
       BNE    L5C26   
       RTS            

L5C2C: STA    HMP0,X  
       AND    #$0F    
       TAY            
       STA    WSYNC   
L5C33: DEY            
       BPL    L5C33   
       STA    RESP0,X 
       STA    WSYNC   
       STA    HMOVE   
       RTS            

L5C3D: STA    HMP0,X  
       AND    #$0F    
       TAY            
       STA    WSYNC   
L5C44: DEY            
       BPL    L5C44   
       STA    RESP0,X 
       STA    WSYNC   
       RTS            

L5C4C: SEC            
       SBC    #$10    
       BMI    L5C57   
       CMP    #$70    
       BCC    L5C57   
       ADC    #$F0    
L5C57: DEY            
       BNE    L5C4C   
       RTS            

L5C5B: CLC            
       ADC    #$10    
       BPL    L5C66   
       CMP    #$90    
       BCS    L5C66   
       SBC    #$F0    
L5C66: DEY            
       BNE    L5C5B   
       RTS            

L5C6A: LDY    $BB     
       BMI    L5CA6   
       BNE    L5C99   
       LDA    ($B3),Y 
       BEQ    L5CA2   
       STA    $DD     
       LDX    #$01    
       AND    #$0F    
L5C7A: TAY            
       LDA    L5F00,Y 
       STA    AUDF0,X 
       BMI    L5C86   
       LDA    #$05    
       BNE    L5C88   
L5C86: LDA    #$0C    
L5C88: STA    AUDC0,X 
       DEX            
       BMI    L5C95   
       LDA    $DD     
       LSR            
       LSR            
       LSR            
       LSR            
       BPL    L5C7A   
L5C95: INC    $B3     
       LDY    #$07    
L5C99: DEY            
       STY    AUDV0   
       STY    AUDV1   
       STY    $BB     
       BPL    L5CA4   
L5CA2: DEC    $BB     
L5CA4: BPL    L5CE8   
L5CA6: BIT    $C5     
       BVC    L5CD2   
       LDA    $94     
       CLC            
       ADC    #$10    
       STA    $94     
       AND    #$10    
       BEQ    L5CBB   
       LDA    #$00    
       STA    $92     
       DEC    $94     
L5CBB: LDA    $8F     
       CMP    #$02    
       BCS    L5CC3   
       INC    $8F     
L5CC3: SED            
       CLC            
       LDA    #$03    
       ADC    $8D     
       STA    $8D     
       LDA    #$00    
       ADC    $8C     
       STA    $8C     
       CLD            
L5CD2: LDA    #$00    
       LDX    #$08    
L5CD6: STA    $B3,X   
       STA    $80,X   
       DEX            
       BPL    L5CD6   
       LDX    #$C6    
       JSR    L5016   
       LDA    $C5     
       AND    #$09    
       STA    $C5     
L5CE8: RTS            

L5CE9: .byte $56,$7B,$55,$79,$C6,$5A,$5A,$77,$B7,$CB,$7B,$58,$78,$CA,$77,$7B
       .byte $77,$C5,$79,$75,$79,$70,$F9,$78,$44,$44,$46,$62,$22,$22,$1E,$30
       .byte $30,$30,$18,$18,$18,$0C,$0C,$7C,$60,$30,$18,$0C,$46,$26,$3C,$3C
       .byte $46,$02,$06,$3C,$06,$26,$1C,$18,$0C,$04,$7E,$24,$14,$0E,$06,$38
       .byte $44,$02,$02,$7C,$20,$10,$1E,$38,$48,$44,$44,$78,$20,$22,$1C,$18
       .byte $18,$0C,$0C,$0C,$06,$46,$7E,$3C,$42,$42,$34,$1C,$36,$22,$1C,$38
       .byte $4C,$04,$04,$3E,$46,$26,$1C
L5D50: .byte $00,$40,$00,$48,$00,$60,$68,$70,$78,$50,$18,$58,$28,$30,$38,$20
       .byte $00,$00,$00,$00,$00,$00,$00,$00
L5D68: .byte $E0
L5D69: .byte $E0
L5D6A: .byte $20,$E0,$EC,$20,$E0,$20,$20,$E0,$20,$20,$E0,$BC,$BC,$E0,$C2,$C2
       .byte $E9,$20,$20,$E8,$20,$20,$E9,$20,$E6,$E8,$20,$E0,$E9,$20,$EC,$E8
       .byte $20,$20,$E9,$20,$20,$E8,$CE,$20,$E2,$20,$20,$E0,$20,$E6,$E1,$20
       .byte $EC,$E0,$E6,$20,$E9,$EC,$20,$E8,$20,$20,$E9,$C8,$20,$E8,$20,$20
       .byte $EC,$BC,$BC,$E8,$C2,$C2,$E2,$20,$20,$E0,$20,$DA,$E1,$20,$D4,$E0
       .byte $20,$20,$E9,$20,$20,$E8,$C8,$C8,$E9,$C8,$C8,$E8,$C8,$C8,$EA,$20
       .byte $20,$E8,$20,$CE,$E9,$20,$20,$E8,$20,$E6,$E9,$20,$EC,$E8,$DA,$20
       .byte $E9,$E0,$20,$E8,$D4,$20,$E2,$20,$E6,$E0,$20,$EC,$E1,$E6,$20,$E0
       .byte $EC,$20,$E9,$20,$DA,$E8,$20,$D4,$E9,$E6,$20,$E8,$EC,$20,$20,$20
       .byte $20,$20,$20,$20,$26,$20,$F2,$20,$20,$F8,$20,$20,$20,$20,$20,$20
       .byte $20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$00,$81
       .byte $81,$42,$42,$24,$24,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$2A
       .byte $5C,$3C,$7E,$2A,$16,$00,$50,$2A,$35,$5C,$AA,$12,$45,$28,$52,$85
       .byte $21,$80,$41,$00,$92,$25,$99,$BD,$EF,$E7,$EF,$62,$3C,$18,$00,$6C
       .byte $AA,$C6,$00,$C6,$AA,$6C,$10,$54,$FE,$54,$10,$10,$10,$38,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$00,$FE,$38,$EE,$38,$D6,$10,$10,$C6,$38
       .byte $FE,$28,$FE,$10,$10,$10,$00,$15,$15,$1E,$F6,$1E,$15,$15,$00,$2A
       .byte $2A,$1E,$FE,$1E,$2A,$2A,$7C,$82,$BA,$AA,$A2,$A2,$AA,$BA,$82,$7C
       .byte $4B,$4B,$52,$52,$63,$73,$58,$4C,$44,$40,$AB,$AA,$AA,$AB,$B8,$BA
       .byte $03,$00,$00,$00,$AA,$AA,$AA,$AA,$BE,$BE,$A0,$00,$00,$00,$91,$91
       .byte $91,$91,$97,$97,$95,$15,$97,$97,$74,$74,$54,$54,$74,$74,$54,$54
       .byte $74,$74,$03,$0F,$1F,$3F,$3F,$3F,$3F,$3F,$3F,$1F,$0F,$03,$10,$38
       .byte $7C,$38,$10,$00,$3C,$7E,$FF,$7E,$3C,$18,$FF,$7E,$7E,$3C,$3C,$18
       .byte $18,$3C,$3C,$7E,$7E,$FF,$FE,$FF,$FE,$FF,$FE,$FF,$F0,$F8,$FC,$FC
       .byte $FE,$FE,$FE,$FE,$FC,$FC,$F8,$F0,$0F,$0F,$1F,$3F,$FF,$55,$FF,$FC
       .byte $F8,$F0,$E0,$C0,$00,$00
L5F00: .byte $92,$91,$1D,$1C,$12,$11,$0E,$0D,$0C,$0B,$0F,$09,$08,$07,$00,$0A
       .byte $15,$04,$EE,$EE,$37,$26,$EE,$EE,$15,$04,$EE,$EE,$37,$26,$EE,$EE
       .byte $15,$04,$37,$26,$15,$04,$37,$26,$15,$04,$37,$26,$15,$04,$37,$26
       .byte $00,$00,$AE,$EE,$AE,$AE,$AE,$EE,$EE,$EE,$AE,$EE,$AE,$AE,$AE,$EE
       .byte $AE,$AE,$9A,$EE,$9A,$9A,$9A,$EE,$9A,$EE,$8A,$EE,$AE,$AE,$AE,$AE
       .byte $AE,$EE,$B9,$EE,$B9,$B9,$B9,$EE,$B9,$B9,$FA,$EE,$BE,$EE,$C8,$EE
       .byte $DE,$EE,$8A,$EE,$EE,$EE,$F8,$EE,$EE,$EE,$A4,$EE,$EE,$EE,$00,$00
L5F70: .byte $00,$F3,$E1,$70,$00,$FC,$E5,$BF,$BD,$BF,$BD,$BF,$BD,$BF,$01,$00
       .byte $F8,$E3,$50,$CB,$AA,$89,$48,$00,$F8,$E8,$52,$D4,$D8,$BA,$9C,$9E
       .byte $5C,$3F,$5A,$38,$16,$14,$E0,$F3,$E8,$52,$C4,$C8,$CA,$AC,$CE,$8C
       .byte $8A,$48,$F8,$26,$24,$00,$F5,$E1,$50,$01,$E8,$50,$01,$E6,$50,$01
       .byte $E4,$50,$01,$E3,$50,$01,$E2,$50,$01,$E1,$50,$01,$00,$F8,$E1,$68
       .byte $00
L5FC1: .byte $85,$87,$A7
L5FC4: .byte $00,$80,$A0,$A8
L5FC8: .byte $92,$98,$58,$78,$00,$28,$45
L5FCF: .byte $39,$35,$5B,$76,$C9,$55,$56,$7A,$B7,$C7,$75,$5A,$76,$C6,$3A,$55
       .byte $7A,$CA,$57,$7B,$77,$05,$0B,$45
L5FE7: .byte $03,$06,$0C,$18,$30,$60,$C0,$C0
L5FEF: .byte $34,$B8,$00,$0C,$56,$1C,$0A,$36,$02
L5FF8: .byte $02,$B7,$4B,$01,$00,$50,$0A,$2B
