(KEY_EVENT)//se guardan valores importantes como el tamaño del cuadradoen otras variables para no afectar su funcionamiento
//tamaño cuadrado
@2
D=A 
@R0
M=D
@32
D=A 
@R1
M=D
//el valor de screen para poder imprimir en pantalla
    @SCREEN
    D=A
    @address
    M=D
    //el valor 67 equivalente a la tecla c
    @67
    D=A
    @R3
    M=D
    //el valor  84 equivalente a la tecla t
    @84
    D=A 
    @R8
    M=D
    //valores operadores triangulo
    @1
    D=A 
    @R9
    M=D
    @R10
    M=D
    //TAMAÑO TRIANGULO
    @16
    D=A 
    @R12
    M=D
    //el valor 32 para hacer operaciones de pantalla
    @32
    D=A 
    @R4
    M=D
    @R6
    M=D
    @R11
    M=D
    @R13
    M=D
    //valor del tamaño del largo delcuadrado
    @R1
    D=M
    @R7
    M=D
    //VER SI ES C
    @KBD
    D=M
    @R3
    D=D-M
    @C_COL
    D;JEQ
    //VER SI ES T
    @KBD
    D=M
    @R8
    D=D-M
    @TRIANGULO
    D;JEQ
    //ver si hay tecla
    @KBD
    D=M
    @KEY_EVENT
    D;JEQ
(C_COL)// loop para las columnas del cuadrado
    @R0
    D=M 
    @R5
    M=D 
(C_ROW)//loop para las rows del cuadrado
    @address
    D=M
    M=M+1
    A=D
    M=-1
    @R5
    D=M
    M=M-1
    @C_ROW
    D;JNE
    @SCREEN
    D=A
    @address
    M=D
    //col
    @R4
    D=M
    @R6
    M=M+D
    D=M
    @address
    M=M+D
    @R7
    D=M
    M=M-1
    @C_COL
    D;JNE
    @KEY_PUSHED_EVENT
    D;JMP


(TRIANGULO)
    @SCREEN
    D=A
    @address
    M=D 
   (IZQ)
        @R10
        D=M
        @address
        A=M
        M=D
        @R10
        M=M+D
        M=M+1
        @SCREEN
        D=A
        @address
        M=D
        @R13
        D=M
        @address
        M=M+D 
        @R11
        D=M
        @R13
        M=M+D
        @R12
        M=M-1
        D=M
        @IZQ
        D;JNE
//poner pantalla en blanco si ninguna tecla esta ciendo precionada
(KEY_PUSHED_EVENT)
    @KBD
    D=M
    @KEY_PUSHED_EVENT
    D;JNE
(WHITE)
    @8193
    D=A
    @limit
    M=D
    @i
    M=0
(WHITE_LOOP)
    @limit
    M=M-1
    D=M
    @KEY_EVENT
    D;JLE
    @SCREEN
    D=A
    @i
    A=D+M
    M=0
    @i
    M=M+1
    @WHITE_LOOP
    0;JMP
