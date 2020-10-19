#ifndef HEATING_LED_H_INCLUDED
#define HEATING_LED_H_INCLUDED

/************************(this enum is used to hold all Heating_Led_Status)********************************/

typedef enum
{
    Led_OFF,
    Led_ON
}t_Heating_Led_Status;


/******************************************************************************************************
@brief : this function is used to initializing the heating led
@ret   : void
*******************************************************************************************************/

void Heating_Led_init(void);


/******************************************************************************************************
@brief : this function is used task of heating led
@param : void
@ret   : void
*******************************************************************************************************/


void Heating_Led_Update(void);


/******************************************************************************************************
@brief : this function is used to set the heating led
@param : status >>>> of data type  >>>  t_Heating_Led_Status
@ret   : void
*******************************************************************************************************/


void Set_Heating_Led(t_Heating_Led_Status state);


/******************************************************************************************************
@brief : this function is used to set heating led
@param :void
@ret   : t_Heating_Led_Status >>> which contain the status of heating led
*******************************************************************************************************/


t_Heating_Led_Status Get_Heating_Led(void);


#endif // HEATING_LED_H_INCLUDED
