ghdl -a SevenSegDecoder.vhd
ghdl -a SevenSegDecoder_TB.vhd
ghdl -e SevenSegDecoder_TB
ghdl -r SevenSegDecoder_TB --vcd=SevenSegDecoder.vcd --stop-time=160ns
gtkwave SevenSegDecoder.vcd