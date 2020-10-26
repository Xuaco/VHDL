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
