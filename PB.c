#include "PB.h"
#include "gpio.h"
#include "port.h"

#define NUMBER_OF_SAMPLE    (2)
#define NUMBER_OF_PUSH_BUTTONS  (4)

#define PB_PRESSED_VOLTAGE  (0)
#define PB_RELEASED_VOLTAGE  (1)


typedef struct
{
    unsigned char samples[NUMBER_OF_SAMPLE];
    tPB_State state;
}tPB_Info;

//static int x[10];
static tPB_Info pb_info[NUMBER_OF_PUSH_BUTTONS];


void PB_Init(tPB pb, tPB_State initial_state)
{
    /* Initialize hw pins */
    switch(pb)
    {
    case PB_PLUS:
        GPIO_InitPortPin(PB_PLUS_PORT, PB_PLUS_PIN, GPIO_IN);
        break;
    case PB_MINUS:
        GPIO_InitPortPin(PB_MINUS_PORT, PB_MINUS_PIN, GPIO_IN);
        break;
    case PB_ON_OFF:
        GPIO_InitPortPin(PB_ON_OFF_PORT, PB_ON_OFF_PIN, GPIO_IN);
        break;
    case PB_UNUSED_2:
        GPIO_InitPortPin(PORT_B, 3, GPIO_IN);
        break;
    default:
        /* Should not be here */
        break;
    }

    /* Initialize state */
    pb_info[pb].state = initial_state;

    /* Initialize samples */
    switch (initial_state)
    {
    case PB_RELEASED:
    case PB_PRE_RELEASED:
        pb_info[pb].samples[0] = PB_RELEASED_VOLTAGE;
        pb_info[pb].samples[1] = PB_RELEASED_VOLTAGE;
        break;
    case PB_PRESSED:
    case PB_PRE_PRESSED:
        pb_info[pb].samples[0] = PB_PRESSED_VOLTAGE;
        pb_info[pb].samples[1] = PB_PRESSED_VOLTAGE;
        break;
    }
}

void PB_Update(void)
{
    tPB current_button = PB_PLUS;
    for (current_button = PB_PLUS; current_button < PB_UNUSED_2; current_button++)
    {
        /* Update samples */
        pb_info[current_button].samples[0] = pb_info[current_button].samples[1];

        switch(current_button)
        {
         case PB_PLUS:
            pb_info[current_button].samples[1] = GPIO_GetPortPinState(PB_PLUS_PORT, PB_PLUS_PIN);
        break;
        case PB_MINUS:
            pb_info[current_button].samples[1] = GPIO_GetPortPinState(PB_MINUS_PORT, PB_MINUS_PIN);
            break;
        case PB_ON_OFF:
            pb_info[current_button].samples[1] = GPIO_GetPortPinState(PB_ON_OFF_PORT, PB_ON_OFF_PIN);
            break;
        case PB_UNUSED_2:
            pb_info[current_button].samples[1] = GPIO_GetPortPinState(PORT_B, 3);
            break;
        default:
            /* Should not be here */
            break;
        }

        /* Update state */
        switch(pb_info[current_button].state)
        {
        case PB_RELEASED:
            if((pb_info[current_button].samples[0] == PB_PRESSED_VOLTAGE) &&
               (pb_info[current_button].samples[1] == PB_PRESSED_VOLTAGE))
            {
                pb_info[current_button].state = PB_PRE_PRESSED;
            }
            break;
        case PB_PRE_PRESSED:
            if(pb_info[current_button].samples[1] == PB_PRESSED_VOLTAGE)
            {
                pb_info[current_button].state = PB_PRESSED;
            }
            break;
        case PB_PRESSED:
            if((pb_info[current_button].samples[0] == PB_RELEASED_VOLTAGE) &&
               (pb_info[current_button].samples[1] == PB_RELEASED_VOLTAGE))
            {
                pb_info[current_button].state = PB_PRE_RELEASED;
            }
            break;
        case PB_PRE_RELEASED:
            if(pb_info[current_button].samples[1] == PB_RELEASED_VOLTAGE)
            {
                pb_info[current_button].state = PB_RELEASED;
            }
            break;
            break;
        default:
            /* Should not be here */
            break;
        }

    }

}

tPB_State PB_GetState(tPB pb)
{
    tPB_State ret = PB_RELEASED;

    ret = pb_info[pb].state;

    return ret;
}
