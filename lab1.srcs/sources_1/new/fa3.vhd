----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/25/2022 11:30:19 AM
-- Design Name: 
-- Module Name: fa3 - structural
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

entity fa3 is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           cin : in STD_LOGIC;
           sum : out STD_LOGIC;
           carry : out STD_LOGIC);
end fa3;

architecture structural of fa3 is
component ha1 is
        Port ( a : in STD_LOGIC;
       b : in STD_LOGIC;
       s : out STD_LOGIC;
       c : out STD_LOGIC);
       end component;
       
       signal sum1, sum2, carry1, carry2: std_logic;
       
begin
CCE2 : ha1 port map (a, b, sum1, carry1);
CCE3 : ha1 port map (cin, sum1, sum2, carry2);

sum <= sum2;
carry <= carry1 or carry2;
 

end structural;
