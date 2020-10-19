#include"ext_eeprom.h"

unsigned char e2pext_r(unsigned int addr)
{
  unsigned char ret;
  unsigned char ah;
  unsigned char al;

  ah=(addr&0x0100)>>8;
  al=addr&0x00FF;

  I2C_Begin();
  if(ah)
  {
    I2C_Write(0xA2);
  }
  else
  {
    I2C_Write(0xA0);
  }
  I2C_Write(al);

  I2C_Begin();
  if(ah)
  {
    I2C_Write(0xA3);
  }
  else
  {
    I2C_Write(0xA1);
  }
  ret=I2C_Read(1);
  I2C_End();

  return ret;
}


void e2pext_w(unsigned int addr, unsigned char val)
{
  unsigned int tmp;
  unsigned char ah;
  unsigned char al;
  unsigned char nt;

  tmp=val;
  ah=(addr&0x0100)>>8;
  al=addr&0x00FF;
  nt=0;

  do
  {
    I2C_Begin();
    if(ah)
    {
      I2C_Write(0xA2);
    }
    else
    {
      I2C_Write(0xA0);
    }
    I2C_Write(al);
    I2C_Write(tmp);
    I2C_End();

    nt++;
  }
  while((tmp != e2pext_r(addr))&&(nt < 10));
}



