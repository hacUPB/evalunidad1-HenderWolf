// SARA MARCELA POSADA RENDON
// 000416183
// sara.posadar@upb.edu.co

(INICIO)
		@KBD
		D=M
		@84
		D=D-A

		@VERTICAL
		D;JEQ

		@KBD
		D=M
		@67
		D=D-A

		@SETCL
		D;JEQ

		@INICIO
		0;JMP

(HORIZONTAL)
		@20480
		D=A
		@coord
		M=D
		@32
		D=A
		@cont
		M=D
		@1
		D=A
		@salto
		M=D
		@color
		M=-1
		@if
		M=1

		@RECT
		0;JMP

(VERTICAL)
		@16400 
		D=A 
		@coord
		M=D
		@256 
		D=A
		@cont
		M=D
		@32
		D=A
		@salto
		M=D
		@256
		D=A
		@color
		M=D
		@if
		M=0

		@RECT
		0;JMP
(SETCL)
        @16384
        D=A
        @coord
        M=D 
        @8192
        D=A
        @cont
        M=D
        @1
        D=A 
        @salto
        M=D
        @color
        M=0

        @RECT
        0;JMP

(RECT)
        @coord
        D=M
        @pscreen
        M=D

(PINTAR)
		@cont
        D=M 

        @FINAL
        D;JEQ

        @color
        D=M 
        @pscreen
        A=M 
        M=D
        @cont
        M=M-1
        @salto
        D=M
        @pscreen
        M=M+D

        @PINTAR
        0;JMP

(FINAL)
        @if
        D=M 
		
        @HORIZONTAL
        D;JEQ  
		
        @INICIO
        0;JMP

		
	

