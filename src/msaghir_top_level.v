module msaghir_top_level (io_in, io_out);
  input     [7:0] io_in;
  output    [7:0] io_out;

  wire      w_clk = io_in[0];
  wire      w_rst = io_in[1];
  wire      w_clk_2hz;
  wire      [2:0] w_count;
  wire      [6:0] w_segment;

  assign io_out[6:0] = w_segment;

  clk_div       u0 (.i_clk(w_clk), .i_rst(w_rst), .o_clk(w_clk_2hz));
  mod8_counter  u1 (.i_clk(w_clk_2hz), .i_rst(w_rst), .o_count(w_count));
  rand_pattern  u2 (.i_count(w_count), .o_segment(w_segment));
endmodule