// modulo 8 counter to drive seven segment display

module mod8_counter 
  (input i_clk, i_rst,
   output [2:0] o_count
  );
  
  reg [12:0]  r_delay_counter;
  reg [2:0]   r_counter;

  always@(posedge i_clk) begin
    if (i_rst == 1'b1) begin
      r_delay_counter = 0;
      r_counter = 0;
    end else begin
      r_delay_counter = r_delay_counter + 1;
      if (r_delay_counter == 6250) begin
        r_delay_counter = 0;
        r_counter = r_counter + 1;
      end
    end
  end

  assign o_count = r_counter;

endmodule