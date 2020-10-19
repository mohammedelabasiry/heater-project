
/******************************************************************************************************
                                     includes
******************************************************************************************************/
#include"gpio.h"
#include"Coller.h"
#include"Heater.h"
#include"setting_temp.h"
#include"system_modes.h"
#include"Temp_Sensor.h"
#include "port.h"

void Coller_Init(void)
{
    GPIO_InitPortPin(COOLER_PORT,COOLER_PIN,GPIO_OUT);
}


void Coller_Update(void)
{


    if(SYSTEM_GetMode() == idle || SYSTEM_GetMode() == Setting_Temp)
    {
        Set_Coller(Coller_OFF);

    }
    else
    {
        //------------------------------------------------------------------------------------------------------------//
        if((unsigned char)Get_Temp_Res() >=  ((GET_settingTemp()) + 5)  &&  Get_Heater_Status() ==Heater_OFF )
          {
              Set_Coller(Coller_ON);
          }
          else if((unsigned char)Get_Temp_Res() == ((GET_settingTemp()) - 5))
          {
              Set_Coller(Coller_OFF);
          }
       //------------------------------------------------------------------------------------------------------------//


     }

}


void Set_Coller(t_Coller_Status ststus)
{

    GPIO_SetPortPinState(COOLER_PORT,COOLER_PIN,ststus);

}


t_Coller_Status Get_Coller_Status(void)
{
     unsigned char ret=0;

     ret=GPIO_GetPortPinState(COOLER_PORT,COOLER_PIN);

     return ret;

}
