// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon Oct 23 13:14:13 2023
// Host        : Von-Laptop running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_4 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20608)
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
