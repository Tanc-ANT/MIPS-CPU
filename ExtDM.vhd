----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:47:54 01/14/2015 
-- Design Name: 
-- Module Name:    ExtDM - Behavioral 
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ExtDM is
    Port ( ALUOut_W : in  STD_LOGIC_VECTOR (1 downto 0);
           ReadData_W : in  STD_LOGIC_VECTOR (31 downto 0);
           ExtDM_W : in  STD_LOGIC_VECTOR (1 downto 0);
           ReadData_W_R : out  STD_LOGIC_VECTOR (31 downto 0));
end ExtDM;

architecture Behavioral of ExtDM is

begin


end Behavioral;

