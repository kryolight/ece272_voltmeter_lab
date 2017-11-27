module data_processor (
	input logic [15:0] unprocessed_i,
	output logic [15:0] processed_o
		);
		
		//int a = 3.3/5;
		
		//assign processed_o = ((unprocessed_i * 3500) / ((2 ** 16) - 1));
		assign processed_o = (unprocessed_i*5000)/(2**16-1);
		//assign processed_o = (1234 * (5000) / (65535));
endmodule