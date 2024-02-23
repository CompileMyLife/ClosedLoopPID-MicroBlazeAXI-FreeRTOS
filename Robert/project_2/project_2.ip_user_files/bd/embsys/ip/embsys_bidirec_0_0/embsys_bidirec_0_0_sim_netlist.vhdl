-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Thu Feb 22 12:54:47 2024
-- Host        : DESKTOP-T2LGR09 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/PSU/Winter_2024/544/P2/ClosedLoopPID-MicroBlazeAXI-FreeRTOS/Robert/project_2/project_2.gen/sources_1/bd/embsys/ip/embsys_bidirec_0_0/embsys_bidirec_0_0_sim_netlist.vhdl
-- Design      : embsys_bidirec_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7s50csga324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity embsys_bidirec_0_0_bidirec is
  port (
    outp : out STD_LOGIC;
    bidir : inout STD_LOGIC;
    inp : in STD_LOGIC;
    oe : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of embsys_bidirec_0_0_bidirec : entity is "bidirec";
end embsys_bidirec_0_0_bidirec;

architecture STRUCTURE of embsys_bidirec_0_0_bidirec is
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of IIC_0_scl_iobuf : label is "PRIMITIVE";
begin
IIC_0_scl_iobuf: unisim.vcomponents.IOBUF
     port map (
      I => inp,
      IO => bidir,
      O => outp,
      T => oe
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity embsys_bidirec_0_0 is
  port (
    oe : in STD_LOGIC;
    inp : in STD_LOGIC;
    outp : out STD_LOGIC;
    bidir : inout STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of embsys_bidirec_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of embsys_bidirec_0_0 : entity is "embsys_bidirec_0_0,bidirec,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of embsys_bidirec_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of embsys_bidirec_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of embsys_bidirec_0_0 : entity is "bidirec,Vivado 2022.2";
end embsys_bidirec_0_0;

architecture STRUCTURE of embsys_bidirec_0_0 is
begin
inst: entity work.embsys_bidirec_0_0_bidirec
     port map (
      bidir => bidir,
      inp => inp,
      oe => oe,
      outp => outp
    );
end STRUCTURE;
