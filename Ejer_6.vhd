----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:10:45 07/12/2022 
-- Design Name: 
-- Module Name:    Ejer_6 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
use IEEE.STD_LOGIC_UNSIGNED.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Ejer_6 is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           q : inout  STD_LOGIC_VECTOR (3 downto 0));
end Ejer_6;

architecture Behavioral of Ejer_6 is
signal Qaux : STD_LOGIC_VECTOR (3 downto 0);
begin
process (clk,reset)
begin
	q<= Qaux;
	if (clk' event and clk ='1') then
		if(reset = '0' or Qaux ="101") then
			Qaux <= "0000";
		elsif(Qaux = "0000") then
			Qaux <= Qaux+1;
		else
				Qaux <= Qaux+2;
			end if;
		end if;
end process;
end Behavioral;

