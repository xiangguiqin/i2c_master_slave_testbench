`timescale	1ns/1ps
module i2c_master_top(
 input         i_rst_n
,input         i_local_clk

,output        o_scl
//,inout         io_sda
,input         i_sda
,output        o_sda
);

localparam  p_edid_length = 256;

reg  [1:0]  r_cs               ;
reg  [1:0]  r_ns               ;
localparam  S_idle  = 2'h0     ;
localparam  S_wr    = 2'h1     ;
localparam  S_rd    = 2'h2     ;
localparam  S_hold  = 2'h3     ;

wire        wi_sda;
wire        wo_sda;

reg         r_rd_wr;
wire [7:0]  w_device_addr;

reg         r_start;
wire        w_busy;
wire        w_ack_erro;
wire        w_erro_valid;

reg  [7:0]  r_ram_addr;
wire        w_rd_valid;
wire [7:0]  w_rd_data;
wire [7:0]  w_wr_data;
wire [7:0]  w_reg_addr;
wire        w_wr_done;




wire [7:0]  w_rd_data_a;
reg  [7:0]  r_ram_addr_a;





//assign io_sda = (wo_sda==1'b0) ? 1'b0 : 1'hz;
//assign wi_sda = io_sda;







assign w_device_addr = {7'h50, r_rd_wr};

ddc_edid_dpram umaster_dpram(
 .DataInA  ('d0                 )
,.DataInB  (w_rd_data           )
,.AddressA ({4'd0,r_ram_addr_a} )
,.AddressB ({4'd0,r_ram_addr}   )
,.ClockA   (i_local_clk         )
,.ClockB   (i_local_clk         )
,.ClockEnA (1                   )
,.ClockEnB (1                   )
,.WrA      ('d0                 )
,.WrB      (w_rd_valid          )
,.ResetA   (~i_rst_n            )
,.ResetB   (~i_rst_n            )
,.QA       (w_rd_data_a         )
,.QB       (w_wr_data           )
);

i2c_master #(
 .p_DIV            (16'd1485)
) u0_i2c_master (
 .i_rst_n          (i_rst_n          )
,.i_local_clk      (i_local_clk      )

,.i_start          (r_start          )
,.i_req_num        (p_edid_length    )

,.i_device_addr    (w_device_addr    )

,.i_reg_addr       (w_reg_addr       )
,.i_wr_data        (w_wr_data        )
,.o_wr_done        (w_wr_done        )
,.o_rd_data        (w_rd_data        )
,.o_rd_valid       (w_rd_valid       )

,.o_busy           (w_busy           )
,.o_reg_addr       ()
,.o_ack_erro       (w_ack_erro       )
,.o_erro_valid     (w_erro_valid     )

,.o_scl            (o_scl            )
,.i_sda            (i_sda            )//wi_sda        )
,.o_sda            (o_sda            )//wo_sda        )
);


always @(posedge i_local_clk or negedge i_rst_n) begin
	if(~i_rst_n)
		r_cs <= S_idle;
	else
		r_cs <= r_ns;
end

always @(*) begin
	if(~i_rst_n)
		r_ns = 'd0;
	else case(r_cs)
		S_idle:
			if(~w_busy)
				r_ns = S_wr;
			else
				r_ns = S_idle;
		
		S_wr:
			if(r_ram_addr == p_edid_length-1 && ~w_busy)
				r_ns = S_rd;
			else
				r_ns = S_wr;
				
		S_rd:
			if(r_ram_addr == p_edid_length-1 && ~w_busy)
				r_ns = S_hold;
			else
				r_ns = S_rd;
		
		S_hold:
			if(r_ram_addr_a == p_edid_length-1)
				r_ns = S_idle;
			else
				r_ns = S_hold;
		
		default:
			r_ns = S_idle;
	endcase
end

always @(posedge i_local_clk or negedge i_rst_n) begin
	if(~i_rst_n)
		r_rd_wr <= 'b0;
	else if(r_ns == S_wr)
		r_rd_wr <= 'b0;
	else if(r_ns == S_rd)
		r_rd_wr <= 'b1;
	else;
end

always @(posedge i_local_clk or negedge i_rst_n) begin
	if(~i_rst_n)
		r_start <= 'b0;
	else if(~w_busy && (r_cs == S_idle || r_cs == S_wr))
		r_start <= 'b1;
	else
		r_start <= 'b0;
end

always @(posedge i_local_clk or negedge i_rst_n) begin
	if(~i_rst_n)
		r_ram_addr <= 'd0;
	else if(r_ns == S_wr && r_ns==r_cs)
		if(r_ram_addr == p_edid_length-1)
			r_ram_addr <= r_ram_addr;
		else if(w_wr_done)
			r_ram_addr <= r_ram_addr + 1'b1;
		else;
	else if(r_ns == S_rd && r_ns==r_cs)
		if(r_ram_addr == p_edid_length-1)
			r_ram_addr <= r_ram_addr;
		else if(w_rd_valid)
			r_ram_addr <= r_ram_addr + 1'b1;
		else;
	else
		r_ram_addr <= 'd0;
end

always @(posedge i_local_clk or negedge i_rst_n) begin
	if(~i_rst_n)
		r_ram_addr_a <= 'd0;
	else if(r_ns == S_hold)
		r_ram_addr_a <= r_ram_addr_a + 1'b1;
	else
		r_ram_addr_a <= 'd0;
end

assign w_reg_addr = r_ram_addr;




endmodule


