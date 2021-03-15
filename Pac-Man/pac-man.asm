//ALEJANDRO FERNANDEZ RESTREPO - PARCIAL 1 ORGANIZACION DE COMPUTADORES
//PARA PASAR LA ANIMACION DE LA BOCA ABIERTA A CERRADA OPRIMA P
//PARA PASAR LA ANIMACION DE LA BOCA CERRADA A ABIERTA OPRIMA O
//PARA MOVER EL PACMAN A LA DERECHA OPRIMA -> CUANDO ESTA CON LA BOCA CERRADA
//PARA MOVER EL PACMAN A LA IZZQUIERDA OPRIMA <- CUANDO ESTA CON LA BOCA CERRADA
//RECORDAR PONER EL PROGRAM FLOW EN NO ANIMATION ANTES DE EJECUTARLO EN EL CPU EMULATOR
(KEY_EVENT)

//espacio a la izquierda
@2
D=A 
@R0
M=D 

//valor 32 para operaciones
@32
D=A 
@R1
M=D

//VALOR PRIMERA ILERA
@992
D=A 
@R2
M=D

//VALOR SEGUNDA ILERA
@4088
D=A 
@R3
M=D

//VALOR TERCERA ILERA
@8188
D=A 
@R4
M=D

//VALOR CUARTA ILERA
@16368
D=A 
@R5
M=D

//VALOR QUINTA ILERA
@16256
D=A 
@R6
M=D

//VALOR QUINTA ILERA
@15360
D=A 
@R7
M=D

//VALOR RELLENO ILERA
@16382
D=A 
@R8
M=D

//VALOR O
@79
D=A 
@R10
M=D

//VALOR ->
@132
D=A 
@R14
M=D

//VALOR <-
@130
D=A 
@R13
M=D

//VALOR P
@80
D=A 
@R12
M=D


//VALOR SCREEN
@SCREEN
D=A 
@R15
M=D
@SCREEN
D=A 
@R11
M=D

//LIMPIAR PANTALLA
(WHITE)
@counterwhite     
M=-1
(LOOPWHITE)
@counterwhite
M=M+1
D=M
@SCREEN
A=A+D
M=0
@8191
D=D-A
@LOOPWHITE
D;JNE 

//SCREEN
@R11
D=M
@R15
M=D


//Forma pac-man boca abierta
(PACMAN)
//PRIMERA
@R2 
D=M 
@R15 
A=M 
M=D
//SEGUNDA
@R1
D=M 
@R15 
M=M+D 
@R3
D=M 
@R15 
A=M 
M=D
//TERCERA
@R1
D=M 
@R15 
M=M+D 
@R4
D=M 
@R15 
A=M 
M=D
//CUARTA
@R1
D=M 
@R15 
M=M+D 
@R4
D=M 
@R15 
A=M 
M=D
//QUINTA
@R1
D=M 
@R15 
M=M+D 
@R5
D=M 
@R15 
A=M 
M=D
//SEXTA
@R1
D=M 
@R15 
M=M+D 
@R6
D=M 
@R15 
A=M 
M=D
//SEPTIMA
@R1
D=M 
@R15 
M=M+D 
@R7
D=M 
@R15 
A=M 
M=D
//OCTAVA
@R1
D=M 
@R15 
M=M+D 
@R6
D=M 
@R15 
A=M 
M=D
//NOVENA
@R1
D=M 
@R15 
M=M+D 
@R5
D=M 
@R15 
A=M 
M=D
//DECIMA
@R1
D=M 
@R15 
M=M+D 
@R4
D=M 
@R15 
A=M 
M=D
//ONCEAVA
@R1
D=M 
@R15 
M=M+D 
@R4
D=M 
@R15 
A=M 
M=D
//DOCEAVA
@R1
D=M 
@R15 
M=M+D 
@R3
D=M 
@R15 
A=M 
M=D
//TRECEAVA
@R1
D=M 
@R15 
M=M+D 
@R2
D=M 
@R15 
A=M 
M=D
//VER SI ES P
(P)
@KBD
    D=M
    @R12
    D=D-M
    @P
    D;JNE




(PACMANCERRADO)
//PONER SCREEN
@R11
D=M 
@R15
M=D
//PRIMERA
@R2 
D=M 
@R15 
A=M 
M=D
//SEGUNDA
@R1
D=M 
@R15 
M=M+D 
@R3
D=M 
@R15 
A=M 
M=D
//TERCERA
@R1
D=M 
@R15 
M=M+D 
@R4
D=M 
@R15 
A=M 
M=D
//CUARTA
@R1
D=M 
@R15 
M=M+D 
@R4
D=M 
@R15 
A=M 
M=D
//QUINTA
@R1
D=M 
@R15 
M=M+D 
@R8
D=M 
@R15 
A=M 
M=D
//SEXTA
@R1
D=M 
@R15 
M=M+D 
@R8
D=M 
@R15 
A=M 
M=D
//SEPTIMA
@R1
D=M 
@R15 
M=M+D 
@R8
D=M 
@R15 
A=M 
M=D
//OCTAVA
@R1
D=M 
@R15 
M=M+D 
@R8
D=M 
@R15 
A=M 
M=D
//NOVENA
@R1
D=M 
@R15 
M=M+D 
@R8
D=M 
@R15 
A=M 
M=D
//DECIMA
@R1
D=M 
@R15 
M=M+D 
@R4
D=M 
@R15 
A=M 
M=D
//ONCEAVA
@R1
D=M 
@R15 
M=M+D 
@R4
D=M 
@R15 
A=M 
M=D
//DOCEAVA
@R1
D=M 
@R15 
M=M+D 
@R3
D=M 
@R15 
A=M 
M=D
//TRECEAVA
@R1
D=M 
@R15 
M=M+D 
@R2
D=M 
@R15 
A=M 
M=D



(KEY)

//FLECHAS
 //VER SI O
    @KBD
    D=M
    @R10
    D=D-M
    @WHITE
    D;JEQ

 //VER SI ES ->
    @KBD
    D=M
    @R14
    D=D-M
    @DERECHA
    D;JEQ
    //VER SI ES <-
    @KBD
    D=M
    @R13
    D=D-M
    @IZQ
    D;JEQ
    
//ver si hay tecla
    
    @KEY
    D;JMP


(DERECHA)
@R11
M=M+1
D=M 
@R15
M=D
@WHITE
D;JMP

(IZQ)
@R11
M=M-1
D=M 
@R15
M=D
@WHITE
D;JMP

//ver si hay tecla
    @KBD
    D=M
    @KEY
    D;JEQ