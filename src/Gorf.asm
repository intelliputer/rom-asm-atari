; Disassembly of roms/Gorf.bin
; Disassembled Tue Oct  6 15:21:49 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Gorf.bin
;

      processor 6502
VSYNC   =  $00
VBLANK  =  $01
WSYNC   =  $02
NUSIZ0  =  $04
NUSIZ1  =  $05
COLUP0  =  $06
COLUP1  =  $07
COLUBK  =  $09
CTRLPF  =  $0A
REFP0   =  $0B
REFP1   =  $0C
PF0     =  $0D
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
HMOVE   =  $2A
HMCLR   =  $2B
CXP1FB  =  $33
INPT4   =  $3C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM8T   =  $0295
TIM64T  =  $0296

       ORG $F000
LF000: STA    WSYNC   
       LDA    #$17    
       STA    VBLANK  
       STA    VSYNC   
       STA    TIM8T   
LF00B: LDA    INTIM   
       BNE    LF00B   
       STA    WSYNC   
       STA    VSYNC   
       LDX    #$34    
       STX    TIM64T  
       INX            
       STX    PF0     
       STX    CTRLPF  
       LDA    SWCHB   
       AND    #$01    
       BEQ    LF028   
       JMP    LF27D   
LF028: LDX    #$02    
       STX    $82     
       STX    $80     
       LDA    #$05    
       STA    $81     
       INX            
       BNE    LF047   

START:
       CLD            
       LDA    #$00    
       TAX            
LF039: STA    VSYNC,X 
       TXS            
       STX    $91     
       INX            
       BNE    LF039   
       LDA    #$08    
       STA    AUDC0   
LF045: LDX    #$12    
LF047: LDA    #$00    
       STA    COLUBK  
       STA    AUDV0   
LF04D: STA    $80,X   
       INX            
       CPX    #$7F    
       BNE    LF04D   
       LDA    #$98    
       STA    $86     
       LDA    #$59    
       STA    $9B     
       STA    $88     
       JSR    LF48C   
       STX    $8A     
       STY    $8B     
       STA    $87     
       LDA    #$FF    
       STA    $F6     
       LDA    $80     
       CMP    #$04    
       BNE    LF080   
       JSR    LFE0D   
       STA    $9B     
       LDA    #$05    
       STA    $9A     
       LDA    #$48    
       STA    $DE     
       BNE    LF0DC   
LF080: CMP    #$02    
       BNE    LF0DE   
       LDA    #$10    
       STA    $A1     
       STA    $A6     
       LDA    #$06    
       STA    $95     
       LDX    #$02    
LF090: LDA    #$14    
LF092: STA    $B3,X   
       DEC    $95     
       BEQ    LF0A2   
       INX            
       CPX    #$14    
       BEQ    LF0AB   
       CLC            
       ADC    #$10    
       BNE    LF092   
LF0A2: LDA    #$06    
       STA    $95     
       INX            
       CPX    #$14    
       BNE    LF090   
LF0AB: LDX    #$02    
       LDA    #$06    
       STA    $95     
       LDA    #$09    
LF0B3: STA    $C7,X   
       DEC    $95     
       BEQ    LF0BC   
       INX            
       BNE    LF0B3   
LF0BC: INX            
       CPX    #$14    
       BEQ    LF0CA   
       LDY    #$06    
       STY    $95     
       CLC            
       ADC    #$11    
       BNE    LF0B3   
LF0CA: LDX    #$05    
       LDA    #$03    
LF0CE: STA    $DE,X   
       DEX            
       BPL    LF0CE   
       LSR            
       STA    $A7     
       STA    $AE     
       STX    $E6     
       STX    $E7     
LF0DC: BNE    LF10E   
LF0DE: TSX            
       LDA    #$2E    
       STA    $B5     
       STA    $BD     
       STA    $9D     
       STX    $B0     
       INX            
       LDA    #$1E    
LF0EC: STA    $B7,X   
       CLC            
       ADC    #$10    
       INX            
       CPX    #$03    
       BNE    LF0EC   
       STX    $DB     
       LDA    #$1E    
       STA    $DE     
       LDA    #$0F    
       LDX    $80     
       CPX    #$03    
       BEQ    LF108   
       STA    $B0     
       STA    $9D     
LF108: STA    $B1     
       LDA    #$04    
       STA    $AE     
LF10E: LDA    INTIM   
       BNE    LF10E   
       STA    WSYNC   
       STA    HMCLR   
       STA    VBLANK  
       LDA    $80     
       BEQ    LF151   
       CMP    #$04    
       BEQ    LF135   
       LDX    $97     
       BEQ    LF127   
       BNE    LF14B   
LF127: CMP    #$02    
       BEQ    LF14E   
       CMP    #$03    
       BNE    LF132   
       JMP    LF888   
LF132: JMP    LF4A9   
LF135: LDA    $93     
       BNE    LF13E   
       INC    $93     
       JMP    LFA9E   
LF13E: CMP    #$01    
       BNE    LF147   
       INC    $93     
       JMP    LFADF   
LF147: LDA    #$00    
       STA    $93     
LF14B: JMP    LF7BA   
LF14E: JMP    LFCEF   
LF151: LDX    #$96    
LF153: STA    WSYNC   
       DEX            
       BNE    LF153   
       DEX            
       STX    $9B     
LF15B: STA    WSYNC   
       LDA    #$00    
       STA    GRP1    
       LDX    $B2     
       BPL    LF18E   
       LDX    $9B     
       BEQ    LF17D   
       CPX    #$01    
       BNE    LF171   
       STA    COLUBK  
       STA    $B2     
LF171: LDX    #$0F    
       STA    GRP0    
LF175: STA    WSYNC   
       DEX            
       BNE    LF175   
       JMP    LF1E0   
LF17D: DEC    $91     
       DEC    $91     
       LDA    $91     
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $F5     
       STA    AUDF0   
       LSR            
       STA    AUDV0   
LF18E: LDA    #$00    
       LDX    $8A     
       LDY    $8B     
       STA    WSYNC   
       JSR    LF46E   
       STA    WSYNC   
       STA    HMOVE   
       LDX    #$05    
       LDA    #$98    
       STA    COLUP0  
LF1A3: LDA    LFFC8,X 
       STA    GRP0    
       DEX            
       STA    WSYNC   
       BNE    LF1A3   
       LDA    #$F8    
       STA    COLUP0  
       LDX    #$05    
LF1B3: LDA    LFFD1,X 
       STA    GRP0    
       DEX            
       STA    WSYNC   
       BNE    LF1B3   
       LDA    #$44    
       STA    COLUP0  
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STX    GRP0    
       LDA    $B2     
       BPL    LF1E0   
       LDA    $91     
       BNE    LF1E0   
       STA    $87     
       DEC    $81     
       BNE    LF1DC   
       STX    $80     
       DEX            
       BNE    LF1DE   
LF1DC: LDX    #$3C    
LF1DE: STX    $9B     
LF1E0: STA    WSYNC   
       STA    WSYNC   
       LDA    #$BF    
       STA    $98     
       LDA    #$FF    
       STA    $99     
       STA    WSYNC   
       STA    WSYNC   
       LDX    #$00    
       STX    HMP0    
       LDA    #$10    
       STA    HMP1    
       INX            
       STX    NUSIZ1  
       LDX    #$03    
       STX    NUSIZ0  
       LDA    #$84    
       STA    COLUP0  
       STA    COLUP1  
       ROR    CXP1FB  
       ROR    CXP1FB,X
       STA    RESP0   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       LDX    #$0C    
LF213: DEX            
       BNE    LF213   
       SEC            
LF217: LDY    $90     
       LDA    ($98),Y 
       STA    GRP0    
       LDY    $8F     
       LDA    ($98),Y 
       STA    GRP1    
       LDY    $8E     
       LDA    ($98),Y 
       TAX            
       LDY    $8D     
       LDA    ($98),Y 
       STA    $95     
       LDY    $8C     
       LDA    ($98),Y 
       LDY    $95     
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       LDA    $98     
       SEC            
       SBC    #$0A    
       STA    $98     
       BMI    LF217   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    WSYNC   
       STA    NUSIZ1  
       LDA    #$BF    
       STA    $98     
       LDX    #$07    
LF253: DEX            
       BNE    LF253   
       STA    RESP1   
       LDA    #$44    
       STA    COLUP1  
       STA    COLUP0  
LF25E: STA    WSYNC   
       LDY    $81     
       LDA    ($98),Y 
       STA    GRP1    
       LDA    $98     
       SEC            
       SBC    #$0A    
       STA    $98     
       BMI    LF25E   
       STA    WSYNC   
       STX    GRP1    
       LDX    #$19    
LF275: STA    WSYNC   
       DEX            
       BNE    LF275   
       JMP    LF000   
LF27D: LDX    #$01    
LF27F: LDA    $8C,X   
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    $8B,X   
       STA    $8B,X   
       INX            
       INX            
       CPX    #$03    
       BEQ    LF27F   
       LDA    $97     
       EOR    #$01    
       STA    $97     
       LDA    $9B     
       BNE    LF2A7   
       LDA    $87     
       BEQ    LF2AD   
       DEC    $87     
       DEC    $87     
       LDA    $87     
       CMP    #$05    
       BCS    LF2AD   
LF2A7: LDA    #$00    
       STA    AUDV0   
       STA    $87     
LF2AD: LDA    $B2     
       BMI    LF2DF   
       LDA    INPT4   
       BMI    LF2CE   
       LDA    $AD     
       BNE    LF2D2   
       LDA    $9B     
       BNE    LF2D2   
       LDA    $86     
       SEC            
       SBC    #$04    
       STA    $87     
       LDA    $88     
       STA    $89     
       LDA    #$01    
       STA    $AD     
       BNE    LF2D2   
LF2CE: LDA    #$00    
       STA    $AD     
LF2D2: LDA    SWCHA   
       AND    #$C0    
       CMP    #$40    
       BEQ    LF2E1   
       CMP    #$80    
       BEQ    LF2EE   
LF2DF: BNE    LF302   
LF2E1: LDA    $88     
       CLC            
       ADC    #$01    
       CMP    #$78    
       BEQ    LF2F9   
       STA    $88     
       BNE    LF2F9   
LF2EE: LDA    $88     
       SEC            
       SBC    #$01    
       CMP    #$28    
       BEQ    LF2F9   
       STA    $88     
LF2F9: LDA    $88     
       JSR    LF48C   
       STY    $8B     
       STX    $8A     
LF302: LDA    $9B     
       BEQ    LF338   
       BMI    LF31E   
       LDX    $80     
       CPX    #$04    
       BNE    LF31A   
       LDY    $F4     
       BEQ    LF31A   
       LDX    #$05    
       STX    AUDC1   
       STA    AUDF1   
       STX    AUDV1   
LF31A: DEC    $9B     
       BPL    LF335   
LF31E: LDA    $91     
       BEQ    LF329   
       LDX    INPT4   
       BMI    LF329   
       JMP    LF028   
LF329: DEC    $F4     
       BNE    LF335   
       SBC    #$0A    
       STA    $91     
       AND    #$D6    
       STA    COLUBK  
LF335: JMP    LF453   
LF338: STA    $F4     
       LDA    $F5     
       STA    COLUBK  
       LDA    $F0     
       BEQ    LF347   
       INC    $80     
       JMP    LF045   
LF347: LDA    $B2     
       BMI    LF335   
       JSR    LF9B9   
       LDA    $80     
       CMP    #$03    
       BEQ    LF365   
       CMP    #$04    
       BNE    LF35B   
       JMP    LF9D3   
LF35B: CMP    #$02    
       BNE    LF362   
       JMP    LFB30   
LF362: JMP    LF3E4   
LF365: LDA    $83     
       BPL    LF36D   
       LDA    $DD     
       BNE    LF373   
LF36D: JSR    LF5CE   
       JSR    LF5CE   
LF373: LDA    #$00    
       STA    COLUBK  
       JSR    LF965   
       JSR    LF74D   
       LDY    #$01    
       LDX    #$0B    
       LDA    #$04    
       JSR    LF856   
       CPX    #$02    
       BMI    LF3A2   
       LDY    #$00    
       STY    $C7,X   
       STY    $B3,X   
       STY    $87     
       LDA    #$48    
       STA    COLUBK  
       CPX    #$0A    
       BNE    LF39D   
       DEY            
       STY    $EF     
LF39D: LDA    #$01    
       JSR    LFE4E   
LF3A2: LDA    $C7     
       BEQ    LF3AA   
       LDA    $C8     
       STA    $D1     
LF3AA: LDY    #$00    
       LDX    #$0B    
       LDA    #$08    
       JSR    LF856   
       CPX    #$00    
       BMI    LF3D0   
       STY    $C7     
       STY    $C8     
       CPX    #$0B    
       BNE    LF3C7   
       STY    $BE     
       STY    $D2     
       STY    $C7     
       STY    $C8     
LF3C7: DEY            
       STY    $DD     
       LDA    #$1E    
       STA    $83     
       BNE    LF448   
LF3D0: JSR    LFEB0   
       LDX    #$04    
       JSR    LFE72   
       BNE    LF3DF   
       LDX    #$04    
       JSR    LFF0E   
LF3DF: STA    $DB     
       JMP    LF453   
LF3E4: JSR    LFF20   
       LDA    $B2     
       BEQ    LF40D   
       BMI    LF453   
       LDA    #$37    
       STA    AUDF1   
       DEC    $91     
       LDA    #$08    
       STA    AUDV0   
       LDA    $91     
       STA    AUDF0   
       BNE    LF406   
       LDA    #$02    
       STA    $80     
       INC    $82     
       JMP    LF045   
LF406: AND    #$F3    
       STA    COLUBK  
       JMP    LF453   
LF40D: JSR    LF5C9   
       JSR    LF613   
       JSR    LF70B   
LF416: LDX    #$03    
       TXA            
       LDY    #$01    
       DEX            
       JSR    LF856   
       DEY            
       CPX    #$00    
       BMI    LF42A   
       STY    $87     
       STY    $C7     
       STY    $B3     
LF42A: STY    $B4     
       STY    $C8     
       LDX    #$02    
       LDA    #$0B    
       JSR    LF856   
       CPX    #$00    
       BMI    LF453   
       LDA    $80     
       CMP    #$04    
       BNE    LF442   
       JSR    LFE0D   
LF442: LDA    #$00    
       STA    $C7,X   
       STA    $B3,X   
LF448: LDX    #$00    
       STX    $91     
       STX    AUDV1   
       DEX            
       STX    AUDV0   
       STX    $B2     
LF453: LDX    #$00    
LF455: LDA    $8C,X   
       TAY            
       AND    #$F0    
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $8D,X   
       TYA            
       AND    #$0F    
       STA    $8C,X   
       INX            
       INX            
       CPX    #$02    
       BEQ    LF455   
       JMP    LF10E   
LF46E: STA    NUSIZ0  
       STX    HMP0    
       CPY    #$00    
       BEQ    LF47A   
       NOP            
LF477: DEY            
       BNE    LF477   
LF47A: STA    RESP0   
       RTS            

LF47D: STA    NUSIZ1  
       STX    HMP1    
       CPY    #$00    
       BEQ    LF489   
       NOP            
LF486: DEY            
       BNE    LF486   
LF489: STA    RESP1   
       RTS            

LF48C: TAY            
       AND    #$0F    
       STA    $95     
       TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       CLC            
       ADC    $95     
       CMP    #$0F    
       BCC    LF4A1   
       SBC    #$0F    
       INY            
LF4A1: EOR    #$07    
       ASL            
       ASL            
       ASL            
       ASL            
       TAX            
       RTS            

LF4A9: STA    WSYNC   
       LDA    $9D     
       LDX    $AF     
       STX    REFP0   
       STX    REFP1   
       BEQ    LF4BA   
       SEC            
       SBC    #$12    
       BNE    LF4BD   
LF4BA: CLC            
       ADC    #$12    
LF4BD: JSR    LF48C   
       LDA    #$05    
       STA    WSYNC   
       JSR    LF47D   
       LDA    $9D     
       JSR    LF48C   
       LDA    #$05    
       STA    WSYNC   
       JSR    LF46E   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$28    
       STA    COLUP0  
       LDA    #$96    
       STA    COLUP1  
       LDX    #$04    
       LDY    #$06    
LF4E3: INY            
       STA    WSYNC   
       CPY    $B1     
       BNE    LF4E3   
       INY            
       STA    WSYNC   
LF4ED: LDA    $F6     
       BNE    LF4F3   
       LDA    $84     
LF4F3: STA    WSYNC   
       PHA            
       AND    LFF64,X 
       STA    GRP0    
       PLA            
       AND    LFF68,X 
       STA    GRP1    
       INY            
       LDA    $84     
       ROL            
       EOR    $84     
       ADC    $84     
       STA    $84     
       DEX            
       BNE    LF4ED   
       INY            
       STA    WSYNC   
       STX    GRP1    
LF513: LDA    $F6     
       BNE    LF519   
       LDA    $84     
LF519: AND    LFFCE,X 
       STA    GRP0    
       LDA    #$86    
       STA    COLUP0  
       INY            
       INX            
       CPX    #$04    
       STA    WSYNC   
       BNE    LF513   
LF52A: LDA    #$00    
       STA    GRP0    
       STA    REFP0   
       STA    REFP1   
       LDA    $C7     
       ORA    #$08    
       STA    COLUP0  
       INY            
       CPY    #$96    
       BNE    LF540   
LF53D: JMP    LF15B   
LF540: STA    WSYNC   
       LDA    $B3     
       BEQ    LF5B5   
       CMP    #$8C    
       BCC    LF54C   
       LDA    #$8C    
LF54C: TAX            
       INY            
       CPY    #$96    
       BEQ    LF53D   
       STY    $96     
       LDY    $80     
       CPY    #$02    
       BEQ    LF565   
       LDA    $C7     
       LSR            
       STA    AUDF1   
       LDA    #$08    
       STA    AUDV1   
       STA    AUDC1   
LF565: TXA            
       STA    WSYNC   
       JSR    LF48C   
       LDA    #$00    
       STA    WSYNC   
       JSR    LF46E   
       STA    WSYNC   
       LDY    $96     
       INY            
       INY            
       INY            
       CPY    #$96    
       BEQ    LF5B2   
       STA    WSYNC   
       STA    HMOVE   
LF581: INY            
       CPY    #$96    
       BEQ    LF5B2   
       STA    WSYNC   
       TYA            
       CMP    $C7     
       BNE    LF581   
       LDX    #$0A    
       INY            
       CPY    #$96    
       BEQ    LF5B2   
LF594: LDA    $80     
       CMP    #$02    
       BNE    LF59F   
       LDA    #$10    
       DEX            
       BNE    LF5A2   
LF59F: LDA    LFF6C,X 
LF5A2: STA    GRP0    
       DEX            
       STA    WSYNC   
       INY            
       CPY    #$96    
       BNE    LF5B9   
       LDA    #$00    
       STA    GRP0    
       STA    WSYNC   
LF5B2: JMP    LF15B   
LF5B5: STA    AUDV1   
       BEQ    LF5C0   
LF5B9: CPX    #$00    
       BNE    LF594   
       DEY            
       STX    GRP0    
LF5C0: INY            
       CPY    #$96    
       STA    WSYNC   
       BNE    LF5C0   
       BEQ    LF5B2   
LF5C9: DEC    $AE     
       BEQ    LF5CE   
       RTS            

LF5CE: LDA    #$03    
       STA    $AE     
       LDA    $AF     
       BEQ    LF5E4   
       DEC    $9D     
       LDA    $9D     
       CMP    #$23    
       BPL    LF603   
       LDA    #$00    
       STA    $AF     
       BEQ    LF5F0   
LF5E4: INC    $9D     
       LDA    $9D     
       CMP    #$78    
       BMI    LF603   
       LDA    #$08    
       STA    $AF     
LF5F0: LDA    $B0     
       BNE    LF604   
       LDA    $B1     
       SEC            
       SBC    #$08    
       STA    $B1     
       CMP    #$0A    
       BPL    LF603   
       LDA    #$01    
LF601: STA    $B0     
LF603: RTS            

LF604: LDA    $B1     
       CLC            
       ADC    #$08    
       STA    $B1     
       CMP    #$46    
       BMI    LF603   
       LDA    #$00    
       BEQ    LF601   
LF613: LDA    $C7     
       LDX    $80     
       CPX    #$02    
       BNE    LF64D   
       CMP    #$00    
       BNE    LF695   
LF61F: DEC    $9E     
       BNE    LF694   
       JSR    LFF20   
       AND    #$0F    
       ADC    #$01    
       STA    $9E     
       AND    #$07    
       CMP    #$05    
       BCS    LF61F   
       CLC            
       ADC    #$0C    
       TAX            
       LDA    #$01    
       BIT    $9F     
       BEQ    LF641   
       TXA            
       SEC            
       SBC    #$06    
       TAX            
LF641: LDA    $C9,X   
       LDY    $B5,X   
       BEQ    LF694   
       STY    $9D     
       STA    $B1     
       BNE    LF651   
LF64D: CMP    #$00    
       BNE    LF695   
LF651: LDA    $9D     
       STA    $B3     
       LDA    $B1     
       LDX    $AC     
       BEQ    LF678   
       CMP    #$3B    
       BCC    LF667   
       CMP    #$96    
       BCS    LF667   
       DEC    $83     
       BEQ    LF66A   
LF667: JMP    LF702   
LF66A: TAX            
       LDA    $9D     
       CMP    #$0A    
       BCS    LF675   
       CMP    #$87    
       BCS    LF667   
LF675: STA    $B3     
       TXA            
LF678: CLC            
       CMP    #$7C    
       BCS    LF667   
       ADC    #$10    
       STA    $C7     
       LDA    #$00    
       STA    $E9     
       STA    $EC     
       LDA    #$0A    
       STA    $EE     
LF68B: JSR    LFF20   
       AND    #$0F    
       BEQ    LF68B   
       STA    $83     
LF694: RTS            

LF695: DEC    $EE     
       BNE    LF6BD   
       LDA    $88     
       SEC            
       SBC    $B3     
       BPL    LF6AC   
       EOR    #$FF    
       ADC    #$01    
       STA    $E9     
       LDA    #$01    
       STA    $EB     
       BNE    LF6B2   
LF6AC: STA    $E9     
       LDA    #$00    
       STA    $EB     
LF6B2: LDA    $86     
       SEC            
       SBC    $C7     
       STA    $EC     
       LDA    #$0A    
       STA    $EE     
LF6BD: LDX    $82     
       CPX    #$0B    
       BCC    LF6C5   
       LDX    #$0A    
LF6C5: CPX    #$03    
       BMI    LF6D2   
       LDA    $97     
       BEQ    LF6D0   
       INX            
       BNE    LF6D2   
LF6D0: LDX    #$01    
LF6D2: LDA    $E9     
       CLC            
       ADC    $EA     
       STA    $EA     
       LDA    $B3     
       LDY    $EB     
       BEQ    LF6E6   
       BCC    LF6E8   
       CLC            
       SBC    #$00    
       BNE    LF6E8   
LF6E6: ADC    #$00    
LF6E8: STA    $B3     
       LDA    $EC     
       CLC            
       ADC    $EC     
       STA    $EC     
       LDA    #$00    
       ADC    $C7     
       CLC            
       ADC    #$01    
       STA    $C7     
       CMP    #$93    
       BCS    LF702   
       DEX            
       BNE    LF6D2   
       RTS            

LF702: LDA    #$00    
       STA    $B3     
       STA    $C7     
       STA    AUDV1   
LF70A: RTS            

LF70B: LDA    $87     
       BEQ    LF70A   
       SEC            
       SBC    $B1     
       BPL    LF718   
       EOR    #$FF    
       ADC    #$01    
LF718: CMP    #$07    
       BPL    LF70A   
       LDA    $89     
       SEC            
       SBC    #$0E    
       LDX    $AF     
       BEQ    LF727   
       ADC    #$12    
LF727: SEC            
       SBC    $9D     
       BPL    LF730   
       EOR    #$FF    
       ADC    #$01    
LF730: CMP    #$01    
       BMI    LF73D   
       CMP    #$11    
       BPL    LF70A   
       LDA    #$00    
       STA    $87     
       RTS            

LF73D: LDX    #$01    
       STX    $B2     
       LDA    #$10    
       JSR    LFE4E   
       DEX            
       STX    $F6     
       STX    $91     
       BEQ    LF702   
LF74D: LDA    $83     
       BEQ    LF75A   
       BMI    LF776   
       DEC    $83     
       LDA    #$00    
       STA    AUDV1   
       RTS            

LF75A: LDA    #$07    
       STA    AUDC1   
       STA    AUDV1   
       LDA    $B1     
       ADC    #$27    
       STA    $C7     
       ADC    #$01    
       STA    $C8     
       LDA    $BD     
       BEQ    LF770   
       LDA    #$FF    
LF770: STA    $DD     
       TSX            
       STX    $83     
LF775: RTS            

LF776: LDA    $DD     
       BMI    LF79C   
       BNE    LF786   
       DEC    $EF     
       BNE    LF775   
       LDA    #$01    
       STA    $BD     
       BNE    LF75A   
LF786: INC    $C7     
       INC    $C7     
       LDA    $C7     
       STA    AUDF1   
       CMP    #$92    
       BCS    LF793   
       RTS            

LF793: LDA    #$32    
       STA    $83     
       LDA    #$00    
       STA    $C7     
       RTS            

LF79C: INC    $C8     
       LDA    $C8     
       STA    AUDF1   
       CMP    #$97    
       BEQ    LF7B5   
       INC    $C8     
       LDA    $C8     
       CMP    #$97    
       BEQ    LF7B5   
       LDA    $B1     
       ADC    #$27    
       STA    $C7     
       RTS            

LF7B5: LDA    #$01    
       STA    $DD     
       RTS            

LF7BA: LDA    $87     
       STA    $96     
       LDY    #$02    
       LDX    #$00    
       LDA    $87     
       LSR            
       LSR            
       EOR    #$FF    
       STA    AUDF0   
       LDA    $89     
       STA    WSYNC   
       JSR    LF48C   
       LDA    #$00    
       STA    WSYNC   
       JSR    LF46E   
       STA    WSYNC   
       LDA    $87     
       STA    COLUP0  
       LDA    #$28    
       STA    COLUP1  
       LDA    $BE     
       STA    WSYNC   
       JSR    LF48C   
       LDA    #$00    
       STA    WSYNC   
       JSR    LF47D   
       STA    WSYNC   
       STA    HMOVE   
       LDY    #$07    
       LDA    #$08    
       LDX    $87     
       BNE    LF800   
       STX    AUDV0   
       BEQ    LF802   
LF800: STA    AUDV0   
LF802: LDX    $80     
       CPX    #$03    
       BNE    LF80E   
       LDX    $D2     
       BEQ    LF80E   
       STA    $F2     
LF80E: LDA    $B2     
       BNE    LF818   
       LDA    #$03    
       STA    $F3     
       BNE    LF81C   
LF818: LDA    #$00    
       STA    $F3     
LF81C: INY            
       CPY    #$97    
       BEQ    LF84C   
       STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       CPY    $F1     
       BNE    LF83A   
       LDX    $F2     
       BEQ    LF83A   
       LDA    LFFDE,X 
       STA    GRP1    
       DEC    $F2     
       INC    $F1     
LF83A: CPY    $96     
       BNE    LF81C   
       LDX    $F3     
       BEQ    LF81C   
       LDA    #$08    
       STA    GRP0    
       DEC    $F3     
       INC    $96     
       BNE    LF81C   
LF84C: STA    WSYNC   
       INY            
       CPY    #$98    
       BNE    LF84C   
       JMP    LF15B   
LF856: STA    $9C     
LF858: CPY    #$01    
       BNE    LF863   
       LDA    $87     
       BNE    LF863   
       LDX    #$FF    
       RTS            

LF863: LDA.wy $0086,Y 
       SEC            
       SBC    $C7,X   
       BPL    LF86F   
       EOR    #$FF    
       ADC    #$00    
LF86F: CMP    $9C     
       BMI    LF877   
LF873: DEX            
       BPL    LF858   
       RTS            

LF877: LDA.wy $0088,Y 
       SEC            
       SBC    $B3,X   
       BPL    LF883   
       EOR    #$FF    
       ADC    #$00    
LF883: CMP    #$05    
       BPL    LF873   
       RTS            

LF888: STA    WSYNC   
       LDA    $B5     
       JSR    LF48C   
       LDA    #$00    
       STA    WSYNC   
       JSR    LF46E   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    HMOVE   
       LDY    #$06    
       LDX    #$08    
       LDA    #$44    
       STA    COLUP0  
LF8A6: INY            
       STY    $96     
       CPY    $B1     
       STA    WSYNC   
       BNE    LF8A6   
LF8AF: LDA    LFFD6,X 
       LDY    $B5     
       BEQ    LF8B8   
       STA    GRP0    
LF8B8: DEX            
       STA    WSYNC   
       BNE    LF8AF   
       STX    GRP0    
       LDA    #$28    
       STA    COLUP0  
       LDA    $B7     
       BNE    LF8D5   
       LDA    $B8     
       BNE    LF8D5   
       LDA    $B9     
       BNE    LF8D5   
       STA    WSYNC   
       STA    WSYNC   
       BEQ    LF8E1   
LF8D5: STA    WSYNC   
       JSR    LF48C   
       LDA    $DB     
       STA    WSYNC   
       JSR    LF46E   
LF8E1: STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDX    #$08    
       STA    WSYNC   
       STA    HMOVE   
LF8ED: STA    WSYNC   
       LDA    LFFDE,X 
       LDY    $DB     
       BMI    LF8F8   
       STA    GRP0    
LF8F8: DEX            
       BNE    LF8ED   
       STA    WSYNC   
       STX    GRP0    
       LDA    #$76    
       STA    COLUP0  
       LDA    $BD     
       STA    WSYNC   
       JSR    LF48C   
       LDA    #$00    
       STA    WSYNC   
       JSR    LF46E   
       STA    WSYNC   
       STA    WSYNC   
       LDX    #$08    
       STA    WSYNC   
       STA    HMOVE   
LF91B: STA    WSYNC   
       LDA    LFFE6,X 
       LDY    $BD     
       BEQ    LF926   
       STA    GRP0    
LF926: DEX            
       BNE    LF91B   
       LDA    $96     
       CLC            
       ADC    #$26    
       STA    $96     
       TAY            
       STA    WSYNC   
       STX    GRP0    
       LDA    #$2A    
       STA    COLUP0  
       LDA    $BD     
       BEQ    LF959   
       LDA    $C7     
       BEQ    LF959   
LF941: INY            
       CPY    $C7     
       STA    WSYNC   
       BNE    LF941   
LF948: LDA    #$18    
       STA    GRP0    
       INY            
       CPY    $C8     
       STA    WSYNC   
       BNE    LF948   
       LDA    #$00    
       STA    GRP0    
       BEQ    LF95B   
LF959: STA    AUDV1   
LF95B: INY            
       STA    WSYNC   
       CPY    #$98    
       BNE    LF95B   
       JMP    LF15B   
LF965: LDA    $9D     
       CMP    #$8C    
       BMI    LF974   
       LDA    #$8C    
       STA    $9D     
       LDA    #$08    
       STA    $AF     
       RTS            

LF974: LDX    $B5     
       BEQ    LF97E   
       STA    $B5     
       LDA    $B1     
       STA    $C9     
LF97E: LDX    $BD     
       BEQ    LF98D   
       LDA    $9D     
       STA    $BD     
       LDA    $B1     
       CLC            
       ADC    #$1B    
       STA    $D1     
LF98D: LDX    #$00    
       LDY    #$00    
       LDA    $9D     
       SEC            
       SBC    #$10    
       STA    $96     
LF998: LDA    $B7,X   
       BEQ    LF9B3   
       LDA    $B1     
       CLC            
       ADC    #$0D    
       STA    $CB,X   
       TXA            
       TAY            
       LDA    $96     
       CPY    #$00    
       BEQ    LF9B1   
LF9AB: CLC            
       ADC    #$10    
       DEY            
       BNE    LF9AB   
LF9B1: STA    $B7,X   
LF9B3: INX            
       CPX    #$03    
       BNE    LF998   
       RTS            

LF9B9: LDA    $80     
       CMP    #$04    
       BEQ    LF9D2   
       LDA    $F7     
       BNE    LF9D0   
       LDX    #$12    
LF9C5: LDA    $B4,X   
       BNE    LF9D2   
       DEX            
       BNE    LF9C5   
LF9CC: LDA    #$78    
       STA    $9B     
LF9D0: STA    $F0     
LF9D2: RTS            

LF9D3: LDA    $9D     
       STA    $B4     
       LDA    $B1     
       STA    $C8     
       LDY    #$01    
       LDX    #$01    
       LDA    #$05    
       JSR    LF856   
       CPX    #$01    
       BMI    LF9FD   
       LDA    #$01    
       STA    $F4     
       JSR    LFE4E   
       DEC    $9A     
       BEQ    LFA0F   
       LDA    $DE     
       CLC            
       ADC    #$40    
       STA    $DE     
       JMP    LFA08   
LF9FD: JSR    LFA18   
       JSR    LF613   
LFA03: JMP    LF416   
LFA06: PLA            
       PLA            
LFA08: JSR    LFE0D   
       STA    $9B     
       BNE    LFA03   
LFA0F: JSR    LFE0D   
       JSR    LF9CC   
       JMP    LF453   
LFA18: LDA    $A0     
       BMI    LFA22   
       DEC    $A1     
       BNE    LFA22   
       DEC    $A0     
LFA22: LDA    $B1     
       CMP    #$73    
       BCC    LFA2F   
       CMP    #$A0    
       BCS    LFA2F   
       JMP    LFA06   
LFA2F: LDA    $A7     
       AND    #$01    
       BEQ    LFA3D   
       INC    $9D     
       LDA    $A0     
       BPL    LFA3D   
       INC    $9D     
LFA3D: LDA    $A7     
       AND    #$02    
       BEQ    LFA4B   
       DEC    $9D     
       LDA    $A0     
       BPL    LFA4B   
       DEC    $9D     
LFA4B: LDA    $A7     
       AND    #$04    
       BEQ    LFA59   
       INC    $B1     
       LDA    $A0     
       BPL    LFA59   
       INC    $B1     
LFA59: LDA    $A7     
       AND    #$08    
       BEQ    LFA67   
       DEC    $B1     
       LDA    $A0     
       BPL    LFA67   
       DEC    $B1     
LFA67: DEC    $A6     
       BNE    LFA94   
       INC    $E5     
       LDA    $E5     
       CMP    #$08    
       BNE    LFA77   
       LDA    #$00    
       STA    $E5     
LFA77: TAX            
       LDA    LFF7B,X 
       STA    $A7     
       LDA    $B1     
       CMP    #$08    
       BCS    LFA86   
       TSX            
       STX    $B1     
LFA86: LDA    $A2     
       EOR    #$01    
       STA    $A2     
       BEQ    LFA90   
       INC    $A5     
LFA90: LDA    $A5     
       STA    $A6     
LFA94: LDA    $9D     
       JSR    LF48C   
LFA99: STX    $A3     
       STY    $A4     
       RTS            

LFA9E: LDX    #$2A    
LFAA0: STA    WSYNC   
       DEX            
       BNE    LFAA0   
       LDA    #$08    
       STA    REFP1   
       TXA            
       LDX    $A8     
       LDY    $A9     
       STA    WSYNC   
       JSR    LF46E   
       STA    WSYNC   
       LDX    $AA     
       LDY    $AB     
       STA    WSYNC   
       JSR    LF47D   
       STA    WSYNC   
       STA    HMOVE   
       LDX    #$0D    
LFAC4: LDA    LFFEE,X 
       STA    GRP0    
       STA    GRP1    
       STA    WSYNC   
       DEX            
       BNE    LFAC4   
       STX    REFP1   
       LDY    #$3D    
       LDA    $F4     
       BNE    LFB27   
       LDY    #$3B    
       STY    $AC     
       JMP    LF52A   
LFADF: LDY    #$02    
       LDA    $9B     
       BNE    LFB27   
       LDA    $9D     
       CMP    #$02    
       BCC    LFB27   
       CMP    #$96    
       BCS    LFB27   
LFAEF: CPY    $B1     
       BEQ    LFAFD   
       STA    WSYNC   
       INY            
       CPY    #$98    
       BNE    LFAEF   
LFAFA: JMP    LF15B   
LFAFD: LDX    $A3     
       STY    $96     
       LDY    $A4     
       LDA    $A0     
       BPL    LFB09   
       LDA    #$05    
LFB09: STA    WSYNC   
       JSR    LF46E   
       STA    WSYNC   
       STA    HMOVE   
       LDY    $96     
       INY            
       INY            
       LDA    $DE     
       STA    COLUP0  
       LDX    #$04    
LFB1C: LDA    LFF76,X 
       STA    GRP0    
       STA    WSYNC   
       INY            
       DEX            
       BPL    LFB1C   
LFB27: CPY    #$98    
       BEQ    LFAFA   
       INY            
       STA    WSYNC   
       BNE    LFB27   
LFB30: LDA    $A8     
       BEQ    LFB40   
       LDX    $F7     
       BNE    LFB3D   
       STA    $F7     
       JMP    LF448   
LFB3D: JMP    LF416   
LFB40: LDY    #$01    
       LDX    #$13    
       LDA    #$05    
       JSR    LF856   
       CPX    #$00    
       BPL    LFB50   
       JMP    LFBDA   
LFB50: CPX    #$02    
       BCC    LFB89   
       LDA    #$50    
       LDY    #$00    
       JSR    LFE4E   
       INC    $9A     
       LDA    $9A     
       CMP    #$05    
       BNE    LFB6B   
       LDA    $A1     
       SBC    #$05    
       STA    $A1     
       BNE    LFB89   
LFB6B: CMP    #$09    
       BNE    LFB77   
       LDA    $A1     
       SBC    #$05    
       STA    $A1     
       BNE    LFB89   
LFB77: CMP    #$11    
       BNE    LFB89   
       LDA    $A1     
       SBC    #$01    
       SBC    $82     
       BEQ    LFB85   
       BPL    LFB87   
LFB85: LDA    #$01    
LFB87: STA    $A1     
LFB89: LDA    #$0A    
       STA    $94     
       STA    AUDF1   
       STA    AUDV1   
       LDA    #$14    
       STA    AUDC1   
       LDA    #$00    
       STA    $B3,X   
       STA    $89     
       STA    $87     
       CPX    #$02    
       BEQ    LFBA3   
       STA    $C7,X   
LFBA3: LDX    #$02    
       JSR    LFE72   
       STA    $DE     
       LDX    #$05    
       JSR    LFE72   
       STA    $DF     
       LDX    #$08    
       JSR    LFE72   
       STA    $E0     
       LDX    #$0B    
       JSR    LFE72   
       STA    $E1     
       LDX    #$0E    
       JSR    LFE72   
       STA    $E2     
       LDX    #$11    
       JSR    LFE72   
       STA    $E3     
       LDX    #$08    
       JSR    LFF0A   
       BPL    LFBDA   
       LDA    $9F     
       ORA    #$02    
       STA    $9F     
LFBDA: LDX    $94     
       BEQ    LFBE9   
       DEC    $94     
       LDA    $94     
       STA    AUDV1   
       STA    AUDF1   
       JMP    LFBEB   
LFBE9: STX    AUDV1   
LFBEB: LDX    #$0E    
       JSR    LFF0A   
       BPL    LFBF8   
       LDA    $9F     
       ORA    #$01    
       STA    $9F     
LFBF8: JSR    LF613   
       LDX    #$02    
       DEC    $A6     
       BNE    LFC76   
       LDA    $A7     
       AND    #$01    
       BNE    LFC42   
       LDA    $A7     
       AND    #$02    
       BNE    LFC44   
       LDA    #$91    
       STA    $B0     
       LDX    #$13    
LFC13: LDA    #$06    
       STA    $95     
       LDA    #$00    
       STA    $B3     
       STA    $C7     
LFC1D: LDA    $C7,X   
       BEQ    LFC7F   
       LDY    $AB     
       BNE    LFC33   
       CLC            
       ADC    #$11    
       CMP    $B0     
       BNE    LFC38   
       SEC            
       SBC    #$07    
       STA    $AA     
       BNE    LFC40   
LFC33: CLC            
       ADC    #$0A    
       BNE    LFC7F   
LFC38: CMP    #$9B    
       BNE    LFC7F   
       STA    $A8     
       BEQ    LFC92   
LFC40: BNE    LFC7F   
LFC42: BNE    LFCA6   
LFC44: BNE    LFCB5   
LFC46: LDA    $A1     
       STA    $A6     
       LDA    $93     
       EOR    #$01    
       STA    $93     
       BEQ    LFC5A   
       LDA    #$00    
       STA    $E8     
       STA    AUDV1   
       BEQ    LFC76   
LFC5A: LDA    #$18    
       STA    $E8     
       LDX    #$0C    
       STX    AUDC1   
       LDX    #$0C    
       STX    AUDV1   
       LDA    $92     
       EOR    #$01    
       STA    $92     
       BEQ    LFC72   
       LDA    #$1F    
       BNE    LFC74   
LFC72: LDA    #$1D    
LFC74: STA    AUDF1   
LFC76: LDA    #$00    
       STA    $AA     
       STA    $AB     
       JMP    LF416   
LFC7F: STA    $C7,X   
       DEX            
       CPX    #$01    
       BEQ    LFC92   
       DEC    $95     
       BNE    LFC1D   
       LDA    $AA     
       BEQ    LFC13   
       STA    $AB     
       BNE    LFC13   
LFC92: LDA    $E4     
       CMP    #$01    
       BEQ    LFC9E   
       LDA    #$01    
       STA    $A7     
       BNE    LFC46   
LFC9E: LDA    #$02    
       STA    $A7     
LFCA2: JMP    LFC46   
LFCA5: INX            
LFCA6: CPX    #$14    
       BEQ    LFCC3   
       LDA    $B3,X   
       BEQ    LFCA5   
       INC    $B3,X   
       INC    $B3,X   
       BNE    LFCA5   
LFCB4: INX            
LFCB5: CPX    #$14    
       BEQ    LFCC3   
       LDA    $B3,X   
       BEQ    LFCB4   
       DEC    $B3,X   
       DEC    $B3,X   
       BNE    LFCB4   
LFCC3: LDX    #$02    
       LDA    $A7     
       CMP    #$01    
       BNE    LFCD8   
LFCCB: LDA    $B3,X   
       CMP    #$8C    
       BEQ    LFCE5   
       INX            
       CPX    #$14    
       BNE    LFCCB   
       BEQ    LFCA2   
LFCD8: LDA    $B3,X   
       CMP    #$14    
       BEQ    LFCE5   
       INX            
       CPX    #$14    
       BNE    LFCD8   
       BEQ    LFCA2   
LFCE5: LDA    $A7     
       STA    $E4     
       LDA    #$04    
       STA    $A7     
       BNE    LFCA2   
LFCEF: LDY    #$08    
       STA    WSYNC   
       INY            
       LDA    $C9     
       STA    $AE     
       STX    $E5     
       DEX            
       STX    $E6     
       STX    $E7     
       LDA    $DE     
       STA    $DB     
       LDA    $DF     
       STA    $DC     
       LDA    #$0C    
       STA    COLUP0  
       STA    COLUP1  
LFD0D: CPY    $AE     
       BEQ    LFD16   
       STA    WSYNC   
       INY            
       BNE    LFD0D   
LFD16: TYA            
       SEC            
       SBC    #$09    
       TAY            
       JSR    LFD71   
       LDA    $E0     
       STA    $DB     
       LDA    $E1     
       STA    $DC     
       LDA    $E5     
       CLC            
       ADC    #$06    
       STA    $E5     
       LDA    #$46    
       STA    COLUP0  
       STA    COLUP1  
       LDA    $9F     
       EOR    #$03    
       BEQ    LFD5C   
       JSR    LFD71   
       LDA    $E2     
       STA    $DB     
       LDA    $E3     
       STA    $DC     
       LDA    $E5     
       CLC            
       ADC    #$06    
       STA    $E5     
       LDA    #$C6    
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$01    
       BIT    $9F     
       BNE    LFD5C   
       JSR    LFD71   
       BNE    LFD5D   
LFD5C: INY            
LFD5D: LDA    $E8     
       CMP    #$19    
       BCC    LFD69   
       LDA    #$18    
       STA    $E8     
       BNE    LFD6D   
LFD69: LDA    #$00    
       STA    $E8     
LFD6D: INY            
       JMP    LF52A   
LFD71: STA    WSYNC   
       INY            
       LDX    $E5     
       LDA    $B5,X   
       BNE    LFD8E   
       LDA    $B6,X   
       BNE    LFD8E   
       LDA    $B7,X   
       BNE    LFD8E   
       LDX    #$03    
LFD84: STA    WSYNC   
       INY            
       DEX            
       BNE    LFD84   
       STX    $E6     
       BEQ    LFDA3   
LFD8E: INY            
       STY    $96     
       STA    WSYNC   
       JSR    LF48C   
       LDA    $DB     
       STA    WSYNC   
       JSR    LF46E   
       STA    WSYNC   
       LDY    $96     
       INY            
       INY            
LFDA3: LDX    $E5     
       LDA    $B8,X   
       BNE    LFDBD   
       LDA    $B9,X   
       BNE    LFDBD   
       LDA    $BA,X   
       BNE    LFDBD   
       LDX    #$03    
LFDB3: STA    WSYNC   
       INY            
       DEX            
       BNE    LFDB3   
       STX    $E7     
       BEQ    LFDD2   
LFDBD: INY            
       STY    $96     
       STA    WSYNC   
       JSR    LF48C   
       LDA    $DC     
       STA    WSYNC   
       JSR    LF47D   
       STA    WSYNC   
       LDY    $96     
       INY            
       INY            
LFDD2: STA    WSYNC   
       STA    HMOVE   
       INY            
       LDX    $E8     
       STY    $96     
       LDY    #$00    
LFDDD: LDA    $E6     
       BEQ    LFDE4   
       LDA    LFF35,X 
LFDE4: STA    GRP0    
       LDA    $E7     
       BEQ    LFDED   
       LDA    LFF35,X 
LFDED: STA    GRP1    
       STA    WSYNC   
       INX            
       INY            
       CPY    #$08    
       BNE    LFDDD   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STX    $E8     
       LDA    $96     
       CLC            
       ADC    #$08    
       TAY            
       STA    $E6     
       STA    $E7     
       STA    WSYNC   
       INY            
       RTS            

LFE0D: LDA    #$00    
       STA    $A0     
       STA    $A2     
       STA    $87     
       STA    $B3     
       STA    $C7     
       LDA    #$02    
       STA    $A5     
       STA    $A6     
       LDA    #$37    
       STA    $A1     
       STA    $B1     
       LDA    #$4F    
       JSR    LF48C   
       STX    $A8     
       STY    $A9     
       LDA    #$58    
       STA    $9D     
       JSR    LF48C   
       STX    $AA     
       STY    $AB     
       JSR    LFA99   
       JSR    LFF20   
       AND    #$07    
       TAX            
       LDA    LFF7B,X 
       STA    $A7     
       STX    $E5     
       STA    $83     
       LDA    #$37    
       RTS            

LFE4E: SED            
       BNE    LFE5A   
       CLC            
       ADC    $8C     
       STA    $8C     
       LDA    #$00    
       BEQ    LFE5B   
LFE5A: CLC            
LFE5B: ADC    $8E     
       STA    $8E     
       BCC    LFE6A   
       LDA    $81     
       CMP    #$09    
       SEC            
       BEQ    LFE6A   
       INC    $81     
LFE6A: LDA    $90     
       ADC    #$00    
       STA    $90     
       CLD            
       RTS            

LFE72: LDY    #$00    
       STY    $95     
LFE76: LDA    $B3,X   
       BNE    LFE82   
LFE7A: INX            
       INY            
       CPY    #$03    
       BEQ    LFE9A   
       BNE    LFE76   
LFE82: CPY    #$00    
       BEQ    LFE96   
       CPY    #$01    
       BEQ    LFE92   
       LDA    #$01    
LFE8C: ORA    $95     
       STA    $95     
       BNE    LFE7A   
LFE92: LDA    #$02    
       BNE    LFE8C   
LFE96: LDA    #$04    
       BNE    LFE8C   
LFE9A: LDA    #$01    
       BIT    $95     
       BEQ    LFEA4   
       LDA    $95     
LFEA2: LSR            
       RTS            

LFEA4: LDA    $95     
       CMP    #$04    
       BEQ    LFEAD   
       LSR            
       BNE    LFEA2   
LFEAD: LDA    #$00    
       RTS            

LFEB0: LDY    $BE     
       BNE    LFED5   
       DEC    $DE     
       BNE    LFF09   
       LDA    #$1E    
       STA    $DE     
       LDX    #$06    
LFEBE: LDA    $B3,X   
       BNE    LFEC9   
       DEX            
       CPX    #$01    
       BNE    LFEBE   
       BEQ    LFF09   
LFEC9: STA    $BE     
       LDA    $C7,X   
       STA    $D2     
       LDA    #$00    
       STA    $B3,X   
       STA    $C7,X   
LFED5: LDA    $D2     
       CMP    #$20    
       BCC    LFEE3   
       LDA    $E4     
       BEQ    LFEE3   
       BPL    LFEEE   
       BMI    LFEF7   
LFEE3: LDA    $88     
       SEC            
       SBC    $BE     
       BPL    LFEF7   
       LDA    #$01    
       STA    $E4     
LFEEE: CPY    #$05    
       BCC    LFF01   
       DEC    $BE     
       JMP    LFF01   
LFEF7: LDA    #$80    
       STA    $E4     
       CPY    #$91    
       BCS    LFF01   
       INC    $BE     
LFF01: LDA    $D2     
       ADC    #$03    
       STA    $D2     
       STA    $F1     
LFF09: RTS            

LFF0A: LDY    #$06    
       BNE    LFF10   
LFF0E: LDY    #$03    
LFF10: LDA    $B3,X   
       BEQ    LFF19   
       STA    $84     
       LDA    #$00    
       RTS            

LFF19: INX            
       DEY            
       BNE    LFF10   
       LDA    #$FF    
       RTS            

LFF20: LDA    $84     
       ROL    $84     
       EOR    $84     
       ROR    $84     
       INC    $85     
       ADC    $85     
       BVC    LFF32   
       INC    $85     
       ADC    $85     
LFF32: STA    $84     
       RTS            

LFF35: .byte $18,$3C,$5A,$FF,$66,$3C,$5A,$A5,$DB,$3C,$56,$FF,$FF,$7E,$24,$66
       .byte $81,$5A,$3C,$5A,$BD,$BD,$42,$66,$18,$3C,$5A,$FF,$7E,$3C,$5A,$24
       .byte $5A,$BD,$56,$FF,$C7,$7E,$24,$C3,$81,$5A,$BD,$DB,$3C,$3C,$42
LFF64: .byte $C3,$6F,$1F,$1F
LFF68: .byte $6F,$E0,$FF,$E0
LFF6C: .byte $00,$00,$18,$24,$18,$00,$18,$00,$24,$18
LFF76: .byte $00,$A8,$F8,$A8,$88
LFF7B: .byte $01,$09,$08,$0A,$02,$06,$04,$05,$3E,$7E,$7F,$3E,$06,$3E,$3E,$18
       .byte $3E,$3E,$63,$18,$70,$63,$06,$63,$63,$18,$63,$06,$73,$18,$3C,$03
       .byte $7E,$03,$63,$18,$63,$03,$6B,$18,$1E,$1E,$66,$03,$7E,$0C,$3E,$3F
       .byte $67,$18,$07,$0C,$36,$7E,$60,$06,$63,$63,$63,$38,$63,$06,$1E,$60
       .byte $30,$63,$63,$63,$3E,$18,$3E,$3F,$0E,$7E,$1E,$7E,$3E
LFFC8: .byte $3E,$10,$D6,$FE,$7C,$38
LFFCE: .byte $07,$0E,$0E
LFFD1: .byte $FC,$92,$92,$D6,$D6
LFFD6: .byte $BA,$66,$24,$7E,$FF,$FF,$56,$3C
LFFDE: .byte $DB,$18,$18,$24,$7E,$3C,$7E,$42
LFFE6: .byte $E7,$5A,$7E,$5A,$DB,$99,$3C,$3C
LFFEE: .byte $18,$00,$06,$00,$30,$00,$C0,$00,$00,$C0,$00,$30,$00,$06,$35,$F0
       .byte $FF,$FF
