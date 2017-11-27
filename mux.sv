module MUX( 
		input logic [3:0] MUXIN0,MUXIN1,MUXIN2,MUXIN3,
		input logic [2:0] MUXS,
		output logic [3:0] MUXout);
		
	always_ff @ (*)
	begin
			case(MUXS)
				3'b000: MUXout = MUXIN0;
				3'b001: MUXout = MUXIN1;
				3'b011: MUXout = MUXIN2;
				3'b100: MUXout = MUXIN3;
				//default : MUXout = MUXIN0;
				endcase
			end
				endmodule
				
		
		
		
