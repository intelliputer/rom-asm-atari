; Disassembly of roms/Outlaw - GunSlinger (2).bin
; Disassembled Tue Oct  6 15:22:40 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Outlaw - GunSlinger (2).bin
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
       LDA    #$22    
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
       LDA    #$28    
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
       .byte $4A,$5A,$20,$28,$61,$69,$2F,$F6,$2F,$F6,$2F,$F6,$A0,$0F,$AD,$82
       .byte $02,$29,$08,$F0,$02,$A0,$FF,$A5,$F1,$29,$03,$0A,$0A,$AA,$84,$F8
       .byte $A0,$00,$A5,$98,$C9,$0F,$F0,$0D,$A5,$F8,$29,$F7,$85,$F8,$BD,$91
       .byte $F7,$45,$ED,$D0,$03,$BD,$91,$F7,$25,$F8,$99,$06,$00,$E8,$C8,$C0
       .byte $04,$90,$DF,$A9,$00,$85,$EA,$A5,$EF,$85,$96,$A5,$98,$D0,$04,$A5
       .byte $F1,$85,$EF,$A2,$02,$B5,$EE,$29,$0F,$85,$FA,$0A,$0A,$18,$65,$FA
       .byte $95,$91,$B5,$EE,$29,$F0,$4A,$4A,$85,$FA,$4A,$4A,$65,$FA,$95,$93
       .byte $CA,$D0,$E2,$AD,$84,$02,$D0,$FB,$85,$02,$85,$01,$A2,$06,$86,$0A
       .byte $85,$02,$CA,$D0,$FB,$86,$FA,$86,$FB,$A2,$06,$85,$02,$A5,$FA,$85
       .byte $0E,$A4,$94,$B9,$5F,$F7,$29,$F0,$85,$FA,$A4,$92,$B9,$5F,$F7,$29
       .byte $0F,$05,$FA,$85,$FA,$A5,$FB,$85,$0E,$A4,$95,$B9,$5F,$F7,$29,$F0
       .byte $85,$FB,$A4,$93,$B9,$5F,$F7,$25,$97,$85,$02,$05,$FB,$85,$FB,$A5
       .byte $FA,$85,$0E,$CA,$F0,$0F,$E6,$92,$E6,$94,$E6,$93,$E6,$95,$A5,$FB
       .byte $85,$0E,$4C,$7F,$F0,$86,$0E,$A2,$03,$85,$02,$CA,$D0,$FB,$A5,$96
       .byte $85,$EF,$A2,$06,$85,$02,$A5,$9D,$29,$10,$F0,$1B,$A5,$9B,$85,$0E
       .byte $D0,$06,$A5,$F4,$09,$10,$85,$F4,$20,$21,$F6,$A5,$9C,$85,$0E,$D0
       .byte $06,$A5,$F5,$09,$10,$85,$F5,$CA,$D0,$DA,$85,$02,$A9,$00,$85,$0E
       .byte $A5,$9B,$D0,$22,$A5,$9C,$D0,$1E,$A5,$F4,$29,$08,$D0,$18,$A5,$F5
       .byte $29,$08,$D0,$12,$A9,$FC,$85,$9B,$85,$9C,$A5,$F4,$29,$EF,$85,$F4
       .byte $A5,$F5,$29,$EF,$85,$F5,$A2,$03,$85,$02,$CA,$D0,$FB,$86,$0A,$20
       .byte $11,$F6,$A2,$1E,$9A,$A5,$DB,$4A,$4A,$4A,$AA,$85,$02,$B5,$80,$0A
       .byte $0A,$0A,$0A,$85,$0D,$85,$F8,$A9,$00,$EA,$85,$0E,$B5,$A4,$85,$0F
       .byte $B5,$80,$85,$0D,$B5,$B6,$85,$0E,$B5,$C8,$85,$0F,$38,$A5,$DD,$E5
       .byte $EA,$10,$17,$A5,$F8,$85,$0D,$A4,$EC,$B9,$FE,$F6,$85,$1C,$F0,$05
       .byte $E6,$EC,$4C,$8C,$F1,$EA,$EA,$4C,$8C,$F1,$A5,$F8,$85,$0D,$A5,$F8
       .byte $EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$A4,$EA,$A9,$00,$EA,$C4,$E5,$85
       .byte $0E,$08,$B5,$A4,$85,$0F,$B5,$80,$85,$0D,$B5,$B6,$85,$0E,$B5,$C8
       .byte $85,$0F,$38,$A5,$F8,$85,$0D,$A9,$00,$EA,$85,$0E,$B5,$A4,$85,$0F
       .byte $A5,$DC,$E5,$EA,$10,$28,$A4,$EB,$B9,$FE,$F6,$A8,$B5,$80,$8D,$0D
       .byte $00,$A5,$EA,$C5,$E4,$08,$B5,$B6,$85,$0E,$B5,$C8,$85,$0F,$68,$68
       .byte $C0,$00,$F0,$05,$E6,$EB,$4C,$01,$F2,$EA,$EA,$4C,$01,$F2,$A5,$F8
       .byte $EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$B5,$80,$85,$0D,$B5,$B6,$85,$0E
       .byte $B5,$C8,$85,$0F,$A5,$E4,$C5,$EA,$08,$68,$68,$A0,$00,$E6,$EA,$84
       .byte $1B,$A5,$F8,$85,$0D,$A9,$00,$EA,$85,$0E,$B5,$A4,$85,$0F,$B5,$80
       .byte $85,$0D,$B5,$C8,$A8,$B5,$B6,$85,$0E,$A5,$EA,$29,$01,$D0,$07,$E8
       .byte $E0,$12,$D0,$02,$A2,$00,$84,$0F,$A5,$EA,$C9,$24,$F0,$03,$4C,$3F
       .byte $F1,$85,$02,$A2,$FF,$9A,$8A,$20,$28,$F6,$20,$11,$F6,$86,$0D,$20
       .byte $26,$F6,$A9,$22,$8D,$96,$02,$A2,$01,$A5,$DA,$35,$9E,$D0,$10,$B5
       .byte $E0,$F0,$0C,$D6,$E0,$B5,$E0,$95,$19,$F6,$A0,$B5,$A0,$95,$17,$CA
       .byte $10,$E7,$AD,$84,$02,$D0,$FB,$A9,$2A,$85,$2B,$85,$02,$85,$01,$85
       .byte $00,$8D,$95,$02,$18,$A9,$01,$65,$DA,$85,$DA,$A9,$00,$65,$ED,$85
       .byte $ED,$AD,$84,$02,$D0,$FB,$85,$02,$85,$00,$A9,$28,$8D,$96,$02,$A5
       .byte $EE,$D0,$29,$AD,$82,$02,$29,$02,$D0,$2F,$AA,$20,$F0,$F5,$F8,$18
       .byte $A9,$01,$65,$F1,$C9,$17,$D0,$02,$A9,$01,$85,$F1,$D8,$A9,$1E,$85
       .byte $EE,$A9,$00,$85,$98,$85,$97,$85,$F0,$4C,$3B,$F6,$C6,$EE,$AD,$82
       .byte $02,$29,$02,$F0,$04,$A9,$00,$85,$EE,$A5,$F6,$85,$EB,$A5,$F7,$85
       .byte $EC,$AD,$82,$02,$29,$01,$D0,$0D,$85,$EF,$85,$F0,$A9,$0F,$85,$98
       .byte $85,$97,$4C,$3B,$F6,$A5,$DA,$29,$01,$AA,$AD,$80,$02,$E0,$00,$D0
       .byte $03,$20,$21,$F6,$29,$0F,$85,$FB,$B5,$3C,$29,$80,$05,$FB,$85,$FB
       .byte $AD,$82,$02,$E0,$00,$F0,$01,$4A,$29,$40,$05,$FB,$85,$FB,$B5,$F4
       .byte $85,$FC,$A5,$98,$C9,$0F,$F0,$03,$4C,$C2,$F5,$B5,$A2,$D0,$4A,$8A
       .byte $49,$01,$AA,$B5,$30,$29,$80,$F0,$43,$A0,$3B,$A9,$FF,$95,$28,$B5
       .byte $F4,$29,$F7,$95,$F4,$8A,$49,$01,$AA,$94,$EB,$24,$FB,$50,$0A,$A9
       .byte $FF,$95,$28,$A5,$FC,$29,$F7,$85,$FC,$A9,$1F,$95,$A2,$8A,$49,$01
       .byte $AA,$F8,$18,$B5,$EF,$69,$01,$95,$EF,$C9,$10,$D0,$02,$85,$98,$8A
       .byte $49,$01,$AA,$D8,$A9,$07,$20,$FA,$F5,$4C,$89,$F4,$B4,$A2,$8A,$49
       .byte $01,$AA,$98,$D0,$F4,$A5,$9D,$29,$04,$D0,$09,$A5,$FC,$29,$08,$F0
       .byte $03,$4C,$4A,$F4,$A9,$00,$95,$EB,$24,$FB,$30,$04,$A9,$49,$95,$EB
       .byte $24,$FB,$30,$17,$A5,$FB,$29,$01,$D0,$04,$A9,$1F,$95,$EB,$A5,$FB
       .byte $29,$02,$D0,$04,$A9,$2F,$95,$EB,$4C,$4A,$F4,$B5,$32,$29,$80,$D0
       .byte $31,$A5,$FB,$29,$0F,$C9,$0F,$F0,$EF,$A5,$FB,$29,$01,$D0,$0C,$B5
       .byte $DE,$F0,$E5,$A5,$DA,$29,$02,$D0,$02,$D6,$DE,$A5,$FB,$29,$02,$D0
       .byte $36,$B5,$DE,$C9,$16,$F0,$6F,$A5,$DA,$29,$02,$D0,$2A,$F6,$DE,$4C
       .byte $0B,$F4,$A0,$00,$A5,$FB,$29,$F0,$85,$FB,$B5,$E8,$30,$0E,$A0,$01
       .byte $C9,$18,$90,$08,$A0,$01,$84,$FF,$8A,$45,$FF,$A8,$A9,$04,$C0,$00
       .byte $F0,$01,$0A,$05,$FB,$85,$FB,$A5,$FB,$29,$04,$D0,$09,$A9,$10,$95
       .byte $20,$A9,$01,$4C,$26,$F4,$A5,$FB,$29,$08,$D0,$0B,$A9,$F0,$95,$20
       .byte $A9,$FF,$18,$75,$E8,$95,$E8,$A5,$DA,$85,$FE,$8A,$0A,$0A,$18,$65
       .byte $FE,$A8,$29,$10,$F0,$04,$A9,$0D,$95,$EB,$98,$09,$F1,$C9,$F1,$D0
       .byte $05,$A9,$08,$20,$02,$F6,$A5,$FC,$29,$10,$D0,$39,$A5,$FC,$29,$08
       .byte $D0,$33,$24,$FB,$10,$2F,$24,$FC,$30,$2B,$A9,$08,$20,$FA,$F5,$16
       .byte $9B,$A5,$FC,$09,$08,$29,$BF,$85,$FC,$A9,$00,$85,$ED,$95,$28,$B5
       .byte $F6,$95,$EB,$95,$E2,$A8,$B9,$FD,$F6,$20,$21,$F6,$18,$75,$DE,$95
       .byte $E4,$B5,$E8,$95,$E6,$06,$FC,$06,$FB,$66,$FC,$B5,$A2,$F0,$08,$D6
       .byte $A2,$A5,$FC,$09,$80,$85,$FC,$A9,$22,$85,$9A,$A5,$9D,$29,$20,$F0
       .byte $2A,$A9,$58,$85,$EC,$85,$E3,$A5,$E5,$85,$DF,$A5,$DA,$29,$3F,$D0
       .byte $0C,$F8,$38,$65,$F0,$85,$F0,$C9,$99,$D0,$02,$85,$98,$D8,$8A,$F0
       .byte $0A,$A9,$1B,$85,$9A,$A5,$FC,$09,$08,$85,$FC,$A5,$FC,$29,$08,$F0
       .byte $40,$B4,$E2,$24,$FC,$50,$01,$88,$B9,$FC,$F6,$18,$75,$E4,$95,$E4
       .byte $B4,$E2,$8A,$F0,$01,$88,$B9,$FA,$F6,$A8,$18,$75,$E6,$95,$E6,$98
       .byte $0A,$0A,$0A,$0A,$95,$22,$B5,$E4,$10,$04,$A9,$00,$F0,$08,$C5,$9A
       .byte $90,$0F,$A5,$9A,$D0,$00,$95,$E4,$A5,$FC,$49,$40,$85,$FC,$20,$F0
       .byte $F5,$A5,$FC,$95,$F4,$B5,$34,$29,$80,$F0,$1B,$A5,$9D,$29,$08,$D0
       .byte $18,$B5,$F4,$29,$B7,$95,$F4,$85,$FC,$A9,$02,$95,$28,$A9,$08,$20
       .byte $02,$F6,$A5,$FC,$95,$F4,$4C,$BA,$F5,$B5,$E4,$85,$FB,$B5,$E6,$20
       .byte $21,$F6,$A8,$F0,$DC,$C9,$09,$F0,$D8,$A5,$DB,$4A,$4A,$85,$99,$A5
       .byte $FB,$18,$65,$99,$C9,$24,$90,$03,$38,$E9,$24,$4A,$18,$79,$D3,$F7
       .byte $85,$FD,$29,$7F,$A8,$B5,$E6,$4A,$4A,$C9,$14,$90,$02,$49,$04,$29
       .byte $07,$85,$FE,$24,$FD,$10,$07,$A9,$07,$38,$E5,$FE,$85,$FE,$A6,$FE
       .byte $BD,$DC,$F7,$39,$80,$00,$D0,$1B,$C8,$BD,$DC,$F7,$39,$80,$00,$D0
       .byte $12,$A5,$DA,$29,$01,$AA,$A5,$FB,$D5,$E4,$D0,$07,$C6,$FB,$D6,$E6
       .byte $4C,$41,$F5,$BD,$DC,$F7,$49,$FF,$39,$80,$00,$99,$80,$00,$A5,$DA
       .byte $29,$01,$AA,$4C,$25,$F5,$8A,$F0,$02,$85,$2C,$20,$D3,$F5,$24,$9D
       .byte $50,$0A,$E6,$DB,$A5,$DB,$49,$8F,$D0,$02,$85,$DB,$4C,$00,$F0,$B4
       .byte $EB,$B9,$FD,$F6,$29,$0F,$18,$75,$DE,$95,$DC,$B5,$EB,$95,$F6,$85
       .byte $02,$85,$2A,$24,$ED,$10,$04,$A9,$EF,$85,$98,$60,$A9,$04,$95,$15
       .byte $A0,$00,$A9,$10,$D0,$0E,$A0,$01,$95,$15,$A9,$10,$D0,$06,$A0,$00
       .byte $95,$15,$A9,$08,$94,$9E,$95,$E0,$A9,$05,$95,$A0,$60,$85,$02,$A9
       .byte $FF,$20,$28,$F6,$A2,$08,$85,$02,$CA,$D0,$FB,$60,$4A,$4A,$4A,$4A
       .byte $4A,$60,$A9,$00,$85,$0E,$85,$0D,$85,$0F,$60,$78,$D8,$A2,$00,$8A
       .byte $95,$00,$E8,$D0,$FB,$E6,$F1,$A2,$FF,$9A,$A2,$01,$A9,$00,$85,$DB
       .byte $85,$ED,$95,$E2,$95,$A2,$95,$EB,$A4,$F1,$88,$B9,$E4,$F7,$85,$9D
       .byte $29,$20,$F0,$04,$A9,$58,$85,$EC,$A9,$1D,$95,$04,$85,$0C,$A9,$96
       .byte $85,$E8,$95,$28,$A9,$0D,$85,$E9,$A9,$FC,$95,$9B,$B5,$F4,$09,$80
       .byte $29,$87,$95,$F4,$A9,$05,$95,$DE,$20,$D3,$F5,$85,$2C,$CA,$10,$BC
       .byte $85,$02,$20,$21,$F6,$85,$10,$20,$21,$F6,$20,$21,$F6,$85,$11,$A2
       .byte $00,$A9,$00,$95,$A4,$95,$B6,$A9,$01,$95,$80,$A9,$80,$95,$C8,$E8
       .byte $E0,$12,$D0,$ED,$A5,$9D,$29,$03,$AA,$C9,$02,$D0,$14,$A0,$00,$A9
       .byte $71,$99,$80,$00,$A9,$E0,$99,$A4,$00,$C8,$C0,$12,$D0,$F1,$4C,$00
       .byte $F0,$BD,$5D,$F7,$AA,$BD,$A1,$F7,$C9,$A0,$F0,$2A,$20,$20,$F6,$A8
       .byte $B9,$CE,$F7,$85,$F8,$BD,$A1,$F7,$29,$1F,$18,$65,$F8,$A8,$E8,$BD
       .byte $A1,$F7,$85,$F8,$C9,$AA,$D0,$04,$E8,$4C,$C9,$F6,$A5,$F8,$99,$80
       .byte $00,$E8,$C8,$4C,$E3,$F6,$4C,$00,$F0,$00,$18,$3E,$1C,$18,$7E,$99
       .byte $99,$99,$5A,$3C,$66,$C3,$00,$18,$3E,$1C,$18,$7E,$99,$99,$99,$5A
       .byte $3C,$24,$36,$00,$04,$FC,$01,$FF,$72,$60,$F8,$72,$64,$7C,$60,$60
       .byte $78,$28,$EC,$00,$04,$FC,$FF,$01,$82,$60,$F8,$70,$60,$70,$6C,$62
       .byte $78,$28,$EC,$00,$04,$30,$7C,$38,$30,$70,$B0,$B1,$7F,$00,$04,$FC
       .byte $00,$00,$62,$60,$F8,$70,$67,$7C,$60,$60,$78,$28,$EC,$00,$00,$01
       .byte $FF,$00,$3C,$42,$99,$A5,$99,$42,$3C,$00,$10,$0E,$0A,$0A,$0A,$0E
       .byte $22,$22,$22,$22,$22,$EE,$22,$EE,$88,$EE,$EE,$22,$66,$22,$EE,$AA
       .byte $AA,$EE,$22,$22,$EE,$88,$EE,$22,$EE,$EE,$88,$EE,$AA,$EE,$EE,$22
       .byte $22,$22,$22,$EE,$AA,$EE,$AA,$EE,$EE,$AA,$EE,$22,$EE,$48,$24,$88
       .byte $66,$26,$48,$68,$84,$38,$64,$44,$16,$54,$88,$18,$26,$06,$51,$51
       .byte $71,$11,$11,$11,$11,$11,$AA,$48,$40,$40,$C0,$AA,$A0,$04,$71,$F1
       .byte $E1,$C1,$C1,$F1,$F1,$F1,$AA,$68,$40,$40,$E0,$40,$40,$AA,$44,$E0
       .byte $F0,$70,$30,$34,$F4,$FE,$F4,$04,$AA,$A0,$00,$12,$24,$36,$48,$48
       .byte $48,$B6,$B6,$00,$24,$24,$92,$92,$80,$40,$20,$10,$08,$04,$02,$01
       .byte $00,$04,$08,$18,$01,$41,$09,$49,$59,$00,$00,$00,$00,$00,$00,$1A
       .byte $4A,$5A,$20,$28,$61,$69,$2F,$F6,$2F,$F6,$2F,$F6
