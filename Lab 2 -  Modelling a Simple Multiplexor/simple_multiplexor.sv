module simple_multiplexor#(parameter WIDTH = 8)(
        input logic              sel_a  ,    
        input logic  [WIDTH-1:0] in_a   , 
                                 in_b   ,
        output logic [WIDTH-1:0] out
);
    assign out = sel_a ? in_a : in_b ;
endmodule