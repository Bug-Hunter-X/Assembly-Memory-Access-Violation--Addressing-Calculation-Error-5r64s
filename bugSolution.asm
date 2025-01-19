section .data

;Example variables to avoid the memory access errors.
array dd 10,20,30,40,50,60,70,80,90,100
array_length equ ($-array)/4 ;Size of array in DWORDs

section .text
    global _start

_start:
    mov ecx, 0 ; index to start with (0)

loop_start:
    cmp ecx, array_length ; compare the current index against the array length
jge loop_end ; jump to loop_end if index exceeds the array bounds

    mov ebx, array ;load the base address of the array to ebx
    mov eax, [ebx + ecx*4] ;access the array element at the calculated address, using correct scaling.
    ;Do something with eax (the accessed element)
    add ecx, 1 ; increment index
    jmp loop_start ; jump to loop_start

loop_end:
    ;program termination code
    mov eax, 1
    xor ebx, ebx
    int 80h