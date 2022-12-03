module snake_cw_pattern 
  (
    input [2:0] i_count, 
    output [6:0] o_segment
  );

  always@(i_count) begin
    case(i_count)
      0 : o_segment = 7'b0000011; // a,b
      1 : o_segment = 7'b1000010; // b,g
      2 : o_segment = 7'b1010000; // g,e
      3 : o_segment = 7'b0011000; // e,d
      4 : o_segment = 7'b0001100; // d,c
      5 : o_segment = 7'b1000100; // c,g
      6 : o_segment = 7'b1100000; // g,f
      7 : o_segment = 7'b0100001; // f,a
      default : o_segment = 7'b0000000; // off
    endcase
  end
endmodule