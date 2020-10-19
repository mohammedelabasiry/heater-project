#ifndef COLLER_H_INCLUDED
#define COLLER_H_INCLUDED

/******************************************************************************************************
                                     includes
******************************************************************************************************/
#include "gpio.h"

/************************(this enum is used to hold all Coller_Status )********************************/

typedef enum
{
    Coller_OFF,
    Coller_ON
}t_Coller_Status;

/******************************************************************************************************
@brief : this function is used to initialize the coller
@param : void
@ret   : void
*******************************************************************************************************/

void Coller_Init(void);

/******************************************************************************************************
@brief : this function is used as task of coller
@param : void
@ret   : void
*******************************************************************************************************/

void Coller_Update(void);

/******************************************************************************************************
@brief : this function is used to set  coller status
@param : status >>>> of data type  >>>  t_Coller_Status
@ret   : void
*******************************************************************************************************/

void Set_Coller(t_Coller_Status status);

/******************************************************************************************************
@brief : this function is used to get the coller status
@param : void
@ret   : t_Coller_Status >>> which contain the status of coller
*******************************************************************************************************/

t_Coller_Status Get_Coller_Status(void);




#endif // COLLER_H_INCLUDED
