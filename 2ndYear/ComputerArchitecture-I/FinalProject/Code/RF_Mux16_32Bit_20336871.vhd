----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Prab Hiranayachatri
-- 
-- Create Date: 10/24/2022 05:57:24 PM
-- Design Name: 
-- Module Name: RF_Mux16_32Bit_20336871 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RF_Mux16_32Bit_20336871 is
    Port ( IN0: in std_logic_vector(31 downto 0);   
           IN1: in std_logic_vector(31 downto 0);
           IN2: in std_logic_vector(31 downto 0);
           IN3: in std_logic_vector(31 downto 0);
           IN4: in std_logic_vector(31 downto 0);
           IN5: in std_logic_vector(31 downto 0);
           IN6: in std_logic_vector(31 downto 0);
           IN7: in std_logic_vector(31 downto 0);
           IN8: in std_logic_vector(31 downto 0);
           IN9: in std_logic_vector(31 downto 0);
           IN10: in std_logic_vector(31 downto 0);
           IN11: in std_logic_vector(31 downto 0);
           IN12: in std_logic_vector(31 downto 0);
           IN13: in std_logic_vector(31 downto 0);
           IN14: in std_logic_vector(31 downto 0);
           IN15: in std_logic_vector(31 downto 0);
           Sel: in std_logic_vector(3 downto 0);
           z: out std_logic_vector(31 downto 0));
end RF_Mux16_32Bit_20336871;

architecture mux16_behaviour of RF_Mux16_32Bit_20336871 is
begin
    z <= IN0 after 5ns when Sel = "0000" else
     IN1 after 5ns when Sel = "0001" else
     IN2 after 5ns when Sel = "0010" else
     IN3 after 5ns when Sel = "0011" else
     IN4 after 5ns when Sel = "0100" else
     IN5 after 5ns when Sel = "0101" else
     IN6 after 5ns when Sel = "0110" else
     IN7 after 5ns when Sel = "0111" else
     IN8 after 5ns when Sel = "1000" else
     IN9 after 5ns when Sel = "1001" else
     IN10 after 5ns when Sel = "1010" else
     IN11 after 5ns when Sel = "1011" else
     IN12 after 5ns when Sel = "1100" else
     IN13 after 5ns when Sel = "1101" else
     IN14 after 5ns when Sel = "1110" else
     IN15 after 5ns when Sel = "1111" else
     "00000000000000000000000000000000" after 5ns;

end mux16_behaviour;