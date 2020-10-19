#include"system_modes.h"


static SYSTEM_Modes System_mode = idle;


void SYSTEM_init(SYSTEM_Modes init_mode)
{
      SYSTEM_SET_Mode(init_mode);
}

void SYSTEM_update()
{
    switch( System_mode)
    {
      case  idle:
//====================================================================
         if(PB_GetState( PB_ON_OFF) == PB_PRE_PRESSED )
         {
             SYSTEM_SET_Mode( normal);

         }
//====================================================================
        break;


        case  normal:
//====================================================================
         if(PB_GetState( PB_ON_OFF) == PB_PRE_PRESSED )
         {
             SYSTEM_SET_Mode( idle);

         }
        else if(PB_GetState( PB_PLUS) == PB_PRE_PRESSED || PB_GetState( PB_MINUS) == PB_PRE_PRESSED )
         {
              SYSTEM_SET_Mode( Setting_Temp);

         }
//====================================================================
        break;


        case  Setting_Temp:
//====================================================================
         if(PB_GetState(PB_ON_OFF) == PB_PRE_PRESSED )
         {
             SYSTEM_SET_Mode( idle);

        }
        else if( GET_NOT_pressed_time() == NUM_OF_TICKS_PER_5_SECOND)
                {
                  SYSTEM_SET_Mode(normal);

                }
//====================================================================
        break;

        default :
        break;

    }

}

SYSTEM_Modes SYSTEM_GetMode()
{
    SYSTEM_Modes ret = idle;

    ret = System_mode ;

    return ret;

}

void SYSTEM_SET_Mode(SYSTEM_Modes mode)
{
    System_mode = mode ;
}
