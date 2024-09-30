`timescale	1ns/1ps
`define		clk_period	6.73



module top_tb;

reg  r_clk148p5M;
reg  r_rst_n;

wire w_scl;
wire w_m2s_sda;
wire w_s2m_sda;


GSR GSR_INST(.GSR(1'b1));
PUR PUR_INST(.PUR(1'b1));


i2c_master_top u0_i2c_master_top(
 .i_rst_n     (r_rst_n     )
,.i_local_clk (r_clk148p5M )

,.o_scl       (w_scl       )
,.i_sda       (w_s2m_sda   )
,.o_sda       (w_m2s_sda   )
);

ddc_edid_slave u0_ddc_edid_slave(
 .i_local_clk (r_clk148p5M )
,.i_rst_n     (r_rst_n     )

,.i_scl       (w_scl       )
,.i_sda       (w_m2s_sda   )
,.o_sda       (w_s2m_sda   )
);


initial r_clk148p5M = 0;
always #(`clk_period/2) r_clk148p5M = ~r_clk148p5M;

initial begin
	r_rst_n = 0;
	#(`clk_period*20 +1);
	r_rst_n = 1;
	
end

endmodule


