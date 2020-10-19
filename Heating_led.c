/******************************************************************************************************
                                     includes
******************************************************************************************************/

#include"Heating_led.h"

#include "gpio.h"

#include"Coller.h"

#include"Heater.h"

#include "port.h"

//---------------------------------------------
#define NUM_OF_TICKS_PER_ONE_SECOND   (5)
//---------------------------------------------

//=====================================================
static unsigned char        one_second_time = 0  ;

static t_Heating_Led_Status heating_led_state = Led_OFF;
//======================================================

void Heating_Led_init(void)
{
   GPIO_InitPortPin(HEATING_LED_PORT,HEATING_LED_pin,GPIO_OUT);
}

void Heating_Led_Update(void)
{

    if(Get_Coller_Status() ==  Coller_OFF && Get_Heater_Status() == Heater_OFF )
      {

          Set_Heating_Led(Led_OFF);

      }
    else if( Get_Heater_Status() == Heater_ON)
       {
           one_second_time++;
          //------------------------------------------------------------------
          if(one_second_time == NUM_OF_TICKS_PER_ONE_SECOND)
            {
               one_second_time =0;

              if(heating_led_state   == Led_OFF) {heating_led_state = Led_ON;  }
              else                               {heating_led_state = Led_OFF; }

              Set_Heating_Led(heating_led_state);

            }
           //-------------------------------------------------------------------
       }
    else if(Get_Coller_Status() ==  Coller_ON)
        {
            Set_Heating_Led(Led_ON);
        }

}


void Set_Heating_Led( t_Heating_Led_Status state)
{
    GPIO_SetPortPinState(HEATING_LED_PORT,HEATING_LED_pin,state);
}

t_Heating_Led_Status Get_Heating_Led(void)
{
    unsigned char ret=0;

    ret=GPIO_GetPortPinState(HEATING_LED_PORT,HEATING_LED_pin);

    return ret;
}

