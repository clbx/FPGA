;This technically doesn't follow the steps of the lab
;But i think they're stupid and don't make much sense
;This seems like a much better way to handle it. That 
;doesn't include sitting around with a floating stack 
;pointer up our ass



MOV SP,#4FH ;Move the stack pointer down the memory map. Keeps it out of the way

;-=[1]=-             
MOV R0,#1 ;Moves the number 1 to R0
MOV R1,#2 ;Moves the number 2 to R1
MOV R2,#4 ;Moves the number 4 to R2
     
;Constants are defined with a leading #


;-=[2]=-        
MOV A,R0 ;Move R0 to the accumulator for addition
ADD A,R1 ;Add R1
ADD A,R2 ;Add R2

MOV R3,A ;Move it to Register 3

;-=[3]=-
PUSH 3 ;Push register 4 to the stack


;-=[4]=-

;To move to a new register bank We need to adjust the PSW register 
;Bit 3 and 4 control where current Register bank is
;Move to bank 1;
MOV PSW,#00001000B



;-=[5]=-
;Move values into registers
MOV R0,#16
MOV R1,#32
MOV R2,#64

;-=[6]=-
;Now add them
MOV A,R0
ADD A,R1
ADD A,R2

MOV R3,A ; Move it into Register 3

;-=[7]=-
PUSH 3 ;Push register 3 to the stack


;-=[8]=-
MOV PSW,#00010000B ;Move to register bank 2

;-=[9]=-
POP 0  ;Pop off stack to register 2

;-=[10]=-
POP 1  ;Pop off stack to register 1


;-=[11]=-
MOV R0, A ;Now add
ADD A,R1

MOV 30H,A ;Putting it in memory location 


MOV PSW,#00011000B ;Moving to bank 3

MOV R0, #0 ;R0 is our index, it will be incremented to keep track of which location to check
MOV A, #17H ;Our max index, this will be decremented to keep track of the loop

LOOP:
	MOV R1, A
	MOV A, @R0
	PUSH ACC
	MOV A,R1
	INC R0
	DEC A
	JNZ LOOP
	









             
             
