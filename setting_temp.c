
#include"setting_temp.h"

#define NUM_OF_TICKS_PER_ONE_SECOND 10

#define SEETING_TEMP_ADD_IN_EEPROM (10)

static unsigned int not_pressed_time ;


static unsigned char one_second_time =0;

static unsigned char setting_temp_v  , flag =1  ;

static unsigned char SSD_data = SSD_NULL;

static void TOGGLE_passed_value_to_SSD(void);

void settingTemp_init(unsigned char init_temp)
{
       if(e2pext_r(20) != 5)      // this code will be executed once at all system life
       {
           e2pext_w(20,5);
           e2pext_w(SEETING_TEMP_ADD_IN_EEPROM,setting_temp_v );
           setting_temp_v = init_temp ;

       }
       else{
             setting_temp_v = e2pext_r(SEETING_TEMP_ADD_IN_EEPROM);

       }

}

void settingTemp_update()
{

if(SYSTEM_GetMode() ==  Setting_Temp)
{
        //__________________________________________________________________________________________________

        one_second_time++;

        if(PB_GetState( PB_PLUS) == PB_PRE_PRESSED && setting_temp_v < 75)
          {
             setting_temp_v = setting_temp_v + 5;

             not_pressed_time =0 ;

           }
        else if(PB_GetState( PB_MINUS) == PB_PRE_PRESSED && setting_temp_v > 35)
           {
               setting_temp_v = setting_temp_v - 5;

                not_pressed_time =0 ;


            }
        else
        {
              not_pressed_time++ ;  if(not_pressed_time == NUM_OF_TICKS_PER_5_SECOND )
                                      {
                                          e2pext_w(SEETING_TEMP_ADD_IN_EEPROM,setting_temp_v ); /* pass temp to eeprom*/
                                      }

        }

        if(SSD_data != SSD_NULL)
        {



              SSD_SetSymbol(SSD_N , (SSD_data /10));

              SSD_SetSymbol(SSD_R , (SSD_data %10));
        }
        else{
             SSD_SetSymbol(SSD_N , (SSD_data ));
             SSD_SetSymbol(SSD_R , (SSD_data ));
        }

        // pass to ssd to toggle every one second
          if( one_second_time == NUM_OF_TICKS_PER_ONE_SECOND)
            {
                    TOGGLE_passed_value_to_SSD();

                    one_second_time =0;
             }

    //----------------------------------------------------------------------------------------------------------

}
else if(SYSTEM_GetMode() == idle)
{
        flag =1;
}
}


unsigned char GET_settingTemp()
{
    unsigned char ret =0;

    ret = setting_temp_v;

    return ret;
}

unsigned int GET_NOT_pressed_time()
{
    return  not_pressed_time ;
}

static void TOGGLE_passed_value_to_SSD(void)
{

    if(SSD_data ==  SSD_NULL)
    {
        SSD_data = setting_temp_v ;
    }
    else
    {
        SSD_data = SSD_NULL;

    }



}
