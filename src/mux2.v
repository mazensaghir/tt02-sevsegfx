module mux2
  (
    input [6:0] i_in0, i_in1,
    input i_sel, 
    output [6:0] o_out
  );

  assign o_out = (i_sel == 1'b0) ? i_in0 : i_in1;
  
endmodule