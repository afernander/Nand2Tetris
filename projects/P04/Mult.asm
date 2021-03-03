

    @2
    M=0
(MULT)
    @1
    D=M
    @END
    D;JLE
    @0
    D=M
    @2
    M=M+D
    @1
    M=M-1
    @MULT
    0;JMP
(END)
    @END
    0;JMP