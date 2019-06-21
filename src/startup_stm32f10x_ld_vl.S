
 #define bgd  40U

    .syntax unified
    .arch armv7-m

    .section .isr_vector
    .global  __isr_vector

__isr_vector:
    .long    __StackTop
    .long    Reset_Handler         /* Reset Handler */

    //.size    __isr_vector, . - __isr_vector

    .text
    .thumb
    .thumb_func
    .align 2
    .globl    Reset_Handler
    .type    Reset_Handler, %function

Reset_Handler:
bl main







    .end
