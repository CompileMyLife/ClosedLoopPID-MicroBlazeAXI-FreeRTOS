-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Thu Feb 22 12:55:24 2024
-- Host        : DESKTOP-T2LGR09 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ embsys_nexys4io_0_0_sim_netlist.vhdl
-- Design      : embsys_nexys4io_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7s50csga324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Digit is
  port (
    \seg_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s00_axi_aclk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Digit;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Digit is
  signal seg : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal seg0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \seg[0]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \seg[1]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \seg[2]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \seg[3]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \seg[4]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \seg[5]_i_1\ : label is "soft_lutpair11";
begin
\seg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2F0F8E6"
    )
        port map (
      I0 => Q(0),
      I1 => Q(2),
      I2 => Q(4),
      I3 => Q(3),
      I4 => Q(1),
      O => seg(0)
    );
\seg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F2CCACEA"
    )
        port map (
      I0 => Q(4),
      I1 => Q(2),
      I2 => Q(1),
      I3 => Q(0),
      I4 => Q(3),
      O => seg(1)
    );
\seg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ECE164F0"
    )
        port map (
      I0 => Q(0),
      I1 => Q(2),
      I2 => Q(4),
      I3 => Q(3),
      I4 => Q(1),
      O => seg(2)
    );
\seg[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E0BACBAE"
    )
        port map (
      I0 => Q(4),
      I1 => Q(2),
      I2 => Q(1),
      I3 => Q(0),
      I4 => Q(3),
      O => seg(3)
    );
\seg[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"89FF80A6"
    )
        port map (
      I0 => Q(4),
      I1 => Q(2),
      I2 => Q(1),
      I3 => Q(3),
      I4 => Q(0),
      O => seg(4)
    );
\seg[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F438B8A"
    )
        port map (
      I0 => Q(4),
      I1 => Q(2),
      I2 => Q(3),
      I3 => Q(1),
      I4 => Q(0),
      O => seg(5)
    );
\seg[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A284EB2B"
    )
        port map (
      I0 => Q(4),
      I1 => Q(2),
      I2 => Q(1),
      I3 => Q(0),
      I4 => Q(3),
      O => seg(6)
    );
\seg[7]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(5),
      O => seg0
    );
\seg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => seg(0),
      Q => \seg_reg[7]_0\(0),
      R => '0'
    );
\seg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => seg(1),
      Q => \seg_reg[7]_0\(1),
      R => '0'
    );
\seg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => seg(2),
      Q => \seg_reg[7]_0\(2),
      R => '0'
    );
\seg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => seg(3),
      Q => \seg_reg[7]_0\(3),
      R => '0'
    );
\seg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => seg(4),
      Q => \seg_reg[7]_0\(4),
      R => '0'
    );
\seg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => seg(5),
      Q => \seg_reg[7]_0\(5),
      R => '0'
    );
\seg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => seg(6),
      Q => \seg_reg[7]_0\(6),
      R => '0'
    );
\seg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => seg0,
      Q => \seg_reg[7]_0\(7),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Digit_1 is
  port (
    \seg_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s00_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Digit_1 : entity is "Digit";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Digit_1;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Digit_1 is
  signal seg : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \seg[7]_i_1__0_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \seg[0]_i_1__0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \seg[1]_i_1__0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \seg[2]_i_1__0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \seg[3]_i_1__0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \seg[4]_i_1__0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \seg[5]_i_1__0\ : label is "soft_lutpair14";
begin
\seg[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8AAEABC"
    )
        port map (
      I0 => Q(4),
      I1 => Q(2),
      I2 => Q(0),
      I3 => Q(3),
      I4 => Q(1),
      O => seg(0)
    );
\seg[1]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F2CCACEA"
    )
        port map (
      I0 => Q(4),
      I1 => Q(2),
      I2 => Q(1),
      I3 => Q(0),
      I4 => Q(3),
      O => seg(1)
    );
\seg[2]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ECE164F0"
    )
        port map (
      I0 => Q(0),
      I1 => Q(2),
      I2 => Q(4),
      I3 => Q(3),
      I4 => Q(1),
      O => seg(2)
    );
\seg[3]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E0BACBAE"
    )
        port map (
      I0 => Q(4),
      I1 => Q(2),
      I2 => Q(1),
      I3 => Q(0),
      I4 => Q(3),
      O => seg(3)
    );
\seg[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"89FF80A6"
    )
        port map (
      I0 => Q(4),
      I1 => Q(2),
      I2 => Q(1),
      I3 => Q(3),
      I4 => Q(0),
      O => seg(4)
    );
\seg[5]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F438B8A"
    )
        port map (
      I0 => Q(4),
      I1 => Q(2),
      I2 => Q(3),
      I3 => Q(1),
      I4 => Q(0),
      O => seg(5)
    );
\seg[6]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A2EB842B"
    )
        port map (
      I0 => Q(4),
      I1 => Q(2),
      I2 => Q(1),
      I3 => Q(3),
      I4 => Q(0),
      O => seg(6)
    );
\seg[7]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(5),
      O => \seg[7]_i_1__0_n_0\
    );
\seg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => seg(0),
      Q => \seg_reg[7]_0\(0),
      R => '0'
    );
\seg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => seg(1),
      Q => \seg_reg[7]_0\(1),
      R => '0'
    );
\seg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => seg(2),
      Q => \seg_reg[7]_0\(2),
      R => '0'
    );
\seg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => seg(3),
      Q => \seg_reg[7]_0\(3),
      R => '0'
    );
\seg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => seg(4),
      Q => \seg_reg[7]_0\(4),
      R => '0'
    );
\seg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => seg(5),
      Q => \seg_reg[7]_0\(5),
      R => '0'
    );
\seg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => seg(6),
      Q => \seg_reg[7]_0\(6),
      R => '0'
    );
\seg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \seg[7]_i_1__0_n_0\,
      Q => \seg_reg[7]_0\(7),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Digit_2 is
  port (
    \seg_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s00_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Digit_2 : entity is "Digit";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Digit_2;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Digit_2 is
  signal seg : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \seg[7]_i_1__1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \seg[0]_i_1__1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \seg[1]_i_1__1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \seg[2]_i_1__1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \seg[3]_i_1__1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \seg[4]_i_1__1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \seg[5]_i_1__1\ : label is "soft_lutpair17";
begin
\seg[0]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEABEB28"
    )
        port map (
      I0 => Q(4),
      I1 => Q(3),
      I2 => Q(1),
      I3 => Q(0),
      I4 => Q(2),
      O => seg(0)
    );
\seg[1]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F2CCACEA"
    )
        port map (
      I0 => Q(4),
      I1 => Q(2),
      I2 => Q(1),
      I3 => Q(0),
      I4 => Q(3),
      O => seg(1)
    );
\seg[2]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2AACC9A"
    )
        port map (
      I0 => Q(4),
      I1 => Q(2),
      I2 => Q(1),
      I3 => Q(3),
      I4 => Q(0),
      O => seg(2)
    );
\seg[3]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F9D850F6"
    )
        port map (
      I0 => Q(0),
      I1 => Q(2),
      I2 => Q(4),
      I3 => Q(3),
      I4 => Q(1),
      O => seg(3)
    );
\seg[4]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8980FFA6"
    )
        port map (
      I0 => Q(4),
      I1 => Q(2),
      I2 => Q(1),
      I3 => Q(0),
      I4 => Q(3),
      O => seg(4)
    );
\seg[5]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F438B8A"
    )
        port map (
      I0 => Q(4),
      I1 => Q(2),
      I2 => Q(3),
      I3 => Q(1),
      I4 => Q(0),
      O => seg(5)
    );
\seg[6]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A2EB842B"
    )
        port map (
      I0 => Q(4),
      I1 => Q(2),
      I2 => Q(1),
      I3 => Q(3),
      I4 => Q(0),
      O => seg(6)
    );
\seg[7]_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(5),
      O => \seg[7]_i_1__1_n_0\
    );
\seg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => seg(0),
      Q => \seg_reg[7]_0\(0),
      R => '0'
    );
\seg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => seg(1),
      Q => \seg_reg[7]_0\(1),
      R => '0'
    );
\seg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => seg(2),
      Q => \seg_reg[7]_0\(2),
      R => '0'
    );
\seg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => seg(3),
      Q => \seg_reg[7]_0\(3),
      R => '0'
    );
\seg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => seg(4),
      Q => \seg_reg[7]_0\(4),
      R => '0'
    );
\seg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => seg(5),
      Q => \seg_reg[7]_0\(5),
      R => '0'
    );
\seg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => seg(6),
      Q => \seg_reg[7]_0\(6),
      R => '0'
    );
\seg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \seg[7]_i_1__1_n_0\,
      Q => \seg_reg[7]_0\(7),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Digit_3 is
  port (
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \an__0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \seg_reg[0]_0\ : in STD_LOGIC;
    \seg_reg[7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \seg_reg[7]_1\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \seg_reg[7]_2\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \seg_reg[1]_0\ : in STD_LOGIC;
    \seg_reg[2]_0\ : in STD_LOGIC;
    \seg_reg[3]_0\ : in STD_LOGIC;
    \seg_reg[4]_0\ : in STD_LOGIC;
    \seg_reg[5]_0\ : in STD_LOGIC;
    \seg_reg[6]_0\ : in STD_LOGIC;
    \seg_reg[7]_3\ : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Digit_3 : entity is "Digit";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Digit_3;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Digit_3 is
  signal seg : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \seg[0]_i_2_n_0\ : STD_LOGIC;
  signal \seg[1]_i_2_n_0\ : STD_LOGIC;
  signal \seg[2]_i_2_n_0\ : STD_LOGIC;
  signal \seg[3]_i_2_n_0\ : STD_LOGIC;
  signal \seg[4]_i_2_n_0\ : STD_LOGIC;
  signal \seg[5]_i_2_n_0\ : STD_LOGIC;
  signal \seg[6]_i_2_n_0\ : STD_LOGIC;
  signal \seg[7]_i_1__2_n_0\ : STD_LOGIC;
  signal \seg[7]_i_2_n_0\ : STD_LOGIC;
  signal \seg_reg_n_0_[0]\ : STD_LOGIC;
  signal \seg_reg_n_0_[1]\ : STD_LOGIC;
  signal \seg_reg_n_0_[2]\ : STD_LOGIC;
  signal \seg_reg_n_0_[3]\ : STD_LOGIC;
  signal \seg_reg_n_0_[4]\ : STD_LOGIC;
  signal \seg_reg_n_0_[5]\ : STD_LOGIC;
  signal \seg_reg_n_0_[6]\ : STD_LOGIC;
  signal \seg_reg_n_0_[7]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \seg[0]_i_1__2\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \seg[1]_i_1__2\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \seg[2]_i_1__2\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \seg[3]_i_1__2\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \seg[4]_i_1__2\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \seg[5]_i_1__2\ : label is "soft_lutpair20";
begin
\seg[0]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2F0F8E6"
    )
        port map (
      I0 => Q(0),
      I1 => Q(2),
      I2 => Q(4),
      I3 => Q(3),
      I4 => Q(1),
      O => seg(0)
    );
\seg[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \seg_reg_n_0_[0]\,
      I1 => \seg_reg[7]_0\(0),
      I2 => \an__0\(1),
      I3 => \seg_reg[7]_1\(0),
      I4 => \an__0\(0),
      I5 => \seg_reg[7]_2\(0),
      O => \seg[0]_i_2_n_0\
    );
\seg[1]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F2CCACEA"
    )
        port map (
      I0 => Q(4),
      I1 => Q(2),
      I2 => Q(1),
      I3 => Q(0),
      I4 => Q(3),
      O => seg(1)
    );
\seg[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \seg_reg_n_0_[1]\,
      I1 => \seg_reg[7]_0\(1),
      I2 => \an__0\(1),
      I3 => \seg_reg[7]_1\(1),
      I4 => \an__0\(0),
      I5 => \seg_reg[7]_2\(1),
      O => \seg[1]_i_2_n_0\
    );
\seg[2]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ECE164F0"
    )
        port map (
      I0 => Q(0),
      I1 => Q(2),
      I2 => Q(4),
      I3 => Q(3),
      I4 => Q(1),
      O => seg(2)
    );
\seg[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \seg_reg_n_0_[2]\,
      I1 => \seg_reg[7]_0\(2),
      I2 => \an__0\(1),
      I3 => \seg_reg[7]_1\(2),
      I4 => \an__0\(0),
      I5 => \seg_reg[7]_2\(2),
      O => \seg[2]_i_2_n_0\
    );
\seg[3]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E0BACBAE"
    )
        port map (
      I0 => Q(4),
      I1 => Q(2),
      I2 => Q(1),
      I3 => Q(0),
      I4 => Q(3),
      O => seg(3)
    );
\seg[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \seg_reg_n_0_[3]\,
      I1 => \seg_reg[7]_0\(3),
      I2 => \an__0\(1),
      I3 => \seg_reg[7]_1\(3),
      I4 => \an__0\(0),
      I5 => \seg_reg[7]_2\(3),
      O => \seg[3]_i_2_n_0\
    );
\seg[4]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8980FFA6"
    )
        port map (
      I0 => Q(4),
      I1 => Q(2),
      I2 => Q(1),
      I3 => Q(0),
      I4 => Q(3),
      O => seg(4)
    );
\seg[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \seg_reg_n_0_[4]\,
      I1 => \seg_reg[7]_0\(4),
      I2 => \an__0\(1),
      I3 => \seg_reg[7]_1\(4),
      I4 => \an__0\(0),
      I5 => \seg_reg[7]_2\(4),
      O => \seg[4]_i_2_n_0\
    );
\seg[5]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8848FB3A"
    )
        port map (
      I0 => Q(4),
      I1 => Q(2),
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(3),
      O => seg(5)
    );
\seg[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \seg_reg_n_0_[5]\,
      I1 => \seg_reg[7]_0\(5),
      I2 => \an__0\(1),
      I3 => \seg_reg[7]_1\(5),
      I4 => \an__0\(0),
      I5 => \seg_reg[7]_2\(5),
      O => \seg[5]_i_2_n_0\
    );
\seg[6]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A2EB842B"
    )
        port map (
      I0 => Q(4),
      I1 => Q(2),
      I2 => Q(1),
      I3 => Q(3),
      I4 => Q(0),
      O => seg(6)
    );
\seg[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \seg_reg_n_0_[6]\,
      I1 => \seg_reg[7]_0\(6),
      I2 => \an__0\(1),
      I3 => \seg_reg[7]_1\(6),
      I4 => \an__0\(0),
      I5 => \seg_reg[7]_2\(6),
      O => \seg[6]_i_2_n_0\
    );
\seg[7]_i_1__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(5),
      O => \seg[7]_i_1__2_n_0\
    );
\seg[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \seg_reg_n_0_[7]\,
      I1 => \seg_reg[7]_0\(7),
      I2 => \an__0\(1),
      I3 => \seg_reg[7]_1\(7),
      I4 => \an__0\(0),
      I5 => \seg_reg[7]_2\(7),
      O => \seg[7]_i_2_n_0\
    );
\seg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => seg(0),
      Q => \seg_reg_n_0_[0]\,
      R => '0'
    );
\seg_reg[0]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \seg[0]_i_2_n_0\,
      I1 => \seg_reg[0]_0\,
      O => D(0),
      S => \an__0\(2)
    );
\seg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => seg(1),
      Q => \seg_reg_n_0_[1]\,
      R => '0'
    );
\seg_reg[1]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \seg[1]_i_2_n_0\,
      I1 => \seg_reg[1]_0\,
      O => D(1),
      S => \an__0\(2)
    );
\seg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => seg(2),
      Q => \seg_reg_n_0_[2]\,
      R => '0'
    );
\seg_reg[2]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \seg[2]_i_2_n_0\,
      I1 => \seg_reg[2]_0\,
      O => D(2),
      S => \an__0\(2)
    );
\seg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => seg(3),
      Q => \seg_reg_n_0_[3]\,
      R => '0'
    );
\seg_reg[3]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \seg[3]_i_2_n_0\,
      I1 => \seg_reg[3]_0\,
      O => D(3),
      S => \an__0\(2)
    );
\seg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => seg(4),
      Q => \seg_reg_n_0_[4]\,
      R => '0'
    );
\seg_reg[4]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \seg[4]_i_2_n_0\,
      I1 => \seg_reg[4]_0\,
      O => D(4),
      S => \an__0\(2)
    );
\seg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => seg(5),
      Q => \seg_reg_n_0_[5]\,
      R => '0'
    );
\seg_reg[5]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \seg[5]_i_2_n_0\,
      I1 => \seg_reg[5]_0\,
      O => D(5),
      S => \an__0\(2)
    );
\seg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => seg(6),
      Q => \seg_reg_n_0_[6]\,
      R => '0'
    );
\seg_reg[6]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \seg[6]_i_2_n_0\,
      I1 => \seg_reg[6]_0\,
      O => D(6),
      S => \an__0\(2)
    );
\seg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \seg[7]_i_1__2_n_0\,
      Q => \seg_reg_n_0_[7]\,
      R => '0'
    );
\seg_reg[7]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \seg[7]_i_2_n_0\,
      I1 => \seg_reg[7]_3\,
      O => D(7),
      S => \an__0\(2)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Digit_4 is
  port (
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \seg_reg[7]_0\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s00_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Digit_4 : entity is "Digit";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Digit_4;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Digit_4 is
  signal seg : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \seg[7]_i_1__3_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \seg[0]_i_1__3\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \seg[1]_i_1__3\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \seg[2]_i_1__3\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \seg[3]_i_1__3\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \seg[4]_i_1__3\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \seg[5]_i_1__3\ : label is "soft_lutpair23";
begin
\seg[0]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2F0F8E6"
    )
        port map (
      I0 => \seg_reg[7]_0\(0),
      I1 => \seg_reg[7]_0\(2),
      I2 => \seg_reg[7]_0\(4),
      I3 => \seg_reg[7]_0\(3),
      I4 => \seg_reg[7]_0\(1),
      O => seg(0)
    );
\seg[1]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F2CCACEA"
    )
        port map (
      I0 => \seg_reg[7]_0\(4),
      I1 => \seg_reg[7]_0\(2),
      I2 => \seg_reg[7]_0\(1),
      I3 => \seg_reg[7]_0\(0),
      I4 => \seg_reg[7]_0\(3),
      O => seg(1)
    );
\seg[2]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ECE164F0"
    )
        port map (
      I0 => \seg_reg[7]_0\(0),
      I1 => \seg_reg[7]_0\(2),
      I2 => \seg_reg[7]_0\(4),
      I3 => \seg_reg[7]_0\(3),
      I4 => \seg_reg[7]_0\(1),
      O => seg(2)
    );
\seg[3]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E0BACBAE"
    )
        port map (
      I0 => \seg_reg[7]_0\(4),
      I1 => \seg_reg[7]_0\(2),
      I2 => \seg_reg[7]_0\(1),
      I3 => \seg_reg[7]_0\(0),
      I4 => \seg_reg[7]_0\(3),
      O => seg(3)
    );
\seg[4]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"89FF80A6"
    )
        port map (
      I0 => \seg_reg[7]_0\(4),
      I1 => \seg_reg[7]_0\(2),
      I2 => \seg_reg[7]_0\(1),
      I3 => \seg_reg[7]_0\(3),
      I4 => \seg_reg[7]_0\(0),
      O => seg(4)
    );
\seg[5]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F438B8A"
    )
        port map (
      I0 => \seg_reg[7]_0\(4),
      I1 => \seg_reg[7]_0\(2),
      I2 => \seg_reg[7]_0\(3),
      I3 => \seg_reg[7]_0\(1),
      I4 => \seg_reg[7]_0\(0),
      O => seg(5)
    );
\seg[6]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A2EB842B"
    )
        port map (
      I0 => \seg_reg[7]_0\(4),
      I1 => \seg_reg[7]_0\(2),
      I2 => \seg_reg[7]_0\(1),
      I3 => \seg_reg[7]_0\(3),
      I4 => \seg_reg[7]_0\(0),
      O => seg(6)
    );
\seg[7]_i_1__3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \seg_reg[7]_0\(5),
      O => \seg[7]_i_1__3_n_0\
    );
\seg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => seg(0),
      Q => Q(0),
      R => '0'
    );
\seg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => seg(1),
      Q => Q(1),
      R => '0'
    );
\seg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => seg(2),
      Q => Q(2),
      R => '0'
    );
\seg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => seg(3),
      Q => Q(3),
      R => '0'
    );
\seg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => seg(4),
      Q => Q(4),
      R => '0'
    );
\seg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => seg(5),
      Q => Q(5),
      R => '0'
    );
\seg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => seg(6),
      Q => Q(6),
      R => '0'
    );
\seg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \seg[7]_i_1__3_n_0\,
      Q => Q(7),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Digit_5 is
  port (
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \seg_reg[7]_0\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s00_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Digit_5 : entity is "Digit";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Digit_5;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Digit_5 is
  signal seg : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \seg[7]_i_1__4_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \seg[0]_i_1__4\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \seg[1]_i_1__4\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \seg[2]_i_1__4\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \seg[3]_i_1__4\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \seg[4]_i_1__4\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \seg[5]_i_1__4\ : label is "soft_lutpair26";
begin
\seg[0]_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2F0F8E6"
    )
        port map (
      I0 => \seg_reg[7]_0\(0),
      I1 => \seg_reg[7]_0\(2),
      I2 => \seg_reg[7]_0\(4),
      I3 => \seg_reg[7]_0\(3),
      I4 => \seg_reg[7]_0\(1),
      O => seg(0)
    );
\seg[1]_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F2CCACEA"
    )
        port map (
      I0 => \seg_reg[7]_0\(4),
      I1 => \seg_reg[7]_0\(2),
      I2 => \seg_reg[7]_0\(1),
      I3 => \seg_reg[7]_0\(0),
      I4 => \seg_reg[7]_0\(3),
      O => seg(1)
    );
\seg[2]_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ECE164F0"
    )
        port map (
      I0 => \seg_reg[7]_0\(0),
      I1 => \seg_reg[7]_0\(2),
      I2 => \seg_reg[7]_0\(4),
      I3 => \seg_reg[7]_0\(3),
      I4 => \seg_reg[7]_0\(1),
      O => seg(2)
    );
\seg[3]_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E0BACBAE"
    )
        port map (
      I0 => \seg_reg[7]_0\(4),
      I1 => \seg_reg[7]_0\(2),
      I2 => \seg_reg[7]_0\(1),
      I3 => \seg_reg[7]_0\(0),
      I4 => \seg_reg[7]_0\(3),
      O => seg(3)
    );
\seg[4]_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"89FF80A6"
    )
        port map (
      I0 => \seg_reg[7]_0\(4),
      I1 => \seg_reg[7]_0\(2),
      I2 => \seg_reg[7]_0\(1),
      I3 => \seg_reg[7]_0\(3),
      I4 => \seg_reg[7]_0\(0),
      O => seg(4)
    );
\seg[5]_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F438B8A"
    )
        port map (
      I0 => \seg_reg[7]_0\(4),
      I1 => \seg_reg[7]_0\(2),
      I2 => \seg_reg[7]_0\(3),
      I3 => \seg_reg[7]_0\(1),
      I4 => \seg_reg[7]_0\(0),
      O => seg(5)
    );
\seg[6]_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A2EB842B"
    )
        port map (
      I0 => \seg_reg[7]_0\(4),
      I1 => \seg_reg[7]_0\(2),
      I2 => \seg_reg[7]_0\(1),
      I3 => \seg_reg[7]_0\(3),
      I4 => \seg_reg[7]_0\(0),
      O => seg(6)
    );
\seg[7]_i_1__4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \seg_reg[7]_0\(5),
      O => \seg[7]_i_1__4_n_0\
    );
\seg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => seg(0),
      Q => Q(0),
      R => '0'
    );
\seg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => seg(1),
      Q => Q(1),
      R => '0'
    );
\seg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => seg(2),
      Q => Q(2),
      R => '0'
    );
\seg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => seg(3),
      Q => Q(3),
      R => '0'
    );
\seg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => seg(4),
      Q => Q(4),
      R => '0'
    );
\seg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => seg(5),
      Q => Q(5),
      R => '0'
    );
\seg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => seg(6),
      Q => Q(6),
      R => '0'
    );
\seg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \seg[7]_i_1__4_n_0\,
      Q => Q(7),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Digit_6 is
  port (
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \seg_reg[7]_0\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s00_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Digit_6 : entity is "Digit";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Digit_6;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Digit_6 is
  signal seg : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \seg[7]_i_1__5_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \seg[0]_i_1__5\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \seg[1]_i_1__5\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \seg[2]_i_1__5\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \seg[3]_i_1__5\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \seg[4]_i_1__5\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \seg[5]_i_1__5\ : label is "soft_lutpair29";
begin
\seg[0]_i_1__5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8AAEABC"
    )
        port map (
      I0 => \seg_reg[7]_0\(4),
      I1 => \seg_reg[7]_0\(2),
      I2 => \seg_reg[7]_0\(0),
      I3 => \seg_reg[7]_0\(3),
      I4 => \seg_reg[7]_0\(1),
      O => seg(0)
    );
\seg[1]_i_1__5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F2CCACEA"
    )
        port map (
      I0 => \seg_reg[7]_0\(4),
      I1 => \seg_reg[7]_0\(2),
      I2 => \seg_reg[7]_0\(1),
      I3 => \seg_reg[7]_0\(0),
      I4 => \seg_reg[7]_0\(3),
      O => seg(1)
    );
\seg[2]_i_1__5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ECE164F0"
    )
        port map (
      I0 => \seg_reg[7]_0\(0),
      I1 => \seg_reg[7]_0\(2),
      I2 => \seg_reg[7]_0\(4),
      I3 => \seg_reg[7]_0\(3),
      I4 => \seg_reg[7]_0\(1),
      O => seg(2)
    );
\seg[3]_i_1__5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E0BACBAE"
    )
        port map (
      I0 => \seg_reg[7]_0\(4),
      I1 => \seg_reg[7]_0\(2),
      I2 => \seg_reg[7]_0\(1),
      I3 => \seg_reg[7]_0\(0),
      I4 => \seg_reg[7]_0\(3),
      O => seg(3)
    );
\seg[4]_i_1__5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"89FF80A6"
    )
        port map (
      I0 => \seg_reg[7]_0\(4),
      I1 => \seg_reg[7]_0\(2),
      I2 => \seg_reg[7]_0\(1),
      I3 => \seg_reg[7]_0\(3),
      I4 => \seg_reg[7]_0\(0),
      O => seg(4)
    );
\seg[5]_i_1__5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F438B8A"
    )
        port map (
      I0 => \seg_reg[7]_0\(4),
      I1 => \seg_reg[7]_0\(2),
      I2 => \seg_reg[7]_0\(3),
      I3 => \seg_reg[7]_0\(1),
      I4 => \seg_reg[7]_0\(0),
      O => seg(5)
    );
\seg[6]_i_1__5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A2EB842B"
    )
        port map (
      I0 => \seg_reg[7]_0\(4),
      I1 => \seg_reg[7]_0\(2),
      I2 => \seg_reg[7]_0\(1),
      I3 => \seg_reg[7]_0\(3),
      I4 => \seg_reg[7]_0\(0),
      O => seg(6)
    );
\seg[7]_i_1__5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \seg_reg[7]_0\(5),
      O => \seg[7]_i_1__5_n_0\
    );
\seg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => seg(0),
      Q => Q(0),
      R => '0'
    );
\seg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => seg(1),
      Q => Q(1),
      R => '0'
    );
\seg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => seg(2),
      Q => Q(2),
      R => '0'
    );
\seg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => seg(3),
      Q => Q(3),
      R => '0'
    );
\seg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => seg(4),
      Q => Q(4),
      R => '0'
    );
\seg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => seg(5),
      Q => Q(5),
      R => '0'
    );
\seg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => seg(6),
      Q => Q(6),
      R => '0'
    );
\seg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \seg[7]_i_1__5_n_0\,
      Q => Q(7),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Digit_7 is
  port (
    \seg_reg[0]_0\ : out STD_LOGIC;
    \seg_reg[1]_0\ : out STD_LOGIC;
    \seg_reg[2]_0\ : out STD_LOGIC;
    \seg_reg[3]_0\ : out STD_LOGIC;
    \seg_reg[4]_0\ : out STD_LOGIC;
    \seg_reg[5]_0\ : out STD_LOGIC;
    \seg_reg[6]_0\ : out STD_LOGIC;
    \seg_reg[7]_0\ : out STD_LOGIC;
    \seg_reg[7]_1\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \an__0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \seg_reg[7]_2\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \seg_reg[7]_3\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Digit_7 : entity is "Digit";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Digit_7;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Digit_7 is
  signal seg : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \seg[7]_i_1__6_n_0\ : STD_LOGIC;
  signal \seg_reg_n_0_[0]\ : STD_LOGIC;
  signal \seg_reg_n_0_[1]\ : STD_LOGIC;
  signal \seg_reg_n_0_[2]\ : STD_LOGIC;
  signal \seg_reg_n_0_[3]\ : STD_LOGIC;
  signal \seg_reg_n_0_[4]\ : STD_LOGIC;
  signal \seg_reg_n_0_[5]\ : STD_LOGIC;
  signal \seg_reg_n_0_[6]\ : STD_LOGIC;
  signal \seg_reg_n_0_[7]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \seg[0]_i_1__6\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \seg[1]_i_1__6\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \seg[2]_i_1__6\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \seg[3]_i_1__6\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \seg[4]_i_1__6\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \seg[5]_i_1__6\ : label is "soft_lutpair32";
begin
\seg[0]_i_1__6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8AAEABC"
    )
        port map (
      I0 => \seg_reg[7]_1\(4),
      I1 => \seg_reg[7]_1\(2),
      I2 => \seg_reg[7]_1\(0),
      I3 => \seg_reg[7]_1\(3),
      I4 => \seg_reg[7]_1\(1),
      O => seg(0)
    );
\seg[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \seg_reg_n_0_[0]\,
      I1 => Q(0),
      I2 => \an__0\(1),
      I3 => \seg_reg[7]_2\(0),
      I4 => \an__0\(0),
      I5 => \seg_reg[7]_3\(0),
      O => \seg_reg[0]_0\
    );
\seg[1]_i_1__6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F2CCACEA"
    )
        port map (
      I0 => \seg_reg[7]_1\(4),
      I1 => \seg_reg[7]_1\(2),
      I2 => \seg_reg[7]_1\(1),
      I3 => \seg_reg[7]_1\(0),
      I4 => \seg_reg[7]_1\(3),
      O => seg(1)
    );
\seg[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \seg_reg_n_0_[1]\,
      I1 => Q(1),
      I2 => \an__0\(1),
      I3 => \seg_reg[7]_2\(1),
      I4 => \an__0\(0),
      I5 => \seg_reg[7]_3\(1),
      O => \seg_reg[1]_0\
    );
\seg[2]_i_1__6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ECE164F0"
    )
        port map (
      I0 => \seg_reg[7]_1\(0),
      I1 => \seg_reg[7]_1\(2),
      I2 => \seg_reg[7]_1\(4),
      I3 => \seg_reg[7]_1\(3),
      I4 => \seg_reg[7]_1\(1),
      O => seg(2)
    );
\seg[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \seg_reg_n_0_[2]\,
      I1 => Q(2),
      I2 => \an__0\(1),
      I3 => \seg_reg[7]_2\(2),
      I4 => \an__0\(0),
      I5 => \seg_reg[7]_3\(2),
      O => \seg_reg[2]_0\
    );
\seg[3]_i_1__6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E0BACBAE"
    )
        port map (
      I0 => \seg_reg[7]_1\(4),
      I1 => \seg_reg[7]_1\(2),
      I2 => \seg_reg[7]_1\(1),
      I3 => \seg_reg[7]_1\(0),
      I4 => \seg_reg[7]_1\(3),
      O => seg(3)
    );
\seg[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \seg_reg_n_0_[3]\,
      I1 => Q(3),
      I2 => \an__0\(1),
      I3 => \seg_reg[7]_2\(3),
      I4 => \an__0\(0),
      I5 => \seg_reg[7]_3\(3),
      O => \seg_reg[3]_0\
    );
\seg[4]_i_1__6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"89FF80A6"
    )
        port map (
      I0 => \seg_reg[7]_1\(4),
      I1 => \seg_reg[7]_1\(2),
      I2 => \seg_reg[7]_1\(1),
      I3 => \seg_reg[7]_1\(3),
      I4 => \seg_reg[7]_1\(0),
      O => seg(4)
    );
\seg[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \seg_reg_n_0_[4]\,
      I1 => Q(4),
      I2 => \an__0\(1),
      I3 => \seg_reg[7]_2\(4),
      I4 => \an__0\(0),
      I5 => \seg_reg[7]_3\(4),
      O => \seg_reg[4]_0\
    );
\seg[5]_i_1__6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F438B8A"
    )
        port map (
      I0 => \seg_reg[7]_1\(4),
      I1 => \seg_reg[7]_1\(2),
      I2 => \seg_reg[7]_1\(3),
      I3 => \seg_reg[7]_1\(1),
      I4 => \seg_reg[7]_1\(0),
      O => seg(5)
    );
\seg[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \seg_reg_n_0_[5]\,
      I1 => Q(5),
      I2 => \an__0\(1),
      I3 => \seg_reg[7]_2\(5),
      I4 => \an__0\(0),
      I5 => \seg_reg[7]_3\(5),
      O => \seg_reg[5]_0\
    );
\seg[6]_i_1__6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A2EB842B"
    )
        port map (
      I0 => \seg_reg[7]_1\(4),
      I1 => \seg_reg[7]_1\(2),
      I2 => \seg_reg[7]_1\(1),
      I3 => \seg_reg[7]_1\(3),
      I4 => \seg_reg[7]_1\(0),
      O => seg(6)
    );
\seg[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \seg_reg_n_0_[6]\,
      I1 => Q(6),
      I2 => \an__0\(1),
      I3 => \seg_reg[7]_2\(6),
      I4 => \an__0\(0),
      I5 => \seg_reg[7]_3\(6),
      O => \seg_reg[6]_0\
    );
\seg[7]_i_1__6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \seg_reg[7]_1\(5),
      O => \seg[7]_i_1__6_n_0\
    );
\seg[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \seg_reg_n_0_[7]\,
      I1 => Q(7),
      I2 => \an__0\(1),
      I3 => \seg_reg[7]_2\(7),
      I4 => \an__0\(0),
      I5 => \seg_reg[7]_3\(7),
      O => \seg_reg[7]_0\
    );
\seg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => seg(0),
      Q => \seg_reg_n_0_[0]\,
      R => '0'
    );
\seg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => seg(1),
      Q => \seg_reg_n_0_[1]\,
      R => '0'
    );
\seg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => seg(2),
      Q => \seg_reg_n_0_[2]\,
      R => '0'
    );
\seg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => seg(3),
      Q => \seg_reg_n_0_[3]\,
      R => '0'
    );
\seg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => seg(4),
      Q => \seg_reg_n_0_[4]\,
      R => '0'
    );
\seg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => seg(5),
      Q => \seg_reg_n_0_[5]\,
      R => '0'
    );
\seg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => seg(6),
      Q => \seg_reg_n_0_[6]\,
      R => '0'
    );
\seg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \seg[7]_i_1__6_n_0\,
      Q => \seg_reg_n_0_[7]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_debounce is
  port (
    D : out STD_LOGIC_VECTOR ( 20 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \axi_rdata_reg[20]\ : in STD_LOGIC;
    \axi_rdata_reg[20]_0\ : in STD_LOGIC;
    \axi_rdata_reg[20]_i_2_0\ : in STD_LOGIC_VECTOR ( 20 downto 0 );
    \axi_rdata_reg[20]_i_2_1\ : in STD_LOGIC_VECTOR ( 20 downto 0 );
    \axi_rdata_reg[20]_i_2_2\ : in STD_LOGIC_VECTOR ( 20 downto 0 );
    \axi_rdata_reg[19]\ : in STD_LOGIC;
    \axi_rdata_reg[19]_0\ : in STD_LOGIC;
    \axi_rdata_reg[18]\ : in STD_LOGIC;
    \axi_rdata_reg[18]_0\ : in STD_LOGIC;
    \axi_rdata_reg[17]\ : in STD_LOGIC;
    \axi_rdata_reg[17]_0\ : in STD_LOGIC;
    \axi_rdata_reg[16]\ : in STD_LOGIC;
    \axi_rdata_reg[16]_0\ : in STD_LOGIC;
    \axi_rdata_reg[15]\ : in STD_LOGIC;
    \axi_rdata_reg[15]_0\ : in STD_LOGIC;
    \axi_rdata_reg[14]\ : in STD_LOGIC;
    \axi_rdata_reg[14]_0\ : in STD_LOGIC;
    \axi_rdata_reg[13]\ : in STD_LOGIC;
    \axi_rdata_reg[13]_0\ : in STD_LOGIC;
    \axi_rdata_reg[12]\ : in STD_LOGIC;
    \axi_rdata_reg[12]_0\ : in STD_LOGIC;
    \axi_rdata_reg[11]\ : in STD_LOGIC;
    \axi_rdata_reg[11]_0\ : in STD_LOGIC;
    \axi_rdata_reg[10]\ : in STD_LOGIC;
    \axi_rdata_reg[10]_0\ : in STD_LOGIC;
    \axi_rdata_reg[9]\ : in STD_LOGIC;
    \axi_rdata_reg[9]_0\ : in STD_LOGIC;
    \axi_rdata_reg[8]\ : in STD_LOGIC;
    \axi_rdata_reg[8]_0\ : in STD_LOGIC;
    \axi_rdata_reg[7]\ : in STD_LOGIC;
    \axi_rdata_reg[7]_0\ : in STD_LOGIC;
    \axi_rdata_reg[6]\ : in STD_LOGIC;
    \axi_rdata_reg[6]_0\ : in STD_LOGIC;
    \axi_rdata_reg[5]\ : in STD_LOGIC;
    \axi_rdata_reg[5]_0\ : in STD_LOGIC;
    \axi_rdata_reg[4]\ : in STD_LOGIC;
    \axi_rdata_reg[4]_0\ : in STD_LOGIC;
    \axi_rdata_reg[3]\ : in STD_LOGIC;
    \axi_rdata_reg[3]_0\ : in STD_LOGIC;
    \axi_rdata_reg[2]\ : in STD_LOGIC;
    \axi_rdata_reg[2]_0\ : in STD_LOGIC;
    \axi_rdata_reg[1]\ : in STD_LOGIC;
    \axi_rdata_reg[1]_0\ : in STD_LOGIC;
    \axi_rdata_reg[0]\ : in STD_LOGIC;
    \axi_rdata_reg[0]_0\ : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    pbtn_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    sw : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_debounce;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_debounce is
  signal \axi_rdata[0]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[10]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[11]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[12]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[13]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[14]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[15]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[16]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[17]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[18]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[19]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[20]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[10]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[11]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[13]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[14]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[15]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[17]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[18]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[19]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[20]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[5]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[6]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[9]_i_2_n_0\ : STD_LOGIC;
  signal btnsw_in : STD_LOGIC_VECTOR ( 20 downto 0 );
  signal db_count : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \db_count0_carry__0_n_0\ : STD_LOGIC;
  signal \db_count0_carry__0_n_1\ : STD_LOGIC;
  signal \db_count0_carry__0_n_2\ : STD_LOGIC;
  signal \db_count0_carry__0_n_3\ : STD_LOGIC;
  signal \db_count0_carry__1_n_0\ : STD_LOGIC;
  signal \db_count0_carry__1_n_1\ : STD_LOGIC;
  signal \db_count0_carry__1_n_2\ : STD_LOGIC;
  signal \db_count0_carry__1_n_3\ : STD_LOGIC;
  signal \db_count0_carry__2_n_0\ : STD_LOGIC;
  signal \db_count0_carry__2_n_1\ : STD_LOGIC;
  signal \db_count0_carry__2_n_2\ : STD_LOGIC;
  signal \db_count0_carry__2_n_3\ : STD_LOGIC;
  signal \db_count0_carry__3_n_0\ : STD_LOGIC;
  signal \db_count0_carry__3_n_1\ : STD_LOGIC;
  signal \db_count0_carry__3_n_2\ : STD_LOGIC;
  signal \db_count0_carry__3_n_3\ : STD_LOGIC;
  signal \db_count0_carry__4_n_0\ : STD_LOGIC;
  signal \db_count0_carry__4_n_1\ : STD_LOGIC;
  signal \db_count0_carry__4_n_2\ : STD_LOGIC;
  signal \db_count0_carry__4_n_3\ : STD_LOGIC;
  signal \db_count0_carry__5_n_0\ : STD_LOGIC;
  signal \db_count0_carry__5_n_1\ : STD_LOGIC;
  signal \db_count0_carry__5_n_2\ : STD_LOGIC;
  signal \db_count0_carry__5_n_3\ : STD_LOGIC;
  signal \db_count0_carry__6_n_2\ : STD_LOGIC;
  signal \db_count0_carry__6_n_3\ : STD_LOGIC;
  signal db_count0_carry_n_0 : STD_LOGIC;
  signal db_count0_carry_n_1 : STD_LOGIC;
  signal db_count0_carry_n_2 : STD_LOGIC;
  signal db_count0_carry_n_3 : STD_LOGIC;
  signal \db_count[31]_i_2_n_0\ : STD_LOGIC;
  signal \db_count[31]_i_3_n_0\ : STD_LOGIC;
  signal \db_count[31]_i_4_n_0\ : STD_LOGIC;
  signal \db_count[31]_i_5_n_0\ : STD_LOGIC;
  signal \db_count[31]_i_6_n_0\ : STD_LOGIC;
  signal \db_count[31]_i_7_n_0\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \pbtn_db[1]_i_1_n_0\ : STD_LOGIC;
  signal \pbtn_db[2]_i_1_n_0\ : STD_LOGIC;
  signal \pbtn_db[3]_i_1_n_0\ : STD_LOGIC;
  signal \pbtn_db[4]_i_1_n_0\ : STD_LOGIC;
  signal \pbtn_db[5]_i_1_n_0\ : STD_LOGIC;
  signal shift_pb0 : STD_LOGIC;
  signal shift_pb1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal shift_pb2 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal shift_pb3 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal shift_pb4 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal shift_pb5 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal shift_swtch00 : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \shift_swtch0_reg_n_0_[3]\ : STD_LOGIC;
  signal shift_swtch10 : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal shift_swtch100 : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \shift_swtch10_reg_n_0_[3]\ : STD_LOGIC;
  signal shift_swtch110 : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \shift_swtch11_reg_n_0_[3]\ : STD_LOGIC;
  signal shift_swtch120 : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \shift_swtch12_reg_n_0_[3]\ : STD_LOGIC;
  signal shift_swtch130 : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \shift_swtch13_reg_n_0_[3]\ : STD_LOGIC;
  signal shift_swtch140 : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \shift_swtch14_reg_n_0_[3]\ : STD_LOGIC;
  signal shift_swtch150 : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \shift_swtch15_reg_n_0_[3]\ : STD_LOGIC;
  signal \shift_swtch1_reg_n_0_[3]\ : STD_LOGIC;
  signal shift_swtch20 : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \shift_swtch2_reg_n_0_[3]\ : STD_LOGIC;
  signal shift_swtch30 : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \shift_swtch3_reg_n_0_[3]\ : STD_LOGIC;
  signal shift_swtch40 : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \shift_swtch4_reg_n_0_[3]\ : STD_LOGIC;
  signal shift_swtch50 : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \shift_swtch5_reg_n_0_[3]\ : STD_LOGIC;
  signal shift_swtch60 : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \shift_swtch6_reg_n_0_[3]\ : STD_LOGIC;
  signal shift_swtch70 : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \shift_swtch7_reg_n_0_[3]\ : STD_LOGIC;
  signal shift_swtch80 : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \shift_swtch8_reg_n_0_[3]\ : STD_LOGIC;
  signal shift_swtch90 : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \shift_swtch9_reg_n_0_[3]\ : STD_LOGIC;
  signal \swtch_db[0]_i_1_n_0\ : STD_LOGIC;
  signal \swtch_db[10]_i_1_n_0\ : STD_LOGIC;
  signal \swtch_db[11]_i_1_n_0\ : STD_LOGIC;
  signal \swtch_db[12]_i_1_n_0\ : STD_LOGIC;
  signal \swtch_db[13]_i_1_n_0\ : STD_LOGIC;
  signal \swtch_db[14]_i_1_n_0\ : STD_LOGIC;
  signal \swtch_db[15]_i_1_n_0\ : STD_LOGIC;
  signal \swtch_db[1]_i_1_n_0\ : STD_LOGIC;
  signal \swtch_db[2]_i_1_n_0\ : STD_LOGIC;
  signal \swtch_db[3]_i_1_n_0\ : STD_LOGIC;
  signal \swtch_db[4]_i_1_n_0\ : STD_LOGIC;
  signal \swtch_db[5]_i_1_n_0\ : STD_LOGIC;
  signal \swtch_db[6]_i_1_n_0\ : STD_LOGIC;
  signal \swtch_db[7]_i_1_n_0\ : STD_LOGIC;
  signal \swtch_db[8]_i_1_n_0\ : STD_LOGIC;
  signal \swtch_db[9]_i_1_n_0\ : STD_LOGIC;
  signal \NLW_db_count0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_db_count0_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of db_count0_carry : label is 35;
  attribute ADDER_THRESHOLD of \db_count0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \db_count0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \db_count0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \db_count0_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \db_count0_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \db_count0_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \db_count0_carry__6\ : label is 35;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \db_count[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \db_count[31]_i_2\ : label is "soft_lutpair0";
begin
\axi_rdata[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \axi_rdata_reg[20]_i_2_0\(0),
      I1 => \axi_rdata_reg[20]_i_2_1\(0),
      I2 => Q(1),
      I3 => \axi_rdata_reg[20]_i_2_2\(0),
      I4 => Q(0),
      I5 => btnsw_in(0),
      O => \axi_rdata[0]_i_4_n_0\
    );
\axi_rdata[10]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \axi_rdata_reg[20]_i_2_0\(10),
      I1 => \axi_rdata_reg[20]_i_2_1\(10),
      I2 => Q(1),
      I3 => \axi_rdata_reg[20]_i_2_2\(10),
      I4 => Q(0),
      I5 => btnsw_in(10),
      O => \axi_rdata[10]_i_4_n_0\
    );
\axi_rdata[11]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \axi_rdata_reg[20]_i_2_0\(11),
      I1 => \axi_rdata_reg[20]_i_2_1\(11),
      I2 => Q(1),
      I3 => \axi_rdata_reg[20]_i_2_2\(11),
      I4 => Q(0),
      I5 => btnsw_in(11),
      O => \axi_rdata[11]_i_4_n_0\
    );
\axi_rdata[12]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \axi_rdata_reg[20]_i_2_0\(12),
      I1 => \axi_rdata_reg[20]_i_2_1\(12),
      I2 => Q(1),
      I3 => \axi_rdata_reg[20]_i_2_2\(12),
      I4 => Q(0),
      I5 => btnsw_in(12),
      O => \axi_rdata[12]_i_4_n_0\
    );
\axi_rdata[13]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \axi_rdata_reg[20]_i_2_0\(13),
      I1 => \axi_rdata_reg[20]_i_2_1\(13),
      I2 => Q(1),
      I3 => \axi_rdata_reg[20]_i_2_2\(13),
      I4 => Q(0),
      I5 => btnsw_in(13),
      O => \axi_rdata[13]_i_4_n_0\
    );
\axi_rdata[14]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \axi_rdata_reg[20]_i_2_0\(14),
      I1 => \axi_rdata_reg[20]_i_2_1\(14),
      I2 => Q(1),
      I3 => \axi_rdata_reg[20]_i_2_2\(14),
      I4 => Q(0),
      I5 => btnsw_in(14),
      O => \axi_rdata[14]_i_4_n_0\
    );
\axi_rdata[15]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \axi_rdata_reg[20]_i_2_0\(15),
      I1 => \axi_rdata_reg[20]_i_2_1\(15),
      I2 => Q(1),
      I3 => \axi_rdata_reg[20]_i_2_2\(15),
      I4 => Q(0),
      I5 => btnsw_in(15),
      O => \axi_rdata[15]_i_4_n_0\
    );
\axi_rdata[16]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \axi_rdata_reg[20]_i_2_0\(16),
      I1 => \axi_rdata_reg[20]_i_2_1\(16),
      I2 => Q(1),
      I3 => \axi_rdata_reg[20]_i_2_2\(16),
      I4 => Q(0),
      I5 => btnsw_in(16),
      O => \axi_rdata[16]_i_4_n_0\
    );
\axi_rdata[17]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \axi_rdata_reg[20]_i_2_0\(17),
      I1 => \axi_rdata_reg[20]_i_2_1\(17),
      I2 => Q(1),
      I3 => \axi_rdata_reg[20]_i_2_2\(17),
      I4 => Q(0),
      I5 => btnsw_in(17),
      O => \axi_rdata[17]_i_4_n_0\
    );
\axi_rdata[18]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \axi_rdata_reg[20]_i_2_0\(18),
      I1 => \axi_rdata_reg[20]_i_2_1\(18),
      I2 => Q(1),
      I3 => \axi_rdata_reg[20]_i_2_2\(18),
      I4 => Q(0),
      I5 => btnsw_in(18),
      O => \axi_rdata[18]_i_4_n_0\
    );
\axi_rdata[19]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \axi_rdata_reg[20]_i_2_0\(19),
      I1 => \axi_rdata_reg[20]_i_2_1\(19),
      I2 => Q(1),
      I3 => \axi_rdata_reg[20]_i_2_2\(19),
      I4 => Q(0),
      I5 => btnsw_in(19),
      O => \axi_rdata[19]_i_4_n_0\
    );
\axi_rdata[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \axi_rdata_reg[20]_i_2_0\(1),
      I1 => \axi_rdata_reg[20]_i_2_1\(1),
      I2 => Q(1),
      I3 => \axi_rdata_reg[20]_i_2_2\(1),
      I4 => Q(0),
      I5 => btnsw_in(1),
      O => \axi_rdata[1]_i_4_n_0\
    );
\axi_rdata[20]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \axi_rdata_reg[20]_i_2_0\(20),
      I1 => \axi_rdata_reg[20]_i_2_1\(20),
      I2 => Q(1),
      I3 => \axi_rdata_reg[20]_i_2_2\(20),
      I4 => Q(0),
      I5 => btnsw_in(20),
      O => \axi_rdata[20]_i_4_n_0\
    );
\axi_rdata[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \axi_rdata_reg[20]_i_2_0\(2),
      I1 => \axi_rdata_reg[20]_i_2_1\(2),
      I2 => Q(1),
      I3 => \axi_rdata_reg[20]_i_2_2\(2),
      I4 => Q(0),
      I5 => btnsw_in(2),
      O => \axi_rdata[2]_i_4_n_0\
    );
\axi_rdata[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \axi_rdata_reg[20]_i_2_0\(3),
      I1 => \axi_rdata_reg[20]_i_2_1\(3),
      I2 => Q(1),
      I3 => \axi_rdata_reg[20]_i_2_2\(3),
      I4 => Q(0),
      I5 => btnsw_in(3),
      O => \axi_rdata[3]_i_4_n_0\
    );
\axi_rdata[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \axi_rdata_reg[20]_i_2_0\(4),
      I1 => \axi_rdata_reg[20]_i_2_1\(4),
      I2 => Q(1),
      I3 => \axi_rdata_reg[20]_i_2_2\(4),
      I4 => Q(0),
      I5 => btnsw_in(4),
      O => \axi_rdata[4]_i_4_n_0\
    );
\axi_rdata[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \axi_rdata_reg[20]_i_2_0\(5),
      I1 => \axi_rdata_reg[20]_i_2_1\(5),
      I2 => Q(1),
      I3 => \axi_rdata_reg[20]_i_2_2\(5),
      I4 => Q(0),
      I5 => btnsw_in(5),
      O => \axi_rdata[5]_i_4_n_0\
    );
\axi_rdata[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \axi_rdata_reg[20]_i_2_0\(6),
      I1 => \axi_rdata_reg[20]_i_2_1\(6),
      I2 => Q(1),
      I3 => \axi_rdata_reg[20]_i_2_2\(6),
      I4 => Q(0),
      I5 => btnsw_in(6),
      O => \axi_rdata[6]_i_4_n_0\
    );
\axi_rdata[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \axi_rdata_reg[20]_i_2_0\(7),
      I1 => \axi_rdata_reg[20]_i_2_1\(7),
      I2 => Q(1),
      I3 => \axi_rdata_reg[20]_i_2_2\(7),
      I4 => Q(0),
      I5 => btnsw_in(7),
      O => \axi_rdata[7]_i_4_n_0\
    );
\axi_rdata[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \axi_rdata_reg[20]_i_2_0\(8),
      I1 => \axi_rdata_reg[20]_i_2_1\(8),
      I2 => Q(1),
      I3 => \axi_rdata_reg[20]_i_2_2\(8),
      I4 => Q(0),
      I5 => btnsw_in(8),
      O => \axi_rdata[8]_i_4_n_0\
    );
\axi_rdata[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \axi_rdata_reg[20]_i_2_0\(9),
      I1 => \axi_rdata_reg[20]_i_2_1\(9),
      I2 => Q(1),
      I3 => \axi_rdata_reg[20]_i_2_2\(9),
      I4 => Q(0),
      I5 => btnsw_in(9),
      O => \axi_rdata[9]_i_4_n_0\
    );
\axi_rdata_reg[0]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \axi_rdata_reg[0]_i_2_n_0\,
      I1 => \axi_rdata_reg[0]\,
      O => D(0),
      S => Q(3)
    );
\axi_rdata_reg[0]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[0]_i_4_n_0\,
      I1 => \axi_rdata_reg[0]_0\,
      O => \axi_rdata_reg[0]_i_2_n_0\,
      S => Q(2)
    );
\axi_rdata_reg[10]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \axi_rdata_reg[10]_i_2_n_0\,
      I1 => \axi_rdata_reg[10]\,
      O => D(10),
      S => Q(3)
    );
\axi_rdata_reg[10]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[10]_i_4_n_0\,
      I1 => \axi_rdata_reg[10]_0\,
      O => \axi_rdata_reg[10]_i_2_n_0\,
      S => Q(2)
    );
\axi_rdata_reg[11]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \axi_rdata_reg[11]_i_2_n_0\,
      I1 => \axi_rdata_reg[11]\,
      O => D(11),
      S => Q(3)
    );
\axi_rdata_reg[11]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[11]_i_4_n_0\,
      I1 => \axi_rdata_reg[11]_0\,
      O => \axi_rdata_reg[11]_i_2_n_0\,
      S => Q(2)
    );
\axi_rdata_reg[12]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \axi_rdata_reg[12]_i_2_n_0\,
      I1 => \axi_rdata_reg[12]\,
      O => D(12),
      S => Q(3)
    );
\axi_rdata_reg[12]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[12]_i_4_n_0\,
      I1 => \axi_rdata_reg[12]_0\,
      O => \axi_rdata_reg[12]_i_2_n_0\,
      S => Q(2)
    );
\axi_rdata_reg[13]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \axi_rdata_reg[13]_i_2_n_0\,
      I1 => \axi_rdata_reg[13]\,
      O => D(13),
      S => Q(3)
    );
\axi_rdata_reg[13]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[13]_i_4_n_0\,
      I1 => \axi_rdata_reg[13]_0\,
      O => \axi_rdata_reg[13]_i_2_n_0\,
      S => Q(2)
    );
\axi_rdata_reg[14]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \axi_rdata_reg[14]_i_2_n_0\,
      I1 => \axi_rdata_reg[14]\,
      O => D(14),
      S => Q(3)
    );
\axi_rdata_reg[14]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[14]_i_4_n_0\,
      I1 => \axi_rdata_reg[14]_0\,
      O => \axi_rdata_reg[14]_i_2_n_0\,
      S => Q(2)
    );
\axi_rdata_reg[15]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \axi_rdata_reg[15]_i_2_n_0\,
      I1 => \axi_rdata_reg[15]\,
      O => D(15),
      S => Q(3)
    );
\axi_rdata_reg[15]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[15]_i_4_n_0\,
      I1 => \axi_rdata_reg[15]_0\,
      O => \axi_rdata_reg[15]_i_2_n_0\,
      S => Q(2)
    );
\axi_rdata_reg[16]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \axi_rdata_reg[16]_i_2_n_0\,
      I1 => \axi_rdata_reg[16]\,
      O => D(16),
      S => Q(3)
    );
\axi_rdata_reg[16]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[16]_i_4_n_0\,
      I1 => \axi_rdata_reg[16]_0\,
      O => \axi_rdata_reg[16]_i_2_n_0\,
      S => Q(2)
    );
\axi_rdata_reg[17]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \axi_rdata_reg[17]_i_2_n_0\,
      I1 => \axi_rdata_reg[17]\,
      O => D(17),
      S => Q(3)
    );
\axi_rdata_reg[17]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[17]_i_4_n_0\,
      I1 => \axi_rdata_reg[17]_0\,
      O => \axi_rdata_reg[17]_i_2_n_0\,
      S => Q(2)
    );
\axi_rdata_reg[18]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \axi_rdata_reg[18]_i_2_n_0\,
      I1 => \axi_rdata_reg[18]\,
      O => D(18),
      S => Q(3)
    );
\axi_rdata_reg[18]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[18]_i_4_n_0\,
      I1 => \axi_rdata_reg[18]_0\,
      O => \axi_rdata_reg[18]_i_2_n_0\,
      S => Q(2)
    );
\axi_rdata_reg[19]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \axi_rdata_reg[19]_i_2_n_0\,
      I1 => \axi_rdata_reg[19]\,
      O => D(19),
      S => Q(3)
    );
\axi_rdata_reg[19]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[19]_i_4_n_0\,
      I1 => \axi_rdata_reg[19]_0\,
      O => \axi_rdata_reg[19]_i_2_n_0\,
      S => Q(2)
    );
\axi_rdata_reg[1]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \axi_rdata_reg[1]_i_2_n_0\,
      I1 => \axi_rdata_reg[1]\,
      O => D(1),
      S => Q(3)
    );
\axi_rdata_reg[1]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[1]_i_4_n_0\,
      I1 => \axi_rdata_reg[1]_0\,
      O => \axi_rdata_reg[1]_i_2_n_0\,
      S => Q(2)
    );
\axi_rdata_reg[20]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \axi_rdata_reg[20]_i_2_n_0\,
      I1 => \axi_rdata_reg[20]\,
      O => D(20),
      S => Q(3)
    );
\axi_rdata_reg[20]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[20]_i_4_n_0\,
      I1 => \axi_rdata_reg[20]_0\,
      O => \axi_rdata_reg[20]_i_2_n_0\,
      S => Q(2)
    );
\axi_rdata_reg[2]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \axi_rdata_reg[2]_i_2_n_0\,
      I1 => \axi_rdata_reg[2]\,
      O => D(2),
      S => Q(3)
    );
\axi_rdata_reg[2]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[2]_i_4_n_0\,
      I1 => \axi_rdata_reg[2]_0\,
      O => \axi_rdata_reg[2]_i_2_n_0\,
      S => Q(2)
    );
\axi_rdata_reg[3]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \axi_rdata_reg[3]_i_2_n_0\,
      I1 => \axi_rdata_reg[3]\,
      O => D(3),
      S => Q(3)
    );
\axi_rdata_reg[3]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[3]_i_4_n_0\,
      I1 => \axi_rdata_reg[3]_0\,
      O => \axi_rdata_reg[3]_i_2_n_0\,
      S => Q(2)
    );
\axi_rdata_reg[4]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \axi_rdata_reg[4]_i_2_n_0\,
      I1 => \axi_rdata_reg[4]\,
      O => D(4),
      S => Q(3)
    );
\axi_rdata_reg[4]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[4]_i_4_n_0\,
      I1 => \axi_rdata_reg[4]_0\,
      O => \axi_rdata_reg[4]_i_2_n_0\,
      S => Q(2)
    );
\axi_rdata_reg[5]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \axi_rdata_reg[5]_i_2_n_0\,
      I1 => \axi_rdata_reg[5]\,
      O => D(5),
      S => Q(3)
    );
\axi_rdata_reg[5]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[5]_i_4_n_0\,
      I1 => \axi_rdata_reg[5]_0\,
      O => \axi_rdata_reg[5]_i_2_n_0\,
      S => Q(2)
    );
\axi_rdata_reg[6]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \axi_rdata_reg[6]_i_2_n_0\,
      I1 => \axi_rdata_reg[6]\,
      O => D(6),
      S => Q(3)
    );
\axi_rdata_reg[6]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[6]_i_4_n_0\,
      I1 => \axi_rdata_reg[6]_0\,
      O => \axi_rdata_reg[6]_i_2_n_0\,
      S => Q(2)
    );
\axi_rdata_reg[7]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \axi_rdata_reg[7]_i_2_n_0\,
      I1 => \axi_rdata_reg[7]\,
      O => D(7),
      S => Q(3)
    );
\axi_rdata_reg[7]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[7]_i_4_n_0\,
      I1 => \axi_rdata_reg[7]_0\,
      O => \axi_rdata_reg[7]_i_2_n_0\,
      S => Q(2)
    );
\axi_rdata_reg[8]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \axi_rdata_reg[8]_i_2_n_0\,
      I1 => \axi_rdata_reg[8]\,
      O => D(8),
      S => Q(3)
    );
\axi_rdata_reg[8]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[8]_i_4_n_0\,
      I1 => \axi_rdata_reg[8]_0\,
      O => \axi_rdata_reg[8]_i_2_n_0\,
      S => Q(2)
    );
\axi_rdata_reg[9]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \axi_rdata_reg[9]_i_2_n_0\,
      I1 => \axi_rdata_reg[9]\,
      O => D(9),
      S => Q(3)
    );
\axi_rdata_reg[9]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[9]_i_4_n_0\,
      I1 => \axi_rdata_reg[9]_0\,
      O => \axi_rdata_reg[9]_i_2_n_0\,
      S => Q(2)
    );
db_count0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => db_count0_carry_n_0,
      CO(2) => db_count0_carry_n_1,
      CO(1) => db_count0_carry_n_2,
      CO(0) => db_count0_carry_n_3,
      CYINIT => db_count(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_1_in(4 downto 1),
      S(3 downto 0) => db_count(4 downto 1)
    );
\db_count0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => db_count0_carry_n_0,
      CO(3) => \db_count0_carry__0_n_0\,
      CO(2) => \db_count0_carry__0_n_1\,
      CO(1) => \db_count0_carry__0_n_2\,
      CO(0) => \db_count0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_1_in(8 downto 5),
      S(3 downto 0) => db_count(8 downto 5)
    );
\db_count0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \db_count0_carry__0_n_0\,
      CO(3) => \db_count0_carry__1_n_0\,
      CO(2) => \db_count0_carry__1_n_1\,
      CO(1) => \db_count0_carry__1_n_2\,
      CO(0) => \db_count0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_1_in(12 downto 9),
      S(3 downto 0) => db_count(12 downto 9)
    );
\db_count0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \db_count0_carry__1_n_0\,
      CO(3) => \db_count0_carry__2_n_0\,
      CO(2) => \db_count0_carry__2_n_1\,
      CO(1) => \db_count0_carry__2_n_2\,
      CO(0) => \db_count0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_1_in(16 downto 13),
      S(3 downto 0) => db_count(16 downto 13)
    );
\db_count0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \db_count0_carry__2_n_0\,
      CO(3) => \db_count0_carry__3_n_0\,
      CO(2) => \db_count0_carry__3_n_1\,
      CO(1) => \db_count0_carry__3_n_2\,
      CO(0) => \db_count0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_1_in(20 downto 17),
      S(3 downto 0) => db_count(20 downto 17)
    );
\db_count0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \db_count0_carry__3_n_0\,
      CO(3) => \db_count0_carry__4_n_0\,
      CO(2) => \db_count0_carry__4_n_1\,
      CO(1) => \db_count0_carry__4_n_2\,
      CO(0) => \db_count0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_1_in(24 downto 21),
      S(3 downto 0) => db_count(24 downto 21)
    );
\db_count0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \db_count0_carry__4_n_0\,
      CO(3) => \db_count0_carry__5_n_0\,
      CO(2) => \db_count0_carry__5_n_1\,
      CO(1) => \db_count0_carry__5_n_2\,
      CO(0) => \db_count0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_1_in(28 downto 25),
      S(3 downto 0) => db_count(28 downto 25)
    );
\db_count0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \db_count0_carry__5_n_0\,
      CO(3 downto 2) => \NLW_db_count0_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \db_count0_carry__6_n_2\,
      CO(0) => \db_count0_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_db_count0_carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => p_1_in(31 downto 29),
      S(3) => '0',
      S(2 downto 0) => db_count(31 downto 29)
    );
\db_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => db_count(0),
      O => p_1_in(0)
    );
\db_count[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \db_count[31]_i_2_n_0\,
      I1 => \db_count[31]_i_3_n_0\,
      I2 => \db_count[31]_i_4_n_0\,
      I3 => \db_count[31]_i_5_n_0\,
      I4 => \db_count[31]_i_6_n_0\,
      I5 => \db_count[31]_i_7_n_0\,
      O => shift_pb0
    );
\db_count[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => db_count(0),
      I1 => db_count(1),
      O => \db_count[31]_i_2_n_0\
    );
\db_count[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800000000000"
    )
        port map (
      I0 => db_count(4),
      I1 => db_count(5),
      I2 => db_count(2),
      I3 => db_count(3),
      I4 => db_count(7),
      I5 => db_count(6),
      O => \db_count[31]_i_3_n_0\
    );
\db_count[31]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => db_count(11),
      I1 => db_count(10),
      I2 => db_count(9),
      I3 => db_count(8),
      I4 => db_count(13),
      I5 => db_count(12),
      O => \db_count[31]_i_4_n_0\
    );
\db_count[31]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => db_count(17),
      I1 => db_count(16),
      I2 => db_count(14),
      I3 => db_count(15),
      I4 => db_count(19),
      I5 => db_count(18),
      O => \db_count[31]_i_5_n_0\
    );
\db_count[31]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => db_count(22),
      I1 => db_count(23),
      I2 => db_count(20),
      I3 => db_count(21),
      I4 => db_count(25),
      I5 => db_count(24),
      O => \db_count[31]_i_6_n_0\
    );
\db_count[31]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => db_count(28),
      I1 => db_count(29),
      I2 => db_count(26),
      I3 => db_count(27),
      I4 => db_count(31),
      I5 => db_count(30),
      O => \db_count[31]_i_7_n_0\
    );
\db_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => p_1_in(0),
      Q => db_count(0),
      R => shift_pb0
    );
\db_count_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => p_1_in(10),
      Q => db_count(10),
      R => shift_pb0
    );
\db_count_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => p_1_in(11),
      Q => db_count(11),
      R => shift_pb0
    );
\db_count_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => p_1_in(12),
      Q => db_count(12),
      R => shift_pb0
    );
\db_count_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => p_1_in(13),
      Q => db_count(13),
      R => shift_pb0
    );
\db_count_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => p_1_in(14),
      Q => db_count(14),
      R => shift_pb0
    );
\db_count_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => p_1_in(15),
      Q => db_count(15),
      R => shift_pb0
    );
\db_count_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => p_1_in(16),
      Q => db_count(16),
      R => shift_pb0
    );
\db_count_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => p_1_in(17),
      Q => db_count(17),
      R => shift_pb0
    );
\db_count_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => p_1_in(18),
      Q => db_count(18),
      R => shift_pb0
    );
\db_count_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => p_1_in(19),
      Q => db_count(19),
      R => shift_pb0
    );
\db_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => p_1_in(1),
      Q => db_count(1),
      R => shift_pb0
    );
\db_count_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => p_1_in(20),
      Q => db_count(20),
      R => shift_pb0
    );
\db_count_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => p_1_in(21),
      Q => db_count(21),
      R => shift_pb0
    );
\db_count_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => p_1_in(22),
      Q => db_count(22),
      R => shift_pb0
    );
\db_count_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => p_1_in(23),
      Q => db_count(23),
      R => shift_pb0
    );
\db_count_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => p_1_in(24),
      Q => db_count(24),
      R => shift_pb0
    );
\db_count_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => p_1_in(25),
      Q => db_count(25),
      R => shift_pb0
    );
\db_count_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => p_1_in(26),
      Q => db_count(26),
      R => shift_pb0
    );
\db_count_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => p_1_in(27),
      Q => db_count(27),
      R => shift_pb0
    );
\db_count_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => p_1_in(28),
      Q => db_count(28),
      R => shift_pb0
    );
\db_count_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => p_1_in(29),
      Q => db_count(29),
      R => shift_pb0
    );
\db_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => p_1_in(2),
      Q => db_count(2),
      R => shift_pb0
    );
\db_count_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => p_1_in(30),
      Q => db_count(30),
      R => shift_pb0
    );
\db_count_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => p_1_in(31),
      Q => db_count(31),
      R => shift_pb0
    );
\db_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => p_1_in(3),
      Q => db_count(3),
      R => shift_pb0
    );
\db_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => p_1_in(4),
      Q => db_count(4),
      R => shift_pb0
    );
\db_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => p_1_in(5),
      Q => db_count(5),
      R => shift_pb0
    );
\db_count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => p_1_in(6),
      Q => db_count(6),
      R => shift_pb0
    );
\db_count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => p_1_in(7),
      Q => db_count(7),
      R => shift_pb0
    );
\db_count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => p_1_in(8),
      Q => db_count(8),
      R => shift_pb0
    );
\db_count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => p_1_in(9),
      Q => db_count(9),
      R => shift_pb0
    );
\pbtn_db[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE8000"
    )
        port map (
      I0 => shift_pb1(3),
      I1 => shift_pb1(2),
      I2 => shift_pb1(1),
      I3 => shift_pb1(0),
      I4 => btnsw_in(16),
      O => \pbtn_db[1]_i_1_n_0\
    );
\pbtn_db[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE8000"
    )
        port map (
      I0 => shift_pb2(3),
      I1 => shift_pb2(2),
      I2 => shift_pb2(1),
      I3 => shift_pb2(0),
      I4 => btnsw_in(17),
      O => \pbtn_db[2]_i_1_n_0\
    );
\pbtn_db[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE8000"
    )
        port map (
      I0 => shift_pb3(3),
      I1 => shift_pb3(2),
      I2 => shift_pb3(1),
      I3 => shift_pb3(0),
      I4 => btnsw_in(18),
      O => \pbtn_db[3]_i_1_n_0\
    );
\pbtn_db[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE8000"
    )
        port map (
      I0 => shift_pb4(3),
      I1 => shift_pb4(2),
      I2 => shift_pb4(1),
      I3 => shift_pb4(0),
      I4 => btnsw_in(19),
      O => \pbtn_db[4]_i_1_n_0\
    );
\pbtn_db[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE8000"
    )
        port map (
      I0 => shift_pb5(3),
      I1 => shift_pb5(2),
      I2 => shift_pb5(1),
      I3 => shift_pb5(0),
      I4 => btnsw_in(20),
      O => \pbtn_db[5]_i_1_n_0\
    );
\pbtn_db_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \pbtn_db[1]_i_1_n_0\,
      Q => btnsw_in(16),
      R => '0'
    );
\pbtn_db_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \pbtn_db[2]_i_1_n_0\,
      Q => btnsw_in(17),
      R => '0'
    );
\pbtn_db_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \pbtn_db[3]_i_1_n_0\,
      Q => btnsw_in(18),
      R => '0'
    );
\pbtn_db_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \pbtn_db[4]_i_1_n_0\,
      Q => btnsw_in(19),
      R => '0'
    );
\pbtn_db_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \pbtn_db[5]_i_1_n_0\,
      Q => btnsw_in(20),
      R => '0'
    );
\shift_pb1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => shift_pb0,
      D => pbtn_in(0),
      Q => shift_pb1(0),
      R => '0'
    );
\shift_pb1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => shift_pb0,
      D => shift_pb1(0),
      Q => shift_pb1(1),
      R => '0'
    );
\shift_pb1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => shift_pb0,
      D => shift_pb1(1),
      Q => shift_pb1(2),
      R => '0'
    );
\shift_pb1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => shift_pb0,
      D => shift_pb1(2),
      Q => shift_pb1(3),
      R => '0'
    );
\shift_pb2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => shift_pb0,
      D => pbtn_in(1),
      Q => shift_pb2(0),
      R => '0'
    );
\shift_pb2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => shift_pb0,
      D => shift_pb2(0),
      Q => shift_pb2(1),
      R => '0'
    );
\shift_pb2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => shift_pb0,
      D => shift_pb2(1),
      Q => shift_pb2(2),
      R => '0'
    );
\shift_pb2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => shift_pb0,
      D => shift_pb2(2),
      Q => shift_pb2(3),
      R => '0'
    );
\shift_pb3_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => shift_pb0,
      D => pbtn_in(2),
      Q => shift_pb3(0),
      R => '0'
    );
\shift_pb3_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => shift_pb0,
      D => shift_pb3(0),
      Q => shift_pb3(1),
      R => '0'
    );
\shift_pb3_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => shift_pb0,
      D => shift_pb3(1),
      Q => shift_pb3(2),
      R => '0'
    );
\shift_pb3_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => shift_pb0,
      D => shift_pb3(2),
      Q => shift_pb3(3),
      R => '0'
    );
\shift_pb4_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => shift_pb0,
      D => pbtn_in(3),
      Q => shift_pb4(0),
      R => '0'
    );
\shift_pb4_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => shift_pb0,
      D => shift_pb4(0),
      Q => shift_pb4(1),
      R => '0'
    );
\shift_pb4_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => shift_pb0,
      D => shift_pb4(1),
      Q => shift_pb4(2),
      R => '0'
    );
\shift_pb4_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => shift_pb0,
      D => shift_pb4(2),
      Q => shift_pb4(3),
      R => '0'
    );
\shift_pb5_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => shift_pb0,
      D => pbtn_in(4),
      Q => shift_pb5(0),
      R => '0'
    );
\shift_pb5_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => shift_pb0,
      D => shift_pb5(0),
      Q => shift_pb5(1),
      R => '0'
    );
\shift_pb5_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => shift_pb0,
      D => shift_pb5(1),
      Q => shift_pb5(2),
      R => '0'
    );
\shift_pb5_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => shift_pb0,
      D => shift_pb5(2),
      Q => shift_pb5(3),
      R => '0'
    );
\shift_swtch0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => shift_pb0,
      D => sw(0),
      Q => shift_swtch00(1),
      R => '0'
    );
\shift_swtch0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => shift_pb0,
      D => shift_swtch00(1),
      Q => shift_swtch00(2),
      R => '0'
    );
\shift_swtch0_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => shift_pb0,
      D => shift_swtch00(2),
      Q => shift_swtch00(3),
      R => '0'
    );
\shift_swtch0_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => shift_pb0,
      D => shift_swtch00(3),
      Q => \shift_swtch0_reg_n_0_[3]\,
      R => '0'
    );
\shift_swtch10_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => shift_pb0,
      D => sw(10),
      Q => shift_swtch100(1),
      R => '0'
    );
\shift_swtch10_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => shift_pb0,
      D => shift_swtch100(1),
      Q => shift_swtch100(2),
      R => '0'
    );
\shift_swtch10_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => shift_pb0,
      D => shift_swtch100(2),
      Q => shift_swtch100(3),
      R => '0'
    );
\shift_swtch10_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => shift_pb0,
      D => shift_swtch100(3),
      Q => \shift_swtch10_reg_n_0_[3]\,
      R => '0'
    );
\shift_swtch11_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => shift_pb0,
      D => sw(11),
      Q => shift_swtch110(1),
      R => '0'
    );
\shift_swtch11_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => shift_pb0,
      D => shift_swtch110(1),
      Q => shift_swtch110(2),
      R => '0'
    );
\shift_swtch11_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => shift_pb0,
      D => shift_swtch110(2),
      Q => shift_swtch110(3),
      R => '0'
    );
\shift_swtch11_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => shift_pb0,
      D => shift_swtch110(3),
      Q => \shift_swtch11_reg_n_0_[3]\,
      R => '0'
    );
\shift_swtch12_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => shift_pb0,
      D => sw(12),
      Q => shift_swtch120(1),
      R => '0'
    );
\shift_swtch12_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => shift_pb0,
      D => shift_swtch120(1),
      Q => shift_swtch120(2),
      R => '0'
    );
\shift_swtch12_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => shift_pb0,
      D => shift_swtch120(2),
      Q => shift_swtch120(3),
      R => '0'
    );
\shift_swtch12_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => shift_pb0,
      D => shift_swtch120(3),
      Q => \shift_swtch12_reg_n_0_[3]\,
      R => '0'
    );
\shift_swtch13_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => shift_pb0,
      D => sw(13),
      Q => shift_swtch130(1),
      R => '0'
    );
\shift_swtch13_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => shift_pb0,
      D => shift_swtch130(1),
      Q => shift_swtch130(2),
      R => '0'
    );
\shift_swtch13_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => shift_pb0,
      D => shift_swtch130(2),
      Q => shift_swtch130(3),
      R => '0'
    );
\shift_swtch13_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => shift_pb0,
      D => shift_swtch130(3),
      Q => \shift_swtch13_reg_n_0_[3]\,
      R => '0'
    );
\shift_swtch14_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => shift_pb0,
      D => sw(14),
      Q => shift_swtch140(1),
      R => '0'
    );
\shift_swtch14_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => shift_pb0,
      D => shift_swtch140(1),
      Q => shift_swtch140(2),
      R => '0'
    );
\shift_swtch14_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => shift_pb0,
      D => shift_swtch140(2),
      Q => shift_swtch140(3),
      R => '0'
    );
\shift_swtch14_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => shift_pb0,
      D => shift_swtch140(3),
      Q => \shift_swtch14_reg_n_0_[3]\,
      R => '0'
    );
\shift_swtch15_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => shift_pb0,
      D => sw(15),
      Q => shift_swtch150(1),
      R => '0'
    );
\shift_swtch15_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => shift_pb0,
      D => shift_swtch150(1),
      Q => shift_swtch150(2),
      R => '0'
    );
\shift_swtch15_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => shift_pb0,
      D => shift_swtch150(2),
      Q => shift_swtch150(3),
      R => '0'
    );
\shift_swtch15_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => shift_pb0,
      D => shift_swtch150(3),
      Q => \shift_swtch15_reg_n_0_[3]\,
      R => '0'
    );
\shift_swtch1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => shift_pb0,
      D => sw(1),
      Q => shift_swtch10(1),
      R => '0'
    );
\shift_swtch1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => shift_pb0,
      D => shift_swtch10(1),
      Q => shift_swtch10(2),
      R => '0'
    );
\shift_swtch1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => shift_pb0,
      D => shift_swtch10(2),
      Q => shift_swtch10(3),
      R => '0'
    );
\shift_swtch1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => shift_pb0,
      D => shift_swtch10(3),
      Q => \shift_swtch1_reg_n_0_[3]\,
      R => '0'
    );
\shift_swtch2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => shift_pb0,
      D => sw(2),
      Q => shift_swtch20(1),
      R => '0'
    );
\shift_swtch2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => shift_pb0,
      D => shift_swtch20(1),
      Q => shift_swtch20(2),
      R => '0'
    );
\shift_swtch2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => shift_pb0,
      D => shift_swtch20(2),
      Q => shift_swtch20(3),
      R => '0'
    );
\shift_swtch2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => shift_pb0,
      D => shift_swtch20(3),
      Q => \shift_swtch2_reg_n_0_[3]\,
      R => '0'
    );
\shift_swtch3_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => shift_pb0,
      D => sw(3),
      Q => shift_swtch30(1),
      R => '0'
    );
\shift_swtch3_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => shift_pb0,
      D => shift_swtch30(1),
      Q => shift_swtch30(2),
      R => '0'
    );
\shift_swtch3_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => shift_pb0,
      D => shift_swtch30(2),
      Q => shift_swtch30(3),
      R => '0'
    );
\shift_swtch3_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => shift_pb0,
      D => shift_swtch30(3),
      Q => \shift_swtch3_reg_n_0_[3]\,
      R => '0'
    );
\shift_swtch4_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => shift_pb0,
      D => sw(4),
      Q => shift_swtch40(1),
      R => '0'
    );
\shift_swtch4_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => shift_pb0,
      D => shift_swtch40(1),
      Q => shift_swtch40(2),
      R => '0'
    );
\shift_swtch4_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => shift_pb0,
      D => shift_swtch40(2),
      Q => shift_swtch40(3),
      R => '0'
    );
\shift_swtch4_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => shift_pb0,
      D => shift_swtch40(3),
      Q => \shift_swtch4_reg_n_0_[3]\,
      R => '0'
    );
\shift_swtch5_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => shift_pb0,
      D => sw(5),
      Q => shift_swtch50(1),
      R => '0'
    );
\shift_swtch5_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => shift_pb0,
      D => shift_swtch50(1),
      Q => shift_swtch50(2),
      R => '0'
    );
\shift_swtch5_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => shift_pb0,
      D => shift_swtch50(2),
      Q => shift_swtch50(3),
      R => '0'
    );
\shift_swtch5_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => shift_pb0,
      D => shift_swtch50(3),
      Q => \shift_swtch5_reg_n_0_[3]\,
      R => '0'
    );
\shift_swtch6_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => shift_pb0,
      D => sw(6),
      Q => shift_swtch60(1),
      R => '0'
    );
\shift_swtch6_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => shift_pb0,
      D => shift_swtch60(1),
      Q => shift_swtch60(2),
      R => '0'
    );
\shift_swtch6_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => shift_pb0,
      D => shift_swtch60(2),
      Q => shift_swtch60(3),
      R => '0'
    );
\shift_swtch6_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => shift_pb0,
      D => shift_swtch60(3),
      Q => \shift_swtch6_reg_n_0_[3]\,
      R => '0'
    );
\shift_swtch7_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => shift_pb0,
      D => sw(7),
      Q => shift_swtch70(1),
      R => '0'
    );
\shift_swtch7_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => shift_pb0,
      D => shift_swtch70(1),
      Q => shift_swtch70(2),
      R => '0'
    );
\shift_swtch7_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => shift_pb0,
      D => shift_swtch70(2),
      Q => shift_swtch70(3),
      R => '0'
    );
\shift_swtch7_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => shift_pb0,
      D => shift_swtch70(3),
      Q => \shift_swtch7_reg_n_0_[3]\,
      R => '0'
    );
\shift_swtch8_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => shift_pb0,
      D => sw(8),
      Q => shift_swtch80(1),
      R => '0'
    );
\shift_swtch8_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => shift_pb0,
      D => shift_swtch80(1),
      Q => shift_swtch80(2),
      R => '0'
    );
\shift_swtch8_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => shift_pb0,
      D => shift_swtch80(2),
      Q => shift_swtch80(3),
      R => '0'
    );
\shift_swtch8_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => shift_pb0,
      D => shift_swtch80(3),
      Q => \shift_swtch8_reg_n_0_[3]\,
      R => '0'
    );
\shift_swtch9_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => shift_pb0,
      D => sw(9),
      Q => shift_swtch90(1),
      R => '0'
    );
\shift_swtch9_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => shift_pb0,
      D => shift_swtch90(1),
      Q => shift_swtch90(2),
      R => '0'
    );
\shift_swtch9_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => shift_pb0,
      D => shift_swtch90(2),
      Q => shift_swtch90(3),
      R => '0'
    );
\shift_swtch9_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => shift_pb0,
      D => shift_swtch90(3),
      Q => \shift_swtch9_reg_n_0_[3]\,
      R => '0'
    );
\swtch_db[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE8000"
    )
        port map (
      I0 => \shift_swtch0_reg_n_0_[3]\,
      I1 => shift_swtch00(3),
      I2 => shift_swtch00(2),
      I3 => shift_swtch00(1),
      I4 => btnsw_in(0),
      O => \swtch_db[0]_i_1_n_0\
    );
\swtch_db[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE8000"
    )
        port map (
      I0 => \shift_swtch10_reg_n_0_[3]\,
      I1 => shift_swtch100(3),
      I2 => shift_swtch100(2),
      I3 => shift_swtch100(1),
      I4 => btnsw_in(10),
      O => \swtch_db[10]_i_1_n_0\
    );
\swtch_db[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE8000"
    )
        port map (
      I0 => \shift_swtch11_reg_n_0_[3]\,
      I1 => shift_swtch110(3),
      I2 => shift_swtch110(2),
      I3 => shift_swtch110(1),
      I4 => btnsw_in(11),
      O => \swtch_db[11]_i_1_n_0\
    );
\swtch_db[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE8000"
    )
        port map (
      I0 => \shift_swtch12_reg_n_0_[3]\,
      I1 => shift_swtch120(3),
      I2 => shift_swtch120(2),
      I3 => shift_swtch120(1),
      I4 => btnsw_in(12),
      O => \swtch_db[12]_i_1_n_0\
    );
\swtch_db[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE8000"
    )
        port map (
      I0 => \shift_swtch13_reg_n_0_[3]\,
      I1 => shift_swtch130(3),
      I2 => shift_swtch130(2),
      I3 => shift_swtch130(1),
      I4 => btnsw_in(13),
      O => \swtch_db[13]_i_1_n_0\
    );
\swtch_db[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE8000"
    )
        port map (
      I0 => \shift_swtch14_reg_n_0_[3]\,
      I1 => shift_swtch140(3),
      I2 => shift_swtch140(2),
      I3 => shift_swtch140(1),
      I4 => btnsw_in(14),
      O => \swtch_db[14]_i_1_n_0\
    );
\swtch_db[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE8000"
    )
        port map (
      I0 => \shift_swtch15_reg_n_0_[3]\,
      I1 => shift_swtch150(3),
      I2 => shift_swtch150(2),
      I3 => shift_swtch150(1),
      I4 => btnsw_in(15),
      O => \swtch_db[15]_i_1_n_0\
    );
\swtch_db[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE8000"
    )
        port map (
      I0 => \shift_swtch1_reg_n_0_[3]\,
      I1 => shift_swtch10(3),
      I2 => shift_swtch10(2),
      I3 => shift_swtch10(1),
      I4 => btnsw_in(1),
      O => \swtch_db[1]_i_1_n_0\
    );
\swtch_db[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE8000"
    )
        port map (
      I0 => \shift_swtch2_reg_n_0_[3]\,
      I1 => shift_swtch20(3),
      I2 => shift_swtch20(2),
      I3 => shift_swtch20(1),
      I4 => btnsw_in(2),
      O => \swtch_db[2]_i_1_n_0\
    );
\swtch_db[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE8000"
    )
        port map (
      I0 => \shift_swtch3_reg_n_0_[3]\,
      I1 => shift_swtch30(3),
      I2 => shift_swtch30(2),
      I3 => shift_swtch30(1),
      I4 => btnsw_in(3),
      O => \swtch_db[3]_i_1_n_0\
    );
\swtch_db[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE8000"
    )
        port map (
      I0 => \shift_swtch4_reg_n_0_[3]\,
      I1 => shift_swtch40(3),
      I2 => shift_swtch40(2),
      I3 => shift_swtch40(1),
      I4 => btnsw_in(4),
      O => \swtch_db[4]_i_1_n_0\
    );
\swtch_db[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE8000"
    )
        port map (
      I0 => \shift_swtch5_reg_n_0_[3]\,
      I1 => shift_swtch50(3),
      I2 => shift_swtch50(2),
      I3 => shift_swtch50(1),
      I4 => btnsw_in(5),
      O => \swtch_db[5]_i_1_n_0\
    );
\swtch_db[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE8000"
    )
        port map (
      I0 => \shift_swtch6_reg_n_0_[3]\,
      I1 => shift_swtch60(3),
      I2 => shift_swtch60(2),
      I3 => shift_swtch60(1),
      I4 => btnsw_in(6),
      O => \swtch_db[6]_i_1_n_0\
    );
\swtch_db[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE8000"
    )
        port map (
      I0 => \shift_swtch7_reg_n_0_[3]\,
      I1 => shift_swtch70(3),
      I2 => shift_swtch70(2),
      I3 => shift_swtch70(1),
      I4 => btnsw_in(7),
      O => \swtch_db[7]_i_1_n_0\
    );
\swtch_db[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE8000"
    )
        port map (
      I0 => \shift_swtch8_reg_n_0_[3]\,
      I1 => shift_swtch80(3),
      I2 => shift_swtch80(2),
      I3 => shift_swtch80(1),
      I4 => btnsw_in(8),
      O => \swtch_db[8]_i_1_n_0\
    );
\swtch_db[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE8000"
    )
        port map (
      I0 => \shift_swtch9_reg_n_0_[3]\,
      I1 => shift_swtch90(3),
      I2 => shift_swtch90(2),
      I3 => shift_swtch90(1),
      I4 => btnsw_in(9),
      O => \swtch_db[9]_i_1_n_0\
    );
\swtch_db_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \swtch_db[0]_i_1_n_0\,
      Q => btnsw_in(0),
      R => '0'
    );
\swtch_db_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \swtch_db[10]_i_1_n_0\,
      Q => btnsw_in(10),
      R => '0'
    );
\swtch_db_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \swtch_db[11]_i_1_n_0\,
      Q => btnsw_in(11),
      R => '0'
    );
\swtch_db_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \swtch_db[12]_i_1_n_0\,
      Q => btnsw_in(12),
      R => '0'
    );
\swtch_db_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \swtch_db[13]_i_1_n_0\,
      Q => btnsw_in(13),
      R => '0'
    );
\swtch_db_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \swtch_db[14]_i_1_n_0\,
      Q => btnsw_in(14),
      R => '0'
    );
\swtch_db_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \swtch_db[15]_i_1_n_0\,
      Q => btnsw_in(15),
      R => '0'
    );
\swtch_db_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \swtch_db[1]_i_1_n_0\,
      Q => btnsw_in(1),
      R => '0'
    );
\swtch_db_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \swtch_db[2]_i_1_n_0\,
      Q => btnsw_in(2),
      R => '0'
    );
\swtch_db_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \swtch_db[3]_i_1_n_0\,
      Q => btnsw_in(3),
      R => '0'
    );
\swtch_db_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \swtch_db[4]_i_1_n_0\,
      Q => btnsw_in(4),
      R => '0'
    );
\swtch_db_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \swtch_db[5]_i_1_n_0\,
      Q => btnsw_in(5),
      R => '0'
    );
\swtch_db_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \swtch_db[6]_i_1_n_0\,
      Q => btnsw_in(6),
      R => '0'
    );
\swtch_db_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \swtch_db[7]_i_1_n_0\,
      Q => btnsw_in(7),
      R => '0'
    );
\swtch_db_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \swtch_db[8]_i_1_n_0\,
      Q => btnsw_in(8),
      R => '0'
    );
\swtch_db_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \swtch_db[9]_i_1_n_0\,
      Q => btnsw_in(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rgbpwm is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    RGB1_Red : out STD_LOGIC;
    RGB1_Green : out STD_LOGIC;
    RGB1_Blue : out STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 23 downto 0 );
    RGB1_Red_0 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    RGBLED_Clock : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rgbpwm;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rgbpwm is
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \i__carry__0_i_1__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_5_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_6_n_0\ : STD_LOGIC;
  signal \i__carry_i_7__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_7_n_0\ : STD_LOGIC;
  signal \i__carry_i_8__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_8_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 8 downto 1 );
  signal \pwm_cntr_ary[2][0]_i_1_n_0\ : STD_LOGIC;
  signal \pwm_cntr_ary[2][8]_i_2_n_0\ : STD_LOGIC;
  signal \pwm_cntr_ary_reg[2]_0\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal pwm_out_reg1 : STD_LOGIC;
  signal pwm_out_reg10_in : STD_LOGIC;
  signal pwm_out_reg12_in : STD_LOGIC;
  signal \pwm_out_reg1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal pwm_out_reg1_carry_i_1_n_0 : STD_LOGIC;
  signal pwm_out_reg1_carry_i_2_n_0 : STD_LOGIC;
  signal pwm_out_reg1_carry_i_3_n_0 : STD_LOGIC;
  signal pwm_out_reg1_carry_i_4_n_0 : STD_LOGIC;
  signal pwm_out_reg1_carry_i_5_n_0 : STD_LOGIC;
  signal pwm_out_reg1_carry_i_6_n_0 : STD_LOGIC;
  signal pwm_out_reg1_carry_i_7_n_0 : STD_LOGIC;
  signal pwm_out_reg1_carry_i_8_n_0 : STD_LOGIC;
  signal pwm_out_reg1_carry_n_0 : STD_LOGIC;
  signal pwm_out_reg1_carry_n_1 : STD_LOGIC;
  signal pwm_out_reg1_carry_n_2 : STD_LOGIC;
  signal pwm_out_reg1_carry_n_3 : STD_LOGIC;
  signal \pwm_out_reg1_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \pwm_out_reg1_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \pwm_out_reg1_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \pwm_out_reg1_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \pwm_out_reg1_inferred__1/i__carry_n_0\ : STD_LOGIC;
  signal \pwm_out_reg1_inferred__1/i__carry_n_1\ : STD_LOGIC;
  signal \pwm_out_reg1_inferred__1/i__carry_n_2\ : STD_LOGIC;
  signal \pwm_out_reg1_inferred__1/i__carry_n_3\ : STD_LOGIC;
  signal NLW_pwm_out_reg1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pwm_out_reg1_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_pwm_out_reg1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pwm_out_reg1_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pwm_out_reg1_inferred__0/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_pwm_out_reg1_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pwm_out_reg1_inferred__1/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pwm_out_reg1_inferred__1/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_pwm_out_reg1_inferred__1/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \pwm_cntr_ary[2][0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \pwm_cntr_ary[2][1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \pwm_cntr_ary[2][2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \pwm_cntr_ary[2][3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \pwm_cntr_ary[2][4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \pwm_cntr_ary[2][6]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \pwm_cntr_ary[2][7]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \pwm_cntr_ary[2][8]_i_2\ : label is "soft_lutpair3";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of pwm_out_reg1_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \pwm_out_reg1_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \pwm_out_reg1_inferred__0/i__carry\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \pwm_out_reg1_inferred__0/i__carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \pwm_out_reg1_inferred__1/i__carry\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \pwm_out_reg1_inferred__1/i__carry__0\ : label is 11;
begin
  SR(0) <= \^sr\(0);
RGB1_Blue_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => RGB1_Red_0(0),
      I1 => pwm_out_reg1,
      O => RGB1_Blue
    );
RGB1_Green_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => RGB1_Red_0(1),
      I1 => pwm_out_reg10_in,
      O => RGB1_Green
    );
RGB1_Red_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => RGB1_Red_0(2),
      I1 => pwm_out_reg12_in,
      O => RGB1_Red
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \pwm_cntr_ary_reg[2]_0\(8),
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \pwm_cntr_ary_reg[2]_0\(8),
      O => \i__carry__0_i_1__1_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \pwm_cntr_ary_reg[2]_0\(7),
      I1 => Q(15),
      I2 => Q(14),
      I3 => \pwm_cntr_ary_reg[2]_0\(6),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \pwm_cntr_ary_reg[2]_0\(7),
      I1 => Q(23),
      I2 => Q(22),
      I3 => \pwm_cntr_ary_reg[2]_0\(6),
      O => \i__carry_i_1__0_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \pwm_cntr_ary_reg[2]_0\(5),
      I1 => Q(13),
      I2 => Q(12),
      I3 => \pwm_cntr_ary_reg[2]_0\(4),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \pwm_cntr_ary_reg[2]_0\(5),
      I1 => Q(21),
      I2 => Q(20),
      I3 => \pwm_cntr_ary_reg[2]_0\(4),
      O => \i__carry_i_2__0_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \pwm_cntr_ary_reg[2]_0\(3),
      I1 => Q(11),
      I2 => Q(10),
      I3 => \pwm_cntr_ary_reg[2]_0\(2),
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \pwm_cntr_ary_reg[2]_0\(3),
      I1 => Q(19),
      I2 => Q(18),
      I3 => \pwm_cntr_ary_reg[2]_0\(2),
      O => \i__carry_i_3__0_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \pwm_cntr_ary_reg[2]_0\(1),
      I1 => Q(9),
      I2 => Q(8),
      I3 => \pwm_cntr_ary_reg[2]_0\(0),
      O => \i__carry_i_4_n_0\
    );
\i__carry_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \pwm_cntr_ary_reg[2]_0\(1),
      I1 => Q(17),
      I2 => Q(16),
      I3 => \pwm_cntr_ary_reg[2]_0\(0),
      O => \i__carry_i_4__0_n_0\
    );
\i__carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => Q(15),
      I1 => \pwm_cntr_ary_reg[2]_0\(7),
      I2 => Q(14),
      I3 => \pwm_cntr_ary_reg[2]_0\(6),
      O => \i__carry_i_5_n_0\
    );
\i__carry_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => Q(23),
      I1 => \pwm_cntr_ary_reg[2]_0\(7),
      I2 => Q(22),
      I3 => \pwm_cntr_ary_reg[2]_0\(6),
      O => \i__carry_i_5__0_n_0\
    );
\i__carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => Q(13),
      I1 => \pwm_cntr_ary_reg[2]_0\(5),
      I2 => Q(12),
      I3 => \pwm_cntr_ary_reg[2]_0\(4),
      O => \i__carry_i_6_n_0\
    );
\i__carry_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => Q(21),
      I1 => \pwm_cntr_ary_reg[2]_0\(5),
      I2 => Q(20),
      I3 => \pwm_cntr_ary_reg[2]_0\(4),
      O => \i__carry_i_6__0_n_0\
    );
\i__carry_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => Q(11),
      I1 => \pwm_cntr_ary_reg[2]_0\(3),
      I2 => Q(10),
      I3 => \pwm_cntr_ary_reg[2]_0\(2),
      O => \i__carry_i_7_n_0\
    );
\i__carry_i_7__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => Q(19),
      I1 => \pwm_cntr_ary_reg[2]_0\(3),
      I2 => Q(18),
      I3 => \pwm_cntr_ary_reg[2]_0\(2),
      O => \i__carry_i_7__0_n_0\
    );
\i__carry_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => Q(9),
      I1 => \pwm_cntr_ary_reg[2]_0\(1),
      I2 => Q(8),
      I3 => \pwm_cntr_ary_reg[2]_0\(0),
      O => \i__carry_i_8_n_0\
    );
\i__carry_i_8__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => Q(17),
      I1 => \pwm_cntr_ary_reg[2]_0\(1),
      I2 => Q(16),
      I3 => \pwm_cntr_ary_reg[2]_0\(0),
      O => \i__carry_i_8__0_n_0\
    );
\pwm_cntr_ary[2][0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \pwm_cntr_ary_reg[2]_0\(0),
      O => \pwm_cntr_ary[2][0]_i_1_n_0\
    );
\pwm_cntr_ary[2][1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \pwm_cntr_ary_reg[2]_0\(1),
      I1 => \pwm_cntr_ary_reg[2]_0\(0),
      O => p_0_in(1)
    );
\pwm_cntr_ary[2][2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \pwm_cntr_ary_reg[2]_0\(2),
      I1 => \pwm_cntr_ary_reg[2]_0\(1),
      I2 => \pwm_cntr_ary_reg[2]_0\(0),
      O => p_0_in(2)
    );
\pwm_cntr_ary[2][3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \pwm_cntr_ary_reg[2]_0\(0),
      I1 => \pwm_cntr_ary_reg[2]_0\(1),
      I2 => \pwm_cntr_ary_reg[2]_0\(2),
      I3 => \pwm_cntr_ary_reg[2]_0\(3),
      O => p_0_in(3)
    );
\pwm_cntr_ary[2][4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \pwm_cntr_ary_reg[2]_0\(4),
      I1 => \pwm_cntr_ary_reg[2]_0\(0),
      I2 => \pwm_cntr_ary_reg[2]_0\(1),
      I3 => \pwm_cntr_ary_reg[2]_0\(2),
      I4 => \pwm_cntr_ary_reg[2]_0\(3),
      O => p_0_in(4)
    );
\pwm_cntr_ary[2][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \pwm_cntr_ary_reg[2]_0\(5),
      I1 => \pwm_cntr_ary_reg[2]_0\(3),
      I2 => \pwm_cntr_ary_reg[2]_0\(2),
      I3 => \pwm_cntr_ary_reg[2]_0\(1),
      I4 => \pwm_cntr_ary_reg[2]_0\(0),
      I5 => \pwm_cntr_ary_reg[2]_0\(4),
      O => p_0_in(5)
    );
\pwm_cntr_ary[2][6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \pwm_cntr_ary_reg[2]_0\(6),
      I1 => \pwm_cntr_ary_reg[2]_0\(4),
      I2 => \pwm_cntr_ary[2][8]_i_2_n_0\,
      I3 => \pwm_cntr_ary_reg[2]_0\(5),
      O => p_0_in(6)
    );
\pwm_cntr_ary[2][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \pwm_cntr_ary_reg[2]_0\(7),
      I1 => \pwm_cntr_ary_reg[2]_0\(5),
      I2 => \pwm_cntr_ary[2][8]_i_2_n_0\,
      I3 => \pwm_cntr_ary_reg[2]_0\(4),
      I4 => \pwm_cntr_ary_reg[2]_0\(6),
      O => p_0_in(7)
    );
\pwm_cntr_ary[2][8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \pwm_cntr_ary_reg[2]_0\(8),
      I1 => \pwm_cntr_ary_reg[2]_0\(6),
      I2 => \pwm_cntr_ary_reg[2]_0\(4),
      I3 => \pwm_cntr_ary[2][8]_i_2_n_0\,
      I4 => \pwm_cntr_ary_reg[2]_0\(5),
      I5 => \pwm_cntr_ary_reg[2]_0\(7),
      O => p_0_in(8)
    );
\pwm_cntr_ary[2][8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \pwm_cntr_ary_reg[2]_0\(3),
      I1 => \pwm_cntr_ary_reg[2]_0\(2),
      I2 => \pwm_cntr_ary_reg[2]_0\(1),
      I3 => \pwm_cntr_ary_reg[2]_0\(0),
      O => \pwm_cntr_ary[2][8]_i_2_n_0\
    );
\pwm_cntr_ary_reg[2][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RGBLED_Clock,
      CE => '1',
      D => \pwm_cntr_ary[2][0]_i_1_n_0\,
      Q => \pwm_cntr_ary_reg[2]_0\(0),
      R => \^sr\(0)
    );
\pwm_cntr_ary_reg[2][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RGBLED_Clock,
      CE => '1',
      D => p_0_in(1),
      Q => \pwm_cntr_ary_reg[2]_0\(1),
      R => \^sr\(0)
    );
\pwm_cntr_ary_reg[2][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RGBLED_Clock,
      CE => '1',
      D => p_0_in(2),
      Q => \pwm_cntr_ary_reg[2]_0\(2),
      R => \^sr\(0)
    );
\pwm_cntr_ary_reg[2][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RGBLED_Clock,
      CE => '1',
      D => p_0_in(3),
      Q => \pwm_cntr_ary_reg[2]_0\(3),
      R => \^sr\(0)
    );
\pwm_cntr_ary_reg[2][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RGBLED_Clock,
      CE => '1',
      D => p_0_in(4),
      Q => \pwm_cntr_ary_reg[2]_0\(4),
      R => \^sr\(0)
    );
\pwm_cntr_ary_reg[2][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RGBLED_Clock,
      CE => '1',
      D => p_0_in(5),
      Q => \pwm_cntr_ary_reg[2]_0\(5),
      R => \^sr\(0)
    );
\pwm_cntr_ary_reg[2][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RGBLED_Clock,
      CE => '1',
      D => p_0_in(6),
      Q => \pwm_cntr_ary_reg[2]_0\(6),
      R => \^sr\(0)
    );
\pwm_cntr_ary_reg[2][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RGBLED_Clock,
      CE => '1',
      D => p_0_in(7),
      Q => \pwm_cntr_ary_reg[2]_0\(7),
      R => \^sr\(0)
    );
\pwm_cntr_ary_reg[2][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RGBLED_Clock,
      CE => '1',
      D => p_0_in(8),
      Q => \pwm_cntr_ary_reg[2]_0\(8),
      R => \^sr\(0)
    );
pwm_out_reg1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => pwm_out_reg1_carry_n_0,
      CO(2) => pwm_out_reg1_carry_n_1,
      CO(1) => pwm_out_reg1_carry_n_2,
      CO(0) => pwm_out_reg1_carry_n_3,
      CYINIT => '0',
      DI(3) => pwm_out_reg1_carry_i_1_n_0,
      DI(2) => pwm_out_reg1_carry_i_2_n_0,
      DI(1) => pwm_out_reg1_carry_i_3_n_0,
      DI(0) => pwm_out_reg1_carry_i_4_n_0,
      O(3 downto 0) => NLW_pwm_out_reg1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => pwm_out_reg1_carry_i_5_n_0,
      S(2) => pwm_out_reg1_carry_i_6_n_0,
      S(1) => pwm_out_reg1_carry_i_7_n_0,
      S(0) => pwm_out_reg1_carry_i_8_n_0
    );
\pwm_out_reg1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => pwm_out_reg1_carry_n_0,
      CO(3 downto 1) => \NLW_pwm_out_reg1_carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => pwm_out_reg1,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_pwm_out_reg1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \pwm_out_reg1_carry__0_i_1_n_0\
    );
\pwm_out_reg1_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \pwm_cntr_ary_reg[2]_0\(8),
      O => \pwm_out_reg1_carry__0_i_1_n_0\
    );
pwm_out_reg1_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \pwm_cntr_ary_reg[2]_0\(7),
      I1 => Q(7),
      I2 => Q(6),
      I3 => \pwm_cntr_ary_reg[2]_0\(6),
      O => pwm_out_reg1_carry_i_1_n_0
    );
pwm_out_reg1_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \pwm_cntr_ary_reg[2]_0\(5),
      I1 => Q(5),
      I2 => Q(4),
      I3 => \pwm_cntr_ary_reg[2]_0\(4),
      O => pwm_out_reg1_carry_i_2_n_0
    );
pwm_out_reg1_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \pwm_cntr_ary_reg[2]_0\(3),
      I1 => Q(3),
      I2 => Q(2),
      I3 => \pwm_cntr_ary_reg[2]_0\(2),
      O => pwm_out_reg1_carry_i_3_n_0
    );
pwm_out_reg1_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \pwm_cntr_ary_reg[2]_0\(1),
      I1 => Q(1),
      I2 => Q(0),
      I3 => \pwm_cntr_ary_reg[2]_0\(0),
      O => pwm_out_reg1_carry_i_4_n_0
    );
pwm_out_reg1_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => Q(7),
      I1 => \pwm_cntr_ary_reg[2]_0\(7),
      I2 => Q(6),
      I3 => \pwm_cntr_ary_reg[2]_0\(6),
      O => pwm_out_reg1_carry_i_5_n_0
    );
pwm_out_reg1_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => Q(5),
      I1 => \pwm_cntr_ary_reg[2]_0\(5),
      I2 => Q(4),
      I3 => \pwm_cntr_ary_reg[2]_0\(4),
      O => pwm_out_reg1_carry_i_6_n_0
    );
pwm_out_reg1_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => Q(3),
      I1 => \pwm_cntr_ary_reg[2]_0\(3),
      I2 => Q(2),
      I3 => \pwm_cntr_ary_reg[2]_0\(2),
      O => pwm_out_reg1_carry_i_7_n_0
    );
pwm_out_reg1_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => Q(1),
      I1 => \pwm_cntr_ary_reg[2]_0\(1),
      I2 => Q(0),
      I3 => \pwm_cntr_ary_reg[2]_0\(0),
      O => pwm_out_reg1_carry_i_8_n_0
    );
\pwm_out_reg1_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \pwm_out_reg1_inferred__0/i__carry_n_0\,
      CO(2) => \pwm_out_reg1_inferred__0/i__carry_n_1\,
      CO(1) => \pwm_out_reg1_inferred__0/i__carry_n_2\,
      CO(0) => \pwm_out_reg1_inferred__0/i__carry_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry_i_1_n_0\,
      DI(2) => \i__carry_i_2_n_0\,
      DI(1) => \i__carry_i_3_n_0\,
      DI(0) => \i__carry_i_4_n_0\,
      O(3 downto 0) => \NLW_pwm_out_reg1_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5_n_0\,
      S(2) => \i__carry_i_6_n_0\,
      S(1) => \i__carry_i_7_n_0\,
      S(0) => \i__carry_i_8_n_0\
    );
\pwm_out_reg1_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \pwm_out_reg1_inferred__0/i__carry_n_0\,
      CO(3 downto 1) => \NLW_pwm_out_reg1_inferred__0/i__carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => pwm_out_reg10_in,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_pwm_out_reg1_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \i__carry__0_i_1__1_n_0\
    );
\pwm_out_reg1_inferred__1/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \pwm_out_reg1_inferred__1/i__carry_n_0\,
      CO(2) => \pwm_out_reg1_inferred__1/i__carry_n_1\,
      CO(1) => \pwm_out_reg1_inferred__1/i__carry_n_2\,
      CO(0) => \pwm_out_reg1_inferred__1/i__carry_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry_i_1__0_n_0\,
      DI(2) => \i__carry_i_2__0_n_0\,
      DI(1) => \i__carry_i_3__0_n_0\,
      DI(0) => \i__carry_i_4__0_n_0\,
      O(3 downto 0) => \NLW_pwm_out_reg1_inferred__1/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5__0_n_0\,
      S(2) => \i__carry_i_6__0_n_0\,
      S(1) => \i__carry_i_7__0_n_0\,
      S(0) => \i__carry_i_8__0_n_0\
    );
\pwm_out_reg1_inferred__1/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \pwm_out_reg1_inferred__1/i__carry_n_0\,
      CO(3 downto 1) => \NLW_pwm_out_reg1_inferred__1/i__carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => pwm_out_reg12_in,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_pwm_out_reg1_inferred__1/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \i__carry__0_i_1_n_0\
    );
\slv_reg1[15]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => \^sr\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rgbpwm_0 is
  port (
    RGB2_Red : out STD_LOGIC;
    RGB2_Green : out STD_LOGIC;
    RGB2_Blue : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 23 downto 0 );
    RGB2_Red_0 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    RGBLED_Clock : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rgbpwm_0 : entity is "rgbpwm";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rgbpwm_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rgbpwm_0 is
  signal \i__carry__0_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_7__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_7__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_8__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_8__2_n_0\ : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 8 downto 1 );
  signal \pwm_cntr_ary[2][0]_i_1__0_n_0\ : STD_LOGIC;
  signal \pwm_cntr_ary[2][8]_i_2__0_n_0\ : STD_LOGIC;
  signal \pwm_cntr_ary_reg[2]_1\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal pwm_out_reg1 : STD_LOGIC;
  signal pwm_out_reg10_in : STD_LOGIC;
  signal pwm_out_reg12_in : STD_LOGIC;
  signal \pwm_out_reg1_carry__0_i_1__0_n_0\ : STD_LOGIC;
  signal \pwm_out_reg1_carry_i_1__0_n_0\ : STD_LOGIC;
  signal \pwm_out_reg1_carry_i_2__0_n_0\ : STD_LOGIC;
  signal \pwm_out_reg1_carry_i_3__0_n_0\ : STD_LOGIC;
  signal \pwm_out_reg1_carry_i_4__0_n_0\ : STD_LOGIC;
  signal \pwm_out_reg1_carry_i_5__0_n_0\ : STD_LOGIC;
  signal \pwm_out_reg1_carry_i_6__0_n_0\ : STD_LOGIC;
  signal \pwm_out_reg1_carry_i_7__0_n_0\ : STD_LOGIC;
  signal \pwm_out_reg1_carry_i_8__0_n_0\ : STD_LOGIC;
  signal pwm_out_reg1_carry_n_0 : STD_LOGIC;
  signal pwm_out_reg1_carry_n_1 : STD_LOGIC;
  signal pwm_out_reg1_carry_n_2 : STD_LOGIC;
  signal pwm_out_reg1_carry_n_3 : STD_LOGIC;
  signal \pwm_out_reg1_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \pwm_out_reg1_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \pwm_out_reg1_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \pwm_out_reg1_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \pwm_out_reg1_inferred__1/i__carry_n_0\ : STD_LOGIC;
  signal \pwm_out_reg1_inferred__1/i__carry_n_1\ : STD_LOGIC;
  signal \pwm_out_reg1_inferred__1/i__carry_n_2\ : STD_LOGIC;
  signal \pwm_out_reg1_inferred__1/i__carry_n_3\ : STD_LOGIC;
  signal NLW_pwm_out_reg1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pwm_out_reg1_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_pwm_out_reg1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pwm_out_reg1_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pwm_out_reg1_inferred__0/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_pwm_out_reg1_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pwm_out_reg1_inferred__1/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pwm_out_reg1_inferred__1/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_pwm_out_reg1_inferred__1/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \pwm_cntr_ary[2][0]_i_1__0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \pwm_cntr_ary[2][1]_i_1__0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \pwm_cntr_ary[2][2]_i_1__0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \pwm_cntr_ary[2][3]_i_1__0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \pwm_cntr_ary[2][4]_i_1__0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \pwm_cntr_ary[2][6]_i_1__0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \pwm_cntr_ary[2][7]_i_1__0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \pwm_cntr_ary[2][8]_i_2__0\ : label is "soft_lutpair7";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of pwm_out_reg1_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \pwm_out_reg1_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \pwm_out_reg1_inferred__0/i__carry\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \pwm_out_reg1_inferred__0/i__carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \pwm_out_reg1_inferred__1/i__carry\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \pwm_out_reg1_inferred__1/i__carry__0\ : label is 11;
begin
RGB2_Blue_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => RGB2_Red_0(0),
      I1 => pwm_out_reg1,
      O => RGB2_Blue
    );
RGB2_Green_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => RGB2_Red_0(1),
      I1 => pwm_out_reg10_in,
      O => RGB2_Green
    );
RGB2_Red_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => RGB2_Red_0(2),
      I1 => pwm_out_reg12_in,
      O => RGB2_Red
    );
\i__carry__0_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \pwm_cntr_ary_reg[2]_1\(8),
      O => \i__carry__0_i_1__0_n_0\
    );
\i__carry__0_i_1__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \pwm_cntr_ary_reg[2]_1\(8),
      O => \i__carry__0_i_1__2_n_0\
    );
\i__carry_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \pwm_cntr_ary_reg[2]_1\(7),
      I1 => Q(15),
      I2 => Q(14),
      I3 => \pwm_cntr_ary_reg[2]_1\(6),
      O => \i__carry_i_1__1_n_0\
    );
\i__carry_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \pwm_cntr_ary_reg[2]_1\(7),
      I1 => Q(23),
      I2 => Q(22),
      I3 => \pwm_cntr_ary_reg[2]_1\(6),
      O => \i__carry_i_1__2_n_0\
    );
\i__carry_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \pwm_cntr_ary_reg[2]_1\(5),
      I1 => Q(13),
      I2 => Q(12),
      I3 => \pwm_cntr_ary_reg[2]_1\(4),
      O => \i__carry_i_2__1_n_0\
    );
\i__carry_i_2__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \pwm_cntr_ary_reg[2]_1\(5),
      I1 => Q(21),
      I2 => Q(20),
      I3 => \pwm_cntr_ary_reg[2]_1\(4),
      O => \i__carry_i_2__2_n_0\
    );
\i__carry_i_3__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \pwm_cntr_ary_reg[2]_1\(3),
      I1 => Q(11),
      I2 => Q(10),
      I3 => \pwm_cntr_ary_reg[2]_1\(2),
      O => \i__carry_i_3__1_n_0\
    );
\i__carry_i_3__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \pwm_cntr_ary_reg[2]_1\(3),
      I1 => Q(19),
      I2 => Q(18),
      I3 => \pwm_cntr_ary_reg[2]_1\(2),
      O => \i__carry_i_3__2_n_0\
    );
\i__carry_i_4__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \pwm_cntr_ary_reg[2]_1\(1),
      I1 => Q(9),
      I2 => Q(8),
      I3 => \pwm_cntr_ary_reg[2]_1\(0),
      O => \i__carry_i_4__1_n_0\
    );
\i__carry_i_4__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \pwm_cntr_ary_reg[2]_1\(1),
      I1 => Q(17),
      I2 => Q(16),
      I3 => \pwm_cntr_ary_reg[2]_1\(0),
      O => \i__carry_i_4__2_n_0\
    );
\i__carry_i_5__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => Q(15),
      I1 => \pwm_cntr_ary_reg[2]_1\(7),
      I2 => Q(14),
      I3 => \pwm_cntr_ary_reg[2]_1\(6),
      O => \i__carry_i_5__1_n_0\
    );
\i__carry_i_5__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => Q(23),
      I1 => \pwm_cntr_ary_reg[2]_1\(7),
      I2 => Q(22),
      I3 => \pwm_cntr_ary_reg[2]_1\(6),
      O => \i__carry_i_5__2_n_0\
    );
\i__carry_i_6__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => Q(13),
      I1 => \pwm_cntr_ary_reg[2]_1\(5),
      I2 => Q(12),
      I3 => \pwm_cntr_ary_reg[2]_1\(4),
      O => \i__carry_i_6__1_n_0\
    );
\i__carry_i_6__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => Q(21),
      I1 => \pwm_cntr_ary_reg[2]_1\(5),
      I2 => Q(20),
      I3 => \pwm_cntr_ary_reg[2]_1\(4),
      O => \i__carry_i_6__2_n_0\
    );
\i__carry_i_7__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => Q(11),
      I1 => \pwm_cntr_ary_reg[2]_1\(3),
      I2 => Q(10),
      I3 => \pwm_cntr_ary_reg[2]_1\(2),
      O => \i__carry_i_7__1_n_0\
    );
\i__carry_i_7__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => Q(19),
      I1 => \pwm_cntr_ary_reg[2]_1\(3),
      I2 => Q(18),
      I3 => \pwm_cntr_ary_reg[2]_1\(2),
      O => \i__carry_i_7__2_n_0\
    );
\i__carry_i_8__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => Q(9),
      I1 => \pwm_cntr_ary_reg[2]_1\(1),
      I2 => Q(8),
      I3 => \pwm_cntr_ary_reg[2]_1\(0),
      O => \i__carry_i_8__1_n_0\
    );
\i__carry_i_8__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => Q(17),
      I1 => \pwm_cntr_ary_reg[2]_1\(1),
      I2 => Q(16),
      I3 => \pwm_cntr_ary_reg[2]_1\(0),
      O => \i__carry_i_8__2_n_0\
    );
\pwm_cntr_ary[2][0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \pwm_cntr_ary_reg[2]_1\(0),
      O => \pwm_cntr_ary[2][0]_i_1__0_n_0\
    );
\pwm_cntr_ary[2][1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \pwm_cntr_ary_reg[2]_1\(1),
      I1 => \pwm_cntr_ary_reg[2]_1\(0),
      O => \p_0_in__0\(1)
    );
\pwm_cntr_ary[2][2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \pwm_cntr_ary_reg[2]_1\(2),
      I1 => \pwm_cntr_ary_reg[2]_1\(1),
      I2 => \pwm_cntr_ary_reg[2]_1\(0),
      O => \p_0_in__0\(2)
    );
\pwm_cntr_ary[2][3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \pwm_cntr_ary_reg[2]_1\(0),
      I1 => \pwm_cntr_ary_reg[2]_1\(1),
      I2 => \pwm_cntr_ary_reg[2]_1\(2),
      I3 => \pwm_cntr_ary_reg[2]_1\(3),
      O => \p_0_in__0\(3)
    );
\pwm_cntr_ary[2][4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \pwm_cntr_ary_reg[2]_1\(4),
      I1 => \pwm_cntr_ary_reg[2]_1\(0),
      I2 => \pwm_cntr_ary_reg[2]_1\(1),
      I3 => \pwm_cntr_ary_reg[2]_1\(2),
      I4 => \pwm_cntr_ary_reg[2]_1\(3),
      O => \p_0_in__0\(4)
    );
\pwm_cntr_ary[2][5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \pwm_cntr_ary_reg[2]_1\(5),
      I1 => \pwm_cntr_ary_reg[2]_1\(3),
      I2 => \pwm_cntr_ary_reg[2]_1\(2),
      I3 => \pwm_cntr_ary_reg[2]_1\(1),
      I4 => \pwm_cntr_ary_reg[2]_1\(0),
      I5 => \pwm_cntr_ary_reg[2]_1\(4),
      O => \p_0_in__0\(5)
    );
\pwm_cntr_ary[2][6]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \pwm_cntr_ary_reg[2]_1\(6),
      I1 => \pwm_cntr_ary_reg[2]_1\(4),
      I2 => \pwm_cntr_ary[2][8]_i_2__0_n_0\,
      I3 => \pwm_cntr_ary_reg[2]_1\(5),
      O => \p_0_in__0\(6)
    );
\pwm_cntr_ary[2][7]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \pwm_cntr_ary_reg[2]_1\(7),
      I1 => \pwm_cntr_ary_reg[2]_1\(5),
      I2 => \pwm_cntr_ary[2][8]_i_2__0_n_0\,
      I3 => \pwm_cntr_ary_reg[2]_1\(4),
      I4 => \pwm_cntr_ary_reg[2]_1\(6),
      O => \p_0_in__0\(7)
    );
\pwm_cntr_ary[2][8]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \pwm_cntr_ary_reg[2]_1\(8),
      I1 => \pwm_cntr_ary_reg[2]_1\(6),
      I2 => \pwm_cntr_ary_reg[2]_1\(4),
      I3 => \pwm_cntr_ary[2][8]_i_2__0_n_0\,
      I4 => \pwm_cntr_ary_reg[2]_1\(5),
      I5 => \pwm_cntr_ary_reg[2]_1\(7),
      O => \p_0_in__0\(8)
    );
\pwm_cntr_ary[2][8]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \pwm_cntr_ary_reg[2]_1\(3),
      I1 => \pwm_cntr_ary_reg[2]_1\(2),
      I2 => \pwm_cntr_ary_reg[2]_1\(1),
      I3 => \pwm_cntr_ary_reg[2]_1\(0),
      O => \pwm_cntr_ary[2][8]_i_2__0_n_0\
    );
\pwm_cntr_ary_reg[2][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RGBLED_Clock,
      CE => '1',
      D => \pwm_cntr_ary[2][0]_i_1__0_n_0\,
      Q => \pwm_cntr_ary_reg[2]_1\(0),
      R => SR(0)
    );
\pwm_cntr_ary_reg[2][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RGBLED_Clock,
      CE => '1',
      D => \p_0_in__0\(1),
      Q => \pwm_cntr_ary_reg[2]_1\(1),
      R => SR(0)
    );
\pwm_cntr_ary_reg[2][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RGBLED_Clock,
      CE => '1',
      D => \p_0_in__0\(2),
      Q => \pwm_cntr_ary_reg[2]_1\(2),
      R => SR(0)
    );
\pwm_cntr_ary_reg[2][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RGBLED_Clock,
      CE => '1',
      D => \p_0_in__0\(3),
      Q => \pwm_cntr_ary_reg[2]_1\(3),
      R => SR(0)
    );
\pwm_cntr_ary_reg[2][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RGBLED_Clock,
      CE => '1',
      D => \p_0_in__0\(4),
      Q => \pwm_cntr_ary_reg[2]_1\(4),
      R => SR(0)
    );
\pwm_cntr_ary_reg[2][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RGBLED_Clock,
      CE => '1',
      D => \p_0_in__0\(5),
      Q => \pwm_cntr_ary_reg[2]_1\(5),
      R => SR(0)
    );
\pwm_cntr_ary_reg[2][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RGBLED_Clock,
      CE => '1',
      D => \p_0_in__0\(6),
      Q => \pwm_cntr_ary_reg[2]_1\(6),
      R => SR(0)
    );
\pwm_cntr_ary_reg[2][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RGBLED_Clock,
      CE => '1',
      D => \p_0_in__0\(7),
      Q => \pwm_cntr_ary_reg[2]_1\(7),
      R => SR(0)
    );
\pwm_cntr_ary_reg[2][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RGBLED_Clock,
      CE => '1',
      D => \p_0_in__0\(8),
      Q => \pwm_cntr_ary_reg[2]_1\(8),
      R => SR(0)
    );
pwm_out_reg1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => pwm_out_reg1_carry_n_0,
      CO(2) => pwm_out_reg1_carry_n_1,
      CO(1) => pwm_out_reg1_carry_n_2,
      CO(0) => pwm_out_reg1_carry_n_3,
      CYINIT => '0',
      DI(3) => \pwm_out_reg1_carry_i_1__0_n_0\,
      DI(2) => \pwm_out_reg1_carry_i_2__0_n_0\,
      DI(1) => \pwm_out_reg1_carry_i_3__0_n_0\,
      DI(0) => \pwm_out_reg1_carry_i_4__0_n_0\,
      O(3 downto 0) => NLW_pwm_out_reg1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => \pwm_out_reg1_carry_i_5__0_n_0\,
      S(2) => \pwm_out_reg1_carry_i_6__0_n_0\,
      S(1) => \pwm_out_reg1_carry_i_7__0_n_0\,
      S(0) => \pwm_out_reg1_carry_i_8__0_n_0\
    );
\pwm_out_reg1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => pwm_out_reg1_carry_n_0,
      CO(3 downto 1) => \NLW_pwm_out_reg1_carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => pwm_out_reg1,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_pwm_out_reg1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \pwm_out_reg1_carry__0_i_1__0_n_0\
    );
\pwm_out_reg1_carry__0_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \pwm_cntr_ary_reg[2]_1\(8),
      O => \pwm_out_reg1_carry__0_i_1__0_n_0\
    );
\pwm_out_reg1_carry_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \pwm_cntr_ary_reg[2]_1\(7),
      I1 => Q(7),
      I2 => Q(6),
      I3 => \pwm_cntr_ary_reg[2]_1\(6),
      O => \pwm_out_reg1_carry_i_1__0_n_0\
    );
\pwm_out_reg1_carry_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \pwm_cntr_ary_reg[2]_1\(5),
      I1 => Q(5),
      I2 => Q(4),
      I3 => \pwm_cntr_ary_reg[2]_1\(4),
      O => \pwm_out_reg1_carry_i_2__0_n_0\
    );
\pwm_out_reg1_carry_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \pwm_cntr_ary_reg[2]_1\(3),
      I1 => Q(3),
      I2 => Q(2),
      I3 => \pwm_cntr_ary_reg[2]_1\(2),
      O => \pwm_out_reg1_carry_i_3__0_n_0\
    );
\pwm_out_reg1_carry_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \pwm_cntr_ary_reg[2]_1\(1),
      I1 => Q(1),
      I2 => Q(0),
      I3 => \pwm_cntr_ary_reg[2]_1\(0),
      O => \pwm_out_reg1_carry_i_4__0_n_0\
    );
\pwm_out_reg1_carry_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => Q(7),
      I1 => \pwm_cntr_ary_reg[2]_1\(7),
      I2 => Q(6),
      I3 => \pwm_cntr_ary_reg[2]_1\(6),
      O => \pwm_out_reg1_carry_i_5__0_n_0\
    );
\pwm_out_reg1_carry_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => Q(5),
      I1 => \pwm_cntr_ary_reg[2]_1\(5),
      I2 => Q(4),
      I3 => \pwm_cntr_ary_reg[2]_1\(4),
      O => \pwm_out_reg1_carry_i_6__0_n_0\
    );
\pwm_out_reg1_carry_i_7__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => Q(3),
      I1 => \pwm_cntr_ary_reg[2]_1\(3),
      I2 => Q(2),
      I3 => \pwm_cntr_ary_reg[2]_1\(2),
      O => \pwm_out_reg1_carry_i_7__0_n_0\
    );
\pwm_out_reg1_carry_i_8__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => Q(1),
      I1 => \pwm_cntr_ary_reg[2]_1\(1),
      I2 => Q(0),
      I3 => \pwm_cntr_ary_reg[2]_1\(0),
      O => \pwm_out_reg1_carry_i_8__0_n_0\
    );
\pwm_out_reg1_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \pwm_out_reg1_inferred__0/i__carry_n_0\,
      CO(2) => \pwm_out_reg1_inferred__0/i__carry_n_1\,
      CO(1) => \pwm_out_reg1_inferred__0/i__carry_n_2\,
      CO(0) => \pwm_out_reg1_inferred__0/i__carry_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry_i_1__1_n_0\,
      DI(2) => \i__carry_i_2__1_n_0\,
      DI(1) => \i__carry_i_3__1_n_0\,
      DI(0) => \i__carry_i_4__1_n_0\,
      O(3 downto 0) => \NLW_pwm_out_reg1_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5__1_n_0\,
      S(2) => \i__carry_i_6__1_n_0\,
      S(1) => \i__carry_i_7__1_n_0\,
      S(0) => \i__carry_i_8__1_n_0\
    );
\pwm_out_reg1_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \pwm_out_reg1_inferred__0/i__carry_n_0\,
      CO(3 downto 1) => \NLW_pwm_out_reg1_inferred__0/i__carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => pwm_out_reg10_in,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_pwm_out_reg1_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \i__carry__0_i_1__2_n_0\
    );
\pwm_out_reg1_inferred__1/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \pwm_out_reg1_inferred__1/i__carry_n_0\,
      CO(2) => \pwm_out_reg1_inferred__1/i__carry_n_1\,
      CO(1) => \pwm_out_reg1_inferred__1/i__carry_n_2\,
      CO(0) => \pwm_out_reg1_inferred__1/i__carry_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry_i_1__2_n_0\,
      DI(2) => \i__carry_i_2__2_n_0\,
      DI(1) => \i__carry_i_3__2_n_0\,
      DI(0) => \i__carry_i_4__2_n_0\,
      O(3 downto 0) => \NLW_pwm_out_reg1_inferred__1/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5__2_n_0\,
      S(2) => \i__carry_i_6__2_n_0\,
      S(1) => \i__carry_i_7__2_n_0\,
      S(0) => \i__carry_i_8__2_n_0\
    );
\pwm_out_reg1_inferred__1/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \pwm_out_reg1_inferred__1/i__carry_n_0\,
      CO(3 downto 1) => \NLW_pwm_out_reg1_inferred__1/i__carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => pwm_out_reg12_in,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_pwm_out_reg1_inferred__1/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \i__carry__0_i_1__0_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sevensegment is
  port (
    \seg_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    an : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 23 downto 0 );
    \seg_reg[7]_1\ : in STD_LOGIC_VECTOR ( 23 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sevensegment;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sevensegment is
  signal Digit0_n_0 : STD_LOGIC;
  signal Digit0_n_1 : STD_LOGIC;
  signal Digit0_n_2 : STD_LOGIC;
  signal Digit0_n_3 : STD_LOGIC;
  signal Digit0_n_4 : STD_LOGIC;
  signal Digit0_n_5 : STD_LOGIC;
  signal Digit0_n_6 : STD_LOGIC;
  signal Digit0_n_7 : STD_LOGIC;
  signal Digit1_n_0 : STD_LOGIC;
  signal Digit1_n_1 : STD_LOGIC;
  signal Digit1_n_2 : STD_LOGIC;
  signal Digit1_n_3 : STD_LOGIC;
  signal Digit1_n_4 : STD_LOGIC;
  signal Digit1_n_5 : STD_LOGIC;
  signal Digit1_n_6 : STD_LOGIC;
  signal Digit1_n_7 : STD_LOGIC;
  signal Digit2_n_0 : STD_LOGIC;
  signal Digit2_n_1 : STD_LOGIC;
  signal Digit2_n_2 : STD_LOGIC;
  signal Digit2_n_3 : STD_LOGIC;
  signal Digit2_n_4 : STD_LOGIC;
  signal Digit2_n_5 : STD_LOGIC;
  signal Digit2_n_6 : STD_LOGIC;
  signal Digit2_n_7 : STD_LOGIC;
  signal Digit3_n_0 : STD_LOGIC;
  signal Digit3_n_1 : STD_LOGIC;
  signal Digit3_n_2 : STD_LOGIC;
  signal Digit3_n_3 : STD_LOGIC;
  signal Digit3_n_4 : STD_LOGIC;
  signal Digit3_n_5 : STD_LOGIC;
  signal Digit3_n_6 : STD_LOGIC;
  signal Digit3_n_7 : STD_LOGIC;
  signal Digit4_n_0 : STD_LOGIC;
  signal Digit4_n_1 : STD_LOGIC;
  signal Digit4_n_2 : STD_LOGIC;
  signal Digit4_n_3 : STD_LOGIC;
  signal Digit4_n_4 : STD_LOGIC;
  signal Digit4_n_5 : STD_LOGIC;
  signal Digit4_n_6 : STD_LOGIC;
  signal Digit4_n_7 : STD_LOGIC;
  signal Digit5_n_0 : STD_LOGIC;
  signal Digit5_n_1 : STD_LOGIC;
  signal Digit5_n_2 : STD_LOGIC;
  signal Digit5_n_3 : STD_LOGIC;
  signal Digit5_n_4 : STD_LOGIC;
  signal Digit5_n_5 : STD_LOGIC;
  signal Digit5_n_6 : STD_LOGIC;
  signal Digit5_n_7 : STD_LOGIC;
  signal Digit6_n_0 : STD_LOGIC;
  signal Digit6_n_1 : STD_LOGIC;
  signal Digit6_n_2 : STD_LOGIC;
  signal Digit6_n_3 : STD_LOGIC;
  signal Digit6_n_4 : STD_LOGIC;
  signal Digit6_n_5 : STD_LOGIC;
  signal Digit6_n_6 : STD_LOGIC;
  signal Digit6_n_7 : STD_LOGIC;
  signal Digit7_n_0 : STD_LOGIC;
  signal Digit7_n_1 : STD_LOGIC;
  signal Digit7_n_2 : STD_LOGIC;
  signal Digit7_n_3 : STD_LOGIC;
  signal Digit7_n_4 : STD_LOGIC;
  signal Digit7_n_5 : STD_LOGIC;
  signal Digit7_n_6 : STD_LOGIC;
  signal Digit7_n_7 : STD_LOGIC;
  signal \FSM_sequential_an[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_an[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_an[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_an[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_an[2]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_sequential_an[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_an[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_an[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_an[2]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_an[2]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_an[2]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_an[2]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_an[2]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_sequential_an[2]_i_9_n_0\ : STD_LOGIC;
  signal \an__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \clk_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \clk_cnt[0]_i_3_n_0\ : STD_LOGIC;
  signal clk_cnt_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \clk_cnt_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \clk_cnt_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \clk_cnt_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \clk_cnt_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \clk_cnt_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \clk_cnt_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \clk_cnt_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \clk_cnt_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \clk_cnt_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \clk_cnt_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \clk_cnt_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \clk_cnt_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \clk_cnt_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \clk_cnt_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \clk_cnt_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \clk_cnt_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \clk_cnt_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \clk_cnt_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \clk_cnt_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \clk_cnt_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \clk_cnt_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \clk_cnt_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \clk_cnt_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \clk_cnt_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \clk_cnt_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \clk_cnt_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \clk_cnt_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \clk_cnt_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \clk_cnt_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \clk_cnt_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \clk_cnt_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \clk_cnt_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \clk_cnt_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \clk_cnt_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \clk_cnt_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \clk_cnt_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \clk_cnt_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \clk_cnt_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \clk_cnt_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \clk_cnt_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \clk_cnt_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \clk_cnt_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \clk_cnt_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \clk_cnt_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \clk_cnt_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \clk_cnt_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \clk_cnt_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \clk_cnt_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \clk_cnt_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \clk_cnt_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \clk_cnt_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \clk_cnt_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \clk_cnt_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \clk_cnt_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \clk_cnt_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \clk_cnt_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \clk_cnt_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \clk_cnt_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \clk_cnt_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \clk_cnt_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \clk_cnt_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \clk_cnt_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \clk_cnt_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \NLW_clk_cnt_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_an[1]_i_2\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \FSM_sequential_an[1]_i_3\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \FSM_sequential_an[2]_i_10\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \FSM_sequential_an[2]_i_8\ : label is "soft_lutpair34";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_an_reg[0]\ : label is "digit1:000,digit2:001,digit3:010,digit4:011,digit5:100,digit6:101,digit7:110,digit8:111,";
  attribute FSM_ENCODED_STATES of \FSM_sequential_an_reg[1]\ : label is "digit1:000,digit2:001,digit3:010,digit4:011,digit5:100,digit6:101,digit7:110,digit8:111,";
  attribute FSM_ENCODED_STATES of \FSM_sequential_an_reg[2]\ : label is "digit1:000,digit2:001,digit3:010,digit4:011,digit5:100,digit6:101,digit7:110,digit8:111,";
  attribute SOFT_HLUTNM of \an[0]_INST_0\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \an[1]_INST_0\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \an[2]_INST_0\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \an[3]_INST_0\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \an[4]_INST_0\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \an[5]_INST_0\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \an[6]_INST_0\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \an[7]_INST_0\ : label is "soft_lutpair38";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \clk_cnt_reg[0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \clk_cnt_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \clk_cnt_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \clk_cnt_reg[20]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \clk_cnt_reg[24]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \clk_cnt_reg[28]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \clk_cnt_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \clk_cnt_reg[8]_i_1\ : label is 11;
begin
Digit0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Digit
     port map (
      Q(5) => Q(20),
      Q(4 downto 0) => Q(4 downto 0),
      s00_axi_aclk => s00_axi_aclk,
      \seg_reg[7]_0\(7) => Digit0_n_0,
      \seg_reg[7]_0\(6) => Digit0_n_1,
      \seg_reg[7]_0\(5) => Digit0_n_2,
      \seg_reg[7]_0\(4) => Digit0_n_3,
      \seg_reg[7]_0\(3) => Digit0_n_4,
      \seg_reg[7]_0\(2) => Digit0_n_5,
      \seg_reg[7]_0\(1) => Digit0_n_6,
      \seg_reg[7]_0\(0) => Digit0_n_7
    );
Digit1: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Digit_1
     port map (
      Q(5) => Q(21),
      Q(4 downto 0) => Q(9 downto 5),
      s00_axi_aclk => s00_axi_aclk,
      \seg_reg[7]_0\(7) => Digit1_n_0,
      \seg_reg[7]_0\(6) => Digit1_n_1,
      \seg_reg[7]_0\(5) => Digit1_n_2,
      \seg_reg[7]_0\(4) => Digit1_n_3,
      \seg_reg[7]_0\(3) => Digit1_n_4,
      \seg_reg[7]_0\(2) => Digit1_n_5,
      \seg_reg[7]_0\(1) => Digit1_n_6,
      \seg_reg[7]_0\(0) => Digit1_n_7
    );
Digit2: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Digit_2
     port map (
      Q(5) => Q(22),
      Q(4 downto 0) => Q(14 downto 10),
      s00_axi_aclk => s00_axi_aclk,
      \seg_reg[7]_0\(7) => Digit2_n_0,
      \seg_reg[7]_0\(6) => Digit2_n_1,
      \seg_reg[7]_0\(5) => Digit2_n_2,
      \seg_reg[7]_0\(4) => Digit2_n_3,
      \seg_reg[7]_0\(3) => Digit2_n_4,
      \seg_reg[7]_0\(2) => Digit2_n_5,
      \seg_reg[7]_0\(1) => Digit2_n_6,
      \seg_reg[7]_0\(0) => Digit2_n_7
    );
Digit3: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Digit_3
     port map (
      D(7) => Digit3_n_0,
      D(6) => Digit3_n_1,
      D(5) => Digit3_n_2,
      D(4) => Digit3_n_3,
      D(3) => Digit3_n_4,
      D(2) => Digit3_n_5,
      D(1) => Digit3_n_6,
      D(0) => Digit3_n_7,
      Q(5) => Q(23),
      Q(4 downto 0) => Q(19 downto 15),
      \an__0\(2 downto 0) => \an__0\(2 downto 0),
      s00_axi_aclk => s00_axi_aclk,
      \seg_reg[0]_0\ => Digit7_n_0,
      \seg_reg[1]_0\ => Digit7_n_1,
      \seg_reg[2]_0\ => Digit7_n_2,
      \seg_reg[3]_0\ => Digit7_n_3,
      \seg_reg[4]_0\ => Digit7_n_4,
      \seg_reg[5]_0\ => Digit7_n_5,
      \seg_reg[6]_0\ => Digit7_n_6,
      \seg_reg[7]_0\(7) => Digit2_n_0,
      \seg_reg[7]_0\(6) => Digit2_n_1,
      \seg_reg[7]_0\(5) => Digit2_n_2,
      \seg_reg[7]_0\(4) => Digit2_n_3,
      \seg_reg[7]_0\(3) => Digit2_n_4,
      \seg_reg[7]_0\(2) => Digit2_n_5,
      \seg_reg[7]_0\(1) => Digit2_n_6,
      \seg_reg[7]_0\(0) => Digit2_n_7,
      \seg_reg[7]_1\(7) => Digit1_n_0,
      \seg_reg[7]_1\(6) => Digit1_n_1,
      \seg_reg[7]_1\(5) => Digit1_n_2,
      \seg_reg[7]_1\(4) => Digit1_n_3,
      \seg_reg[7]_1\(3) => Digit1_n_4,
      \seg_reg[7]_1\(2) => Digit1_n_5,
      \seg_reg[7]_1\(1) => Digit1_n_6,
      \seg_reg[7]_1\(0) => Digit1_n_7,
      \seg_reg[7]_2\(7) => Digit0_n_0,
      \seg_reg[7]_2\(6) => Digit0_n_1,
      \seg_reg[7]_2\(5) => Digit0_n_2,
      \seg_reg[7]_2\(4) => Digit0_n_3,
      \seg_reg[7]_2\(3) => Digit0_n_4,
      \seg_reg[7]_2\(2) => Digit0_n_5,
      \seg_reg[7]_2\(1) => Digit0_n_6,
      \seg_reg[7]_2\(0) => Digit0_n_7,
      \seg_reg[7]_3\ => Digit7_n_7
    );
Digit4: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Digit_4
     port map (
      Q(7) => Digit4_n_0,
      Q(6) => Digit4_n_1,
      Q(5) => Digit4_n_2,
      Q(4) => Digit4_n_3,
      Q(3) => Digit4_n_4,
      Q(2) => Digit4_n_5,
      Q(1) => Digit4_n_6,
      Q(0) => Digit4_n_7,
      s00_axi_aclk => s00_axi_aclk,
      \seg_reg[7]_0\(5) => \seg_reg[7]_1\(20),
      \seg_reg[7]_0\(4 downto 0) => \seg_reg[7]_1\(4 downto 0)
    );
Digit5: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Digit_5
     port map (
      Q(7) => Digit5_n_0,
      Q(6) => Digit5_n_1,
      Q(5) => Digit5_n_2,
      Q(4) => Digit5_n_3,
      Q(3) => Digit5_n_4,
      Q(2) => Digit5_n_5,
      Q(1) => Digit5_n_6,
      Q(0) => Digit5_n_7,
      s00_axi_aclk => s00_axi_aclk,
      \seg_reg[7]_0\(5) => \seg_reg[7]_1\(21),
      \seg_reg[7]_0\(4 downto 0) => \seg_reg[7]_1\(9 downto 5)
    );
Digit6: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Digit_6
     port map (
      Q(7) => Digit6_n_0,
      Q(6) => Digit6_n_1,
      Q(5) => Digit6_n_2,
      Q(4) => Digit6_n_3,
      Q(3) => Digit6_n_4,
      Q(2) => Digit6_n_5,
      Q(1) => Digit6_n_6,
      Q(0) => Digit6_n_7,
      s00_axi_aclk => s00_axi_aclk,
      \seg_reg[7]_0\(5) => \seg_reg[7]_1\(22),
      \seg_reg[7]_0\(4 downto 0) => \seg_reg[7]_1\(14 downto 10)
    );
Digit7: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Digit_7
     port map (
      Q(7) => Digit6_n_0,
      Q(6) => Digit6_n_1,
      Q(5) => Digit6_n_2,
      Q(4) => Digit6_n_3,
      Q(3) => Digit6_n_4,
      Q(2) => Digit6_n_5,
      Q(1) => Digit6_n_6,
      Q(0) => Digit6_n_7,
      \an__0\(1 downto 0) => \an__0\(1 downto 0),
      s00_axi_aclk => s00_axi_aclk,
      \seg_reg[0]_0\ => Digit7_n_0,
      \seg_reg[1]_0\ => Digit7_n_1,
      \seg_reg[2]_0\ => Digit7_n_2,
      \seg_reg[3]_0\ => Digit7_n_3,
      \seg_reg[4]_0\ => Digit7_n_4,
      \seg_reg[5]_0\ => Digit7_n_5,
      \seg_reg[6]_0\ => Digit7_n_6,
      \seg_reg[7]_0\ => Digit7_n_7,
      \seg_reg[7]_1\(5) => \seg_reg[7]_1\(23),
      \seg_reg[7]_1\(4 downto 0) => \seg_reg[7]_1\(19 downto 15),
      \seg_reg[7]_2\(7) => Digit5_n_0,
      \seg_reg[7]_2\(6) => Digit5_n_1,
      \seg_reg[7]_2\(5) => Digit5_n_2,
      \seg_reg[7]_2\(4) => Digit5_n_3,
      \seg_reg[7]_2\(3) => Digit5_n_4,
      \seg_reg[7]_2\(2) => Digit5_n_5,
      \seg_reg[7]_2\(1) => Digit5_n_6,
      \seg_reg[7]_2\(0) => Digit5_n_7,
      \seg_reg[7]_3\(7) => Digit4_n_0,
      \seg_reg[7]_3\(6) => Digit4_n_1,
      \seg_reg[7]_3\(5) => Digit4_n_2,
      \seg_reg[7]_3\(4) => Digit4_n_3,
      \seg_reg[7]_3\(3) => Digit4_n_4,
      \seg_reg[7]_3\(2) => Digit4_n_5,
      \seg_reg[7]_3\(1) => Digit4_n_6,
      \seg_reg[7]_3\(0) => Digit4_n_7
    );
\FSM_sequential_an[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEF0010"
    )
        port map (
      I0 => \FSM_sequential_an[1]_i_3_n_0\,
      I1 => \FSM_sequential_an[1]_i_2_n_0\,
      I2 => \FSM_sequential_an[2]_i_3_n_0\,
      I3 => \FSM_sequential_an[2]_i_2_n_0\,
      I4 => \an__0\(0),
      O => \FSM_sequential_an[0]_i_1_n_0\
    );
\FSM_sequential_an[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFDF00000020"
    )
        port map (
      I0 => \an__0\(0),
      I1 => \FSM_sequential_an[2]_i_2_n_0\,
      I2 => \FSM_sequential_an[2]_i_3_n_0\,
      I3 => \FSM_sequential_an[1]_i_2_n_0\,
      I4 => \FSM_sequential_an[1]_i_3_n_0\,
      I5 => \an__0\(1),
      O => \FSM_sequential_an[1]_i_1_n_0\
    );
\FSM_sequential_an[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => clk_cnt_reg(13),
      I1 => clk_cnt_reg(6),
      I2 => clk_cnt_reg(22),
      I3 => clk_cnt_reg(25),
      I4 => \FSM_sequential_an[2]_i_9_n_0\,
      O => \FSM_sequential_an[1]_i_2_n_0\
    );
\FSM_sequential_an[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFB"
    )
        port map (
      I0 => clk_cnt_reg(27),
      I1 => clk_cnt_reg(16),
      I2 => clk_cnt_reg(19),
      I3 => clk_cnt_reg(31),
      I4 => \FSM_sequential_an[2]_i_7_n_0\,
      O => \FSM_sequential_an[1]_i_3_n_0\
    );
\FSM_sequential_an[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF7FF00000800"
    )
        port map (
      I0 => \an__0\(1),
      I1 => \an__0\(0),
      I2 => \FSM_sequential_an[2]_i_2_n_0\,
      I3 => \FSM_sequential_an[2]_i_3_n_0\,
      I4 => \FSM_sequential_an[2]_i_4_n_0\,
      I5 => \an__0\(2),
      O => \FSM_sequential_an[2]_i_1_n_0\
    );
\FSM_sequential_an[2]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => clk_cnt_reg(25),
      I1 => clk_cnt_reg(22),
      I2 => clk_cnt_reg(6),
      I3 => clk_cnt_reg(13),
      O => \FSM_sequential_an[2]_i_10_n_0\
    );
\FSM_sequential_an[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFBFFF"
    )
        port map (
      I0 => clk_cnt_reg(12),
      I1 => clk_cnt_reg(3),
      I2 => clk_cnt_reg(0),
      I3 => clk_cnt_reg(2),
      I4 => \FSM_sequential_an[2]_i_5_n_0\,
      O => \FSM_sequential_an[2]_i_2_n_0\
    );
\FSM_sequential_an[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => clk_cnt_reg(23),
      I1 => clk_cnt_reg(24),
      I2 => clk_cnt_reg(8),
      I3 => clk_cnt_reg(21),
      I4 => \FSM_sequential_an[2]_i_6_n_0\,
      O => \FSM_sequential_an[2]_i_3_n_0\
    );
\FSM_sequential_an[2]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_sequential_an[2]_i_7_n_0\,
      I1 => \FSM_sequential_an[2]_i_8_n_0\,
      I2 => \FSM_sequential_an[2]_i_9_n_0\,
      I3 => \FSM_sequential_an[2]_i_10_n_0\,
      O => \FSM_sequential_an[2]_i_4_n_0\
    );
\FSM_sequential_an[2]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => clk_cnt_reg(5),
      I1 => clk_cnt_reg(18),
      I2 => clk_cnt_reg(1),
      I3 => clk_cnt_reg(14),
      O => \FSM_sequential_an[2]_i_5_n_0\
    );
\FSM_sequential_an[2]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => clk_cnt_reg(26),
      I1 => clk_cnt_reg(15),
      I2 => clk_cnt_reg(11),
      I3 => clk_cnt_reg(9),
      O => \FSM_sequential_an[2]_i_6_n_0\
    );
\FSM_sequential_an[2]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => clk_cnt_reg(4),
      I1 => clk_cnt_reg(17),
      I2 => clk_cnt_reg(30),
      I3 => clk_cnt_reg(29),
      O => \FSM_sequential_an[2]_i_7_n_0\
    );
\FSM_sequential_an[2]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => clk_cnt_reg(31),
      I1 => clk_cnt_reg(19),
      I2 => clk_cnt_reg(16),
      I3 => clk_cnt_reg(27),
      O => \FSM_sequential_an[2]_i_8_n_0\
    );
\FSM_sequential_an[2]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => clk_cnt_reg(10),
      I1 => clk_cnt_reg(7),
      I2 => clk_cnt_reg(28),
      I3 => clk_cnt_reg(20),
      O => \FSM_sequential_an[2]_i_9_n_0\
    );
\FSM_sequential_an_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_sequential_an[0]_i_1_n_0\,
      Q => \an__0\(0),
      R => SR(0)
    );
\FSM_sequential_an_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_sequential_an[1]_i_1_n_0\,
      Q => \an__0\(1),
      R => SR(0)
    );
\FSM_sequential_an_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_sequential_an[2]_i_1_n_0\,
      Q => \an__0\(2),
      R => SR(0)
    );
\an[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \an__0\(1),
      I1 => \an__0\(2),
      I2 => \an__0\(0),
      O => an(0)
    );
\an[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \an__0\(1),
      I1 => \an__0\(2),
      I2 => \an__0\(0),
      O => an(1)
    );
\an[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \an__0\(2),
      I1 => \an__0\(0),
      I2 => \an__0\(1),
      O => an(2)
    );
\an[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F7"
    )
        port map (
      I0 => \an__0\(1),
      I1 => \an__0\(0),
      I2 => \an__0\(2),
      O => an(3)
    );
\an[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \an__0\(1),
      I1 => \an__0\(0),
      I2 => \an__0\(2),
      O => an(4)
    );
\an[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F7"
    )
        port map (
      I0 => \an__0\(2),
      I1 => \an__0\(0),
      I2 => \an__0\(1),
      O => an(5)
    );
\an[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F7"
    )
        port map (
      I0 => \an__0\(1),
      I1 => \an__0\(2),
      I2 => \an__0\(0),
      O => an(6)
    );
\an[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \an__0\(2),
      I1 => \an__0\(0),
      I2 => \an__0\(1),
      O => an(7)
    );
\clk_cnt[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0010FFFF"
    )
        port map (
      I0 => \FSM_sequential_an[1]_i_3_n_0\,
      I1 => \FSM_sequential_an[1]_i_2_n_0\,
      I2 => \FSM_sequential_an[2]_i_3_n_0\,
      I3 => \FSM_sequential_an[2]_i_2_n_0\,
      I4 => s00_axi_aresetn,
      O => \clk_cnt[0]_i_1_n_0\
    );
\clk_cnt[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => clk_cnt_reg(0),
      O => \clk_cnt[0]_i_3_n_0\
    );
\clk_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \clk_cnt_reg[0]_i_2_n_7\,
      Q => clk_cnt_reg(0),
      R => \clk_cnt[0]_i_1_n_0\
    );
\clk_cnt_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \clk_cnt_reg[0]_i_2_n_0\,
      CO(2) => \clk_cnt_reg[0]_i_2_n_1\,
      CO(1) => \clk_cnt_reg[0]_i_2_n_2\,
      CO(0) => \clk_cnt_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \clk_cnt_reg[0]_i_2_n_4\,
      O(2) => \clk_cnt_reg[0]_i_2_n_5\,
      O(1) => \clk_cnt_reg[0]_i_2_n_6\,
      O(0) => \clk_cnt_reg[0]_i_2_n_7\,
      S(3 downto 1) => clk_cnt_reg(3 downto 1),
      S(0) => \clk_cnt[0]_i_3_n_0\
    );
\clk_cnt_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \clk_cnt_reg[8]_i_1_n_5\,
      Q => clk_cnt_reg(10),
      R => \clk_cnt[0]_i_1_n_0\
    );
\clk_cnt_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \clk_cnt_reg[8]_i_1_n_4\,
      Q => clk_cnt_reg(11),
      R => \clk_cnt[0]_i_1_n_0\
    );
\clk_cnt_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \clk_cnt_reg[12]_i_1_n_7\,
      Q => clk_cnt_reg(12),
      R => \clk_cnt[0]_i_1_n_0\
    );
\clk_cnt_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clk_cnt_reg[8]_i_1_n_0\,
      CO(3) => \clk_cnt_reg[12]_i_1_n_0\,
      CO(2) => \clk_cnt_reg[12]_i_1_n_1\,
      CO(1) => \clk_cnt_reg[12]_i_1_n_2\,
      CO(0) => \clk_cnt_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clk_cnt_reg[12]_i_1_n_4\,
      O(2) => \clk_cnt_reg[12]_i_1_n_5\,
      O(1) => \clk_cnt_reg[12]_i_1_n_6\,
      O(0) => \clk_cnt_reg[12]_i_1_n_7\,
      S(3 downto 0) => clk_cnt_reg(15 downto 12)
    );
\clk_cnt_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \clk_cnt_reg[12]_i_1_n_6\,
      Q => clk_cnt_reg(13),
      R => \clk_cnt[0]_i_1_n_0\
    );
\clk_cnt_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \clk_cnt_reg[12]_i_1_n_5\,
      Q => clk_cnt_reg(14),
      R => \clk_cnt[0]_i_1_n_0\
    );
\clk_cnt_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \clk_cnt_reg[12]_i_1_n_4\,
      Q => clk_cnt_reg(15),
      R => \clk_cnt[0]_i_1_n_0\
    );
\clk_cnt_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \clk_cnt_reg[16]_i_1_n_7\,
      Q => clk_cnt_reg(16),
      R => \clk_cnt[0]_i_1_n_0\
    );
\clk_cnt_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clk_cnt_reg[12]_i_1_n_0\,
      CO(3) => \clk_cnt_reg[16]_i_1_n_0\,
      CO(2) => \clk_cnt_reg[16]_i_1_n_1\,
      CO(1) => \clk_cnt_reg[16]_i_1_n_2\,
      CO(0) => \clk_cnt_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clk_cnt_reg[16]_i_1_n_4\,
      O(2) => \clk_cnt_reg[16]_i_1_n_5\,
      O(1) => \clk_cnt_reg[16]_i_1_n_6\,
      O(0) => \clk_cnt_reg[16]_i_1_n_7\,
      S(3 downto 0) => clk_cnt_reg(19 downto 16)
    );
\clk_cnt_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \clk_cnt_reg[16]_i_1_n_6\,
      Q => clk_cnt_reg(17),
      R => \clk_cnt[0]_i_1_n_0\
    );
\clk_cnt_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \clk_cnt_reg[16]_i_1_n_5\,
      Q => clk_cnt_reg(18),
      R => \clk_cnt[0]_i_1_n_0\
    );
\clk_cnt_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \clk_cnt_reg[16]_i_1_n_4\,
      Q => clk_cnt_reg(19),
      R => \clk_cnt[0]_i_1_n_0\
    );
\clk_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \clk_cnt_reg[0]_i_2_n_6\,
      Q => clk_cnt_reg(1),
      R => \clk_cnt[0]_i_1_n_0\
    );
\clk_cnt_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \clk_cnt_reg[20]_i_1_n_7\,
      Q => clk_cnt_reg(20),
      R => \clk_cnt[0]_i_1_n_0\
    );
\clk_cnt_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clk_cnt_reg[16]_i_1_n_0\,
      CO(3) => \clk_cnt_reg[20]_i_1_n_0\,
      CO(2) => \clk_cnt_reg[20]_i_1_n_1\,
      CO(1) => \clk_cnt_reg[20]_i_1_n_2\,
      CO(0) => \clk_cnt_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clk_cnt_reg[20]_i_1_n_4\,
      O(2) => \clk_cnt_reg[20]_i_1_n_5\,
      O(1) => \clk_cnt_reg[20]_i_1_n_6\,
      O(0) => \clk_cnt_reg[20]_i_1_n_7\,
      S(3 downto 0) => clk_cnt_reg(23 downto 20)
    );
\clk_cnt_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \clk_cnt_reg[20]_i_1_n_6\,
      Q => clk_cnt_reg(21),
      R => \clk_cnt[0]_i_1_n_0\
    );
\clk_cnt_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \clk_cnt_reg[20]_i_1_n_5\,
      Q => clk_cnt_reg(22),
      R => \clk_cnt[0]_i_1_n_0\
    );
\clk_cnt_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \clk_cnt_reg[20]_i_1_n_4\,
      Q => clk_cnt_reg(23),
      R => \clk_cnt[0]_i_1_n_0\
    );
\clk_cnt_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \clk_cnt_reg[24]_i_1_n_7\,
      Q => clk_cnt_reg(24),
      R => \clk_cnt[0]_i_1_n_0\
    );
\clk_cnt_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clk_cnt_reg[20]_i_1_n_0\,
      CO(3) => \clk_cnt_reg[24]_i_1_n_0\,
      CO(2) => \clk_cnt_reg[24]_i_1_n_1\,
      CO(1) => \clk_cnt_reg[24]_i_1_n_2\,
      CO(0) => \clk_cnt_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clk_cnt_reg[24]_i_1_n_4\,
      O(2) => \clk_cnt_reg[24]_i_1_n_5\,
      O(1) => \clk_cnt_reg[24]_i_1_n_6\,
      O(0) => \clk_cnt_reg[24]_i_1_n_7\,
      S(3 downto 0) => clk_cnt_reg(27 downto 24)
    );
\clk_cnt_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \clk_cnt_reg[24]_i_1_n_6\,
      Q => clk_cnt_reg(25),
      R => \clk_cnt[0]_i_1_n_0\
    );
\clk_cnt_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \clk_cnt_reg[24]_i_1_n_5\,
      Q => clk_cnt_reg(26),
      R => \clk_cnt[0]_i_1_n_0\
    );
\clk_cnt_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \clk_cnt_reg[24]_i_1_n_4\,
      Q => clk_cnt_reg(27),
      R => \clk_cnt[0]_i_1_n_0\
    );
\clk_cnt_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \clk_cnt_reg[28]_i_1_n_7\,
      Q => clk_cnt_reg(28),
      R => \clk_cnt[0]_i_1_n_0\
    );
\clk_cnt_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clk_cnt_reg[24]_i_1_n_0\,
      CO(3) => \NLW_clk_cnt_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \clk_cnt_reg[28]_i_1_n_1\,
      CO(1) => \clk_cnt_reg[28]_i_1_n_2\,
      CO(0) => \clk_cnt_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clk_cnt_reg[28]_i_1_n_4\,
      O(2) => \clk_cnt_reg[28]_i_1_n_5\,
      O(1) => \clk_cnt_reg[28]_i_1_n_6\,
      O(0) => \clk_cnt_reg[28]_i_1_n_7\,
      S(3 downto 0) => clk_cnt_reg(31 downto 28)
    );
\clk_cnt_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \clk_cnt_reg[28]_i_1_n_6\,
      Q => clk_cnt_reg(29),
      R => \clk_cnt[0]_i_1_n_0\
    );
\clk_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \clk_cnt_reg[0]_i_2_n_5\,
      Q => clk_cnt_reg(2),
      R => \clk_cnt[0]_i_1_n_0\
    );
\clk_cnt_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \clk_cnt_reg[28]_i_1_n_5\,
      Q => clk_cnt_reg(30),
      R => \clk_cnt[0]_i_1_n_0\
    );
\clk_cnt_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \clk_cnt_reg[28]_i_1_n_4\,
      Q => clk_cnt_reg(31),
      R => \clk_cnt[0]_i_1_n_0\
    );
\clk_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \clk_cnt_reg[0]_i_2_n_4\,
      Q => clk_cnt_reg(3),
      R => \clk_cnt[0]_i_1_n_0\
    );
\clk_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \clk_cnt_reg[4]_i_1_n_7\,
      Q => clk_cnt_reg(4),
      R => \clk_cnt[0]_i_1_n_0\
    );
\clk_cnt_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clk_cnt_reg[0]_i_2_n_0\,
      CO(3) => \clk_cnt_reg[4]_i_1_n_0\,
      CO(2) => \clk_cnt_reg[4]_i_1_n_1\,
      CO(1) => \clk_cnt_reg[4]_i_1_n_2\,
      CO(0) => \clk_cnt_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clk_cnt_reg[4]_i_1_n_4\,
      O(2) => \clk_cnt_reg[4]_i_1_n_5\,
      O(1) => \clk_cnt_reg[4]_i_1_n_6\,
      O(0) => \clk_cnt_reg[4]_i_1_n_7\,
      S(3 downto 0) => clk_cnt_reg(7 downto 4)
    );
\clk_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \clk_cnt_reg[4]_i_1_n_6\,
      Q => clk_cnt_reg(5),
      R => \clk_cnt[0]_i_1_n_0\
    );
\clk_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \clk_cnt_reg[4]_i_1_n_5\,
      Q => clk_cnt_reg(6),
      R => \clk_cnt[0]_i_1_n_0\
    );
\clk_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \clk_cnt_reg[4]_i_1_n_4\,
      Q => clk_cnt_reg(7),
      R => \clk_cnt[0]_i_1_n_0\
    );
\clk_cnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \clk_cnt_reg[8]_i_1_n_7\,
      Q => clk_cnt_reg(8),
      R => \clk_cnt[0]_i_1_n_0\
    );
\clk_cnt_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clk_cnt_reg[4]_i_1_n_0\,
      CO(3) => \clk_cnt_reg[8]_i_1_n_0\,
      CO(2) => \clk_cnt_reg[8]_i_1_n_1\,
      CO(1) => \clk_cnt_reg[8]_i_1_n_2\,
      CO(0) => \clk_cnt_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clk_cnt_reg[8]_i_1_n_4\,
      O(2) => \clk_cnt_reg[8]_i_1_n_5\,
      O(1) => \clk_cnt_reg[8]_i_1_n_6\,
      O(0) => \clk_cnt_reg[8]_i_1_n_7\,
      S(3 downto 0) => clk_cnt_reg(11 downto 8)
    );
\clk_cnt_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \clk_cnt_reg[8]_i_1_n_6\,
      Q => clk_cnt_reg(9),
      R => \clk_cnt[0]_i_1_n_0\
    );
\seg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => Digit3_n_7,
      Q => \seg_reg[7]_0\(0),
      R => '0'
    );
\seg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => Digit3_n_6,
      Q => \seg_reg[7]_0\(1),
      R => '0'
    );
\seg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => Digit3_n_5,
      Q => \seg_reg[7]_0\(2),
      R => '0'
    );
\seg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => Digit3_n_4,
      Q => \seg_reg[7]_0\(3),
      R => '0'
    );
\seg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => Digit3_n_3,
      Q => \seg_reg[7]_0\(4),
      R => '0'
    );
\seg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => Digit3_n_2,
      Q => \seg_reg[7]_0\(5),
      R => '0'
    );
\seg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => Digit3_n_1,
      Q => \seg_reg[7]_0\(6),
      R => '0'
    );
\seg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => Digit3_n_0,
      Q => \seg_reg[7]_0\(7),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_nexys4io_v3_0_S00_AXI is
  port (
    axi_awready_reg_0 : out STD_LOGIC;
    axi_wready_reg_0 : out STD_LOGIC;
    axi_arready_reg_0 : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    aw_en_reg_0 : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    led : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    an : out STD_LOGIC_VECTOR ( 7 downto 0 );
    RGB1_Red : out STD_LOGIC;
    RGB1_Green : out STD_LOGIC;
    RGB1_Blue : out STD_LOGIC;
    RGB2_Red : out STD_LOGIC;
    RGB2_Green : out STD_LOGIC;
    RGB2_Blue : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    axi_bvalid_reg_0 : in STD_LOGIC;
    aw_en_reg_1 : in STD_LOGIC;
    axi_rvalid_reg_0 : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    RGBLED_Clock : in STD_LOGIC;
    pbtn_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    sw : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_nexys4io_v3_0_S00_AXI;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_nexys4io_v3_0_S00_AXI is
  signal RGB1B_n_0 : STD_LOGIC;
  signal \^aw_en_reg_0\ : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal \^axi_arready_reg_0\ : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal \^axi_awready_reg_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[10]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[10]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[10]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[11]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[11]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[11]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[12]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[12]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[12]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[13]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[13]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[13]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[14]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[14]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[14]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[15]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[15]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[15]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[16]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[16]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[16]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[17]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[17]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[17]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[18]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[18]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[18]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[19]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[19]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[19]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[20]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[20]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[20]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[21]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[21]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[21]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[21]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[22]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[22]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[22]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[22]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[23]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[23]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[23]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[23]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[24]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[24]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[24]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[24]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[25]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[25]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[25]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[25]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[26]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[26]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[26]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[26]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[27]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[27]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[27]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[27]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[28]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[28]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[28]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[28]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[29]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[29]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[29]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[29]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[30]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[30]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[30]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[30]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[31]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[31]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[31]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[31]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[10]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[11]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[12]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[13]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[14]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[15]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[16]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[17]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[18]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[19]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[1]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[20]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[21]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[21]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[22]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[22]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[23]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[23]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[24]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[24]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[25]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[25]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[26]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[26]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[27]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[27]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[28]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[28]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[29]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[29]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[2]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[30]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[30]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[31]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[31]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[4]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[5]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[6]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[7]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[8]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[9]_i_3_n_0\ : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal \^axi_wready_reg_0\ : STD_LOGIC;
  signal decpts : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal dig1 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal dig2 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal dig3 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal dig5 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal dig6 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal dig7 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^led\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal p_0_in_0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 7 );
  signal reg_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal rgb1_greendc : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rgb1_reddc : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rgb2_greendc : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rgb2_reddc : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^s00_axi_rvalid\ : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal slv_reg1 : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal slv_reg10 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg10[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg10[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg10[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg10[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg11 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg11[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg11[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg11[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg11[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg12 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg12[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg12[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg12[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg12[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg13 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg13[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg13[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg13[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg13[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg14 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg14[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg14[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg14[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg14[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg15 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg15[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg15[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg15[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg15[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[0]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[1]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[24]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[25]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[26]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[27]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[28]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[29]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[2]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[30]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[31]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[3]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[4]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[5]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[6]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[7]\ : STD_LOGIC;
  signal slv_reg3 : STD_LOGIC_VECTOR ( 31 downto 3 );
  signal \slv_reg3[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \slv_reg4[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg4[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg4[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg4[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[0]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[1]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[24]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[25]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[26]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[27]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[28]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[29]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[2]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[30]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[31]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[3]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[4]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[5]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[6]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[7]\ : STD_LOGIC;
  signal slv_reg5 : STD_LOGIC_VECTOR ( 31 downto 3 );
  signal \slv_reg5[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg5[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg5[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg5[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg5__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \slv_reg6[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg6[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg6[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg6[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg6_reg_n_0_[0]\ : STD_LOGIC;
  signal \slv_reg6_reg_n_0_[11]\ : STD_LOGIC;
  signal \slv_reg6_reg_n_0_[17]\ : STD_LOGIC;
  signal \slv_reg6_reg_n_0_[1]\ : STD_LOGIC;
  signal \slv_reg6_reg_n_0_[23]\ : STD_LOGIC;
  signal \slv_reg6_reg_n_0_[28]\ : STD_LOGIC;
  signal \slv_reg6_reg_n_0_[29]\ : STD_LOGIC;
  signal \slv_reg6_reg_n_0_[2]\ : STD_LOGIC;
  signal \slv_reg6_reg_n_0_[30]\ : STD_LOGIC;
  signal \slv_reg6_reg_n_0_[31]\ : STD_LOGIC;
  signal \slv_reg6_reg_n_0_[3]\ : STD_LOGIC;
  signal \slv_reg6_reg_n_0_[4]\ : STD_LOGIC;
  signal \slv_reg6_reg_n_0_[5]\ : STD_LOGIC;
  signal \slv_reg7[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg7[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg7[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg7[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg7_reg_n_0_[0]\ : STD_LOGIC;
  signal \slv_reg7_reg_n_0_[11]\ : STD_LOGIC;
  signal \slv_reg7_reg_n_0_[17]\ : STD_LOGIC;
  signal \slv_reg7_reg_n_0_[1]\ : STD_LOGIC;
  signal \slv_reg7_reg_n_0_[23]\ : STD_LOGIC;
  signal \slv_reg7_reg_n_0_[28]\ : STD_LOGIC;
  signal \slv_reg7_reg_n_0_[29]\ : STD_LOGIC;
  signal \slv_reg7_reg_n_0_[2]\ : STD_LOGIC;
  signal \slv_reg7_reg_n_0_[30]\ : STD_LOGIC;
  signal \slv_reg7_reg_n_0_[31]\ : STD_LOGIC;
  signal \slv_reg7_reg_n_0_[3]\ : STD_LOGIC;
  signal \slv_reg7_reg_n_0_[4]\ : STD_LOGIC;
  signal \slv_reg7_reg_n_0_[5]\ : STD_LOGIC;
  signal slv_reg8 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg8[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg8[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg8[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg8[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg9 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg9[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg9[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg9[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg9[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_rden__0\ : STD_LOGIC;
  signal \slv_reg_wren__0\ : STD_LOGIC;
begin
  aw_en_reg_0 <= \^aw_en_reg_0\;
  axi_arready_reg_0 <= \^axi_arready_reg_0\;
  axi_awready_reg_0 <= \^axi_awready_reg_0\;
  axi_wready_reg_0 <= \^axi_wready_reg_0\;
  led(15 downto 0) <= \^led\(15 downto 0);
  s00_axi_rvalid <= \^s00_axi_rvalid\;
DB: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_debounce
     port map (
      D(20 downto 0) => reg_data_out(20 downto 0),
      Q(3 downto 0) => sel0(3 downto 0),
      \axi_rdata_reg[0]\ => \axi_rdata_reg[0]_i_3_n_0\,
      \axi_rdata_reg[0]_0\ => \axi_rdata[0]_i_5_n_0\,
      \axi_rdata_reg[10]\ => \axi_rdata_reg[10]_i_3_n_0\,
      \axi_rdata_reg[10]_0\ => \axi_rdata[10]_i_5_n_0\,
      \axi_rdata_reg[11]\ => \axi_rdata_reg[11]_i_3_n_0\,
      \axi_rdata_reg[11]_0\ => \axi_rdata[11]_i_5_n_0\,
      \axi_rdata_reg[12]\ => \axi_rdata_reg[12]_i_3_n_0\,
      \axi_rdata_reg[12]_0\ => \axi_rdata[12]_i_5_n_0\,
      \axi_rdata_reg[13]\ => \axi_rdata_reg[13]_i_3_n_0\,
      \axi_rdata_reg[13]_0\ => \axi_rdata[13]_i_5_n_0\,
      \axi_rdata_reg[14]\ => \axi_rdata_reg[14]_i_3_n_0\,
      \axi_rdata_reg[14]_0\ => \axi_rdata[14]_i_5_n_0\,
      \axi_rdata_reg[15]\ => \axi_rdata_reg[15]_i_3_n_0\,
      \axi_rdata_reg[15]_0\ => \axi_rdata[15]_i_5_n_0\,
      \axi_rdata_reg[16]\ => \axi_rdata_reg[16]_i_3_n_0\,
      \axi_rdata_reg[16]_0\ => \axi_rdata[16]_i_5_n_0\,
      \axi_rdata_reg[17]\ => \axi_rdata_reg[17]_i_3_n_0\,
      \axi_rdata_reg[17]_0\ => \axi_rdata[17]_i_5_n_0\,
      \axi_rdata_reg[18]\ => \axi_rdata_reg[18]_i_3_n_0\,
      \axi_rdata_reg[18]_0\ => \axi_rdata[18]_i_5_n_0\,
      \axi_rdata_reg[19]\ => \axi_rdata_reg[19]_i_3_n_0\,
      \axi_rdata_reg[19]_0\ => \axi_rdata[19]_i_5_n_0\,
      \axi_rdata_reg[1]\ => \axi_rdata_reg[1]_i_3_n_0\,
      \axi_rdata_reg[1]_0\ => \axi_rdata[1]_i_5_n_0\,
      \axi_rdata_reg[20]\ => \axi_rdata_reg[20]_i_3_n_0\,
      \axi_rdata_reg[20]_0\ => \axi_rdata[20]_i_5_n_0\,
      \axi_rdata_reg[20]_i_2_0\(20 downto 3) => slv_reg3(20 downto 3),
      \axi_rdata_reg[20]_i_2_0\(2 downto 0) => \slv_reg3__0\(2 downto 0),
      \axi_rdata_reg[20]_i_2_1\(20 downto 16) => rgb1_reddc(4 downto 0),
      \axi_rdata_reg[20]_i_2_1\(15 downto 8) => rgb1_greendc(7 downto 0),
      \axi_rdata_reg[20]_i_2_1\(7) => \slv_reg2_reg_n_0_[7]\,
      \axi_rdata_reg[20]_i_2_1\(6) => \slv_reg2_reg_n_0_[6]\,
      \axi_rdata_reg[20]_i_2_1\(5) => \slv_reg2_reg_n_0_[5]\,
      \axi_rdata_reg[20]_i_2_1\(4) => \slv_reg2_reg_n_0_[4]\,
      \axi_rdata_reg[20]_i_2_1\(3) => \slv_reg2_reg_n_0_[3]\,
      \axi_rdata_reg[20]_i_2_1\(2) => \slv_reg2_reg_n_0_[2]\,
      \axi_rdata_reg[20]_i_2_1\(1) => \slv_reg2_reg_n_0_[1]\,
      \axi_rdata_reg[20]_i_2_1\(0) => \slv_reg2_reg_n_0_[0]\,
      \axi_rdata_reg[20]_i_2_2\(20 downto 16) => slv_reg1(20 downto 16),
      \axi_rdata_reg[20]_i_2_2\(15 downto 0) => \^led\(15 downto 0),
      \axi_rdata_reg[2]\ => \axi_rdata_reg[2]_i_3_n_0\,
      \axi_rdata_reg[2]_0\ => \axi_rdata[2]_i_5_n_0\,
      \axi_rdata_reg[3]\ => \axi_rdata_reg[3]_i_3_n_0\,
      \axi_rdata_reg[3]_0\ => \axi_rdata[3]_i_5_n_0\,
      \axi_rdata_reg[4]\ => \axi_rdata_reg[4]_i_3_n_0\,
      \axi_rdata_reg[4]_0\ => \axi_rdata[4]_i_5_n_0\,
      \axi_rdata_reg[5]\ => \axi_rdata_reg[5]_i_3_n_0\,
      \axi_rdata_reg[5]_0\ => \axi_rdata[5]_i_5_n_0\,
      \axi_rdata_reg[6]\ => \axi_rdata_reg[6]_i_3_n_0\,
      \axi_rdata_reg[6]_0\ => \axi_rdata[6]_i_5_n_0\,
      \axi_rdata_reg[7]\ => \axi_rdata_reg[7]_i_3_n_0\,
      \axi_rdata_reg[7]_0\ => \axi_rdata[7]_i_5_n_0\,
      \axi_rdata_reg[8]\ => \axi_rdata_reg[8]_i_3_n_0\,
      \axi_rdata_reg[8]_0\ => \axi_rdata[8]_i_5_n_0\,
      \axi_rdata_reg[9]\ => \axi_rdata_reg[9]_i_3_n_0\,
      \axi_rdata_reg[9]_0\ => \axi_rdata[9]_i_5_n_0\,
      pbtn_in(4 downto 0) => pbtn_in(4 downto 0),
      s00_axi_aclk => s00_axi_aclk,
      sw(15 downto 0) => sw(15 downto 0)
    );
RGB1B: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rgbpwm
     port map (
      Q(23 downto 16) => rgb1_reddc(7 downto 0),
      Q(15 downto 8) => rgb1_greendc(7 downto 0),
      Q(7) => \slv_reg2_reg_n_0_[7]\,
      Q(6) => \slv_reg2_reg_n_0_[6]\,
      Q(5) => \slv_reg2_reg_n_0_[5]\,
      Q(4) => \slv_reg2_reg_n_0_[4]\,
      Q(3) => \slv_reg2_reg_n_0_[3]\,
      Q(2) => \slv_reg2_reg_n_0_[2]\,
      Q(1) => \slv_reg2_reg_n_0_[1]\,
      Q(0) => \slv_reg2_reg_n_0_[0]\,
      RGB1_Blue => RGB1_Blue,
      RGB1_Green => RGB1_Green,
      RGB1_Red => RGB1_Red,
      RGB1_Red_0(2 downto 0) => \slv_reg3__0\(2 downto 0),
      RGBLED_Clock => RGBLED_Clock,
      SR(0) => RGB1B_n_0,
      s00_axi_aresetn => s00_axi_aresetn
    );
RGB2B: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rgbpwm_0
     port map (
      Q(23 downto 16) => rgb2_reddc(7 downto 0),
      Q(15 downto 8) => rgb2_greendc(7 downto 0),
      Q(7) => \slv_reg4_reg_n_0_[7]\,
      Q(6) => \slv_reg4_reg_n_0_[6]\,
      Q(5) => \slv_reg4_reg_n_0_[5]\,
      Q(4) => \slv_reg4_reg_n_0_[4]\,
      Q(3) => \slv_reg4_reg_n_0_[3]\,
      Q(2) => \slv_reg4_reg_n_0_[2]\,
      Q(1) => \slv_reg4_reg_n_0_[1]\,
      Q(0) => \slv_reg4_reg_n_0_[0]\,
      RGB2_Blue => RGB2_Blue,
      RGB2_Green => RGB2_Green,
      RGB2_Red => RGB2_Red,
      RGB2_Red_0(2 downto 0) => \slv_reg5__0\(2 downto 0),
      RGBLED_Clock => RGBLED_Clock,
      SR(0) => RGB1B_n_0
    );
SSB: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sevensegment
     port map (
      Q(23 downto 20) => decpts(3 downto 0),
      Q(19 downto 15) => dig3(4 downto 0),
      Q(14 downto 10) => dig2(4 downto 0),
      Q(9 downto 5) => dig1(4 downto 0),
      Q(4) => \slv_reg6_reg_n_0_[4]\,
      Q(3) => \slv_reg6_reg_n_0_[3]\,
      Q(2) => \slv_reg6_reg_n_0_[2]\,
      Q(1) => \slv_reg6_reg_n_0_[1]\,
      Q(0) => \slv_reg6_reg_n_0_[0]\,
      SR(0) => RGB1B_n_0,
      an(7 downto 0) => an(7 downto 0),
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      \seg_reg[7]_0\(7 downto 0) => Q(7 downto 0),
      \seg_reg[7]_1\(23 downto 20) => decpts(7 downto 4),
      \seg_reg[7]_1\(19 downto 15) => dig7(4 downto 0),
      \seg_reg[7]_1\(14 downto 10) => dig6(4 downto 0),
      \seg_reg[7]_1\(9 downto 5) => dig5(4 downto 0),
      \seg_reg[7]_1\(4) => \slv_reg7_reg_n_0_[4]\,
      \seg_reg[7]_1\(3) => \slv_reg7_reg_n_0_[3]\,
      \seg_reg[7]_1\(2) => \slv_reg7_reg_n_0_[2]\,
      \seg_reg[7]_1\(1) => \slv_reg7_reg_n_0_[1]\,
      \seg_reg[7]_1\(0) => \slv_reg7_reg_n_0_[0]\
    );
aw_en_reg: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => aw_en_reg_1,
      Q => \^aw_en_reg_0\,
      S => RGB1B_n_0
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready0,
      D => s00_axi_araddr(0),
      Q => sel0(0),
      R => RGB1B_n_0
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready0,
      D => s00_axi_araddr(1),
      Q => sel0(1),
      R => RGB1B_n_0
    );
\axi_araddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready0,
      D => s00_axi_araddr(2),
      Q => sel0(2),
      R => RGB1B_n_0
    );
\axi_araddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready0,
      D => s00_axi_araddr(3),
      Q => sel0(3),
      R => RGB1B_n_0
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^axi_arready_reg_0\,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arready0,
      Q => \^axi_arready_reg_0\,
      R => RGB1B_n_0
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(0),
      Q => p_0_in_0(0),
      R => RGB1B_n_0
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(1),
      Q => p_0_in_0(1),
      R => RGB1B_n_0
    );
\axi_awaddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(2),
      Q => p_0_in_0(2),
      R => RGB1B_n_0
    );
\axi_awaddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(3),
      Q => p_0_in_0(3),
      R => RGB1B_n_0
    );
axi_awready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \^axi_awready_reg_0\,
      I2 => \^aw_en_reg_0\,
      I3 => s00_axi_awvalid,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awready0,
      Q => \^axi_awready_reg_0\,
      R => RGB1B_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_bvalid_reg_0,
      Q => s00_axi_bvalid,
      R => RGB1B_n_0
    );
\axi_rdata[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg7_reg_n_0_[0]\,
      I1 => \slv_reg6_reg_n_0_[0]\,
      I2 => sel0(1),
      I3 => \slv_reg5__0\(0),
      I4 => sel0(0),
      I5 => \slv_reg4_reg_n_0_[0]\,
      O => \axi_rdata[0]_i_5_n_0\
    );
\axi_rdata[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg11(0),
      I1 => slv_reg10(0),
      I2 => sel0(1),
      I3 => slv_reg9(0),
      I4 => sel0(0),
      I5 => slv_reg8(0),
      O => \axi_rdata[0]_i_6_n_0\
    );
\axi_rdata[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg15(0),
      I1 => slv_reg14(0),
      I2 => sel0(1),
      I3 => slv_reg13(0),
      I4 => sel0(0),
      I5 => slv_reg12(0),
      O => \axi_rdata[0]_i_7_n_0\
    );
\axi_rdata[10]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => dig5(4),
      I1 => dig1(4),
      I2 => sel0(1),
      I3 => slv_reg5(10),
      I4 => sel0(0),
      I5 => rgb2_greendc(2),
      O => \axi_rdata[10]_i_5_n_0\
    );
\axi_rdata[10]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg11(10),
      I1 => slv_reg10(10),
      I2 => sel0(1),
      I3 => slv_reg9(10),
      I4 => sel0(0),
      I5 => slv_reg8(10),
      O => \axi_rdata[10]_i_6_n_0\
    );
\axi_rdata[10]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg15(10),
      I1 => slv_reg14(10),
      I2 => sel0(1),
      I3 => slv_reg13(10),
      I4 => sel0(0),
      I5 => slv_reg12(10),
      O => \axi_rdata[10]_i_7_n_0\
    );
\axi_rdata[11]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg7_reg_n_0_[11]\,
      I1 => \slv_reg6_reg_n_0_[11]\,
      I2 => sel0(1),
      I3 => slv_reg5(11),
      I4 => sel0(0),
      I5 => rgb2_greendc(3),
      O => \axi_rdata[11]_i_5_n_0\
    );
\axi_rdata[11]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg11(11),
      I1 => slv_reg10(11),
      I2 => sel0(1),
      I3 => slv_reg9(11),
      I4 => sel0(0),
      I5 => slv_reg8(11),
      O => \axi_rdata[11]_i_6_n_0\
    );
\axi_rdata[11]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg15(11),
      I1 => slv_reg14(11),
      I2 => sel0(1),
      I3 => slv_reg13(11),
      I4 => sel0(0),
      I5 => slv_reg12(11),
      O => \axi_rdata[11]_i_7_n_0\
    );
\axi_rdata[12]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => dig6(0),
      I1 => dig2(0),
      I2 => sel0(1),
      I3 => slv_reg5(12),
      I4 => sel0(0),
      I5 => rgb2_greendc(4),
      O => \axi_rdata[12]_i_5_n_0\
    );
\axi_rdata[12]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg11(12),
      I1 => slv_reg10(12),
      I2 => sel0(1),
      I3 => slv_reg9(12),
      I4 => sel0(0),
      I5 => slv_reg8(12),
      O => \axi_rdata[12]_i_6_n_0\
    );
\axi_rdata[12]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg15(12),
      I1 => slv_reg14(12),
      I2 => sel0(1),
      I3 => slv_reg13(12),
      I4 => sel0(0),
      I5 => slv_reg12(12),
      O => \axi_rdata[12]_i_7_n_0\
    );
\axi_rdata[13]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => dig6(1),
      I1 => dig2(1),
      I2 => sel0(1),
      I3 => slv_reg5(13),
      I4 => sel0(0),
      I5 => rgb2_greendc(5),
      O => \axi_rdata[13]_i_5_n_0\
    );
\axi_rdata[13]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg11(13),
      I1 => slv_reg10(13),
      I2 => sel0(1),
      I3 => slv_reg9(13),
      I4 => sel0(0),
      I5 => slv_reg8(13),
      O => \axi_rdata[13]_i_6_n_0\
    );
\axi_rdata[13]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg15(13),
      I1 => slv_reg14(13),
      I2 => sel0(1),
      I3 => slv_reg13(13),
      I4 => sel0(0),
      I5 => slv_reg12(13),
      O => \axi_rdata[13]_i_7_n_0\
    );
\axi_rdata[14]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => dig6(2),
      I1 => dig2(2),
      I2 => sel0(1),
      I3 => slv_reg5(14),
      I4 => sel0(0),
      I5 => rgb2_greendc(6),
      O => \axi_rdata[14]_i_5_n_0\
    );
\axi_rdata[14]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg11(14),
      I1 => slv_reg10(14),
      I2 => sel0(1),
      I3 => slv_reg9(14),
      I4 => sel0(0),
      I5 => slv_reg8(14),
      O => \axi_rdata[14]_i_6_n_0\
    );
\axi_rdata[14]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg15(14),
      I1 => slv_reg14(14),
      I2 => sel0(1),
      I3 => slv_reg13(14),
      I4 => sel0(0),
      I5 => slv_reg12(14),
      O => \axi_rdata[14]_i_7_n_0\
    );
\axi_rdata[15]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => dig6(3),
      I1 => dig2(3),
      I2 => sel0(1),
      I3 => slv_reg5(15),
      I4 => sel0(0),
      I5 => rgb2_greendc(7),
      O => \axi_rdata[15]_i_5_n_0\
    );
\axi_rdata[15]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg11(15),
      I1 => slv_reg10(15),
      I2 => sel0(1),
      I3 => slv_reg9(15),
      I4 => sel0(0),
      I5 => slv_reg8(15),
      O => \axi_rdata[15]_i_6_n_0\
    );
\axi_rdata[15]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg15(15),
      I1 => slv_reg14(15),
      I2 => sel0(1),
      I3 => slv_reg13(15),
      I4 => sel0(0),
      I5 => slv_reg12(15),
      O => \axi_rdata[15]_i_7_n_0\
    );
\axi_rdata[16]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => dig6(4),
      I1 => dig2(4),
      I2 => sel0(1),
      I3 => slv_reg5(16),
      I4 => sel0(0),
      I5 => rgb2_reddc(0),
      O => \axi_rdata[16]_i_5_n_0\
    );
\axi_rdata[16]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg11(16),
      I1 => slv_reg10(16),
      I2 => sel0(1),
      I3 => slv_reg9(16),
      I4 => sel0(0),
      I5 => slv_reg8(16),
      O => \axi_rdata[16]_i_6_n_0\
    );
\axi_rdata[16]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg15(16),
      I1 => slv_reg14(16),
      I2 => sel0(1),
      I3 => slv_reg13(16),
      I4 => sel0(0),
      I5 => slv_reg12(16),
      O => \axi_rdata[16]_i_7_n_0\
    );
\axi_rdata[17]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg7_reg_n_0_[17]\,
      I1 => \slv_reg6_reg_n_0_[17]\,
      I2 => sel0(1),
      I3 => slv_reg5(17),
      I4 => sel0(0),
      I5 => rgb2_reddc(1),
      O => \axi_rdata[17]_i_5_n_0\
    );
\axi_rdata[17]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg11(17),
      I1 => slv_reg10(17),
      I2 => sel0(1),
      I3 => slv_reg9(17),
      I4 => sel0(0),
      I5 => slv_reg8(17),
      O => \axi_rdata[17]_i_6_n_0\
    );
\axi_rdata[17]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg15(17),
      I1 => slv_reg14(17),
      I2 => sel0(1),
      I3 => slv_reg13(17),
      I4 => sel0(0),
      I5 => slv_reg12(17),
      O => \axi_rdata[17]_i_7_n_0\
    );
\axi_rdata[18]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => dig7(0),
      I1 => dig3(0),
      I2 => sel0(1),
      I3 => slv_reg5(18),
      I4 => sel0(0),
      I5 => rgb2_reddc(2),
      O => \axi_rdata[18]_i_5_n_0\
    );
\axi_rdata[18]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg11(18),
      I1 => slv_reg10(18),
      I2 => sel0(1),
      I3 => slv_reg9(18),
      I4 => sel0(0),
      I5 => slv_reg8(18),
      O => \axi_rdata[18]_i_6_n_0\
    );
\axi_rdata[18]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg15(18),
      I1 => slv_reg14(18),
      I2 => sel0(1),
      I3 => slv_reg13(18),
      I4 => sel0(0),
      I5 => slv_reg12(18),
      O => \axi_rdata[18]_i_7_n_0\
    );
\axi_rdata[19]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => dig7(1),
      I1 => dig3(1),
      I2 => sel0(1),
      I3 => slv_reg5(19),
      I4 => sel0(0),
      I5 => rgb2_reddc(3),
      O => \axi_rdata[19]_i_5_n_0\
    );
\axi_rdata[19]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg11(19),
      I1 => slv_reg10(19),
      I2 => sel0(1),
      I3 => slv_reg9(19),
      I4 => sel0(0),
      I5 => slv_reg8(19),
      O => \axi_rdata[19]_i_6_n_0\
    );
\axi_rdata[19]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg15(19),
      I1 => slv_reg14(19),
      I2 => sel0(1),
      I3 => slv_reg13(19),
      I4 => sel0(0),
      I5 => slv_reg12(19),
      O => \axi_rdata[19]_i_7_n_0\
    );
\axi_rdata[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg7_reg_n_0_[1]\,
      I1 => \slv_reg6_reg_n_0_[1]\,
      I2 => sel0(1),
      I3 => \slv_reg5__0\(1),
      I4 => sel0(0),
      I5 => \slv_reg4_reg_n_0_[1]\,
      O => \axi_rdata[1]_i_5_n_0\
    );
\axi_rdata[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg11(1),
      I1 => slv_reg10(1),
      I2 => sel0(1),
      I3 => slv_reg9(1),
      I4 => sel0(0),
      I5 => slv_reg8(1),
      O => \axi_rdata[1]_i_6_n_0\
    );
\axi_rdata[1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg15(1),
      I1 => slv_reg14(1),
      I2 => sel0(1),
      I3 => slv_reg13(1),
      I4 => sel0(0),
      I5 => slv_reg12(1),
      O => \axi_rdata[1]_i_7_n_0\
    );
\axi_rdata[20]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => dig7(2),
      I1 => dig3(2),
      I2 => sel0(1),
      I3 => slv_reg5(20),
      I4 => sel0(0),
      I5 => rgb2_reddc(4),
      O => \axi_rdata[20]_i_5_n_0\
    );
\axi_rdata[20]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg11(20),
      I1 => slv_reg10(20),
      I2 => sel0(1),
      I3 => slv_reg9(20),
      I4 => sel0(0),
      I5 => slv_reg8(20),
      O => \axi_rdata[20]_i_6_n_0\
    );
\axi_rdata[20]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg15(20),
      I1 => slv_reg14(20),
      I2 => sel0(1),
      I3 => slv_reg13(20),
      I4 => sel0(0),
      I5 => slv_reg12(20),
      O => \axi_rdata[20]_i_7_n_0\
    );
\axi_rdata[21]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(21),
      I1 => rgb1_reddc(5),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg1(21),
      O => \axi_rdata[21]_i_4_n_0\
    );
\axi_rdata[21]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => dig7(3),
      I1 => dig3(3),
      I2 => sel0(1),
      I3 => slv_reg5(21),
      I4 => sel0(0),
      I5 => rgb2_reddc(5),
      O => \axi_rdata[21]_i_5_n_0\
    );
\axi_rdata[21]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg11(21),
      I1 => slv_reg10(21),
      I2 => sel0(1),
      I3 => slv_reg9(21),
      I4 => sel0(0),
      I5 => slv_reg8(21),
      O => \axi_rdata[21]_i_6_n_0\
    );
\axi_rdata[21]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg15(21),
      I1 => slv_reg14(21),
      I2 => sel0(1),
      I3 => slv_reg13(21),
      I4 => sel0(0),
      I5 => slv_reg12(21),
      O => \axi_rdata[21]_i_7_n_0\
    );
\axi_rdata[22]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(22),
      I1 => rgb1_reddc(6),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg1(22),
      O => \axi_rdata[22]_i_4_n_0\
    );
\axi_rdata[22]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => dig7(4),
      I1 => dig3(4),
      I2 => sel0(1),
      I3 => slv_reg5(22),
      I4 => sel0(0),
      I5 => rgb2_reddc(6),
      O => \axi_rdata[22]_i_5_n_0\
    );
\axi_rdata[22]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg11(22),
      I1 => slv_reg10(22),
      I2 => sel0(1),
      I3 => slv_reg9(22),
      I4 => sel0(0),
      I5 => slv_reg8(22),
      O => \axi_rdata[22]_i_6_n_0\
    );
\axi_rdata[22]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg15(22),
      I1 => slv_reg14(22),
      I2 => sel0(1),
      I3 => slv_reg13(22),
      I4 => sel0(0),
      I5 => slv_reg12(22),
      O => \axi_rdata[22]_i_7_n_0\
    );
\axi_rdata[23]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(23),
      I1 => rgb1_reddc(7),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg1(23),
      O => \axi_rdata[23]_i_4_n_0\
    );
\axi_rdata[23]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg7_reg_n_0_[23]\,
      I1 => \slv_reg6_reg_n_0_[23]\,
      I2 => sel0(1),
      I3 => slv_reg5(23),
      I4 => sel0(0),
      I5 => rgb2_reddc(7),
      O => \axi_rdata[23]_i_5_n_0\
    );
\axi_rdata[23]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg11(23),
      I1 => slv_reg10(23),
      I2 => sel0(1),
      I3 => slv_reg9(23),
      I4 => sel0(0),
      I5 => slv_reg8(23),
      O => \axi_rdata[23]_i_6_n_0\
    );
\axi_rdata[23]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg15(23),
      I1 => slv_reg14(23),
      I2 => sel0(1),
      I3 => slv_reg13(23),
      I4 => sel0(0),
      I5 => slv_reg12(23),
      O => \axi_rdata[23]_i_7_n_0\
    );
\axi_rdata[24]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(24),
      I1 => \slv_reg2_reg_n_0_[24]\,
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg1(24),
      O => \axi_rdata[24]_i_4_n_0\
    );
\axi_rdata[24]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => decpts(4),
      I1 => decpts(0),
      I2 => sel0(1),
      I3 => slv_reg5(24),
      I4 => sel0(0),
      I5 => \slv_reg4_reg_n_0_[24]\,
      O => \axi_rdata[24]_i_5_n_0\
    );
\axi_rdata[24]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg11(24),
      I1 => slv_reg10(24),
      I2 => sel0(1),
      I3 => slv_reg9(24),
      I4 => sel0(0),
      I5 => slv_reg8(24),
      O => \axi_rdata[24]_i_6_n_0\
    );
\axi_rdata[24]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg15(24),
      I1 => slv_reg14(24),
      I2 => sel0(1),
      I3 => slv_reg13(24),
      I4 => sel0(0),
      I5 => slv_reg12(24),
      O => \axi_rdata[24]_i_7_n_0\
    );
\axi_rdata[25]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(25),
      I1 => \slv_reg2_reg_n_0_[25]\,
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg1(25),
      O => \axi_rdata[25]_i_4_n_0\
    );
\axi_rdata[25]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => decpts(5),
      I1 => decpts(1),
      I2 => sel0(1),
      I3 => slv_reg5(25),
      I4 => sel0(0),
      I5 => \slv_reg4_reg_n_0_[25]\,
      O => \axi_rdata[25]_i_5_n_0\
    );
\axi_rdata[25]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg11(25),
      I1 => slv_reg10(25),
      I2 => sel0(1),
      I3 => slv_reg9(25),
      I4 => sel0(0),
      I5 => slv_reg8(25),
      O => \axi_rdata[25]_i_6_n_0\
    );
\axi_rdata[25]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg15(25),
      I1 => slv_reg14(25),
      I2 => sel0(1),
      I3 => slv_reg13(25),
      I4 => sel0(0),
      I5 => slv_reg12(25),
      O => \axi_rdata[25]_i_7_n_0\
    );
\axi_rdata[26]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(26),
      I1 => \slv_reg2_reg_n_0_[26]\,
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg1(26),
      O => \axi_rdata[26]_i_4_n_0\
    );
\axi_rdata[26]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => decpts(6),
      I1 => decpts(2),
      I2 => sel0(1),
      I3 => slv_reg5(26),
      I4 => sel0(0),
      I5 => \slv_reg4_reg_n_0_[26]\,
      O => \axi_rdata[26]_i_5_n_0\
    );
\axi_rdata[26]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg11(26),
      I1 => slv_reg10(26),
      I2 => sel0(1),
      I3 => slv_reg9(26),
      I4 => sel0(0),
      I5 => slv_reg8(26),
      O => \axi_rdata[26]_i_6_n_0\
    );
\axi_rdata[26]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg15(26),
      I1 => slv_reg14(26),
      I2 => sel0(1),
      I3 => slv_reg13(26),
      I4 => sel0(0),
      I5 => slv_reg12(26),
      O => \axi_rdata[26]_i_7_n_0\
    );
\axi_rdata[27]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(27),
      I1 => \slv_reg2_reg_n_0_[27]\,
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg1(27),
      O => \axi_rdata[27]_i_4_n_0\
    );
\axi_rdata[27]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => decpts(7),
      I1 => decpts(3),
      I2 => sel0(1),
      I3 => slv_reg5(27),
      I4 => sel0(0),
      I5 => \slv_reg4_reg_n_0_[27]\,
      O => \axi_rdata[27]_i_5_n_0\
    );
\axi_rdata[27]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg11(27),
      I1 => slv_reg10(27),
      I2 => sel0(1),
      I3 => slv_reg9(27),
      I4 => sel0(0),
      I5 => slv_reg8(27),
      O => \axi_rdata[27]_i_6_n_0\
    );
\axi_rdata[27]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg15(27),
      I1 => slv_reg14(27),
      I2 => sel0(1),
      I3 => slv_reg13(27),
      I4 => sel0(0),
      I5 => slv_reg12(27),
      O => \axi_rdata[27]_i_7_n_0\
    );
\axi_rdata[28]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(28),
      I1 => \slv_reg2_reg_n_0_[28]\,
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg1(28),
      O => \axi_rdata[28]_i_4_n_0\
    );
\axi_rdata[28]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg7_reg_n_0_[28]\,
      I1 => \slv_reg6_reg_n_0_[28]\,
      I2 => sel0(1),
      I3 => slv_reg5(28),
      I4 => sel0(0),
      I5 => \slv_reg4_reg_n_0_[28]\,
      O => \axi_rdata[28]_i_5_n_0\
    );
\axi_rdata[28]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg11(28),
      I1 => slv_reg10(28),
      I2 => sel0(1),
      I3 => slv_reg9(28),
      I4 => sel0(0),
      I5 => slv_reg8(28),
      O => \axi_rdata[28]_i_6_n_0\
    );
\axi_rdata[28]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg15(28),
      I1 => slv_reg14(28),
      I2 => sel0(1),
      I3 => slv_reg13(28),
      I4 => sel0(0),
      I5 => slv_reg12(28),
      O => \axi_rdata[28]_i_7_n_0\
    );
\axi_rdata[29]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(29),
      I1 => \slv_reg2_reg_n_0_[29]\,
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg1(29),
      O => \axi_rdata[29]_i_4_n_0\
    );
\axi_rdata[29]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg7_reg_n_0_[29]\,
      I1 => \slv_reg6_reg_n_0_[29]\,
      I2 => sel0(1),
      I3 => slv_reg5(29),
      I4 => sel0(0),
      I5 => \slv_reg4_reg_n_0_[29]\,
      O => \axi_rdata[29]_i_5_n_0\
    );
\axi_rdata[29]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg11(29),
      I1 => slv_reg10(29),
      I2 => sel0(1),
      I3 => slv_reg9(29),
      I4 => sel0(0),
      I5 => slv_reg8(29),
      O => \axi_rdata[29]_i_6_n_0\
    );
\axi_rdata[29]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg15(29),
      I1 => slv_reg14(29),
      I2 => sel0(1),
      I3 => slv_reg13(29),
      I4 => sel0(0),
      I5 => slv_reg12(29),
      O => \axi_rdata[29]_i_7_n_0\
    );
\axi_rdata[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg7_reg_n_0_[2]\,
      I1 => \slv_reg6_reg_n_0_[2]\,
      I2 => sel0(1),
      I3 => \slv_reg5__0\(2),
      I4 => sel0(0),
      I5 => \slv_reg4_reg_n_0_[2]\,
      O => \axi_rdata[2]_i_5_n_0\
    );
\axi_rdata[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg11(2),
      I1 => slv_reg10(2),
      I2 => sel0(1),
      I3 => slv_reg9(2),
      I4 => sel0(0),
      I5 => slv_reg8(2),
      O => \axi_rdata[2]_i_6_n_0\
    );
\axi_rdata[2]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg15(2),
      I1 => slv_reg14(2),
      I2 => sel0(1),
      I3 => slv_reg13(2),
      I4 => sel0(0),
      I5 => slv_reg12(2),
      O => \axi_rdata[2]_i_7_n_0\
    );
\axi_rdata[30]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(30),
      I1 => \slv_reg2_reg_n_0_[30]\,
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg1(30),
      O => \axi_rdata[30]_i_4_n_0\
    );
\axi_rdata[30]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg7_reg_n_0_[30]\,
      I1 => \slv_reg6_reg_n_0_[30]\,
      I2 => sel0(1),
      I3 => slv_reg5(30),
      I4 => sel0(0),
      I5 => \slv_reg4_reg_n_0_[30]\,
      O => \axi_rdata[30]_i_5_n_0\
    );
\axi_rdata[30]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg11(30),
      I1 => slv_reg10(30),
      I2 => sel0(1),
      I3 => slv_reg9(30),
      I4 => sel0(0),
      I5 => slv_reg8(30),
      O => \axi_rdata[30]_i_6_n_0\
    );
\axi_rdata[30]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg15(30),
      I1 => slv_reg14(30),
      I2 => sel0(1),
      I3 => slv_reg13(30),
      I4 => sel0(0),
      I5 => slv_reg12(30),
      O => \axi_rdata[30]_i_7_n_0\
    );
\axi_rdata[31]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(31),
      I1 => \slv_reg2_reg_n_0_[31]\,
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg1(31),
      O => \axi_rdata[31]_i_4_n_0\
    );
\axi_rdata[31]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg7_reg_n_0_[31]\,
      I1 => \slv_reg6_reg_n_0_[31]\,
      I2 => sel0(1),
      I3 => slv_reg5(31),
      I4 => sel0(0),
      I5 => \slv_reg4_reg_n_0_[31]\,
      O => \axi_rdata[31]_i_5_n_0\
    );
\axi_rdata[31]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg11(31),
      I1 => slv_reg10(31),
      I2 => sel0(1),
      I3 => slv_reg9(31),
      I4 => sel0(0),
      I5 => slv_reg8(31),
      O => \axi_rdata[31]_i_6_n_0\
    );
\axi_rdata[31]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg15(31),
      I1 => slv_reg14(31),
      I2 => sel0(1),
      I3 => slv_reg13(31),
      I4 => sel0(0),
      I5 => slv_reg12(31),
      O => \axi_rdata[31]_i_7_n_0\
    );
\axi_rdata[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg7_reg_n_0_[3]\,
      I1 => \slv_reg6_reg_n_0_[3]\,
      I2 => sel0(1),
      I3 => slv_reg5(3),
      I4 => sel0(0),
      I5 => \slv_reg4_reg_n_0_[3]\,
      O => \axi_rdata[3]_i_5_n_0\
    );
\axi_rdata[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg11(3),
      I1 => slv_reg10(3),
      I2 => sel0(1),
      I3 => slv_reg9(3),
      I4 => sel0(0),
      I5 => slv_reg8(3),
      O => \axi_rdata[3]_i_6_n_0\
    );
\axi_rdata[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg15(3),
      I1 => slv_reg14(3),
      I2 => sel0(1),
      I3 => slv_reg13(3),
      I4 => sel0(0),
      I5 => slv_reg12(3),
      O => \axi_rdata[3]_i_7_n_0\
    );
\axi_rdata[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg7_reg_n_0_[4]\,
      I1 => \slv_reg6_reg_n_0_[4]\,
      I2 => sel0(1),
      I3 => slv_reg5(4),
      I4 => sel0(0),
      I5 => \slv_reg4_reg_n_0_[4]\,
      O => \axi_rdata[4]_i_5_n_0\
    );
\axi_rdata[4]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg11(4),
      I1 => slv_reg10(4),
      I2 => sel0(1),
      I3 => slv_reg9(4),
      I4 => sel0(0),
      I5 => slv_reg8(4),
      O => \axi_rdata[4]_i_6_n_0\
    );
\axi_rdata[4]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg15(4),
      I1 => slv_reg14(4),
      I2 => sel0(1),
      I3 => slv_reg13(4),
      I4 => sel0(0),
      I5 => slv_reg12(4),
      O => \axi_rdata[4]_i_7_n_0\
    );
\axi_rdata[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg7_reg_n_0_[5]\,
      I1 => \slv_reg6_reg_n_0_[5]\,
      I2 => sel0(1),
      I3 => slv_reg5(5),
      I4 => sel0(0),
      I5 => \slv_reg4_reg_n_0_[5]\,
      O => \axi_rdata[5]_i_5_n_0\
    );
\axi_rdata[5]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg11(5),
      I1 => slv_reg10(5),
      I2 => sel0(1),
      I3 => slv_reg9(5),
      I4 => sel0(0),
      I5 => slv_reg8(5),
      O => \axi_rdata[5]_i_6_n_0\
    );
\axi_rdata[5]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg15(5),
      I1 => slv_reg14(5),
      I2 => sel0(1),
      I3 => slv_reg13(5),
      I4 => sel0(0),
      I5 => slv_reg12(5),
      O => \axi_rdata[5]_i_7_n_0\
    );
\axi_rdata[6]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => dig5(0),
      I1 => dig1(0),
      I2 => sel0(1),
      I3 => slv_reg5(6),
      I4 => sel0(0),
      I5 => \slv_reg4_reg_n_0_[6]\,
      O => \axi_rdata[6]_i_5_n_0\
    );
\axi_rdata[6]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg11(6),
      I1 => slv_reg10(6),
      I2 => sel0(1),
      I3 => slv_reg9(6),
      I4 => sel0(0),
      I5 => slv_reg8(6),
      O => \axi_rdata[6]_i_6_n_0\
    );
\axi_rdata[6]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg15(6),
      I1 => slv_reg14(6),
      I2 => sel0(1),
      I3 => slv_reg13(6),
      I4 => sel0(0),
      I5 => slv_reg12(6),
      O => \axi_rdata[6]_i_7_n_0\
    );
\axi_rdata[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => dig5(1),
      I1 => dig1(1),
      I2 => sel0(1),
      I3 => slv_reg5(7),
      I4 => sel0(0),
      I5 => \slv_reg4_reg_n_0_[7]\,
      O => \axi_rdata[7]_i_5_n_0\
    );
\axi_rdata[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg11(7),
      I1 => slv_reg10(7),
      I2 => sel0(1),
      I3 => slv_reg9(7),
      I4 => sel0(0),
      I5 => slv_reg8(7),
      O => \axi_rdata[7]_i_6_n_0\
    );
\axi_rdata[7]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg15(7),
      I1 => slv_reg14(7),
      I2 => sel0(1),
      I3 => slv_reg13(7),
      I4 => sel0(0),
      I5 => slv_reg12(7),
      O => \axi_rdata[7]_i_7_n_0\
    );
\axi_rdata[8]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => dig5(2),
      I1 => dig1(2),
      I2 => sel0(1),
      I3 => slv_reg5(8),
      I4 => sel0(0),
      I5 => rgb2_greendc(0),
      O => \axi_rdata[8]_i_5_n_0\
    );
\axi_rdata[8]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg11(8),
      I1 => slv_reg10(8),
      I2 => sel0(1),
      I3 => slv_reg9(8),
      I4 => sel0(0),
      I5 => slv_reg8(8),
      O => \axi_rdata[8]_i_6_n_0\
    );
\axi_rdata[8]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg15(8),
      I1 => slv_reg14(8),
      I2 => sel0(1),
      I3 => slv_reg13(8),
      I4 => sel0(0),
      I5 => slv_reg12(8),
      O => \axi_rdata[8]_i_7_n_0\
    );
\axi_rdata[9]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => dig5(3),
      I1 => dig1(3),
      I2 => sel0(1),
      I3 => slv_reg5(9),
      I4 => sel0(0),
      I5 => rgb2_greendc(1),
      O => \axi_rdata[9]_i_5_n_0\
    );
\axi_rdata[9]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg11(9),
      I1 => slv_reg10(9),
      I2 => sel0(1),
      I3 => slv_reg9(9),
      I4 => sel0(0),
      I5 => slv_reg8(9),
      O => \axi_rdata[9]_i_6_n_0\
    );
\axi_rdata[9]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg15(9),
      I1 => slv_reg14(9),
      I2 => sel0(1),
      I3 => slv_reg13(9),
      I4 => sel0(0),
      I5 => slv_reg12(9),
      O => \axi_rdata[9]_i_7_n_0\
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(0),
      Q => s00_axi_rdata(0),
      R => RGB1B_n_0
    );
\axi_rdata_reg[0]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[0]_i_6_n_0\,
      I1 => \axi_rdata[0]_i_7_n_0\,
      O => \axi_rdata_reg[0]_i_3_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(10),
      Q => s00_axi_rdata(10),
      R => RGB1B_n_0
    );
\axi_rdata_reg[10]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[10]_i_6_n_0\,
      I1 => \axi_rdata[10]_i_7_n_0\,
      O => \axi_rdata_reg[10]_i_3_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(11),
      Q => s00_axi_rdata(11),
      R => RGB1B_n_0
    );
\axi_rdata_reg[11]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[11]_i_6_n_0\,
      I1 => \axi_rdata[11]_i_7_n_0\,
      O => \axi_rdata_reg[11]_i_3_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(12),
      Q => s00_axi_rdata(12),
      R => RGB1B_n_0
    );
\axi_rdata_reg[12]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[12]_i_6_n_0\,
      I1 => \axi_rdata[12]_i_7_n_0\,
      O => \axi_rdata_reg[12]_i_3_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(13),
      Q => s00_axi_rdata(13),
      R => RGB1B_n_0
    );
\axi_rdata_reg[13]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[13]_i_6_n_0\,
      I1 => \axi_rdata[13]_i_7_n_0\,
      O => \axi_rdata_reg[13]_i_3_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(14),
      Q => s00_axi_rdata(14),
      R => RGB1B_n_0
    );
\axi_rdata_reg[14]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[14]_i_6_n_0\,
      I1 => \axi_rdata[14]_i_7_n_0\,
      O => \axi_rdata_reg[14]_i_3_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(15),
      Q => s00_axi_rdata(15),
      R => RGB1B_n_0
    );
\axi_rdata_reg[15]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[15]_i_6_n_0\,
      I1 => \axi_rdata[15]_i_7_n_0\,
      O => \axi_rdata_reg[15]_i_3_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(16),
      Q => s00_axi_rdata(16),
      R => RGB1B_n_0
    );
\axi_rdata_reg[16]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[16]_i_6_n_0\,
      I1 => \axi_rdata[16]_i_7_n_0\,
      O => \axi_rdata_reg[16]_i_3_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(17),
      Q => s00_axi_rdata(17),
      R => RGB1B_n_0
    );
\axi_rdata_reg[17]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[17]_i_6_n_0\,
      I1 => \axi_rdata[17]_i_7_n_0\,
      O => \axi_rdata_reg[17]_i_3_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(18),
      Q => s00_axi_rdata(18),
      R => RGB1B_n_0
    );
\axi_rdata_reg[18]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[18]_i_6_n_0\,
      I1 => \axi_rdata[18]_i_7_n_0\,
      O => \axi_rdata_reg[18]_i_3_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(19),
      Q => s00_axi_rdata(19),
      R => RGB1B_n_0
    );
\axi_rdata_reg[19]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[19]_i_6_n_0\,
      I1 => \axi_rdata[19]_i_7_n_0\,
      O => \axi_rdata_reg[19]_i_3_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(1),
      Q => s00_axi_rdata(1),
      R => RGB1B_n_0
    );
\axi_rdata_reg[1]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[1]_i_6_n_0\,
      I1 => \axi_rdata[1]_i_7_n_0\,
      O => \axi_rdata_reg[1]_i_3_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(20),
      Q => s00_axi_rdata(20),
      R => RGB1B_n_0
    );
\axi_rdata_reg[20]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[20]_i_6_n_0\,
      I1 => \axi_rdata[20]_i_7_n_0\,
      O => \axi_rdata_reg[20]_i_3_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(21),
      Q => s00_axi_rdata(21),
      R => RGB1B_n_0
    );
\axi_rdata_reg[21]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \axi_rdata_reg[21]_i_2_n_0\,
      I1 => \axi_rdata_reg[21]_i_3_n_0\,
      O => reg_data_out(21),
      S => sel0(3)
    );
\axi_rdata_reg[21]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[21]_i_4_n_0\,
      I1 => \axi_rdata[21]_i_5_n_0\,
      O => \axi_rdata_reg[21]_i_2_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[21]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[21]_i_6_n_0\,
      I1 => \axi_rdata[21]_i_7_n_0\,
      O => \axi_rdata_reg[21]_i_3_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(22),
      Q => s00_axi_rdata(22),
      R => RGB1B_n_0
    );
\axi_rdata_reg[22]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \axi_rdata_reg[22]_i_2_n_0\,
      I1 => \axi_rdata_reg[22]_i_3_n_0\,
      O => reg_data_out(22),
      S => sel0(3)
    );
\axi_rdata_reg[22]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[22]_i_4_n_0\,
      I1 => \axi_rdata[22]_i_5_n_0\,
      O => \axi_rdata_reg[22]_i_2_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[22]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[22]_i_6_n_0\,
      I1 => \axi_rdata[22]_i_7_n_0\,
      O => \axi_rdata_reg[22]_i_3_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(23),
      Q => s00_axi_rdata(23),
      R => RGB1B_n_0
    );
\axi_rdata_reg[23]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \axi_rdata_reg[23]_i_2_n_0\,
      I1 => \axi_rdata_reg[23]_i_3_n_0\,
      O => reg_data_out(23),
      S => sel0(3)
    );
\axi_rdata_reg[23]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[23]_i_4_n_0\,
      I1 => \axi_rdata[23]_i_5_n_0\,
      O => \axi_rdata_reg[23]_i_2_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[23]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[23]_i_6_n_0\,
      I1 => \axi_rdata[23]_i_7_n_0\,
      O => \axi_rdata_reg[23]_i_3_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(24),
      Q => s00_axi_rdata(24),
      R => RGB1B_n_0
    );
\axi_rdata_reg[24]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \axi_rdata_reg[24]_i_2_n_0\,
      I1 => \axi_rdata_reg[24]_i_3_n_0\,
      O => reg_data_out(24),
      S => sel0(3)
    );
\axi_rdata_reg[24]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[24]_i_4_n_0\,
      I1 => \axi_rdata[24]_i_5_n_0\,
      O => \axi_rdata_reg[24]_i_2_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[24]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[24]_i_6_n_0\,
      I1 => \axi_rdata[24]_i_7_n_0\,
      O => \axi_rdata_reg[24]_i_3_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(25),
      Q => s00_axi_rdata(25),
      R => RGB1B_n_0
    );
\axi_rdata_reg[25]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \axi_rdata_reg[25]_i_2_n_0\,
      I1 => \axi_rdata_reg[25]_i_3_n_0\,
      O => reg_data_out(25),
      S => sel0(3)
    );
\axi_rdata_reg[25]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[25]_i_4_n_0\,
      I1 => \axi_rdata[25]_i_5_n_0\,
      O => \axi_rdata_reg[25]_i_2_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[25]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[25]_i_6_n_0\,
      I1 => \axi_rdata[25]_i_7_n_0\,
      O => \axi_rdata_reg[25]_i_3_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(26),
      Q => s00_axi_rdata(26),
      R => RGB1B_n_0
    );
\axi_rdata_reg[26]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \axi_rdata_reg[26]_i_2_n_0\,
      I1 => \axi_rdata_reg[26]_i_3_n_0\,
      O => reg_data_out(26),
      S => sel0(3)
    );
\axi_rdata_reg[26]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[26]_i_4_n_0\,
      I1 => \axi_rdata[26]_i_5_n_0\,
      O => \axi_rdata_reg[26]_i_2_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[26]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[26]_i_6_n_0\,
      I1 => \axi_rdata[26]_i_7_n_0\,
      O => \axi_rdata_reg[26]_i_3_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(27),
      Q => s00_axi_rdata(27),
      R => RGB1B_n_0
    );
\axi_rdata_reg[27]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \axi_rdata_reg[27]_i_2_n_0\,
      I1 => \axi_rdata_reg[27]_i_3_n_0\,
      O => reg_data_out(27),
      S => sel0(3)
    );
\axi_rdata_reg[27]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[27]_i_4_n_0\,
      I1 => \axi_rdata[27]_i_5_n_0\,
      O => \axi_rdata_reg[27]_i_2_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[27]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[27]_i_6_n_0\,
      I1 => \axi_rdata[27]_i_7_n_0\,
      O => \axi_rdata_reg[27]_i_3_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(28),
      Q => s00_axi_rdata(28),
      R => RGB1B_n_0
    );
\axi_rdata_reg[28]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \axi_rdata_reg[28]_i_2_n_0\,
      I1 => \axi_rdata_reg[28]_i_3_n_0\,
      O => reg_data_out(28),
      S => sel0(3)
    );
\axi_rdata_reg[28]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[28]_i_4_n_0\,
      I1 => \axi_rdata[28]_i_5_n_0\,
      O => \axi_rdata_reg[28]_i_2_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[28]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[28]_i_6_n_0\,
      I1 => \axi_rdata[28]_i_7_n_0\,
      O => \axi_rdata_reg[28]_i_3_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(29),
      Q => s00_axi_rdata(29),
      R => RGB1B_n_0
    );
\axi_rdata_reg[29]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \axi_rdata_reg[29]_i_2_n_0\,
      I1 => \axi_rdata_reg[29]_i_3_n_0\,
      O => reg_data_out(29),
      S => sel0(3)
    );
\axi_rdata_reg[29]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[29]_i_4_n_0\,
      I1 => \axi_rdata[29]_i_5_n_0\,
      O => \axi_rdata_reg[29]_i_2_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[29]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[29]_i_6_n_0\,
      I1 => \axi_rdata[29]_i_7_n_0\,
      O => \axi_rdata_reg[29]_i_3_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(2),
      Q => s00_axi_rdata(2),
      R => RGB1B_n_0
    );
\axi_rdata_reg[2]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[2]_i_6_n_0\,
      I1 => \axi_rdata[2]_i_7_n_0\,
      O => \axi_rdata_reg[2]_i_3_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(30),
      Q => s00_axi_rdata(30),
      R => RGB1B_n_0
    );
\axi_rdata_reg[30]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \axi_rdata_reg[30]_i_2_n_0\,
      I1 => \axi_rdata_reg[30]_i_3_n_0\,
      O => reg_data_out(30),
      S => sel0(3)
    );
\axi_rdata_reg[30]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[30]_i_4_n_0\,
      I1 => \axi_rdata[30]_i_5_n_0\,
      O => \axi_rdata_reg[30]_i_2_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[30]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[30]_i_6_n_0\,
      I1 => \axi_rdata[30]_i_7_n_0\,
      O => \axi_rdata_reg[30]_i_3_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(31),
      Q => s00_axi_rdata(31),
      R => RGB1B_n_0
    );
\axi_rdata_reg[31]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \axi_rdata_reg[31]_i_2_n_0\,
      I1 => \axi_rdata_reg[31]_i_3_n_0\,
      O => reg_data_out(31),
      S => sel0(3)
    );
\axi_rdata_reg[31]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[31]_i_4_n_0\,
      I1 => \axi_rdata[31]_i_5_n_0\,
      O => \axi_rdata_reg[31]_i_2_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[31]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[31]_i_6_n_0\,
      I1 => \axi_rdata[31]_i_7_n_0\,
      O => \axi_rdata_reg[31]_i_3_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(3),
      Q => s00_axi_rdata(3),
      R => RGB1B_n_0
    );
\axi_rdata_reg[3]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[3]_i_6_n_0\,
      I1 => \axi_rdata[3]_i_7_n_0\,
      O => \axi_rdata_reg[3]_i_3_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(4),
      Q => s00_axi_rdata(4),
      R => RGB1B_n_0
    );
\axi_rdata_reg[4]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[4]_i_6_n_0\,
      I1 => \axi_rdata[4]_i_7_n_0\,
      O => \axi_rdata_reg[4]_i_3_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(5),
      Q => s00_axi_rdata(5),
      R => RGB1B_n_0
    );
\axi_rdata_reg[5]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[5]_i_6_n_0\,
      I1 => \axi_rdata[5]_i_7_n_0\,
      O => \axi_rdata_reg[5]_i_3_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(6),
      Q => s00_axi_rdata(6),
      R => RGB1B_n_0
    );
\axi_rdata_reg[6]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[6]_i_6_n_0\,
      I1 => \axi_rdata[6]_i_7_n_0\,
      O => \axi_rdata_reg[6]_i_3_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(7),
      Q => s00_axi_rdata(7),
      R => RGB1B_n_0
    );
\axi_rdata_reg[7]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[7]_i_6_n_0\,
      I1 => \axi_rdata[7]_i_7_n_0\,
      O => \axi_rdata_reg[7]_i_3_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(8),
      Q => s00_axi_rdata(8),
      R => RGB1B_n_0
    );
\axi_rdata_reg[8]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[8]_i_6_n_0\,
      I1 => \axi_rdata[8]_i_7_n_0\,
      O => \axi_rdata_reg[8]_i_3_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(9),
      Q => s00_axi_rdata(9),
      R => RGB1B_n_0
    );
\axi_rdata_reg[9]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[9]_i_6_n_0\,
      I1 => \axi_rdata[9]_i_7_n_0\,
      O => \axi_rdata_reg[9]_i_3_n_0\,
      S => sel0(2)
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_rvalid_reg_0,
      Q => \^s00_axi_rvalid\,
      R => RGB1B_n_0
    );
axi_wready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => s00_axi_wvalid,
      I2 => \^axi_wready_reg_0\,
      I3 => \^aw_en_reg_0\,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready0,
      Q => \^axi_wready_reg_0\,
      R => RGB1B_n_0
    );
\slv_reg10[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in_0(3),
      I2 => s00_axi_wstrb(1),
      I3 => p_0_in_0(1),
      I4 => p_0_in_0(0),
      I5 => p_0_in_0(2),
      O => \slv_reg10[15]_i_1_n_0\
    );
\slv_reg10[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in_0(3),
      I2 => s00_axi_wstrb(2),
      I3 => p_0_in_0(1),
      I4 => p_0_in_0(0),
      I5 => p_0_in_0(2),
      O => \slv_reg10[23]_i_1_n_0\
    );
\slv_reg10[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in_0(3),
      I2 => s00_axi_wstrb(3),
      I3 => p_0_in_0(1),
      I4 => p_0_in_0(0),
      I5 => p_0_in_0(2),
      O => \slv_reg10[31]_i_1_n_0\
    );
\slv_reg10[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in_0(3),
      I2 => s00_axi_wstrb(0),
      I3 => p_0_in_0(1),
      I4 => p_0_in_0(0),
      I5 => p_0_in_0(2),
      O => \slv_reg10[7]_i_1_n_0\
    );
\slv_reg10_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg10(0),
      R => RGB1B_n_0
    );
\slv_reg10_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg10(10),
      R => RGB1B_n_0
    );
\slv_reg10_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg10(11),
      R => RGB1B_n_0
    );
\slv_reg10_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg10(12),
      R => RGB1B_n_0
    );
\slv_reg10_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg10(13),
      R => RGB1B_n_0
    );
\slv_reg10_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg10(14),
      R => RGB1B_n_0
    );
\slv_reg10_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg10(15),
      R => RGB1B_n_0
    );
\slv_reg10_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg10(16),
      R => RGB1B_n_0
    );
\slv_reg10_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg10(17),
      R => RGB1B_n_0
    );
\slv_reg10_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg10(18),
      R => RGB1B_n_0
    );
\slv_reg10_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg10(19),
      R => RGB1B_n_0
    );
\slv_reg10_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg10(1),
      R => RGB1B_n_0
    );
\slv_reg10_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg10(20),
      R => RGB1B_n_0
    );
\slv_reg10_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg10(21),
      R => RGB1B_n_0
    );
\slv_reg10_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg10(22),
      R => RGB1B_n_0
    );
\slv_reg10_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg10(23),
      R => RGB1B_n_0
    );
\slv_reg10_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg10(24),
      R => RGB1B_n_0
    );
\slv_reg10_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg10(25),
      R => RGB1B_n_0
    );
\slv_reg10_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg10(26),
      R => RGB1B_n_0
    );
\slv_reg10_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg10(27),
      R => RGB1B_n_0
    );
\slv_reg10_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg10(28),
      R => RGB1B_n_0
    );
\slv_reg10_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg10(29),
      R => RGB1B_n_0
    );
\slv_reg10_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg10(2),
      R => RGB1B_n_0
    );
\slv_reg10_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg10(30),
      R => RGB1B_n_0
    );
\slv_reg10_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg10(31),
      R => RGB1B_n_0
    );
\slv_reg10_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg10(3),
      R => RGB1B_n_0
    );
\slv_reg10_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg10(4),
      R => RGB1B_n_0
    );
\slv_reg10_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg10(5),
      R => RGB1B_n_0
    );
\slv_reg10_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg10(6),
      R => RGB1B_n_0
    );
\slv_reg10_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg10(7),
      R => RGB1B_n_0
    );
\slv_reg10_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg10(8),
      R => RGB1B_n_0
    );
\slv_reg10_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg10(9),
      R => RGB1B_n_0
    );
\slv_reg11[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(1),
      I2 => p_0_in_0(3),
      I3 => p_0_in_0(0),
      I4 => p_0_in_0(1),
      I5 => p_0_in_0(2),
      O => \slv_reg11[15]_i_1_n_0\
    );
\slv_reg11[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(2),
      I2 => p_0_in_0(3),
      I3 => p_0_in_0(0),
      I4 => p_0_in_0(1),
      I5 => p_0_in_0(2),
      O => \slv_reg11[23]_i_1_n_0\
    );
\slv_reg11[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(3),
      I2 => p_0_in_0(3),
      I3 => p_0_in_0(0),
      I4 => p_0_in_0(1),
      I5 => p_0_in_0(2),
      O => \slv_reg11[31]_i_1_n_0\
    );
\slv_reg11[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(0),
      I2 => p_0_in_0(3),
      I3 => p_0_in_0(0),
      I4 => p_0_in_0(1),
      I5 => p_0_in_0(2),
      O => \slv_reg11[7]_i_1_n_0\
    );
\slv_reg11_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg11(0),
      R => RGB1B_n_0
    );
\slv_reg11_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg11(10),
      R => RGB1B_n_0
    );
\slv_reg11_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg11(11),
      R => RGB1B_n_0
    );
\slv_reg11_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg11(12),
      R => RGB1B_n_0
    );
\slv_reg11_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg11(13),
      R => RGB1B_n_0
    );
\slv_reg11_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg11(14),
      R => RGB1B_n_0
    );
\slv_reg11_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg11(15),
      R => RGB1B_n_0
    );
\slv_reg11_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg11(16),
      R => RGB1B_n_0
    );
\slv_reg11_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg11(17),
      R => RGB1B_n_0
    );
\slv_reg11_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg11(18),
      R => RGB1B_n_0
    );
\slv_reg11_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg11(19),
      R => RGB1B_n_0
    );
\slv_reg11_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg11(1),
      R => RGB1B_n_0
    );
\slv_reg11_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg11(20),
      R => RGB1B_n_0
    );
\slv_reg11_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg11(21),
      R => RGB1B_n_0
    );
\slv_reg11_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg11(22),
      R => RGB1B_n_0
    );
\slv_reg11_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg11(23),
      R => RGB1B_n_0
    );
\slv_reg11_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg11(24),
      R => RGB1B_n_0
    );
\slv_reg11_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg11(25),
      R => RGB1B_n_0
    );
\slv_reg11_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg11(26),
      R => RGB1B_n_0
    );
\slv_reg11_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg11(27),
      R => RGB1B_n_0
    );
\slv_reg11_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg11(28),
      R => RGB1B_n_0
    );
\slv_reg11_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg11(29),
      R => RGB1B_n_0
    );
\slv_reg11_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg11(2),
      R => RGB1B_n_0
    );
\slv_reg11_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg11(30),
      R => RGB1B_n_0
    );
\slv_reg11_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg11(31),
      R => RGB1B_n_0
    );
\slv_reg11_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg11(3),
      R => RGB1B_n_0
    );
\slv_reg11_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg11(4),
      R => RGB1B_n_0
    );
\slv_reg11_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg11(5),
      R => RGB1B_n_0
    );
\slv_reg11_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg11(6),
      R => RGB1B_n_0
    );
\slv_reg11_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg11(7),
      R => RGB1B_n_0
    );
\slv_reg11_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg11(8),
      R => RGB1B_n_0
    );
\slv_reg11_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg11(9),
      R => RGB1B_n_0
    );
\slv_reg12[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in_0(3),
      I2 => s00_axi_wstrb(1),
      I3 => p_0_in_0(2),
      I4 => p_0_in_0(0),
      I5 => p_0_in_0(1),
      O => \slv_reg12[15]_i_1_n_0\
    );
\slv_reg12[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in_0(3),
      I2 => s00_axi_wstrb(2),
      I3 => p_0_in_0(2),
      I4 => p_0_in_0(0),
      I5 => p_0_in_0(1),
      O => \slv_reg12[23]_i_1_n_0\
    );
\slv_reg12[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in_0(3),
      I2 => s00_axi_wstrb(3),
      I3 => p_0_in_0(2),
      I4 => p_0_in_0(0),
      I5 => p_0_in_0(1),
      O => \slv_reg12[31]_i_1_n_0\
    );
\slv_reg12[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in_0(3),
      I2 => s00_axi_wstrb(0),
      I3 => p_0_in_0(2),
      I4 => p_0_in_0(0),
      I5 => p_0_in_0(1),
      O => \slv_reg12[7]_i_1_n_0\
    );
\slv_reg12_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg12[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg12(0),
      R => RGB1B_n_0
    );
\slv_reg12_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg12[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg12(10),
      R => RGB1B_n_0
    );
\slv_reg12_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg12[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg12(11),
      R => RGB1B_n_0
    );
\slv_reg12_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg12[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg12(12),
      R => RGB1B_n_0
    );
\slv_reg12_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg12[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg12(13),
      R => RGB1B_n_0
    );
\slv_reg12_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg12[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg12(14),
      R => RGB1B_n_0
    );
\slv_reg12_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg12[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg12(15),
      R => RGB1B_n_0
    );
\slv_reg12_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg12[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg12(16),
      R => RGB1B_n_0
    );
\slv_reg12_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg12[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg12(17),
      R => RGB1B_n_0
    );
\slv_reg12_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg12[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg12(18),
      R => RGB1B_n_0
    );
\slv_reg12_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg12[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg12(19),
      R => RGB1B_n_0
    );
\slv_reg12_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg12[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg12(1),
      R => RGB1B_n_0
    );
\slv_reg12_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg12[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg12(20),
      R => RGB1B_n_0
    );
\slv_reg12_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg12[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg12(21),
      R => RGB1B_n_0
    );
\slv_reg12_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg12[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg12(22),
      R => RGB1B_n_0
    );
\slv_reg12_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg12[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg12(23),
      R => RGB1B_n_0
    );
\slv_reg12_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg12[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg12(24),
      R => RGB1B_n_0
    );
\slv_reg12_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg12[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg12(25),
      R => RGB1B_n_0
    );
\slv_reg12_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg12[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg12(26),
      R => RGB1B_n_0
    );
\slv_reg12_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg12[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg12(27),
      R => RGB1B_n_0
    );
\slv_reg12_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg12[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg12(28),
      R => RGB1B_n_0
    );
\slv_reg12_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg12[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg12(29),
      R => RGB1B_n_0
    );
\slv_reg12_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg12[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg12(2),
      R => RGB1B_n_0
    );
\slv_reg12_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg12[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg12(30),
      R => RGB1B_n_0
    );
\slv_reg12_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg12[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg12(31),
      R => RGB1B_n_0
    );
\slv_reg12_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg12[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg12(3),
      R => RGB1B_n_0
    );
\slv_reg12_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg12[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg12(4),
      R => RGB1B_n_0
    );
\slv_reg12_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg12[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg12(5),
      R => RGB1B_n_0
    );
\slv_reg12_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg12[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg12(6),
      R => RGB1B_n_0
    );
\slv_reg12_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg12[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg12(7),
      R => RGB1B_n_0
    );
\slv_reg12_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg12[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg12(8),
      R => RGB1B_n_0
    );
\slv_reg12_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg12[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg12(9),
      R => RGB1B_n_0
    );
\slv_reg13[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in_0(2),
      I2 => p_0_in_0(3),
      I3 => p_0_in_0(0),
      I4 => s00_axi_wstrb(1),
      I5 => p_0_in_0(1),
      O => \slv_reg13[15]_i_1_n_0\
    );
\slv_reg13[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in_0(2),
      I2 => p_0_in_0(3),
      I3 => p_0_in_0(0),
      I4 => s00_axi_wstrb(2),
      I5 => p_0_in_0(1),
      O => \slv_reg13[23]_i_1_n_0\
    );
\slv_reg13[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in_0(2),
      I2 => p_0_in_0(3),
      I3 => p_0_in_0(0),
      I4 => s00_axi_wstrb(3),
      I5 => p_0_in_0(1),
      O => \slv_reg13[31]_i_1_n_0\
    );
\slv_reg13[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in_0(2),
      I2 => p_0_in_0(3),
      I3 => p_0_in_0(0),
      I4 => s00_axi_wstrb(0),
      I5 => p_0_in_0(1),
      O => \slv_reg13[7]_i_1_n_0\
    );
\slv_reg13_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg13[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg13(0),
      R => RGB1B_n_0
    );
\slv_reg13_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg13[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg13(10),
      R => RGB1B_n_0
    );
\slv_reg13_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg13[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg13(11),
      R => RGB1B_n_0
    );
\slv_reg13_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg13[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg13(12),
      R => RGB1B_n_0
    );
\slv_reg13_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg13[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg13(13),
      R => RGB1B_n_0
    );
\slv_reg13_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg13[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg13(14),
      R => RGB1B_n_0
    );
\slv_reg13_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg13[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg13(15),
      R => RGB1B_n_0
    );
\slv_reg13_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg13[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg13(16),
      R => RGB1B_n_0
    );
\slv_reg13_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg13[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg13(17),
      R => RGB1B_n_0
    );
\slv_reg13_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg13[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg13(18),
      R => RGB1B_n_0
    );
\slv_reg13_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg13[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg13(19),
      R => RGB1B_n_0
    );
\slv_reg13_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg13[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg13(1),
      R => RGB1B_n_0
    );
\slv_reg13_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg13[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg13(20),
      R => RGB1B_n_0
    );
\slv_reg13_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg13[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg13(21),
      R => RGB1B_n_0
    );
\slv_reg13_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg13[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg13(22),
      R => RGB1B_n_0
    );
\slv_reg13_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg13[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg13(23),
      R => RGB1B_n_0
    );
\slv_reg13_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg13[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg13(24),
      R => RGB1B_n_0
    );
\slv_reg13_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg13[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg13(25),
      R => RGB1B_n_0
    );
\slv_reg13_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg13[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg13(26),
      R => RGB1B_n_0
    );
\slv_reg13_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg13[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg13(27),
      R => RGB1B_n_0
    );
\slv_reg13_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg13[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg13(28),
      R => RGB1B_n_0
    );
\slv_reg13_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg13[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg13(29),
      R => RGB1B_n_0
    );
\slv_reg13_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg13[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg13(2),
      R => RGB1B_n_0
    );
\slv_reg13_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg13[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg13(30),
      R => RGB1B_n_0
    );
\slv_reg13_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg13[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg13(31),
      R => RGB1B_n_0
    );
\slv_reg13_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg13[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg13(3),
      R => RGB1B_n_0
    );
\slv_reg13_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg13[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg13(4),
      R => RGB1B_n_0
    );
\slv_reg13_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg13[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg13(5),
      R => RGB1B_n_0
    );
\slv_reg13_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg13[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg13(6),
      R => RGB1B_n_0
    );
\slv_reg13_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg13[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg13(7),
      R => RGB1B_n_0
    );
\slv_reg13_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg13[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg13(8),
      R => RGB1B_n_0
    );
\slv_reg13_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg13[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg13(9),
      R => RGB1B_n_0
    );
\slv_reg14[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in_0(2),
      I2 => p_0_in_0(3),
      I3 => s00_axi_wstrb(1),
      I4 => p_0_in_0(1),
      I5 => p_0_in_0(0),
      O => \slv_reg14[15]_i_1_n_0\
    );
\slv_reg14[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in_0(2),
      I2 => p_0_in_0(3),
      I3 => s00_axi_wstrb(2),
      I4 => p_0_in_0(1),
      I5 => p_0_in_0(0),
      O => \slv_reg14[23]_i_1_n_0\
    );
\slv_reg14[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in_0(2),
      I2 => p_0_in_0(3),
      I3 => s00_axi_wstrb(3),
      I4 => p_0_in_0(1),
      I5 => p_0_in_0(0),
      O => \slv_reg14[31]_i_1_n_0\
    );
\slv_reg14[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in_0(2),
      I2 => p_0_in_0(3),
      I3 => s00_axi_wstrb(0),
      I4 => p_0_in_0(1),
      I5 => p_0_in_0(0),
      O => \slv_reg14[7]_i_1_n_0\
    );
\slv_reg14_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg14[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg14(0),
      R => RGB1B_n_0
    );
\slv_reg14_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg14[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg14(10),
      R => RGB1B_n_0
    );
\slv_reg14_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg14[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg14(11),
      R => RGB1B_n_0
    );
\slv_reg14_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg14[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg14(12),
      R => RGB1B_n_0
    );
\slv_reg14_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg14[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg14(13),
      R => RGB1B_n_0
    );
\slv_reg14_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg14[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg14(14),
      R => RGB1B_n_0
    );
\slv_reg14_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg14[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg14(15),
      R => RGB1B_n_0
    );
\slv_reg14_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg14[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg14(16),
      R => RGB1B_n_0
    );
\slv_reg14_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg14[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg14(17),
      R => RGB1B_n_0
    );
\slv_reg14_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg14[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg14(18),
      R => RGB1B_n_0
    );
\slv_reg14_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg14[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg14(19),
      R => RGB1B_n_0
    );
\slv_reg14_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg14[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg14(1),
      R => RGB1B_n_0
    );
\slv_reg14_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg14[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg14(20),
      R => RGB1B_n_0
    );
\slv_reg14_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg14[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg14(21),
      R => RGB1B_n_0
    );
\slv_reg14_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg14[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg14(22),
      R => RGB1B_n_0
    );
\slv_reg14_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg14[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg14(23),
      R => RGB1B_n_0
    );
\slv_reg14_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg14[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg14(24),
      R => RGB1B_n_0
    );
\slv_reg14_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg14[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg14(25),
      R => RGB1B_n_0
    );
\slv_reg14_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg14[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg14(26),
      R => RGB1B_n_0
    );
\slv_reg14_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg14[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg14(27),
      R => RGB1B_n_0
    );
\slv_reg14_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg14[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg14(28),
      R => RGB1B_n_0
    );
\slv_reg14_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg14[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg14(29),
      R => RGB1B_n_0
    );
\slv_reg14_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg14[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg14(2),
      R => RGB1B_n_0
    );
\slv_reg14_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg14[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg14(30),
      R => RGB1B_n_0
    );
\slv_reg14_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg14[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg14(31),
      R => RGB1B_n_0
    );
\slv_reg14_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg14[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg14(3),
      R => RGB1B_n_0
    );
\slv_reg14_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg14[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg14(4),
      R => RGB1B_n_0
    );
\slv_reg14_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg14[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg14(5),
      R => RGB1B_n_0
    );
\slv_reg14_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg14[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg14(6),
      R => RGB1B_n_0
    );
\slv_reg14_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg14[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg14(7),
      R => RGB1B_n_0
    );
\slv_reg14_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg14[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg14(8),
      R => RGB1B_n_0
    );
\slv_reg14_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg14[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg14(9),
      R => RGB1B_n_0
    );
\slv_reg15[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in_0(2),
      I2 => s00_axi_wstrb(1),
      I3 => p_0_in_0(0),
      I4 => p_0_in_0(1),
      I5 => p_0_in_0(3),
      O => \slv_reg15[15]_i_1_n_0\
    );
\slv_reg15[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in_0(2),
      I2 => s00_axi_wstrb(2),
      I3 => p_0_in_0(0),
      I4 => p_0_in_0(1),
      I5 => p_0_in_0(3),
      O => \slv_reg15[23]_i_1_n_0\
    );
\slv_reg15[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in_0(2),
      I2 => s00_axi_wstrb(3),
      I3 => p_0_in_0(0),
      I4 => p_0_in_0(1),
      I5 => p_0_in_0(3),
      O => \slv_reg15[31]_i_1_n_0\
    );
\slv_reg15[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in_0(2),
      I2 => s00_axi_wstrb(0),
      I3 => p_0_in_0(0),
      I4 => p_0_in_0(1),
      I5 => p_0_in_0(3),
      O => \slv_reg15[7]_i_1_n_0\
    );
\slv_reg15_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg15(0),
      R => RGB1B_n_0
    );
\slv_reg15_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg15(10),
      R => RGB1B_n_0
    );
\slv_reg15_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg15(11),
      R => RGB1B_n_0
    );
\slv_reg15_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg15(12),
      R => RGB1B_n_0
    );
\slv_reg15_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg15(13),
      R => RGB1B_n_0
    );
\slv_reg15_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg15(14),
      R => RGB1B_n_0
    );
\slv_reg15_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg15(15),
      R => RGB1B_n_0
    );
\slv_reg15_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg15(16),
      R => RGB1B_n_0
    );
\slv_reg15_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg15(17),
      R => RGB1B_n_0
    );
\slv_reg15_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg15(18),
      R => RGB1B_n_0
    );
\slv_reg15_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg15(19),
      R => RGB1B_n_0
    );
\slv_reg15_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg15(1),
      R => RGB1B_n_0
    );
\slv_reg15_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg15(20),
      R => RGB1B_n_0
    );
\slv_reg15_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg15(21),
      R => RGB1B_n_0
    );
\slv_reg15_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg15(22),
      R => RGB1B_n_0
    );
\slv_reg15_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg15(23),
      R => RGB1B_n_0
    );
\slv_reg15_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg15(24),
      R => RGB1B_n_0
    );
\slv_reg15_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg15(25),
      R => RGB1B_n_0
    );
\slv_reg15_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg15(26),
      R => RGB1B_n_0
    );
\slv_reg15_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg15(27),
      R => RGB1B_n_0
    );
\slv_reg15_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg15(28),
      R => RGB1B_n_0
    );
\slv_reg15_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg15(29),
      R => RGB1B_n_0
    );
\slv_reg15_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg15(2),
      R => RGB1B_n_0
    );
\slv_reg15_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg15(30),
      R => RGB1B_n_0
    );
\slv_reg15_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg15(31),
      R => RGB1B_n_0
    );
\slv_reg15_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg15(3),
      R => RGB1B_n_0
    );
\slv_reg15_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg15(4),
      R => RGB1B_n_0
    );
\slv_reg15_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg15(5),
      R => RGB1B_n_0
    );
\slv_reg15_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg15(6),
      R => RGB1B_n_0
    );
\slv_reg15_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg15(7),
      R => RGB1B_n_0
    );
\slv_reg15_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg15(8),
      R => RGB1B_n_0
    );
\slv_reg15_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg15(9),
      R => RGB1B_n_0
    );
\slv_reg1[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(1),
      I2 => p_0_in_0(3),
      I3 => p_0_in_0(1),
      I4 => p_0_in_0(2),
      I5 => p_0_in_0(0),
      O => p_1_in(15)
    );
\slv_reg1[15]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^axi_wready_reg_0\,
      I1 => \^axi_awready_reg_0\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_wvalid,
      O => \slv_reg_wren__0\
    );
\slv_reg1[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(2),
      I2 => p_0_in_0(3),
      I3 => p_0_in_0(1),
      I4 => p_0_in_0(2),
      I5 => p_0_in_0(0),
      O => p_1_in(23)
    );
\slv_reg1[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(3),
      I2 => p_0_in_0(3),
      I3 => p_0_in_0(1),
      I4 => p_0_in_0(2),
      I5 => p_0_in_0(0),
      O => p_1_in(31)
    );
\slv_reg1[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(0),
      I2 => p_0_in_0(3),
      I3 => p_0_in_0(1),
      I4 => p_0_in_0(2),
      I5 => p_0_in_0(0),
      O => p_1_in(7)
    );
\slv_reg1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(0),
      Q => \^led\(0),
      R => RGB1B_n_0
    );
\slv_reg1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(10),
      Q => \^led\(10),
      R => RGB1B_n_0
    );
\slv_reg1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(11),
      Q => \^led\(11),
      R => RGB1B_n_0
    );
\slv_reg1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(12),
      Q => \^led\(12),
      R => RGB1B_n_0
    );
\slv_reg1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(13),
      Q => \^led\(13),
      R => RGB1B_n_0
    );
\slv_reg1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(14),
      Q => \^led\(14),
      R => RGB1B_n_0
    );
\slv_reg1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(15),
      Q => \^led\(15),
      R => RGB1B_n_0
    );
\slv_reg1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(16),
      Q => slv_reg1(16),
      R => RGB1B_n_0
    );
\slv_reg1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(17),
      Q => slv_reg1(17),
      R => RGB1B_n_0
    );
\slv_reg1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(18),
      Q => slv_reg1(18),
      R => RGB1B_n_0
    );
\slv_reg1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(19),
      Q => slv_reg1(19),
      R => RGB1B_n_0
    );
\slv_reg1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(1),
      Q => \^led\(1),
      R => RGB1B_n_0
    );
\slv_reg1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(20),
      Q => slv_reg1(20),
      R => RGB1B_n_0
    );
\slv_reg1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(21),
      Q => slv_reg1(21),
      R => RGB1B_n_0
    );
\slv_reg1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(22),
      Q => slv_reg1(22),
      R => RGB1B_n_0
    );
\slv_reg1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(23),
      Q => slv_reg1(23),
      R => RGB1B_n_0
    );
\slv_reg1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(24),
      Q => slv_reg1(24),
      R => RGB1B_n_0
    );
\slv_reg1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(25),
      Q => slv_reg1(25),
      R => RGB1B_n_0
    );
\slv_reg1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(26),
      Q => slv_reg1(26),
      R => RGB1B_n_0
    );
\slv_reg1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(27),
      Q => slv_reg1(27),
      R => RGB1B_n_0
    );
\slv_reg1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(28),
      Q => slv_reg1(28),
      R => RGB1B_n_0
    );
\slv_reg1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(29),
      Q => slv_reg1(29),
      R => RGB1B_n_0
    );
\slv_reg1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(2),
      Q => \^led\(2),
      R => RGB1B_n_0
    );
\slv_reg1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(30),
      Q => slv_reg1(30),
      R => RGB1B_n_0
    );
\slv_reg1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(31),
      Q => slv_reg1(31),
      R => RGB1B_n_0
    );
\slv_reg1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(3),
      Q => \^led\(3),
      R => RGB1B_n_0
    );
\slv_reg1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(4),
      Q => \^led\(4),
      R => RGB1B_n_0
    );
\slv_reg1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(5),
      Q => \^led\(5),
      R => RGB1B_n_0
    );
\slv_reg1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(6),
      Q => \^led\(6),
      R => RGB1B_n_0
    );
\slv_reg1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(7),
      Q => \^led\(7),
      R => RGB1B_n_0
    );
\slv_reg1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(8),
      Q => \^led\(8),
      R => RGB1B_n_0
    );
\slv_reg1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(9),
      Q => \^led\(9),
      R => RGB1B_n_0
    );
\slv_reg2[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(1),
      I2 => p_0_in_0(3),
      I3 => p_0_in_0(0),
      I4 => p_0_in_0(2),
      I5 => p_0_in_0(1),
      O => \slv_reg2[15]_i_1_n_0\
    );
\slv_reg2[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(2),
      I2 => p_0_in_0(3),
      I3 => p_0_in_0(0),
      I4 => p_0_in_0(2),
      I5 => p_0_in_0(1),
      O => \slv_reg2[23]_i_1_n_0\
    );
\slv_reg2[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(3),
      I2 => p_0_in_0(3),
      I3 => p_0_in_0(0),
      I4 => p_0_in_0(2),
      I5 => p_0_in_0(1),
      O => \slv_reg2[31]_i_1_n_0\
    );
\slv_reg2[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(0),
      I2 => p_0_in_0(3),
      I3 => p_0_in_0(0),
      I4 => p_0_in_0(2),
      I5 => p_0_in_0(1),
      O => \slv_reg2[7]_i_1_n_0\
    );
\slv_reg2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => \slv_reg2_reg_n_0_[0]\,
      R => RGB1B_n_0
    );
\slv_reg2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => rgb1_greendc(2),
      R => RGB1B_n_0
    );
\slv_reg2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => rgb1_greendc(3),
      R => RGB1B_n_0
    );
\slv_reg2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => rgb1_greendc(4),
      R => RGB1B_n_0
    );
\slv_reg2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => rgb1_greendc(5),
      R => RGB1B_n_0
    );
\slv_reg2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => rgb1_greendc(6),
      R => RGB1B_n_0
    );
\slv_reg2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => rgb1_greendc(7),
      R => RGB1B_n_0
    );
\slv_reg2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => rgb1_reddc(0),
      R => RGB1B_n_0
    );
\slv_reg2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => rgb1_reddc(1),
      R => RGB1B_n_0
    );
\slv_reg2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => rgb1_reddc(2),
      R => RGB1B_n_0
    );
\slv_reg2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => rgb1_reddc(3),
      R => RGB1B_n_0
    );
\slv_reg2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \slv_reg2_reg_n_0_[1]\,
      R => RGB1B_n_0
    );
\slv_reg2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => rgb1_reddc(4),
      R => RGB1B_n_0
    );
\slv_reg2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => rgb1_reddc(5),
      R => RGB1B_n_0
    );
\slv_reg2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => rgb1_reddc(6),
      R => RGB1B_n_0
    );
\slv_reg2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => rgb1_reddc(7),
      R => RGB1B_n_0
    );
\slv_reg2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => \slv_reg2_reg_n_0_[24]\,
      R => RGB1B_n_0
    );
\slv_reg2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => \slv_reg2_reg_n_0_[25]\,
      R => RGB1B_n_0
    );
\slv_reg2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => \slv_reg2_reg_n_0_[26]\,
      R => RGB1B_n_0
    );
\slv_reg2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => \slv_reg2_reg_n_0_[27]\,
      R => RGB1B_n_0
    );
\slv_reg2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => \slv_reg2_reg_n_0_[28]\,
      R => RGB1B_n_0
    );
\slv_reg2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => \slv_reg2_reg_n_0_[29]\,
      R => RGB1B_n_0
    );
\slv_reg2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \slv_reg2_reg_n_0_[2]\,
      R => RGB1B_n_0
    );
\slv_reg2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => \slv_reg2_reg_n_0_[30]\,
      R => RGB1B_n_0
    );
\slv_reg2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => \slv_reg2_reg_n_0_[31]\,
      R => RGB1B_n_0
    );
\slv_reg2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \slv_reg2_reg_n_0_[3]\,
      R => RGB1B_n_0
    );
\slv_reg2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \slv_reg2_reg_n_0_[4]\,
      R => RGB1B_n_0
    );
\slv_reg2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \slv_reg2_reg_n_0_[5]\,
      R => RGB1B_n_0
    );
\slv_reg2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \slv_reg2_reg_n_0_[6]\,
      R => RGB1B_n_0
    );
\slv_reg2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \slv_reg2_reg_n_0_[7]\,
      R => RGB1B_n_0
    );
\slv_reg2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => rgb1_greendc(0),
      R => RGB1B_n_0
    );
\slv_reg2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => rgb1_greendc(1),
      R => RGB1B_n_0
    );
\slv_reg3[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(1),
      I2 => p_0_in_0(0),
      I3 => p_0_in_0(1),
      I4 => p_0_in_0(2),
      I5 => p_0_in_0(3),
      O => \slv_reg3[15]_i_1_n_0\
    );
\slv_reg3[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(2),
      I2 => p_0_in_0(0),
      I3 => p_0_in_0(1),
      I4 => p_0_in_0(2),
      I5 => p_0_in_0(3),
      O => \slv_reg3[23]_i_1_n_0\
    );
\slv_reg3[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(3),
      I2 => p_0_in_0(0),
      I3 => p_0_in_0(1),
      I4 => p_0_in_0(2),
      I5 => p_0_in_0(3),
      O => \slv_reg3[31]_i_1_n_0\
    );
\slv_reg3[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(0),
      I2 => p_0_in_0(0),
      I3 => p_0_in_0(1),
      I4 => p_0_in_0(2),
      I5 => p_0_in_0(3),
      O => \slv_reg3[7]_i_1_n_0\
    );
\slv_reg3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => \slv_reg3__0\(0),
      R => RGB1B_n_0
    );
\slv_reg3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg3(10),
      R => RGB1B_n_0
    );
\slv_reg3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg3(11),
      R => RGB1B_n_0
    );
\slv_reg3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg3(12),
      R => RGB1B_n_0
    );
\slv_reg3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg3(13),
      R => RGB1B_n_0
    );
\slv_reg3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg3(14),
      R => RGB1B_n_0
    );
\slv_reg3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg3(15),
      R => RGB1B_n_0
    );
\slv_reg3_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg3(16),
      R => RGB1B_n_0
    );
\slv_reg3_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg3(17),
      R => RGB1B_n_0
    );
\slv_reg3_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg3(18),
      R => RGB1B_n_0
    );
\slv_reg3_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg3(19),
      R => RGB1B_n_0
    );
\slv_reg3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \slv_reg3__0\(1),
      R => RGB1B_n_0
    );
\slv_reg3_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg3(20),
      R => RGB1B_n_0
    );
\slv_reg3_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg3(21),
      R => RGB1B_n_0
    );
\slv_reg3_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg3(22),
      R => RGB1B_n_0
    );
\slv_reg3_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg3(23),
      R => RGB1B_n_0
    );
\slv_reg3_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg3(24),
      R => RGB1B_n_0
    );
\slv_reg3_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg3(25),
      R => RGB1B_n_0
    );
\slv_reg3_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg3(26),
      R => RGB1B_n_0
    );
\slv_reg3_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg3(27),
      R => RGB1B_n_0
    );
\slv_reg3_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg3(28),
      R => RGB1B_n_0
    );
\slv_reg3_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg3(29),
      R => RGB1B_n_0
    );
\slv_reg3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \slv_reg3__0\(2),
      R => RGB1B_n_0
    );
\slv_reg3_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg3(30),
      R => RGB1B_n_0
    );
\slv_reg3_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg3(31),
      R => RGB1B_n_0
    );
\slv_reg3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg3(3),
      R => RGB1B_n_0
    );
\slv_reg3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg3(4),
      R => RGB1B_n_0
    );
\slv_reg3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg3(5),
      R => RGB1B_n_0
    );
\slv_reg3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg3(6),
      R => RGB1B_n_0
    );
\slv_reg3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg3(7),
      R => RGB1B_n_0
    );
\slv_reg3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg3(8),
      R => RGB1B_n_0
    );
\slv_reg3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg3(9),
      R => RGB1B_n_0
    );
\slv_reg4[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(1),
      I2 => p_0_in_0(3),
      I3 => p_0_in_0(1),
      I4 => p_0_in_0(0),
      I5 => p_0_in_0(2),
      O => \slv_reg4[15]_i_1_n_0\
    );
\slv_reg4[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(2),
      I2 => p_0_in_0(3),
      I3 => p_0_in_0(1),
      I4 => p_0_in_0(0),
      I5 => p_0_in_0(2),
      O => \slv_reg4[23]_i_1_n_0\
    );
\slv_reg4[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(3),
      I2 => p_0_in_0(3),
      I3 => p_0_in_0(1),
      I4 => p_0_in_0(0),
      I5 => p_0_in_0(2),
      O => \slv_reg4[31]_i_1_n_0\
    );
\slv_reg4[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(0),
      I2 => p_0_in_0(3),
      I3 => p_0_in_0(1),
      I4 => p_0_in_0(0),
      I5 => p_0_in_0(2),
      O => \slv_reg4[7]_i_1_n_0\
    );
\slv_reg4_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => \slv_reg4_reg_n_0_[0]\,
      R => RGB1B_n_0
    );
\slv_reg4_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => rgb2_greendc(2),
      R => RGB1B_n_0
    );
\slv_reg4_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => rgb2_greendc(3),
      R => RGB1B_n_0
    );
\slv_reg4_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => rgb2_greendc(4),
      R => RGB1B_n_0
    );
\slv_reg4_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => rgb2_greendc(5),
      R => RGB1B_n_0
    );
\slv_reg4_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => rgb2_greendc(6),
      R => RGB1B_n_0
    );
\slv_reg4_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => rgb2_greendc(7),
      R => RGB1B_n_0
    );
\slv_reg4_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => rgb2_reddc(0),
      R => RGB1B_n_0
    );
\slv_reg4_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => rgb2_reddc(1),
      R => RGB1B_n_0
    );
\slv_reg4_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => rgb2_reddc(2),
      R => RGB1B_n_0
    );
\slv_reg4_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => rgb2_reddc(3),
      R => RGB1B_n_0
    );
\slv_reg4_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \slv_reg4_reg_n_0_[1]\,
      R => RGB1B_n_0
    );
\slv_reg4_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => rgb2_reddc(4),
      R => RGB1B_n_0
    );
\slv_reg4_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => rgb2_reddc(5),
      R => RGB1B_n_0
    );
\slv_reg4_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => rgb2_reddc(6),
      R => RGB1B_n_0
    );
\slv_reg4_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => rgb2_reddc(7),
      R => RGB1B_n_0
    );
\slv_reg4_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => \slv_reg4_reg_n_0_[24]\,
      R => RGB1B_n_0
    );
\slv_reg4_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => \slv_reg4_reg_n_0_[25]\,
      R => RGB1B_n_0
    );
\slv_reg4_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => \slv_reg4_reg_n_0_[26]\,
      R => RGB1B_n_0
    );
\slv_reg4_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => \slv_reg4_reg_n_0_[27]\,
      R => RGB1B_n_0
    );
\slv_reg4_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => \slv_reg4_reg_n_0_[28]\,
      R => RGB1B_n_0
    );
\slv_reg4_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => \slv_reg4_reg_n_0_[29]\,
      R => RGB1B_n_0
    );
\slv_reg4_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \slv_reg4_reg_n_0_[2]\,
      R => RGB1B_n_0
    );
\slv_reg4_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => \slv_reg4_reg_n_0_[30]\,
      R => RGB1B_n_0
    );
\slv_reg4_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => \slv_reg4_reg_n_0_[31]\,
      R => RGB1B_n_0
    );
\slv_reg4_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \slv_reg4_reg_n_0_[3]\,
      R => RGB1B_n_0
    );
\slv_reg4_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \slv_reg4_reg_n_0_[4]\,
      R => RGB1B_n_0
    );
\slv_reg4_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \slv_reg4_reg_n_0_[5]\,
      R => RGB1B_n_0
    );
\slv_reg4_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \slv_reg4_reg_n_0_[6]\,
      R => RGB1B_n_0
    );
\slv_reg4_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \slv_reg4_reg_n_0_[7]\,
      R => RGB1B_n_0
    );
\slv_reg4_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => rgb2_greendc(0),
      R => RGB1B_n_0
    );
\slv_reg4_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => rgb2_greendc(1),
      R => RGB1B_n_0
    );
\slv_reg5[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(1),
      I2 => p_0_in_0(0),
      I3 => p_0_in_0(2),
      I4 => p_0_in_0(1),
      I5 => p_0_in_0(3),
      O => \slv_reg5[15]_i_1_n_0\
    );
\slv_reg5[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(2),
      I2 => p_0_in_0(0),
      I3 => p_0_in_0(2),
      I4 => p_0_in_0(1),
      I5 => p_0_in_0(3),
      O => \slv_reg5[23]_i_1_n_0\
    );
\slv_reg5[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(3),
      I2 => p_0_in_0(0),
      I3 => p_0_in_0(2),
      I4 => p_0_in_0(1),
      I5 => p_0_in_0(3),
      O => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg5[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(0),
      I2 => p_0_in_0(0),
      I3 => p_0_in_0(2),
      I4 => p_0_in_0(1),
      I5 => p_0_in_0(3),
      O => \slv_reg5[7]_i_1_n_0\
    );
\slv_reg5_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => \slv_reg5__0\(0),
      R => RGB1B_n_0
    );
\slv_reg5_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg5(10),
      R => RGB1B_n_0
    );
\slv_reg5_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg5(11),
      R => RGB1B_n_0
    );
\slv_reg5_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg5(12),
      R => RGB1B_n_0
    );
\slv_reg5_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg5(13),
      R => RGB1B_n_0
    );
\slv_reg5_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg5(14),
      R => RGB1B_n_0
    );
\slv_reg5_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg5(15),
      R => RGB1B_n_0
    );
\slv_reg5_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg5(16),
      R => RGB1B_n_0
    );
\slv_reg5_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg5(17),
      R => RGB1B_n_0
    );
\slv_reg5_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg5(18),
      R => RGB1B_n_0
    );
\slv_reg5_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg5(19),
      R => RGB1B_n_0
    );
\slv_reg5_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \slv_reg5__0\(1),
      R => RGB1B_n_0
    );
\slv_reg5_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg5(20),
      R => RGB1B_n_0
    );
\slv_reg5_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg5(21),
      R => RGB1B_n_0
    );
\slv_reg5_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg5(22),
      R => RGB1B_n_0
    );
\slv_reg5_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg5(23),
      R => RGB1B_n_0
    );
\slv_reg5_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg5(24),
      R => RGB1B_n_0
    );
\slv_reg5_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg5(25),
      R => RGB1B_n_0
    );
\slv_reg5_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg5(26),
      R => RGB1B_n_0
    );
\slv_reg5_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg5(27),
      R => RGB1B_n_0
    );
\slv_reg5_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg5(28),
      R => RGB1B_n_0
    );
\slv_reg5_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg5(29),
      R => RGB1B_n_0
    );
\slv_reg5_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \slv_reg5__0\(2),
      R => RGB1B_n_0
    );
\slv_reg5_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg5(30),
      R => RGB1B_n_0
    );
\slv_reg5_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg5(31),
      R => RGB1B_n_0
    );
\slv_reg5_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg5(3),
      R => RGB1B_n_0
    );
\slv_reg5_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg5(4),
      R => RGB1B_n_0
    );
\slv_reg5_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg5(5),
      R => RGB1B_n_0
    );
\slv_reg5_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg5(6),
      R => RGB1B_n_0
    );
\slv_reg5_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg5(7),
      R => RGB1B_n_0
    );
\slv_reg5_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg5(8),
      R => RGB1B_n_0
    );
\slv_reg5_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg5(9),
      R => RGB1B_n_0
    );
\slv_reg6[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(1),
      I2 => p_0_in_0(2),
      I3 => p_0_in_0(1),
      I4 => p_0_in_0(0),
      I5 => p_0_in_0(3),
      O => \slv_reg6[15]_i_1_n_0\
    );
\slv_reg6[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(2),
      I2 => p_0_in_0(2),
      I3 => p_0_in_0(1),
      I4 => p_0_in_0(0),
      I5 => p_0_in_0(3),
      O => \slv_reg6[23]_i_1_n_0\
    );
\slv_reg6[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(3),
      I2 => p_0_in_0(2),
      I3 => p_0_in_0(1),
      I4 => p_0_in_0(0),
      I5 => p_0_in_0(3),
      O => \slv_reg6[31]_i_1_n_0\
    );
\slv_reg6[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(0),
      I2 => p_0_in_0(2),
      I3 => p_0_in_0(1),
      I4 => p_0_in_0(0),
      I5 => p_0_in_0(3),
      O => \slv_reg6[7]_i_1_n_0\
    );
\slv_reg6_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => \slv_reg6_reg_n_0_[0]\,
      R => RGB1B_n_0
    );
\slv_reg6_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => dig1(4),
      R => RGB1B_n_0
    );
\slv_reg6_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => \slv_reg6_reg_n_0_[11]\,
      R => RGB1B_n_0
    );
\slv_reg6_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => dig2(0),
      R => RGB1B_n_0
    );
\slv_reg6_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => dig2(1),
      R => RGB1B_n_0
    );
\slv_reg6_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => dig2(2),
      R => RGB1B_n_0
    );
\slv_reg6_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => dig2(3),
      R => RGB1B_n_0
    );
\slv_reg6_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => dig2(4),
      R => RGB1B_n_0
    );
\slv_reg6_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => \slv_reg6_reg_n_0_[17]\,
      R => RGB1B_n_0
    );
\slv_reg6_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => dig3(0),
      R => RGB1B_n_0
    );
\slv_reg6_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => dig3(1),
      R => RGB1B_n_0
    );
\slv_reg6_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \slv_reg6_reg_n_0_[1]\,
      R => RGB1B_n_0
    );
\slv_reg6_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => dig3(2),
      R => RGB1B_n_0
    );
\slv_reg6_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => dig3(3),
      R => RGB1B_n_0
    );
\slv_reg6_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => dig3(4),
      R => RGB1B_n_0
    );
\slv_reg6_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => \slv_reg6_reg_n_0_[23]\,
      R => RGB1B_n_0
    );
\slv_reg6_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => decpts(0),
      R => RGB1B_n_0
    );
\slv_reg6_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => decpts(1),
      R => RGB1B_n_0
    );
\slv_reg6_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => decpts(2),
      R => RGB1B_n_0
    );
\slv_reg6_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => decpts(3),
      R => RGB1B_n_0
    );
\slv_reg6_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => \slv_reg6_reg_n_0_[28]\,
      R => RGB1B_n_0
    );
\slv_reg6_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => \slv_reg6_reg_n_0_[29]\,
      R => RGB1B_n_0
    );
\slv_reg6_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \slv_reg6_reg_n_0_[2]\,
      R => RGB1B_n_0
    );
\slv_reg6_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => \slv_reg6_reg_n_0_[30]\,
      R => RGB1B_n_0
    );
\slv_reg6_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => \slv_reg6_reg_n_0_[31]\,
      R => RGB1B_n_0
    );
\slv_reg6_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \slv_reg6_reg_n_0_[3]\,
      R => RGB1B_n_0
    );
\slv_reg6_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \slv_reg6_reg_n_0_[4]\,
      R => RGB1B_n_0
    );
\slv_reg6_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \slv_reg6_reg_n_0_[5]\,
      R => RGB1B_n_0
    );
\slv_reg6_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => dig1(0),
      R => RGB1B_n_0
    );
\slv_reg6_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => dig1(1),
      R => RGB1B_n_0
    );
\slv_reg6_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => dig1(2),
      R => RGB1B_n_0
    );
\slv_reg6_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => dig1(3),
      R => RGB1B_n_0
    );
\slv_reg7[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in_0(2),
      I2 => s00_axi_wstrb(1),
      I3 => p_0_in_0(0),
      I4 => p_0_in_0(1),
      I5 => p_0_in_0(3),
      O => \slv_reg7[15]_i_1_n_0\
    );
\slv_reg7[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in_0(2),
      I2 => s00_axi_wstrb(2),
      I3 => p_0_in_0(0),
      I4 => p_0_in_0(1),
      I5 => p_0_in_0(3),
      O => \slv_reg7[23]_i_1_n_0\
    );
\slv_reg7[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in_0(2),
      I2 => s00_axi_wstrb(3),
      I3 => p_0_in_0(0),
      I4 => p_0_in_0(1),
      I5 => p_0_in_0(3),
      O => \slv_reg7[31]_i_1_n_0\
    );
\slv_reg7[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in_0(2),
      I2 => s00_axi_wstrb(0),
      I3 => p_0_in_0(0),
      I4 => p_0_in_0(1),
      I5 => p_0_in_0(3),
      O => \slv_reg7[7]_i_1_n_0\
    );
\slv_reg7_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => \slv_reg7_reg_n_0_[0]\,
      R => RGB1B_n_0
    );
\slv_reg7_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => dig5(4),
      R => RGB1B_n_0
    );
\slv_reg7_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => \slv_reg7_reg_n_0_[11]\,
      R => RGB1B_n_0
    );
\slv_reg7_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => dig6(0),
      R => RGB1B_n_0
    );
\slv_reg7_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => dig6(1),
      R => RGB1B_n_0
    );
\slv_reg7_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => dig6(2),
      R => RGB1B_n_0
    );
\slv_reg7_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => dig6(3),
      R => RGB1B_n_0
    );
\slv_reg7_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => dig6(4),
      R => RGB1B_n_0
    );
\slv_reg7_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => \slv_reg7_reg_n_0_[17]\,
      R => RGB1B_n_0
    );
\slv_reg7_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => dig7(0),
      R => RGB1B_n_0
    );
\slv_reg7_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => dig7(1),
      R => RGB1B_n_0
    );
\slv_reg7_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \slv_reg7_reg_n_0_[1]\,
      R => RGB1B_n_0
    );
\slv_reg7_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => dig7(2),
      R => RGB1B_n_0
    );
\slv_reg7_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => dig7(3),
      R => RGB1B_n_0
    );
\slv_reg7_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => dig7(4),
      R => RGB1B_n_0
    );
\slv_reg7_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => \slv_reg7_reg_n_0_[23]\,
      R => RGB1B_n_0
    );
\slv_reg7_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => decpts(4),
      R => RGB1B_n_0
    );
\slv_reg7_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => decpts(5),
      R => RGB1B_n_0
    );
\slv_reg7_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => decpts(6),
      R => RGB1B_n_0
    );
\slv_reg7_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => decpts(7),
      R => RGB1B_n_0
    );
\slv_reg7_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => \slv_reg7_reg_n_0_[28]\,
      R => RGB1B_n_0
    );
\slv_reg7_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => \slv_reg7_reg_n_0_[29]\,
      R => RGB1B_n_0
    );
\slv_reg7_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \slv_reg7_reg_n_0_[2]\,
      R => RGB1B_n_0
    );
\slv_reg7_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => \slv_reg7_reg_n_0_[30]\,
      R => RGB1B_n_0
    );
\slv_reg7_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => \slv_reg7_reg_n_0_[31]\,
      R => RGB1B_n_0
    );
\slv_reg7_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \slv_reg7_reg_n_0_[3]\,
      R => RGB1B_n_0
    );
\slv_reg7_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \slv_reg7_reg_n_0_[4]\,
      R => RGB1B_n_0
    );
\slv_reg7_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \slv_reg7_reg_n_0_[5]\,
      R => RGB1B_n_0
    );
\slv_reg7_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => dig5(0),
      R => RGB1B_n_0
    );
\slv_reg7_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => dig5(1),
      R => RGB1B_n_0
    );
\slv_reg7_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => dig5(2),
      R => RGB1B_n_0
    );
\slv_reg7_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => dig5(3),
      R => RGB1B_n_0
    );
\slv_reg8[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in_0(3),
      I2 => p_0_in_0(1),
      I3 => p_0_in_0(0),
      I4 => p_0_in_0(2),
      I5 => s00_axi_wstrb(1),
      O => \slv_reg8[15]_i_1_n_0\
    );
\slv_reg8[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in_0(3),
      I2 => p_0_in_0(1),
      I3 => p_0_in_0(0),
      I4 => p_0_in_0(2),
      I5 => s00_axi_wstrb(2),
      O => \slv_reg8[23]_i_1_n_0\
    );
\slv_reg8[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in_0(3),
      I2 => p_0_in_0(1),
      I3 => p_0_in_0(0),
      I4 => p_0_in_0(2),
      I5 => s00_axi_wstrb(3),
      O => \slv_reg8[31]_i_1_n_0\
    );
\slv_reg8[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in_0(3),
      I2 => p_0_in_0(1),
      I3 => p_0_in_0(0),
      I4 => p_0_in_0(2),
      I5 => s00_axi_wstrb(0),
      O => \slv_reg8[7]_i_1_n_0\
    );
\slv_reg8_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg8(0),
      R => RGB1B_n_0
    );
\slv_reg8_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg8(10),
      R => RGB1B_n_0
    );
\slv_reg8_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg8(11),
      R => RGB1B_n_0
    );
\slv_reg8_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg8(12),
      R => RGB1B_n_0
    );
\slv_reg8_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg8(13),
      R => RGB1B_n_0
    );
\slv_reg8_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg8(14),
      R => RGB1B_n_0
    );
\slv_reg8_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg8(15),
      R => RGB1B_n_0
    );
\slv_reg8_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg8(16),
      R => RGB1B_n_0
    );
\slv_reg8_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg8(17),
      R => RGB1B_n_0
    );
\slv_reg8_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg8(18),
      R => RGB1B_n_0
    );
\slv_reg8_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg8(19),
      R => RGB1B_n_0
    );
\slv_reg8_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg8(1),
      R => RGB1B_n_0
    );
\slv_reg8_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg8(20),
      R => RGB1B_n_0
    );
\slv_reg8_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg8(21),
      R => RGB1B_n_0
    );
\slv_reg8_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg8(22),
      R => RGB1B_n_0
    );
\slv_reg8_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg8(23),
      R => RGB1B_n_0
    );
\slv_reg8_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg8(24),
      R => RGB1B_n_0
    );
\slv_reg8_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg8(25),
      R => RGB1B_n_0
    );
\slv_reg8_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg8(26),
      R => RGB1B_n_0
    );
\slv_reg8_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg8(27),
      R => RGB1B_n_0
    );
\slv_reg8_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg8(28),
      R => RGB1B_n_0
    );
\slv_reg8_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg8(29),
      R => RGB1B_n_0
    );
\slv_reg8_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg8(2),
      R => RGB1B_n_0
    );
\slv_reg8_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg8(30),
      R => RGB1B_n_0
    );
\slv_reg8_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg8(31),
      R => RGB1B_n_0
    );
\slv_reg8_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg8(3),
      R => RGB1B_n_0
    );
\slv_reg8_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg8(4),
      R => RGB1B_n_0
    );
\slv_reg8_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg8(5),
      R => RGB1B_n_0
    );
\slv_reg8_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg8(6),
      R => RGB1B_n_0
    );
\slv_reg8_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg8(7),
      R => RGB1B_n_0
    );
\slv_reg8_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg8(8),
      R => RGB1B_n_0
    );
\slv_reg8_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg8(9),
      R => RGB1B_n_0
    );
\slv_reg9[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in_0(3),
      I2 => p_0_in_0(0),
      I3 => s00_axi_wstrb(1),
      I4 => p_0_in_0(1),
      I5 => p_0_in_0(2),
      O => \slv_reg9[15]_i_1_n_0\
    );
\slv_reg9[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in_0(3),
      I2 => p_0_in_0(0),
      I3 => s00_axi_wstrb(2),
      I4 => p_0_in_0(1),
      I5 => p_0_in_0(2),
      O => \slv_reg9[23]_i_1_n_0\
    );
\slv_reg9[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in_0(3),
      I2 => p_0_in_0(0),
      I3 => s00_axi_wstrb(3),
      I4 => p_0_in_0(1),
      I5 => p_0_in_0(2),
      O => \slv_reg9[31]_i_1_n_0\
    );
\slv_reg9[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in_0(3),
      I2 => p_0_in_0(0),
      I3 => s00_axi_wstrb(0),
      I4 => p_0_in_0(1),
      I5 => p_0_in_0(2),
      O => \slv_reg9[7]_i_1_n_0\
    );
\slv_reg9_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg9[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg9(0),
      R => RGB1B_n_0
    );
\slv_reg9_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg9[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg9(10),
      R => RGB1B_n_0
    );
\slv_reg9_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg9[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg9(11),
      R => RGB1B_n_0
    );
\slv_reg9_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg9[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg9(12),
      R => RGB1B_n_0
    );
\slv_reg9_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg9[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg9(13),
      R => RGB1B_n_0
    );
\slv_reg9_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg9[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg9(14),
      R => RGB1B_n_0
    );
\slv_reg9_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg9[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg9(15),
      R => RGB1B_n_0
    );
\slv_reg9_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg9[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg9(16),
      R => RGB1B_n_0
    );
\slv_reg9_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg9[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg9(17),
      R => RGB1B_n_0
    );
\slv_reg9_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg9[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg9(18),
      R => RGB1B_n_0
    );
\slv_reg9_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg9[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg9(19),
      R => RGB1B_n_0
    );
\slv_reg9_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg9[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg9(1),
      R => RGB1B_n_0
    );
\slv_reg9_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg9[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg9(20),
      R => RGB1B_n_0
    );
\slv_reg9_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg9[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg9(21),
      R => RGB1B_n_0
    );
\slv_reg9_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg9[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg9(22),
      R => RGB1B_n_0
    );
\slv_reg9_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg9[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg9(23),
      R => RGB1B_n_0
    );
\slv_reg9_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg9[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg9(24),
      R => RGB1B_n_0
    );
\slv_reg9_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg9[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg9(25),
      R => RGB1B_n_0
    );
\slv_reg9_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg9[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg9(26),
      R => RGB1B_n_0
    );
\slv_reg9_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg9[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg9(27),
      R => RGB1B_n_0
    );
\slv_reg9_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg9[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg9(28),
      R => RGB1B_n_0
    );
\slv_reg9_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg9[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg9(29),
      R => RGB1B_n_0
    );
\slv_reg9_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg9[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg9(2),
      R => RGB1B_n_0
    );
\slv_reg9_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg9[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg9(30),
      R => RGB1B_n_0
    );
\slv_reg9_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg9[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg9(31),
      R => RGB1B_n_0
    );
\slv_reg9_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg9[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg9(3),
      R => RGB1B_n_0
    );
\slv_reg9_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg9[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg9(4),
      R => RGB1B_n_0
    );
\slv_reg9_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg9[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg9(5),
      R => RGB1B_n_0
    );
\slv_reg9_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg9[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg9(6),
      R => RGB1B_n_0
    );
\slv_reg9_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg9[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg9(7),
      R => RGB1B_n_0
    );
\slv_reg9_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg9[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg9(8),
      R => RGB1B_n_0
    );
\slv_reg9_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg9[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg9(9),
      R => RGB1B_n_0
    );
slv_reg_rden: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s00_axi_rvalid\,
      I2 => \^axi_arready_reg_0\,
      O => \slv_reg_rden__0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_nexys4io_v3_0 is
  port (
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_ARREADY : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    RGB1_Red : out STD_LOGIC;
    RGB1_Green : out STD_LOGIC;
    RGB1_Blue : out STD_LOGIC;
    RGB2_Red : out STD_LOGIC;
    RGB2_Green : out STD_LOGIC;
    RGB2_Blue : out STD_LOGIC;
    an : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    btnR : in STD_LOGIC;
    btnL : in STD_LOGIC;
    btnD : in STD_LOGIC;
    btnU : in STD_LOGIC;
    btnC : in STD_LOGIC;
    sw : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    RGBLED_Clock : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_nexys4io_v3_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_nexys4io_v3_0 is
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal aw_en_i_1_n_0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal nexys4io_v3_0_S00_AXI_inst_n_4 : STD_LOGIC;
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_rvalid\ : STD_LOGIC;
begin
  S_AXI_ARREADY <= \^s_axi_arready\;
  S_AXI_AWREADY <= \^s_axi_awready\;
  S_AXI_WREADY <= \^s_axi_wready\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_rvalid <= \^s00_axi_rvalid\;
aw_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFC4CCC4CCC4CC"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => nexys4io_v3_0_S00_AXI_inst_n_4,
      I2 => \^s_axi_awready\,
      I3 => s00_axi_wvalid,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => aw_en_i_1_n_0
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => s00_axi_wvalid,
      I2 => \^s_axi_awready\,
      I3 => \^s_axi_wready\,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => axi_bvalid_i_1_n_0
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => \^s_axi_arready\,
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_rvalid\,
      I3 => s00_axi_rready,
      O => axi_rvalid_i_1_n_0
    );
nexys4io_v3_0_S00_AXI_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_nexys4io_v3_0_S00_AXI
     port map (
      Q(7 downto 0) => Q(7 downto 0),
      RGB1_Blue => RGB1_Blue,
      RGB1_Green => RGB1_Green,
      RGB1_Red => RGB1_Red,
      RGB2_Blue => RGB2_Blue,
      RGB2_Green => RGB2_Green,
      RGB2_Red => RGB2_Red,
      RGBLED_Clock => RGBLED_Clock,
      an(7 downto 0) => an(7 downto 0),
      aw_en_reg_0 => nexys4io_v3_0_S00_AXI_inst_n_4,
      aw_en_reg_1 => aw_en_i_1_n_0,
      axi_arready_reg_0 => \^s_axi_arready\,
      axi_awready_reg_0 => \^s_axi_awready\,
      axi_bvalid_reg_0 => axi_bvalid_i_1_n_0,
      axi_rvalid_reg_0 => axi_rvalid_i_1_n_0,
      axi_wready_reg_0 => \^s_axi_wready\,
      led(15 downto 0) => led(15 downto 0),
      pbtn_in(4) => btnC,
      pbtn_in(3) => btnU,
      pbtn_in(2) => btnD,
      pbtn_in(1) => btnL,
      pbtn_in(0) => btnR,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(3 downto 0) => s00_axi_araddr(3 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(3 downto 0) => s00_axi_awaddr(3 downto 0),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bvalid => \^s00_axi_bvalid\,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rvalid => \^s00_axi_rvalid\,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid,
      sw(15 downto 0) => sw(15 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    RGBLED_Clock : in STD_LOGIC;
    btnU : in STD_LOGIC;
    btnD : in STD_LOGIC;
    btnR : in STD_LOGIC;
    btnL : in STD_LOGIC;
    btnC : in STD_LOGIC;
    sw : in STD_LOGIC_VECTOR ( 15 downto 0 );
    led : out STD_LOGIC_VECTOR ( 15 downto 0 );
    RGB1_Red : out STD_LOGIC;
    RGB1_Green : out STD_LOGIC;
    RGB1_Blue : out STD_LOGIC;
    RGB2_Red : out STD_LOGIC;
    RGB2_Green : out STD_LOGIC;
    RGB2_Blue : out STD_LOGIC;
    seg : out STD_LOGIC_VECTOR ( 6 downto 0 );
    dp : out STD_LOGIC;
    an : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "embsys_nexys4io_0_0,nexys4io_v3_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "nexys4io_v3_0,Vivado 2022.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of RGBLED_Clock : signal is "xilinx.com:signal:clock:1.0 RGBLED_Clock CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of RGBLED_Clock : signal is "XIL_INTERFACENAME RGBLED_Clock, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK";
  attribute X_INTERFACE_PARAMETER of s00_axi_aclk : signal is "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 S00_AXI_RST RST";
  attribute X_INTERFACE_PARAMETER of s00_axi_aresetn : signal is "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY";
  attribute X_INTERFACE_INFO of s00_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID";
  attribute X_INTERFACE_INFO of s00_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY";
  attribute X_INTERFACE_INFO of s00_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID";
  attribute X_INTERFACE_INFO of s00_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BREADY";
  attribute X_INTERFACE_INFO of s00_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BVALID";
  attribute X_INTERFACE_INFO of s00_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of s00_axi_rready : signal is "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 16, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 6, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RVALID";
  attribute X_INTERFACE_INFO of s00_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WREADY";
  attribute X_INTERFACE_INFO of s00_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WVALID";
  attribute X_INTERFACE_INFO of s00_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR";
  attribute X_INTERFACE_INFO of s00_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT";
  attribute X_INTERFACE_INFO of s00_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR";
  attribute X_INTERFACE_INFO of s00_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT";
  attribute X_INTERFACE_INFO of s00_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BRESP";
  attribute X_INTERFACE_INFO of s00_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RDATA";
  attribute X_INTERFACE_INFO of s00_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RRESP";
  attribute X_INTERFACE_INFO of s00_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WDATA";
  attribute X_INTERFACE_INFO of s00_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB";
begin
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_nexys4io_v3_0
     port map (
      Q(7) => dp,
      Q(6 downto 0) => seg(6 downto 0),
      RGB1_Blue => RGB1_Blue,
      RGB1_Green => RGB1_Green,
      RGB1_Red => RGB1_Red,
      RGB2_Blue => RGB2_Blue,
      RGB2_Green => RGB2_Green,
      RGB2_Red => RGB2_Red,
      RGBLED_Clock => RGBLED_Clock,
      S_AXI_ARREADY => s00_axi_arready,
      S_AXI_AWREADY => s00_axi_awready,
      S_AXI_WREADY => s00_axi_wready,
      an(7 downto 0) => an(7 downto 0),
      btnC => btnC,
      btnD => btnD,
      btnL => btnL,
      btnR => btnR,
      btnU => btnU,
      led(15 downto 0) => led(15 downto 0),
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(3 downto 0) => s00_axi_araddr(5 downto 2),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(3 downto 0) => s00_axi_awaddr(5 downto 2),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid,
      sw(15 downto 0) => sw(15 downto 0)
    );
end STRUCTURE;
