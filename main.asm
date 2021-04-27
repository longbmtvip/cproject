
#include <REGX51.H>




      org   0000h
      jmp   MAIN


      org   0100h
MAIN:	
	lcall blink
	lcall traiphai
	lcall nhayxenke
	lcall sangtungport
	sjmp 	main
blink:
	mov r3, #5h
loop:
	mov p0, #00h
	mov p1, #00h
	mov p2, #00h
	mov p3, #00h
	lcall delay
	mov p1, #0ffh
	mov p2, #0ffh
	mov p3, #0ffh
	mov p0, #0ffh
	lcall delay
	djnz r3,loop
ret

;
traiphai:
	mov r3, #5h
loopa:
	mov p0, #00h
	mov p1, #00h
	mov p2, #0ffh
	mov p3, #0ffh
	lcall delay
	mov p0, #0ffh
	mov p1, #0ffh
	mov p2, #00h
	mov p3, #00h
	lcall delay
	djnz r3,loopa
ret
;

nhayxenke:
	mov r3, #5h 
loopb:	
   
	mov p1,#0aah
	mov p2,#55h
	mov p3,#0aah
	mov p0,#55h
	mov a,#00h
	lcall delay       
   	mov p1,#55h
	mov p2,#0aah
	mov p3,#55h
	mov p0,#0aah
	mov a,#00h
	lcall delay
 
	djnz r3,loopb
    ret
;
sangtungport:
	 mov r3, #2h
loopc:

	mov p1, #0ffh
	mov p2, #0ffh
	mov p3, #0ffh
	mov p0, #0ffh
	lcall delay2
	
	mov p1, #0ffh
	mov p3, #0ffh
	mov p2, #0ffh
	mov p0, #00h
	lcall delay2
	
	mov p2, #0ffh
	mov p0, #0ffh
	mov p3, #0ffh
	mov p1, #00h
	lcall delay2
	
	mov p3, #0ffh
	mov p0, #0ffh
	mov p1, #0ffh
	mov p2, #00h
	lcall delay2
	
	mov p2, #0ffh
	mov p0, #0ffh
	mov p1, #0ffh
	mov p3, #00h
	lcall delay2
	
	djnz r3,loopc
ret
;

delay:
mov r1,#255
loop1:
mov r2,#255
loop2:
nop
nop
nop
nop
nop
djnz r2,loop2
djnz r1,loop1
ret
;
delay2:
mov r1,#255
loop3:
mov r2,#255
loop4:
nop
nop
nop
nop
nop
nop
nop
djnz r2,loop4
djnz r1,loop3
ret

;
      END
