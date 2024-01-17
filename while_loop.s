/*
 * This program executes a WHILE loop for values less than or equal to 17
 *
 * The C code would look like this:
 *
 * main()
 * {
 *	int a, b, c;
 *	a = 0;
 * b = 1;
 *	c = 0;
 *
 *	while (a <= 17)
 *	{
 *		a = a + b;
 *		c++;
 *	}
 *
 *      printf("A = %d, B = %d, C = %d\n", a, b, c);
 * }
 */

	.global main

main:
	push {r4, r5, r6, lr}

/* initialize the registers */
/* r4 holds the value of A, r5 holds the value of B, etc */
	
	mov	r4, #0		/* put zero in A */
	missing			/* put one in B  */
	missing			/* put zero in C */

test:
	missing	 	          /* compare A and 17 */
	missing			      /* branch if greater than 0 to "done" */
	add 	r4, r4, r5	  /* A = A + B */
	missing			      /* C = C + 1 */
	missing			      /* branch always to "test" */

done:
    ldr r0, =out_line      /* put string for printf in r0  */
    mov 	r1, r4
    mov 	r2, r5
    mov 	r3, r6
	bl	printf             /* call printf                  */

    mov 	r3, #0
	mov 	r0, r3
	pop	{r4, r5, r6, pc}

	.section .rodata
out_line: .asciz "A = %d, B = %d, C = %d\n"
						
