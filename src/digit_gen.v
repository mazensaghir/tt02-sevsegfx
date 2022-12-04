module digit_gen 
  (
    input   [3:0] i_digit,
    input   i_blink,
    input   i_clk2Hz,
    output  [6:0] o_segment
  );
  wire  w_control;
  
  assign w_control = ~i_blink | i_clk2Hz;

  always@(i_digit or w_control) begin
    if (w_control == 1) begin
      case(i_digit)
        0 : o_segment = 7'b0111111; // 0
        1 : o_segment = 7'b0000110; // 1
        2 : o_segment = 7'b1011011; // 2
        3 : o_segment = 7'b1001111; // 3
        4 : o_segment = 7'b1100110; // 4
        5 : o_segment = 7'b1101101; // 5
        6 : o_segment = 7'b1111101; // 6
        7 : o_segment = 7'b0000111; // 7
        8 : o_segment = 7'b1111111; // 8
        9 : o_segment = 7'b1101111; // 9
        10 : o_segment = 7'b1011111; // 'a'
        11 : o_segment = 7'b1111100; // 'b'
        12 : o_segment = 7'b1011000; // 'c'
        13 : o_segment = 7'b1011110; // 'd'
        14 : o_segment = 7'b1111011; // 'e'
        15 : o_segment = 7'b1110001; // 'f'
        default : o_segment = 7'b0000000;
      endcase
    end else
      o_segment = 7'b0000000;
  end

endmodule