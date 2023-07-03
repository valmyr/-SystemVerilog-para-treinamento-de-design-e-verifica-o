module simple_multiplexor#(parameter WIDTH = 8)(
        input logic              sel_a  ,    
        input logic  [WIDTH-1:0] in_a   , 
                                 in_b   ,
        output logic [WIDTH-1:0] out
);
    assign out = sel_a ? in_a : in_b ;
    always_comb begin : multiplexor
        case(sel_a)
            0: out = in_b;
            1: out = in_a;
        endcase 
    end : multiplexor
endmodule