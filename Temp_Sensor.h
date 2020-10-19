#ifndef TEMP_SENSOR_H_INCLUDED
#define TEMP_SENSOR_H_INCLUDED

#include"adc.h"

/*************************************************************************************
@brief : this function is used to initialize temperature sensor (it will initialize ADC module) .
@param : void
@ret   : void
***************************************************************************************/

void Temp_Sensor_Init(void);


/*************************************************************************************
@brief : this function is used as temperature sensor task that ill be called every 100ms .
@param : void
@ret   : void
***************************************************************************************/

void Temp_Sensor_Update(void);


/*************************************************************************************
@brief : this function is used to return temperature value .
@param : void
@ret   : unsigned long
***************************************************************************************/

unsigned long Get_Temp_Res(void);


#endif // TEMP_SENSOR_H_INCLUDED
