module carry_select_adder_4bit_slice(a, b, c_in, s, c);
	input [3:0] a,b;
	input c_in;
	output [3:0] s;
	output c;
 
	wire [3:0] s0,s1;
	wire c0,c1;
 
	ripple_carry_4_bit rca1(.a(a[3:0]),.b(b[3:0]),.c_in(1'b0),.s(s0[3:0]),.c(c0));
 
	ripple_carry_4_bit rca2(.a(a[3:0]),.b(b[3:0]),.c_in(1'b1),.s(s1[3:0]),.c(c1));
 
	mux2X1 ms0(.in0(s0[0]),.in1(s1[0]),.sel(c_in),.out(s[0]));

	mux2X1 ms1(.in0(s0[1]),.in1(s1[1]),.sel(c_in),.out(s[1]));

	mux2X1 ms2(.in0(s0[2]),.in1(s1[2]),.sel(c_in),.out(s[2]));

	mux2X1 ms3(.in0(s0[3]),.in1(s1[3]),.sel(c_in),.out(s[3]));
 
	mux2X1 mc0(.in0(c0),.in1(c1),.sel(c_in),.out(c));

endmodule
