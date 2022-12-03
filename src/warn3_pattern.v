module warn3_pattern 
  (
    input   [1:0] i_count, 
    output  [6:0] o_segment
  );

  always@(i_count) begin
    case(i_count)
      0 : o_segment = 7'b0000110; // b,c
      1 : o_segment = 7'b0001001; // a,d
      2 : o_segment = 7'b0110000; // e,f
      3 : o_segment = 7'b0001001; // a,d
      default : o_segment = 7'b0000000;
    endcase
  end

endmodule