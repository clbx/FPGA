;#1 Move 1,2,4,8 into registers in
;register bank 0. This is R0-R7 which
; is also 0x00 -0x07 in the RAM window
            
;The # sign must be put in front of a
;number to signify it's a number
             
MOV R0,#1 ;Moves the number 1 to R0
MOV R1,#2 ;Moves the number 2 to R1
MOV R2,#4 ;Moves the number 4 to R2
MOV R3,#8 ;Moves the number 8 to R3
             
;Now add them together and put it in
;a 5th register. First let's move R0
;to the acumulator and then we can add
             
MOV A,R0
ADD A,R1
ADD A,R2
ADD A,R3
;Now move it back to a register
MOV R4,A
;R4 now contains 0x0F
           
;Now we want to push R4 to the stack
;I don't belive we can push directly
;from a register so we need to put it
;on the accumulator first
             
;Even though R4 is still in the ACC
;Were going to do this for completion
MOV A,R4
PUSH ACC ;Must be referenced as ACC
         ;Here isntead of A
         ;Don't know why

;To move to a new register bank
;We need to adjust the PSW register
;Bit 3 and 4 control where current
;Register bank is

;Since Bank 1 is where the stack is
;happening, we're going to use bank 2
MOV PSW,#00010000B

;Move values into registers
MOV R0,#16
MOV R1,#32
MOV R2,#64
MOV R3,#128

;Now add them
MOV A,R0
ADD A,R1
ADD A,R2
ADD A,R3

MOV R4,A ; Move it into Register 4

;Now push it to the stack
MOV A,R4
PUSH ACC 

;Now change to use Register Bank 3  
MOV PSW,#00011000B

POP ACC  ;Pop off stack
MOV R0,A ;Move to R0
POP ACC  ;Pop off stack
MOV R1,A ;Move to R1

;Now add

MOV R0, A
ADD A,R1

;Move to memory location 30
MOV 30H,A








             
             
