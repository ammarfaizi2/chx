<?php

for ($i=2; $i <= 12; $i++) { 
	echo "
	inc rdi
	mov al, [rdi]
	add al, {$i}
	add rsi, rax
	mov [rdx + {$i}], al
";
}
