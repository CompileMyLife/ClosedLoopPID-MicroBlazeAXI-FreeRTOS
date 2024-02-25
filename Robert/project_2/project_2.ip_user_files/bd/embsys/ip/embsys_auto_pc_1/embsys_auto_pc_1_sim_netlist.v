// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Thu Feb 22 12:56:15 2024
// Host        : DESKTOP-T2LGR09 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/PSU/Winter_2024/544/P2/ClosedLoopPID-MicroBlazeAXI-FreeRTOS/Robert/project_2/project_2.gen/sources_1/bd/embsys/ip/embsys_auto_pc_1/embsys_auto_pc_1_sim_netlist.v
// Design      : embsys_auto_pc_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "embsys_auto_pc_1,axi_protocol_converter_v2_1_27_axi_protocol_converter,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axi_protocol_converter_v2_1_27_axi_protocol_converter,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module embsys_auto_pc_1
   (aclk,
    aresetn,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arregion,
    s_axi_arqos,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_araddr,
    m_axi_arprot,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rvalid,
    m_axi_rready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, ASSOCIATED_BUSIF S_AXI:M_AXI, ASSOCIATED_RESET ARESETN, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST, POLARITY ACTIVE_LOW, INSERT_VIP 0, TYPE INTERCONNECT" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [31:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARLEN" *) input [7:0]s_axi_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARSIZE" *) input [2:0]s_axi_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARBURST" *) input [1:0]s_axi_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARLOCK" *) input [0:0]s_axi_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARCACHE" *) input [3:0]s_axi_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *) input [2:0]s_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREGION" *) input [3:0]s_axi_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARQOS" *) input [3:0]s_axi_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RLAST" *) output s_axi_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_ONLY, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 0, HAS_BRESP 0, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 4, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARADDR" *) output [31:0]m_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARPROT" *) output [2:0]m_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARVALID" *) output m_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARREADY" *) input m_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RDATA" *) input [31:0]m_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RRESP" *) input [1:0]m_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RVALID" *) input m_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_ONLY, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 0, HAS_BRESP 0, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output m_axi_rready;

  wire aclk;
  wire aresetn;
  wire [31:0]m_axi_araddr;
  wire [2:0]m_axi_arprot;
  wire m_axi_arready;
  wire m_axi_arvalid;
  wire [31:0]m_axi_rdata;
  wire m_axi_rready;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire [31:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [7:0]s_axi_arlen;
  wire [2:0]s_axi_arprot;
  wire s_axi_arready;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire NLW_inst_m_axi_awvalid_UNCONNECTED;
  wire NLW_inst_m_axi_bready_UNCONNECTED;
  wire NLW_inst_m_axi_wlast_UNCONNECTED;
  wire NLW_inst_m_axi_wvalid_UNCONNECTED;
  wire NLW_inst_s_axi_awready_UNCONNECTED;
  wire NLW_inst_s_axi_bvalid_UNCONNECTED;
  wire NLW_inst_s_axi_wready_UNCONNECTED;
  wire [1:0]NLW_inst_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_inst_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_arlock_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_inst_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_inst_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_inst_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_inst_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_inst_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_inst_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_awuser_UNCONNECTED;
  wire [31:0]NLW_inst_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_wid_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_wuser_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_inst_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_buser_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_rid_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_ruser_UNCONNECTED;

  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "32" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_SUPPORTS_READ = "1" *) 
  (* C_AXI_SUPPORTS_USER_SIGNALS = "0" *) 
  (* C_AXI_SUPPORTS_WRITE = "0" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_FAMILY = "spartan7" *) 
  (* C_IGNORE_ID = "1" *) 
  (* C_M_AXI_PROTOCOL = "2" *) 
  (* C_S_AXI_PROTOCOL = "0" *) 
  (* C_TRANSLATION_MODE = "2" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* P_AXI3 = "1" *) 
  (* P_AXI4 = "0" *) 
  (* P_AXILITE = "2" *) 
  (* P_AXILITE_SIZE = "3'b010" *) 
  (* P_CONVERSION = "2" *) 
  (* P_DECERR = "2'b11" *) 
  (* P_INCR = "2'b01" *) 
  (* P_PROTECTION = "1" *) 
  (* P_SLVERR = "2'b10" *) 
  embsys_auto_pc_1_axi_protocol_converter_v2_1_27_axi_protocol_converter inst
       (.aclk(aclk),
        .aresetn(aresetn),
        .m_axi_araddr(m_axi_araddr),
        .m_axi_arburst(NLW_inst_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_inst_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_inst_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_inst_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_inst_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(m_axi_arprot),
        .m_axi_arqos(NLW_inst_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(m_axi_arready),
        .m_axi_arregion(NLW_inst_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_inst_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_inst_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_awaddr(NLW_inst_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_inst_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_inst_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_inst_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_inst_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_inst_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_inst_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_inst_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_inst_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_inst_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_inst_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_inst_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_inst_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b1),
        .m_axi_rready(m_axi_rready),
        .m_axi_rresp(m_axi_rresp),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(m_axi_rvalid),
        .m_axi_wdata(NLW_inst_m_axi_wdata_UNCONNECTED[31:0]),
        .m_axi_wid(NLW_inst_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_inst_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_inst_m_axi_wstrb_UNCONNECTED[3:0]),
        .m_axi_wuser(NLW_inst_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_inst_m_axi_wvalid_UNCONNECTED),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arlock(1'b0),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(s_axi_arready),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,s_axi_arsize[1:0]}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b1}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_inst_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_inst_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_inst_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_inst_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_inst_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(NLW_inst_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_ruser(NLW_inst_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b1),
        .s_axi_wready(NLW_inst_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b1,1'b1,1'b1,1'b1}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0));
endmodule

(* C_AXI_ADDR_WIDTH = "32" *) (* C_AXI_ARUSER_WIDTH = "1" *) (* C_AXI_AWUSER_WIDTH = "1" *) 
(* C_AXI_BUSER_WIDTH = "1" *) (* C_AXI_DATA_WIDTH = "32" *) (* C_AXI_ID_WIDTH = "1" *) 
(* C_AXI_RUSER_WIDTH = "1" *) (* C_AXI_SUPPORTS_READ = "1" *) (* C_AXI_SUPPORTS_USER_SIGNALS = "0" *) 
(* C_AXI_SUPPORTS_WRITE = "0" *) (* C_AXI_WUSER_WIDTH = "1" *) (* C_FAMILY = "spartan7" *) 
(* C_IGNORE_ID = "1" *) (* C_M_AXI_PROTOCOL = "2" *) (* C_S_AXI_PROTOCOL = "0" *) 
(* C_TRANSLATION_MODE = "2" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_protocol_converter_v2_1_27_axi_protocol_converter" *) 
(* P_AXI3 = "1" *) (* P_AXI4 = "0" *) (* P_AXILITE = "2" *) 
(* P_AXILITE_SIZE = "3'b010" *) (* P_CONVERSION = "2" *) (* P_DECERR = "2'b11" *) 
(* P_INCR = "2'b01" *) (* P_PROTECTION = "1" *) (* P_SLVERR = "2'b10" *) 
module embsys_auto_pc_1_axi_protocol_converter_v2_1_27_axi_protocol_converter
   (aclk,
    aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awregion,
    s_axi_awqos,
    s_axi_awuser,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wid,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wuser,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_buser,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arregion,
    s_axi_arqos,
    s_axi_aruser,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_ruser,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awregion,
    m_axi_awqos,
    m_axi_awuser,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wuser,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_buser,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arregion,
    m_axi_arqos,
    m_axi_aruser,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_ruser,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aresetn;
  input [0:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awregion;
  input [3:0]s_axi_awqos;
  input [0:0]s_axi_awuser;
  input s_axi_awvalid;
  output s_axi_awready;
  input [0:0]s_axi_wid;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wlast;
  input [0:0]s_axi_wuser;
  input s_axi_wvalid;
  output s_axi_wready;
  output [0:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output [0:0]s_axi_buser;
  output s_axi_bvalid;
  input s_axi_bready;
  input [0:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arregion;
  input [3:0]s_axi_arqos;
  input [0:0]s_axi_aruser;
  input s_axi_arvalid;
  output s_axi_arready;
  output [0:0]s_axi_rid;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output [0:0]s_axi_ruser;
  output s_axi_rvalid;
  input s_axi_rready;
  output [0:0]m_axi_awid;
  output [31:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awregion;
  output [3:0]m_axi_awqos;
  output [0:0]m_axi_awuser;
  output m_axi_awvalid;
  input m_axi_awready;
  output [0:0]m_axi_wid;
  output [31:0]m_axi_wdata;
  output [3:0]m_axi_wstrb;
  output m_axi_wlast;
  output [0:0]m_axi_wuser;
  output m_axi_wvalid;
  input m_axi_wready;
  input [0:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input [0:0]m_axi_buser;
  input m_axi_bvalid;
  output m_axi_bready;
  output [0:0]m_axi_arid;
  output [31:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [0:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arregion;
  output [3:0]m_axi_arqos;
  output [0:0]m_axi_aruser;
  output m_axi_arvalid;
  input m_axi_arready;
  input [0:0]m_axi_rid;
  input [31:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input [0:0]m_axi_ruser;
  input m_axi_rvalid;
  output m_axi_rready;

  wire \<const0> ;
  wire aclk;
  wire aresetn;
  wire [31:0]m_axi_araddr;
  wire [2:0]m_axi_arprot;
  wire m_axi_arready;
  wire m_axi_arvalid;
  wire [31:0]m_axi_rdata;
  wire m_axi_rready;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire [31:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [7:0]s_axi_arlen;
  wire [2:0]s_axi_arprot;
  wire s_axi_arready;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;

  assign m_axi_arburst[1] = \<const0> ;
  assign m_axi_arburst[0] = \<const0> ;
  assign m_axi_arcache[3] = \<const0> ;
  assign m_axi_arcache[2] = \<const0> ;
  assign m_axi_arcache[1] = \<const0> ;
  assign m_axi_arcache[0] = \<const0> ;
  assign m_axi_arid[0] = \<const0> ;
  assign m_axi_arlen[7] = \<const0> ;
  assign m_axi_arlen[6] = \<const0> ;
  assign m_axi_arlen[5] = \<const0> ;
  assign m_axi_arlen[4] = \<const0> ;
  assign m_axi_arlen[3] = \<const0> ;
  assign m_axi_arlen[2] = \<const0> ;
  assign m_axi_arlen[1] = \<const0> ;
  assign m_axi_arlen[0] = \<const0> ;
  assign m_axi_arlock[0] = \<const0> ;
  assign m_axi_arqos[3] = \<const0> ;
  assign m_axi_arqos[2] = \<const0> ;
  assign m_axi_arqos[1] = \<const0> ;
  assign m_axi_arqos[0] = \<const0> ;
  assign m_axi_arregion[3] = \<const0> ;
  assign m_axi_arregion[2] = \<const0> ;
  assign m_axi_arregion[1] = \<const0> ;
  assign m_axi_arregion[0] = \<const0> ;
  assign m_axi_arsize[2] = \<const0> ;
  assign m_axi_arsize[1] = \<const0> ;
  assign m_axi_arsize[0] = \<const0> ;
  assign m_axi_aruser[0] = \<const0> ;
  assign m_axi_awaddr[31] = \<const0> ;
  assign m_axi_awaddr[30] = \<const0> ;
  assign m_axi_awaddr[29] = \<const0> ;
  assign m_axi_awaddr[28] = \<const0> ;
  assign m_axi_awaddr[27] = \<const0> ;
  assign m_axi_awaddr[26] = \<const0> ;
  assign m_axi_awaddr[25] = \<const0> ;
  assign m_axi_awaddr[24] = \<const0> ;
  assign m_axi_awaddr[23] = \<const0> ;
  assign m_axi_awaddr[22] = \<const0> ;
  assign m_axi_awaddr[21] = \<const0> ;
  assign m_axi_awaddr[20] = \<const0> ;
  assign m_axi_awaddr[19] = \<const0> ;
  assign m_axi_awaddr[18] = \<const0> ;
  assign m_axi_awaddr[17] = \<const0> ;
  assign m_axi_awaddr[16] = \<const0> ;
  assign m_axi_awaddr[15] = \<const0> ;
  assign m_axi_awaddr[14] = \<const0> ;
  assign m_axi_awaddr[13] = \<const0> ;
  assign m_axi_awaddr[12] = \<const0> ;
  assign m_axi_awaddr[11] = \<const0> ;
  assign m_axi_awaddr[10] = \<const0> ;
  assign m_axi_awaddr[9] = \<const0> ;
  assign m_axi_awaddr[8] = \<const0> ;
  assign m_axi_awaddr[7] = \<const0> ;
  assign m_axi_awaddr[6] = \<const0> ;
  assign m_axi_awaddr[5] = \<const0> ;
  assign m_axi_awaddr[4] = \<const0> ;
  assign m_axi_awaddr[3] = \<const0> ;
  assign m_axi_awaddr[2] = \<const0> ;
  assign m_axi_awaddr[1] = \<const0> ;
  assign m_axi_awaddr[0] = \<const0> ;
  assign m_axi_awburst[1] = \<const0> ;
  assign m_axi_awburst[0] = \<const0> ;
  assign m_axi_awcache[3] = \<const0> ;
  assign m_axi_awcache[2] = \<const0> ;
  assign m_axi_awcache[1] = \<const0> ;
  assign m_axi_awcache[0] = \<const0> ;
  assign m_axi_awid[0] = \<const0> ;
  assign m_axi_awlen[7] = \<const0> ;
  assign m_axi_awlen[6] = \<const0> ;
  assign m_axi_awlen[5] = \<const0> ;
  assign m_axi_awlen[4] = \<const0> ;
  assign m_axi_awlen[3] = \<const0> ;
  assign m_axi_awlen[2] = \<const0> ;
  assign m_axi_awlen[1] = \<const0> ;
  assign m_axi_awlen[0] = \<const0> ;
  assign m_axi_awlock[0] = \<const0> ;
  assign m_axi_awprot[2] = \<const0> ;
  assign m_axi_awprot[1] = \<const0> ;
  assign m_axi_awprot[0] = \<const0> ;
  assign m_axi_awqos[3] = \<const0> ;
  assign m_axi_awqos[2] = \<const0> ;
  assign m_axi_awqos[1] = \<const0> ;
  assign m_axi_awqos[0] = \<const0> ;
  assign m_axi_awregion[3] = \<const0> ;
  assign m_axi_awregion[2] = \<const0> ;
  assign m_axi_awregion[1] = \<const0> ;
  assign m_axi_awregion[0] = \<const0> ;
  assign m_axi_awsize[2] = \<const0> ;
  assign m_axi_awsize[1] = \<const0> ;
  assign m_axi_awsize[0] = \<const0> ;
  assign m_axi_awuser[0] = \<const0> ;
  assign m_axi_awvalid = \<const0> ;
  assign m_axi_bready = \<const0> ;
  assign m_axi_wdata[31] = \<const0> ;
  assign m_axi_wdata[30] = \<const0> ;
  assign m_axi_wdata[29] = \<const0> ;
  assign m_axi_wdata[28] = \<const0> ;
  assign m_axi_wdata[27] = \<const0> ;
  assign m_axi_wdata[26] = \<const0> ;
  assign m_axi_wdata[25] = \<const0> ;
  assign m_axi_wdata[24] = \<const0> ;
  assign m_axi_wdata[23] = \<const0> ;
  assign m_axi_wdata[22] = \<const0> ;
  assign m_axi_wdata[21] = \<const0> ;
  assign m_axi_wdata[20] = \<const0> ;
  assign m_axi_wdata[19] = \<const0> ;
  assign m_axi_wdata[18] = \<const0> ;
  assign m_axi_wdata[17] = \<const0> ;
  assign m_axi_wdata[16] = \<const0> ;
  assign m_axi_wdata[15] = \<const0> ;
  assign m_axi_wdata[14] = \<const0> ;
  assign m_axi_wdata[13] = \<const0> ;
  assign m_axi_wdata[12] = \<const0> ;
  assign m_axi_wdata[11] = \<const0> ;
  assign m_axi_wdata[10] = \<const0> ;
  assign m_axi_wdata[9] = \<const0> ;
  assign m_axi_wdata[8] = \<const0> ;
  assign m_axi_wdata[7] = \<const0> ;
  assign m_axi_wdata[6] = \<const0> ;
  assign m_axi_wdata[5] = \<const0> ;
  assign m_axi_wdata[4] = \<const0> ;
  assign m_axi_wdata[3] = \<const0> ;
  assign m_axi_wdata[2] = \<const0> ;
  assign m_axi_wdata[1] = \<const0> ;
  assign m_axi_wdata[0] = \<const0> ;
  assign m_axi_wid[0] = \<const0> ;
  assign m_axi_wlast = \<const0> ;
  assign m_axi_wstrb[3] = \<const0> ;
  assign m_axi_wstrb[2] = \<const0> ;
  assign m_axi_wstrb[1] = \<const0> ;
  assign m_axi_wstrb[0] = \<const0> ;
  assign m_axi_wuser[0] = \<const0> ;
  assign m_axi_wvalid = \<const0> ;
  assign s_axi_awready = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_buser[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_ruser[0] = \<const0> ;
  assign s_axi_wready = \<const0> ;
  GND GND
       (.G(\<const0> ));
  embsys_auto_pc_1_axi_protocol_converter_v2_1_27_b2s \gen_axilite.gen_b2s_conv.axilite_b2s 
       (.Q({m_axi_arprot,m_axi_araddr[31:12]}),
        .aclk(aclk),
        .aresetn(aresetn),
        .in({m_axi_rresp,m_axi_rdata}),
        .m_axi_araddr(m_axi_araddr[11:0]),
        .m_axi_arready(m_axi_arready),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_rready(m_axi_rready),
        .m_axi_rvalid(m_axi_rvalid),
        .\m_payload_i_reg[34] ({s_axi_rlast,s_axi_rresp,s_axi_rdata}),
        .m_valid_i_reg(s_axi_rvalid),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_arsize(s_axi_arsize[1:0]),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_rready(s_axi_rready),
        .s_ready_i_reg(s_axi_arready));
endmodule

(* ORIG_REF_NAME = "axi_protocol_converter_v2_1_27_b2s" *) 
module embsys_auto_pc_1_axi_protocol_converter_v2_1_27_b2s
   (s_ready_i_reg,
    Q,
    \m_payload_i_reg[34] ,
    m_axi_arvalid,
    m_axi_rready,
    m_valid_i_reg,
    m_axi_araddr,
    s_axi_arvalid,
    m_axi_arready,
    aclk,
    in,
    s_axi_arlen,
    s_axi_arburst,
    s_axi_arsize,
    s_axi_arprot,
    s_axi_araddr,
    m_axi_rvalid,
    s_axi_rready,
    aresetn);
  output s_ready_i_reg;
  output [22:0]Q;
  output [34:0]\m_payload_i_reg[34] ;
  output m_axi_arvalid;
  output m_axi_rready;
  output m_valid_i_reg;
  output [11:0]m_axi_araddr;
  input s_axi_arvalid;
  input m_axi_arready;
  input aclk;
  input [33:0]in;
  input [7:0]s_axi_arlen;
  input [1:0]s_axi_arburst;
  input [1:0]s_axi_arsize;
  input [2:0]s_axi_arprot;
  input [31:0]s_axi_araddr;
  input m_axi_rvalid;
  input s_axi_rready;
  input aresetn;

  wire [22:0]Q;
  wire \RD.ar_channel_0_n_14 ;
  wire \RD.ar_channel_0_n_15 ;
  wire \RD.ar_channel_0_n_16 ;
  wire \RD.ar_channel_0_n_17 ;
  wire \RD.ar_channel_0_n_18 ;
  wire \RD.ar_channel_0_n_19 ;
  wire \RD.ar_channel_0_n_20 ;
  wire \RD.ar_channel_0_n_21 ;
  wire \RD.ar_channel_0_n_22 ;
  wire \RD.ar_channel_0_n_23 ;
  wire \RD.ar_channel_0_n_24 ;
  wire \RD.ar_channel_0_n_25 ;
  wire \RD.ar_channel_0_n_28 ;
  wire \RD.ar_channel_0_n_30 ;
  wire \RD.ar_channel_0_n_37 ;
  wire \RD.ar_channel_0_n_43 ;
  wire \RD.ar_channel_0_n_44 ;
  wire \RD.ar_channel_0_n_45 ;
  wire \RD.ar_channel_0_n_46 ;
  wire \RD.r_channel_0_n_1 ;
  wire SI_REG_n_15;
  wire SI_REG_n_4;
  wire SI_REG_n_5;
  wire SI_REG_n_53;
  wire SI_REG_n_54;
  wire SI_REG_n_68;
  wire SI_REG_n_69;
  wire SI_REG_n_76;
  wire SI_REG_n_81;
  wire SI_REG_n_82;
  wire SI_REG_n_83;
  wire SI_REG_n_84;
  wire SI_REG_n_85;
  wire SI_REG_n_86;
  wire SI_REG_n_87;
  wire aclk;
  wire \ar.ar_pipe/p_1_in ;
  wire [1:0]\ar_cmd_fsm_0/state ;
  wire areset_d1;
  wire areset_d1_i_1_n_0;
  wire aresetn;
  wire [11:0]axaddr_incr;
  wire [11:0]axaddr_wrap;
  wire [7:4]axlen;
  wire [1:0]axsize;
  wire \cmd_translator_0/incr_cmd_0/sel_first ;
  wire \cmd_translator_0/incr_next_pending ;
  wire [3:0]\cmd_translator_0/wrap_cmd_0/axaddr_offset ;
  wire [3:0]\cmd_translator_0/wrap_cmd_0/axaddr_offset_r ;
  wire [3:0]\cmd_translator_0/wrap_cmd_0/wrap_second_len ;
  wire [3:0]\cmd_translator_0/wrap_cmd_0/wrap_second_len_r ;
  wire [33:0]in;
  wire [11:0]m_axi_araddr;
  wire m_axi_arready;
  wire m_axi_arvalid;
  wire m_axi_rready;
  wire m_axi_rvalid;
  wire [34:0]\m_payload_i_reg[34] ;
  wire m_valid_i_reg;
  wire r_full;
  wire r_push;
  wire r_rlast;
  wire [31:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [7:0]s_axi_arlen;
  wire [2:0]s_axi_arprot;
  wire [1:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire s_axi_rready;
  wire s_ready_i_reg;
  wire sel_first;
  wire [11:0]si_rs_araddr;
  wire [1:1]si_rs_arburst;
  wire [3:0]si_rs_arlen;
  wire si_rs_arvalid;
  wire [31:0]si_rs_rdata;
  wire si_rs_rlast;
  wire si_rs_rready;
  wire [1:0]si_rs_rresp;
  wire [3:2]wrap_cnt;

  embsys_auto_pc_1_axi_protocol_converter_v2_1_27_b2s_ar_channel \RD.ar_channel_0 
       (.D(wrap_cnt),
        .E(\ar.ar_pipe/p_1_in ),
        .\FSM_sequential_state_reg[1] (\RD.ar_channel_0_n_30 ),
        .Q(axaddr_wrap),
        .S({SI_REG_n_53,SI_REG_n_54}),
        .aclk(aclk),
        .areset_d1(areset_d1),
        .axaddr_incr(axaddr_incr),
        .\axaddr_incr_reg[11] ({\RD.ar_channel_0_n_14 ,\RD.ar_channel_0_n_15 ,\RD.ar_channel_0_n_16 ,\RD.ar_channel_0_n_17 ,\RD.ar_channel_0_n_18 ,\RD.ar_channel_0_n_19 ,\RD.ar_channel_0_n_20 ,\RD.ar_channel_0_n_21 ,\RD.ar_channel_0_n_22 ,\RD.ar_channel_0_n_23 ,\RD.ar_channel_0_n_24 ,\RD.ar_channel_0_n_25 }),
        .\axaddr_incr_reg[3] ({SI_REG_n_4,SI_REG_n_5}),
        .axaddr_offset(\cmd_translator_0/wrap_cmd_0/axaddr_offset ),
        .\axaddr_offset_r_reg[3] (\cmd_translator_0/wrap_cmd_0/axaddr_offset_r ),
        .\axlen_cnt_reg[7] ({axlen,si_rs_arlen,si_rs_arburst,SI_REG_n_15,axsize,si_rs_araddr}),
        .incr_next_pending(\cmd_translator_0/incr_next_pending ),
        .m_axi_arready(m_axi_arready),
        .m_axi_arvalid(m_axi_arvalid),
        .\m_payload_i_reg[3] ({\RD.ar_channel_0_n_43 ,\RD.ar_channel_0_n_44 ,\RD.ar_channel_0_n_45 ,\RD.ar_channel_0_n_46 }),
        .next_pending_r_reg(\RD.ar_channel_0_n_28 ),
        .next_pending_r_reg_0(SI_REG_n_68),
        .r_full(r_full),
        .r_push(r_push),
        .r_rlast(r_rlast),
        .s_axburst_eq1_reg(SI_REG_n_69),
        .sel_first(sel_first),
        .sel_first_0(\cmd_translator_0/incr_cmd_0/sel_first ),
        .sel_first_reg(\RD.ar_channel_0_n_37 ),
        .si_rs_arvalid(si_rs_arvalid),
        .state(\ar_cmd_fsm_0/state ),
        .\wrap_boundary_axaddr_r_reg[6] ({SI_REG_n_81,SI_REG_n_82,SI_REG_n_83,SI_REG_n_84,SI_REG_n_85,SI_REG_n_86,SI_REG_n_87}),
        .\wrap_cnt_r_reg[1] (SI_REG_n_76),
        .\wrap_second_len_r_reg[3] (\cmd_translator_0/wrap_cmd_0/wrap_second_len_r ),
        .\wrap_second_len_r_reg[3]_0 (\cmd_translator_0/wrap_cmd_0/wrap_second_len ));
  embsys_auto_pc_1_axi_protocol_converter_v2_1_27_b2s_r_channel \RD.r_channel_0 
       (.SS(areset_d1),
        .aclk(aclk),
        .\cnt_read_reg[1] (\RD.r_channel_0_n_1 ),
        .in(in),
        .m_axi_rready(m_axi_rready),
        .m_axi_rvalid(m_axi_rvalid),
        .out({si_rs_rresp,si_rs_rdata}),
        .r_full(r_full),
        .r_push(r_push),
        .r_rlast(r_rlast),
        .si_rs_rlast(si_rs_rlast),
        .si_rs_rready(si_rs_rready));
  embsys_auto_pc_1_axi_register_slice_v2_1_27_axi_register_slice SI_REG
       (.D(wrap_cnt),
        .E(\ar.ar_pipe/p_1_in ),
        .Q({axlen,si_rs_arlen,si_rs_arburst,SI_REG_n_15,axsize,Q,si_rs_araddr}),
        .S({SI_REG_n_53,SI_REG_n_54}),
        .aclk(aclk),
        .aresetn(aresetn),
        .axaddr_incr(axaddr_incr),
        .\axaddr_incr_reg[3] ({SI_REG_n_4,SI_REG_n_5}),
        .\axaddr_incr_reg[3]_0 ({\RD.ar_channel_0_n_43 ,\RD.ar_channel_0_n_44 ,\RD.ar_channel_0_n_45 ,\RD.ar_channel_0_n_46 }),
        .axaddr_offset(\cmd_translator_0/wrap_cmd_0/axaddr_offset ),
        .\axaddr_offset_r_reg[3] (\cmd_translator_0/wrap_cmd_0/axaddr_offset_r ),
        .incr_next_pending(\cmd_translator_0/incr_next_pending ),
        .m_axi_araddr(m_axi_araddr),
        .\m_axi_araddr[11] ({\RD.ar_channel_0_n_14 ,\RD.ar_channel_0_n_15 ,\RD.ar_channel_0_n_16 ,\RD.ar_channel_0_n_17 ,\RD.ar_channel_0_n_18 ,\RD.ar_channel_0_n_19 ,\RD.ar_channel_0_n_20 ,\RD.ar_channel_0_n_21 ,\RD.ar_channel_0_n_22 ,\RD.ar_channel_0_n_23 ,\RD.ar_channel_0_n_24 ,\RD.ar_channel_0_n_25 }),
        .\m_axi_araddr[11]_0 (axaddr_wrap),
        .\m_axi_araddr[11]_1 (\RD.ar_channel_0_n_37 ),
        .\m_payload_i_reg[34] (\m_payload_i_reg[34] ),
        .\m_payload_i_reg[44] (SI_REG_n_76),
        .\m_payload_i_reg[47] (SI_REG_n_68),
        .\m_payload_i_reg[47]_0 ({SI_REG_n_81,SI_REG_n_82,SI_REG_n_83,SI_REG_n_84,SI_REG_n_85,SI_REG_n_86,SI_REG_n_87}),
        .\m_payload_i_reg[49] (SI_REG_n_69),
        .m_valid_i_reg(m_valid_i_reg),
        .m_valid_i_reg_0(\RD.r_channel_0_n_1 ),
        .next_pending_r_reg(\RD.ar_channel_0_n_28 ),
        .out({si_rs_rresp,si_rs_rdata}),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_rready(s_axi_rready),
        .s_ready_i_reg(s_ready_i_reg),
        .sel_first(sel_first),
        .sel_first_0(\cmd_translator_0/incr_cmd_0/sel_first ),
        .si_rs_arvalid(si_rs_arvalid),
        .si_rs_rlast(si_rs_rlast),
        .si_rs_rready(si_rs_rready),
        .state(\ar_cmd_fsm_0/state ),
        .\wrap_second_len_r_reg[3] (\cmd_translator_0/wrap_cmd_0/wrap_second_len ),
        .\wrap_second_len_r_reg[3]_0 (\RD.ar_channel_0_n_30 ),
        .\wrap_second_len_r_reg[3]_1 (\cmd_translator_0/wrap_cmd_0/wrap_second_len_r ));
  LUT1 #(
    .INIT(2'h1)) 
    areset_d1_i_1
       (.I0(aresetn),
        .O(areset_d1_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    areset_d1_reg
       (.C(aclk),
        .CE(1'b1),
        .D(areset_d1_i_1_n_0),
        .Q(areset_d1),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_protocol_converter_v2_1_27_b2s_ar_channel" *) 
module embsys_auto_pc_1_axi_protocol_converter_v2_1_27_b2s_ar_channel
   (sel_first_0,
    sel_first,
    Q,
    \axaddr_incr_reg[11] ,
    state,
    next_pending_r_reg,
    r_push,
    \FSM_sequential_state_reg[1] ,
    m_axi_arvalid,
    r_rlast,
    \wrap_second_len_r_reg[3] ,
    sel_first_reg,
    E,
    \axaddr_offset_r_reg[3] ,
    \m_payload_i_reg[3] ,
    incr_next_pending,
    aclk,
    S,
    \axaddr_incr_reg[3] ,
    si_rs_arvalid,
    areset_d1,
    m_axi_arready,
    s_axburst_eq1_reg,
    \axlen_cnt_reg[7] ,
    next_pending_r_reg_0,
    r_full,
    D,
    axaddr_offset,
    \wrap_cnt_r_reg[1] ,
    axaddr_incr,
    \wrap_second_len_r_reg[3]_0 ,
    \wrap_boundary_axaddr_r_reg[6] );
  output sel_first_0;
  output sel_first;
  output [11:0]Q;
  output [11:0]\axaddr_incr_reg[11] ;
  output [1:0]state;
  output next_pending_r_reg;
  output r_push;
  output \FSM_sequential_state_reg[1] ;
  output m_axi_arvalid;
  output r_rlast;
  output [3:0]\wrap_second_len_r_reg[3] ;
  output sel_first_reg;
  output [0:0]E;
  output [3:0]\axaddr_offset_r_reg[3] ;
  output [3:0]\m_payload_i_reg[3] ;
  input incr_next_pending;
  input aclk;
  input [1:0]S;
  input [1:0]\axaddr_incr_reg[3] ;
  input si_rs_arvalid;
  input areset_d1;
  input m_axi_arready;
  input s_axburst_eq1_reg;
  input [23:0]\axlen_cnt_reg[7] ;
  input next_pending_r_reg_0;
  input r_full;
  input [1:0]D;
  input [3:0]axaddr_offset;
  input \wrap_cnt_r_reg[1] ;
  input [11:0]axaddr_incr;
  input [3:0]\wrap_second_len_r_reg[3]_0 ;
  input [6:0]\wrap_boundary_axaddr_r_reg[6] ;

  wire [1:0]D;
  wire [0:0]E;
  wire \FSM_sequential_state_reg[1] ;
  wire [11:0]Q;
  wire [1:0]S;
  wire aclk;
  wire ar_cmd_fsm_0_n_10;
  wire ar_cmd_fsm_0_n_11;
  wire ar_cmd_fsm_0_n_12;
  wire ar_cmd_fsm_0_n_13;
  wire ar_cmd_fsm_0_n_14;
  wire ar_cmd_fsm_0_n_15;
  wire ar_cmd_fsm_0_n_16;
  wire ar_cmd_fsm_0_n_17;
  wire ar_cmd_fsm_0_n_18;
  wire ar_cmd_fsm_0_n_2;
  wire ar_cmd_fsm_0_n_3;
  wire ar_cmd_fsm_0_n_4;
  wire ar_cmd_fsm_0_n_5;
  wire ar_cmd_fsm_0_n_7;
  wire ar_cmd_fsm_0_n_8;
  wire ar_cmd_fsm_0_n_9;
  wire areset_d1;
  wire [11:0]axaddr_incr;
  wire [11:0]\axaddr_incr_reg[11] ;
  wire [1:0]\axaddr_incr_reg[3] ;
  wire [3:0]axaddr_offset;
  wire [3:0]\axaddr_offset_r_reg[3] ;
  wire [11:0]axaddr_wrap0;
  wire axaddr_wrap1;
  wire [23:0]\axlen_cnt_reg[7] ;
  wire cmd_translator_0_n_0;
  wire cmd_translator_0_n_41;
  wire cmd_translator_0_n_48;
  wire incr_next_pending;
  wire m_axi_arready;
  wire m_axi_arvalid;
  wire [3:0]\m_payload_i_reg[3] ;
  wire next_pending_r_reg;
  wire next_pending_r_reg_0;
  wire r_full;
  wire r_push;
  wire r_rlast;
  wire s_axburst_eq1_reg;
  wire sel_first;
  wire sel_first_0;
  wire sel_first_i;
  wire sel_first_reg;
  wire si_rs_arvalid;
  wire [1:0]state;
  wire [11:0]wrap_boundary_axaddr_r;
  wire [6:0]\wrap_boundary_axaddr_r_reg[6] ;
  wire [0:0]wrap_cnt;
  wire \wrap_cnt_r_reg[1] ;
  wire [3:0]\wrap_second_len_r_reg[3] ;
  wire [3:0]\wrap_second_len_r_reg[3]_0 ;

  embsys_auto_pc_1_axi_protocol_converter_v2_1_27_b2s_rd_cmd_fsm ar_cmd_fsm_0
       (.D({ar_cmd_fsm_0_n_7,ar_cmd_fsm_0_n_8,ar_cmd_fsm_0_n_9,ar_cmd_fsm_0_n_10,ar_cmd_fsm_0_n_11,ar_cmd_fsm_0_n_12,ar_cmd_fsm_0_n_13,ar_cmd_fsm_0_n_14,ar_cmd_fsm_0_n_15,ar_cmd_fsm_0_n_16,ar_cmd_fsm_0_n_17,ar_cmd_fsm_0_n_18}),
        .E(ar_cmd_fsm_0_n_4),
        .\FSM_sequential_state_reg[0]_0 (state[0]),
        .\FSM_sequential_state_reg[0]_1 (cmd_translator_0_n_41),
        .\FSM_sequential_state_reg[1]_0 (state[1]),
        .\FSM_sequential_state_reg[1]_1 (r_push),
        .\FSM_sequential_state_reg[1]_2 (wrap_cnt),
        .\FSM_sequential_state_reg[1]_3 (\FSM_sequential_state_reg[1] ),
        .\FSM_sequential_state_reg[1]_4 (E),
        .\FSM_sequential_state_reg[1]_5 (cmd_translator_0_n_48),
        .Q(wrap_boundary_axaddr_r),
        .aclk(aclk),
        .areset_d1(areset_d1),
        .\axaddr_incr_reg[0] (sel_first_0),
        .axaddr_offset(axaddr_offset[0]),
        .axaddr_wrap0(axaddr_wrap0),
        .axaddr_wrap1(axaddr_wrap1),
        .\axaddr_wrap_reg[11] (\axlen_cnt_reg[7] [11:0]),
        .m_axi_arready(m_axi_arready),
        .m_axi_arready_0(ar_cmd_fsm_0_n_5),
        .m_axi_arvalid(m_axi_arvalid),
        .m_valid_i_reg(ar_cmd_fsm_0_n_2),
        .m_valid_i_reg_0(ar_cmd_fsm_0_n_3),
        .r_full(r_full),
        .sel_first(sel_first),
        .sel_first_i(sel_first_i),
        .sel_first_reg(cmd_translator_0_n_0),
        .si_rs_arvalid(si_rs_arvalid),
        .\wrap_cnt_r_reg[0] (\wrap_second_len_r_reg[3] [0]),
        .\wrap_cnt_r_reg[0]_0 (\wrap_cnt_r_reg[1] ));
  embsys_auto_pc_1_axi_protocol_converter_v2_1_27_b2s_cmd_translator cmd_translator_0
       (.D({D,wrap_cnt}),
        .E(\FSM_sequential_state_reg[1] ),
        .\FSM_sequential_state_reg[1] (cmd_translator_0_n_48),
        .\FSM_sequential_state_reg[1]_0 (state[0]),
        .Q(Q),
        .S(S),
        .aclk(aclk),
        .areset_d1(areset_d1),
        .axaddr_incr(axaddr_incr),
        .\axaddr_incr_reg[0] (ar_cmd_fsm_0_n_4),
        .\axaddr_incr_reg[11] (\axaddr_incr_reg[11] ),
        .\axaddr_incr_reg[3] (\axaddr_incr_reg[3] ),
        .axaddr_offset(axaddr_offset),
        .\axaddr_offset_r_reg[3] (\axaddr_offset_r_reg[3] ),
        .axaddr_wrap0(axaddr_wrap0),
        .axaddr_wrap1(axaddr_wrap1),
        .\axaddr_wrap_reg[0] (ar_cmd_fsm_0_n_5),
        .\axaddr_wrap_reg[11] ({ar_cmd_fsm_0_n_7,ar_cmd_fsm_0_n_8,ar_cmd_fsm_0_n_9,ar_cmd_fsm_0_n_10,ar_cmd_fsm_0_n_11,ar_cmd_fsm_0_n_12,ar_cmd_fsm_0_n_13,ar_cmd_fsm_0_n_14,ar_cmd_fsm_0_n_15,ar_cmd_fsm_0_n_16,ar_cmd_fsm_0_n_17,ar_cmd_fsm_0_n_18}),
        .\axlen_cnt_reg[0] (state[1]),
        .\axlen_cnt_reg[7] ({\axlen_cnt_reg[7] [23:7],\axlen_cnt_reg[7] [3:0]}),
        .incr_next_pending(incr_next_pending),
        .m_axi_arready(m_axi_arready),
        .\m_payload_i_reg[3] (\m_payload_i_reg[3] ),
        .next_pending_r_reg(next_pending_r_reg),
        .next_pending_r_reg_0(next_pending_r_reg_0),
        .r_full(r_full),
        .r_push(r_push),
        .r_rlast(r_rlast),
        .s_axburst_eq1_reg_0(cmd_translator_0_n_41),
        .s_axburst_eq1_reg_1(s_axburst_eq1_reg),
        .sel_first(sel_first),
        .sel_first_i(sel_first_i),
        .sel_first_reg_0(cmd_translator_0_n_0),
        .sel_first_reg_1(sel_first_0),
        .sel_first_reg_2(sel_first_reg),
        .sel_first_reg_3(ar_cmd_fsm_0_n_2),
        .sel_first_reg_4(ar_cmd_fsm_0_n_3),
        .si_rs_arvalid(si_rs_arvalid),
        .\wrap_boundary_axaddr_r_reg[11] (wrap_boundary_axaddr_r),
        .\wrap_boundary_axaddr_r_reg[6] (\wrap_boundary_axaddr_r_reg[6] ),
        .\wrap_cnt_r_reg[1] (\wrap_cnt_r_reg[1] ),
        .\wrap_second_len_r_reg[3] (\wrap_second_len_r_reg[3] ),
        .\wrap_second_len_r_reg[3]_0 (\wrap_second_len_r_reg[3]_0 ));
endmodule

(* ORIG_REF_NAME = "axi_protocol_converter_v2_1_27_b2s_cmd_translator" *) 
module embsys_auto_pc_1_axi_protocol_converter_v2_1_27_b2s_cmd_translator
   (sel_first_reg_0,
    sel_first_reg_1,
    sel_first,
    axaddr_wrap0,
    Q,
    \axaddr_incr_reg[11] ,
    next_pending_r_reg,
    r_rlast,
    s_axburst_eq1_reg_0,
    axaddr_wrap1,
    sel_first_reg_2,
    \wrap_second_len_r_reg[3] ,
    \FSM_sequential_state_reg[1] ,
    \axaddr_offset_r_reg[3] ,
    \wrap_boundary_axaddr_r_reg[11] ,
    \m_payload_i_reg[3] ,
    incr_next_pending,
    aclk,
    sel_first_i,
    sel_first_reg_3,
    sel_first_reg_4,
    S,
    \axaddr_incr_reg[3] ,
    s_axburst_eq1_reg_1,
    \axlen_cnt_reg[7] ,
    r_push,
    E,
    next_pending_r_reg_0,
    r_full,
    m_axi_arready,
    \FSM_sequential_state_reg[1]_0 ,
    axaddr_incr,
    \axlen_cnt_reg[0] ,
    si_rs_arvalid,
    D,
    axaddr_offset,
    \wrap_cnt_r_reg[1] ,
    areset_d1,
    \axaddr_wrap_reg[0] ,
    \wrap_second_len_r_reg[3]_0 ,
    \wrap_boundary_axaddr_r_reg[6] ,
    \axaddr_wrap_reg[11] ,
    \axaddr_incr_reg[0] );
  output sel_first_reg_0;
  output sel_first_reg_1;
  output sel_first;
  output [11:0]axaddr_wrap0;
  output [11:0]Q;
  output [11:0]\axaddr_incr_reg[11] ;
  output next_pending_r_reg;
  output r_rlast;
  output s_axburst_eq1_reg_0;
  output axaddr_wrap1;
  output sel_first_reg_2;
  output [3:0]\wrap_second_len_r_reg[3] ;
  output \FSM_sequential_state_reg[1] ;
  output [3:0]\axaddr_offset_r_reg[3] ;
  output [11:0]\wrap_boundary_axaddr_r_reg[11] ;
  output [3:0]\m_payload_i_reg[3] ;
  input incr_next_pending;
  input aclk;
  input sel_first_i;
  input sel_first_reg_3;
  input sel_first_reg_4;
  input [1:0]S;
  input [1:0]\axaddr_incr_reg[3] ;
  input s_axburst_eq1_reg_1;
  input [20:0]\axlen_cnt_reg[7] ;
  input r_push;
  input [0:0]E;
  input next_pending_r_reg_0;
  input r_full;
  input m_axi_arready;
  input \FSM_sequential_state_reg[1]_0 ;
  input [11:0]axaddr_incr;
  input \axlen_cnt_reg[0] ;
  input si_rs_arvalid;
  input [2:0]D;
  input [3:0]axaddr_offset;
  input \wrap_cnt_r_reg[1] ;
  input areset_d1;
  input [0:0]\axaddr_wrap_reg[0] ;
  input [3:0]\wrap_second_len_r_reg[3]_0 ;
  input [6:0]\wrap_boundary_axaddr_r_reg[6] ;
  input [11:0]\axaddr_wrap_reg[11] ;
  input [0:0]\axaddr_incr_reg[0] ;

  wire [2:0]D;
  wire [0:0]E;
  wire \FSM_sequential_state[1]_i_2_n_0 ;
  wire \FSM_sequential_state[1]_i_3_n_0 ;
  wire \FSM_sequential_state_reg[1] ;
  wire \FSM_sequential_state_reg[1]_0 ;
  wire [11:0]Q;
  wire [1:0]S;
  wire aclk;
  wire areset_d1;
  wire [11:0]axaddr_incr;
  wire [0:0]\axaddr_incr_reg[0] ;
  wire [11:0]\axaddr_incr_reg[11] ;
  wire [1:0]\axaddr_incr_reg[3] ;
  wire [3:0]axaddr_offset;
  wire [3:0]\axaddr_offset_r_reg[3] ;
  wire [11:0]axaddr_wrap0;
  wire axaddr_wrap1;
  wire [0:0]\axaddr_wrap_reg[0] ;
  wire [11:0]\axaddr_wrap_reg[11] ;
  wire \axlen_cnt_reg[0] ;
  wire [20:0]\axlen_cnt_reg[7] ;
  wire incr_cmd_0_n_13;
  wire incr_next_pending;
  wire m_axi_arready;
  wire [3:0]\m_payload_i_reg[3] ;
  wire next_pending_r_reg;
  wire next_pending_r_reg_0;
  wire r_full;
  wire r_push;
  wire r_rlast;
  wire s_axburst_eq0;
  wire s_axburst_eq1;
  wire s_axburst_eq1_reg_0;
  wire s_axburst_eq1_reg_1;
  wire sel_first;
  wire sel_first_i;
  wire sel_first_reg_0;
  wire sel_first_reg_1;
  wire sel_first_reg_2;
  wire sel_first_reg_3;
  wire sel_first_reg_4;
  wire si_rs_arvalid;
  wire [11:0]\wrap_boundary_axaddr_r_reg[11] ;
  wire [6:0]\wrap_boundary_axaddr_r_reg[6] ;
  wire wrap_cmd_0_n_26;
  wire \wrap_cnt_r_reg[1] ;
  wire wrap_next_pending;
  wire [3:0]\wrap_second_len_r_reg[3] ;
  wire [3:0]\wrap_second_len_r_reg[3]_0 ;

  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_sequential_state[0]_i_2 
       (.I0(s_axburst_eq1),
        .I1(\axlen_cnt_reg[7] [12]),
        .I2(s_axburst_eq0),
        .O(s_axburst_eq1_reg_0));
  LUT6 #(
    .INIT(64'h00000000C8FFC8C8)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(\FSM_sequential_state[1]_i_2_n_0 ),
        .I1(\axlen_cnt_reg[0] ),
        .I2(\FSM_sequential_state[1]_i_3_n_0 ),
        .I3(r_full),
        .I4(E),
        .I5(areset_d1),
        .O(\FSM_sequential_state_reg[1] ));
  LUT6 #(
    .INIT(64'hA8080000FFFFFFFF)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(r_full),
        .I1(s_axburst_eq0),
        .I2(\axlen_cnt_reg[7] [12]),
        .I3(s_axburst_eq1),
        .I4(m_axi_arready),
        .I5(\FSM_sequential_state_reg[1]_0 ),
        .O(\FSM_sequential_state[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hE2FF)) 
    \FSM_sequential_state[1]_i_3 
       (.I0(s_axburst_eq0),
        .I1(\axlen_cnt_reg[7] [12]),
        .I2(s_axburst_eq1),
        .I3(m_axi_arready),
        .O(\FSM_sequential_state[1]_i_3_n_0 ));
  embsys_auto_pc_1_axi_protocol_converter_v2_1_27_b2s_incr_cmd incr_cmd_0
       (.E(E),
        .aclk(aclk),
        .axaddr_incr(axaddr_incr),
        .\axaddr_incr_reg[0]_0 (\axaddr_incr_reg[0] ),
        .\axaddr_incr_reg[11]_0 (\axaddr_incr_reg[11] ),
        .\axaddr_incr_reg[3]_0 (\axaddr_incr_reg[3] ),
        .\axaddr_incr_reg[3]_i_2 (\FSM_sequential_state_reg[1]_0 ),
        .\axlen_cnt_reg[0]_0 (\axlen_cnt_reg[0] ),
        .\axlen_cnt_reg[0]_1 (\axaddr_wrap_reg[0] ),
        .\axlen_cnt_reg[7]_0 ({\axlen_cnt_reg[7] [20:12],\axlen_cnt_reg[7] [10:9],\axlen_cnt_reg[7] [3:0]}),
        .incr_next_pending(incr_next_pending),
        .m_axi_arready(m_axi_arready),
        .\m_payload_i_reg[39] (incr_cmd_0_n_13),
        .\m_payload_i_reg[3] (\m_payload_i_reg[3] ),
        .next_pending_r_reg_0(next_pending_r_reg),
        .r_push(r_push),
        .s_axburst_eq0_reg(s_axburst_eq1_reg_1),
        .s_axburst_eq0_reg_0(next_pending_r_reg_0),
        .sel_first_i(sel_first_i),
        .sel_first_reg_0(sel_first_reg_1),
        .sel_first_reg_1(sel_first_reg_3),
        .si_rs_arvalid(si_rs_arvalid),
        .wrap_next_pending(wrap_next_pending));
  LUT3 #(
    .INIT(8'h1D)) 
    r_rlast_r_i_1
       (.I0(s_axburst_eq0),
        .I1(\axlen_cnt_reg[7] [12]),
        .I2(s_axburst_eq1),
        .O(r_rlast));
  FDRE s_axburst_eq0_reg
       (.C(aclk),
        .CE(1'b1),
        .D(incr_cmd_0_n_13),
        .Q(s_axburst_eq0),
        .R(1'b0));
  FDRE s_axburst_eq1_reg
       (.C(aclk),
        .CE(1'b1),
        .D(wrap_cmd_0_n_26),
        .Q(s_axburst_eq1),
        .R(1'b0));
  FDRE sel_first_reg
       (.C(aclk),
        .CE(1'b1),
        .D(sel_first_i),
        .Q(sel_first_reg_0),
        .R(1'b0));
  embsys_auto_pc_1_axi_protocol_converter_v2_1_27_b2s_wrap_cmd wrap_cmd_0
       (.D(D),
        .E(E),
        .Q(Q),
        .S(S),
        .aclk(aclk),
        .axaddr_offset(axaddr_offset),
        .\axaddr_offset_r_reg[3]_0 (\axaddr_offset_r_reg[3] ),
        .axaddr_wrap0(axaddr_wrap0),
        .axaddr_wrap1(axaddr_wrap1),
        .\axaddr_wrap_reg[0]_0 (\axaddr_wrap_reg[0] ),
        .\axaddr_wrap_reg[11]_0 (\axaddr_wrap_reg[11] ),
        .\axlen_cnt_reg[0]_0 (\axlen_cnt_reg[0] ),
        .\axlen_cnt_reg[3]_0 (\axlen_cnt_reg[7] [16:4]),
        .\m_axi_araddr[11] (sel_first_reg_1),
        .\m_payload_i_reg[39] (wrap_cmd_0_n_26),
        .next_pending_r_reg_0(next_pending_r_reg_0),
        .r_push(r_push),
        .s_axburst_eq1_reg(next_pending_r_reg),
        .s_axburst_eq1_reg_0(s_axburst_eq1_reg_1),
        .sel_first(sel_first),
        .sel_first_i(sel_first_i),
        .sel_first_reg_0(sel_first_reg_2),
        .sel_first_reg_1(sel_first_reg_4),
        .si_rs_arvalid(si_rs_arvalid),
        .\wrap_boundary_axaddr_r_reg[11]_0 (\wrap_boundary_axaddr_r_reg[11] ),
        .\wrap_boundary_axaddr_r_reg[6]_0 (\wrap_boundary_axaddr_r_reg[6] ),
        .\wrap_cnt_r_reg[1]_0 (\wrap_cnt_r_reg[1] ),
        .wrap_next_pending(wrap_next_pending),
        .\wrap_second_len_r_reg[3]_0 (\wrap_second_len_r_reg[3] ),
        .\wrap_second_len_r_reg[3]_1 (\wrap_second_len_r_reg[3]_0 ));
endmodule

(* ORIG_REF_NAME = "axi_protocol_converter_v2_1_27_b2s_incr_cmd" *) 
module embsys_auto_pc_1_axi_protocol_converter_v2_1_27_b2s_incr_cmd
   (sel_first_reg_0,
    \axaddr_incr_reg[11]_0 ,
    \m_payload_i_reg[39] ,
    next_pending_r_reg_0,
    \m_payload_i_reg[3] ,
    incr_next_pending,
    aclk,
    sel_first_reg_1,
    \axaddr_incr_reg[3]_0 ,
    s_axburst_eq0_reg,
    sel_first_i,
    \axlen_cnt_reg[7]_0 ,
    wrap_next_pending,
    r_push,
    E,
    s_axburst_eq0_reg_0,
    axaddr_incr,
    \axlen_cnt_reg[0]_0 ,
    si_rs_arvalid,
    \axlen_cnt_reg[0]_1 ,
    \axaddr_incr_reg[0]_0 ,
    \axaddr_incr_reg[3]_i_2 ,
    m_axi_arready);
  output sel_first_reg_0;
  output [11:0]\axaddr_incr_reg[11]_0 ;
  output \m_payload_i_reg[39] ;
  output next_pending_r_reg_0;
  output [3:0]\m_payload_i_reg[3] ;
  input incr_next_pending;
  input aclk;
  input sel_first_reg_1;
  input [1:0]\axaddr_incr_reg[3]_0 ;
  input s_axburst_eq0_reg;
  input sel_first_i;
  input [14:0]\axlen_cnt_reg[7]_0 ;
  input wrap_next_pending;
  input r_push;
  input [0:0]E;
  input s_axburst_eq0_reg_0;
  input [11:0]axaddr_incr;
  input \axlen_cnt_reg[0]_0 ;
  input si_rs_arvalid;
  input [0:0]\axlen_cnt_reg[0]_1 ;
  input [0:0]\axaddr_incr_reg[0]_0 ;
  input \axaddr_incr_reg[3]_i_2 ;
  input m_axi_arready;

  wire [0:0]E;
  wire aclk;
  wire [11:0]axaddr_incr;
  wire \axaddr_incr[3]_i_12_n_0 ;
  wire \axaddr_incr[3]_i_13_n_0 ;
  wire [0:0]\axaddr_incr_reg[0]_0 ;
  wire [11:0]\axaddr_incr_reg[11]_0 ;
  wire \axaddr_incr_reg[11]_i_4_n_1 ;
  wire \axaddr_incr_reg[11]_i_4_n_2 ;
  wire \axaddr_incr_reg[11]_i_4_n_3 ;
  wire \axaddr_incr_reg[11]_i_4_n_4 ;
  wire \axaddr_incr_reg[11]_i_4_n_5 ;
  wire \axaddr_incr_reg[11]_i_4_n_6 ;
  wire \axaddr_incr_reg[11]_i_4_n_7 ;
  wire [1:0]\axaddr_incr_reg[3]_0 ;
  wire \axaddr_incr_reg[3]_i_2 ;
  wire \axaddr_incr_reg[3]_i_3_n_0 ;
  wire \axaddr_incr_reg[3]_i_3_n_1 ;
  wire \axaddr_incr_reg[3]_i_3_n_2 ;
  wire \axaddr_incr_reg[3]_i_3_n_3 ;
  wire \axaddr_incr_reg[3]_i_3_n_4 ;
  wire \axaddr_incr_reg[3]_i_3_n_5 ;
  wire \axaddr_incr_reg[3]_i_3_n_6 ;
  wire \axaddr_incr_reg[3]_i_3_n_7 ;
  wire \axaddr_incr_reg[7]_i_3_n_0 ;
  wire \axaddr_incr_reg[7]_i_3_n_1 ;
  wire \axaddr_incr_reg[7]_i_3_n_2 ;
  wire \axaddr_incr_reg[7]_i_3_n_3 ;
  wire \axaddr_incr_reg[7]_i_3_n_4 ;
  wire \axaddr_incr_reg[7]_i_3_n_5 ;
  wire \axaddr_incr_reg[7]_i_3_n_6 ;
  wire \axaddr_incr_reg[7]_i_3_n_7 ;
  wire [8:0]axlen_cnt;
  wire \axlen_cnt[0]_i_1_n_0 ;
  wire \axlen_cnt[1]_i_1__0_n_0 ;
  wire \axlen_cnt[2]_i_1__0_n_0 ;
  wire \axlen_cnt[3]_i_1__0_n_0 ;
  wire \axlen_cnt[3]_i_2__0_n_0 ;
  wire \axlen_cnt[4]_i_1__0_n_0 ;
  wire \axlen_cnt[5]_i_1_n_0 ;
  wire \axlen_cnt[5]_i_2_n_0 ;
  wire \axlen_cnt[6]_i_1_n_0 ;
  wire \axlen_cnt[7]_i_1_n_0 ;
  wire \axlen_cnt[8]_i_2_n_0 ;
  wire \axlen_cnt[8]_i_3_n_0 ;
  wire \axlen_cnt[8]_i_4_n_0 ;
  wire \axlen_cnt[8]_i_5_n_0 ;
  wire \axlen_cnt_reg[0]_0 ;
  wire [0:0]\axlen_cnt_reg[0]_1 ;
  wire [14:0]\axlen_cnt_reg[7]_0 ;
  wire incr_next_pending;
  wire m_axi_arready;
  wire \m_payload_i_reg[39] ;
  wire [3:0]\m_payload_i_reg[3] ;
  wire next_pending_r;
  wire next_pending_r_reg_0;
  wire [11:0]p_1_in;
  wire r_push;
  wire s_axburst_eq0_reg;
  wire s_axburst_eq0_reg_0;
  wire sel_first_i;
  wire sel_first_reg_0;
  wire sel_first_reg_1;
  wire si_rs_arvalid;
  wire wrap_next_pending;
  wire [3:3]\NLW_axaddr_incr_reg[11]_i_4_CO_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axaddr_incr[0]_i_1 
       (.I0(axaddr_incr[0]),
        .I1(sel_first_reg_0),
        .I2(\axaddr_incr_reg[3]_i_3_n_7 ),
        .O(p_1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axaddr_incr[10]_i_1 
       (.I0(axaddr_incr[10]),
        .I1(sel_first_reg_0),
        .I2(\axaddr_incr_reg[11]_i_4_n_5 ),
        .O(p_1_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axaddr_incr[11]_i_2 
       (.I0(axaddr_incr[11]),
        .I1(sel_first_reg_0),
        .I2(\axaddr_incr_reg[11]_i_4_n_4 ),
        .O(p_1_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axaddr_incr[1]_i_1 
       (.I0(axaddr_incr[1]),
        .I1(sel_first_reg_0),
        .I2(\axaddr_incr_reg[3]_i_3_n_6 ),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axaddr_incr[2]_i_1 
       (.I0(axaddr_incr[2]),
        .I1(sel_first_reg_0),
        .I2(\axaddr_incr_reg[3]_i_3_n_5 ),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axaddr_incr[3]_i_1 
       (.I0(axaddr_incr[3]),
        .I1(sel_first_reg_0),
        .I2(\axaddr_incr_reg[3]_i_3_n_4 ),
        .O(p_1_in[3]));
  LUT6 #(
    .INIT(64'h0102020202020202)) 
    \axaddr_incr[3]_i_10 
       (.I0(\axlen_cnt_reg[7]_0 [0]),
        .I1(\axlen_cnt_reg[7]_0 [4]),
        .I2(\axlen_cnt_reg[7]_0 [5]),
        .I3(\axlen_cnt_reg[0]_0 ),
        .I4(\axaddr_incr_reg[3]_i_2 ),
        .I5(m_axi_arready),
        .O(\m_payload_i_reg[3] [0]));
  LUT3 #(
    .INIT(8'h9A)) 
    \axaddr_incr[3]_i_12 
       (.I0(\axaddr_incr_reg[11]_0 [2]),
        .I1(\axlen_cnt_reg[7]_0 [4]),
        .I2(\axlen_cnt_reg[7]_0 [5]),
        .O(\axaddr_incr[3]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \axaddr_incr[3]_i_13 
       (.I0(\axaddr_incr_reg[11]_0 [1]),
        .I1(\axlen_cnt_reg[7]_0 [5]),
        .I2(\axlen_cnt_reg[7]_0 [4]),
        .O(\axaddr_incr[3]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \axaddr_incr[3]_i_7 
       (.I0(\axlen_cnt_reg[7]_0 [3]),
        .I1(\axlen_cnt_reg[7]_0 [4]),
        .I2(\axlen_cnt_reg[7]_0 [5]),
        .I3(\axlen_cnt_reg[0]_0 ),
        .I4(\axaddr_incr_reg[3]_i_2 ),
        .I5(m_axi_arready),
        .O(\m_payload_i_reg[3] [3]));
  LUT6 #(
    .INIT(64'h0000AAAA6AAAAAAA)) 
    \axaddr_incr[3]_i_8 
       (.I0(\axlen_cnt_reg[7]_0 [2]),
        .I1(\axlen_cnt_reg[0]_0 ),
        .I2(\axaddr_incr_reg[3]_i_2 ),
        .I3(m_axi_arready),
        .I4(\axlen_cnt_reg[7]_0 [5]),
        .I5(\axlen_cnt_reg[7]_0 [4]),
        .O(\m_payload_i_reg[3] [2]));
  LUT6 #(
    .INIT(64'h000000006AAAAAAA)) 
    \axaddr_incr[3]_i_9 
       (.I0(\axlen_cnt_reg[7]_0 [1]),
        .I1(\axlen_cnt_reg[0]_0 ),
        .I2(\axaddr_incr_reg[3]_i_2 ),
        .I3(m_axi_arready),
        .I4(\axlen_cnt_reg[7]_0 [4]),
        .I5(\axlen_cnt_reg[7]_0 [5]),
        .O(\m_payload_i_reg[3] [1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axaddr_incr[4]_i_1 
       (.I0(axaddr_incr[4]),
        .I1(sel_first_reg_0),
        .I2(\axaddr_incr_reg[7]_i_3_n_7 ),
        .O(p_1_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axaddr_incr[5]_i_1 
       (.I0(axaddr_incr[5]),
        .I1(sel_first_reg_0),
        .I2(\axaddr_incr_reg[7]_i_3_n_6 ),
        .O(p_1_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axaddr_incr[6]_i_1 
       (.I0(axaddr_incr[6]),
        .I1(sel_first_reg_0),
        .I2(\axaddr_incr_reg[7]_i_3_n_5 ),
        .O(p_1_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axaddr_incr[7]_i_1 
       (.I0(axaddr_incr[7]),
        .I1(sel_first_reg_0),
        .I2(\axaddr_incr_reg[7]_i_3_n_4 ),
        .O(p_1_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axaddr_incr[8]_i_1 
       (.I0(axaddr_incr[8]),
        .I1(sel_first_reg_0),
        .I2(\axaddr_incr_reg[11]_i_4_n_7 ),
        .O(p_1_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axaddr_incr[9]_i_1 
       (.I0(axaddr_incr[9]),
        .I1(sel_first_reg_0),
        .I2(\axaddr_incr_reg[11]_i_4_n_6 ),
        .O(p_1_in[9]));
  FDRE \axaddr_incr_reg[0] 
       (.C(aclk),
        .CE(\axaddr_incr_reg[0]_0 ),
        .D(p_1_in[0]),
        .Q(\axaddr_incr_reg[11]_0 [0]),
        .R(1'b0));
  FDRE \axaddr_incr_reg[10] 
       (.C(aclk),
        .CE(\axaddr_incr_reg[0]_0 ),
        .D(p_1_in[10]),
        .Q(\axaddr_incr_reg[11]_0 [10]),
        .R(1'b0));
  FDRE \axaddr_incr_reg[11] 
       (.C(aclk),
        .CE(\axaddr_incr_reg[0]_0 ),
        .D(p_1_in[11]),
        .Q(\axaddr_incr_reg[11]_0 [11]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \axaddr_incr_reg[11]_i_4 
       (.CI(\axaddr_incr_reg[7]_i_3_n_0 ),
        .CO({\NLW_axaddr_incr_reg[11]_i_4_CO_UNCONNECTED [3],\axaddr_incr_reg[11]_i_4_n_1 ,\axaddr_incr_reg[11]_i_4_n_2 ,\axaddr_incr_reg[11]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\axaddr_incr_reg[11]_i_4_n_4 ,\axaddr_incr_reg[11]_i_4_n_5 ,\axaddr_incr_reg[11]_i_4_n_6 ,\axaddr_incr_reg[11]_i_4_n_7 }),
        .S(\axaddr_incr_reg[11]_0 [11:8]));
  FDRE \axaddr_incr_reg[1] 
       (.C(aclk),
        .CE(\axaddr_incr_reg[0]_0 ),
        .D(p_1_in[1]),
        .Q(\axaddr_incr_reg[11]_0 [1]),
        .R(1'b0));
  FDRE \axaddr_incr_reg[2] 
       (.C(aclk),
        .CE(\axaddr_incr_reg[0]_0 ),
        .D(p_1_in[2]),
        .Q(\axaddr_incr_reg[11]_0 [2]),
        .R(1'b0));
  FDRE \axaddr_incr_reg[3] 
       (.C(aclk),
        .CE(\axaddr_incr_reg[0]_0 ),
        .D(p_1_in[3]),
        .Q(\axaddr_incr_reg[11]_0 [3]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \axaddr_incr_reg[3]_i_3 
       (.CI(1'b0),
        .CO({\axaddr_incr_reg[3]_i_3_n_0 ,\axaddr_incr_reg[3]_i_3_n_1 ,\axaddr_incr_reg[3]_i_3_n_2 ,\axaddr_incr_reg[3]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI(\axaddr_incr_reg[11]_0 [3:0]),
        .O({\axaddr_incr_reg[3]_i_3_n_4 ,\axaddr_incr_reg[3]_i_3_n_5 ,\axaddr_incr_reg[3]_i_3_n_6 ,\axaddr_incr_reg[3]_i_3_n_7 }),
        .S({\axaddr_incr_reg[3]_0 [1],\axaddr_incr[3]_i_12_n_0 ,\axaddr_incr[3]_i_13_n_0 ,\axaddr_incr_reg[3]_0 [0]}));
  FDRE \axaddr_incr_reg[4] 
       (.C(aclk),
        .CE(\axaddr_incr_reg[0]_0 ),
        .D(p_1_in[4]),
        .Q(\axaddr_incr_reg[11]_0 [4]),
        .R(1'b0));
  FDRE \axaddr_incr_reg[5] 
       (.C(aclk),
        .CE(\axaddr_incr_reg[0]_0 ),
        .D(p_1_in[5]),
        .Q(\axaddr_incr_reg[11]_0 [5]),
        .R(1'b0));
  FDRE \axaddr_incr_reg[6] 
       (.C(aclk),
        .CE(\axaddr_incr_reg[0]_0 ),
        .D(p_1_in[6]),
        .Q(\axaddr_incr_reg[11]_0 [6]),
        .R(1'b0));
  FDRE \axaddr_incr_reg[7] 
       (.C(aclk),
        .CE(\axaddr_incr_reg[0]_0 ),
        .D(p_1_in[7]),
        .Q(\axaddr_incr_reg[11]_0 [7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \axaddr_incr_reg[7]_i_3 
       (.CI(\axaddr_incr_reg[3]_i_3_n_0 ),
        .CO({\axaddr_incr_reg[7]_i_3_n_0 ,\axaddr_incr_reg[7]_i_3_n_1 ,\axaddr_incr_reg[7]_i_3_n_2 ,\axaddr_incr_reg[7]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\axaddr_incr_reg[7]_i_3_n_4 ,\axaddr_incr_reg[7]_i_3_n_5 ,\axaddr_incr_reg[7]_i_3_n_6 ,\axaddr_incr_reg[7]_i_3_n_7 }),
        .S(\axaddr_incr_reg[11]_0 [7:4]));
  FDRE \axaddr_incr_reg[8] 
       (.C(aclk),
        .CE(\axaddr_incr_reg[0]_0 ),
        .D(p_1_in[8]),
        .Q(\axaddr_incr_reg[11]_0 [8]),
        .R(1'b0));
  FDRE \axaddr_incr_reg[9] 
       (.C(aclk),
        .CE(\axaddr_incr_reg[0]_0 ),
        .D(p_1_in[9]),
        .Q(\axaddr_incr_reg[11]_0 [9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h4F444444)) 
    \axlen_cnt[0]_i_1 
       (.I0(axlen_cnt[0]),
        .I1(\axlen_cnt[8]_i_4_n_0 ),
        .I2(\axlen_cnt_reg[0]_0 ),
        .I3(si_rs_arvalid),
        .I4(\axlen_cnt_reg[7]_0 [7]),
        .O(\axlen_cnt[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF88888F8)) 
    \axlen_cnt[1]_i_1__0 
       (.I0(\axlen_cnt_reg[7]_0 [8]),
        .I1(E),
        .I2(\axlen_cnt[8]_i_4_n_0 ),
        .I3(axlen_cnt[0]),
        .I4(axlen_cnt[1]),
        .O(\axlen_cnt[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hF8F8F888888888F8)) 
    \axlen_cnt[2]_i_1__0 
       (.I0(\axlen_cnt_reg[7]_0 [9]),
        .I1(E),
        .I2(\axlen_cnt[8]_i_4_n_0 ),
        .I3(axlen_cnt[1]),
        .I4(axlen_cnt[0]),
        .I5(axlen_cnt[2]),
        .O(\axlen_cnt[2]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hF88888F8)) 
    \axlen_cnt[3]_i_1__0 
       (.I0(\axlen_cnt_reg[7]_0 [10]),
        .I1(E),
        .I2(\axlen_cnt[8]_i_4_n_0 ),
        .I3(\axlen_cnt[3]_i_2__0_n_0 ),
        .I4(axlen_cnt[3]),
        .O(\axlen_cnt[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \axlen_cnt[3]_i_2__0 
       (.I0(axlen_cnt[1]),
        .I1(axlen_cnt[0]),
        .I2(axlen_cnt[2]),
        .O(\axlen_cnt[3]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'hF8888F88)) 
    \axlen_cnt[4]_i_1__0 
       (.I0(\axlen_cnt_reg[7]_0 [11]),
        .I1(E),
        .I2(\axlen_cnt[5]_i_2_n_0 ),
        .I3(\axlen_cnt[8]_i_4_n_0 ),
        .I4(axlen_cnt[4]),
        .O(\axlen_cnt[4]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFF88888888F8888)) 
    \axlen_cnt[5]_i_1 
       (.I0(\axlen_cnt_reg[7]_0 [12]),
        .I1(E),
        .I2(\axlen_cnt[5]_i_2_n_0 ),
        .I3(axlen_cnt[4]),
        .I4(\axlen_cnt[8]_i_4_n_0 ),
        .I5(axlen_cnt[5]),
        .O(\axlen_cnt[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \axlen_cnt[5]_i_2 
       (.I0(axlen_cnt[2]),
        .I1(axlen_cnt[0]),
        .I2(axlen_cnt[1]),
        .I3(axlen_cnt[3]),
        .O(\axlen_cnt[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF8888F88)) 
    \axlen_cnt[6]_i_1 
       (.I0(\axlen_cnt_reg[7]_0 [13]),
        .I1(E),
        .I2(\axlen_cnt[8]_i_3_n_0 ),
        .I3(\axlen_cnt[8]_i_4_n_0 ),
        .I4(axlen_cnt[6]),
        .O(\axlen_cnt[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF88888888F8888)) 
    \axlen_cnt[7]_i_1 
       (.I0(\axlen_cnt_reg[7]_0 [14]),
        .I1(E),
        .I2(\axlen_cnt[8]_i_3_n_0 ),
        .I3(axlen_cnt[6]),
        .I4(\axlen_cnt[8]_i_4_n_0 ),
        .I5(axlen_cnt[7]),
        .O(\axlen_cnt[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFE000100)) 
    \axlen_cnt[8]_i_2 
       (.I0(axlen_cnt[6]),
        .I1(\axlen_cnt[8]_i_3_n_0 ),
        .I2(axlen_cnt[7]),
        .I3(\axlen_cnt[8]_i_4_n_0 ),
        .I4(axlen_cnt[8]),
        .O(\axlen_cnt[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \axlen_cnt[8]_i_3 
       (.I0(axlen_cnt[4]),
        .I1(axlen_cnt[2]),
        .I2(axlen_cnt[0]),
        .I3(axlen_cnt[1]),
        .I4(axlen_cnt[3]),
        .I5(axlen_cnt[5]),
        .O(\axlen_cnt[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFFFE)) 
    \axlen_cnt[8]_i_4 
       (.I0(\axlen_cnt[8]_i_5_n_0 ),
        .I1(axlen_cnt[2]),
        .I2(axlen_cnt[1]),
        .I3(axlen_cnt[4]),
        .I4(axlen_cnt[3]),
        .I5(E),
        .O(\axlen_cnt[8]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \axlen_cnt[8]_i_5 
       (.I0(axlen_cnt[6]),
        .I1(axlen_cnt[5]),
        .I2(axlen_cnt[8]),
        .I3(axlen_cnt[7]),
        .O(\axlen_cnt[8]_i_5_n_0 ));
  FDRE \axlen_cnt_reg[0] 
       (.C(aclk),
        .CE(\axlen_cnt_reg[0]_1 ),
        .D(\axlen_cnt[0]_i_1_n_0 ),
        .Q(axlen_cnt[0]),
        .R(1'b0));
  FDRE \axlen_cnt_reg[1] 
       (.C(aclk),
        .CE(\axlen_cnt_reg[0]_1 ),
        .D(\axlen_cnt[1]_i_1__0_n_0 ),
        .Q(axlen_cnt[1]),
        .R(1'b0));
  FDRE \axlen_cnt_reg[2] 
       (.C(aclk),
        .CE(\axlen_cnt_reg[0]_1 ),
        .D(\axlen_cnt[2]_i_1__0_n_0 ),
        .Q(axlen_cnt[2]),
        .R(1'b0));
  FDRE \axlen_cnt_reg[3] 
       (.C(aclk),
        .CE(\axlen_cnt_reg[0]_1 ),
        .D(\axlen_cnt[3]_i_1__0_n_0 ),
        .Q(axlen_cnt[3]),
        .R(1'b0));
  FDRE \axlen_cnt_reg[4] 
       (.C(aclk),
        .CE(\axlen_cnt_reg[0]_1 ),
        .D(\axlen_cnt[4]_i_1__0_n_0 ),
        .Q(axlen_cnt[4]),
        .R(1'b0));
  FDRE \axlen_cnt_reg[5] 
       (.C(aclk),
        .CE(\axlen_cnt_reg[0]_1 ),
        .D(\axlen_cnt[5]_i_1_n_0 ),
        .Q(axlen_cnt[5]),
        .R(1'b0));
  FDRE \axlen_cnt_reg[6] 
       (.C(aclk),
        .CE(\axlen_cnt_reg[0]_1 ),
        .D(\axlen_cnt[6]_i_1_n_0 ),
        .Q(axlen_cnt[6]),
        .R(1'b0));
  FDRE \axlen_cnt_reg[7] 
       (.C(aclk),
        .CE(\axlen_cnt_reg[0]_1 ),
        .D(\axlen_cnt[7]_i_1_n_0 ),
        .Q(axlen_cnt[7]),
        .R(1'b0));
  FDRE \axlen_cnt_reg[8] 
       (.C(aclk),
        .CE(\axlen_cnt_reg[0]_1 ),
        .D(\axlen_cnt[8]_i_2_n_0 ),
        .Q(axlen_cnt[8]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF88B8B8)) 
    next_pending_r_i_2
       (.I0(\axlen_cnt[8]_i_4_n_0 ),
        .I1(r_push),
        .I2(next_pending_r),
        .I3(\axlen_cnt_reg[7]_0 [11]),
        .I4(E),
        .I5(s_axburst_eq0_reg_0),
        .O(next_pending_r_reg_0));
  FDRE next_pending_r_reg
       (.C(aclk),
        .CE(1'b1),
        .D(incr_next_pending),
        .Q(next_pending_r),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hEFEEE0EE)) 
    s_axburst_eq0_i_1
       (.I0(next_pending_r_reg_0),
        .I1(s_axburst_eq0_reg),
        .I2(sel_first_i),
        .I3(\axlen_cnt_reg[7]_0 [6]),
        .I4(wrap_next_pending),
        .O(\m_payload_i_reg[39] ));
  FDRE sel_first_reg
       (.C(aclk),
        .CE(1'b1),
        .D(sel_first_reg_1),
        .Q(sel_first_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_protocol_converter_v2_1_27_b2s_r_channel" *) 
module embsys_auto_pc_1_axi_protocol_converter_v2_1_27_b2s_r_channel
   (si_rs_rlast,
    \cnt_read_reg[1] ,
    r_full,
    m_axi_rready,
    out,
    aclk,
    r_push,
    r_rlast,
    si_rs_rready,
    m_axi_rvalid,
    in,
    SS);
  output si_rs_rlast;
  output \cnt_read_reg[1] ;
  output r_full;
  output m_axi_rready;
  output [33:0]out;
  input aclk;
  input r_push;
  input r_rlast;
  input si_rs_rready;
  input m_axi_rvalid;
  input [33:0]in;
  input [0:0]SS;

  wire [0:0]SS;
  wire a_full0;
  wire aclk;
  wire \cnt_read_reg[1] ;
  wire [33:0]in;
  wire m_axi_rready;
  wire m_axi_rvalid;
  wire [33:0]out;
  wire r_full;
  wire r_push;
  wire r_push_r;
  wire r_rlast;
  wire rd_a_full;
  wire rd_data_fifo_0_n_0;
  wire si_rs_rlast;
  wire si_rs_rready;
  wire [0:0]trans_in;
  wire transaction_fifo_0_n_1;

  FDRE r_push_r_reg
       (.C(aclk),
        .CE(1'b1),
        .D(r_push),
        .Q(r_push_r),
        .R(1'b0));
  FDRE r_rlast_r_reg
       (.C(aclk),
        .CE(1'b1),
        .D(r_rlast),
        .Q(trans_in),
        .R(1'b0));
  embsys_auto_pc_1_axi_protocol_converter_v2_1_27_b2s_simple_fifo rd_data_fifo_0
       (.E(transaction_fifo_0_n_1),
        .SS(SS),
        .a_full0(a_full0),
        .aclk(aclk),
        .\cnt_read_reg[1]_0 (rd_data_fifo_0_n_0),
        .\cnt_read_reg[4]_0 (\cnt_read_reg[1] ),
        .in(in),
        .m_axi_rready(m_axi_rready),
        .m_axi_rvalid(m_axi_rvalid),
        .out(out),
        .rd_a_full(rd_a_full),
        .si_rs_rready(si_rs_rready));
  embsys_auto_pc_1_axi_protocol_converter_v2_1_27_b2s_simple_fifo__parameterized0 transaction_fifo_0
       (.E(transaction_fifo_0_n_1),
        .SS(SS),
        .a_full0(a_full0),
        .aclk(aclk),
        .\cnt_read_reg[0]_0 (rd_data_fifo_0_n_0),
        .\cnt_read_reg[1]_0 (\cnt_read_reg[1] ),
        .r_full(r_full),
        .r_push_r(r_push_r),
        .rd_a_full(rd_a_full),
        .si_rs_rlast(si_rs_rlast),
        .si_rs_rready(si_rs_rready),
        .trans_in(trans_in));
endmodule

(* ORIG_REF_NAME = "axi_protocol_converter_v2_1_27_b2s_rd_cmd_fsm" *) 
module embsys_auto_pc_1_axi_protocol_converter_v2_1_27_b2s_rd_cmd_fsm
   (\FSM_sequential_state_reg[1]_0 ,
    \FSM_sequential_state_reg[0]_0 ,
    m_valid_i_reg,
    m_valid_i_reg_0,
    E,
    m_axi_arready_0,
    sel_first_i,
    D,
    \FSM_sequential_state_reg[1]_1 ,
    m_axi_arvalid,
    \FSM_sequential_state_reg[1]_2 ,
    \FSM_sequential_state_reg[1]_3 ,
    \FSM_sequential_state_reg[1]_4 ,
    \FSM_sequential_state_reg[1]_5 ,
    aclk,
    si_rs_arvalid,
    areset_d1,
    m_axi_arready,
    \axaddr_incr_reg[0] ,
    sel_first,
    sel_first_reg,
    axaddr_wrap0,
    \axaddr_wrap_reg[11] ,
    Q,
    axaddr_wrap1,
    axaddr_offset,
    \wrap_cnt_r_reg[0] ,
    \wrap_cnt_r_reg[0]_0 ,
    r_full,
    \FSM_sequential_state_reg[0]_1 );
  output \FSM_sequential_state_reg[1]_0 ;
  output \FSM_sequential_state_reg[0]_0 ;
  output m_valid_i_reg;
  output m_valid_i_reg_0;
  output [0:0]E;
  output [0:0]m_axi_arready_0;
  output sel_first_i;
  output [11:0]D;
  output \FSM_sequential_state_reg[1]_1 ;
  output m_axi_arvalid;
  output [0:0]\FSM_sequential_state_reg[1]_2 ;
  output [0:0]\FSM_sequential_state_reg[1]_3 ;
  output [0:0]\FSM_sequential_state_reg[1]_4 ;
  input \FSM_sequential_state_reg[1]_5 ;
  input aclk;
  input si_rs_arvalid;
  input areset_d1;
  input m_axi_arready;
  input \axaddr_incr_reg[0] ;
  input sel_first;
  input sel_first_reg;
  input [11:0]axaddr_wrap0;
  input [11:0]\axaddr_wrap_reg[11] ;
  input [11:0]Q;
  input axaddr_wrap1;
  input [0:0]axaddr_offset;
  input [0:0]\wrap_cnt_r_reg[0] ;
  input \wrap_cnt_r_reg[0]_0 ;
  input r_full;
  input \FSM_sequential_state_reg[0]_1 ;

  wire [11:0]D;
  wire [0:0]E;
  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state_reg[0]_0 ;
  wire \FSM_sequential_state_reg[0]_1 ;
  wire \FSM_sequential_state_reg[1]_0 ;
  wire \FSM_sequential_state_reg[1]_1 ;
  wire [0:0]\FSM_sequential_state_reg[1]_2 ;
  wire [0:0]\FSM_sequential_state_reg[1]_3 ;
  wire [0:0]\FSM_sequential_state_reg[1]_4 ;
  wire \FSM_sequential_state_reg[1]_5 ;
  wire [11:0]Q;
  wire aclk;
  wire areset_d1;
  wire \axaddr_incr_reg[0] ;
  wire [0:0]axaddr_offset;
  wire [11:0]axaddr_wrap0;
  wire axaddr_wrap1;
  wire \axaddr_wrap[11]_i_2_n_0 ;
  wire \axaddr_wrap[11]_i_4_n_0 ;
  wire [11:0]\axaddr_wrap_reg[11] ;
  wire m_axi_arready;
  wire [0:0]m_axi_arready_0;
  wire m_axi_arvalid;
  wire m_valid_i_reg;
  wire m_valid_i_reg_0;
  wire r_full;
  wire sel_first;
  wire sel_first_i;
  wire sel_first_reg;
  wire si_rs_arvalid;
  wire [0:0]\wrap_cnt_r_reg[0] ;
  wire \wrap_cnt_r_reg[0]_0 ;

  LUT6 #(
    .INIT(64'hFFFFFFFF31BBFFFF)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(\FSM_sequential_state_reg[0]_0 ),
        .I1(r_full),
        .I2(\FSM_sequential_state_reg[0]_1 ),
        .I3(m_axi_arready),
        .I4(\FSM_sequential_state_reg[1]_0 ),
        .I5(areset_d1),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "SM_IDLE:01,SM_DONE:00,SM_CMD_ACCEPTED:10,SM_CMD_EN:11" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_sequential_state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(\FSM_sequential_state_reg[0]_0 ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "SM_IDLE:01,SM_DONE:00,SM_CMD_ACCEPTED:10,SM_CMD_EN:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state_reg[1]_5 ),
        .Q(\FSM_sequential_state_reg[1]_0 ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hEAAA)) 
    \axaddr_incr[11]_i_1 
       (.I0(\axaddr_incr_reg[0] ),
        .I1(m_axi_arready),
        .I2(\FSM_sequential_state_reg[0]_0 ),
        .I3(\FSM_sequential_state_reg[1]_0 ),
        .O(E));
  LUT6 #(
    .INIT(64'hFFFF88F888F888F8)) 
    \axaddr_wrap[0]_i_1 
       (.I0(\axaddr_wrap[11]_i_2_n_0 ),
        .I1(axaddr_wrap0[0]),
        .I2(\axaddr_wrap_reg[11] [0]),
        .I3(\FSM_sequential_state_reg[1]_1 ),
        .I4(Q[0]),
        .I5(\axaddr_wrap[11]_i_4_n_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hFFFF88F888F888F8)) 
    \axaddr_wrap[10]_i_1 
       (.I0(\axaddr_wrap[11]_i_2_n_0 ),
        .I1(axaddr_wrap0[10]),
        .I2(\axaddr_wrap_reg[11] [10]),
        .I3(\FSM_sequential_state_reg[1]_1 ),
        .I4(Q[10]),
        .I5(\axaddr_wrap[11]_i_4_n_0 ),
        .O(D[10]));
  LUT6 #(
    .INIT(64'hFFFF88F888F888F8)) 
    \axaddr_wrap[11]_i_1 
       (.I0(\axaddr_wrap[11]_i_2_n_0 ),
        .I1(axaddr_wrap0[11]),
        .I2(\axaddr_wrap_reg[11] [11]),
        .I3(\FSM_sequential_state_reg[1]_1 ),
        .I4(Q[11]),
        .I5(\axaddr_wrap[11]_i_4_n_0 ),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \axaddr_wrap[11]_i_2 
       (.I0(m_axi_arready),
        .I1(\FSM_sequential_state_reg[0]_0 ),
        .I2(\FSM_sequential_state_reg[1]_0 ),
        .I3(axaddr_wrap1),
        .O(\axaddr_wrap[11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \axaddr_wrap[11]_i_4 
       (.I0(axaddr_wrap1),
        .I1(m_axi_arready),
        .I2(\FSM_sequential_state_reg[0]_0 ),
        .I3(\FSM_sequential_state_reg[1]_0 ),
        .O(\axaddr_wrap[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF88F888F888F8)) 
    \axaddr_wrap[1]_i_1 
       (.I0(\axaddr_wrap[11]_i_2_n_0 ),
        .I1(axaddr_wrap0[1]),
        .I2(\axaddr_wrap_reg[11] [1]),
        .I3(\FSM_sequential_state_reg[1]_1 ),
        .I4(Q[1]),
        .I5(\axaddr_wrap[11]_i_4_n_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFFFF88F888F888F8)) 
    \axaddr_wrap[2]_i_1 
       (.I0(\axaddr_wrap[11]_i_2_n_0 ),
        .I1(axaddr_wrap0[2]),
        .I2(\axaddr_wrap_reg[11] [2]),
        .I3(\FSM_sequential_state_reg[1]_1 ),
        .I4(Q[2]),
        .I5(\axaddr_wrap[11]_i_4_n_0 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hFFFF88F888F888F8)) 
    \axaddr_wrap[3]_i_1 
       (.I0(\axaddr_wrap[11]_i_2_n_0 ),
        .I1(axaddr_wrap0[3]),
        .I2(\axaddr_wrap_reg[11] [3]),
        .I3(\FSM_sequential_state_reg[1]_1 ),
        .I4(Q[3]),
        .I5(\axaddr_wrap[11]_i_4_n_0 ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hFFFF88F888F888F8)) 
    \axaddr_wrap[4]_i_1 
       (.I0(\axaddr_wrap[11]_i_2_n_0 ),
        .I1(axaddr_wrap0[4]),
        .I2(\axaddr_wrap_reg[11] [4]),
        .I3(\FSM_sequential_state_reg[1]_1 ),
        .I4(Q[4]),
        .I5(\axaddr_wrap[11]_i_4_n_0 ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hFFFF88F888F888F8)) 
    \axaddr_wrap[5]_i_1 
       (.I0(\axaddr_wrap[11]_i_2_n_0 ),
        .I1(axaddr_wrap0[5]),
        .I2(\axaddr_wrap_reg[11] [5]),
        .I3(\FSM_sequential_state_reg[1]_1 ),
        .I4(Q[5]),
        .I5(\axaddr_wrap[11]_i_4_n_0 ),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hFFFF88F888F888F8)) 
    \axaddr_wrap[6]_i_1 
       (.I0(\axaddr_wrap[11]_i_2_n_0 ),
        .I1(axaddr_wrap0[6]),
        .I2(\axaddr_wrap_reg[11] [6]),
        .I3(\FSM_sequential_state_reg[1]_1 ),
        .I4(Q[6]),
        .I5(\axaddr_wrap[11]_i_4_n_0 ),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hFFFF88F888F888F8)) 
    \axaddr_wrap[7]_i_1 
       (.I0(\axaddr_wrap[11]_i_2_n_0 ),
        .I1(axaddr_wrap0[7]),
        .I2(\axaddr_wrap_reg[11] [7]),
        .I3(\FSM_sequential_state_reg[1]_1 ),
        .I4(Q[7]),
        .I5(\axaddr_wrap[11]_i_4_n_0 ),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hFFFF88F888F888F8)) 
    \axaddr_wrap[8]_i_1 
       (.I0(\axaddr_wrap[11]_i_2_n_0 ),
        .I1(axaddr_wrap0[8]),
        .I2(\axaddr_wrap_reg[11] [8]),
        .I3(\FSM_sequential_state_reg[1]_1 ),
        .I4(Q[8]),
        .I5(\axaddr_wrap[11]_i_4_n_0 ),
        .O(D[8]));
  LUT6 #(
    .INIT(64'hFFFF88F888F888F8)) 
    \axaddr_wrap[9]_i_1 
       (.I0(\axaddr_wrap[11]_i_2_n_0 ),
        .I1(axaddr_wrap0[9]),
        .I2(\axaddr_wrap_reg[11] [9]),
        .I3(\FSM_sequential_state_reg[1]_1 ),
        .I4(Q[9]),
        .I5(\axaddr_wrap[11]_i_4_n_0 ),
        .O(D[9]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hA0C0)) 
    \axlen_cnt[8]_i_1 
       (.I0(m_axi_arready),
        .I1(si_rs_arvalid),
        .I2(\FSM_sequential_state_reg[0]_0 ),
        .I3(\FSM_sequential_state_reg[1]_0 ),
        .O(m_axi_arready_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    m_axi_arvalid_INST_0
       (.I0(\FSM_sequential_state_reg[0]_0 ),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .O(m_axi_arvalid));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    \m_payload_i[31]_i_1__0 
       (.I0(\FSM_sequential_state_reg[1]_0 ),
        .I1(\FSM_sequential_state_reg[0]_0 ),
        .I2(si_rs_arvalid),
        .O(\FSM_sequential_state_reg[1]_4 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h80)) 
    r_push_r_i_1
       (.I0(\FSM_sequential_state_reg[1]_0 ),
        .I1(\FSM_sequential_state_reg[0]_0 ),
        .I2(m_axi_arready),
        .O(\FSM_sequential_state_reg[1]_1 ));
  LUT6 #(
    .INIT(64'hCFFFFFFFCECCCECC)) 
    sel_first_i_1
       (.I0(si_rs_arvalid),
        .I1(areset_d1),
        .I2(\FSM_sequential_state_reg[1]_0 ),
        .I3(\FSM_sequential_state_reg[0]_0 ),
        .I4(m_axi_arready),
        .I5(\axaddr_incr_reg[0] ),
        .O(m_valid_i_reg));
  LUT6 #(
    .INIT(64'hCFFFFFFFCECCCECC)) 
    sel_first_i_1__0
       (.I0(si_rs_arvalid),
        .I1(areset_d1),
        .I2(\FSM_sequential_state_reg[1]_0 ),
        .I3(\FSM_sequential_state_reg[0]_0 ),
        .I4(m_axi_arready),
        .I5(sel_first),
        .O(m_valid_i_reg_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF4FCC4CCC)) 
    sel_first_i_1__1
       (.I0(m_axi_arready),
        .I1(sel_first_reg),
        .I2(\FSM_sequential_state_reg[1]_0 ),
        .I3(\FSM_sequential_state_reg[0]_0 ),
        .I4(si_rs_arvalid),
        .I5(areset_d1),
        .O(sel_first_i));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \wrap_boundary_axaddr_r[11]_i_1 
       (.I0(\FSM_sequential_state_reg[1]_0 ),
        .I1(\FSM_sequential_state_reg[0]_0 ),
        .I2(si_rs_arvalid),
        .O(\FSM_sequential_state_reg[1]_3 ));
  LUT6 #(
    .INIT(64'h4000FFBFBFBF0000)) 
    \wrap_cnt_r[0]_i_1 
       (.I0(\FSM_sequential_state_reg[1]_0 ),
        .I1(\FSM_sequential_state_reg[0]_0 ),
        .I2(si_rs_arvalid),
        .I3(axaddr_offset),
        .I4(\wrap_cnt_r_reg[0] ),
        .I5(\wrap_cnt_r_reg[0]_0 ),
        .O(\FSM_sequential_state_reg[1]_2 ));
endmodule

(* ORIG_REF_NAME = "axi_protocol_converter_v2_1_27_b2s_simple_fifo" *) 
module embsys_auto_pc_1_axi_protocol_converter_v2_1_27_b2s_simple_fifo
   (\cnt_read_reg[1]_0 ,
    m_axi_rready,
    rd_a_full,
    a_full0,
    out,
    \cnt_read_reg[4]_0 ,
    si_rs_rready,
    m_axi_rvalid,
    in,
    aclk,
    SS,
    E);
  output \cnt_read_reg[1]_0 ;
  output m_axi_rready;
  output rd_a_full;
  output a_full0;
  output [33:0]out;
  input \cnt_read_reg[4]_0 ;
  input si_rs_rready;
  input m_axi_rvalid;
  input [33:0]in;
  input aclk;
  input [0:0]SS;
  input [0:0]E;

  wire [0:0]E;
  wire [0:0]SS;
  wire a_full0;
  wire aclk;
  wire \cnt_read[0]_i_1_n_0 ;
  wire \cnt_read[1]_i_1__0_n_0 ;
  wire \cnt_read[2]_i_1__0_n_0 ;
  wire \cnt_read[3]_i_1__0_n_0 ;
  wire \cnt_read[4]_i_2__0_n_0 ;
  wire \cnt_read[4]_i_4_n_0 ;
  wire [4:0]cnt_read_reg;
  wire \cnt_read_reg[1]_0 ;
  wire \cnt_read_reg[4]_0 ;
  wire [33:0]in;
  wire m_axi_rready;
  wire m_axi_rvalid;
  wire [33:0]out;
  wire rd_a_full;
  wire si_rs_rready;
  wire wr_en0;
  wire \NLW_memory_reg[31][0]_srl32_Q31_UNCONNECTED ;
  wire \NLW_memory_reg[31][10]_srl32_Q31_UNCONNECTED ;
  wire \NLW_memory_reg[31][11]_srl32_Q31_UNCONNECTED ;
  wire \NLW_memory_reg[31][12]_srl32_Q31_UNCONNECTED ;
  wire \NLW_memory_reg[31][13]_srl32_Q31_UNCONNECTED ;
  wire \NLW_memory_reg[31][14]_srl32_Q31_UNCONNECTED ;
  wire \NLW_memory_reg[31][15]_srl32_Q31_UNCONNECTED ;
  wire \NLW_memory_reg[31][16]_srl32_Q31_UNCONNECTED ;
  wire \NLW_memory_reg[31][17]_srl32_Q31_UNCONNECTED ;
  wire \NLW_memory_reg[31][18]_srl32_Q31_UNCONNECTED ;
  wire \NLW_memory_reg[31][19]_srl32_Q31_UNCONNECTED ;
  wire \NLW_memory_reg[31][1]_srl32_Q31_UNCONNECTED ;
  wire \NLW_memory_reg[31][20]_srl32_Q31_UNCONNECTED ;
  wire \NLW_memory_reg[31][21]_srl32_Q31_UNCONNECTED ;
  wire \NLW_memory_reg[31][22]_srl32_Q31_UNCONNECTED ;
  wire \NLW_memory_reg[31][23]_srl32_Q31_UNCONNECTED ;
  wire \NLW_memory_reg[31][24]_srl32_Q31_UNCONNECTED ;
  wire \NLW_memory_reg[31][25]_srl32_Q31_UNCONNECTED ;
  wire \NLW_memory_reg[31][26]_srl32_Q31_UNCONNECTED ;
  wire \NLW_memory_reg[31][27]_srl32_Q31_UNCONNECTED ;
  wire \NLW_memory_reg[31][28]_srl32_Q31_UNCONNECTED ;
  wire \NLW_memory_reg[31][29]_srl32_Q31_UNCONNECTED ;
  wire \NLW_memory_reg[31][2]_srl32_Q31_UNCONNECTED ;
  wire \NLW_memory_reg[31][30]_srl32_Q31_UNCONNECTED ;
  wire \NLW_memory_reg[31][31]_srl32_Q31_UNCONNECTED ;
  wire \NLW_memory_reg[31][32]_srl32_Q31_UNCONNECTED ;
  wire \NLW_memory_reg[31][33]_srl32_Q31_UNCONNECTED ;
  wire \NLW_memory_reg[31][3]_srl32_Q31_UNCONNECTED ;
  wire \NLW_memory_reg[31][4]_srl32_Q31_UNCONNECTED ;
  wire \NLW_memory_reg[31][5]_srl32_Q31_UNCONNECTED ;
  wire \NLW_memory_reg[31][6]_srl32_Q31_UNCONNECTED ;
  wire \NLW_memory_reg[31][7]_srl32_Q31_UNCONNECTED ;
  wire \NLW_memory_reg[31][8]_srl32_Q31_UNCONNECTED ;
  wire \NLW_memory_reg[31][9]_srl32_Q31_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h7000C000)) 
    \FSM_sequential_state[1]_i_5 
       (.I0(cnt_read_reg[0]),
        .I1(cnt_read_reg[2]),
        .I2(cnt_read_reg[4]),
        .I3(cnt_read_reg[3]),
        .I4(cnt_read_reg[1]),
        .O(rd_a_full));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \cnt_read[0]_i_1 
       (.I0(cnt_read_reg[0]),
        .O(\cnt_read[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \cnt_read[1]_i_1__0 
       (.I0(\cnt_read[4]_i_4_n_0 ),
        .I1(cnt_read_reg[0]),
        .I2(cnt_read_reg[1]),
        .O(\cnt_read[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hA69A)) 
    \cnt_read[2]_i_1__0 
       (.I0(cnt_read_reg[2]),
        .I1(cnt_read_reg[1]),
        .I2(\cnt_read[4]_i_4_n_0 ),
        .I3(cnt_read_reg[0]),
        .O(\cnt_read[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h9AAAAAA6)) 
    \cnt_read[3]_i_1__0 
       (.I0(cnt_read_reg[3]),
        .I1(\cnt_read[4]_i_4_n_0 ),
        .I2(cnt_read_reg[0]),
        .I3(cnt_read_reg[1]),
        .I4(cnt_read_reg[2]),
        .O(\cnt_read[3]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h9AAAAAAAAAAAAAA6)) 
    \cnt_read[4]_i_2__0 
       (.I0(cnt_read_reg[4]),
        .I1(\cnt_read[4]_i_4_n_0 ),
        .I2(cnt_read_reg[0]),
        .I3(cnt_read_reg[1]),
        .I4(cnt_read_reg[2]),
        .I5(cnt_read_reg[3]),
        .O(\cnt_read[4]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h4080C080FFFFFFFF)) 
    \cnt_read[4]_i_3__0 
       (.I0(cnt_read_reg[1]),
        .I1(cnt_read_reg[3]),
        .I2(cnt_read_reg[4]),
        .I3(cnt_read_reg[2]),
        .I4(cnt_read_reg[0]),
        .I5(m_axi_rvalid),
        .O(\cnt_read_reg[1]_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \cnt_read[4]_i_4 
       (.I0(\cnt_read_reg[1]_0 ),
        .I1(\cnt_read_reg[4]_0 ),
        .I2(si_rs_rready),
        .O(\cnt_read[4]_i_4_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \cnt_read_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(\cnt_read[0]_i_1_n_0 ),
        .Q(cnt_read_reg[0]),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \cnt_read_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(\cnt_read[1]_i_1__0_n_0 ),
        .Q(cnt_read_reg[1]),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \cnt_read_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(\cnt_read[2]_i_1__0_n_0 ),
        .Q(cnt_read_reg[2]),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \cnt_read_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(\cnt_read[3]_i_1__0_n_0 ),
        .Q(cnt_read_reg[3]),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \cnt_read_reg[4] 
       (.C(aclk),
        .CE(E),
        .D(\cnt_read[4]_i_2__0_n_0 ),
        .Q(cnt_read_reg[4]),
        .S(SS));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hBF7F3F7F)) 
    m_axi_rready_INST_0
       (.I0(cnt_read_reg[1]),
        .I1(cnt_read_reg[3]),
        .I2(cnt_read_reg[4]),
        .I3(cnt_read_reg[2]),
        .I4(cnt_read_reg[0]),
        .O(m_axi_rready));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    m_valid_i_i_3
       (.I0(cnt_read_reg[1]),
        .I1(cnt_read_reg[3]),
        .I2(cnt_read_reg[4]),
        .I3(cnt_read_reg[2]),
        .I4(cnt_read_reg[0]),
        .O(a_full0));
  (* srl_bus_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] " *) 
  (* srl_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][0]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \memory_reg[31][0]_srl32 
       (.A(cnt_read_reg),
        .CE(wr_en0),
        .CLK(aclk),
        .D(in[0]),
        .Q(out[0]),
        .Q31(\NLW_memory_reg[31][0]_srl32_Q31_UNCONNECTED ));
  LUT6 #(
    .INIT(64'h80AAAAAA0AAAAAAA)) 
    \memory_reg[31][0]_srl32_i_1 
       (.I0(m_axi_rvalid),
        .I1(cnt_read_reg[0]),
        .I2(cnt_read_reg[2]),
        .I3(cnt_read_reg[4]),
        .I4(cnt_read_reg[3]),
        .I5(cnt_read_reg[1]),
        .O(wr_en0));
  (* srl_bus_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] " *) 
  (* srl_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][10]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \memory_reg[31][10]_srl32 
       (.A(cnt_read_reg),
        .CE(wr_en0),
        .CLK(aclk),
        .D(in[10]),
        .Q(out[10]),
        .Q31(\NLW_memory_reg[31][10]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] " *) 
  (* srl_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][11]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \memory_reg[31][11]_srl32 
       (.A(cnt_read_reg),
        .CE(wr_en0),
        .CLK(aclk),
        .D(in[11]),
        .Q(out[11]),
        .Q31(\NLW_memory_reg[31][11]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] " *) 
  (* srl_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][12]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \memory_reg[31][12]_srl32 
       (.A(cnt_read_reg),
        .CE(wr_en0),
        .CLK(aclk),
        .D(in[12]),
        .Q(out[12]),
        .Q31(\NLW_memory_reg[31][12]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] " *) 
  (* srl_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][13]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \memory_reg[31][13]_srl32 
       (.A(cnt_read_reg),
        .CE(wr_en0),
        .CLK(aclk),
        .D(in[13]),
        .Q(out[13]),
        .Q31(\NLW_memory_reg[31][13]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] " *) 
  (* srl_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][14]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \memory_reg[31][14]_srl32 
       (.A(cnt_read_reg),
        .CE(wr_en0),
        .CLK(aclk),
        .D(in[14]),
        .Q(out[14]),
        .Q31(\NLW_memory_reg[31][14]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] " *) 
  (* srl_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][15]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \memory_reg[31][15]_srl32 
       (.A(cnt_read_reg),
        .CE(wr_en0),
        .CLK(aclk),
        .D(in[15]),
        .Q(out[15]),
        .Q31(\NLW_memory_reg[31][15]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] " *) 
  (* srl_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][16]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \memory_reg[31][16]_srl32 
       (.A(cnt_read_reg),
        .CE(wr_en0),
        .CLK(aclk),
        .D(in[16]),
        .Q(out[16]),
        .Q31(\NLW_memory_reg[31][16]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] " *) 
  (* srl_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][17]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \memory_reg[31][17]_srl32 
       (.A(cnt_read_reg),
        .CE(wr_en0),
        .CLK(aclk),
        .D(in[17]),
        .Q(out[17]),
        .Q31(\NLW_memory_reg[31][17]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] " *) 
  (* srl_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][18]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \memory_reg[31][18]_srl32 
       (.A(cnt_read_reg),
        .CE(wr_en0),
        .CLK(aclk),
        .D(in[18]),
        .Q(out[18]),
        .Q31(\NLW_memory_reg[31][18]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] " *) 
  (* srl_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][19]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \memory_reg[31][19]_srl32 
       (.A(cnt_read_reg),
        .CE(wr_en0),
        .CLK(aclk),
        .D(in[19]),
        .Q(out[19]),
        .Q31(\NLW_memory_reg[31][19]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] " *) 
  (* srl_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][1]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \memory_reg[31][1]_srl32 
       (.A(cnt_read_reg),
        .CE(wr_en0),
        .CLK(aclk),
        .D(in[1]),
        .Q(out[1]),
        .Q31(\NLW_memory_reg[31][1]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] " *) 
  (* srl_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][20]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \memory_reg[31][20]_srl32 
       (.A(cnt_read_reg),
        .CE(wr_en0),
        .CLK(aclk),
        .D(in[20]),
        .Q(out[20]),
        .Q31(\NLW_memory_reg[31][20]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] " *) 
  (* srl_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][21]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \memory_reg[31][21]_srl32 
       (.A(cnt_read_reg),
        .CE(wr_en0),
        .CLK(aclk),
        .D(in[21]),
        .Q(out[21]),
        .Q31(\NLW_memory_reg[31][21]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] " *) 
  (* srl_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][22]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \memory_reg[31][22]_srl32 
       (.A(cnt_read_reg),
        .CE(wr_en0),
        .CLK(aclk),
        .D(in[22]),
        .Q(out[22]),
        .Q31(\NLW_memory_reg[31][22]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] " *) 
  (* srl_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][23]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \memory_reg[31][23]_srl32 
       (.A(cnt_read_reg),
        .CE(wr_en0),
        .CLK(aclk),
        .D(in[23]),
        .Q(out[23]),
        .Q31(\NLW_memory_reg[31][23]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] " *) 
  (* srl_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][24]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \memory_reg[31][24]_srl32 
       (.A(cnt_read_reg),
        .CE(wr_en0),
        .CLK(aclk),
        .D(in[24]),
        .Q(out[24]),
        .Q31(\NLW_memory_reg[31][24]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] " *) 
  (* srl_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][25]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \memory_reg[31][25]_srl32 
       (.A(cnt_read_reg),
        .CE(wr_en0),
        .CLK(aclk),
        .D(in[25]),
        .Q(out[25]),
        .Q31(\NLW_memory_reg[31][25]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] " *) 
  (* srl_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][26]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \memory_reg[31][26]_srl32 
       (.A(cnt_read_reg),
        .CE(wr_en0),
        .CLK(aclk),
        .D(in[26]),
        .Q(out[26]),
        .Q31(\NLW_memory_reg[31][26]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] " *) 
  (* srl_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][27]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \memory_reg[31][27]_srl32 
       (.A(cnt_read_reg),
        .CE(wr_en0),
        .CLK(aclk),
        .D(in[27]),
        .Q(out[27]),
        .Q31(\NLW_memory_reg[31][27]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] " *) 
  (* srl_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][28]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \memory_reg[31][28]_srl32 
       (.A(cnt_read_reg),
        .CE(wr_en0),
        .CLK(aclk),
        .D(in[28]),
        .Q(out[28]),
        .Q31(\NLW_memory_reg[31][28]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] " *) 
  (* srl_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][29]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \memory_reg[31][29]_srl32 
       (.A(cnt_read_reg),
        .CE(wr_en0),
        .CLK(aclk),
        .D(in[29]),
        .Q(out[29]),
        .Q31(\NLW_memory_reg[31][29]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] " *) 
  (* srl_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][2]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \memory_reg[31][2]_srl32 
       (.A(cnt_read_reg),
        .CE(wr_en0),
        .CLK(aclk),
        .D(in[2]),
        .Q(out[2]),
        .Q31(\NLW_memory_reg[31][2]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] " *) 
  (* srl_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][30]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \memory_reg[31][30]_srl32 
       (.A(cnt_read_reg),
        .CE(wr_en0),
        .CLK(aclk),
        .D(in[30]),
        .Q(out[30]),
        .Q31(\NLW_memory_reg[31][30]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] " *) 
  (* srl_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][31]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \memory_reg[31][31]_srl32 
       (.A(cnt_read_reg),
        .CE(wr_en0),
        .CLK(aclk),
        .D(in[31]),
        .Q(out[31]),
        .Q31(\NLW_memory_reg[31][31]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] " *) 
  (* srl_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][32]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \memory_reg[31][32]_srl32 
       (.A(cnt_read_reg),
        .CE(wr_en0),
        .CLK(aclk),
        .D(in[32]),
        .Q(out[32]),
        .Q31(\NLW_memory_reg[31][32]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] " *) 
  (* srl_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][33]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \memory_reg[31][33]_srl32 
       (.A(cnt_read_reg),
        .CE(wr_en0),
        .CLK(aclk),
        .D(in[33]),
        .Q(out[33]),
        .Q31(\NLW_memory_reg[31][33]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] " *) 
  (* srl_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][3]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \memory_reg[31][3]_srl32 
       (.A(cnt_read_reg),
        .CE(wr_en0),
        .CLK(aclk),
        .D(in[3]),
        .Q(out[3]),
        .Q31(\NLW_memory_reg[31][3]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] " *) 
  (* srl_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][4]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \memory_reg[31][4]_srl32 
       (.A(cnt_read_reg),
        .CE(wr_en0),
        .CLK(aclk),
        .D(in[4]),
        .Q(out[4]),
        .Q31(\NLW_memory_reg[31][4]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] " *) 
  (* srl_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][5]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \memory_reg[31][5]_srl32 
       (.A(cnt_read_reg),
        .CE(wr_en0),
        .CLK(aclk),
        .D(in[5]),
        .Q(out[5]),
        .Q31(\NLW_memory_reg[31][5]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] " *) 
  (* srl_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][6]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \memory_reg[31][6]_srl32 
       (.A(cnt_read_reg),
        .CE(wr_en0),
        .CLK(aclk),
        .D(in[6]),
        .Q(out[6]),
        .Q31(\NLW_memory_reg[31][6]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] " *) 
  (* srl_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][7]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \memory_reg[31][7]_srl32 
       (.A(cnt_read_reg),
        .CE(wr_en0),
        .CLK(aclk),
        .D(in[7]),
        .Q(out[7]),
        .Q31(\NLW_memory_reg[31][7]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] " *) 
  (* srl_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][8]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \memory_reg[31][8]_srl32 
       (.A(cnt_read_reg),
        .CE(wr_en0),
        .CLK(aclk),
        .D(in[8]),
        .Q(out[8]),
        .Q31(\NLW_memory_reg[31][8]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] " *) 
  (* srl_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][9]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \memory_reg[31][9]_srl32 
       (.A(cnt_read_reg),
        .CE(wr_en0),
        .CLK(aclk),
        .D(in[9]),
        .Q(out[9]),
        .Q31(\NLW_memory_reg[31][9]_srl32_Q31_UNCONNECTED ));
endmodule

(* ORIG_REF_NAME = "axi_protocol_converter_v2_1_27_b2s_simple_fifo" *) 
module embsys_auto_pc_1_axi_protocol_converter_v2_1_27_b2s_simple_fifo__parameterized0
   (si_rs_rlast,
    E,
    \cnt_read_reg[1]_0 ,
    r_full,
    r_push_r,
    trans_in,
    aclk,
    si_rs_rready,
    \cnt_read_reg[0]_0 ,
    a_full0,
    rd_a_full,
    SS);
  output si_rs_rlast;
  output [0:0]E;
  output \cnt_read_reg[1]_0 ;
  output r_full;
  input r_push_r;
  input [0:0]trans_in;
  input aclk;
  input si_rs_rready;
  input \cnt_read_reg[0]_0 ;
  input a_full0;
  input rd_a_full;
  input [0:0]SS;

  wire [0:0]E;
  wire [0:0]SS;
  wire a_full0;
  wire aclk;
  wire \cnt_read[0]_i_1__0_n_0 ;
  wire \cnt_read[1]_i_1_n_0 ;
  wire \cnt_read[2]_i_1_n_0 ;
  wire \cnt_read[3]_i_1_n_0 ;
  wire \cnt_read[4]_i_1__0_n_0 ;
  wire \cnt_read[4]_i_2_n_0 ;
  wire \cnt_read[4]_i_3_n_0 ;
  wire [4:0]cnt_read_reg;
  wire \cnt_read_reg[0]_0 ;
  wire \cnt_read_reg[1]_0 ;
  wire r_full;
  wire r_push_r;
  wire rd_a_full;
  wire si_rs_rlast;
  wire si_rs_rready;
  wire [0:0]trans_in;
  wire \NLW_memory_reg[31][0]_srl32_Q31_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hFFFFFFFF40C0C000)) 
    \FSM_sequential_state[1]_i_4 
       (.I0(cnt_read_reg[0]),
        .I1(cnt_read_reg[4]),
        .I2(cnt_read_reg[3]),
        .I3(cnt_read_reg[2]),
        .I4(cnt_read_reg[1]),
        .I5(rd_a_full),
        .O(r_full));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \cnt_read[0]_i_1__0 
       (.I0(cnt_read_reg[0]),
        .O(\cnt_read[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \cnt_read[1]_i_1 
       (.I0(cnt_read_reg[1]),
        .I1(cnt_read_reg[0]),
        .I2(\cnt_read[4]_i_3_n_0 ),
        .O(\cnt_read[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hA96A)) 
    \cnt_read[2]_i_1 
       (.I0(cnt_read_reg[2]),
        .I1(cnt_read_reg[1]),
        .I2(cnt_read_reg[0]),
        .I3(\cnt_read[4]_i_3_n_0 ),
        .O(\cnt_read[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hA6AAAA9A)) 
    \cnt_read[3]_i_1 
       (.I0(cnt_read_reg[3]),
        .I1(cnt_read_reg[0]),
        .I2(\cnt_read[4]_i_3_n_0 ),
        .I3(cnt_read_reg[1]),
        .I4(cnt_read_reg[2]),
        .O(\cnt_read[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h2D)) 
    \cnt_read[4]_i_1 
       (.I0(si_rs_rready),
        .I1(\cnt_read_reg[1]_0 ),
        .I2(\cnt_read_reg[0]_0 ),
        .O(E));
  LUT3 #(
    .INIT(8'hD2)) 
    \cnt_read[4]_i_1__0 
       (.I0(si_rs_rready),
        .I1(\cnt_read_reg[1]_0 ),
        .I2(r_push_r),
        .O(\cnt_read[4]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hA6AAAAAAAAAAAA9A)) 
    \cnt_read[4]_i_2 
       (.I0(cnt_read_reg[4]),
        .I1(cnt_read_reg[0]),
        .I2(\cnt_read[4]_i_3_n_0 ),
        .I3(cnt_read_reg[1]),
        .I4(cnt_read_reg[2]),
        .I5(cnt_read_reg[3]),
        .O(\cnt_read[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    \cnt_read[4]_i_3 
       (.I0(\cnt_read_reg[1]_0 ),
        .I1(si_rs_rready),
        .I2(r_push_r),
        .O(\cnt_read[4]_i_3_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \cnt_read_reg[0] 
       (.C(aclk),
        .CE(\cnt_read[4]_i_1__0_n_0 ),
        .D(\cnt_read[0]_i_1__0_n_0 ),
        .Q(cnt_read_reg[0]),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \cnt_read_reg[1] 
       (.C(aclk),
        .CE(\cnt_read[4]_i_1__0_n_0 ),
        .D(\cnt_read[1]_i_1_n_0 ),
        .Q(cnt_read_reg[1]),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \cnt_read_reg[2] 
       (.C(aclk),
        .CE(\cnt_read[4]_i_1__0_n_0 ),
        .D(\cnt_read[2]_i_1_n_0 ),
        .Q(cnt_read_reg[2]),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \cnt_read_reg[3] 
       (.C(aclk),
        .CE(\cnt_read[4]_i_1__0_n_0 ),
        .D(\cnt_read[3]_i_1_n_0 ),
        .Q(cnt_read_reg[3]),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \cnt_read_reg[4] 
       (.C(aclk),
        .CE(\cnt_read[4]_i_1__0_n_0 ),
        .D(\cnt_read[4]_i_2_n_0 ),
        .Q(cnt_read_reg[4]),
        .S(SS));
  LUT6 #(
    .INIT(64'h80000000FFFFFFFF)) 
    m_valid_i_i_2
       (.I0(cnt_read_reg[1]),
        .I1(cnt_read_reg[2]),
        .I2(cnt_read_reg[3]),
        .I3(cnt_read_reg[4]),
        .I4(cnt_read_reg[0]),
        .I5(a_full0),
        .O(\cnt_read_reg[1]_0 ));
  (* srl_bus_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/transaction_fifo_0/memory_reg[31] " *) 
  (* srl_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/transaction_fifo_0/memory_reg[31][0]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \memory_reg[31][0]_srl32 
       (.A(cnt_read_reg),
        .CE(r_push_r),
        .CLK(aclk),
        .D(trans_in),
        .Q(si_rs_rlast),
        .Q31(\NLW_memory_reg[31][0]_srl32_Q31_UNCONNECTED ));
endmodule

(* ORIG_REF_NAME = "axi_protocol_converter_v2_1_27_b2s_wrap_cmd" *) 
module embsys_auto_pc_1_axi_protocol_converter_v2_1_27_b2s_wrap_cmd
   (wrap_next_pending,
    sel_first,
    axaddr_wrap0,
    Q,
    \m_payload_i_reg[39] ,
    axaddr_wrap1,
    sel_first_reg_0,
    \wrap_second_len_r_reg[3]_0 ,
    \axaddr_offset_r_reg[3]_0 ,
    \wrap_boundary_axaddr_r_reg[11]_0 ,
    aclk,
    sel_first_reg_1,
    S,
    \axlen_cnt_reg[3]_0 ,
    sel_first_i,
    s_axburst_eq1_reg,
    s_axburst_eq1_reg_0,
    r_push,
    E,
    next_pending_r_reg_0,
    \m_axi_araddr[11] ,
    \axlen_cnt_reg[0]_0 ,
    si_rs_arvalid,
    axaddr_offset,
    \wrap_cnt_r_reg[1]_0 ,
    \wrap_second_len_r_reg[3]_1 ,
    \axaddr_wrap_reg[0]_0 ,
    D,
    \wrap_boundary_axaddr_r_reg[6]_0 ,
    \axaddr_wrap_reg[11]_0 );
  output wrap_next_pending;
  output sel_first;
  output [11:0]axaddr_wrap0;
  output [11:0]Q;
  output \m_payload_i_reg[39] ;
  output axaddr_wrap1;
  output sel_first_reg_0;
  output [3:0]\wrap_second_len_r_reg[3]_0 ;
  output [3:0]\axaddr_offset_r_reg[3]_0 ;
  output [11:0]\wrap_boundary_axaddr_r_reg[11]_0 ;
  input aclk;
  input sel_first_reg_1;
  input [1:0]S;
  input [12:0]\axlen_cnt_reg[3]_0 ;
  input sel_first_i;
  input s_axburst_eq1_reg;
  input s_axburst_eq1_reg_0;
  input r_push;
  input [0:0]E;
  input next_pending_r_reg_0;
  input \m_axi_araddr[11] ;
  input \axlen_cnt_reg[0]_0 ;
  input si_rs_arvalid;
  input [3:0]axaddr_offset;
  input \wrap_cnt_r_reg[1]_0 ;
  input [3:0]\wrap_second_len_r_reg[3]_1 ;
  input [0:0]\axaddr_wrap_reg[0]_0 ;
  input [2:0]D;
  input [6:0]\wrap_boundary_axaddr_r_reg[6]_0 ;
  input [11:0]\axaddr_wrap_reg[11]_0 ;

  wire [2:0]D;
  wire [0:0]E;
  wire [11:0]Q;
  wire [1:0]S;
  wire aclk;
  wire [3:0]axaddr_offset;
  wire [3:0]\axaddr_offset_r_reg[3]_0 ;
  wire [11:0]axaddr_wrap0;
  wire axaddr_wrap1;
  wire \axaddr_wrap[11]_i_6_n_0 ;
  wire \axaddr_wrap[3]_i_4_n_0 ;
  wire \axaddr_wrap[3]_i_5_n_0 ;
  wire [0:0]\axaddr_wrap_reg[0]_0 ;
  wire [11:0]\axaddr_wrap_reg[11]_0 ;
  wire \axaddr_wrap_reg[11]_i_3_n_1 ;
  wire \axaddr_wrap_reg[11]_i_3_n_2 ;
  wire \axaddr_wrap_reg[11]_i_3_n_3 ;
  wire \axaddr_wrap_reg[3]_i_2_n_0 ;
  wire \axaddr_wrap_reg[3]_i_2_n_1 ;
  wire \axaddr_wrap_reg[3]_i_2_n_2 ;
  wire \axaddr_wrap_reg[3]_i_2_n_3 ;
  wire \axaddr_wrap_reg[7]_i_2_n_0 ;
  wire \axaddr_wrap_reg[7]_i_2_n_1 ;
  wire \axaddr_wrap_reg[7]_i_2_n_2 ;
  wire \axaddr_wrap_reg[7]_i_2_n_3 ;
  wire \axlen_cnt[0]_i_1__0_n_0 ;
  wire \axlen_cnt[1]_i_1_n_0 ;
  wire \axlen_cnt[2]_i_1_n_0 ;
  wire \axlen_cnt[3]_i_1_n_0 ;
  wire \axlen_cnt[3]_i_2_n_0 ;
  wire \axlen_cnt[3]_i_3_n_0 ;
  wire \axlen_cnt[4]_i_1_n_0 ;
  wire \axlen_cnt_reg[0]_0 ;
  wire [12:0]\axlen_cnt_reg[3]_0 ;
  wire \axlen_cnt_reg_n_0_[0] ;
  wire \axlen_cnt_reg_n_0_[1] ;
  wire \axlen_cnt_reg_n_0_[2] ;
  wire \axlen_cnt_reg_n_0_[3] ;
  wire \axlen_cnt_reg_n_0_[4] ;
  wire \m_axi_araddr[11] ;
  wire \m_payload_i_reg[39] ;
  wire next_pending_r;
  wire next_pending_r_reg_0;
  wire r_push;
  wire s_axburst_eq1_reg;
  wire s_axburst_eq1_reg_0;
  wire sel_first;
  wire sel_first_i;
  wire sel_first_reg_0;
  wire sel_first_reg_1;
  wire si_rs_arvalid;
  wire [11:0]\wrap_boundary_axaddr_r_reg[11]_0 ;
  wire [6:0]\wrap_boundary_axaddr_r_reg[6]_0 ;
  wire [1:1]wrap_cnt;
  wire [3:0]wrap_cnt_r;
  wire \wrap_cnt_r_reg[1]_0 ;
  wire wrap_next_pending;
  wire [3:0]\wrap_second_len_r_reg[3]_0 ;
  wire [3:0]\wrap_second_len_r_reg[3]_1 ;
  wire [3:3]\NLW_axaddr_wrap_reg[11]_i_3_CO_UNCONNECTED ;

  FDRE \axaddr_offset_r_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(axaddr_offset[0]),
        .Q(\axaddr_offset_r_reg[3]_0 [0]),
        .R(1'b0));
  FDRE \axaddr_offset_r_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(axaddr_offset[1]),
        .Q(\axaddr_offset_r_reg[3]_0 [1]),
        .R(1'b0));
  FDRE \axaddr_offset_r_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(axaddr_offset[2]),
        .Q(\axaddr_offset_r_reg[3]_0 [2]),
        .R(1'b0));
  FDRE \axaddr_offset_r_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(axaddr_offset[3]),
        .Q(\axaddr_offset_r_reg[3]_0 [3]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h4100004100000000)) 
    \axaddr_wrap[11]_i_5 
       (.I0(\axlen_cnt_reg_n_0_[4] ),
        .I1(wrap_cnt_r[0]),
        .I2(\axlen_cnt_reg_n_0_[0] ),
        .I3(\axlen_cnt_reg_n_0_[1] ),
        .I4(wrap_cnt_r[1]),
        .I5(\axaddr_wrap[11]_i_6_n_0 ),
        .O(axaddr_wrap1));
  LUT4 #(
    .INIT(16'h9009)) 
    \axaddr_wrap[11]_i_6 
       (.I0(wrap_cnt_r[2]),
        .I1(\axlen_cnt_reg_n_0_[2] ),
        .I2(wrap_cnt_r[3]),
        .I3(\axlen_cnt_reg_n_0_[3] ),
        .O(\axaddr_wrap[11]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \axaddr_wrap[3]_i_4 
       (.I0(Q[2]),
        .I1(\axlen_cnt_reg[3]_0 [5]),
        .I2(\axlen_cnt_reg[3]_0 [6]),
        .O(\axaddr_wrap[3]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \axaddr_wrap[3]_i_5 
       (.I0(Q[1]),
        .I1(\axlen_cnt_reg[3]_0 [6]),
        .I2(\axlen_cnt_reg[3]_0 [5]),
        .O(\axaddr_wrap[3]_i_5_n_0 ));
  FDRE \axaddr_wrap_reg[0] 
       (.C(aclk),
        .CE(\axaddr_wrap_reg[0]_0 ),
        .D(\axaddr_wrap_reg[11]_0 [0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \axaddr_wrap_reg[10] 
       (.C(aclk),
        .CE(\axaddr_wrap_reg[0]_0 ),
        .D(\axaddr_wrap_reg[11]_0 [10]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE \axaddr_wrap_reg[11] 
       (.C(aclk),
        .CE(\axaddr_wrap_reg[0]_0 ),
        .D(\axaddr_wrap_reg[11]_0 [11]),
        .Q(Q[11]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \axaddr_wrap_reg[11]_i_3 
       (.CI(\axaddr_wrap_reg[7]_i_2_n_0 ),
        .CO({\NLW_axaddr_wrap_reg[11]_i_3_CO_UNCONNECTED [3],\axaddr_wrap_reg[11]_i_3_n_1 ,\axaddr_wrap_reg[11]_i_3_n_2 ,\axaddr_wrap_reg[11]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(axaddr_wrap0[11:8]),
        .S(Q[11:8]));
  FDRE \axaddr_wrap_reg[1] 
       (.C(aclk),
        .CE(\axaddr_wrap_reg[0]_0 ),
        .D(\axaddr_wrap_reg[11]_0 [1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \axaddr_wrap_reg[2] 
       (.C(aclk),
        .CE(\axaddr_wrap_reg[0]_0 ),
        .D(\axaddr_wrap_reg[11]_0 [2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \axaddr_wrap_reg[3] 
       (.C(aclk),
        .CE(\axaddr_wrap_reg[0]_0 ),
        .D(\axaddr_wrap_reg[11]_0 [3]),
        .Q(Q[3]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \axaddr_wrap_reg[3]_i_2 
       (.CI(1'b0),
        .CO({\axaddr_wrap_reg[3]_i_2_n_0 ,\axaddr_wrap_reg[3]_i_2_n_1 ,\axaddr_wrap_reg[3]_i_2_n_2 ,\axaddr_wrap_reg[3]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[3:0]),
        .O(axaddr_wrap0[3:0]),
        .S({S[1],\axaddr_wrap[3]_i_4_n_0 ,\axaddr_wrap[3]_i_5_n_0 ,S[0]}));
  FDRE \axaddr_wrap_reg[4] 
       (.C(aclk),
        .CE(\axaddr_wrap_reg[0]_0 ),
        .D(\axaddr_wrap_reg[11]_0 [4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \axaddr_wrap_reg[5] 
       (.C(aclk),
        .CE(\axaddr_wrap_reg[0]_0 ),
        .D(\axaddr_wrap_reg[11]_0 [5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \axaddr_wrap_reg[6] 
       (.C(aclk),
        .CE(\axaddr_wrap_reg[0]_0 ),
        .D(\axaddr_wrap_reg[11]_0 [6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \axaddr_wrap_reg[7] 
       (.C(aclk),
        .CE(\axaddr_wrap_reg[0]_0 ),
        .D(\axaddr_wrap_reg[11]_0 [7]),
        .Q(Q[7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \axaddr_wrap_reg[7]_i_2 
       (.CI(\axaddr_wrap_reg[3]_i_2_n_0 ),
        .CO({\axaddr_wrap_reg[7]_i_2_n_0 ,\axaddr_wrap_reg[7]_i_2_n_1 ,\axaddr_wrap_reg[7]_i_2_n_2 ,\axaddr_wrap_reg[7]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(axaddr_wrap0[7:4]),
        .S(Q[7:4]));
  FDRE \axaddr_wrap_reg[8] 
       (.C(aclk),
        .CE(\axaddr_wrap_reg[0]_0 ),
        .D(\axaddr_wrap_reg[11]_0 [8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \axaddr_wrap_reg[9] 
       (.C(aclk),
        .CE(\axaddr_wrap_reg[0]_0 ),
        .D(\axaddr_wrap_reg[11]_0 [9]),
        .Q(Q[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h40FF4040)) 
    \axlen_cnt[0]_i_1__0 
       (.I0(\axlen_cnt_reg[0]_0 ),
        .I1(si_rs_arvalid),
        .I2(\axlen_cnt_reg[3]_0 [9]),
        .I3(\axlen_cnt_reg_n_0_[0] ),
        .I4(\axlen_cnt[3]_i_2_n_0 ),
        .O(\axlen_cnt[0]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hF88888F8)) 
    \axlen_cnt[1]_i_1 
       (.I0(\axlen_cnt_reg[3]_0 [10]),
        .I1(E),
        .I2(\axlen_cnt[3]_i_2_n_0 ),
        .I3(\axlen_cnt_reg_n_0_[0] ),
        .I4(\axlen_cnt_reg_n_0_[1] ),
        .O(\axlen_cnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF8F8F888888888F8)) 
    \axlen_cnt[2]_i_1 
       (.I0(\axlen_cnt_reg[3]_0 [11]),
        .I1(E),
        .I2(\axlen_cnt[3]_i_2_n_0 ),
        .I3(\axlen_cnt_reg_n_0_[1] ),
        .I4(\axlen_cnt_reg_n_0_[0] ),
        .I5(\axlen_cnt_reg_n_0_[2] ),
        .O(\axlen_cnt[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF88888F8)) 
    \axlen_cnt[3]_i_1 
       (.I0(\axlen_cnt_reg[3]_0 [12]),
        .I1(E),
        .I2(\axlen_cnt[3]_i_2_n_0 ),
        .I3(\axlen_cnt[3]_i_3_n_0 ),
        .I4(\axlen_cnt_reg_n_0_[3] ),
        .O(\axlen_cnt[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000FFFE)) 
    \axlen_cnt[3]_i_2 
       (.I0(\axlen_cnt_reg_n_0_[3] ),
        .I1(\axlen_cnt_reg_n_0_[4] ),
        .I2(\axlen_cnt_reg_n_0_[1] ),
        .I3(\axlen_cnt_reg_n_0_[2] ),
        .I4(E),
        .O(\axlen_cnt[3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \axlen_cnt[3]_i_3 
       (.I0(\axlen_cnt_reg_n_0_[1] ),
        .I1(\axlen_cnt_reg_n_0_[0] ),
        .I2(\axlen_cnt_reg_n_0_[2] ),
        .O(\axlen_cnt[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFE00000000)) 
    \axlen_cnt[4]_i_1 
       (.I0(\axlen_cnt_reg_n_0_[2] ),
        .I1(\axlen_cnt_reg_n_0_[0] ),
        .I2(\axlen_cnt_reg_n_0_[1] ),
        .I3(\axlen_cnt_reg_n_0_[3] ),
        .I4(E),
        .I5(\axlen_cnt_reg_n_0_[4] ),
        .O(\axlen_cnt[4]_i_1_n_0 ));
  FDRE \axlen_cnt_reg[0] 
       (.C(aclk),
        .CE(\axaddr_wrap_reg[0]_0 ),
        .D(\axlen_cnt[0]_i_1__0_n_0 ),
        .Q(\axlen_cnt_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \axlen_cnt_reg[1] 
       (.C(aclk),
        .CE(\axaddr_wrap_reg[0]_0 ),
        .D(\axlen_cnt[1]_i_1_n_0 ),
        .Q(\axlen_cnt_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \axlen_cnt_reg[2] 
       (.C(aclk),
        .CE(\axaddr_wrap_reg[0]_0 ),
        .D(\axlen_cnt[2]_i_1_n_0 ),
        .Q(\axlen_cnt_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \axlen_cnt_reg[3] 
       (.C(aclk),
        .CE(\axaddr_wrap_reg[0]_0 ),
        .D(\axlen_cnt[3]_i_1_n_0 ),
        .Q(\axlen_cnt_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \axlen_cnt_reg[4] 
       (.C(aclk),
        .CE(\axaddr_wrap_reg[0]_0 ),
        .D(\axlen_cnt[4]_i_1_n_0 ),
        .Q(\axlen_cnt_reg_n_0_[4] ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hB8BB)) 
    \m_axi_araddr[11]_INST_0_i_3 
       (.I0(sel_first),
        .I1(\axlen_cnt_reg[3]_0 [8]),
        .I2(\m_axi_araddr[11] ),
        .I3(\axlen_cnt_reg[3]_0 [7]),
        .O(sel_first_reg_0));
  LUT5 #(
    .INIT(32'hFFFF88B8)) 
    next_pending_r_i_1
       (.I0(\axlen_cnt[3]_i_2_n_0 ),
        .I1(r_push),
        .I2(next_pending_r),
        .I3(E),
        .I4(next_pending_r_reg_0),
        .O(wrap_next_pending));
  FDRE next_pending_r_reg
       (.C(aclk),
        .CE(1'b1),
        .D(wrap_next_pending),
        .Q(next_pending_r),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hABABABA8)) 
    s_axburst_eq1_i_1
       (.I0(wrap_next_pending),
        .I1(\axlen_cnt_reg[3]_0 [8]),
        .I2(sel_first_i),
        .I3(s_axburst_eq1_reg),
        .I4(s_axburst_eq1_reg_0),
        .O(\m_payload_i_reg[39] ));
  FDRE sel_first_reg
       (.C(aclk),
        .CE(1'b1),
        .D(sel_first_reg_1),
        .Q(sel_first),
        .R(1'b0));
  FDRE \wrap_boundary_axaddr_r_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(\wrap_boundary_axaddr_r_reg[6]_0 [0]),
        .Q(\wrap_boundary_axaddr_r_reg[11]_0 [0]),
        .R(1'b0));
  FDRE \wrap_boundary_axaddr_r_reg[10] 
       (.C(aclk),
        .CE(E),
        .D(\axlen_cnt_reg[3]_0 [3]),
        .Q(\wrap_boundary_axaddr_r_reg[11]_0 [10]),
        .R(1'b0));
  FDRE \wrap_boundary_axaddr_r_reg[11] 
       (.C(aclk),
        .CE(E),
        .D(\axlen_cnt_reg[3]_0 [4]),
        .Q(\wrap_boundary_axaddr_r_reg[11]_0 [11]),
        .R(1'b0));
  FDRE \wrap_boundary_axaddr_r_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(\wrap_boundary_axaddr_r_reg[6]_0 [1]),
        .Q(\wrap_boundary_axaddr_r_reg[11]_0 [1]),
        .R(1'b0));
  FDRE \wrap_boundary_axaddr_r_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(\wrap_boundary_axaddr_r_reg[6]_0 [2]),
        .Q(\wrap_boundary_axaddr_r_reg[11]_0 [2]),
        .R(1'b0));
  FDRE \wrap_boundary_axaddr_r_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(\wrap_boundary_axaddr_r_reg[6]_0 [3]),
        .Q(\wrap_boundary_axaddr_r_reg[11]_0 [3]),
        .R(1'b0));
  FDRE \wrap_boundary_axaddr_r_reg[4] 
       (.C(aclk),
        .CE(E),
        .D(\wrap_boundary_axaddr_r_reg[6]_0 [4]),
        .Q(\wrap_boundary_axaddr_r_reg[11]_0 [4]),
        .R(1'b0));
  FDRE \wrap_boundary_axaddr_r_reg[5] 
       (.C(aclk),
        .CE(E),
        .D(\wrap_boundary_axaddr_r_reg[6]_0 [5]),
        .Q(\wrap_boundary_axaddr_r_reg[11]_0 [5]),
        .R(1'b0));
  FDRE \wrap_boundary_axaddr_r_reg[6] 
       (.C(aclk),
        .CE(E),
        .D(\wrap_boundary_axaddr_r_reg[6]_0 [6]),
        .Q(\wrap_boundary_axaddr_r_reg[11]_0 [6]),
        .R(1'b0));
  FDRE \wrap_boundary_axaddr_r_reg[7] 
       (.C(aclk),
        .CE(E),
        .D(\axlen_cnt_reg[3]_0 [0]),
        .Q(\wrap_boundary_axaddr_r_reg[11]_0 [7]),
        .R(1'b0));
  FDRE \wrap_boundary_axaddr_r_reg[8] 
       (.C(aclk),
        .CE(E),
        .D(\axlen_cnt_reg[3]_0 [1]),
        .Q(\wrap_boundary_axaddr_r_reg[11]_0 [8]),
        .R(1'b0));
  FDRE \wrap_boundary_axaddr_r_reg[9] 
       (.C(aclk),
        .CE(E),
        .D(\axlen_cnt_reg[3]_0 [2]),
        .Q(\wrap_boundary_axaddr_r_reg[11]_0 [9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hC05FC0A0)) 
    \wrap_cnt_r[1]_i_1 
       (.I0(\wrap_second_len_r_reg[3]_0 [0]),
        .I1(axaddr_offset[1]),
        .I2(\wrap_cnt_r_reg[1]_0 ),
        .I3(E),
        .I4(\wrap_second_len_r_reg[3]_0 [1]),
        .O(wrap_cnt));
  FDRE \wrap_cnt_r_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[0]),
        .Q(wrap_cnt_r[0]),
        .R(1'b0));
  FDRE \wrap_cnt_r_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(wrap_cnt),
        .Q(wrap_cnt_r[1]),
        .R(1'b0));
  FDRE \wrap_cnt_r_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[1]),
        .Q(wrap_cnt_r[2]),
        .R(1'b0));
  FDRE \wrap_cnt_r_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[2]),
        .Q(wrap_cnt_r[3]),
        .R(1'b0));
  FDRE \wrap_second_len_r_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wrap_second_len_r_reg[3]_1 [0]),
        .Q(\wrap_second_len_r_reg[3]_0 [0]),
        .R(1'b0));
  FDRE \wrap_second_len_r_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wrap_second_len_r_reg[3]_1 [1]),
        .Q(\wrap_second_len_r_reg[3]_0 [1]),
        .R(1'b0));
  FDRE \wrap_second_len_r_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wrap_second_len_r_reg[3]_1 [2]),
        .Q(\wrap_second_len_r_reg[3]_0 [2]),
        .R(1'b0));
  FDRE \wrap_second_len_r_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wrap_second_len_r_reg[3]_1 [3]),
        .Q(\wrap_second_len_r_reg[3]_0 [3]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_register_slice_v2_1_27_axi_register_slice" *) 
module embsys_auto_pc_1_axi_register_slice_v2_1_27_axi_register_slice
   (s_ready_i_reg,
    si_rs_arvalid,
    m_valid_i_reg,
    si_rs_rready,
    \axaddr_incr_reg[3] ,
    Q,
    S,
    axaddr_incr,
    incr_next_pending,
    \m_payload_i_reg[47] ,
    \m_payload_i_reg[49] ,
    D,
    \wrap_second_len_r_reg[3] ,
    \m_payload_i_reg[44] ,
    axaddr_offset,
    \m_payload_i_reg[47]_0 ,
    m_axi_araddr,
    \m_payload_i_reg[34] ,
    aclk,
    aresetn,
    \m_axi_araddr[11] ,
    \m_axi_araddr[11]_0 ,
    state,
    s_axi_arvalid,
    \axaddr_incr_reg[3]_0 ,
    next_pending_r_reg,
    \wrap_second_len_r_reg[3]_0 ,
    \wrap_second_len_r_reg[3]_1 ,
    \axaddr_offset_r_reg[3] ,
    s_axi_rready,
    s_axi_arlen,
    s_axi_arburst,
    s_axi_arsize,
    s_axi_arprot,
    s_axi_araddr,
    \m_axi_araddr[11]_1 ,
    sel_first_0,
    sel_first,
    si_rs_rlast,
    out,
    m_valid_i_reg_0,
    E);
  output s_ready_i_reg;
  output si_rs_arvalid;
  output m_valid_i_reg;
  output si_rs_rready;
  output [1:0]\axaddr_incr_reg[3] ;
  output [46:0]Q;
  output [1:0]S;
  output [11:0]axaddr_incr;
  output incr_next_pending;
  output \m_payload_i_reg[47] ;
  output \m_payload_i_reg[49] ;
  output [1:0]D;
  output [3:0]\wrap_second_len_r_reg[3] ;
  output \m_payload_i_reg[44] ;
  output [3:0]axaddr_offset;
  output [6:0]\m_payload_i_reg[47]_0 ;
  output [11:0]m_axi_araddr;
  output [34:0]\m_payload_i_reg[34] ;
  input aclk;
  input aresetn;
  input [11:0]\m_axi_araddr[11] ;
  input [11:0]\m_axi_araddr[11]_0 ;
  input [1:0]state;
  input s_axi_arvalid;
  input [3:0]\axaddr_incr_reg[3]_0 ;
  input next_pending_r_reg;
  input \wrap_second_len_r_reg[3]_0 ;
  input [3:0]\wrap_second_len_r_reg[3]_1 ;
  input [3:0]\axaddr_offset_r_reg[3] ;
  input s_axi_rready;
  input [7:0]s_axi_arlen;
  input [1:0]s_axi_arburst;
  input [1:0]s_axi_arsize;
  input [2:0]s_axi_arprot;
  input [31:0]s_axi_araddr;
  input \m_axi_araddr[11]_1 ;
  input sel_first_0;
  input sel_first;
  input si_rs_rlast;
  input [33:0]out;
  input m_valid_i_reg_0;
  input [0:0]E;

  wire [1:0]D;
  wire [0:0]E;
  wire [46:0]Q;
  wire [1:0]S;
  wire aclk;
  wire \ar.ar_pipe_n_2 ;
  wire \ar.ar_pipe_n_99 ;
  wire aresetn;
  wire [11:0]axaddr_incr;
  wire [1:0]\axaddr_incr_reg[3] ;
  wire [3:0]\axaddr_incr_reg[3]_0 ;
  wire [3:0]axaddr_offset;
  wire [3:0]\axaddr_offset_r_reg[3] ;
  wire incr_next_pending;
  wire [11:0]m_axi_araddr;
  wire [11:0]\m_axi_araddr[11] ;
  wire [11:0]\m_axi_araddr[11]_0 ;
  wire \m_axi_araddr[11]_1 ;
  wire [34:0]\m_payload_i_reg[34] ;
  wire \m_payload_i_reg[44] ;
  wire \m_payload_i_reg[47] ;
  wire [6:0]\m_payload_i_reg[47]_0 ;
  wire \m_payload_i_reg[49] ;
  wire m_valid_i_reg;
  wire m_valid_i_reg_0;
  wire next_pending_r_reg;
  wire [33:0]out;
  wire \r.r_pipe_n_2 ;
  wire [31:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [7:0]s_axi_arlen;
  wire [2:0]s_axi_arprot;
  wire [1:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire s_axi_rready;
  wire s_ready_i_reg;
  wire sel_first;
  wire sel_first_0;
  wire si_rs_arvalid;
  wire si_rs_rlast;
  wire si_rs_rready;
  wire [1:0]state;
  wire [3:0]\wrap_second_len_r_reg[3] ;
  wire \wrap_second_len_r_reg[3]_0 ;
  wire [3:0]\wrap_second_len_r_reg[3]_1 ;

  embsys_auto_pc_1_axi_register_slice_v2_1_27_axic_register_slice \ar.ar_pipe 
       (.D(D),
        .E(E),
        .\FSM_sequential_state_reg[1] (axaddr_offset[1]),
        .\FSM_sequential_state_reg[1]_0 (axaddr_offset[2]),
        .Q(Q),
        .S(S),
        .aclk(aclk),
        .aresetn(aresetn),
        .\aresetn_d_reg[0]_0 (\ar.ar_pipe_n_2 ),
        .\aresetn_d_reg[0]_1 (\ar.ar_pipe_n_99 ),
        .axaddr_incr(axaddr_incr),
        .\axaddr_incr_reg[3] (\axaddr_incr_reg[3] ),
        .\axaddr_incr_reg[3]_0 (\axaddr_incr_reg[3]_0 ),
        .\axaddr_offset_r_reg[3] (\axaddr_offset_r_reg[3] ),
        .incr_next_pending(incr_next_pending),
        .m_axi_araddr(m_axi_araddr),
        .\m_axi_araddr[11] (\m_axi_araddr[11] ),
        .\m_axi_araddr[11]_0 (\m_axi_araddr[11]_0 ),
        .\m_axi_araddr[11]_1 (\m_axi_araddr[11]_1 ),
        .\m_payload_i_reg[44]_0 (\m_payload_i_reg[44] ),
        .\m_payload_i_reg[44]_1 (axaddr_offset[0]),
        .\m_payload_i_reg[47]_0 (\m_payload_i_reg[47] ),
        .\m_payload_i_reg[47]_1 (axaddr_offset[3]),
        .\m_payload_i_reg[47]_2 (\m_payload_i_reg[47]_0 ),
        .\m_payload_i_reg[49]_0 (\m_payload_i_reg[49] ),
        .m_valid_i_reg_0(si_rs_arvalid),
        .m_valid_i_reg_1(\r.r_pipe_n_2 ),
        .next_pending_r_reg(next_pending_r_reg),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_arvalid(s_axi_arvalid),
        .s_ready_i_reg_0(s_ready_i_reg),
        .sel_first(sel_first),
        .sel_first_0(sel_first_0),
        .state(state),
        .\wrap_second_len_r_reg[3] (\wrap_second_len_r_reg[3] ),
        .\wrap_second_len_r_reg[3]_0 (\wrap_second_len_r_reg[3]_0 ),
        .\wrap_second_len_r_reg[3]_1 (\wrap_second_len_r_reg[3]_1 ));
  embsys_auto_pc_1_axi_register_slice_v2_1_27_axic_register_slice__parameterized2 \r.r_pipe 
       (.aclk(aclk),
        .\aresetn_d_reg[1]_0 (\r.r_pipe_n_2 ),
        .\aresetn_d_reg[1]_1 (\ar.ar_pipe_n_99 ),
        .\m_payload_i_reg[34]_0 (\m_payload_i_reg[34] ),
        .m_valid_i_reg_0(m_valid_i_reg),
        .m_valid_i_reg_1(m_valid_i_reg_0),
        .out(out),
        .s_axi_rready(s_axi_rready),
        .s_ready_i_reg_0(si_rs_rready),
        .s_ready_i_reg_1(\ar.ar_pipe_n_2 ),
        .si_rs_rlast(si_rs_rlast));
endmodule

(* ORIG_REF_NAME = "axi_register_slice_v2_1_27_axic_register_slice" *) 
module embsys_auto_pc_1_axi_register_slice_v2_1_27_axic_register_slice
   (s_ready_i_reg_0,
    m_valid_i_reg_0,
    \aresetn_d_reg[0]_0 ,
    \axaddr_incr_reg[3] ,
    Q,
    S,
    axaddr_incr,
    incr_next_pending,
    \m_payload_i_reg[47]_0 ,
    \m_payload_i_reg[49]_0 ,
    D,
    \wrap_second_len_r_reg[3] ,
    \m_payload_i_reg[44]_0 ,
    \m_payload_i_reg[44]_1 ,
    \m_payload_i_reg[47]_1 ,
    \FSM_sequential_state_reg[1] ,
    \FSM_sequential_state_reg[1]_0 ,
    \m_payload_i_reg[47]_2 ,
    m_axi_araddr,
    \aresetn_d_reg[0]_1 ,
    aclk,
    aresetn,
    \m_axi_araddr[11] ,
    \m_axi_araddr[11]_0 ,
    state,
    s_axi_arvalid,
    m_valid_i_reg_1,
    \axaddr_incr_reg[3]_0 ,
    next_pending_r_reg,
    \wrap_second_len_r_reg[3]_0 ,
    \wrap_second_len_r_reg[3]_1 ,
    \axaddr_offset_r_reg[3] ,
    s_axi_arlen,
    s_axi_arburst,
    s_axi_arsize,
    s_axi_arprot,
    s_axi_araddr,
    \m_axi_araddr[11]_1 ,
    sel_first_0,
    sel_first,
    E);
  output s_ready_i_reg_0;
  output m_valid_i_reg_0;
  output \aresetn_d_reg[0]_0 ;
  output [1:0]\axaddr_incr_reg[3] ;
  output [46:0]Q;
  output [1:0]S;
  output [11:0]axaddr_incr;
  output incr_next_pending;
  output \m_payload_i_reg[47]_0 ;
  output \m_payload_i_reg[49]_0 ;
  output [1:0]D;
  output [3:0]\wrap_second_len_r_reg[3] ;
  output \m_payload_i_reg[44]_0 ;
  output \m_payload_i_reg[44]_1 ;
  output \m_payload_i_reg[47]_1 ;
  output \FSM_sequential_state_reg[1] ;
  output \FSM_sequential_state_reg[1]_0 ;
  output [6:0]\m_payload_i_reg[47]_2 ;
  output [11:0]m_axi_araddr;
  output \aresetn_d_reg[0]_1 ;
  input aclk;
  input aresetn;
  input [11:0]\m_axi_araddr[11] ;
  input [11:0]\m_axi_araddr[11]_0 ;
  input [1:0]state;
  input s_axi_arvalid;
  input m_valid_i_reg_1;
  input [3:0]\axaddr_incr_reg[3]_0 ;
  input next_pending_r_reg;
  input \wrap_second_len_r_reg[3]_0 ;
  input [3:0]\wrap_second_len_r_reg[3]_1 ;
  input [3:0]\axaddr_offset_r_reg[3] ;
  input [7:0]s_axi_arlen;
  input [1:0]s_axi_arburst;
  input [1:0]s_axi_arsize;
  input [2:0]s_axi_arprot;
  input [31:0]s_axi_araddr;
  input \m_axi_araddr[11]_1 ;
  input sel_first_0;
  input sel_first;
  input [0:0]E;

  wire [1:0]D;
  wire [0:0]E;
  wire \FSM_sequential_state_reg[1] ;
  wire \FSM_sequential_state_reg[1]_0 ;
  wire [46:0]Q;
  wire [1:0]S;
  wire aclk;
  wire aresetn;
  wire \aresetn_d_reg[0]_0 ;
  wire \aresetn_d_reg[0]_1 ;
  wire [11:0]axaddr_incr;
  wire \axaddr_incr[3]_i_4_n_0 ;
  wire \axaddr_incr[3]_i_5_n_0 ;
  wire \axaddr_incr[3]_i_6_n_0 ;
  wire \axaddr_incr_reg[11]_i_3_n_1 ;
  wire \axaddr_incr_reg[11]_i_3_n_2 ;
  wire \axaddr_incr_reg[11]_i_3_n_3 ;
  wire [1:0]\axaddr_incr_reg[3] ;
  wire [3:0]\axaddr_incr_reg[3]_0 ;
  wire \axaddr_incr_reg[3]_i_2_n_0 ;
  wire \axaddr_incr_reg[3]_i_2_n_1 ;
  wire \axaddr_incr_reg[3]_i_2_n_2 ;
  wire \axaddr_incr_reg[3]_i_2_n_3 ;
  wire \axaddr_incr_reg[7]_i_2_n_0 ;
  wire \axaddr_incr_reg[7]_i_2_n_1 ;
  wire \axaddr_incr_reg[7]_i_2_n_2 ;
  wire \axaddr_incr_reg[7]_i_2_n_3 ;
  wire \axaddr_offset_r[0]_i_2_n_0 ;
  wire \axaddr_offset_r[1]_i_2_n_0 ;
  wire \axaddr_offset_r[1]_i_3_n_0 ;
  wire \axaddr_offset_r[2]_i_2_n_0 ;
  wire \axaddr_offset_r[2]_i_3_n_0 ;
  wire \axaddr_offset_r[3]_i_2_n_0 ;
  wire [3:0]\axaddr_offset_r_reg[3] ;
  wire incr_next_pending;
  wire [11:0]m_axi_araddr;
  wire [11:0]\m_axi_araddr[11] ;
  wire [11:0]\m_axi_araddr[11]_0 ;
  wire \m_axi_araddr[11]_1 ;
  wire \m_axi_araddr[11]_INST_0_i_1_n_0 ;
  wire \m_axi_araddr[11]_INST_0_i_2_n_0 ;
  wire \m_payload_i[0]_i_1_n_0 ;
  wire \m_payload_i[10]_i_1_n_0 ;
  wire \m_payload_i[11]_i_1_n_0 ;
  wire \m_payload_i[12]_i_1_n_0 ;
  wire \m_payload_i[13]_i_1_n_0 ;
  wire \m_payload_i[14]_i_1_n_0 ;
  wire \m_payload_i[15]_i_1_n_0 ;
  wire \m_payload_i[16]_i_1_n_0 ;
  wire \m_payload_i[17]_i_1_n_0 ;
  wire \m_payload_i[18]_i_1_n_0 ;
  wire \m_payload_i[19]_i_1_n_0 ;
  wire \m_payload_i[1]_i_1_n_0 ;
  wire \m_payload_i[20]_i_1_n_0 ;
  wire \m_payload_i[21]_i_1_n_0 ;
  wire \m_payload_i[22]_i_1_n_0 ;
  wire \m_payload_i[23]_i_1_n_0 ;
  wire \m_payload_i[24]_i_1_n_0 ;
  wire \m_payload_i[25]_i_1_n_0 ;
  wire \m_payload_i[26]_i_1_n_0 ;
  wire \m_payload_i[27]_i_1_n_0 ;
  wire \m_payload_i[28]_i_1_n_0 ;
  wire \m_payload_i[29]_i_1_n_0 ;
  wire \m_payload_i[2]_i_1_n_0 ;
  wire \m_payload_i[30]_i_1_n_0 ;
  wire \m_payload_i[31]_i_2_n_0 ;
  wire \m_payload_i[32]_i_1_n_0 ;
  wire \m_payload_i[33]_i_1_n_0 ;
  wire \m_payload_i[34]_i_1_n_0 ;
  wire \m_payload_i[35]_i_1_n_0 ;
  wire \m_payload_i[36]_i_1_n_0 ;
  wire \m_payload_i[38]_i_1_n_0 ;
  wire \m_payload_i[39]_i_1_n_0 ;
  wire \m_payload_i[3]_i_1_n_0 ;
  wire \m_payload_i[44]_i_1_n_0 ;
  wire \m_payload_i[45]_i_1_n_0 ;
  wire \m_payload_i[46]_i_1_n_0 ;
  wire \m_payload_i[47]_i_1_n_0 ;
  wire \m_payload_i[48]_i_1_n_0 ;
  wire \m_payload_i[49]_i_1_n_0 ;
  wire \m_payload_i[4]_i_1_n_0 ;
  wire \m_payload_i[50]_i_1_n_0 ;
  wire \m_payload_i[51]_i_1_n_0 ;
  wire \m_payload_i[5]_i_1_n_0 ;
  wire \m_payload_i[6]_i_1_n_0 ;
  wire \m_payload_i[7]_i_1_n_0 ;
  wire \m_payload_i[8]_i_1_n_0 ;
  wire \m_payload_i[9]_i_1_n_0 ;
  wire \m_payload_i_reg[44]_0 ;
  wire \m_payload_i_reg[44]_1 ;
  wire \m_payload_i_reg[47]_0 ;
  wire \m_payload_i_reg[47]_1 ;
  wire [6:0]\m_payload_i_reg[47]_2 ;
  wire \m_payload_i_reg[49]_0 ;
  wire m_valid_i_i_1__0_n_0;
  wire m_valid_i_reg_0;
  wire m_valid_i_reg_1;
  wire next_pending_r_reg;
  wire [31:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [7:0]s_axi_arlen;
  wire [2:0]s_axi_arprot;
  wire [1:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire s_ready_i_i_1__0_n_0;
  wire s_ready_i_reg_0;
  wire sel_first;
  wire sel_first_0;
  wire \skid_buffer_reg_n_0_[0] ;
  wire \skid_buffer_reg_n_0_[10] ;
  wire \skid_buffer_reg_n_0_[11] ;
  wire \skid_buffer_reg_n_0_[12] ;
  wire \skid_buffer_reg_n_0_[13] ;
  wire \skid_buffer_reg_n_0_[14] ;
  wire \skid_buffer_reg_n_0_[15] ;
  wire \skid_buffer_reg_n_0_[16] ;
  wire \skid_buffer_reg_n_0_[17] ;
  wire \skid_buffer_reg_n_0_[18] ;
  wire \skid_buffer_reg_n_0_[19] ;
  wire \skid_buffer_reg_n_0_[1] ;
  wire \skid_buffer_reg_n_0_[20] ;
  wire \skid_buffer_reg_n_0_[21] ;
  wire \skid_buffer_reg_n_0_[22] ;
  wire \skid_buffer_reg_n_0_[23] ;
  wire \skid_buffer_reg_n_0_[24] ;
  wire \skid_buffer_reg_n_0_[25] ;
  wire \skid_buffer_reg_n_0_[26] ;
  wire \skid_buffer_reg_n_0_[27] ;
  wire \skid_buffer_reg_n_0_[28] ;
  wire \skid_buffer_reg_n_0_[29] ;
  wire \skid_buffer_reg_n_0_[2] ;
  wire \skid_buffer_reg_n_0_[30] ;
  wire \skid_buffer_reg_n_0_[31] ;
  wire \skid_buffer_reg_n_0_[32] ;
  wire \skid_buffer_reg_n_0_[33] ;
  wire \skid_buffer_reg_n_0_[34] ;
  wire \skid_buffer_reg_n_0_[35] ;
  wire \skid_buffer_reg_n_0_[36] ;
  wire \skid_buffer_reg_n_0_[38] ;
  wire \skid_buffer_reg_n_0_[39] ;
  wire \skid_buffer_reg_n_0_[3] ;
  wire \skid_buffer_reg_n_0_[44] ;
  wire \skid_buffer_reg_n_0_[45] ;
  wire \skid_buffer_reg_n_0_[46] ;
  wire \skid_buffer_reg_n_0_[47] ;
  wire \skid_buffer_reg_n_0_[48] ;
  wire \skid_buffer_reg_n_0_[49] ;
  wire \skid_buffer_reg_n_0_[4] ;
  wire \skid_buffer_reg_n_0_[50] ;
  wire \skid_buffer_reg_n_0_[51] ;
  wire \skid_buffer_reg_n_0_[5] ;
  wire \skid_buffer_reg_n_0_[6] ;
  wire \skid_buffer_reg_n_0_[7] ;
  wire \skid_buffer_reg_n_0_[8] ;
  wire \skid_buffer_reg_n_0_[9] ;
  wire [1:0]state;
  wire \wrap_boundary_axaddr_r[3]_i_2_n_0 ;
  wire \wrap_cnt_r[3]_i_2_n_0 ;
  wire [3:0]\wrap_second_len_r_reg[3] ;
  wire \wrap_second_len_r_reg[3]_0 ;
  wire [3:0]\wrap_second_len_r_reg[3]_1 ;
  wire [3:3]\NLW_axaddr_incr_reg[11]_i_3_CO_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h8)) 
    \aresetn_d[1]_i_1 
       (.I0(\aresetn_d_reg[0]_0 ),
        .I1(aresetn),
        .O(\aresetn_d_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \aresetn_d_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(aresetn),
        .Q(\aresetn_d_reg[0]_0 ),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h6A)) 
    \axaddr_incr[3]_i_11 
       (.I0(\m_axi_araddr[11] [3]),
        .I1(Q[36]),
        .I2(Q[35]),
        .O(\axaddr_incr_reg[3] [1]));
  LUT3 #(
    .INIT(8'hA9)) 
    \axaddr_incr[3]_i_14 
       (.I0(\m_axi_araddr[11] [0]),
        .I1(Q[36]),
        .I2(Q[35]),
        .O(\axaddr_incr_reg[3] [0]));
  LUT3 #(
    .INIT(8'h70)) 
    \axaddr_incr[3]_i_4 
       (.I0(Q[36]),
        .I1(Q[35]),
        .I2(Q[2]),
        .O(\axaddr_incr[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \axaddr_incr[3]_i_5 
       (.I0(Q[1]),
        .I1(Q[36]),
        .O(\axaddr_incr[3]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \axaddr_incr[3]_i_6 
       (.I0(Q[0]),
        .I1(Q[36]),
        .I2(Q[35]),
        .O(\axaddr_incr[3]_i_6_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \axaddr_incr_reg[11]_i_3 
       (.CI(\axaddr_incr_reg[7]_i_2_n_0 ),
        .CO({\NLW_axaddr_incr_reg[11]_i_3_CO_UNCONNECTED [3],\axaddr_incr_reg[11]_i_3_n_1 ,\axaddr_incr_reg[11]_i_3_n_2 ,\axaddr_incr_reg[11]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(axaddr_incr[11:8]),
        .S(Q[11:8]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \axaddr_incr_reg[3]_i_2 
       (.CI(1'b0),
        .CO({\axaddr_incr_reg[3]_i_2_n_0 ,\axaddr_incr_reg[3]_i_2_n_1 ,\axaddr_incr_reg[3]_i_2_n_2 ,\axaddr_incr_reg[3]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({Q[3],\axaddr_incr[3]_i_4_n_0 ,\axaddr_incr[3]_i_5_n_0 ,\axaddr_incr[3]_i_6_n_0 }),
        .O(axaddr_incr[3:0]),
        .S(\axaddr_incr_reg[3]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \axaddr_incr_reg[7]_i_2 
       (.CI(\axaddr_incr_reg[3]_i_2_n_0 ),
        .CO({\axaddr_incr_reg[7]_i_2_n_0 ,\axaddr_incr_reg[7]_i_2_n_1 ,\axaddr_incr_reg[7]_i_2_n_2 ,\axaddr_incr_reg[7]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(axaddr_incr[7:4]),
        .S(Q[7:4]));
  LUT6 #(
    .INIT(64'hF8FFFFFF08000000)) 
    \axaddr_offset_r[0]_i_1 
       (.I0(\axaddr_offset_r[0]_i_2_n_0 ),
        .I1(Q[39]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(m_valid_i_reg_0),
        .I5(\axaddr_offset_r_reg[3] [0]),
        .O(\m_payload_i_reg[44]_1 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axaddr_offset_r[0]_i_2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[36]),
        .I4(Q[35]),
        .I5(Q[2]),
        .O(\axaddr_offset_r[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFFF0E000000)) 
    \axaddr_offset_r[1]_i_1 
       (.I0(\axaddr_offset_r[1]_i_2_n_0 ),
        .I1(\axaddr_offset_r[1]_i_3_n_0 ),
        .I2(state[1]),
        .I3(state[0]),
        .I4(m_valid_i_reg_0),
        .I5(\axaddr_offset_r_reg[3] [1]),
        .O(\FSM_sequential_state_reg[1] ));
  LUT5 #(
    .INIT(32'h0E000200)) 
    \axaddr_offset_r[1]_i_2 
       (.I0(Q[1]),
        .I1(Q[35]),
        .I2(Q[36]),
        .I3(Q[40]),
        .I4(Q[2]),
        .O(\axaddr_offset_r[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hE0002000)) 
    \axaddr_offset_r[1]_i_3 
       (.I0(Q[3]),
        .I1(Q[35]),
        .I2(Q[36]),
        .I3(Q[40]),
        .I4(Q[4]),
        .O(\axaddr_offset_r[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFFF0E000000)) 
    \axaddr_offset_r[2]_i_1 
       (.I0(\axaddr_offset_r[2]_i_2_n_0 ),
        .I1(\axaddr_offset_r[2]_i_3_n_0 ),
        .I2(state[1]),
        .I3(state[0]),
        .I4(m_valid_i_reg_0),
        .I5(\axaddr_offset_r_reg[3] [2]),
        .O(\FSM_sequential_state_reg[1]_0 ));
  LUT5 #(
    .INIT(32'h0E000200)) 
    \axaddr_offset_r[2]_i_2 
       (.I0(Q[2]),
        .I1(Q[35]),
        .I2(Q[36]),
        .I3(Q[41]),
        .I4(Q[3]),
        .O(\axaddr_offset_r[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hE0002000)) 
    \axaddr_offset_r[2]_i_3 
       (.I0(Q[4]),
        .I1(Q[35]),
        .I2(Q[36]),
        .I3(Q[41]),
        .I4(Q[5]),
        .O(\axaddr_offset_r[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF8FFFFFF08000000)) 
    \axaddr_offset_r[3]_i_1 
       (.I0(\axaddr_offset_r[3]_i_2_n_0 ),
        .I1(Q[42]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(m_valid_i_reg_0),
        .I5(\axaddr_offset_r_reg[3] [3]),
        .O(\m_payload_i_reg[47]_1 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axaddr_offset_r[3]_i_2 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[6]),
        .I3(Q[36]),
        .I4(Q[35]),
        .I5(Q[5]),
        .O(\axaddr_offset_r[3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \axaddr_wrap[3]_i_3 
       (.I0(\m_axi_araddr[11]_0 [3]),
        .I1(Q[36]),
        .I2(Q[35]),
        .O(S[1]));
  LUT3 #(
    .INIT(8'hA9)) 
    \axaddr_wrap[3]_i_6 
       (.I0(\m_axi_araddr[11]_0 [0]),
        .I1(Q[36]),
        .I2(Q[35]),
        .O(S[0]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \m_axi_araddr[0]_INST_0 
       (.I0(\m_axi_araddr[11]_INST_0_i_1_n_0 ),
        .I1(\m_axi_araddr[11]_0 [0]),
        .I2(\m_axi_araddr[11]_INST_0_i_2_n_0 ),
        .I3(\m_axi_araddr[11] [0]),
        .I4(Q[0]),
        .I5(\m_axi_araddr[11]_1 ),
        .O(m_axi_araddr[0]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \m_axi_araddr[10]_INST_0 
       (.I0(\m_axi_araddr[11]_INST_0_i_1_n_0 ),
        .I1(\m_axi_araddr[11]_0 [10]),
        .I2(\m_axi_araddr[11]_INST_0_i_2_n_0 ),
        .I3(\m_axi_araddr[11] [10]),
        .I4(Q[10]),
        .I5(\m_axi_araddr[11]_1 ),
        .O(m_axi_araddr[10]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \m_axi_araddr[11]_INST_0 
       (.I0(\m_axi_araddr[11]_INST_0_i_1_n_0 ),
        .I1(\m_axi_araddr[11]_0 [11]),
        .I2(\m_axi_araddr[11]_INST_0_i_2_n_0 ),
        .I3(\m_axi_araddr[11] [11]),
        .I4(Q[11]),
        .I5(\m_axi_araddr[11]_1 ),
        .O(m_axi_araddr[11]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axi_araddr[11]_INST_0_i_1 
       (.I0(Q[38]),
        .I1(sel_first),
        .O(\m_axi_araddr[11]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \m_axi_araddr[11]_INST_0_i_2 
       (.I0(Q[37]),
        .I1(sel_first_0),
        .I2(Q[38]),
        .O(\m_axi_araddr[11]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \m_axi_araddr[1]_INST_0 
       (.I0(\m_axi_araddr[11]_INST_0_i_1_n_0 ),
        .I1(\m_axi_araddr[11]_0 [1]),
        .I2(\m_axi_araddr[11]_INST_0_i_2_n_0 ),
        .I3(\m_axi_araddr[11] [1]),
        .I4(Q[1]),
        .I5(\m_axi_araddr[11]_1 ),
        .O(m_axi_araddr[1]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \m_axi_araddr[2]_INST_0 
       (.I0(\m_axi_araddr[11]_INST_0_i_1_n_0 ),
        .I1(\m_axi_araddr[11]_0 [2]),
        .I2(\m_axi_araddr[11]_INST_0_i_2_n_0 ),
        .I3(\m_axi_araddr[11] [2]),
        .I4(Q[2]),
        .I5(\m_axi_araddr[11]_1 ),
        .O(m_axi_araddr[2]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \m_axi_araddr[3]_INST_0 
       (.I0(\m_axi_araddr[11]_INST_0_i_1_n_0 ),
        .I1(\m_axi_araddr[11]_0 [3]),
        .I2(\m_axi_araddr[11]_INST_0_i_2_n_0 ),
        .I3(\m_axi_araddr[11] [3]),
        .I4(Q[3]),
        .I5(\m_axi_araddr[11]_1 ),
        .O(m_axi_araddr[3]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \m_axi_araddr[4]_INST_0 
       (.I0(\m_axi_araddr[11]_INST_0_i_1_n_0 ),
        .I1(\m_axi_araddr[11]_0 [4]),
        .I2(\m_axi_araddr[11]_INST_0_i_2_n_0 ),
        .I3(\m_axi_araddr[11] [4]),
        .I4(Q[4]),
        .I5(\m_axi_araddr[11]_1 ),
        .O(m_axi_araddr[4]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \m_axi_araddr[5]_INST_0 
       (.I0(\m_axi_araddr[11]_INST_0_i_1_n_0 ),
        .I1(\m_axi_araddr[11]_0 [5]),
        .I2(\m_axi_araddr[11]_INST_0_i_2_n_0 ),
        .I3(\m_axi_araddr[11] [5]),
        .I4(Q[5]),
        .I5(\m_axi_araddr[11]_1 ),
        .O(m_axi_araddr[5]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \m_axi_araddr[6]_INST_0 
       (.I0(\m_axi_araddr[11]_INST_0_i_1_n_0 ),
        .I1(\m_axi_araddr[11]_0 [6]),
        .I2(\m_axi_araddr[11]_INST_0_i_2_n_0 ),
        .I3(\m_axi_araddr[11] [6]),
        .I4(Q[6]),
        .I5(\m_axi_araddr[11]_1 ),
        .O(m_axi_araddr[6]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \m_axi_araddr[7]_INST_0 
       (.I0(\m_axi_araddr[11]_INST_0_i_1_n_0 ),
        .I1(\m_axi_araddr[11]_0 [7]),
        .I2(\m_axi_araddr[11]_INST_0_i_2_n_0 ),
        .I3(\m_axi_araddr[11] [7]),
        .I4(Q[7]),
        .I5(\m_axi_araddr[11]_1 ),
        .O(m_axi_araddr[7]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \m_axi_araddr[8]_INST_0 
       (.I0(\m_axi_araddr[11]_INST_0_i_1_n_0 ),
        .I1(\m_axi_araddr[11]_0 [8]),
        .I2(\m_axi_araddr[11]_INST_0_i_2_n_0 ),
        .I3(\m_axi_araddr[11] [8]),
        .I4(Q[8]),
        .I5(\m_axi_araddr[11]_1 ),
        .O(m_axi_araddr[8]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \m_axi_araddr[9]_INST_0 
       (.I0(\m_axi_araddr[11]_INST_0_i_1_n_0 ),
        .I1(\m_axi_araddr[11]_0 [9]),
        .I2(\m_axi_araddr[11]_INST_0_i_2_n_0 ),
        .I3(\m_axi_araddr[11] [9]),
        .I4(Q[9]),
        .I5(\m_axi_araddr[11]_1 ),
        .O(m_axi_araddr[9]));
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[0]_i_1 
       (.I0(s_axi_araddr[0]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[0] ),
        .O(\m_payload_i[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[10]_i_1 
       (.I0(s_axi_araddr[10]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[10] ),
        .O(\m_payload_i[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[11]_i_1 
       (.I0(s_axi_araddr[11]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[11] ),
        .O(\m_payload_i[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[12]_i_1 
       (.I0(s_axi_araddr[12]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[12] ),
        .O(\m_payload_i[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[13]_i_1 
       (.I0(s_axi_araddr[13]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[13] ),
        .O(\m_payload_i[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[14]_i_1 
       (.I0(s_axi_araddr[14]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[14] ),
        .O(\m_payload_i[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[15]_i_1 
       (.I0(s_axi_araddr[15]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[15] ),
        .O(\m_payload_i[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[16]_i_1 
       (.I0(s_axi_araddr[16]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[16] ),
        .O(\m_payload_i[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[17]_i_1 
       (.I0(s_axi_araddr[17]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[17] ),
        .O(\m_payload_i[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[18]_i_1 
       (.I0(s_axi_araddr[18]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[18] ),
        .O(\m_payload_i[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[19]_i_1 
       (.I0(s_axi_araddr[19]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[19] ),
        .O(\m_payload_i[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[1]_i_1 
       (.I0(s_axi_araddr[1]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[1] ),
        .O(\m_payload_i[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[20]_i_1 
       (.I0(s_axi_araddr[20]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[20] ),
        .O(\m_payload_i[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[21]_i_1 
       (.I0(s_axi_araddr[21]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[21] ),
        .O(\m_payload_i[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[22]_i_1 
       (.I0(s_axi_araddr[22]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[22] ),
        .O(\m_payload_i[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[23]_i_1 
       (.I0(s_axi_araddr[23]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[23] ),
        .O(\m_payload_i[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[24]_i_1 
       (.I0(s_axi_araddr[24]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[24] ),
        .O(\m_payload_i[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[25]_i_1 
       (.I0(s_axi_araddr[25]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[25] ),
        .O(\m_payload_i[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[26]_i_1 
       (.I0(s_axi_araddr[26]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[26] ),
        .O(\m_payload_i[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[27]_i_1 
       (.I0(s_axi_araddr[27]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[27] ),
        .O(\m_payload_i[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[28]_i_1 
       (.I0(s_axi_araddr[28]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[28] ),
        .O(\m_payload_i[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[29]_i_1 
       (.I0(s_axi_araddr[29]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[29] ),
        .O(\m_payload_i[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[2]_i_1 
       (.I0(s_axi_araddr[2]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[2] ),
        .O(\m_payload_i[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[30]_i_1 
       (.I0(s_axi_araddr[30]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[30] ),
        .O(\m_payload_i[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[31]_i_2 
       (.I0(s_axi_araddr[31]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[31] ),
        .O(\m_payload_i[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[32]_i_1 
       (.I0(s_axi_arprot[0]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[32] ),
        .O(\m_payload_i[32]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[33]_i_1 
       (.I0(s_axi_arprot[1]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[33] ),
        .O(\m_payload_i[33]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[34]_i_1 
       (.I0(s_axi_arprot[2]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[34] ),
        .O(\m_payload_i[34]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[35]_i_1 
       (.I0(s_axi_arsize[0]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[35] ),
        .O(\m_payload_i[35]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[36]_i_1 
       (.I0(s_axi_arsize[1]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[36] ),
        .O(\m_payload_i[36]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[38]_i_1 
       (.I0(s_axi_arburst[0]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[38] ),
        .O(\m_payload_i[38]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[39]_i_1 
       (.I0(s_axi_arburst[1]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[39] ),
        .O(\m_payload_i[39]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[3]_i_1 
       (.I0(s_axi_araddr[3]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[3] ),
        .O(\m_payload_i[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[44]_i_1 
       (.I0(s_axi_arlen[0]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[44] ),
        .O(\m_payload_i[44]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[45]_i_1 
       (.I0(s_axi_arlen[1]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[45] ),
        .O(\m_payload_i[45]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[46]_i_1 
       (.I0(s_axi_arlen[2]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[46] ),
        .O(\m_payload_i[46]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[47]_i_1 
       (.I0(s_axi_arlen[3]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[47] ),
        .O(\m_payload_i[47]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[48]_i_1 
       (.I0(s_axi_arlen[4]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[48] ),
        .O(\m_payload_i[48]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[49]_i_1 
       (.I0(s_axi_arlen[5]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[49] ),
        .O(\m_payload_i[49]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[4]_i_1 
       (.I0(s_axi_araddr[4]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[4] ),
        .O(\m_payload_i[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[50]_i_1 
       (.I0(s_axi_arlen[6]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[50] ),
        .O(\m_payload_i[50]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[51]_i_1 
       (.I0(s_axi_arlen[7]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[51] ),
        .O(\m_payload_i[51]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[5]_i_1 
       (.I0(s_axi_araddr[5]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[5] ),
        .O(\m_payload_i[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[6]_i_1 
       (.I0(s_axi_araddr[6]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[6] ),
        .O(\m_payload_i[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[7]_i_1 
       (.I0(s_axi_araddr[7]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[7] ),
        .O(\m_payload_i[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[8]_i_1 
       (.I0(s_axi_araddr[8]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[8] ),
        .O(\m_payload_i[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[9]_i_1 
       (.I0(s_axi_araddr[9]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[9] ),
        .O(\m_payload_i[9]_i_1_n_0 ));
  FDRE \m_payload_i_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(\m_payload_i[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \m_payload_i_reg[10] 
       (.C(aclk),
        .CE(E),
        .D(\m_payload_i[10]_i_1_n_0 ),
        .Q(Q[10]),
        .R(1'b0));
  FDRE \m_payload_i_reg[11] 
       (.C(aclk),
        .CE(E),
        .D(\m_payload_i[11]_i_1_n_0 ),
        .Q(Q[11]),
        .R(1'b0));
  FDRE \m_payload_i_reg[12] 
       (.C(aclk),
        .CE(E),
        .D(\m_payload_i[12]_i_1_n_0 ),
        .Q(Q[12]),
        .R(1'b0));
  FDRE \m_payload_i_reg[13] 
       (.C(aclk),
        .CE(E),
        .D(\m_payload_i[13]_i_1_n_0 ),
        .Q(Q[13]),
        .R(1'b0));
  FDRE \m_payload_i_reg[14] 
       (.C(aclk),
        .CE(E),
        .D(\m_payload_i[14]_i_1_n_0 ),
        .Q(Q[14]),
        .R(1'b0));
  FDRE \m_payload_i_reg[15] 
       (.C(aclk),
        .CE(E),
        .D(\m_payload_i[15]_i_1_n_0 ),
        .Q(Q[15]),
        .R(1'b0));
  FDRE \m_payload_i_reg[16] 
       (.C(aclk),
        .CE(E),
        .D(\m_payload_i[16]_i_1_n_0 ),
        .Q(Q[16]),
        .R(1'b0));
  FDRE \m_payload_i_reg[17] 
       (.C(aclk),
        .CE(E),
        .D(\m_payload_i[17]_i_1_n_0 ),
        .Q(Q[17]),
        .R(1'b0));
  FDRE \m_payload_i_reg[18] 
       (.C(aclk),
        .CE(E),
        .D(\m_payload_i[18]_i_1_n_0 ),
        .Q(Q[18]),
        .R(1'b0));
  FDRE \m_payload_i_reg[19] 
       (.C(aclk),
        .CE(E),
        .D(\m_payload_i[19]_i_1_n_0 ),
        .Q(Q[19]),
        .R(1'b0));
  FDRE \m_payload_i_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(\m_payload_i[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \m_payload_i_reg[20] 
       (.C(aclk),
        .CE(E),
        .D(\m_payload_i[20]_i_1_n_0 ),
        .Q(Q[20]),
        .R(1'b0));
  FDRE \m_payload_i_reg[21] 
       (.C(aclk),
        .CE(E),
        .D(\m_payload_i[21]_i_1_n_0 ),
        .Q(Q[21]),
        .R(1'b0));
  FDRE \m_payload_i_reg[22] 
       (.C(aclk),
        .CE(E),
        .D(\m_payload_i[22]_i_1_n_0 ),
        .Q(Q[22]),
        .R(1'b0));
  FDRE \m_payload_i_reg[23] 
       (.C(aclk),
        .CE(E),
        .D(\m_payload_i[23]_i_1_n_0 ),
        .Q(Q[23]),
        .R(1'b0));
  FDRE \m_payload_i_reg[24] 
       (.C(aclk),
        .CE(E),
        .D(\m_payload_i[24]_i_1_n_0 ),
        .Q(Q[24]),
        .R(1'b0));
  FDRE \m_payload_i_reg[25] 
       (.C(aclk),
        .CE(E),
        .D(\m_payload_i[25]_i_1_n_0 ),
        .Q(Q[25]),
        .R(1'b0));
  FDRE \m_payload_i_reg[26] 
       (.C(aclk),
        .CE(E),
        .D(\m_payload_i[26]_i_1_n_0 ),
        .Q(Q[26]),
        .R(1'b0));
  FDRE \m_payload_i_reg[27] 
       (.C(aclk),
        .CE(E),
        .D(\m_payload_i[27]_i_1_n_0 ),
        .Q(Q[27]),
        .R(1'b0));
  FDRE \m_payload_i_reg[28] 
       (.C(aclk),
        .CE(E),
        .D(\m_payload_i[28]_i_1_n_0 ),
        .Q(Q[28]),
        .R(1'b0));
  FDRE \m_payload_i_reg[29] 
       (.C(aclk),
        .CE(E),
        .D(\m_payload_i[29]_i_1_n_0 ),
        .Q(Q[29]),
        .R(1'b0));
  FDRE \m_payload_i_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(\m_payload_i[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \m_payload_i_reg[30] 
       (.C(aclk),
        .CE(E),
        .D(\m_payload_i[30]_i_1_n_0 ),
        .Q(Q[30]),
        .R(1'b0));
  FDRE \m_payload_i_reg[31] 
       (.C(aclk),
        .CE(E),
        .D(\m_payload_i[31]_i_2_n_0 ),
        .Q(Q[31]),
        .R(1'b0));
  FDRE \m_payload_i_reg[32] 
       (.C(aclk),
        .CE(E),
        .D(\m_payload_i[32]_i_1_n_0 ),
        .Q(Q[32]),
        .R(1'b0));
  FDRE \m_payload_i_reg[33] 
       (.C(aclk),
        .CE(E),
        .D(\m_payload_i[33]_i_1_n_0 ),
        .Q(Q[33]),
        .R(1'b0));
  FDRE \m_payload_i_reg[34] 
       (.C(aclk),
        .CE(E),
        .D(\m_payload_i[34]_i_1_n_0 ),
        .Q(Q[34]),
        .R(1'b0));
  FDRE \m_payload_i_reg[35] 
       (.C(aclk),
        .CE(E),
        .D(\m_payload_i[35]_i_1_n_0 ),
        .Q(Q[35]),
        .R(1'b0));
  FDRE \m_payload_i_reg[36] 
       (.C(aclk),
        .CE(E),
        .D(\m_payload_i[36]_i_1_n_0 ),
        .Q(Q[36]),
        .R(1'b0));
  FDRE \m_payload_i_reg[38] 
       (.C(aclk),
        .CE(E),
        .D(\m_payload_i[38]_i_1_n_0 ),
        .Q(Q[37]),
        .R(1'b0));
  FDRE \m_payload_i_reg[39] 
       (.C(aclk),
        .CE(E),
        .D(\m_payload_i[39]_i_1_n_0 ),
        .Q(Q[38]),
        .R(1'b0));
  FDRE \m_payload_i_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(\m_payload_i[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \m_payload_i_reg[44] 
       (.C(aclk),
        .CE(E),
        .D(\m_payload_i[44]_i_1_n_0 ),
        .Q(Q[39]),
        .R(1'b0));
  FDRE \m_payload_i_reg[45] 
       (.C(aclk),
        .CE(E),
        .D(\m_payload_i[45]_i_1_n_0 ),
        .Q(Q[40]),
        .R(1'b0));
  FDRE \m_payload_i_reg[46] 
       (.C(aclk),
        .CE(E),
        .D(\m_payload_i[46]_i_1_n_0 ),
        .Q(Q[41]),
        .R(1'b0));
  FDRE \m_payload_i_reg[47] 
       (.C(aclk),
        .CE(E),
        .D(\m_payload_i[47]_i_1_n_0 ),
        .Q(Q[42]),
        .R(1'b0));
  FDRE \m_payload_i_reg[48] 
       (.C(aclk),
        .CE(E),
        .D(\m_payload_i[48]_i_1_n_0 ),
        .Q(Q[43]),
        .R(1'b0));
  FDRE \m_payload_i_reg[49] 
       (.C(aclk),
        .CE(E),
        .D(\m_payload_i[49]_i_1_n_0 ),
        .Q(Q[44]),
        .R(1'b0));
  FDRE \m_payload_i_reg[4] 
       (.C(aclk),
        .CE(E),
        .D(\m_payload_i[4]_i_1_n_0 ),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \m_payload_i_reg[50] 
       (.C(aclk),
        .CE(E),
        .D(\m_payload_i[50]_i_1_n_0 ),
        .Q(Q[45]),
        .R(1'b0));
  FDRE \m_payload_i_reg[51] 
       (.C(aclk),
        .CE(E),
        .D(\m_payload_i[51]_i_1_n_0 ),
        .Q(Q[46]),
        .R(1'b0));
  FDRE \m_payload_i_reg[5] 
       (.C(aclk),
        .CE(E),
        .D(\m_payload_i[5]_i_1_n_0 ),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \m_payload_i_reg[6] 
       (.C(aclk),
        .CE(E),
        .D(\m_payload_i[6]_i_1_n_0 ),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \m_payload_i_reg[7] 
       (.C(aclk),
        .CE(E),
        .D(\m_payload_i[7]_i_1_n_0 ),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \m_payload_i_reg[8] 
       (.C(aclk),
        .CE(E),
        .D(\m_payload_i[8]_i_1_n_0 ),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \m_payload_i_reg[9] 
       (.C(aclk),
        .CE(E),
        .D(\m_payload_i[9]_i_1_n_0 ),
        .Q(Q[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFE0FF00000000)) 
    m_valid_i_i_1__0
       (.I0(state[1]),
        .I1(state[0]),
        .I2(m_valid_i_reg_0),
        .I3(s_ready_i_reg_0),
        .I4(s_axi_arvalid),
        .I5(m_valid_i_reg_1),
        .O(m_valid_i_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    m_valid_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_valid_i_i_1__0_n_0),
        .Q(m_valid_i_reg_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFAFAFAEA)) 
    next_pending_r_i_1__0
       (.I0(next_pending_r_reg),
        .I1(Q[46]),
        .I2(\wrap_second_len_r_reg[3]_0 ),
        .I3(Q[45]),
        .I4(Q[44]),
        .O(incr_next_pending));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    next_pending_r_i_2__0
       (.I0(Q[42]),
        .I1(Q[39]),
        .I2(Q[40]),
        .I3(Q[41]),
        .I4(\wrap_second_len_r_reg[3]_0 ),
        .O(\m_payload_i_reg[47]_0 ));
  LUT6 #(
    .INIT(64'h0F0000000E000000)) 
    s_axburst_eq0_i_2
       (.I0(Q[44]),
        .I1(Q[45]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(m_valid_i_reg_0),
        .I5(Q[46]),
        .O(\m_payload_i_reg[49]_0 ));
  LUT6 #(
    .INIT(64'h1F1FFF1F00000000)) 
    s_ready_i_i_1__0
       (.I0(state[1]),
        .I1(state[0]),
        .I2(m_valid_i_reg_0),
        .I3(s_ready_i_reg_0),
        .I4(s_axi_arvalid),
        .I5(\aresetn_d_reg[0]_0 ),
        .O(s_ready_i_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_ready_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_ready_i_i_1__0_n_0),
        .Q(s_ready_i_reg_0),
        .R(1'b0));
  FDRE \skid_buffer_reg[0] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(s_axi_araddr[0]),
        .Q(\skid_buffer_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[10] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(s_axi_araddr[10]),
        .Q(\skid_buffer_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[11] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(s_axi_araddr[11]),
        .Q(\skid_buffer_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[12] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(s_axi_araddr[12]),
        .Q(\skid_buffer_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[13] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(s_axi_araddr[13]),
        .Q(\skid_buffer_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[14] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(s_axi_araddr[14]),
        .Q(\skid_buffer_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[15] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(s_axi_araddr[15]),
        .Q(\skid_buffer_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[16] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(s_axi_araddr[16]),
        .Q(\skid_buffer_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[17] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(s_axi_araddr[17]),
        .Q(\skid_buffer_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[18] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(s_axi_araddr[18]),
        .Q(\skid_buffer_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[19] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(s_axi_araddr[19]),
        .Q(\skid_buffer_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[1] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(s_axi_araddr[1]),
        .Q(\skid_buffer_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[20] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(s_axi_araddr[20]),
        .Q(\skid_buffer_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[21] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(s_axi_araddr[21]),
        .Q(\skid_buffer_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[22] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(s_axi_araddr[22]),
        .Q(\skid_buffer_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[23] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(s_axi_araddr[23]),
        .Q(\skid_buffer_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[24] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(s_axi_araddr[24]),
        .Q(\skid_buffer_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[25] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(s_axi_araddr[25]),
        .Q(\skid_buffer_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[26] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(s_axi_araddr[26]),
        .Q(\skid_buffer_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[27] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(s_axi_araddr[27]),
        .Q(\skid_buffer_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[28] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(s_axi_araddr[28]),
        .Q(\skid_buffer_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[29] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(s_axi_araddr[29]),
        .Q(\skid_buffer_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[2] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(s_axi_araddr[2]),
        .Q(\skid_buffer_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[30] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(s_axi_araddr[30]),
        .Q(\skid_buffer_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[31] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(s_axi_araddr[31]),
        .Q(\skid_buffer_reg_n_0_[31] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[32] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(s_axi_arprot[0]),
        .Q(\skid_buffer_reg_n_0_[32] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[33] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(s_axi_arprot[1]),
        .Q(\skid_buffer_reg_n_0_[33] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[34] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(s_axi_arprot[2]),
        .Q(\skid_buffer_reg_n_0_[34] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[35] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(s_axi_arsize[0]),
        .Q(\skid_buffer_reg_n_0_[35] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[36] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(s_axi_arsize[1]),
        .Q(\skid_buffer_reg_n_0_[36] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[38] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(s_axi_arburst[0]),
        .Q(\skid_buffer_reg_n_0_[38] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[39] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(s_axi_arburst[1]),
        .Q(\skid_buffer_reg_n_0_[39] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[3] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(s_axi_araddr[3]),
        .Q(\skid_buffer_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[44] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(s_axi_arlen[0]),
        .Q(\skid_buffer_reg_n_0_[44] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[45] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(s_axi_arlen[1]),
        .Q(\skid_buffer_reg_n_0_[45] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[46] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(s_axi_arlen[2]),
        .Q(\skid_buffer_reg_n_0_[46] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[47] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(s_axi_arlen[3]),
        .Q(\skid_buffer_reg_n_0_[47] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[48] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(s_axi_arlen[4]),
        .Q(\skid_buffer_reg_n_0_[48] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[49] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(s_axi_arlen[5]),
        .Q(\skid_buffer_reg_n_0_[49] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[4] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(s_axi_araddr[4]),
        .Q(\skid_buffer_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[50] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(s_axi_arlen[6]),
        .Q(\skid_buffer_reg_n_0_[50] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[51] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(s_axi_arlen[7]),
        .Q(\skid_buffer_reg_n_0_[51] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[5] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(s_axi_araddr[5]),
        .Q(\skid_buffer_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[6] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(s_axi_araddr[6]),
        .Q(\skid_buffer_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[7] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(s_axi_araddr[7]),
        .Q(\skid_buffer_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[8] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(s_axi_araddr[8]),
        .Q(\skid_buffer_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[9] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(s_axi_araddr[9]),
        .Q(\skid_buffer_reg_n_0_[9] ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hCCC4)) 
    \wrap_boundary_axaddr_r[0]_i_1 
       (.I0(Q[39]),
        .I1(Q[0]),
        .I2(Q[35]),
        .I3(Q[36]),
        .O(\m_payload_i_reg[47]_2 [0]));
  LUT5 #(
    .INIT(32'hA0B0F0B0)) 
    \wrap_boundary_axaddr_r[1]_i_1 
       (.I0(Q[36]),
        .I1(Q[40]),
        .I2(Q[1]),
        .I3(Q[35]),
        .I4(Q[39]),
        .O(\m_payload_i_reg[47]_2 [1]));
  LUT6 #(
    .INIT(64'hF0500030F050F030)) 
    \wrap_boundary_axaddr_r[2]_i_1 
       (.I0(Q[40]),
        .I1(Q[41]),
        .I2(Q[2]),
        .I3(Q[36]),
        .I4(Q[35]),
        .I5(Q[39]),
        .O(\m_payload_i_reg[47]_2 [2]));
  LUT6 #(
    .INIT(64'hFFFFFFFF0400040C)) 
    \wrap_boundary_axaddr_r[3]_i_1 
       (.I0(Q[40]),
        .I1(Q[3]),
        .I2(Q[35]),
        .I3(Q[36]),
        .I4(Q[42]),
        .I5(\wrap_boundary_axaddr_r[3]_i_2_n_0 ),
        .O(\m_payload_i_reg[47]_2 [3]));
  LUT5 #(
    .INIT(32'h0400C400)) 
    \wrap_boundary_axaddr_r[3]_i_2 
       (.I0(Q[41]),
        .I1(Q[35]),
        .I2(Q[36]),
        .I3(Q[3]),
        .I4(Q[39]),
        .O(\wrap_boundary_axaddr_r[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h003050F0F03050F0)) 
    \wrap_boundary_axaddr_r[4]_i_1 
       (.I0(Q[41]),
        .I1(Q[42]),
        .I2(Q[4]),
        .I3(Q[36]),
        .I4(Q[35]),
        .I5(Q[40]),
        .O(\m_payload_i_reg[47]_2 [4]));
  LUT5 #(
    .INIT(32'h5070F070)) 
    \wrap_boundary_axaddr_r[5]_i_1 
       (.I0(Q[36]),
        .I1(Q[42]),
        .I2(Q[5]),
        .I3(Q[35]),
        .I4(Q[41]),
        .O(\m_payload_i_reg[47]_2 [5]));
  LUT4 #(
    .INIT(16'h4CCC)) 
    \wrap_boundary_axaddr_r[6]_i_1 
       (.I0(Q[42]),
        .I1(Q[6]),
        .I2(Q[35]),
        .I3(Q[36]),
        .O(\m_payload_i_reg[47]_2 [6]));
  LUT6 #(
    .INIT(64'hDF5FFF7F20A00080)) 
    \wrap_cnt_r[2]_i_1 
       (.I0(\wrap_second_len_r_reg[3] [1]),
        .I1(\wrap_second_len_r_reg[3]_0 ),
        .I2(\m_payload_i_reg[44]_0 ),
        .I3(\m_payload_i_reg[44]_1 ),
        .I4(\wrap_second_len_r_reg[3]_1 [0]),
        .I5(\wrap_second_len_r_reg[3] [2]),
        .O(D[0]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wrap_cnt_r[2]_i_2 
       (.I0(\m_payload_i_reg[44]_1 ),
        .I1(\m_payload_i_reg[47]_1 ),
        .I2(\FSM_sequential_state_reg[1] ),
        .I3(\FSM_sequential_state_reg[1]_0 ),
        .O(\m_payload_i_reg[44]_0 ));
  LUT4 #(
    .INIT(16'hDF20)) 
    \wrap_cnt_r[3]_i_1 
       (.I0(\wrap_second_len_r_reg[3] [2]),
        .I1(\wrap_cnt_r[3]_i_2_n_0 ),
        .I2(\wrap_second_len_r_reg[3] [1]),
        .I3(\wrap_second_len_r_reg[3] [3]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hAAAA0003FFFF5557)) 
    \wrap_cnt_r[3]_i_2 
       (.I0(\wrap_second_len_r_reg[3]_0 ),
        .I1(\m_payload_i_reg[47]_1 ),
        .I2(\FSM_sequential_state_reg[1] ),
        .I3(\FSM_sequential_state_reg[1]_0 ),
        .I4(\m_payload_i_reg[44]_1 ),
        .I5(\wrap_second_len_r_reg[3]_1 [0]),
        .O(\wrap_cnt_r[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h33333330AAAAAAAA)) 
    \wrap_second_len_r[0]_i_1 
       (.I0(\wrap_second_len_r_reg[3]_1 [0]),
        .I1(\m_payload_i_reg[44]_1 ),
        .I2(\FSM_sequential_state_reg[1]_0 ),
        .I3(\FSM_sequential_state_reg[1] ),
        .I4(\m_payload_i_reg[47]_1 ),
        .I5(\wrap_second_len_r_reg[3]_0 ),
        .O(\wrap_second_len_r_reg[3] [0]));
  LUT6 #(
    .INIT(64'hCACACACA3A3A3A0A)) 
    \wrap_second_len_r[1]_i_1 
       (.I0(\wrap_second_len_r_reg[3]_1 [1]),
        .I1(\m_payload_i_reg[44]_1 ),
        .I2(\wrap_second_len_r_reg[3]_0 ),
        .I3(\m_payload_i_reg[47]_1 ),
        .I4(\FSM_sequential_state_reg[1]_0 ),
        .I5(\FSM_sequential_state_reg[1] ),
        .O(\wrap_second_len_r_reg[3] [1]));
  LUT6 #(
    .INIT(64'hCCCCC3C0AAAAAAAA)) 
    \wrap_second_len_r[2]_i_1 
       (.I0(\wrap_second_len_r_reg[3]_1 [2]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .I2(\FSM_sequential_state_reg[1] ),
        .I3(\m_payload_i_reg[47]_1 ),
        .I4(\m_payload_i_reg[44]_1 ),
        .I5(\wrap_second_len_r_reg[3]_0 ),
        .O(\wrap_second_len_r_reg[3] [2]));
  LUT6 #(
    .INIT(64'hCACACACACACACA0A)) 
    \wrap_second_len_r[3]_i_1 
       (.I0(\wrap_second_len_r_reg[3]_1 [3]),
        .I1(\m_payload_i_reg[47]_1 ),
        .I2(\wrap_second_len_r_reg[3]_0 ),
        .I3(\m_payload_i_reg[44]_1 ),
        .I4(\FSM_sequential_state_reg[1] ),
        .I5(\FSM_sequential_state_reg[1]_0 ),
        .O(\wrap_second_len_r_reg[3] [3]));
endmodule

(* ORIG_REF_NAME = "axi_register_slice_v2_1_27_axic_register_slice" *) 
module embsys_auto_pc_1_axi_register_slice_v2_1_27_axic_register_slice__parameterized2
   (m_valid_i_reg_0,
    s_ready_i_reg_0,
    \aresetn_d_reg[1]_0 ,
    \m_payload_i_reg[34]_0 ,
    aclk,
    \aresetn_d_reg[1]_1 ,
    s_axi_rready,
    si_rs_rlast,
    out,
    m_valid_i_reg_1,
    s_ready_i_reg_1);
  output m_valid_i_reg_0;
  output s_ready_i_reg_0;
  output \aresetn_d_reg[1]_0 ;
  output [34:0]\m_payload_i_reg[34]_0 ;
  input aclk;
  input \aresetn_d_reg[1]_1 ;
  input s_axi_rready;
  input si_rs_rlast;
  input [33:0]out;
  input m_valid_i_reg_1;
  input s_ready_i_reg_1;

  wire aclk;
  wire \aresetn_d_reg[1]_0 ;
  wire \aresetn_d_reg[1]_1 ;
  wire \m_payload_i[0]_i_1__0_n_0 ;
  wire \m_payload_i[10]_i_1__0_n_0 ;
  wire \m_payload_i[11]_i_1__0_n_0 ;
  wire \m_payload_i[12]_i_1__0_n_0 ;
  wire \m_payload_i[13]_i_1__0_n_0 ;
  wire \m_payload_i[14]_i_1__0_n_0 ;
  wire \m_payload_i[15]_i_1__0_n_0 ;
  wire \m_payload_i[16]_i_1__0_n_0 ;
  wire \m_payload_i[17]_i_1__0_n_0 ;
  wire \m_payload_i[18]_i_1__0_n_0 ;
  wire \m_payload_i[19]_i_1__0_n_0 ;
  wire \m_payload_i[1]_i_1__0_n_0 ;
  wire \m_payload_i[20]_i_1__0_n_0 ;
  wire \m_payload_i[21]_i_1__0_n_0 ;
  wire \m_payload_i[22]_i_1__0_n_0 ;
  wire \m_payload_i[23]_i_1__0_n_0 ;
  wire \m_payload_i[24]_i_1__0_n_0 ;
  wire \m_payload_i[25]_i_1__0_n_0 ;
  wire \m_payload_i[26]_i_1__0_n_0 ;
  wire \m_payload_i[27]_i_1__0_n_0 ;
  wire \m_payload_i[28]_i_1__0_n_0 ;
  wire \m_payload_i[29]_i_1__0_n_0 ;
  wire \m_payload_i[2]_i_1__0_n_0 ;
  wire \m_payload_i[30]_i_1__0_n_0 ;
  wire \m_payload_i[31]_i_2__0_n_0 ;
  wire \m_payload_i[32]_i_1__0_n_0 ;
  wire \m_payload_i[33]_i_1__0_n_0 ;
  wire \m_payload_i[34]_i_1__0_n_0 ;
  wire \m_payload_i[3]_i_1__0_n_0 ;
  wire \m_payload_i[4]_i_1__0_n_0 ;
  wire \m_payload_i[5]_i_1__0_n_0 ;
  wire \m_payload_i[6]_i_1__0_n_0 ;
  wire \m_payload_i[7]_i_1__0_n_0 ;
  wire \m_payload_i[8]_i_1__0_n_0 ;
  wire \m_payload_i[9]_i_1__0_n_0 ;
  wire [34:0]\m_payload_i_reg[34]_0 ;
  wire m_valid_i_i_1_n_0;
  wire m_valid_i_reg_0;
  wire m_valid_i_reg_1;
  wire [33:0]out;
  wire p_1_in;
  wire s_axi_rready;
  wire s_ready_i_i_1_n_0;
  wire s_ready_i_reg_0;
  wire s_ready_i_reg_1;
  wire si_rs_rlast;
  wire \skid_buffer_reg_n_0_[0] ;
  wire \skid_buffer_reg_n_0_[10] ;
  wire \skid_buffer_reg_n_0_[11] ;
  wire \skid_buffer_reg_n_0_[12] ;
  wire \skid_buffer_reg_n_0_[13] ;
  wire \skid_buffer_reg_n_0_[14] ;
  wire \skid_buffer_reg_n_0_[15] ;
  wire \skid_buffer_reg_n_0_[16] ;
  wire \skid_buffer_reg_n_0_[17] ;
  wire \skid_buffer_reg_n_0_[18] ;
  wire \skid_buffer_reg_n_0_[19] ;
  wire \skid_buffer_reg_n_0_[1] ;
  wire \skid_buffer_reg_n_0_[20] ;
  wire \skid_buffer_reg_n_0_[21] ;
  wire \skid_buffer_reg_n_0_[22] ;
  wire \skid_buffer_reg_n_0_[23] ;
  wire \skid_buffer_reg_n_0_[24] ;
  wire \skid_buffer_reg_n_0_[25] ;
  wire \skid_buffer_reg_n_0_[26] ;
  wire \skid_buffer_reg_n_0_[27] ;
  wire \skid_buffer_reg_n_0_[28] ;
  wire \skid_buffer_reg_n_0_[29] ;
  wire \skid_buffer_reg_n_0_[2] ;
  wire \skid_buffer_reg_n_0_[30] ;
  wire \skid_buffer_reg_n_0_[31] ;
  wire \skid_buffer_reg_n_0_[32] ;
  wire \skid_buffer_reg_n_0_[33] ;
  wire \skid_buffer_reg_n_0_[34] ;
  wire \skid_buffer_reg_n_0_[3] ;
  wire \skid_buffer_reg_n_0_[4] ;
  wire \skid_buffer_reg_n_0_[5] ;
  wire \skid_buffer_reg_n_0_[6] ;
  wire \skid_buffer_reg_n_0_[7] ;
  wire \skid_buffer_reg_n_0_[8] ;
  wire \skid_buffer_reg_n_0_[9] ;

  FDRE #(
    .INIT(1'b0)) 
    \aresetn_d_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\aresetn_d_reg[1]_1 ),
        .Q(\aresetn_d_reg[1]_0 ),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[0]_i_1__0 
       (.I0(out[0]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[0] ),
        .O(\m_payload_i[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[10]_i_1__0 
       (.I0(out[10]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[10] ),
        .O(\m_payload_i[10]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[11]_i_1__0 
       (.I0(out[11]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[11] ),
        .O(\m_payload_i[11]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[12]_i_1__0 
       (.I0(out[12]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[12] ),
        .O(\m_payload_i[12]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[13]_i_1__0 
       (.I0(out[13]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[13] ),
        .O(\m_payload_i[13]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[14]_i_1__0 
       (.I0(out[14]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[14] ),
        .O(\m_payload_i[14]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[15]_i_1__0 
       (.I0(out[15]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[15] ),
        .O(\m_payload_i[15]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[16]_i_1__0 
       (.I0(out[16]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[16] ),
        .O(\m_payload_i[16]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[17]_i_1__0 
       (.I0(out[17]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[17] ),
        .O(\m_payload_i[17]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[18]_i_1__0 
       (.I0(out[18]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[18] ),
        .O(\m_payload_i[18]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[19]_i_1__0 
       (.I0(out[19]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[19] ),
        .O(\m_payload_i[19]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[1]_i_1__0 
       (.I0(out[1]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[1] ),
        .O(\m_payload_i[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[20]_i_1__0 
       (.I0(out[20]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[20] ),
        .O(\m_payload_i[20]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[21]_i_1__0 
       (.I0(out[21]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[21] ),
        .O(\m_payload_i[21]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[22]_i_1__0 
       (.I0(out[22]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[22] ),
        .O(\m_payload_i[22]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[23]_i_1__0 
       (.I0(out[23]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[23] ),
        .O(\m_payload_i[23]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[24]_i_1__0 
       (.I0(out[24]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[24] ),
        .O(\m_payload_i[24]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[25]_i_1__0 
       (.I0(out[25]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[25] ),
        .O(\m_payload_i[25]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[26]_i_1__0 
       (.I0(out[26]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[26] ),
        .O(\m_payload_i[26]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[27]_i_1__0 
       (.I0(out[27]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[27] ),
        .O(\m_payload_i[27]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[28]_i_1__0 
       (.I0(out[28]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[28] ),
        .O(\m_payload_i[28]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[29]_i_1__0 
       (.I0(out[29]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[29] ),
        .O(\m_payload_i[29]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[2]_i_1__0 
       (.I0(out[2]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[2] ),
        .O(\m_payload_i[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[30]_i_1__0 
       (.I0(out[30]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[30] ),
        .O(\m_payload_i[30]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \m_payload_i[31]_i_1 
       (.I0(s_axi_rready),
        .I1(m_valid_i_reg_0),
        .O(p_1_in));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[31]_i_2__0 
       (.I0(out[31]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[31] ),
        .O(\m_payload_i[31]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[32]_i_1__0 
       (.I0(out[32]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[32] ),
        .O(\m_payload_i[32]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[33]_i_1__0 
       (.I0(out[33]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[33] ),
        .O(\m_payload_i[33]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[34]_i_1__0 
       (.I0(si_rs_rlast),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[34] ),
        .O(\m_payload_i[34]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[3]_i_1__0 
       (.I0(out[3]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[3] ),
        .O(\m_payload_i[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[4]_i_1__0 
       (.I0(out[4]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[4] ),
        .O(\m_payload_i[4]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[5]_i_1__0 
       (.I0(out[5]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[5] ),
        .O(\m_payload_i[5]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[6]_i_1__0 
       (.I0(out[6]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[6] ),
        .O(\m_payload_i[6]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[7]_i_1__0 
       (.I0(out[7]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[7] ),
        .O(\m_payload_i[7]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[8]_i_1__0 
       (.I0(out[8]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[8] ),
        .O(\m_payload_i[8]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[9]_i_1__0 
       (.I0(out[9]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[9] ),
        .O(\m_payload_i[9]_i_1__0_n_0 ));
  FDRE \m_payload_i_reg[0] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\m_payload_i[0]_i_1__0_n_0 ),
        .Q(\m_payload_i_reg[34]_0 [0]),
        .R(1'b0));
  FDRE \m_payload_i_reg[10] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\m_payload_i[10]_i_1__0_n_0 ),
        .Q(\m_payload_i_reg[34]_0 [10]),
        .R(1'b0));
  FDRE \m_payload_i_reg[11] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\m_payload_i[11]_i_1__0_n_0 ),
        .Q(\m_payload_i_reg[34]_0 [11]),
        .R(1'b0));
  FDRE \m_payload_i_reg[12] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\m_payload_i[12]_i_1__0_n_0 ),
        .Q(\m_payload_i_reg[34]_0 [12]),
        .R(1'b0));
  FDRE \m_payload_i_reg[13] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\m_payload_i[13]_i_1__0_n_0 ),
        .Q(\m_payload_i_reg[34]_0 [13]),
        .R(1'b0));
  FDRE \m_payload_i_reg[14] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\m_payload_i[14]_i_1__0_n_0 ),
        .Q(\m_payload_i_reg[34]_0 [14]),
        .R(1'b0));
  FDRE \m_payload_i_reg[15] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\m_payload_i[15]_i_1__0_n_0 ),
        .Q(\m_payload_i_reg[34]_0 [15]),
        .R(1'b0));
  FDRE \m_payload_i_reg[16] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\m_payload_i[16]_i_1__0_n_0 ),
        .Q(\m_payload_i_reg[34]_0 [16]),
        .R(1'b0));
  FDRE \m_payload_i_reg[17] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\m_payload_i[17]_i_1__0_n_0 ),
        .Q(\m_payload_i_reg[34]_0 [17]),
        .R(1'b0));
  FDRE \m_payload_i_reg[18] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\m_payload_i[18]_i_1__0_n_0 ),
        .Q(\m_payload_i_reg[34]_0 [18]),
        .R(1'b0));
  FDRE \m_payload_i_reg[19] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\m_payload_i[19]_i_1__0_n_0 ),
        .Q(\m_payload_i_reg[34]_0 [19]),
        .R(1'b0));
  FDRE \m_payload_i_reg[1] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\m_payload_i[1]_i_1__0_n_0 ),
        .Q(\m_payload_i_reg[34]_0 [1]),
        .R(1'b0));
  FDRE \m_payload_i_reg[20] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\m_payload_i[20]_i_1__0_n_0 ),
        .Q(\m_payload_i_reg[34]_0 [20]),
        .R(1'b0));
  FDRE \m_payload_i_reg[21] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\m_payload_i[21]_i_1__0_n_0 ),
        .Q(\m_payload_i_reg[34]_0 [21]),
        .R(1'b0));
  FDRE \m_payload_i_reg[22] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\m_payload_i[22]_i_1__0_n_0 ),
        .Q(\m_payload_i_reg[34]_0 [22]),
        .R(1'b0));
  FDRE \m_payload_i_reg[23] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\m_payload_i[23]_i_1__0_n_0 ),
        .Q(\m_payload_i_reg[34]_0 [23]),
        .R(1'b0));
  FDRE \m_payload_i_reg[24] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\m_payload_i[24]_i_1__0_n_0 ),
        .Q(\m_payload_i_reg[34]_0 [24]),
        .R(1'b0));
  FDRE \m_payload_i_reg[25] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\m_payload_i[25]_i_1__0_n_0 ),
        .Q(\m_payload_i_reg[34]_0 [25]),
        .R(1'b0));
  FDRE \m_payload_i_reg[26] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\m_payload_i[26]_i_1__0_n_0 ),
        .Q(\m_payload_i_reg[34]_0 [26]),
        .R(1'b0));
  FDRE \m_payload_i_reg[27] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\m_payload_i[27]_i_1__0_n_0 ),
        .Q(\m_payload_i_reg[34]_0 [27]),
        .R(1'b0));
  FDRE \m_payload_i_reg[28] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\m_payload_i[28]_i_1__0_n_0 ),
        .Q(\m_payload_i_reg[34]_0 [28]),
        .R(1'b0));
  FDRE \m_payload_i_reg[29] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\m_payload_i[29]_i_1__0_n_0 ),
        .Q(\m_payload_i_reg[34]_0 [29]),
        .R(1'b0));
  FDRE \m_payload_i_reg[2] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\m_payload_i[2]_i_1__0_n_0 ),
        .Q(\m_payload_i_reg[34]_0 [2]),
        .R(1'b0));
  FDRE \m_payload_i_reg[30] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\m_payload_i[30]_i_1__0_n_0 ),
        .Q(\m_payload_i_reg[34]_0 [30]),
        .R(1'b0));
  FDRE \m_payload_i_reg[31] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\m_payload_i[31]_i_2__0_n_0 ),
        .Q(\m_payload_i_reg[34]_0 [31]),
        .R(1'b0));
  FDRE \m_payload_i_reg[32] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\m_payload_i[32]_i_1__0_n_0 ),
        .Q(\m_payload_i_reg[34]_0 [32]),
        .R(1'b0));
  FDRE \m_payload_i_reg[33] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\m_payload_i[33]_i_1__0_n_0 ),
        .Q(\m_payload_i_reg[34]_0 [33]),
        .R(1'b0));
  FDRE \m_payload_i_reg[34] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\m_payload_i[34]_i_1__0_n_0 ),
        .Q(\m_payload_i_reg[34]_0 [34]),
        .R(1'b0));
  FDRE \m_payload_i_reg[3] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\m_payload_i[3]_i_1__0_n_0 ),
        .Q(\m_payload_i_reg[34]_0 [3]),
        .R(1'b0));
  FDRE \m_payload_i_reg[4] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\m_payload_i[4]_i_1__0_n_0 ),
        .Q(\m_payload_i_reg[34]_0 [4]),
        .R(1'b0));
  FDRE \m_payload_i_reg[5] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\m_payload_i[5]_i_1__0_n_0 ),
        .Q(\m_payload_i_reg[34]_0 [5]),
        .R(1'b0));
  FDRE \m_payload_i_reg[6] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\m_payload_i[6]_i_1__0_n_0 ),
        .Q(\m_payload_i_reg[34]_0 [6]),
        .R(1'b0));
  FDRE \m_payload_i_reg[7] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\m_payload_i[7]_i_1__0_n_0 ),
        .Q(\m_payload_i_reg[34]_0 [7]),
        .R(1'b0));
  FDRE \m_payload_i_reg[8] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\m_payload_i[8]_i_1__0_n_0 ),
        .Q(\m_payload_i_reg[34]_0 [8]),
        .R(1'b0));
  FDRE \m_payload_i_reg[9] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\m_payload_i[9]_i_1__0_n_0 ),
        .Q(\m_payload_i_reg[34]_0 [9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h5DFF0000)) 
    m_valid_i_i_1
       (.I0(m_valid_i_reg_1),
        .I1(m_valid_i_reg_0),
        .I2(s_axi_rready),
        .I3(s_ready_i_reg_0),
        .I4(\aresetn_d_reg[1]_0 ),
        .O(m_valid_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    m_valid_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_valid_i_i_1_n_0),
        .Q(m_valid_i_reg_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFBBB0000)) 
    s_ready_i_i_1
       (.I0(s_axi_rready),
        .I1(m_valid_i_reg_0),
        .I2(m_valid_i_reg_1),
        .I3(s_ready_i_reg_0),
        .I4(s_ready_i_reg_1),
        .O(s_ready_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_ready_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_ready_i_i_1_n_0),
        .Q(s_ready_i_reg_0),
        .R(1'b0));
  FDRE \skid_buffer_reg[0] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(out[0]),
        .Q(\skid_buffer_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[10] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(out[10]),
        .Q(\skid_buffer_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[11] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(out[11]),
        .Q(\skid_buffer_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[12] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(out[12]),
        .Q(\skid_buffer_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[13] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(out[13]),
        .Q(\skid_buffer_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[14] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(out[14]),
        .Q(\skid_buffer_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[15] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(out[15]),
        .Q(\skid_buffer_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[16] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(out[16]),
        .Q(\skid_buffer_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[17] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(out[17]),
        .Q(\skid_buffer_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[18] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(out[18]),
        .Q(\skid_buffer_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[19] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(out[19]),
        .Q(\skid_buffer_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[1] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(out[1]),
        .Q(\skid_buffer_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[20] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(out[20]),
        .Q(\skid_buffer_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[21] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(out[21]),
        .Q(\skid_buffer_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[22] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(out[22]),
        .Q(\skid_buffer_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[23] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(out[23]),
        .Q(\skid_buffer_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[24] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(out[24]),
        .Q(\skid_buffer_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[25] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(out[25]),
        .Q(\skid_buffer_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[26] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(out[26]),
        .Q(\skid_buffer_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[27] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(out[27]),
        .Q(\skid_buffer_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[28] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(out[28]),
        .Q(\skid_buffer_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[29] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(out[29]),
        .Q(\skid_buffer_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[2] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(out[2]),
        .Q(\skid_buffer_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[30] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(out[30]),
        .Q(\skid_buffer_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[31] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(out[31]),
        .Q(\skid_buffer_reg_n_0_[31] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[32] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(out[32]),
        .Q(\skid_buffer_reg_n_0_[32] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[33] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(out[33]),
        .Q(\skid_buffer_reg_n_0_[33] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[34] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(si_rs_rlast),
        .Q(\skid_buffer_reg_n_0_[34] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[3] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(out[3]),
        .Q(\skid_buffer_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[4] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(out[4]),
        .Q(\skid_buffer_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[5] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(out[5]),
        .Q(\skid_buffer_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[6] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(out[6]),
        .Q(\skid_buffer_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[7] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(out[7]),
        .Q(\skid_buffer_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[8] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(out[8]),
        .Q(\skid_buffer_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[9] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(out[9]),
        .Q(\skid_buffer_reg_n_0_[9] ),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
