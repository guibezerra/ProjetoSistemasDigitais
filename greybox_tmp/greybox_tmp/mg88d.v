//lpm_compare CBX_SINGLE_OUTPUT_FILE="ON" LPM_PIPELINE=1 LPM_REPRESENTATION="UNSIGNED" LPM_TYPE="LPM_COMPARE" LPM_WIDTH=8 alb clock dataa datab
//VERSION_BEGIN 17.1 cbx_mgl 2017:10:25:18:08:29:SJ cbx_stratixii 2017:10:25:18:06:53:SJ cbx_util_mgl 2017:10:25:18:06:53:SJ  VERSION_END
// synthesis VERILOG_INPUT_VERSION VERILOG_2001
// altera message_off 10463



// Copyright (C) 2017  Intel Corporation. All rights reserved.
//  Your use of Intel Corporation's design tools, logic functions 
//  and other software and tools, and its AMPP partner logic 
//  functions, and any output files from any of the foregoing 
//  (including device programming or simulation files), and any 
//  associated documentation or information are expressly subject 
//  to the terms and conditions of the Intel Program License 
//  Subscription Agreement, the Intel Quartus Prime License Agreement,
//  the Intel FPGA IP License Agreement, or other applicable license
//  agreement, including, without limitation, that your use is for
//  the sole purpose of programming logic devices manufactured by
//  Intel and sold by Intel or its authorized distributors.  Please
//  refer to the applicable agreement for further details.



//synthesis_resources = lpm_compare 1 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
module  mg88d
	( 
	alb,
	clock,
	dataa,
	datab) /* synthesis synthesis_clearbox=1 */;
	output   alb;
	input   clock;
	input   [7:0]  dataa;
	input   [7:0]  datab;

	wire  wire_mgl_prim1_alb;

	lpm_compare   mgl_prim1
	( 
	.alb(wire_mgl_prim1_alb),
	.clock(clock),
	.dataa(dataa),
	.datab(datab));
	defparam
		mgl_prim1.lpm_pipeline = 1,
		mgl_prim1.lpm_representation = "UNSIGNED",
		mgl_prim1.lpm_type = "LPM_COMPARE",
		mgl_prim1.lpm_width = 8;
	assign
		alb = wire_mgl_prim1_alb;
endmodule //mg88d
//VALID FILE
