; Disassembly of roms/Fun with Numbers (32 in 1) (PAL).bin
; Disassembled Tue Oct  6 15:21:49 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Fun with Numbers (32 in 1) (PAL).bin
;

      processor 6502
VSYNC   =  $00
VBLANK  =  $01
WSYNC   =  $02
COLUPF  =  $08
COLUBK  =  $09
REFP1   =  $0C
PF0     =  $0D
PF1     =  $0E
PF2     =  $0F
AUDC0   =  $15
AUDC1   =  $16
AUDF0   =  $17
AUDF1   =  $18
AUDV0   =  $19
AUDV1   =  $1A
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM8T   =  $0295
TIM64T  =  $0296

       ORG $F000

START:
       SEI            
       LDX    #$FF    
       TXS            
       CLD            
       LDX    #$00    
       TXA            
LF008: STA    VSYNC,X 
       INX            
       BNE    LF008   
       JSR    LF478   
       INC    $9A     
       LDA    #$04    
       STA    AUDC0   
       LDX    #$0D    
       STX    AUDC1   
       LDA    #$F7    
LF01C: STA    $D4,X   
       DEX            
       BPL    LF01C   
LF021: LDA    #$04    
       SBC    $8D     
       STA    $8D     
LF027: LDA    #$BA    
       STA    WSYNC   
       STA    TIM8T   
       JSR    LF4A1   
       JSR    LF7F4   
       LDA    #$A7    
       STA    TIM8T   
       JSR    LF7F4   
       DEC    $8D     
       BNE    LF027   
       LDA    #$41    
       STA    WSYNC   
       STA    TIM64T  
       STA    VBLANK  
       JSR    LF255   
       JSR    LF7F4   
       LDA    #$16    
       STA    TIM8T   
       STA    VSYNC   
       JSR    LF7F4   
       STA    VSYNC   
       LDA    #$31    
       STA    TIM64T  
       JSR    LF414   
       JSR    LF1B9   
       JSR    LF7F4   
       STA    VBLANK  
       LDA    #$BA    
       STA    TIM8T   
       JSR    LF48C   
       JSR    LF332   
       JSR    LF3AF   
       JSR    LF38D   
       JSR    LF6C4   
       JSR    LF5EC   
       JSR    LF7F4   
       LDA    #$BA    
       STA    TIM8T   
       JSR    LF677   
       JSR    LF7F4   
       LDA    #$A7    
       STA    TIM8T   
       JSR    LF7F4   
       STA    $8D     
LF09A: STA    PF0     
       STA    PF1     
       STA    PF2     
       LDY    $8D     
       LDA    ($D4),Y 
       CMP    #$CA    
       BCC    LF0AB   
       JMP    LF021   
LF0AB: STA    $CA     
       INC    $8D     
       LDX    $CA     
       LDA    VSYNC,X 
       ASL            
       ASL            
       ASL            
       STA    $E0     
       DEX            
       LDA    VSYNC,X 
       ASL            
       ASL            
       ASL            
       STA    $DE     
       STA    WSYNC   
       DEX            
       LDA    VSYNC,X 
       ASL            
       ASL            
       ASL            
       STA    $DC     
       DEX            
       LDA    VSYNC,X 
       ASL            
       ASL            
       ASL            
       STA    $DA     
       DEX            
       LDA    VSYNC,X 
       ASL            
       ASL            
       ASL            
       STA    $D8     
       DEX            
       LDA    VSYNC,X 
       ASL            
       ASL            
       ASL            
       STA    $D6     
       STA    WSYNC   
       LDY    #$04    
       BNE    LF0EA   
LF0E8: STA    WSYNC   
LF0EA: LDA    #$00    
       PHA            
       LDA    ($E0),Y 
       AND    #$0F    
       STA    $8B     
       LDA    ($DE),Y 
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    $8B     
       PHA            
       LDA    ($DC),Y 
       PHA            
       LDA    ($DA),Y 
       AND    #$F0    
       STA    $8B     
       LDA    ($D8),Y 
       LSR            
       LSR            
       LSR            
       LSR            
       STA    WSYNC   
       ORA    $8B     
       PHA            
       LDA    ($D6),Y 
       AND    #$0F    
       PHA            
       LDA    #$00    
       PHA            
       DEY            
       BPL    LF0E8   
       LDX    #$04    
       STX    $8B     
LF11F: LDY    #$02    
LF121: STA    WSYNC   
       PLA            
       STA    $D6     
       STA    PF0     
       PLA            
       STA    $D8     
       STA    PF1     
       PLA            
       STA    $DA     
       STA    PF2     
       PLA            
       STA    $DC     
       STA    PF0     
       PLA            
       STA    $DE     
       STA    PF1     
       PLA            
       STA    $E0     
       STA    PF2     
LF141: STA    WSYNC   
       LDA    $D6     
       STA    PF0     
       LDA    $D8     
       STA    PF1     
       LDA    $DA     
       STA    PF2     
       SED            
       SEC            
       LDA    #$00    
       ADC    $AA     
       STA    $AA     
       CLD            
       LDA    $DC     
       STA    PF0     
       LDA    $DE     
       STA    PF1     
       LDA    $E0     
       DEY            
       STA    PF2     
       BPL    LF141   
       DEX            
       BPL    LF11F   
       LDA    $8B     
       BNE    LF173   
       STA    WSYNC   
       JMP    LF09A   
LF173: STA    WSYNC   
       LDX    #$00    
       STX    PF0     
       STX    PF1     
       STX    PF2     
       LDA    $CA     
       CMP    #$BD    
       BEQ    LF195   
       CMP    #$C9    
       BNE    LF19C   
       LDA    $89     
       ASL            
       ASL            
       ADC    #$8D    
       LDY    $8C     
       BEQ    LF19C   
       LDX    $9C     
       BCC    LF19C   
LF195: DEX            
       LDA    $8A     
       ASL            
       ASL            
       ADC    #$9D    
LF19C: STA    $D6     
       STX    $D8     
       LDY    #$03    
       LDA    #$00    
       PHA            
LF1A5: STA    WSYNC   
       LDA    ($D6),Y 
       AND    $D8     
       PHA            
       DEY            
       BPL    LF1A5   
       LDA    #$00    
       PHA            
       TAX            
       TAY            
       STX    $8B     
       JMP    LF121   
LF1B9: LDY    #$00    
       ROR    SWCHB   
       BCC    LF1D9   
       LDA    $CC     
       BEQ    LF1EE   
       LDA    $8A     
       JSR    LF314   
       STY    $CC     
       LDA    #$04    
       BIT    $CD     
       BNE    LF1F7   
       INC    $80     
       INC    $8C     
       LDA    #$05    
       BNE    LF23F   
LF1D9: LDA    $CC     
       BNE    LF1EE   
       INC    $CC     
       JSR    LF478   
       JSR    LF658   
       LDA    #$2F    
       STA    $D4     
       LDA    #$06    
       JMP    LF314   
LF1EE: LDA    $81     
       BEQ    LF22A   
       JSR    LF658   
       STY    $81     
LF1F7: INC    $8C     
       INC    $82     
       STY    $94     
       LDY    #$80    
       STY    $98     
       LDA    SWCHB   
       LDX    $CD     
       CPX    #$04    
       BCC    LF20C   
       EOR    #$FF    
LF20C: AND    #$40    
       BNE    LF216   
       LDY    #$01    
       LDA    #$06    
       BNE    LF21A   
LF216: STY    $94     
       LDA    #$03    
LF21A: STY    $96     
       STY    $97     
       STA    $95     
       LDA    #$15    
LF222: STA    $D4     
       JSR    LF518   
       JMP    LF243   
LF22A: LDA    $9A     
       BEQ    LF254   
       JSR    LF658   
       LDA    $CD     
       CLC            
       ADC    #$01    
       STA    $D6     
       JSR    LF6AF   
       DEC    $9A     
       LDA    #$0D    
LF23F: STY    $CE     
       BNE    LF222   
LF243: LDX    $8A     
LF245: DEX            
       LDA    $B8,X   
       CMP    #$0A    
       BCC    LF245   
       LDA    #$03    
       AND    $CD     
       ADC    #$0B    
       STA    $B8,X   
LF254: RTS            

LF255: LDY    #$00    
       LDA    #$02    
       BIT    SWCHB   
       BNE    LF270   
       LDA    $CB     
       BNE    LF2CF   
       JSR    LF478   
       JSR    LF6E8   
       LDA    $CD     
       CLC            
       ADC    #$01    
       JMP    LF314   
LF270: LDX    $89     
       LDA    $8C     
       BEQ    LF2C8   
       LDA    $A2     
       BNE    LF297   
       LDA    $88     
       BNE    LF28D   
       LDA    REFP1   
       BMI    LF2BF   
       LDA    #$0C    
LF284: STA    AUDC0   
       STY    $82     
       INC    $88     
       JMP    LF312   
LF28D: LDA    $A6     
       BNE    LF2D1   
       STY    $88     
       STY    AUDV1   
       BEQ    LF29F   
LF297: LDA    REFP1   
       BPL    LF2BF   
       STY    $A2     
       BMI    LF2BF   
LF29F: INC    $A2     
       JSR    LF668   
       LDA    $80     
       BNE    LF2AF   
       STY    $8C     
       INC    $83     
LF2AC: JMP    LF327   
LF2AF: LDA    $C4,X   
       CMP    #$0A    
       BCS    LF2AC   
       STA    $CE     
       STY    $9E     
       STY    $80     
       INC    $81     
       BNE    LF2AC   
LF2BF: LDA    SWCHA   
       AND    #$F0    
       CMP    #$F0    
       BNE    LF2CB   
LF2C8: STY    $CB     
       RTS            

LF2CB: LDA    $CB     
       BEQ    LF2D2   
LF2CF: DEC    $CB     
LF2D1: RTS            

LF2D2: LDA    #$20    
       BIT    SWCHA   
       BPL    LF2FE   
       BVC    LF2FA   
       BEQ    LF2F2   
       INC    $C4,X   
       CLC            
       LDA    $C4,X   
       ADC    #$F5    
       BCC    LF2E8   
LF2E6: STA    $C4,X   
LF2E8: LDA    #$40    
       STA    $A7     
       LDA    $C4,X   
       LDX    #$0F    
       BNE    LF31A   
LF2F2: DEC    $C4,X   
       BPL    LF2E8   
       LDA    #$0A    
       BNE    LF2E6   
LF2FA: LDA    #$FF    
       BNE    LF300   
LF2FE: LDA    #$01    
LF300: LDX    $80     
       BNE    LF2D1   
       CLC            
       ADC    $89     
LF307: STA    $89     
       BPL    LF30D   
       LDA    #$0B    
LF30D: CLC            
       ADC    #$FA    
       BCS    LF307   
LF312: LDA    $89     
LF314: LDX    #$C0    
       STX    $A7     
       LDX    #$1E    
LF31A: CLC            
       ADC    #$AD    
       STA    $D6     
       LDA    $A7     
       ORA    ($D6),Y 
       STA    $A7     
       INC    $A6     
LF327: STX    $CB     
       STY    $9B     
       STY    $9C     
       LDX    #$A8    
       JMP    LF47A   
LF332: LDA    $90     
       BEQ    LF38C   
       DEC    $90     
       LDX    #$A2    
       JSR    LF47A   
       STY    $91     
       LDX    $B1     
       INC    $DC     
       LDA    #$BC    
       JSR    LF7C7   
       LDX    $B0     
       LDA    #$BE    
       JSR    LF7C5   
       LDX    $8A     
       LDA    #$03    
       AND    $CD     
       CMP    #$03    
       BNE    LF368   
       INX            
       INX            
       LDA    $AE     
       BNE    LF366   
       LDY    $C4,X   
       CPY    #$0A    
       BNE    LF366   
       TYA            
LF366: STA    $BE,X   
LF368: LDY    #$00    
       LDX    #$05    
LF36C: LDA    $BE,X   
       CMP    $C4,X   
       BNE    LF380   
       DEX            
       BPL    LF36C   
       STY    $A1     
       TYA            
       SED            
       SEC            
       ADC    $84     
       STA    $84     
       BNE    LF382   
LF380: INC    $A1     
LF382: SED            
       SEC            
       TYA            
       ADC    $85     
       STA    $85     
       CLD            
       INC    $A0     
LF38C: RTS            

LF38D: LDA    $8C     
       BEQ    LF3AE   
       LDX    $89     
       LDA    $9C     
       BEQ    LF39B   
       LDY    #$0F    
       BNE    LF39D   
LF39B: LDY    #$3C    
LF39D: LDA    $9B     
       BEQ    LF3A4   
       DEC    $9B     
       RTS            

LF3A4: STY    $9B     
       LDA    #$FF    
       EOR    $9C     
       STA    $9C     
       INC    $A5     
LF3AE: RTS            

LF3AF: LDA    $A0     
       BEQ    LF3E0   
       LDA    $A3     
       BEQ    LF3D3   
       LDA    $87     
       BNE    LF3CF   
       LDA    $85     
       CMP    #$10    
       BNE    LF3CB   
       INC    $86     
       JSR    LF658   
LF3C6: LDX    #$A0    
       JMP    LF47A   
LF3CB: INC    $81     
       BNE    LF3C6   
LF3CF: DEC    $87     
       BEQ    LF3C6   
LF3D3: LDA    $A1     
       BNE    LF3E1   
       LDX    #$35    
       JSR    LF419   
       LDA    $A2     
       BNE    LF408   
LF3E0: RTS            

LF3E1: LDA    $A2     
       BNE    LF3EA   
       LDX    #$4D    
       JSR    LF419   
LF3EA: LDA    #$25    
       STA    $D6     
       LDA    #$1D    
       STA    $D8     
LF3F2: LDA    $9C     
       BEQ    LF3FC   
       LDA    $D6     
       LDY    #$0F    
       BNE    LF40F   
LF3FC: LDA    $A5     
       CMP    #$06    
       BCC    LF40B   
       LDY    #$60    
       CMP    #$07    
       BCC    LF411   
LF408: INC    $A3     
       RTS            

LF40B: LDA    $D8     
       LDY    #$1E    
LF40F: STA    $D4     
LF411: JMP    LF39D   
LF414: LDA    $A6     
       BNE    LF427   
       RTS            

LF419: LDA    $A6     
       BNE    LF42D   
       LDA    $A4     
       BNE    LF427   
       STX    $A4     
       LDA    #$03    
       STA    $92     
LF427: LDA    $A9     
       BEQ    LF42E   
       DEC    $A9     
LF42D: RTS            

LF42E: LDA    $A8     
       BEQ    LF43D   
       STA    $A9     
LF434: LDA    #$04    
       STA    AUDC0   
       LDX    #$A6    
       JMP    LF47A   
LF43D: INC    $A8     
       LDA    $A7     
       BNE    LF466   
       LDA    $92     
       BNE    LF452   
       LDA    #$03    
       STA    $92     
       CLC            
       LDA    #$05    
       ADC    $A4     
       STA    $A4     
LF452: DEC    $92     
       LDY    #$00    
       LDA    $A4     
       STA    $D6     
       INC    $A4     
       LDA    ($D6),Y 
       CMP    #$FF    
       BNE    LF466   
       INC    $A2     
       BNE    LF434   
LF466: TAY            
       LSR            
       LSR            
       LSR            
       AND    #$FC    
       STA    $A9     
       TYA            
       AND    #$1F    
       STA    AUDF0   
       LDA    #$08    
       STA    AUDV0   
       RTS            

LF478: LDX    #$80    
LF47A: LDY    #$00    
LF47C: STY    VSYNC,X 
       INX            
       CPX    #$AA    
       BNE    LF47C   
       STY    AUDV0   
       STY    AUDV1   
       LDA    #$20    
       STA    $AB     
       RTS            

LF48C: LDA    $83     
       BEQ    LF4A0   
       LDA    #$00    
       STA    $83     
       STA    $B0     
       STA    $B1     
       LDA    #$03    
       AND    $CD     
       TAX            
       INX            
       STX    $8E     
LF4A0: RTS            

LF4A1: SED            
       LDX    $8E     
       DEX            
       BNE    LF4BC   
       CLC            
       LDA    $AE     
       ADC    $AF     
       STA    $B0     
       BCC    LF4B2   
       INC    $B1     
LF4B2: CLD            
       LDA    #$00    
       STA    $8E     
       STA    $8F     
       INC    $90     
       RTS            

LF4BC: DEX            
       BNE    LF4C8   
       SEC            
       LDA    $AE     
       SBC    $AF     
       STA    $B0     
       BCS    LF4B2   
LF4C8: DEX            
       BNE    LF4ED   
       LDA    $8F     
       BNE    LF4D1   
       INC    $8F     
LF4D1: LDX    #$21    
LF4D3: LDA    $B0     
       CLC            
       ADC    $AE     
       STA    $B0     
       LDA    $B1     
       ADC    #$00    
       STA    $B1     
       LDA    $AF     
       SBC    #$00    
       STA    $AF     
       BEQ    LF515   
       DEX            
       BNE    LF4D3   
       CLD            
       RTS            

LF4ED: DEX            
       BNE    LF50F   
       LDX    #$21    
       LDA    $8F     
       BNE    LF4FC   
       LDA    #$99    
       STA    $B0     
       INC    $8F     
LF4FC: LDA    #$00    
       SEC            
       ADC    $B0     
       STA    $B0     
       LDA    $AE     
       SEC            
       SBC    $AF     
       STA    $AE     
       BCC    LF511   
       DEX            
       BNE    LF4FC   
LF50F: CLD            
       RTS            

LF511: ADC    $AF     
       STA    $AE     
LF515: JMP    LF4B2   
LF518: LDX    #$02    
       LDA    $AC     
       STA    $DE     
       LDA    $CD     
       CMP    #$04    
       BCC    LF57C   
       LDA    $AD     
       STA    $E0     
       BIT    SWCHB   
       BVC    LF531   
       LDX    #$03    
       BNE    LF53D   
LF531: LDA    #$0F    
       AND    $DE     
       STA    $DE     
       LDA    #$0F    
       AND    $E0     
       STA    $E0     
LF53D: STX    $8A     
       STX    $89     
       LDY    $DE     
       CPY    $E0     
       BCS    LF54D   
       LDA    $E0     
       STY    $E0     
       STA    $DE     
LF54D: LDA    $DE     
       BNE    LF555   
       LDA    #$01    
       STA    $DE     
LF555: STA    $AE     
       LDA    $E0     
       BNE    LF55D   
       LDA    $DE     
LF55D: LDY    $CD     
       CPY    #$07    
       BNE    LF567   
       AND    #$0F    
       BEQ    LF56F   
LF567: CMP    $CF     
       BNE    LF576   
       CMP    #$02    
       BCS    LF571   
LF56F: LDA    #$02    
LF571: SED            
       CLC            
       SBC    #$00    
       CLD            
LF576: STA    $CF     
       STA    $AF     
       BNE    LF5DD   
LF57C: STX    $8A     
       STX    $89     
LF580: LDA    $9E     
       BNE    LF59F   
       INC    $9E     
       LDA    #$09    
       BIT    $CD     
       BEQ    LF594   
       LDA    $CE     
       BNE    LF594   
       LDA    #$01    
       STA    $CE     
LF594: STA    $9D     
       LDA    #$0F    
       AND    $DE     
       STA    $9F     
       JMP    LF5B6   
LF59F: LDA    $9D     
       BNE    LF5B2   
       STA    $9E     
       INC    $CE     
       CLC            
       LDA    $CE     
       ADC    #$F6    
       BCC    LF580   
       STA    $CE     
       BCS    LF580   
LF5B2: INC    $9F     
       LDA    $9F     
LF5B6: CLC            
       ADC    #$F7    
       BCC    LF5BD   
       STA    $9F     
LF5BD: LDY    $9F     
       LDA    #$B8    
       STA    $D8     
       LDA    ($D8),Y 
       STA    $AF     
       LDA    $CE     
       BNE    LF5CF   
       LDA    #$01    
       STA    $CE     
LF5CF: STA    $AE     
       CMP    $AF     
       BCS    LF5DB   
       LDA    #$01    
       BIT    $CD     
       BNE    LF5B2   
LF5DB: DEC    $9D     
LF5DD: LDX    $AE     
       LDA    #$B2    
       JSR    LF7C1   
       LDX    $AF     
       LDA    #$B8    
       JSR    LF7C1   
       RTS            

LF5EC: LDX    #$00    
       LDA    $93     
       BNE    LF64E   
       DEC    $94     
       BNE    LF5FC   
       DEC    $95     
       DEC    $AB     
       BEQ    LF637   
LF5FC: BIT    SWCHB   
       BPL    LF636   
       LDY    $82     
       BEQ    LF636   
       LDY    $95     
       BEQ    LF653   
       LDA    $97     
       CMP    #$80    
       BEQ    LF614   
       AND    $95     
       JMP    LF616   
LF614: AND    $94     
LF616: CMP    $96     
       BEQ    LF61E   
       STA    $96     
       LSR    $98     
LF61E: LDA    $98     
       AND    $94     
       CMP    $99     
       BEQ    LF632   
       STA    $99     
       LDA    $99     
       BEQ    LF630   
       LDX    #$0D    
       BNE    LF632   
LF630: LDX    #$1D    
LF632: STX    AUDF1   
       STX    AUDV1   
LF636: RTS            

LF637: JSR    LF478   
       INC    $93     
LF63C: JSR    LF668   
       JSR    LF518   
       JSR    LF6E8   
       LDA    $AA     
       STA    COLUBK  
       EOR    #$FF    
       STA    COLUPF  
       RTS            

LF64E: DEC    $94     
       BEQ    LF63C   
       RTS            

LF653: LDA    #$0F    
       JMP    LF284   
LF658: LDX    #$05    
       LDA    #$0A    
LF65C: STA    $B2,X   
       STA    $B8,X   
       STA    $BE,X   
       STA    $C4,X   
       DEX            
       BPL    LF65C   
       RTS            

LF668: SED            
       LDA    $AA     
       ADC    $AD     
       STA    $AC     
       LDA    $AA     
       ADC    $AC     
       STA    $AD     
       CLD            
       RTS            

LF677: LDA    $86     
       BNE    LF67C   
LF67B: RTS            

LF67C: LDA    $A2     
       BNE    LF685   
       LDX    #$65    
       JSR    LF419   
LF685: LDA    $A3     
       BNE    LF67B   
       LDA    $84     
       STA    $D6     
       LDA    $85     
       STA    $D8     
       JSR    LF69F   
       LDA    #$2E    
       STA    $D6     
       LDA    #$2F    
       STA    $D8     
       JMP    LF3F2   
LF69F: LDA    #$F0    
       AND    $D8     
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $C8     
       LDA    #$0F    
       AND    $D8     
       STA    $C9     
LF6AF: LDA    #$F0    
       AND    $D6     
       BNE    LF6B7   
       LDA    #$A0    
LF6B7: LSR            
       LSR            
       LSR            
       LSR            
       STA    $C4     
       LDA    #$0F    
       AND    $D6     
       STA    $C5     
       RTS            

LF6C4: LDA    $93     
       BNE    LF6E7   
       LDY    $CD     
       LDA    #$7D    
       STA    $D6     
       LDA    ($D6),Y 
       TAX            
       LDA    #$85    
       STA    $D6     
       LDA    ($D6),Y 
       TAY            
       LDA    #$08    
       BIT    SWCHB   
       BNE    LF6E3   
       LDX    #$00    
       LDY    #$0B    
LF6E3: STX    COLUBK  
       STY    COLUPF  
LF6E7: RTS            

LF6E8: INC    $9A     
       INC    $CD     
       LDA    $CD     
       CLC            
       ADC    #$F8    
       BCC    LF6F5   
       STA    $CD     
LF6F5: RTS            

LF6F6: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$E7,$A5,$A5,$A5,$E7,$C9
       .byte $BD,$FF,$81,$81,$81,$81,$81,$C9,$B7,$BD,$E7,$81,$E7,$24,$E7,$B7
       .byte $BD,$C9,$E7,$81,$C3,$81,$E7,$B7,$BD,$FF,$A5,$A5,$E7,$81,$81,$B7
       .byte $BD,$C3,$E7,$24,$E7,$81,$E7,$00,$C9,$FF,$E7,$24,$E7,$A5,$E7,$3C
       .byte $34,$30,$E7,$81,$81,$81,$81,$4D,$30,$8D,$E7,$A5,$E7,$A5,$E7,$FF
       .byte $00,$00,$E7,$A5,$E7,$81,$81,$9C,$3C,$F4,$00,$00,$00,$00,$00,$9C
       .byte $34,$F0,$00,$00,$00,$00,$00,$FF,$00,$00,$00,$42,$E7,$42,$00,$52
       .byte $32,$52,$00,$00,$E7,$00,$00,$56,$52,$8D,$00,$A5,$42,$A5,$00,$FF
       .byte $00,$00,$42,$00,$E7,$00,$42,$13,$25,$61,$17,$93,$F6,$15,$27,$E8
       .byte $A5,$F6,$92,$15,$61,$F6,$C6,$0F,$01,$00,$00,$00,$1F,$00,$00,$00
       .byte $F0,$10,$00,$00,$00,$F0,$80,$00,$00,$00,$F8,$00,$00,$00,$0F,$00
       .byte $FF,$10,$00,$00,$FF,$F0,$80,$1D,$1C,$19,$16,$14,$12,$10,$0E,$0D
       .byte $0C,$0A,$09,$04,$07,$03,$01,$05,$08,$02,$06
LF7C1: LDY    #$00    
       STY    $91     
LF7C5: STY    $DC     
LF7C7: STX    $DA     
       CLC            
       ADC    $8A     
       TAX            
       DEX            
       LDA    #$F0    
       AND    $DA     
       BNE    LF7D8   
       CPY    $91     
       BEQ    LF7E0   
LF7D8: INC    $91     
       LSR            
       LSR            
       LSR            
       LSR            
       STA    VSYNC,X 
LF7E0: INX            
       LDA    #$0F    
       AND    $DA     
       BNE    LF7EF   
       CPY    $91     
       BNE    LF7EF   
       CPY    $DC     
       BNE    LF7F3   
LF7EF: INC    $91     
       STA    VSYNC,X 
LF7F3: RTS            

LF7F4: LDA    INTIM   
       BNE    LF7F4   
       STA    WSYNC   
       RTS            

LF7FC: .byte $00,$F0,$00,$00
