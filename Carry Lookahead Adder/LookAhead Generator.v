module four_bit_cla_generator(P,G,C_in,S,C_out);

	input C_in;
	input [3:0] P,G;
	output [3:0] S;
	output C_out;
	wire [3:0] C;
	wire A0, A1, A2, A3, A4, A5, A6, A7, A8, A9;
	
	and a0(A0, P[0], C_in);
	or o1(C[1], A0, G[0]);

	and a1(A1, P[0], P[1], C_in);
	and a2(A2, G[0], P[1]);
	or o2(C[2], A1, A2, G[1]);

	and a3(A3, P[0], P[1], P[2], C_in);
	and a4(A4, P[2], P[1], G[0]);
	and a5(A5, P[2], G[1]);
	or o3(C[3], A3, A4, A5, G[2]);

	and a6(A6, P[3], P[2], P[1], P[0], C_in);
	and a7(A7, P[3], P[2], P[1], G[0]);
	and a8(A8, P[3], P[2], G[1]);
	and a9(A9, P[3], G[2]);
	or o4(C_out, A6, A7, A8, A9, G[3]);

	assign S = P^C;
endmodule 