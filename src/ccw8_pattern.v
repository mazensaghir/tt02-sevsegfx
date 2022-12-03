module ccw8_pattern 
  (
    input [2:0] i_count, 
    output [6:0] o_segment
  );

  always@(i_count) begin
    case(i_count)
      0 : o_segment = 7'b0100000; // f
      1 : o_segment = 7'b1000000; // g
      2 : o_segment = 7'b0000100; // c
      3 : o_segment = 7'b0001000; // d
      4 : o_segment = 7'b0010000; // e
      5 : o_segment = 7'b1000000; // g
      6 : o_segment = 7'b0000010; // b
      7 : o_segment = 7'b0000001; // a
      default : o_segment = 7'b0000000; // off
    endcase
  end
endmodule