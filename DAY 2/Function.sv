// Code your testbench here
// or browse Examples
module tb;
  function bit[31:0] mul(input bit[5:0] in1,in2,in3,in4,output bit[31:0] out1,out2);
    out1=4*(in1+in2+in3+in4);
    out2=2*(in1+in2+in3+in4);
  endfunction
  
  
  bit[5:0] a,b,c,d;
  bit[31:0] e,f;
  
  initial begin 
    a=2;
    b=3;
    c=4;
    d=1;
    
    mul(a,b,c,d,e,f);
    
    $display("The value is %0d",e);
    $display("The value is %0d",f);
    
  end
endmodule
    
    
  
