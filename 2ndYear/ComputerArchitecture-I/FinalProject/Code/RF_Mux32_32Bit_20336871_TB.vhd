----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/25/2022 08:29:04 PM
-- Design Name: 
-- Module Name: RF_Mux32_32Bit_20336871_TB - Behavioral
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

entity RF_Mux32_32Bit_20336871_TB is
--  Port ( );
end RF_Mux32_32Bit_20336871_TB;

architecture Behavioral of RF_Mux32_32Bit_20336871_TB is

    COMPONENT RF_Mux32_32Bit_20336871
        PORT(IN0: in std_logic_vector(31 downto 0);
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
    END COMPONENT;

    signal IN0: std_logic_vector(31 downto 0):= (others => '0');
    signal IN1: std_logic_vector(31 downto 0):= (others => '0');
    signal IN2: std_logic_vector(31 downto 0):= (others => '0');
    signal IN3: std_logic_vector(31 downto 0):= (others => '0');
    signal IN4: std_logic_vector(31 downto 0):= (others => '0');
    signal IN5: std_logic_vector(31 downto 0):= (others => '0');
    signal IN6: std_logic_vector(31 downto 0):= (others => '0');
    signal IN7: std_logic_vector(31 downto 0):= (others => '0');
    signal IN8: std_logic_vector(31 downto 0):= (others => '0');
    signal IN9: std_logic_vector(31 downto 0):= (others => '0');
    signal IN10: std_logic_vector(31 downto 0):= (others => '0');
    signal IN11: std_logic_vector(31 downto 0):= (others => '0');
    signal IN12: std_logic_vector(31 downto 0):= (others => '0');
    signal IN13: std_logic_vector(31 downto 0):= (others => '0');
    signal IN14: std_logic_vector(31 downto 0):= (others => '0');
    signal IN15: std_logic_vector(31 downto 0):= (others => '0');
    signal IN16: std_logic_vector(31 downto 0):= (others => '0');
    signal IN17: std_logic_vector(31 downto 0):= (others => '0');
    signal IN18: std_logic_vector(31 downto 0):= (others => '0');
    signal IN19: std_logic_vector(31 downto 0):= (others => '0');
    signal IN20: std_logic_vector(31 downto 0):= (others => '0');
    signal IN21: std_logic_vector(31 downto 0):= (others => '0');
    signal IN22: std_logic_vector(31 downto 0):= (others => '0');
    signal IN23: std_logic_vector(31 downto 0):= (others => '0');
    signal IN24: std_logic_vector(31 downto 0):= (others => '0');
    signal IN25: std_logic_vector(31 downto 0):= (others => '0');
    signal IN26: std_logic_vector(31 downto 0):= (others => '0');
    signal IN27: std_logic_vector(31 downto 0):= (others => '0');
    signal IN28: std_logic_vector(31 downto 0):= (others => '0');
    signal IN29: std_logic_vector(31 downto 0):= (others => '0');
    signal IN30: std_logic_vector(31 downto 0):= (others => '0');
    signal IN31: std_logic_vector(31 downto 0):= (others => '0');
    signal Sel: std_logic_vector(4 downto 0):= (others => '0');
    signal z: std_logic_vector(31 downto 0):= (others => '0');
begin
    uut: RF_Mux32_32Bit_20336871 PORT MAP(
        IN0 => IN0,
        IN1 => IN1,
        IN2 => IN2,
        IN3 => IN3,
        IN4 => IN4,
        IN5 => IN5,
        IN6 => IN6,
        IN7 => IN7,
        IN8 => IN8,
        IN9 => IN9,
        IN10 => IN10,
        IN11 => IN11,
        IN12 => IN12,
        IN13 => IN13,
        IN14 => IN14,
        IN15 => IN15,
        IN16 => IN16,
        IN17 => IN17,
        IN18 => IN18,
        IN19 => IN19,
        IN20 => IN20,
        IN21 => IN21,
        IN22 => IN22,
        IN23 => IN23,
        IN24 => IN24,
        IN25 => IN25,
        IN26 => IN26,
        IN27 => IN27,
        IN28 => IN28,
        IN29 => IN29,
        IN30 => IN30,
        IN31 => IN31,
        Sel => Sel,
        z => z
        );
     
     uutProcess: process
     begin
        IN0 <= "00000001001101100101000011100111";
        IN1 <= "00000001001101100101000011101000";
        IN2 <= "00000001001101100101000011101001";
        IN3 <= "00000001001101100101000011101010";   
        IN4 <= "00000001001101100101000011101011";
        IN5 <= "00000001001101100101000011101100";
        IN6 <= "00000001001101100101000011101101";
        IN7 <= "00000001001101100101000011101110";
        IN8 <= "00000001001101100101000011101111";
        IN9 <= "00000001001101100101000011110000";
        IN10 <= "00000001001101100101000011110001";
        IN11 <= "00000001001101100101000011110010";
        IN12 <= "00000001001101100101000011110011";
        IN13 <= "00000001001101100101000011110100";
        IN14 <= "00000001001101100101000011110101";
        IN15 <= "00000001001101100101000011110110";
        IN16 <= "00000001001101100101000011110111";
        IN17 <= "00000001001101100101000011111000";
        IN18 <= "00000001001101100101000011111001";
        IN19 <= "00000001001101100101000011111010";   
        IN20 <= "00000001001101100101000011111011";
        IN21 <= "00000001001101100101000011111100";
        IN22 <= "00000001001101100101000011111101";
        IN23 <= "00000001001101100101000011111110";
        IN24 <= "00000001001101100101000011111111";
        IN25 <= "00000001001101100101000100000000";
        IN26 <= "00000001001101100101000100000001";
        IN27 <= "00000001001101100101000100000010";
        IN28 <= "00000001001101100101000100000011";
        IN29 <= "00000001001101100101000100000100";
        IN30 <= "00000001001101100101000100000101";
        IN31 <= "00000001001101100101000100000110";
        wait for 5ns;
        Sel <= "00000";
        wait for 5ns;
        Sel <= "00001";
        wait for 5ns;
        Sel <= "00010";
        wait for 5ns;
        Sel <= "00011";
        wait for 5ns;
        Sel <= "00100";
        wait for 5ns;
        Sel <= "00101";
        wait for 5ns;
        Sel <= "000110";
        wait for 5ns;
        Sel <= "000111";
        wait for 5ns;
        Sel <= "01000";
        wait for 5ns;
        Sel <= "01001";
        wait for 5ns;
        Sel <= "01010";
        wait for 5ns;
        Sel <= "01011";
        wait for 5ns;
        Sel <= "01100";
        wait for 5ns;
        Sel <= "01101";
        wait for 5ns;
        Sel <= "01110";
        wait for 5ns;
        Sel <= "01111";
        wait for 5ns;
        Sel <= "10000";
        wait for 5ns;
        Sel <= "10001";
        wait for 5ns;
        Sel <= "10010";
        wait for 5ns;
        Sel <= "10011";
        wait for 5ns;
        Sel <= "10100";
        wait for 5ns;
        Sel <= "10101";
        wait for 5ns;
        Sel <= "10110";
        wait for 5ns;
        Sel <= "10111";
        wait for 5ns;
        Sel <= "11000";
        wait for 5ns;
        Sel <= "11001";
        wait for 5ns;
        Sel <= "11010";
        wait for 5ns;
        Sel <= "11011";
        wait for 5ns;
        Sel <= "11100";
        wait for 5ns;
        Sel <= "11101";
        wait for 5ns;
        Sel <= "11110";
        wait for 5ns;
        Sel <= "11111";
        wait for 5ns;
     end process;

end Behavioral;