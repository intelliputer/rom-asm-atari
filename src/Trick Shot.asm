; Disassembly of roms/Trick Shot.bin
; Disassembled Tue Oct  6 15:24:48 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Trick Shot.bin
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
RESM1   =  $13
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
ENAM1   =  $1E
ENABL   =  $1F
HMP0    =  $20
HMM0    =  $22
HMM1    =  $23
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
SWCHA   =  $0280
SWCHB   =  $0282
$0285   =  $0285
TIM64T  =  $0296
L1E99   =   $1E99

       ORG $1000

START:
       LDX    #$FF    
       TXS            
       SEI            
       CLD            
       INX            
       TXA            
L1007: STA    VSYNC,X 
       INX            
       BNE    L1007   
       LDA    #$02    
       STA    $99     
       STA    $F9     
       JSR    L1B22   
       LDA    #$00    
       STA    $F9     
       STA    $FB     
       LDA    #$FD    
       STA    $94     
       STA    $91     
       LDA    #$01    
       STA    $92     
       STA    $97     
       STA    $F6     
       STA    $98     
       LDX    #$FF    
       STX    $CA     
       STX    $CB     
       STX    $CC     
       STX    $96     
       STX    $93     
       LDA    #$04    
       STA    $9B     
       LDX    #$03    
       STX    $9A     
       STX    $90     
       STX    $95     
L1043: JSR    L1A9A   
       JSR    L1A8E   
       JSR    L1E93   
       DEX            
       BPL    L1043   
L104F: STA    WSYNC   
       LDA    #$02    
       STA    VSYNC   
       STA    VBLANK  
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    HMCLR   
       LDA    #$00    
       STA    VSYNC   
       STA    REFP0   
       STA    REFP1   
       STA    GRP1    
       STA    GRP0    
       LDA    #$00    
       STA    NUSIZ0  
       LDX    #$0F    
       LDA    $CA     
       AND    #$01    
       BEQ    L1079   
       LDX    #$4A    
L1079: TXA            
       AND    $CC     
       STA    COLUP0  
       LDA    #$34    
       STA    TIM64T  
       LDA    SWCHB   
       ROR    $F6     
       BCS    L108E   
       LSR            
       BCS    L10C9   
       ROL            
L108E: LSR            
       ROL    $F6     
       LSR            
       BIT    $F7     
       BCC    L109A   
       ROL    $F7     
       BNE    L10E0   
L109A: BPL    L10BE   
L109C: LDA    $CA     
       AND    #$1F    
       STA    $F7     
       LDA    #$01    
       STA    $F5     
       INC    $F8     
       LDA    $F8     
       CMP    #$0E    
       BNE    L10B2   
       LDA    #$00    
       STA    $F8     
L10B2: JSR    L1B5A   
       JSR    L1B48   
       JSR    L1B22   
       JMP    L10C6   
L10BE: LDA    $F7     
       EOR    $CA     
       AND    #$1F    
       BEQ    L109C   
L10C6: JMP    L1580   
L10C9: JSR    L1B48   
L10CC: JSR    L1B5A   
       LDA    #$01    
       STA    $F6     
       LDA    #$02    
       STA    $F5     
       JSR    L1B22   
       JSR    L1E48   
       JMP    L1580   
L10E0: LDA    $CA     
       AND    #$01    
       TAX            
L10E5: LDA    $88,X   
       BNE    L10EC   
       JMP    L11D7   
L10EC: LDA    $B0,X   
       CLC            
       ADC    $8C,X   
       STA    $8C,X   
       LDA    $A8,X   
       ADC    $88,X   
       STA    $88,X   
       CPX    #$00    
       BNE    L110A   
       LDA    $8C,X   
       CLC            
       ADC    $BA     
       STA    $8C,X   
       LDA    $88,X   
       ADC    $BB     
       STA    $88,X   
L110A: CMP    #$35    
       BCS    L1115   
       JSR    L1B85   
       LDA    #$36    
       BNE    L111E   
L1115: CMP    #$9C    
       BCC    L117A   
       JSR    L1B85   
       LDA    #$9B    
L111E: STA    $88,X   
       LDA    $F5     
       BEQ    L116E   
       LDY    #$00    
       LDA    $90,X   
       BMI    L1131   
       BEQ    L1130   
       LDY    #$02    
       BNE    L1131   
L1130: INY            
L1131: LDA    $80,X   
       CMP    L1ECE,Y 
       BCC    L1147   
       CMP    L1ED1,Y 
       BCS    L1147   
       CMP    L1EC2,Y 
       BCC    L116E   
       CMP    L1EC5,Y 
       BCS    L116E   
L1147: LDA    #$00    
       STA    $88,X   
       STA    $98,X   
       CPX    #$00    
       BEQ    L115A   
       JSR    L1B92   
L1154: JSR    L1B6A   
       JMP    L11D7   
L115A: JSR    L1E88   
       LDA    $F8     
       CMP    #$04    
       BNE    L1167   
       LDA    $C6     
       BNE    L1154   
L1167: LDA    #$50    
       STA    $BE     
       JMP    L11D7   
L116E: LDA    $94,X   
       EOR    #$FF    
       CLC            
       ADC    #$01    
       STA    $94,X   
       JSR    L1A8E   
L117A: LDA    $AC,X   
       CLC            
       ADC    $84,X   
       STA    $84,X   
       LDA    $A4,X   
       ADC    $80,X   
       STA    $80,X   
       CPX    #$00    
       BNE    L1198   
       LDA    $84,X   
       CLC            
       ADC    $B8     
       STA    $84,X   
       LDA    $80,X   
       ADC    $B9     
       STA    $80,X   
L1198: CMP    #$0C    
       BCS    L11A3   
       JSR    L1B85   
       LDA    #$0D    
       BNE    L11AC   
L11A3: CMP    #$8D    
       BCC    L11D7   
       JSR    L1B85   
       LDA    #$8C    
L11AC: STA    $80,X   
       LDA    $F5     
       BEQ    L11CB   
       LDY    #$00    
       LDA    $94,X   
       BEQ    L11BE   
       BMI    L11BF   
       LDY    #$02    
       BNE    L11BF   
L11BE: INY            
L11BF: LDA    $88,X   
       CMP    L1EC8,Y 
       BCS    L11E0   
       CMP    L1ECB,Y 
       BCC    L11E0   
L11CB: LDA    $90,X   
       EOR    #$FF    
       CLC            
       ADC    #$01    
       STA    $90,X   
       JSR    L1A9A   
L11D7: INX            
       INX            
       CPX    #$04    
       BCS    L11E3   
       JMP    L10E5   
L11E0: JMP    L1147   
L11E3: LDA    $F5     
       CMP    #$04    
       BNE    L1218   
       LDX    #$03    
L11EB: LDA    $98,X   
       BNE    L120F   
       DEX            
       BPL    L11EB   
       LDX    #$03    
L11F4: LDA    $88,X   
       BNE    L1207   
       DEX            
       BNE    L11F4   
       LDA    $F8     
       CMP    #$04    
       BEQ    L1207   
       JSR    L1B92   
       JSR    L1B92   
L1207: LDA    #$3F    
       STA    $EE     
       LDA    #$05    
       STA    $F5     
L120F: JMP    L1358   
L1212: JMP    L10C9   
L1215: JMP    L12FA   
L1218: LDA    $F5     
       CMP    #$05    
       BNE    L120F   
       DEC    $EE     
       BNE    L120F   
       LDA    $F8     
       CMP    #$05    
       BCS    L1212   
       LDX    #$FF    
       STX    $CB     
       CMP    #$02    
       BCS    L1268   
       LDA    $F4     
       CMP    #$01    
       BEQ    L1240   
       LDA    $F8     
       BEQ    L1243   
       JSR    L1E7A   
       JMP    L1265   
L1240: JSR    L1E7A   
L1243: INC    $F9     
       LDA    $F9     
       CMP    #$09    
       BNE    L1265   
       LDX    #$00    
       LDA    $F2     
       CMP    $F3     
       BCS    L1255   
       LDX    #$01    
L1255: STX    $F4     
L1257: LDA    #$5F    
       CLC            
       ADC    $BF     
       STA    $BF     
       LDA    #$00    
       STA    $F5     
       JMP    L1358   
L1265: JMP    L10CC   
L1268: CMP    #$04    
       BNE    L1215   
       LDA    $C5     
       BNE    L12B3   
       LDA    $C6     
       BNE    L12BE   
       JSR    L1E7A   
       LDA    $88     
       BNE    L1280   
       LDX    #$02    
       JSR    L1B92   
L1280: LDX    #$00    
       JSR    L1B92   
L1285: LDY    $88     
       LDX    $8A     
       STY    $8A     
       STX    $88     
       LDY    $80     
       LDX    $82     
       STY    $82     
       STX    $80     
       LDY    $9C     
       LDX    $9E     
       STY    $9E     
       STX    $9C     
       LDX    #$00    
       JSR    L1BD5   
       LDX    #$02    
       JSR    L1BD5   
       LDA    $88     
       BNE    L12B0   
       LDX    #$00    
       JSR    L1BC8   
L12B0: JMP    L1334   
L12B3: LDA    $C7     
       AND    #$01    
       BEQ    L12BE   
       LDX    #$01    
       JSR    L1BC8   
L12BE: LDA    $C7     
       BPL    L12CD   
       LDA    $C8     
       BPL    L12CD   
       LDX    #$02    
       STX    $C5     
       JSR    L1B92   
L12CD: LDA    $88     
       BNE    L12F0   
       LDA    $C6     
       CMP    #$02    
       BEQ    L12DC   
       LDX    #$00    
       JSR    L1B92   
L12DC: LDX    #$02    
       JSR    L1B92   
       LDX    #$00    
       JSR    L1BC8   
L12E6: INC    $FA     
       LDA    $FA     
       CMP    #$05    
       BNE    L1334   
       BEQ    L12F4   
L12F0: LDA    $C5     
       BNE    L12E6   
L12F4: JSR    L1E7A   
       JMP    L1285   
L12FA: LDX    #$03    
L12FC: LDA    $88,X   
       BNE    L1318   
       DEX            
       BNE    L12FC   
       LDX    #$03    
L1305: TXA            
       ASL            
       TAY            
       LDA    L1FAC,Y 
       STA    $80,X   
       LDA    L1FAD,Y 
       STA    $88,X   
       JSR    L1BD5   
       DEX            
       BNE    L1305   
L1318: LDA    $88     
       BEQ    L1322   
       LDA    $C5     
       BNE    L1334   
       BEQ    L132B   
L1322: LDX    #$00    
       JSR    L1BC8   
       LDA    #$01    
       STA    $C4     
L132B: LDA    $F8     
       CMP    #$02    
       BEQ    L1334   
       JSR    L1E7A   
L1334: LDA    #$00    
       STA    $C5     
       STA    $C7     
       STA    $C8     
       STA    $C6     
       LDY    $F8     
       LDX    #$01    
L1342: LDA    $F2,X   
       CMP    L1E99,Y 
       BCC    L134E   
       STX    $F4     
       JMP    L1257   
L134E: DEX            
       BPL    L1342   
       LDA    #$02    
       STA    $F5     
       JSR    L1E48   
L1358: LDA    $BC     
       BEQ    L1378   
       LDA    $B6     
       STA    $B8     
       LDA    $B7     
       STA    $BA     
       LDA    #$FF    
       BIT    $B6     
       BMI    L136C   
       LDA    #$00    
L136C: STA    $B9     
       LDA    #$FF    
       BIT    $B7     
       BMI    L1376   
       LDA    #$00    
L1376: STA    $BB     
L1378: LDA    #$00    
       STA    AUDV0   
       STA    AUDV1   
       LDA    $BF     
       BEQ    L1392   
       LDA    #$0E    
       STA    AUDF0   
       LDA    #$04    
       STA    AUDC0   
       LDA    $BF     
       AND    #$0F    
       STA    AUDV0   
       DEC    $BF     
L1392: LDA    $BE     
       BEQ    L13AA   
       LDA    #$1F    
       STA    AUDF1   
       LDA    #$01    
       STA    AUDC1   
       LDA    $CA     
       AND    #$03    
       BEQ    L13A6   
       LDA    #$0F    
L13A6: STA    AUDV1   
       DEC    $BE     
L13AA: LDA    $BD     
       BEQ    L13C2   
       LDA    $C0     
       STA    AUDC1   
       LDA    $CA     
       AND    #$01    
       BNE    L13BA   
       DEC    $BD     
L13BA: LDA    $BD     
       STA    AUDF1   
       EOR    #$FF    
       STA    AUDV1   
L13C2: LDA    $F5     
       BEQ    L13F5   
       LDA    SWCHA   
       CMP    #$FF    
       BEQ    L13D3   
       STA    $CB     
       LDA    #$FF    
       STA    $CC     
L13D3: LDA    $BC     
       BEQ    L13F5   
       LDY    #$1F    
       BIT    $C1     
       BMI    L13DF   
       LDY    #$02    
L13DF: STY    AUDF0   
       LDA    #$04    
       BIT    $C1     
       BVS    L13E9   
       LDA    #$08    
L13E9: STA    AUDC0   
       DEC    $BC     
       LDA    $C1     
       AND    #$0F    
       STA    AUDV0   
       INC    $C1     
L13F5: LDA    $F5     
       CMP    #$04    
       BNE    L142A   
       LDX    #$03    
L13FD: LDA    $C3     
       CMP    #$10    
       BCS    L140E   
       DEC    $EE,X   
       BPL    L141A   
       LDY    $F8     
       LDA    L1E30,Y 
       STA    $EE,X   
L140E: LDA    $98,X   
       BEQ    L141A   
       DEC    $98,X   
       JSR    L1A9A   
       JSR    L1A8E   
L141A: CPX    #$00    
       BNE    L1427   
       LDA    $98     
       CMP    #$01    
       BCS    L1427   
       JSR    L1E88   
L1427: DEX            
       BPL    L13FD   
L142A: LDX    $F4     
       LDA    $F5     
       CMP    #$02    
       BEQ    L1435   
       JMP    L14C1   
L1435: LDA    $CA     
       AND    #$03    
       BNE    L145A   
       LDA    SWCHA   
       TAY            
       AND    L1E42,X 
       BNE    L1449   
       DEC    $C2     
       JMP    L1451   
L1449: TYA            
       AND    L1E44,X 
       BNE    L14C1   
       INC    $C2     
L1451: LDA    $C2     
       AND    #$1F    
       STA    $C2     
       JSR    L1E48   
L145A: LDA    $C4     
       BEQ    L1486   
       LDA    $F8     
       CMP    #$02    
       BCC    L1486   
       CMP    #$04    
       BCS    L1486   
       LDA    SWCHB   
       AND    L1E46,X 
       BEQ    L1486   
       LDA    SWCHA   
       TAY            
       AND    L1E3E,X 
       BNE    L147B   
       INC    $88     
L147B: TYA            
       AND    L1E40,X 
       BNE    L1483   
       DEC    $88     
L1483: JSR    L1E48   
L1486: LDA    REFP1,X 
       BMI    L14C1   
       LDY    $C2     
       LDA    $C4     
       BEQ    L14AB   
       LDA    $F8     
       CMP    #$02    
       BCC    L14AB   
       CMP    #$04    
       BCS    L14AB   
       LDA    SWCHB   
       AND    L1E46,X 
       BEQ    L14AB   
       TYA            
       CMP    #$08    
       BCC    L14AB   
       CMP    #$19    
       BCC    L14C1   
L14AB: TYA            
       LDA    L1DCD,Y 
       STA    $90     
       LDA    L1DED,Y 
       STA    $94     
       LDA    #$01    
       STA    $CD     
       LDA    #$03    
       STA    $F5     
L14BE: JMP    L1545   
L14C1: LDA    $F5     
       CMP    #$03    
       BNE    L14BE   
       LDA    REFP1,X 
       BMI    L1513   
       LDA    $CA     
       AND    #$01    
       BNE    L14DD   
       INC    $CD     
       LDA    $CD     
       CMP    #$08    
       BCC    L14DD   
       LDA    #$07    
       STA    $CD     
L14DD: LDA    SWCHA   
       TAY            
       AND    L1E3E,X 
       BNE    L14EC   
       INC    $B7     
       BPL    L14EC   
       DEC    $B7     
L14EC: TYA            
       AND    L1E40,X 
       BNE    L14F8   
       DEC    $B7     
       BMI    L14F8   
       INC    $B7     
L14F8: TYA            
       AND    L1E42,X 
       BNE    L1504   
       DEC    $B6     
       BMI    L1504   
       INC    $B6     
L1504: TYA            
       AND    L1E44,X 
       BNE    L1545   
       INC    $B6     
       BPL    L1545   
       DEC    $B6     
       JMP    L1545   
L1513: LDA    #$04    
       STA    $F5     
       LDA    $B7     
       CMP    #$7F    
       BEQ    L1521   
       CMP    #$80    
       BNE    L152A   
L1521: LDA    $CD     
       CMP    #$07    
       BCC    L152A   
       JSR    L1B66   
L152A: LDA    #$00    
       STA    $B5     
       STA    $C4     
       TAX            
       LDA    $CD     
       STA    $98     
       LDY    $F8     
       LDA    L1E30,Y 
       STA    $EE     
       JSR    L1E93   
       JSR    L1A9A   
       JSR    L1A8E   
L1545: LDA    $CA     
       AND    #$01    
       CLC            
       ADC    #$02    
       TAX            
L154D: STX    $CE     
       LDA    $9C,X   
       AND    #$03    
       ASL            
       TAY            
       LDA    $CE     
       AND    #$02    
       TAX            
       LDA    L1EDC,Y 
       STA    $DA,X   
       LDA    L1EDD,Y 
       STA    $DB,X   
       LDX    $CE     
       LDA    $98,X   
       BEQ    L157C   
       DEC    $A0,X   
       BNE    L157C   
       JSR    L1E93   
       LDA    $90,X   
       BPL    L157A   
       DEC    $9C,X   
       JMP    L157C   
L157A: INC    $9C,X   
L157C: DEX            
       DEX            
       BPL    L154D   
L1580: LDA    $FB     
       BNE    L15AE   
       LDA    #$1C    
       STA    $E7     
       STA    $E9     
       STA    $E3     
       STA    $E5     
       LDA    #$1D    
       STA    $EB     
       STA    $ED     
       LDA    #$30    
       STA    $EC     
       LDA    #$39    
       STA    $EA     
       LDA    #$C0    
       STA    $E8     
       LDA    #$CC    
       STA    $E6     
       LDA    #$D8    
       STA    $E4     
       LDA    #$E4    
       STA    $E2     
       BNE    L15E8   
L15AE: LDX    #$0B    
L15B0: LDA    #$1C    
       STA    $E2,X   
       DEX            
       BPL    L15B0   
       LDX    #$08    
       LDA    $F2     
       JSR    L1BE3   
       LDX    $F8     
       LDA    L1E22,X 
       LDY    $F5     
       BEQ    L15CB   
       CPY    #$01    
       BEQ    L15D2   
L15CB: LDY    L1E9E,X 
       BEQ    L15D2   
       LDA    $F3     
L15D2: LDX    #$00    
       JSR    L1BE3   
       LDX    $F4     
       LDA    L1EBA,X 
       LDY    $F5     
       BNE    L15E3   
       LDA    L1EBC,X 
L15E3: LDX    #$04    
       JSR    L1BE3   
L15E8: LDA    $CA     
       AND    #$01    
       TAX            
       LDA    $88,X   
       STA    $DE     
       LDA    $8A,X   
       STA    $DF     
       LDA    $80,X   
       STA    $E0     
       LDA    $82,X   
       STA    $E1     
       LDA    #$C6    
       AND    $CC     
       STA    COLUPF  
       LDA    #$21    
       STA    CTRLPF  
       STA    WSYNC   
       LDY    #$0E    
L160B: DEY            
       BNE    L160B   
       STA    RESBL   
       LDY    #$02    
       LDA    $B4     
       SEC            
       SBC    #$01    
L1617: SEC            
       INY            
       SBC    #$0F    
       BCS    L1617   
       ADC    #$07    
       EOR    #$FF    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    HMM0    
       STA    WSYNC   
       LDA    #$00    
L162B: DEY            
       BPL    L162B   
       STA    RESM0   
       LDX    #$01    
L1632: LDY    #$02    
       LDA    $E0,X   
       SEC            
       SBC    #$0B    
L1639: SEC            
       INY            
       SBC    #$0F    
       BCS    L1639   
       ADC    #$07    
       EOR    #$FF    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    HMP0,X  
       STA    WSYNC   
       LDA    L1E0D   
L164E: DEY            
       BPL    L164E   
       STA    RESP0,X 
       DEX            
       BPL    L1632   
       LDA    #$14    
       STA    NUSIZ1  
       LDA    #$28    
       AND    $CC     
       STA    COLUP1  
       LDY    #$07    
       STA    WSYNC   
L1664: DEY            
       BNE    L1664   
       STA    RESM1   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$C6    
       AND    $CC     
L1671: BIT    $0285   
       BPL    L1671   
       STA    WSYNC   
       STA    HMCLR   
       STA    COLUBK  
       LDA    #$00    
       STA    VBLANK  
       STA    WSYNC   
       LDA    #$02    
       STA    ENABL   
       LDA    #$10    
       AND    $CC     
       STA    WSYNC   
       STA    COLUBK  
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$C0    
       STA    PF0     
       LDA    #$00    
       STA    PF1     
       LDA    #$80    
       STA    PF2     
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$02    
       STA    ENAM1   
       STA    WSYNC   
       LDA    #$30    
       STA    HMM1    
       LDA    #$34    
       STA    WSYNC   
       STA    NUSIZ1  
       STA    HMOVE   
       STA    WSYNC   
       LDA    #$D0    
       STA    HMM1    
       LDA    #$14    
       STA    WSYNC   
       STA    NUSIZ1  
       STA    HMOVE   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    ENAM1   
       LDA    #$10    
       STA    NUSIZ1  
       LDA    #$E0    
       STA    PF0     
       LDA    #$80    
       STA    PF1     
       LDA    #$C0    
       STA    PF2     
       STA    WSYNC   
       LDX    #$6A    
       LDA    $F8     
       CMP    #$04    
       BNE    L16EE   
       LDX    #$0F    
L16EE: LDA    $CA     
       AND    #$01    
       BEQ    L16F6   
       LDX    #$2A    
L16F6: TXA            
       AND    $CC     
       STA    COLUP1  
       LDX    #$1D    
       TXS            
       LDX    #$AE    
       STA    WSYNC   
       CPX    $B5     
       PHP            
       PLA            
       DEX            
       DEX            
       STA    WSYNC   
       STA    WSYNC   
       CPX    $B5     
       PHP            
       PLA            
       DEX            
       DEX            
       STA    WSYNC   
       STA    WSYNC   
       CPX    $B5     
       PHP            
       PLA            
       LDA    #$00    
       STA    $CE     
       LDX    #$00    
       LDA    $DE     
       CMP    #$9B    
       BNE    L1728   
       LDX    #$38    
L1728: LDY    #$00    
       LDA    $DF     
       CMP    #$9B    
       BNE    L1732   
       LDY    #$38    
L1732: LDA    #$FF    
       STA    WSYNC   
       STA    WSYNC   
       STX    GRP0    
       STY    GRP1    
       STA    PF1     
       STA    PF2     
       LDX    #$A8    
L1742: CPX    $B5     
       PHP            
       PLA            
       TXA            
       SEC            
       SBC    $DE     
       TAY            
       AND    #$F0    
       BNE    L1753   
       LDA    ($DA),Y 
       STA    $CE     
L1753: TXA            
       DEX            
       SEC            
       SBC    $DF     
       TAY            
       AND    #$F0    
       BNE    L1766   
       LDA    ($DC),Y 
       STA    WSYNC   
       STA    GRP1    
       JMP    L1768   
L1766: STA    WSYNC   
L1768: LDA    $CE     
       STA    GRP0    
       TXA            
       SEC            
       SBC    $DE     
       TAY            
       AND    #$F0    
       BNE    L1779   
       LDA    ($DA),Y 
       STA    $CE     
L1779: TXA            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    L1E0D,Y 
       STA    PF0     
       TXA            
       DEX            
       SEC            
       SBC    $DF     
       TAY            
       AND    #$F0    
       BNE    L1796   
       LDA    ($DC),Y 
       STA    WSYNC   
       STA    GRP1    
       JMP    L1798   
L1796: STA    WSYNC   
L1798: LDA    $CE     
       STA    GRP0    
       CPX    #$3A    
       BCS    L1742   
       CPX    $B5     
       PHP            
       LDA    #$80    
       STA    PF1     
       LDA    #$C0    
       STA    PF2     
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       PLA            
       DEX            
       DEX            
       STA    WSYNC   
       STA    WSYNC   
       CPX    $B5     
       PHP            
       PLA            
       DEX            
       DEX            
       STA    WSYNC   
       STA    WSYNC   
       CPX    $B5     
       PHP            
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    ENAM0   
       LDX    #$FF    
       TXS            
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$C0    
       STA    PF0     
       LDA    #$00    
       STA    PF1     
       LDA    #$80    
       STA    PF2     
       STA    WSYNC   
       LDA    #$28    
       AND    $CC     
       STA    COLUP1  
       LDA    #$14    
       STA    NUSIZ1  
       STA    WSYNC   
       LDA    #$02    
       STA    ENAM1   
       STA    WSYNC   
       LDA    #$30    
       STA    HMM1    
       LDA    #$34    
       STA    WSYNC   
       STA    NUSIZ1  
       STA    HMOVE   
       STA    WSYNC   
       LDA    #$D0    
       STA    HMM1    
       LDA    #$14    
       STA    WSYNC   
       STA    NUSIZ1  
       STA    HMOVE   
       STA    WSYNC   
       LDA    #$00    
       STA    WSYNC   
       STA    PF0     
       STA    PF2     
       STA    ENAM1   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$C6    
       AND    $CC     
       STA    WSYNC   
       STA    COLUBK  
       STA    WSYNC   
       LDA    #$00    
       STA    ENABL   
       LDA    #$0E    
       STA    $CE     
       LDA    #$94    
       AND    $CC     
       STA    WSYNC   
       STA    COLUBK  
       LDA    #$00    
       AND    $CC     
       STA    COLUP1  
       STA    COLUP0  
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDY    #$06    
       STA    WSYNC   
L184E: DEY            
       BPL    L184E   
       NOP            
       STA    RESP0   
       STA    RESP1   
       LDA    #$F0    
       STA    HMP0    
       LDA    #$01    
       STA    VDELP0  
       STA    VDELP1  
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$0B    
       STA    $CE     
L1868: LDY    $CE     
       LDA    ($EC),Y 
       STA    GRP0    
       STA    WSYNC   
       LDA    ($EA),Y 
       STA    GRP1    
       LDA    ($E8),Y 
       STA    GRP0    
       LDA    ($E6),Y 
       STA    $CF     
       LDA    ($E4),Y 
       TAX            
       LDA    ($E2),Y 
       TAY            
       LDA    $CF     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STY    GRP0    
       DEC    $CE     
       BPL    L1868   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    VDELP0  
       STA    VDELP1  
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$2B    
       STA    TIM64T  
       LDA    #$02    
       STA    VBLANK  
       LDX    #$03    
L18AB: LDY    #$03    
L18AD: STY    $CF     
       TXA            
       CMP    $CF     
       BEQ    L1917   
       LDA.wy $0088,Y 
       BEQ    L1917   
       LDA.wy $0080,Y 
       SEC            
       SBC    $80,X   
       STA    $D8     
       STA    $CF     
       BPL    L18CC   
       EOR    #$FF    
       CLC            
       ADC    #$01    
       STA    $CF     
L18CC: LDA.wy $0088,Y 
       SEC            
       SBC    $88,X   
       STA    $D9     
       STA    $D0     
       BPL    L18DF   
       EOR    #$FF    
       CLC            
       ADC    #$01    
       STA    $D0     
L18DF: LDA    $CF     
       CMP    #$02    
       BCC    L18FD   
       BEQ    L18FD   
       CMP    #$03    
       BEQ    L1901   
       CMP    #$04    
       BEQ    L1905   
       CMP    #$05    
       BEQ    L1909   
       CMP    #$06    
       BEQ    L1911   
       CMP    #$07    
       BEQ    L190D   
       BNE    L1917   
L18FD: LDA    #$0A    
       BPL    L1913   
L1901: LDA    #$09    
       BPL    L1913   
L1905: LDA    #$08    
       BPL    L1913   
L1909: LDA    #$07    
       BPL    L1913   
L190D: LDA    #$03    
       BPL    L1913   
L1911: LDA    #$05    
L1913: CMP    $D0     
       BCS    L1923   
L1917: DEY            
       BPL    L18AD   
       DEX            
       BPL    L18AB   
       JMP    L1A3F   
L1920: JMP    L1A58   
L1923: LDA    #$00    
       STA    $D1     
       JSR    L1B73   
       JSR    L1ACC   
       LDA    $F5     
       CMP    #$04    
       BNE    L1953   
       CPX    #$00    
       BNE    L1945   
       LDA    #$80    
       STA.wy $00C6,Y 
       LDA    $C6     
       BNE    L1953   
       STY    $C6     
       JMP    L1953   
L1945: CPY    #$00    
       BNE    L1953   
       LDA    #$80    
       STA    $C6,X   
       LDA    $C6     
       BNE    L1953   
       STX    $C6     
L1953: LDA    $98,X   
       BNE    L195C   
       LDA.wy $0098,Y 
       BEQ    L1920   
L195C: STY    $CE     
       LDA    $98,X   
       BNE    L1969   
       LDY    $F8     
       LDA    L1E30,Y 
       STA    $EE,X   
L1969: LDA    $D9     
       ASL            
       ASL            
       ASL            
       AND    #$38    
       STA    $CF     
       LDA    $D8     
       AND    #$07    
       ORA    $CF     
       TAY            
       LDA    L1EE4,Y 
       STA    $D0     
       LDA    $94,X   
       ASL            
       ASL            
       ASL            
       AND    #$38    
       STA    $CF     
       LDA    $90,X   
       AND    #$07    
       ORA    $CF     
       TAY            
       LDA    L1EE4,Y 
       STA    $CF     
       LDA    $98,X   
       BNE    L199D   
       LDA    #$00    
       STA    $90,X   
       STA    $94,X   
L199D: LDA    $D8     
       STA    $D2     
       LDA    $D9     
       STA    $D3     
       LDA    $90,X   
       SEC            
       SBC    $D8     
       STA    $D8     
       LDA    $94,X   
       SEC            
       SBC    $D9     
       STA    $D9     
       JSR    L1ACC   
       LDA    $D9     
       STA    $94,X   
       LDA    $D8     
       STA    $90,X   
       LDA    $D0     
       SEC            
       SBC    $CF     
       BPL    L19CA   
       EOR    #$FF    
       CLC            
       ADC    #$01    
L19CA: CMP    #$08    
       BCC    L19DC   
       TAY            
       AND    #$18    
       CMP    #$18    
       BEQ    L19D9   
       LDA    #$07    
       BNE    L19DC   
L19D9: TYA            
       EOR    #$1F    
L19DC: ASL            
       ASL            
       ASL            
       STA    $D0     
       LDA    $98,X   
       ORA    $D0     
       TAY            
       LDA    L1F24,Y 
       STA    $CF     
       LDY    $CE     
       LDA    $98,X   
       SEC            
       SBC    $CF     
       STA    $98,X   
       LDA    $D1     
       BNE    L1A17   
       LDA    $CF     
       STA    $D4     
       LDA    #$01    
       STA    $D1     
       STX    $CE     
       TYA            
       TAX            
       LDY    $CE     
       LDA    #$00    
       SEC            
       SBC    $D2     
       STA    $D8     
       LDA    #$00    
       SEC            
       SBC    $D3     
       STA    $D9     
       JMP    L195C   
L1A17: LDA.wy $0098,Y 
       CLC            
       ADC    $CF     
       CMP    #$08    
       BCC    L1A23   
       LDA    #$07    
L1A23: STA.wy $0098,Y 
       LDA    $98,X   
       CLC            
       ADC    $D4     
       CMP    #$08    
       BCC    L1A31   
       LDA    #$07    
L1A31: STA    $98,X   
       STY    $D0     
       JSR    L1BD9   
       LDX    $D0     
       JSR    L1BD9   
       INC    $C3     
L1A3F: DEC    $CA     
       BNE    L1A50   
       LDA    $CB     
       BEQ    L1A4C   
       DEC    $CB     
       JMP    L1A50   
L1A4C: LDA    #$F3    
       STA    $CC     
L1A50: BIT    $0285   
       BPL    L1A50   
       JMP    L104F   
L1A58: LDA    $C4     
       BNE    L1A79   
       LDA    $F5     
       CMP    #$02    
       BNE    L1A79   
       CPX    #$00    
       BEQ    L1A6A   
       CPY    #$00    
       BNE    L1A79   
L1A6A: LDX    #$00    
       JSR    L1BC8   
       JSR    L1E48   
       LDA    #$01    
       STA    $C4     
       JMP    L1A3F   
L1A79: LDA.wy $0080,Y 
       CLC            
       ADC    #$01    
       CMP    #$8D    
       BCS    L1A89   
       STA.wy $0080,Y 
       JMP    L1A3F   
L1A89: DEC    $80,X   
       JMP    L1A3F   
L1A8E: STX    $CE     
       LDY    $98,X   
       TXA            
       CLC            
       ADC    #$04    
       TAX            
       JMP    L1A9E   
L1A9A: STX    $CE     
       LDY    $98,X   
L1A9E: LDA    #$00    
       STA    $A4,X   
       STA    $AC,X   
       TYA            
       BEQ    L1AC9   
       LDA    #$00    
L1AA9: CLC            
       ADC    $90,X   
       DEY            
       BNE    L1AA9   
       STA    $CF     
       LSR            
       LSR            
       LSR            
       STA    $A4,X   
       LDA    $CF     
       ASL            
       ASL            
       ASL            
       ASL            
       ASL            
       STA    $AC,X   
       LDA    $90,X   
       BPL    L1AC9   
       LDA    $A4,X   
       ORA    #$E0    
       STA    $A4,X   
L1AC9: LDX    $CE     
       RTS            

L1ACC: LDA    $D9     
       BPL    L1AD5   
       EOR    #$FF    
       CLC            
       ADC    #$01    
L1AD5: AND    #$0F    
       STA    $D7     
       LDA    $D8     
       BPL    L1AE2   
       EOR    #$FF    
       CLC            
       ADC    #$01    
L1AE2: AND    #$07    
       STA    $D5     
       STY    $D6     
       LDA    $D7     
       ASL            
       ASL            
       ASL            
       ORA    $D5     
       TAY            
       LDA    $D7     
       CMP    #$06    
       BCC    L1B03   
       LDA    #$03    
       BIT    $D9     
       BPL    L1AFE   
       LDA    #$FD    
L1AFE: STA    $D9     
       JMP    L1B11   
L1B03: LDA    L1D9D,Y 
       BIT    $D9     
       BPL    L1B0F   
       EOR    #$FF    
       CLC            
       ADC    #$01    
L1B0F: STA    $D9     
L1B11: LDA    L1D45,Y 
       BIT    $D8     
       BPL    L1B1D   
       EOR    #$FF    
       CLC            
       ADC    #$01    
L1B1D: STA    $D8     
       LDY    $D6     
       RTS            

L1B22: LDA    $F9     
       ASL            
       ASL            
       ASL            
       TAX            
       LDA    #$FF    
       STA    $CC     
       LDY    #$00    
L1B2E: LDA    L1F64,X 
       STA.wy $0080,Y 
       LDA    L1F65,X 
       STA.wy $0088,Y 
       INX            
       INX            
       INY            
       CPY    #$04    
       BNE    L1B2E   
       LDA    #$FF    
       STA    $CB     
       STA    $FB     
       RTS            

L1B48: LDA    #$00    
       STA    $F2     
       STA    $F3     
       STA    $FA     
       STA    $F4     
       LDX    $F8     
       LDA    L1EAC,X 
       STA    $F9     
       RTS            

L1B5A: LDA    #$00    
       LDX    #$80    
L1B5E: STA    VSYNC,X 
       INX            
       CPX    #$CA    
       BNE    L1B5E   
       RTS            

L1B66: LDA    #$08    
       BNE    L1B6C   
L1B6A: LDA    #$0E    
L1B6C: STA    $C0     
       LDA    #$0F    
       STA    $BD     
       RTS            

L1B73: LDA.wy $0098,Y 
       CMP    $98,X   
       BCS    L1B7C   
       LDA    $98,X   
L1B7C: CLC            
       ADC    #$05    
       BNE    L1B8B   
L1B81: LDA    #$C6    
       BNE    L1B8B   
L1B85: LDA    $BC     
       BNE    L1B91   
       LDA    #$82    
L1B8B: STA    $C1     
       LDA    #$02    
       STA    $BC     
L1B91: RTS            

L1B92: LDY    #$01    
       LDA    $F8     
       CMP    #$04    
       BNE    L1BA4   
       CPX    #$00    
       BEQ    L1BA4   
       INY            
       CPX    #$02    
       BEQ    L1BA4   
       INY            
L1BA4: STY    $CE     
       LDA    L1EBE,Y 
       CLC            
       ADC    $BF     
       STA    $BF     
       LDY    $F4     
       SED            
       LDA.wy $00F2,Y 
       CLC            
       ADC    $CE     
       STA.wy $00F2,Y 
       CLD            
       CPX    #$00    
       BEQ    L1BC7   
       LDA    #$01    
       STA    $C5     
       ORA    $C6,X   
       STA    $C6,X   
L1BC7: RTS            

L1BC8: TXA            
       ASL            
       TAY            
       LDA    L1FB4,Y 
       STA    $80,X   
       LDA    L1FB5,Y 
       STA    $88,X   
L1BD5: LDA    #$00    
       STA    $98,X   
L1BD9: JSR    L1E93   
       JSR    L1A9A   
       JSR    L1A8E   
       RTS            

L1BE3: STA    $CE     
       AND    #$F0    
       LSR            
       STA    $CF     
       LSR            
       CLC            
       ADC    $CF     
       STA    $E4,X   
       LDA    $CE     
       AND    #$0F    
       ASL            
       ASL            
       STA    $CF     
       ASL            
       CLC            
       ADC    $CF     
       STA    $E2,X   
       RTS            

L1BFF: .byte $00,$18,$3C,$3C,$24,$24,$24,$24,$24,$24,$3C,$3C,$18,$1C,$1C,$1C
       .byte $08,$08,$08,$08,$08,$18,$18,$18,$08,$3C,$3C,$3C,$24,$20,$10,$08
       .byte $24,$24,$3C,$38,$18,$18,$3C,$3C,$24,$04,$04,$18,$08,$24,$3C,$3C
       .byte $3C,$1C,$1C,$1C,$08,$08,$3C,$28,$28,$28,$18,$18,$08,$18,$3C,$3C
       .byte $24,$24,$04,$34,$2C,$20,$3C,$3C,$3C,$18,$3C,$3C,$24,$24,$34,$2C
       .byte $20,$24,$3C,$3C,$18,$18,$18,$18,$18,$18,$08,$08,$24,$24,$3C,$3C
       .byte $3C,$18,$3C,$3C,$24,$24,$24,$18,$24,$24,$3C,$3C,$18,$18,$3C,$3C
       .byte $24,$04,$04,$1C,$24,$24,$3C,$3C,$18,$1C,$1C,$1C,$08,$08,$08,$08
       .byte $08,$08,$3E,$3E,$3E,$70,$70,$70,$20,$20,$3C,$3E,$22,$22,$7E,$7E
       .byte $7C,$7C,$7E,$7E,$22,$22,$26,$3C,$3E,$22,$62,$7E,$7C,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$7E,$3C,$3C,$18,$18,$3C,$18
       .byte $3C,$7E,$7E,$FF,$81,$00,$1C,$3E,$36,$6B,$6B,$77,$6B,$36,$3E,$1C
       .byte $00,$00,$3F,$40,$49,$89,$89,$89,$89,$48,$40,$3F,$00,$00,$FF,$00
       .byte $54,$54,$57,$54,$54,$A3,$00,$FF,$00,$00,$FF,$00,$99,$A5,$AD,$A1
       .byte $A5,$19,$00,$FF,$00,$00,$FC,$02,$32,$49,$41,$41,$49,$32,$02,$FC
       .byte $00
L1CF0: .byte $F8,$F8,$F8,$FA,$FA,$FB,$FC,$FD,$00,$03,$04,$05,$06,$06,$08,$08
       .byte $08,$08,$08,$06,$06,$05,$04,$03,$00,$FD,$FC,$FB,$FA,$FA,$F8,$F8
L1D10: .byte $01,$03,$05,$05,$07,$09,$09,$0B,$0B,$0B,$09,$09,$07,$05,$05,$03
       .byte $01,$FF,$FD,$FD,$FB,$F9,$F9,$F7,$F7,$F7,$F9,$F9,$FB,$FD,$FD,$FF
       .byte $00,$00,$00,$8B,$8A,$BA,$AB,$AA,$BB,$00,$00,$00,$B8,$A0,$A0,$B8
       .byte $88,$B8,$00,$00,$00
L1D45: .byte $00,$03,$03,$03,$03,$03,$03,$03,$00,$03,$03,$03,$03,$03,$03,$03
       .byte $00,$02,$03,$03,$03,$03,$03,$03,$00,$01,$02,$03,$03,$03,$03,$03
       .byte $00,$01,$02,$02,$03,$03,$03,$03,$00,$01,$02,$02,$03,$03,$03,$03
       .byte $00,$01,$01,$02,$02,$03,$03,$03,$00,$01,$01,$02,$02,$03,$03,$03
       .byte $00,$01,$01,$01,$02,$02,$03,$03,$00,$01,$01,$01,$02,$02,$02,$03
       .byte $00,$01,$01,$01,$01,$02,$02,$02
L1D9D: .byte $00,$00,$00,$00,$00,$00,$00,$00,$03,$03,$02,$01,$01,$01,$01,$01
       .byte $03,$03,$03,$02,$01,$01,$01,$01,$03,$03,$03,$03,$02,$02,$01,$01
       .byte $03,$03,$03,$03,$03,$02,$02,$02,$03,$03,$03,$03,$03,$03,$03,$02
L1DCD: .byte $FD,$FD,$FE,$FD,$FD,$FE,$FF,$FF,$00,$01,$01,$02,$03,$03,$02,$03
       .byte $03,$03,$02,$03,$03,$02,$01,$01,$00,$FF,$FF,$FE,$FD,$FD,$FE,$FD
L1DED: .byte $00,$01,$01,$02,$03,$03,$02,$03,$03,$03,$02,$03,$03,$02,$01,$01
       .byte $00,$FF,$FF,$FE,$FD,$FD,$FE,$FD,$FD,$FD,$FE,$FD,$FD,$FE,$FF,$FF
L1E0D: .byte $00,$00,$00,$00,$00,$00,$00,$E0,$C0,$80,$80,$80,$80,$80,$80,$80
       .byte $80,$80,$80,$C0,$E0
L1E22: .byte $1A,$2A,$1B,$2B,$2C,$1D,$2D,$3D,$4D,$5D,$6D,$7D,$8D,$9D
L1E30: .byte $5F,$5F,$3F,$3F,$3F,$5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F
L1E3E: .byte $10,$01
L1E40: .byte $20,$02
L1E42: .byte $40,$04
L1E44: .byte $80,$08
L1E46: .byte $40,$80
L1E48: LDY    $C2     
       LDA    $80     
       CLC            
       ADC    #$03    
       SEC            
       SBC    L1CF0,Y 
       STA    $B4     
       LDA    $88     
       CLC            
       ADC    #$0A    
       SEC            
       SBC    L1D10,Y 
       AND    #$FE    
       STA    $B5     
       LDA    $88     
       AND    #$01    
       BNE    L1E75   
       LDA    $C2     
       AND    #$10    
       BEQ    L1E75   
       LDA    $B5     
       CLC            
       ADC    #$02    
       STA    $B5     
L1E75: LDA    #$00    
       STA    $C3     
       RTS            

L1E7A: LDA    $F4     
       EOR    #$01    
       STA    $F4     
       LDA    #$00    
       STA    $FA     
       JSR    L1B81   
       RTS            

L1E88: LDY    #$05    
       LDA    #$00    
L1E8C: STA.wy $00B6,Y 
       DEY            
       BPL    L1E8C   
       RTS            

L1E93: LDY    $98,X   
       LDA    L1ED4,Y 
       STA    $A0,X   
       RTS            

L1E9B: .byte $25,$25,$50
L1E9E: .byte $00,$01,$00,$01,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00
L1EAC: .byte $00,$00,$09,$09,$0A,$00,$01,$02,$03,$04,$05,$06,$07,$08
L1EBA: .byte $FD,$DF
L1EBC: .byte $ED,$DE
L1EBE: .byte $00,$10,$20,$30
L1EC2: .byte $48,$47,$46
L1EC5: .byte $54,$53,$52
L1EC8: .byte $90,$92,$91
L1ECB: .byte $3E,$3D,$3E
L1ECE: .byte $10,$0E,$0E
L1ED1: .byte $8C,$8C,$8A
L1ED4: .byte $07,$07,$06,$05,$04,$03,$02,$02
L1EDC: .byte $BC
L1EDD: .byte $1F,$CC,$1F,$DC,$1F,$EC,$1F
L1EE4: .byte $00,$00,$00,$00,$10,$10,$10,$10,$08,$04,$02,$01,$0F,$0F,$0E,$0C
       .byte $08,$06,$04,$03,$0D,$0D,$0C,$0A,$08,$07,$05,$04,$0C,$0C,$0B,$09
       .byte $18,$19,$1B,$1C,$14,$14,$15,$17,$18,$19,$1B,$1C,$14,$14,$15,$17
       .byte $18,$1A,$1C,$1D,$13,$13,$14,$16,$18,$1C,$1E,$1F,$11,$11,$12,$14
L1F24: .byte $00,$01,$02,$03,$04,$05,$06,$07,$00,$01,$02,$03,$04,$05,$06,$07
       .byte $00,$01,$01,$02,$03,$04,$05,$06,$00,$01,$01,$02,$03,$04,$05,$06
       .byte $00,$01,$01,$01,$02,$03,$04,$05,$00,$01,$01,$01,$01,$02,$03,$04
       .byte $00,$01,$01,$01,$01,$01,$02,$03,$00,$00,$01,$01,$01,$01,$01,$02
L1F64: .byte $29
L1F65: .byte $6B,$68,$6C,$00,$00,$00,$00,$7B,$61,$0F,$95,$0D,$37,$00,$00,$83
       .byte $59,$28,$52,$43,$8A,$28,$86,$65,$55,$82,$7E,$82,$56,$00,$00,$88
       .byte $3F,$50,$35,$00,$00,$12,$9B,$64,$63,$37,$46,$11,$38,$00,$00,$51
       .byte $5B,$89,$3B,$5B,$8C,$80,$94,$35,$5D,$8A,$38,$00,$00,$47,$98,$61
       .byte $6F,$00,$00,$0D,$3E,$20,$9B
L1FAC: .byte $6C
L1FAD: .byte $65,$2A,$5B,$33,$66,$2A,$6F
L1FB4: .byte $6D
L1FB5: .byte $69,$30,$5C,$00,$00,$00,$00,$00,$00,$00,$00,$00,$38,$7C,$7C,$FE
       .byte $BE,$BE,$9E,$5C,$44,$38,$00,$00,$00,$00,$00,$00,$38,$7C,$7C,$FE
       .byte $FA,$FA,$F2,$74,$44,$38,$00,$00,$00,$00,$00,$00,$38,$44,$74,$F2
       .byte $FA,$FA,$FE,$7C,$7C,$38,$00,$00,$00,$00,$00,$00,$38,$44,$5C,$9E
       .byte $BE,$BE,$FE,$7C,$7C,$38,$00,$00,$10,$00,$10
