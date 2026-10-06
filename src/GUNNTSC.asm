; Disassembly of roms/GUNNTSC.bin
; Disassembled Tue Oct  6 15:21:49 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/GUNNTSC.bin
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
AUDC0   =  $15
AUDC1   =  $16
AUDF0   =  $17
AUDF1   =  $18
AUDV0   =  $19
AUDV1   =  $1A
GRP0    =  $1B
GRP1    =  $1C
HMP0    =  $20
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296
LF100   =   $F100
LF300   =   $F300
LF500   =   $F500
LF600   =   $F600
LFC00   =   $FC00

       ORG $F000
LF000: LDA    #$00    
       STA    PF2     
       STA    COLUPF  
       NOP            
       NOP            
       NOP            
       NOP            
       STA    $F7     
       BEQ    LF04F   
LF00E: SEC            
       NOP            
       LDA    #$00    
       STA.w  $0006   
       BEQ    LF063   
LF017: SEC            
       NOP            
       LDA    #$00    
       STA    COLUP1  
       LDA    $F8     
       STA    PF2     
       LDA    #$00    
       BEQ    LF083   
LF025: STA    WSYNC   
       STA    CXCLR   
       STA    VBLANK  
       JSR    LFB00   
LF02E: TXA            
       LDX    #$1F    
       TXS            
       TAX            
       LSR            
       STA    WSYNC   
       TAY            
       CMP    $88     
       PHP            
       TYA            
       SEC            
       SBC    $89     
       ADC    $8A     
       BCC    LF000   
       LDA    ($AF),Y 
       STA.w  $0008   
       LDA    ($AB),Y 
       STA    PF2     
       STA    $F7     
       LDA    ($AD),Y 
LF04F: STA    PF2     
       STA    $F8     
       SEC            
       TXA            
       SBC    $84     
       ADC    #$0B    
       BCC    LF00E   
       TAY            
       LDA    ($B1),Y 
       STA    COLUP0  
       LDA.wy $00C1,Y 
LF063: CPX    $87     
       PHP            
       CPX    $86     
       PHP            
       STA    GRP0    
       LDA    $F7     
       SEC            
       STA    PF2     
       TXA            
       SBC    $85     
       ADC    #$0B    
       BCC    LF017   
       TAY            
       LDA    ($B3),Y 
       STA    COLUP1  
       LDA    $F8     
       STA    PF2     
       LDA.wy $00CC,Y 
LF083: STA    GRP1    
       DEX            
       BNE    LF02E   
       STX    PF2     
       STX    COLUPF  
       DEX            
       TXS            
       STA    WSYNC   
       LDA    #$02    
       STA    VBLANK  
       JSR    LF7A4   
       LDA    #$23    
       STA    TIM64T  
       LDA    $93     
       AND    #$06    
       BNE    LF0A5   
       JMP    LF12A   
LF0A5: LDY    #$03    
LF0A7: LDA    #$FF    
       STA.wy $00B9,Y 
       STA.wy $00BD,Y 
       DEY            
       BPL    LF0A7   
       LDA    $93     
       BPL    LF0CC   
       JSR    LF81C   
       LDY    #$78    
       LDA    $A3     
       BPL    LF0D1   
       LSR            
       LSR            
       LSR            
       LSR            
       AND    #$07    
       CLC            
       ADC    #$78    
       TAY            
       JMP    LF0D1   
LF0CC: JSR    LF813   
       LDY    #$6D    
LF0D1: LDX    #$0A    
       LDA    $93     
       AND    #$02    
       BEQ    LF0F0   
LF0D9: LDA    #$AA    
       STA    $F7     
       LDA    #$BB    
       STA    $F8     
       LDA    LF90A,Y 
       STA    $C1,X   
       DEY            
       DEX            
       BPL    LF0D9   
       LDA    #$80    
       STA    $B1     
       BNE    LF105   
LF0F0: LDA    #$BB    
       STA    $F7     
       LDA    #$AA    
       STA    $F8     
       LDA    LF90A,Y 
       STA    $CC,X   
       DEY            
       DEX            
       BPL    LF0F0   
       LDA    #$80    
       STA    $B3     
LF105: DEC    $A3     
       LDA    $A3     
       BNE    LF11B   
       LDA    $93     
       BPL    LF118   
       JSR    LF6E8   
       JSR    LF663   
       JMP    LF240   
LF118: JSR    LF709   
LF11B: LDA    $93     
       BPL    LF127   
       LDA    $F7     
       STA    $8D     
       LDA    $F8     
       STA    $8C     
LF127: JMP    LF240   
LF12A: JSR    LF4AD   
       LDA    $93     
       LSR            
       BCC    LF138   
       JSR    LF7B6   
       JMP    LF164   
LF138: LDA    $93     
       AND    #$06    
       BNE    LF164   
       LDA    $8B     
       ASL            
       ASL            
       BNE    LF164   
       LDA    $90     
       AND    #$18    
       CMP    #$10    
       BNE    LF164   
       SED            
       LDA    $8C     
       SEC            
       SBC    #$01    
       STA    $8C     
       BNE    LF163   
       LDA    $93     
       ORA    #$82    
       STA    $93     
       LDY    #$FF    
       STY    $A3     
       INY            
       STY    $FB     
LF163: CLD            
LF164: LDX    #$01    
LF166: LDA    WSYNC,X 
       AND    #$40    
       BEQ    LF187   
       LDA    $97,X   
       ORA    #$60    
       STA    $97,X   
       JSR    LF7A4   
       AND    #$1F    
       ADC    #$03    
       STA    $9B,X   
       JSR    LF7A4   
       AND    #$1F    
       ADC    LFFA4,X 
       ADC    #$04    
       STA    $9D,X   
LF187: LDA    $A5,X   
       EOR    #$FF    
       AND    #$0F    
       BEQ    LF1BA   
       LDY    LF9B6,X 
       CMP    #$01    
       BNE    LF199   
       LDY    LF9B8,X 
LF199: STY    $A1,X   
       AND    #$0F    
       BEQ    LF1BA   
       ASL            
       ASL            
       STA    $A5,X   
       INC    $A3,X   
       LDA    $A3,X   
       AND    #$18    
       LSR            
       LSR            
       LSR            
       ADC    $A5,X   
       TAY            
       TXA            
       ASL            
       TAX            
       LDA    LF6A6,Y 
       STA    $A7,X   
       TXA            
       LSR            
       TAX            
LF1BA: DEX            
       BPL    LF166   
       LDA    $A1     
       STA    $B1     
       LDA    $A2     
       STA    $B3     
       LDA    $94     
       BNE    LF23E   
       LDA    $8B     
       LSR            
       BCS    LF1E5   
       LDA    $98     
       AND    #$F0    
       BEQ    LF1D6   
       BNE    LF1FD   
LF1D6: LDX    #$07    
       LDA    $81     
       CMP    $9E     
       BMI    LF1E0   
       LDX    #$0B    
LF1E0: STX    $96     
       JMP    LF224   
LF1E5: LDA    $98     
       AND    #$F0    
       BEQ    LF1ED   
       BNE    LF1FD   
LF1ED: LDX    #$0D    
       LDA    $9C     
       ASL            
       CMP    $85     
       BMI    LF1F8   
       LDX    #$0E    
LF1F8: STX    $96     
       JMP    LF224   
LF1FD: LDX    #$FF    
       LDY    #$00    
       LDA    SWCHB   
       ASL            
       BCS    LF220   
       LDX    #$F0    
LF209: JSR    LF7A4   
       AND    #$07    
       TAY            
       LDA    $8B     
       LSR            
       LDA    LFE27,Y 
       BCS    LF21B   
       ORA    #$08    
       AND    #$0B    
LF21B: TAY            
       CPY    $96     
       BEQ    LF209   
LF220: STX    $95     
       STY    $96     
LF224: JSR    LF7A4   
       STA    $F7     
       LDA    #$1F    
       BIT    SWCHB   
       BVS    LF232   
       LDA    #$3F    
LF232: AND    $F7     
       ADC    #$01    
       LDX    $91     
       BEQ    LF23C   
       LDA    #$20    
LF23C: STA    $94     
LF23E: DEC    $94     
LF240: LDA    $8B     
       AND    #$01    
       BNE    LF256   
       LDA    $FB     
       BEQ    LF256   
       DEC    $FB     
       LDA    $FB     
       STA    AUDV0   
       INC    $FA     
       LDA    $FA     
       STA    AUDF0   
LF256: JSR    LF4A7   
       JMP    LF2BC   

START:
       SEI            
       CLD            
       LDX    #$FF    
       TXS            
       LDA    #$00    
LF263: STA    VSYNC,X 
       DEX            
       BNE    LF263   
       LDX    #$00    
LF26A: ADC    LF000,X 
       EOR    LF100,X 
       ADC    LF300,X 
       EOR    LF400,X 
       ADC    LF500,X 
       EOR    LF600,X 
       ADC    LF700,X 
       EOR    LF800,X 
       ADC    LF900,X 
       EOR    LFA00,X 
       ADC    LFB00,X 
       EOR    LFC00,X 
       ADC    LFD00,X 
       EOR    LFE00,X 
       ADC    LFF00,X 
       DEX            
       BNE    LF26A   
       CMP    #$1C    
       BEQ    LF29F   
       RTS            

LF29F: LDA    #$07    
       STA    $90     
       LDA    #$1C    
       STA    COLUBK  
       LDA    #$21    
       STA    CTRLPF  
       LDA    #$14    
       STA    $9B     
       STA    $9C     
       LDA    #$18    
       STA    $9D     
       LDA    #$88    
       STA    $9E     
       JMP    LF2F0   
LF2BC: STY    WSYNC   
       LDY    #$02    
       STY    VSYNC   
       STY    WSYNC   
       STY    WSYNC   
       STY    WSYNC   
       STA    VSYNC   
       LDA    #$2B    
       STA    TIM64T  
       LDA    $93     
       AND    #$06    
       BNE    LF2E4   
       LDY    #$06    
LF2D7: LDA    ($A9),Y 
       STA.wy $00CC,Y 
       LDA    ($A7),Y 
       STA.wy $00C1,Y 
       DEY            
       BPL    LF2D7   
LF2E4: LDA    SWCHB   
       CMP    $8F     
       BEQ    LF306   
       STA    $8F     
       LSR            
       BCS    LF2F9   
LF2F0: JSR    LF6E8   
       JSR    LF663   
       JMP    LF38E   
LF2F9: LSR            
       BCS    LF306   
       LDA    $90     
       CLC            
       ADC    #$08    
       STA    $90     
       JSR    LF6E8   
LF306: LDA    $8B     
       LDY    #$40    
       AND    #$01    
       BEQ    LF310   
       LDY    #$00    
LF310: STY    $F9     
       ASL            
       TAX            
       STX    $F8     
       LDA    NUSIZ1  
       BPL    LF31D   
       JSR    LFC02   
LF31D: INC    $F8     
       LDX    $F8     
       LDA    NUSIZ0  
       BPL    LF328   
       JSR    LFC02   
LF328: LDX    #$03    
LF32A: LDA    $BD,X   
       ORA    $F9     
       LDY    #$00    
       ASL            
       BCC    LF334   
       INY            
LF334: ROL            
       BCC    LF33B   
       ROL            
       JMP    LF344   
LF33B: ROL            
       BCS    LF342   
       DEC    $B9,X   
       BCC    LF344   
LF342: INC    $B9,X   
LF344: ROL            
       BCS    LF34B   
       DEC    $B5,X   
       BCC    LF34D   
LF34B: INC    $B5,X   
LF34D: ROR            
       ROR            
       ROR            
       DEY            
       BPL    LF334   
       INY            
       STY    $F7     
       LDA    $BD,X   
       LDY    $B9,X   
       CPY    #$04    
       BPL    LF360   
       ORA    #$20    
LF360: CPY    #$54    
       BMI    LF366   
       AND    #$DF    
LF366: LDY    $B5,X   
       CPY    #$02    
       BNE    LF370   
       ORA    #$10    
       STY    $F7     
LF370: CPY    #$A0    
       BNE    LF378   
       AND    #$EF    
       STY    $F7     
LF378: STA    $BD,X   
       LDA    SWCHB   
       AND    #$08    
       BNE    LF38B   
       LDA    $F7     
       BEQ    LF38B   
       LDA    #$FF    
       STA    $B9,X   
       STA    $BD,X   
LF38B: DEX            
       BPL    LF32A   
LF38E: LDY    #$03    
LF390: TYA            
       LSR            
       EOR    #$01    
       TAX            
       LDA.wy $00B5,Y 
       ADC    #$08    
       SBC    $80,X   
       BMI    LF3F7   
       SBC    #$08    
       BPL    LF3F7   
       LDA    $84,X   
       SBC.wy $00B9,Y 
       BMI    LF3F7   
       SBC    #$0B    
       BPL    LF3F7   
       STY    $F8     
       LDA    #$FF    
       STA.wy $00B9,Y 
       STA.wy $00BD,Y 
       CPX    #$01    
       BEQ    LF3CB   
       LDA    $CB     
       BEQ    LF3DB   
       LDA    LFFFE   
       STA    $CA     
       LDA    LFFFF   
       STA    $CB     
       BEQ    LF3F7   
LF3CB: LDA    $D6     
       BEQ    LF3DB   
       LDA    LFFFE   
       STA    $D5     
       LDA    LFFFF   
       STA    $D6     
       BEQ    LF3F7   
LF3DB: LDA    #$00    
       STA    $FB     
       LDA    $93     
       CPX    #$01    
       BEQ    LF3E9   
       ORA    #$02    
       BNE    LF3EB   
LF3E9: ORA    #$04    
LF3EB: STA    $93     
       JSR    LFC66   
       LDA    #$FF    
       STA    $A3     
       JMP    LF3FA   
LF3F7: DEY            
       BPL    LF390   
LF3FA: INC    $8B     
       LDA    $8B     
       AND    #$0F    
LF400: BNE    LF421   
       LDY    #$03    
LF404: LDX    $BD,Y   
       DEX            
       TXA            
       AND    #$0F    
       STA    $F7     
       BNE    LF414   
       LDX    #$FF    
       STX    $B9,Y   
       STX    $BD,Y   
LF414: LDA.wy $00BD,Y 
       AND    #$F0    
       ORA    $F7     
       STA.wy $00BD,Y 
       DEY            
       BPL    LF404   
LF421: LDA    $8B     
       AND    #$01    
       ASL            
       TAY            
       LDX    #$01    
LF429: LDA.wy $00B5,Y 
       STA    $82,X   
       LDA.wy $00B9,Y 
       STA    $86,X   
       INY            
       DEX            
       BPL    LF429   
       LDA    $8B     
       AND    #$01    
       TAY            
       LDX    #$FF    
       LDA.wy $0097,Y 
       AND    #$F0    
       BNE    LF447   
       LDX    $9B,Y   
LF447: STX    $88     
       LDA.wy $009D,Y 
       LDX    #$04    
       JSR    LF771   
       DEX            
       LDA    $83     
       JSR    LF771   
       DEX            
       LDA    $82     
       JSR    LF771   
       DEX            
       LDA    #$31    
       JSR    LF774   
       DEX            
       LDA    #$28    
       JSR    LF774   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$06    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$00    
       STA    REFP0   
       STA    REFP1   
       LDA    #$FF    
       STA    $F8     
       STA    $B0     
       STA    $AC     
       STA    $AE     
       STA    $A6     
       STA    $83     
       LDA    $8B     
       AND    #$03    
       BNE    LF4A1   
       LDA    $90     
       LSR            
       BCS    LF4A1   
       INC    $89     
       LSR            
       BCC    LF49B   
       INC    $89     
       INC    $89     
LF49B: LDA    $89     
       AND    #$3F    
       STA    $89     
LF4A1: JSR    LF4A7   
       JMP    LF025   
LF4A7: LDA    INTIM   
       BNE    LF4A7   
       RTS            

LF4AD: LDX    #$0C    
       BIT    SWCHB   
       BVS    LF4B6   
       LDX    #$86    
LF4B6: STX    $F7     
       LDA    SWCHA   
       AND    $95     
       ORA    $96     
       STA    $F8     
       LDX    REFP1   
       BMI    LF4D9   
       TAY            
       LDA    $93     
       LSR            
       BCC    LF4DC   
       LDA    $93     
       AND    #$FE    
       STA    $93     
       LDA    #$00    
       STA    AUDV0   
       STA    AUDV1   
       STA    $91     
LF4D9: JMP    LF550   
LF4DC: TYA            
       EOR    #$FF    
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       AND    #$08    
       BEQ    LF550   
       LDA    LF6D2,X 
       STA    $A7     
       LDA    $97     
       TAY            
       AND    #$0F    
       BEQ    LF4F9   
       DEC    $97     
       JMP    LF53D   
LF4F9: TYA            
       AND    #$F0    
       BEQ    LF53D   
       LDA    LF6DD,X 
       ORA    $F7     
       LDX    #$01    
LF505: LDY    $B9,X   
       BPL    LF53A   
       STA    $BD,X   
       LDA    $84     
       SEC            
       SBC    #$06    
       STA    $B9,X   
       LDA    $80     
       AND    #$FE    
       STA    $B5,X   
       LDA    $97     
       ORA    #$0F    
       TAY            
       LDA    $90     
       AND    #$18    
       CMP    #$08    
       BNE    LF52A   
       TYA            
       CLC            
       SBC    #$10    
       TAY            
LF52A: STY    $97     
       LDX    #$08    
       STX    AUDC0   
       LDX    #$10    
       STX    $FB     
       LDX    #$05    
       STX    $FA     
       LDX    #$00    
LF53A: DEX            
       BPL    LF505   
LF53D: LDA    #$00    
       STA    REFP0   
       STA    $9F     
       LDA    LF9B6   
       STA    $A1     
       LDA    $F8     
       ORA    #$F0    
       STA    $F8     
       BNE    LF556   
LF550: LDA    $97     
       AND    #$F0    
       STA    $97     
LF556: LDA    $90     
       AND    #$18    
       CMP    #$10    
       BEQ    LF57B   
       LDA    #$FF    
       LDX    $95     
       CPX    #$F0    
       BNE    LF570   
       LDA    $8B     
       BIT    SWCHB   
       BVS    LF570   
       ASL            
       ASL            
       ASL            
LF570: AND    PF0     
       BMI    LF57B   
       LDY    $F8     
       LDA    $93     
       LSR            
       BCC    LF57E   
LF57B: JMP    LF5F1   
LF57E: TYA            
       EOR    #$FF    
       AND    #$0F    
       TAX            
       AND    #$04    
       BEQ    LF57B   
       LDA    LF6D2,X 
       STA    $A9     
       LDA    $98     
       TAY            
       AND    #$0F    
       BEQ    LF599   
       DEC    $98     
       JMP    LF5DE   
LF599: TYA            
       AND    #$F0    
       BEQ    LF5DE   
       LDA    LF6DD,X 
       ORA    $F7     
       LDX    #$01    
LF5A5: LDY    $BB,X   
       BPL    LF5DB   
       STA    $BF,X   
       LDA    $85     
       SBC    #$05    
       STA    $BB,X   
       LDA    $81     
       SBC    #$06    
       AND    #$FE    
       STA    $B7,X   
       LDA    $98     
       ORA    #$0F    
       TAY            
       LDA    $90     
       AND    #$18    
       CMP    #$08    
       BNE    LF5CB   
       TYA            
       CLC            
       SBC    #$10    
       TAY            
LF5CB: STY    $98     
       LDX    #$08    
       STX    AUDC0   
       LDX    #$10    
       STX    $FB     
       LDX    #$05    
       STX    $FA     
       LDX    #$00    
LF5DB: DEX            
       BPL    LF5A5   
LF5DE: LDA    #$08    
       STA    REFP1   
       STA    $A0     
       LDA    LF9B7   
       STA    $A2     
       LDA    $F8     
       ORA    #$0F    
       STA    $F8     
       BNE    LF5F7   
LF5F1: LDA    $98     
       AND    #$F0    
       STA    $98     
LF5F7: LDA    $F8     
       LDX    #$01    
LF5FB: STA    $A5,X   
       LSR            
       TAY            
       BCS    LF611   
       INC    $84,X   
       LDA    $84,X   
       CMP    #$56    
       BNE    LF611   
       DEC    $84,X   
       LDA    $A5,X   
       ORA    #$01    
       STA    $A5,X   
LF611: TYA            
       LSR            
       TAY            
       BCS    LF626   
       DEC    $84,X   
       LDA    $84,X   
       CMP    #$0C    
       BNE    LF626   
       INC    $84,X   
       LDA    $A5,X   
       ORA    #$02    
       STA    $A5,X   
LF626: TYA            
       LSR            
       TAY            
       BCS    LF642   
       DEC    $80,X   
       LDA    $80,X   
       CMP    LFFA4,X 
       BNE    LF63C   
       INC    $80,X   
       LDA    $A5,X   
       ORA    #$04    
       STA    $A5,X   
LF63C: LDA    #$08    
       STA    REFP0,X 
       STA    $9F,X   
LF642: TYA            
       LSR            
       TAY            
       BCS    LF65E   
       INC    $80,X   
       LDA    $80,X   
       CMP    LFFA0,X 
       BNE    LF658   
       DEC    $80,X   
       LDA    $A5,X   
       ORA    #$08    
       STA    $A5,X   
LF658: LDA    #$00    
       STA    REFP0,X 
       STA    $9F,X   
LF65E: TYA            
       DEX            
       BPL    LF5FB   
       RTS            

LF663: LDY    $90     
       INY            
       TYA            
       AND    #$07    
       STA    $F7     
       TAX            
       LDA    LFDC7,X 
       STA    $89     
       LDA    LFDCF,X 
       STA    $8A     
       LDA    $90     
       AND    #$F8    
       ORA    $F7     
       STA    $90     
       LDA    $F7     
       ASL            
       TAX            
       LDA    LFDD7,X 
       STA    $AB     
       LDA    LFDD8,X 
       STA    $AC     
       LDA    LFDE7,X 
       STA    $AD     
       LDA    LFDE8,X 
       STA    $AE     
       LDY    #$0F    
LF698: LDA    ($AB),Y 
       STA.wy $00D7,Y 
       LDA    ($AD),Y 
       STA.wy $00E7,Y 
       DEY            
       BPL    LF698   
       RTS            

LF6A6: .byte $0B,$00,$0B,$12,$0B,$00,$0B,$12,$0B,$00,$0B,$12,$0B,$00,$0B,$12
       .byte $20,$19,$20,$27,$58,$51,$58,$5F,$3C,$35,$3C,$43,$0B,$00,$0B,$12
       .byte $20,$19,$20,$27,$58,$51,$58,$5F,$3C,$35,$3C,$43
LF6D2: .byte $0B,$0B,$0B,$0B,$2E,$66,$4A,$0B,$2E,$66,$4A
LF6DD: .byte $00,$00,$00,$00,$40,$20,$00,$00,$50,$30,$10
LF6E8: LDA    $93     
       AND    #$7F    
       STA    $93     
       LDX    #$00    
       STX    $8D     
       LDA    $90     
       AND    #$18    
       CMP    #$10    
       BNE    LF6FC   
       LDX    #$99    
LF6FC: STX    $8C     
       LDA    $93     
LF700: LSR            
       BCS    LF713   
       LDA    $93     
       ORA    #$01    
       STA    $93     
LF709: LDA    #$02    
       STA    $92     
       LDA    #$00    
       STA    $FB     
       STA    $91     
LF713: LDA    $93     
       AND    #$F9    
       STA    $93     
       LDA    #$00    
       STA    $A7     
       STA    $A9     
       LDA    #$F9    
       STA    $A8     
       STA    $AA     
       LDA    #$8A    
       STA    $B1     
       STA    $A1     
       LDA    #$F9    
       STA    $B2     
       LDA    #$95    
       STA    $B3     
       STA    $A2     
       LDA    #$F9    
       STA    $B4     
       LDX    #$03    
LF73B: LDA    #$FF    
       STA    $B9,X   
       STA    $BD,X   
       DEX            
       BPL    LF73B   
       LDA    #$60    
       STA    $97     
       STA    $98     
       LDX    #$0A    
LF74C: LDA    LF900,X 
       STA    $C1,X   
       STA    $CC,X   
       DEX            
       BPL    LF74C   
       JSR    LF7A4   
       AND    #$3F    
       ADC    #$0D    
       STA    $84     
       JSR    LF7A4   
       AND    #$3F    
       ADC    #$0D    
       STA    $85     
       LDA    #$14    
       STA    $80     
       LDA    #$84    
       STA    $81     
       RTS            

LF771: CLC            
       ADC    #$08    
LF774: CMP    #$A0    
       BCC    LF77A   
       SBC    #$A0    
LF77A: TAY            
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $F7     
       TYA            
       AND    #$0F    
       CLC            
       ADC    $F7     
       LDY    $F7     
       CMP    #$0F    
       BCC    LF790   
       SBC    #$0F    
       INY            
LF790: EOR    #$07    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    HMP0,X  
       INY            
       STA    WSYNC   
       INY            
       BIT    VSYNC   
LF79E: DEY            
       BPL    LF79E   
       STA    RESP0,X 
       RTS            

LF7A4: LDA    $99     
       EOR    $8B     
       LSR            
       LSR            
       SBC    $99     
       LSR            
       ROR    $9A     
       ROR    $99     
       ROR    $99     
       LDA    $99     
       RTS            

LF7B6: DEC    $92     
       DEC    $92     
       BNE    LF7F7   
       LDX    $91     
       LDA    LF9BA,X 
       AND    #$0F    
       BEQ    LF7D0   
       TAY            
       LDA    LFE07,Y 
       STA    AUDC0   
       LDA    LFE17,Y 
       STA    AUDF0   
LF7D0: LDX    $91     
       LDA    LF9BA,X 
       AND    #$F0    
       BEQ    LF7E8   
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    LFD61,Y 
       STA    AUDC1   
       LDA    LFD53,Y 
       STA    AUDF1   
LF7E8: LDA    #$0E    
       STA    AUDV0   
       LDA    #$06    
       STA    AUDV1   
       LDA    #$10    
       STA    $92     
       INC    $91     
       RTS            

LF7F7: LDX    $91     
       LDA    LF9BA,X 
       AND    #$0F    
       BEQ    LF804   
LF800: LDA    $92     
       STA    AUDV0   
LF804: LDX    $91     
       LDA    LF9BA,X 
       AND    #$F0    
       BEQ    LF812   
       LDA    $92     
       LSR            
       STA    AUDV1   
LF812: RTS            

LF813: LDX    $91     
       LDA    LFCEC,X 
       TAX            
       JMP    LF822   
LF81C: LDX    $91     
       LDA    LFD02,X 
       TAX            
LF822: CPX    #$FF    
       BNE    LF82D   
       INX            
       STX    AUDV0   
       INX            
       STX    $A3     
       RTS            

LF82D: DEC    $92     
       DEC    $92     
       BNE    LF847   
       TXA            
       BEQ    LF83C   
       STA    AUDF0   
       LDA    #$0C    
       STA    AUDC0   
LF83C: LDA    #$0E    
       STA    AUDV0   
       LDA    #$10    
       STA    $92     
       INC    $91     
       RTS            

LF847: TXA            
       BEQ    LF84E   
       LDA    $92     
       STA    AUDV0   
LF84E: RTS            

LF84F: .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF
LF900: .byte $0C,$6C,$6C,$38,$3A,$BA,$7C,$10,$38,$7C
LF90A: .byte $38,$6C,$6C,$6C,$38,$BA,$BA,$7C,$60,$6C,$6C,$38,$B8,$BA,$7C,$C3
       .byte $C6,$6C,$38,$B8,$BE,$78,$3C,$38,$38,$38,$78,$78,$38,$C3,$C6,$6C
       .byte $38,$78,$3C,$38,$3C,$38,$38,$38,$3C,$3F,$38,$CC,$CE,$6C,$38,$78
       .byte $F8,$78,$7E,$6C,$6C,$38,$BA,$FC,$78,$CC,$CE,$6C,$38,$BC,$BF,$7C
       .byte $7E,$6C,$6C,$38,$7A,$FC,$78,$CC,$CE,$6C,$38,$38,$7C,$7C,$7E,$6C
       .byte $6C,$38,$F9,$FE,$7C,$CC,$CE,$6C,$38,$B8,$FE,$7C,$7E,$6C,$6C,$38
       .byte $B8,$7E,$7D,$C6,$EE,$7C,$38,$7C,$38,$00,$00,$00,$00,$00,$FE,$82
       .byte $92,$92,$BA,$92,$44,$38,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $F4,$F2,$F2,$F0,$00,$00,$00,$3C,$3C,$F2,$F4,$E4,$E2,$E2,$E0,$00
       .byte $00,$00,$3C,$3C,$00,$00,$F4,$F2,$F2,$F0,$00,$00,$00,$3C,$F2,$F2
       .byte $F4,$E4,$E2,$E2,$E0,$00,$00,$00,$3C,$00,$00,$00
LF9B6: .byte $8A
LF9B7: .byte $95
LF9B8: .byte $A0,$AB
LF9BA: .byte $33,$01,$13,$03,$31,$03,$13,$00,$72,$00,$14,$00,$33,$00,$10,$00
       .byte $60,$00,$10,$00,$30,$00,$10,$00,$60,$00,$10,$00,$35,$01,$15,$05
       .byte $61,$05,$15,$00,$64,$00,$16,$00,$35,$00,$10,$00,$60,$00,$10,$00
       .byte $30,$00,$10,$00,$60,$00,$50,$00,$31,$00,$60,$00,$50,$00,$40,$00
       .byte $3A,$00,$10,$00,$61,$00
LFA00: .byte $10,$00,$30,$00,$1A,$00,$79,$00,$1B,$00,$3A,$00,$13,$03,$61,$03
       .byte $13,$00,$72,$00,$14,$00,$33,$00,$10,$00,$60,$00,$10,$00,$30,$00
       .byte $10,$00,$60,$00,$10,$00,$3C,$00,$1C,$0C,$60,$01,$1C,$0C,$6D,$00
       .byte $1F,$00,$3E,$00,$10,$00,$61,$00,$10,$00,$30,$00,$10,$00,$80,$00
       .byte $70,$00,$6A,$00,$10,$01,$98,$00,$10,$01,$66,$00,$10,$01,$96,$06
       .byte $10,$00,$77,$07,$10,$00,$37,$00,$57,$00,$A9,$0A,$10,$00,$81,$0C
       .byte $7B,$00,$6A,$00,$10,$01,$98,$00,$10,$01,$66,$00,$10,$01,$90,$08
       .byte $18,$00,$77,$00,$20,$01,$37,$00,$50,$00,$A9,$00,$1A,$00,$71,$0C
       .byte $6C,$01,$3E,$00,$10,$01,$6C,$00,$10,$01,$3A,$00,$10,$00,$61,$00
       .byte $10,$00,$A0,$00,$1C,$00,$6B,$00,$1D,$00,$3C,$00,$1A,$00,$60,$00
       .byte $11,$00,$30,$00,$1E,$00,$6D,$00,$1F,$00,$3E,$00,$10,$00,$61,$00
       .byte $10,$00,$30,$00,$60,$00,$50,$00,$40,$00,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
LFB00: LDA    #$F4    
       STA    COLUPF  
       LDA    #$80    
       STA    PF1     
       LDA    $8D     
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       LDA    LFEF8,X 
       STA    $AB     
       LDA    $8D     
       AND    #$0F    
       TAX            
       LDA    LFEF8,X 
       STA    $AD     
       LDA    $8C     
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       LDA    LFEF8,X 
       STA    $A5     
       LDA    $8C     
       AND    #$0F    
       TAX            
       LDA    LFEF8,X 
       STA    $F7     
       LDA    $90     
       LSR            
       LSR            
       LSR            
       AND    #$03    
       TAX            
       LDA    LFFD1,X 
       STA    $AF     
       LDX    #$5F    
       LDA    SWCHB   
       ASL            
       BCS    LFB4B   
       LDX    #$58    
LFB4B: STX    $82     
       LDX    #$0D    
       LDY    #$06    
LFB51: STA    WSYNC   
       STY    COLUP0  
       STY    COLUP1  
       LDA    ($F7),Y 
       STA    $F9     
       LDA    ($AB),Y 
       STA    GRP0    
       LDA    ($AD),Y 
       STA    GRP1    
       LDA    ($AF),Y 
       STA    GRP0    
       LDA    ($82),Y 
       STA    GRP1    
       LDA    ($A5),Y 
       STA    GRP0    
       LDA    $F9     
       STA    GRP1    
       DEX            
       TXA            
       LSR            
       TAY            
       TXA            
       BPL    LFB51   
       LDY    #$01    
       INX            
       STX    HMCLR   
LFB7F: STX    GRP0,Y  
       STX    NUSIZ0,Y
       LDA.wy $009F,Y 
       STA.wy $000B,Y 
       DEY            
       BPL    LFB7F   
       LDA    $90     
       AND    #$07    
       ASL            
       TAX            
       LDA    $90     
       AND    #$02    
       BEQ    LFBB8   
       CLC            
       LDA    LFDD7,X 
       SBC    $89     
       ADC    $8A     
       STA    $AB     
       LDA    LFDD8,X 
       STA    $AC     
       LDA    LFDE7,X 
       SBC    $89     
       ADC    $8A     
       STA    $AD     
       LDA    LFDE8,X 
       STA    $AE     
       JMP    LFBD0   
LFBB8: LDA    #$D7    
       SBC    $89     
       ADC    $8A     
       STA    $AB     
       LDA    #$00    
       STA    $AC     
       LDA    #$E7    
       SBC    $89     
       ADC    $8A     
       STA    $AD     
       LDA    #$00    
       STA    $AE     
LFBD0: STA    WSYNC   
       STY    PF1     
       STY    PF2     
       LDA    LFDF7,X 
       SBC    $89     
       ADC    $8A     
       STA    $AF     
       LDA    LFDF8,X 
       STA    $B0     
       LDX    #$01    
LFBE6: LDA    $80,X   
       JSR    LF774   
       DEX            
       BPL    LFBE6   
       STA    WSYNC   
       LDX    #$0E    
LFBF2: DEX            
       BNE    LFBF2   
       STA    HMOVE   
       STX    PF0     
       STX    PF1     
       STX    PF2     
       LDX    #$01    
       LDX    #$54    
       RTS            

LFC02: LDA    $90     
       AND    #$02    
       BNE    LFC55   
       LDA    $B9,X   
       LSR            
       SEC            
       SBC    $89     
       CLC            
       ADC    #$10    
       CMP    #$10    
       BNE    LFC18   
       SEC            
       SBC    #$01    
LFC18: TAY            
       LDA    $B5,X   
       SEC            
       SBC    #$02    
       LSR            
       LSR            
       SEC            
       SBC    #$0C    
       CMP    #$08    
       BPL    LFC2D   
       EOR    #$07    
       TAX            
       JMP    LFC36   
LFC2D: SEC            
       SBC    #$08    
       TAX            
       TYA            
       CLC            
       ADC    #$10    
       TAY            
LFC36: LDA    LFFBB,X 
       EOR    #$FF    
       AND.wy $00D7,Y 
       BNE    LFC41   
       DEY            
LFC41: LDA    LFFBB,X 
       EOR    #$FF    
       AND.wy $00D7,Y 
       BNE    LFC4C   
       RTS            

LFC4C: LDA.wy $00D7,Y 
       AND    LFFBB,X 
       STA.wy $00D7,Y 
LFC55: LDX    $F8     
       LDA    #$FF    
       STA    $B9,X   
       STA    $BD,X   
       LDA    $90     
       AND    #$1A    
       CMP    #$18    
       BEQ    LFC66   
       RTS            

LFC66: LDA    $F8     
       LSR            
       EOR    #$01    
       TAX            
       SED            
       LDA    $8C,X   
       CLC            
       ADC    #$01    
       STA    $8C,X   
       TAY            
       CLD            
       LDA    $90     
       AND    #$10    
       BNE    LFC82   
       TYA            
       CMP    #$07    
       BEQ    LFCA5   
       RTS            

LFC82: LDA    $90     
       AND    #$08    
       CMP    #$00    
       BEQ    LFCA5   
       LDA    $93     
       AND    #$06    
       BEQ    LFC97   
       TYA            
       SED            
       CLC            
       ADC    #$04    
       CLD            
       TAY            
LFC97: TYA            
       CMP    #$42    
       BCC    LFC9E   
       LDA    #$42    
LFC9E: STA    $8C,X   
       CMP    #$42    
       BEQ    LFCA5   
       RTS            

LFCA5: LDA    #$82    
       CPX    #$00    
       BEQ    LFCAD   
       LDA    #$84    
LFCAD: ORA    $93     
       STA    $93     
       LDY    #$FF    
       STY    $A3     
       INY            
       STY    $FB     
       RTS            

LFCB9: .byte $00,$00,$00,$00,$00,$00,$00,$05,$02,$02,$02,$02,$07,$02,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$A0,$40,$40,$40,$40,$E0,$40,$00,$F0,$F2
       .byte $F4,$F6,$04,$06,$00,$F0,$F2,$F4,$F6,$04,$06,$00,$00,$F0,$F2,$F4
       .byte $F6,$04,$06
LFCEC: .byte $17,$00,$11,$00,$0F,$00,$0D,$00,$11,$00,$0C,$00,$0D,$00,$0F,$00
       .byte $11,$00,$00,$00
LFD00: .byte $00,$FF
LFD02: .byte $0B,$08,$0B,$08,$0B,$00,$00,$00,$00,$00,$00,$00,$0E,$00,$00,$00
       .byte $0C,$00,$00,$00,$11,$00,$00,$00,$00,$00,$00,$00,$00,$FF,$E0,$C3
       .byte $80,$80,$80,$80,$80,$E4,$A4,$84,$84,$07,$1D,$15,$01,$01,$81,$02
       .byte $00,$04,$04,$04,$C4,$44,$44,$07,$1D,$15,$05,$01,$00,$00,$02,$02
       .byte $D4,$D4,$D4,$D4,$D4,$D4,$D4,$D4,$D4,$D4,$D4,$D4,$30,$30,$04,$04
       .byte $04
LFD53: .byte $00,$07,$12,$14,$0A,$18,$0D,$1F,$0F,$11,$14,$04,$04,$04
LFD61: .byte $00,$08,$01,$01,$07,$01,$07,$01,$07,$07,$07,$04,$04,$04,$FF,$FF
       .byte $3E,$7E,$7E,$7E,$3E,$FE,$FE,$66,$66,$66,$FF,$FF,$F8,$E0,$80,$80
       .byte $80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$80,$80,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$80,$80,$40,$40,$40
       .byte $70,$50,$50,$40,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01
       .byte $01,$01,$07,$05,$05,$01
LFDC7: .byte $00,$1E,$00,$25,$00,$1E,$00,$2A
LFDCF: .byte $10,$10,$16,$1F,$10,$10,$16,$29
LFDD7: .byte $7B
LFDD8: .byte $FF,$20,$FD,$C0,$FC,$7F,$FD,$AB,$FF,$6F,$FD,$B9,$FC,$9E,$FD
LFDE7: .byte $8B
LFDE8: .byte $FF,$30,$FD,$B9,$FC,$7F,$FD,$AB,$FF,$6F,$FD,$C0,$FC,$9E,$FD
LFDF7: .byte $9B
LFDF8: .byte $FF,$40,$FD,$D6,$FC,$50,$FD,$D5
LFE00: .byte $FF,$EC,$FF,$D6,$FC,$C3,$FF
LFE07: .byte $00,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$0C,$0C,$0C
LFE17: .byte $00,$00,$0B,$0C,$0E,$0F,$11,$13,$14,$17,$1A,$1D,$1F,$0B,$0C,$0D
LFE27: .byte $0E,$0D,$0B,$0A,$09,$07,$06,$05,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF
LFEF8: .byte $04,$0B,$12,$19,$20,$27,$2E,$35
LFF00: .byte $3C,$43,$4A,$51,$3C,$66,$66,$66,$66,$66,$3C,$3C,$18,$18,$18,$18
       .byte $38,$18,$7E,$60,$60,$3C,$06,$46,$3C,$3C,$46,$06,$0C,$06,$46,$3C
       .byte $0C,$0C,$7E,$4C,$2C,$1C,$0C,$7C,$46,$06,$7C,$60,$60,$7E,$3C,$66
       .byte $66,$7C,$60,$62,$3C,$18,$18,$18,$0C,$06,$42,$7E,$3C,$66,$66,$3C
       .byte $66,$66,$3C,$3C,$46,$06,$3E,$66,$66,$3C,$1C,$14,$7F,$6B,$6B,$7F
       .byte $3E,$00,$22,$36,$3E,$7F,$1C,$08,$49,$2A,$2A,$2A,$14,$14,$14,$7F
       .byte $7F,$0A,$08,$1C,$1C,$00,$03,$06,$7D,$00,$C0,$60,$BE,$2A,$2A,$2A
       .byte $00,$2A,$2A,$2A,$00,$04,$7E,$7F,$7E,$04,$00,$EE,$A2,$AE,$A8,$EE
       .byte $00,$00,$FF,$FF,$00,$00,$25,$25,$22,$55,$55,$74,$54,$54,$54,$74
       .byte $00,$00,$FE,$FE,$00,$00,$8E,$88,$EC,$A8,$EE,$F2,$F4,$F6,$F4,$F2
LFFA0: .byte $32,$A2,$00,$00
LFFA4: .byte $08,$78,$F2,$F4,$F6,$F4,$F2,$08,$08,$08,$FC,$E8,$E8,$E8,$F0,$F0
       .byte $F0,$F0,$F0,$F0,$F0,$E0,$C0
LFFBB: .byte $7F,$BF,$DF,$EF,$F7,$FB,$FD,$FE,$D4,$D4,$D4,$D4,$D4,$D4,$D4,$1C
       .byte $22,$41,$49,$41,$22,$1C
LFFD1: .byte $66,$6D,$74,$CA,$F4,$F2,$F0,$00,$F0,$F2,$F4,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$D4,$D4,$D4,$D4,$D4,$D4,$D4,$F0,$F2,$04,$04,$04
       .byte $04,$04,$04,$04,$04,$04,$04,$F2,$F2,$04,$04,$5C,$F2
LFFFE: .byte $38
LFFFF: .byte $00
