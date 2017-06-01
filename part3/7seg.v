//SW[2:0] data inputs 
//SW[9] select signal 
//LEDR[0] output display

module 7seg (LEDR, SW);
	input[9:0] SW;
	output[6:0] HEX0;

	assign HEX0[0] = ~SW[3] & ~SW[2] & ~SW[1] &  SW[0] |
			 ~SW[3] &  SW[2] & ~SW[1] & ~SW[0] |
			  SW[3] &  SW[2] & ~SW[1] &  SW[0] |
			  SW[3] & ~SW[2] &  SW[1] &  SW[0]
endmodule


