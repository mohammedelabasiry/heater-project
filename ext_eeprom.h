#ifndef EXT_EEPROM_H_INCLUDED
#define EXT_EEPROM_H_INCLUDED

#include <pic16f877a.h>

#include "i2c.h"


/****************************************************************************************
@brief : this function is used to get the value in certain address at the eeprom  .
@param : unsigned int , addr , used to hold the address of the data that will be read  .
@ret   : unsigned char , it returns the data .
******************************************************************************************/

unsigned char e2pext_r(unsigned int addr);


/****************************************************************************************
@brief : this function is used to write  value in certain address at the eeprom  .
@param : unsigned int , addr , used to hold the address of the data that will be written  .
         unsigned char , val , used to hold  the data that will be written  .

@ret   : unsigned char , it returns the data .
******************************************************************************************/

void e2pext_w(unsigned int addr, unsigned char val);

#endif // EXT_EEPROM_H_INCLUDED
