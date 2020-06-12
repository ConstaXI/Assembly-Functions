.386
.model flat, c

; This function sum the elements of an array, the comments may help the code

.code
	array_sum	proc
				; Function Prologue
				push ebp						; no fucking clue, something related with the stack
				mov ebp, esp					; same here
				
				mov ebx, [ebp + 8]				; ebx = ebx, the array adress
				mov eax, 0						; eax = 0, if i didn't do that, the eax would have trash
				mov ecx, [ebp + 12]				; ecx = size, 8, (numer of the elements in the array)

				; Arguments
	LP:
				add eax, [ebx]					; eax += position in array
				add ebx, 4						; ebx += 4
				loop LP							; loop

				; Function Epilogue
				pop ebp							; I think this is for free the stack, or something like that

				ret
	array_sum	endp
	end