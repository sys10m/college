----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/25/2022 07:29:28 PM
-- Design Name: 
-- Module Name: RF_Mux16_32Bit_20336871_TB - Behavioral
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

entity RF_Mux16_32Bit_20336871_TB is
--  Port ( );
end RF_Mux16_32Bit_20336871_TB;

architecture Behavioral of RF_Mux16_32Bit_20336871_TB is
    COMPONENT RF_Mux16_32Bit_20336871
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
     END COMPONENT;
     
     -- signal
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
     signal Sel: std_logic_vector(3 downto 0):= (others => '0');
     signal z: std_logic_vector(31 downto 0):= (others => '0');
begin
    uut: RF_Mux16_32Bit_20336871 PORT MAP(
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
        wait for 5ns;
        Sel <= "0000";
        wait for 5ns;
        Sel <= "0001";
        wait for 5ns;
        Sel <= "0010";
        wait for 5ns;
        Sel <= "0011";
        wait for 5ns;
        Sel <= "0100";
        wait for 5ns;
        Sel <= "0101";
        wait for 5ns;
        Sel <= "0110";
        wait for 5ns;
        Sel <= "0111";
        wait for 5ns;
        Sel <= "1000";
        wait for 5ns;
        Sel <= "1001";
        wait for 5ns;
        Sel <= "1010";
        wait for 5ns;
        Sel <= "1011";
        wait for 5ns;
        Sel <= "1100";
        wait for 5ns;
        Sel <= "1101";
        wait for 5ns;
        Sel <= "1110";
        wait for 5ns;
        Sel <= "1111";
        wait for 5ns;
    end process;
end Behavioral;