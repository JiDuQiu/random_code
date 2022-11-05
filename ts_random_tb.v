//----testbench of ts_sjm----

`timescale 1ns/10ps
module ts_sjm_tb;
reg		clk1;
reg		res1;
wire		y1;

ts_sjm	st_sjm(
		.clk(clk1),
		.res(res1),
		.y(y1)
		);
initial begin
	clk1<=0;res1<=0;
	#23	res1<=1;
	#200	$stop;
end

always #5 clk1<=~clk1;

initial begin
	$dumpfile("test9.vcd");
	$dumpvars(0,ts_sjm_tb);
end


endmodule
