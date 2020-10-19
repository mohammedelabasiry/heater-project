#ifndef SETTING_TEMP_H_INCLUDED
#define SETTING_TEMP_H_INCLUDED

#include"PB.h"

#include"system_modes.h"

#include"ssd.h"

#include"ext_eeprom.h"



/****************************************************************************************
@brief : this function is used to initialize the setting temp module
         (it will set initial temp and passed it to eeprom)  .

@param : unsigned char , init_temp , used to pass the initial setting temp.
@ret   : void
******************************************************************************************/

void settingTemp_init(unsigned char init_temp);

/***********************************************************************************************
@brief : this function is used as task of setting temp mode and it will be called every 20ms  .
@param : void .
@ret   : void
************************************************************************************************/

void settingTemp_update();




/****************************************************************************************
@brief : this function is used to the get the last setting temp  .
@param : void .
@ret   : unsigned char.
******************************************************************************************/

unsigned char GET_settingTemp();




/*******************************************************************************************************************
@brief : this function is used to get the time that PUSH_BUTTON minus and plus not pressed (in setting temp mode) .
@param : void .
@ret   : unsigned int.
******************************************************************************************/

unsigned int GET_NOT_pressed_time();



#endif // SETTING_TEMP_H_INCLUDED
