// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Thu Feb 22 12:54:45 2024
// Host        : DESKTOP-T2LGR09 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top embsys_bidirec_1_0 -prefix
//               embsys_bidirec_1_0_ embsys_bidirec_1_0_stub.v
// Design      : embsys_bidirec_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "bidirec,Vivado 2022.2" *)
module embsys_bidirec_1_0(oe, inp, outp, bidir)
/* synthesis syn_black_box black_box_pad_pin="oe,inp,outp,bidir" */;
  input oe;
  input inp;
  output outp;
  inout bidir;
endmodule
