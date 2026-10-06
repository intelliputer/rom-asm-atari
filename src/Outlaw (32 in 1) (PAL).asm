; Disassembly of roms/Outlaw (32 in 1) (PAL).bin
; Disassembled Tue Oct  6 15:22:40 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Outlaw (32 in 1) (PAL).bin
;

      processor 6502
VSYNC   =  $00
VBLANK  =  $01
WSYNC   =  $02
NUSIZ0  =  $04
COLUP0  =  $06
CTRLPF  =  $0A
REFP1   =  $0C
PF0     =  $0D
PF1     =  $0E
PF2     =  $0F
RESP0   =  $10
RESP1   =  $11
AUDC0   =  $15
AUDF0   =  $17
AUDV0   =  $19
GRP0    =  $1B
GRP1    =  $1C
HMP0    =  $20
HMM0    =  $22
RESMP0  =  $28
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXM0P   =  $30
CXP0FB  =  $32
CXM0FB  =  $34
INPT4   =  $3C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM8T   =  $0295
TIM64T  =  $0296
LF6FC   =   $F6FC

       ORG $F000
LF000: LDY    #$0F    
       LDA    SWCHB   
       AND    #$08    
       BEQ    LF00B   
       LDY    #$FF    
LF00B: LDA    $F1     
       AND    #$03    
       ASL            
       ASL            
       TAX            
       STY    $F8     
       LDY    #$00    
LF016: LDA    $98     
       CMP    #$0F    
       BEQ    LF029   
       LDA    $F8     
       AND    #$F7    
       STA    $F8     
       LDA    LF791,X 
       EOR    $ED     
       BNE    LF02C   
LF029: LDA    LF791,X 
LF02C: AND    $F8     
       STA.wy $0006,Y 
       INX            
       INY            
       CPY    #$04    
       BCC    LF016   
       LDA    #$00    
       STA    $EA     
       LDA    $EF     
       STA    $96     
       LDA    $98     
       BNE    LF047   
       LDA    $F1     
       STA    $EF     
LF047: LDX    #$02    
LF049: LDA    $EE,X   
       AND    #$0F    
       STA    $FA     
       ASL            
       ASL            
       CLC            
       ADC    $FA     
       STA    $91,X   
       LDA    $EE,X   
       AND    #$F0    
       LSR            
       LSR            
       STA    $FA     
       LSR            
       LSR            
       ADC    $FA     
       STA    $93,X   
       DEX            
       BNE    LF049   
LF067: LDA    INTIM   
       BNE    LF067   
       STA    WSYNC   
       STA    VBLANK  
       LDX    #$06    
       STX    CTRLPF  
LF074: STA    WSYNC   
       DEX            
       BNE    LF074   
       STX    $FA     
       STX    $FB     
       LDX    #$06    
LF07F: STA    WSYNC   
       LDA    $FA     
       STA    PF1     
       LDY    $94     
       LDA    LF75F,Y 
       AND    #$F0    
       STA    $FA     
       LDY    $92     
       LDA    LF75F,Y 
       AND    #$0F    
       ORA    $FA     
       STA    $FA     
       LDA    $FB     
       STA    PF1     
       LDY    $95     
       LDA    LF75F,Y 
       AND    #$F0    
       STA    $FB     
       LDY    $93     
       LDA    LF75F,Y 
       AND    $97     
       STA    WSYNC   
       ORA    $FB     
       STA    $FB     
       LDA    $FA     
       STA    PF1     
       DEX            
       BEQ    LF0C9   
       INC    $92     
       INC    $94     
       INC    $93     
       INC    $95     
       LDA    $FB     
       STA    PF1     
       JMP    LF07F   
LF0C9: STX    PF1     
       LDX    #$03    
LF0CD: STA    WSYNC   
       DEX            
       BNE    LF0CD   
       LDA    $96     
       STA    $EF     
       LDX    #$06    
LF0D8: STA    WSYNC   
       LDA    $9D     
       AND    #$10    
       BEQ    LF0FB   
       LDA    $9B     
       STA    PF1     
       BNE    LF0EC   
       LDA    $F4     
       ORA    #$10    
       STA    $F4     
LF0EC: JSR    LF621   
       LDA    $9C     
       STA    PF1     
       BNE    LF0FB   
       LDA    $F5     
       ORA    #$10    
       STA    $F5     
LF0FB: DEX            
       BNE    LF0D8   
       STA    WSYNC   
       LDA    #$00    
       STA    PF1     
       LDA    $9B     
       BNE    LF12A   
       LDA    $9C     
       BNE    LF12A   
       LDA    $F4     
       AND    #$08    
       BNE    LF12A   
       LDA    $F5     
       AND    #$08    
       BNE    LF12A   
       LDA    #$FC    
       STA    $9B     
       STA    $9C     
       LDA    $F4     
       AND    #$EF    
       STA    $F4     
       LDA    $F5     
       AND    #$EF    
       STA    $F5     
LF12A: LDX    #$03    
LF12C: STA    WSYNC   
       DEX            
       BNE    LF12C   
       STX    CTRLPF  
       JSR    LF611   
       LDX    #$1E    
       TXS            
       LDA    $DB     
       LSR            
       LSR            
       LSR            
       TAX            
LF13F: STA    WSYNC   
       LDA    $80,X   
       ASL            
       ASL            
       ASL            
       ASL            
       STA    PF0     
       STA    $F8     
       LDA    #$00    
       NOP            
       STA    PF1     
       LDA    $A4,X   
       STA    PF2     
       LDA    $80,X   
       STA    PF0     
       LDA    $B6,X   
       STA    PF1     
       LDA    $C8,X   
       STA    PF2     
       SEC            
       LDA    $DD     
       SBC    $EA     
       BPL    LF17E   
       LDA    $F8     
       STA    PF0     
       LDY    $EC     
       LDA    LF6FE,Y 
       STA    GRP1    
       BEQ    LF179   
       INC    $EC     
       JMP    LF18C   
LF179: NOP            
       NOP            
       JMP    LF18C   
LF17E: LDA    $F8     
       STA    PF0     
       LDA    $F8     
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
LF18C: LDY    $EA     
       LDA    #$00    
       NOP            
       CPY    $E5     
       STA    PF1     
       PHP            
       LDA    $A4,X   
       STA    PF2     
       LDA    $80,X   
       STA    PF0     
       LDA    $B6,X   
       STA    PF1     
       LDA    $C8,X   
       STA    PF2     
       SEC            
       LDA    $F8     
       STA    PF0     
       LDA    #$00    
       NOP            
       STA    PF1     
       LDA    $A4,X   
       STA    PF2     
       LDA    $DC     
       SBC    $EA     
       BPL    LF1E2   
       LDY    $EB     
       LDA    LF6FE,Y 
       TAY            
       LDA    $80,X   
       STA.w  $000D   
       LDA    $EA     
       CMP    $E4     
       PHP            
       LDA    $B6,X   
       STA    PF1     
       LDA    $C8,X   
       STA    PF2     
       PLA            
       PLA            
       CPY    #$00    
       BEQ    LF1DD   
       INC    $EB     
       JMP    LF201   
LF1DD: NOP            
       NOP            
       JMP    LF201   
LF1E2: LDA    $F8     
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       LDA    $80,X   
       STA    PF0     
       LDA    $B6,X   
       STA    PF1     
       LDA    $C8,X   
       STA    PF2     
       LDA    $E4     
       CMP    $EA     
       PHP            
       PLA            
       PLA            
       LDY    #$00    
LF201: INC    $EA     
       STY    GRP0    
       LDA    $F8     
       STA    PF0     
       LDA    #$00    
       NOP            
       STA    PF1     
       LDA    $A4,X   
       STA    PF2     
       LDA    $80,X   
       STA    PF0     
       LDA    $C8,X   
       TAY            
       LDA    $B6,X   
       STA    PF1     
       LDA    $EA     
       AND    #$01    
       BNE    LF22A   
       INX            
       CPX    #$12    
       BNE    LF22A   
       LDX    #$00    
LF22A: STY    PF2     
       LDA    $EA     
       CMP    #$24    
       BEQ    LF235   
       JMP    LF13F   
LF235: STA    WSYNC   
       LDX    #$FF    
       TXS            
       TXA            
       JSR    LF628   
       JSR    LF611   
       STX    PF0     
       JSR    LF626   
       LDA    #$43    
       STA    TIM64T  
       LDX    #$01    
LF24D: LDA    $DA     
       AND    $9E,X   
       BNE    LF263   
       LDA    $E0,X   
       BEQ    LF263   
       DEC    $E0,X   
       LDA    $E0,X   
       STA    AUDV0,X 
       INC    $A0,X   
       LDA    $A0,X   
       STA    AUDF0,X 
LF263: DEX            
       BPL    LF24D   
LF266: LDA    INTIM   
       BNE    LF266   
       LDA    #$2A    
       STA    HMCLR   
       STA    WSYNC   
       STA    VBLANK  
       STA    VSYNC   
       STA    TIM8T   
       CLC            
       LDA    #$01    
       ADC    $DA     
       STA    $DA     
       LDA    #$00    
       ADC    $ED     
       STA    $ED     
LF285: LDA    INTIM   
       BNE    LF285   
       STA    WSYNC   
       STA    VSYNC   
       LDA    #$45    
       STA    TIM64T  
       LDA    $EE     
       BNE    LF2C0   
       LDA    SWCHB   
       AND    #$02    
       BNE    LF2CD   
       TAX            
       JSR    LF5F0   
       SED            
       CLC            
       LDA    #$01    
       ADC    $F1     
       CMP    #$17    
       BNE    LF2AE   
       LDA    #$01    
LF2AE: STA    $F1     
       CLD            
       LDA    #$1E    
       STA    $EE     
       LDA    #$00    
       STA    $98     
       STA    $97     
       STA    $F0     
       JMP    LF63B   
LF2C0: DEC    $EE     
       LDA    SWCHB   
       AND    #$02    
       BEQ    LF2CD   
       LDA    #$00    
       STA    $EE     
LF2CD: LDA    $F6     
       STA    $EB     
       LDA    $F7     
       STA    $EC     
       LDA    SWCHB   
       AND    #$01    
       BNE    LF2E9   
       STA    $EF     
       STA    $F0     
       LDA    #$0F    
       STA    $98     
       STA    $97     
       JMP    LF63B   
LF2E9: LDA    $DA     
       AND    #$01    
       TAX            
       LDA    SWCHA   
       CPX    #$00    
       BNE    LF2F8   
       JSR    LF621   
LF2F8: AND    #$0F    
       STA    $FB     
       LDA    INPT4,X 
       AND    #$80    
       ORA    $FB     
       STA    $FB     
       LDA    SWCHB   
       CPX    #$00    
       BEQ    LF30C   
       LSR            
LF30C: AND    #$40    
       ORA    $FB     
       STA    $FB     
       LDA    $F4,X   
       STA    $FC     
       LDA    $98     
       CMP    #$0F    
       BEQ    LF31F   
       JMP    LF5C2   
LF31F: LDA    $A2,X   
       BNE    LF36D   
       TXA            
       EOR    #$01    
       TAX            
       LDA    CXM0P,X 
       AND    #$80    
       BEQ    LF370   
       LDY    #$3B    
       LDA    #$FF    
       STA    RESMP0,X
       LDA    $F4,X   
       AND    #$F7    
       STA    $F4,X   
       TXA            
       EOR    #$01    
       TAX            
       STY    $EB,X   
       BIT    $FB     
       BVC    LF34D   
       LDA    #$FF    
       STA    RESMP0,X
       LDA    $FC     
       AND    #$F7    
       STA    $FC     
LF34D: LDA    #$1F    
       STA    $A2,X   
       TXA            
       EOR    #$01    
       TAX            
       SED            
       CLC            
       LDA    $EF,X   
       ADC    #$01    
       STA    $EF,X   
       CMP    #$10    
       BNE    LF363   
       STA    $98     
LF363: TXA            
       EOR    #$01    
       TAX            
       CLD            
       LDA    #$07    
       JSR    LF5FA   
LF36D: JMP    LF489   
LF370: LDY    $A2,X   
       TXA            
       EOR    #$01    
       TAX            
       TYA            
       BNE    LF36D   
       LDA    $9D     
       AND    #$04    
       BNE    LF388   
       LDA    $FC     
       AND    #$08    
       BEQ    LF388   
       JMP    LF44A   
LF388: LDA    #$00    
       STA    $EB,X   
       BIT    $FB     
       BMI    LF394   
       LDA    #$49    
       STA    $EB,X   
LF394: BIT    $FB     
       BMI    LF3AF   
       LDA    $FB     
       AND    #$01    
       BNE    LF3A2   
       LDA    #$1F    
       STA    $EB,X   
LF3A2: LDA    $FB     
       AND    #$02    
       BNE    LF3AC   
       LDA    #$2F    
       STA    $EB,X   
LF3AC: JMP    LF44A   
LF3AF: LDA    CXP0FB,X
       AND    #$80    
       BNE    LF3E6   
       LDA    $FB     
       AND    #$0F    
       CMP    #$0F    
       BEQ    LF3AC   
       LDA    $FB     
       AND    #$01    
       BNE    LF3CF   
       LDA    $DE,X   
       BEQ    LF3AC   
       LDA    $DA     
       AND    #$02    
       BNE    LF3CF   
       DEC    $DE,X   
LF3CF: LDA    $FB     
       AND    #$02    
       BNE    LF40B   
       LDA    $DE,X   
       CMP    #$16    
       BEQ    LF44A   
       LDA    $DA     
       AND    #$02    
       BNE    LF40B   
       INC    $DE,X   
       JMP    LF40B   
LF3E6: LDY    #$00    
       LDA    $FB     
       AND    #$F0    
       STA    $FB     
       LDA    $E8,X   
       BMI    LF400   
       LDY    #$01    
       CMP    #$18    
       BCC    LF400   
       LDY    #$01    
       STY    $FF     
       TXA            
       EOR    $FF     
       TAY            
LF400: LDA    #$04    
       CPY    #$00    
       BEQ    LF407   
       ASL            
LF407: ORA    $FB     
       STA    $FB     
LF40B: LDA    $FB     
       AND    #$04    
       BNE    LF41A   
       LDA    #$10    
       STA    HMP0,X  
       LDA    #$01    
       JMP    LF426   
LF41A: LDA    $FB     
       AND    #$08    
       BNE    LF42B   
       LDA    #$F0    
       STA    HMP0,X  
       LDA    #$FF    
LF426: CLC            
       ADC    $E8,X   
       STA    $E8,X   
LF42B: LDA    $DA     
       STA    $FE     
       TXA            
       ASL            
       ASL            
       CLC            
       ADC    $FE     
       TAY            
       AND    #$10    
       BEQ    LF43E   
       LDA    #$0D    
       STA    $EB,X   
LF43E: TYA            
       ORA    #$F1    
       CMP    #$F1    
       BNE    LF44A   
       LDA    #$08    
       JSR    LF602   
LF44A: LDA    $FC     
       AND    #$10    
       BNE    LF489   
       LDA    $FC     
       AND    #$08    
       BNE    LF489   
       BIT    $FB     
       BPL    LF489   
       BIT    $FC     
       BMI    LF489   
       LDA    #$08    
       JSR    LF5FA   
       ASL    $9B,X   
       LDA    $FC     
       ORA    #$08    
       AND    #$BF    
       STA    $FC     
       LDA    #$00    
       STA    $ED     
       STA    RESMP0,X
       LDA    $F6,X   
       STA    $EB,X   
       STA    $E2,X   
       TAY            
       LDA    LF6FD,Y 
       JSR    LF621   
       CLC            
       ADC    $DE,X   
       STA    $E4,X   
       LDA    $E8,X   
       STA    $E6,X   
LF489: ASL    $FC     
       ASL    $FB     
       ROR    $FC     
       LDA    $A2,X   
       BEQ    LF49B   
       DEC    $A2,X   
       LDA    $FC     
       ORA    #$80    
       STA    $FC     
LF49B: LDA    #$22    
       STA    $9A     
       LDA    $9D     
       AND    #$20    
       BEQ    LF4CF   
       LDA    #$58    
       STA    $EC     
       STA    $E3     
       LDA    $E5     
       STA    $DF     
       LDA    $DA     
       AND    #$3F    
       BNE    LF4C1   
       SED            
       SEC            
       ADC    $F0     
       STA    $F0     
       CMP    #$99    
       BNE    LF4C1   
       STA    $98     
LF4C1: CLD            
       TXA            
       BEQ    LF4CF   
       LDA    #$1B    
       STA    $9A     
       LDA    $FC     
       ORA    #$08    
       STA    $FC     
LF4CF: LDA    $FC     
       AND    #$08    
       BEQ    LF515   
       LDY    $E2,X   
       BIT    $FC     
       BVC    LF4DC   
       DEY            
LF4DC: LDA    LF6FC,Y 
       CLC            
       ADC    $E4,X   
       STA    $E4,X   
       LDY    $E2,X   
       TXA            
       BEQ    LF4EA   
       DEY            
LF4EA: LDA    LF6FA,Y 
       TAY            
       CLC            
       ADC    $E6,X   
       STA    $E6,X   
       TYA            
       ASL            
       ASL            
       ASL            
       ASL            
       STA    HMM0,X  
       LDA    $E4,X   
       BPL    LF502   
       LDA    #$00    
       BEQ    LF50A   
LF502: CMP    $9A     
       BCC    LF515   
       LDA    $9A     
       BNE    LF50A   
LF50A: STA    $E4,X   
       LDA    $FC     
       EOR    #$40    
       STA    $FC     
       JSR    LF5F0   
LF515: LDA    $FC     
       STA    $F4,X   
       LDA    CXM0FB,X
       AND    #$80    
       BEQ    LF53A   
       LDA    $9D     
       AND    #$08    
       BNE    LF53D   
LF525: LDA    $F4,X   
       AND    #$B7    
       STA    $F4,X   
       STA    $FC     
       LDA    #$02    
       STA    RESMP0,X
       LDA    #$08    
       JSR    LF602   
       LDA    $FC     
       STA    $F4,X   
LF53A: JMP    LF5BA   
LF53D: LDA    $E4,X   
       STA    $FB     
LF541: LDA    $E6,X   
       JSR    LF621   
       TAY            
       BEQ    LF525   
       CMP    #$09    
       BEQ    LF525   
       LDA    $DB     
       LSR            
       LSR            
       STA    $99     
       LDA    $FB     
       CLC            
       ADC    $99     
       CMP    #$24    
       BCC    LF55F   
       SEC            
       SBC    #$24    
LF55F: LSR            
       CLC            
       ADC    LF7D3,Y 
       STA    $FD     
       AND    #$7F    
       TAY            
       LDA    $E6,X   
       LSR            
       LSR            
       CMP    #$14    
       BCC    LF573   
       EOR    #$04    
LF573: AND    #$07    
       STA    $FE     
       BIT    $FD     
       BPL    LF582   
       LDA    #$07    
       SEC            
       SBC    $FE     
       STA    $FE     
LF582: LDX    $FE     
       LDA    LF7DC,X 
       AND.wy $0080,Y 
       BNE    LF5A7   
       INY            
       LDA    LF7DC,X 
       AND.wy $0080,Y 
       BNE    LF5A7   
       LDA    $DA     
       AND    #$01    
       TAX            
       LDA    $FB     
       CMP    $E4,X   
       BNE    LF5A7   
       DEC    $FB     
       DEC    $E6,X   
       JMP    LF541   
LF5A7: LDA    LF7DC,X 
       EOR    #$FF    
       AND.wy $0080,Y 
       STA.wy $0080,Y 
       LDA    $DA     
       AND    #$01    
       TAX            
       JMP    LF525   
LF5BA: TXA            
       BEQ    LF5BF   
       STA    CXCLR   
LF5BF: JSR    LF5D3   
LF5C2: BIT    $9D     
       BVC    LF5D0   
       INC    $DB     
       LDA    $DB     
       EOR    #$8F    
       BNE    LF5D0   
       STA    $DB     
LF5D0: JMP    LF000   
LF5D3: LDY    $EB,X   
       LDA    LF6FD,Y 
       AND    #$0F    
       CLC            
       ADC    $DE,X   
       STA    $DC,X   
       LDA    $EB,X   
       STA    $F6,X   
       STA    WSYNC   
       STA    HMOVE   
       BIT    $ED     
       BPL    LF5EF   
       LDA    #$EF    
       STA    $98     
LF5EF: RTS            

LF5F0: LDA    #$04    
       STA    AUDC0,X 
       LDY    #$00    
       LDA    #$10    
       BNE    LF608   
LF5FA: LDY    #$01    
       STA    AUDC0,X 
       LDA    #$10    
       BNE    LF608   
LF602: LDY    #$00    
       STA    AUDC0,X 
       LDA    #$08    
LF608: STY    $9E,X   
       STA    $E0,X   
       LDA    #$05    
       STA    $A0,X   
       RTS            

LF611: STA    WSYNC   
       LDA    #$FF    
       JSR    LF628   
       LDX    #$08    
LF61A: STA    WSYNC   
       DEX            
       BNE    LF61A   
       RTS            

LF620: LSR            
LF621: LSR            
       LSR            
       LSR            
       LSR            
       RTS            

LF626: LDA    #$00    
LF628: STA    PF1     
       STA    PF0     
       STA    PF2     
       RTS            


START:
       SEI            
       CLD            
       LDX    #$00    
       TXA            
LF634: STA    VSYNC,X 
       INX            
       BNE    LF634   
       INC    $F1     
LF63B: LDX    #$FF    
       TXS            
       LDX    #$01    
LF640: LDA    #$00    
       STA    $DB     
       STA    $ED     
       STA    $E2,X   
       STA    $A2,X   
       STA    $EB,X   
       LDY    $F1     
       DEY            
       LDA    LF7E4,Y 
       STA    $9D     
       AND    #$20    
       BEQ    LF65C   
       LDA    #$58    
       STA    $EC     
LF65C: LDA    #$1D    
       STA    NUSIZ0,X
       STA    REFP1   
       LDA    #$96    
       STA    $E8     
       STA    RESMP0,X
       LDA    #$0D    
       STA    $E9     
       LDA    #$FC    
       STA    $9B,X   
       LDA    $F4,X   
       ORA    #$80    
       AND    #$87    
       STA    $F4,X   
       LDA    #$05    
       STA    $DE,X   
       JSR    LF5D3   
       STA    CXCLR   
       DEX            
       BPL    LF640   
       STA    WSYNC   
       JSR    LF621   
       STA    RESP0   
       JSR    LF621   
       JSR    LF621   
       STA    RESP1   
       LDX    #$00    
LF695: LDA    #$00    
       STA    $A4,X   
       STA    $B6,X   
       LDA    #$01    
       STA    $80,X   
       LDA    #$80    
       STA    $C8,X   
       INX            
       CPX    #$12    
       BNE    LF695   
       LDA    $9D     
       AND    #$03    
       TAX            
       CMP    #$02    
       BNE    LF6C5   
       LDY    #$00    
LF6B3: LDA    #$71    
       STA.wy $0080,Y 
       LDA    #$E0    
       STA.wy $00A4,Y 
       INY            
       CPY    #$12    
       BNE    LF6B3   
       JMP    LF000   
LF6C5: LDA    LF75D,X 
       TAX            
LF6C9: LDA    LF7A1,X 
       CMP    #$A0    
       BEQ    LF6FA   
       JSR    LF620   
       TAY            
       LDA    LF7CE,Y 
       STA    $F8     
       LDA    LF7A1,X 
       AND    #$1F    
       CLC            
       ADC    $F8     
       TAY            
       INX            
LF6E3: LDA    LF7A1,X 
       STA    $F8     
       CMP    #$AA    
       BNE    LF6F0   
       INX            
       JMP    LF6C9   
LF6F0: LDA    $F8     
       STA.wy $0080,Y 
       INX            
       INY            
       JMP    LF6E3   
LF6FA: JMP    LF000   
LF6FD: .byte $00
LF6FE: .byte $18,$3E,$1C,$18,$7E,$99,$99,$99,$5A,$3C,$66,$C3,$00,$18,$3E,$1C
       .byte $18,$7E,$99,$99,$99,$5A,$3C,$24,$36,$00,$04,$FC,$01,$FF,$72,$60
       .byte $F8,$72,$64,$7C,$60,$60,$78,$28,$EC,$00,$04,$FC,$FF,$01,$82,$60
       .byte $F8,$70,$60,$70,$6C,$62,$78,$28,$EC,$00,$04,$30,$7C,$38,$30,$70
       .byte $B0,$B1,$7F,$00,$04,$FC,$00,$00,$62,$60,$F8,$70,$67,$7C,$60,$60
       .byte $78,$28,$EC,$00,$00,$01,$FF,$00,$3C,$42,$99,$A5,$99,$42,$3C
LF75D: .byte $00,$10
LF75F: .byte $0E,$0A,$0A,$0A,$0E,$22,$22,$22,$22,$22,$EE,$22,$EE,$88,$EE,$EE
       .byte $22,$66,$22,$EE,$AA,$AA,$EE,$22,$22,$EE,$88,$EE,$22,$EE,$EE,$88
       .byte $EE,$AA,$EE,$EE,$22,$22,$22,$22,$EE,$AA,$EE,$AA,$EE,$EE,$AA,$EE
       .byte $22,$EE
LF791: .byte $48,$24,$88,$66,$26,$48,$68,$84,$38,$64,$44,$16,$54,$88,$18,$26
LF7A1: .byte $06,$51,$51,$71,$11,$11,$11,$11,$11,$AA,$48,$40,$40,$C0,$AA,$A0
       .byte $04,$71,$F1,$E1,$C1,$C1,$F1,$F1,$F1,$AA,$68,$40,$40,$E0,$40,$40
       .byte $AA,$44,$E0,$F0,$70,$30,$34,$F4,$FE,$F4,$04,$AA,$A0
LF7CE: .byte $00,$12,$24,$36,$48
LF7D3: .byte $48,$48,$B6,$B6,$00,$24,$24,$92,$92
LF7DC: .byte $80,$40,$20,$10,$08,$04,$02,$01
LF7E4: .byte $00,$04,$08,$18,$01,$41,$09,$49,$59,$00,$00,$00,$00,$00,$00,$1A
       .byte $4A,$5A,$20,$28,$61,$69,$2F,$F6,$2F,$F6,$2F,$F6
