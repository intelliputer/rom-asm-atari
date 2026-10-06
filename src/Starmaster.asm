; Disassembly of roms/Starmaster.bin
; Disassembled Tue Oct  6 15:24:46 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Starmaster.bin
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
REFP1   =  $0C
PF2     =  $0F
RESP0   =  $10
RESP1   =  $11
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
HMP1    =  $21
HMM0    =  $22
HMM1    =  $23
HMBL    =  $24
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296

       ORG $F000

START:
       SEI            
       CLD            
       LDX    #$FF    
       TXS            
       INX            
       JSR    LFA83   
       LDA    #$40    
       STA    $8A     
       STA    $86     
       LDA    #$12    
       STA    $B6     
LF013: LDX    #$01    
       LDY    #$01    
       LDA    $83     
       AND    #$04    
       BEQ    LF027   
       TAX            
LF01E: LDA    $A5,X   
       BNE    LF027   
       DEX            
       CPX    #$01    
       BNE    LF01E   
LF027: LDA    LFCA1,X 
       EOR    $81     
       AND    $82     
       STA.wy $0008,Y 
       DEX            
       DEY            
       BPL    LF027   
       LDA    $8A     
       BNE    LF047   
       JSR    LFB75   
       TAX            
       CMP    #$09    
       BNE    LF047   
       LDA    $B2     
       CMP    #$50    
       BCC    LF048   
LF047: DEY            
LF048: STY    $EE     
       LDA    #$2C    
       LDY    $8A     
       BNE    LF05C   
       LDA    #$8C    
       CPX    #$09    
       BEQ    LF05C   
       CPX    #$05    
       BEQ    LF05C   
       LDA    $83     
LF05C: EOR    $81     
       AND    $82     
       STA    COLUP0  
       STA    COLUP1  
       LDA    $86     
       BNE    LF06C   
       LDA    $8A     
       BNE    LF08E   
LF06C: LDA    SWCHB   
       LSR            
       AND    #$64    
       STA    $88     
       EOR    $F9     
       AND    #$64    
       BEQ    LF08E   
       LDA    $F9     
       EOR    #$80    
       AND    #$80    
       ORA    $88     
       STA    $F9     
       LDA    $C4     
       TAY            
       JSR    LFA4F   
       LDA    $C3     
       STA    $C4     
LF08E: LDA    $F9     
       BPL    LF095   
       JMP    LF204   
LF095: LDX    #$8F    
       STX    REFP1   
       TXS            
       LDX    #$00    
       LDA    $B2     
       LSR            
       LSR            
       LSR            
       LSR            
       LSR            
       ORA    #$F8    
       SEC            
       ADC    $AE     
       CMP    #$8E    
       BCS    LF0B6   
       CMP    $AF     
       BCS    LF0B7   
       LDA    $AF     
       CMP    #$8E    
       BCS    LF0B7   
LF0B6: INX            
LF0B7: LDA    $EB,X   
       STA    $ED     
       LDY    $E9,X   
       STY    $89     
       LDY    #$70    
       SEC            
       LDA    $AE,X   
       SBC    #$91    
       BCS    LF0C9   
       TAY            
LF0C9: TXA            
       EOR    #$01    
       TAX            
       LDA    $AE,X   
       STA    $A4     
       LDA    $EB,X   
       STA    $EB     
       LDA    $E9,X   
       STA    $E9     
       LDA    $B0     
       CMP    #$09    
       BCC    LF0E3   
       CMP    #$A2    
       BCC    LF0E5   
LF0E3: LDY    #$70    
LF0E5: LDX    #$07    
       STX    $B1     
LF0E9: LDA    INTIM   
       BPL    LF0E9   
       LDA    #$00    
       STA    WSYNC   
       STA    HMOVE   
       STA    VBLANK  
       BEQ    LF150   
LF0F8: BCS    LF100   
       LDA    ($ED),Y 
       STA    GRP0    
       STA    GRP1    
LF100: LDA    #$02    
       STA    ENABL   
       TSX            
       DEX            
       LDA    #$00    
       CPX    $AD     
       BCC    LF112   
       CPX    $AC     
       BCS    LF116   
       LDA    #$02    
LF112: STA    ENAM0   
       STA    ENAM1   
LF116: STA    WSYNC   
       STA    HMOVE   
       DEX            
       INY            
       CPY    #$3C    
       BCS    LF126   
       LDA    ($ED),Y 
       STA    GRP0    
       STA    GRP1    
LF126: DEX            
       LDA    #$00    
       INY            
       CPY    #$3C    
       BCS    LF130   
       LDA    ($ED),Y 
LF130: STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       STA    GRP1    
       LDA    #$00    
       STA    ENABL   
       CPX    $AD     
       BCC    LF146   
       CPX    $AC     
       BCS    LF14A   
       LDA    #$02    
LF146: STA    ENAM0   
       STA    ENAM1   
LF14A: DEX            
       TXS            
       DEC    $B1     
       LDX    $B1     
LF150: LDA    $E0,X   
       STA    HMBL    
       AND    #$0F    
       STA    $88     
       INY            
       LDA    ($ED),Y 
       CPY    #$3C    
       STA    WSYNC   
       STA    HMOVE   
       BCS    LF169   
       STA    GRP0    
       STA    GRP1    
       BCC    LF16D   
LF169: NOP            
       NOP            
       NOP            
       NOP            
LF16D: NOP            
       LDA    VSYNC   
       LDX    $88     
LF172: DEX            
       BPL    LF172   
       STA    RESBL   
LF177: TSX            
       DEX            
       INY            
       CPY    #$3C    
       STA    WSYNC   
       STA    HMOVE   
       BCS    LF188   
       LDA    ($ED),Y 
       STA    GRP0    
       STA    GRP1    
LF188: TXA            
       AND    #$01    
       BEQ    LF19D   
       CPX    $AD     
       BCC    LF196   
       CPX    $AC     
       BCS    LF196   
       ASL            
LF196: STA    ENAM0   
       STA    ENAM1   
       JMP    LF1A5   
LF19D: CPY    #$3C    
       BCS    LF1A5   
       CPY    $89     
       BCS    LF1BD   
LF1A5: TXS            
       TXA            
       LDX    $B1     
       STX    HMBL    
       CMP    $CA,X   
       BCS    LF177   
       CMP    #$06    
       BCC    LF1EC   
       INY            
       CPY    #$3C    
       STA    WSYNC   
       STA    HMOVE   
       JMP    LF0F8   
LF1BD: LDY    $E9     
       STY    $89     
       LDY    #$70    
       SEC            
       LDA    $A4     
       STX    $88     
       SBC    $88     
       BPL    LF1CD   
       TAY            
LF1CD: LDA    $EB     
       STA    $ED     
       TXS            
       TXA            
       LDX    $B1     
       STX    HMBL    
       STA    WSYNC   
       STA    HMOVE   
       CMP    $CA,X   
       BCS    LF1E6   
       CMP    #$06    
       BCC    LF1EA   
       JMP    LF100   
LF1E6: TSX            
       DEX            
       BNE    LF188   
LF1EA: SBC    #$00    
LF1EC: TAX            
LF1ED: STA    WSYNC   
       STA    HMOVE   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       DEX            
       BPL    LF1ED   
       TXS            
       JSR    LFB0D   
       LDX    #$01    
       STX    REFP1   
       BNE    LF27D   
LF204: LDA    INTIM   
       BPL    LF204   
       LDX    #$04    
LF20B: STA    WSYNC   
       DEX            
       BNE    LF20B   
       STX    VBLANK  
       LDA    #$2E    
       JSR    LFADC   
       INX            
       LDA    #$5E    
       JSR    LFADC   
       LDY    #$03    
       STY    NUSIZ0  
       STY    NUSIZ1  
       STA    WSYNC   
       STA    HMOVE   
       LDX    #$0A    
       LDA    #$FF    
LF22B: STA    $EE,X   
       DEX            
       DEX            
       BPL    LF22B   
       LDA    #$2C    
       EOR    $81     
       AND    $82     
       STA    COLUP0  
       STA    COLUP1  
       STA    HMCLR   
       STA    WSYNC   
       LDX    #$23    
       STX    $E8     
LF243: LDY    #$0A    
LF245: LDA    $E8     
       JSR    LFB77   
       TAX            
       LDA    $BA     
       AND    #$0F    
       CMP    #$0D    
       BNE    LF257   
       LDA    LFF26,X 
       TAX            
LF257: LDA    LFCCC,X 
       STA.wy $00ED,Y 
       DEC    $E8     
       DEY            
       DEY            
       BPL    LF245   
       JSR    LF9BB   
       LDA    $E8     
       BPL    LF243   
       LDX    #$18    
LF26C: STA    WSYNC   
       LDA    VSYNC   
       NOP            
       NOP            
       NOP            
       NOP            
       DEX            
       BPL    LF26C   
       NOP            
       JSR    LFB0D   
       LDX    #$04    
LF27D: STX    $E8     
       LDA    #$2C    
       EOR    $81     
       AND    $82     
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$B1    
       STA    $EF     
LF28D: LDA    $FB     
       CPX    #$04    
       BEQ    LF296   
       LDA    LFCA6,X 
LF296: STA    $ED     
       TXA            
       ASL            
       TAX            
       INX            
       TXS            
       LDY    #$04    
LF29F: LDA    $B9,X   
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       LDA    LFEF0,X 
       STA.wy $00F1,Y 
       TSX            
       LDA    $B9,X   
       AND    #$0F    
       TAX            
       LDA    LFEF0,X 
       STA.wy $00F3,Y 
       TSX            
       DEX            
       TXS            
       DEY            
       DEY            
       DEY            
       DEY            
       BPL    LF29F   
       LDX    #$FF    
       TXS            
       JSR    LFA03   
       DEC    $E8     
       LDX    $E8     
       BPL    LF28D   
       STA    WSYNC   
       LDA    #$00    
       STA    PF2     
       LDX    #$0B    
LF2D5: LDA    LFCD6,X 
       STA    $ED,X   
       DEX            
       BPL    LF2D5   
       JSR    LF9E6   
       LDA    $86     
       BEQ    LF2EA   
       DEC    $86     
       BNE    LF2EA   
       DEC    $86     
LF2EA: LDY    #$19    
       STY    TIM64T  
       LDA    SWCHB   
       LSR            
       BCS    LF2FD   
       LDX    #$85    
LF2F7: JSR    LFA83   
       JMP    LF4EC   
LF2FD: LSR            
       BCS    LF319   
       LDA    $B8     
       BEQ    LF308   
       DEC    $B8     
       BPL    LF31B   
LF308: LDA    $80     
       CLC            
       ADC    #$01    
       AND    #$03    
       STA    $80     
       LDX    #$87    
       STX    $85     
       INC    $86     
       BNE    LF2F7   
LF319: STX    $B8     
LF31B: JSR    LFAC7   
       LDA    $86     
       BEQ    LF325   
       JMP    LF469   
LF325: LDA    $83     
       BNE    LF338   
       SED            
       CLC            
       LDA    $BE     
       ADC    #$01    
       STA    $BE     
       LDA    $BD     
       ADC    #$00    
       STA    $BD     
       CLD            
LF338: DEC    $DD     
       BEQ    LF33F   
       JMP    LF419   
LF33F: LDA    #$60    
       STA    $DD     
       LDX    $AB     
       LDA    LFC67,X 
       JSR    LFB77   
       CMP    #$04    
       BEQ    LF35C   
       CMP    #$09    
       BEQ    LF35C   
       LDX    $AB     
       CPX    #$03    
       BEQ    LF35A   
       INX            
LF35A: STX    $AB     
LF35C: DEC    $DE     
       BPL    LF364   
       LDA    #$23    
       STA    $DE     
LF364: LDX    $AB     
       LDA    LFC39,X 
       LDX    #$05    
LF36B: LDY    LFC95,X 
       CPY    $DE     
       BNE    LF374   
       AND    #$0B    
LF374: LDY    LFC9B,X 
       CPY    $DE     
       BNE    LF37D   
       AND    #$07    
LF37D: DEX            
       BPL    LF36B   
       STA    $E1     
       TAX            
       LDA    #$0F    
       STA    $E4     
       LDA    $DE     
       CLC            
       ADC    LFD09,X 
       BPL    LF395   
       LDA    #$0D    
       STA    $E4     
       BNE    LF39B   
LF395: CMP    #$24    
       BCC    LF39B   
       DEC    $E4     
LF39B: LDA    $E1     
       AND    $E4     
       STA    $E1     
       LDA    $DE     
       JSR    LFB77   
       CMP    #$04    
       BCS    LF3C9   
       STA    $E2     
       LDA    $DE     
       CLC            
       LDX    $E1     
       ADC    LFD09,X 
       STA    $E3     
       JSR    LFB77   
       BNE    LF3C9   
       LDA    $DE     
       LDY    #$00    
       JSR    LFB87   
       LDA    $E3     
       LDY    $E2     
       JSR    LFB87   
LF3C9: LDX    $DB     
       LDA    LFC67,X 
       JSR    LFB77   
       STA    $E4     
       CMP    #$04    
       BEQ    LF3DB   
       CMP    #$09    
       BNE    LF411   
LF3DB: LDA    $DB     
       ASL            
       ASL            
       ASL            
       CLC            
       ADC    $DC     
       TAX            
       LDA    LFC6B,X 
       JSR    LFB77   
       TAY            
       LDX    $DB     
       LDA    $C5,X   
       SEC            
       SBC    LFC40,Y 
       STA    $C5,X   
       BCS    LF409   
       DEC    $C9     
       LDA    $E4     
       SEC            
       SBC    #$04    
       TAY            
       LDA    LFC67,X 
       JSR    LFB87   
       LDA    #$B0    
       STA    $A9     
LF409: DEC    $DC     
       BPL    LF419   
       LDA    #$07    
       STA    $DC     
LF411: DEC    $DB     
       BPL    LF419   
       LDA    #$03    
       STA    $DB     
LF419: LDA    $83     
       AND    #$03    
       BNE    LF425   
       LDA    $8A     
       BEQ    LF425   
       DEC    $8A     
LF425: LDA    $AA     
       BEQ    LF42D   
       DEC    $AA     
       BNE    LF457   
LF42D: LDA    #$4E    
       STA    $AC     
       LDA    #$45    
       STA    $AD     
       LDA    $B9     
       ORA    $A0     
       CMP    #$B0    
       BCS    LF469   
       LDA    $8A     
       CMP    #$C0    
       BCS    LF469   
       LDA    REFP1   
       ORA    $F9     
       BMI    LF469   
       LDA    #$20    
       STA    $AC     
       LDA    #$06    
       STA    $AD     
       STX    CXCLR   
       LDX    #$17    
       STX    $AA     
LF457: LDA    $AD     
       CLC            
       ADC    #$03    
       STA    $AD     
       LDA    $AC     
       CLC            
       ADC    #$02    
       CMP    #$4C    
       BCS    LF469   
       STA    $AC     
LF469: LDA    $AA     
       LSR            
       LSR            
       LSR            
       TAX            
       LDA    LFF00,X 
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    SWCHA   
       LSR            
       LSR            
       LSR            
       LSR            
       EOR    #$0F    
       TAY            
       BEQ    LF484   
       STA    $87     
LF484: LDA    $86     
       ORA    $A0     
       BEQ    LF48C   
       LDY    #$00    
LF48C: STY    $88     
       LDA    $A0     
       BNE    LF4D5   
       DEC    $B5     
       BPL    LF4D5   
       LDA    $8A     
       BMI    LF49F   
       EOR    #$FF    
       SEC            
       SBC    #$68    
LF49F: LSR            
       LSR            
       LSR            
       SEC            
       SBC    #$10    
       STA    $B5     
       LDX    #$07    
LF4A9: LDA    $CA,X   
       LSR            
       LSR            
       LSR            
       LDY    $88     
       CLC            
       ADC    LFC8B,Y 
       TAY            
       LDA    LFD80,Y 
       CLC            
       ADC    $CA,X   
       STA    $CA,X   
       LDA    $D2,X   
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    LFCB6,Y 
       LDY    $88     
       CLC            
       ADC    LFEE5,Y 
       CLC            
       ADC    $D2,X   
       STA    $D2,X   
       DEX            
       BPL    LF4A9   
LF4D5: LDX    #$01    
       LDY    $88     
LF4D9: LDA    $AE,X   
       CLC            
       ADC    LFD25,Y 
       STA    $AE,X   
       DEX            
       BPL    LF4D9   
       LDA    $B0     
       CLC            
       ADC    LFF10,Y 
       STA    $B0     
LF4EC: LDY    INTIM   
       BPL    LF4EC   
       INC    $83     
       BNE    LF4FC   
       INC    $87     
       BNE    LF4FC   
       SEC            
       ROR    $87     
LF4FC: LDX    #$03    
       STX    WSYNC   
       STX    VSYNC   
       STX    VBLANK  
       LDY    #$FF    
       LDA    #$00    
       BIT    $87     
       BPL    LF511   
       LDY    #$F7    
       LDA    $87     
       ASL            
LF511: STY    $82     
       STA    $81     
       STA    WSYNC   
       LDY    #$40    
       STY    VSYNC   
       STY    TIM64T  
       LDA    $AA     
       CMP    #$16    
       BNE    LF529   
       LDA    #$01    
       JSR    LFBCB   
LF529: LDX    #$07    
LF52B: LDA    $D2,X   
       CMP    #$14    
       BCC    LF545   
       CMP    #$88    
       BCS    LF545   
       LDA    $CA,X   
       CMP    #$8A    
       BCS    LF545   
       CMP    #$07    
       BCC    LF545   
LF53F: DEX            
       BPL    LF52B   
       JMP    LF5D4   
LF545: STX    $88     
       LDX    #$07    
LF549: LDA    $CA,X   
       CMP    #$48    
       BCC    LF552   
       DEX            
       BPL    LF549   
LF552: INX            
       STX    $89     
       LDX    $88     
       CPX    $89     
       BCC    LF5A8   
LF55B: DEX            
       BMI    LF56C   
       CPX    $89     
       BCC    LF56C   
       LDA    $CA,X   
       STA    $CB,X   
       LDA    $D2,X   
       STA    $D3,X   
       BCS    LF55B   
LF56C: LDX    $89     
       LDA    #$53    
       STA    $CA,X   
       CPX    #$04    
       BCS    LF57E   
       LDA    #$3F    
       STA    $CA,X   
       DEX            
       JMP    LF5BA   
LF57E: CLC            
       ADC    #$06    
       CMP    $CB,X   
       BCC    LF597   
       LDA    $D3,X   
       STA    $D2,X   
       LDA    $CB,X   
       STA    $CA,X   
       CLC            
       ADC    #$06    
       STA    $CB,X   
       INX            
       CPX    #$07    
       BCC    LF57E   
LF597: JSR    LFAC7   
       LDA    $84     
       AND    #$3F    
       CLC            
       ADC    #$30    
       STA    $D2,X   
       LDX    $88     
       JMP    LF53F   
LF5A8: DEX            
       DEC    $89     
LF5AB: INX            
       CPX    $89     
       BCS    LF56C   
       LDA    $CB,X   
       STA    $CA,X   
       LDA    $D3,X   
       STA    $D2,X   
       BCC    LF5AB   
LF5BA: SEC            
       SBC    #$06    
       CMP    $CA,X   
       BCS    LF5D1   
       LDA    $D2,X   
       STA    $D3,X   
       LDA    $CA,X   
       STA    $CB,X   
       SEC            
       SBC    #$06    
       STA    $CA,X   
       DEX            
       BPL    LF5BA   
LF5D1: INX            
       BNE    LF597   
LF5D4: LDY    #$FF    
       STY    $89     
       LDX    #$07    
LF5DA: LDA    $D2,X   
       CMP    #$88    
       BCC    LF5E2   
       LDA    #$87    
LF5E2: JSR    LFAD6   
       STA    $E0,X   
       TYA            
       ORA    $E0,X   
       STA    $E0,X   
       DEX            
       BPL    LF5DA   
       LDA    $F9     
       BMI    LF5F6   
LF5F3: JMP    LF6BF   
LF5F6: LDA    $86     
       BNE    LF5F3   
       LDA    SWCHA   
       LSR            
       LSR            
       LSR            
       LSR            
       EOR    #$0F    
       LDX    #$05    
LF605: LDY    LFC95,X 
       CPY    $C4     
       BNE    LF60E   
       AND    #$0B    
LF60E: LDY    LFC9B,X 
       CPY    $C4     
       BNE    LF617   
       AND    #$07    
LF617: DEX            
       BPL    LF605   
       TAX            
       BNE    LF621   
       STA    $9E     
       BEQ    LF652   
LF621: LDA    $9E     
       BEQ    LF629   
       DEC    $9E     
       BPL    LF652   
LF629: LDA    #$10    
       STA    $9E     
       LDA    $C4     
       TAY            
       CLC            
       ADC    LFD09,X 
       BMI    LF652   
       CMP    #$24    
       BCS    LF652   
       STA    $C4     
       TYA            
       JSR    LFA4F   
       LDA    $C4     
       CMP    $C3     
       BEQ    LF652   
       JSR    LFB77   
       CLC            
       ADC    #$05    
       TAY            
       LDA    $C4     
       JSR    LFB87   
LF652: LDY    #$01    
LF654: STX    $88     
       STA    $89     
       LDA.wy $00C3,Y 
       LDX    #$00    
LF65D: CMP    #$06    
       BCC    LF667   
       INX            
       SEC            
       SBC    #$06    
       BPL    LF65D   
LF667: DEY            
       BPL    LF654   
       SEC            
       SBC    $89     
       BPL    LF674   
       EOR    #$FF    
       CLC            
       ADC    #$01    
LF674: STA    $89     
       TXA            
       SEC            
       SBC    $88     
       BPL    LF681   
       EOR    #$FF    
       CLC            
       ADC    #$01    
LF681: SED            
       CLC            
       ADC    $89     
       STA    $BF     
       LDY    $BA     
       CPY    #$B0    
       BCC    LF690   
       CLC            
       ADC    $BF     
LF690: CLD            
       STA    $BF     
       LDY    REFP1   
       BMI    LF6BF   
       LDY    $C4     
       CPY    $C3     
       BEQ    LF6BF   
       JSR    LFB75   
       SEC            
       SBC    #$05    
       TAY            
       JSR    LFB85   
       LDA    $C4     
       STA    $C3     
       LDA    $F9     
       EOR    #$80    
       STA    $F9     
       LDA    #$FE    
       STA    $B2     
       LDA    #$C8    
       STA    $8A     
       LDA    #$00    
       STA    $9D     
       STA    $A0     
LF6BF: LDA    $A8     
       CMP    #$01    
       BNE    LF6DC   
       LDA    $84     
       AND    #$7F    
       STA    $AE     
       JSR    LFAC7   
       LDA    $9D     
       BNE    LF6D8   
       LDA    $84     
       AND    #$7F    
       STA    $B0     
LF6D8: LDA    #$FC    
       STA    $B2     
LF6DC: LDA    $83     
       AND    #$01    
       ORA    $86     
       BNE    LF6F0   
       LDX    #$05    
LF6E6: LDA    $A1,X   
       CLC            
       ADC    $AE,X   
       STA    $AE,X   
       DEX            
       BPL    LF6E6   
LF6F0: LDX    #$01    
LF6F2: LDA    $B2,X   
       CMP    #$B0    
       BCC    LF6FA   
       LDA    #$B0    
LF6FA: LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       STX    $88     
       LDX    $8A     
       BNE    LF711   
       JSR    LFB75   
       CMP    #$09    
       BNE    LF711   
       TYA            
       CLC            
       ADC    #$0C    
       TAY            
LF711: LDX    $88     
       CPX    #$01    
       BNE    LF71C   
       TYA            
       CLC            
       ADC    #$18    
       TAY            
LF71C: LDA    LFD5C,Y 
       STA    $E9,X   
       LDA    LFD38,Y 
       STA    $EB,X   
       DEX            
       BPL    LF6F2   
       LDA    $86     
       BEQ    LF730   
       JMP    LF8E1   
LF730: LDA    $83     
       AND    #$3F    
       BNE    LF73B   
       LDA    #$01    
       JSR    LFBBA   
LF73B: LDA    $9D     
       BNE    LF741   
       STA    $AF     
LF741: JSR    LFB75   
       STA    $89     
       LDA    $8A     
       BEQ    LF75D   
       LDA    $83     
       AND    #$07    
       BNE    LF755   
       LDA    $BF     
       JSR    LFBBA   
LF755: LDA    #$FF    
       STA    $B2     
       STA    $A5     
       BNE    LF76B   
LF75D: LDA    $89     
       CMP    #$09    
       BEQ    LF77C   
       CMP    #$05    
       BNE    LF76B   
       LDA    #$00    
       STA    $AE     
LF76B: LDA    $A8     
       ORA    $A7     
       ORA    $9D     
       BNE    LF7A8   
       LDA    $83     
       AND    #$7F    
       BNE    LF7A8   
       JSR    LFBA6   
LF77C: LDA    $8A     
       CMP    #$50    
       BCS    LF792   
       LDA    $89     
       CMP    #$09    
       BEQ    LF7A8   
       CMP    #$05    
       BEQ    LF7A8   
       LDA    $B2     
       CMP    #$B1    
       BCS    LF7A8   
LF792: LDA    #$00    
       STA    $A2     
       LDX    $80     
       LDA    LFCAE,X 
       STA    $A6     
       STA    $9D     
       LDA    $B2     
       STA    $B3     
       LDY    $AE     
       INY            
       STY    $AF     
LF7A8: LDY    #$02    
       LDX    $9D     
LF7AC: LDA    $AF     
       CPY    #$02    
       BNE    LF7B4   
       LDA    $B0     
LF7B4: CMP    LFCC0,Y 
       BCS    LF7BB   
       LDX    #$00    
LF7BB: CMP    LFCC1,Y 
       BCC    LF7C2   
       LDX    #$00    
LF7C2: DEY            
       DEY            
       BPL    LF7AC   
       STX    $9D     
       LDA    $9D     
       BEQ    LF812   
       LDA    $B3     
       CMP    #$06    
       BCS    LF816   
       LDY    #$7F    
       STY    $A9     
       JSR    LFBCB   
       LDA    #$00    
       STA    $9D     
       LDA    $B9     
       AND    #$0F    
       CMP    #$0B    
       BNE    LF7E8   
       JMP    LFBE5   
LF7E8: LDA    $84     
       CMP    #$40    
       BCS    LF812   
       AND    #$03    
       TAX            
       LSR            
       TAY            
       LDA    LFD97,X 
       AND    LFD9C,X 
       STA    $88     
       EOR.wy $00B9,Y 
       AND    LFD9C,X 
       BEQ    LF812   
       LDA.wy $00B9,Y 
       AND    LFD9B,X 
       ORA    $88     
       STA.wy $00B9,Y 
       LDA    #$60    
       STA    $B4     
LF812: LDA    #$FC    
       STA    $B3     
LF816: LDY    #$04    
LF818: LDA.wy $00AE,Y 
       CMP    LFCC0,Y 
       BCS    LF827   
       LDX    LFCC6,Y 
       STX    $A1,Y   
       BNE    LF831   
LF827: CMP    LFCC1,Y 
       BCC    LF831   
       LDX    LFCC7,Y 
       STX    $A1,Y   
LF831: DEY            
       DEY            
       BPL    LF818   
       LDA    VSYNC   
       ORA    VBLANK  
       AND    #$C0    
       BNE    LF840   
LF83D: JMP    LF8E1   
LF840: STA    CXCLR   
       LDA    $B0     
       CMP    #$46    
       BCC    LF83D   
       CMP    #$5E    
       BCS    LF83D   
       LDA    $AA     
       BEQ    LF875   
       LDA    $9D     
       BEQ    LF875   
       LDA    $AF     
       CMP    #$45    
       BCC    LF875   
       SEC            
       SBC    $EA     
       CMP    #$4C    
       BCS    LF875   
       LDA    #$F0    
       STA    $B3     
       LDA    #$00    
       STA    $A2     
       STA    $A4     
       STA    $A6     
       STA    $9D     
       LDA    #$5F    
       STA    $A7     
       BNE    LF83D   
LF875: LDA    $A8     
       ORA    $8A     
       BNE    LF8E1   
       LDA    $AE     
       CMP    #$45    
       BCC    LF8E1   
       SEC            
       SBC    $E9     
       CMP    #$4C    
       BCS    LF8E1   
       LDA    $89     
       CMP    #$09    
       BNE    LF8B5   
       LDA    $B2     
       ORA    $A0     
       CMP    #$0F    
       BCS    LF8E1   
       SED            
       LDA    $9F     
       CLC            
       ADC    #$01    
       STA    $9F     
       CLD            
       LDA    #$0F    
       STA    $B4     
       STA    $B2     
       LDA    #$99    
       STA    $A0     
       STA    $BB     
       STA    $BC     
       LDA    #$AA    
       STA    $B9     
       STA    $BA     
       BNE    LF8D9   
LF8B5: LDA    $AA     
       BEQ    LF8E1   
       LDA    #$F0    
       STA    $B2     
       LDA    #$7F    
       STA    $A8     
       JSR    LFB75   
       SEC            
       SBC    #$01    
       TAY            
       JSR    LFB85   
       SED            
       SEC            
       LDA    $FA     
       SBC    #$01    
       STA    $FA     
       CLD            
       BNE    LF8D9   
       JMP    LFBE5   
LF8D9: LDA    #$00    
       STA    $A1     
       STA    $A3     
       STA    $A5     
LF8E1: LDX    #$00    
       LDA    $B0     
       JSR    LFADC   
       INX            
       LDA    $B0     
       CLC            
       ADC    #$08    
       JSR    LFADC   
       INX            
       LDA    #$A3    
       JSR    LFADC   
       INX            
       LDA    #$06    
       JSR    LFADC   
       STA    WSYNC   
       STA    HMOVE   
       LDX    #$02    
LF903: LDA    $A7,X   
       BEQ    LF909   
       DEC    $A7,X   
LF909: DEX            
       BPL    LF903   
       LDA    $B4     
       BEQ    LF91A   
       DEC    $B4     
       STA    AUDF0   
       LDX    #$0C    
       STX    AUDC0   
       BNE    LF94D   
LF91A: LDX    #$08    
       STX    AUDC0   
       LDA    $AA     
       BEQ    LF92E   
       LDA    $84     
       AND    #$03    
       STA    AUDF0   
       LDA    #$0F    
       STA    AUDV0   
       BNE    LF94F   
LF92E: LDX    #$00    
       LDA    $86     
       BNE    LF948   
       LDX    #$08    
       LDA    $8A     
       BNE    LF940   
       LDA    #$FF    
       LDX    #$03    
       BNE    LF948   
LF940: CMP    #$16    
       BCS    LF948   
       EOR    #$FF    
       LDX    #$06    
LF948: LSR            
       LSR            
       LSR            
       STA    AUDF0   
LF94D: STX    AUDV0   
LF94F: LDA    $9D     
       BEQ    LF965   
       LDA    $B3     
       LSR            
       LSR            
       LSR            
       STA    AUDF1   
       LSR            
       EOR    #$8F    
       STA    AUDV1   
       LDA    #$08    
       STA    AUDC1   
       BNE    LF9AE   
LF965: LDA    $A8     
       ORA    $A7     
       ORA    $A9     
       BEQ    LF97E   
       LSR            
       LSR            
       LSR            
       STA    AUDV1   
       LDA    $84     
       ORA    #$18    
       STA    AUDF1   
       LDA    #$08    
       STA    AUDC1   
       BNE    LF9AE   
LF97E: LDA    $B6     
       BEQ    LF9AC   
       LDA    $83     
       AND    #$07    
       BNE    LF9AE   
       LDA    #$0C    
       STA    AUDC1   
       DEC    $B7     
       LDA    $B7     
       BEQ    LF9AC   
       BPL    LF9AE   
       DEC    $B6     
       LDX    $B6     
       LDA    LFC49,X 
       BNE    LF9A1   
       STA    $B6     
       BEQ    LF9AC   
LF9A1: STA    AUDF1   
       LSR            
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $B7     
       LDA    #$08    
LF9AC: STA    AUDV1   
LF9AE: STA    HMCLR   
       LDA    #$10    
       STA    HMM0    
       LDA    #$F0    
       STA    HMM1    
       JMP    LF013   
LF9BB: LDY    #$07    
LF9BD: STA    WSYNC   
       LDA    ($ED),Y 
       STA    GRP0    
       LDA    ($F3),Y 
       STA    GRP1    
       LDA    ($F7),Y 
       STA    $88     
       LDA    ($F1),Y 
       TAX            
       LDA    ($EF),Y 
       STA    GRP0    
       NOP            
       STX    GRP0    
       LDX    $88     
       LDA    ($F5),Y 
       STA    GRP1    
       NOP            
       STX    GRP1    
       DEY            
       BNE    LF9BD   
       STY    GRP0    
       STY    GRP1    
       RTS            

LF9E6: LDY    #$0F    
       LDA    #$07    
       STA    $A4     
       LDA    $86     
       LSR            
       LSR            
       LSR            
       CMP    #$14    
       BCS    LF9FE   
       LDY    #$07    
       CMP    #$0C    
       BCC    LF9FE   
       SBC    #$04    
       TAY            
LF9FE: STY    $89     
       JMP    LFA09   
LFA03: LDA    #$06    
       STA    $89     
       STA    $A4     
LFA09: STA    WSYNC   
       LDA    #$01    
       STA    VDELP0  
       STA    VDELP1  
       LDX    #$0A    
LFA13: DEX            
       BPL    LFA13   
       LDA    VSYNC   
LFA18: LDY    $89     
       LDA    ($F7),Y 
       STA    $0188   
       LDA    ($F5),Y 
       TAX            
       LDA    ($ED),Y 
       STA    GRP0    
       LDA    ($EF),Y 
       STA    GRP1    
       LDA    ($F1),Y 
       STA    GRP0    
       LDA    ($F3),Y 
       LDY    $88     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       DEC    $89     
       DEC    $A4     
       BPL    LFA18   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    GRP0    
       STA    GRP1    
       STA    VDELP0  
       STA    VDELP1  
       RTS            

LFA4F: CMP    $C3     
       BEQ    LFA82   
       CLC            
       ROR            
       TAX            
       LDA    $8B,X   
       BCC    LFA5E   
       LSR            
       LSR            
       LSR            
       LSR            
LFA5E: AND    #$0F    
       SEC            
       SBC    #$05    
       STA    $88     
       TYA            
       CLC            
       ROR            
       TAX            
       LDA    $8B,X   
       BCC    LFA7C   
       AND    #$0F    
       ASL    $88     
       ASL    $88     
       ASL    $88     
       ASL    $88     
       ORA    $88     
       JMP    LFA80   
LFA7C: AND    #$F0    
       ORA    $88     
LFA80: STA    $8B,X   
LFA82: RTS            

LFA83: LDY    #$00    
       STY    NUSIZ0  
       STY    NUSIZ1  
LFA89: STY    VSYNC,X 
       INX            
       CPX    #$B8    
       BNE    LFA89   
       LDX    #$28    
LFA92: LDA    LFCE2,X 
       STA    $B8,X   
       DEX            
       BPL    LFA92   
       LDY    $80     
       LDA    LFC3C,Y 
       STA    $FA     
       LDA    LFCAA,Y 
       STA    $FB     
       LDX    #$11    
LFAA8: LDA    LFD14,X 
       STA    $8B,X   
       DEX            
       LDA    LFD14,X 
       ORA    $80     
       STA    $8B,X   
       DEX            
       BPL    LFAA8   
       LDA    SWCHB   
       LSR            
       AND    #$64    
       LDY    $86     
       BEQ    LFAC4   
       ORA    #$80    
LFAC4: STA    $F9     
       RTS            

LFAC7: LDA    $84     
       BNE    LFACD   
       LDA    #$FF    
LFACD: ASL            
       ASL            
       ASL            
       EOR    $84     
       ASL            
       ROL    $84     
       RTS            

LFAD6: CLC            
       ADC    #$F0    
       JMP    LFAE3   
LFADC: LDY    #$00    
       CLC            
       ADC    #$25    
       STY    $89     
LFAE3: TAY            
       AND    #$0F    
       STA    $88     
       TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       CLC            
       ADC    $88     
       CMP    #$0F    
       BCC    LFAF8   
       SBC    #$0F    
       INY            
LFAF8: EOR    #$07    
       ASL            
       ASL            
       ASL            
       ASL            
       BIT    $89     
       BPL    LFB03   
       RTS            

LFB03: STA    HMP0,X  
       STA    WSYNC   
LFB07: DEY            
       BPL    LFB07   
       STA    RESP0,X 
       RTS            

LFB0D: NOP            
       LDA    #$A0    
       STA    HMP0    
       LDA    #$B0    
       STA    HMP1    
       STA    RESP0   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       JSR    LFB75   
       LDY    #$D4    
       CMP    #$05    
       BEQ    LFB2F   
       LDY    #$84    
       CMP    #$09    
       BEQ    LFB2F   
       LDY    #$44    
LFB2F: TYA            
       EOR    $81     
       AND    $82     
       TAX            
       LDY    #$80    
       STA    HMCLR   
       STA    WSYNC   
       STA    HMOVE   
       LDA    $83     
       AND    #$1F    
       CMP    #$0F    
       BCS    LFB4D   
       LDA    $BB     
       CMP    #$10    
       BCS    LFB4D   
       LDY    #$26    
LFB4D: TYA            
       EOR    $81     
       AND    $82     
       STA    WSYNC   
       STX    COLUBK  
       STA    COLUPF  
       LDX    #$01    
       STX    CTRLPF  
       DEX            
       STX    GRP0    
       STX    GRP1    
       DEX            
       STX    PF2     
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDX    #$0A    
       LDA    #$FF    
LFB6E: STA    $EE,X   
       DEX            
       DEX            
       BPL    LFB6E   
       RTS            

LFB75: LDA    $C3     
LFB77: CLC            
       ROR            
       TAX            
       LDA    $8B,X   
       BCC    LFB82   
       LSR            
       LSR            
       LSR            
       LSR            
LFB82: AND    #$0F    
       RTS            

LFB85: LDA    $C3     
LFB87: STY    $88     
       CLC            
       ROR            
       TAX            
       LDA    $8B,X   
       BCC    LFB9F   
       AND    #$0F    
       ASL    $88     
       ASL    $88     
       ASL    $88     
       ASL    $88     
       ORA    $88     
       JMP    LFBA3   
LFB9F: AND    #$F0    
       ORA    $88     
LFBA3: STA    $8B,X   
       RTS            

LFBA6: LDY    #$04    
LFBA8: JSR    LFAC7   
       LDA    $84     
       AND    #$07    
       TAX            
       LDA    LFD30,X 
       STA.wy $00A1,Y 
       DEY            
       BPL    LFBA8   
       RTS            

LFBBA: STA    $88     
       SED            
       SEC            
       LDA    $BC     
       SBC    $88     
       STA    $BC     
       LDA    $BB     
       SBC    #$00    
       JMP    LFBD4   
LFBCB: STA    $88     
       LDA    $BB     
       SEC            
       SED            
       SBC    $88     
       CLD            
LFBD4: BCS    LFBE1   
       LDA    #$00    
       STA    $BC     
       STA    $BB     
       PLA            
       PLA            
       JMP    LFBE5   
LFBE1: STA    $BB     
       CLD            
       RTS            

LFBE5: LDY    #$0C    
       SED            
       SEC            
       LDX    $80     
       LDA    LFC3C,X 
       SBC    $FA     
       CMP    LFC3C,X 
       BNE    LFBFB   
       LDY    #$12    
       CLC            
       ADC    LFCB2,X 
LFBFB: STY    $B6     
       CLC            
       ADC    $C9     
       ADC    $C9     
       ADC    $C9     
       ADC    $C9     
       ADC    $C9     
       SEC            
       SBC    #$10    
       SEC            
       SBC    $9F     
       BCS    LFC12   
       LDA    #$00    
LFC12: STA    $C1     
       LDA    #$00    
       SEC            
       SBC    $BE     
       STA    $C2     
       DEC    $86     
       LDA    $C1     
       SBC    $BD     
       BCS    LFC25   
       LDA    #$00    
LFC25: STA    $C1     
       LDA    #$00    
       STA    $9D     
       STA    $AC     
       STA    $AD     
       STA    $AE     
       STA    $AF     
       STA    $AA     
       CLD            
       JMP    LF8E1   
LFC39: .byte $0A,$05,$02
LFC3C: .byte $09,$17,$23,$31
LFC40: .byte $00,$05,$0A,$0F,$00,$00,$05,$0A,$0F
LFC49: .byte $00,$FE,$3F,$7E,$3E,$7A,$3A,$79,$FE,$3E,$7E,$FE,$00,$EC,$2B,$EE
       .byte $73,$FD,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
LFC67: .byte $0A,$19,$01,$1D
LFC6B: .byte $03,$04,$05,$09,$0B,$0F,$10,$11,$12,$19,$14,$18,$1A,$1E,$1F,$20
       .byte $01,$01,$01,$00,$02,$06,$07,$08,$16,$17,$1D,$1D,$1C,$22,$23,$1D
LFC8B: .byte $02,$04,$00,$02,$02,$04,$00,$02,$02,$04
LFC95: .byte $00,$06,$0C,$12,$18,$1E
LFC9B: .byte $05,$0B,$11,$17,$1D,$23
LFCA1: .byte $0F,$00,$84,$44,$28
LFCA6: .byte $B8,$BF,$D4,$DB
LFCAA: .byte $BF,$C6,$DB,$D4
LFCAE: .byte $FE,$FD,$FC,$FB
LFCB2: .byte $11,$23,$37,$49
LFCB6: .byte $FB,$FC,$FD,$FE,$FF,$01,$02,$03,$04,$05
LFCC0: .byte $0A
LFCC1: .byte $86,$0B,$9E,$04,$B0
LFCC6: .byte $01
LFCC7: .byte $FF,$01,$FF,$01,$FF
LFCCC: .byte $4A,$54,$5E,$E1,$EF,$4F,$59,$63,$E8,$F5
LFCD6: .byte $A0,$FD,$B0,$FD,$C0,$FD,$D0,$FD,$E0,$FD,$F0,$FD
LFCE2: .byte $20,$AA,$AA,$99,$99,$00,$00,$00,$00,$AA,$AA,$0B,$0B,$FF,$FF,$FF
       .byte $FF,$06,$0B,$19,$37,$47,$55,$65,$73,$83,$14,$82,$32,$6E,$4B,$78
       .byte $41,$1E,$00,$03,$07,$04,$24
LFD09: .byte $00,$06,$FA,$00,$FF,$05,$F9,$00,$01,$07,$FB
LFD14: .byte $42,$00,$00,$00,$01,$54,$00,$00,$00,$00,$10,$00,$40,$00,$40,$00
       .byte $32
LFD25: .byte $00,$01,$FF,$00,$00,$01,$FF,$00,$00,$01,$FF
LFD30: .byte $FF,$FF,$FF,$FF,$00,$01,$01,$01
LFD38: .byte $00,$11,$20,$2D,$38,$4A,$41,$41,$41,$41,$41,$42,$03,$1B,$30,$3D
       .byte $48,$5B,$4A,$41,$41,$41,$41,$41,$89,$A7,$C1,$D7,$7A,$6E,$64,$5B
       .byte $52,$4A,$41,$42
LFD5C: .byte $0B,$09,$07,$05,$03,$02,$01,$01,$01,$01,$01,$01,$0B,$09,$07,$05
       .byte $03,$03,$02,$01,$01,$01,$01,$01,$18,$14,$10,$0C,$08,$06,$04,$03
       .byte $03,$02,$01,$01
LFD80: .byte $FA,$FA,$FA,$FA,$FA,$FC,$FC,$FC,$FE,$FE,$FE,$02,$02,$02,$04,$04
       .byte $04,$06,$06,$06,$08,$08,$08
LFD97: .byte $0B,$C0,$0D,$E0
LFD9B: .byte $F0
LFD9C: .byte $0F,$F0,$0F,$F0,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$F7,$95
       .byte $87,$80,$90,$F0,$AD,$A9,$E9,$A9,$ED,$41,$0F,$00,$47,$41,$77,$55
       .byte $75,$00,$00,$00,$50,$58,$5C,$56,$53,$11,$F0,$00,$03,$00,$4B,$4A
       .byte $6B,$00,$08,$00,$BA,$8A,$BA,$A2,$3A,$80,$FE,$00,$80,$80,$AA,$AA
       .byte $BA,$22,$27,$02,$E9,$AB,$AF,$AD,$E9,$00,$00,$00,$00,$00,$11,$11
       .byte $17,$15,$17,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$77,$54
       .byte $77,$51,$77,$00,$03,$07,$07,$0F,$0D,$D8,$F0,$E0,$E0,$60,$20,$00
       .byte $00,$00,$00,$00,$00,$01,$03,$07,$07,$6D,$78,$70,$30,$10,$00,$00
       .byte $00,$00,$00,$00,$01,$03,$07,$35,$38,$18,$08,$00,$00,$00,$00,$00
       .byte $00,$01,$03,$0D,$0C,$04,$00,$00,$00,$00,$00,$00,$01,$05,$02,$00
       .byte $00,$00,$00,$00,$00,$01,$00,$00,$00,$00,$00,$00,$00,$00,$01,$01
       .byte $00,$00,$00,$00,$00,$00,$01,$01,$01,$00,$00,$00,$00,$00,$00,$01
       .byte $03,$01,$00,$00,$00,$00,$00,$00,$01,$03,$03,$01,$00,$00,$00,$00
       .byte $00,$00,$01,$03,$07,$07,$03,$01,$00,$00,$00,$00,$00,$00,$01,$03
       .byte $07,$0F,$0F,$07,$03,$01,$00,$00,$00,$00,$00,$00,$00,$03,$0F,$1F
       .byte $3F,$3F,$3F,$7F,$7F,$7F,$7F,$FF,$FF,$FF,$FF,$7F,$7F,$7F,$7F,$3F
       .byte $3F,$3F,$1F,$0F,$03,$00,$00,$00,$00,$00,$00,$03,$0F,$1F,$1F,$1F
       .byte $3F,$3F,$3F,$7F,$7F,$7F,$7F,$3F,$3F,$3F,$1F,$1F,$1F,$0F,$03,$00
       .byte $00,$00,$00,$00,$00,$03,$0F,$0F,$0F,$1F,$1F,$1F,$3F,$3F,$1F,$1F
       .byte $1F,$0F,$0F,$0F,$03,$00,$00,$00,$00,$00,$00,$01,$07,$07,$0F,$0F
       .byte $1F,$1F,$0F,$0F,$07,$07,$01,$00,$00
LFEE5: .byte $00,$00,$00,$00,$03,$03,$03,$00,$FD,$FD,$FD
LFEF0: .byte $6B,$72,$79,$80,$87,$8E,$95,$9C,$A3,$AA,$4B,$D4,$C6,$CD,$DB,$BF
LFF00: .byte $00,$10,$20,$01,$13,$13,$17,$7F,$EB,$7F,$17,$13,$13,$01,$00,$00
LFF10: .byte $00,$00,$00,$00,$01,$01,$01,$00,$FF,$FF,$FF,$01,$13,$17,$3F,$6B
       .byte $3F,$17,$13,$01,$00,$00
LFF26: .byte $00,$00,$00,$00,$04,$05,$05,$05,$05,$09,$01,$0B,$1F,$35,$1F,$0B
       .byte $01,$00,$00,$00,$00,$00,$00,$09,$0F,$1B,$0F,$09,$00,$00,$00,$00
       .byte $00,$00,$05,$0F,$05,$00,$00,$00,$00,$00,$00,$00,$08,$1C,$08,$00
       .byte $00,$40,$40,$00,$00,$00,$48,$5C,$08,$00,$00,$41,$41,$00,$00,$00
       .byte $49,$5D,$08,$00,$00,$3C,$66,$66,$66,$66,$66,$3C,$3C,$18,$18,$18
       .byte $18,$38,$18,$7E,$60,$60,$3C,$06,$46,$3C,$3C,$46,$06,$0C,$06,$46
       .byte $3C,$0C,$0C,$7E,$4C,$2C,$1C,$0C,$7C,$46,$06,$7C,$60,$60,$7E,$3C
       .byte $66,$66,$7C,$60,$62,$3C,$18,$18,$18,$0C,$06,$42,$7E,$3C,$66,$66
       .byte $3C,$66,$66,$3C,$3C,$46,$06,$3E,$66,$66,$3C,$00,$18,$00,$00,$00
       .byte $18,$00,$7C,$66,$66,$66,$66,$66,$7C,$7E,$60,$60,$78,$60,$60,$7E
       .byte $7E,$60,$60,$60,$60,$60,$60,$66,$6C,$68,$7C,$66,$66,$7C,$3C,$46
       .byte $06,$3C,$60,$62,$3C,$63,$77,$7F,$6B,$6B,$63,$63,$41,$41,$00,$00
       .byte $00,$40,$40,$41,$41,$08,$1C,$08,$40,$40,$00,$08,$5D,$7F,$5D,$08
       .byte $00,$08,$55,$63,$55,$08,$00,$F0,$00,$00
