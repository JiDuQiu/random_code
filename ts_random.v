//2022-7-23,罗力中；
//4级伪随机码发生器；

module ts_sjm(clk,res,y);
input	clk;
input	res;
output	y;
reg[3:0]	d;//定义4位寄存器；
assign		y=d[0];//输出连接；
always@(posedge clk or negedge res)
if(~res)begin
	d<=4'b1111;
end
else begin
d[2:0]<=d[3:1];//右移一位；
d[3]<=d[3]+d[0];//模2加；自动舍去进位，相当于异或门；
end



endmodule
