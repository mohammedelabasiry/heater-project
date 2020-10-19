#ifndef __TMR_H__
#define __TMR_H__

/*****************************************************************************
@brief : this function is used to initialize timer0 module .
@param : void
@ret   : void
******************************************************************************/

void TMR0_Init(void);

/*************************************************************************************
@brief : this function is used to be called when  timer0 overflow interrupt happens .
@param : void
@ret   : void
***************************************************************************************/

void TMR0_Update(void) __interrupt 0;


/*****************************************************************************
@brief : this function is used to start timer0 module .
@param : void
@ret   : void
******************************************************************************/

void TMR0_Start(void);


#endif // __TMR_H__
