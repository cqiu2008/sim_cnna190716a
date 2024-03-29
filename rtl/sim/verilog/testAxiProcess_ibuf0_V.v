// ==============================================================
// File generated on Tue Jul 16 20:52:33 CST 2019
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:36:41 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1 ns / 1 ps
module testAxiProcess_ibuf0_V_ram (addr0, ce0, d0, we0, q0,  clk);

parameter DWIDTH = 128;
parameter AWIDTH = 10;
parameter MEM_SIZE = 1024;

input[AWIDTH-1:0] addr0;
input ce0;
input[DWIDTH-1:0] d0;
input we0;
output wire[DWIDTH-1:0] q0;
input clk;

(* ram_style = "block" *)reg [DWIDTH-1:0] ram[0:MEM_SIZE-1];
wire [AWIDTH-1:0] addr0_t0; 
reg [AWIDTH-1:0] addr0_t1; 
wire [DWIDTH-1:0] d0_t0; 
wire we0_t0; 
reg [DWIDTH-1:0] d0_t1; 
reg we0_t1; 
reg [DWIDTH-1:0] q0_t0;
reg [DWIDTH-1:0] q0_t1;

initial begin
    $readmemh("./testAxiProcess_ibuf0_V_ram.dat", ram);
end

assign addr0_t0 = addr0;
assign d0_t0 = d0;
assign we0_t0 = we0;
assign q0 = q0_t1;

always @(posedge clk)  
begin
    if (ce0) 
    begin
        addr0_t1 <= addr0_t0; 
        d0_t1 <= d0_t0;
        we0_t1 <= we0_t0;
        q0_t1 <= q0_t0;
    end
end


always @(posedge clk)  
begin 
    if (ce0) 
    begin
        if (we0_t1) 
        begin 
            ram[addr0_t1] <= d0_t1; 
        end 
        q0_t0 <= ram[addr0_t1];
    end
end


endmodule

`timescale 1 ns / 1 ps
module testAxiProcess_ibuf0_V(
    reset,
    clk,
    address0,
    ce0,
    we0,
    d0,
    q0);

parameter DataWidth = 32'd128;
parameter AddressRange = 32'd1024;
parameter AddressWidth = 32'd10;
input reset;
input clk;
input[AddressWidth - 1:0] address0;
input ce0;
input we0;
input[DataWidth - 1:0] d0;
output[DataWidth - 1:0] q0;



testAxiProcess_ibuf0_V_ram testAxiProcess_ibuf0_V_ram_U(
    .clk( clk ),
    .addr0( address0 ),
    .ce0( ce0 ),
    .we0( we0 ),
    .d0( d0 ),
    .q0( q0 ));

endmodule

