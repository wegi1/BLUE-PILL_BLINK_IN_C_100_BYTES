
#include "stm32f10x.h"



int main(void)
{


    RCC->APB2ENR |= RCC_APB2ENR_IOPCEN;

    GPIOC->CRH = 0x44144444;




    uint32_t delay;

    while(1)
    {
        GPIOC->ODR ^= GPIO_ODR_ODR13;
        for(delay = 100000; delay; delay--) {};
    }
}
