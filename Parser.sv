module parser (
	//input logic [7:0] button_i,
	input logic [15:0] button_i,
	input logic [2:0] state_i,

	output logic [3:0] digit1_o,
	output logic [3:0] digit2_o,
	output logic [3:0] digit3_o,
	output logic [3:0] digit4_o
		);

		assign digit1_o = (button_i / 1000) % 10; 
		assign digit2_o = (button_i / 100) % 10;
		assign digit3_o = (button_i / 10) % 10;
		assign digit4_o = button_i % 10;

/*	
		integer value;
		logic [3:0] digit1;
		logic [3:0] digit2;
		logic [3:0] digit3;
		logic [3:0] digit4;
		
		parameter S0 = 3'b000; //First digit
		parameter S1 = 3'b001; //Second digit
		parameter S2 = 3'b011; //Third digit
		parameter S3 = 3'b100; //Fourth digit


		
		always @ (state_i)
			begin
				if (state_i == S1)
					begin
						value = button_i;
						digit1 = 0;
						digit2 = 0;
						digit3 = 0;
						digit4 = 0;
					end
			end
			
		always @ (state_i)
			begin
				if (state_i == S2)
					begin
						do begin
							if (value >= 1000)
								begin
									digit1 ++;
									value = value - 1000;
								end
						end while (value >= 1000);
						do begin
							if (value >= 100)
								begin
									digit2 ++;
									value = value - 100;
								end
						end while (value >= 100);
						do begin
							if (value >= 10)
								begin
									digit3 ++;
									value = value - 10;
								end
						end while (value >= 10);
						do begin
							if (value >= 1)
								begin
									digit4 ++;
									value = value - 1;
								end
						end while (value >= 1);
					end
			end							
	
		always @ (state_i)
			begin
				if (state_i == S0)
					begin
						digit1_o = digit1;
						digit2_o = digit2;
						digit3_o = digit3;
						digit4_o = digit4;
					end
			end
*/			
			
endmodule