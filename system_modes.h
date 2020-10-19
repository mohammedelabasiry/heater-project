#ifndef SYSTEM_MODES_H_INCLUDED
#define SYSTEM_MODES_H_INCLUDED


#define NUM_OF_TICKS_PER_5_SECOND 100

/******************************************************************************************************
                                     includes
******************************************************************************************************/
#include"PB.h"

#include"setting_temp.h"


/************************(this enum is used to hold all system modes)********************************/

typedef enum{

    idle,

    normal,

    Setting_Temp,

}SYSTEM_Modes;


/******************************************************************************************************
@brief : this function is used to initialize the system mode it will set initial mode for the system .
@param : SYSTEM_Modes , init_mode  , this variable is used to hold the initial mode of the system
@ret   : void
*******************************************************************************************************/

void SYSTEM_init(SYSTEM_Modes init_mode);


/******************************************************************************************************
@brief : this function is used as task of system modes module and it ill be called every 20 ms .
@param : void
@ret   : void
*******************************************************************************************************/

void SYSTEM_update(void);


/*************************************************************************************
@brief : this function is used to get the current system mode  .
@param : void
@ret   : SYSTEM_Modes , used to return the current mode of the system.
***************************************************************************************/

SYSTEM_Modes SYSTEM_GetMode();


/****************************************************************************************
@brief : this function is used to the set system mode  .
@param : SYSTEM_Modes , mode , used to pass the mode that will be set .
@ret   : void
******************************************************************************************/

void SYSTEM_SET_Mode(SYSTEM_Modes mode);


#endif // SYSTEM_MODES_H_INCLUDED
