//------------------------------
// Module name: bin2bcd_10
// Function: Converts a 10-bit binary number to 4 digits BCD
//            .... it use0 a shift-and-add3 algorithm
// Creator:  Peter Cheung
// Version:  1.0
// Date:     19 Sept 2016
//------------------------------
//   For more explanation of how this work, see 
//     ... instructions on wwww.ee.ic.ac.uk/pcheung/teaching/E2_experiment

module bin2bcd_10 (B, BCD_0, BCD_1, BCD_2, BCD_3);

	input [9:0]	B;		// binary input number
	output [3:0]	BCD_0, BCD_1, BCD_2, BCD_3;   // BCD digit LSD to MSD
	
	wire [3:0]	w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11,w12;
	wire [3:0]	a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12;

	// Instantiate a tree of add3-if-greater than or equal to 5 cells
	//  ... input is w_n, and output is a_n
	add3_ge5 A1 (w1,a1);
	add3_ge5 A2 (w2,a2);
	add3_ge5 A3 (w3,a3);
	add3_ge5 A4 (w4,a4);
	add3_ge5 A5 (w5,a5);
	add3_ge5 A6 (w6,a6);
	add3_ge5 A7 (w7,a7);
	add3_ge5 A8 (w8,a8);
	add3_ge5 A9 (w9,a9);
	add3_ge5 A10 (w10,a10);
	add3_ge5 A11 (w11,a11);
	add3_ge5 A12 (w12,a12);

	// wire the tree of add3 modules together
	assign  w1 = {1'b0, B[9:7]};		// wn is the input port to module An
	assign  w2 = {a1[2:0], B[6]};
	assign  w3 = {a2[2:0], B[5]};
	assign  w4 = {1'b0, a1[3], a2[3], a3[3]};
	assign  w5 = {a3[2:0], B[4]};
	assign  w6 = {a4[2:0], a5[3]};
	assign  w7 = {a5[2:0], B[3]};
	assign  w8 = {a6[2:0], a7[3]};
	assign  w9 = {a7[2:0], B[2]};
	assign  w10 = {1'b0, a4[3], a6[3], a8[3]};
	assign  w11 = {a8[2:0], a9[3]};
	assign  w12 = {a9[2:0], B[1]};
	
	// connect up to four BCD digit outputs	
	assign BCD_0 = {a12[2:0],B[0]};
	assign BCD_1 = {a11[2:0],a12[3]};
	assign BCD_2 = {a10[2:0],a11[3]};
	assign BCD_3 = {3'b0,a10[3]};
	
endmodule

	
	

