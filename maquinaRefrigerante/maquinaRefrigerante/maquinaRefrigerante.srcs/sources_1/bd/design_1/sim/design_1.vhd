--Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
--Date        : Mon Apr 15 11:56:44 2019
--Host        : alan running 64-bit Ubuntu 16.04.4 LTS
--Command     : generate_target design_1.bd
--Design      : design_1
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1 is
  port (
    a_1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    c_1 : in STD_LOGIC;
    clk_1 : in STD_LOGIC;
    d_1 : out STD_LOGIC;
    get_0 : in STD_LOGIC;
    rst_1 : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1 : entity is "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_1 : entity is "design_1.hwdef";
end design_1;

architecture STRUCTURE of design_1 is
  component design_1_xlconstant_1_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component design_1_xlconstant_1_0;
  component design_1_maquinaRefri_1_0 is
  port (
    c : in STD_LOGIC;
    clk : in STD_LOGIC;
    get : in STD_LOGIC;
    rst : in STD_LOGIC;
    s : in STD_LOGIC_VECTOR ( 3 downto 0 );
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    d : out STD_LOGIC
  );
  end component design_1_maquinaRefri_1_0;
  signal a_1_1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal c_1_1 : STD_LOGIC;
  signal clk_1_1 : STD_LOGIC;
  signal get_0_1 : STD_LOGIC;
  signal maquinaRefri_1_d : STD_LOGIC;
  signal rst_1_1 : STD_LOGIC;
  signal xlconstant_1_dout : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk_1 : signal is "xilinx.com:signal:clock:1.0 CLK.CLK_1 CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk_1 : signal is "XIL_INTERFACENAME CLK.CLK_1, ASSOCIATED_RESET rst_1, CLK_DOMAIN design_1_clk_1, FREQ_HZ 100000000, PHASE 0.000";
  attribute X_INTERFACE_INFO of rst_1 : signal is "xilinx.com:signal:reset:1.0 RST.RST_1 RST";
  attribute X_INTERFACE_PARAMETER of rst_1 : signal is "XIL_INTERFACENAME RST.RST_1, POLARITY ACTIVE_LOW";
begin
  a_1_1(3 downto 0) <= a_1(3 downto 0);
  c_1_1 <= c_1;
  clk_1_1 <= clk_1;
  d_1 <= maquinaRefri_1_d;
  get_0_1 <= get_0;
  rst_1_1 <= rst_1;
maquinaRefri_1: component design_1_maquinaRefri_1_0
     port map (
      a(3 downto 0) => a_1_1(3 downto 0),
      c => c_1_1,
      clk => clk_1_1,
      d => maquinaRefri_1_d,
      get => get_0_1,
      rst => rst_1_1,
      s(3 downto 0) => xlconstant_1_dout(3 downto 0)
    );
xlconstant_1: component design_1_xlconstant_1_0
     port map (
      dout(3 downto 0) => xlconstant_1_dout(3 downto 0)
    );
end STRUCTURE;
