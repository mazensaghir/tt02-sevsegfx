module cw0_pattern 
  (
    input [2:0] i_count, 
    output [6:0] o_segment
  );

  always@(i_count) begin
    case(i_count)
      0 : o_segment = 7'b0000001; // a
      1 : o_segment = 7'b0000011; // a,b
      2 : o_segment = 7'b0000111; // a,b,c
      3 : o_segment = 7'b0001111; // a,b,c,d
      4 : o_segment = 7'b0011111; // a,b,c,d,e
      5 : o_segment = 7'b0111111; // a,b,c,d,e,f
      6 : o_segment = 7'b0000000; // off
      7 : o_segment = 7'b0111111; // a,b,c,d,e,f
      default : o_segment = 7'b0000000; // off
    endcase
  end
endmodule