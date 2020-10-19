#include"Temp_Sensor.h"
#include"gpio.h"
#include "adc.h"
#include "ssd.h"
#include "utilities.h"
#include"system_modes.h"

unsigned long Temp_Value = 0;

void Temp_Sensor_Init(void)
{
    ADC_Init(1);
}

void Temp_Sensor_Update(void)
{
   if( SYSTEM_GetMode() ==  normal)
   {


    unsigned long t=Get_Temp_Res();

    SSD_SetSymbol(SSD_N, ((t%1000)%100)/10);
    SSD_SetSymbol(SSD_R, t%10);

   }

}


unsigned long Get_Temp_Res(void)
{
    unsigned long Temp_Value = 0;

    Temp_Value =(ADC_GetResult(2));
    Temp_Value = (Temp_Value*150*5)/((3*1023)/2);

   return Temp_Value;
}
