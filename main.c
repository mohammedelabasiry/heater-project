#include <pic16f877a.h>
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

unsigned int  __at(0x2007) CONFIG = _HS_OSC & _WDT_OFF & _PWRTE_ON & _BODEN_OFF & _LVP_OFF & _CPD_OFF & _WRT_OFF & _DEBUG_OFF & _CP_OFF;


void main(void)
{
    PB_Init(PB_MINUS,   PB_RELEASED);
    PB_Init(PB_PLUS,   PB_RELEASED);
    PB_Init(PB_ON_OFF,   PB_RELEASED);

    SYSTEM_init(idle);
    Temp_Sensor_Init();
    I2C_Init(448);
    settingTemp_init(60);

    Coller_Init();
    Heater_Init();

    Heating_Led_init();
    SSD_Init(SSD_N,SSD_OFF,SSD_NULL);
    SSD_Init(SSD_R,SSD_OFF,SSD_NULL);


    TMR0_Init();
    TMR0_Start();

    while(1)
    {

    }


}
