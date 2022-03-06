entity PrimeDetector is
	port (SW    : in bit_vector(3 downto 0);
		  Prime : out bit);
end entity;

architecture PrimeDetector_arch of PrimeDetector is
begin
	PrimeDetector_proc : process (SW)
		begin
			case (SW) is
				when "0010" | "0011" | "0101" | "0111" | "1011" | "1101" => Prime <= '1';
				when others 											 => Prime <= '0';
			end case;
	end process;
end architecture;