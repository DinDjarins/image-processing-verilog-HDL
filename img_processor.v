`timescale 1ns / 1ps


module img_processor(output reg[7:0] op,
                     input [7:0] ip,value,threshold,
                     input [1:0] s,
                     input clk
                     );
                     
integer x;
always @(*)
begin
case(s)
    2'b00:
    begin 
        x=ip+value;
        if(x>255) op<=255;
        else op<=x;   
    end
    2'b01:
    begin
        x=ip-value;
        if(x<0) op<=0;
        else op<=x;
    end
    2'b10:
    begin
        if(ip>threshold) op<=255;
        else op<=0;
    end
    2'b11:
    begin
        op<=255-ip;
    end
endcase
end
endmodule