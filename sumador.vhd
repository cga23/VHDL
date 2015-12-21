----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:59:35 12/09/2015 
-- Design Name: 
-- Module Name:    sumador - Behavioral 
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

entity sumador is
generic (N: natural);
port(
	  A: in std_logic_vector(N-1 downto 0);
	  B: in std_logic_vector(N-1 downto 0);
	  sum: out std_logic_vector(N-1 downto 0));

end sumador;

architecture Behavioral of sumador is

begin

sum <= std_logic_vector(unsigned(A) + unsigned(B));

end Behavioral;

