#ifndef I2C_H_INCLUDED
#define I2C_H_INCLUDED


#include<pic16f877a.h>


#define _XTAL_FREQ 8000000


/****************************************************************************************
@brief : this function is used to initialize the i2c module   .
@param : const unsigned long , feq_K , used to hold the ferquancy  .

@ret   : void.
******************************************************************************************/

void I2C_Init(const unsigned long feq_K);


/****************************************************************************************
@brief : this function is used to write  value in certain address at the eeprom  .
@param : unsigned int , addr , used to hold the address of the data that will be written  .
         unsigned char , val , used to hold  the data that will be written  .

@ret   : unsigned char , it returns the data .
******************************************************************************************/

void I2C_Hold();


/****************************************************************************************
@brief : this function is used to start I2C frame .
@param : void

@ret   : void.
******************************************************************************************/

void I2C_Begin();

/****************************************************************************************
@brief : this function is used to send stop I2C frame .
@param : void

@ret   : void.
******************************************************************************************/

void I2C_End();


/****************************************************************************************
@brief : this function is used to send data from i2c  .
@param : unsigned char , data , used to pass the data that will be written .

@ret   : void
******************************************************************************************/

void I2C_Write(unsigned data);


/****************************************************************************************
@brief : this function is used to read the value   .
@param : unsigned short , ack , used to pass ack state.

@ret   : unsigned short , it returns the data .
******************************************************************************************/

unsigned short I2C_Read(unsigned short ack);


#endif // I2C_H_INCLUDED
