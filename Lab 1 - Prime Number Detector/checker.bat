ghdl -a PrimeDetector.vhd
ghdl -a PrimeDetector_TB.vhd
ghdl -e PrimeDetector_TB
ghdl -r PrimeDetector_TB --vcd=PrimeDetector.vcd --stop-time=90ns
gtkwave PrimeDetector.vcd