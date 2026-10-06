; Disassembly of roms/Human Cannonball (32 in 1) (PAL).bin
; Disassembled Tue Oct  6 15:21:49 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Human Cannonball (32 in 1) (PAL).bin
;

      processor 6502
VSYNC   =  $00
VBLANK  =  $01
WSYNC   =  $02
NUSIZ0  =  $04
COLUP0  =  $06
COLUP1  =  $07
COLUPF  =  $08
COLUBK  =  $09
CTRLPF  =  $0A
REFP0   =  $0B
PF1     =  $0E
PF2     =  $0F
RESP0   =  $10
AUDC0   =  $15
AUDF0   =  $17
AUDV0   =  $19
GRP0    =  $1B
GRP1    =  $1C
ENAM0   =  $1D
ENAM1   =  $1E
ENABL   =  $1F
HMP0    =  $20
HMM0    =  $22
HMM1    =  $23
HMBL    =  $24
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXM0P   =  $30
CXP1FB  =  $33
INPT4   =  $3C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296

       ORG $F000

START:
       CLD            
       LDX    #$FF    
       TXS            
       INX            
       TXA            
LF006: STA    NUSIZ0,X
       INX            
       BNE    LF006   
       LDA    #$F7    
       STA    $85     
       JSR    LF355   
       INY            
       BEQ    LF04C   
LF015: INC    $9B,X   
       STY    REFP0,X 
       DEX            
       BNE    LF015   
       STY    HMCLR   
       LDA    SWCHA   
       EOR    #$FF    
       BEQ    LF027   
       STA    $9D     
LF027: LDA    SWCHB   
       LSR            
       BCS    LF03D   
       JSR    LF55A   
       INY            
       STY    $B5     
       STY    $B6     
       STY    $B7     
       LDY    #$40    
       STY    $B4     
       BNE    LF08D   
LF03D: LSR            
       BCC    LF044   
       STX    $86     
       BCS    LF08D   
LF044: STX    AUDV0   
       DEC    $86     
       BPL    LF08D   
       NOP            
       NOP            
LF04C: LDA    #$1E    
       STA    $86     
       STA    $C2     
       LDX    #$02    
       STX    $97     
       INC    $C3     
       CPX    $C3     
       BEQ    LF085   
       STY    $87     
       INY            
       STY    $C3     
       INC    $D1     
       LDA    $D1     
       CMP    #$09    
       BNE    LF06B   
       STY    $D1     
LF06B: AND    #$03    
       STA    $88     
       CMP    #$03    
       BNE    LF075   
       STA    $87     
LF075: LDA    $D1     
       CMP    #$05    
       BCS    LF07C   
       DEX            
LF07C: STX    $D5     
       LDX    $88     
       LDA    LF709,X 
       STA    $C4     
LF085: LDA    $D1     
       STA    $B6     
       LDA    $C3     
       STA    $B7     
LF08D: LDA    $C4     
       CLC            
       LDX    $E8     
       ADC    LF749,X 
       LDX    #$00    
       JSR    LF604   
       JSR    LF2D5   
LF09D: LDX    INTIM   
       BPL    LF09D   
       LDX    #$52    
       STX    TIM64T  
       STX    VBLANK  
       STA    WSYNC   
       STX    VSYNC   
       STA    HMCLR   
       LDX    #$70    
       STX    HMBL    
       LDY    #$04    
       JSR    LF2D7   
       STY    VSYNC   
       STY    VBLANK  
       LDA    $C8     
       STA    COLUBK  
       LDY    #$04    
LF0C2: LDA.wy $00B5,Y 
       AND    #$0F    
       JSR    LF6B5   
       STA.wy $00B9,Y 
       LDA.wy $00B5,Y 
       AND    #$F0    
       JSR    LF61E   
       JSR    LF6B5   
       STA.wy $00BD,Y 
       DEY            
       BNE    LF0C2   
       LDA    #$08    
       BIT    SWCHB   
       BNE    LF0E6   
       SEC            
LF0E6: LDX    #$05    
LF0E8: LDA    LF6F6,X 
       BCC    LF0F0   
       LDA    LF6FB,X 
LF0F0: LDY    $97     
       BEQ    LF0FC   
       EOR    $91     
       AND    #$F6    
       BCC    LF0FC   
       AND    #$06    
LF0FC: STA    $C4,X   
       LDY    $BE     
       LDA    LF78F,Y 
       AND    #$F0    
       STA    $CE     
       LDY    $BA     
       LDA    LF78F,Y 
       AND    #$0F    
       ORA    $CE     
       STA    $E8,X   
       INC    $BE     
       INC    $BA     
       DEX            
       BNE    LF0E8   
       LDA    $C5     
       STA    COLUP0  
       STA    COLUP1  
       STA    HMCLR   
       LDA    SWCHB   
       LDX    $B5     
       BNE    LF129   
       ASL            
LF129: LDX    #$40    
       AND    #$80    
       TAY            
       BMI    LF132   
       LDX    #$C0    
LF132: EOR    $89     
       BEQ    LF13A   
       STY    $89     
       STX    HMM1    
LF13A: JSR    LF2D5   
       LDA    #$01    
       AND    $9F     
       STA    $9F     
       BEQ    LF157   
       INC    $92     
       INC    $D3     
       LDA    $D3     
       CMP    #$BF    
       BNE    LF153   
       LDA    #$50    
       STA    $D3     
LF153: ADC    #$19    
       STA    $D4     
LF157: STA    HMCLR   
LF159: JSR    LF2D5   
       LDY    INTIM   
       BPL    LF159   
       JSR    LF318   
       LDA    #$7D    
       STA    $A2     
       LDA    #$82    
       STA    $84     
       LDA    #$F7    
       STA    $A3     
       JSR    LF30B   
       LDA    #$14    
       STA    $A2     
       LDA    #$87    
       STA    $84     
       INY            
       JSR    LF30B   
       LDA    #$74    
       STA    $9A     
       LDX    #$02    
       BIT    $89     
       BPL    LF18A   
       INX            
LF18A: STX    $CE     
       JSR    LF2D5   
LF18F: LDX    $D5     
       CMP    $D3     
       BCC    LF19A   
       CMP    $D4     
       BCS    LF19A   
       DEX            
LF19A: STX    ENABL   
       JSR    LF2BF   
       LDA    $9A     
       CMP    #$BA    
       BNE    LF18F   
       LDX    #$04    
       STX    ENABL   
       LDA    #$90    
       STA    HMBL    
LF1AD: JSR    LF2BF   
       DEX            
       BNE    LF1AD   
       LDA    $D6     
       STA    GRP0    
       LDX    $CE     
       STX    ENABL   
       LDA    LF6E0,X 
       STA    CTRLPF  
       STA    HMCLR   
       JSR    LF2BF   
       LDA    $D7     
       STA    GRP0    
       LDA    $C7     
       STA    COLUPF  
       STX    ENAM0   
       STX    ENAM1   
       JSR    LF2BF   
       LDA    $C9     
       STA    COLUPF  
       LDX    $E8     
       LDA    LF6E4,X 
       LDX    #$07    
       STA    HMP0    
       JSR    LF2BF   
LF1E4: LDA    $D8,X   
       STA    GRP0    
       LDA    $9A     
       CMP    #$C7    
       BNE    LF1F0   
       STX    ENABL   
LF1F0: JSR    LF2BF   
       DEX            
       BPL    LF1E4   
       LDA    $E0     
       STA    GRP0    
       LDX    $E8     
       LDA    LF6E5,X 
       LDX    #$FC    
       STA    HMP0    
       JSR    LF2BF   
LF206: LDA    $E5,X   
       STA    GRP0    
       LDA    $9A     
       CMP    #$CB    
       BNE    LF214   
       LDA    #$10    
       STA    HMP0    
LF214: JSR    LF2BF   
       INX            
       BNE    LF206   
       LDA    $E5     
       STA    GRP0    
       LDX    $E8     
       LDA    #$E8    
       STA    $A2     
       LDA    LF6E5,X 
       STA    HMP0    
       JSR    LF2BF   
       LDA    $E6     
       STA    GRP0    
       LDA    #$14    
       STA    $84     
       LDA    LF746,X 
       LDX    $E7     
       STA    HMP0    
       JSR    LF2BF   
       STX    GRP0    
       LDA    #$05    
       STA    NUSIZ0  
       LDA    #$0A    
       STA    $9B     
       STA    HMCLR   
       JSR    LF2BF   
       LDX    #$03    
LF24F: JSR    LF2BF   
       LDA    #$3C    
       STA    GRP0    
       DEX            
       BPL    LF24F   
       STX    GRP0    
       STX    $83     
       LDX    #$08    
       STA    HMCLR   
LF261: JSR    LF2BF   
       DEX            
       BNE    LF261   
       LDA    $C6     
       STA    COLUBK  
       LDY    #$FC    
LF26D: STX    ENABL,Y 
       INY            
       BNE    LF26D   
       STX    NUSIZ0  
       STX    $A3     
       LDA    #$3D    
       STA    TIM64T  
       LDY    #$10    
       STY    CTRLPF  
       LDA    $97     
       BEQ    LF285   
       LDY    #$05    
LF285: STX    $A2,Y   
       DEY            
       BNE    LF285   
       JSR    LF3D2   
       BIT    $8B     
       BMI    LF2AD   
       LDA    $8F     
       JSR    LF6B5   
       ASL            
       LDY    $8A     
       BNE    LF29F   
       ADC    #$0B    
       SBC    $9B     
LF29F: TAY            
LF2A0: LDA    LF7C1,Y 
       AND    $83     
       STA    $A9,X   
       INX            
       INY            
       DEC    $9B     
       BNE    LF2A0   
LF2AD: LDY    INTIM   
       BPL    LF2AD   
       JSR    LF2D5   
       LDA    #$33    
       STA    TIM64T  
       LDX    #$04    
       JMP    LF015   
LF2BF: INC    $9A     
       LDA    $9A     
       SEC            
       SBC    $8D     
       CMP    #$0B    
       BCS    LF2CB   
       INY            
LF2CB: LDA.wy $00A8,Y 
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP1    
       RTS            

LF2D5: LDY    #$01    
LF2D7: STA    WSYNC   
       STA    HMOVE   
       DEY            
       BNE    LF2D7   
       RTS            

LF2DF: LDA    SWCHA   
       LDX    $B5     
       BNE    LF2E9   
       JSR    LF61E   
LF2E9: AND    #$0F    
       CLC            
       TAX            
       RTS            

LF2EE: LDA    $80     
       EOR    $9C,X   
       ADC    $9E     
       STA    $80     
       BNE    LF2FA   
       LDA    $9C,X   
LF2FA: LSR            
       TAX            
       SEC            
       TYA            
       SBC    $A0     
       JSR    LF6B7   
       LDA    #$7F    
       JSR    LF67A   
       ADC    $A0     
       RTS            

LF30B: LDX    $C0,Y   
       STX    $BF     
       LDX    $BC,Y   
       STX    $BB     
       LDY    #$03    
       JSR    LF2D7   
LF318: LDY    #$05    
       SEC            
       LDA    #$AA    
       STA    $CE     
LF31F: STA    WSYNC   
       STA    HMOVE   
       LDA    ($A2),Y 
       STA    PF1     
       LDA    ($84),Y 
       STA    PF2     
       LDX    $BF     
       LDA    LF78F,X 
       AND    #$F0    
       STA    $A6     
       LDX    $BB     
       LDA    LF78F,X 
       AND    #$0F    
       ORA    $A6     
       STA    PF1     
       LDA    #$00    
       ROL    $CE     
       STA    PF2     
       BCS    LF31F   
       INC    $BF     
       INC    $BB     
       DEY            
       BNE    LF31F   
       STA    WSYNC   
       STA    HMOVE   
       STY    PF1     
LF354: RTS            

LF355: LDA    #$16    
       STA    $82     
       LDX    #$01    
       LDA    #$B5    
       JSR    LF603   
       LDA    #$BE    
       JSR    LF603   
       INY            
       STY    $89     
       LDA    #$B6    
       JMP    LF603   
LF36D: LDA    #$0F    
       BIT    $9E     
       BNE    LF354   
       JSR    LF2DF   
       LDA    $88     
       BEQ    LF3C6   
       LDA    LF6E8,X 
       STX    $9A     
       ADC    $C2     
       CMP    #$14    
       BCC    LF3D1   
       CMP    #$51    
       BCS    LF3D1   
LF389: STA    $C2     
       JSR    LF69D   
       STA    $B9     
       LDX    #$00    
       CMP    #$37    
       BCC    LF39C   
       INX            
       CMP    #$59    
       BCC    LF39C   
       INX            
LF39C: LDA    #$12    
       STX    $E8     
       JSR    LF6B7   
       TAY            
       LDX    #$EE    
LF3A6: LDA    LF710,Y 
       STA    $E8,X   
       INY            
       INX            
       BNE    LF3A6   
       LDA    $87     
       BEQ    LF3C5   
       LDX    $9A     
       LDA    LF6E1,X 
       ADC    $99     
       CMP    #$2E    
       BCS    LF3C5   
       STA    $99     
       JSR    LF69D   
       STA    $B8     
LF3C5: RTS            

LF3C6: LDA    LF6FA,X 
       ADC    $C4     
       CMP    #$41    
       BCS    LF3C5   
       STA    $C4     
LF3D1: RTS            

LF3D2: INC    $90     
       BNE    LF3DC   
       INC    $91     
       BNE    LF3DC   
       INC    $97     
LF3DC: LDA    $97     
LF3DE: BNE    LF36D   
       BIT    $B4     
       BVS    LF3EF   
       BMI    LF438   
       LDX    $B5     
       LDA    INPT4,X 
       BMI    LF3DE   
       JMP    LF62B   
LF3EF: STX    $B4     
       LDA    $88     
       BEQ    LF40E   
       TAY            
       LDA    LF78C,Y 
       STA    $A0     
       LDA    $87     
       BEQ    LF409   
       STX    HMP0    
       LDY    #$40    
       JSR    LF2EE   
       STA    $C4     
       RTS            

LF409: INX            
       LDY    #$2D    
       BNE    LF42D   
LF40E: LDA    #$14    
       STA    $A0     
       LDY    #$50    
       JSR    LF2EE   
       JSR    LF389   
       LDA    $C2     
       SBC    #$0A    
LF41E: INX            
       SBC    #$0A    
       BPL    LF41E   
       LDY    LF76F,X 
       LDA    LF776,X 
       STA    $A0     
       LDX    #$01    
LF42D: JSR    LF2EE   
       STA    $99     
       JSR    LF69D   
       STA    $B8     
       RTS            

LF438: LDY    $96     
       BEQ    LF441   
       DEY            
       STY    AUDV0   
       STY    $96     
LF441: LDX    #$D2    
       CPX    $8D     
       BCC    LF4AF   
       LDA    #$34    
       JSR    LF6AB   
       EOR    #$FF    
       SEC            
       ADC    $CA     
       BPL    LF459   
       DEC    $A5     
       EOR    #$FF    
       ADC    #$01    
LF459: ASL            
       JSR    LF6AB   
       BIT    $A5     
       BMI    LF467   
       DEC    $CD     
       LDA    $CD     
       EOR    #$FF    
LF467: LDY    $E8     
       ADC    LF7F6,Y 
       STA    $8D     
       LDY    $8A     
       BNE    LF4A2   
       CMP    #$75    
       BCS    LF482   
       CMP    #$6C    
       BCC    LF482   
       SBC    #$6B    
       STA    $9B     
       LDA    #$75    
       STA    $8D     
LF482: LDA    $9F     
       BEQ    LF4A2   
       CMP    $8F     
       BCC    LF4A2   
       TAX            
       LDA    $8D     
       TAY            
       SBC    $95     
       STY    $95     
       CMP    #$02    
       BCC    LF4A0   
       INX            
       CMP    #$81    
       BCC    LF4A0   
       DEX            
       CMP    #$FF    
       BCC    LF4A2   
LF4A0: STX    $8F     
LF4A2: LDX    #$08    
       BIT    CXM0P   
       BMI    LF4F9   
       BIT    CXP1FB  
       BVC    LF4CF   
       JMP    LF56C   
LF4AF: INX            
       STX    $8D     
       LDX    #$00    
       INC    $93     
       BMI    LF531   
       BNE    LF4C0   
       LDA    #$07    
       STA    AUDV0   
       STA    AUDC0   
LF4C0: LDA    #$18    
       STA    AUDF0   
       CMP    $93     
       BNE    LF4CA   
       STX    AUDV0   
LF4CA: LDX    #$04    
       STX    $8F     
       RTS            

LF4CF: LDA    #$07    
       BIT    $9E     
       BNE    LF4F6   
       LDA    $D1     
       CMP    #$05    
       BCS    LF4F6   
       LDY    $82     
       DEY            
       JSR    LF2DF   
       LDA    LF707,X 
       BEQ    LF4F6   
       BPL    LF4EA   
       INY            
       INY            
LF4EA: CPY    #$2C    
       BCS    LF4F6   
       STY    $82     
       STA    HMM0    
       STA    HMM1    
       STA    HMBL    
LF4F6: JMP    LF5EF   
LF4F9: LDY    $8A     
       BNE    LF578   
       LDY    #$01    
       INC    $94     
       BNE    LF50B   
       LDA    #$16    
       STA    AUDF0   
       STX    AUDV0   
       STY    AUDC0   
LF50B: LDX    $94     
       CPX    #$0F    
       BNE    LF514   
       DEY            
       STY    AUDV0   
LF514: LDA    $CB     
       LSR            
       LSR            
       LSR            
       JSR    LF6AD   
       EOR    #$FF    
       BIT    CXM0P   
       BMI    LF52A   
       LDY    $8E     
       BEQ    LF52A   
       ADC    #$90    
       BNE    LF52E   
LF52A: ADC    #$96    
       ADC    $82     
LF52E: JMP    LF603   
LF531: INX            
       CPX    $C3     
       BNE    LF538   
LF536: INC    $B6,X   
LF538: LDY    #$07    
       CPY    $B7     
       BEQ    LF54C   
       CPY    $B6     
       BNE    LF54F   
       LDX    $B5     
       BNE    LF54C   
       LDX    #$01    
       CPX    $C3     
       BNE    LF54F   
LF54C: INC    $97     
       RTS            

LF54F: LDA    $C3     
       LSR            
       EOR    $B5     
       STA    $B5     
       LSR    $B4     
       LDY    #$00    
LF55A: LDX    #$0E    
LF55C: STY    $89,X   
       DEX            
       BNE    LF55C   
       STY    CXCLR   
       STY    AUDV0   
       DEC    $93     
       DEC    $94     
       JMP    LF355   
LF56C: LDA    $D2     
       STA    $8E     
       CMP    #$98    
       BCC    LF4F9   
       CMP    #$9C    
       BCC    LF5ED   
LF578: BIT    $89     
       BMI    LF57E   
       SBC    #$04    
LF57E: SBC    $82     
       CMP    #$9F    
       BCC    LF588   
       LDA    $8A     
       BEQ    LF5ED   
LF588: INC    $8A     
       INC    $93     
       BMI    LF5AB   
       BNE    LF59C   
       STX    AUDC0   
       LDX    #$0B    
       STX    $96     
       STX    AUDV0   
       LDA    #$18    
       STA    AUDF0   
LF59C: LDA    $8C     
       BNE    LF5A8   
       LDA    $8D     
       CMP    #$C0    
       BCC    LF5CB   
       STA    $8C     
LF5A8: STX    $8D     
       RTS            

LF5AB: LDA    #$BA    
       STA    $8D     
       LDX    #$01    
       LDA    #$9E    
       BIT    $89     
       BPL    LF5B9   
       LDA    #$9C    
LF5B9: ADC    $82     
       JSR    LF604   
       LDX    #$03    
       STX    $8F     
       DEC    $94     
       BMI    LF5EC   
       LDX    $B5     
       JMP    LF536   
LF5CB: LDA    #$C1    
       SBC    $8D     
       STA    $9B     
       JSR    LF5EF   
       LDA    $D2     
       SEC            
       BIT    $89     
       BMI    LF5DD   
       SBC    #$04    
LF5DD: SBC    $82     
       SBC    #$9B    
       BMI    LF5E9   
       TAY            
LF5E4: ASL    $83     
       DEY            
       BPL    LF5E4   
LF5E9: INX            
       STX    $8F     
LF5EC: RTS            

LF5ED: STA    CXCLR   
LF5EF: LDA    $CB     
       JSR    LF6AB   
       ADC    $C4     
       LDY    $E8     
       ADC    LF7F9,Y 
       STA    $D2     
       CMP    #$D0    
       BCC    LF603   
       STA    $8B     
LF603: INX            
LF604: SEC            
       SBC    #$2F    
       LDY    #$02    
LF609: INY            
       SBC    #$0F    
       BCS    LF609   
       EOR    #$FF    
       SBC    #$06    
       JSR    LF61E   
       STY    WSYNC   
LF617: DEY            
       BPL    LF617   
       STA    RESP0,X 
       STA    HMP0,X  
LF61E: ASL            
       ADC    #$00    
       ASL            
       ADC    #$00    
       ASL            
       ADC    #$00    
       ASL            
       ADC    #$00    
       RTS            

LF62B: STY    $9C     
       ROR    $B4     
       LDA    #$0F    
       STA    AUDV0   
       STA    $96     
       LSR            
       STA    AUDC0   
       LDA    #$1B    
       STA    AUDF0   
       LDA    $99     
       LDX    #$B0    
       JSR    LF6AD   
       STX    $92     
       STA    $81     
       LDA    #$CA    
       STA    $95     
       LDA    $C2     
       JSR    LF660   
       LDX    #$0D    
       JSR    LF6B7   
       LDA    #$10    
       JSR    LF67A   
       STA    $CA     
       LDA    #$5B    
       SBC    $C2     
LF660: LSR            
       TAX            
       LDA    LF747,X 
       BCC    LF66D   
       INX            
       CLC            
       ADC    LF747,X 
       LSR            
LF66D: LDX    $81     
       JSR    LF6B7   
       LDA    #$64    
       JSR    LF67A   
       STA    $CB     
       RTS            

LF67A: STA    $CF     
       LDX    #$08    
LF67E: ASL    $CD     
       ROL    $CC     
       SEC            
       LDA    $CC     
       SBC    $CF     
       STA    $CC     
       BPL    LF693   
       CLC            
       ADC    $CF     
       STA    $CC     
       JMP    LF698   
LF693: LSR    $CD     
       SEC            
       ROL    $CD     
LF698: DEX            
       BNE    LF67E   
       BEQ    LF6DE   
LF69D: SED            
       TAX            
       LDA    #$00    
       DEX            
       BMI    LF6A9   
LF6A4: ADC    #$01    
       DEX            
       BPL    LF6A4   
LF6A9: CLD            
       RTS            

LF6AB: LDX    $92     
LF6AD: JSR    LF6B7   
       LDA    #$3C    
       JMP    LF67A   
LF6B5: LDX    #$05    
LF6B7: STA    $D0     
       LDA    #$00    
       STA    $CC     
       STA    $CD     
       STX    $CF     
       LDX    #$08    
LF6C3: ASL    $CF     
       BCC    LF6D4   
       LDA    $CD     
       CLC            
       ADC    $D0     
       STA    $CD     
       LDA    #$00    
       ADC    $CC     
       STA    $CC     
LF6D4: DEX            
       BEQ    LF6DE   
       ASL    $CD     
       ROL    $CC     
       JMP    LF6C3   
LF6DE: LDA    $CD     
LF6E0: CLC            
LF6E1: RTS            

LF6E2: .byte $31,$21
LF6E4: .byte $00
LF6E5: .byte $10,$00,$00
LF6E8: .byte $01,$00,$00,$00,$FF,$00,$00,$00,$00,$F6,$0A,$00,$00,$FF
LF6F6: .byte $01,$00,$D6,$94
LF6FA: .byte $86
LF6FB: .byte $28,$02,$04,$0A,$06,$04,$05,$00,$FC,$00,$FB,$00
LF707: .byte $FF,$01
LF709: .byte $00,$32,$10,$00,$00,$F0,$00
LF710: .byte $00,$00,$1F,$0E,$06,$00,$00,$00,$00,$00,$7F,$7F,$FF,$FF,$FF,$FF
       .byte $FF,$3E,$00,$00,$7E,$7E,$7C,$FC,$F8,$F0,$E0,$80,$7F,$FE,$FE,$FE
       .byte $FF,$7F,$FF,$3C,$02,$07,$7C,$7E,$3E,$3E,$1E,$1F,$0F,$0F,$7C,$FC
       .byte $FC,$7C,$7E,$3F,$3F,$3C
LF746: .byte $72
LF747: .byte $52,$42
LF749: .byte $4E,$52,$48,$11,$15,$18,$1C,$1F,$22,$25,$29,$2C,$2F,$32,$35,$38
       .byte $3B,$3E,$40,$43,$45,$48,$4A,$4D,$4F,$51,$53,$55,$57,$58,$5A,$5B
       .byte $5D,$5E,$5F,$60,$61,$62
LF76F: .byte $62,$2D,$2A,$27,$27,$27,$2A
LF776: .byte $2D,$28,$28,$1C,$18,$19,$1E,$29,$45,$45,$55,$6D,$45,$28,$A8,$3B
       .byte $AA,$2B,$3C,$84,$08,$90
LF78C: .byte $20,$1C,$24
LF78F: .byte $0E,$0A,$0A,$0A,$0E,$22,$22,$22,$22,$22,$EE,$22,$EE,$88,$EE,$EE
       .byte $22,$66,$22,$EE,$AA,$AA,$EE,$22,$22,$EE,$88,$EE,$22,$EE,$EE,$88
       .byte $EE,$AA,$EE,$EE,$22,$22,$22,$22,$EE,$AA,$EE,$AA,$EE,$EE,$AA,$EE
       .byte $22,$EE
LF7C1: .byte $00,$08,$14,$14,$08,$1E,$30,$50,$10,$20,$00,$42,$24,$1E,$1E,$64
       .byte $02,$00,$00,$00,$00,$20,$10,$52,$34,$18,$08,$34,$04,$00,$2A,$2A
       .byte $1C,$08,$08,$08,$00,$00,$00,$00,$EA,$AA,$EE,$00,$35,$27,$35,$00
       .byte $02,$7E,$07,$0A,$01
LF7F6: .byte $C1,$BB,$B7
LF7F9: .byte $53,$51,$4D,$00,$F0,$00,$00
