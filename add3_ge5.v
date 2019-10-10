//------------------------------
// Module name: add3_ge5
// Function: Add 3 to input if it is 5 or above
// Creator:  Peter Cheung
// Version:  1.0
// Date:     21 Jan 2014
//------------------------------

module add3_ge5(iW,oA);

 input [3:0] iW; 
 output reg [3:0] oA;  
 
	always @ (iW)
		case (iW) 
		//****** input <5, pass to output unchanged ******
			4'b0000: oA <= 4'b0000; 
			4'b0001: oA <= 4'b0001; 
			4'b0010: oA <= 4'b0010; 
			4'b0011: oA <= 4'b0011; 
			4'b0100: oA <= 4'b0100;
			
		//****** input >=5, output = input + 3	******	
			4'b0101: oA <= 4'b1000; 
			4'b0110: oA <= 4'b1001; 
			4'b0111: oA <= 4'b1010; 
			4'b1000: oA <= 4'b1011; 
			4'b1001: oA <= 4'b1100;
			4'b1010: oA <= 4'b1101;	
			4'b1011: oA <= 4'b1110;	
			4'b1100: oA <= 4'b1111;	
			default: oA <= 4'b0000; // oA cannot be 13 or larger, else overflow
		endcase 
endmodule
