-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Thu Feb 22 12:54:45 2024
-- Host        : DESKTOP-T2LGR09 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top embsys_bidirec_0_0 -prefix
--               embsys_bidirec_0_0_ embsys_bidirec_1_0_stub.vhdl
-- Design      : embsys_bidirec_1_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7s50csga324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity embsys_bidirec_0_0 is
  Port ( 
    oe : in STD_LOGIC;
    inp : in STD_LOGIC;
    outp : out STD_LOGIC;
    bidir : inout STD_LOGIC
  );

end embsys_bidirec_0_0;

architecture stub of embsys_bidirec_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "oe,inp,outp,bidir";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "bidirec,Vivado 2022.2";
begin
end;
