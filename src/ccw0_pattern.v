module ccw0_pattern 
  (
    input [2:0] i_count, 
    output [6:0] o_segment
  );

  always@(i_count) begin
    case(i_count)
      0 : o_segment = 7'b0000001; // a
      1 : o_segment = 7'b0100001; // a,f
      2 : o_segment = 7'b0110001; // a,f,e
      3 : o_segment = 7'b0111001; // a,f,e,d
      4 : o_segment = 7'b0111101; // a,f,e,d,c
      5 : o_segment = 7'b0111111; // a,f,e,d,c,b
      6 : o_segment = 7'b0000000; // off
      7 : o_segment = 7'b0111111; // a,f,e,d,c,b
      default : o_segment = 7'b0000000; // off
    endcase
  end
endmodule