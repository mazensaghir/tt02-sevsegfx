module scan_pattern 
  (
    input   [1:0] i_count, 
    output  [6:0] o_segment
  );

  always@(i_count) begin
    case(i_count)
      0 : o_segment = 7'b0001000; // d
      1 : o_segment = 7'b1000000; // g
      2 : o_segment = 7'b0000001; // a
      3 : o_segment = 7'b1000000; // g
      default : o_segment = 7'b0000000;
    endcase
  end

endmodule