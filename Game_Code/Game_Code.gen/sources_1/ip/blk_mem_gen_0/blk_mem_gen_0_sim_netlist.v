// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon Nov  6 22:49:16 2023
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20592)
`pragma protect data_block
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
rXEwpqUn0Ky1iyJdlGAh
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
