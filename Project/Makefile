.PHONY: all basic one two clean

basic_dir	:= src/basic
one_dir		:= src/one-bit-sub
two_dir		:= src/two-bit-sub

basic_out	:= tb_basic.out
one_out		:= tb_onebit.out
two_out		:= tb_twobit.out

all: basic one two

basic:
	cd $(basic_dir) && iverilog -o $(basic_out) tb_basic.v && vvp $(basic_out)	

one:
	cd $(one_dir) && iverilog -o $(one_out) tb_onebit.v && vvp $(one_out)

two:
	cd $(two_dir) && iverilog -o $(two_out) tb_twobit.v && vvp $(two_out)

clean:
	find . -type f \( -name "*.vcd" -o -name "*.out" \) -delete