.386
.model flat, c

; This function does a ^ b

.code
	power	proc
			push ebp
			mov ebp, esp

			mov eax, [ebp + 8]
			mov ecx, [ebp + 12]

LP:		
			imul eax, eax
			dec ecx
			loop LP

			pop ebp

			ret
	power	endp
	end