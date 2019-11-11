//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.2 (win64) Build 2700185 Thu Oct 24 18:46:05 MDT 2019
//Date        : Sun Nov 10 19:53:22 2019
//Host        : JuiceBoxMK2 running 64-bit major release  (build 9200)
//Command     : generate_target proc_wrapper.bd
//Design      : proc_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module proc_wrapper
   (dip_switches_16bits_tri_i,
    led_16bits_tri_o,
    push_buttons_4bits_tri_i,
    reset,
    seven_seg_led_disp_tri_o,
    sys_clock,
    usb_uart_rxd,
    usb_uart_txd);
  input [15:0]dip_switches_16bits_tri_i;
  output [15:0]led_16bits_tri_o;
  input [3:0]push_buttons_4bits_tri_i;
  input reset;
  output [7:0]seven_seg_led_disp_tri_o;
  input sys_clock;
  input usb_uart_rxd;
  output usb_uart_txd;

  wire [15:0]dip_switches_16bits_tri_i;
  wire [15:0]led_16bits_tri_o;
  wire [3:0]push_buttons_4bits_tri_i;
  wire reset;
  wire [7:0]seven_seg_led_disp_tri_o;
  wire sys_clock;
  wire usb_uart_rxd;
  wire usb_uart_txd;

  proc proc_i
       (.dip_switches_16bits_tri_i(dip_switches_16bits_tri_i),
        .led_16bits_tri_o(led_16bits_tri_o),
        .push_buttons_4bits_tri_i(push_buttons_4bits_tri_i),
        .reset(reset),
        .seven_seg_led_disp_tri_o(seven_seg_led_disp_tri_o),
        .sys_clock(sys_clock),
        .usb_uart_rxd(usb_uart_rxd),
        .usb_uart_txd(usb_uart_txd));
endmodule
