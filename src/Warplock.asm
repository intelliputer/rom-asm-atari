; Disassembly of roms/Warplock.bin
; Disassembled Tue Oct  6 15:24:49 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Warplock.bin
;

      processor 6502
VSYNC   =  $00
VBLANK  =  $01
WSYNC   =  $02
RSYNC   =  $03
NUSIZ0  =  $04
NUSIZ1  =  $05
COLUP0  =  $06
COLUP1  =  $07
COLUPF  =  $08
COLUBK  =  $09
CTRLPF  =  $0A
PF1     =  $0E
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
HMP1    =  $21
HMM1    =  $23
HMBL    =  $24
RESMP0  =  $28
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
SWCHA   =  $0280
SWCHB   =  $0282
SWBCNT  =  $0283
INTIM   =  $0284
TIM64T  =  $0296

       ORG $F000

START:
       SEI            
       CLD            
       LDA    #$00    
       TAX            
LF005: STA    VSYNC,X 
       DEX            
       BNE    LF005   
       LDA    #$10    
       STA    SWBCNT  
LF00F: LDA    #$82    
       STA    WSYNC   
       STA    VBLANK  
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    VSYNC   
       INC    $80     
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    WSYNC   
       STA    VSYNC   
       LDA    #$2C    
       STA    TIM64T  
       LDX    #$FF    
       TXS            
       JSR    LF37D   
       LDA    #$99    
LF036: LDA    INTIM   
       BNE    LF036   
       STA    WSYNC   
       STA    HMOVE   
       STA    VBLANK  
       STA    WSYNC   
       LDA    $C1     
       CMP    #$70    
       BEQ    LF057   
       LDA    #$C8    
       STA    COLUPF  
       LDA    #$18    
       STA    COLUP0  
       LDA    #$4C    
       STA    COLUP1  
       BNE    LF05F   
LF057: LDA    #$12    
       STA    COLUP0  
       STA    COLUP1  
       STA    COLUPF  
LF05F: LDA    #$00    
       STA    NUSIZ1  
       LDA    #$22    
       STA    CTRLPF  
       LDA    $EE     
       BNE    LF06D   
       STA    $81     
LF06D: LDA    $8F     
       STA    NUSIZ0  
       JMP    LFD00   
LF074: STA    WSYNC   
       LDA    $F9     
       BNE    LF090   
       LDA    $FA     
       BEQ    LF092   
       AND    #$01    
       BNE    LF086   
       LDA    #$07    
       BNE    LF088   
LF086: LDA    #$00    
LF088: STA    COLUBK  
       DEC    $FA     
       LDA    #$07    
       STA    $F9     
LF090: DEC    $F9     
LF092: LDA    $E2     
       BEQ    LF0C0   
       DEC    $E2     
       BEQ    LF0AC   
       CMP    #$10    
       BNE    LF0A2   
       LDA    #$19    
       STA    $E0     
LF0A2: CMP    #$05    
       BNE    LF107   
       LDA    #$1D    
       STA    $E0     
       BNE    LF107   
LF0AC: LDA    $E3     
       BNE    LF107   
       LDA    $8F     
       AND    #$01    
       BEQ    LF0B8   
       LDA    #$10    
LF0B8: STA    $E0     
       LDA    #$20    
       STA    $82     
       BNE    LF0CC   
LF0C0: LDA    $E3     
       BNE    LF107   
       LDA    $9D     
       BNE    LF0E8   
       LDA    $9E     
       BNE    LF0E8   
LF0CC: LDA    #$7F    
       STA    $9D     
       STA    $9F     
       LDA    #$7F    
       STA    $9E     
       STA    $A0     
       LDA    #$00    
       STA    $D6     
       INC    $8F     
       LDA    $8F     
       AND    #$F3    
       STA    $8F     
       LDA    #$FA    
       STA    $E1     
LF0E8: LDA    VBLANK  
       BMI    LF109   
       LDA    WSYNC   
       ASL            
       BPL    LF11D   
       STA    $E3     
       LDA    #$06    
       STA    $FA     
       LDA    $F2     
       CMP    #$08    
       BNE    LF101   
       LDA    #$10    
       BNE    LF103   
LF101: LDA    #$20    
LF103: STA    $F2     
       BNE    LF12C   
LF107: BNE    LF178   
LF109: INC    $EA     
       LDA    $F2     
       CMP    #$08    
       BNE    LF11F   
       SED            
       CLC            
       LDA    $C2     
       ADC    #$01    
       STA    $C2     
       CLD            
       JMP    LF12C   
LF11D: BPL    LF178   
LF11F: CMP    #$09    
       BNE    LF12C   
       SED            
       CLC            
       LDA    $C3     
       ADC    #$01    
       STA    $C3     
       CLD            
LF12C: LDA    #$00    
       STA    $9D     
       STA    $9E     
       LDA    #$0C    
       STA    $E0     
       LDA    #$FA    
       STA    $E1     
       LDA    #$15    
       STA    $E2     
       STA    $EF     
       LDX    $EA     
       CPX    #$40    
       BMI    LF154   
       LDA    #$02    
       STA    $99     
       LDA    #$FB    
       STA    $CE     
       LDA    #$50    
       STA    $CD     
       BNE    LF178   
LF154: CPX    #$30    
       BPL    LF178   
       CPX    #$0F    
       BMI    LF178   
       LDA    $E8     
       CMP    #$B2    
       BNE    LF16C   
       LDA    #$3A    
       STA    $E8     
       LDA    #$60    
       STA    $CD     
       BNE    LF178   
LF16C: CPX    #$20    
       BMI    LF178   
       LDA    #$B0    
       STA    $E8     
       LDA    #$90    
       STA    $CD     
LF178: LDA    $EB     
       BEQ    LF1EA   
       LDA    $E6     
       BEQ    LF1AE   
       DEC    $E6     
       BEQ    LF196   
       CMP    #$10    
       BNE    LF18C   
       LDA    #$19    
       STA    $E4     
LF18C: CMP    #$05    
       BNE    LF1CE   
       LDA    #$1D    
       STA    $E4     
       BNE    LF1CE   
LF196: LDA    $E7     
       BNE    LF1CE   
       LDA    $8F     
       AND    #$01    
       BEQ    LF1A4   
       LDA    #$04    
       BNE    LF1A6   
LF1A4: LDA    #$15    
LF1A6: STA    $E4     
       LDA    #$20    
       STA    $83     
       BNE    LF1BA   
LF1AE: LDA    $E7     
       BNE    LF1CE   
       LDA    $A4     
       BNE    LF1D0   
       LDA    $A5     
       BNE    LF1D0   
LF1BA: LDA    #$7F    
       STA    $A4     
       STA    $A6     
       LDA    #$7F    
       STA    $A5     
       STA    $A7     
       LDA    #$00    
       STA    $D7     
       LDA    #$FA    
       STA    $E5     
LF1CE: BNE    LF239   
LF1D0: LDA    VBLANK  
       ASL            
       BMI    LF1F2   
       LDA    RSYNC   
       ASL            
       BPL    LF239   
       STA    $E7     
       LDA    #$06    
       STA    $FA     
       LDA    $F2     
       CMP    #$08    
       BNE    LF1EC   
       LDA    #$10    
       BNE    LF1EE   
LF1EA: BEQ    LF256   
LF1EC: LDA    #$20    
LF1EE: STA    $F2     
       BNE    LF213   
LF1F2: INC    $EA     
       LDA    $F2     
       CMP    #$08    
       BNE    LF206   
       SED            
       CLC            
       LDA    $C2     
       ADC    #$01    
       STA    $C2     
       CLD            
       JMP    LF213   
LF206: CMP    #$09    
       BNE    LF213   
       SED            
       CLC            
       LDA    $C3     
       ADC    #$01    
       STA    $C3     
       CLD            
LF213: LDA    #$00    
       STA    $A4     
       STA    $A5     
       LDA    #$0C    
       STA    $E4     
       LDA    #$FA    
       STA    $E5     
       LDA    #$15    
       STA    $E6     
       STA    $EF     
       LDA    $EA     
       CMP    #$40    
       BPL    LF239   
       CMP    #$30    
       BMI    LF239   
       LDA    #$02    
       STA    $A8     
       LDA    #$C0    
       STA    $CD     
LF239: LDA    NUSIZ0  
       ASL            
       BPL    LF256   
       STA    $E9     
       LDA    #$06    
       STA    $FA     
       LDA    $F2     
       CMP    #$08    
       BNE    LF24E   
       LDA    #$10    
       BNE    LF250   
LF24E: LDA    #$20    
LF250: STA    $F2     
       LDA    #$15    
       STA    $EF     
LF256: LDA    $EA     
       CMP    #$06    
       BPL    LF25F   
       JMP    LF277   
LF25F: LDA    $EB     
       BNE    LF277   
       LDA    #$30    
       STA    $CD     
       LDA    #$20    
       STA    $83     
       LDA    #$7F    
       STA    $A4     
       STA    $A5     
       STA    $A6     
       STA    $A7     
       STA    $EB     
LF277: STA    CXCLR   
       LDA    $F2     
       BEQ    LF28B   
       CMP    #$FF    
       BEQ    LF28F   
       LDA    $EE     
       EOR    #$FF    
       STA    $EE     
       BNE    LF292   
       BEQ    LF28F   
LF28B: LDA    #$00    
       STA    AUDV1   
LF28F: JMP    LFE00   
LF292: LDX    #$76    
       LDY    #$00    
LF296: STA    WSYNC   
       LDA    ($F2),Y 
       BMI    LF29E   
       INC    $81     
LF29E: CLC            
       LDA    $80     
       ADC    #$02    
       STA    $80     
       ADC    $87     
       AND    #$F8    
       EOR    #$F8    
       BEQ    LF2B3   
       LDA    #$00    
       STA    $8C     
       BEQ    LF2B9   
LF2B3: LDY    $8C     
       LDA    ($E0),Y 
       INC    $8C     
LF2B9: STA    GRP0    
       CLC            
       LDA    $88     
       ADC    $80     
       AND    #$F8    
       EOR    #$F8    
       BEQ    LF2CC   
       LDA    #$00    
       STA    $8D     
       BEQ    LF2D2   
LF2CC: LDY    $8D     
       LDA    ($E4),Y 
       INC    $8D     
LF2D2: STA    GRP1    
       CLC            
       LDA    $89     
       ADC    $80     
       AND    #$F2    
       EOR    #$F2    
       BEQ    LF2E3   
       LDA    #$00    
       BEQ    LF2E5   
LF2E3: LDA    #$02    
LF2E5: STA    ENAM0   
       CLC            
       LDA    $8A     
       ADC    $80     
       AND    #$F2    
       EOR    #$F2    
       BEQ    LF2F6   
       LDA    #$00    
       BEQ    LF2F8   
LF2F6: LDA    #$02    
LF2F8: STA    ENAM1   
       LDY    #$00    
       LDA    ($F2),Y 
       BMI    LF302   
       INC    $81     
LF302: DEX            
       DEX            
       BNE    LF296   
       LDX    #$3A    
LF308: STA    WSYNC   
       CLC            
       LDA    $80     
       ADC    #$02    
       STA    $80     
       ADC    $87     
       AND    #$F8    
       EOR    #$F8    
       BEQ    LF31F   
       LDA    #$00    
       STA    $8C     
       BEQ    LF325   
LF31F: LDY    $8C     
       LDA    ($E0),Y 
       INC    $8C     
LF325: STA    GRP0    
       CLC            
       LDA    $88     
       ADC    $80     
       AND    #$F8    
       EOR    #$F8    
       BEQ    LF338   
       LDA    #$00    
       STA    $8D     
       BEQ    LF33E   
LF338: LDY    $8D     
       LDA    ($E4),Y 
       INC    $8D     
LF33E: STA    GRP1    
       CLC            
       LDA    $89     
       ADC    $80     
       AND    #$F2    
       EOR    #$F2    
       BEQ    LF34F   
       LDA    #$00    
       BEQ    LF351   
LF34F: LDA    #$02    
LF351: STA    ENAM0   
       CLC            
       LDA    $8B     
       ADC    $80     
       AND    #$F8    
       EOR    #$F8    
       BEQ    LF364   
       LDA    #$00    
       STA    $CC     
       BEQ    LF36D   
LF364: LDY    $CC     
       LDA    LFA21,Y 
       STA    CTRLPF  
       INC    $CC     
LF36D: STA    ENABL   
       DEX            
       DEX            
       BNE    LF308   
       LDX    #$14    
LF375: STA    WSYNC   
       DEX            
       BNE    LF375   
       JMP    LF00F   
LF37D: LDA    $F2     
       BNE    LF391   
       LDA    $F1     
       BNE    LF389   
       LDA    #$01    
       BNE    LF38B   
LF389: LDA    #$02    
LF38B: STA    $C3     
       LDA    #$00    
       STA    $C2     
LF391: LDA    #$00    
       STA    $80     
       STA    HMCLR   
       LDA    $F2     
       CMP    #$20    
       BEQ    LF3A1   
       CMP    #$FF    
       BNE    LF3AC   
LF3A1: LDA    SWCHA   
       BMI    LF3C4   
       LDA    #$08    
       STA    $F2     
       BNE    LF3F2   
LF3AC: CMP    #$10    
       BNE    LF3C4   
       LDA    $F1     
       BEQ    LF3C4   
       LDA    SWCHA   
       ASL            
       BMI    LF3C4   
       LDA    $C2     
       STA    $F4     
       LDA    #$09    
       STA    $F2     
       BNE    LF3F2   
LF3C4: LDA    SWCHB   
       AND    #$02    
       BNE    LF3DD   
       LDA    $F5     
       BNE    LF3E1   
       LDA    $F1     
       EOR    #$FF    
       STA    $F1     
       LDA    #$00    
       STA    $F2     
       LDA    #$FF    
       BNE    LF3DF   
LF3DD: LDA    #$00    
LF3DF: STA    $F5     
LF3E1: LDA    SWCHB   
       AND    #$01    
       BNE    LF3FC   
       LDA    $F8     
       BNE    LF400   
       LDA    #$FF    
       STA    $F2     
       STA    $F8     
LF3F2: LDA    #$00    
       LDX    #$F0    
LF3F6: STA    VSYNC,X 
       DEX            
       BNE    LF3F6   
       RTS            

LF3FC: LDA    #$00    
       STA    $F8     
LF400: LDA    $ED     
       BEQ    LF42E   
       CMP    #$01    
       BNE    LF41C   
       LDA    #$08    
       STA    AUDF0   
       STA    $F0     
       LDA    #$0C    
       STA    AUDC0   
       LDA    #$08    
       STA    AUDV0   
       LDA    #$02    
       STA    $ED     
       BNE    LF42E   
LF41C: INC    $F0     
       INC    $F0     
       LDA    $F0     
       STA    AUDF0   
       CMP    #$1E    
       BNE    LF42E   
       LDA    #$00    
       STA    AUDV0   
       STA    $ED     
LF42E: LDA    $EF     
       BEQ    LF44A   
       DEC    $EF     
       BEQ    LF44A   
       LDA    #$00    
       STA    $F6     
       STA    $F7     
       LDA    #$08    
       STA    AUDV1   
       LDA    #$08    
       STA    AUDC1   
       LDA    #$10    
       STA    AUDF1   
       BNE    LF45C   
LF44A: LDA    $E3     
       BNE    LF459   
       LDA    $E7     
       BNE    LF459   
       LDA    $E9     
       BNE    LF459   
       JMP    LFB00   
LF459: JMP    LFB00   
LF45C: LDA    $9D     
       BMI    LF4B0   
       BNE    LF468   
       LDA    $9E     
       BMI    LF4B0   
       BEQ    LF4B0   
LF468: LDA    #$78    
       STA    $B9     
       LDA    #$0C    
       STA    $BA     
       LDA    $E8     
       STA    $BC     
       LDA    #$1A    
       STA    $BB     
       LDA    $BD     
       STA    $96     
       LDA    $D6     
       STA    $D9     
       LDA    $9A     
       STA    $D0     
       LDA    $9B     
       STA    $D1     
       LDA    $82     
       STA    $93     
       LDA    $9C     
       STA    $92     
       LDA    $9D     
       STA    $D2     
       LDA    $9E     
       STA    $D3     
       JSR    LF849   
       LDA    $96     
       STA    $BD     
       AND    #$01    
       STA    $90     
       LDA    $BD     
       AND    #$02    
       STA    $91     
       LDA    $D9     
       STA    $D6     
       JMP    LF4B3   
LF4B0: JMP    LF4F2   
LF4B3: LDA    $9D     
       STA    $D4     
       LDA    $9E     
       STA    $D5     
       LDA    $9F     
       STA    $D2     
       LDA    $A0     
       STA    $D3     
       LDA    $99     
       STA    $94     
       LDA    #$00    
       STA    $95     
       JSR    LF79C   
       LDA    $95     
       STA    $97     
       LDA    $92     
       STA    $9C     
       LDA    $93     
       STA    $82     
       LDA    $D4     
       STA    $9D     
       LDA    $D5     
       STA    $9E     
       LDA    $D2     
       STA    $9F     
       LDA    $D3     
       STA    $A0     
       LDA    $D0     
       STA    $9A     
       LDA    $D1     
       STA    $9B     
LF4F2: LDA    $A4     
       BMI    LF546   
       BNE    LF4FE   
       LDA    $A5     
       BMI    LF546   
       BEQ    LF546   
LF4FE: LDA    #$7C    
       STA    $B9     
       LDA    #$00    
       STA    $BA     
       LDA    #$B2    
       STA    $BC     
       LDA    #$1A    
       STA    $BB     
       LDA    $BE     
       STA    $96     
       LDA    $D7     
       STA    $D9     
       LDA    $A1     
       STA    $D0     
       LDA    $A2     
       STA    $D1     
       LDA    $83     
       STA    $93     
       LDA    $A3     
       STA    $92     
       LDA    $A4     
       STA    $D2     
       LDA    $A5     
       STA    $D3     
       JSR    LF849   
       LDA    $96     
       STA    $BE     
       AND    #$01    
       STA    $90     
       LDA    $BE     
       AND    #$02    
       STA    $91     
       LDA    $D9     
       STA    $D7     
       JMP    LF549   
LF546: JMP    LF588   
LF549: LDA    $A4     
       STA    $D4     
       LDA    $A5     
       STA    $D5     
       LDA    $A6     
       STA    $D2     
       LDA    $A7     
       STA    $D3     
       LDA    $A8     
       STA    $94     
       LDA    #$00    
       STA    $95     
       JSR    LF79C   
       LDA    $95     
       STA    $DA     
       LDA    $92     
       STA    $A3     
       LDA    $93     
       STA    $83     
       LDA    $D4     
       STA    $A4     
       LDA    $D5     
       STA    $A5     
       LDA    $D2     
       STA    $A6     
       LDA    $D3     
       STA    $A7     
       LDA    $D0     
       STA    $A1     
       LDA    $D1     
       STA    $A2     
LF588: LDA    $D8     
       BNE    LF5E0   
       LDA    #$00    
       STA    $E0     
       LDA    #$FA    
       STA    $E1     
       LDA    #$20    
       STA    $82     
       LDA    #$8B    
       STA    $86     
       LDA    #$06    
       STA    $B5     
       LDA    #$02    
       STA    $BD     
       LDA    #$01    
       STA    $BE     
       LDA    #$01    
       STA    $99     
       LDA    #$6F    
       STA    $9C     
       LDA    #$01    
       STA    $A8     
       LDA    #$FC    
       STA    $CE     
       LDA    #$00    
       STA    $CD     
       LDA    #$04    
       STA    $B0     
       LDA    #$B2    
       STA    $E8     
       LDA    #$02    
       STA    RESMP0  
       LDA    #$44    
       STA    $A3     
       INC    $D8     
       LDA    #$7F    
       STA    $9D     
       STA    $9F     
       LDA    #$7F    
       STA    $9E     
       STA    $A0     
       LDA    #$00    
       STA    $D6     
       STA    $D7     
LF5E0: LDA    $9D     
       BEQ    LF5F6   
       LDA    $97     
       BNE    LF5F6   
       LDA    $BD     
       AND    #$01    
       BEQ    LF5F2   
       LDA    #$F0    
       BNE    LF5F4   
LF5F2: LDA    #$10    
LF5F4: STA    HMP0    
LF5F6: LDA    $A4     
       BEQ    LF60C   
       LDA    $DA     
       BNE    LF60C   
       LDA    $BE     
       AND    #$01    
       BEQ    LF608   
       LDA    #$F0    
       BNE    LF60A   
LF608: LDA    #$10    
LF60A: STA    HMP1    
LF60C: LDA    $82     
       EOR    #$FF    
       STA    $87     
       LDA    $83     
       EOR    #$FF    
       STA    $88     
       LDA    $84     
       EOR    #$FF    
       STA    $89     
       LDA    $85     
       EOR    #$FF    
       STA    $8A     
       LDA    $86     
       EOR    #$FF    
       STA    $8B     
       STA    WSYNC   
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       LDA    $B7     
       STA    HMBL    
       AND    #$0F    
       TAY            
LF639: DEY            
       BPL    LF639   
       STA    RESBL   
       LDA    $B1     
       STA    $D0     
       LDA    $B2     
       STA    $D1     
       LDA    $B3     
       BNE    LF689   
       LDA    $B7     
       STA    $B6     
       LDA    $F2     
       CMP    #$08    
       BNE    LF65A   
       LDA    SWCHA   
       JMP    LF666   
LF65A: CMP    #$09    
       BNE    LF6C6   
       LDA    $F4     
       STA    $C2     
       LDA    SWCHA   
       ASL            
LF666: BMI    LF6C6   
       LDA    $86     
       CMP    #$FF    
       BEQ    LF6C6   
       LDA    #$01    
       STA    $ED     
       LDA    #$18    
       STA    $B3     
       STA    $B4     
       LDA    #$00    
       SEC            
       SBC    $B4     
       STA    $D0     
       LDA    #$00    
       SBC    #$00    
       STA    $D1     
       LDA    $86     
       STA    $85     
LF689: STA    WSYNC   
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       LDA    $B6     
       STA    HMM1    
       AND    #$0F    
       TAY            
LF698: DEY            
       BPL    LF698   
       STA    RESM1   
       LDA    $85     
       STA    $93     
       LDA    $B3     
       STA    $D5     
       LDA    #$00    
       STA    $91     
       STA    $D2     
       LDA    $B4     
       STA    $D3     
       LDA    $B5     
       STA    $94     
       JSR    LF79C   
       LDA    $93     
       STA    $85     
       LDA    $D5     
       STA    $B3     
       LDA    $D0     
       STA    $B1     
       LDA    $D1     
       STA    $B2     
LF6C6: LDA    $E3     
       BNE    LF6F0   
       LDA    $E7     
       BNE    LF6F0   
       LDA    $E9     
       BNE    LF6F0   
       LDA    #$78    
       SEC            
       SBC    $81     
       LDY    #$FF    
       SEC            
LF6DA: INY            
       SBC    #$0F    
       BCS    LF6DA   
       STY    $B8     
       EOR    #$FF    
       ADC    #$09    
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    $B8     
       STA    $B7     
       JMP    LF6F4   
LF6F0: LDA    #$FF    
       STA    $86     
LF6F4: LDA    $E9     
       BNE    LF76C   
       LDA    $E7     
       BNE    LF76C   
       LDA    $E8     
       CMP    #$3A    
       BEQ    LF70C   
       CMP    #$B0    
       BNE    LF76C   
       LDA    $82     
       CMP    #$3A    
       BPL    LF76C   
LF70C: LDA    $A9     
       STA    $D0     
       LDA    $AA     
       STA    $D1     
       LDA    $AD     
       BNE    LF73F   
       LDA    $A4     
       BNE    LF76C   
       LDA    $A5     
       BNE    LF76C   
       LDA    $8F     
       AND    #$02    
       BEQ    LF76C   
       LDA    #$1F    
       STA    $AD     
       STA    $AF     
       LDA    #$00    
       SEC            
       SBC    $AF     
       STA    $D0     
       LDA    #$00    
       STA    RESMP0  
       SBC    #$00    
       STA    $D1     
       LDA    $82     
       STA    $84     
LF73F: LDA    $84     
       STA    $93     
       LDA    $AD     
       STA    $D5     
       LDA    #$01    
       STA    $91     
       LDA    #$00    
       STA    $D2     
       LDA    $AF     
       STA    $D3     
       LDA    $B0     
       STA    $94     
       JSR    LF79C   
       LDA    $D5     
       STA    $AD     
       LDA    $D0     
       STA    $A9     
       LDA    $D1     
       STA    $AA     
       LDA    $93     
       STA    $84     
       BNE    LF770   
LF76C: LDA    #$02    
       STA    RESMP0  
LF770: LDA    $F2     
       CMP    #$08    
       BEQ    LF79B   
       CMP    #$09    
       BEQ    LF79B   
       CMP    $FB     
       BEQ    LF788   
       STA    $FB     
       LDA    #$00    
       STA    $C0     
       STA    $C1     
       BEQ    LF79B   
LF788: LDA    $C1     
       CMP    #$70    
       BEQ    LF79B   
       CLC            
       LDA    $C0     
       ADC    #$01    
       STA    $C0     
       LDA    $C1     
       ADC    #$00    
       STA    $C1     
LF79B: RTS            

LF79C: LDA    $D3     
       CMP    $D2     
       BPL    LF7F4   
       LDA    $D1     
       BNE    LF7D8   
       LDA    $D0     
       BEQ    LF7D8   
       LDA    $91     
       BEQ    LF7B8   
       LDA    $93     
       CLC            
       ADC    $94     
       STA    $93     
       JMP    LF7BF   
LF7B8: LDA    $93     
       SEC            
       SBC    $94     
       STA    $93     
LF7BF: LDA    $D2     
       SEC            
       SBC    $D3     
       ASL            
       STA    $98     
       LDA    $D0     
       SEC            
       SBC    $98     
       STA    $D0     
       LDA    #$00    
       SBC    #$00    
       STA    $D1     
       DEC    $D5     
       BPL    LF7E6   
LF7D8: LDA    $D3     
       ASL            
       CLC            
       ADC    $D0     
       STA    $D0     
       LDA    $D1     
       ADC    #$00    
       STA    $D1     
LF7E6: LDA    $90     
       BEQ    LF7EE   
       INC    $92     
       BPL    LF7F0   
LF7EE: DEC    $92     
LF7F0: DEC    $D4     
       BPL    LF848   
LF7F4: LDA    $D1     
       BNE    LF81F   
       LDA    $D0     
       BEQ    LF81F   
       LDA    $90     
       BEQ    LF804   
       INC    $92     
       BPL    LF806   
LF804: DEC    $92     
LF806: LDA    $D3     
       SEC            
       SBC    $D2     
       ASL            
       STA    $98     
       LDA    $D0     
       SEC            
       SBC    $98     
       STA    $D0     
       LDA    #$00    
       SBC    #$00    
       STA    $D1     
       DEC    $D4     
       BPL    LF831   
LF81F: LDA    $D2     
       ASL            
       CLC            
       ADC    $D0     
       STA    $D0     
       LDA    $D1     
       ADC    #$00    
       STA    $D1     
       LDA    #$01    
       STA    $95     
LF831: LDA    $91     
       BEQ    LF83F   
       LDA    $93     
       CLC            
       ADC    $94     
       STA    $93     
       JMP    LF846   
LF83F: LDA    $93     
       SEC            
       SBC    $94     
       STA    $93     
LF846: DEC    $D5     
LF848: RTS            

LF849: LDA    $92     
       CMP    $B9     
       BEQ    LF85F   
       CMP    $BA     
       BEQ    LF880   
       LDA    $93     
       CMP    $BC     
       BEQ    LF8A1   
       CMP    $BB     
       BEQ    LF8A8   
       BNE    LF8B2   
LF85F: LDA    $93     
       CMP    $BC     
       BEQ    LF870   
       CMP    $BB     
       BEQ    LF877   
       LDA    $96     
       AND    #$FE    
       JMP    LF8AC   
LF870: LDA    $96     
       AND    #$FC    
       JMP    LF8AC   
LF877: LDA    $96     
       AND    #$FE    
       ORA    #$02    
       JMP    LF8AC   
LF880: LDA    $93     
       CMP    $BC     
       BEQ    LF891   
       CMP    $BB     
       BEQ    LF89A   
       LDA    $96     
       ORA    #$01    
       JMP    LF8AC   
LF891: LDA    $96     
       ORA    #$01    
       AND    #$FD    
       JMP    LF8AC   
LF89A: LDA    $96     
       ORA    #$03    
       JMP    LF8AC   
LF8A1: LDA    $96     
       AND    #$FD    
       JMP    LF8AC   
LF8A8: LDA    $96     
       ORA    #$02    
LF8AC: STA    $96     
       LDA    #$00    
       STA    $D9     
LF8B2: LDA    $D9     
       BNE    LF8DF   
       LDA    $D3     
       CMP    $D2     
       BPL    LF8CD   
       LDA    $D3     
       ASL            
       SEC            
       SBC    $D2     
       STA    $D0     
       LDA    #$00    
       SBC    #$00    
       STA    $D1     
       JMP    LF8DB   
LF8CD: LDA    $D2     
       ASL            
       SEC            
       SBC    $D3     
       STA    $D0     
       LDA    #$00    
       SBC    #$00    
       STA    $D1     
LF8DB: LDA    #$01    
       STA    $D9     
LF8DF: RTS            

LF8E0: .byte $A0,$F7,$03,$9F,$00,$15,$B4,$1B,$11,$57,$08,$BF,$D1,$FF,$8C,$39
       .byte $F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F
       .byte $5A,$E7,$90,$B7,$FA,$27,$EB,$76,$00,$F0,$88,$CB,$18,$E7,$86,$4A
       .byte $F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F
       .byte $50,$E9,$BE,$D6,$A0,$D6,$81,$6F,$BA,$B5,$20,$BF,$34,$67,$41,$2F
       .byte $F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F
       .byte $BC,$7F,$11,$FF,$3A,$7F,$62,$EE,$80,$25,$2C,$AF,$78,$FF,$14,$37
       .byte $F0,$0F,$F0,$2F,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F
       .byte $82,$05,$81,$A7,$C4,$FF,$44,$9F,$28,$EF,$41,$DB,$90,$6F,$90,$0F
       .byte $F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F
       .byte $32,$1B,$40,$2F,$1A,$99,$C0,$CF,$48,$BF,$02,$D6,$78,$7F,$04,$2F
       .byte $F0,$0F,$F0,$0F,$F0,$2F,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F
       .byte $1A,$EA,$31,$7E,$C0,$9F,$95,$B7,$24,$FF,$10,$8F,$00,$BF,$16,$AB
       .byte $F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F
       .byte $00,$8E,$E8,$FA,$20,$4F,$D0,$BF,$3A,$7E,$08,$8F,$40,$7D,$19,$57
       .byte $F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F
       .byte $2C,$9F,$5C,$BF,$30,$CE,$70,$99,$D5,$BB,$D0,$7F,$50,$AD,$32,$F7
       .byte $F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F
       .byte $3C,$42,$81,$5A,$18,$3C,$FF,$42,$00,$20,$30,$10,$00,$18,$18,$00
       .byte $81,$7E,$7E,$81,$FF,$3C,$E7,$A5,$81,$18,$24,$24,$18,$18,$C3,$00
       .byte $18
LFA21: .byte $02,$02,$22,$12,$FE,$CC,$D3,$29,$BF,$68,$37,$A0,$F7,$0C,$4B,$F0
       .byte $0F,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$D0
       .byte $D7,$E0,$BF,$B0,$6D,$22,$BF,$21,$9F,$64,$D6,$80,$2D,$28,$7F,$F0
       .byte $0F,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$D8
       .byte $BF,$80,$EF,$A0,$9F,$40,$DB,$A0,$FF,$E8,$67,$08,$BD,$20,$DB,$F0
       .byte $0F,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$14
       .byte $57,$60,$37,$64,$6F,$B2,$CD,$86,$CF,$10,$2F,$82,$E4,$18,$BF,$F0
       .byte $0F,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$50
       .byte $D5,$4A,$9E,$00,$3E,$C9,$99,$28,$CF,$E0,$8F,$74,$9F,$92,$9F,$F0
       .byte $0F,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$D0
       .byte $1F,$4A,$AF,$70,$CF,$48,$BF,$29,$47,$31,$EF,$60,$AC,$63,$DF,$F0
       .byte $0F,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$28
       .byte $DF,$52,$3F,$A9,$9B,$47,$9E,$61,$4A,$C9,$37,$90,$4F,$48,$DF,$F0
       .byte $0F,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F
LFB00: LDA    $F7     
       BEQ    LFB09   
       DEC    $F7     
       JMP    LF45C   
LFB09: LDY    $F6     
       CPY    #$24    
       BNE    LFB14   
       LDA    #$00    
       STA    $F6     
       TAY            
LFB14: LDA    ($CD),Y 
       STA    $F7     
       INY            
       LDA    ($CD),Y 
       STA    AUDC1   
       INY            
       LDA    ($CD),Y 
       STA    AUDF1   
       INY            
       LDA    ($CD),Y 
       STA    AUDV1   
       CLC            
       LDA    $F6     
       ADC    #$04    
       STA    $F6     
       JMP    LF45C   
LFB31: .byte $0F,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$09
       .byte $8F,$32,$E6,$F0,$AF,$09,$2F,$14,$27,$80,$EF,$A0,$9F,$50,$DF,$00
       .byte $0C,$03,$08,$00,$0C,$05,$08,$00,$0C,$07,$08,$00,$0C,$09,$08,$00
       .byte $0C,$0B,$08,$00,$0C,$0F,$08,$00,$0C,$08,$0F,$00,$0C,$07,$01,$00
       .byte $0C,$07,$03,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$30
       .byte $5E,$08,$17,$50,$8E,$68,$AF,$58,$97,$10,$D5,$61,$CF,$00,$3F,$F0
       .byte $0F,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$C8
       .byte $4F,$A3,$66,$C0,$EF,$60,$FF,$19,$DF,$41,$5F,$00,$2F,$44,$DF,$F0
       .byte $2F,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$20
       .byte $5F,$A0,$4B,$40,$97,$F4,$A6,$90,$C7,$30,$7F,$90,$C5,$90,$DB,$F0
       .byte $0F,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$28
       .byte $75,$05,$EF,$46,$66,$88,$FA,$25,$FF,$90,$6F,$90,$9D,$00,$7F,$F0
       .byte $0F,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$00
       .byte $0C,$03,$08,$00,$0C,$05,$08,$00,$0C,$07,$08,$00,$0C,$09,$08,$00
       .byte $0C,$0B,$08,$00,$0C,$0F,$08,$00,$0C,$08,$0F,$0A,$0C,$07,$01,$04
       .byte $0C,$08,$03,$80,$EE,$18,$AB,$D8,$8F,$62,$6F,$20,$BB,$B8,$57,$00
       .byte $0C,$03,$08,$00,$0C,$05,$08,$00,$0C,$07,$08,$00,$0C,$09,$08,$00
       .byte $0C,$0B,$08,$00,$0C,$0F,$08,$00,$0C,$08,$0F,$07,$0C,$07,$01,$04
       .byte $0C,$08,$03,$F0,$0F,$F0,$0F,$D0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$00
       .byte $0C,$03,$08,$00,$0C,$05,$08,$00,$0C,$07,$08,$00,$0C,$09,$08,$00
       .byte $0C,$0B,$08,$00,$0C,$0F,$08,$00,$0C,$08,$0F,$03,$0C,$07,$01,$04
       .byte $0C,$08,$03,$C4,$D7,$9D,$D7,$2C,$86,$58,$BF,$A0,$EB,$81,$BF,$00
       .byte $0C,$03,$08,$00,$0C,$05,$08,$00,$0C,$07,$08,$00,$0C,$09,$08,$00
       .byte $0C,$0B,$08,$00,$0C,$0F,$08,$00,$0C,$08,$0F,$00,$0C,$07,$01,$04
       .byte $0C,$08,$03,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$B0,$0F,$F0,$0F,$00
       .byte $0C,$03,$08,$00,$0C,$05,$08,$00,$0C,$07,$08,$00,$0C,$09,$08,$00
       .byte $0C,$0B,$08,$00,$0C,$0F,$08,$00,$0C,$08,$0F,$00,$0C,$07,$01,$00
       .byte $0C,$08,$03,$60,$EF,$80,$EF,$C0,$8B,$CA,$E7,$49,$2E,$2B,$EE,$F0
       .byte $0F,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$1F,$F0,$0F
LFD00: STA    WSYNC   
       LDA    #$00    
       STA    $C8     
       STA    $C9     
       LDA    #$0F    
       STA    $CA     
       LDA    $C3     
       AND    #$0F    
       STA    $CB     
       ASL            
       ASL            
       CLC            
       ADC    $CB     
       STA    $C7     
       STA    WSYNC   
       LDA    $C3     
       AND    #$F0    
       LSR            
       LSR            
       STA    $CB     
       LSR            
       LSR            
       CLC            
       ADC    $CB     
       STA    $C6     
       LDA    $C2     
       AND    #$0F    
       STA    $CB     
       ASL            
       ASL            
       CLC            
       ADC    $CB     
       STA    $C5     
       INC    $80     
       STA    WSYNC   
       LDA    $C2     
       AND    #$F0    
       LSR            
       LSR            
       STA    $CB     
       LSR            
       LSR            
       CLC            
       ADC    $CB     
       STA    $C4     
       INC    $80     
LFD4C: STA    WSYNC   
       LDA    $C8     
       STA    PF1     
       LDY    $C4     
       LDA    LFF00,Y 
       AND    #$F0    
       STA    $C8     
       LDY    $C5     
       LDA    LFF00,Y 
       AND    #$0F    
       ORA    $C8     
       STA    $C8     
       LDA    $C9     
       STA    PF1     
       LDY    $C6     
       LDA    LFF00,Y 
       AND    #$F0    
       STA    $C9     
       LDY    $C7     
       LDA    LFF00,Y 
       AND    #$0F    
       ORA    $C9     
       STA    $C9     
       STA    WSYNC   
       INC    $80     
       LDA    $80     
       CMP    #$0D    
       BCS    LFD9D   
       LDA    $C8     
       STA    PF1     
       INC    $C5     
       INC    $C4     
       INC    $C7     
       INC    $C6     
       LDA    $C9     
       STA    PF1     
       INC    $80     
       JMP    LFD4C   
LFD9D: LDA    #$00    
       STA    PF1     
       JMP    LF074   
LFDA4: .byte $10,$27,$60,$3F,$B2,$AF,$70,$0F,$A0,$DC,$40,$4F,$F0,$0F,$F0,$0F
       .byte $F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$4F,$10,$A7,$90,$8F
       .byte $86,$FF,$58,$97,$08,$7F,$50,$3F,$30,$77,$90,$BF,$F0,$0F,$F0,$0F
       .byte $F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$70,$0F,$F0,$0F,$A0,$CF,$72,$EF
       .byte $80,$DF,$D5,$7F,$0A,$FE,$12,$EF,$50,$1B,$51,$6F,$F0,$0F,$F0,$0F
       .byte $F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F
LFE00: STA    WSYNC   
       LDA    #$00    
       STA    CTRLPF  
       STA    RESBL   
       LDA    #$00    
       STA    COLUP1  
       STA    COLUP0  
       STA    HMCLR   
       LDA    #$00    
       STA    $DE     
       STA    $DF     
       LDA    #$A4    
       STA    $DB     
       LDA    #$89    
       STA    $DC     
       LDA    #$77    
       STA    $DD     
       CLC            
       LDA    $DB     
       STA    HMBL    
LFE27: STA    WSYNC   
       STA    HMOVE   
       LDA    #$02    
       STA    ENABL   
       LDA    $DB     
       ADC    $DC     
       STA    $EC     
       LDA    $DC     
       STA    $DB     
       STA    HMBL    
       LDA    $DD     
       TAX            
       STA    $DC     
       ADC    $EC     
       STA    $DD     
       LDA    $DF     
       EOR    #$00    
       AND    #$07    
       BNE    LFE4E   
       LDX    $DD     
LFE4E: INC    $DF     
       LDA    $DF     
       CMP    #$55    
       BEQ    LFE74   
       AND    #$07    
       EOR    #$07    
       STA    WSYNC   
       BNE    LFE62   
       INC    $DE     
       INC    $DB     
LFE62: LDA    #$00    
       STA    ENABL   
       TXA            
       AND    #$07    
       BEQ    LFE70   
       TAX            
LFE6C: DEX            
       NOP            
       BNE    LFE6C   
LFE70: STA    RESBL   
       BEQ    LFE27   
LFE74: STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    ENABL   
       LDX    #$16    
LFE7E: STA    WSYNC   
       DEX            
       BNE    LFE7E   
       JMP    LF00F   
LFE86: .byte $81,$E6,$4C,$2F,$52,$DF,$61,$CB,$80,$0F,$F0,$0F,$F0,$0F,$F0,$0F
       .byte $F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$00,$EF,$A1,$AF,$A0,$AA
       .byte $02,$37,$31,$86,$80,$BF,$22,$7F,$38,$FD,$F0,$0F,$F0,$0F,$F0,$0F
       .byte $F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$1A,$37,$20,$4F,$80,$07
       .byte $FF,$FE,$C8,$AF,$90,$E7,$D0,$EF,$C0,$1F,$F0,$0F,$F0,$0F,$F0,$0F
       .byte $F0,$2F,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$0A,$EB,$81,$3F,$4C,$3F
       .byte $C0,$05,$B5,$BF,$63,$CF,$10,$DF,$54,$9F,$F0,$0F,$F0,$0F,$F0,$0F
       .byte $F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F
LFF00: .byte $0E,$0A,$0A,$0A,$0E,$22,$22,$22,$22,$22,$EE,$22,$EE,$88,$EE,$EE
       .byte $22,$66,$22,$EE,$AA,$AA,$EE,$22,$22,$EE,$88,$EE,$22,$EE,$EE,$88
       .byte $EE,$AA,$EE,$EE,$22,$22,$22,$22,$EE,$AA,$EE,$AA,$EE,$EE,$AA,$EE
       .byte $22,$EE,$00,$80,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F
       .byte $0A,$FF,$09,$8B,$21,$46,$81,$17,$84,$9F,$30,$1F,$A0,$FE,$40,$AB
       .byte $F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F
       .byte $C0,$FD,$98,$36,$C2,$9E,$30,$B5,$B2,$AF,$40,$EB,$D0,$FF,$05,$3F
       .byte $F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F
       .byte $00,$1F,$68,$DF,$00,$F7,$40,$F7,$94,$2F,$80,$DB,$08,$FD,$01,$7E
       .byte $F0,$0F,$F0,$0F,$F0,$4F,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F
       .byte $1C,$55,$B2,$7F,$8C,$FC,$60,$FF,$98,$6F,$21,$AF,$A2,$DD,$0A,$6F
       .byte $F0,$0F,$F0,$0F,$F0,$0F,$D0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F
       .byte $18,$5F,$91,$4F,$10,$DE,$58,$E6,$08,$07,$60,$B8,$1C,$3F,$80,$67
       .byte $F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$F0,$1F
       .byte $50,$9E,$C1,$26,$08,$BB,$9A,$73,$C0,$66,$88,$D7,$50,$BE,$50,$BD
       .byte $F0,$0F,$F0,$0F,$F0,$0F,$F0,$0F,$00,$00,$00,$F0,$00,$F0,$00,$00
