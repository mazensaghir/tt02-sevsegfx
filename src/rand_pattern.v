module rand_pattern 
  (
    input   [2:0] i_count, 
    output  [6:0] o_segment
  );

  always@(i_count) begin
    case(i_count)
      0 : o_segment <= 7'b0000010;
      1 : o_segment <= 7'b1000000;
      2 : o_segment <= 7'b0000001;
      3 : o_segment <= 7'b0010000;
      4 : o_segment <= 7'b0100000;
      5 : o_segment <= 7'b0001000;
      6 : o_segment <= 7'b0000100;
      7 : o_segment <= 7'b0100000;
      default : o_segment <= 7'b0000000;
    endcase
  end

endmodule
