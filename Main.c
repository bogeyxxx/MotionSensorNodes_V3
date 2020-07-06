#include <f930lib.h>


void main (void)
{
	Init_Device();
	sysClkSetParNDlyPrec(&sc_precisionD4);

//	P1_4=1;

	while(1)
	{
		if (P1_4 == 1)
		{
			P0 = 0xFF;
			delayms(1000);
			P0 = 0;
			delayms(1000);
		}
	}
}
