//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
//Date        : Sat Nov  1 17:48:02 2025
//Host        : wolf-super-server running 64-bit Ubuntu 20.04.6 LTS
//Command     : generate_target top_level.bd
//Design      : top_level
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module axi_uart_bridge_imp_1OII57Q
   (M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    UART_rxd,
    UART_txd,
    s_axi_aclk,
    s_axi_aresetn);
  output [63:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [63:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [0:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input UART_rxd;
  output UART_txd;
  input s_axi_aclk;
  input s_axi_aresetn;

  wire [63:0]axi_uart_bridge_M_AXI_ARADDR;
  wire axi_uart_bridge_M_AXI_ARREADY;
  wire axi_uart_bridge_M_AXI_ARVALID;
  wire [63:0]axi_uart_bridge_M_AXI_AWADDR;
  wire axi_uart_bridge_M_AXI_AWREADY;
  wire axi_uart_bridge_M_AXI_AWVALID;
  wire axi_uart_bridge_M_AXI_BREADY;
  wire [1:0]axi_uart_bridge_M_AXI_BRESP;
  wire axi_uart_bridge_M_AXI_BVALID;
  wire [0:0]axi_uart_bridge_M_AXI_RDATA;
  wire axi_uart_bridge_M_AXI_RREADY;
  wire [1:0]axi_uart_bridge_M_AXI_RRESP;
  wire axi_uart_bridge_M_AXI_RVALID;
  wire [31:0]axi_uart_bridge_M_AXI_WDATA;
  wire axi_uart_bridge_M_AXI_WREADY;
  wire [3:0]axi_uart_bridge_M_AXI_WSTRB;
  wire axi_uart_bridge_M_AXI_WVALID;
  wire [31:0]axi_uart_bridge_M_UART_ARADDR;
  wire axi_uart_bridge_M_UART_ARREADY;
  wire axi_uart_bridge_M_UART_ARVALID;
  wire [31:0]axi_uart_bridge_M_UART_AWADDR;
  wire axi_uart_bridge_M_UART_AWREADY;
  wire axi_uart_bridge_M_UART_AWVALID;
  wire axi_uart_bridge_M_UART_BREADY;
  wire [1:0]axi_uart_bridge_M_UART_BRESP;
  wire axi_uart_bridge_M_UART_BVALID;
  wire [31:0]axi_uart_bridge_M_UART_RDATA;
  wire axi_uart_bridge_M_UART_RREADY;
  wire [1:0]axi_uart_bridge_M_UART_RRESP;
  wire axi_uart_bridge_M_UART_RVALID;
  wire [31:0]axi_uart_bridge_M_UART_WDATA;
  wire axi_uart_bridge_M_UART_WREADY;
  wire [3:0]axi_uart_bridge_M_UART_WSTRB;
  wire axi_uart_bridge_M_UART_WVALID;
  wire source_100mhz_clk_100mhz;
  wire source_100mhz_peripheral_aresetn;
  wire uart_UART_RxD;
  wire uart_UART_TxD;
  wire uart_interrupt;

  assign M_AXI_araddr[63:0] = axi_uart_bridge_M_AXI_ARADDR;
  assign M_AXI_arvalid = axi_uart_bridge_M_AXI_ARVALID;
  assign M_AXI_awaddr[63:0] = axi_uart_bridge_M_AXI_AWADDR;
  assign M_AXI_awvalid = axi_uart_bridge_M_AXI_AWVALID;
  assign M_AXI_bready = axi_uart_bridge_M_AXI_BREADY;
  assign M_AXI_rready = axi_uart_bridge_M_AXI_RREADY;
  assign M_AXI_wdata[31:0] = axi_uart_bridge_M_AXI_WDATA;
  assign M_AXI_wstrb[3:0] = axi_uart_bridge_M_AXI_WSTRB;
  assign M_AXI_wvalid = axi_uart_bridge_M_AXI_WVALID;
  assign UART_txd = uart_UART_TxD;
  assign axi_uart_bridge_M_AXI_ARREADY = M_AXI_arready;
  assign axi_uart_bridge_M_AXI_AWREADY = M_AXI_awready;
  assign axi_uart_bridge_M_AXI_BRESP = M_AXI_bresp[1:0];
  assign axi_uart_bridge_M_AXI_BVALID = M_AXI_bvalid;
  assign axi_uart_bridge_M_AXI_RDATA = M_AXI_rdata[0];
  assign axi_uart_bridge_M_AXI_RRESP = M_AXI_rresp[1:0];
  assign axi_uart_bridge_M_AXI_RVALID = M_AXI_rvalid;
  assign axi_uart_bridge_M_AXI_WREADY = M_AXI_wready;
  assign source_100mhz_clk_100mhz = s_axi_aclk;
  assign source_100mhz_peripheral_aresetn = s_axi_aresetn;
  assign uart_UART_RxD = UART_rxd;
  top_level_axi_uart_bridge_0_0 axi_uart_bridge
       (.M_AXI_ARADDR(axi_uart_bridge_M_AXI_ARADDR),
        .M_AXI_ARREADY(axi_uart_bridge_M_AXI_ARREADY),
        .M_AXI_ARVALID(axi_uart_bridge_M_AXI_ARVALID),
        .M_AXI_AWADDR(axi_uart_bridge_M_AXI_AWADDR),
        .M_AXI_AWREADY(axi_uart_bridge_M_AXI_AWREADY),
        .M_AXI_AWVALID(axi_uart_bridge_M_AXI_AWVALID),
        .M_AXI_BREADY(axi_uart_bridge_M_AXI_BREADY),
        .M_AXI_BRESP(axi_uart_bridge_M_AXI_BRESP),
        .M_AXI_BVALID(axi_uart_bridge_M_AXI_BVALID),
        .M_AXI_RDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_uart_bridge_M_AXI_RDATA}),
        .M_AXI_RREADY(axi_uart_bridge_M_AXI_RREADY),
        .M_AXI_RRESP(axi_uart_bridge_M_AXI_RRESP),
        .M_AXI_RVALID(axi_uart_bridge_M_AXI_RVALID),
        .M_AXI_WDATA(axi_uart_bridge_M_AXI_WDATA),
        .M_AXI_WREADY(axi_uart_bridge_M_AXI_WREADY),
        .M_AXI_WSTRB(axi_uart_bridge_M_AXI_WSTRB),
        .M_AXI_WVALID(axi_uart_bridge_M_AXI_WVALID),
        .M_UART_ARADDR(axi_uart_bridge_M_UART_ARADDR),
        .M_UART_ARREADY(axi_uart_bridge_M_UART_ARREADY),
        .M_UART_ARVALID(axi_uart_bridge_M_UART_ARVALID),
        .M_UART_AWADDR(axi_uart_bridge_M_UART_AWADDR),
        .M_UART_AWREADY(axi_uart_bridge_M_UART_AWREADY),
        .M_UART_AWVALID(axi_uart_bridge_M_UART_AWVALID),
        .M_UART_BREADY(axi_uart_bridge_M_UART_BREADY),
        .M_UART_BRESP(axi_uart_bridge_M_UART_BRESP),
        .M_UART_BVALID(axi_uart_bridge_M_UART_BVALID),
        .M_UART_RDATA(axi_uart_bridge_M_UART_RDATA),
        .M_UART_RREADY(axi_uart_bridge_M_UART_RREADY),
        .M_UART_RRESP(axi_uart_bridge_M_UART_RRESP),
        .M_UART_RVALID(axi_uart_bridge_M_UART_RVALID),
        .M_UART_WDATA(axi_uart_bridge_M_UART_WDATA),
        .M_UART_WREADY(axi_uart_bridge_M_UART_WREADY),
        .M_UART_WSTRB(axi_uart_bridge_M_UART_WSTRB),
        .M_UART_WVALID(axi_uart_bridge_M_UART_WVALID),
        .UART_INT(uart_interrupt),
        .aclk(source_100mhz_clk_100mhz),
        .aresetn(source_100mhz_peripheral_aresetn));
  top_level_axi_uartlite_0_0 uart
       (.interrupt(uart_interrupt),
        .rx(uart_UART_RxD),
        .s_axi_aclk(source_100mhz_clk_100mhz),
        .s_axi_araddr(axi_uart_bridge_M_UART_ARADDR[3:0]),
        .s_axi_aresetn(source_100mhz_peripheral_aresetn),
        .s_axi_arready(axi_uart_bridge_M_UART_ARREADY),
        .s_axi_arvalid(axi_uart_bridge_M_UART_ARVALID),
        .s_axi_awaddr(axi_uart_bridge_M_UART_AWADDR[3:0]),
        .s_axi_awready(axi_uart_bridge_M_UART_AWREADY),
        .s_axi_awvalid(axi_uart_bridge_M_UART_AWVALID),
        .s_axi_bready(axi_uart_bridge_M_UART_BREADY),
        .s_axi_bresp(axi_uart_bridge_M_UART_BRESP),
        .s_axi_bvalid(axi_uart_bridge_M_UART_BVALID),
        .s_axi_rdata(axi_uart_bridge_M_UART_RDATA),
        .s_axi_rready(axi_uart_bridge_M_UART_RREADY),
        .s_axi_rresp(axi_uart_bridge_M_UART_RRESP),
        .s_axi_rvalid(axi_uart_bridge_M_UART_RVALID),
        .s_axi_wdata(axi_uart_bridge_M_UART_WDATA),
        .s_axi_wready(axi_uart_bridge_M_UART_WREADY),
        .s_axi_wstrb(axi_uart_bridge_M_UART_WSTRB),
        .s_axi_wvalid(axi_uart_bridge_M_UART_WVALID),
        .tx(uart_UART_TxD));
endmodule

module source_100mhz_imp_MSWE0P
   (CLK100MHZ,
    CPU_RESETN,
    clk_100mhz,
    peripheral_aresetn);
  input CLK100MHZ;
  input CPU_RESETN;
  output clk_100mhz;
  output [0:0]peripheral_aresetn;

  wire clk_in1_0_1;
  wire ext_reset_in_0_1;
  wire [0:0]proc_sys_reset_0_peripheral_aresetn;
  wire system_clock_clk_100mhz;

  assign clk_100mhz = system_clock_clk_100mhz;
  assign clk_in1_0_1 = CLK100MHZ;
  assign ext_reset_in_0_1 = CPU_RESETN;
  assign peripheral_aresetn[0] = proc_sys_reset_0_peripheral_aresetn;
  top_level_clk_wiz_0_0 system_clock
       (.clk_100mhz(system_clock_clk_100mhz),
        .clk_in1(clk_in1_0_1));
  top_level_proc_sys_reset_0_0 system_reset
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(ext_reset_in_0_1),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .slowest_sync_clk(system_clock_clk_100mhz));
endmodule

module stopwatch_imp_19FYJYR
   (S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid,
    clear,
    clk,
    digit_enable,
    display,
    dp_enable,
    resetn,
    start);
  input [0:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [0:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [0:0]S_AXI_wdata;
  output S_AXI_wready;
  input [0:0]S_AXI_wstrb;
  input S_AXI_wvalid;
  input clear;
  input clk;
  output [7:0]digit_enable;
  output [31:0]display;
  output [7:0]dp_enable;
  input resetn;
  input start;

  wire axi_configuration_latch_test_value;
  wire [31:0]axi_configuration_test_value;
  wire button_0_Q;
  wire clear_button_Q;
  wire source_100mhz_clk_100mhz;
  wire source_100mhz_peripheral_aresetn;
  wire [7:0]stopwatch_digit_enable;
  wire [31:0]stopwatch_display;
  wire [7:0]stopwatch_dp_enable;
  wire [0:0]system_interconnect_M00_AXI_ARADDR;
  wire [2:0]system_interconnect_M00_AXI_ARPROT;
  wire system_interconnect_M00_AXI_ARREADY;
  wire system_interconnect_M00_AXI_ARVALID;
  wire [0:0]system_interconnect_M00_AXI_AWADDR;
  wire [2:0]system_interconnect_M00_AXI_AWPROT;
  wire system_interconnect_M00_AXI_AWREADY;
  wire system_interconnect_M00_AXI_AWVALID;
  wire system_interconnect_M00_AXI_BREADY;
  wire [1:0]system_interconnect_M00_AXI_BRESP;
  wire system_interconnect_M00_AXI_BVALID;
  wire [31:0]system_interconnect_M00_AXI_RDATA;
  wire system_interconnect_M00_AXI_RREADY;
  wire [1:0]system_interconnect_M00_AXI_RRESP;
  wire system_interconnect_M00_AXI_RVALID;
  wire [0:0]system_interconnect_M00_AXI_WDATA;
  wire system_interconnect_M00_AXI_WREADY;
  wire [0:0]system_interconnect_M00_AXI_WSTRB;
  wire system_interconnect_M00_AXI_WVALID;

  assign S_AXI_arready = system_interconnect_M00_AXI_ARREADY;
  assign S_AXI_awready = system_interconnect_M00_AXI_AWREADY;
  assign S_AXI_bresp[1:0] = system_interconnect_M00_AXI_BRESP;
  assign S_AXI_bvalid = system_interconnect_M00_AXI_BVALID;
  assign S_AXI_rdata[31:0] = system_interconnect_M00_AXI_RDATA;
  assign S_AXI_rresp[1:0] = system_interconnect_M00_AXI_RRESP;
  assign S_AXI_rvalid = system_interconnect_M00_AXI_RVALID;
  assign S_AXI_wready = system_interconnect_M00_AXI_WREADY;
  assign button_0_Q = start;
  assign clear_button_Q = clear;
  assign digit_enable[7:0] = stopwatch_digit_enable;
  assign display[31:0] = stopwatch_display;
  assign dp_enable[7:0] = stopwatch_dp_enable;
  assign source_100mhz_clk_100mhz = clk;
  assign source_100mhz_peripheral_aresetn = resetn;
  assign system_interconnect_M00_AXI_ARADDR = S_AXI_araddr[0];
  assign system_interconnect_M00_AXI_ARPROT = S_AXI_arprot[2:0];
  assign system_interconnect_M00_AXI_ARVALID = S_AXI_arvalid;
  assign system_interconnect_M00_AXI_AWADDR = S_AXI_awaddr[0];
  assign system_interconnect_M00_AXI_AWPROT = S_AXI_awprot[2:0];
  assign system_interconnect_M00_AXI_AWVALID = S_AXI_awvalid;
  assign system_interconnect_M00_AXI_BREADY = S_AXI_bready;
  assign system_interconnect_M00_AXI_RREADY = S_AXI_rready;
  assign system_interconnect_M00_AXI_WDATA = S_AXI_wdata[0];
  assign system_interconnect_M00_AXI_WSTRB = S_AXI_wstrb[0];
  assign system_interconnect_M00_AXI_WVALID = S_AXI_wvalid;
  top_level_stopwatch_0_0 stopwatch
       (.clear(clear_button_Q),
        .clk(source_100mhz_clk_100mhz),
        .digit_enable(stopwatch_digit_enable),
        .display(stopwatch_display),
        .dp_enable(stopwatch_dp_enable),
        .latch_test_value(axi_configuration_latch_test_value),
        .start(button_0_Q),
        .test_value(axi_configuration_test_value));
  top_level_configuration_0_0 sw_configuration
       (.S_AXI_ARADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,system_interconnect_M00_AXI_ARADDR}),
        .S_AXI_ARPROT(system_interconnect_M00_AXI_ARPROT),
        .S_AXI_ARREADY(system_interconnect_M00_AXI_ARREADY),
        .S_AXI_ARVALID(system_interconnect_M00_AXI_ARVALID),
        .S_AXI_AWADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,system_interconnect_M00_AXI_AWADDR}),
        .S_AXI_AWPROT(system_interconnect_M00_AXI_AWPROT),
        .S_AXI_AWREADY(system_interconnect_M00_AXI_AWREADY),
        .S_AXI_AWVALID(system_interconnect_M00_AXI_AWVALID),
        .S_AXI_BREADY(system_interconnect_M00_AXI_BREADY),
        .S_AXI_BRESP(system_interconnect_M00_AXI_BRESP),
        .S_AXI_BVALID(system_interconnect_M00_AXI_BVALID),
        .S_AXI_RDATA(system_interconnect_M00_AXI_RDATA),
        .S_AXI_RREADY(system_interconnect_M00_AXI_RREADY),
        .S_AXI_RRESP(system_interconnect_M00_AXI_RRESP),
        .S_AXI_RVALID(system_interconnect_M00_AXI_RVALID),
        .S_AXI_WDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,system_interconnect_M00_AXI_WDATA}),
        .S_AXI_WREADY(system_interconnect_M00_AXI_WREADY),
        .S_AXI_WSTRB({1'b1,1'b1,1'b1,system_interconnect_M00_AXI_WSTRB}),
        .S_AXI_WVALID(system_interconnect_M00_AXI_WVALID),
        .clk(source_100mhz_clk_100mhz),
        .latch_test_value(axi_configuration_latch_test_value),
        .resetn(source_100mhz_peripheral_aresetn),
        .test_value(axi_configuration_test_value));
endmodule

(* CORE_GENERATION_INFO = "top_level,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=top_level,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=13,numReposBlks=10,numNonXlnxBlks=0,numHierBlks=3,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=6,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "top_level.hwdef" *) 
module top_level
   (AN,
    BTND,
    BTNU,
    CLK100MHZ,
    CPU_RESETN,
    SEG,
    UART_rxd,
    UART_txd);
  output [7:0]AN;
  input BTND;
  input BTNU;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK100MHZ CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK100MHZ, CLK_DOMAIN top_level_CLK100MHZ, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input CLK100MHZ;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.CPU_RESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.CPU_RESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input CPU_RESETN;
  output [7:0]SEG;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 UART RxD" *) input UART_rxd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 UART TxD" *) output UART_txd;

  wire PIN_0_1;
  wire PIN_0_2;
  wire [63:0]axi_uart_bridge_M_AXI_ARADDR;
  wire [0:0]axi_uart_bridge_M_AXI_ARREADY;
  wire axi_uart_bridge_M_AXI_ARVALID;
  wire [63:0]axi_uart_bridge_M_AXI_AWADDR;
  wire [0:0]axi_uart_bridge_M_AXI_AWREADY;
  wire axi_uart_bridge_M_AXI_AWVALID;
  wire axi_uart_bridge_M_AXI_BREADY;
  wire [1:0]axi_uart_bridge_M_AXI_BRESP;
  wire [0:0]axi_uart_bridge_M_AXI_BVALID;
  wire axi_uart_bridge_M_AXI_RDATA;
  wire axi_uart_bridge_M_AXI_RREADY;
  wire [1:0]axi_uart_bridge_M_AXI_RRESP;
  wire [0:0]axi_uart_bridge_M_AXI_RVALID;
  wire [31:0]axi_uart_bridge_M_AXI_WDATA;
  wire [0:0]axi_uart_bridge_M_AXI_WREADY;
  wire [3:0]axi_uart_bridge_M_AXI_WSTRB;
  wire axi_uart_bridge_M_AXI_WVALID;
  wire button_0_Q;
  wire clear_button_Q;
  wire clk_in1_0_1;
  wire ext_reset_in_0_1;
  wire [7:0]sevenseg_driver_0_ANODE;
  wire [7:0]sevenseg_driver_0_CATHODE;
  wire source_100mhz_clk_100mhz;
  wire [0:0]source_100mhz_peripheral_aresetn;
  wire [7:0]stopwatch_digit_enable;
  wire [31:0]stopwatch_display;
  wire [7:0]stopwatch_dp_enable;
  wire system_interconnect_M00_AXI_ARADDR;
  wire [2:0]system_interconnect_M00_AXI_ARPROT;
  wire system_interconnect_M00_AXI_ARREADY;
  wire [0:0]system_interconnect_M00_AXI_ARVALID;
  wire system_interconnect_M00_AXI_AWADDR;
  wire [2:0]system_interconnect_M00_AXI_AWPROT;
  wire system_interconnect_M00_AXI_AWREADY;
  wire [0:0]system_interconnect_M00_AXI_AWVALID;
  wire [0:0]system_interconnect_M00_AXI_BREADY;
  wire [1:0]system_interconnect_M00_AXI_BRESP;
  wire system_interconnect_M00_AXI_BVALID;
  wire [31:0]system_interconnect_M00_AXI_RDATA;
  wire [0:0]system_interconnect_M00_AXI_RREADY;
  wire [1:0]system_interconnect_M00_AXI_RRESP;
  wire system_interconnect_M00_AXI_RVALID;
  wire system_interconnect_M00_AXI_WDATA;
  wire system_interconnect_M00_AXI_WREADY;
  wire system_interconnect_M00_AXI_WSTRB;
  wire [0:0]system_interconnect_M00_AXI_WVALID;
  wire uart_UART_RxD;
  wire uart_UART_TxD;

  assign AN[7:0] = sevenseg_driver_0_ANODE;
  assign PIN_0_1 = BTND;
  assign PIN_0_2 = BTNU;
  assign SEG[7:0] = sevenseg_driver_0_CATHODE;
  assign UART_txd = uart_UART_TxD;
  assign clk_in1_0_1 = CLK100MHZ;
  assign ext_reset_in_0_1 = CPU_RESETN;
  assign uart_UART_RxD = UART_rxd;
  axi_uart_bridge_imp_1OII57Q axi_uart_bridge
       (.M_AXI_araddr(axi_uart_bridge_M_AXI_ARADDR),
        .M_AXI_arready(axi_uart_bridge_M_AXI_ARREADY),
        .M_AXI_arvalid(axi_uart_bridge_M_AXI_ARVALID),
        .M_AXI_awaddr(axi_uart_bridge_M_AXI_AWADDR),
        .M_AXI_awready(axi_uart_bridge_M_AXI_AWREADY),
        .M_AXI_awvalid(axi_uart_bridge_M_AXI_AWVALID),
        .M_AXI_bready(axi_uart_bridge_M_AXI_BREADY),
        .M_AXI_bresp(axi_uart_bridge_M_AXI_BRESP),
        .M_AXI_bvalid(axi_uart_bridge_M_AXI_BVALID),
        .M_AXI_rdata(axi_uart_bridge_M_AXI_RDATA),
        .M_AXI_rready(axi_uart_bridge_M_AXI_RREADY),
        .M_AXI_rresp(axi_uart_bridge_M_AXI_RRESP),
        .M_AXI_rvalid(axi_uart_bridge_M_AXI_RVALID),
        .M_AXI_wdata(axi_uart_bridge_M_AXI_WDATA),
        .M_AXI_wready(axi_uart_bridge_M_AXI_WREADY),
        .M_AXI_wstrb(axi_uart_bridge_M_AXI_WSTRB),
        .M_AXI_wvalid(axi_uart_bridge_M_AXI_WVALID),
        .UART_rxd(uart_UART_RxD),
        .UART_txd(uart_UART_TxD),
        .s_axi_aclk(source_100mhz_clk_100mhz),
        .s_axi_aresetn(source_100mhz_peripheral_aresetn));
  top_level_start_button_0 clear_button
       (.CLK(source_100mhz_clk_100mhz),
        .PIN(PIN_0_1),
        .Q(clear_button_Q));
  top_level_sevenseg_driver_0_0 sevenseg_driver
       (.ANODE(sevenseg_driver_0_ANODE),
        .CATHODE(sevenseg_driver_0_CATHODE),
        .clk(source_100mhz_clk_100mhz),
        .digit_enable(stopwatch_digit_enable),
        .display(stopwatch_display),
        .dp_enable(stopwatch_dp_enable),
        .resetn(source_100mhz_peripheral_aresetn));
  source_100mhz_imp_MSWE0P source_100mhz
       (.CLK100MHZ(clk_in1_0_1),
        .CPU_RESETN(ext_reset_in_0_1),
        .clk_100mhz(source_100mhz_clk_100mhz),
        .peripheral_aresetn(source_100mhz_peripheral_aresetn));
  top_level_button_0_0 start_button
       (.CLK(source_100mhz_clk_100mhz),
        .PIN(PIN_0_2),
        .Q(button_0_Q));
  stopwatch_imp_19FYJYR stopwatch
       (.S_AXI_araddr(system_interconnect_M00_AXI_ARADDR),
        .S_AXI_arprot(system_interconnect_M00_AXI_ARPROT),
        .S_AXI_arready(system_interconnect_M00_AXI_ARREADY),
        .S_AXI_arvalid(system_interconnect_M00_AXI_ARVALID),
        .S_AXI_awaddr(system_interconnect_M00_AXI_AWADDR),
        .S_AXI_awprot(system_interconnect_M00_AXI_AWPROT),
        .S_AXI_awready(system_interconnect_M00_AXI_AWREADY),
        .S_AXI_awvalid(system_interconnect_M00_AXI_AWVALID),
        .S_AXI_bready(system_interconnect_M00_AXI_BREADY),
        .S_AXI_bresp(system_interconnect_M00_AXI_BRESP),
        .S_AXI_bvalid(system_interconnect_M00_AXI_BVALID),
        .S_AXI_rdata(system_interconnect_M00_AXI_RDATA),
        .S_AXI_rready(system_interconnect_M00_AXI_RREADY),
        .S_AXI_rresp(system_interconnect_M00_AXI_RRESP),
        .S_AXI_rvalid(system_interconnect_M00_AXI_RVALID),
        .S_AXI_wdata(system_interconnect_M00_AXI_WDATA),
        .S_AXI_wready(system_interconnect_M00_AXI_WREADY),
        .S_AXI_wstrb(system_interconnect_M00_AXI_WSTRB),
        .S_AXI_wvalid(system_interconnect_M00_AXI_WVALID),
        .clear(clear_button_Q),
        .clk(source_100mhz_clk_100mhz),
        .digit_enable(stopwatch_digit_enable),
        .display(stopwatch_display),
        .dp_enable(stopwatch_dp_enable),
        .resetn(source_100mhz_peripheral_aresetn),
        .start(button_0_Q));
  top_level_smartconnect_0_0 system_interconnect
       (.M00_AXI_araddr(system_interconnect_M00_AXI_ARADDR),
        .M00_AXI_arprot(system_interconnect_M00_AXI_ARPROT),
        .M00_AXI_arready(system_interconnect_M00_AXI_ARREADY),
        .M00_AXI_arvalid(system_interconnect_M00_AXI_ARVALID),
        .M00_AXI_awaddr(system_interconnect_M00_AXI_AWADDR),
        .M00_AXI_awprot(system_interconnect_M00_AXI_AWPROT),
        .M00_AXI_awready(system_interconnect_M00_AXI_AWREADY),
        .M00_AXI_awvalid(system_interconnect_M00_AXI_AWVALID),
        .M00_AXI_bid(1'b0),
        .M00_AXI_bready(system_interconnect_M00_AXI_BREADY),
        .M00_AXI_bresp(system_interconnect_M00_AXI_BRESP),
        .M00_AXI_buser(1'b0),
        .M00_AXI_bvalid(system_interconnect_M00_AXI_BVALID),
        .M00_AXI_rdata(system_interconnect_M00_AXI_RDATA[0]),
        .M00_AXI_rid(1'b0),
        .M00_AXI_rlast(1'b0),
        .M00_AXI_rready(system_interconnect_M00_AXI_RREADY),
        .M00_AXI_rresp(system_interconnect_M00_AXI_RRESP),
        .M00_AXI_ruser(1'b0),
        .M00_AXI_rvalid(system_interconnect_M00_AXI_RVALID),
        .M00_AXI_wdata(system_interconnect_M00_AXI_WDATA),
        .M00_AXI_wready(system_interconnect_M00_AXI_WREADY),
        .M00_AXI_wstrb(system_interconnect_M00_AXI_WSTRB),
        .M00_AXI_wvalid(system_interconnect_M00_AXI_WVALID),
        .S00_AXI_araddr(axi_uart_bridge_M_AXI_ARADDR[0]),
        .S00_AXI_arburst({1'b0,1'b1}),
        .S00_AXI_arcache({1'b0,1'b0,1'b1,1'b1}),
        .S00_AXI_arid(1'b0),
        .S00_AXI_arlen(1'b0),
        .S00_AXI_arlock(1'b0),
        .S00_AXI_arprot({1'b0,1'b0,1'b0}),
        .S00_AXI_arqos({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_arready(axi_uart_bridge_M_AXI_ARREADY),
        .S00_AXI_arregion({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_arsize({1'b0,1'b1,1'b0}),
        .S00_AXI_aruser(1'b0),
        .S00_AXI_arvalid(axi_uart_bridge_M_AXI_ARVALID),
        .S00_AXI_awaddr(axi_uart_bridge_M_AXI_AWADDR[0]),
        .S00_AXI_awburst({1'b0,1'b1}),
        .S00_AXI_awcache({1'b0,1'b0,1'b1,1'b1}),
        .S00_AXI_awid(1'b0),
        .S00_AXI_awlen(1'b0),
        .S00_AXI_awlock(1'b0),
        .S00_AXI_awprot({1'b0,1'b0,1'b0}),
        .S00_AXI_awqos({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_awready(axi_uart_bridge_M_AXI_AWREADY),
        .S00_AXI_awregion({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_awsize({1'b0,1'b1,1'b0}),
        .S00_AXI_awuser(1'b0),
        .S00_AXI_awvalid(axi_uart_bridge_M_AXI_AWVALID),
        .S00_AXI_bready(axi_uart_bridge_M_AXI_BREADY),
        .S00_AXI_bresp(axi_uart_bridge_M_AXI_BRESP),
        .S00_AXI_bvalid(axi_uart_bridge_M_AXI_BVALID),
        .S00_AXI_rdata(axi_uart_bridge_M_AXI_RDATA),
        .S00_AXI_rready(axi_uart_bridge_M_AXI_RREADY),
        .S00_AXI_rresp(axi_uart_bridge_M_AXI_RRESP),
        .S00_AXI_rvalid(axi_uart_bridge_M_AXI_RVALID),
        .S00_AXI_wdata(axi_uart_bridge_M_AXI_WDATA[0]),
        .S00_AXI_wid(1'b0),
        .S00_AXI_wlast(1'b0),
        .S00_AXI_wready(axi_uart_bridge_M_AXI_WREADY),
        .S00_AXI_wstrb(axi_uart_bridge_M_AXI_WSTRB[0]),
        .S00_AXI_wuser(1'b0),
        .S00_AXI_wvalid(axi_uart_bridge_M_AXI_WVALID),
        .aclk(source_100mhz_clk_100mhz),
        .aresetn(source_100mhz_peripheral_aresetn));
endmodule
