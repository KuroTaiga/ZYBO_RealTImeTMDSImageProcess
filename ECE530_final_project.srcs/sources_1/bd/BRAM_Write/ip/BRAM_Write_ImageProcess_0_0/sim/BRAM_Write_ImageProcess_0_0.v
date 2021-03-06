// (c) Copyright 1995-2019 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:ImageProcess:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module BRAM_Write_ImageProcess_0_0 (
  pattern,
  i_VDE,
  i_pixelData,
  o_pixelData,
  o_VDE,
  VSync,
  HSync,
  rota,
  rotb,
  rota2,
  rotb2,
  dispON,
  Reset,
  Clock,
  bramAddr,
  color_data,
  BRAM_enable
);

input wire [2 : 0] pattern;
input wire i_VDE;
input wire [23 : 0] i_pixelData;
output wire [23 : 0] o_pixelData;
output wire o_VDE;
input wire VSync;
input wire HSync;
input wire rota;
input wire rotb;
input wire rota2;
input wire rotb2;
input wire dispON;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME Reset, POLARITY ACTIVE_HIGH" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 Reset RST" *)
input wire Reset;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME Clock, ASSOCIATED_RESET Reset, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN BRAM_Write_dvi2rgb_0_0_PixelClk" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 Clock CLK" *)
input wire Clock;
output wire [15 : 0] bramAddr;
input wire [24 : 0] color_data;
output wire BRAM_enable;

  ImageProcess #(
    .XADRSWidth(11),
    .YADRSWidth(10),
    .ramDataWidth(7),
    .RamWidth(128),
    .MEM_SIZE(16384)
  ) inst (
    .pattern(pattern),
    .i_VDE(i_VDE),
    .i_pixelData(i_pixelData),
    .o_pixelData(o_pixelData),
    .o_VDE(o_VDE),
    .VSync(VSync),
    .HSync(HSync),
    .rota(rota),
    .rotb(rotb),
    .rota2(rota2),
    .rotb2(rotb2),
    .dispON(dispON),
    .Reset(Reset),
    .Clock(Clock),
    .bramAddr(bramAddr),
    .color_data(color_data),
    .BRAM_enable(BRAM_enable)
  );
endmodule
