module xscan_pattern 
  (
    input   [1:0] i_count, 
    output  [6:0] o_segment
  );

  always@(i_count) begin
    case(i_count)
      0 : o_segment = 7'b0000010; // b
      1 : o_segment = 7'b0010000; // e
      2 : o_segment = 7'b0100000; // f
      3 : o_segment = 7'b0000100; // c
      default : o_segment = 7'b0000000;
    endcase
  end

endmodule