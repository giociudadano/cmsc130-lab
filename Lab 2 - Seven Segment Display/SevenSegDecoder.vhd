entity SevenSegDecoder is
	port (SW		: in bit_vector(3 downto 0);
		  Prime		: out bit;
		  SevenSeg	: out bit_vector(6 downto 0));
end entity;

architecture SevenSegDecoder_arch of SevenSegDecoder is
begin
	SevenSegDecoder_proc : process (SW)
		begin
			-- Prime Number Detector --
			case (SW) is
				when "0010" | "0011" | "0101" | "0111" | "1011" | "1101" => Prime <= '1';	-- Prime: 2, 3, 5, 7, 11, 13
				when others 											 => Prime <= '0';	-- Not Prime: 0, 1, 4, 6, 8, 9, 10, 12, 14, 15
			end case;
			
			-- Seven Segment Display --
			case (SW) is
				when "0000" => SevenSeg <= "1111110";	-- 0
				when "0001" => SevenSeg <= "0110000";	-- 1
				when "0010" => SevenSeg <= "1101101";	-- 2
				when "0011" => SevenSeg <= "1111001"; 	-- 3
				when "0100" => SevenSeg <= "0110011";	-- 4
				when "0101" => SevenSeg <= "1011011";	-- 5
				when "0110" => SevenSeg <= "1011111";	-- 6
				when "0111" => SevenSeg <= "1110000";	-- 7
				when "1000" => SevenSeg <= "1111111";	-- 8
				when "1001" => SevenSeg <= "1111011";	-- 9
				when "1010" => SevenSeg <= "1110111";	-- A
				when "1011" => SevenSeg <= "0011111"; 	-- B
				when "1100" => SevenSeg <= "0001101";	-- C
				when "1101" => SevenSeg <= "0111101";	-- D
				when "1110" => SevenSeg <= "1001111";	-- E
				when "1111" => SevenSeg <= "1000111";	-- F
				when others => SevenSeg <= "0000000";
			end case;
	end process;
end architecture;