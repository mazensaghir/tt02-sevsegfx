// Divides the 12.5 KHz clock to generate a 2 Hz clock

module clk_div (i_clk, i_rst, o_clk);
  input     i_clk, i_rst;
  output    o_clk;

  reg [12:0] r_div_counter;

  always@(posedge i_clk) begin
    if (i_rst == 1'b1 || r_div_counter == 6249) 
      r_div_counter = 0;
    else
      r_div_counter = r_div_counter + 1; 
  end

  assign o_clk = (r_div_counter == 6249) ? 1'b1 : 1'b0;
endmodule