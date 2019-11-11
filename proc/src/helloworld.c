//AXI GPIO driver
#include "xgpio.h"

//send data over UART
#include "xil_printf.h"

//information about AXI peripherals
#include "xparameters.h"

int main()
{
	XGpio gpio0;
	XGpio gpio1;

	u16 dip,led;
	u8 button,seg;


	XGpio_Initialize(&gpio0, 0);
	XGpio_Initialize(&gpio1, 1);

	XGpio_SetDataDirection(&gpio0, 1, 0xFFFFFFFF); // set Buttons as input
	XGpio_SetDataDirection(&gpio0, 2, 0x00000000); // set Segment as output
	XGpio_SetDataDirection(&gpio1, 1, 0x00000000); // set LEDs as output
	XGpio_SetDataDirection(&gpio1, 2, 0xFFFFFFFF); // set dip switches as outputs.

	while(1){

		button = XGpio_DiscreteRead(&gpio0, 1);

		if(button == 0x01){
			led = 0x0001;
		}
		if(button == 0x02){
			led = 0x0002;
		}
		if(button == 0x04){
			led = 0x0003;
		}
		if(button == 0x08){
			led = 0x0004;
		}

		XGpio_DiscreteWrite(&gpio1,1,led);
		xil_printf("\rled state: %08x",led);
	}


	/*
	while (1)
	{
		btn = XGpio_DiscreteRead(&gpio0, 1);

		if (btn != 0) // turn all LEDs on when any button is pressed
			led = 0xFFFFFFFF;
		else
			led = 0x00000000;

		XGpio_DiscreteWrite(&gpio0, 2, led);

		xil_printf("\rbutton state: %08x", btn);
	}
	*/
}
