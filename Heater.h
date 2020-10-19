#ifndef HEATER_H_INCLUDED
#define HEATER_H_INCLUDED

/******************************************************************************************************
                                     includes
******************************************************************************************************/

#include "gpio.h"

/************************(this enum is used to hold all Heater_Status)********************************/
typedef enum
{
    Heater_OFF,
    Heater_ON
}t_Heater_Status;

/******************************************************************************************************
@brief : this function is used to set initialize the heater
@param : void
@ret   : void
*******************************************************************************************************/

void Heater_Init(void);


/******************************************************************************************************
@brief : this function is used as task of heater
@param : void
@ret   : void
*******************************************************************************************************/

void Heater_Update(void);


/******************************************************************************************************
@brief : this function is used to set heater status
@param : status >>>> of data type  >>>  t_Heater_Status
@ret   : void
*******************************************************************************************************/

void Set_Heater(t_Heater_Status status);


/******************************************************************************************************
@brief : this function is used to get heater status
@param : status >>>> of data type  >>>  t_Heater_Status
@ret   : t_Heater_Status
*******************************************************************************************************/

t_Heater_Status Get_Heater_Status(void);



#endif // HEATER_H_INCLUDED
