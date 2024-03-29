// ==============================================================
// File generated on Tue Jul 16 20:52:33 CST 2019
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:36:41 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1ns/1ps
module cnna_axilite_s_axi
#(parameter
    C_S_AXI_ADDR_WIDTH = 10,
    C_S_AXI_DATA_WIDTH = 32
)(
    // axi4 lite slave signals
    input  wire                          ACLK,
    input  wire                          ARESET,
    input  wire                          ACLK_EN,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] AWADDR,
    input  wire                          AWVALID,
    output wire                          AWREADY,
    input  wire [C_S_AXI_DATA_WIDTH-1:0] WDATA,
    input  wire [C_S_AXI_DATA_WIDTH/8-1:0] WSTRB,
    input  wire                          WVALID,
    output wire                          WREADY,
    output wire [1:0]                    BRESP,
    output wire                          BVALID,
    input  wire                          BREADY,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] ARADDR,
    input  wire                          ARVALID,
    output wire                          ARREADY,
    output wire [C_S_AXI_DATA_WIDTH-1:0] RDATA,
    output wire [1:0]                    RRESP,
    output wire                          RVALID,
    input  wire                          RREADY,
    output wire                          interrupt,
    // user signals
    output wire                          ap_start,
    input  wire                          ap_done,
    input  wire                          ap_ready,
    input  wire                          ap_idle,
    output wire [31:0]                   wddr_V,
    output wire [31:0]                   fiddr_V,
    output wire [31:0]                   foddr_V,
    input  wire [3:0]                    layer_name_address0,
    input  wire                          layer_name_ce0,
    input  wire                          layer_name_we0,
    input  wire [7:0]                    layer_name_d0,
    output wire [0:0]                    layer_enPara_cnvEn,
    output wire [0:0]                    layer_enPara_poolEn,
    output wire [15:0]                   layer_wPara_curLayerNum,
    output wire [0:0]                    layer_wPara_layerDivideType,
    output wire [10:0]                   layer_wPara_sublayerNum_V,
    output wire [10:0]                   layer_wPara_sublayerSeq_V,
    output wire [1:0]                    layer_wPara_subLayerFlag,
    output wire [39:0]                   layer_wPara_memAddrWeights_V,
    output wire [39:0]                   layer_wPara_memAddrBias_V,
    output wire [39:0]                   layer_wPara_memAddrScale_V,
    output wire [39:0]                   layer_wPara_memAddrMean_V,
    output wire [39:0]                   layer_wPara_memAddrVariance_V,
    output wire [18:0]                   layer_wPara_compressionSize_V,
    output wire [15:0]                   layer_wParaNext_curLayerNum,
    output wire [0:0]                    layer_wParaNext_layerDivideType,
    output wire [10:0]                   layer_wParaNext_sublayerNum_V,
    output wire [10:0]                   layer_wParaNext_sublayerSeq_V,
    output wire [1:0]                    layer_wParaNext_subLayerFlag,
    output wire [39:0]                   layer_wParaNext_memAddrWeights_V,
    output wire [39:0]                   layer_wParaNext_memAddrBias_V,
    output wire [39:0]                   layer_wParaNext_memAddrScale_V,
    output wire [39:0]                   layer_wParaNext_memAddrMean_V,
    output wire [39:0]                   layer_wParaNext_memAddrVariance_V,
    output wire [18:0]                   layer_wParaNext_compressionSize_V,
    output wire [15:0]                   layer_iPara_batchSize,
    output wire [15:0]                   layer_iPara_width,
    output wire [15:0]                   layer_iPara_height,
    output wire [12:0]                   layer_iPara_ci_V,
    output wire [12:0]                   layer_iPara_ciAlign_V,
    output wire [12:0]                   layer_iPara_ciGroup_V,
    output wire [39:0]                   layer_iPara_memAddrImgIn_V,
    output wire [15:0]                   layer_iParaNext_batchSize,
    output wire [15:0]                   layer_iParaNext_width,
    output wire [15:0]                   layer_iParaNext_height,
    output wire [12:0]                   layer_iParaNext_ci_V,
    output wire [12:0]                   layer_iParaNext_ciAlign_V,
    output wire [12:0]                   layer_iParaNext_ciGroup_V,
    output wire [39:0]                   layer_iParaNext_memAddrImgIn_V,
    output wire [15:0]                   layer_oPara_batchSize,
    output wire [15:0]                   layer_oPara_width,
    output wire [15:0]                   layer_oPara_height,
    output wire [12:0]                   layer_oPara_co_V,
    output wire [12:0]                   layer_oPara_coAlign_V,
    output wire [12:0]                   layer_oPara_coGroup_V,
    output wire [39:0]                   layer_oPara_memAddrImgOut_V,
    output wire [15:0]                   layer_oParaNext_batchSize,
    output wire [15:0]                   layer_oParaNext_width,
    output wire [15:0]                   layer_oParaNext_height,
    output wire [12:0]                   layer_oParaNext_co_V,
    output wire [12:0]                   layer_oParaNext_coAlign_V,
    output wire [12:0]                   layer_oParaNext_coGroup_V,
    output wire [39:0]                   layer_oParaNext_memAddrImgOut_V,
    output wire [0:0]                    layer_cnvPara_relu,
    output wire [15:0]                   layer_cnvPara_dilation,
    output wire [4:0]                    layer_cnvPara_pad_h_V,
    output wire [4:0]                    layer_cnvPara_pad_w_V,
    output wire [4:0]                    layer_cnvPara_kernel_h_V,
    output wire [4:0]                    layer_cnvPara_kernel_w_V,
    output wire [4:0]                    layer_cnvPara_stride_h_V,
    output wire [4:0]                    layer_cnvPara_stride_w_V,
    output wire [0:0]                    layer_cnvParaNext_relu,
    output wire [15:0]                   layer_cnvParaNext_dilation,
    output wire [4:0]                    layer_cnvParaNext_pad_h_V,
    output wire [4:0]                    layer_cnvParaNext_pad_w_V,
    output wire [4:0]                    layer_cnvParaNext_kernel_h_V,
    output wire [4:0]                    layer_cnvParaNext_kernel_w_V,
    output wire [4:0]                    layer_cnvParaNext_stride_h_V,
    output wire [4:0]                    layer_cnvParaNext_stride_w_V,
    output wire [15:0]                   layer_qPara_qM0,
    output wire [31:0]                   layer_qPara_qN,
    output wire [31:0]                   layer_qPara_qZ1,
    output wire [15:0]                   layer_qPara_qZ2,
    output wire [31:0]                   layer_qPara_qZ3,
    output wire [4:0]                    layer_poolPara_pad_h_V,
    output wire [4:0]                    layer_poolPara_pad_w_V,
    output wire [4:0]                    layer_poolPara_kernel_h_V,
    output wire [4:0]                    layer_poolPara_kernel_w_V,
    output wire [4:0]                    layer_poolPara_stride_h_V,
    output wire [4:0]                    layer_poolPara_stride_w_V,
    output wire [0:0]                    layer_poolPara_pool_type
);
//------------------------Address Info-------------------
// 0x000 : Control signals
//         bit 0  - ap_start (Read/Write/COH)
//         bit 1  - ap_done (Read/COR)
//         bit 2  - ap_idle (Read)
//         bit 3  - ap_ready (Read)
//         bit 7  - auto_restart (Read/Write)
//         others - reserved
// 0x004 : Global Interrupt Enable Register
//         bit 0  - Global Interrupt Enable (Read/Write)
//         others - reserved
// 0x008 : IP Interrupt Enable Register (Read/Write)
//         bit 0  - Channel 0 (ap_done)
//         bit 1  - Channel 1 (ap_ready)
//         others - reserved
// 0x00c : IP Interrupt Status Register (Read/TOW)
//         bit 0  - Channel 0 (ap_done)
//         bit 1  - Channel 1 (ap_ready)
//         others - reserved
// 0x010 : Data signal of wddr_V
//         bit 31~0 - wddr_V[31:0] (Read/Write)
// 0x014 : reserved
// 0x018 : Data signal of fiddr_V
//         bit 31~0 - fiddr_V[31:0] (Read/Write)
// 0x01c : reserved
// 0x020 : Data signal of foddr_V
//         bit 31~0 - foddr_V[31:0] (Read/Write)
// 0x024 : reserved
// 0x040 : Data signal of layer_enPara_cnvEn
//         bit 0  - layer_enPara_cnvEn[0] (Read/Write)
//         others - reserved
// 0x044 : reserved
// 0x048 : Data signal of layer_enPara_poolEn
//         bit 0  - layer_enPara_poolEn[0] (Read/Write)
//         others - reserved
// 0x04c : reserved
// 0x050 : Data signal of layer_wPara_curLayerNum
//         bit 15~0 - layer_wPara_curLayerNum[15:0] (Read/Write)
//         others   - reserved
// 0x054 : reserved
// 0x058 : Data signal of layer_wPara_layerDivideType
//         bit 0  - layer_wPara_layerDivideType[0] (Read/Write)
//         others - reserved
// 0x05c : reserved
// 0x060 : Data signal of layer_wPara_sublayerNum_V
//         bit 10~0 - layer_wPara_sublayerNum_V[10:0] (Read/Write)
//         others   - reserved
// 0x064 : reserved
// 0x068 : Data signal of layer_wPara_sublayerSeq_V
//         bit 10~0 - layer_wPara_sublayerSeq_V[10:0] (Read/Write)
//         others   - reserved
// 0x06c : reserved
// 0x070 : Data signal of layer_wPara_subLayerFlag
//         bit 1~0 - layer_wPara_subLayerFlag[1:0] (Read/Write)
//         others  - reserved
// 0x074 : reserved
// 0x078 : Data signal of layer_wPara_memAddrWeights_V
//         bit 31~0 - layer_wPara_memAddrWeights_V[31:0] (Read/Write)
// 0x07c : Data signal of layer_wPara_memAddrWeights_V
//         bit 7~0 - layer_wPara_memAddrWeights_V[39:32] (Read/Write)
//         others  - reserved
// 0x080 : reserved
// 0x084 : Data signal of layer_wPara_memAddrBias_V
//         bit 31~0 - layer_wPara_memAddrBias_V[31:0] (Read/Write)
// 0x088 : Data signal of layer_wPara_memAddrBias_V
//         bit 7~0 - layer_wPara_memAddrBias_V[39:32] (Read/Write)
//         others  - reserved
// 0x08c : reserved
// 0x090 : Data signal of layer_wPara_memAddrScale_V
//         bit 31~0 - layer_wPara_memAddrScale_V[31:0] (Read/Write)
// 0x094 : Data signal of layer_wPara_memAddrScale_V
//         bit 7~0 - layer_wPara_memAddrScale_V[39:32] (Read/Write)
//         others  - reserved
// 0x098 : reserved
// 0x09c : Data signal of layer_wPara_memAddrMean_V
//         bit 31~0 - layer_wPara_memAddrMean_V[31:0] (Read/Write)
// 0x0a0 : Data signal of layer_wPara_memAddrMean_V
//         bit 7~0 - layer_wPara_memAddrMean_V[39:32] (Read/Write)
//         others  - reserved
// 0x0a4 : reserved
// 0x0a8 : Data signal of layer_wPara_memAddrVariance_V
//         bit 31~0 - layer_wPara_memAddrVariance_V[31:0] (Read/Write)
// 0x0ac : Data signal of layer_wPara_memAddrVariance_V
//         bit 7~0 - layer_wPara_memAddrVariance_V[39:32] (Read/Write)
//         others  - reserved
// 0x0b0 : reserved
// 0x0b4 : Data signal of layer_wPara_compressionSize_V
//         bit 18~0 - layer_wPara_compressionSize_V[18:0] (Read/Write)
//         others   - reserved
// 0x0b8 : reserved
// 0x0bc : Data signal of layer_wParaNext_curLayerNum
//         bit 15~0 - layer_wParaNext_curLayerNum[15:0] (Read/Write)
//         others   - reserved
// 0x0c0 : reserved
// 0x0c4 : Data signal of layer_wParaNext_layerDivideType
//         bit 0  - layer_wParaNext_layerDivideType[0] (Read/Write)
//         others - reserved
// 0x0c8 : reserved
// 0x0cc : Data signal of layer_wParaNext_sublayerNum_V
//         bit 10~0 - layer_wParaNext_sublayerNum_V[10:0] (Read/Write)
//         others   - reserved
// 0x0d0 : reserved
// 0x0d4 : Data signal of layer_wParaNext_sublayerSeq_V
//         bit 10~0 - layer_wParaNext_sublayerSeq_V[10:0] (Read/Write)
//         others   - reserved
// 0x0d8 : reserved
// 0x0dc : Data signal of layer_wParaNext_subLayerFlag
//         bit 1~0 - layer_wParaNext_subLayerFlag[1:0] (Read/Write)
//         others  - reserved
// 0x0e0 : reserved
// 0x0e4 : Data signal of layer_wParaNext_memAddrWeights_V
//         bit 31~0 - layer_wParaNext_memAddrWeights_V[31:0] (Read/Write)
// 0x0e8 : Data signal of layer_wParaNext_memAddrWeights_V
//         bit 7~0 - layer_wParaNext_memAddrWeights_V[39:32] (Read/Write)
//         others  - reserved
// 0x0ec : reserved
// 0x0f0 : Data signal of layer_wParaNext_memAddrBias_V
//         bit 31~0 - layer_wParaNext_memAddrBias_V[31:0] (Read/Write)
// 0x0f4 : Data signal of layer_wParaNext_memAddrBias_V
//         bit 7~0 - layer_wParaNext_memAddrBias_V[39:32] (Read/Write)
//         others  - reserved
// 0x0f8 : reserved
// 0x0fc : Data signal of layer_wParaNext_memAddrScale_V
//         bit 31~0 - layer_wParaNext_memAddrScale_V[31:0] (Read/Write)
// 0x100 : Data signal of layer_wParaNext_memAddrScale_V
//         bit 7~0 - layer_wParaNext_memAddrScale_V[39:32] (Read/Write)
//         others  - reserved
// 0x104 : reserved
// 0x108 : Data signal of layer_wParaNext_memAddrMean_V
//         bit 31~0 - layer_wParaNext_memAddrMean_V[31:0] (Read/Write)
// 0x10c : Data signal of layer_wParaNext_memAddrMean_V
//         bit 7~0 - layer_wParaNext_memAddrMean_V[39:32] (Read/Write)
//         others  - reserved
// 0x110 : reserved
// 0x114 : Data signal of layer_wParaNext_memAddrVariance_V
//         bit 31~0 - layer_wParaNext_memAddrVariance_V[31:0] (Read/Write)
// 0x118 : Data signal of layer_wParaNext_memAddrVariance_V
//         bit 7~0 - layer_wParaNext_memAddrVariance_V[39:32] (Read/Write)
//         others  - reserved
// 0x11c : reserved
// 0x120 : Data signal of layer_wParaNext_compressionSize_V
//         bit 18~0 - layer_wParaNext_compressionSize_V[18:0] (Read/Write)
//         others   - reserved
// 0x124 : reserved
// 0x128 : Data signal of layer_iPara_batchSize
//         bit 15~0 - layer_iPara_batchSize[15:0] (Read/Write)
//         others   - reserved
// 0x12c : reserved
// 0x130 : Data signal of layer_iPara_width
//         bit 15~0 - layer_iPara_width[15:0] (Read/Write)
//         others   - reserved
// 0x134 : reserved
// 0x138 : Data signal of layer_iPara_height
//         bit 15~0 - layer_iPara_height[15:0] (Read/Write)
//         others   - reserved
// 0x13c : reserved
// 0x140 : Data signal of layer_iPara_ci_V
//         bit 12~0 - layer_iPara_ci_V[12:0] (Read/Write)
//         others   - reserved
// 0x144 : reserved
// 0x148 : Data signal of layer_iPara_ciAlign_V
//         bit 12~0 - layer_iPara_ciAlign_V[12:0] (Read/Write)
//         others   - reserved
// 0x14c : reserved
// 0x150 : Data signal of layer_iPara_ciGroup_V
//         bit 12~0 - layer_iPara_ciGroup_V[12:0] (Read/Write)
//         others   - reserved
// 0x154 : reserved
// 0x158 : Data signal of layer_iPara_memAddrImgIn_V
//         bit 31~0 - layer_iPara_memAddrImgIn_V[31:0] (Read/Write)
// 0x15c : Data signal of layer_iPara_memAddrImgIn_V
//         bit 7~0 - layer_iPara_memAddrImgIn_V[39:32] (Read/Write)
//         others  - reserved
// 0x160 : reserved
// 0x164 : Data signal of layer_iParaNext_batchSize
//         bit 15~0 - layer_iParaNext_batchSize[15:0] (Read/Write)
//         others   - reserved
// 0x168 : reserved
// 0x16c : Data signal of layer_iParaNext_width
//         bit 15~0 - layer_iParaNext_width[15:0] (Read/Write)
//         others   - reserved
// 0x170 : reserved
// 0x174 : Data signal of layer_iParaNext_height
//         bit 15~0 - layer_iParaNext_height[15:0] (Read/Write)
//         others   - reserved
// 0x178 : reserved
// 0x17c : Data signal of layer_iParaNext_ci_V
//         bit 12~0 - layer_iParaNext_ci_V[12:0] (Read/Write)
//         others   - reserved
// 0x180 : reserved
// 0x184 : Data signal of layer_iParaNext_ciAlign_V
//         bit 12~0 - layer_iParaNext_ciAlign_V[12:0] (Read/Write)
//         others   - reserved
// 0x188 : reserved
// 0x18c : Data signal of layer_iParaNext_ciGroup_V
//         bit 12~0 - layer_iParaNext_ciGroup_V[12:0] (Read/Write)
//         others   - reserved
// 0x190 : reserved
// 0x194 : Data signal of layer_iParaNext_memAddrImgIn_V
//         bit 31~0 - layer_iParaNext_memAddrImgIn_V[31:0] (Read/Write)
// 0x198 : Data signal of layer_iParaNext_memAddrImgIn_V
//         bit 7~0 - layer_iParaNext_memAddrImgIn_V[39:32] (Read/Write)
//         others  - reserved
// 0x19c : reserved
// 0x1a0 : Data signal of layer_oPara_batchSize
//         bit 15~0 - layer_oPara_batchSize[15:0] (Read/Write)
//         others   - reserved
// 0x1a4 : reserved
// 0x1a8 : Data signal of layer_oPara_width
//         bit 15~0 - layer_oPara_width[15:0] (Read/Write)
//         others   - reserved
// 0x1ac : reserved
// 0x1b0 : Data signal of layer_oPara_height
//         bit 15~0 - layer_oPara_height[15:0] (Read/Write)
//         others   - reserved
// 0x1b4 : reserved
// 0x1b8 : Data signal of layer_oPara_co_V
//         bit 12~0 - layer_oPara_co_V[12:0] (Read/Write)
//         others   - reserved
// 0x1bc : reserved
// 0x1c0 : Data signal of layer_oPara_coAlign_V
//         bit 12~0 - layer_oPara_coAlign_V[12:0] (Read/Write)
//         others   - reserved
// 0x1c4 : reserved
// 0x1c8 : Data signal of layer_oPara_coGroup_V
//         bit 12~0 - layer_oPara_coGroup_V[12:0] (Read/Write)
//         others   - reserved
// 0x1cc : reserved
// 0x1d0 : Data signal of layer_oPara_memAddrImgOut_V
//         bit 31~0 - layer_oPara_memAddrImgOut_V[31:0] (Read/Write)
// 0x1d4 : Data signal of layer_oPara_memAddrImgOut_V
//         bit 7~0 - layer_oPara_memAddrImgOut_V[39:32] (Read/Write)
//         others  - reserved
// 0x1d8 : reserved
// 0x1dc : Data signal of layer_oParaNext_batchSize
//         bit 15~0 - layer_oParaNext_batchSize[15:0] (Read/Write)
//         others   - reserved
// 0x1e0 : reserved
// 0x1e4 : Data signal of layer_oParaNext_width
//         bit 15~0 - layer_oParaNext_width[15:0] (Read/Write)
//         others   - reserved
// 0x1e8 : reserved
// 0x1ec : Data signal of layer_oParaNext_height
//         bit 15~0 - layer_oParaNext_height[15:0] (Read/Write)
//         others   - reserved
// 0x1f0 : reserved
// 0x1f4 : Data signal of layer_oParaNext_co_V
//         bit 12~0 - layer_oParaNext_co_V[12:0] (Read/Write)
//         others   - reserved
// 0x1f8 : reserved
// 0x1fc : Data signal of layer_oParaNext_coAlign_V
//         bit 12~0 - layer_oParaNext_coAlign_V[12:0] (Read/Write)
//         others   - reserved
// 0x200 : reserved
// 0x204 : Data signal of layer_oParaNext_coGroup_V
//         bit 12~0 - layer_oParaNext_coGroup_V[12:0] (Read/Write)
//         others   - reserved
// 0x208 : reserved
// 0x20c : Data signal of layer_oParaNext_memAddrImgOut_V
//         bit 31~0 - layer_oParaNext_memAddrImgOut_V[31:0] (Read/Write)
// 0x210 : Data signal of layer_oParaNext_memAddrImgOut_V
//         bit 7~0 - layer_oParaNext_memAddrImgOut_V[39:32] (Read/Write)
//         others  - reserved
// 0x214 : reserved
// 0x218 : Data signal of layer_cnvPara_relu
//         bit 0  - layer_cnvPara_relu[0] (Read/Write)
//         others - reserved
// 0x21c : reserved
// 0x220 : Data signal of layer_cnvPara_dilation
//         bit 15~0 - layer_cnvPara_dilation[15:0] (Read/Write)
//         others   - reserved
// 0x224 : reserved
// 0x228 : Data signal of layer_cnvPara_pad_h_V
//         bit 4~0 - layer_cnvPara_pad_h_V[4:0] (Read/Write)
//         others  - reserved
// 0x22c : reserved
// 0x230 : Data signal of layer_cnvPara_pad_w_V
//         bit 4~0 - layer_cnvPara_pad_w_V[4:0] (Read/Write)
//         others  - reserved
// 0x234 : reserved
// 0x238 : Data signal of layer_cnvPara_kernel_h_V
//         bit 4~0 - layer_cnvPara_kernel_h_V[4:0] (Read/Write)
//         others  - reserved
// 0x23c : reserved
// 0x240 : Data signal of layer_cnvPara_kernel_w_V
//         bit 4~0 - layer_cnvPara_kernel_w_V[4:0] (Read/Write)
//         others  - reserved
// 0x244 : reserved
// 0x248 : Data signal of layer_cnvPara_stride_h_V
//         bit 4~0 - layer_cnvPara_stride_h_V[4:0] (Read/Write)
//         others  - reserved
// 0x24c : reserved
// 0x250 : Data signal of layer_cnvPara_stride_w_V
//         bit 4~0 - layer_cnvPara_stride_w_V[4:0] (Read/Write)
//         others  - reserved
// 0x254 : reserved
// 0x258 : Data signal of layer_cnvParaNext_relu
//         bit 0  - layer_cnvParaNext_relu[0] (Read/Write)
//         others - reserved
// 0x25c : reserved
// 0x260 : Data signal of layer_cnvParaNext_dilation
//         bit 15~0 - layer_cnvParaNext_dilation[15:0] (Read/Write)
//         others   - reserved
// 0x264 : reserved
// 0x268 : Data signal of layer_cnvParaNext_pad_h_V
//         bit 4~0 - layer_cnvParaNext_pad_h_V[4:0] (Read/Write)
//         others  - reserved
// 0x26c : reserved
// 0x270 : Data signal of layer_cnvParaNext_pad_w_V
//         bit 4~0 - layer_cnvParaNext_pad_w_V[4:0] (Read/Write)
//         others  - reserved
// 0x274 : reserved
// 0x278 : Data signal of layer_cnvParaNext_kernel_h_V
//         bit 4~0 - layer_cnvParaNext_kernel_h_V[4:0] (Read/Write)
//         others  - reserved
// 0x27c : reserved
// 0x280 : Data signal of layer_cnvParaNext_kernel_w_V
//         bit 4~0 - layer_cnvParaNext_kernel_w_V[4:0] (Read/Write)
//         others  - reserved
// 0x284 : reserved
// 0x288 : Data signal of layer_cnvParaNext_stride_h_V
//         bit 4~0 - layer_cnvParaNext_stride_h_V[4:0] (Read/Write)
//         others  - reserved
// 0x28c : reserved
// 0x290 : Data signal of layer_cnvParaNext_stride_w_V
//         bit 4~0 - layer_cnvParaNext_stride_w_V[4:0] (Read/Write)
//         others  - reserved
// 0x294 : reserved
// 0x298 : Data signal of layer_qPara_qM0
//         bit 15~0 - layer_qPara_qM0[15:0] (Read/Write)
//         others   - reserved
// 0x29c : reserved
// 0x2a0 : Data signal of layer_qPara_qN
//         bit 31~0 - layer_qPara_qN[31:0] (Read/Write)
// 0x2a4 : reserved
// 0x2a8 : Data signal of layer_qPara_qZ1
//         bit 31~0 - layer_qPara_qZ1[31:0] (Read/Write)
// 0x2ac : reserved
// 0x2b0 : Data signal of layer_qPara_qZ2
//         bit 15~0 - layer_qPara_qZ2[15:0] (Read/Write)
//         others   - reserved
// 0x2b4 : reserved
// 0x2b8 : Data signal of layer_qPara_qZ3
//         bit 31~0 - layer_qPara_qZ3[31:0] (Read/Write)
// 0x2bc : reserved
// 0x2c0 : Data signal of layer_poolPara_pad_h_V
//         bit 4~0 - layer_poolPara_pad_h_V[4:0] (Read/Write)
//         others  - reserved
// 0x2c4 : reserved
// 0x2c8 : Data signal of layer_poolPara_pad_w_V
//         bit 4~0 - layer_poolPara_pad_w_V[4:0] (Read/Write)
//         others  - reserved
// 0x2cc : reserved
// 0x2d0 : Data signal of layer_poolPara_kernel_h_V
//         bit 4~0 - layer_poolPara_kernel_h_V[4:0] (Read/Write)
//         others  - reserved
// 0x2d4 : reserved
// 0x2d8 : Data signal of layer_poolPara_kernel_w_V
//         bit 4~0 - layer_poolPara_kernel_w_V[4:0] (Read/Write)
//         others  - reserved
// 0x2dc : reserved
// 0x2e0 : Data signal of layer_poolPara_stride_h_V
//         bit 4~0 - layer_poolPara_stride_h_V[4:0] (Read/Write)
//         others  - reserved
// 0x2e4 : reserved
// 0x2e8 : Data signal of layer_poolPara_stride_w_V
//         bit 4~0 - layer_poolPara_stride_w_V[4:0] (Read/Write)
//         others  - reserved
// 0x2ec : reserved
// 0x2f0 : Data signal of layer_poolPara_pool_type
//         bit 0  - layer_poolPara_pool_type[0] (Read/Write)
//         others - reserved
// 0x2f4 : reserved
// 0x030 ~
// 0x03f : Memory 'layer_name' (11 * 8b)
//         Word n : bit [ 7: 0] - layer_name[4n]
//                  bit [15: 8] - layer_name[4n+1]
//                  bit [23:16] - layer_name[4n+2]
//                  bit [31:24] - layer_name[4n+3]
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

//------------------------Parameter----------------------
localparam
    ADDR_AP_CTRL                                  = 10'h000,
    ADDR_GIE                                      = 10'h004,
    ADDR_IER                                      = 10'h008,
    ADDR_ISR                                      = 10'h00c,
    ADDR_WDDR_V_DATA_0                            = 10'h010,
    ADDR_WDDR_V_CTRL                              = 10'h014,
    ADDR_FIDDR_V_DATA_0                           = 10'h018,
    ADDR_FIDDR_V_CTRL                             = 10'h01c,
    ADDR_FODDR_V_DATA_0                           = 10'h020,
    ADDR_FODDR_V_CTRL                             = 10'h024,
    ADDR_LAYER_ENPARA_CNVEN_DATA_0                = 10'h040,
    ADDR_LAYER_ENPARA_CNVEN_CTRL                  = 10'h044,
    ADDR_LAYER_ENPARA_POOLEN_DATA_0               = 10'h048,
    ADDR_LAYER_ENPARA_POOLEN_CTRL                 = 10'h04c,
    ADDR_LAYER_WPARA_CURLAYERNUM_DATA_0           = 10'h050,
    ADDR_LAYER_WPARA_CURLAYERNUM_CTRL             = 10'h054,
    ADDR_LAYER_WPARA_LAYERDIVIDETYPE_DATA_0       = 10'h058,
    ADDR_LAYER_WPARA_LAYERDIVIDETYPE_CTRL         = 10'h05c,
    ADDR_LAYER_WPARA_SUBLAYERNUM_V_DATA_0         = 10'h060,
    ADDR_LAYER_WPARA_SUBLAYERNUM_V_CTRL           = 10'h064,
    ADDR_LAYER_WPARA_SUBLAYERSEQ_V_DATA_0         = 10'h068,
    ADDR_LAYER_WPARA_SUBLAYERSEQ_V_CTRL           = 10'h06c,
    ADDR_LAYER_WPARA_SUBLAYERFLAG_DATA_0          = 10'h070,
    ADDR_LAYER_WPARA_SUBLAYERFLAG_CTRL            = 10'h074,
    ADDR_LAYER_WPARA_MEMADDRWEIGHTS_V_DATA_0      = 10'h078,
    ADDR_LAYER_WPARA_MEMADDRWEIGHTS_V_DATA_1      = 10'h07c,
    ADDR_LAYER_WPARA_MEMADDRWEIGHTS_V_CTRL        = 10'h080,
    ADDR_LAYER_WPARA_MEMADDRBIAS_V_DATA_0         = 10'h084,
    ADDR_LAYER_WPARA_MEMADDRBIAS_V_DATA_1         = 10'h088,
    ADDR_LAYER_WPARA_MEMADDRBIAS_V_CTRL           = 10'h08c,
    ADDR_LAYER_WPARA_MEMADDRSCALE_V_DATA_0        = 10'h090,
    ADDR_LAYER_WPARA_MEMADDRSCALE_V_DATA_1        = 10'h094,
    ADDR_LAYER_WPARA_MEMADDRSCALE_V_CTRL          = 10'h098,
    ADDR_LAYER_WPARA_MEMADDRMEAN_V_DATA_0         = 10'h09c,
    ADDR_LAYER_WPARA_MEMADDRMEAN_V_DATA_1         = 10'h0a0,
    ADDR_LAYER_WPARA_MEMADDRMEAN_V_CTRL           = 10'h0a4,
    ADDR_LAYER_WPARA_MEMADDRVARIANCE_V_DATA_0     = 10'h0a8,
    ADDR_LAYER_WPARA_MEMADDRVARIANCE_V_DATA_1     = 10'h0ac,
    ADDR_LAYER_WPARA_MEMADDRVARIANCE_V_CTRL       = 10'h0b0,
    ADDR_LAYER_WPARA_COMPRESSIONSIZE_V_DATA_0     = 10'h0b4,
    ADDR_LAYER_WPARA_COMPRESSIONSIZE_V_CTRL       = 10'h0b8,
    ADDR_LAYER_WPARANEXT_CURLAYERNUM_DATA_0       = 10'h0bc,
    ADDR_LAYER_WPARANEXT_CURLAYERNUM_CTRL         = 10'h0c0,
    ADDR_LAYER_WPARANEXT_LAYERDIVIDETYPE_DATA_0   = 10'h0c4,
    ADDR_LAYER_WPARANEXT_LAYERDIVIDETYPE_CTRL     = 10'h0c8,
    ADDR_LAYER_WPARANEXT_SUBLAYERNUM_V_DATA_0     = 10'h0cc,
    ADDR_LAYER_WPARANEXT_SUBLAYERNUM_V_CTRL       = 10'h0d0,
    ADDR_LAYER_WPARANEXT_SUBLAYERSEQ_V_DATA_0     = 10'h0d4,
    ADDR_LAYER_WPARANEXT_SUBLAYERSEQ_V_CTRL       = 10'h0d8,
    ADDR_LAYER_WPARANEXT_SUBLAYERFLAG_DATA_0      = 10'h0dc,
    ADDR_LAYER_WPARANEXT_SUBLAYERFLAG_CTRL        = 10'h0e0,
    ADDR_LAYER_WPARANEXT_MEMADDRWEIGHTS_V_DATA_0  = 10'h0e4,
    ADDR_LAYER_WPARANEXT_MEMADDRWEIGHTS_V_DATA_1  = 10'h0e8,
    ADDR_LAYER_WPARANEXT_MEMADDRWEIGHTS_V_CTRL    = 10'h0ec,
    ADDR_LAYER_WPARANEXT_MEMADDRBIAS_V_DATA_0     = 10'h0f0,
    ADDR_LAYER_WPARANEXT_MEMADDRBIAS_V_DATA_1     = 10'h0f4,
    ADDR_LAYER_WPARANEXT_MEMADDRBIAS_V_CTRL       = 10'h0f8,
    ADDR_LAYER_WPARANEXT_MEMADDRSCALE_V_DATA_0    = 10'h0fc,
    ADDR_LAYER_WPARANEXT_MEMADDRSCALE_V_DATA_1    = 10'h100,
    ADDR_LAYER_WPARANEXT_MEMADDRSCALE_V_CTRL      = 10'h104,
    ADDR_LAYER_WPARANEXT_MEMADDRMEAN_V_DATA_0     = 10'h108,
    ADDR_LAYER_WPARANEXT_MEMADDRMEAN_V_DATA_1     = 10'h10c,
    ADDR_LAYER_WPARANEXT_MEMADDRMEAN_V_CTRL       = 10'h110,
    ADDR_LAYER_WPARANEXT_MEMADDRVARIANCE_V_DATA_0 = 10'h114,
    ADDR_LAYER_WPARANEXT_MEMADDRVARIANCE_V_DATA_1 = 10'h118,
    ADDR_LAYER_WPARANEXT_MEMADDRVARIANCE_V_CTRL   = 10'h11c,
    ADDR_LAYER_WPARANEXT_COMPRESSIONSIZE_V_DATA_0 = 10'h120,
    ADDR_LAYER_WPARANEXT_COMPRESSIONSIZE_V_CTRL   = 10'h124,
    ADDR_LAYER_IPARA_BATCHSIZE_DATA_0             = 10'h128,
    ADDR_LAYER_IPARA_BATCHSIZE_CTRL               = 10'h12c,
    ADDR_LAYER_IPARA_WIDTH_DATA_0                 = 10'h130,
    ADDR_LAYER_IPARA_WIDTH_CTRL                   = 10'h134,
    ADDR_LAYER_IPARA_HEIGHT_DATA_0                = 10'h138,
    ADDR_LAYER_IPARA_HEIGHT_CTRL                  = 10'h13c,
    ADDR_LAYER_IPARA_CI_V_DATA_0                  = 10'h140,
    ADDR_LAYER_IPARA_CI_V_CTRL                    = 10'h144,
    ADDR_LAYER_IPARA_CIALIGN_V_DATA_0             = 10'h148,
    ADDR_LAYER_IPARA_CIALIGN_V_CTRL               = 10'h14c,
    ADDR_LAYER_IPARA_CIGROUP_V_DATA_0             = 10'h150,
    ADDR_LAYER_IPARA_CIGROUP_V_CTRL               = 10'h154,
    ADDR_LAYER_IPARA_MEMADDRIMGIN_V_DATA_0        = 10'h158,
    ADDR_LAYER_IPARA_MEMADDRIMGIN_V_DATA_1        = 10'h15c,
    ADDR_LAYER_IPARA_MEMADDRIMGIN_V_CTRL          = 10'h160,
    ADDR_LAYER_IPARANEXT_BATCHSIZE_DATA_0         = 10'h164,
    ADDR_LAYER_IPARANEXT_BATCHSIZE_CTRL           = 10'h168,
    ADDR_LAYER_IPARANEXT_WIDTH_DATA_0             = 10'h16c,
    ADDR_LAYER_IPARANEXT_WIDTH_CTRL               = 10'h170,
    ADDR_LAYER_IPARANEXT_HEIGHT_DATA_0            = 10'h174,
    ADDR_LAYER_IPARANEXT_HEIGHT_CTRL              = 10'h178,
    ADDR_LAYER_IPARANEXT_CI_V_DATA_0              = 10'h17c,
    ADDR_LAYER_IPARANEXT_CI_V_CTRL                = 10'h180,
    ADDR_LAYER_IPARANEXT_CIALIGN_V_DATA_0         = 10'h184,
    ADDR_LAYER_IPARANEXT_CIALIGN_V_CTRL           = 10'h188,
    ADDR_LAYER_IPARANEXT_CIGROUP_V_DATA_0         = 10'h18c,
    ADDR_LAYER_IPARANEXT_CIGROUP_V_CTRL           = 10'h190,
    ADDR_LAYER_IPARANEXT_MEMADDRIMGIN_V_DATA_0    = 10'h194,
    ADDR_LAYER_IPARANEXT_MEMADDRIMGIN_V_DATA_1    = 10'h198,
    ADDR_LAYER_IPARANEXT_MEMADDRIMGIN_V_CTRL      = 10'h19c,
    ADDR_LAYER_OPARA_BATCHSIZE_DATA_0             = 10'h1a0,
    ADDR_LAYER_OPARA_BATCHSIZE_CTRL               = 10'h1a4,
    ADDR_LAYER_OPARA_WIDTH_DATA_0                 = 10'h1a8,
    ADDR_LAYER_OPARA_WIDTH_CTRL                   = 10'h1ac,
    ADDR_LAYER_OPARA_HEIGHT_DATA_0                = 10'h1b0,
    ADDR_LAYER_OPARA_HEIGHT_CTRL                  = 10'h1b4,
    ADDR_LAYER_OPARA_CO_V_DATA_0                  = 10'h1b8,
    ADDR_LAYER_OPARA_CO_V_CTRL                    = 10'h1bc,
    ADDR_LAYER_OPARA_COALIGN_V_DATA_0             = 10'h1c0,
    ADDR_LAYER_OPARA_COALIGN_V_CTRL               = 10'h1c4,
    ADDR_LAYER_OPARA_COGROUP_V_DATA_0             = 10'h1c8,
    ADDR_LAYER_OPARA_COGROUP_V_CTRL               = 10'h1cc,
    ADDR_LAYER_OPARA_MEMADDRIMGOUT_V_DATA_0       = 10'h1d0,
    ADDR_LAYER_OPARA_MEMADDRIMGOUT_V_DATA_1       = 10'h1d4,
    ADDR_LAYER_OPARA_MEMADDRIMGOUT_V_CTRL         = 10'h1d8,
    ADDR_LAYER_OPARANEXT_BATCHSIZE_DATA_0         = 10'h1dc,
    ADDR_LAYER_OPARANEXT_BATCHSIZE_CTRL           = 10'h1e0,
    ADDR_LAYER_OPARANEXT_WIDTH_DATA_0             = 10'h1e4,
    ADDR_LAYER_OPARANEXT_WIDTH_CTRL               = 10'h1e8,
    ADDR_LAYER_OPARANEXT_HEIGHT_DATA_0            = 10'h1ec,
    ADDR_LAYER_OPARANEXT_HEIGHT_CTRL              = 10'h1f0,
    ADDR_LAYER_OPARANEXT_CO_V_DATA_0              = 10'h1f4,
    ADDR_LAYER_OPARANEXT_CO_V_CTRL                = 10'h1f8,
    ADDR_LAYER_OPARANEXT_COALIGN_V_DATA_0         = 10'h1fc,
    ADDR_LAYER_OPARANEXT_COALIGN_V_CTRL           = 10'h200,
    ADDR_LAYER_OPARANEXT_COGROUP_V_DATA_0         = 10'h204,
    ADDR_LAYER_OPARANEXT_COGROUP_V_CTRL           = 10'h208,
    ADDR_LAYER_OPARANEXT_MEMADDRIMGOUT_V_DATA_0   = 10'h20c,
    ADDR_LAYER_OPARANEXT_MEMADDRIMGOUT_V_DATA_1   = 10'h210,
    ADDR_LAYER_OPARANEXT_MEMADDRIMGOUT_V_CTRL     = 10'h214,
    ADDR_LAYER_CNVPARA_RELU_DATA_0                = 10'h218,
    ADDR_LAYER_CNVPARA_RELU_CTRL                  = 10'h21c,
    ADDR_LAYER_CNVPARA_DILATION_DATA_0            = 10'h220,
    ADDR_LAYER_CNVPARA_DILATION_CTRL              = 10'h224,
    ADDR_LAYER_CNVPARA_PAD_H_V_DATA_0             = 10'h228,
    ADDR_LAYER_CNVPARA_PAD_H_V_CTRL               = 10'h22c,
    ADDR_LAYER_CNVPARA_PAD_W_V_DATA_0             = 10'h230,
    ADDR_LAYER_CNVPARA_PAD_W_V_CTRL               = 10'h234,
    ADDR_LAYER_CNVPARA_KERNEL_H_V_DATA_0          = 10'h238,
    ADDR_LAYER_CNVPARA_KERNEL_H_V_CTRL            = 10'h23c,
    ADDR_LAYER_CNVPARA_KERNEL_W_V_DATA_0          = 10'h240,
    ADDR_LAYER_CNVPARA_KERNEL_W_V_CTRL            = 10'h244,
    ADDR_LAYER_CNVPARA_STRIDE_H_V_DATA_0          = 10'h248,
    ADDR_LAYER_CNVPARA_STRIDE_H_V_CTRL            = 10'h24c,
    ADDR_LAYER_CNVPARA_STRIDE_W_V_DATA_0          = 10'h250,
    ADDR_LAYER_CNVPARA_STRIDE_W_V_CTRL            = 10'h254,
    ADDR_LAYER_CNVPARANEXT_RELU_DATA_0            = 10'h258,
    ADDR_LAYER_CNVPARANEXT_RELU_CTRL              = 10'h25c,
    ADDR_LAYER_CNVPARANEXT_DILATION_DATA_0        = 10'h260,
    ADDR_LAYER_CNVPARANEXT_DILATION_CTRL          = 10'h264,
    ADDR_LAYER_CNVPARANEXT_PAD_H_V_DATA_0         = 10'h268,
    ADDR_LAYER_CNVPARANEXT_PAD_H_V_CTRL           = 10'h26c,
    ADDR_LAYER_CNVPARANEXT_PAD_W_V_DATA_0         = 10'h270,
    ADDR_LAYER_CNVPARANEXT_PAD_W_V_CTRL           = 10'h274,
    ADDR_LAYER_CNVPARANEXT_KERNEL_H_V_DATA_0      = 10'h278,
    ADDR_LAYER_CNVPARANEXT_KERNEL_H_V_CTRL        = 10'h27c,
    ADDR_LAYER_CNVPARANEXT_KERNEL_W_V_DATA_0      = 10'h280,
    ADDR_LAYER_CNVPARANEXT_KERNEL_W_V_CTRL        = 10'h284,
    ADDR_LAYER_CNVPARANEXT_STRIDE_H_V_DATA_0      = 10'h288,
    ADDR_LAYER_CNVPARANEXT_STRIDE_H_V_CTRL        = 10'h28c,
    ADDR_LAYER_CNVPARANEXT_STRIDE_W_V_DATA_0      = 10'h290,
    ADDR_LAYER_CNVPARANEXT_STRIDE_W_V_CTRL        = 10'h294,
    ADDR_LAYER_QPARA_QM0_DATA_0                   = 10'h298,
    ADDR_LAYER_QPARA_QM0_CTRL                     = 10'h29c,
    ADDR_LAYER_QPARA_QN_DATA_0                    = 10'h2a0,
    ADDR_LAYER_QPARA_QN_CTRL                      = 10'h2a4,
    ADDR_LAYER_QPARA_QZ1_DATA_0                   = 10'h2a8,
    ADDR_LAYER_QPARA_QZ1_CTRL                     = 10'h2ac,
    ADDR_LAYER_QPARA_QZ2_DATA_0                   = 10'h2b0,
    ADDR_LAYER_QPARA_QZ2_CTRL                     = 10'h2b4,
    ADDR_LAYER_QPARA_QZ3_DATA_0                   = 10'h2b8,
    ADDR_LAYER_QPARA_QZ3_CTRL                     = 10'h2bc,
    ADDR_LAYER_POOLPARA_PAD_H_V_DATA_0            = 10'h2c0,
    ADDR_LAYER_POOLPARA_PAD_H_V_CTRL              = 10'h2c4,
    ADDR_LAYER_POOLPARA_PAD_W_V_DATA_0            = 10'h2c8,
    ADDR_LAYER_POOLPARA_PAD_W_V_CTRL              = 10'h2cc,
    ADDR_LAYER_POOLPARA_KERNEL_H_V_DATA_0         = 10'h2d0,
    ADDR_LAYER_POOLPARA_KERNEL_H_V_CTRL           = 10'h2d4,
    ADDR_LAYER_POOLPARA_KERNEL_W_V_DATA_0         = 10'h2d8,
    ADDR_LAYER_POOLPARA_KERNEL_W_V_CTRL           = 10'h2dc,
    ADDR_LAYER_POOLPARA_STRIDE_H_V_DATA_0         = 10'h2e0,
    ADDR_LAYER_POOLPARA_STRIDE_H_V_CTRL           = 10'h2e4,
    ADDR_LAYER_POOLPARA_STRIDE_W_V_DATA_0         = 10'h2e8,
    ADDR_LAYER_POOLPARA_STRIDE_W_V_CTRL           = 10'h2ec,
    ADDR_LAYER_POOLPARA_POOL_TYPE_DATA_0          = 10'h2f0,
    ADDR_LAYER_POOLPARA_POOL_TYPE_CTRL            = 10'h2f4,
    ADDR_LAYER_NAME_BASE                          = 10'h030,
    ADDR_LAYER_NAME_HIGH                          = 10'h03f,
    WRIDLE                                        = 2'd0,
    WRDATA                                        = 2'd1,
    WRRESP                                        = 2'd2,
    WRRESET                                       = 2'd3,
    RDIDLE                                        = 2'd0,
    RDDATA                                        = 2'd1,
    RDRESET                                       = 2'd2,
    ADDR_BITS         = 10;

//------------------------Local signal-------------------
    reg  [1:0]                    wstate = WRRESET;
    reg  [1:0]                    wnext;
    reg  [ADDR_BITS-1:0]          waddr;
    wire [31:0]                   wmask;
    wire                          aw_hs;
    wire                          w_hs;
    reg  [1:0]                    rstate = RDRESET;
    reg  [1:0]                    rnext;
    reg  [31:0]                   rdata;
    wire                          ar_hs;
    wire [ADDR_BITS-1:0]          raddr;
    // internal registers
    reg                           int_ap_idle;
    reg                           int_ap_ready;
    reg                           int_ap_done = 1'b0;
    reg                           int_ap_start = 1'b0;
    reg                           int_auto_restart = 1'b0;
    reg                           int_gie = 1'b0;
    reg  [1:0]                    int_ier = 2'b0;
    reg  [1:0]                    int_isr = 2'b0;
    reg  [31:0]                   int_wddr_V = 'b0;
    reg  [31:0]                   int_fiddr_V = 'b0;
    reg  [31:0]                   int_foddr_V = 'b0;
    reg  [0:0]                    int_layer_enPara_cnvEn = 'b0;
    reg  [0:0]                    int_layer_enPara_poolEn = 'b0;
    reg  [15:0]                   int_layer_wPara_curLayerNum = 'b0;
    reg  [0:0]                    int_layer_wPara_layerDivideType = 'b0;
    reg  [10:0]                   int_layer_wPara_sublayerNum_V = 'b0;
    reg  [10:0]                   int_layer_wPara_sublayerSeq_V = 'b0;
    reg  [1:0]                    int_layer_wPara_subLayerFlag = 'b0;
    reg  [39:0]                   int_layer_wPara_memAddrWeights_V = 'b0;
    reg  [39:0]                   int_layer_wPara_memAddrBias_V = 'b0;
    reg  [39:0]                   int_layer_wPara_memAddrScale_V = 'b0;
    reg  [39:0]                   int_layer_wPara_memAddrMean_V = 'b0;
    reg  [39:0]                   int_layer_wPara_memAddrVariance_V = 'b0;
    reg  [18:0]                   int_layer_wPara_compressionSize_V = 'b0;
    reg  [15:0]                   int_layer_wParaNext_curLayerNum = 'b0;
    reg  [0:0]                    int_layer_wParaNext_layerDivideType = 'b0;
    reg  [10:0]                   int_layer_wParaNext_sublayerNum_V = 'b0;
    reg  [10:0]                   int_layer_wParaNext_sublayerSeq_V = 'b0;
    reg  [1:0]                    int_layer_wParaNext_subLayerFlag = 'b0;
    reg  [39:0]                   int_layer_wParaNext_memAddrWeights_V = 'b0;
    reg  [39:0]                   int_layer_wParaNext_memAddrBias_V = 'b0;
    reg  [39:0]                   int_layer_wParaNext_memAddrScale_V = 'b0;
    reg  [39:0]                   int_layer_wParaNext_memAddrMean_V = 'b0;
    reg  [39:0]                   int_layer_wParaNext_memAddrVariance_V = 'b0;
    reg  [18:0]                   int_layer_wParaNext_compressionSize_V = 'b0;
    reg  [15:0]                   int_layer_iPara_batchSize = 'b0;
    reg  [15:0]                   int_layer_iPara_width = 'b0;
    reg  [15:0]                   int_layer_iPara_height = 'b0;
    reg  [12:0]                   int_layer_iPara_ci_V = 'b0;
    reg  [12:0]                   int_layer_iPara_ciAlign_V = 'b0;
    reg  [12:0]                   int_layer_iPara_ciGroup_V = 'b0;
    reg  [39:0]                   int_layer_iPara_memAddrImgIn_V = 'b0;
    reg  [15:0]                   int_layer_iParaNext_batchSize = 'b0;
    reg  [15:0]                   int_layer_iParaNext_width = 'b0;
    reg  [15:0]                   int_layer_iParaNext_height = 'b0;
    reg  [12:0]                   int_layer_iParaNext_ci_V = 'b0;
    reg  [12:0]                   int_layer_iParaNext_ciAlign_V = 'b0;
    reg  [12:0]                   int_layer_iParaNext_ciGroup_V = 'b0;
    reg  [39:0]                   int_layer_iParaNext_memAddrImgIn_V = 'b0;
    reg  [15:0]                   int_layer_oPara_batchSize = 'b0;
    reg  [15:0]                   int_layer_oPara_width = 'b0;
    reg  [15:0]                   int_layer_oPara_height = 'b0;
    reg  [12:0]                   int_layer_oPara_co_V = 'b0;
    reg  [12:0]                   int_layer_oPara_coAlign_V = 'b0;
    reg  [12:0]                   int_layer_oPara_coGroup_V = 'b0;
    reg  [39:0]                   int_layer_oPara_memAddrImgOut_V = 'b0;
    reg  [15:0]                   int_layer_oParaNext_batchSize = 'b0;
    reg  [15:0]                   int_layer_oParaNext_width = 'b0;
    reg  [15:0]                   int_layer_oParaNext_height = 'b0;
    reg  [12:0]                   int_layer_oParaNext_co_V = 'b0;
    reg  [12:0]                   int_layer_oParaNext_coAlign_V = 'b0;
    reg  [12:0]                   int_layer_oParaNext_coGroup_V = 'b0;
    reg  [39:0]                   int_layer_oParaNext_memAddrImgOut_V = 'b0;
    reg  [0:0]                    int_layer_cnvPara_relu = 'b0;
    reg  [15:0]                   int_layer_cnvPara_dilation = 'b0;
    reg  [4:0]                    int_layer_cnvPara_pad_h_V = 'b0;
    reg  [4:0]                    int_layer_cnvPara_pad_w_V = 'b0;
    reg  [4:0]                    int_layer_cnvPara_kernel_h_V = 'b0;
    reg  [4:0]                    int_layer_cnvPara_kernel_w_V = 'b0;
    reg  [4:0]                    int_layer_cnvPara_stride_h_V = 'b0;
    reg  [4:0]                    int_layer_cnvPara_stride_w_V = 'b0;
    reg  [0:0]                    int_layer_cnvParaNext_relu = 'b0;
    reg  [15:0]                   int_layer_cnvParaNext_dilation = 'b0;
    reg  [4:0]                    int_layer_cnvParaNext_pad_h_V = 'b0;
    reg  [4:0]                    int_layer_cnvParaNext_pad_w_V = 'b0;
    reg  [4:0]                    int_layer_cnvParaNext_kernel_h_V = 'b0;
    reg  [4:0]                    int_layer_cnvParaNext_kernel_w_V = 'b0;
    reg  [4:0]                    int_layer_cnvParaNext_stride_h_V = 'b0;
    reg  [4:0]                    int_layer_cnvParaNext_stride_w_V = 'b0;
    reg  [15:0]                   int_layer_qPara_qM0 = 'b0;
    reg  [31:0]                   int_layer_qPara_qN = 'b0;
    reg  [31:0]                   int_layer_qPara_qZ1 = 'b0;
    reg  [15:0]                   int_layer_qPara_qZ2 = 'b0;
    reg  [31:0]                   int_layer_qPara_qZ3 = 'b0;
    reg  [4:0]                    int_layer_poolPara_pad_h_V = 'b0;
    reg  [4:0]                    int_layer_poolPara_pad_w_V = 'b0;
    reg  [4:0]                    int_layer_poolPara_kernel_h_V = 'b0;
    reg  [4:0]                    int_layer_poolPara_kernel_w_V = 'b0;
    reg  [4:0]                    int_layer_poolPara_stride_h_V = 'b0;
    reg  [4:0]                    int_layer_poolPara_stride_w_V = 'b0;
    reg  [0:0]                    int_layer_poolPara_pool_type = 'b0;
    // memory signals
    wire [1:0]                    int_layer_name_address0;
    wire                          int_layer_name_ce0;
    wire                          int_layer_name_we0;
    wire [3:0]                    int_layer_name_be0;
    wire [31:0]                   int_layer_name_d0;
    wire [31:0]                   int_layer_name_q0;
    wire [1:0]                    int_layer_name_address1;
    wire                          int_layer_name_ce1;
    wire                          int_layer_name_we1;
    wire [3:0]                    int_layer_name_be1;
    wire [31:0]                   int_layer_name_d1;
    wire [31:0]                   int_layer_name_q1;
    reg                           int_layer_name_read;
    reg                           int_layer_name_write;
    reg  [1:0]                    int_layer_name_shift;

//------------------------Instantiation------------------
// int_layer_name
cnna_axilite_s_axi_ram #(
    .BYTES    ( 4 ),
    .DEPTH    ( 3 )
) int_layer_name (
    .clk0     ( ACLK ),
    .address0 ( int_layer_name_address0 ),
    .ce0      ( int_layer_name_ce0 ),
    .we0      ( int_layer_name_we0 ),
    .be0      ( int_layer_name_be0 ),
    .d0       ( int_layer_name_d0 ),
    .q0       ( int_layer_name_q0 ),
    .clk1     ( ACLK ),
    .address1 ( int_layer_name_address1 ),
    .ce1      ( int_layer_name_ce1 ),
    .we1      ( int_layer_name_we1 ),
    .be1      ( int_layer_name_be1 ),
    .d1       ( int_layer_name_d1 ),
    .q1       ( int_layer_name_q1 )
);

//------------------------AXI write fsm------------------
assign AWREADY = (wstate == WRIDLE);
assign WREADY  = (wstate == WRDATA);
assign BRESP   = 2'b00;  // OKAY
assign BVALID  = (wstate == WRRESP);
assign wmask   = { {8{WSTRB[3]}}, {8{WSTRB[2]}}, {8{WSTRB[1]}}, {8{WSTRB[0]}} };
assign aw_hs   = AWVALID & AWREADY;
assign w_hs    = WVALID & WREADY;

// wstate
always @(posedge ACLK) begin
    if (ARESET)
        wstate <= WRRESET;
    else if (ACLK_EN)
        wstate <= wnext;
end

// wnext
always @(*) begin
    case (wstate)
        WRIDLE:
            if (AWVALID)
                wnext = WRDATA;
            else
                wnext = WRIDLE;
        WRDATA:
            if (WVALID)
                wnext = WRRESP;
            else
                wnext = WRDATA;
        WRRESP:
            if (BREADY)
                wnext = WRIDLE;
            else
                wnext = WRRESP;
        default:
            wnext = WRIDLE;
    endcase
end

// waddr
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (aw_hs)
            waddr <= AWADDR[ADDR_BITS-1:0];
    end
end

//------------------------AXI read fsm-------------------
assign ARREADY = (rstate == RDIDLE);
assign RDATA   = rdata;
assign RRESP   = 2'b00;  // OKAY
assign RVALID  = (rstate == RDDATA) & !int_layer_name_read;
assign ar_hs   = ARVALID & ARREADY;
assign raddr   = ARADDR[ADDR_BITS-1:0];

// rstate
always @(posedge ACLK) begin
    if (ARESET)
        rstate <= RDRESET;
    else if (ACLK_EN)
        rstate <= rnext;
end

// rnext
always @(*) begin
    case (rstate)
        RDIDLE:
            if (ARVALID)
                rnext = RDDATA;
            else
                rnext = RDIDLE;
        RDDATA:
            if (RREADY & RVALID)
                rnext = RDIDLE;
            else
                rnext = RDDATA;
        default:
            rnext = RDIDLE;
    endcase
end

// rdata
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (ar_hs) begin
            rdata <= 1'b0;
            case (raddr)
                ADDR_AP_CTRL: begin
                    rdata[0] <= int_ap_start;
                    rdata[1] <= int_ap_done;
                    rdata[2] <= int_ap_idle;
                    rdata[3] <= int_ap_ready;
                    rdata[7] <= int_auto_restart;
                end
                ADDR_GIE: begin
                    rdata <= int_gie;
                end
                ADDR_IER: begin
                    rdata <= int_ier;
                end
                ADDR_ISR: begin
                    rdata <= int_isr;
                end
                ADDR_WDDR_V_DATA_0: begin
                    rdata <= int_wddr_V[31:0];
                end
                ADDR_FIDDR_V_DATA_0: begin
                    rdata <= int_fiddr_V[31:0];
                end
                ADDR_FODDR_V_DATA_0: begin
                    rdata <= int_foddr_V[31:0];
                end
                ADDR_LAYER_ENPARA_CNVEN_DATA_0: begin
                    rdata <= int_layer_enPara_cnvEn[0:0];
                end
                ADDR_LAYER_ENPARA_POOLEN_DATA_0: begin
                    rdata <= int_layer_enPara_poolEn[0:0];
                end
                ADDR_LAYER_WPARA_CURLAYERNUM_DATA_0: begin
                    rdata <= int_layer_wPara_curLayerNum[15:0];
                end
                ADDR_LAYER_WPARA_LAYERDIVIDETYPE_DATA_0: begin
                    rdata <= int_layer_wPara_layerDivideType[0:0];
                end
                ADDR_LAYER_WPARA_SUBLAYERNUM_V_DATA_0: begin
                    rdata <= int_layer_wPara_sublayerNum_V[10:0];
                end
                ADDR_LAYER_WPARA_SUBLAYERSEQ_V_DATA_0: begin
                    rdata <= int_layer_wPara_sublayerSeq_V[10:0];
                end
                ADDR_LAYER_WPARA_SUBLAYERFLAG_DATA_0: begin
                    rdata <= int_layer_wPara_subLayerFlag[1:0];
                end
                ADDR_LAYER_WPARA_MEMADDRWEIGHTS_V_DATA_0: begin
                    rdata <= int_layer_wPara_memAddrWeights_V[31:0];
                end
                ADDR_LAYER_WPARA_MEMADDRWEIGHTS_V_DATA_1: begin
                    rdata <= int_layer_wPara_memAddrWeights_V[39:32];
                end
                ADDR_LAYER_WPARA_MEMADDRBIAS_V_DATA_0: begin
                    rdata <= int_layer_wPara_memAddrBias_V[31:0];
                end
                ADDR_LAYER_WPARA_MEMADDRBIAS_V_DATA_1: begin
                    rdata <= int_layer_wPara_memAddrBias_V[39:32];
                end
                ADDR_LAYER_WPARA_MEMADDRSCALE_V_DATA_0: begin
                    rdata <= int_layer_wPara_memAddrScale_V[31:0];
                end
                ADDR_LAYER_WPARA_MEMADDRSCALE_V_DATA_1: begin
                    rdata <= int_layer_wPara_memAddrScale_V[39:32];
                end
                ADDR_LAYER_WPARA_MEMADDRMEAN_V_DATA_0: begin
                    rdata <= int_layer_wPara_memAddrMean_V[31:0];
                end
                ADDR_LAYER_WPARA_MEMADDRMEAN_V_DATA_1: begin
                    rdata <= int_layer_wPara_memAddrMean_V[39:32];
                end
                ADDR_LAYER_WPARA_MEMADDRVARIANCE_V_DATA_0: begin
                    rdata <= int_layer_wPara_memAddrVariance_V[31:0];
                end
                ADDR_LAYER_WPARA_MEMADDRVARIANCE_V_DATA_1: begin
                    rdata <= int_layer_wPara_memAddrVariance_V[39:32];
                end
                ADDR_LAYER_WPARA_COMPRESSIONSIZE_V_DATA_0: begin
                    rdata <= int_layer_wPara_compressionSize_V[18:0];
                end
                ADDR_LAYER_WPARANEXT_CURLAYERNUM_DATA_0: begin
                    rdata <= int_layer_wParaNext_curLayerNum[15:0];
                end
                ADDR_LAYER_WPARANEXT_LAYERDIVIDETYPE_DATA_0: begin
                    rdata <= int_layer_wParaNext_layerDivideType[0:0];
                end
                ADDR_LAYER_WPARANEXT_SUBLAYERNUM_V_DATA_0: begin
                    rdata <= int_layer_wParaNext_sublayerNum_V[10:0];
                end
                ADDR_LAYER_WPARANEXT_SUBLAYERSEQ_V_DATA_0: begin
                    rdata <= int_layer_wParaNext_sublayerSeq_V[10:0];
                end
                ADDR_LAYER_WPARANEXT_SUBLAYERFLAG_DATA_0: begin
                    rdata <= int_layer_wParaNext_subLayerFlag[1:0];
                end
                ADDR_LAYER_WPARANEXT_MEMADDRWEIGHTS_V_DATA_0: begin
                    rdata <= int_layer_wParaNext_memAddrWeights_V[31:0];
                end
                ADDR_LAYER_WPARANEXT_MEMADDRWEIGHTS_V_DATA_1: begin
                    rdata <= int_layer_wParaNext_memAddrWeights_V[39:32];
                end
                ADDR_LAYER_WPARANEXT_MEMADDRBIAS_V_DATA_0: begin
                    rdata <= int_layer_wParaNext_memAddrBias_V[31:0];
                end
                ADDR_LAYER_WPARANEXT_MEMADDRBIAS_V_DATA_1: begin
                    rdata <= int_layer_wParaNext_memAddrBias_V[39:32];
                end
                ADDR_LAYER_WPARANEXT_MEMADDRSCALE_V_DATA_0: begin
                    rdata <= int_layer_wParaNext_memAddrScale_V[31:0];
                end
                ADDR_LAYER_WPARANEXT_MEMADDRSCALE_V_DATA_1: begin
                    rdata <= int_layer_wParaNext_memAddrScale_V[39:32];
                end
                ADDR_LAYER_WPARANEXT_MEMADDRMEAN_V_DATA_0: begin
                    rdata <= int_layer_wParaNext_memAddrMean_V[31:0];
                end
                ADDR_LAYER_WPARANEXT_MEMADDRMEAN_V_DATA_1: begin
                    rdata <= int_layer_wParaNext_memAddrMean_V[39:32];
                end
                ADDR_LAYER_WPARANEXT_MEMADDRVARIANCE_V_DATA_0: begin
                    rdata <= int_layer_wParaNext_memAddrVariance_V[31:0];
                end
                ADDR_LAYER_WPARANEXT_MEMADDRVARIANCE_V_DATA_1: begin
                    rdata <= int_layer_wParaNext_memAddrVariance_V[39:32];
                end
                ADDR_LAYER_WPARANEXT_COMPRESSIONSIZE_V_DATA_0: begin
                    rdata <= int_layer_wParaNext_compressionSize_V[18:0];
                end
                ADDR_LAYER_IPARA_BATCHSIZE_DATA_0: begin
                    rdata <= int_layer_iPara_batchSize[15:0];
                end
                ADDR_LAYER_IPARA_WIDTH_DATA_0: begin
                    rdata <= int_layer_iPara_width[15:0];
                end
                ADDR_LAYER_IPARA_HEIGHT_DATA_0: begin
                    rdata <= int_layer_iPara_height[15:0];
                end
                ADDR_LAYER_IPARA_CI_V_DATA_0: begin
                    rdata <= int_layer_iPara_ci_V[12:0];
                end
                ADDR_LAYER_IPARA_CIALIGN_V_DATA_0: begin
                    rdata <= int_layer_iPara_ciAlign_V[12:0];
                end
                ADDR_LAYER_IPARA_CIGROUP_V_DATA_0: begin
                    rdata <= int_layer_iPara_ciGroup_V[12:0];
                end
                ADDR_LAYER_IPARA_MEMADDRIMGIN_V_DATA_0: begin
                    rdata <= int_layer_iPara_memAddrImgIn_V[31:0];
                end
                ADDR_LAYER_IPARA_MEMADDRIMGIN_V_DATA_1: begin
                    rdata <= int_layer_iPara_memAddrImgIn_V[39:32];
                end
                ADDR_LAYER_IPARANEXT_BATCHSIZE_DATA_0: begin
                    rdata <= int_layer_iParaNext_batchSize[15:0];
                end
                ADDR_LAYER_IPARANEXT_WIDTH_DATA_0: begin
                    rdata <= int_layer_iParaNext_width[15:0];
                end
                ADDR_LAYER_IPARANEXT_HEIGHT_DATA_0: begin
                    rdata <= int_layer_iParaNext_height[15:0];
                end
                ADDR_LAYER_IPARANEXT_CI_V_DATA_0: begin
                    rdata <= int_layer_iParaNext_ci_V[12:0];
                end
                ADDR_LAYER_IPARANEXT_CIALIGN_V_DATA_0: begin
                    rdata <= int_layer_iParaNext_ciAlign_V[12:0];
                end
                ADDR_LAYER_IPARANEXT_CIGROUP_V_DATA_0: begin
                    rdata <= int_layer_iParaNext_ciGroup_V[12:0];
                end
                ADDR_LAYER_IPARANEXT_MEMADDRIMGIN_V_DATA_0: begin
                    rdata <= int_layer_iParaNext_memAddrImgIn_V[31:0];
                end
                ADDR_LAYER_IPARANEXT_MEMADDRIMGIN_V_DATA_1: begin
                    rdata <= int_layer_iParaNext_memAddrImgIn_V[39:32];
                end
                ADDR_LAYER_OPARA_BATCHSIZE_DATA_0: begin
                    rdata <= int_layer_oPara_batchSize[15:0];
                end
                ADDR_LAYER_OPARA_WIDTH_DATA_0: begin
                    rdata <= int_layer_oPara_width[15:0];
                end
                ADDR_LAYER_OPARA_HEIGHT_DATA_0: begin
                    rdata <= int_layer_oPara_height[15:0];
                end
                ADDR_LAYER_OPARA_CO_V_DATA_0: begin
                    rdata <= int_layer_oPara_co_V[12:0];
                end
                ADDR_LAYER_OPARA_COALIGN_V_DATA_0: begin
                    rdata <= int_layer_oPara_coAlign_V[12:0];
                end
                ADDR_LAYER_OPARA_COGROUP_V_DATA_0: begin
                    rdata <= int_layer_oPara_coGroup_V[12:0];
                end
                ADDR_LAYER_OPARA_MEMADDRIMGOUT_V_DATA_0: begin
                    rdata <= int_layer_oPara_memAddrImgOut_V[31:0];
                end
                ADDR_LAYER_OPARA_MEMADDRIMGOUT_V_DATA_1: begin
                    rdata <= int_layer_oPara_memAddrImgOut_V[39:32];
                end
                ADDR_LAYER_OPARANEXT_BATCHSIZE_DATA_0: begin
                    rdata <= int_layer_oParaNext_batchSize[15:0];
                end
                ADDR_LAYER_OPARANEXT_WIDTH_DATA_0: begin
                    rdata <= int_layer_oParaNext_width[15:0];
                end
                ADDR_LAYER_OPARANEXT_HEIGHT_DATA_0: begin
                    rdata <= int_layer_oParaNext_height[15:0];
                end
                ADDR_LAYER_OPARANEXT_CO_V_DATA_0: begin
                    rdata <= int_layer_oParaNext_co_V[12:0];
                end
                ADDR_LAYER_OPARANEXT_COALIGN_V_DATA_0: begin
                    rdata <= int_layer_oParaNext_coAlign_V[12:0];
                end
                ADDR_LAYER_OPARANEXT_COGROUP_V_DATA_0: begin
                    rdata <= int_layer_oParaNext_coGroup_V[12:0];
                end
                ADDR_LAYER_OPARANEXT_MEMADDRIMGOUT_V_DATA_0: begin
                    rdata <= int_layer_oParaNext_memAddrImgOut_V[31:0];
                end
                ADDR_LAYER_OPARANEXT_MEMADDRIMGOUT_V_DATA_1: begin
                    rdata <= int_layer_oParaNext_memAddrImgOut_V[39:32];
                end
                ADDR_LAYER_CNVPARA_RELU_DATA_0: begin
                    rdata <= int_layer_cnvPara_relu[0:0];
                end
                ADDR_LAYER_CNVPARA_DILATION_DATA_0: begin
                    rdata <= int_layer_cnvPara_dilation[15:0];
                end
                ADDR_LAYER_CNVPARA_PAD_H_V_DATA_0: begin
                    rdata <= int_layer_cnvPara_pad_h_V[4:0];
                end
                ADDR_LAYER_CNVPARA_PAD_W_V_DATA_0: begin
                    rdata <= int_layer_cnvPara_pad_w_V[4:0];
                end
                ADDR_LAYER_CNVPARA_KERNEL_H_V_DATA_0: begin
                    rdata <= int_layer_cnvPara_kernel_h_V[4:0];
                end
                ADDR_LAYER_CNVPARA_KERNEL_W_V_DATA_0: begin
                    rdata <= int_layer_cnvPara_kernel_w_V[4:0];
                end
                ADDR_LAYER_CNVPARA_STRIDE_H_V_DATA_0: begin
                    rdata <= int_layer_cnvPara_stride_h_V[4:0];
                end
                ADDR_LAYER_CNVPARA_STRIDE_W_V_DATA_0: begin
                    rdata <= int_layer_cnvPara_stride_w_V[4:0];
                end
                ADDR_LAYER_CNVPARANEXT_RELU_DATA_0: begin
                    rdata <= int_layer_cnvParaNext_relu[0:0];
                end
                ADDR_LAYER_CNVPARANEXT_DILATION_DATA_0: begin
                    rdata <= int_layer_cnvParaNext_dilation[15:0];
                end
                ADDR_LAYER_CNVPARANEXT_PAD_H_V_DATA_0: begin
                    rdata <= int_layer_cnvParaNext_pad_h_V[4:0];
                end
                ADDR_LAYER_CNVPARANEXT_PAD_W_V_DATA_0: begin
                    rdata <= int_layer_cnvParaNext_pad_w_V[4:0];
                end
                ADDR_LAYER_CNVPARANEXT_KERNEL_H_V_DATA_0: begin
                    rdata <= int_layer_cnvParaNext_kernel_h_V[4:0];
                end
                ADDR_LAYER_CNVPARANEXT_KERNEL_W_V_DATA_0: begin
                    rdata <= int_layer_cnvParaNext_kernel_w_V[4:0];
                end
                ADDR_LAYER_CNVPARANEXT_STRIDE_H_V_DATA_0: begin
                    rdata <= int_layer_cnvParaNext_stride_h_V[4:0];
                end
                ADDR_LAYER_CNVPARANEXT_STRIDE_W_V_DATA_0: begin
                    rdata <= int_layer_cnvParaNext_stride_w_V[4:0];
                end
                ADDR_LAYER_QPARA_QM0_DATA_0: begin
                    rdata <= int_layer_qPara_qM0[15:0];
                end
                ADDR_LAYER_QPARA_QN_DATA_0: begin
                    rdata <= int_layer_qPara_qN[31:0];
                end
                ADDR_LAYER_QPARA_QZ1_DATA_0: begin
                    rdata <= int_layer_qPara_qZ1[31:0];
                end
                ADDR_LAYER_QPARA_QZ2_DATA_0: begin
                    rdata <= int_layer_qPara_qZ2[15:0];
                end
                ADDR_LAYER_QPARA_QZ3_DATA_0: begin
                    rdata <= int_layer_qPara_qZ3[31:0];
                end
                ADDR_LAYER_POOLPARA_PAD_H_V_DATA_0: begin
                    rdata <= int_layer_poolPara_pad_h_V[4:0];
                end
                ADDR_LAYER_POOLPARA_PAD_W_V_DATA_0: begin
                    rdata <= int_layer_poolPara_pad_w_V[4:0];
                end
                ADDR_LAYER_POOLPARA_KERNEL_H_V_DATA_0: begin
                    rdata <= int_layer_poolPara_kernel_h_V[4:0];
                end
                ADDR_LAYER_POOLPARA_KERNEL_W_V_DATA_0: begin
                    rdata <= int_layer_poolPara_kernel_w_V[4:0];
                end
                ADDR_LAYER_POOLPARA_STRIDE_H_V_DATA_0: begin
                    rdata <= int_layer_poolPara_stride_h_V[4:0];
                end
                ADDR_LAYER_POOLPARA_STRIDE_W_V_DATA_0: begin
                    rdata <= int_layer_poolPara_stride_w_V[4:0];
                end
                ADDR_LAYER_POOLPARA_POOL_TYPE_DATA_0: begin
                    rdata <= int_layer_poolPara_pool_type[0:0];
                end
            endcase
        end
        else if (int_layer_name_read) begin
            rdata <= int_layer_name_q1;
        end
    end
end


//------------------------Register logic-----------------
assign interrupt                         = int_gie & (|int_isr);
assign ap_start                          = int_ap_start;
assign wddr_V                            = int_wddr_V;
assign fiddr_V                           = int_fiddr_V;
assign foddr_V                           = int_foddr_V;
assign layer_enPara_cnvEn                = int_layer_enPara_cnvEn;
assign layer_enPara_poolEn               = int_layer_enPara_poolEn;
assign layer_wPara_curLayerNum           = int_layer_wPara_curLayerNum;
assign layer_wPara_layerDivideType       = int_layer_wPara_layerDivideType;
assign layer_wPara_sublayerNum_V         = int_layer_wPara_sublayerNum_V;
assign layer_wPara_sublayerSeq_V         = int_layer_wPara_sublayerSeq_V;
assign layer_wPara_subLayerFlag          = int_layer_wPara_subLayerFlag;
assign layer_wPara_memAddrWeights_V      = int_layer_wPara_memAddrWeights_V;
assign layer_wPara_memAddrBias_V         = int_layer_wPara_memAddrBias_V;
assign layer_wPara_memAddrScale_V        = int_layer_wPara_memAddrScale_V;
assign layer_wPara_memAddrMean_V         = int_layer_wPara_memAddrMean_V;
assign layer_wPara_memAddrVariance_V     = int_layer_wPara_memAddrVariance_V;
assign layer_wPara_compressionSize_V     = int_layer_wPara_compressionSize_V;
assign layer_wParaNext_curLayerNum       = int_layer_wParaNext_curLayerNum;
assign layer_wParaNext_layerDivideType   = int_layer_wParaNext_layerDivideType;
assign layer_wParaNext_sublayerNum_V     = int_layer_wParaNext_sublayerNum_V;
assign layer_wParaNext_sublayerSeq_V     = int_layer_wParaNext_sublayerSeq_V;
assign layer_wParaNext_subLayerFlag      = int_layer_wParaNext_subLayerFlag;
assign layer_wParaNext_memAddrWeights_V  = int_layer_wParaNext_memAddrWeights_V;
assign layer_wParaNext_memAddrBias_V     = int_layer_wParaNext_memAddrBias_V;
assign layer_wParaNext_memAddrScale_V    = int_layer_wParaNext_memAddrScale_V;
assign layer_wParaNext_memAddrMean_V     = int_layer_wParaNext_memAddrMean_V;
assign layer_wParaNext_memAddrVariance_V = int_layer_wParaNext_memAddrVariance_V;
assign layer_wParaNext_compressionSize_V = int_layer_wParaNext_compressionSize_V;
assign layer_iPara_batchSize             = int_layer_iPara_batchSize;
assign layer_iPara_width                 = int_layer_iPara_width;
assign layer_iPara_height                = int_layer_iPara_height;
assign layer_iPara_ci_V                  = int_layer_iPara_ci_V;
assign layer_iPara_ciAlign_V             = int_layer_iPara_ciAlign_V;
assign layer_iPara_ciGroup_V             = int_layer_iPara_ciGroup_V;
assign layer_iPara_memAddrImgIn_V        = int_layer_iPara_memAddrImgIn_V;
assign layer_iParaNext_batchSize         = int_layer_iParaNext_batchSize;
assign layer_iParaNext_width             = int_layer_iParaNext_width;
assign layer_iParaNext_height            = int_layer_iParaNext_height;
assign layer_iParaNext_ci_V              = int_layer_iParaNext_ci_V;
assign layer_iParaNext_ciAlign_V         = int_layer_iParaNext_ciAlign_V;
assign layer_iParaNext_ciGroup_V         = int_layer_iParaNext_ciGroup_V;
assign layer_iParaNext_memAddrImgIn_V    = int_layer_iParaNext_memAddrImgIn_V;
assign layer_oPara_batchSize             = int_layer_oPara_batchSize;
assign layer_oPara_width                 = int_layer_oPara_width;
assign layer_oPara_height                = int_layer_oPara_height;
assign layer_oPara_co_V                  = int_layer_oPara_co_V;
assign layer_oPara_coAlign_V             = int_layer_oPara_coAlign_V;
assign layer_oPara_coGroup_V             = int_layer_oPara_coGroup_V;
assign layer_oPara_memAddrImgOut_V       = int_layer_oPara_memAddrImgOut_V;
assign layer_oParaNext_batchSize         = int_layer_oParaNext_batchSize;
assign layer_oParaNext_width             = int_layer_oParaNext_width;
assign layer_oParaNext_height            = int_layer_oParaNext_height;
assign layer_oParaNext_co_V              = int_layer_oParaNext_co_V;
assign layer_oParaNext_coAlign_V         = int_layer_oParaNext_coAlign_V;
assign layer_oParaNext_coGroup_V         = int_layer_oParaNext_coGroup_V;
assign layer_oParaNext_memAddrImgOut_V   = int_layer_oParaNext_memAddrImgOut_V;
assign layer_cnvPara_relu                = int_layer_cnvPara_relu;
assign layer_cnvPara_dilation            = int_layer_cnvPara_dilation;
assign layer_cnvPara_pad_h_V             = int_layer_cnvPara_pad_h_V;
assign layer_cnvPara_pad_w_V             = int_layer_cnvPara_pad_w_V;
assign layer_cnvPara_kernel_h_V          = int_layer_cnvPara_kernel_h_V;
assign layer_cnvPara_kernel_w_V          = int_layer_cnvPara_kernel_w_V;
assign layer_cnvPara_stride_h_V          = int_layer_cnvPara_stride_h_V;
assign layer_cnvPara_stride_w_V          = int_layer_cnvPara_stride_w_V;
assign layer_cnvParaNext_relu            = int_layer_cnvParaNext_relu;
assign layer_cnvParaNext_dilation        = int_layer_cnvParaNext_dilation;
assign layer_cnvParaNext_pad_h_V         = int_layer_cnvParaNext_pad_h_V;
assign layer_cnvParaNext_pad_w_V         = int_layer_cnvParaNext_pad_w_V;
assign layer_cnvParaNext_kernel_h_V      = int_layer_cnvParaNext_kernel_h_V;
assign layer_cnvParaNext_kernel_w_V      = int_layer_cnvParaNext_kernel_w_V;
assign layer_cnvParaNext_stride_h_V      = int_layer_cnvParaNext_stride_h_V;
assign layer_cnvParaNext_stride_w_V      = int_layer_cnvParaNext_stride_w_V;
assign layer_qPara_qM0                   = int_layer_qPara_qM0;
assign layer_qPara_qN                    = int_layer_qPara_qN;
assign layer_qPara_qZ1                   = int_layer_qPara_qZ1;
assign layer_qPara_qZ2                   = int_layer_qPara_qZ2;
assign layer_qPara_qZ3                   = int_layer_qPara_qZ3;
assign layer_poolPara_pad_h_V            = int_layer_poolPara_pad_h_V;
assign layer_poolPara_pad_w_V            = int_layer_poolPara_pad_w_V;
assign layer_poolPara_kernel_h_V         = int_layer_poolPara_kernel_h_V;
assign layer_poolPara_kernel_w_V         = int_layer_poolPara_kernel_w_V;
assign layer_poolPara_stride_h_V         = int_layer_poolPara_stride_h_V;
assign layer_poolPara_stride_w_V         = int_layer_poolPara_stride_w_V;
assign layer_poolPara_pool_type          = int_layer_poolPara_pool_type;
// int_ap_start
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_start <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_AP_CTRL && WSTRB[0] && WDATA[0])
            int_ap_start <= 1'b1;
        else if (ap_ready)
            int_ap_start <= int_auto_restart; // clear on handshake/auto restart
    end
end

// int_ap_done
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_done <= 1'b0;
    else if (ACLK_EN) begin
        if (ap_done)
            int_ap_done <= 1'b1;
        else if (ar_hs && raddr == ADDR_AP_CTRL)
            int_ap_done <= 1'b0; // clear on read
    end
end

// int_ap_idle
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_idle <= 1'b0;
    else if (ACLK_EN) begin
            int_ap_idle <= ap_idle;
    end
end

// int_ap_ready
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_ready <= 1'b0;
    else if (ACLK_EN) begin
            int_ap_ready <= ap_ready;
    end
end

// int_auto_restart
always @(posedge ACLK) begin
    if (ARESET)
        int_auto_restart <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_AP_CTRL && WSTRB[0])
            int_auto_restart <=  WDATA[7];
    end
end

// int_gie
always @(posedge ACLK) begin
    if (ARESET)
        int_gie <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_GIE && WSTRB[0])
            int_gie <= WDATA[0];
    end
end

// int_ier
always @(posedge ACLK) begin
    if (ARESET)
        int_ier <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_IER && WSTRB[0])
            int_ier <= WDATA[1:0];
    end
end

// int_isr[0]
always @(posedge ACLK) begin
    if (ARESET)
        int_isr[0] <= 1'b0;
    else if (ACLK_EN) begin
        if (int_ier[0] & ap_done)
            int_isr[0] <= 1'b1;
        else if (w_hs && waddr == ADDR_ISR && WSTRB[0])
            int_isr[0] <= int_isr[0] ^ WDATA[0]; // toggle on write
    end
end

// int_isr[1]
always @(posedge ACLK) begin
    if (ARESET)
        int_isr[1] <= 1'b0;
    else if (ACLK_EN) begin
        if (int_ier[1] & ap_ready)
            int_isr[1] <= 1'b1;
        else if (w_hs && waddr == ADDR_ISR && WSTRB[0])
            int_isr[1] <= int_isr[1] ^ WDATA[1]; // toggle on write
    end
end

// int_wddr_V[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_wddr_V[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_WDDR_V_DATA_0)
            int_wddr_V[31:0] <= (WDATA[31:0] & wmask) | (int_wddr_V[31:0] & ~wmask);
    end
end

// int_fiddr_V[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_fiddr_V[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_FIDDR_V_DATA_0)
            int_fiddr_V[31:0] <= (WDATA[31:0] & wmask) | (int_fiddr_V[31:0] & ~wmask);
    end
end

// int_foddr_V[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_foddr_V[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_FODDR_V_DATA_0)
            int_foddr_V[31:0] <= (WDATA[31:0] & wmask) | (int_foddr_V[31:0] & ~wmask);
    end
end

// int_layer_enPara_cnvEn[0:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layer_enPara_cnvEn[0:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER_ENPARA_CNVEN_DATA_0)
            int_layer_enPara_cnvEn[0:0] <= (WDATA[31:0] & wmask) | (int_layer_enPara_cnvEn[0:0] & ~wmask);
    end
end

// int_layer_enPara_poolEn[0:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layer_enPara_poolEn[0:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER_ENPARA_POOLEN_DATA_0)
            int_layer_enPara_poolEn[0:0] <= (WDATA[31:0] & wmask) | (int_layer_enPara_poolEn[0:0] & ~wmask);
    end
end

// int_layer_wPara_curLayerNum[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layer_wPara_curLayerNum[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER_WPARA_CURLAYERNUM_DATA_0)
            int_layer_wPara_curLayerNum[15:0] <= (WDATA[31:0] & wmask) | (int_layer_wPara_curLayerNum[15:0] & ~wmask);
    end
end

// int_layer_wPara_layerDivideType[0:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layer_wPara_layerDivideType[0:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER_WPARA_LAYERDIVIDETYPE_DATA_0)
            int_layer_wPara_layerDivideType[0:0] <= (WDATA[31:0] & wmask) | (int_layer_wPara_layerDivideType[0:0] & ~wmask);
    end
end

// int_layer_wPara_sublayerNum_V[10:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layer_wPara_sublayerNum_V[10:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER_WPARA_SUBLAYERNUM_V_DATA_0)
            int_layer_wPara_sublayerNum_V[10:0] <= (WDATA[31:0] & wmask) | (int_layer_wPara_sublayerNum_V[10:0] & ~wmask);
    end
end

// int_layer_wPara_sublayerSeq_V[10:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layer_wPara_sublayerSeq_V[10:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER_WPARA_SUBLAYERSEQ_V_DATA_0)
            int_layer_wPara_sublayerSeq_V[10:0] <= (WDATA[31:0] & wmask) | (int_layer_wPara_sublayerSeq_V[10:0] & ~wmask);
    end
end

// int_layer_wPara_subLayerFlag[1:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layer_wPara_subLayerFlag[1:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER_WPARA_SUBLAYERFLAG_DATA_0)
            int_layer_wPara_subLayerFlag[1:0] <= (WDATA[31:0] & wmask) | (int_layer_wPara_subLayerFlag[1:0] & ~wmask);
    end
end

// int_layer_wPara_memAddrWeights_V[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layer_wPara_memAddrWeights_V[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER_WPARA_MEMADDRWEIGHTS_V_DATA_0)
            int_layer_wPara_memAddrWeights_V[31:0] <= (WDATA[31:0] & wmask) | (int_layer_wPara_memAddrWeights_V[31:0] & ~wmask);
    end
end

// int_layer_wPara_memAddrWeights_V[39:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_layer_wPara_memAddrWeights_V[39:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER_WPARA_MEMADDRWEIGHTS_V_DATA_1)
            int_layer_wPara_memAddrWeights_V[39:32] <= (WDATA[31:0] & wmask) | (int_layer_wPara_memAddrWeights_V[39:32] & ~wmask);
    end
end

// int_layer_wPara_memAddrBias_V[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layer_wPara_memAddrBias_V[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER_WPARA_MEMADDRBIAS_V_DATA_0)
            int_layer_wPara_memAddrBias_V[31:0] <= (WDATA[31:0] & wmask) | (int_layer_wPara_memAddrBias_V[31:0] & ~wmask);
    end
end

// int_layer_wPara_memAddrBias_V[39:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_layer_wPara_memAddrBias_V[39:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER_WPARA_MEMADDRBIAS_V_DATA_1)
            int_layer_wPara_memAddrBias_V[39:32] <= (WDATA[31:0] & wmask) | (int_layer_wPara_memAddrBias_V[39:32] & ~wmask);
    end
end

// int_layer_wPara_memAddrScale_V[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layer_wPara_memAddrScale_V[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER_WPARA_MEMADDRSCALE_V_DATA_0)
            int_layer_wPara_memAddrScale_V[31:0] <= (WDATA[31:0] & wmask) | (int_layer_wPara_memAddrScale_V[31:0] & ~wmask);
    end
end

// int_layer_wPara_memAddrScale_V[39:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_layer_wPara_memAddrScale_V[39:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER_WPARA_MEMADDRSCALE_V_DATA_1)
            int_layer_wPara_memAddrScale_V[39:32] <= (WDATA[31:0] & wmask) | (int_layer_wPara_memAddrScale_V[39:32] & ~wmask);
    end
end

// int_layer_wPara_memAddrMean_V[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layer_wPara_memAddrMean_V[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER_WPARA_MEMADDRMEAN_V_DATA_0)
            int_layer_wPara_memAddrMean_V[31:0] <= (WDATA[31:0] & wmask) | (int_layer_wPara_memAddrMean_V[31:0] & ~wmask);
    end
end

// int_layer_wPara_memAddrMean_V[39:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_layer_wPara_memAddrMean_V[39:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER_WPARA_MEMADDRMEAN_V_DATA_1)
            int_layer_wPara_memAddrMean_V[39:32] <= (WDATA[31:0] & wmask) | (int_layer_wPara_memAddrMean_V[39:32] & ~wmask);
    end
end

// int_layer_wPara_memAddrVariance_V[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layer_wPara_memAddrVariance_V[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER_WPARA_MEMADDRVARIANCE_V_DATA_0)
            int_layer_wPara_memAddrVariance_V[31:0] <= (WDATA[31:0] & wmask) | (int_layer_wPara_memAddrVariance_V[31:0] & ~wmask);
    end
end

// int_layer_wPara_memAddrVariance_V[39:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_layer_wPara_memAddrVariance_V[39:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER_WPARA_MEMADDRVARIANCE_V_DATA_1)
            int_layer_wPara_memAddrVariance_V[39:32] <= (WDATA[31:0] & wmask) | (int_layer_wPara_memAddrVariance_V[39:32] & ~wmask);
    end
end

// int_layer_wPara_compressionSize_V[18:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layer_wPara_compressionSize_V[18:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER_WPARA_COMPRESSIONSIZE_V_DATA_0)
            int_layer_wPara_compressionSize_V[18:0] <= (WDATA[31:0] & wmask) | (int_layer_wPara_compressionSize_V[18:0] & ~wmask);
    end
end

// int_layer_wParaNext_curLayerNum[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layer_wParaNext_curLayerNum[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER_WPARANEXT_CURLAYERNUM_DATA_0)
            int_layer_wParaNext_curLayerNum[15:0] <= (WDATA[31:0] & wmask) | (int_layer_wParaNext_curLayerNum[15:0] & ~wmask);
    end
end

// int_layer_wParaNext_layerDivideType[0:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layer_wParaNext_layerDivideType[0:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER_WPARANEXT_LAYERDIVIDETYPE_DATA_0)
            int_layer_wParaNext_layerDivideType[0:0] <= (WDATA[31:0] & wmask) | (int_layer_wParaNext_layerDivideType[0:0] & ~wmask);
    end
end

// int_layer_wParaNext_sublayerNum_V[10:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layer_wParaNext_sublayerNum_V[10:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER_WPARANEXT_SUBLAYERNUM_V_DATA_0)
            int_layer_wParaNext_sublayerNum_V[10:0] <= (WDATA[31:0] & wmask) | (int_layer_wParaNext_sublayerNum_V[10:0] & ~wmask);
    end
end

// int_layer_wParaNext_sublayerSeq_V[10:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layer_wParaNext_sublayerSeq_V[10:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER_WPARANEXT_SUBLAYERSEQ_V_DATA_0)
            int_layer_wParaNext_sublayerSeq_V[10:0] <= (WDATA[31:0] & wmask) | (int_layer_wParaNext_sublayerSeq_V[10:0] & ~wmask);
    end
end

// int_layer_wParaNext_subLayerFlag[1:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layer_wParaNext_subLayerFlag[1:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER_WPARANEXT_SUBLAYERFLAG_DATA_0)
            int_layer_wParaNext_subLayerFlag[1:0] <= (WDATA[31:0] & wmask) | (int_layer_wParaNext_subLayerFlag[1:0] & ~wmask);
    end
end

// int_layer_wParaNext_memAddrWeights_V[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layer_wParaNext_memAddrWeights_V[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER_WPARANEXT_MEMADDRWEIGHTS_V_DATA_0)
            int_layer_wParaNext_memAddrWeights_V[31:0] <= (WDATA[31:0] & wmask) | (int_layer_wParaNext_memAddrWeights_V[31:0] & ~wmask);
    end
end

// int_layer_wParaNext_memAddrWeights_V[39:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_layer_wParaNext_memAddrWeights_V[39:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER_WPARANEXT_MEMADDRWEIGHTS_V_DATA_1)
            int_layer_wParaNext_memAddrWeights_V[39:32] <= (WDATA[31:0] & wmask) | (int_layer_wParaNext_memAddrWeights_V[39:32] & ~wmask);
    end
end

// int_layer_wParaNext_memAddrBias_V[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layer_wParaNext_memAddrBias_V[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER_WPARANEXT_MEMADDRBIAS_V_DATA_0)
            int_layer_wParaNext_memAddrBias_V[31:0] <= (WDATA[31:0] & wmask) | (int_layer_wParaNext_memAddrBias_V[31:0] & ~wmask);
    end
end

// int_layer_wParaNext_memAddrBias_V[39:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_layer_wParaNext_memAddrBias_V[39:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER_WPARANEXT_MEMADDRBIAS_V_DATA_1)
            int_layer_wParaNext_memAddrBias_V[39:32] <= (WDATA[31:0] & wmask) | (int_layer_wParaNext_memAddrBias_V[39:32] & ~wmask);
    end
end

// int_layer_wParaNext_memAddrScale_V[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layer_wParaNext_memAddrScale_V[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER_WPARANEXT_MEMADDRSCALE_V_DATA_0)
            int_layer_wParaNext_memAddrScale_V[31:0] <= (WDATA[31:0] & wmask) | (int_layer_wParaNext_memAddrScale_V[31:0] & ~wmask);
    end
end

// int_layer_wParaNext_memAddrScale_V[39:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_layer_wParaNext_memAddrScale_V[39:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER_WPARANEXT_MEMADDRSCALE_V_DATA_1)
            int_layer_wParaNext_memAddrScale_V[39:32] <= (WDATA[31:0] & wmask) | (int_layer_wParaNext_memAddrScale_V[39:32] & ~wmask);
    end
end

// int_layer_wParaNext_memAddrMean_V[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layer_wParaNext_memAddrMean_V[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER_WPARANEXT_MEMADDRMEAN_V_DATA_0)
            int_layer_wParaNext_memAddrMean_V[31:0] <= (WDATA[31:0] & wmask) | (int_layer_wParaNext_memAddrMean_V[31:0] & ~wmask);
    end
end

// int_layer_wParaNext_memAddrMean_V[39:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_layer_wParaNext_memAddrMean_V[39:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER_WPARANEXT_MEMADDRMEAN_V_DATA_1)
            int_layer_wParaNext_memAddrMean_V[39:32] <= (WDATA[31:0] & wmask) | (int_layer_wParaNext_memAddrMean_V[39:32] & ~wmask);
    end
end

// int_layer_wParaNext_memAddrVariance_V[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layer_wParaNext_memAddrVariance_V[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER_WPARANEXT_MEMADDRVARIANCE_V_DATA_0)
            int_layer_wParaNext_memAddrVariance_V[31:0] <= (WDATA[31:0] & wmask) | (int_layer_wParaNext_memAddrVariance_V[31:0] & ~wmask);
    end
end

// int_layer_wParaNext_memAddrVariance_V[39:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_layer_wParaNext_memAddrVariance_V[39:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER_WPARANEXT_MEMADDRVARIANCE_V_DATA_1)
            int_layer_wParaNext_memAddrVariance_V[39:32] <= (WDATA[31:0] & wmask) | (int_layer_wParaNext_memAddrVariance_V[39:32] & ~wmask);
    end
end

// int_layer_wParaNext_compressionSize_V[18:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layer_wParaNext_compressionSize_V[18:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER_WPARANEXT_COMPRESSIONSIZE_V_DATA_0)
            int_layer_wParaNext_compressionSize_V[18:0] <= (WDATA[31:0] & wmask) | (int_layer_wParaNext_compressionSize_V[18:0] & ~wmask);
    end
end

// int_layer_iPara_batchSize[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layer_iPara_batchSize[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER_IPARA_BATCHSIZE_DATA_0)
            int_layer_iPara_batchSize[15:0] <= (WDATA[31:0] & wmask) | (int_layer_iPara_batchSize[15:0] & ~wmask);
    end
end

// int_layer_iPara_width[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layer_iPara_width[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER_IPARA_WIDTH_DATA_0)
            int_layer_iPara_width[15:0] <= (WDATA[31:0] & wmask) | (int_layer_iPara_width[15:0] & ~wmask);
    end
end

// int_layer_iPara_height[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layer_iPara_height[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER_IPARA_HEIGHT_DATA_0)
            int_layer_iPara_height[15:0] <= (WDATA[31:0] & wmask) | (int_layer_iPara_height[15:0] & ~wmask);
    end
end

// int_layer_iPara_ci_V[12:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layer_iPara_ci_V[12:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER_IPARA_CI_V_DATA_0)
            int_layer_iPara_ci_V[12:0] <= (WDATA[31:0] & wmask) | (int_layer_iPara_ci_V[12:0] & ~wmask);
    end
end

// int_layer_iPara_ciAlign_V[12:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layer_iPara_ciAlign_V[12:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER_IPARA_CIALIGN_V_DATA_0)
            int_layer_iPara_ciAlign_V[12:0] <= (WDATA[31:0] & wmask) | (int_layer_iPara_ciAlign_V[12:0] & ~wmask);
    end
end

// int_layer_iPara_ciGroup_V[12:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layer_iPara_ciGroup_V[12:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER_IPARA_CIGROUP_V_DATA_0)
            int_layer_iPara_ciGroup_V[12:0] <= (WDATA[31:0] & wmask) | (int_layer_iPara_ciGroup_V[12:0] & ~wmask);
    end
end

// int_layer_iPara_memAddrImgIn_V[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layer_iPara_memAddrImgIn_V[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER_IPARA_MEMADDRIMGIN_V_DATA_0)
            int_layer_iPara_memAddrImgIn_V[31:0] <= (WDATA[31:0] & wmask) | (int_layer_iPara_memAddrImgIn_V[31:0] & ~wmask);
    end
end

// int_layer_iPara_memAddrImgIn_V[39:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_layer_iPara_memAddrImgIn_V[39:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER_IPARA_MEMADDRIMGIN_V_DATA_1)
            int_layer_iPara_memAddrImgIn_V[39:32] <= (WDATA[31:0] & wmask) | (int_layer_iPara_memAddrImgIn_V[39:32] & ~wmask);
    end
end

// int_layer_iParaNext_batchSize[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layer_iParaNext_batchSize[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER_IPARANEXT_BATCHSIZE_DATA_0)
            int_layer_iParaNext_batchSize[15:0] <= (WDATA[31:0] & wmask) | (int_layer_iParaNext_batchSize[15:0] & ~wmask);
    end
end

// int_layer_iParaNext_width[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layer_iParaNext_width[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER_IPARANEXT_WIDTH_DATA_0)
            int_layer_iParaNext_width[15:0] <= (WDATA[31:0] & wmask) | (int_layer_iParaNext_width[15:0] & ~wmask);
    end
end

// int_layer_iParaNext_height[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layer_iParaNext_height[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER_IPARANEXT_HEIGHT_DATA_0)
            int_layer_iParaNext_height[15:0] <= (WDATA[31:0] & wmask) | (int_layer_iParaNext_height[15:0] & ~wmask);
    end
end

// int_layer_iParaNext_ci_V[12:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layer_iParaNext_ci_V[12:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER_IPARANEXT_CI_V_DATA_0)
            int_layer_iParaNext_ci_V[12:0] <= (WDATA[31:0] & wmask) | (int_layer_iParaNext_ci_V[12:0] & ~wmask);
    end
end

// int_layer_iParaNext_ciAlign_V[12:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layer_iParaNext_ciAlign_V[12:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER_IPARANEXT_CIALIGN_V_DATA_0)
            int_layer_iParaNext_ciAlign_V[12:0] <= (WDATA[31:0] & wmask) | (int_layer_iParaNext_ciAlign_V[12:0] & ~wmask);
    end
end

// int_layer_iParaNext_ciGroup_V[12:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layer_iParaNext_ciGroup_V[12:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER_IPARANEXT_CIGROUP_V_DATA_0)
            int_layer_iParaNext_ciGroup_V[12:0] <= (WDATA[31:0] & wmask) | (int_layer_iParaNext_ciGroup_V[12:0] & ~wmask);
    end
end

// int_layer_iParaNext_memAddrImgIn_V[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layer_iParaNext_memAddrImgIn_V[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER_IPARANEXT_MEMADDRIMGIN_V_DATA_0)
            int_layer_iParaNext_memAddrImgIn_V[31:0] <= (WDATA[31:0] & wmask) | (int_layer_iParaNext_memAddrImgIn_V[31:0] & ~wmask);
    end
end

// int_layer_iParaNext_memAddrImgIn_V[39:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_layer_iParaNext_memAddrImgIn_V[39:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER_IPARANEXT_MEMADDRIMGIN_V_DATA_1)
            int_layer_iParaNext_memAddrImgIn_V[39:32] <= (WDATA[31:0] & wmask) | (int_layer_iParaNext_memAddrImgIn_V[39:32] & ~wmask);
    end
end

// int_layer_oPara_batchSize[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layer_oPara_batchSize[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER_OPARA_BATCHSIZE_DATA_0)
            int_layer_oPara_batchSize[15:0] <= (WDATA[31:0] & wmask) | (int_layer_oPara_batchSize[15:0] & ~wmask);
    end
end

// int_layer_oPara_width[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layer_oPara_width[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER_OPARA_WIDTH_DATA_0)
            int_layer_oPara_width[15:0] <= (WDATA[31:0] & wmask) | (int_layer_oPara_width[15:0] & ~wmask);
    end
end

// int_layer_oPara_height[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layer_oPara_height[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER_OPARA_HEIGHT_DATA_0)
            int_layer_oPara_height[15:0] <= (WDATA[31:0] & wmask) | (int_layer_oPara_height[15:0] & ~wmask);
    end
end

// int_layer_oPara_co_V[12:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layer_oPara_co_V[12:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER_OPARA_CO_V_DATA_0)
            int_layer_oPara_co_V[12:0] <= (WDATA[31:0] & wmask) | (int_layer_oPara_co_V[12:0] & ~wmask);
    end
end

// int_layer_oPara_coAlign_V[12:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layer_oPara_coAlign_V[12:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER_OPARA_COALIGN_V_DATA_0)
            int_layer_oPara_coAlign_V[12:0] <= (WDATA[31:0] & wmask) | (int_layer_oPara_coAlign_V[12:0] & ~wmask);
    end
end

// int_layer_oPara_coGroup_V[12:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layer_oPara_coGroup_V[12:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER_OPARA_COGROUP_V_DATA_0)
            int_layer_oPara_coGroup_V[12:0] <= (WDATA[31:0] & wmask) | (int_layer_oPara_coGroup_V[12:0] & ~wmask);
    end
end

// int_layer_oPara_memAddrImgOut_V[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layer_oPara_memAddrImgOut_V[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER_OPARA_MEMADDRIMGOUT_V_DATA_0)
            int_layer_oPara_memAddrImgOut_V[31:0] <= (WDATA[31:0] & wmask) | (int_layer_oPara_memAddrImgOut_V[31:0] & ~wmask);
    end
end

// int_layer_oPara_memAddrImgOut_V[39:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_layer_oPara_memAddrImgOut_V[39:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER_OPARA_MEMADDRIMGOUT_V_DATA_1)
            int_layer_oPara_memAddrImgOut_V[39:32] <= (WDATA[31:0] & wmask) | (int_layer_oPara_memAddrImgOut_V[39:32] & ~wmask);
    end
end

// int_layer_oParaNext_batchSize[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layer_oParaNext_batchSize[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER_OPARANEXT_BATCHSIZE_DATA_0)
            int_layer_oParaNext_batchSize[15:0] <= (WDATA[31:0] & wmask) | (int_layer_oParaNext_batchSize[15:0] & ~wmask);
    end
end

// int_layer_oParaNext_width[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layer_oParaNext_width[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER_OPARANEXT_WIDTH_DATA_0)
            int_layer_oParaNext_width[15:0] <= (WDATA[31:0] & wmask) | (int_layer_oParaNext_width[15:0] & ~wmask);
    end
end

// int_layer_oParaNext_height[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layer_oParaNext_height[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER_OPARANEXT_HEIGHT_DATA_0)
            int_layer_oParaNext_height[15:0] <= (WDATA[31:0] & wmask) | (int_layer_oParaNext_height[15:0] & ~wmask);
    end
end

// int_layer_oParaNext_co_V[12:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layer_oParaNext_co_V[12:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER_OPARANEXT_CO_V_DATA_0)
            int_layer_oParaNext_co_V[12:0] <= (WDATA[31:0] & wmask) | (int_layer_oParaNext_co_V[12:0] & ~wmask);
    end
end

// int_layer_oParaNext_coAlign_V[12:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layer_oParaNext_coAlign_V[12:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER_OPARANEXT_COALIGN_V_DATA_0)
            int_layer_oParaNext_coAlign_V[12:0] <= (WDATA[31:0] & wmask) | (int_layer_oParaNext_coAlign_V[12:0] & ~wmask);
    end
end

// int_layer_oParaNext_coGroup_V[12:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layer_oParaNext_coGroup_V[12:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER_OPARANEXT_COGROUP_V_DATA_0)
            int_layer_oParaNext_coGroup_V[12:0] <= (WDATA[31:0] & wmask) | (int_layer_oParaNext_coGroup_V[12:0] & ~wmask);
    end
end

// int_layer_oParaNext_memAddrImgOut_V[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layer_oParaNext_memAddrImgOut_V[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER_OPARANEXT_MEMADDRIMGOUT_V_DATA_0)
            int_layer_oParaNext_memAddrImgOut_V[31:0] <= (WDATA[31:0] & wmask) | (int_layer_oParaNext_memAddrImgOut_V[31:0] & ~wmask);
    end
end

// int_layer_oParaNext_memAddrImgOut_V[39:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_layer_oParaNext_memAddrImgOut_V[39:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER_OPARANEXT_MEMADDRIMGOUT_V_DATA_1)
            int_layer_oParaNext_memAddrImgOut_V[39:32] <= (WDATA[31:0] & wmask) | (int_layer_oParaNext_memAddrImgOut_V[39:32] & ~wmask);
    end
end

// int_layer_cnvPara_relu[0:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layer_cnvPara_relu[0:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER_CNVPARA_RELU_DATA_0)
            int_layer_cnvPara_relu[0:0] <= (WDATA[31:0] & wmask) | (int_layer_cnvPara_relu[0:0] & ~wmask);
    end
end

// int_layer_cnvPara_dilation[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layer_cnvPara_dilation[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER_CNVPARA_DILATION_DATA_0)
            int_layer_cnvPara_dilation[15:0] <= (WDATA[31:0] & wmask) | (int_layer_cnvPara_dilation[15:0] & ~wmask);
    end
end

// int_layer_cnvPara_pad_h_V[4:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layer_cnvPara_pad_h_V[4:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER_CNVPARA_PAD_H_V_DATA_0)
            int_layer_cnvPara_pad_h_V[4:0] <= (WDATA[31:0] & wmask) | (int_layer_cnvPara_pad_h_V[4:0] & ~wmask);
    end
end

// int_layer_cnvPara_pad_w_V[4:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layer_cnvPara_pad_w_V[4:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER_CNVPARA_PAD_W_V_DATA_0)
            int_layer_cnvPara_pad_w_V[4:0] <= (WDATA[31:0] & wmask) | (int_layer_cnvPara_pad_w_V[4:0] & ~wmask);
    end
end

// int_layer_cnvPara_kernel_h_V[4:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layer_cnvPara_kernel_h_V[4:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER_CNVPARA_KERNEL_H_V_DATA_0)
            int_layer_cnvPara_kernel_h_V[4:0] <= (WDATA[31:0] & wmask) | (int_layer_cnvPara_kernel_h_V[4:0] & ~wmask);
    end
end

// int_layer_cnvPara_kernel_w_V[4:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layer_cnvPara_kernel_w_V[4:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER_CNVPARA_KERNEL_W_V_DATA_0)
            int_layer_cnvPara_kernel_w_V[4:0] <= (WDATA[31:0] & wmask) | (int_layer_cnvPara_kernel_w_V[4:0] & ~wmask);
    end
end

// int_layer_cnvPara_stride_h_V[4:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layer_cnvPara_stride_h_V[4:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER_CNVPARA_STRIDE_H_V_DATA_0)
            int_layer_cnvPara_stride_h_V[4:0] <= (WDATA[31:0] & wmask) | (int_layer_cnvPara_stride_h_V[4:0] & ~wmask);
    end
end

// int_layer_cnvPara_stride_w_V[4:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layer_cnvPara_stride_w_V[4:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER_CNVPARA_STRIDE_W_V_DATA_0)
            int_layer_cnvPara_stride_w_V[4:0] <= (WDATA[31:0] & wmask) | (int_layer_cnvPara_stride_w_V[4:0] & ~wmask);
    end
end

// int_layer_cnvParaNext_relu[0:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layer_cnvParaNext_relu[0:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER_CNVPARANEXT_RELU_DATA_0)
            int_layer_cnvParaNext_relu[0:0] <= (WDATA[31:0] & wmask) | (int_layer_cnvParaNext_relu[0:0] & ~wmask);
    end
end

// int_layer_cnvParaNext_dilation[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layer_cnvParaNext_dilation[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER_CNVPARANEXT_DILATION_DATA_0)
            int_layer_cnvParaNext_dilation[15:0] <= (WDATA[31:0] & wmask) | (int_layer_cnvParaNext_dilation[15:0] & ~wmask);
    end
end

// int_layer_cnvParaNext_pad_h_V[4:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layer_cnvParaNext_pad_h_V[4:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER_CNVPARANEXT_PAD_H_V_DATA_0)
            int_layer_cnvParaNext_pad_h_V[4:0] <= (WDATA[31:0] & wmask) | (int_layer_cnvParaNext_pad_h_V[4:0] & ~wmask);
    end
end

// int_layer_cnvParaNext_pad_w_V[4:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layer_cnvParaNext_pad_w_V[4:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER_CNVPARANEXT_PAD_W_V_DATA_0)
            int_layer_cnvParaNext_pad_w_V[4:0] <= (WDATA[31:0] & wmask) | (int_layer_cnvParaNext_pad_w_V[4:0] & ~wmask);
    end
end

// int_layer_cnvParaNext_kernel_h_V[4:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layer_cnvParaNext_kernel_h_V[4:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER_CNVPARANEXT_KERNEL_H_V_DATA_0)
            int_layer_cnvParaNext_kernel_h_V[4:0] <= (WDATA[31:0] & wmask) | (int_layer_cnvParaNext_kernel_h_V[4:0] & ~wmask);
    end
end

// int_layer_cnvParaNext_kernel_w_V[4:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layer_cnvParaNext_kernel_w_V[4:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER_CNVPARANEXT_KERNEL_W_V_DATA_0)
            int_layer_cnvParaNext_kernel_w_V[4:0] <= (WDATA[31:0] & wmask) | (int_layer_cnvParaNext_kernel_w_V[4:0] & ~wmask);
    end
end

// int_layer_cnvParaNext_stride_h_V[4:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layer_cnvParaNext_stride_h_V[4:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER_CNVPARANEXT_STRIDE_H_V_DATA_0)
            int_layer_cnvParaNext_stride_h_V[4:0] <= (WDATA[31:0] & wmask) | (int_layer_cnvParaNext_stride_h_V[4:0] & ~wmask);
    end
end

// int_layer_cnvParaNext_stride_w_V[4:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layer_cnvParaNext_stride_w_V[4:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER_CNVPARANEXT_STRIDE_W_V_DATA_0)
            int_layer_cnvParaNext_stride_w_V[4:0] <= (WDATA[31:0] & wmask) | (int_layer_cnvParaNext_stride_w_V[4:0] & ~wmask);
    end
end

// int_layer_qPara_qM0[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layer_qPara_qM0[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER_QPARA_QM0_DATA_0)
            int_layer_qPara_qM0[15:0] <= (WDATA[31:0] & wmask) | (int_layer_qPara_qM0[15:0] & ~wmask);
    end
end

// int_layer_qPara_qN[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layer_qPara_qN[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER_QPARA_QN_DATA_0)
            int_layer_qPara_qN[31:0] <= (WDATA[31:0] & wmask) | (int_layer_qPara_qN[31:0] & ~wmask);
    end
end

// int_layer_qPara_qZ1[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layer_qPara_qZ1[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER_QPARA_QZ1_DATA_0)
            int_layer_qPara_qZ1[31:0] <= (WDATA[31:0] & wmask) | (int_layer_qPara_qZ1[31:0] & ~wmask);
    end
end

// int_layer_qPara_qZ2[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layer_qPara_qZ2[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER_QPARA_QZ2_DATA_0)
            int_layer_qPara_qZ2[15:0] <= (WDATA[31:0] & wmask) | (int_layer_qPara_qZ2[15:0] & ~wmask);
    end
end

// int_layer_qPara_qZ3[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layer_qPara_qZ3[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER_QPARA_QZ3_DATA_0)
            int_layer_qPara_qZ3[31:0] <= (WDATA[31:0] & wmask) | (int_layer_qPara_qZ3[31:0] & ~wmask);
    end
end

// int_layer_poolPara_pad_h_V[4:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layer_poolPara_pad_h_V[4:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER_POOLPARA_PAD_H_V_DATA_0)
            int_layer_poolPara_pad_h_V[4:0] <= (WDATA[31:0] & wmask) | (int_layer_poolPara_pad_h_V[4:0] & ~wmask);
    end
end

// int_layer_poolPara_pad_w_V[4:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layer_poolPara_pad_w_V[4:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER_POOLPARA_PAD_W_V_DATA_0)
            int_layer_poolPara_pad_w_V[4:0] <= (WDATA[31:0] & wmask) | (int_layer_poolPara_pad_w_V[4:0] & ~wmask);
    end
end

// int_layer_poolPara_kernel_h_V[4:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layer_poolPara_kernel_h_V[4:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER_POOLPARA_KERNEL_H_V_DATA_0)
            int_layer_poolPara_kernel_h_V[4:0] <= (WDATA[31:0] & wmask) | (int_layer_poolPara_kernel_h_V[4:0] & ~wmask);
    end
end

// int_layer_poolPara_kernel_w_V[4:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layer_poolPara_kernel_w_V[4:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER_POOLPARA_KERNEL_W_V_DATA_0)
            int_layer_poolPara_kernel_w_V[4:0] <= (WDATA[31:0] & wmask) | (int_layer_poolPara_kernel_w_V[4:0] & ~wmask);
    end
end

// int_layer_poolPara_stride_h_V[4:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layer_poolPara_stride_h_V[4:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER_POOLPARA_STRIDE_H_V_DATA_0)
            int_layer_poolPara_stride_h_V[4:0] <= (WDATA[31:0] & wmask) | (int_layer_poolPara_stride_h_V[4:0] & ~wmask);
    end
end

// int_layer_poolPara_stride_w_V[4:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layer_poolPara_stride_w_V[4:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER_POOLPARA_STRIDE_W_V_DATA_0)
            int_layer_poolPara_stride_w_V[4:0] <= (WDATA[31:0] & wmask) | (int_layer_poolPara_stride_w_V[4:0] & ~wmask);
    end
end

// int_layer_poolPara_pool_type[0:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layer_poolPara_pool_type[0:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER_POOLPARA_POOL_TYPE_DATA_0)
            int_layer_poolPara_pool_type[0:0] <= (WDATA[31:0] & wmask) | (int_layer_poolPara_pool_type[0:0] & ~wmask);
    end
end


//------------------------Memory logic-------------------
// layer_name
assign int_layer_name_address0 = layer_name_address0 >> 2;
assign int_layer_name_ce0      = layer_name_ce0;
assign int_layer_name_we0      = layer_name_we0;
assign int_layer_name_be0      = 1 << layer_name_address0[1:0];
assign int_layer_name_d0       = {4{layer_name_d0}};
assign int_layer_name_address1 = ar_hs? raddr[3:2] : waddr[3:2];
assign int_layer_name_ce1      = ar_hs | (int_layer_name_write & WVALID);
assign int_layer_name_we1      = int_layer_name_write & WVALID;
assign int_layer_name_be1      = WSTRB;
assign int_layer_name_d1       = WDATA;
// int_layer_name_read
always @(posedge ACLK) begin
    if (ARESET)
        int_layer_name_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_LAYER_NAME_BASE && raddr <= ADDR_LAYER_NAME_HIGH)
            int_layer_name_read <= 1'b1;
        else
            int_layer_name_read <= 1'b0;
    end
end

// int_layer_name_write
always @(posedge ACLK) begin
    if (ARESET)
        int_layer_name_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_LAYER_NAME_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_LAYER_NAME_HIGH)
            int_layer_name_write <= 1'b1;
        else if (WVALID)
            int_layer_name_write <= 1'b0;
    end
end

// int_layer_name_shift
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (layer_name_ce0)
            int_layer_name_shift <= layer_name_address0[1:0];
    end
end


endmodule


`timescale 1ns/1ps

module cnna_axilite_s_axi_ram
#(parameter
    BYTES  = 4,
    DEPTH  = 256,
    AWIDTH = log2(DEPTH)
) (
    input  wire               clk0,
    input  wire [AWIDTH-1:0]  address0,
    input  wire               ce0,
    input  wire               we0,
    input  wire [BYTES-1:0]   be0,
    input  wire [BYTES*8-1:0] d0,
    output reg  [BYTES*8-1:0] q0,
    input  wire               clk1,
    input  wire [AWIDTH-1:0]  address1,
    input  wire               ce1,
    input  wire               we1,
    input  wire [BYTES-1:0]   be1,
    input  wire [BYTES*8-1:0] d1,
    output reg  [BYTES*8-1:0] q1
);
//------------------------Local signal-------------------
reg  [BYTES*8-1:0] mem[0:DEPTH-1];
//------------------------Task and function--------------
function integer log2;
    input integer x;
    integer n, m;
begin
    n = 1;
    m = 2;
    while (m < x) begin
        n = n + 1;
        m = m * 2;
    end
    log2 = n;
end
endfunction
//------------------------Body---------------------------
// read port 0
always @(posedge clk0) begin
    if (ce0) q0 <= mem[address0];
end

// read port 1
always @(posedge clk1) begin
    if (ce1) q1 <= mem[address1];
end

genvar i;
generate
    for (i = 0; i < BYTES; i = i + 1) begin : gen_write
        // write port 0
        always @(posedge clk0) begin
            if (ce0 & we0 & be0[i]) begin
                mem[address0][8*i+7:8*i] <= d0[8*i+7:8*i];
            end
        end
        // write port 1
        always @(posedge clk1) begin
            if (ce1 & we1 & be1[i]) begin
                mem[address1][8*i+7:8*i] <= d1[8*i+7:8*i];
            end
        end
    end
endgenerate

endmodule

