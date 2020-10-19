
/******************************************************************************************************
                                     includes
******************************************************************************************************/
#include "Heater.h"
#include"system_modes.h"
#include"setting_temp.h"
#include"Temp_Sensor.h"
#include"Coller.h"
#include "port.h"

void Heater_Init(void)
{
     GPIO_InitPortPin(HEATER_PORT,HEATER_PIN,GPIO_OUT);
}

void Heater_Update(void)
{
     if(SYSTEM_GetMode() == idle || SYSTEM_GetMode() == Setting_Temp)
       {
           Set_Heater(Heater_OFF);

       }
    else
       {
           //-------------------------------------------------------------------------------------------------------
           if((unsigned char)Get_Temp_Res() < ((GET_settingTemp()) + 5) && (Get_Coller_Status() == Coller_OFF))
             {
                Set_Heater(Heater_ON);
             }
           else if((unsigned char)Get_Temp_Res() == (GET_settingTemp()) + 5){  Set_Heater(Heater_OFF); }
           //--------------------------------------------------------------------------------------------------------
       }

}

void Set_Heater(t_Heater_Status status)
{
    GPIO_SetPortPinState(HEATER_PORT,HEATER_PIN,status);
}


t_Heater_Status Get_Heater_Status(void)
{
    unsigned char ret=0;


    ret=GPIO_GetPortPinState(HEATER_PORT,HEATER_PIN);


    return ret;

}
