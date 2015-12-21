----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:13:15 12/09/2015 
-- Design Name: 
-- Module Name:    contador - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity contador is
generic (N: natural;
			modulo: std_logic_vector);
port (
		clk: in std_logic;		
		reset: in std_logic;
		count_enable: in std_logic;
		output: out std_logic_vector(N-1 downto 0));

end contador;

architecture Behavioral of contador is

signal cuenta: std_logic_vector (N-1 downto 0);

begin

process(clk, reset)
begin

	if reset = '1' then
		cuenta <= (others => '0');
	elsif clk'event and clk = '1' then
		if count_enable = '1' then
			if cuenta = modulo then
				cuenta <= (others => '0');
			else
				cuenta <= std_logic_vector(unsigned(cuenta) + 1);
			end if;
		end if;
	end if;
end process;

output <= cuenta;

end Behavioral;