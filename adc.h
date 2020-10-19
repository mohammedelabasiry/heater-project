#ifndef __ADC_H__
#define __ADC_H__

#include <pic16f877a.h>


//--------------------------------------------------------------------------------------------------------------------------------


/***********************************************************************************************
@brief : this function is used to initialize ADC module   .
@param : unsigned char , clock_source , used to pass the clock source .
@ret   : void
************************************************************************************************/


void ADC_Init(unsigned char clock_source);


/***********************************************************************************************
@brief : this function do not use yet   .
@param : void .
@ret   : void
************************************************************************************************/

void ADC_Update(void);


/***********************************************************************************************
@brief : this function is used to get the result of certain channe .
@param : unsigned char , channel , used to pass the channel that will get its result  .
@ret   : unsigned int  , return ADC result .
************************************************************************************************/

unsigned int ADC_GetResult(unsigned char channel);

/***********************************************************************************************
@brief : this function is used to start the conversion in case of ADC interrupt enable  .
@param : unsigned char ,channel  .
@ret   : void
************************************************************************************************/

void Start_conversion_Int(unsigned char channel);

#endif // __ADC_H__
