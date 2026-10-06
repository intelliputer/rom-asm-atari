; Disassembly of roms/Golf (2).bin
; Disassembled Tue Oct  6 15:21:49 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Golf (2).bin
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
LF7F7: .byte $00,$1E,$00,$19,$46,$59,$F5,$B4,$F5,$24,$CB,$30,$3D,$A5,$B6,$38
       .byte $69,$08,$C5,$B0,$90,$02,$A2,$88,$86,$B4,$A5,$B7,$A0,$03,$18,$E9
       .byte $02,$E5,$D2,$90,$0B,$A0,$09,$4A,$C9,$05,$B0,$04,$69,$04,$D0,$18
       .byte $84,$B5,$A5,$B6,$18,$69,$10,$E5,$B0,$90,$0F,$4A,$C9,$06,$B0,$0A
       .byte $65,$B5,$A8,$B9,$D4,$F6,$29,$0F,$85,$B5,$A5,$AB,$29,$1F,$85,$E5
       .byte $4A,$90,$4E,$A0,$02,$A2,$0B,$B9,$C8,$00,$4A,$4A,$4A,$4A,$20,$05
       .byte $F6,$CA,$CA,$B9,$C8,$00,$20,$05,$F6,$CA,$CA,$88,$10,$E9,$A5,$D5
       .byte $25,$AB,$D0,$2A,$A9,$80,$A6,$AF,$F0,$02,$A9,$08,$85,$A6,$A0,$03
       .byte $AD,$80,$02,$05,$DD,$25,$A6,$D0,$10,$BE,$CD,$F7,$B5,$00,$D9,$D1
       .byte $F7,$F0,$06,$18,$79,$D8,$F7,$95,$00,$46,$A6,$88,$10,$E2,$4C,$66
       .byte $F1,$A6,$AF,$B5,$3C,$05,$DD,$30,$3C,$86,$DF,$24,$CB,$70,$36,$A5
       .byte $AB,$29,$07,$D0,$54,$24,$CB,$30,$11,$A0,$80,$85,$CC,$84,$CB,$18
       .byte $24,$B4,$10,$02,$A9,$0D,$65,$B5,$85,$D3,$A4,$CC,$C0,$17,$F0,$39
       .byte $24,$B4,$10,$04,$E6,$B5,$10,$02,$C6,$B5,$C8,$84,$CD,$84,$CC,$A2
       .byte $05,$00,$EA,$D0,$24,$24,$CB,$10,$20,$70,$06,$A5,$CC,$69,$0B,$85
       .byte $CC,$A9,$C0,$85,$CB,$24,$B4,$30,$04,$E6,$B5,$10,$02,$C6,$B5,$C6
       .byte $CC,$D0,$06,$A9,$00,$85,$CB,$C6,$B5,$A5,$B5,$10,$02,$A9,$19,$C9
       .byte $1A,$D0,$02,$A9,$00,$85,$B5,$C9,$0D,$A5,$B6,$90,$08,$69,$07,$24
       .byte $B4,$30,$02,$E9,$0F,$85,$AC,$A9,$00,$A2,$0F,$95,$B8,$CA,$10,$FB
       .byte $A6,$B5,$BD,$DC,$F7,$85,$A6,$29,$3F,$A8,$A2,$08,$B9,$69,$F6,$29
       .byte $0F,$95,$B8,$C8,$24,$A6,$30,$05,$CA,$10,$F1,$30,$05,$E8,$E0,$10
       .byte $D0,$EA,$A2,$0F,$BD,$C0,$F6,$0A,$0A,$0A,$0A,$15,$B8,$24,$A6,$50
       .byte $09,$B4,$B8,$4A,$4A,$4A,$4A,$19,$F0,$F6,$95,$B8,$CA,$10,$E5,$A0
       .byte $0A,$84,$E0,$AD,$82,$02,$85,$E3,$29,$08,$08,$A5,$DD,$F0,$02,$A5
       .byte $DF,$28,$F0,$07,$20,$DA,$F5,$A0,$04,$D0,$06,$A0,$08,$29,$0E,$84
       .byte $E0,$85,$DE,$A2,$04,$B9,$60,$F6,$45,$DE,$25,$99,$95,$A6,$88,$CA
       .byte $D0,$F3,$86,$B3,$86,$B2,$86,$0D,$86,$0E,$86,$0F,$A2,$05,$86,$04
       .byte $86,$05,$B5,$AB,$20,$CE,$F5,$84,$02,$88,$10,$FD,$95,$0F,$95,$1F
       .byte $E0,$05,$D0,$02,$A2,$03,$CA,$D0,$E9,$85,$02,$85,$2A,$B5,$A7,$C9
       .byte $0E,$D0,$02,$A9,$0C,$95,$06,$E8,$E0,$03,$D0,$F1,$85,$09,$A5,$B1
       .byte $85,$27,$4A,$85,$D2,$85,$2B,$AE,$84,$02,$D0,$FB,$86,$02,$86,$2A
       .byte $86,$01,$A0,$24,$A6,$AE,$CA,$30,$04,$8A,$0A,$0A,$A8,$84,$A6,$A0
       .byte $04,$A2,$02,$86,$0A,$85,$02,$85,$2A,$B1,$9C,$29,$F0,$85,$0E,$B1
       .byte $A4,$0A,$0A,$0A,$0A,$85,$0F,$B1,$A2,$29,$F0,$85,$0E,$B1,$9E,$0A
       .byte $0A,$0A,$0A,$85,$0F,$85,$02,$85,$2A,$B1,$9A,$4A,$4A,$4A,$4A,$85
       .byte $0E,$A9,$00,$85,$0F,$A2,$03,$CA,$D0,$FD,$85,$0E,$B1,$A0,$29,$0F
       .byte $85,$0F,$88,$10,$C0,$A5,$B4,$85,$0B,$85,$02,$85,$2A,$84,$0D,$84
       .byte $0E,$84,$0F,$A9,$11,$85,$0A,$A6,$AF,$B5,$A7,$85,$06,$A5,$AA,$85
       .byte $09,$A6,$A6,$9A,$E0,$24,$D0,$05,$24,$E4,$10,$01,$E8,$BD,$16,$F6
       .byte $85,$81,$A2,$00,$C8,$85,$2C,$85,$02,$85,$2A,$86,$1F,$84,$1B,$A6
       .byte $B3,$B5,$8D,$85,$0F,$B5,$83,$85,$0E,$30,$20,$A6,$B2,$E0,$59,$F0
       .byte $74,$D0,$18,$8A,$BA,$85,$02,$85,$2A,$85,$1F,$84,$1B,$BC,$3C,$F6
       .byte $C8,$C4,$B2,$D0,$E6,$68,$BD,$17,$F6,$85,$81,$BA,$38,$BD,$3C,$F6
       .byte $E5,$B2,$A8,$29,$F8,$F0,$09,$BD,$C0,$F6,$85,$21,$A2,$00,$F0,$0D
       .byte $B1,$81,$AA,$98,$A4,$E0,$C9,$04,$90,$01,$C8,$B1,$81,$85,$02,$85
       .byte $2A,$45,$DE,$25,$99,$85,$07,$86,$1C,$38,$A5,$B7,$E5,$B2,$AA,$29
       .byte $F0,$F0,$04,$A0,$00,$F0,$02,$B4,$B8,$A2,$00,$38,$A5,$D2,$E5,$B2
       .byte $29,$FE,$D0,$02,$A2,$02,$86,$2B,$E6,$B2,$A9,$07,$25,$B2,$D0,$93
       .byte $E6,$B3,$4C,$6E,$F2,$85,$02,$E8,$86,$01,$A2,$FF,$9A,$A9,$24,$8D
       .byte $96,$02,$A5,$E3,$4A,$90,$09,$24,$E2,$10,$09,$A2,$A6,$4C,$60,$F5
       .byte $A9,$80,$85,$E2,$A0,$00,$84,$1B,$24,$33,$50,$18,$A6,$A6,$E8,$BD
       .byte $3B,$F6,$18,$69,$02,$E5,$D2,$C9,$0A,$B0,$F3,$BD,$15,$F6,$C8,$D9
       .byte $78,$F7,$D0,$FA,$84,$A6,$A5,$D4,$D9,$F7,$F7,$B0,$49,$88,$88,$30
       .byte $3B,$88,$F0,$2D,$A6,$DA,$D0,$3E,$88,$D0,$0C,$20,$ED,$F5,$20,$A8
       .byte $F5,$A2,$03,$00,$EA,$D0,$0E,$A2,$02,$B5,$CF,$49,$FF,$A8,$C8,$94
       .byte $CF,$CA,$D0,$F5,$E8,$A5,$D9,$85,$B1,$A5,$D8,$85,$B0,$00,$EA,$D0
       .byte $15,$C9,$02,$90,$11,$20,$ED,$F5,$A2,$02,$D0,$F1,$20,$ED,$F5,$A2
       .byte $00,$00,$EA,$4C,$4D,$F5,$A4,$A6,$D0,$08,$A5,$B1,$85,$D9,$A5,$B0
       .byte $85,$D8,$84,$DA,$A5,$E3,$A6,$AF,$D0,$01,$0A,$85,$E4,$24,$36,$30
       .byte $0A,$A5,$B0,$85,$D6,$A5,$B1,$85,$D7,$D0,$13,$24,$AE,$30,$04,$24
       .byte $E4,$30,$0B,$A5,$D6,$85,$B0,$A5,$D7,$85,$B1,$20,$E5,$F5,$A2,$01
       .byte $18,$B5,$CE,$75,$D0,$95,$CE,$70,$0D,$10,$20,$B5,$B0,$DD,$AF,$F6
       .byte $F0,$0B,$D6,$B0,$D0,$0E,$B5,$B0,$DD,$B1,$F6,$D0,$05,$20,$E5,$F5
       .byte $D0,$02,$F6,$B0,$B5,$CE,$38,$E9,$80,$95,$CE,$CA,$10,$D2,$A5,$D4
       .byte $F0,$43,$24,$36,$10,$04,$C6,$D4,$F0,$04,$C6,$D4,$D0,$37,$20,$ED
       .byte $F5,$A4,$A6,$C0,$02,$D0,$2E,$A5,$AE,$A8,$09,$80,$85,$AE,$A5,$B0
       .byte $38,$F9,$A2,$F7,$4A,$AA,$BD,$B5,$F7,$85,$B0,$A5,$B1,$38,$F9,$AB
       .byte $F7,$4A,$4A,$AA,$BD,$BE,$F7,$85,$B1,$AD,$90,$F7,$85,$AD,$A9,$00
       .byte $85,$CB,$4C,$CA,$F4,$24,$CB,$50,$46,$24,$32,$50,$42,$A5,$CD,$F0
       .byte $3E,$A0,$05,$20,$FB,$F5,$10,$02,$65,$E5,$24,$36,$30,$06,$A4,$A6
       .byte $C0,$03,$D0,$01,$4A,$85,$D4,$A5,$D3,$C9,$0D,$90,$02,$E9,$0D,$A8
       .byte $BE,$B3,$F6,$86,$D0,$B9,$E4,$F6,$A6,$D3,$E0,$0D,$90,$04,$49,$FF
       .byte $69,$00,$85,$D1,$A9,$00,$85,$CD,$A2,$06,$00,$EA,$20,$A8,$F5,$A0
       .byte $00,$A5,$B7,$38,$E9,$FC,$E5,$D2,$90,$12,$C9,$15,$B0,$0E,$A5,$B6
       .byte $69,$14,$E5,$B0,$90,$06,$C9,$16,$B0,$02,$A0,$06,$84,$D5,$A2,$00
       .byte $A5,$E3,$29,$02,$D0,$09,$A6,$E1,$F0,$02,$E0,$1E,$F0,$6F,$E8,$86
       .byte $E1,$E6,$AB,$D0,$04,$E6,$DF,$F0,$6E,$C6,$DC,$D0,$42,$A9,$00,$85
       .byte $19,$F0,$3C,$A9,$0A,$A6,$AE,$30,$0A,$24,$DD,$30,$05,$BD,$99,$F7
       .byte $85,$CA,$8A,$A0,$06,$20,$FB,$F5,$69,$62,$85,$A8,$A9,$F6,$85,$A9
       .byte $A0,$06,$B1,$A8,$4A,$4A,$4A,$4A,$48,$29,$03,$AA,$BD,$D5,$F7,$99
       .byte $8F,$00,$68,$4A,$4A,$AA,$BD,$00,$F7,$99,$85,$00,$88,$10,$E3,$AD
       .byte $84,$02,$D0,$FB,$A0,$2A,$85,$02,$84,$00,$8C,$95,$02,$AE,$84,$02
       .byte $D0,$FB,$86,$02,$86,$00,$C8,$8C,$96,$02,$4C,$00,$F0,$A5,$80,$49
       .byte $80,$85,$80,$A2,$01,$86,$E1,$A9,$AA,$85,$C9,$A2,$A1,$24,$80,$10
       .byte $01,$E8,$86,$C8,$A9,$F7,$85,$99,$A9,$FF,$85,$DD,$A9,$01,$85,$AE
       .byte $A9,$AA,$85,$CA,$D0,$35,$24,$80,$10,$2F,$A5,$AF,$D0,$29,$E6,$AF
       .byte $D0,$29,$78,$D8,$A2,$FF,$9A,$8A,$E8,$A0,$00,$94,$00,$E8,$D0,$FB
       .byte $84,$19,$CA,$A0,$18,$96,$81,$88,$D0,$FB,$A8,$30,$BA,$24,$80,$30
       .byte $08,$A9,$AA,$85,$C9,$30,$02,$C6,$AF,$E6,$AE,$A5,$AE,$29,$7F,$C9
       .byte $0A,$F0,$B1,$85,$AE,$AA,$BD,$7D,$F7,$85,$B6,$C9,$30,$B0,$02,$69
       .byte $12,$85,$B0,$BD,$90,$F7,$85,$B1,$4A,$85,$B7,$BD,$86,$F7,$4C,$33
       .byte $F4,$F8,$A6,$AF,$B5,$C8,$18,$69,$01,$95,$C8,$D8,$60,$24,$DD,$30
       .byte $04,$A9,$08,$85,$19,$BD,$C6,$F7,$85,$17,$BD,$A8,$F6,$85,$15,$BD
       .byte $D0,$F6,$29,$0F,$85,$DC,$40,$38,$A0,$02,$C8,$E9,$0F,$B0,$FB,$49
       .byte $FF,$E9,$06,$0A,$69,$00,$0A,$69,$00,$0A,$69,$00,$0A,$60,$8A,$48
       .byte $A2,$04,$00,$EA,$68,$AA,$A0,$00,$84,$D0,$84,$D1,$84,$CE,$84,$CF
       .byte $C8,$84,$D4,$60,$18,$85,$DB,$65,$DB,$88,$D0,$FB,$A8,$60,$29,$0F
       .byte $85,$A6,$0A,$0A,$65,$A6,$69,$04,$95,$99,$A9,$F7,$95,$9A,$60,$49
       .byte $49,$6D,$61,$61,$6D,$49,$49,$49,$55,$61,$6D,$49,$61,$55,$49,$6D
       .byte $6D,$61,$6D,$61,$49,$49,$49,$61,$6D,$55,$00,$49,$49,$61,$6D,$61
       .byte $49,$6D,$49,$3E,$36,$1C,$2C,$3A,$44,$1C,$2C,$3A,$45,$19,$29,$3B
       .byte $44,$1C,$29,$36,$42,$1E,$2A,$36,$44,$1A,$29,$33,$42,$1C,$29,$36
       .byte $FF,$1A,$2D,$39,$44,$1C,$29,$35,$3F,$31,$FC,$38,$92,$D6,$00,$0E
       .byte $04,$06,$18,$08,$08,$08,$18,$98,$98,$38,$38,$18,$18,$08,$88,$C8
       .byte $C4,$84,$14,$14,$18,$18,$38,$84,$84,$04,$02,$02,$02,$18,$C8,$84
       .byte $04,$02,$02,$81,$C1,$10,$1C,$0C,$02,$02,$81,$81,$30,$30,$10,$8C
       .byte $8C,$C3,$F3,$C0,$C0,$00,$00,$10,$1F,$1F,$30,$30,$10,$00,$00,$10
       .byte $30,$EC,$CC,$8A,$8C,$83,$CC,$E8,$12,$10,$90,$A0,$2B,$2A,$25,$1F
       .byte $16,$0C,$00,$F4,$EA,$E1,$DB,$D6,$D5,$00,$BE,$7C,$BC,$0C,$2C,$4E
       .byte $AE,$0F,$7F,$8C,$DE,$0F,$7C,$80,$70,$0F,$E3,$58,$D4,$0F,$71,$84
       .byte $B2,$01,$C0,$90,$01,$02,$AA,$3B,$EC,$0C,$CB,$6A,$80,$00,$E9,$D3
       .byte $C8,$C3,$B3,$B0,$B3,$C3,$C8,$D3,$E9,$00,$40,$20,$60,$10,$50,$30
       .byte $70,$08,$48,$28,$68,$18,$58,$38,$78,$C0,$CF,$F0,$FF,$E7,$A5,$A5
       .byte $A5,$E7,$42,$42,$42,$42,$42,$E7,$81,$E7,$24,$E7,$E7,$24,$66,$24
       .byte $E7,$24,$24,$E7,$A5,$81,$E7,$24,$E7,$81,$E7,$E7,$A5,$E7,$81,$E7
       .byte $24,$24,$24,$24,$E7,$E7,$A5,$E7,$A5,$E7,$E7,$24,$E7,$A5,$E7,$00
       .byte $00,$00,$00,$00,$08,$08,$00,$00,$00,$00,$00,$18,$18,$18,$18,$02
       .byte $02,$00,$00,$08,$08,$08,$7F,$3E,$1C,$08,$02,$04,$44,$D3,$3C,$3C
       .byte $7E,$7E,$7E,$7E,$3C,$3C,$02,$02,$96,$96,$18,$3C,$7E,$76,$7E,$7E
       .byte $3C,$18,$02,$02,$D3,$D3,$0E,$1F,$1F,$1F,$7E,$F8,$F0,$60,$08,$08
       .byte $06,$06,$3E,$61,$6D,$55,$49,$76,$18,$14,$74,$74,$15,$80,$1A,$80
       .byte $20,$74,$58,$40,$30,$6C,$1C,$34,$1C,$48,$2A,$2A,$80,$80,$38,$2A
       .byte $2A,$80,$80,$13,$25,$34,$44,$54,$65,$74,$83,$94,$2A,$76,$72,$1F
       .byte $26,$6E,$1E,$6C,$1E,$77,$27,$65,$41,$5B,$23,$27,$61,$27,$34,$34
       .byte $3D,$46,$51,$5A,$63,$6C,$6C,$34,$34,$46,$58,$64,$70,$7C,$7C,$18
       .byte $04,$18,$08,$18,$04,$0D,$B7,$B7,$B6,$B6,$0E,$58,$09,$88,$00,$F0
       .byte $0F,$FF,$01,$FF,$01,$00,$09,$12,$1B,$24,$2D,$36,$AD,$A4,$9B,$92
       .byte $89,$80,$C0,$C9,$D2,$DB,$E4,$ED,$F6,$6D,$64,$5B,$52,$49,$40,$00
       .byte $00,$1E,$00,$19,$46,$59,$F5,$B4,$F5
