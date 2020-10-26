-- example from: https://jnjsite.com/vhdl-sumador-completo-de-1-bit/
-- Sumador completo de 1 bit

-- Librerías

library IEEE;
use IEEE.std_logic_1164.all;


-- Declaración de la entidad del circuito

entity oneBitFullAdder is
    port (
        sum, carryOut : out std_logic;
        a, b, carryIn : in std_logic
    );
end entity;

-- Arquitectura del circuito

architecture arch of oneBitFullAdder is

    signal auxInVect : std_logic_vector (2 downto 0);

begin

    auxInVect(2) <= carryIn;
    auxInVect(1) <= a;
    auxInVect(0) <= b;

    sum <= '0' when auxInVect = "000" else
        '1' when auxInVect = "001" else
        '1' when auxInVect = "010" else
        '0' when auxInVect = "011" else
        '1' when auxInVect = "100" else
        '0' when auxInVect = "101" else
        '0' when auxInVect = "110" else
        '1';

    carryOut <= '0' when auxInVect = "000" else
        '0' when auxInVect = "001" else
        '0' when auxInVect = "010" else
        '1' when auxInVect = "011" else
        '0' when auxInVect = "100" else
        '1' when auxInVect = "101" else
        '1' when auxInVect = "110" else
        '1';

end architecture;
