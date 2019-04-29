// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
// Date        : Mon Apr 15 11:58:07 2019
// Host        : alan running 64-bit Ubuntu 16.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/alan/Vivado/scratch/maquinaRefrigerante/maquinaRefrigerante/maquinaRefrigerante.srcs/sources_1/bd/design_1/ip/design_1_maquinaRefri_1_0/design_1_maquinaRefri_1_0_sim_netlist.v
// Design      : design_1_maquinaRefri_1_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_maquinaRefri_1_0,maquinaRefri,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "maquinaRefri,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module design_1_maquinaRefri_1_0
   (c,
    clk,
    get,
    rst,
    s,
    a,
    d);
  input c;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_clk_1" *) input clk;
  input get;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW" *) input rst;
  input [3:0]s;
  input [3:0]a;
  output d;

  wire [3:0]a;
  wire c;
  wire clk;
  wire d;
  wire get;
  wire rst;
  wire [3:0]s;

  design_1_maquinaRefri_1_0_maquinaRefri U0
       (.a(a),
        .c(c),
        .clk(clk),
        .d(d),
        .get(get),
        .rst(rst),
        .s(s));
endmodule

(* ORIG_REF_NAME = "controlador" *) 
module design_1_maquinaRefri_1_0_controlador
   (tot_ld,
    SR,
    d,
    clk,
    rst,
    c,
    s,
    Q,
    \sQ_reg[0] ,
    get);
  output tot_ld;
  output [0:0]SR;
  output d;
  input clk;
  input rst;
  input c;
  input [0:0]s;
  input [0:0]Q;
  input \sQ_reg[0] ;
  input get;

  wire [0:0]Q;
  wire [0:0]SR;
  wire \__2/FSM_sequential_estado_atual[0]_i_1_n_0 ;
  wire \__2/FSM_sequential_estado_atual[1]_i_1_n_0 ;
  wire \__2/FSM_sequential_estado_atual[2]_i_1_n_0 ;
  wire c;
  wire clk;
  wire d;
  (* RTL_KEEP = "yes" *) wire [2:0]estado_atual;
  wire get;
  wire rst;
  wire [0:0]s;
  wire \sQ_reg[0] ;
  wire tot_ld;

  (* FSM_ENCODED_STATES = "init:000,wait_coin:001,add_val:010,disp:011,wait_get:100" *) 
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_estado_atual_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\__2/FSM_sequential_estado_atual[0]_i_1_n_0 ),
        .Q(estado_atual[0]));
  (* FSM_ENCODED_STATES = "init:000,wait_coin:001,add_val:010,disp:011,wait_get:100" *) 
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_estado_atual_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\__2/FSM_sequential_estado_atual[1]_i_1_n_0 ),
        .Q(estado_atual[1]));
  (* FSM_ENCODED_STATES = "init:000,wait_coin:001,add_val:010,disp:011,wait_get:100" *) 
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_estado_atual_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\__2/FSM_sequential_estado_atual[2]_i_1_n_0 ),
        .Q(estado_atual[2]));
  LUT3 #(
    .INIT(8'h01)) 
    \__1/i_ 
       (.I0(estado_atual[1]),
        .I1(estado_atual[0]),
        .I2(estado_atual[2]),
        .O(SR));
  LUT4 #(
    .INIT(16'h0155)) 
    \__2/FSM_sequential_estado_atual[0]_i_1 
       (.I0(estado_atual[2]),
        .I1(c),
        .I2(estado_atual[1]),
        .I3(estado_atual[0]),
        .O(\__2/FSM_sequential_estado_atual[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4544554500000000)) 
    \__2/FSM_sequential_estado_atual[1]_i_1 
       (.I0(estado_atual[1]),
        .I1(c),
        .I2(s),
        .I3(Q),
        .I4(\sQ_reg[0] ),
        .I5(estado_atual[0]),
        .O(\__2/FSM_sequential_estado_atual[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFA02)) 
    \__2/FSM_sequential_estado_atual[2]_i_1 
       (.I0(estado_atual[2]),
        .I1(get),
        .I2(estado_atual[1]),
        .I3(estado_atual[0]),
        .O(\__2/FSM_sequential_estado_atual[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h24)) 
    d_INST_0
       (.I0(estado_atual[0]),
        .I1(estado_atual[2]),
        .I2(estado_atual[1]),
        .O(d));
  LUT3 #(
    .INIT(8'h02)) 
    \sQ[3]_i_1 
       (.I0(estado_atual[1]),
        .I1(estado_atual[0]),
        .I2(estado_atual[2]),
        .O(tot_ld));
endmodule

(* ORIG_REF_NAME = "datapath" *) 
module design_1_maquinaRefri_1_0_datapath
   (Q,
    \FSM_sequential_estado_atual_reg[1] ,
    SR,
    tot_ld,
    clk,
    a,
    s);
  output [0:0]Q;
  output \FSM_sequential_estado_atual_reg[1] ;
  input [0:0]SR;
  input tot_ld;
  input clk;
  input [3:0]a;
  input [2:0]s;

  wire \FSM_sequential_estado_atual_reg[1] ;
  wire [0:0]Q;
  wire [0:0]SR;
  wire [3:0]a;
  wire clk;
  wire [2:0]s;
  wire tot_ld;

  design_1_maquinaRefri_1_0_registrador tot
       (.\FSM_sequential_estado_atual_reg[1] (\FSM_sequential_estado_atual_reg[1] ),
        .Q(Q),
        .SR(SR),
        .a(a),
        .clk(clk),
        .s(s),
        .tot_ld(tot_ld));
endmodule

(* ORIG_REF_NAME = "maquinaRefri" *) 
module design_1_maquinaRefri_1_0_maquinaRefri
   (d,
    clk,
    rst,
    c,
    s,
    get,
    a);
  output d;
  input clk;
  input rst;
  input c;
  input [3:0]s;
  input get;
  input [3:0]a;

  wire DATAPATH_n_1;
  wire FSM_CTRL_n_0;
  wire [3:0]a;
  wire c;
  wire clk;
  wire d;
  wire get;
  wire rst;
  wire [3:0]s;
  wire s_tot_clr;
  wire [3:3]\tot/sQ_reg__0 ;

  design_1_maquinaRefri_1_0_datapath DATAPATH
       (.\FSM_sequential_estado_atual_reg[1] (DATAPATH_n_1),
        .Q(\tot/sQ_reg__0 ),
        .SR(s_tot_clr),
        .a(a),
        .clk(clk),
        .s(s[2:0]),
        .tot_ld(FSM_CTRL_n_0));
  design_1_maquinaRefri_1_0_controlador FSM_CTRL
       (.Q(\tot/sQ_reg__0 ),
        .SR(s_tot_clr),
        .c(c),
        .clk(clk),
        .d(d),
        .get(get),
        .rst(rst),
        .s(s[3]),
        .\sQ_reg[0] (DATAPATH_n_1),
        .tot_ld(FSM_CTRL_n_0));
endmodule

(* ORIG_REF_NAME = "registrador" *) 
module design_1_maquinaRefri_1_0_registrador
   (Q,
    \FSM_sequential_estado_atual_reg[1] ,
    SR,
    tot_ld,
    clk,
    a,
    s);
  output [0:0]Q;
  output \FSM_sequential_estado_atual_reg[1] ;
  input [0:0]SR;
  input tot_ld;
  input clk;
  input [3:0]a;
  input [2:0]s;

  wire \FSM_sequential_estado_atual_reg[1] ;
  wire [0:0]Q;
  wire [0:0]SR;
  wire [3:0]a;
  wire clk;
  wire [3:0]plusOp;
  wire [2:0]s;
  wire \sQ[3]_i_3_n_0 ;
  wire [2:0]sQ_reg__0;
  wire tot_ld;

  LUT6 #(
    .INIT(64'h2F02FFFF00002F02)) 
    \FSM_sequential_estado_atual[1]_i_2 
       (.I0(s[0]),
        .I1(sQ_reg__0[0]),
        .I2(sQ_reg__0[1]),
        .I3(s[1]),
        .I4(sQ_reg__0[2]),
        .I5(s[2]),
        .O(\FSM_sequential_estado_atual_reg[1] ));
  LUT2 #(
    .INIT(4'h6)) 
    \sQ[0]_i_1 
       (.I0(sQ_reg__0[0]),
        .I1(a[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \sQ[1]_i_1 
       (.I0(sQ_reg__0[0]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(sQ_reg__0[1]),
        .O(plusOp[1]));
  LUT6 #(
    .INIT(64'hF880077F077FF880)) 
    \sQ[2]_i_1 
       (.I0(a[0]),
        .I1(sQ_reg__0[0]),
        .I2(sQ_reg__0[1]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(sQ_reg__0[2]),
        .O(plusOp[2]));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \sQ[3]_i_2 
       (.I0(\sQ[3]_i_3_n_0 ),
        .I1(sQ_reg__0[2]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(Q),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hE888)) 
    \sQ[3]_i_3 
       (.I0(a[1]),
        .I1(sQ_reg__0[1]),
        .I2(sQ_reg__0[0]),
        .I3(a[0]),
        .O(\sQ[3]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sQ_reg[0] 
       (.C(clk),
        .CE(tot_ld),
        .D(plusOp[0]),
        .Q(sQ_reg__0[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sQ_reg[1] 
       (.C(clk),
        .CE(tot_ld),
        .D(plusOp[1]),
        .Q(sQ_reg__0[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sQ_reg[2] 
       (.C(clk),
        .CE(tot_ld),
        .D(plusOp[2]),
        .Q(sQ_reg__0[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sQ_reg[3] 
       (.C(clk),
        .CE(tot_ld),
        .D(plusOp[3]),
        .Q(Q),
        .R(SR));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
