// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module loadImageFromDRAM (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        cnn_iPara_height_read,
        cnn_iPara_memAddrImgIn_V_read,
        m_axi_fiddr_V_AWVALID,
        m_axi_fiddr_V_AWREADY,
        m_axi_fiddr_V_AWADDR,
        m_axi_fiddr_V_AWID,
        m_axi_fiddr_V_AWLEN,
        m_axi_fiddr_V_AWSIZE,
        m_axi_fiddr_V_AWBURST,
        m_axi_fiddr_V_AWLOCK,
        m_axi_fiddr_V_AWCACHE,
        m_axi_fiddr_V_AWPROT,
        m_axi_fiddr_V_AWQOS,
        m_axi_fiddr_V_AWREGION,
        m_axi_fiddr_V_AWUSER,
        m_axi_fiddr_V_WVALID,
        m_axi_fiddr_V_WREADY,
        m_axi_fiddr_V_WDATA,
        m_axi_fiddr_V_WSTRB,
        m_axi_fiddr_V_WLAST,
        m_axi_fiddr_V_WID,
        m_axi_fiddr_V_WUSER,
        m_axi_fiddr_V_ARVALID,
        m_axi_fiddr_V_ARREADY,
        m_axi_fiddr_V_ARADDR,
        m_axi_fiddr_V_ARID,
        m_axi_fiddr_V_ARLEN,
        m_axi_fiddr_V_ARSIZE,
        m_axi_fiddr_V_ARBURST,
        m_axi_fiddr_V_ARLOCK,
        m_axi_fiddr_V_ARCACHE,
        m_axi_fiddr_V_ARPROT,
        m_axi_fiddr_V_ARQOS,
        m_axi_fiddr_V_ARREGION,
        m_axi_fiddr_V_ARUSER,
        m_axi_fiddr_V_RVALID,
        m_axi_fiddr_V_RREADY,
        m_axi_fiddr_V_RDATA,
        m_axi_fiddr_V_RLAST,
        m_axi_fiddr_V_RID,
        m_axi_fiddr_V_RUSER,
        m_axi_fiddr_V_RRESP,
        m_axi_fiddr_V_BVALID,
        m_axi_fiddr_V_BREADY,
        m_axi_fiddr_V_BRESP,
        m_axi_fiddr_V_BID,
        m_axi_fiddr_V_BUSER,
        fiddr_V_offset,
        lineWidthDiv16,
        hIndex,
        ibufIndex_read,
        ibuf_V_address0,
        ibuf_V_ce0,
        ibuf_V_we0,
        ibuf_V_d0,
        ap_return
);

parameter    ap_ST_fsm_state1 = 11'd1;
parameter    ap_ST_fsm_state2 = 11'd2;
parameter    ap_ST_fsm_state3 = 11'd4;
parameter    ap_ST_fsm_state4 = 11'd8;
parameter    ap_ST_fsm_state5 = 11'd16;
parameter    ap_ST_fsm_state6 = 11'd32;
parameter    ap_ST_fsm_state7 = 11'd64;
parameter    ap_ST_fsm_state8 = 11'd128;
parameter    ap_ST_fsm_pp0_stage0 = 11'd256;
parameter    ap_ST_fsm_state13 = 11'd512;
parameter    ap_ST_fsm_state14 = 11'd1024;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [15:0] cnn_iPara_height_read;
input  [39:0] cnn_iPara_memAddrImgIn_V_read;
output   m_axi_fiddr_V_AWVALID;
input   m_axi_fiddr_V_AWREADY;
output  [31:0] m_axi_fiddr_V_AWADDR;
output  [0:0] m_axi_fiddr_V_AWID;
output  [31:0] m_axi_fiddr_V_AWLEN;
output  [2:0] m_axi_fiddr_V_AWSIZE;
output  [1:0] m_axi_fiddr_V_AWBURST;
output  [1:0] m_axi_fiddr_V_AWLOCK;
output  [3:0] m_axi_fiddr_V_AWCACHE;
output  [2:0] m_axi_fiddr_V_AWPROT;
output  [3:0] m_axi_fiddr_V_AWQOS;
output  [3:0] m_axi_fiddr_V_AWREGION;
output  [0:0] m_axi_fiddr_V_AWUSER;
output   m_axi_fiddr_V_WVALID;
input   m_axi_fiddr_V_WREADY;
output  [127:0] m_axi_fiddr_V_WDATA;
output  [15:0] m_axi_fiddr_V_WSTRB;
output   m_axi_fiddr_V_WLAST;
output  [0:0] m_axi_fiddr_V_WID;
output  [0:0] m_axi_fiddr_V_WUSER;
output   m_axi_fiddr_V_ARVALID;
input   m_axi_fiddr_V_ARREADY;
output  [31:0] m_axi_fiddr_V_ARADDR;
output  [0:0] m_axi_fiddr_V_ARID;
output  [31:0] m_axi_fiddr_V_ARLEN;
output  [2:0] m_axi_fiddr_V_ARSIZE;
output  [1:0] m_axi_fiddr_V_ARBURST;
output  [1:0] m_axi_fiddr_V_ARLOCK;
output  [3:0] m_axi_fiddr_V_ARCACHE;
output  [2:0] m_axi_fiddr_V_ARPROT;
output  [3:0] m_axi_fiddr_V_ARQOS;
output  [3:0] m_axi_fiddr_V_ARREGION;
output  [0:0] m_axi_fiddr_V_ARUSER;
input   m_axi_fiddr_V_RVALID;
output   m_axi_fiddr_V_RREADY;
input  [127:0] m_axi_fiddr_V_RDATA;
input   m_axi_fiddr_V_RLAST;
input  [0:0] m_axi_fiddr_V_RID;
input  [0:0] m_axi_fiddr_V_RUSER;
input  [1:0] m_axi_fiddr_V_RRESP;
input   m_axi_fiddr_V_BVALID;
output   m_axi_fiddr_V_BREADY;
input  [1:0] m_axi_fiddr_V_BRESP;
input  [0:0] m_axi_fiddr_V_BID;
input  [0:0] m_axi_fiddr_V_BUSER;
input  [27:0] fiddr_V_offset;
input  [25:0] lineWidthDiv16;
input  [14:0] hIndex;
input  [15:0] ibufIndex_read;
output  [9:0] ibuf_V_address0;
output   ibuf_V_ce0;
output   ibuf_V_we0;
output  [127:0] ibuf_V_d0;
output  [15:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg m_axi_fiddr_V_ARVALID;
reg m_axi_fiddr_V_RREADY;
reg ibuf_V_ce0;
reg ibuf_V_we0;
reg[15:0] ap_return;

(* fsm_encoding = "none" *) reg   [10:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    fiddr_V_blk_n_AR;
wire    ap_CS_fsm_state2;
reg    fiddr_V_blk_n_R;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage0;
reg   [0:0] exitcond_reg_269;
reg  signed [31:0] i_op_assign_2_reg_132;
reg  signed [31:0] i_op_assign_2_reg_132_pp0_iter1_reg;
wire    ap_block_state9_pp0_stage0_iter0;
reg    ap_block_state10_pp0_stage0_iter1;
wire    ap_block_state11_pp0_stage0_iter2;
wire    ap_block_state12_pp0_stage0_iter3;
reg    ap_block_pp0_stage0_11001;
wire   [15:0] hIndex_cast_fu_153_p1;
reg   [15:0] hIndex_cast_reg_244;
wire  signed [31:0] lineWidthDiv16_cast_fu_157_p1;
reg  signed [31:0] lineWidthDiv16_cast_reg_249;
wire   [40:0] sum_fu_200_p2;
reg   [40:0] sum_reg_258;
wire   [0:0] demorgan_fu_173_p2;
reg    ap_sig_ioackin_m_axi_fiddr_V_ARREADY;
wire   [0:0] exitcond_fu_216_p2;
reg   [0:0] exitcond_reg_269_pp0_iter1_reg;
wire   [31:0] i_fu_221_p2;
reg   [31:0] i_reg_273;
reg    ap_enable_reg_pp0_iter0;
reg   [127:0] fiddr_V_addr_read_reg_278;
wire    ap_CS_fsm_state8;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state9;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg  signed [31:0] ap_phi_mux_i_op_assign_2_phi_fu_136_p4;
reg   [15:0] ibufIndex_write_assi_reg_144;
wire    ap_CS_fsm_state13;
wire  signed [63:0] tmp_2_fu_227_p1;
wire   [63:0] sum_cast_fu_206_p1;
reg    ap_reg_ioackin_m_axi_fiddr_V_ARREADY;
wire   [0:0] slt_fu_161_p2;
wire   [0:0] tmp_s_fu_167_p2;
wire  signed [31:0] i_op_assign_fu_232_p2;
wire   [39:0] tmp_7_fu_183_p1;
wire   [39:0] dramAddr_V_fu_186_p2;
wire   [40:0] tmp_1_cast_fu_192_p1;
wire   [40:0] sext_cast_fu_196_p1;
wire   [14:0] i_op_assign_fu_232_p0;
reg   [15:0] ap_return_preg;
wire    ap_CS_fsm_state14;
reg   [10:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
wire   [31:0] i_op_assign_fu_232_p00;

// power-on initialization
initial begin
#0 ap_CS_fsm = 11'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_reg_ioackin_m_axi_fiddr_V_ARREADY = 1'b0;
#0 ap_return_preg = 16'd0;
end

cnna_mul_mul_15ns_26s_32_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 15 ),
    .din1_WIDTH( 26 ),
    .dout_WIDTH( 32 ))
cnna_mul_mul_15ns_26s_32_1_1_U7(
    .din0(i_op_assign_fu_232_p0),
    .din1(lineWidthDiv16),
    .dout(i_op_assign_fu_232_p2)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b1 == ap_condition_pp0_exit_iter0_state9) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_state8)) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            if ((1'b1 == ap_condition_pp0_exit_iter0_state9)) begin
                ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state9);
            end else if ((1'b1 == 1'b1)) begin
                ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end else if ((1'b1 == ap_CS_fsm_state8)) begin
            ap_enable_reg_pp0_iter3 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_ioackin_m_axi_fiddr_V_ARREADY <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state2)) begin
            if ((ap_sig_ioackin_m_axi_fiddr_V_ARREADY == 1'b1)) begin
                ap_reg_ioackin_m_axi_fiddr_V_ARREADY <= 1'b0;
            end else if ((m_axi_fiddr_V_ARREADY == 1'b1)) begin
                ap_reg_ioackin_m_axi_fiddr_V_ARREADY <= 1'b1;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_preg <= 16'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state14)) begin
            ap_return_preg <= ibufIndex_write_assi_reg_144;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_reg_269 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        i_op_assign_2_reg_132 <= i_reg_273;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        i_op_assign_2_reg_132 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        ibufIndex_write_assi_reg_144 <= hIndex_cast_reg_244;
    end else if (((demorgan_fu_173_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        ibufIndex_write_assi_reg_144 <= ibufIndex_read;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        exitcond_reg_269 <= exitcond_fu_216_p2;
        exitcond_reg_269_pp0_iter1_reg <= exitcond_reg_269;
        i_op_assign_2_reg_132_pp0_iter1_reg <= i_op_assign_2_reg_132;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_reg_269 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        fiddr_V_addr_read_reg_278 <= m_axi_fiddr_V_RDATA;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        hIndex_cast_reg_244[14 : 0] <= hIndex_cast_fu_153_p1[14 : 0];
        lineWidthDiv16_cast_reg_249 <= lineWidthDiv16_cast_fu_157_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        i_reg_273 <= i_fu_221_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1) & (demorgan_fu_173_p2 == 1'd1))) begin
        sum_reg_258 <= sum_fu_200_p2;
    end
end

always @ (*) begin
    if ((exitcond_fu_216_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state9 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state9 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond_reg_269 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_phi_mux_i_op_assign_2_phi_fu_136_p4 = i_reg_273;
    end else begin
        ap_phi_mux_i_op_assign_2_phi_fu_136_p4 = i_op_assign_2_reg_132;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        ap_return = ibufIndex_write_assi_reg_144;
    end else begin
        ap_return = ap_return_preg;
    end
end

always @ (*) begin
    if ((ap_reg_ioackin_m_axi_fiddr_V_ARREADY == 1'b0)) begin
        ap_sig_ioackin_m_axi_fiddr_V_ARREADY = m_axi_fiddr_V_ARREADY;
    end else begin
        ap_sig_ioackin_m_axi_fiddr_V_ARREADY = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        fiddr_V_blk_n_AR = m_axi_fiddr_V_ARREADY;
    end else begin
        fiddr_V_blk_n_AR = 1'b1;
    end
end

always @ (*) begin
    if (((exitcond_reg_269 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        fiddr_V_blk_n_R = m_axi_fiddr_V_RVALID;
    end else begin
        fiddr_V_blk_n_R = 1'b1;
    end
end

always @ (*) begin
    if ((((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        ibuf_V_ce0 = 1'b1;
    end else begin
        ibuf_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond_reg_269_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        ibuf_V_we0 = 1'b1;
    end else begin
        ibuf_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_reg_ioackin_m_axi_fiddr_V_ARREADY == 1'b0) & (1'b1 == ap_CS_fsm_state2))) begin
        m_axi_fiddr_V_ARVALID = 1'b1;
    end else begin
        m_axi_fiddr_V_ARVALID = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond_reg_269 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        m_axi_fiddr_V_RREADY = 1'b1;
    end else begin
        m_axi_fiddr_V_RREADY = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((demorgan_fu_173_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1) & (demorgan_fu_173_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == ap_CS_fsm_state2) & (ap_sig_ioackin_m_axi_fiddr_V_ARREADY == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (exitcond_fu_216_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b0)) & ~((ap_enable_reg_pp0_iter3 == 1'b1) & (ap_enable_reg_pp0_iter2 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((((ap_enable_reg_pp0_iter3 == 1'b1) & (ap_enable_reg_pp0_iter2 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (exitcond_fu_216_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b0)))) begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd8];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state13 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state14 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((exitcond_reg_269 == 1'd0) & (m_axi_fiddr_V_RVALID == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((exitcond_reg_269 == 1'd0) & (m_axi_fiddr_V_RVALID == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

always @ (*) begin
    ap_block_state10_pp0_stage0_iter1 = ((exitcond_reg_269 == 1'd0) & (m_axi_fiddr_V_RVALID == 1'b0));
end

assign ap_block_state11_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state12_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign demorgan_fu_173_p2 = (tmp_s_fu_167_p2 & slt_fu_161_p2);

assign dramAddr_V_fu_186_p2 = (cnn_iPara_memAddrImgIn_V_read + tmp_7_fu_183_p1);

assign exitcond_fu_216_p2 = ((ap_phi_mux_i_op_assign_2_phi_fu_136_p4 == lineWidthDiv16_cast_reg_249) ? 1'b1 : 1'b0);

assign hIndex_cast_fu_153_p1 = hIndex;

assign i_fu_221_p2 = ($signed(ap_phi_mux_i_op_assign_2_phi_fu_136_p4) + $signed(32'd1));

assign i_op_assign_fu_232_p0 = i_op_assign_fu_232_p00;

assign i_op_assign_fu_232_p00 = hIndex;

assign ibuf_V_address0 = tmp_2_fu_227_p1;

assign ibuf_V_d0 = fiddr_V_addr_read_reg_278;

assign lineWidthDiv16_cast_fu_157_p1 = $signed(lineWidthDiv16);

assign m_axi_fiddr_V_ARADDR = sum_cast_fu_206_p1;

assign m_axi_fiddr_V_ARBURST = 2'd0;

assign m_axi_fiddr_V_ARCACHE = 4'd0;

assign m_axi_fiddr_V_ARID = 1'd0;

assign m_axi_fiddr_V_ARLEN = lineWidthDiv16_cast_reg_249;

assign m_axi_fiddr_V_ARLOCK = 2'd0;

assign m_axi_fiddr_V_ARPROT = 3'd0;

assign m_axi_fiddr_V_ARQOS = 4'd0;

assign m_axi_fiddr_V_ARREGION = 4'd0;

assign m_axi_fiddr_V_ARSIZE = 3'd0;

assign m_axi_fiddr_V_ARUSER = 1'd0;

assign m_axi_fiddr_V_AWADDR = 32'd0;

assign m_axi_fiddr_V_AWBURST = 2'd0;

assign m_axi_fiddr_V_AWCACHE = 4'd0;

assign m_axi_fiddr_V_AWID = 1'd0;

assign m_axi_fiddr_V_AWLEN = 32'd0;

assign m_axi_fiddr_V_AWLOCK = 2'd0;

assign m_axi_fiddr_V_AWPROT = 3'd0;

assign m_axi_fiddr_V_AWQOS = 4'd0;

assign m_axi_fiddr_V_AWREGION = 4'd0;

assign m_axi_fiddr_V_AWSIZE = 3'd0;

assign m_axi_fiddr_V_AWUSER = 1'd0;

assign m_axi_fiddr_V_AWVALID = 1'b0;

assign m_axi_fiddr_V_BREADY = 1'b0;

assign m_axi_fiddr_V_WDATA = 128'd0;

assign m_axi_fiddr_V_WID = 1'd0;

assign m_axi_fiddr_V_WLAST = 1'b0;

assign m_axi_fiddr_V_WSTRB = 16'd0;

assign m_axi_fiddr_V_WUSER = 1'd0;

assign m_axi_fiddr_V_WVALID = 1'b0;

assign sext_cast_fu_196_p1 = fiddr_V_offset;

assign slt_fu_161_p2 = (($signed(hIndex_cast_fu_153_p1) < $signed(cnn_iPara_height_read)) ? 1'b1 : 1'b0);

assign sum_cast_fu_206_p1 = sum_reg_258;

assign sum_fu_200_p2 = (tmp_1_cast_fu_192_p1 + sext_cast_fu_196_p1);

assign tmp_1_cast_fu_192_p1 = dramAddr_V_fu_186_p2;

assign tmp_2_fu_227_p1 = i_op_assign_2_reg_132_pp0_iter1_reg;

assign tmp_7_fu_183_p1 = $unsigned(i_op_assign_fu_232_p2);

assign tmp_s_fu_167_p2 = ((ibufIndex_read != hIndex_cast_fu_153_p1) ? 1'b1 : 1'b0);

always @ (posedge ap_clk) begin
    hIndex_cast_reg_244[15] <= 1'b0;
end

endmodule //loadImageFromDRAM
