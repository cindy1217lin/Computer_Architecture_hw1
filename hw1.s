.data
argument: .word   27
str1: .string "true"
str2: .string "false"

.text
main:
    lw a0, argument      # load the argument from static data
    jal isPowerOfThree   # Jump to 'isPowerOfThree' and link
    li a7, 10            # exit program
    ecall

isPowerOfThree:
    addi t0, x0, 1       # t0 = 1
    beq a0, x0, else     # if a0 == 0, go to 'else'
    beq a0, t0, then     # if a0 == 1, go to 'then'
    addi t0, x0, 3       # t0 = 3
    rem t1, a0, t0       # t1 = a0 % 3
    bne t1, x0, else     # if t1 != 0, go to 'else'
    j loop               # jump to 'loop'
    
    
loop:
   beq a0, t0, then      # if a0 == 3, go to 'then'
   div a0, a0, t0        # a0 = a0 / t0
   rem t1, a0, t0        # t1 = a0 % 3
   bne t1, x0, else      # if t1 != 0, go to 'else'
   j loop                # jump to 'loop'
    
    
then:
    la a0, str1          # load string
    addi a7, x0, 4       # print string
    ecall
    jr ra                # go back to main

    
else:
    la a0, str2          # load string
    addi a7, x0, 4       # print string
    ecall
    jr ra                # go back to main
        
    


    

      
