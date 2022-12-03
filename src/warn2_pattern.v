module warn2_pattern 
  (
    input   i_count, 
    output  [6:0] o_segment
  );

  always@(i_count) begin
    case(i_count)
      1'b0 : o_segment = 7'b0100011; // a,b,f
      1'b1 : o_segment = 7'b0011100; // c,d,e
      default : o_segment = 7'b0000000;
    endcase
  end

endmodule