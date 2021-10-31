`timescale 1ns / 1ps  

module tb_alu;
 reg[15:0] A,B;
 reg[3:0] ALU_Sel;

 wire[15:0] ALU_Out;
 wire CarryOut;

 integer i;
 alu test_unit(
            A,B,                 
            ALU_Sel,
            ALU_Out,
            CarryOut
     );

    initial begin
      A = 16'h0ABC;
      B = 16'h02BC;
      ALU_Sel = 4'h0;
      
      for (i=0;i<=15;i=i+1)
      begin
       ALU_Sel = ALU_Sel + 4'h1;
       #10;
      end
      
      A = 16'hF623;
      B = 16'h0A12;
      
    end
endmodule