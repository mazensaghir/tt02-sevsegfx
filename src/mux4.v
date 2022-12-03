module mux4 
  (
    input [6:0] i_in0, i_in1, i_in2, i_in3, 
    input [1:0] i_sel, 
    output [6:0] o_out
  );

  always@(i_sel) begin
    case(i_sel)
      0 : o_out = i_in0;
      1 : o_out = i_in1;
      2 : o_out = i_in2;
      3 : o_out = i_in3;
      default : o_out = 7'b0000000;
    endcase
  end
endmodule