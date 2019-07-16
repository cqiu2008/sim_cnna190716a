// ==============================================================
// File generated on Tue Jul 16 20:54:35 CST 2019
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:36:41 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps

module AESL_axi_slave_axilite (
    clk,
    reset,
    TRAN_s_axi_axilite_AWADDR,
    TRAN_s_axi_axilite_AWVALID,
    TRAN_s_axi_axilite_AWREADY,
    TRAN_s_axi_axilite_WVALID,
    TRAN_s_axi_axilite_WREADY,
    TRAN_s_axi_axilite_WDATA,
    TRAN_s_axi_axilite_WSTRB,
    TRAN_s_axi_axilite_ARADDR,
    TRAN_s_axi_axilite_ARVALID,
    TRAN_s_axi_axilite_ARREADY,
    TRAN_s_axi_axilite_RVALID,
    TRAN_s_axi_axilite_RREADY,
    TRAN_s_axi_axilite_RDATA,
    TRAN_s_axi_axilite_RRESP,
    TRAN_s_axi_axilite_BVALID,
    TRAN_s_axi_axilite_BREADY,
    TRAN_s_axi_axilite_BRESP,
    TRAN_wddr_V,
    TRAN_fiddr_V,
    TRAN_foddr_V,
    TRAN_axilite_write_data_finish,
    TRAN_axilite_start_in,
    TRAN_axilite_idle_out,
    TRAN_axilite_ready_out,
    TRAN_axilite_ready_in,
    TRAN_axilite_done_out,
    TRAN_axilite_write_start_in   ,
    TRAN_axilite_write_start_finish,
    TRAN_axilite_interrupt,
    TRAN_axilite_transaction_done_in
    );

//------------------------Parameter----------------------
`define TV_IN_wddr_V "../tv/cdatafile/c.cnna.autotvin_wddr_V.dat"
`define TV_IN_fiddr_V "../tv/cdatafile/c.cnna.autotvin_fiddr_V.dat"
`define TV_IN_foddr_V "../tv/cdatafile/c.cnna.autotvin_foddr_V.dat"
`define TV_IN_layer_wParaNext_memAddrBias_V "../tv/cdatafile/c.cnna.autotvin_layer_wParaNext_memAddrBias_V.dat"
`define TV_IN_layer_iPara_width "../tv/cdatafile/c.cnna.autotvin_layer_iPara_width.dat"
`define TV_IN_layer_iPara_height "../tv/cdatafile/c.cnna.autotvin_layer_iPara_height.dat"
`define TV_IN_layer_iPara_ciAlign_V "../tv/cdatafile/c.cnna.autotvin_layer_iPara_ciAlign_V.dat"
`define TV_IN_layer_iPara_memAddrImgIn_V "../tv/cdatafile/c.cnna.autotvin_layer_iPara_memAddrImgIn_V.dat"
`define TV_IN_layer_oPara_co_V "../tv/cdatafile/c.cnna.autotvin_layer_oPara_co_V.dat"
`define TV_IN_layer_oPara_memAddrImgOut_V "../tv/cdatafile/c.cnna.autotvin_layer_oPara_memAddrImgOut_V.dat"
`define TV_IN_layer_oParaNext_co_V "../tv/cdatafile/c.cnna.autotvin_layer_oParaNext_co_V.dat"
parameter ADDR_WIDTH = 10;
parameter DATA_WIDTH = 32;
parameter wddr_V_DEPTH = 1;
reg [31 : 0] wddr_V_OPERATE_DEPTH = 1;
parameter wddr_V_c_bitwidth = 32;
parameter fiddr_V_DEPTH = 1;
reg [31 : 0] fiddr_V_OPERATE_DEPTH = 1;
parameter fiddr_V_c_bitwidth = 32;
parameter foddr_V_DEPTH = 1;
reg [31 : 0] foddr_V_OPERATE_DEPTH = 1;
parameter foddr_V_c_bitwidth = 32;
parameter layer_wParaNext_memAddrBias_V_DEPTH = 1;
reg [31 : 0] layer_wParaNext_memAddrBias_V_OPERATE_DEPTH = 0;
parameter layer_wParaNext_memAddrBias_V_c_bitwidth = 40;
parameter layer_iPara_width_DEPTH = 1;
reg [31 : 0] layer_iPara_width_OPERATE_DEPTH = 0;
parameter layer_iPara_width_c_bitwidth = 16;
parameter layer_iPara_height_DEPTH = 1;
reg [31 : 0] layer_iPara_height_OPERATE_DEPTH = 0;
parameter layer_iPara_height_c_bitwidth = 16;
parameter layer_iPara_ciAlign_V_DEPTH = 1;
reg [31 : 0] layer_iPara_ciAlign_V_OPERATE_DEPTH = 0;
parameter layer_iPara_ciAlign_V_c_bitwidth = 13;
parameter layer_iPara_memAddrImgIn_V_DEPTH = 1;
reg [31 : 0] layer_iPara_memAddrImgIn_V_OPERATE_DEPTH = 0;
parameter layer_iPara_memAddrImgIn_V_c_bitwidth = 40;
parameter layer_oPara_co_V_DEPTH = 1;
reg [31 : 0] layer_oPara_co_V_OPERATE_DEPTH = 0;
parameter layer_oPara_co_V_c_bitwidth = 13;
parameter layer_oPara_memAddrImgOut_V_DEPTH = 1;
reg [31 : 0] layer_oPara_memAddrImgOut_V_OPERATE_DEPTH = 0;
parameter layer_oPara_memAddrImgOut_V_c_bitwidth = 40;
parameter layer_oParaNext_co_V_DEPTH = 1;
reg [31 : 0] layer_oParaNext_co_V_OPERATE_DEPTH = 0;
parameter layer_oParaNext_co_V_c_bitwidth = 13;
parameter START_ADDR = 0;
parameter cnna_continue_addr = 0;
parameter cnna_auto_start_addr = 0;
parameter wddr_V_data_in_addr = 16;
parameter fiddr_V_data_in_addr = 24;
parameter foddr_V_data_in_addr = 32;
parameter layer_name_data_in_addr = 48;
parameter layer_enPara_cnvEn_data_in_addr = 64;
parameter layer_enPara_poolEn_data_in_addr = 72;
parameter layer_wPara_curLayerNum_data_in_addr = 80;
parameter layer_wPara_layerDivideType_data_in_addr = 88;
parameter layer_wPara_sublayerNum_V_data_in_addr = 96;
parameter layer_wPara_sublayerSeq_V_data_in_addr = 104;
parameter layer_wPara_subLayerFlag_data_in_addr = 112;
parameter layer_wPara_memAddrWeights_V_data_in_addr = 120;
parameter layer_wPara_memAddrBias_V_data_in_addr = 132;
parameter layer_wPara_memAddrScale_V_data_in_addr = 144;
parameter layer_wPara_memAddrMean_V_data_in_addr = 156;
parameter layer_wPara_memAddrVariance_V_data_in_addr = 168;
parameter layer_wPara_compressionSize_V_data_in_addr = 180;
parameter layer_wParaNext_curLayerNum_data_in_addr = 188;
parameter layer_wParaNext_layerDivideType_data_in_addr = 196;
parameter layer_wParaNext_sublayerNum_V_data_in_addr = 204;
parameter layer_wParaNext_sublayerSeq_V_data_in_addr = 212;
parameter layer_wParaNext_subLayerFlag_data_in_addr = 220;
parameter layer_wParaNext_memAddrWeights_V_data_in_addr = 228;
parameter layer_wParaNext_memAddrBias_V_data_in_addr = 240;
parameter layer_wParaNext_memAddrScale_V_data_in_addr = 252;
parameter layer_wParaNext_memAddrMean_V_data_in_addr = 264;
parameter layer_wParaNext_memAddrVariance_V_data_in_addr = 276;
parameter layer_wParaNext_compressionSize_V_data_in_addr = 288;
parameter layer_iPara_batchSize_data_in_addr = 296;
parameter layer_iPara_width_data_in_addr = 304;
parameter layer_iPara_height_data_in_addr = 312;
parameter layer_iPara_ci_V_data_in_addr = 320;
parameter layer_iPara_ciAlign_V_data_in_addr = 328;
parameter layer_iPara_ciGroup_V_data_in_addr = 336;
parameter layer_iPara_memAddrImgIn_V_data_in_addr = 344;
parameter layer_iParaNext_batchSize_data_in_addr = 356;
parameter layer_iParaNext_width_data_in_addr = 364;
parameter layer_iParaNext_height_data_in_addr = 372;
parameter layer_iParaNext_ci_V_data_in_addr = 380;
parameter layer_iParaNext_ciAlign_V_data_in_addr = 388;
parameter layer_iParaNext_ciGroup_V_data_in_addr = 396;
parameter layer_iParaNext_memAddrImgIn_V_data_in_addr = 404;
parameter layer_oPara_batchSize_data_in_addr = 416;
parameter layer_oPara_width_data_in_addr = 424;
parameter layer_oPara_height_data_in_addr = 432;
parameter layer_oPara_co_V_data_in_addr = 440;
parameter layer_oPara_coAlign_V_data_in_addr = 448;
parameter layer_oPara_coGroup_V_data_in_addr = 456;
parameter layer_oPara_memAddrImgOut_V_data_in_addr = 464;
parameter layer_oParaNext_batchSize_data_in_addr = 476;
parameter layer_oParaNext_width_data_in_addr = 484;
parameter layer_oParaNext_height_data_in_addr = 492;
parameter layer_oParaNext_co_V_data_in_addr = 500;
parameter layer_oParaNext_coAlign_V_data_in_addr = 508;
parameter layer_oParaNext_coGroup_V_data_in_addr = 516;
parameter layer_oParaNext_memAddrImgOut_V_data_in_addr = 524;
parameter layer_cnvPara_relu_data_in_addr = 536;
parameter layer_cnvPara_dilation_data_in_addr = 544;
parameter layer_cnvPara_pad_h_V_data_in_addr = 552;
parameter layer_cnvPara_pad_w_V_data_in_addr = 560;
parameter layer_cnvPara_kernel_h_V_data_in_addr = 568;
parameter layer_cnvPara_kernel_w_V_data_in_addr = 576;
parameter layer_cnvPara_stride_h_V_data_in_addr = 584;
parameter layer_cnvPara_stride_w_V_data_in_addr = 592;
parameter layer_cnvParaNext_relu_data_in_addr = 600;
parameter layer_cnvParaNext_dilation_data_in_addr = 608;
parameter layer_cnvParaNext_pad_h_V_data_in_addr = 616;
parameter layer_cnvParaNext_pad_w_V_data_in_addr = 624;
parameter layer_cnvParaNext_kernel_h_V_data_in_addr = 632;
parameter layer_cnvParaNext_kernel_w_V_data_in_addr = 640;
parameter layer_cnvParaNext_stride_h_V_data_in_addr = 648;
parameter layer_cnvParaNext_stride_w_V_data_in_addr = 656;
parameter layer_qPara_qM0_data_in_addr = 664;
parameter layer_qPara_qN_data_in_addr = 672;
parameter layer_qPara_qZ1_data_in_addr = 680;
parameter layer_qPara_qZ2_data_in_addr = 688;
parameter layer_qPara_qZ3_data_in_addr = 696;
parameter layer_poolPara_pad_h_V_data_in_addr = 704;
parameter layer_poolPara_pad_w_V_data_in_addr = 712;
parameter layer_poolPara_kernel_h_V_data_in_addr = 720;
parameter layer_poolPara_kernel_w_V_data_in_addr = 728;
parameter layer_poolPara_stride_h_V_data_in_addr = 736;
parameter layer_poolPara_stride_w_V_data_in_addr = 744;
parameter layer_poolPara_pool_type_data_in_addr = 752;
parameter layer_name_data_out_addr = 48;
parameter STATUS_ADDR = 0;

output [ADDR_WIDTH - 1 : 0] TRAN_s_axi_axilite_AWADDR;
output  TRAN_s_axi_axilite_AWVALID;
input  TRAN_s_axi_axilite_AWREADY;
output  TRAN_s_axi_axilite_WVALID;
input  TRAN_s_axi_axilite_WREADY;
output [DATA_WIDTH - 1 : 0] TRAN_s_axi_axilite_WDATA;
output [DATA_WIDTH/8 - 1 : 0] TRAN_s_axi_axilite_WSTRB;
output [ADDR_WIDTH - 1 : 0] TRAN_s_axi_axilite_ARADDR;
output  TRAN_s_axi_axilite_ARVALID;
input  TRAN_s_axi_axilite_ARREADY;
input  TRAN_s_axi_axilite_RVALID;
output  TRAN_s_axi_axilite_RREADY;
input [DATA_WIDTH - 1 : 0] TRAN_s_axi_axilite_RDATA;
input [2 - 1 : 0] TRAN_s_axi_axilite_RRESP;
input  TRAN_s_axi_axilite_BVALID;
output  TRAN_s_axi_axilite_BREADY;
input [2 - 1 : 0] TRAN_s_axi_axilite_BRESP;
input    [32 - 1 : 0] TRAN_wddr_V;
input    [32 - 1 : 0] TRAN_fiddr_V;
input    [32 - 1 : 0] TRAN_foddr_V;
output TRAN_axilite_write_data_finish;
input     clk;
input     reset;
input     TRAN_axilite_start_in;
output    TRAN_axilite_done_out;
output    TRAN_axilite_ready_out;
input     TRAN_axilite_ready_in;
output    TRAN_axilite_idle_out;
input  TRAN_axilite_write_start_in   ;
output TRAN_axilite_write_start_finish;
input     TRAN_axilite_interrupt;
input     TRAN_axilite_transaction_done_in;

reg [ADDR_WIDTH - 1 : 0] AWADDR_reg = 0;
reg  AWVALID_reg = 0;
reg  WVALID_reg = 0;
reg [DATA_WIDTH - 1 : 0] WDATA_reg = 0;
reg [DATA_WIDTH/8 - 1 : 0] WSTRB_reg = 0;
reg [ADDR_WIDTH - 1 : 0] ARADDR_reg = 0;
reg  ARVALID_reg = 0;
reg  RREADY_reg = 0;
reg [DATA_WIDTH - 1 : 0] RDATA_reg = 0;
reg  BREADY_reg = 0;
reg [wddr_V_c_bitwidth - 1 : 0] reg_wddr_V;
reg wddr_V_write_data_finish;
reg [fiddr_V_c_bitwidth - 1 : 0] reg_fiddr_V;
reg fiddr_V_write_data_finish;
reg [foddr_V_c_bitwidth - 1 : 0] reg_foddr_V;
reg foddr_V_write_data_finish;
reg [layer_wParaNext_memAddrBias_V_c_bitwidth - 1 : 0] mem_layer_wParaNext_memAddrBias_V [layer_wParaNext_memAddrBias_V_DEPTH - 1 : 0];
reg layer_wParaNext_memAddrBias_V_write_data_finish;
reg [DATA_WIDTH - 1 : 0] mem_layer_iPara_width [layer_iPara_width_DEPTH - 1 : 0];
reg layer_iPara_width_write_data_finish;
reg [DATA_WIDTH - 1 : 0] mem_layer_iPara_height [layer_iPara_height_DEPTH - 1 : 0];
reg layer_iPara_height_write_data_finish;
reg [DATA_WIDTH - 1 : 0] mem_layer_iPara_ciAlign_V [layer_iPara_ciAlign_V_DEPTH - 1 : 0];
reg layer_iPara_ciAlign_V_write_data_finish;
reg [layer_iPara_memAddrImgIn_V_c_bitwidth - 1 : 0] mem_layer_iPara_memAddrImgIn_V [layer_iPara_memAddrImgIn_V_DEPTH - 1 : 0];
reg layer_iPara_memAddrImgIn_V_write_data_finish;
reg [DATA_WIDTH - 1 : 0] mem_layer_oPara_co_V [layer_oPara_co_V_DEPTH - 1 : 0];
reg layer_oPara_co_V_write_data_finish;
reg [layer_oPara_memAddrImgOut_V_c_bitwidth - 1 : 0] mem_layer_oPara_memAddrImgOut_V [layer_oPara_memAddrImgOut_V_DEPTH - 1 : 0];
reg layer_oPara_memAddrImgOut_V_write_data_finish;
reg [DATA_WIDTH - 1 : 0] mem_layer_oParaNext_co_V [layer_oParaNext_co_V_DEPTH - 1 : 0];
reg layer_oParaNext_co_V_write_data_finish;
reg AESL_ready_out_index_reg = 0;
reg AESL_write_start_finish = 0;
reg AESL_ready_reg;
reg ready_initial;
reg AESL_done_index_reg = 0;
reg AESL_idle_index_reg = 0;
reg AESL_auto_restart_index_reg;
reg process_0_finish = 0;
reg process_1_finish = 0;
reg process_2_finish = 0;
reg process_3_finish = 0;
reg process_4_finish = 0;
reg process_5_finish = 0;
reg process_6_finish = 0;
reg process_7_finish = 0;
reg process_8_finish = 0;
reg process_9_finish = 0;
reg process_10_finish = 0;
reg process_11_finish = 0;
reg process_12_finish = 0;
//write wddr_V reg
reg [31 : 0] write_wddr_V_count = 0;
reg write_wddr_V_run_flag = 0;
reg write_one_wddr_V_data_done = 0;
//write fiddr_V reg
reg [31 : 0] write_fiddr_V_count = 0;
reg write_fiddr_V_run_flag = 0;
reg write_one_fiddr_V_data_done = 0;
//write foddr_V reg
reg [31 : 0] write_foddr_V_count = 0;
reg write_foddr_V_run_flag = 0;
reg write_one_foddr_V_data_done = 0;
//write layer_wParaNext_memAddrBias_V reg
reg [31 : 0] write_layer_wParaNext_memAddrBias_V_count = 0;
reg write_layer_wParaNext_memAddrBias_V_run_flag = 0;
reg write_one_layer_wParaNext_memAddrBias_V_data_done = 0;
//write layer_iPara_width reg
reg [31 : 0] write_layer_iPara_width_count = 0;
reg write_layer_iPara_width_run_flag = 0;
reg write_one_layer_iPara_width_data_done = 0;
//write layer_iPara_height reg
reg [31 : 0] write_layer_iPara_height_count = 0;
reg write_layer_iPara_height_run_flag = 0;
reg write_one_layer_iPara_height_data_done = 0;
//write layer_iPara_ciAlign_V reg
reg [31 : 0] write_layer_iPara_ciAlign_V_count = 0;
reg write_layer_iPara_ciAlign_V_run_flag = 0;
reg write_one_layer_iPara_ciAlign_V_data_done = 0;
//write layer_iPara_memAddrImgIn_V reg
reg [31 : 0] write_layer_iPara_memAddrImgIn_V_count = 0;
reg write_layer_iPara_memAddrImgIn_V_run_flag = 0;
reg write_one_layer_iPara_memAddrImgIn_V_data_done = 0;
//write layer_oPara_co_V reg
reg [31 : 0] write_layer_oPara_co_V_count = 0;
reg write_layer_oPara_co_V_run_flag = 0;
reg write_one_layer_oPara_co_V_data_done = 0;
//write layer_oPara_memAddrImgOut_V reg
reg [31 : 0] write_layer_oPara_memAddrImgOut_V_count = 0;
reg write_layer_oPara_memAddrImgOut_V_run_flag = 0;
reg write_one_layer_oPara_memAddrImgOut_V_data_done = 0;
//write layer_oParaNext_co_V reg
reg [31 : 0] write_layer_oParaNext_co_V_count = 0;
reg write_layer_oParaNext_co_V_run_flag = 0;
reg write_one_layer_oParaNext_co_V_data_done = 0;
reg [31 : 0] write_start_count = 0;
reg write_start_run_flag = 0;

//===================process control=================
reg [31 : 0] ongoing_process_number = 0;
//process number depends on how much processes needed.
reg process_busy = 0;

//=================== signal connection ==============
assign TRAN_s_axi_axilite_AWADDR = AWADDR_reg;
assign TRAN_s_axi_axilite_AWVALID = AWVALID_reg;
assign TRAN_s_axi_axilite_WVALID = WVALID_reg;
assign TRAN_s_axi_axilite_WDATA = WDATA_reg;
assign TRAN_s_axi_axilite_WSTRB = WSTRB_reg;
assign TRAN_s_axi_axilite_ARADDR = ARADDR_reg;
assign TRAN_s_axi_axilite_ARVALID = ARVALID_reg;
assign TRAN_s_axi_axilite_RREADY = RREADY_reg;
assign TRAN_s_axi_axilite_BREADY = BREADY_reg;
assign TRAN_axilite_write_start_finish = AESL_write_start_finish;
assign TRAN_axilite_done_out = AESL_done_index_reg;
assign TRAN_axilite_ready_out = AESL_ready_out_index_reg;
assign TRAN_axilite_idle_out = AESL_idle_index_reg;
assign TRAN_axilite_write_data_finish = 1 & wddr_V_write_data_finish & fiddr_V_write_data_finish & foddr_V_write_data_finish & layer_wParaNext_memAddrBias_V_write_data_finish & layer_iPara_width_write_data_finish & layer_iPara_height_write_data_finish & layer_iPara_ciAlign_V_write_data_finish & layer_iPara_memAddrImgIn_V_write_data_finish & layer_oPara_co_V_write_data_finish & layer_oPara_memAddrImgOut_V_write_data_finish & layer_oParaNext_co_V_write_data_finish;
always @(TRAN_axilite_ready_in or ready_initial) 
begin
    AESL_ready_reg <= TRAN_axilite_ready_in | ready_initial;
end

always @(reset or process_0_finish or process_1_finish or process_2_finish or process_3_finish or process_4_finish or process_5_finish or process_6_finish or process_7_finish or process_8_finish or process_9_finish or process_10_finish or process_11_finish or process_12_finish ) begin
    if (reset == 0) begin
        ongoing_process_number <= 0;
    end
    else if (ongoing_process_number == 0 && process_0_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 1 && process_1_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 2 && process_2_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 3 && process_3_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 4 && process_4_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 5 && process_5_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 6 && process_6_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 7 && process_7_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 8 && process_8_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 9 && process_9_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 10 && process_10_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 11 && process_11_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 12 && process_12_finish == 1) begin
            ongoing_process_number <= 0;
    end
end

always @(TRAN_wddr_V) 
begin
    reg_wddr_V = TRAN_wddr_V;
end
always @(TRAN_fiddr_V) 
begin
    reg_fiddr_V = TRAN_fiddr_V;
end
always @(TRAN_foddr_V) 
begin
    reg_foddr_V = TRAN_foddr_V;
end
task count_c_data_four_byte_num_by_bitwidth;
input  integer bitwidth;
output integer num;
integer factor;
integer i;
begin
    factor = 32;
    for (i = 1; i <= 32; i = i + 1) begin
        if (bitwidth <= factor && bitwidth > factor - 32) begin
            num = i;
        end
        factor = factor + 32;
    end
end    
endtask

task count_seperate_factor_by_bitwidth;
input  integer bitwidth;
output integer factor;
begin
    if (bitwidth <= 8 ) begin
        factor=4;
    end
    if (bitwidth <= 16 & bitwidth > 8 ) begin
        factor=2;
    end
    if (bitwidth <= 32 & bitwidth > 16 ) begin
        factor=1;
    end
    if (bitwidth <= 1024 & bitwidth > 32 ) begin
        factor=1;
    end
end    
endtask

task count_operate_depth_by_bitwidth_and_depth;
input  integer bitwidth;
input  integer depth;
output integer operate_depth;
integer factor;
integer remain;
begin
    count_seperate_factor_by_bitwidth (bitwidth , factor);
    operate_depth = depth / factor;
    remain = depth % factor;
    if (remain > 0) begin
        operate_depth = operate_depth + 1;
    end
end    
endtask

task write; /*{{{*/
    input  reg [ADDR_WIDTH - 1:0] waddr;   // write address
    input  reg [DATA_WIDTH - 1:0] wdata;   // write data
    output reg wresp;
    reg aw_flag;
    reg w_flag;
    reg [DATA_WIDTH/8 - 1:0] wstrb_reg;
    integer i;
begin 
    wresp = 0;
    aw_flag = 0;
    w_flag = 0;
//=======================one single write operate======================
    AWADDR_reg <= waddr;
    AWVALID_reg <= 1;
    WDATA_reg <= wdata;
    WVALID_reg <= 1;
    for (i = 0; i < DATA_WIDTH/8; i = i + 1) begin
        wstrb_reg [i] = 1;
    end    
    WSTRB_reg <= wstrb_reg;
    while (!(aw_flag && w_flag)) begin
        @(posedge clk);
        if (aw_flag != 1)
            aw_flag = TRAN_s_axi_axilite_AWREADY & AWVALID_reg;
        if (w_flag != 1)
            w_flag = TRAN_s_axi_axilite_WREADY & WVALID_reg;
        AWVALID_reg <= !aw_flag;
        WVALID_reg <= !w_flag;
    end

    BREADY_reg <= 1;
    while (TRAN_s_axi_axilite_BVALID != 1) begin
        //wait for response 
        @(posedge clk);
    end
    @(posedge clk);
    BREADY_reg <= 0;
    if (TRAN_s_axi_axilite_BRESP === 2'b00) begin
        wresp = 1;
        //input success. in fact BRESP is always 2'b00
    end   
//=======================one single write operate======================

end
endtask/*}}}*/

task read (/*{{{*/
    input  [ADDR_WIDTH - 1:0] raddr ,   // write address
    output [DATA_WIDTH - 1:0] RDATA_result ,
    output rresp
);
begin 
    rresp = 0;
//=======================one single read operate======================
    ARADDR_reg <= raddr;
    ARVALID_reg <= 1;
    while (TRAN_s_axi_axilite_ARREADY !== 1) begin
        @(posedge clk);
    end
    @(posedge clk);
    ARVALID_reg <= 0;
    RREADY_reg <= 1;
    while (TRAN_s_axi_axilite_RVALID !== 1) begin
        //wait for response 
        @(posedge clk);
    end
    @(posedge clk);
    RDATA_result  <= TRAN_s_axi_axilite_RDATA;
    RREADY_reg <= 0;
    if (TRAN_s_axi_axilite_RRESP === 2'b00 ) begin
        rresp <= 1;
        //output success. in fact RRESP is always 2'b00
    end  
    @(posedge clk);

//=======================one single read operate end======================

end
endtask/*}}}*/

initial begin : ready_initial_process
    ready_initial = 0;
    wait(reset === 1);
    @(posedge clk);
    ready_initial = 1;
    @(posedge clk);
    ready_initial = 0;
end

initial begin : update_status
    integer process_num ;
    integer read_status_resp;
    wait(reset === 1);
    @(posedge clk);
    process_num = 0;
    while (1) begin
        process_0_finish = 0;
        AESL_done_index_reg         <= 0;
        AESL_ready_out_index_reg        <= 0;
        if (ongoing_process_number === process_num && process_busy === 0) begin
            process_busy = 1;
            read (STATUS_ADDR, RDATA_reg, read_status_resp);
                AESL_done_index_reg         <= RDATA_reg[1 : 1];
                AESL_ready_out_index_reg    <= RDATA_reg[1 : 1];
                AESL_idle_index_reg         <= RDATA_reg[2 : 2];
            process_0_finish = 1;
            process_busy = 0;
        end 
        @(posedge clk);
    end
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        wddr_V_write_data_finish <= 0;
        write_wddr_V_run_flag <= 0; 
        write_wddr_V_count = 0;
        count_operate_depth_by_bitwidth_and_depth (wddr_V_c_bitwidth, wddr_V_DEPTH, wddr_V_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_axilite_start_in === 1) begin
            wddr_V_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_wddr_V_run_flag <= 1; 
            write_wddr_V_count = 0;
        end
        if (write_one_wddr_V_data_done === 1) begin
            write_wddr_V_count = write_wddr_V_count + 1;
            if (write_wddr_V_count == wddr_V_OPERATE_DEPTH) begin
                write_wddr_V_run_flag <= 0; 
                wddr_V_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_wddr_V
    integer write_wddr_V_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] wddr_V_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = wddr_V_c_bitwidth;
    process_num = 1;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_1_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_wddr_V_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write wddr_V data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (wddr_V_c_bitwidth < 32) begin
                        wddr_V_data_tmp_reg = reg_wddr_V;
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < wddr_V_c_bitwidth) begin
                                wddr_V_data_tmp_reg[j] = reg_wddr_V[i*32 + j];
                            end
                            else begin
                                wddr_V_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    write (wddr_V_data_in_addr + write_wddr_V_count * four_byte_num * 4 + i * 4, wddr_V_data_tmp_reg, write_wddr_V_resp);
                end
                process_busy = 0;
                write_one_wddr_V_data_done <= 1;
                @(posedge clk);
                write_one_wddr_V_data_done <= 0;
            end   
            process_1_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        fiddr_V_write_data_finish <= 0;
        write_fiddr_V_run_flag <= 0; 
        write_fiddr_V_count = 0;
        count_operate_depth_by_bitwidth_and_depth (fiddr_V_c_bitwidth, fiddr_V_DEPTH, fiddr_V_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_axilite_start_in === 1) begin
            fiddr_V_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_fiddr_V_run_flag <= 1; 
            write_fiddr_V_count = 0;
        end
        if (write_one_fiddr_V_data_done === 1) begin
            write_fiddr_V_count = write_fiddr_V_count + 1;
            if (write_fiddr_V_count == fiddr_V_OPERATE_DEPTH) begin
                write_fiddr_V_run_flag <= 0; 
                fiddr_V_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_fiddr_V
    integer write_fiddr_V_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] fiddr_V_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = fiddr_V_c_bitwidth;
    process_num = 2;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_2_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_fiddr_V_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write fiddr_V data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (fiddr_V_c_bitwidth < 32) begin
                        fiddr_V_data_tmp_reg = reg_fiddr_V;
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < fiddr_V_c_bitwidth) begin
                                fiddr_V_data_tmp_reg[j] = reg_fiddr_V[i*32 + j];
                            end
                            else begin
                                fiddr_V_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    write (fiddr_V_data_in_addr + write_fiddr_V_count * four_byte_num * 4 + i * 4, fiddr_V_data_tmp_reg, write_fiddr_V_resp);
                end
                process_busy = 0;
                write_one_fiddr_V_data_done <= 1;
                @(posedge clk);
                write_one_fiddr_V_data_done <= 0;
            end   
            process_2_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        foddr_V_write_data_finish <= 0;
        write_foddr_V_run_flag <= 0; 
        write_foddr_V_count = 0;
        count_operate_depth_by_bitwidth_and_depth (foddr_V_c_bitwidth, foddr_V_DEPTH, foddr_V_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_axilite_start_in === 1) begin
            foddr_V_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_foddr_V_run_flag <= 1; 
            write_foddr_V_count = 0;
        end
        if (write_one_foddr_V_data_done === 1) begin
            write_foddr_V_count = write_foddr_V_count + 1;
            if (write_foddr_V_count == foddr_V_OPERATE_DEPTH) begin
                write_foddr_V_run_flag <= 0; 
                foddr_V_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_foddr_V
    integer write_foddr_V_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] foddr_V_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = foddr_V_c_bitwidth;
    process_num = 3;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_3_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_foddr_V_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write foddr_V data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (foddr_V_c_bitwidth < 32) begin
                        foddr_V_data_tmp_reg = reg_foddr_V;
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < foddr_V_c_bitwidth) begin
                                foddr_V_data_tmp_reg[j] = reg_foddr_V[i*32 + j];
                            end
                            else begin
                                foddr_V_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    write (foddr_V_data_in_addr + write_foddr_V_count * four_byte_num * 4 + i * 4, foddr_V_data_tmp_reg, write_foddr_V_resp);
                end
                process_busy = 0;
                write_one_foddr_V_data_done <= 1;
                @(posedge clk);
                write_one_foddr_V_data_done <= 0;
            end   
            process_3_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        layer_wParaNext_memAddrBias_V_write_data_finish <= 0;
        write_layer_wParaNext_memAddrBias_V_run_flag <= 0; 
        write_layer_wParaNext_memAddrBias_V_count = 0;
        count_operate_depth_by_bitwidth_and_depth (layer_wParaNext_memAddrBias_V_c_bitwidth, layer_wParaNext_memAddrBias_V_DEPTH, layer_wParaNext_memAddrBias_V_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_axilite_start_in === 1) begin
            layer_wParaNext_memAddrBias_V_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_layer_wParaNext_memAddrBias_V_run_flag <= 1; 
            write_layer_wParaNext_memAddrBias_V_count = 0;
        end
        if (write_one_layer_wParaNext_memAddrBias_V_data_done === 1) begin
            write_layer_wParaNext_memAddrBias_V_count = write_layer_wParaNext_memAddrBias_V_count + 1;
            if (write_layer_wParaNext_memAddrBias_V_count == layer_wParaNext_memAddrBias_V_OPERATE_DEPTH) begin
                write_layer_wParaNext_memAddrBias_V_run_flag <= 0; 
                layer_wParaNext_memAddrBias_V_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_layer_wParaNext_memAddrBias_V
    integer write_layer_wParaNext_memAddrBias_V_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] layer_wParaNext_memAddrBias_V_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = layer_wParaNext_memAddrBias_V_c_bitwidth;
    process_num = 4;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_4_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_layer_wParaNext_memAddrBias_V_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write layer_wParaNext_memAddrBias_V data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (layer_wParaNext_memAddrBias_V_c_bitwidth < 32) begin
                        layer_wParaNext_memAddrBias_V_data_tmp_reg = mem_layer_wParaNext_memAddrBias_V[write_layer_wParaNext_memAddrBias_V_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < layer_wParaNext_memAddrBias_V_c_bitwidth) begin
                                layer_wParaNext_memAddrBias_V_data_tmp_reg[j] = mem_layer_wParaNext_memAddrBias_V[write_layer_wParaNext_memAddrBias_V_count][i*32 + j];
                            end
                            else begin
                                layer_wParaNext_memAddrBias_V_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    write (layer_wParaNext_memAddrBias_V_data_in_addr + write_layer_wParaNext_memAddrBias_V_count * four_byte_num * 4 + i * 4, layer_wParaNext_memAddrBias_V_data_tmp_reg, write_layer_wParaNext_memAddrBias_V_resp);
                end
                process_busy = 0;
                write_one_layer_wParaNext_memAddrBias_V_data_done <= 1;
                @(posedge clk);
                write_one_layer_wParaNext_memAddrBias_V_data_done <= 0;
            end   
            process_4_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        layer_iPara_width_write_data_finish <= 0;
        write_layer_iPara_width_run_flag <= 0; 
        write_layer_iPara_width_count = 0;
        count_operate_depth_by_bitwidth_and_depth (layer_iPara_width_c_bitwidth, layer_iPara_width_DEPTH, layer_iPara_width_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_axilite_start_in === 1) begin
            layer_iPara_width_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_layer_iPara_width_run_flag <= 1; 
            write_layer_iPara_width_count = 0;
        end
        if (write_one_layer_iPara_width_data_done === 1) begin
            write_layer_iPara_width_count = write_layer_iPara_width_count + 1;
            if (write_layer_iPara_width_count == layer_iPara_width_OPERATE_DEPTH) begin
                write_layer_iPara_width_run_flag <= 0; 
                layer_iPara_width_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_layer_iPara_width
    integer write_layer_iPara_width_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] layer_iPara_width_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = layer_iPara_width_c_bitwidth;
    process_num = 5;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_5_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_layer_iPara_width_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write layer_iPara_width data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (layer_iPara_width_c_bitwidth < 32) begin
                        layer_iPara_width_data_tmp_reg = mem_layer_iPara_width[write_layer_iPara_width_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < layer_iPara_width_c_bitwidth) begin
                                layer_iPara_width_data_tmp_reg[j] = mem_layer_iPara_width[write_layer_iPara_width_count][i*32 + j];
                            end
                            else begin
                                layer_iPara_width_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    write (layer_iPara_width_data_in_addr + write_layer_iPara_width_count * four_byte_num * 4 + i * 4, layer_iPara_width_data_tmp_reg, write_layer_iPara_width_resp);
                end
                process_busy = 0;
                write_one_layer_iPara_width_data_done <= 1;
                @(posedge clk);
                write_one_layer_iPara_width_data_done <= 0;
            end   
            process_5_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        layer_iPara_height_write_data_finish <= 0;
        write_layer_iPara_height_run_flag <= 0; 
        write_layer_iPara_height_count = 0;
        count_operate_depth_by_bitwidth_and_depth (layer_iPara_height_c_bitwidth, layer_iPara_height_DEPTH, layer_iPara_height_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_axilite_start_in === 1) begin
            layer_iPara_height_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_layer_iPara_height_run_flag <= 1; 
            write_layer_iPara_height_count = 0;
        end
        if (write_one_layer_iPara_height_data_done === 1) begin
            write_layer_iPara_height_count = write_layer_iPara_height_count + 1;
            if (write_layer_iPara_height_count == layer_iPara_height_OPERATE_DEPTH) begin
                write_layer_iPara_height_run_flag <= 0; 
                layer_iPara_height_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_layer_iPara_height
    integer write_layer_iPara_height_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] layer_iPara_height_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = layer_iPara_height_c_bitwidth;
    process_num = 6;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_6_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_layer_iPara_height_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write layer_iPara_height data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (layer_iPara_height_c_bitwidth < 32) begin
                        layer_iPara_height_data_tmp_reg = mem_layer_iPara_height[write_layer_iPara_height_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < layer_iPara_height_c_bitwidth) begin
                                layer_iPara_height_data_tmp_reg[j] = mem_layer_iPara_height[write_layer_iPara_height_count][i*32 + j];
                            end
                            else begin
                                layer_iPara_height_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    write (layer_iPara_height_data_in_addr + write_layer_iPara_height_count * four_byte_num * 4 + i * 4, layer_iPara_height_data_tmp_reg, write_layer_iPara_height_resp);
                end
                process_busy = 0;
                write_one_layer_iPara_height_data_done <= 1;
                @(posedge clk);
                write_one_layer_iPara_height_data_done <= 0;
            end   
            process_6_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        layer_iPara_ciAlign_V_write_data_finish <= 0;
        write_layer_iPara_ciAlign_V_run_flag <= 0; 
        write_layer_iPara_ciAlign_V_count = 0;
        count_operate_depth_by_bitwidth_and_depth (layer_iPara_ciAlign_V_c_bitwidth, layer_iPara_ciAlign_V_DEPTH, layer_iPara_ciAlign_V_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_axilite_start_in === 1) begin
            layer_iPara_ciAlign_V_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_layer_iPara_ciAlign_V_run_flag <= 1; 
            write_layer_iPara_ciAlign_V_count = 0;
        end
        if (write_one_layer_iPara_ciAlign_V_data_done === 1) begin
            write_layer_iPara_ciAlign_V_count = write_layer_iPara_ciAlign_V_count + 1;
            if (write_layer_iPara_ciAlign_V_count == layer_iPara_ciAlign_V_OPERATE_DEPTH) begin
                write_layer_iPara_ciAlign_V_run_flag <= 0; 
                layer_iPara_ciAlign_V_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_layer_iPara_ciAlign_V
    integer write_layer_iPara_ciAlign_V_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] layer_iPara_ciAlign_V_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = layer_iPara_ciAlign_V_c_bitwidth;
    process_num = 7;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_7_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_layer_iPara_ciAlign_V_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write layer_iPara_ciAlign_V data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (layer_iPara_ciAlign_V_c_bitwidth < 32) begin
                        layer_iPara_ciAlign_V_data_tmp_reg = mem_layer_iPara_ciAlign_V[write_layer_iPara_ciAlign_V_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < layer_iPara_ciAlign_V_c_bitwidth) begin
                                layer_iPara_ciAlign_V_data_tmp_reg[j] = mem_layer_iPara_ciAlign_V[write_layer_iPara_ciAlign_V_count][i*32 + j];
                            end
                            else begin
                                layer_iPara_ciAlign_V_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    write (layer_iPara_ciAlign_V_data_in_addr + write_layer_iPara_ciAlign_V_count * four_byte_num * 4 + i * 4, layer_iPara_ciAlign_V_data_tmp_reg, write_layer_iPara_ciAlign_V_resp);
                end
                process_busy = 0;
                write_one_layer_iPara_ciAlign_V_data_done <= 1;
                @(posedge clk);
                write_one_layer_iPara_ciAlign_V_data_done <= 0;
            end   
            process_7_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        layer_iPara_memAddrImgIn_V_write_data_finish <= 0;
        write_layer_iPara_memAddrImgIn_V_run_flag <= 0; 
        write_layer_iPara_memAddrImgIn_V_count = 0;
        count_operate_depth_by_bitwidth_and_depth (layer_iPara_memAddrImgIn_V_c_bitwidth, layer_iPara_memAddrImgIn_V_DEPTH, layer_iPara_memAddrImgIn_V_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_axilite_start_in === 1) begin
            layer_iPara_memAddrImgIn_V_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_layer_iPara_memAddrImgIn_V_run_flag <= 1; 
            write_layer_iPara_memAddrImgIn_V_count = 0;
        end
        if (write_one_layer_iPara_memAddrImgIn_V_data_done === 1) begin
            write_layer_iPara_memAddrImgIn_V_count = write_layer_iPara_memAddrImgIn_V_count + 1;
            if (write_layer_iPara_memAddrImgIn_V_count == layer_iPara_memAddrImgIn_V_OPERATE_DEPTH) begin
                write_layer_iPara_memAddrImgIn_V_run_flag <= 0; 
                layer_iPara_memAddrImgIn_V_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_layer_iPara_memAddrImgIn_V
    integer write_layer_iPara_memAddrImgIn_V_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] layer_iPara_memAddrImgIn_V_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = layer_iPara_memAddrImgIn_V_c_bitwidth;
    process_num = 8;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_8_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_layer_iPara_memAddrImgIn_V_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write layer_iPara_memAddrImgIn_V data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (layer_iPara_memAddrImgIn_V_c_bitwidth < 32) begin
                        layer_iPara_memAddrImgIn_V_data_tmp_reg = mem_layer_iPara_memAddrImgIn_V[write_layer_iPara_memAddrImgIn_V_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < layer_iPara_memAddrImgIn_V_c_bitwidth) begin
                                layer_iPara_memAddrImgIn_V_data_tmp_reg[j] = mem_layer_iPara_memAddrImgIn_V[write_layer_iPara_memAddrImgIn_V_count][i*32 + j];
                            end
                            else begin
                                layer_iPara_memAddrImgIn_V_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    write (layer_iPara_memAddrImgIn_V_data_in_addr + write_layer_iPara_memAddrImgIn_V_count * four_byte_num * 4 + i * 4, layer_iPara_memAddrImgIn_V_data_tmp_reg, write_layer_iPara_memAddrImgIn_V_resp);
                end
                process_busy = 0;
                write_one_layer_iPara_memAddrImgIn_V_data_done <= 1;
                @(posedge clk);
                write_one_layer_iPara_memAddrImgIn_V_data_done <= 0;
            end   
            process_8_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        layer_oPara_co_V_write_data_finish <= 0;
        write_layer_oPara_co_V_run_flag <= 0; 
        write_layer_oPara_co_V_count = 0;
        count_operate_depth_by_bitwidth_and_depth (layer_oPara_co_V_c_bitwidth, layer_oPara_co_V_DEPTH, layer_oPara_co_V_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_axilite_start_in === 1) begin
            layer_oPara_co_V_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_layer_oPara_co_V_run_flag <= 1; 
            write_layer_oPara_co_V_count = 0;
        end
        if (write_one_layer_oPara_co_V_data_done === 1) begin
            write_layer_oPara_co_V_count = write_layer_oPara_co_V_count + 1;
            if (write_layer_oPara_co_V_count == layer_oPara_co_V_OPERATE_DEPTH) begin
                write_layer_oPara_co_V_run_flag <= 0; 
                layer_oPara_co_V_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_layer_oPara_co_V
    integer write_layer_oPara_co_V_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] layer_oPara_co_V_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = layer_oPara_co_V_c_bitwidth;
    process_num = 9;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_9_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_layer_oPara_co_V_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write layer_oPara_co_V data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (layer_oPara_co_V_c_bitwidth < 32) begin
                        layer_oPara_co_V_data_tmp_reg = mem_layer_oPara_co_V[write_layer_oPara_co_V_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < layer_oPara_co_V_c_bitwidth) begin
                                layer_oPara_co_V_data_tmp_reg[j] = mem_layer_oPara_co_V[write_layer_oPara_co_V_count][i*32 + j];
                            end
                            else begin
                                layer_oPara_co_V_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    write (layer_oPara_co_V_data_in_addr + write_layer_oPara_co_V_count * four_byte_num * 4 + i * 4, layer_oPara_co_V_data_tmp_reg, write_layer_oPara_co_V_resp);
                end
                process_busy = 0;
                write_one_layer_oPara_co_V_data_done <= 1;
                @(posedge clk);
                write_one_layer_oPara_co_V_data_done <= 0;
            end   
            process_9_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        layer_oPara_memAddrImgOut_V_write_data_finish <= 0;
        write_layer_oPara_memAddrImgOut_V_run_flag <= 0; 
        write_layer_oPara_memAddrImgOut_V_count = 0;
        count_operate_depth_by_bitwidth_and_depth (layer_oPara_memAddrImgOut_V_c_bitwidth, layer_oPara_memAddrImgOut_V_DEPTH, layer_oPara_memAddrImgOut_V_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_axilite_start_in === 1) begin
            layer_oPara_memAddrImgOut_V_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_layer_oPara_memAddrImgOut_V_run_flag <= 1; 
            write_layer_oPara_memAddrImgOut_V_count = 0;
        end
        if (write_one_layer_oPara_memAddrImgOut_V_data_done === 1) begin
            write_layer_oPara_memAddrImgOut_V_count = write_layer_oPara_memAddrImgOut_V_count + 1;
            if (write_layer_oPara_memAddrImgOut_V_count == layer_oPara_memAddrImgOut_V_OPERATE_DEPTH) begin
                write_layer_oPara_memAddrImgOut_V_run_flag <= 0; 
                layer_oPara_memAddrImgOut_V_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_layer_oPara_memAddrImgOut_V
    integer write_layer_oPara_memAddrImgOut_V_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] layer_oPara_memAddrImgOut_V_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = layer_oPara_memAddrImgOut_V_c_bitwidth;
    process_num = 10;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_10_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_layer_oPara_memAddrImgOut_V_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write layer_oPara_memAddrImgOut_V data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (layer_oPara_memAddrImgOut_V_c_bitwidth < 32) begin
                        layer_oPara_memAddrImgOut_V_data_tmp_reg = mem_layer_oPara_memAddrImgOut_V[write_layer_oPara_memAddrImgOut_V_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < layer_oPara_memAddrImgOut_V_c_bitwidth) begin
                                layer_oPara_memAddrImgOut_V_data_tmp_reg[j] = mem_layer_oPara_memAddrImgOut_V[write_layer_oPara_memAddrImgOut_V_count][i*32 + j];
                            end
                            else begin
                                layer_oPara_memAddrImgOut_V_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    write (layer_oPara_memAddrImgOut_V_data_in_addr + write_layer_oPara_memAddrImgOut_V_count * four_byte_num * 4 + i * 4, layer_oPara_memAddrImgOut_V_data_tmp_reg, write_layer_oPara_memAddrImgOut_V_resp);
                end
                process_busy = 0;
                write_one_layer_oPara_memAddrImgOut_V_data_done <= 1;
                @(posedge clk);
                write_one_layer_oPara_memAddrImgOut_V_data_done <= 0;
            end   
            process_10_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        layer_oParaNext_co_V_write_data_finish <= 0;
        write_layer_oParaNext_co_V_run_flag <= 0; 
        write_layer_oParaNext_co_V_count = 0;
        count_operate_depth_by_bitwidth_and_depth (layer_oParaNext_co_V_c_bitwidth, layer_oParaNext_co_V_DEPTH, layer_oParaNext_co_V_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_axilite_start_in === 1) begin
            layer_oParaNext_co_V_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_layer_oParaNext_co_V_run_flag <= 1; 
            write_layer_oParaNext_co_V_count = 0;
        end
        if (write_one_layer_oParaNext_co_V_data_done === 1) begin
            write_layer_oParaNext_co_V_count = write_layer_oParaNext_co_V_count + 1;
            if (write_layer_oParaNext_co_V_count == layer_oParaNext_co_V_OPERATE_DEPTH) begin
                write_layer_oParaNext_co_V_run_flag <= 0; 
                layer_oParaNext_co_V_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_layer_oParaNext_co_V
    integer write_layer_oParaNext_co_V_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] layer_oParaNext_co_V_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = layer_oParaNext_co_V_c_bitwidth;
    process_num = 11;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_11_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_layer_oParaNext_co_V_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write layer_oParaNext_co_V data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (layer_oParaNext_co_V_c_bitwidth < 32) begin
                        layer_oParaNext_co_V_data_tmp_reg = mem_layer_oParaNext_co_V[write_layer_oParaNext_co_V_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < layer_oParaNext_co_V_c_bitwidth) begin
                                layer_oParaNext_co_V_data_tmp_reg[j] = mem_layer_oParaNext_co_V[write_layer_oParaNext_co_V_count][i*32 + j];
                            end
                            else begin
                                layer_oParaNext_co_V_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    write (layer_oParaNext_co_V_data_in_addr + write_layer_oParaNext_co_V_count * four_byte_num * 4 + i * 4, layer_oParaNext_co_V_data_tmp_reg, write_layer_oParaNext_co_V_resp);
                end
                process_busy = 0;
                write_one_layer_oParaNext_co_V_data_done <= 1;
                @(posedge clk);
                write_one_layer_oParaNext_co_V_data_done <= 0;
            end   
            process_11_finish <= 1;
        end
        @(posedge clk);
    end    
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        write_start_run_flag <= 0; 
        write_start_count <= 0;
    end
    else begin
        if (write_start_count >= 1) begin
            write_start_run_flag <= 0; 
        end
        else if (TRAN_axilite_write_start_in === 1) begin
            write_start_run_flag <= 1; 
        end
        if (AESL_write_start_finish === 1) begin
            write_start_count <= write_start_count + 1;
            write_start_run_flag <= 0; 
        end
    end
end

initial begin : write_start
    reg [DATA_WIDTH - 1 : 0] write_start_tmp;
    integer process_num;
    integer write_start_resp;
    wait(reset === 1);
    @(posedge clk);
    process_num = 12;
    while (1) begin
        process_12_finish = 0;
        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            if (write_start_run_flag === 1) begin
                process_busy = 1;
                write_start_tmp=0;
                write_start_tmp[0 : 0] = 1;
                write (START_ADDR, write_start_tmp, write_start_resp);
                process_busy = 0;
                AESL_write_start_finish <= 1;
                @(posedge clk);
                AESL_write_start_finish <= 0;
            end
            process_12_finish <= 1;
        end 
        @(posedge clk);
    end
end

//------------------------Task and function-------------- 
task read_token; 
    input integer fp; 
    output reg [127 : 0] token;
    integer ret;
    begin
        token = "";
        ret = 0;
        ret = $fscanf(fp,"%s",token);
    end 
endtask 
 
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_layer_wParaNext_memAddrBias_V_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [127 : 0] token; 
  reg [127 : 0] token_tmp; 
  //reg [layer_wParaNext_memAddrBias_V_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] mem_tmp; 
  reg [ 8*5 : 1] str;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  mem_tmp [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (layer_wParaNext_memAddrBias_V_c_bitwidth , factor);
  fp = $fopen(`TV_IN_layer_wParaNext_memAddrBias_V ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_layer_wParaNext_memAddrBias_V); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < layer_wParaNext_memAddrBias_V_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  mem_tmp [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  mem_tmp [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  mem_tmp [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  mem_tmp [31 : 24] = token_tmp;
                  mem_layer_wParaNext_memAddrBias_V [i/factor] = mem_tmp;
                  mem_tmp [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  mem_tmp [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  mem_tmp [31 : 16] = token_tmp;
                  mem_layer_wParaNext_memAddrBias_V [i/factor] = mem_tmp;
                  mem_tmp [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_layer_wParaNext_memAddrBias_V [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_layer_wParaNext_memAddrBias_V [i/factor] = mem_tmp;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_layer_wParaNext_memAddrBias_V [i/factor] = mem_tmp;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_layer_iPara_width_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [127 : 0] token; 
  reg [127 : 0] token_tmp; 
  //reg [layer_iPara_width_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] mem_tmp; 
  reg [ 8*5 : 1] str;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  mem_tmp [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (layer_iPara_width_c_bitwidth , factor);
  fp = $fopen(`TV_IN_layer_iPara_width ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_layer_iPara_width); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < layer_iPara_width_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  mem_tmp [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  mem_tmp [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  mem_tmp [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  mem_tmp [31 : 24] = token_tmp;
                  mem_layer_iPara_width [i/factor] = mem_tmp;
                  mem_tmp [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  mem_tmp [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  mem_tmp [31 : 16] = token_tmp;
                  mem_layer_iPara_width [i/factor] = mem_tmp;
                  mem_tmp [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_layer_iPara_width [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_layer_iPara_width [i/factor] = mem_tmp;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_layer_iPara_width [i/factor] = mem_tmp;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_layer_iPara_height_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [127 : 0] token; 
  reg [127 : 0] token_tmp; 
  //reg [layer_iPara_height_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] mem_tmp; 
  reg [ 8*5 : 1] str;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  mem_tmp [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (layer_iPara_height_c_bitwidth , factor);
  fp = $fopen(`TV_IN_layer_iPara_height ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_layer_iPara_height); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < layer_iPara_height_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  mem_tmp [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  mem_tmp [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  mem_tmp [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  mem_tmp [31 : 24] = token_tmp;
                  mem_layer_iPara_height [i/factor] = mem_tmp;
                  mem_tmp [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  mem_tmp [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  mem_tmp [31 : 16] = token_tmp;
                  mem_layer_iPara_height [i/factor] = mem_tmp;
                  mem_tmp [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_layer_iPara_height [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_layer_iPara_height [i/factor] = mem_tmp;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_layer_iPara_height [i/factor] = mem_tmp;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_layer_iPara_ciAlign_V_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [127 : 0] token; 
  reg [127 : 0] token_tmp; 
  //reg [layer_iPara_ciAlign_V_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] mem_tmp; 
  reg [ 8*5 : 1] str;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  mem_tmp [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (layer_iPara_ciAlign_V_c_bitwidth , factor);
  fp = $fopen(`TV_IN_layer_iPara_ciAlign_V ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_layer_iPara_ciAlign_V); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < layer_iPara_ciAlign_V_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  mem_tmp [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  mem_tmp [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  mem_tmp [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  mem_tmp [31 : 24] = token_tmp;
                  mem_layer_iPara_ciAlign_V [i/factor] = mem_tmp;
                  mem_tmp [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  mem_tmp [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  mem_tmp [31 : 16] = token_tmp;
                  mem_layer_iPara_ciAlign_V [i/factor] = mem_tmp;
                  mem_tmp [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_layer_iPara_ciAlign_V [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_layer_iPara_ciAlign_V [i/factor] = mem_tmp;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_layer_iPara_ciAlign_V [i/factor] = mem_tmp;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_layer_iPara_memAddrImgIn_V_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [127 : 0] token; 
  reg [127 : 0] token_tmp; 
  //reg [layer_iPara_memAddrImgIn_V_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] mem_tmp; 
  reg [ 8*5 : 1] str;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  mem_tmp [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (layer_iPara_memAddrImgIn_V_c_bitwidth , factor);
  fp = $fopen(`TV_IN_layer_iPara_memAddrImgIn_V ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_layer_iPara_memAddrImgIn_V); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < layer_iPara_memAddrImgIn_V_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  mem_tmp [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  mem_tmp [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  mem_tmp [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  mem_tmp [31 : 24] = token_tmp;
                  mem_layer_iPara_memAddrImgIn_V [i/factor] = mem_tmp;
                  mem_tmp [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  mem_tmp [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  mem_tmp [31 : 16] = token_tmp;
                  mem_layer_iPara_memAddrImgIn_V [i/factor] = mem_tmp;
                  mem_tmp [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_layer_iPara_memAddrImgIn_V [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_layer_iPara_memAddrImgIn_V [i/factor] = mem_tmp;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_layer_iPara_memAddrImgIn_V [i/factor] = mem_tmp;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_layer_oPara_co_V_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [127 : 0] token; 
  reg [127 : 0] token_tmp; 
  //reg [layer_oPara_co_V_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] mem_tmp; 
  reg [ 8*5 : 1] str;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  mem_tmp [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (layer_oPara_co_V_c_bitwidth , factor);
  fp = $fopen(`TV_IN_layer_oPara_co_V ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_layer_oPara_co_V); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < layer_oPara_co_V_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  mem_tmp [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  mem_tmp [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  mem_tmp [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  mem_tmp [31 : 24] = token_tmp;
                  mem_layer_oPara_co_V [i/factor] = mem_tmp;
                  mem_tmp [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  mem_tmp [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  mem_tmp [31 : 16] = token_tmp;
                  mem_layer_oPara_co_V [i/factor] = mem_tmp;
                  mem_tmp [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_layer_oPara_co_V [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_layer_oPara_co_V [i/factor] = mem_tmp;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_layer_oPara_co_V [i/factor] = mem_tmp;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_layer_oPara_memAddrImgOut_V_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [127 : 0] token; 
  reg [127 : 0] token_tmp; 
  //reg [layer_oPara_memAddrImgOut_V_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] mem_tmp; 
  reg [ 8*5 : 1] str;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  mem_tmp [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (layer_oPara_memAddrImgOut_V_c_bitwidth , factor);
  fp = $fopen(`TV_IN_layer_oPara_memAddrImgOut_V ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_layer_oPara_memAddrImgOut_V); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < layer_oPara_memAddrImgOut_V_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  mem_tmp [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  mem_tmp [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  mem_tmp [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  mem_tmp [31 : 24] = token_tmp;
                  mem_layer_oPara_memAddrImgOut_V [i/factor] = mem_tmp;
                  mem_tmp [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  mem_tmp [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  mem_tmp [31 : 16] = token_tmp;
                  mem_layer_oPara_memAddrImgOut_V [i/factor] = mem_tmp;
                  mem_tmp [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_layer_oPara_memAddrImgOut_V [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_layer_oPara_memAddrImgOut_V [i/factor] = mem_tmp;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_layer_oPara_memAddrImgOut_V [i/factor] = mem_tmp;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_layer_oParaNext_co_V_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [127 : 0] token; 
  reg [127 : 0] token_tmp; 
  //reg [layer_oParaNext_co_V_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] mem_tmp; 
  reg [ 8*5 : 1] str;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  mem_tmp [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (layer_oParaNext_co_V_c_bitwidth , factor);
  fp = $fopen(`TV_IN_layer_oParaNext_co_V ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_layer_oParaNext_co_V); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < layer_oParaNext_co_V_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  mem_tmp [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  mem_tmp [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  mem_tmp [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  mem_tmp [31 : 24] = token_tmp;
                  mem_layer_oParaNext_co_V [i/factor] = mem_tmp;
                  mem_tmp [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  mem_tmp [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  mem_tmp [31 : 16] = token_tmp;
                  mem_layer_oParaNext_co_V [i/factor] = mem_tmp;
                  mem_tmp [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_layer_oParaNext_co_V [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_layer_oParaNext_co_V [i/factor] = mem_tmp;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_layer_oParaNext_co_V [i/factor] = mem_tmp;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
endmodule
