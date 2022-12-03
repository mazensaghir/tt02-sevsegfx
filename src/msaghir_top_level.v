module msaghir_top_level 
  (
    input   [7:0] io_in, 
    output  [7:0] io_out
  );

  wire      w_clk = io_in[0];
  wire      w_rst = io_in[1];
  wire      [3:0] w_sel = io_in[5:2];
  wire      [2:0] w_count;
  wire      [6:0] w_segment;
  wire      [6:0] w_bus0;
  wire      [6:0] w_bus1;
  wire      [6:0] w_bus2;
  wire      [6:0] w_bus3;
  wire      [6:0] w_bus4;
  wire      [6:0] w_bus5;
  wire      [6:0] w_bus6;
  wire      [6:0] w_bus7;
  wire      [6:0] w_bus8;
  wire      [6:0] w_bus9;
  wire      [6:0] w_bus10;
  wire      [6:0] w_bus11;
  wire      [6:0] w_bus12;
  wire      [6:0] w_bus13;
  wire      [6:0] w_bus14;
  wire      [6:0] w_bus15;

  assign io_out = {1'b0, w_segment};

  mod8_counter      u0 (.i_clk(w_clk), .i_rst(w_rst), .o_count(w_count));
  cw0_pattern       u1 (.i_count(w_count), .o_segment(w_bus0));
  ccw0_pattern      u2 (.i_count(w_count), .o_segment(w_bus1));
  cw8_pattern       u3 (.i_count(w_count), .o_segment(w_bus2));
  ccw8_pattern      u4 (.i_count(w_count), .o_segment(w_bus3));
  snake_cw_pattern  u5 (.i_count(w_count), .o_segment(w_bus4));
  snake_ccw_pattern u6 (.i_count(w_count), .o_segment(w_bus5));
  vscan_pattern     u7 (.i_count(w_count[1:0]), .o_segment(w_bus6));
  hscan_pattern     u8 (.i_count(w_count[0]), .o_segment(w_bus7));
  warn1_pattern     u9 (.i_count(w_count[0]), .o_segment(w_bus8));
  warn2_pattern     u10 (.i_count(w_count[0]), .o_segment(w_bus9));
  warn3_pattern     u11 (.i_count(w_count[1:0]), .o_segment(w_bus10));
  warn4_pattern     u12 (.i_count(w_count[1:0]), .o_segment(w_bus11));
  warn5_pattern     u13 (.i_count(w_count[0]), .o_segment(w_bus12));
  warn6_pattern     u14 (.i_count(w_count[0]), .o_segment(w_bus13));
  xscan_pattern     u15 (.i_count(w_count[1:0]), .o_segment(w_bus14));
  rand_pattern      u16 (.i_count(w_count), .o_segment(w_bus15));
  mux16             u17 (.i_in0(w_bus0), .i_in1(w_bus1), .i_in2(w_bus2), .i_in3(w_bus3), .i_in4(w_bus4), .i_in5(w_bus5), .i_in6(w_bus6), .i_in7(w_bus7), .i_in8(w_bus8), .i_in9(w_bus9), .i_in10(w_bus10), .i_in11(w_bus11), .i_in12(w_bus12), .i_in13(w_bus13), .i_in14(w_bus14), .i_in15(w_bus15), .i_sel(w_sel), .o_out(w_segment));
endmodule