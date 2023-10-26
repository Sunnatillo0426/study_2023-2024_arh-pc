; hello.asm                             
SECTION .data                        ;Начало секции данных
  hello: DB 'Махмудов Суннатилло',10 ; 'Махмудов Суннатилло! плюс
                                     ;симбол перевода строки
  helloLen:  EQU $-hello             ; Длина строки hello
  
  SECTION .text      ;начало секции кода
     GLOBAL _start
     
   _start:           ;Точка входа в программу 
       mov eax,4        ; Точка входа в программу             
       mov ebx,1        ; Системный вызов для записи (sys_write)
       mov ecx,hello    ; Описател файла '1' - стандартный вывод
       mov edx,helloLen ; Адрес строки hello
       int 80h          ; вызов ядра
       
       mov eax,1        ; Системный вызов для выхода (system_exit)
       mov ebx,0        ; Вывод с кодом воздрата '0' (без ошибок)
       int 80h          ; Вызов ядра
