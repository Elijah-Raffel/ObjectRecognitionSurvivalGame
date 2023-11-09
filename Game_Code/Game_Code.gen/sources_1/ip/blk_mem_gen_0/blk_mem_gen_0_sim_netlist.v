// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon Nov  6 22:49:15 2023
// Host        : Von-Laptop running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top blk_mem_gen_0 -prefix
//               blk_mem_gen_0_ blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module blk_mem_gen_0
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [3:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [7:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [7:0]douta;

  wire [3:0]addra;
  wire clka;
  wire [7:0]dina;
  wire [7:0]douta;
  wire ena;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [7:0]NLW_U0_doutb_UNCONNECTED;
  wire [3:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "4" *) 
  (* C_ADDRB_WIDTH = "4" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.54005 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "blk_mem_gen_0.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "16" *) 
  (* C_READ_DEPTH_B = "16" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "8" *) 
  (* C_READ_WIDTH_B = "8" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "16" *) 
  (* C_WRITE_DEPTH_B = "16" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  blk_mem_gen_0_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[7:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[3:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[3:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[7:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
QGLtnqZzRetDH6gCWT4Js6wuLlZfrNx/VJp3sfR2NF+cxypO5AxN0oDKLJJtmdrtE/ueNDg+Qf7Z
TqBNRojORA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
B6Ger3hRvfjHkaJ+W8639Kl3TzC9TogLuklOXEiMNdc4Im+DjEUzxb3DKlzu0VW3zxZqjJ3+wsW/
LnRmPCESi5Y9eRJaLFXg79EMfoj4X+nTdHAP6yCfltBADKegZ12gpnB/8ey5yn2KA74LUtPC7jna
iyjqSfsWLGnz6UdXzwk=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BX+DxgMPRyZbYojCUR9Sk8Lq+3ZigBz4yMFHQkmurfdfDzyTPJCE827eGiPyTenK1QPVhEtf9g06
0BFXq/0COPuU1BWJwdkz1c4dE6/exDwhvEh+hPx3vRY6z8fDEf6aGVIXrHDvrmddehe7yMSIpo+k
aXHR06EEdfHCFY4TggYwhcJVXjkE+ApsVuyfmEfPmYjo8hCWyQyBsUWIOY03q1+MvUjjsmTwgs9g
fh5MY9ToaLfoJxPKdCpsqrBX4LJ+VDGFlAqIcqHTE2jCmPiToZAFXB7fzf1wDjFCBlJyFVDBGi0i
m+CouLSb7X1mvVhdDZgNrZDJMV688Bu3o54vew==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DaIU/Ddc8USbZ2mURzujJDWDH1JbHl5tFVOOQ2aVaUPIA71yyE38OXVLEtF8rNmujYH30nEeQ+FV
LVJ16aaHw+iiuaqorTM3K5KLohVlN+WlcEtSXHuPNHjw8ddqtzpaX7pH1zqZH+YmfCL5oaNLqDH4
rkBnUl0/Gm/hzSwKjYhXGQFYQ+gGP99OjXakzrAqZzp/Iq4gt+Z5902/JV9thd/isHQImJ0QyK8M
EKM579iPAfXGes2mbiNYHcvDmSPYmW1zlhOE++N1EKeea7j/msnKeyhlC+hGE4Xfn4TVvqgQexCT
rp/wS/MosY6WH1aKFQlFH2hEppA7KXUaQlvG+w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
XmWoAt4X8hrCJ5yTyug4ajJW5UhfkLNibzjihWzZ4Cr9hQSvWZoTc8rjGsLPbz6Le+/9iI5KxecS
eR0wiAO+G2IkwhZgVBeZdKoFnlnTVAyLjk9wMAFXNyJZM6b1NDbfXlPcUsC6JePvPlwwdWknkSsC
r3KvgkWAS+O3xvRmaNw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Hw3Y+rShKrXiUViyNU1/O2qv6TgheLHBnFMj1i9MUGrHYqh9pLfLYUgWR7S2vj4jv4S+Ks0BpP4p
dKEqVAFmTCfQNEUHaVcFPkOHgig6L4mhLY6HUUKJoRgiQepgLi/W3V+ZZPQSQFkB3CU4MsJzhXvR
yLcpDriZy8cnAHD87Zi5DrNGBzj3kigJeM0du6lCQbxtF5aEdoaNP+YTnIFtcqYhoYnswQlYt0sV
HKgFA8VzqzL5WYnpH7+1IKmFkJBHkyqHCa9wPK0qCKnxkuDj70YzPVqQ+cocdKU+/gNdpCOdZlci
F2HTxrgfrXndJru3TiDqu4UavqAe0MNuFp3t0w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XPVggoWL6aXz+MpODTOZhEUQDa0vfEnUDaYeEHXm2vGyqKJujN2c/FFAFBeBYdJATLsIsQ+BqoPc
pBbcFYXDBfOtFIW2dH6Y1OoD65KyJ/hAq8coa21kFgq4hFat5vzZ2iIfkCpTUr4vDZO7Xne8cZO9
WsHffoTCt5rS59wWm2b8I5R8Eh2TUbQg3RCyrcnD66cvcEnlXe1CNMQ4/loVJpA4IBinBf820Wjc
vw2fZbGI0jXC+ACSHOviH63Xwmn+aRV5Ppkup7IYoon/ieKapRQeASu3TTY37xSBXiInSdtMTzJ6
+4GfO4eSHVriCk/sWbuTBzfRzoSShrnHjzz5LA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
L78XuiswVcgO2gtebzL7SA9BC/jJGAM0v6S9pzmyqL+QYzRneiYeGyDmsW33jEVVSTuNjTXkBLY7
yTOKQruatwe4V0OLi6174saSAmPgerSV1GyLP7KhmusLV/N61avC9TPam+tekhKeE0tds4EnJ3et
4JdLh+SE4Z4pcuqCjB5MFneIYKKWDx7siU6oesAQtoSJOesfMchX63MhOjOHFP/ch+1gHv3T45hg
IGF7V7TrdREVE4f9631tlVJ1o2Dypsmo/76Itz5WCGlTMjAnWXN8IXxKN+PZ3dyt1wjrZm2P/td+
xiGszFnSLrRvw/HferwtSmRx8q0fiHZ88roGTw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kDX5kq2QEe25429T6vQqBCFvV1McKTJRYfK99ymVNK2GGvGLXSzgwJHwB2fj9rM0wme3zYYY0vQR
x+9F4L7KLlOVY6qY3LB59uDzyXBI3mMZaS905HXHJkdZHWtQWpfHhl27LqL+8FSluaD6F+KFfYOV
CwIOVuCIp/XjxFXpNBik7YiPt4kHOlDA97IXNLnYUn/g1csGqeNWce4UTne50ggWvLYGbTFGmTjT
N67TpUiGRVRCSv8Tax72GWFIMFZk3Tlp68ZUSQEybZMWX1U9XdMdtxfvNGhf8mi5jQJ2SupSzKu4
T/+53IN9T8aLePAiGBKKG1ZBj4y1ZyYA7XYvjw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20304)
`pragma protect data_block
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
eTlWffkypZPaaD88
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
