// register for lab 3 


module register
(
output reg	q,
input		d,
input		wrenable,
input		clk
);
always @(posedge clk) begin
	if(wrenable) 
		q = d;
end

endmodule


module register32
(
output reg [31:0]	q,
input      [31:0]	d,
input				wrenable,
input				clk
);
genvar i; 
generate 
	for (i=0; i<32; i=i+1)
		begin: rr32
			always @(posedge clk) begin
				if(wrenable) 
					q[i] = d[i];
			end
		end 
endgenerate

endmodule




module register32zero
(
output reg [31:0]	q,
input      [31:0]	d,
input				wrenable,
input				clk
);
always @(posedge clk) begin
	if(wrenable) 
		q = 32'd0;
end 

endmodule


