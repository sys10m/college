----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/24/2022 06:57:48 PM
-- Design Name: 
-- Module Name: RF_Mux32_32Bit_20336871 - Behavioral
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

entity RF_Mux32_32Bit_20336871 is
    Port( IN0: in std_logic_vector(31 downto 0);
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
          IN16: in std_logic_vector(31 downto 0);
          IN17: in std_logic_vector(31 downto 0);
          IN18: in std_logic_vector(31 downto 0);
          IN19: in std_logic_vector(31 downto 0);
          IN20: in std_logic_vector(31 downto 0);
          IN21: in std_logic_vector(31 downto 0);
          IN22: in std_logic_vector(31 downto 0);
          IN23: in std_logic_vector(31 downto 0);
          IN24: in std_logic_vector(31 downto 0);
          IN25: in std_logic_vector(31 downto 0);
          IN26: in std_logic_vector(31 downto 0);
          IN27: in std_logic_vector(31 downto 0);
          IN28: in std_logic_vector(31 downto 0);
          IN29: in std_logic_vector(31 downto 0);
          IN30: in std_logic_vector(31 downto 0);
          IN31: in std_logic_vector(31 downto 0);
          Sel: in std_logic_vector(4 downto 0);
          z: out  std_logic_vector(31 downto 0));
end RF_Mux32_32Bit_20336871;

architecture mux32_behaviour of RF_Mux32_32Bit_20336871 is
begin
    z <= IN0 after 5ns when Sel = "00000" else
         IN1 after 5ns when Sel = "00001" else
         IN2 after 5ns when Sel = "00010" else
         IN3 after 5ns when Sel = "00011" else
         IN4 after 5ns when Sel = "00100" else
         IN5 after 5ns when Sel = "00101" else
         IN6 after 5ns when Sel = "00110" else
         IN7 after 5ns when Sel = "00111" else
         IN8 after 5ns when Sel = "01000" else
         IN9 after 5ns when Sel = "01001" else
         IN10 after 5ns when Sel = "01010" else
         IN11 after 5ns when Sel = "01011" else
         IN12 after 5ns when Sel = "01100" else
         IN13 after 5ns when Sel = "01101" else
         IN14 after 5ns when Sel = "01110" else
         IN15 after 5ns when Sel = "01111" else
         IN16 after 5ns when Sel = "10000" else
         IN17 after 5ns when Sel = "10001" else
         IN18 after 5ns when Sel = "10010" else
         IN19 after 5ns when Sel = "10011" else
         IN20 after 5ns when Sel = "10100" else
         IN21 after 5ns when Sel = "10101" else
         IN22 after 5ns when Sel = "10110" else
         IN23 after 5ns when Sel = "10111" else
         IN24 after 5ns when Sel = "11000" else
         IN25 after 5ns when Sel = "11001" else
         IN26 after 5ns when Sel = "11010" else
         IN27 after 5ns when Sel = "11011" else
         IN28 after 5ns when Sel = "11100" else
         IN29 after 5ns when Sel = "11101" else
         IN30 after 5ns when Sel = "11110" else
         IN31 after 5ns when Sel = "11111" else
         "00000000000000000000000000000000" after 5ns;

end mux32_behaviour;