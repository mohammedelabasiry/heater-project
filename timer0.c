#include "timer0.h"
#include "Temp_Sensor.h"
#include "ssd.h"
#include "gpio.h"
#include"system_modes.h"
#include"setting_temp.h"
#include"Coller.h"
#include"Heater.h"
#include"Heating_led.h"
#include"PB.h"
#include "main.h"
#include <pic16f877a.h>



void TMR0_Init(void)
{
    TMR0_SET_STATE(1);          // TMR0 is off
    TMR0_SET_PRE_SCALER(7);     // N = 256

}

void TMR0_Start(void)
{

    TMR0_SET_INT_STATE(1);
    GIE = 1;
    TMR0_SELECT_CLOCK_SOURCE(0); // Internal oscillator
    TMR0_SET_STATE(0);          // TMR0 is on
}


void TMR0_Update(void) __interrupt 0 // @ 5 ms
{
    static unsigned char counter = 0 , counter_2=0;

    SSD_Update();// @ 5 ms

    /* Tasks */
    if (counter == 20)
    {
        PB_Update();
        SYSTEM_update();
        settingTemp_update();

       counter=0;
    }

    if(counter_2 == 100)
    {
       Temp_Sensor_Update();
       Heating_Led_Update();
       Heater_Update();
       Coller_Update();

       counter_2 =0;

    }

    counter = counter + TMR0_TICK_MS;
    counter_2 = counter_2 + TMR0_TICK_MS;

    TMR0_CLEAR_FLAG();
    TMR0_SET_TIME_MS(TMR0_TICK_MS);

    return;
}

