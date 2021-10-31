org 07c00h 

    mov ax,cs

    mov ds,ax

    mov es,ax

    call DisplayString    ;定义打印字符串的函数

    jmp $     ;使程序进入死循环

DisplayString:

    mov ax,PrintMessage

    mov bp,ax      

    mov cx,16      

    mov ax,01301h 

    mov bx,000ch    

    mov dl,0

    int 10h      ;采用10h中断

    ret

PrintMessage:  db "Hello, OS World!"

times 510-($-$$)  db 0      ;填充剩下的空间，使生成的二进制代码恰好为512字节

dw 0xaa55          ;到达魔数，MBR结束标志