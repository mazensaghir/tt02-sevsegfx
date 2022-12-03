module warn6_pattern 
  (
    input   i_count, 
    output  [6:0] o_segment
  );

  always@(i_count) begin
    case(i_count)
      1'b0 : o_segment = 7'b0110110; // b,c,e,f
      1'b1 : o_segment = 7'b1001001; // a,d,g
      default : o_segment = 7'b0000000;
    endcase
  end

endmodule