#include "xgpio.h"
#include "xil_printf.h"
#include "xparameters.h"

int main()
{
	XGpio gpio0;
	XGpio gpio1;
	XGpio gpio2;

	u16 dip,led;
	u8 button,seg;


	XGpio_Initialize(&gpio0, 0);
	XGpio_Initialize(&gpio1, 1);
	XGpio_Initialize(&gpio2, 2);

	XGpio_SetDataDirection(&gpio0, 1, 0xFFFFFFFF); // Buttons
	XGpio_SetDataDirection(&gpio0, 2, 0xFFFFFFFF); // Dip Switches
	XGpio_SetDataDirection(&gpio1, 1, 0x00000000); // 7 Segment Display
	XGpio_SetDataDirection(&gpio1, 2, 0x00000000); // 7 Segment Anodes
	XGpio_SetDataDirection(&gpio2, 1, 0x00000000); // LEDs

	while(1){

		dip = XGpio_DiscreteRead(&gpio0, 2);

		led = dip;

		XGpio_DiscreteWrite(&gpio2,1,led);
		xil_printf("\rled state: %08x",led);
	}
}
