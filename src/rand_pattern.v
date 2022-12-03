module rand_pattern 
  (
    input   [2:0] i_count, 
    output  [6:0] o_segment
  );

  wire [6:0] w_segment;

  always@(i_count) begin
    case(i_count)
      0 : w_segment = 7'b0000010;
      1 : w_segment = 7'b1000000;
      2 : w_segment = 7'b0000001;
      3 : w_segment = 7'b0010000;
      4 : w_segment = 7'b0100000;
      5 : w_segment = 7'b0001000;
      6 : w_segment = 7'b0000100;
      7 : w_segment = 7'b0100000;
      default : w_segment = 7'b0000000;
    endcase
  end

  assign o_segment = w_segment;

endmodule