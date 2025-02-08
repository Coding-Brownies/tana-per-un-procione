# Registri: locazioni di memoria interne a 32 bit
## registri generali: per le elaborazioni   
``` 
         31           16 15    8 7      0
        +---------------+-------+-------+
 EAX -> |         AX -> |   AH  |   AL  |   # accumulator
        +---------------+-------+-------+
 EBX -> |         BX -> |   BH  |   BL  |   # base
        +---------------+-------+-------+
 ECX -> |         CX -> |   CH  |   CL  |   # counter
        +---------------+-------+-------+
 EDX -> |         DX -> |   DH  |   DL  |   # data
        +---------------+-------+-------+
 ESI -> |         SI -> |               |   # source index
        +---------------+---------------+    
 EDI -> |         DI -> |               |   # destination index
        +---------------+---------------+
 ESP -> |         SP -> |               |   # stack pointer: memoria LIFO, per gestire sottoprogrammi
        +-------------------------------+
 EBP -> |         BP -> |               |   # base pointer
        +-------------------------------+
```
## registri di stato: riservati a compiti speciali
```
         31       11 10  9  8  7  6     4     2     0
        +--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+ 
 EIP -> |                                            |   # istruction pointer o program counter: indirizzo prossima istruzione, al reset iniziale contenuto fissato
        +--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+ 
 EF  -> |  ...   |OF|DF|IF|TF|SF|ZF|  |AF|  |PF|  |CF|   # extended flag
        +--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+ 
```
Operazioni:
- su numeri interi: guardare OF, SF, ZF
- su numeri naturali: guardare CF, ZF

Condizioni al reset:
- EIP vale 0xFFFF0000
       - la prima istruzione si trova lì
       - le celle da lì in poi devono essere implementate in ROM
- in EF i flag che ci interessano valgono 0