module SixteenBit_LookAhead_Adder(A,B,C_in,S,C_out);
	input [15:0] A;
	input [15:0] B;
	input C_in;
	output [15:0] S;
	output C_out;
	wire [15:0] P,G;
	wire [2:0] Carry;
	
	PG_Generator PG1 (.A(A[15:0]),.B(B[15:0]),.P(P[15:0]),.G(G[15:0]));

	four_bit_cla_generator FBIT_CLA1 (.P(P[3:0]),.G(G[3:0]),.C_in(C_in),.S(S[3:0]),.C_out(Carry[0]));
	four_bit_cla_generator FBIT_CLA2 (.P(P[7:4]),.G(G[7:4]),.C_in(Carry[0]),.S(S[7:4]),.C_out(Carry[1]));
	four_bit_cla_generator FBIT_CLA3 (.P(P[11:8]),.G(G[11:8]),.C_in(Carry[1]),.S(S[11:8]),.C_out(Carry[2]));
	four_bit_cla_generator FBIT_CLA4 (.P(P[15:12]),.G(G[15:12]),.C_in(Carry[2]),.S(S[15:12]),.C_out(C_out));

endmodule 