`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/21 16:35:48
// Design Name: 
// Module Name: ddc_edid_slave
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module ddc_edid_slave #(
 parameter p_debug_en = "FALSE"
)(
 input     i_local_clk
,input     i_rst_n

,input     i_scl 
//,inout  io_sda
,input     i_sda
,output    o_sda
);

wire        wi_sda;
wire        wo_sda;

wire [7:0]  w_device_addr;

wire        w_rd_de;
wire [7:0]  w_rd_addr;
wire [7:0]  w_rd_data;

wire        w_wr_de  ;
wire [7:0]  w_wr_addr;
wire [7:0]  w_wr_data;
wire        w_wr_done;

wire [8:0]  w_wr_length;

reg  [7:0]  r_ram_addr_a;
wire [7:0]  w_ram_addr;


reg         r_cs;
reg         r_ns;
localparam  S_IDLE  = 1'b0     ;
localparam  S_RD    = 1'b1     ;


//assign io_sda = (wo_sda==1'b0) ? 1'b0 : 1'hz;
//assign wi_sda = io_sda;

assign w_device_addr   = {7'h50, 1'b0};

assign w_ram_addr      = w_wr_de ? w_wr_addr : w_rd_addr;



always @(posedge i_local_clk or negedge i_rst_n) begin
	if(~i_rst_n)
		r_cs <= r_ns;
	else
		r_cs <= S_IDLE;
end

always @(*) begin
	if(~i_rst_n)
		r_ns = 'd0;
	else case(r_cs)
		S_IDLE:
			if(w_wr_done)
				r_ns = S_RD;
			else
				r_ns = S_IDLE;
		S_RD:
			if(r_ram_addr_a == w_wr_length-1)
				r_ns = S_IDLE;
			else
				r_ns = S_RD;
		default:
			r_ns = S_IDLE;
	endcase
end

always @(posedge i_local_clk or negedge i_rst_n) begin
	if(~i_rst_n)
		r_ram_addr_a <= 'd0;
	else case(r_ns)
		S_IDLE:
			if(w_wr_done)
				r_ram_addr_a <= 'd0;
		S_RD:
			r_ram_addr_a <= r_ram_addr_a + 1;
	endcase
end



ddc_edid_dpram uslave_dpram(
 .DataInA  ('d0                 )
,.DataInB  (w_wr_data           )
,.AddressA ({4'd0,r_ram_addr_a} )
,.AddressB ({4'd0,w_ram_addr}   )
,.ClockA   (i_local_clk         )
,.ClockB   (i_local_clk         )
,.ClockEnA (1                   )
,.ClockEnB (1                   )
,.WrA      ('d0                 )
,.WrB      (w_wr_de             )
,.ResetA   (~i_rst_n            )
,.ResetB   (~i_rst_n            )
,.QA       (w_rd_data_a         )
,.QB       (w_rd_data           )
);

i2c_slave i2c_slave_u0(
 .i_sclk        (i_local_clk    )
,.i_rst_n       (i_rst_n        )

,.i_device_addr (w_device_addr  )

,.o_wr_de       (w_wr_de        )
,.o_wr_addr     (w_wr_addr      )
,.o_wr_data     (w_wr_data      )
,.o_wr_done     (w_wr_done      )
,.o_wr_length   (w_wr_length    )

,.o_rd_de       (w_rd_de        )
,.o_rd_addr     (w_rd_addr      )
,.i_rd_data     (w_rd_data      )

,.i_scl         (i_scl          )
,.i_sda         (i_sda          )//wi_sda     )
,.o_sda         (o_sda          )//wo_sda     )
);


endmodule


