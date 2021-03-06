module full_adder(a,b,c_in,s,c);
	input a,b,c_in;
	output s,c;

	wire x,y,z;
	half_adder h1(.a(a), .b(b), .s(x), .c(y));
	half_adder h2(.a(x), .b(c_in), .s(s), .c(z));
	or o1(c,z,y);
endmodule
