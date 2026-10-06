; Disassembly of roms/Bank Heist.bin
; Disassembled Tue Oct  6 15:21:06 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Bank Heist.bin
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
HMBL    =  $24
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
INPT4   =  $3C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296

       ORG $F000

START:
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       LDY    #$B5    
       SEI            
       CLD            
       LDX    #$00    
LF00E: LDA    #$00    
LF010: STA    VSYNC,X 
       TXS            
       INX            
       BNE    LF010   
       STY    $82     
       LDA    #$04    
       STA    $D5     
       LDA    #$01    
       STA    CTRLPF  
       LDA    #$80    
       STA    PF0     
       LDA    #$FF    
       STA    PF1     
       STA    PF2     
       LDA    #$FE    
       STA    $C2     
       STA    $C4     
       LDX    #$03    
LF032: JSR    LFA75   
       JSR    LFA63   
       LDY    #$FF    
       STY    $A9,X   
       DEX            
       BNE    LF032   
       STY    $A9     
       LDA    #$FE    
       STA    $97     
       LDA    #$29    
       STA    $88     
       LDA    #$0C    
       STA    $9C     
       JMP    LFA4A   
LF050: LDA    #$02    
       STA    VBLANK  
       STA    WSYNC   
       STA    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    VSYNC   
       STA    WSYNC   
       STA    HMCLR   
       LDA    #$34    
       STA    TIM64T  
       LDX    #$FF    
       LDA    SWCHB   
       AND    #$08    
       BNE    LF076   
       LDX    #$0F    
LF076: STX    $83     
       INC    $86     
       BNE    LF083   
       INC    $87     
       BNE    LF083   
       SEC            
       ROR    $87     
LF083: LDX    #$00    
       LDA    SWCHA   
       EOR    #$FF    
       BEQ    LF08E   
       STX    $87     
LF08E: STX    $84     
       LDA    $87     
       BPL    LF09C   
       STA    $84     
       LDA    $83     
       AND    #$F7    
       STA    $83     
LF09C: LDA    SWCHB   
       AND    #$02    
       BEQ    LF0AA   
       LDA    #$00    
       STA    $85     
       JMP    LF0DA   
LF0AA: LDA    $85     
       BEQ    LF0B4   
       LDA    $86     
       AND    #$1F    
       BNE    LF0DA   
LF0B4: LDA    #$FF    
       STA    $E0     
       STA    $85     
       LDA    #$00    
       STA    $A9     
       STA    $86     
       LDA    $81     
       CLC            
       ADC    #$04    
       AND    #$1C    
       STA    $81     
       STA    $80     
       LSR            
       LSR            
       CLC            
       ADC    #$E1    
       STA    $DA     
       LDA    #$AB    
       STA    $D8     
       LDA    #$CD    
       STA    $D9     
LF0DA: LDA    $A9     
       BNE    LF0F8   
       LDA    $86     
       AND    #$80    
       BEQ    LF0F8   
       LDA    #$AB    
       STA    $DB     
       LDA    #$CD    
       STA    $DC     
       LDA    $80     
       LSR            
       LSR            
       CLC            
       ADC    #$E1    
       STA    $DD     
       JMP    LF104   
LF0F8: LDA    $D8     
       STA    $DB     
       LDA    $D9     
       STA    $DC     
       LDA    $DA     
       STA    $DD     
LF104: LDA    $9C     
       CMP    #$0C    
       BNE    LF158   
       LDA    $88     
       CMP    #$29    
       BNE    LF158   
       LDA    $A9     
       CMP    #$7F    
       BNE    LF158   
       INC    $9C     
       LDA    $80     
       CMP    #$1F    
       BNE    LF122   
       LDA    #$1A    
       STA    $80     
LF122: INC    $80     
       LDX    #$03    
LF126: JSR    LFA75   
       LDA    #$00    
       STA    $C6,X   
       STA    $CE,X   
       DEX            
       BNE    LF126   
       LDY    $D3     
       LDA    LFDD2,Y 
       CMP    $D6     
       BPL    LF13D   
       STA    $D6     
LF13D: LDA    LFDD2,Y 
       BNE    LF154   
       LDA    $D5     
       CMP    #$06    
       BEQ    LF14A   
       INC    $D5     
LF14A: LDX    $80     
LF14C: LDA    #$93    
       JSR    LFA52   
       DEX            
       BNE    LF14C   
LF154: LDA    #$00    
       STA    $D3     
LF158: JSR    LFA63   
       LDA    $80     
       AND    #$03    
       CLC            
       ADC    #$00    
       STA    $C1     
       ADC    #$04    
       STA    $C3     
       LDA    $80     
       AND    #$1F    
       LSR            
       TAY            
       LDA    LFE90,Y 
       STA    $BA     
       INY            
       LDA    LFE90,Y 
       STA    $B9     
       INY            
       LDA    LFE90,Y 
       STA    $B8     
       INY            
       LDA    LFE90,Y 
       STA    $B7     
       LDA    $86     
       AND    #$7F    
       CMP    #$00    
       BNE    LF1AB   
       LDA    $A9     
       BEQ    LF1AB   
       CMP    #$FF    
       BEQ    LF1AB   
       LDA    $B7     
       SBC    #$30    
       ADC    $D7     
       STA    $D7     
       BCC    LF1AB   
       INC    $D6     
       LDA    $D6     
       CMP    #$19    
       BNE    LF1AB   
       LDA    #$C8    
       STA    $CE     
LF1AB: LDA    $BF     
       CMP    #$40    
       BNE    LF1E6   
       LDX    #$04    
LF1B3: DEX            
       BMI    LF1E6   
       LDA    #$FE    
       CMP    $97,X   
       BNE    LF1B3   
       LDA    $8C     
       SEC            
       ADC    #$01    
       SBC    $88,X   
       BCC    LF1B3   
       CMP    #$0A    
       BCS    LF1B3   
       LDA    $A0     
       CLC            
       ADC    #$03    
       SEC            
       SBC    $9C,X   
       BCC    LF1B3   
       CMP    #$0B    
       BCS    LF1B3   
       CPX    #$00    
       BNE    LF1E2   
       LDA    #$C8    
       STA    $CE     
       JMP    LF1E6   
LF1E2: LDA    #$FF    
       STA    $C6,X   
LF1E6: LDX    #$04    
LF1E8: DEX            
       BMI    LF242   
       LDA    $C6,X   
       BEQ    LF1E8   
       DEC    $C6,X   
       BEQ    LF22A   
       CMP    #$FF    
       BEQ    LF230   
       CMP    #$D2    
       BNE    LF1E8   
       LDA    #$FF    
       STA    $97,X   
       LDA    #$00    
       STA    $AE     
       LDY    #$04    
LF205: DEY            
       BEQ    LF216   
       LDA.wy $0097,Y 
       CMP    #$FE    
       BNE    LF205   
       INC    $AE     
       INC    $AE     
       JMP    LF205   
LF216: LDA    $AE     
       TAY            
       LDA    LFEFF,Y 
       SEC            
       SBC    $88,X   
       STA    $93,X   
       LDA    LFDC8,Y 
       JSR    LFA52   
       JMP    LF1E8   
LF22A: JSR    LFA75   
       JMP    LF1E8   
LF230: LDA    #$FF    
       STA    $97,X   
       LDA    #$83    
       SEC            
       SBC    $88,X   
       STA    $93,X   
       LDA    #$00    
       STA    $8F,X   
       JMP    LF1E8   
LF242: LDA    $80     
       LSR            
       TAY            
       LDA    #$FF    
       SEC            
       SBC    LFE90,Y 
       STA    $AE     
       LDX    #$04    
LF250: DEX            
       BEQ    LF280   
       LDA    #$FD    
       CMP    $97,X   
       BNE    LF250   
       LDA    $88     
       CLC            
       ADC    #$05    
       SEC            
       SBC    $88,X   
       BCC    LF250   
       CMP    #$0B    
       BCS    LF250   
       LDA    $9C     
       CLC            
       ADC    #$04    
       SEC            
       SBC    $9C,X   
       BCC    LF250   
       CMP    #$0B    
       BCS    LF250   
       LDA    $AE     
       STA    $CE,X   
       LDA    #$1E    
       STA    $D2     
       JMP    LF250   
LF280: LDX    #$04    
LF282: DEX            
       BEQ    LF2B7   
       LDA    $CE,X   
       BEQ    LF282   
       DEC    $CE,X   
       BEQ    LF2B0   
       CMP    $AE     
       BNE    LF282   
       LDA    #$FF    
       STA    $97,X   
       LDY    $D3     
       LDA    LFEFF,Y 
       SEC            
       SBC    $88,X   
       STA    $93,X   
       LDA    LFDC8,Y 
       JSR    LFA52   
       LDY    $D3     
       CPY    #$09    
       BEQ    LF282   
       INC    $D3     
       JMP    LF282   
LF2B0: LDA    #$FE    
       STA    $97,X   
       JMP    LF282   
LF2B7: LDX    #$04    
       LDA    #$FE    
       CMP    $97     
       BNE    LF2E8   
LF2BF: DEX            
       BEQ    LF2E8   
       LDA    #$FE    
       CMP    $97,X   
       BNE    LF2BF   
       LDA    $88     
       CLC            
       ADC    #$04    
       SEC            
       SBC    $88,X   
       BCC    LF2BF   
       CMP    #$09    
       BCS    LF2BF   
       LDA    $9C     
       CLC            
       ADC    #$04    
       SEC            
       SBC    $9C,X   
       BCC    LF2BF   
       CMP    #$09    
       BCS    LF2BF   
       LDA    #$C8    
       STA    $CE     
LF2E8: LDA    $CE     
       BEQ    LF35F   
       DEC    $CE     
       BEQ    LF332   
       CMP    #$C8    
       BEQ    LF31C   
       CMP    #$3C    
       BNE    LF35F   
       LDX    #$03    
LF2FA: LDA    $97,X   
       CMP    #$FE    
       BNE    LF30E   
       LDA    #$00    
       STA    $B3,X   
       STA    $8F,X   
       LDA    #$4C    
       STA    $9C,X   
       LDA    #$61    
       STA    $88,X   
LF30E: DEX            
       BNE    LF2FA   
       STX    $B3     
       STX    $8F     
       LDA    #$88    
       STA    $88     
       JMP    LF35F   
LF31C: STA    $E0     
       LDA    #$FF    
       STA    $A9     
       LDA    #$FD    
       STA    $97     
       INC    $88     
       LDA    #$8E    
       SEC            
       SBC    $88     
       STA    $93     
       JMP    LF35F   
LF332: LDA    #$00    
       STA    $C0     
       LDA    $D5     
       BEQ    LF359   
       LDA    $A9     
       BEQ    LF35F   
       LDA    #$FE    
       STA    $97     
       DEC    $D5     
       LDA    #$0C    
       STA    $9C     
       LDA    #$29    
       STA    $88     
       LDA    $D6     
       CMP    #$15    
       BMI    LF35B   
       LDA    #$14    
       STA    $D6     
       JMP    LF35B   
LF359: STA    $A9     
LF35B: LDA    #$00    
       STA    $E0     
LF35F: LDA    #$00    
       STA    AUDV0   
       LDA    $BF     
       BEQ    LF3A3   
       CMP    #$40    
       BCC    LF37C   
       LDA    $82     
       AND    #$06    
       STA    AUDV0   
       LDA    #$08    
       STA    AUDC0   
       LDA    #$04    
       STA    AUDF0   
       JMP    LF3DF   
LF37C: LDA    #$1F    
       STA    AUDV0   
       STA    AUDF0   
       LDA    $BF     
       CMP    #$20    
       BCS    LF38B   
       LSR            
       STA    AUDV0   
LF38B: LDA    $BF     
       SEC            
       SBC    #$30    
       BCC    LF3DF   
       ASL            
       STA    $AE     
       LDA    #$1E    
       SEC            
       SBC    $AE     
       STA    AUDF0   
       LDA    #$00    
       STA    $D2     
       JMP    LF3DF   
LF3A3: LDA    $D2     
       BEQ    LF3BD   
       DEC    $D2     
       LDA    #$05    
       STA    AUDC0   
       LDA    #$0A    
       STA    AUDV0   
       LDA    $82     
       AND    #$07    
       CLC            
       ADC    #$03    
       STA    AUDF0   
       JMP    LF3DF   
LF3BD: LDA    $A9     
       BEQ    LF3DF   
       CMP    #$FF    
       BEQ    LF3DF   
       LDA    #$06    
       STA    AUDF0   
       LDA    #$02    
       STA    AUDC0   
       LDA    #$06    
       STA    AUDV0   
       LDA    $D6     
       CMP    #$16    
       BMI    LF3DF   
       LDA    $86     
       AND    #$03    
       BNE    LF3DF   
       STA    AUDV0   
LF3DF: LDA    $CE     
       SEC            
       SBC    #$A3    
       BCC    LF3FE   
       STA    $AE     
       LDA    #$08    
       STA    AUDC1   
       LDA    #$1F    
       STA    AUDV1   
       STA    AUDF1   
       LDA    $AE     
       CMP    #$20    
       BCS    LF438   
       LSR            
       STA    AUDV1   
       JMP    LF438   
LF3FE: LDA    #$00    
       STA    $AE     
       LDA    $A9     
       BEQ    LF434   
       CMP    #$FF    
       BEQ    LF434   
       LDA    #$0C    
       STA    AUDC1   
       LDA    $86     
       AND    #$10    
       BNE    LF41B   
       LDA    #$0C    
       STA    AUDF1   
       JMP    LF41F   
LF41B: LDA    #$0A    
       STA    AUDF1   
LF41F: LDX    #$04    
LF421: DEX            
       BEQ    LF434   
       LDA    #$FE    
       CMP    $97,X   
       BNE    LF421   
       LDA    $AE     
       CLC            
       ADC    #$03    
       STA    $AE     
       JMP    LF421   
LF434: LDA    $AE     
       STA    AUDV1   
LF438: LDX    #$FF    
       STX    $FF     
       STX    $FE     
       LDX    #$03    
       STX    $FA     
       LDY    #$02    
       STY    $FB     
       LDA    $8A     
       CMP    $8B     
       BPL    LF450   
       STX    $FB     
       STY    $FA     
LF450: LDX    $FB     
       LDY    #$01    
       STY    $FC     
       LDA    $89     
       CMP    $88,X   
       BPL    LF460   
       STX    $FC     
       STY    $FB     
LF460: LDX    $FC     
       LDY    #$00    
       STY    $FD     
       LDA    $88     
       CMP    $88,X   
       BPL    LF470   
       STX    $FD     
       STY    $FC     
LF470: LDX    $FA     
       LDY    $FB     
       LDA.wy $0088,Y 
       CMP    $88,X   
       BPL    LF47F   
       STX    $FB     
       STY    $FA     
LF47F: LDX    $FB     
       LDY    $FC     
       LDA.wy $0088,Y 
       CMP    $88,X   
       BPL    LF48E   
       STX    $FC     
       STY    $FB     
LF48E: LDX    $FA     
       LDY    $FB     
       LDA.wy $0088,Y 
       CMP    $88,X   
       BPL    LF49D   
       STX    $FB     
       STY    $FA     
LF49D: LDX    #$F9    
       TXS            
       LDX    $FC     
       LDY    $FA     
       LDA    $88,X   
       SEC            
       SBC.wy $0088,Y 
       CMP    #$0F    
       BMI    LF4E0   
       LDX    $FD     
       LDY    $FB     
       LDA    $88,X   
       SEC            
       SBC.wy $0088,Y 
       CMP    #$0E    
       BMI    LF4BF   
       JMP    LF549   
LF4BF: LDA    $FB     
       BEQ    LF4CA   
       LDA    $FC     
       BEQ    LF4D7   
       JMP    LF51C   
LF4CA: LDA    $86     
       AND    #$01    
       BNE    LF522   
LF4D0: LDA    #$FF    
       STA    $FD     
       JMP    LF549   
LF4D7: LDA    $86     
       AND    #$01    
       BNE    LF52D   
       JMP    LF4D0   
LF4E0: LDX    $FD     
       LDY    $FB     
       LDA    $88,X   
       SEC            
       SBC.wy $0088,Y 
       CMP    #$0E    
       BMI    LF50E   
       LDA    $FA     
       BEQ    LF51C   
       LDA    $FB     
       BEQ    LF4FF   
       LDA    $86     
       AND    #$01    
       BNE    LF52D   
       JMP    LF508   
LF4FF: LDA    $86     
       AND    #$01    
       BNE    LF508   
       JMP    LF522   
LF508: LDX    #$FA    
       TXS            
       JMP    LF549   
LF50E: LDX    $FD     
       LDY    $FA     
       LDA    $88,X   
       SEC            
       SBC.wy $0088,Y 
       CMP    #$0F    
       BMI    LF537   
LF51C: LDA    $86     
       AND    #$01    
       BNE    LF52D   
LF522: LDA    $FD     
       STA    $FC     
       LDA    #$FF    
       STA    $FD     
       JMP    LF549   
LF52D: LDA    $FA     
       STA    $FB     
       LDX    #$FA    
       TXS            
       JMP    LF549   
LF537: LDA    $86     
       AND    #$01    
       BNE    LF546   
       LDA    #$FF    
       STA    $FC     
       STA    $FD     
       JMP    LF549   
LF546: LDX    #$FB    
       TXS            
LF549: LDA    #$00    
       STA    $AE     
       LDA    $86     
       AND    #$04    
       BNE    LF557   
       LDA    #$18    
       STA    $AE     
LF557: LDX    #$03    
LF559: LDA    #$FE    
       CMP    $97,X   
       BNE    LF56B   
       LDA    #$BC    
       CLC            
       ADC    $B3,X   
       ADC    $AE     
       SEC            
       SBC    $88,X   
       STA    $93,X   
LF56B: DEX            
       BPL    LF559   
       LDX    #$03    
LF570: LDY    $9C,X   
       JSR    LFBB5   
       STY    $AE     
       EOR    #$07    
       ASL            
       ASL            
       ASL            
       ASL            
       CLC            
       ADC    $AE     
       STA    $A1,X   
       DEX            
       BPL    LF570   
       LDA    #$24    
       EOR    $84     
       AND    $83     
       STA    $CA     
       STA    COLUP1  
       LDA    $D6     
       CMP    #$15    
       BMI    LF5A1   
       LDA    $86     
       AND    #$08    
       BNE    LF5A1   
       LDA    #$40    
       AND    $83     
       STA    $CA     
LF5A1: LDX    #$03    
LF5A3: LDA    #$FE    
       CMP    $97,X   
       BNE    LF5AE   
       LDA    #$82    
       JMP    LF5B0   
LF5AE: LDA    #$06    
LF5B0: EOR    $84     
       AND    $83     
       STA    $CA,X   
       DEX            
       BNE    LF5A3   
       LDA    $C5     
       EOR    $84     
       AND    $83     
       STA    COLUBK  
LF5C1: LDA    INTIM   
       BNE    LF5C1   
       STA    WSYNC   
       LDY    #$00    
       STY    VBLANK  
       LDA    #$80    
       EOR    $84     
       AND    $83     
       STA    COLUPF  
       LDA    #$42    
       EOR    $84     
       AND    $83     
       STA    $AE     
       LDA    #$03    
       STA    $8D     
       STA    RESP0   
       STA    RESM0   
       LDX    $D3     
       LDA    LFDD2,X 
       STA    $8E     
       STA    RESP1   
       LDA    $D5     
       SEC            
       SBC    #$04    
LF5F2: BCS    LF5FB   
       LDA    #$30    
       STA    $8D     
       JMP    LF608   
LF5FB: CMP    #$02    
       BEQ    LF604   
       STA    NUSIZ1  
       JMP    LF608   
LF604: LDA    #$03    
       STA    NUSIZ1  
LF608: STA    WSYNC   
       CPY    $D6     
       BNE    LF612   
       LDA    $AE     
       STA    COLUP0  
LF612: LDA    LFEA3,Y 
       STA    GRP0    
       CPY    $8E     
       BNE    LF61F   
       LDA    #$FF    
       STA    ENAM0   
LF61F: CPY    #$0E    
       BEQ    LF63B   
       TYA            
       SEC            
       SBC    $8D     
       BMI    LF62F   
       TAX            
       LDA    LFEBC,X 
       STA    GRP1    
LF62F: INY            
       LDA    #$00    
       STA    ENAM0   
       CPY    #$19    
       BEQ    LF64C   
       JMP    LF608   
LF63B: INY            
       STY    $8D     
       LDA    $D5     
       CMP    #$03    
       BPL    LF604   
       AND    #$03    
       SEC            
       SBC    #$01    
       JMP    LF5F2   
LF64C: LDA    $80     
       STA    WSYNC   
       AND    #$03    
       TAX            
       LDA    $C5     
       ORA    LFDDC,X 
       EOR    $84     
       AND    $83     
       STA    COLUPF  
       LDY    #$00    
       STY    GRP0    
       STY    NUSIZ1  
       LDA    #$FE    
       STA    $A6     
       STA    $A8     
       LDA    #$E6    
       STA    $A5     
       STA    $A7     
       STY    $8D     
       STY    $8E     
       INY            
       JMP    LF6BA   
LF678: LDA    LFF09,X 
       STA    PF0     
       CPY    $8E     
       BCS    LF687   
       NOP            
       NOP            
       NOP            
       JMP    LF68B   
LF687: LDA    ($A7),Y 
       STA    GRP1    
LF68B: LDA    ($C1),Y 
       STA    PF1     
       LDA    ($C3),Y 
       STA    PF2     
       INY            
       LDX    #$FE    
       STY    $AE     
       CPY    $8E     
       BCC    LF6AD   
       LDA    ($A7),Y 
       BNE    LF6AF   
       LDA    #$E6    
       SBC    $AE     
       STA    $A7     
       STX    $A8     
       LDA    #$00    
       JMP    LF6B8   
LF6AD: PHA            
       PLA            
LF6AF: STA    $AE     
       NOP            
       CPY    $8E     
       BCC    LF6BA   
       LDA    ($A7),Y 
LF6B8: STA    GRP1    
LF6BA: STA    WSYNC   
       CPY    $8D     
       BCC    LF721   
       LDA    ($A5),Y 
       STA    GRP0    
       BNE    LF721   
       PLA            
       PHA            
       PLA            
       BMI    LF71F   
       TAX            
       LDA    $8F,X   
       STA    REFP0   
       LDA    $CA,X   
       STA    COLUP0  
       LDA    $88,X   
       STA    $8D     
       LDA    $97,X   
       STA    $A6     
       LDA    $93,X   
       STA    $A5     
       LDA    $A1,X   
       INY            
       STA    HMP0    
       AND    #$0F    
       TAX            
       CPY    $8E     
       BCS    LF6F2   
       NOP            
       NOP            
       NOP            
       JMP    LF6F6   
LF6F2: LDA    ($A7),Y 
       STA    GRP1    
LF6F6: DEX            
       BPL    LF6F6   
       STA    RESP0   
       INY            
       CPY    $8E     
       STA    WSYNC   
       STA    HMOVE   
       BCS    LF70A   
       NOP            
       NOP            
       NOP            
       JMP    LF70E   
LF70A: LDA    ($A7),Y 
       STA    GRP1    
LF70E: CPY    $8D     
       BCS    LF718   
       NOP            
       NOP            
       NOP            
       JMP    LF71C   
LF718: LDA    ($A5),Y 
       STA    GRP0    
LF71C: JMP    LF756   
LF71F: STA    $8D     
LF721: INY            
       STA    WSYNC   
       CPY    $8D     
       BCC    LF72C   
       LDA    ($A5),Y 
       STA    GRP0    
LF72C: CPY    $8E     
       BCC    LF734   
       LDA    ($A7),Y 
       STA    GRP1    
LF734: INY            
       CPY    $8D     
       STA    WSYNC   
       BCS    LF741   
       NOP            
       NOP            
       NOP            
       JMP    LF745   
LF741: LDA    ($A5),Y 
       STA    GRP0    
LF745: CPY    $8E     
       BCS    LF74F   
       NOP            
       NOP            
       NOP            
       JMP    LF753   
LF74F: LDA    ($A7),Y 
       STA    GRP1    
LF753: NOP            
       NOP            
       NOP            
LF756: NOP            
       INY            
       PHA            
       PLA            
       PHA            
       PLA            
       NOP            
       NOP            
       NOP            
       STA    HMCLR   
       CPY    $8D     
       BCS    LF76B   
       NOP            
       NOP            
       NOP            
       JMP    LF76F   
LF76B: LDA    ($A5),Y 
       STA    GRP0    
LF76F: CPY    $8C     
       BEQ    LF779   
       JMP    LF776   
LF776: JMP    LF77D   
LF779: LDA    #$FF    
       STA    ENABL   
LF77D: CPY    $8E     
       BCC    LF7D8   
       LDA    ($A7),Y 
       STA    GRP1    
       BNE    LF7D8   
       PLA            
       BMI    LF7D6   
       TAX            
       LDA    $8F,X   
       STA    REFP1   
       LDA    $CA,X   
       STA    COLUP1  
       LDA    $88,X   
       STA    $8E     
       LDA    $97,X   
       STA    $A8     
       LDA    $93,X   
       STA    $A7     
       LDA    $A1,X   
       INY            
       STA    HMP1    
       AND    #$0F    
       TAX            
       CPY    $8D     
       BCS    LF7B1   
       NOP            
       NOP            
       NOP            
       JMP    LF7B5   
LF7B1: LDA    ($A5),Y 
       STA    GRP0    
LF7B5: DEX            
       BPL    LF7B5   
       STA    RESP1   
       INY            
       CPY    $8D     
       STA    WSYNC   
       STA    HMOVE   
       BCC    LF7C7   
       LDA    ($A5),Y 
       STA    GRP0    
LF7C7: CPY    $8E     
       BCC    LF7CF   
       LDA    ($A7),Y 
       STA    GRP1    
LF7CF: LDA    #$00    
       STA    ENABL   
       JMP    LF802   
LF7D6: STA    $8E     
LF7D8: INY            
       STA    WSYNC   
       CPY    $8D     
       BCC    LF7E3   
       LDA    ($A5),Y 
       STA    GRP0    
LF7E3: CPY    $8E     
       BCC    LF7EB   
       LDA    ($A7),Y 
       STA    GRP1    
LF7EB: INY            
       CPY    $8D     
       STA    WSYNC   
       BCC    LF7F6   
       LDA    ($A5),Y 
       STA    GRP0    
LF7F6: CPY    $8E     
       BCC    LF7FE   
       LDA    ($A7),Y 
       STA    GRP1    
LF7FE: LDA    #$00    
       STA    ENABL   
LF802: CPY    $8D     
       BCC    LF816   
       LDA    ($A5),Y 
       BNE    LF816   
       STY    $AE     
       LDA    #$E6    
       SBC    $AE     
       STA    $A5     
       LDA    #$FE    
       STA    $A6     
LF816: INY            
       STA    HMCLR   
       CPY    $8D     
       STA    WSYNC   
       BCS    LF825   
       NOP            
       NOP            
       NOP            
       JMP    LF829   
LF825: LDA    ($A5),Y 
       STA    GRP0    
LF829: CPY    $8E     
       BCS    LF833   
       NOP            
       NOP            
       NOP            
       JMP    LF837   
LF833: LDA    ($A7),Y 
       STA    GRP1    
LF837: CPY    #$87    
       BEQ    LF857   
       INY            
       NOP            
       PHA            
       PLA            
       PHA            
       PLA            
       TYA            
       LSR            
       LSR            
       LSR            
       TAX            
       CPY    $8D     
       BCS    LF850   
       NOP            
       NOP            
       NOP            
       JMP    LF854   
LF850: LDA    ($A5),Y 
       STA    GRP0    
LF854: JMP    LF678   
LF857: STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       LDA    #$FF    
       STA    PF2     
       STA    PF1     
       LDA    #$06    
       STA    TIM64T  
       LDX    #$FF    
       TXS            
       LDX    #$02    
       LDA    #$10    
       STA    HMP1    
       NOP            
       NOP            
       STA    RESP0   
       STA    RESP1   
LF879: LDA    #$FF    
       PHA            
       LDA    $DB,X   
       AND    #$0F    
       TAY            
       LDA    LFDB9,Y 
       PHA            
       LDA    #$FF    
       PHA            
       LDA    $DB,X   
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    LFDB9,Y 
       PHA            
       DEX            
       BPL    LF879   
       LDX    #$06    
LF898: PLA            
       CMP    #$46    
       BNE    LF8A8   
       DEX            
       BEQ    LF8B0   
       LDA    #$96    
       PHA            
       PLA            
       PLA            
       JMP    LF898   
LF8A8: CPX    #$06    
       BEQ    LF8B3   
       TSX            
       DEX            
       DEX            
       TXS            
LF8B0: LDA    #$26    
       PHA            
LF8B3: LDA    INTIM   
       BNE    LF8B3   
       STY    WSYNC   
       STA    HMOVE   
       LDA    #$24    
       EOR    $84     
       AND    $83     
       STA    COLUPF  
       LDA    #$00    
       STA    REFP0   
       STA    REFP1   
       STA    GRP0    
       STA    GRP1    
       LDA    #$00    
       EOR    $84     
       AND    $83     
       STA    COLUP1  
       STA    COLUP0  
       LDA    #$06    
       STA    $DF     
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    VDELP0  
       STA    VDELP1  
LF8E6: LDY    $DF     
       LDA    ($FE),Y 
       STA    $DE     
       STA    WSYNC   
       LDA    ($FC),Y 
       TAX            
       LDA    ($F4),Y 
       NOP            
       STA    GRP0    
       LDA    ($F6),Y 
       STA    GRP1    
       LDA    ($F8),Y 
       STA    GRP0    
       LDA    ($FA),Y 
       LDY    $DE     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       DEC    $DF     
       BPL    LF8E6   
       STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    VDELP0  
       STA    VDELP1  
       LDA    #$20    
       STA    NUSIZ0  
       LDA    #$06    
       EOR    $84     
       AND    $83     
       STA    COLUP0  
       LDA    #$02    
       STA    WSYNC   
       STA    VBLANK  
       LDA    #$2D    
       STA    TIM64T  
       LDA    $E0     
       BNE    LF966   
       LDX    #$00    
       STX    $9B     
       LDA    #$FE    
       CMP    $97     
       BNE    LF952   
       LDA    SWCHA   
       STA    $AD     
       JSR    LFB94   
       LDA    $9B     
       BNE    LF952   
       LDA    $A9     
       STA    $AD     
       JSR    LFB94   
LF952: LDA    $A9     
       CMP    #$FF    
       BEQ    LF966   
       LDX    #$03    
LF95A: LDA    #$FE    
       CMP    $97,X   
       BNE    LF963   
       JSR    LFAB6   
LF963: DEX            
       BNE    LF95A   
LF966: LDA    $C0     
       BNE    LF9B5   
       LDA    $BF     
       CMP    #$30    
       BMI    LF973   
       JMP    LFA0B   
LF973: LDA    INPT4   
       BPL    LF983   
       LDA    $BF     
       BEQ    LF97E   
       JMP    LFA0B   
LF97E: STA    $8C     
       JMP    LFA2C   
LF983: LDA    $A9     
       BEQ    LF98B   
       CMP    #$FF    
       BNE    LF992   
LF98B: LDA    $BF     
       BNE    LFA0B   
       JMP    LFA2C   
LF992: LDA    $B3     
       BNE    LF9B5   
       LDA    $88     
       CLC            
       ADC    #$03    
       STA    $8C     
       LDA    #$55    
       STA    $BF     
       LDA    $8F     
       BEQ    LF9AD   
       LDA    $9C     
       CLC            
       ADC    #$09    
       JMP    LF9E0   
LF9AD: LDA    $9C     
       SEC            
       SBC    #$08    
       JMP    LF9E0   
LF9B5: LDA    $88     
       STA    $C0     
       AND    #$07    
       CMP    #$01    
       BNE    LFA2C   
       LDA    #$00    
       STA    $C0     
       LDA    #$55    
       STA    $BF     
       LDA    $A9     
       CMP    #$DF    
       BEQ    LF9D5   
       LDA    $88     
       CLC            
       ADC    #$0B    
       JMP    LF9DA   
LF9D5: LDA    $88     
       SEC            
       SBC    #$05    
LF9DA: STA    $8C     
       LDY    $9C     
       INY            
       TYA            
LF9E0: TAY            
       STA    $A0     
       JSR    LFBB5   
       STA    WSYNC   
       STA    HMCLR   
       EOR    #$07    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    HMBL    
LF9F2: DEY            
       BPL    LF9F2   
       STA    RESBL   
       LDA    $D7     
       ADC    #$80    
       STA    $D7     
       BCC    LFA0B   
       INC    $D6     
       LDA    $D6     
       CMP    #$19    
       BNE    LFA0B   
       LDA    #$C8    
       STA    $CE     
LFA0B: DEC    $BF     
       LDA    $BF     
       CMP    #$40    
       BCS    LFA1F   
       LSR            
       AND    #$07    
       STA    $C5     
       LDA    #$01    
       STA    CTRLPF  
       JMP    LFA2C   
LFA1F: AND    #$02    
       BEQ    LFA28   
       LDA    #$21    
       JMP    LFA2A   
LFA28: LDA    #$31    
LFA2A: STA    CTRLPF  
LFA2C: STA    WSYNC   
       STA    HMOVE   
       LDA    $A9     
       BNE    LFA38   
       LDA    INPT4   
       BPL    LFA3F   
LFA38: LDA    SWCHB   
       AND    #$01    
       BNE    LFA4A   
LFA3F: LDY    $82     
       LDX    #$84    
       LDA    $81     
       STA    $80     
       JMP    LF00E   
LFA4A: LDA    INTIM   
       BNE    LFA4A   
       JMP    LF050   
LFA52: SED            
       CLC            
       LDY    #$02    
LFA56: ADC.wy $00D8,Y 
       STA.wy $00D8,Y 
       LDA    #$00    
       DEY            
       BPL    LFA56   
       CLD            
       RTS            

LFA63: LDA    $82     
       ASL            
       EOR    $82     
       ASL            
       EOR    $82     
       ASL            
       ASL            
       EOR    $82     
       ASL            
       ROL    $82     
       LDA    $82     
       RTS            

LFA75: LDA    #$00    
       STA    $8F,X   
       LDA    SWCHB   
       AND    #$80    
       BNE    LFA8D   
       LDA    $D4     
       INC    $D4     
       AND    #$0F    
       TAY            
       LDA    LFDA9,Y 
       JMP    LFAA3   
LFA8D: INC    $82     
       LDA    $82     
       AND    #$0F    
       TAY            
       LDA    LFDA9,Y 
       CMP    $9D     
       BEQ    LFA8D   
       CMP    $9E     
       BEQ    LFA8D   
       CMP    $9F     
       BEQ    LFA8D   
LFAA3: STA    $9C,X   
       LDA    LFD99,Y 
       STA    $88,X   
       LDA    #$FD    
       STA    $97,X   
       LDA    #$82    
       SEC            
       SBC    $88,X   
       STA    $93,X   
       RTS            

LFAB6: LDA    $A9,X   
       STA    $AE     
       ORA    #$AF    
       EOR    #$FF    
       BEQ    LFAC5   
       ASL    $AE     
       JMP    LFAC8   
LFAC5: SEC            
       ROR    $AE     
LFAC8: LDA    #$00    
       STA    $9B     
       LDA    $88,X   
       CMP    $88     
       BCS    LFAD9   
       LDA    #$DF    
       STA    $AD     
       JMP    LFADD   
LFAD9: LDA    #$EF    
       STA    $AD     
LFADD: LDA    $9C,X   
       CMP    $9C     
       BCC    LFAEA   
       LDA    #$BF    
       AND    $AD     
       JMP    LFAEE   
LFAEA: LDA    #$7F    
       AND    $AD     
LFAEE: STA    $AF     
       EOR    #$FF    
       AND    $AE     
       EOR    #$FF    
       STA    $AD     
       JSR    LFB1A   
       LDA    $9B     
       BNE    LFB19   
       LDA    $AF     
       EOR    #$F0    
       EOR    #$FF    
       AND    $AE     
       EOR    #$FF    
       STA    $AD     
       JSR    LFB1A   
       LDA    $9B     
       BNE    LFB19   
       LDA    $AE     
       STA    $AD     
       JSR    LFB94   
LFB19: RTS            

LFB1A: LDA    SWCHB   
       AND    #$40    
       BEQ    LFB30   
       JSR    LFA63   
       AND    #$01    
       BNE    LFB2C   
       JSR    LFB42   
       RTS            

LFB2C: JSR    LFB6B   
       RTS            

LFB30: CPX    #$02    
       BNE    LFB38   
       JSR    LFB6B   
       RTS            

LFB38: BMI    LFB3E   
       JSR    LFB42   
       RTS            

LFB3E: JSR    LFB94   
       RTS            

LFB42: LDA    $AD     
       ROL            
       BMI    LFB51   
       JSR    LFC12   
       LDA    $9B     
       BNE    LFB6A   
       JMP    LFB5A   
LFB51: BCS    LFB5A   
       JSR    LFBCC   
       LDA    $9B     
       BNE    LFB6A   
LFB5A: LDA    $AD     
       ROL            
       ROL            
       ROL            
       BPL    LFB67   
       BCS    LFB6A   
       JSR    LFC9D   
       RTS            

LFB67: JSR    LFC55   
LFB6A: RTS            

LFB6B: LDA    $AD     
       ROL            
       ROL            
       ROL            
       BPL    LFB7E   
       BCS    LFB85   
       JSR    LFC9D   
       LDA    $9B     
       BNE    LFB93   
       JMP    LFB85   
LFB7E: JSR    LFC55   
       LDA    $9B     
       BNE    LFB93   
LFB85: LDA    $AD     
       ROL            
       BMI    LFB8E   
       JSR    LFC12   
       RTS            

LFB8E: BCS    LFB93   
       JSR    LFBCC   
LFB93: RTS            

LFB94: LDA    $AD     
       ROL            
       BMI    LFB9F   
       JSR    LFC12   
       JMP    LFBA4   
LFB9F: BCS    LFBA4   
       JSR    LFBCC   
LFBA4: LDA    $AD     
       ROL            
       ROL            
       ROL            
       BPL    LFBB1   
       BCS    LFBB4   
       JSR    LFC9D   
       RTS            

LFBB1: JSR    LFC55   
LFBB4: RTS            

LFBB5: INY            
       TYA            
       AND    #$0F    
       STA    $AE     
       TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       CLC            
       ADC    $AE     
       CMP    #$0F    
       BCC    LFBCB   
       SBC    #$0F    
       INY            
LFBCB: RTS            

LFBCC: LDA    $9C,X   
       AND    #$03    
       BNE    LFBE8   
       LDA    $88,X   
       AND    #$07    
       CMP    #$01    
       BNE    LFC11   
       LDA    $9C,X   
       LSR            
       LSR            
       ADC    #$03    
       LDY    $88,X   
       DEY            
       JSR    LFCE5   
       BCS    LFC11   
LFBE8: LDA    #$FF    
       STA    $9B     
       LDA    #$00    
       STA    $8F,X   
       LDA    $B3,X   
       BNE    LFBFD   
       LDA    $B7,X   
       CLC            
       ADC    $BB,X   
       STA    $BB,X   
       BCC    LFC11   
LFBFD: LDA    #$00    
       STA    $B3,X   
       LDA    #$7F    
       STA    $A9,X   
       INC    $9C,X   
       LDA    $9C,X   
       CMP    #$8D    
       BCC    LFC11   
       LDA    #$0C    
       STA    $9C,X   
LFC11: RTS            

LFC12: LDA    $9C,X   
       AND    #$03    
       BNE    LFC2D   
       LDA    $88,X   
       AND    #$07    
       CMP    #$01    
       BEQ    LFC21   
       RTS            

LFC21: LDA    $9C,X   
       LSR            
       LSR            
       LDY    $88,X   
       DEY            
       JSR    LFCE5   
       BCS    LFC54   
LFC2D: LDA    #$FF    
       STA    $8F,X   
       STA    $9B     
       LDA    $B3,X   
       BNE    LFC40   
       LDA    $B7,X   
       CLC            
       ADC    $BB,X   
       STA    $BB,X   
       BCC    LFC54   
LFC40: LDA    #$00    
       STA    $B3,X   
       LDA    #$BF    
       STA    $A9,X   
       DEC    $9C,X   
       LDA    $9C,X   
       CMP    #$0B    
       BCS    LFC54   
       LDA    #$8C    
       STA    $9C,X   
LFC54: RTS            

LFC55: LDA    $9C,X   
       AND    #$03    
       BEQ    LFC5C   
       RTS            

LFC5C: LDA    $88,X   
       AND    #$07    
       CMP    #$01    
       BNE    LFC81   
       LDA    $88,X   
       SEC            
       SBC    #$08    
       TAY            
       DEY            
       LDA    $9C,X   
       LSR            
       LSR            
       ADC    #$01    
       STA    $B0     
       JSR    LFCE5   
       BCS    LFC9C   
       INC    $B0     
       LDA    $B0     
       JSR    LFCE5   
       BCS    LFC9C   
LFC81: LDA    #$0C    
       STA    $B3,X   
       LDA    $9B     
       BNE    LFC96   
       LDA    #$FF    
       STA    $9B     
       LDA    $B7,X   
       CLC            
       ADC    $BB,X   
       STA    $BB,X   
       BCC    LFC9C   
LFC96: LDA    #$EF    
       STA    $A9,X   
       DEC    $88,X   
LFC9C: RTS            

LFC9D: LDA    $9C,X   
       AND    #$03    
       BEQ    LFCA4   
       RTS            

LFCA4: LDA    $88,X   
       AND    #$07    
       CMP    #$01    
       BNE    LFCC9   
       LDA    $88,X   
       CLC            
       ADC    #$08    
       TAY            
       DEY            
       LDA    $9C,X   
       LSR            
       LSR            
       ADC    #$01    
       STA    $B0     
       JSR    LFCE5   
       BCS    LFCE4   
       INC    $B0     
       LDA    $B0     
       JSR    LFCE5   
       BCS    LFCE4   
LFCC9: LDA    #$0C    
       STA    $B3,X   
       LDA    $9B     
       BNE    LFCDE   
       LDA    #$FF    
       STA    $9B     
       LDA    $B7,X   
       CLC            
       ADC    $BB,X   
       STA    $BB,X   
       BCC    LFCE4   
LFCDE: LDA    #$DF    
       STA    $A9,X   
       INC    $88,X   
LFCE4: RTS            

LFCE5: CMP    #$15    
       BMI    LFCF0   
       STA    $B1     
       LDA    #$29    
       SEC            
       SBC    $B1     
LFCF0: STX    $B1     
       CMP    #$05    
       BMI    LFCFD   
       CMP    #$0D    
       BMI    LFD14   
       JMP    LFD21   
LFCFD: STA    $B2     
       TYA            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    #$05    
       SEC            
       SBC    $B2     
       TAX            
       LDA    LFF09,Y 
LFD0D: ASL            
       DEX            
       BNE    LFD0D   
       LDX    $B1     
       RTS            

LFD14: SEC            
       SBC    #$04    
       TAX            
       LDA    ($C1),Y 
LFD1A: ASL            
       DEX            
       BNE    LFD1A   
       LDX    $B1     
       RTS            

LFD21: SEC            
       SBC    #$0C    
       TAX            
       LDA    ($C3),Y 
LFD27: LSR            
       DEX            
       BNE    LFD27   
       LDX    $B1     
       RTS            

LFD2E: .byte $C1,$E1,$CD,$12,$06,$DD,$E1,$FD,$E1,$DD,$36,$00,$0C,$DD,$46,$0A
       .byte $DD,$77,$0A,$DD,$70,$0B,$DD,$7E,$07,$DD,$77,$06,$3A,$86,$B6,$DD
       .byte $77,$07,$DD,$36,$08,$07,$DD,$E5,$E1,$FD,$46,$04,$0E,$06,$CD,$5B
       .byte $02,$C3,$6F,$1B,$DD,$56,$07,$DD,$5E,$0A,$21,$40,$B6,$06,$20,$4E
       .byte $23,$7E,$23,$BA,$20,$04,$79,$BB,$28,$3D,$10,$F3,$21,$97,$B6,$CD
       .byte $88,$05,$D5,$21,$3C,$7E,$5A,$5A,$5A,$5A,$FF,$00,$00,$00,$00,$00
       .byte $79,$76,$FC,$FF,$5A,$BD,$00,$00,$00,$00,$00
LFD99: .byte $81,$61,$39,$09,$19,$41,$09,$81,$29,$59,$11,$69,$49,$31,$61,$21
LFDA9: .byte $54,$4C,$44,$54,$74,$10,$20,$10,$88,$24,$88,$38,$54,$80,$88,$30
LFDB9: .byte $46,$20,$33,$3A,$59,$2D,$52,$1A,$4C,$40,$60,$67,$6E,$75,$7C
LFDC8: .byte $10,$20,$30,$40,$50,$60,$70,$80,$90,$90
LFDD2: .byte $19,$18,$17,$15,$13,$10,$0D,$09,$07,$00
LFDDC: .byte $16,$B6,$2A,$76,$AF,$FD,$77,$14,$FD,$77,$15,$DD,$36,$0A,$FF,$DD
       .byte $36,$0B,$FF,$01,$00,$01,$CD,$9A,$09,$28,$02,$F7,$02,$FD,$75,$10
       .byte $FD,$74,$11,$36,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$00,$00,$00,$00
       .byte $00,$80,$01,$10,$39,$39,$3C,$3F,$7C,$9F,$F9,$73,$01,$09,$00,$01
       .byte $00,$00,$80,$03,$CF,$C9,$CF,$C8,$E4,$7C,$1C,$F0,$00,$09,$08,$0E
       .byte $04,$00,$80,$02,$CC,$C0,$C9,$C0,$9F,$FC,$FC,$7E,$0C,$0F,$01,$0E
       .byte $80,$00,$00,$00,$3C,$38,$39,$38,$1F,$CC,$F3,$CE,$00,$01,$20,$01
       .byte $80,$0F,$10,$03,$3F,$38,$27,$F9,$E7,$C0,$93,$73,$20,$21,$20,$00
       .byte $00,$09,$80,$70,$06,$27,$04,$3E,$7E,$79,$13,$02,$E6,$01,$E4,$00
       .byte $02,$01,$F3,$72,$06,$38,$04,$CF,$72,$98,$00,$13,$3E,$3E,$3C,$03
       .byte $12,$9E,$73,$80,$00,$00,$00,$30,$80,$00,$03,$1C,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF
LFE90: .byte $60,$68,$70,$80,$88,$90,$98,$A0,$A8,$B0,$B8,$C0,$D0,$D8,$E0,$F0
       .byte $F8,$FF,$F0
LFEA3: .byte $1E,$33,$2D,$6F,$A9,$AD,$ED,$B3,$BF,$B3,$AD,$AD,$A1,$AD,$AD,$AD
       .byte $BF,$73,$2D,$2F,$33,$3D,$2D,$33,$3F
LFEBC: .byte $78,$74,$FF,$FF,$BD,$5A,$A5,$00,$00,$00,$00,$00,$3C,$24,$3C,$5A
       .byte $7E,$3C,$42,$00,$00,$00,$00,$00,$78,$74,$FF,$FF,$5A,$BD,$42,$00
       .byte $00,$00,$00,$00,$3C,$24,$3C,$5A,$3C,$7E,$00,$00,$00,$00,$00,$88
       .byte $1F,$6F,$29,$11,$40,$B6,$19,$DD,$7E,$0A,$E6,$80,$B6,$47,$C5,$E5
       .byte $DD,$7E,$03
LFEFF: .byte $8F,$9D,$A9,$B5,$C1,$CD,$D9,$E5,$F1,$F1
LFF09: .byte $80,$80,$80,$80,$80,$00,$80,$80,$80,$00,$80,$80,$80,$80,$80,$80
       .byte $80,$30,$30,$30,$18,$0C,$46,$7E,$18,$18,$18,$18,$78,$38,$54,$14
       .byte $38,$50,$54,$38,$7C,$46,$06,$7C,$60,$60,$7E,$60,$60,$3C,$06,$46
       .byte $7C,$3C,$46,$06,$0C,$06,$46,$3C,$46,$06,$3E,$66,$66,$3C,$66,$66
       .byte $66,$66,$66,$3C,$66,$66,$3C,$66,$66,$3C,$66,$66,$7C,$60,$62,$3C
       .byte $0C,$0C,$7E,$4C,$2C,$1C,$0C,$86,$89,$89,$E9,$86,$80,$F0,$48,$49
       .byte $31,$49,$49,$01,$00,$C7,$29,$27,$61,$06,$20,$C0,$54,$55,$55,$55
       .byte $28,$00,$00,$EE,$02,$EE,$28,$CE,$00,$00,$84,$29,$04,$A2,$09,$41
       .byte $14,$00,$00,$00,$00,$00,$46,$C9,$49,$49,$49,$49,$E6,$00,$00,$00
       .byte $00,$00,$00,$00,$C4,$2A,$2A,$4A,$8A,$8A,$E4,$00,$00,$00,$00,$00
       .byte $C4,$2A,$2A,$CA,$2A,$2A,$C4,$00,$00,$00,$00,$00,$A2,$A5,$A5,$F5
       .byte $25,$25,$22,$00,$00,$00,$00,$00,$E4,$8A,$CA,$2A,$2A,$2A,$C4,$00
       .byte $00,$00,$00,$00,$62,$85,$85,$E5,$95,$95,$62,$00,$00,$00,$00,$00
       .byte $E4,$2A,$2A,$4A,$8A,$8A,$84,$00,$00,$00,$00,$00,$44,$AA,$AA,$4A
       .byte $AA,$AA,$44,$00,$00,$00,$00,$00,$44,$AA,$AA,$6A,$2A,$AA,$44,$00
       .byte $00,$00,$00,$00,$F0,$00,$73
