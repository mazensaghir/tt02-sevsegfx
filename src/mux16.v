module mux16
  (
    input [6:0] i_in0, i_in1, i_in2, i_in3, i_in4, i_in5, i_in6, i_in7, i_in8, i_in9, i_in10, i_in11, i_in12, i_in13, i_in14, i_in15, 
    input [3:0] i_sel, 
    output [6:0] o_out
  );

  always@(i_sel) begin
    case(i_sel)
      0 : o_out = i_in0;
      1 : o_out = i_in1;
      2 : o_out = i_in2;
      3 : o_out = i_in3;
      4 : o_out = i_in4;
      5 : o_out = i_in5;
      6 : o_out = i_in6;
      7 : o_out = i_in7;
      8 : o_out = i_in8;
      9 : o_out = i_in9;
      10 : o_out = i_in10;
      11 : o_out = i_in11;
      12 : o_out = i_in12;
      13 : o_out = i_in13;
      14 : o_out = i_in14;
      15 : o_out = i_in15;
      default : o_out = 7'b0000000;
    endcase
  end
endmodule