module simple_register#(parameter WIDTH = 8)(
    input  logic rst                ,    
    input  logic enable             ,
    input  logic clk                ,
    input  logic [WIDTH-1:0] data   ,
    output logic [WIDTH-1:0] out    
);
    always_ff@(posedge clk)begin:simple_reg
        if(~rst)  out <= 0;
        else      out <= (enable) ? data : out; 
    end:simple_reg
endmodule