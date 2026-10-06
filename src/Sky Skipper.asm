; Disassembly of roms/Sky Skipper.bin
; Disassembled Tue Oct  6 15:22:43 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Sky Skipper.bin
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
AUDC1   =  $16
AUDF0   =  $17
AUDF1   =  $18
AUDV0   =  $19
AUDV1   =  $1A
GRP0    =  $1B
GRP1    =  $1C
ENAM0   =  $1D
HMP0    =  $20
HMP1    =  $21
HMM0    =  $22
VDELP1  =  $26
RESMP0  =  $28
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXM0P   =  $30
CXP0FB  =  $32
CXM0FB  =  $34
CXPPMM  =  $37
INPT4   =  $3C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM8T   =  $0295
TIM64T  =  $0296
T1024T  =  $0297

       ORG $1000

START:
       LDY    #$01    
       STY    $F9     
       DEY            
       STY    $F8     
       STY    $FA     
       LDA    #$2E    
       STA    $FB     
L100D: SEI            
       CLD            
       LDX    #$FF    
       TXS            
       LDX    #$F6    
       LDA    #$00    
L1016: STA    VSYNC,X 
       DEX            
       BNE    L1016   
       LDA    #$92    
       STA    $EB     
L101F: JSR    L158C   
L1022: LDX    #$00    
       STX    $DE     
       LDX    #$02    
       LDA    SWCHB   
       AND    #$40    
       BEQ    L1030   
       DEX            
L1030: LDA    $EF     
       CMP    #$05    
       BMI    L1037   
       DEX            
L1037: STX    $8D     
       LDA    #$07    
       STA    $D5     
       STA    $D6     
       STA    $D7     
       STA    $D8     
       LDX    #$1C    
       TYA            
       BEQ    L1059   
       LDA    #$0F    
       STA    $D5     
       STA    $D6     
       LDA    #$04    
       STA    $DA     
       INX            
       LDA    #$1A    
       LDY    #$30    
       BNE    L1061   
L1059: STA    $DA     
       STA    $DB     
       LDA    #$20    
       LDY    #$32    
L1061: STA    $ED     
       STX    $9B     
       STX    $95     
       STX    $97     
       STX    $99     
       STY    $94     
       INY            
       STY    $96     
       INY            
       STY    $98     
L1073: LDA    #$4D    
       STA    $86     
       LDA    #$5D    
       STA    $87     
       LDA    #$86    
       STA    $9E     
       LDA    $ED     
       STA    $92     
       CMP    #$1A    
       BNE    L108B   
       LDA    #$06    
       BNE    L108D   
L108B: LDA    #$1F    
L108D: STA    $9C     
L108F: LDA    #$01    
       STA    CTRLPF  
       LDA    #$FF    
       STA    $85     
       JSR    L1D9E   
       LDA    #$80    
       STA    $E4     
       LDA    #$09    
       STA    $A0     
       LDA    #$00    
       NOP            
       JSR    L15EC   
       STA    $E8     
       STA    $E9     
       LDA    #$07    
       AND    $DA     
       STA    $DA     
       LDA    #$04    
       AND    $DB     
       STA    $DB     
       LDA    #$0E    
       STA    AUDC0   
       LDA    #$16    
       STA    AUDF0   
       JSR    L1BE3   
L10C3: JSR    L1BB5   
       LDA    $F8     
       BNE    L10EB   
       STA    $8F     
       LDY    #$04    
       CPY    $84     
       BNE    L10DF   
       STA    $83     
       STA    $84     
       JSR    L1CDE   
       LDA    $F0     
       AND    #$F7    
       STA    $F2     
L10DF: INC    $EC     
       LDX    $FB     
       BEQ    L113F   
       LDA    $F9     
       STA    $E5     
       BNE    L113F   
L10EB: LDX    #$03    
L10ED: LDA    $D5,X   
       AND    #$07    
       BNE    L1101   
       DEX            
       BPL    L10ED   
       JSR    L1595   
       BNE    L1101   
       JSR    L1585   
       JMP    L1022   
L1101: LDY    $E3     
       BEQ    L110F   
       LDA    #$80    
       BIT    CXP0FB  
       BNE    L110F   
       LDA    $EC     
       BEQ    L113F   
L110F: JSR    L1D86   
       LDA    $EC     
       CMP    #$28    
       BNE    L113F   
       JSR    L1DC6   
       LDA    #$FF    
       CMP    $EB     
       BEQ    L112D   
       JSR    L1D9E   
       JSR    L1BC3   
       JSR    L1BD2   
       JMP    L1073   
L112D: LDA    #$00    
       STA    $F8     
       STA    $EB     
       STA    $83     
       STA    $84     
       STA    $FB     
       JSR    L1585   
       JMP    L108F   
L113F: LDA    #$01    
       AND    $83     
       STA    $80     
       INC    $83     
       BNE    L114B   
       INC    $84     
L114B: LDA    #$01    
       LDY    #$00    
       BIT    SWCHB   
       BNE    L1167   
       LDX    $FA     
       BNE    L1169   
       STA    $FA     
       STA    $F8     
       JSR    L1585   
       JSR    L158C   
       LDY    #$00    
       JMP    L100D   
L1167: STY    $FA     
L1169: ASL            
       BIT    SWCHB   
       BNE    L1194   
       LDA    $EE     
       BNE    L1196   
       STY    $E6     
       STY    $E7     
       INC    $F9     
       INC    $EE     
       LDA    $F9     
       CMP    #$04    
       BNE    L1185   
       LDA    #$01    
       STA    $F9     
L1185: STA    $E5     
       JSR    L158C   
       STY    $F8     
       LDY    #$00    
       JSR    L1585   
       JMP    L101F   
L1194: STY    $EE     
L1196: STY    $9A     
       LDA    #$AE    
       STA    $82     
       JSR    L1BC3   
       LDA    #$01    
       AND    $83     
       CMP    $80     
       BEQ    L11C4   
       LDA    $F8     
       BEQ    L11C4   
       LDA    $F6     
       BNE    L11C4   
       DEC    $E4     
       LDA    $E4     
       BNE    L11C4   
       JSR    L1DAD   
       LDA    #$80    
       LDY    $EF     
       CPY    #$04    
       BMI    L11C2   
       LDA    #$60    
L11C2: STA    $E4     
L11C4: JSR    L19CF   
       JSR    L15F9   
       LDA    $F8     
       BNE    L11D2   
       STA    HMP0    
       BEQ    L11D5   
L11D2: JSR    L195E   
L11D5: JSR    L1B83   
       LDA    $82     
       SEC            
       SBC    $8A     
       SBC    $87     
       STA    $82     
       LDY    $92     
       STY    $93     
       LDA    ($9A),Y 
       TAY            
       LDA    ($94),Y 
       STA    PF0     
       LDA    ($96),Y 
       STA    PF1     
       LDA    ($98),Y 
       STA    PF2     
       LDX    $87     
       STX    $88     
       LDX    $9C     
       STX    $9D     
       LDX    $9E     
       STX    $9F     
       LDA    #$34    
       EOR    $F2     
       STA    COLUP0  
       LDA    #$00    
       STA    HMM0    
       STA    CXCLR   
       LDA    #$20    
       STA    NUSIZ0  
       JSR    L1BD2   
       LDX    $EF     
       LDA    L1CED,X 
       EOR    $F2     
       STA    COLUPF  
L121C: DEC    $88     
       STA    WSYNC   
       BEQ    L124C   
L1222: LDY    $93     
       LDA    $9D     
       BEQ    L122A   
       BPL    L124F   
L122A: INY            
       INY            
       STY    $93     
       LDA    ($9A),Y 
       TAY            
       LDA    ($94),Y 
       STA    WSYNC   
       STA    PF0     
       LDA    ($96),Y 
       STA    PF1     
       LDA    ($98),Y 
       STA    PF2     
       LDY    $93     
       INY            
       LDA    ($9A),Y 
       STA    $9D     
       INC    $9F     
       DEC    $88     
       BPL    L121C   
L124C: JMP    L135C   
L124F: LDY    $D2     
       LDA.wy $00A1,Y 
       BNE    L125C   
       INC    $D2     
       INC    $D1     
       INC    $D1     
L125C: CMP    $9F     
       STA    WSYNC   
       BEQ    L126B   
       DEC    $88     
       DEC    $9D     
       INC    $9F     
       JMP    L121C   
L126B: LDX    $D2     
       LDA    $B1,X   
       STA    HMP1    
       AND    #$0F    
       TAY            
       DEC    $88     
       DEC    $9D     
       INC    $9F     
       STA    WSYNC   
       LDX    $8B     
       DEC    $88     
       BEQ    L12DC   
       NOP            
       NOP            
       NOP            
       NOP            
L1286: DEY            
       BPL    L1286   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       LDX    $D1     
       LDA    $C1,X   
       STA    $D3     
       INX            
       LDA    $C1,X   
       STA    $D4     
       INX            
       STX    $D1     
       LDY    #$00    
       LDA    ($D3),Y 
       EOR    $F2     
       STA    COLUP1  
       LDX    $D2     
       LDA    $A9,X   
       STA    NUSIZ1  
       STA    REFP1   
       LDY    $B9,X   
       INC    $9F     
       DEC    $9D     
       INC    $D2     
       LDA    #$02    
       CMP    $88     
       BEQ    L1306   
       DEC    $88     
       DEC    $88     
L12BF: LDA    ($D3),Y 
       STA    WSYNC   
       STA    GRP1    
       DEC    $88     
       DEY            
       INC    $9F     
       DEC    $9D     
       LDA    ($D3),Y 
       STA    WSYNC   
       STA    GRP1    
       DEC    $88     
       BEQ    L1307   
       DEY            
       BNE    L12BF   
       JMP    L1222   
L12DC: LDA    L1F00,X 
       STA    GRP0    
L12E1: DEY            
       BPL    L12E1   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       INX            
       DEC    $8A     
       LDA    L1F00,X 
       STA    GRP0    
       INX            
       JSR    L15C6   
       LDA    L1F00,X 
       STA    GRP0    
       INC    $9F     
       DEC    $9D     
       INC    $D2     
       INY            
       DEC    $8A     
       BPL    L130E   
L1306: INY            
L1307: LDX    $8B     
       LDA    L1F00,X 
       STA    GRP0    
L130E: INX            
       DEC    $8A     
       DEY            
       BEQ    L1368   
       INC    $9F     
       DEC    $9D     
       STA    WSYNC   
       LDA    L1F00,X 
       STA    GRP0    
       LDA    ($D3),Y 
       STA    GRP1    
       INX            
       DEY            
       STA    WSYNC   
       DEC    $8A     
       BEQ    L1337   
       LDA    L1F00,X 
       STA    GRP0    
       LDA    ($D3),Y 
       STA    GRP1    
       JMP    L130E   
L1337: LDA    ($D3),Y 
       STA    GRP1    
       DEC    $82     
       DEY            
       BEQ    L139E   
       STA    WSYNC   
       LDA    ($D3),Y 
       STA    GRP1    
       LDA    #$00    
       DEC    $8F     
       BNE    L134E   
       LDA    #$02    
L134E: STA    ENAM0   
       INC    $9F     
       DEC    $9D     
       DEC    $82     
       DEY            
       STA    WSYNC   
       JMP    L1337   
L135C: LDX    $8B     
L135E: LDA    L1F00,X 
       STA    GRP0    
       INX            
       DEC    $8A     
       BEQ    L139E   
L1368: LDY    $93     
       LDA    $9D     
       BEQ    L1370   
       BPL    L13A1   
L1370: INY            
       INY            
       STY    $93     
       INY            
       LDA    ($9A),Y 
       STA    $9D     
       DEY            
       LDA    ($9A),Y 
       STA    WSYNC   
       TAY            
       LDA    ($94),Y 
       STA    PF0     
       LDA    ($96),Y 
       STA    PF1     
       LDA    L1F00,X 
       STA    GRP0    
       LDA    ($98),Y 
       STA    PF2     
       INX            
       INC    $9F     
       DEC    $8A     
       BEQ    L139B   
       STA    WSYNC   
       BNE    L135E   
L139B: JMP    L147F   
L139E: JMP    L148F   
L13A1: LDY    $D2     
       LDA.wy $00A1,Y 
       BNE    L13AE   
       INC    $D2     
       INC    $D1     
       INC    $D1     
L13AE: CMP    $9F     
       NOP            
       NOP            
       BEQ    L13C2   
       INC    $9F     
       DEC    $9D     
       DEC    $8A     
       BEQ    L139B   
       LDA    L1F00,X 
       STA    GRP0    
       INX            
L13C2: STA    WSYNC   
       BNE    L135E   
       LDA    L1F00,X 
       STA    GRP0    
       INX            
       INC    $9F     
       DEC    $9D     
       LDA.wy $00B1,Y 
       STA    HMP1    
       AND    #$0F    
       TAY            
       DEC    $8A     
       STA    WSYNC   
       BEQ    L13F4   
       LDA    L1F00,X 
       STA    GRP0    
       INX            
       DEC    $8A     
       BEQ    L13FC   
L13E8: DEY            
       BPL    L13E8   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       JMP    L1409   
L13F4: DEC    $82     
       STA    $80     
       STA    $80     
       STA    $80     
L13FC: DEY            
       BPL    L13FC   
       STA.w  $0011   
       STA    WSYNC   
       STA    HMOVE   
       JMP    L1516   
L1409: LDA    L1F00,X 
       STA    GRP0    
       JSR    L15C6   
       DEC    $9D     
       DEC    $8A     
       BEQ    L1453   
       LDA    L1F01,X 
       STA    GRP0    
       INC    $9F     
       INX            
       INC    $D2     
       INX            
       DEC    $8A     
       STA    WSYNC   
L1426: LDA    L1F00,X 
       STA    GRP0    
       LDA    ($D3),Y 
       STA    GRP1    
       INC    $9F     
       DEC    $9D     
       INX            
       DEY            
       LDA    L1F00,X 
       DEC    $8A     
       STA    WSYNC   
       BEQ    L1472   
       STA    GRP0    
       LDA    ($D3),Y 
       STA    GRP1    
       INX            
       DEC    $8A     
       BEQ    L145B   
       DEY            
       BEQ    L1450   
       STA    WSYNC   
       BNE    L1426   
L1450: JMP    L1368   
L1453: INC    $D2     
       INC    $9F     
       DEC    $82     
       STA    WSYNC   
L145B: LDA    ($D3),Y 
       STA    GRP1    
       LDA    #$00    
       DEC    $8F     
       BNE    L1467   
       LDA    #$02    
L1467: STA    ENAM0   
       INC    $9F     
       DEC    $9D     
       DEC    $82     
       DEY            
       STA    WSYNC   
L1472: LDA    ($D3),Y 
       STA    GRP1    
       DEC    $82     
       DEY            
       BEQ    L148F   
       STA    WSYNC   
       BNE    L145B   
L147F: LDA    #$00    
       DEC    $8F     
       BNE    L1487   
       LDA    #$02    
L1487: STA    ENAM0   
       DEC    $82     
       STA    WSYNC   
       BEQ    L14C6   
L148F: LDY    $93     
       LDA    $9D     
       BEQ    L1497   
       BPL    L14C9   
L1497: INY            
       INY            
       STY    $93     
       INY            
       LDA    ($9A),Y 
       STA    $9D     
       DEY            
       LDA    ($9A),Y 
       TAY            
       LDA    ($94),Y 
       STA    WSYNC   
       TAX            
       LDA    ($96),Y 
       STX    PF0     
       STA    PF1     
       LDA    ($98),Y 
       STA    PF2     
       INC    $9F     
       LDA    #$00    
       DEC    $8F     
       BNE    L14BD   
       LDA    #$02    
L14BD: STA    ENAM0   
       DEC    $82     
       BNE    L147F   
       JMP    L155A   
L14C6: JMP    L155C   
L14C9: LDY    $D2     
       LDA.wy $00A1,Y 
       BNE    L14D6   
       INC    $D2     
       INC    $D1     
       INC    $D1     
L14D6: CMP    $9F     
       STA    WSYNC   
       BEQ    L14E7   
       INC    $9F     
       DEC    $9D     
       DEC    $82     
       BNE    L147F   
       JMP    L155A   
L14E7: LDA.wy $00B1,Y 
       STA    HMP1    
       AND    #$0F    
       TAY            
       LDA    #$00    
       DEC    $8F     
       BNE    L14F7   
       LDA    #$02    
L14F7: STA    ENAM0   
       INC    $9F     
       DEC    $9D     
       DEC    $82     
       BEQ    L155C   
       STA    WSYNC   
       DEC    $82     
       BEQ    L155C   
       DEC    $80     
       LDA    $80     
       LDA    $80     
L150D: DEY            
       BPL    L150D   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
L1516: LDA    #$00    
       DEC    $8F     
       BNE    L151E   
       LDA    #$02    
L151E: STA    ENAM0   
       JSR    L15C6   
       INC    $D2     
       INC    $9F     
       DEC    $9D     
       DEC    $82     
       BEQ    L155C   
       DEC    $82     
       BEQ    L155C   
L1531: LDA    ($D3),Y 
       STA    WSYNC   
       STA    GRP1    
       LDA    #$00    
       DEC    $8F     
       BNE    L153F   
       LDA    #$02    
L153F: STA    ENAM0   
       DEC    $82     
       BEQ    L155C   
       DEY            
       INC    $9F     
       DEC    $9D     
       LDA    ($D3),Y 
       STA    WSYNC   
       STA    GRP1    
       DEC    $82     
       BEQ    L155C   
       DEY            
       BNE    L1531   
       JMP    L148F   
L155A: STA    WSYNC   
L155C: LDA    #$00    
       STA    GRP1    
       STA    GRP0    
       STA    ENAM0   
       STA    PF0     
       STA    PF1     
       STA    PF2     
       STA    REFP0   
       STA    REFP1   
       STA    WSYNC   
       JSR    L1877   
       STY    PF1     
       STY    GRP0    
       STY    HMCLR   
       STY    COLUPF  
       LDA    #$02    
       STA    VBLANK  
       JSR    L1BE3   
       JMP    L10C3   
L1585: JSR    L1BC3   
       JSR    L1BD2   
       RTS            

L158C: LDA    $F9     
       ASL            
       SEC            
       SBC    #$01    
       STA    $EF     
       RTS            

L1595: LDA    $F6     
       BNE    L15A8   
       LDA    #$00    
       STA    $DE     
       LDA    #$46    
       STA    $FB     
       LDA    #$FF    
       STA    $85     
       STA    $F6     
L15A7: RTS            

L15A8: LDA    $FB     
       BNE    L15A7   
       LDA    #$00    
       STA    $F6     
       LDY    #$01    
       INC    $EF     
       LDA    $EF     
       CMP    #$09    
       BNE    L15BE   
       LDA    #$08    
       STA    $EF     
L15BE: AND    #$01    
       BEQ    L15C3   
       DEY            
L15C3: LDA    $F6     
       RTS            

L15C6: LDY    $D1     
       LDA.wy $00C1,Y 
       STA    $D3     
       INY            
       LDA.wy $00C1,Y 
       STA    $D4     
       INY            
       STY    $D1     
       LDY    #$00    
       LDA    ($D3),Y 
       EOR    $F2     
       STA    COLUP1  
       LDY    $D2     
       LDA.wy $00A9,Y 
       STA    NUSIZ1  
       STA    REFP1   
       LDA.wy $00B9,Y 
       TAY            
       RTS            

L15EC: STA    $F2     
       STA    COLUBK  
       STA    CXCLR   
       STA    AUDV1   
       STA    AUDV0   
       STA    $EC     
       RTS            

L15F9: LDA    #$80    
       BIT    CXM0P   
       BEQ    L164F   
       LDA    $87     
       LSR            
       CLC            
       ADC    $9E     
       ADC    $8E     
       STA    $80     
       LDX    #$00    
       LDA    $E8     
       BNE    L1623   
       LDA    $DA     
       AND    #$07    
       TAY            
       LDA    L1D5C,Y 
       SEC            
       SBC    $80     
       BPL    L161E   
       EOR    #$FF    
L161E: SEC            
       SBC    #$08    
       BMI    L163C   
L1623: INX            
       LDA    $E9     
       BNE    L164F   
       LDA    $DB     
       AND    #$03    
       TAY            
       LDA    L1D70,Y 
       SEC            
       SBC    $80     
       BPL    L1637   
       EOR    #$FF    
L1637: SEC            
       SBC    #$08    
       BPL    L164F   
L163C: LDA    $DA,X   
       AND    #$07    
       ORA    #$20    
       STA    $DA,X   
       LDA    #$FF    
       STA    $E8,X   
       LDX    #$00    
       LDA    #$10    
       JSR    L1FDE   
L164F: LDA    $DA     
       AND    #$07    
       TAY            
       LDX    L1CD6,Y 
       LDA    #$96    
       STA    $C1,X   
       LDA    #$1F    
       STA    $C2,X   
       TXA            
       LSR            
       TAX            
       LDA    $EF     
       CMP    #$03    
       BPL    L166E   
       LDA    #$00    
       STA    $A1,X   
       BEQ    L1686   
L166E: LDA    L1CCE,Y 
       STA    $A1,X   
       LDA    $A0     
       JSR    L1B64   
       AND    #$F0    
       STA    $80     
       DEY            
       DEY            
       DEY            
       TYA            
       ORA    $80     
       STA    $B1,X   
       LDA    #$08    
L1686: STA    $B9,X   
       LDA    #$06    
       STA    $A9,X   
       LDA    $83     
       AND    #$03    
       BNE    L16B6   
       LDA    #$10    
       BIT    $D9     
       BNE    L16A8   
       INC    $A0     
       LDA    $A0     
       CMP    #$48    
       BNE    L16B6   
       LDA    #$10    
       ORA    $D9     
       STA    $D9     
       BNE    L16B6   
L16A8: DEC    $A0     
       LDA    $A0     
       CMP    #$08    
       BNE    L16B6   
       LDA    #$EF    
       AND    $D9     
       STA    $D9     
L16B6: LDA    $DA     
       AND    #$07    
       TAY            
       LDX    L1D64,Y 
       LDA    $DA     
       JSR    L177C   
       LDA    $DA     
       AND    #$1F    
       TAY            
       LDA    L1D54,Y 
       STA    $B1,X   
       LDA    L1D5C,Y 
       STA    $A1,X   
       LDA    $E8     
       BEQ    L16E6   
       LDA    $83     
       AND    #$01    
       BNE    L16F8   
       DEC    $E8     
       BNE    L16F8   
       LDA    #$0F    
       AND    $DA     
       STA    $DA     
L16E6: LDA    $85     
       CMP    #$FF    
       BEQ    L16F8   
       LDA    $83     
       BNE    L16F8   
       LDA    $F0     
       AND    #$03    
       EOR    $DA     
       STA    $DA     
L16F8: LDX    #$08    
       LDA    #$96    
       STA    $C1,X   
       LDA    #$1F    
       STA    $C2,X   
       TXA            
       LSR            
       TAX            
       LDA    $EF     
       CMP    #$07    
       BPL    L170F   
       LDA    #$00    
       BEQ    L1711   
L170F: LDA    #$92    
L1711: STA    $A1,X   
       LDA    #$50    
       SEC            
       SBC    $A0     
       JSR    L1B64   
       AND    #$F0    
       STA    $80     
       DEY            
       DEY            
       DEY            
       TYA            
       ORA    $80     
       STA    $B1,X   
       LDA    #$08    
       STA    $B9,X   
       LDA    #$06    
       STA    $A9,X   
       LDA    $E9     
       BEQ    L1743   
       LDA    $83     
       AND    #$01    
       BNE    L1755   
       DEC    $E9     
       BNE    L1755   
       LDA    $DB     
       AND    #$0F    
       STA    $DB     
L1743: LDA    $85     
       CMP    #$FF    
       BEQ    L1755   
       LDA    $83     
       BNE    L1755   
       LDA    $F0     
       AND    #$03    
       EOR    $DB     
       STA    $DB     
L1755: LDA    $DB     
       AND    #$03    
       TAY            
       LDX    L1D74,Y 
       LDA    $DB     
       JSR    L177C   
       LDA    $DB     
       AND    #$03    
       TAY            
       LDA    L1D6C,Y 
       STA    $B1,X   
       LDA    L1D70,Y 
       STA    $A1,X   
       LDA    #$00    
       LDY    $EA     
       BPL    L1799   
       STA    $A9,X   
       JMP    L1799   
L177C: LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    L1EEE,Y 
       STA    $C1,X   
       LDA    L1EEF,Y 
       STA    $C2,X   
       TXA            
       LSR            
       TAX            
       LDA    #$18    
       STA    $B9,X   
       LDA    #$08    
       AND    $83     
       STA    $A9,X   
       RTS            

L1799: LDY    #$00    
L179B: STY    $88     
       LDA    #$01    
       BIT    $9B     
       BEQ    L17AB   
       INY            
       INY            
       LDX    L1C56,Y 
       INY            
       BNE    L17AE   
L17AB: LDX    L1C58,Y 
L17AE: LDA    $E8,X   
       LDX    L1C56,Y 
       CMP    #$00    
       STA    $80     
       BEQ    L17C2   
       LDA    #$08    
       BIT    $80     
       BNE    L17C2   
       LDX    L1C57,Y 
L17C2: LDA    $88     
       CLC            
       ADC    #$05    
       TAY            
       LDA    L1C56,Y 
       STA    $C1,X   
       LDA    #$1F    
       STA    $C2,X   
       TXA            
       LSR            
       TAX            
       INY            
       STX    $81     
       LDX    L1C56,Y 
       LDA    $D5,X   
       LDX    $81     
       AND    #$0F    
       STA    $81     
       AND    #$07    
       BNE    L17EC   
       STA    $A1,X   
       STA    $B9,X   
       BEQ    L1831   
L17EC: LDA    #$0A    
       STA    $B9,X   
       INY            
       LDA    $81     
       PHA            
       CLC            
       ADC    L1C56,Y 
       STY    $81     
       TAY            
       LDA    L1C8E,Y 
       STA    $B1,X   
       PLA            
       TAY            
       LDA    L1CBE,Y 
       STA    $A9,X   
       LDY    $81     
       INY            
       LDA    #$01    
       BIT    $9B     
       BEQ    L1813   
       INY            
       INY            
       INY            
L1813: LDA    L1C56,Y 
       STY    $81     
       TAY            
       LDA    $80     
       BEQ    L182F   
       LDY    $81     
       LDA    L1C57,Y 
       TAY            
       LDA    #$08    
       BIT    $80     
       BNE    L182F   
       LDY    $81     
       LDA    L1C58,Y 
       TAY            
L182F: STY    $A1,X   
L1831: LDA    $88     
       CLC            
       ADC    #$0E    
       CMP    #$38    
       BEQ    L183E   
       TAY            
       JMP    L179B   
L183E: LDX    #$07    
L1840: LDA    $9E     
       SEC            
       SBC    $A1,X   
       BMI    L185B   
       ASL            
       STA    $80     
       LDA    $B9,X   
       BEQ    L186E   
       SEC            
       SBC    $80     
       BCC    L186E   
       BEQ    L186E   
       STA    $B9,X   
       LDA    $9E     
       STA    $A1,X   
L185B: DEX            
       BPL    L1840   
L185E: LDX    #$00    
L1860: LDA    $A1,X   
       BNE    L1867   
       INX            
       BNE    L1860   
L1867: TXA            
       STA    $D2     
       ASL            
       STA    $D1     
       RTS            

L186E: LDA    #$00    
       STA    $A1,X   
       DEX            
       BPL    L1840   
       BMI    L185E   
L1877: LDX    #$03    
       STX    NUSIZ0  
       DEX            
       DEX            
       STX    NUSIZ1  
       LDA    #$50    
       STA    HMP0    
       LDA    #$FA    
       EOR.w  $00F4   
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$60    
       STA    HMP1    
       STA    RESP0   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       LDY    #$03    
       STY    VDELP1  
       INY            
L189D: LDX    $E1     
       STA    WSYNC   
       LDA    $E2     
       STA    GRP1    
       LDA    L1D7C,Y 
       ORA    $E3     
       STA    GRP0    
       LDA    $E0     
       STA    GRP1    
       LDA    L1D81,Y 
       ORA    $DF     
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       STX    GRP0    
       DEY            
       STA    GRP0    
       BPL    L189D   
       STA    WSYNC   
       LDA    #$00    
       STA    VDELP1  
       STA    GRP0    
       STA    GRP1    
       LDX    #$00    
       LDY    #$08    
L18D2: LDA    $E5,X   
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA.wy $00C1,Y 
       DEY            
       DEY            
       BMI    L18ED   
       LDA    $E5,X   
       AND    #$F0    
       LSR            
       STA.wy $00C1,Y 
       INX            
       DEY            
       DEY            
       BPL    L18D2   
L18ED: STA    WSYNC   
       LDA    #$1E    
       STA    $C2     
       STA    $C4     
       STA    $C6     
       STA    $C8     
       STA    $CA     
       LDA    #$00    
       STA    WSYNC   
       LDX    #$20    
       STX    HMP0    
       STA    GRP0    
       STA    GRP1    
       LDA    #$34    
       EOR    $F2     
       STA    COLUPF  
       LDA    #$30    
       STA    HMP1    
       LDA    #$03    
       STA    NUSIZ0  
       STA    VDELP1  
       INX            
       STX    NUSIZ1  
       LDA    #$4F    
       EOR    $F2     
       STA    COLUP0  
       STA    COLUP1  
       LDY    #$08    
       STA    WSYNC   
L1926: DEY            
       BNE    L1926   
       STA    RESP0   
       STA    RESP1   
       LDY    #$07    
L192F: LDA    ($C9),Y 
       TAX            
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$00    
       STA    PF1     
       STA    $80     
       NOP            
       LDA    ($C3),Y 
       STA    GRP1    
       LDA    ($C1),Y 
       STA    GRP0    
       STX    $80     
       LDA    ($C7),Y 
       STA    GRP1    
       LDA    ($C5),Y 
       STA    GRP0    
       STX    GRP0    
       STA    HMCLR   
       LDA    $EB     
       STA    PF1     
       DEY            
       BPL    L192F   
       INY            
       STY    VDELP1  
       RTS            

L195E: LDX    #$00    
       STX    HMP0    
       LDA    $91     
       BEQ    L1986   
       DEC    $91     
       BEQ    L19B8   
       LDA    #$80    
       BIT    CXM0P   
       BNE    L19B8   
       BIT    CXM0FB  
       BNE    L19B8   
       LDX    #$03    
       LDA    #$10    
       BIT    $85     
       BEQ    L197D   
       DEX            
L197D: TXA            
       CLC            
       ADC    $8E     
       STA    $8E     
       STA    $8F     
       RTS            

L1986: LDA    $90     
       BEQ    L1990   
       LDA    INPT4   
       AND    #$80    
       BEQ    L199C   
L1990: LDA    INPT4   
       AND    #$80    
       STA    $90     
       LDA    #$00    
       STA    $8F     
       BEQ    L19B8   
L199C: STA    $90     
       LDX    #$01    
       STA    RESMP0  
       STX    $8E     
       STX    $8F     
       LDA    #$50    
       STA    $91     
       LDA    $FB     
       BNE    L19B7   
       LDA    L1FA3   
       STA    $FB     
       LDA    #$10    
       STA    $DE     
L19B7: RTS            

L19B8: LDX    #$00    
       STX    $8F     
       STX    $91     
       LDA    $86     
       CLC            
       ADC    #$04    
       JSR    L1B64   
       LDX    #$02    
       JSR    L1EF2   
       DEX            
       STX    RESMP0  
       RTS            

L19CF: LDA    $EC     
       BNE    L19D9   
       LDA    #$80    
       BIT    CXPPMM  
       BNE    L19DC   
L19D9: JMP    L1A80   
L19DC: LDX    #$04    
       STX    $F5     
       DEX            
       LDA    $87     
       LSR            
       CLC            
       ADC    $9E     
       STA    $80     
       LDY    #$1C    
       LDA    #$01    
       BIT    $9B     
       BNE    L19F3   
       LDY    #$0C    
L19F3: LDA    L1FAF,Y 
       STA    $88     
       LDA    $80     
       JSR    L1FD3   
       BMI    L1A11   
L19FF: LDA    #$04    
       STA    $F5     
       LDA    $80     
       DEY            
       DEY            
       DEY            
       DEY            
       DEX            
       BPL    L19F3   
       INC    $EC     
       JMP    L1A80   
L1A11: LDA    $D5,X   
       AND    #$07    
       BNE    L1A1A   
       JMP    L19FF   
L1A1A: INY            
       LDA    $86     
       STA    $88     
       LDA    L1FAF,Y 
       JSR    L1FD3   
       BMI    L1A30   
       LSR    $F5     
       BNE    L1A1A   
       DEY            
       DEY            
       DEY            
       BNE    L19FF   
L1A30: STX    $F3     
       LDX    $F3     
       LDA    $D5,X   
       EOR    $F5     
       STA    $D5,X   
       LDA    #$00    
       STA    $88     
       LDA    L1FCF,X 
       TAX            
       AND    $D5     
       BNE    L1A55   
       TXA            
       ORA    $D5     
       STA    $D5     
       AND    #$F0    
       CMP    #$F0    
       BNE    L1A5C   
       INC    $88     
       BNE    L1A5C   
L1A55: TXA            
       ORA    #$0F    
       AND    $D5     
       STA    $D5     
L1A5C: LDX    #$01    
       LDA    #$01    
       JSR    L1FDE   
       LDY    $88     
       BEQ    L1A73   
       LDX    #$01    
       LDA    #$05    
       JSR    L1FDE   
       LDA    #$FF    
       JSR    L1D9E   
L1A73: LDA    $FB     
       BNE    L1A80   
       LDA    L1FA7   
       STA    $FB     
       LDA    #$20    
       STA    $DE     
L1A80: JSR    L1DE4   
       DEC    $8C     
       BPL    L1A8B   
       LDA    $8D     
       STA    $8C     
L1A8B: LDA    $EC     
       ORA    $F6     
       ORA    $F7     
       BNE    L1AB5   
       LDX    SWCHA   
       CPX    #$FF    
       BEQ    L1AA0   
       STX    $85     
       LDA    $83     
       STA    $F0     
L1AA0: LDA    #$10    
       BIT    $85     
       BEQ    L1ACC   
       ASL            
       BIT    $85     
       BEQ    L1B0F   
       ASL            
       BIT    $85     
       BEQ    L1AEC   
       ASL            
       BIT    $85     
       BEQ    L1AF1   
L1AB5: LDA    #$FF    
       STA    $85     
       LDA    $F7     
       BEQ    L1ABF   
       DEC    $F7     
L1ABF: LDA    #$00    
       STA    AUDV0   
L1AC3: LDA    #$00    
       STA    $8B     
       LDA    #$10    
       STA    $8A     
       RTS            

L1ACC: LDA    $8C     
       BNE    L1AE0   
       LDA    $87     
       CMP    #$39    
       BMI    L1AF4   
L1AD6: LDA    $87     
       CMP    #$03    
       BEQ    L1AE0   
       DEC    $87     
       DEC    $87     
L1AE0: LDA    #$10    
L1AE2: STA    $8B     
       LDA    #$12    
       STA    $8A     
       LDA    #$40    
       BIT    $85     
L1AEC: BEQ    L1B46   
       ASL            
       BIT    $85     
L1AF1: BEQ    L1B55   
       RTS            

L1AF4: LDA    $9E     
       BEQ    L1AD6   
       DEC    $9E     
       INC    $9C     
       LDY    $92     
       INY            
       LDA    ($9A),Y 
       CMP    $9C     
       BPL    L1AE0   
       DEC    $92     
       DEC    $92     
       LDA    #$00    
       STA    $9C     
       BEQ    L1AE0   
L1B0F: LDA    $8C     
       BNE    L1B23   
       LDA    $87     
       CMP    #$59    
       BPL    L1B2D   
L1B19: LDA    $87     
       CMP    #$7F    
       BEQ    L1B23   
       INC    $87     
       INC    $87     
L1B23: LDA    #$08    
       EOR    $89     
       STA    REFP0   
       LDA    #$22    
       BNE    L1AE2   
L1B2D: LDA    $9E     
       CMP    #$86    
       BEQ    L1B19   
       INC    $9E     
       DEC    $9C     
       BPL    L1B23   
       LDY    $92     
       INY            
       INY            
       STY    $92     
       INY            
       LDA    ($9A),Y 
       STA    $9C     
       BPL    L1B23   
L1B46: LDA    #$00    
       STA    REFP0   
       STA    $89     
       LDA    $8C     
       BNE    L1B52   
       DEC    $86     
L1B52: JMP    L1AC3   
L1B55: LDA    #$08    
       STA    REFP0   
       STA    $89     
       LDA    $8C     
       BNE    L1B61   
       INC    $86     
L1B61: JMP    L1AC3   
L1B64: CLC            
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
       BCC    L1B7C   
       SBC    #$0F    
       INY            
L1B7C: EOR    #$07    
       ASL            
       ASL            
       ASL            
       ASL            
       RTS            

L1B83: LDX    $FB     
       BEQ    L1BB4   
       LDA    $DE     
       AND    #$0F    
       BNE    L1BB2   
       DEC    $FB     
       LDA    $DE     
       LSR            
       LSR            
       TAY            
       LDA    L1FA1,Y 
       CLC            
       ADC    $FB     
       TAX            
       LDA    L1FA2,Y 
       STA    AUDC1   
       LDA    L1E50,X 
       STA    AUDF1   
       LDA    L1E9F,X 
       STA    AUDV1   
       LDA    L1FA0,Y 
       CLC            
       ADC    $DE     
       STA    $DE     
L1BB2: DEC    $DE     
L1BB4: RTS            

L1BB5: LDA    #$02    
       STA    WSYNC   
       STA    VBLANK  
       STA    VSYNC   
       LDA    #$29    
       STA    TIM8T   
       RTS            

L1BC3: LDA    INTIM   
       BNE    L1BC3   
       STA    WSYNC   
       STA    VSYNC   
       LDA    #$30    
       STA    TIM64T  
       RTS            

L1BD2: LDA    INTIM   
       BNE    L1BD2   
       STA    WSYNC   
       STA    VBLANK  
       LDA    #$10    
       STA    T1024T  
       STA    WSYNC   
       RTS            

L1BE3: LDA    INTIM   
       BNE    L1BE3   
       LDA    #$80    
       STA    TIM8T   
       JSR    L1CDE   
       LDX    #$00    
       LDA    $86     
       JSR    L1B64   
       JSR    L1EF2   
L1BFA: LDA    INTIM   
       BNE    L1BFA   
       RTS            

L1C00: .byte $1E,$04,$03,$02,$06,$0F,$09,$02,$00,$11,$15,$02,$00,$11,$09,$02
       .byte $06,$12,$03,$02,$12,$07,$03,$02,$12,$07,$03,$02,$00,$12,$0F,$02
       .byte $00,$1F,$15,$02,$00,$11,$1B,$0B,$1E,$01,$18,$07,$1E,$01,$18,$07
       .byte $1E,$00,$70,$00,$00,$F0,$FF,$07,$70,$00,$06,$70,$03,$07,$F0,$80
       .byte $00,$70,$00,$FF,$70,$66,$06,$F0,$F0,$00,$70,$66,$FE,$70,$00,$F0
       .byte $F0,$FF,$FF,$F0,$80,$00
L1C56: .byte $02
L1C57: .byte $04
L1C58: .byte $00,$02,$02,$34,$00,$00,$5A,$49,$5A,$43,$37,$43,$04,$02,$00,$06
       .byte $06,$4A,$01,$10,$65,$5A,$49,$85,$85,$77,$0C,$0E,$01,$0C,$0E,$55
       .byte $02,$20,$CA,$BD,$CA,$CA,$BD,$CA,$0E,$0C,$01,$0E,$0C,$3F,$03,$28
       .byte $D4,$CA,$BD,$D4,$CA,$BD
L1C8E: .byte $FF,$C2,$D1,$D1,$E0,$E0,$E0,$E0,$FF,$96,$B4,$A4,$D2,$D2,$D2,$D2
       .byte $FF,$59,$68,$68,$77,$77,$77,$77,$FF,$96,$B4,$A4,$D2,$D2,$D2,$D2
       .byte $FF,$88,$97,$97,$A6,$A6,$A6,$A6,$FF,$D2,$E1,$E1,$00,$00,$00,$00
L1CBE: .byte $FF,$00,$00,$01,$00,$02,$01,$03,$FF,$00,$00,$02,$00,$04,$02,$06
L1CCE: .byte $70,$70,$70,$70,$20,$20,$20,$20
L1CD6: .byte $06,$06,$06,$06,$00,$00,$00,$00
L1CDE: ROL    $F0     
       EOR    $F1     
       INC    $F1     
       ADC    $F1     
       BVC    L1CEC   
       INC    $F1     
       STA    $F0     
L1CEC: RTS            

L1CED: .byte $00,$86,$36,$66,$C6,$86,$36,$66,$86,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$12,$02,$18,$0B,$1B,$08,$1E,$0E,$1B,$08,$18,$0F,$15
       .byte $02,$21,$07,$15,$02,$00,$17,$06,$03,$00,$17,$15,$02,$21,$07,$15
       .byte $02,$00,$15,$03,$03,$00,$10,$09,$0B,$0F,$01,$0C,$07,$0F,$01,$0C
       .byte $07,$12,$00,$70,$00,$00,$F0,$F0,$00,$F0,$FF,$00,$70,$00,$F0,$70
       .byte $66,$F2,$F0,$FF,$F3,$F0,$FF,$FF,$70,$0F,$FF,$70,$08,$00,$70,$08
       .byte $08,$70,$00,$08,$70,$0E,$7E
L1D54: .byte $80,$B2,$B6,$08,$01,$01,$07,$07
L1D5C: .byte $1D,$32,$32,$1D,$57,$57,$57,$57
L1D64: .byte $00,$00,$00,$00,$04,$04,$04,$04
L1D6C: .byte $80,$38,$38,$80
L1D70: .byte $98,$98,$98,$98
L1D74: .byte $0A,$0A,$0A,$0A,$88,$88,$88,$88
L1D7C: .byte $E0,$80,$C0,$80,$E0
L1D81: .byte $04,$04,$06,$04,$07
L1D86: LDA    #$80    
       STA    $F7     
       LDA    #$34    
       STA    COLUBK  
       INC    $EC     
       LDA    $FB     
       BNE    L1D9D   
       LDA    L1FAB   
       STA    $FB     
       LDA    #$30    
       STA    $DE     
L1D9D: RTS            

L1D9E: STA    $E0     
       STA    $E1     
       STA    $E2     
       LDA    #$F0    
       STA    $DF     
       LDA    #$0F    
       STA    $E3     
       RTS            

L1DAD: TAX            
L1DAE: CMP    $DF,X   
       BEQ    L1DC2   
       LDA    #$01    
L1DB4: TAY            
       AND    $DF,X   
       BNE    L1DBD   
       TYA            
       ASL            
       BNE    L1DB4   
L1DBD: EOR    $DF,X   
       STA    $DF,X   
       RTS            

L1DC2: INX            
       BNE    L1DAE   
       RTS            

L1DC6: LDA    $EB     
       BEQ    L1DE1   
       CMP    #$FF    
       BEQ    L1DE3   
       LDA    #$80    
L1DD0: TAX            
       AND    $EB     
       BEQ    L1DDB   
       TXA            
       EOR    $EB     
       STA    $EB     
       RTS            

L1DDB: TXA            
       LSR            
       LSR            
       LSR            
       BNE    L1DD0   
L1DE1: DEC    $EB     
L1DE3: RTS            

L1DE4: LDX    #$03    
       LDA    #$10    
L1DE8: BIT    $85     
       BEQ    L1DF1   
       ASL            
       DEX            
       BPL    L1DE8   
       RTS            

L1DF1: LDA    #$0E    
       STA    AUDC0   
       LDA    L1FF1,X 
       STA    AUDF0   
       LDA    L1FF5,X 
       STA    AUDV0   
       RTS            

L1E00: .byte $00,$38,$44,$44,$44,$44,$44,$38,$00,$38,$10,$10,$10,$10,$30,$10
       .byte $00,$7C,$40,$40,$38,$04,$44,$38,$00,$38,$44,$04,$18,$04,$44,$38
       .byte $00,$08,$08,$7C,$48,$28,$18,$08,$00,$38,$44,$04,$04,$78,$40,$7C
       .byte $00,$38,$44,$44,$78,$40,$20,$1C,$00,$20,$20,$20,$10,$08,$04,$7C
       .byte $00,$38,$44,$44,$38,$44,$44,$38,$00,$70,$08,$04,$3C,$44,$44,$38
L1E50: .byte $00,$17,$17,$17,$17,$17,$17,$17,$17,$17,$18,$14,$14,$12,$11,$11
       .byte $17,$14,$14,$18,$1F,$1F,$17,$17,$17,$11,$11,$11,$11,$11,$11,$17
       .byte $1B,$1B,$17,$17,$17,$12,$12,$12,$12,$12,$12,$17,$1F,$1F,$00,$1A
       .byte $17,$14,$13,$11,$0F,$00,$0A,$0C,$0E,$10,$12,$14,$00,$0F,$0B,$08
       .byte $0F,$0B,$08,$0F,$0B,$08,$0F,$0B,$08,$0F,$0B,$08,$0F,$0B,$08
L1E9F: .byte $00,$02,$04,$06,$08,$09,$0A,$0B,$0C,$0C,$0C,$0C,$0C,$0C,$0C,$0C
       .byte $0C,$0C,$0C,$0C,$0C,$0C,$0A,$0A,$0A,$0A,$0A,$0A,$0A,$0A,$0A,$0C
       .byte $0C,$0C,$0A,$0A,$0A,$0A,$0A,$0A,$0A,$0A,$0A,$0C,$0C,$0C,$00,$05
       .byte $07,$09,$0B,$0C,$0D,$00,$0F,$0F,$0F,$0F,$0F,$0F,$00,$0A,$07,$09
       .byte $0B,$0C,$0D,$0A,$07,$09,$0B,$0C,$0D,$0A,$07,$09,$0B,$0C,$0D
L1EEE: .byte $60
L1EEF: .byte $1F,$7B,$1F
L1EF2: STA    WSYNC   
L1EF4: DEY            
       BPL    L1EF4   
       STA    RESP0,X 
       STA    HMP0,X  
       STA    WSYNC   
       STA    HMOVE   
       RTS            

L1F00: .byte $78
L1F01: .byte $78,$13,$23,$43,$F3,$FF,$FF,$FF,$3C,$20,$40,$40,$40,$00,$00,$18
       .byte $18,$39,$39,$BD,$BD,$7B,$7B,$31,$31,$30,$30,$1E,$1E,$1E,$00,$00
       .byte $00,$00,$1E,$1E,$1E,$30,$30,$31,$31,$7B,$7B,$BD,$BD,$39,$39,$18
       .byte $18,$00,$00,$0F,$00,$78,$F0,$70,$38,$30,$18,$18,$20,$40,$EA,$00
       .byte $48,$7C,$3F,$3A,$10,$00,$00,$00,$00,$18,$00,$30,$20,$70,$F0,$70
       .byte $38,$30,$00,$00,$16,$00,$6F,$9E,$8E,$4E,$46,$03,$03,$02,$00,$14
       .byte $00,$E0,$60,$67,$E6,$FE,$FE,$FE,$FD,$B9,$B9,$B9,$FD,$FD,$FF,$FF
       .byte $FE,$7C,$D6,$7C,$00,$00,$00,$00,$00,$00,$14,$00,$3E,$6B,$3E,$3E
       .byte $3E,$7E,$7E,$66,$67,$60,$E0,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$0F,$00,$38,$7E,$FF,$FF,$7C,$18,$00,$2E
L1FA0: .byte $07
L1FA1: .byte $00
L1FA2: .byte $04
L1FA3: .byte $07,$04,$2E,$0C
L1FA7: .byte $07,$01,$35,$04
L1FAB: .byte $13,$01,$3C,$0C
L1FAF: .byte $49,$0C,$1C,$2C,$49,$6C,$7C,$8C,$BD,$6C,$7C,$8C,$BD,$0C,$1C,$2C
       .byte $37,$2C,$4C,$6C,$77,$2C,$4C,$6C,$BD,$6C,$7C,$8C,$BD,$0C,$1C,$2C
L1FCF: .byte $10,$20,$40,$80
L1FD3: SEC            
       SBC    $88     
       BPL    L1FDA   
       EOR    #$FF    
L1FDA: SEC            
       SBC    #$08    
       RTS            

L1FDE: SED            
       CLC            
       ADC    $E5,X   
       STA    $E5,X   
       BCC    L1FEF   
       INX            
       CPX    #$03    
       BEQ    L1FEF   
       LDA    #$01    
       BNE    L1FDE   
L1FEF: CLD            
       RTS            

L1FF1: .byte $16,$16,$12,$1A
L1FF5: .byte $0C,$0C,$0F,$0A,$B2,$00,$10,$00,$10,$00,$10
