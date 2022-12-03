module warn4_pattern 
  (
    input   [1:0] i_count, 
    output  [6:0] o_segment
  );

  always@(i_count) begin
    case(i_count)
      0 : o_segment = 7'b0000001; // a
      1 : o_segment = 7'b0110110; // b,c,e,f
      2 : o_segment = 7'b0001000; // d
      3 : o_segment = 7'b0110110; // b,c,e,f
      default : o_segment = 7'b0000000;
    endcase
  end

endmodule