module slowclockled (clk,slowclock, LEDG0, LEDG1);	 
	input clk; 
	output slowclock; 		
	output LEDG0;
	output LEDG1;

	reg[32:0] counter;
	reg state;
	
	assign slowclock = state;
	assign LEDG0 = 1'b1;
	assign LEDG1= state;
	
	always @ (posedge clk)
		begin
		counter <= counter + 1;
		state <= counter [24];
		end
endmodule
