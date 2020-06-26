module carry_select_tb;

	reg [15:0]A,B;
	reg C_in;
	wire [15:0] S;
	wire C_out;

	carry_select_adder_16bit uut(.a(A), .b(B), .c_in(C_in), .s(S), .c_out(C_out));

	
	initial begin
	A = 0; B= 0; C_in =0;
#100
	C_in = 1'b0;
	A = 16'b1111000011110001;
	B = 16'b1100101000111111;
#100
	C_in = 1'b0;
	A = 16'b1111111111111111;
	B = 16'b1111111111111111;
#100
	C_in = 1'b0;
	A = 16'b1001110010011101;
	B = 16'b1000111111110000;
#100
	C_in = 1'b0;
	A = 16'b1010101010101010;
	B = 16'b0101010101010101;
#100
	C_in = 1'b0;
	A = 16'b1001110010011101;
	B = 16'b1000110001110000;
#100
	C_in = 1'b0;
	A = 16'b1001100010011101;
	B = 16'b1111111111111111;
#100

	C_in = 1'b0;
	A = 16'b1001100010011101;
	B = 16'b00000000111111111;
#100
	C_in = 1'b0;
	A = 16'b1001100010011101;
	B = 16'b0000011111111111;
#100
	C_in = 1'b0;
	A = 16'b0000000010011101;
	B = 16'b1000000000001111;
	end

initial begin
      	$monitor(,$time,"A=%b, B=%b , Sum = %b, C_cout=%b ",A,B,S,C_out);
end


endmodule
