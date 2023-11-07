// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon Oct 23 13:14:13 2023
// Host        : Von-Laptop running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/vonan/Documents/ECE351/Labs/Game_Proj/ObjectRecognitionSurvivalGame/Game_Code/Game_Code.gen/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_sim_netlist.v
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
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20576)
`pragma protect data_block
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
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
