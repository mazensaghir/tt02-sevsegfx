// modulo 8 counter to drive seven segment display

module mod8_counter (i_clk, i_rst, o_count);
  input   i_clk, i_rst;
  output  [2:0] o_count;
  
  reg [2:0] r_counter;

  always@(posedge i_clk) begin
    if (i_rst == 1'b1)
      r_counter = 0;
    else
      r_counter = r_counter + 1;
  end

  assign o_counter = r_counter;

endmodule