`timescale 1ns / 1ps

module testbench;

integer size=98304;
reg clk;
reg [7:0] mem1[0:98303],mem2[0:98303];
reg [7:0] ip;
reg [7:0] value=60;
reg [7:0] threshold=160;
reg [1:0] s=2'b01;
wire [7:0] op;
integer file;
integer j,k;

img_processor uut(
.op(op),
.ip(ip),
.value(value),
.threshold(threshold),
.s(s),
.clk(clk)
);

initial 
begin
clk=1'b0;
end

always
#0.005 clk=~clk;

initial
$readmemb("imgb.txt",mem1,0,98303);


initial 
begin
j=0;
k=0;
end
always@(posedge clk & j<size)
begin
    ip=mem1[j];
    #0.0005 mem2[j]=op;
    j=j+1;
end

initial 
begin
    file=$fopen("image_dec.txt");    
end
initial
begin
#990;
    for(k=0;k<size;k=k+1) 
    begin
        $fwrite(file,"%b ",mem2[k]);
    end
end


initial 
#999 $fclose(file);

endmodule
