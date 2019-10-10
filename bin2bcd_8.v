//------------------------------
// Module name: bin2bcd_8
// Function: Converts an 8-bit binary number to 3 digits BCD
//            .... it uses a shift-and-add3 algorithm
// Creator:  Peter Cheung
// Version:  1.0
// Date:     17 Sept 2016
//------------------------------
//   For more explanation of how this work, see 
//     ... instructions on wwww.ee.ic.ac.uk/pcheung/teaching/E2_experiment

module bin2bcd_8 (B, BCD_0, BCD_1, BCD_2);

	input [7:0]	B;		// binary input number
	output [3:0]	BCD_0, BCD_1, BCD_2;   // BCD digit LSD to MSD
	
	wire [3:0]	w1,w2,w3,w4,w5,w6,w7;
	wire [3:0]	a1,a2,a3,a4,a5,a6,a7;

	// Instantiate a tree of add3-if-greater than or equal to 5 cells
	//  ... input is w_n, and output is a_n
	add3_ge5 A1 (w1,a1);
	add3_ge5 A2 (w2,a2);
	add3_ge5 A3 (w3,a3);
	add3_ge5 A4 (w4,a4);
	add3_ge5 A5 (w5,a5);
	add3_ge5 A6 (w6,a6);
	add3_ge5 A7 (w7,a7);
			
	// wire the tree of add3 modules together
	assign  w1 = {1'b0, B[7:5]};		// wn is the input port to module An
	assign  w2 = {a1[2:0], B[4]};
	assign  w3 = {a2[2:0], B[3]};
	assign  w4 = {1'b0, a1[3], a2[3], a3[3]};
	assign  w5 = {a3[2:0], B[2]};
	assign  w6 = {a4[2:0], a5[3]};
	assign  w7 = {a5[2:0], B[1]};
	
	// connect up to four BCD digit outputs	
	assign BCD_0 = {a7[2:0],B[0]};
	assign BCD_1 = {a6[2:0],a7[3]};
	assign BCD_2 = {2'b0,a4[3],a6[3]};
	
endmodule

	
	

