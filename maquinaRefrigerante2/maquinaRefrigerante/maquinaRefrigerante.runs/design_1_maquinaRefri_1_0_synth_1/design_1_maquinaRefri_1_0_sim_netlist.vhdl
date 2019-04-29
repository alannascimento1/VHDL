-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
-- Date        : Mon Apr 15 11:58:07 2019
-- Host        : alan running 64-bit Ubuntu 16.04.4 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_maquinaRefri_1_0_sim_netlist.vhdl
-- Design      : design_1_maquinaRefri_1_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_controlador is
  port (
    tot_ld : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    d : out STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    c : in STD_LOGIC;
    s : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \sQ_reg[0]\ : in STD_LOGIC;
    get : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_controlador;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_controlador is
  signal \__2/FSM_sequential_estado_atual[0]_i_1_n_0\ : STD_LOGIC;
  signal \__2/FSM_sequential_estado_atual[1]_i_1_n_0\ : STD_LOGIC;
  signal \__2/FSM_sequential_estado_atual[2]_i_1_n_0\ : STD_LOGIC;
  signal estado_atual : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of estado_atual : signal is "yes";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_estado_atual_reg[0]\ : label is "init:000,wait_coin:001,add_val:010,disp:011,wait_get:100";
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_estado_atual_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_estado_atual_reg[1]\ : label is "init:000,wait_coin:001,add_val:010,disp:011,wait_get:100";
  attribute KEEP of \FSM_sequential_estado_atual_reg[1]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_estado_atual_reg[2]\ : label is "init:000,wait_coin:001,add_val:010,disp:011,wait_get:100";
  attribute KEEP of \FSM_sequential_estado_atual_reg[2]\ : label is "yes";
begin
\FSM_sequential_estado_atual_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \__2/FSM_sequential_estado_atual[0]_i_1_n_0\,
      Q => estado_atual(0)
    );
\FSM_sequential_estado_atual_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \__2/FSM_sequential_estado_atual[1]_i_1_n_0\,
      Q => estado_atual(1)
    );
\FSM_sequential_estado_atual_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \__2/FSM_sequential_estado_atual[2]_i_1_n_0\,
      Q => estado_atual(2)
    );
\__1/i_\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => estado_atual(1),
      I1 => estado_atual(0),
      I2 => estado_atual(2),
      O => SR(0)
    );
\__2/FSM_sequential_estado_atual[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0155"
    )
        port map (
      I0 => estado_atual(2),
      I1 => c,
      I2 => estado_atual(1),
      I3 => estado_atual(0),
      O => \__2/FSM_sequential_estado_atual[0]_i_1_n_0\
    );
\__2/FSM_sequential_estado_atual[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4544554500000000"
    )
        port map (
      I0 => estado_atual(1),
      I1 => c,
      I2 => s(0),
      I3 => Q(0),
      I4 => \sQ_reg[0]\,
      I5 => estado_atual(0),
      O => \__2/FSM_sequential_estado_atual[1]_i_1_n_0\
    );
\__2/FSM_sequential_estado_atual[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FA02"
    )
        port map (
      I0 => estado_atual(2),
      I1 => get,
      I2 => estado_atual(1),
      I3 => estado_atual(0),
      O => \__2/FSM_sequential_estado_atual[2]_i_1_n_0\
    );
d_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"24"
    )
        port map (
      I0 => estado_atual(0),
      I1 => estado_atual(2),
      I2 => estado_atual(1),
      O => d
    );
\sQ[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => estado_atual(1),
      I1 => estado_atual(0),
      I2 => estado_atual(2),
      O => tot_ld
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_registrador is
  port (
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_estado_atual_reg[1]\ : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    tot_ld : in STD_LOGIC;
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_registrador;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_registrador is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal plusOp : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \sQ[3]_i_3_n_0\ : STD_LOGIC;
  signal \sQ_reg__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \sQ[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \sQ[3]_i_3\ : label is "soft_lutpair0";
begin
  Q(0) <= \^q\(0);
\FSM_sequential_estado_atual[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F02FFFF00002F02"
    )
        port map (
      I0 => s(0),
      I1 => \sQ_reg__0\(0),
      I2 => \sQ_reg__0\(1),
      I3 => s(1),
      I4 => \sQ_reg__0\(2),
      I5 => s(2),
      O => \FSM_sequential_estado_atual_reg[1]\
    );
\sQ[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sQ_reg__0\(0),
      I1 => a(0),
      O => plusOp(0)
    );
\sQ[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => \sQ_reg__0\(0),
      I1 => a(0),
      I2 => a(1),
      I3 => \sQ_reg__0\(1),
      O => plusOp(1)
    );
\sQ[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F880077F077FF880"
    )
        port map (
      I0 => a(0),
      I1 => \sQ_reg__0\(0),
      I2 => \sQ_reg__0\(1),
      I3 => a(1),
      I4 => a(2),
      I5 => \sQ_reg__0\(2),
      O => plusOp(2)
    );
\sQ[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \sQ[3]_i_3_n_0\,
      I1 => \sQ_reg__0\(2),
      I2 => a(2),
      I3 => a(3),
      I4 => \^q\(0),
      O => plusOp(3)
    );
\sQ[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E888"
    )
        port map (
      I0 => a(1),
      I1 => \sQ_reg__0\(1),
      I2 => \sQ_reg__0\(0),
      I3 => a(0),
      O => \sQ[3]_i_3_n_0\
    );
\sQ_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tot_ld,
      D => plusOp(0),
      Q => \sQ_reg__0\(0),
      R => SR(0)
    );
\sQ_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tot_ld,
      D => plusOp(1),
      Q => \sQ_reg__0\(1),
      R => SR(0)
    );
\sQ_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tot_ld,
      D => plusOp(2),
      Q => \sQ_reg__0\(2),
      R => SR(0)
    );
\sQ_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tot_ld,
      D => plusOp(3),
      Q => \^q\(0),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath is
  port (
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_estado_atual_reg[1]\ : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    tot_ld : in STD_LOGIC;
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath is
begin
tot: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_registrador
     port map (
      \FSM_sequential_estado_atual_reg[1]\ => \FSM_sequential_estado_atual_reg[1]\,
      Q(0) => Q(0),
      SR(0) => SR(0),
      a(3 downto 0) => a(3 downto 0),
      clk => clk,
      s(2 downto 0) => s(2 downto 0),
      tot_ld => tot_ld
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_maquinaRefri is
  port (
    d : out STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    c : in STD_LOGIC;
    s : in STD_LOGIC_VECTOR ( 3 downto 0 );
    get : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_maquinaRefri;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_maquinaRefri is
  signal DATAPATH_n_1 : STD_LOGIC;
  signal FSM_CTRL_n_0 : STD_LOGIC;
  signal s_tot_clr : STD_LOGIC;
  signal \tot/sQ_reg__0\ : STD_LOGIC_VECTOR ( 3 to 3 );
begin
DATAPATH: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath
     port map (
      \FSM_sequential_estado_atual_reg[1]\ => DATAPATH_n_1,
      Q(0) => \tot/sQ_reg__0\(3),
      SR(0) => s_tot_clr,
      a(3 downto 0) => a(3 downto 0),
      clk => clk,
      s(2 downto 0) => s(2 downto 0),
      tot_ld => FSM_CTRL_n_0
    );
FSM_CTRL: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_controlador
     port map (
      Q(0) => \tot/sQ_reg__0\(3),
      SR(0) => s_tot_clr,
      c => c,
      clk => clk,
      d => d,
      get => get,
      rst => rst,
      s(0) => s(3),
      \sQ_reg[0]\ => DATAPATH_n_1,
      tot_ld => FSM_CTRL_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    c : in STD_LOGIC;
    clk : in STD_LOGIC;
    get : in STD_LOGIC;
    rst : in STD_LOGIC;
    s : in STD_LOGIC_VECTOR ( 3 downto 0 );
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    d : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_maquinaRefri_1_0,maquinaRefri,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "maquinaRefri,Vivado 2017.4";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_clk_1";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW";
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_maquinaRefri
     port map (
      a(3 downto 0) => a(3 downto 0),
      c => c,
      clk => clk,
      d => d,
      get => get,
      rst => rst,
      s(3 downto 0) => s(3 downto 0)
    );
end STRUCTURE;
