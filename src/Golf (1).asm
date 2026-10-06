; Disassembly of roms/Golf (1).bin
; Disassembled Tue Oct  6 15:21:49 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Golf (1).bin
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
PF0     =  $0D
PF1     =  $0E
PF2     =  $0F
AUDV0   =  $19
GRP0    =  $1B
GRP1    =  $1C
ENABL   =  $1F
HMP1    =  $21
VDELBL  =  $27
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXP0FB  =  $32
CXP1FB  =  $33
CXBLPF  =  $36
INPT4   =  $3C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM8T   =  $0295
TIM64T  =  $0296

       ORG $F000
LF000: BIT    $CB     
       BMI    LF041   
       LDA    $B6     
       SEC            
       ADC    #$08    
       CMP    $B0     
       BCC    LF00F   
       LDX    #$88    
LF00F: STX    $B4     
       LDA    $B7     
       LDY    #$03    
       CLC            
       SBC    #$02    
       SBC    $D2     
       BCC    LF027   
       LDY    #$09    
       LSR            
       CMP    #$05    
       BCS    LF027   
       ADC    #$04    
       BNE    LF03F   
LF027: STY    $B5     
       LDA    $B6     
       CLC            
       ADC    #$10    
       SBC    $B0     
       BCC    LF041   
       LSR            
       CMP    #$06    
       BCS    LF041   
       ADC    $B5     
       TAY            
       LDA    LF6D4,Y 
       AND    #$0F    
LF03F: STA    $B5     
LF041: LDA    $AB     
       AND    #$1F    
       STA    $E5     
       LSR            
       BCC    LF098   
       LDY    #$02    
       LDX    #$0B    
LF04E: LDA.wy $00C8,Y 
       LSR            
       LSR            
       LSR            
       LSR            
       JSR    LF605   
       DEX            
       DEX            
       LDA.wy $00C8,Y 
       JSR    LF605   
       DEX            
       DEX            
       DEY            
       BPL    LF04E   
       LDA    $D5     
       AND    $AB     
       BNE    LF095   
       LDA    #$80    
       LDX    $AF     
       BEQ    LF073   
       LDA    #$08    
LF073: STA    $A6     
       LDY    #$03    
LF077: LDA    SWCHA   
       ORA    $DD     
       AND    $A6     
       BNE    LF090   
       LDX    LF7CD,Y 
       LDA    VSYNC,X 
       CMP    LF7D1,Y 
       BEQ    LF090   
       CLC            
       ADC    LF7D8,Y 
       STA    VSYNC,X 
LF090: LSR    $A6     
       DEY            
       BPL    LF077   
LF095: JMP    LF166   
LF098: LDX    $AF     
       LDA    INPT4,X 
       ORA    $DD     
       BMI    LF0DC   
       STX    $DF     
       BIT    $CB     
       BVS    LF0DC   
       LDA    $AB     
       AND    #$07    
       BNE    LF100   
       BIT    $CB     
       BMI    LF0C1   
       LDY    #$80    
       STA    $CC     
       STY    $CB     
       CLC            
       BIT    $B4     
       BPL    LF0BD   
       LDA    #$0D    
LF0BD: ADC    $B5     
       STA    $D3     
LF0C1: LDY    $CC     
       CPY    #$17    
       BEQ    LF100   
       BIT    $B4     
       BPL    LF0CF   
       INC    $B5     
       BPL    LF0D1   
LF0CF: DEC    $B5     
LF0D1: INY            
       STY    $CD     
       STY    $CC     
       LDX    #$05    
       BRK            
       NOP            
       BNE    LF100   
LF0DC: BIT    $CB     
       BPL    LF100   
       BVS    LF0E8   
       LDA    $CC     
       ADC    #$0B    
       STA    $CC     
LF0E8: LDA    #$C0    
       STA    $CB     
       BIT    $B4     
       BMI    LF0F4   
       INC    $B5     
       BPL    LF0F6   
LF0F4: DEC    $B5     
LF0F6: DEC    $CC     
       BNE    LF100   
       LDA    #$00    
       STA    $CB     
       DEC    $B5     
LF100: LDA    $B5     
       BPL    LF106   
       LDA    #$19    
LF106: CMP    #$1A    
       BNE    LF10C   
       LDA    #$00    
LF10C: STA    $B5     
       CMP    #$0D    
       LDA    $B6     
       BCC    LF11C   
       ADC    #$07    
       BIT    $B4     
       BMI    LF11C   
       SBC    #$0F    
LF11C: STA    $AC     
       LDA    #$00    
       LDX    #$0F    
LF122: STA    $B8,X   
       DEX            
       BPL    LF122   
       LDX    $B5     
       LDA    LF7DC,X 
       STA    $A6     
       AND    #$3F    
       TAY            
       LDX    #$08    
LF133: LDA    LF669,Y 
       AND    #$0F    
       STA    $B8,X   
       INY            
       BIT    $A6     
       BMI    LF144   
       DEX            
       BPL    LF133   
       BMI    LF149   
LF144: INX            
       CPX    #$10    
       BNE    LF133   
LF149: LDX    #$0F    
LF14B: LDA    LF6C0,X 
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    $B8,X   
       BIT    $A6     
       BVC    LF161   
       LDY    $B8,X   
       LSR            
       LSR            
       LSR            
       LSR            
       ORA    LF6F0,Y 
LF161: STA    $B8,X   
       DEX            
       BPL    LF14B   
LF166: LDY    #$0A    
       STY    $E0     
       LDA    SWCHB   
       STA    $E3     
       AND    #$08    
       PHP            
       LDA    $DD     
       BEQ    LF178   
       LDA    $DF     
LF178: PLP            
       BEQ    LF182   
       JSR    LF5DA   
       LDY    #$04    
       BNE    LF188   
LF182: LDY    #$08    
       AND    #$0E    
       STY    $E0     
LF188: STA    $DE     
       LDX    #$04    
LF18C: LDA    LF660,Y 
       EOR    $DE     
       AND    $99     
       STA    $A6,X   
       DEY            
       DEX            
       BNE    LF18C   
       STX    $B3     
       STX    $B2     
       STX    PF0     
       STX    PF1     
       STX    PF2     
       LDX    #$05    
       STX    NUSIZ0  
       STX    NUSIZ1  
LF1A9: LDA    $AB,X   
       JSR    LF5CE   
       STY    WSYNC   
LF1B0: DEY            
       BPL    LF1B0   
       STA    PF2,X   
       STA    ENABL,X 
       CPX    #$05    
       BNE    LF1BD   
       LDX    #$03    
LF1BD: DEX            
       BNE    LF1A9   
       STA    WSYNC   
       STA    HMOVE   
LF1C4: LDA    $A7,X   
       CMP    #$0E    
       BNE    LF1CC   
       LDA    #$0C    
LF1CC: STA    COLUP0,X
       INX            
       CPX    #$03    
       BNE    LF1C4   
       STA    COLUBK  
       LDA    $B1     
       STA    VDELBL  
       LSR            
       STA    $D2     
       STA    HMCLR   
LF1DE: LDX    INTIM   
       BNE    LF1DE   
       STX    WSYNC   
       STX    HMOVE   
       STX    VBLANK  
       LDY    #$24    
       LDX    $AE     
       DEX            
       BMI    LF1F4   
       TXA            
       ASL            
       ASL            
       TAY            
LF1F4: STY    $A6     
       LDY    #$04    
       LDX    #$02    
       STX    CTRLPF  
LF1FC: STA    WSYNC   
       STA    HMOVE   
       LDA    ($9C),Y 
       AND    #$F0    
       STA    PF1     
       LDA    ($A4),Y 
       ASL            
       ASL            
       ASL            
       ASL            
       STA    PF2     
       LDA    ($A2),Y 
       AND    #$F0    
       STA    PF1     
       LDA    ($9E),Y 
       ASL            
       ASL            
       ASL            
       ASL            
       STA    PF2     
       STA    WSYNC   
       STA    HMOVE   
       LDA    ($9A),Y 
       LSR            
       LSR            
       LSR            
       LSR            
       STA    PF1     
       LDA    #$00    
       STA    PF2     
       LDX    #$03    
LF22E: DEX            
       BNE    LF22E   
       STA    PF1     
       LDA    ($A0),Y 
       AND    #$0F    
       STA    PF2     
       DEY            
       BPL    LF1FC   
       LDA    $B4     
       STA    REFP0   
       STA    WSYNC   
       STA    HMOVE   
       STY    PF0     
       STY    PF1     
       STY    PF2     
       LDA    #$11    
       STA    CTRLPF  
       LDX    $AF     
       LDA    $A7,X   
       STA    COLUP0  
       LDA    $AA     
       STA    COLUBK  
       LDX    $A6     
       TXS            
       CPX    #$24    
       BNE    LF264   
       BIT    $E4     
       BPL    LF264   
       INX            
LF264: LDA    LF616,X 
       STA    $81     
       LDX    #$00    
       INY            
       STA    CXCLR   
LF26E: STA    WSYNC   
       STA    HMOVE   
       STX    ENABL   
       STY    GRP0    
       LDX    $B3     
       LDA    $8D,X   
       STA    PF2     
       LDA    $83,X   
       STA    PF1     
       BMI    LF2A2   
LF282: LDX    $B2     
       CPX    #$59    
       BEQ    LF2FC   
       BNE    LF2A2   
LF28A: TXA            
       TSX            
       STA    WSYNC   
       STA    HMOVE   
       STA    ENABL   
       STY    GRP0    
       LDY    LF63C,X 
       INY            
       CPY    $B2     
       BNE    LF282   
       PLA            
       LDA    LF617,X 
       STA    $81     
LF2A2: TSX            
       SEC            
       LDA    LF63C,X 
       SBC    $B2     
       TAY            
       AND    #$F8    
       BEQ    LF2B7   
       LDA    LF6C0,X 
       STA    HMP1    
       LDX    #$00    
       BEQ    LF2C4   
LF2B7: LDA    ($81),Y 
       TAX            
       TYA            
       LDY    $E0     
       CMP    #$04    
       BCC    LF2C2   
       INY            
LF2C2: LDA    ($81),Y 
LF2C4: STA    WSYNC   
       STA    HMOVE   
       EOR    $DE     
       AND    $99     
       STA    COLUP1  
       STX    GRP1    
       SEC            
       LDA    $B7     
       SBC    $B2     
       TAX            
       AND    #$F0    
       BEQ    LF2DE   
       LDY    #$00    
       BEQ    LF2E0   
LF2DE: LDY    $B8,X   
LF2E0: LDX    #$00    
       SEC            
       LDA    $D2     
       SBC    $B2     
       AND    #$FE    
       BNE    LF2ED   
       LDX    #$02    
LF2ED: STX    HMCLR   
       INC    $B2     
       LDA    #$07    
       AND    $B2     
       BNE    LF28A   
       INC    $B3     
       JMP    LF26E   
LF2FC: STA    WSYNC   
       INX            
       STX    VBLANK  
       LDX    #$FF    
       TXS            
       LDA    #$24    
       STA    TIM64T  
       LDA    $E3     
       LSR            
       BCC    LF317   
       BIT    $E2     
       BPL    LF31B   
       LDX    #$A6    
       JMP    LF560   
LF317: LDA    #$80    
       STA    $E2     
LF31B: LDY    #$00    
       STY    GRP0    
       BIT    CXP1FB  
       BVC    LF33B   
       LDX    $A6     
LF325: INX            
       LDA    LF63B,X 
       CLC            
       ADC    #$02    
       SBC    $D2     
       CMP    #$0A    
       BCS    LF325   
       LDA    LF615,X 
LF335: INY            
       CMP    LF778,Y 
       BNE    LF335   
LF33B: STY    $A6     
       LDA    $D4     
       CMP    LF7F7,Y 
       BCS    LF38D   
       DEY            
       DEY            
       BMI    LF383   
       DEY            
       BEQ    LF378   
       LDX    $DA     
       BNE    LF38D   
       DEY            
       BNE    LF35E   
       JSR    LF5ED   
       JSR    LF5A8   
       LDX    #$03    
       BRK            
       NOP            
       BNE    LF36C   
LF35E: LDX    #$02    
LF360: LDA    $CF,X   
       EOR    #$FF    
       TAY            
       INY            
       STY    $CF,X   
       DEX            
       BNE    LF360   
       INX            
LF36C: LDA    $D9     
       STA    $B1     
       LDA    $D8     
       STA    $B0     
LF374: BRK            
       NOP            
       BNE    LF38D   
LF378: CMP    #$02    
       BCC    LF38D   
       JSR    LF5ED   
       LDX    #$02    
       BNE    LF374   
LF383: JSR    LF5ED   
       LDX    #$00    
       BRK            
       NOP            
       JMP    LF54D   
LF38D: LDY    $A6     
       BNE    LF399   
       LDA    $B1     
       STA    $D9     
       LDA    $B0     
       STA    $D8     
LF399: STY    $DA     
       LDA    $E3     
       LDX    $AF     
       BNE    LF3A2   
       ASL            
LF3A2: STA    $E4     
       BIT    CXBLPF  
       BMI    LF3B2   
       LDA    $B0     
       STA    $D6     
       LDA    $B1     
       STA    $D7     
       BNE    LF3C5   
LF3B2: BIT    $AE     
       BMI    LF3BA   
       BIT    $E4     
       BMI    LF3C5   
LF3BA: LDA    $D6     
       STA    $B0     
       LDA    $D7     
       STA    $B1     
       JSR    LF5E5   
LF3C5: LDX    #$01    
LF3C7: CLC            
       LDA    $CE,X   
       ADC    $D0,X   
       STA    $CE,X   
       BVS    LF3DD   
       BPL    LF3F2   
       LDA    $B0,X   
       CMP    LF6AF,X 
       BEQ    LF3E4   
       DEC    $B0,X   
       BNE    LF3EB   
LF3DD: LDA    $B0,X   
       CMP    LF6B1,X 
       BNE    LF3E9   
LF3E4: JSR    LF5E5   
       BNE    LF3EB   
LF3E9: INC    $B0,X   
LF3EB: LDA    $CE,X   
       SEC            
       SBC    #$80    
       STA    $CE,X   
LF3F2: DEX            
       BPL    LF3C7   
       LDA    $D4     
       BEQ    LF43C   
       BIT    CXBLPF  
       BPL    LF401   
       DEC    $D4     
       BEQ    LF405   
LF401: DEC    $D4     
       BNE    LF43C   
LF405: JSR    LF5ED   
       LDY    $A6     
       CPY    #$02    
       BNE    LF43C   
       LDA    $AE     
       TAY            
       ORA    #$80    
       STA    $AE     
       LDA    $B0     
       SEC            
       SBC    LF7A2,Y 
       LSR            
       TAX            
       LDA    LF7B5,X 
       STA    $B0     
       LDA    $B1     
       SEC            
       SBC    LF7AB,Y 
       LSR            
       LSR            
       TAX            
       LDA    LF7BE,X 
       STA    $B1     
       LDA    LF790   
LF433: STA    $AD     
       LDA    #$00    
       STA    $CB     
       JMP    LF4CA   
LF43C: BIT    $CB     
       BVC    LF486   
       BIT    CXP0FB  
       BVC    LF486   
       LDA    $CD     
       BEQ    LF486   
       LDY    #$05    
       JSR    LF5FB   
       BPL    LF451   
       ADC    $E5     
LF451: BIT    CXBLPF  
       BMI    LF45B   
       LDY    $A6     
       CPY    #$03    
       BNE    LF45C   
LF45B: LSR            
LF45C: STA    $D4     
       LDA    $D3     
       CMP    #$0D    
       BCC    LF466   
       SBC    #$0D    
LF466: TAY            
       LDX    LF6B3,Y 
       STX    $D0     
       LDA    LF6E4,Y 
       LDX    $D3     
       CPX    #$0D    
       BCC    LF479   
       EOR    #$FF    
       ADC    #$00    
LF479: STA    $D1     
       LDA    #$00    
       STA    $CD     
       LDX    #$06    
       BRK            
       NOP            
       JSR    LF5A8   
LF486: LDY    #$00    
       LDA    $B7     
       SEC            
       SBC    #$FC    
       SBC    $D2     
       BCC    LF4A3   
       CMP    #$15    
       BCS    LF4A3   
       LDA    $B6     
       ADC    #$14    
       SBC    $B0     
       BCC    LF4A3   
       CMP    #$16    
       BCS    LF4A3   
       LDY    #$06    
LF4A3: STY    $D5     
       LDX    #$00    
       LDA    $E3     
       AND    #$02    
       BNE    LF4B6   
       LDX    $E1     
       BEQ    LF4B3   
       CPX    #$1E    
LF4B3: BEQ    LF524   
       INX            
LF4B6: STX    $E1     
       INC    $AB     
       BNE    LF4C0   
       INC    $DF     
       BEQ    LF52E   
LF4C0: DEC    $DC     
       BNE    LF506   
       LDA    #$00    
       STA    AUDV0   
       BEQ    LF506   
LF4CA: LDA    #$0A    
       LDX    $AE     
       BMI    LF4DA   
       BIT    $DD     
       BMI    LF4D9   
       LDA    LF799,X 
       STA    $CA     
LF4D9: TXA            
LF4DA: LDY    #$06    
       JSR    LF5FB   
       ADC    #$62    
       STA    $A8     
       LDA    #$F6    
       STA    $A9     
       LDY    #$06    
LF4E9: LDA    ($A8),Y 
       LSR            
       LSR            
       LSR            
       LSR            
       PHA            
       AND    #$03    
       TAX            
       LDA    LF7D5,X 
       STA.wy $008F,Y 
       PLA            
       LSR            
       LSR            
       TAX            
       LDA    LF700,X 
       STA.wy $0085,Y 
       DEY            
       BPL    LF4E9   
LF506: LDA    INTIM   
       BNE    LF506   
       LDY    #$2A    
       STA    WSYNC   
       STY    VSYNC   
       STY    TIM8T   
LF514: LDX    INTIM   
       BNE    LF514   
       STX    WSYNC   
       STX    VSYNC   
       INY            
       STY    TIM64T  
       JMP    LF000   
LF524: LDA    $80     
       EOR    #$80    
       STA    $80     
       LDX    #$01    
       STX    $E1     
LF52E: LDA    #$AA    
       STA    $C9     
       LDX    #$A1    
       BIT    $80     
       BPL    LF539   
       INX            
LF539: STX    $C8     
LF53B: LDA    #$F7    
       STA    $99     
       LDA    #$FF    
       STA    $DD     
       LDA    #$01    
       STA    $AE     
       LDA    #$AA    
       STA    $CA     
       BNE    LF582   
LF54D: BIT    $80     
       BPL    LF580   
       LDA    $AF     
       BNE    LF57E   
       INC    $AF     
       BNE    LF582   

START:
       SEI            
       CLD            
       LDX    #$FF    
       TXS            
       TXA            
       INX            
LF560: LDY    #$00    
LF562: STY    VSYNC,X 
       INX            
       BNE    LF562   
       STY    AUDV0   
       DEX            
       LDY    #$18    
LF56C: STX    $81,Y   
       DEY            
       BNE    LF56C   
       TAY            
       BMI    LF52E   
       BIT    $80     
       BMI    LF580   
       LDA    #$AA    
       STA    $C9     
       BMI    LF580   
LF57E: DEC    $AF     
LF580: INC    $AE     
LF582: LDA    $AE     
       AND    #$7F    
       CMP    #$0A    
       BEQ    LF53B   
       STA    $AE     
       TAX            
       LDA    LF77D,X 
       STA    $B6     
       CMP    #$30    
       BCS    LF598   
       ADC    #$12    
LF598: STA    $B0     
       LDA    LF790,X 
       STA    $B1     
       LSR            
       STA    $B7     
       LDA    LF786,X 
       JMP    LF433   
LF5A8: SED            
       LDX    $AF     
       LDA    $C8,X   
       CLC            
       ADC    #$01    
       STA    $C8,X   
       CLD            
       RTS            

LF5B4: .byte $24,$DD,$30,$04,$A9,$08,$85,$19,$BD,$C6,$F7,$85,$17,$BD,$A8,$F6
       .byte $85,$15,$BD,$D0,$F6,$29,$0F,$85,$DC,$40
LF5CE: SEC            
       LDY    #$02    
LF5D1: INY            
       SBC    #$0F    
       BCS    LF5D1   
       EOR    #$FF    
       SBC    #$06    
LF5DA: ASL            
       ADC    #$00    
       ASL            
       ADC    #$00    
       ASL            
       ADC    #$00    
       ASL            
       RTS            

LF5E5: TXA            
       PHA            
       LDX    #$04    
       BRK            
       NOP            
       PLA            
       TAX            
LF5ED: LDY    #$00    
       STY    $D0     
       STY    $D1     
       STY    $CE     
       STY    $CF     
       INY            
       STY    $D4     
       RTS            

LF5FB: CLC            
       STA    $DB     
LF5FE: ADC    $DB     
       DEY            
       BNE    LF5FE   
       TAY            
       RTS            

LF605: AND    #$0F    
       STA    $A6     
       ASL            
       ASL            
       ADC    $A6     
       ADC    #$04    
       STA    $99,X   
       LDA    #$F7    
       STA    $9A,X   
LF615: RTS            

LF616: .byte $49
LF617: .byte $49,$6D,$61,$61,$6D,$49,$49,$49,$55,$61,$6D,$49,$61,$55,$49,$6D
       .byte $6D,$61,$6D,$61,$49,$49,$49,$61,$6D,$55,$00,$49,$49,$61,$6D,$61
       .byte $49,$6D,$49,$3E
LF63B: .byte $36
LF63C: .byte $1C,$2C,$3A,$44,$1C,$2C,$3A,$45,$19,$29,$3B,$44,$1C,$29,$36,$42
       .byte $1E,$2A,$36,$44,$1A,$29,$33,$42,$1C,$29,$36,$FF,$1A,$2D,$39,$44
       .byte $1C,$29,$35,$3F
LF660: .byte $31,$FC,$38,$92,$D6,$00,$0E,$04,$06
LF669: .byte $18,$08,$08,$08,$18,$98,$98,$38,$38,$18,$18,$08,$88,$C8,$C4,$84
       .byte $14,$14,$18,$18,$38,$84,$84,$04,$02,$02,$02,$18,$C8,$84,$04,$02
       .byte $02,$81,$C1,$10,$1C,$0C,$02,$02,$81,$81,$30,$30,$10,$8C,$8C,$C3
       .byte $F3,$C0,$C0,$00,$00,$10,$1F,$1F,$30,$30,$10,$00,$00,$10,$30,$EC
       .byte $CC,$8A,$8C,$83,$CC,$E8
LF6AF: .byte $12,$10
LF6B1: .byte $90,$A0
LF6B3: .byte $2B,$2A,$25,$1F,$16,$0C,$00,$F4,$EA,$E1,$DB,$D6,$D5
LF6C0: .byte $00,$BE,$7C,$BC,$0C,$2C,$4E,$AE,$0F,$7F,$8C,$DE,$0F,$7C,$80,$70
       .byte $0F,$E3,$58,$D4
LF6D4: .byte $0F,$71,$84,$B2,$01,$C0,$90,$01,$02,$AA,$3B,$EC,$0C,$CB,$6A,$80
LF6E4: .byte $00,$E9,$D3,$C8,$C3,$B3,$B0,$B3,$C3,$C8,$D3,$E9
LF6F0: .byte $00,$40,$20,$60,$10,$50,$30,$70,$08,$48,$28,$68,$18,$58,$38,$78
LF700: .byte $C0,$CF,$F0,$FF,$E7,$A5,$A5,$A5,$E7,$42,$42,$42,$42,$42,$E7,$81
       .byte $E7,$24,$E7,$E7,$24,$66,$24,$E7,$24,$24,$E7,$A5,$81,$E7,$24,$E7
       .byte $81,$E7,$E7,$A5,$E7,$81,$E7,$24,$24,$24,$24,$E7,$E7,$A5,$E7,$A5
       .byte $E7,$E7,$24,$E7,$A5,$E7,$00,$00,$00,$00,$00,$08,$08,$00,$00,$00
       .byte $00,$00,$18,$18,$18,$18,$02,$02,$00,$00,$08,$08,$08,$7F,$3E,$1C
       .byte $08,$02,$04,$44,$D3,$3C,$3C,$7E,$7E,$7E,$7E,$3C,$3C,$02,$02,$96
       .byte $96,$18,$3C,$7E,$76,$7E,$7E,$3C,$18,$02,$02,$D3,$D3,$0E,$1F,$1F
       .byte $1F,$7E,$F8,$F0,$60,$08,$08,$06
LF778: .byte $06,$3E,$61,$6D,$55
LF77D: .byte $49,$76,$18,$14,$74,$74,$15,$80,$1A
LF786: .byte $80,$20,$74,$58,$40,$30,$6C,$1C,$34,$1C
LF790: .byte $48,$2A,$2A,$80,$80,$38,$2A,$2A,$80
LF799: .byte $80,$13,$25,$34,$44,$54,$65,$74,$83
LF7A2: .byte $94,$2A,$76,$72,$1F,$26,$6E,$1E,$6C
LF7AB: .byte $1E,$77,$27,$65,$41,$5B,$23,$27,$61,$27
LF7B5: .byte $34,$34,$3D,$46,$51,$5A,$63,$6C,$6C
LF7BE: .byte $34,$34,$46,$58,$64,$70,$7C,$7C,$18,$04,$18,$08,$18,$04,$0D
LF7CD: .byte $B7,$B7,$B6,$B6
LF7D1: .byte $0E,$58,$09,$88
LF7D5: .byte $00,$F0,$0F
LF7D8: .byte $FF,$01,$FF,$01
LF7DC: .byte $00,$09,$12,$1B,$24,$2D,$36,$AD,$A4,$9B,$92,$89,$80,$C0,$C9,$D2
       .byte $DB,$E4,$ED,$F6,$6D,$64,$5B,$52,$49,$40,$00
LF7F7: .byte $00,$1E,$00,$19,$46,$59,$F5,$B4,$F5
