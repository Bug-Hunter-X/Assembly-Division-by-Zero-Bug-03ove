```assembly
mov eax, 10
mov ebx, 0
cmp ebx, 0
je zero_division ; Jump to error handler if divisor is zero
div ebx
jmp end_division ; Jump to the end if division successful

zero_division:
; Handle the division by zero error here (e.g., display an error message and exit)
mov eax, 1 ; Exit code
mov ebx, 0 ; Exit code
int 80h

end_division:
; Continue execution after successful division
```