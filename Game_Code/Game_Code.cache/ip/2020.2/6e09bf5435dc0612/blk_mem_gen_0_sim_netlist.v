// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon Nov  6 22:49:15 2023
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
98DwJedm/S5qhTRtHNQPkUX1aQEcvwY8kuyGNomCr/6jORAR/mIBFAlv3yMVSqbK0eLB+Xe80P22
HU7mm1qILI5AAjtyQcqs8A5Umle+4RyrUISrjp8knInYPxyA6omHMzZDJ18x0IdnQ3Q5CFi95z5F
7W7VUWuQX98IjU6roJE+8qoC8moMFOZrcY3mlVxF9diNA7PER2XxHkbjEvHY2Mrxz0ilS6iILERW
LUwVrvO/HdOxd57GW/5rJMlz4iV2livcclScQgCegv7LYuNFU4Nre64aXqz4WqcWOHJPRLjWZN5F
Bul7QOgg+iaT8zrKgfkbIvyDjwBMaU3+Q9kdhLl0CMCO11hPPx80XMUFY1PWS0R+MscMlnOMwUKI
eK5x8GbgjcNR91tRgRVutbC465fksAgEOoQAHOubnrFoX3IskJuKy+e156YAlUqpWxZ0D8JBMt+X
ibs5ebmFt285AUVqOOs9R5aa3BD1eYCLZSsXVkepruyFyCyN/re+5UMnyxMxVF5MkjonFTsmpt7e
wTH0B9S0e01gC2V8NI52kI/zUbPU/3r92cJXO5OrlzkErpOgOUebMalczAXRHlDXpd1OZTP/7d5a
OWhrpzq/Z7LFJKPONQnWU/Txjpv4A4BUtyCIfVZq17G3mpO7wJ2HhDsfbfCmei38LU3r6kYt1Rln
9aNFbxmUP1BtskPWBLw0SZiQ3R4McK2KBMYJNZsAjz1N6xKD4leK/wPHKYj1CmZJiJnWf37sLzwQ
gIsoOmAyJcCa19G8UoENB8AjRWek5WYuUBNVotbjGUGKK2yqLTX9B3lAHqxqEcHEj8axuRKSIPIc
M08aZojmAzLgC8ISx8N/GrmXBzvqGVoTYHGYu3EcXAjMJP420y0rCr5ix7UGwTGX72dbfPskkC2M
mNaq05+LsuxFs4E9Gd3tCW7fzAb1PbHQxBbrKHezbzqamJHtXV6eC0597MZr1dYvuZOUYrCy8V1m
dDgWigjtz085qn1oWeMM3PzSH1kLdr7GBXFRWMn93v1ZJ6oi9N2xn7WIZ7Mz9sL1FPtIl/sy/L7Q
mL97jRGWDsZWrjPu5413i/XIDyWmJ3HmzNGup9Nwc/GbHl8NhEILkaiOXj2WBe972ZCI1UQ+nlYK
ZMRT7dQ9hgYQHactH4EZgrkhdpff0IgG4f/SSzaDK4O1x6/bM098keROLho/XgMajllyMM/zIBBY
yB1UnPkjhfi7bt6yuYjO1MkVD6MOKWn1RIQocU/5/3mJAJF37/OOqLDcEg8mbdBe8QBSoZ+WhQCC
RcajmLRELB1t9XVPiPD0YsxvWYNVtVSGkP3NeLkWXzokeH1C8WmI84eakHdEYIJR3JzRpUA21YNh
F2SfNtPc8n5vXTg7DdOBm8bt6KS2V4V0hAQrM/YHzlS49nWnps+BwjzXc4RPWF1PtTO78tLcNS3p
Ngj9945SisuK1X2yGQZNSzGcow9dof2duws/ULbFBg7Q+HYyAAMjyhN7AByBl9O9Mx0LLzAfGBdR
3zJfV2cBJQeDYBBVuHQ8V1fmiIC6PC+GkbeN4DtDVEoWXQAQbVMny3vTQxeXUi+i53/5IRkj9uSG
6fJ9K7jhju8a3Nyl3nl2JDGTsdu3z7IqvEiTsUMD/cqVMYVszDKFYem4sCqWzZqnTbGvYgiNyNqJ
XH3kZ6WSygznZxMTePMCJQyHL3t+agG8oQHNFq/FrUaIBAIG40y8JNsm4Ea5cmkO2hH2IaoLiA7F
h79jhyvf5T+j7kLXx2qyTHrDkDN9FBCaA2Ayf8YBOeWtHKtYQd4FJp66fREyNRpwF43ZjPbZPw5f
JAJ7oBlFQswsZmsijgI35REiAeI/s/7FnKnXdiS0No5VX1nR4UM4G7tgfBfkpSDQDLNlE2eakzE6
aPdQAhsMR9Ihvo88StrHQTtrhalJwvg/3PUuW5vn/L6YV0gFe30jPIQ3H9XlzAtbS5Zmg33DGJZ/
e2L6qdRW9AzfVhvOawJYakOBESyIEg7DJT8z4n+AmFES0fNFXegbrQvoTOkhgoHyWknZy3JSJFec
nsDT25DxskV+tbJa0zTysCs+6lvTvXdexzmxUTQvHvbLbDHvHXL10o2DAjf5kDM/MgIOaToDpstM
JhrKFU5e0Y2EL0VNROlrAhEXtyWKT6CiYGVn0B1CICNccWEQW3VmzT7Dd1X5S17EDG1ORlLUAluE
xBGJHfAeZ38PcIRe6iqQkvg5ZDSr2V+sLD9D7/MYMyzxjchhv7BFjMk9VIJXdfCwo+mjLPzFBeXs
KjkrqzACuETMQl97hVUd8re1gpfjwkcoA+8Uc7GihQpRIuEkDYLcc6rHQ32Dg7MG8shwMPhcwoya
j4CmttwCoK93lxP8HHRR2fk8EC12H88+AASPokMNN3NDuAHeg41iicwD6VxtVHNfU5wvfJ7nMK+Z
DowRhGVU98qpsl/3Jgb4FkbkMAT0KYGkUhk4e3/53m5SYtcOBoc8GjVIxH9m0pyEcCEczNK8RJu2
aSYrMyC9pjy9xJDtDWYMSgTldrnsx2tknNInLCKkB7i95JFvHrDUjCq9hz2CnnUZ5sBLQOuGOM4w
yZBvn0duKcsd8yGIDtvCzk2V8J9qPqxgQZxE3E6XGt7mByMuE2HxEyQvEaTdAobkpEM+8Q5ujC1Q
tFc0bZEmWEvDOsJnXJoNs/kdxE9jSBSuWJeP6FT7IsGa2Ycinxjl+l/cUzZdX5eJAE4FVZ796d8s
L6zNcH3EBZgVkEDz8379dnFOpOaMU4QuAX5/k8xeJmsIWJ+7HJ+HO5gIkPZLHId/3cnDFEpDGjle
d9SfoMfCFJR+qvnW8MUHsfdgQ1tCOq0SWif8donGBsPFn9n3yq8N15n9o75BFEMFesvZ/O+UolzV
+2OGxbgcRUaOxHZi1vzBNhmcNIQedh56zeaIKCrqirnP/FTkTRVbLV5pAM33TIjqCeGd53rsG/qT
pmHKy8riCCf1Fx+fiPHyBIxJZO8W50JnGbEy2IC4H4EDIexoY/SYwrrWrf9bpJTVZR8DvLkDn91/
13FkeDXQLT0QhO0XDXsk/Fra4fd8edsWkh+q/2iYp7bBfQ6FNBwbi19/y37ZSn8WDWlNx6SYqMHf
SnIizpDOWwAa6M1zRJP/B4qVAf6qTMoaXVWDIMgNpJfnd5UeL8NF1JEvVBjY7o7kVyARcfjZMFR+
xaqCfEGoFIBpblzVnbz8VVz+etHmGNOh4JKCAkEFjnYTdxmCi/ZvVJCKko7pSW9QDO3fybshO/uF
jO4a4j8BxSjmQokMi7NdmbH+zDK4YSU5nMIAdbv8IzeaV/tBdR7VciaOr/IaFlw9ubXN082H5e9i
cRH9DtsXyafAgCFGQ/bafsnSw2UEwK0zGWnFXQ/occWwtXpsN8zBT7x4Ey7Wt+nI4Sw4Pmn819Es
ZVgVPZ7Z8hsmQctJg2Iuoo3jvy6W28bt+Im2q78F2pWOLEHKVzqXRSuEaJwdYgm+e2i7BwJWWRaz
CPTbyTsCwvIgRFMg/YEYPqsS1DHn34i1GOQABuXV2NF14Cev9OsbEhgmUQz4QWq9JT3a47VUUbkD
+dGdCnDDl7vMr5PWAk8N9UkWoarwAR64Z3eoyoNIKsA8y4ztwADekY9cSjtQVPcuOlAK0CXiRakq
koC8bXmkDAP+vKBPbwBhStKoT/nb39+RV7vXJCV1Vtbm3vQSdTJSX9mH6vCKGTe57tvXQe58Ef0z
fDHLZ62fsPulUNFd8h1xqzeRJeSmVEbKlFb/LqoWHbHqfT7T4UtZZ+Lt6BO0cUWiFChgU7opRQ19
YQXI2vR7+dujhPjc/va1bTQdi88MpgCMotgcG9KUQv/fg2NxWcj27nDHUMNzvANAavYNcpj9RZeq
iW0QdYyM4KZMYdnpjFPdgd2sLYSzUQb+/kM0Lh916e+UpnDQdWDO2fnyGyjXUC7H4lyAuIQFVJxv
/hXx0QcY4OehAg9hfya1VmwmCBf+iXlSg3r1rl/vtCNo7PaDsegNTBmk0Bg1KqpMyydSCYYUsCOd
H/fwLp063eDEKHCyvHfQSvOiwNAZ/BJnK/QLbRkJB69isuY2xfuqJsR8GEo+MWEU3mzqwT3LFNel
ZiZiAisILPIDjC6CKp16dj40KV2nO2oNcS0d7XPYcnz9KfEH3yCKRKAePzYjFYBdJpyvHDi7tGrR
49mMdD5nJsLvoqn//CCbN5znrnENcfaaauylObIlkKXTJJ3b1Ritz+XEFrAeq3DgDI/3CaOY5aHB
h3itwblasLJxLyqfcc08B+Ruvkh7WT/sL9tD2raNoRuLkr/X6Y/H7PoEOVfcWy2oLI8vO7PstjIP
y2/7nucfSY++Uj4Pi7seBjUZUaqO9l5FlraUSdgrGmVTGD6hz62RTytpRgGIPJ4B6GIZj+/lJrXC
58U75Sw69O1yfVQVUj0y1xLh1Iioh7nNsTGd+AkuBRdqLtOQHYl0DjkzSZLAVqaSMvL49xwsmzN0
0pDo0AOwm/kVcLIbZVh8ZLoU9JG2LmbNiD/FA892NdiAS73yWjGxwYfpy61cHk/73WbGJDoNOTL4
N5Kls46CYu8S5IrPQ4PXyTS8R2eNoQZC8354rjDRkedI4hrOwmhCnHcrgPFnECy1zmXh+h1XT8Ji
qhv6Tg6WyqDccjH+rxOfujpaGOJGixWDTntGheJ+Zw/ZbW4CoeodCiWlLNB7/PFKxqvESWazfzFw
9SEKFYa+3skXO0KiqPJ5JN77Qvb6bw6ma1KUWr4ZlMBUM0+2BGwlcbqRwJNxHj13Tkrp9ULBjMvt
gRKT6OZktpZ4chjc7iCx7S7NvpztVu0B9SyQioy8eYPU2HaHD/asWrG2o+0vz9MGRHMLc2/BgWhX
ZPrrzYLoPW6QdNZqUJuo1yoFLmCkktBp0cGbbMBLunwgMthfuQmqk5cU1gqCnLE/Wn/pNCKhStQM
Ti9YUiu8A3FZd+YUqRIo608ZnE7t6OyEmhgPo2v+D3TiQiDEoZOGBgQndivqRKk8GtAgKqsOYjmy
ANeO0CVXQNq8RNEHAQTJJXZsGwrpbmxTGtlz7x7sEqxgyhkrzHcRbr+wAz4XPMkUfmYrZ7Wjv6H+
n+VLB1iT2cSeIjr0SZgBdCqdLJGOm2guYlEix4i33Q9rqm3lKMtgdc4zwnnUPczpn84U04pzV3za
ayFadZS3oMECOLVSSTfKZH5O6S9Hspdpiywi6kkD5xT4AORdrna4PygokTZX0dWoT7l2hdyYxiDY
l0vF7dsRltxLebHQMVM7srpoRY8QO1Zk27BqPOu9cBmP38+9fok+6Abu/BeUJXGkXEackYm5R1O5
/Z4ADmt2lHilOD9Q6HSgYbQV9WAMc0WFeajw+7EEHoFdAXBrjtRv6BFB8jeBcylobxFN3ggcSdi3
K/za2UwKoICH7DhvXQ9BBzcPWMABpQAXg767iNNNV8zvSp8POvp5sTmA+xi4wL9znMgA5B5Hovs9
luXMDfZDAyNSofI/SN8RtyIxX6SS+6NtoXvC1/68y0wfDu/6esZpEe5/i5REqNNxiaBbOlo5CgKR
wUJyaQhi4Y4fWQEHJ8BxIxstgVj6wDldX4x+A5msK1GdFHpaYvsoMWowMCkr8u3swGq0Uw0aJ+MX
7q0ur6bidbqvGQyyAlBeg38KarVC7eNzziQJnA6YS2ESVGYCyWFboh+YqwW7D1LOl0EvEKhG5l9V
zyc+Ub8/zqfaX7q+Rv0GQa2yEd11uev7jbliqPM5BkePqouqswBfWv4CbV5cih2FBL2KMrk63EjM
9lsHyr+xghRkl2/Dvc8oS7iMm8RgfbPEH465VvFOQI3UgcW2v0aIP6UKNvFM0nYrc1ch6EUHxybU
xR/7Q+cImfJaUg7pS3wpuZunHFBc7XgdlRB0VJbPKNT0Ije6xJbbDLsPUzCnJ3hDUGSKq6al9CHb
sVkL7HwGyfe+QXhwVAqoMI3zV6yeKIzcwmZj4NCUssFqOVBnvAnwWTB80aGXSUYmlvg3f3Nqyq9s
v42P4q8eWnlRGZo4bP4pLHWSU5NSp9WETn1er8JWQwDjG/6PT3AnSvZpqNSHgemlpF4jw09fvE4d
aXx5gxHId60ezIktOyKJ9GOsVhN64LjWLOSWNEM7kOXdLEuU02axZHJFqP3asGi618nR4zmJLEcK
XRqSn3kPeKYackheT2axYCL2GeHhe4GR0SYDlCfEMACljkwcFULASTDmh0HV0BO+ki7EQtuhfNrK
jzHdE+bInu4n5YDn8MwNMjRvunK4qcRSH4Fs8anRlD08e58zKiVUbSG9Eyz/qL5u+sXIdP4/trSw
VEDaPCUsJkEXikYBIcJKvDmpTFZmyPoesbPlcmkhllcmMML6OHiSwEQI/GLe4Wiilh8McQVtpOUu
VxgRvDtx1fCKSkdhFco/99qXKO2BfYgXYXF3CKJdnKjsAfrcZsyD+VEYUvQU7nJ/c1eDGU8Z3ImH
vo7b87wYmT1SeY3gIaYIBoHGJWCpk7vhAx1hE+Ag5y/QPQ5MjF9/BvlPUEZ9rVRQ6i1TIozCEo0S
AAKtOK0A65+1NZpgn7Z9nqziMkH8tj2J4OOfOFbomhwYiq8VSoo53M02X33fvrZD0Lq7eePTXarU
5t6JZiZSXLJjTV3vzy0pa44hGvl2seQgj1vNId5ckRaUm5qnbSizYEhNoo74OOe9410MntsKhLID
/4yG0him8CQ0JrTANxpmItHso0pjkyl7/YPKehl/dUnAw/NMU/mSS230oZY5tRi/lMgpeC/hIIwu
Lk8D+CZkioVGO18p9nqYgKP12683t5hNFdZoaxzRN4Tt7I8kqMLgIeVjOnv5XPwBzQaMSBD8Vhzr
mf8Bxs0Gi6xaBNT3DCd5bfV0jSKZYk/KGCgQOyaPKutWYDrNSUg12wnU5ecHZqwhbiVeFrzMcoEg
SygEzOUzEMaAZg3LWvddMwCBpLKW0H+p+6VzutWKi5H99Rp6g/qLBAKyrGTC8spk5Vi31RmCq/Rr
sF4X/o4IcbnZL6oappepEf/dBx4Tmo8RrnQIzMQ8RbfeZkBbQGldn13+SBkp9FGEe5jTlE4WX3um
dnokLhgMcbq4hzzDwbtkrilvAgO9QMEEfi68j5gEdMQ3E/lUzxfoH0ZCyKY0eIN3TD8JWoZTLD5A
yR5nhp72pZyfqn3MnamW62DRkgxSyL3Ofg14zPfZ9whPEp8x5igoUUkqw7IMGfXfqbl2wiUkoCqY
j7vRjc81AWsi6svDEL7ZccvE2JqGv+bhqUSoXstqT+a+fvGcn8BD/RcGKKuPg92Jc3+BmBIUFLgN
tFuxmePhvFPe1McKnhcpTpJlfKDqIbzEwySF4LSDwk3tChf9N3TeyJKPPakeHWsYE/p3lifoMMyH
qo3aeCzTAgPpQ1U896+U4BAwCmtvxkmIMa2UMy3koA4OCXBgor0aJjQXO5zLEig39o4j1gpDK6tK
kGgoIObQcwLkvGH/PcerZtkrnxWcIpCuFSSw+3njkI+5VJbNTuIvb3XoU6YwuBumAKY5l6VaNTvL
EjDT7JoEQnulMrCm6Yz6TFLXJrWm/jicjrQQb4jRAFLJ5YoRMbObmhQpfhJOZZdWAJ/o+bt4yoUC
HmOAZSKnvQUDlnr9Z1GgfYsMiOoLSUlM/Uhh/KexT75JyYSSYCoHC3j3Az3iHcafC3UPvH5KqR4z
a5ND8PRPiwsZIsaOP19VPbuIJPvHs9xOcdM0oNht9/QzWreTuVH7kC6/ovl+4lB8DihGLyxq/DOF
2N22n7OvQlyo55XPplYXWLW3wFq55HEXWghpow/4kqv8j47KEPM4/N5/Rwfja7aU5/cFilZh3nOb
lh5QdGbJ/va6yuJnR1mpMfSVbrClqNQtUTweBQGFx6WbQJrfl1HbqJSwsYiEbyBp6w8zkyzxSNuK
n0iqJ9JqIazk9L51pLinPKIql/jYRjNqXdpDxGabPjzAvwu3zQXp+3ddKvcdqSwKG4uNPacNBxb6
8nuCRKdL20hbNZihQWZ4Ub8MYZpvR3LVoz7EZVjm7NM4zGvXcpgR5XBwycymEc068+MSQIVjtNyI
BUDm3MyyojbN+fuSkvagOYAlb2k7RwLsBTeVJ4fEz3iLDktQPF+Oen4qmG7kdJaNbRsN4MGTW5g5
ezd9uZYG4EL3sB9ziFQK2IYw+Vf7HP7KzZxAZIbJtatEDyDiQukSOCr/YsS55I3d/bbIdzpR2HO7
uAkM7Vl55v4n6kClTEojK7BYfv2CiqNQwos6Bk+APdfNjgVGHB3/p0YUbV+s+lW/gixSlnGjQ+k0
RwcCzB6nBqyk4rb6wgTa+/7K7gWbpXagSPkSpfQL3XXxteGnv+vEujZS0DJTSj5qiRwsLmMEPfad
nOmfKq80k75PfBQFCO1UU1t/obskm79MpU9fUTfa3jOauYICuPwN8mvc6ZwIPzzXWgXm40u3G+i4
D73MSQrqXpACz5f7pn+bPTKQI0KtUkz8oVzpk7bIh2hcU+uTXNnpYm2HdDVeCcR6AX6Ut5rwFkHB
8J+73XkGfWai6rZYcLvRbe5dpEJ4WcRLRVnV0luBnLlSyL/XYJEjwNO6XI3SR6nIOOcqm7E13VJ5
fTzzaE9sTrbSWzIFJ7w9rtVyu7jMHlmNFyTp/63hpTqvPD9DBjvEwYdvF8pOudHHvlxwpqpvqShP
wwxqrjbMwz8A5jjmQwLCmKbIn3awAeSJ4fnB1PQ8dOZh3vTtKU+vtGN41o++4t+n+oNpsw4dfqPK
MKTv8skF+rLGX37v9yNWOBySo8JRyzTAWKKeLWwm4Ma4l0VVKcIsInvgeVVbxAiztubvGGlBfGrc
hLfr1LGFJoWgm5SegSY9sdxGld4INinI1s2LGDuzfLRlWmlmT7jWBCTMlKmtJgsya7qq6mCS5fYB
Ociz+Sr3Tt30eVvjLzdv2HZpQJNcT65detis8VBDYItQEXpad97BQzmpeVP48zyaEJbNSqaXLjsR
jcj/D7fuEqgUHFCVYiATqmRsaCT4tNqEVkXqRl91TmCw8qvWM6KJ/ZokdAYX8msrhVwjcibVrZZp
jIc508ySFuTneTBntCadpUxobtiIYXi/Y3nH5u8oIqARy2Wlb0f1xUNfyEv6bP4lhAhjQpv8wc88
dGOXiMaNK13fPpxWrZJoVhPLM9pH5eMJY7jhPBO/lylS2VfPg272WOJi9sCXRRdRovBZZ+2HK9K4
iij2Xxcv1qn0LcKJK6RSK9paKZ85oNRPWQNFzvALOt6jM0W6qTD0adoTwFQoEEyxLiGtvNkMT2aw
xBeOZYLIvfAX3zpv6lYh1DXERNm3vKNF3uzYSwux6/YGlwEHPWLw8mg7Ahhb940489/LylK0FOu9
DIoSpbw/twPRDp/0xcdtD1wqY1lz8+NKGYQQWtJQFUh8z0FPgI2hiCGhDGz2Fw64LSNoktGZ7dAD
2wUWbkLjHGGwiiS1NCx3raqLwW2kjomSp+CglWXZ/xZPSQdcIddFgkdy7YCvo6ada2RqRA+V6w/W
sFw8zKbMSca3CdxB8huwPPYiY+dAxL4fGaYYmfItaSgBi1v4zGyCLhV6jvQ3RZgy3QBLKoKy3lEp
2O3hE+WiDYBG+7/tEgaUQEPrLuxMUBjf/9DtwEL+l5CGyw1XvgXJ2dKxEPeWpr6/o/jRSeUIyMFB
0jmBrRvZrDwhjWtxSTKcAQdx9vntTmUXlXRiRdzGH7dfPdbT5hNQcZeDe6XYSCjZ/CCpQSsjq2La
SHvxgENza7G3o5TjZIprKRmPvjaJ1Zq3FHMxqeZQrRGR5axJrKFY6F/F6G814Uja+uFQWymzZbAt
6zcUhbWfsH5tZoLv0rDs7UjPc/n6arvh92LTrdo3/Z9jcLbGzNxM4jQl9WFEPW1+DmGp169oQUkt
58VzDVGITt2GX3YvrO/CpHCPxpfaxnYhMBPjJfQghgme9lX90tiZjirwwADQhHHszt4isCHnPaIU
alcCtXTcLSay3CC5FI/tazCYiV0G8KOTG6r2mimZw52nI504PVozXLIc3bCLHtB2M54LVQjdHufG
OyYWrYYenPFy9nHx2+K2XJNQfSjlHfF54lrlLoF7oV4D58H0/Tu3nulHQ2UoOoc2NDMHRzqR+Vvz
d1Pyj39hZgEw+j8GOg6U1T9yBGLz587eHYLsDrh6WeBG7gLXD4Q/0/WtrkRxgfWUBlit2GoCxdx2
3Bd1Eng0OQujwuKwKTk2EJnIj4YodDgTTQXwoHKAF7EAjj0jHcKV+mCJOleFHWJOQtxxpL618Fyt
CgEofJmJFYOGhycp2y/2kui1Mv1UsVA71bqrMaRVnn4jTCRMSWkP6ple3WAhKOolsbzzk4oukkyy
QbSBGGimlvKPvJOyf+Bg7+ECoGMNS8N9peHO1bpELcen4uN5UkJrz0batT6iQ2N4HiVlH8bpDhsN
gvC8BJ16RMkPea1L9fYAzN5dbellxd6j3/tKT/nxf0Nm86P8UHxASCLdP5Pdwi6YNuVZBx1CcPlQ
L1R5HoArIu4gTrnoovwQUABtgCBao1YkP03V86EfEtFYH/EoDTNpH7jbrlHrjPrEJNJ/zaEfRWMV
I95vgMqVoTi1kLChZEvozpF4bEOvDD9Z/8Hke9I/6LimMqJTJCJ0Gac7NuOGZsmrCa5Gf5Wrh+cY
PgULx52iCRi04ObuBS43j3RRwSGyu2yIF53zPpaX9RPWSdNiiKNehHTA4tw7TulM9hp1SOBR/NDL
HwZP7j80Owpp9jYCyhtSxUOTi8SWPIBzl3n9nJNSPO3W8j+Bo90ZbdShqHmqrUTqbnkrM1aOiAp5
zsOEipWC92yS56WcYEITpVgSUJQJrso4n4DgV9eufjHCHpJD+fVd1pOT3Mqm+zQ/wYftGQdwQFBY
ck4Qijav1tuL24U5G38Vj++N4I5DUZFUUlDeCxbnBbBFjLXuRirV6I0Jq5JKIlMDDCVrpGB2R+bL
HjSjO6A4ARlWf21Zp5YXIxx4peK4l3BBaDzv8vLvAf7NOsHLCq68KLauBxKRLE+ee3fzlJyZLmcA
18pzEvkC4vdv856Cs+S9NAHsr71ci1Jmt4TAM/WTqbr+ZSFGOzSlsLIVj4+UJSBCvsdRLQV94qw1
ssXkEz1ZngWoeSHxj8iTkuEFcVyQI0+1ObWOba66/tN06xx4mDBQKfP6lCmPoHHvHnenyc+slUEi
MWrVnViTidcmc7vUIWZ5fBiYvCRMV1bOs8lrMbBqLqc10oCGdSTcDR3yvqUmwhqlh4nFqA14ul8j
8vzacf5jn0p1ImSLEnAhnmunFEtypAvWWgDnNk7xZgEgYU1Yf3K88sH7g3z9Vzvq7g/bPdOQeYGa
bIJRBn3NcEn6bZpPv5V2pHgMKCM2kgxOhnDp5WEri39Czy2LkHU9b5d8w309nxW4E09n4W0a7eBc
+xQJwEOpOLGbqc8CdkqUdF7cHGtd41Y0aVNuph9gblmDS+XAiZrIewWP20Kb/RKIWNU8jWfzSuIn
kaFBu/fXutcMP7qTXeEee99Rld26R8h1nmRD85dEQ0SAjym9NNJN/gUBj63DFM8kLLarrAMJqxG7
NxrMqMDjylq0pV/OPS5wyIHwPjH4plew9gJjN0C/nmQv7EeH2SOIEsf0ytrDDYLhHqnp2HKUzGZE
nWvtuIiOrfgF76w72j/IwbUagCLG3Mj/tD+iV3D3RCfAk+HmR004AiwCxuFxr1Y3VjxlWDXe+HH0
0h6u5IXqAZtQ/AmpeQL/5MtVdTQ/fsynWGFidIqNFoVyCKq6vRflHhMbLai0VakFjgxxXmi5W/Hp
Shn48iAVDkDxbs1OKopfwaiY59kjK579cIKKTIVA4fKF8WrNfEm/SGjJ9AdpBoF+2JZeIowZHyEw
pPJoxmbyRdcnyUuHw1pgb+E9ro3M1z3dVPQo8l3awpvvLKzNOrLFeXT7kajFNCE1h4wmkuVA0CH8
g6GL0MHG8/xZ14mocLb14BIojBOusf8qkUdhzEtzBFsX3s7FOyfgAhpHkSN9DH0CSUYkYkAniy5B
kTBpuA0IKpvzkPgtzM242t6mnvAfCXbIg4cEpu0JABSLDLYIGDa5mB98yjWuED1aaFAF3vQWpYWA
ZVNu14MLqAk3MUtj9xxL+9lKRDV32p+gkSmP9FOTKR2jK18aUZXcAmKJdg3U9NuEjgCypXZASDM/
lAREkoxt6EVCxjSsdifwGApn4mthcBzTOKHp72hl7QGw55glCocPQlqBuHdmglx2i1c+emBgLr1O
RNhUK9d2KCrkTyd3zD4Svl3jZL1AwH+x7OK6GtNA+tioHebucG9D31PVCzODWglLmSak1fUJvqlS
6VmiVLmiD+fM7098ATNz/7fv2MSMQ90ZRYLNSyOeOQLB8Hx9qBUzoj9J4Tq8LgjnT8jvxXEEIy3/
nilUEuPfG+vODYYUC3DLS4AnByrJTkSMvD2kOmzjJP2NYegcIxetg7d8IHQhIQIQe91CH9LAC5wE
cZCTLpnVYyf+QEMPiypH+p12wgEAf9vezSKcPG4zslpog5fQSzggFt503RldunV0vnsEqzt9s1L4
FzYtyE9OKRygkuEqW+JzPpEi8MA3ltViBGm4byThDVZ9BYi2erDBR2Kz3TClXCzQJFLki53yIjC/
dsM1vRAVARANXcFoELDRiQYN1xt1efYGdWG7z6Q1tDoe8w9LJb/k5kOpI416DjOgdgl7oh6AWaJB
Qy9KcYcNNttIWIWtbXxOc7vm+9qILcCEkiQbNNK3+HEKWlDm+mpQp0drUFn4X5qpK5drzna5REfQ
bn8gqDwQWlV3VKUSnQ4aG6LbbxLQVPJcHLOgQ17d+UqjAXwvyYKRguYAhAWPFKF7erJF0DX98fK3
7aqJ6A933wr5FDoZNcnrm6UZHr9DzwmvYKI8KyYu+DMoL6XyRFH4dC0GU/7Z+izA5rMzBzXH8i8+
qwaozK2tPb3IGgNLCFR8RWiijvi08VJ7Zt4Y3+yiRR5L6tKKuDr07LbRaJIguCA7qu/prfGHBCzm
+AVFeQ5njfUREii8KAq3ujtjaYJX/9pb1yoSEHHeuzIJKtYmG9swxGPUucXxGoi1x9VhB8o4gST2
DfX7bJjQUFmgFqnSeENFtceOWobcamnRDhrx36lJmnXtPf6jBgkdPBVbIFCCU+d/R2B6onIsmKKG
8mLCzTIv7nCF71iBK3NSL+V09X5/6gZzQYvbHF16r0iWXT+cNWJQrsD3tROgZyIaL2mwNuAPzCMa
27BTDoDcH6b1bEpxCv1BZq80s+C/yweIYQlFtGik4Yq81XSD5k+SHXZ+0FLo2pUj/azn+LMyrzeo
btMuaNhhOeiekOOFetYnVoeknga3TS1QHA+S2qVi/TFTrBAv3qoRPdvaiLqI79LTdvSRklNbHE/R
RuCeRRmlqA7GJyML3WpypCwD0+WPN97SIDHageqjZ0CnFGkvPe27wbsNv5P03/4X1V2vHDAPyKJc
Uq4I+0lqAHUvKDqBRWH30RQP4FCpa2yesuEpN3ThODwtANfMbA6ZRSlyN7olSL4tfvVaTQANhoZi
BTtF7VUSLe4rdsAGFHImAuE4pcXonKfSFeNyt8/OzOKhaauPz2OFQR19AYTAgBVgELLcsgvLK44J
TNfA0K5qtLSYPRPHkyoToSGP2XzS1l+RftnYKDPFoiY3w3NEYIw0wN/lupACYGrLaIKuKE4o97qh
v0GQP5ShBGyACKgCyDgnyz6AdIeIeywDx40+LqbE7EwSPIrBzYM9oTubJFZga3fES0cLUKbPAX2/
dJQioTkv6a3GWPF0g3zdArDxG0yoSZb1dEakAj+UkGzbQWp7KyEvd5K8ps0wyDTiXTwZCSpZegdj
k5iu0MjbiouA3iuycJsTNbS+4zE6ggnkwHHf+n/9L4FFTZ2HcKttppZlbpSyh5zaCC1jiKU2CxNo
e6CKheF+uxvcJqXL+lKR5eJUtJ9BsZWL5HkqnHsZEQ+VEwimYvzVodOVorMrUjXt0ewZQqrnVwTP
k8vaDInoW7k3moU3KAnulAqFNzthM4fMH3yM3I/ybcKWO0fgd+1NJDuVS2DmB/cFZ93ecgW8LUty
v5pLPn9jZ/XikFtF1DphKilwJcz1b7p6eeTSOuIzRG2nxliEGCllbO0/ulLfGwe94iTvgSgMJ2zj
pZtdxfR5O5q4SNkppVY1VShlMS9oJXtOk3+TwFVHqDUaGCXsuzZ1dUb4LY9wtkOXVPfOtnhAMofX
jnrVNuIP3ga2itwPlqw9lweEN06fS2yCcDyREMI0n7RwmVKmRa6MDALjJ4Fd42J2Dqesr9sGyOD+
4XO2AKHptmh9eOSVtBOckAClf5rS6WmSyfdhTyJGRI9GDRqQWQW+zgsxEAkeQ3HGRtMbIoOmLZum
HFd9axIv1E3MxX1JhlPbUVAmBHZ7Hj1U+oawtIainRYAdMdmgnhJE0jxNiOUoajhWnK2ls8NujtJ
8OnlHFIVq2e2XG0ibU4v28t4DYo9733FmOPUC6vC+H+syDOUh07316z1K9ZReT2UCD+q54KAlT1f
l3lPzyJif+VUjssTFOJXEM34/fEZQo53iuGkfN96SpJlrPbDEJ3GnyZzNrI0qJr3JzvzbCZKhkvc
fb/gts4yyHlXWFI/iW6/s1nysaLmUhF3L0IW0edQ4wVzdb1cL5bpeOOqXJLabRjNA63T5n1x8dxU
TimYuUN2E1PZmGTRy4tGxhXTaYmTdo8uY6OOhQ08KXoBj5droOhqZ73eaeVZvXTLEWO7c/350vV9
/z+wEEw70B5HYXmhEOSez2snHb3haK6bQwraX6yNLFsOIGt52r3YY1OPCdIoPMzMXJ3SBt7jI6eW
/gNSTUXqb93In40I3iZ58ubbvTyU4FqE+2CqCSIBCl8ORyTCYEWELBDp5WPSralibV1v2X5vG/Yh
pr9gxGj2dEvNjs3e7fv8BKZNLK4R0bs+VUahxXydrOmSa59EjdtbWtwNQhuuzDlsvMigjxryX82T
S1st579ZAEjZ4UB5lrsoqxNMMs2FYGfHD48+2WDGEZmM6gxqd+v56VT2oDtZeYBLBWAZwFmCkeNy
hYCzbFIsghBOl2K0V+JPt8zhy2mK/jbxxdfPVmuGteBzM4uSgbExzxeGwjPBktRnRVby/lfpTr1Z
FwgRXDH3CepAHbIGq4x/r6aInJsKcmIyLksJxB2BMA+BgLn8uTTmLDzDVT/cI9IN35hs0iEZw8D9
s2hU1n5QMY6Bo5033XT3zbR2fy2GkYRLLJXRa1pORTwCe6K7s5q/u3ebXsj27JNrVb4EOqFxViAL
TvTf0lgibEE+n5/LysE2vKCW2IdCMML80A64xJfbNJiL9TMti6t4g7aTqUPLc6NbknGvI8gWKV1e
J30CWdrLvSTnThMKF0OrN+zTf0TSVVbg5IbFIln4LJmb1ioIYhb1fGRUwyVdP53L+615S/VoHVFe
sOAAhpHLo6n1TJgVFGTZMVsyiHFl30k9MIcf+PkOCKZazRWsBfvrG9X9O4OdeYRiFsXBhdfsFnPQ
YmCpAE3SKEIlxMol/owcycTC/jvANOTj+5vcqNaJlvqo7jsMHbE0UWo2U4xMfhIqnG0ak+eBJY8U
lMEluddzYbmi/CaPNRZFonD4e8JIqEsJEvsowFBoWyfqRRUmRjgRwd2f/M+o7XE5JP1sDX5oGKSg
Lxlds2E6byDPP/vcrMz8CwuERginUdAPR44zXUQCH+g0OfDq0lHXGgiKG9rKV+UXdXymLd10aS+p
p8tvDjbeZ73AA/D9AAXfuosCTI94a1XJTztkjcyoLyuxf3w3w9sMoAYIbhm4kKi5/BTIa9YLX3SP
a71ZbeEfEaduDnMLEmnwqH9G7SsDqbcvhDPKMPodGa8V2/LNC1ZQr2oCT+XjuPWPghgL7lSzr3bA
ieAUXECZaJZn1Z8f1vfXH+nTgxsWgkSF6yrSOThqsIiIxKv88VpZfVRK6RDGDr/G9AdcB9mcMwps
aNUIql0rf7fRRmqYIatvYAWy5CIw5UhcnzPMxw6XCr5Oe0XOXY7bAZoSTfqnQqVx1QBbwkNoasGy
RVu+grDtFe8KjqNSPm13jC/ac/S7M6m2MuNejuuhutyvRH+J8VFpq6lMZTVN1VP/sbc3r668c+K0
ylheUKGGfX3Sb2XmmuNx3I5JjI6ov4TqZiVggn0L00emRHla6xMuEp72VdlgOsTwyxuDjPtPvODk
UNAQ+rrQecfY3YQk2jM1O8jBbYYJFm1JskspAFFo0ENWNg20Q0ZCBxu8gf7XelFMBtX8nJNrsfb0
rN+wJXXwKuBiEF43wBUUTdF+zQOgTJmIs5VEUq0SXGMEqkSKyUTDgg8Lvagom3CieR8MqSnPHQL6
jM37xlbAXPpNbnoOROKhK2kPC2qQLgBHobbpY4OYNy/t5EChYL87sEJuehqYh7BNvySAGqLFk5hz
+ix9KgzrCyLj6Y615MKJpQQTI4EffWfpfEWa7dWH19KR5y/CrNJH4J2Tmcea8KlWCP6u72yv+pXr
X0BpXx9Nkp6cn/K8FL47pDKMwwFQqOa7/oGl4rUFLiFvQmnlhtXSyzPaPiVve7OFDaVpuWJ0lgjk
8tlUqz7bGBzkv4P3eOXQaFfLWmqf9M4WeNp71za6wwKaCbPtXHBlnOSRYIu5A+6+YNLiK5eUn3wX
HM6QRmlN+SNaF7UOvVnpHyWsCJh6UaNeWpXzSQProiOgD6RPRsFKaceCTj7d3sxVdxWUt4nIzpNY
0QTwm4O+QjsmdIiA6JF9H+HHlIQoysNDBQPPZq37yBviLGS3/buvWR0GGSVdzIUUBWC58TQq4scN
HsEBuPSdxvwwVRw7IrpS8aX9Sn0/Qu4aEICoBqYuUWsDcfqdu2RyB23vea9oojHwbctcA/nt9wKy
fusJM6k88RpEtU9SnuRj97MvR6/jzXk0WLXwOll+BwOoh0B4Y/RJsLHdrg42+k6mBPir6PYy8Np0
0NDj11/NvfbU42f56w6D4wASNZOeVa804Y1Ac5lueWPnEhseKeXATaIMt12wINASsuiWquMuZusj
CFv2GInnyakZHEQFYvVe5/cbFm7BLby11i5sZy2L3UR6XPZ6N4bNZEWZE/WqU5VZHKD5BN/Kik69
ykcUR0tyDDofpVXR6TPZ9H3Ol1iXnbhol/7/3nFmctmyJ50zzbLRfkejgCfez7YyDS4Y0QYOQSd3
dE5d64E5aGNouqDZ3hdZ6gfZjiWO4nPLxp4DLLjNURTjmD2GSnm+ehmRwhSSZYxHYoczD/zfMzaM
i3jTyD9dwX41+rRtogo8ybY/90HrUpUHrtQVUglGT50oUXW15xMdbJxwxAbBqqnNPJIz0pLq/tBg
w3D03eg7sSJUlQq0NpGwbpCb3HSqjE+rGZHHbGs7fyqi4K2besXRFpelImloDTteNyXV4WYe2hVx
n/nxbgoVoMgrSe2Vaond0lhQflSPD2U/YR+CURWaOBMQV5+oSLcOd8QDAGQgo1o659w8qBSCSPLE
GHFSuspEUlAlwOFh0s7zm8BenWxFdxqCYqTYd+0sydHhrOKnqH8K2wDkdAB4AW9anM++GJ/aS7xH
INX2jlP74B4etQLhZZuIrQRarweO04olkbFjN5ioFxNmtd9jGP1f4H4N7s7FeFC0JeFD11Mx8S5S
SEfBexPu+B4gZ9AR2rDNeRWPVoPJWZCcuHOtIgssL3QtQAmDFbffG/tQrpLjRytKufKWT67crNEy
efw+/Mitvdn/Ql5so0tSgzZhEqwCB7PLpSg+si1pDS1GeS188eFPsM13y8ZZqRfGzJay4FzKJnIV
/GL5GjliyZm0OAF6zkDJGIfPXS58kpHGr+68T850WA9USEVub3QNhoYTuTjVvNJR9+hy+/Pffrfj
szWvGCe+rokqCFbBAM7cK/FNFky6/kk+5OBED1UHgsW7O3sULYvp6vls3TIBKdnPNKB4aAr/KOFk
sEVz+zHoJyefNzdIJwuYE7t15IQpYbmM4yM9pPcJbXVB19E8PMiG5bEwN+D9f7+C5O1otc6lctX6
E6sZEc3dL0gtVOc6Q8omWQB5eyYHtpYeB76Z6xGSjkkMTAAoh84k51TJd2D1eXsnrHf/Rc1rkkwL
vu/iP8MKK5qxpMrxF+YK0eCoUi89KCtnx7fFapUGUdUHAPSdPMqLc8w/N9J8uObm5frF3ntQ0C3P
4ixvqQ1cOrg7MUTTRLOOlQkR8zmDs4yqNnwkim1MTzU/8cy6TeK9XbtpR2ua/ts4P3g0VSjd1if2
ve+0pzM8gytq/dte/+2YTbOmS/G02Qc3GqXDARbEyPFdPKLNsa0EwaX7VEhxCARKd2SUr17pNwhw
vkJnChCQhLegfszZ0wHuzk33pqKtm/r+0TlQAWbKImJvy/MYA8b2cVkMTgKqUJpNHssZGOveylQw
sZDh6yZj3xpEJXW6R7vcxkn9V3S9Q7vVa2dDbrUAWL0hSwH3U+1Fl7ThqTwTT2UACkH3fgSeuUvx
chxavNgQanmz8X4rrAby0v3odrMCIA+pYXaZoO9WmkRm/TnVjMCh4BvnBDJ7kyfoTHDZ1QcyiioU
tN6mK8Ot9aR0OV0QLlH0avV+LOQrK7ku3tx3vMfAToTqMQV/04JUMwIBskfFAWrNnepZMvwKF8op
Df8+TvTIzkqSohJVrq4hO5QWxC1g2J58zLx0LUaUEmb4FCkpJoAeDOMpzmnH++pYfjDr39SFYC7E
9P4zpRw6MGDHsioje/uYCwJ+UqSAqtFVdOLkvTdzdev/SEPhKVtJ4Hlx0jv/Wr8BcnIs0EuvB4Mk
A6N0pJgMuWQt5QxPTRRhhFwB2c9xDWWVnCJYrok2bbR2/6iXhjizZztEUIgFVauvxnHJeIOtakyw
sG9WYKGFs/v4iMcKEYK2kFGbUKUY70UCDaqShhH5TBRoD13MDf07ChgfSpipFV65WkKwMBmz9/K3
RypQTmTuiMbbq/BUffLSkAzyadkxHmutB+XVu92lQCkR3QeOJq5rrtGWmyrx2MZBwV/+Tpwf4GmL
YtabLLA5KJX9gvirfRtt0xxQSrgriO4wYVXHC55KJZ6O/mWNOFfiUiQCgDaXEJwnzB2X5cM9cwaz
tGK1fEg9zssf67JnzFp5txrTE2uxOV+Wuin8BBGWBu/g6eRL6u2QAQv6PCak3PSeiXVvuPVm3g9z
SnQnNxYaJlk2wwB9xDYUorIdMF2TOgHJwYpQndBrVP9PccptEFT1d+ZE0bateuDLvmFPOL8Ebs5n
bEce2C1M2sI+lMtnPcXOi4fS1G3X3mR3+ypJl2wdu6J+2yHizqeqIJ54F5BGy2b93g//kPML4VD4
cwpU2DrYyX4iQaZndmtPVwDHqqOLJubkg7/blXribUUtegDQq7Qjc4b6uu2hCgZq72ryBXZdTxEU
o30I0dNYokBUqt57oJ4mPkoWoonK4fSQXFHuIk+z6T1O3x/36wMCWW2j91bXZV28WypgK5P7DON+
ujtqnMOJHQUJIwPnGDfjrV4yIYDMSLVPx+NZiSC65V99awEw+EQQbeuPidXyQna+luD+MQRNR1Cw
UugJYBRnvDQ92gJvFGH7FZKw6LGFSrupxy1cvF5aRX0t1lbbC7sBGksR0xmg/hf0Op33il/Vz9Zx
isaNuqyLbfwatUfzV3LYVPnrZGTd/bSNQ9yzzu/E1njWTJ/Vgj/BTqBuAX1bvhkq3ovCjYPiu6wN
PzuN6u/wDIUSa5JPhdM2sLcCryaP+WtaKiKXHh61lKp5QsRglVX0dqA71XH6W7hfSpdE44V0DLol
jh5qfMTnT0PfBfUlBX4DASpwzJlo9q9CHE8+CR7f7lVO28MjP5PpBGDb+Ck78KCm/86VQuh6kSEN
W2CsIv4M6BITGbPFz+mLn8e5YBtGk091zbgkmogCN6E/1kV5SUCy4JpM6nPaUrOQKCewarPwtVtG
TiqvaexZZrNHi1N08hQswgG8VXq8OfBaEwywe5uSXaVmG8YPaF7xM0MaMhWcA54PfvPRcG6Prdvl
UltvJe9h+C1PgbLKwN4u23EOjwmYPVL27Z5w1JkynIGkDoFcW4gWj344N2dwmCy61lPPDV3d9nzl
c1LMGm3DpQCL1wgcL9QfiWxWmQI8yhnbLRTr8/ZrXCxR44HDU0yrSWlgftdERsElqk2wmJgjaPOB
GV6TWkVOTbylGQ8WFoZBhwovTLT2PvDbJEEiPs44meyFYsFWbsrpnzy1YFGNsEM73M/EYK8ZLlN3
uuKqxQmARSolTATkOEW22EIKixbV7TprqN0/xuqPyHgboXUpq848bZHhdPCMLDqvKXTPuQE5OwKV
U0wpPYgrMpfdcOn/WAbi/2eHDaWLUP3Zfm4G3ngw1NpOVGvKR21TW0uQtmG51cVRompVxBI8uAiF
rOhE2uAfOOCHQ2NGIj/nMLrmgGQY2XZnIQ2ZWMTYfpcHe8s8qGKoxPpp4HtHBjCiHmZR+nLNw0z6
6QPNAyMxZ49rGjN00DSWvBFlnpaK9EM6N2fBUWTLLXR/gc1GwiFqg4WiB0Rr+MsnQPQdTmzHKzyu
hHMI5bPacG8PJwvZ4NPhJTnv/cUdKg9C9Bs7h1hRWzIyE5XZpd3wq1XVvzX4kWCNrpM0eaPdST0s
Zt8QIhOyBqVgILaVkntemHNf9NsUM7S6wISMvZ+2m+8nyZifGudHVPZy3YM5No2xxAtVtwB4ZkRK
zpfA5vCuuuH/Xe2GvsliNj7UU2tmOilCOMEwXurtOAMedZRcEO+qyfNbUy4gD2UkQzy6VQsEo7kZ
TBLz1GgI4xanhFIotMZVQN9IpuYTG1Au+gLJ4rns6smn5haEnjzVVSDB6PF++bRM3qHtQE+/gWZT
+i6H3MjyuuFxg5dL3D22lUIDQ1f6z6LFf690p6em37FteE1j4QRJ+GB05GBFEFDUNlrUh+gUKPgS
pYTaqqwkJV/hFl80J7CxDkqSKw8faUui4vqWkNlhZQNdMg2i47e7TKNj0RF375k0gQRz/gj53VLG
kgc84jawIso5bLkFVmJFxNxNnFXC3+j058AdQ/5LB0nCJ6uQBEcUdEyqwI2jXRsHWGxzBnAtAczn
vXedyO4mBCoiQhWL91yByyWrgghu36K+XUm9Ar3Xe6ByQI+I8PahvBtVivgbiJrO+ng3R2zXNPHH
H2jV/t/Nq91Sw7qjhevwf6gCtkkTyibVxzJmijnXj0yir4ejKuSvmXiMDwPQqbBFl2nwqHEcatBt
OfdQjyDpjbYpwlnNZKfaPYSE+Avq89SsTt62JN0P+24PU+Wz/H10J3S7UwX4GkSIai6IS1Ap7vNO
hj+OOHNwt5WoFzav5TrnCENrYdG34W93YNAMeSWR3LZU3RbqJMLZWu5vPV28KCPjrHC/PXiyWQmH
T0ZblTzxVyX1MHCp5JLvrgh8soVyQYTWUeevUU/NCVdpaENKJ4lvqf9vbRdCEppho9Zz7Gs/ZxSl
SUGD4xvaDdxfVRJ8j6YmfKkbZ/OzZKS0kT8J+I2zpYkyXo6zeQCSPeWmfeydqMU9CXnSnK+g8jL1
Xz1kZ5oVtcoAaSxYzEWEDdjlULABXqzhTPfbqAzWVgbZLfTxFGY0V+rsXna7Myb26+Hjabbtlcmb
JTDmNCUzAlgXdAv6mbQ/3oqjC3NoEyezFQBjsMnCyBWdeCwzFFw68kvJrDW7ScAbQo0+b2OEciNm
S+OpTCHGeC4v+FXXwiiLxrs0cujsOp9F95hvnWvd7W4gxEJDQef57FyBMC9DABZzTPoHqlMpZP7s
wGjeRF5OTfK3O3B/8G6SVSegU1Y5D6BpB6YiYMyDhpfa5anFcBXXJcTVV24hCX77Vz/jIU2QwbWr
pL1NfvQIK50k1bhuPX9CnXdu9PUKFeMHDWVk+hlopml/FGCbTVbKdfAqJQSLjXpzZPU9gU3X5Q4S
mbqd5ecr6ZtDtLQiY890GWK9WwgUI7qpLxL4x0EHURJmxKrlvskls0N1QXcF8EbYESK2ySaQGrpF
SCPhVSk4cnfN2sVZAp2xoQ+6KpqIfK8SiSFgT4aeXJ4KhohIzxPNOb1ikjoOvelceWPIaB+7u74O
CsTutwZwaxdjlMvWwWRN8C99Izm2nAW4Lmrd3Td4xbXzwfPNWUQAFBxiuieshldFviGuvJ0vdnYw
p018KttXmji4uLFU7BggGt6iagU7uX3NkKFKvGUx/5uPayjh9icdZIWCLjSANRYKJ/pB6DKIzvMx
/0RL1ihAlbyW99enHl/Wxx6uSCV8L+lOAUs4NjbKMIikncjtfh1U7r39PwX4me0u/TgnWGcAWUyf
Heq4p1i0QbPhIuf77hRgoBioEc4/JQ3iFQuCHw4JuTGdoB7KhDa74qxdkfD07hIi2GEawKtyB46a
xWvh3IV+tyGs+QqTxDhmBU7V8pylzcH8dtrTu7tPyJNM0TZVkRoB2xoP19q90j61Nab1GGZ4xvqg
/r+Pzso3csSO8EsJlCY2271jiD0tKOvDPbdgmxKMQgFaOjj4bnPTpSKccRJ7D7UtJcJ209o8zsPh
g4Swdue8tRXKD8udlfQH4+oy5QwYKAdmflnljjKosg5jM9BDB6MysARQha3aDNhCCKIKQsQXTA4F
9kgrVUta0lSqqs/WOflPUFzG1rABrnvW+M6qCYArw/uLsZE3F/sYajEXASVBPULt69jzSZgx7qTy
cBkehJQyHP3RzQfNOisOi8MxkQaIvQ3v9synOMWfmYzsuYOILv6rlXZ3g4vBxVy3MCns2QFV/Kv4
1+BzBrQrfkiG66Z/Rzk1RVsnU8xPHFBLz739d2dONm62+wssH5KeUvl2ZubETPCHRJguI3qkuNil
ZczCAaDQCehqCWmLXvRpPjpWREgwQmIQWvUBzJuQ8a4QzH81nFYVOgTzvAma0+n61a9IoB6My4Sy
ncI9oUQcqe5wRVzYx5GI8RgA+jZwqTHUqIyGq6EgQMUF3wTszNDc+OjHjCDTt1P34Lkw85qLdu4a
wYZDq2fshsGiI1V7zH8OfplucNTsSXpqvgz87CEaokJgg/LSHsGAsn6ywDr0RCRGEvx5roWi4pID
PIFDtJ1n2UgbVsWR7yXglog6Pfo4RZEE76OmuoICiQlf8DiinHBrJn4UXWwb4g4i2wMuihywWLRJ
vUO/l5PYc0hbtcrgmjYWk8R4LNfvVXJWHTWOg3ci8GIIobgC1rxMMkwPQCQi8mCMcYq20DtxHEbU
N9A85l6XmV7Pz64k2dx+5tV/1HQ/TkdJ/Zk7wgKCnIrxyV4XyJ/Wu7PlKJKdvGLXjIncG50fnYIt
cx/zQ6R5VNIQIhKnvZGhYH9dwhV8c/p51LupjBzxF6fweiyg9HAdBl0t2ngKbKmh21SVDa4C0yZP
hX/SIRwa6U568mm7diUan7ZuEEPOLkpjc4xcfGyIy9BaYPxX7UOzOxj0WEn85ktRRNN0/4dVi8RK
shL2xFc8F11MYwdv4t7sYX+WKe6lj6RIV2Wx3cbiqlPI3U0QLcn4Wa9DxQJkX07qrjhjCLbeMbuC
K9tcPbmdS5kFtugeQPgpWiFZuBObLC0TmulsxRia++6HVcaIJ1lr4xTIclCSeuhYTcugiPgFA5/9
b8NSV5q7ZjI3lTMvdO6Y5UpvCsdon5L0sYTVyIX/ow4KHpM04fABEuf6QQRMTFTMGRuO0fyDQqCN
5h6EHo0OHRakQ5tDYzB3r6XkIfLfZYI1vyd6/Q4jooaso/aVssbmI1vufKSOKHB4i/fQrzcucHSY
2DUF1ggCcYBo1ShpKwbMg5qFY67n0kYI6mrZzUvQVGQM02pB7nozhSdOKBl+umFuskDQIa1Qrh6x
nKsoMBo7PxeHNL/tGJLAsm81E+0Y7eYHpH7R8VGEpRSth9gxa5XTyqJLTJdQqJaqmmv7OKTK84vD
v0/FPfba4xpjw7N48sm8bbxwRDnzPD3Zan9RNrjri84AKCUgncd4hrW03o3uxrzhMlZxZ7KvY8R7
VwYxji7X7oR2A0LzW2iY8b1SAH4YrZ4hMIHPgfeYR17yHQlTmy4SW94OtdjTFMEpccOWZMhhZ1wP
bE4WCNlnvKGgiL5jkwq7c6bbvBuRsUCsKcWnRkKRs/rmKEb0sjr3mc6K00a9DSuzDSxIqrAdcCg1
ipidL9NMCmQs7ZiGpGzduLK7bLVwEylca9rRdEVl7CSM6cWShiBEZJTnclsFN1QbiUi+oCVj4loR
GQDYej7+W+pxPOzvS44py3jEbZcIuWmVhGZDkTxjmirTs3WOYJMHtzER2hjlK8bvBlyTM1LH4WJq
AYVJnPfLYKxoBug23fJ0swd4Xoq2n/74y4SvHbuYr7+o9T7bWnKFxlQPDk1Z4vm1oQ22Jd9FI0bR
KKjuZX501ZcGHHodQ3iHv17mbBZsU71WIFFpRgdMn2JbL7Z8N1sI03wkxqKQx871ukHkUg6j0Aaj
B2dNUxJGZo2f0/MjvppLra8bw3TULh6Vbu9cv38ZyHqKTNvMspxrurg954HlHTP/39A57xcjeSzI
nZWXx3DG6hPqJAQEn2kwytrbdguzJx/4bTzxM5kfE7lRTf2LQIrWwOj3rUGt76G47BSNAGyFt2d+
kB8AqnhcubVNi1W3h1fgbC2rXKrYGN9H61ZzYnRWSA8VLH27s6lMKZOw4bLpRIfGf39+2z3zkG7A
Uv+FmPYxko9RiKm9SR+B5aYqc7lJde+RxSt/vppbA57dK+segFAzk7n5zOmf21WYcwUAQiJ1v+2o
2t5titZvMTvPsStUiiBOfokoS+nTcsYlM3zb/uMH7+/bUn8QcqXVK9/DcISny25xk702fOWo31Sp
y/jX1Y3j9PT8tfX3PVd8ymjSXH7fl7mtMyBzzswzPlZSDb0uvNULbG4Xv3TgLYsRNRTVANG/TQ64
9IelgTKl8mYMDSQh5Rqc3JAul7Zk85rwo4wF6Ttj0d3SA/nGIj/m/8IkNabBd1+7lOIj+EGRY2EZ
LvgURBfc29YOlNXbAcUzgkLb1G1Df1RBJ8lf0TLxek6742utfsjKZ0QKsEGlLB4nufmUcS72vMfA
LzxXMozpPYd4h8G1CunZuXGKhcbW6blSyBDsCACo738T+t3XGGL0eViMK+Ote29RLnMzzt+Sma76
3JTd3CKMCTZyahbQvMU+lbb0eGjY141W5y2cTPJmEhFd1p/zkDK9XONwr9p0lHk+B6gA/RHMsuTo
fct6p1dtnB8NDl9A9VFrfecAj1wIIRfYs3cVqaj4Qbx7MHmttKyi5NIkGsvbFHm3A8OBqvimHXaM
c+cSQD0HPBjE2XqtEdOM9wPx1KcAb4tQFn7780Hue3TDMV2ygia61O6cPA5XqFCSP33ago4BpTWt
RGXuZzmIc4HDG41k9Ww1NecB1uulsCWmLyCynYPxLByuv4yPJP6kt6VekZ+zvOaivPM6kVfSeFLW
dGqZtjIy4TeSN7JO2MTzsE50j4wk6SnkHep6zx+kXF1jczX3USfcXbmqdEXo6OW2Tafkvbe0Dyo1
7ADJM0knr6NECySMxCBMoxrREJOXhnAyW0PU9HjogJ2ja0jFi/xU+ZzPiSyPFevMxf1NwrGtpjeV
P6oAGOYfLPrt7Ob1p7IApSD2vCJYsSEcAysINedjJnoMu0jrzD/5UKk9GXLchOXy76nikCAxnMzY
MrdxnYCocZjiqJUFUSkWN7YarFdSZdhDLKJpiFPcqnTdSg8U8SqM8ZCA7DsuTjuXTVeva2ih2Vr4
iM6uAoyyDYYXQyRWDl4QkJMHo4tTLX2DIVtgZTAhgSUi9i35SFjl9jMgHbvoAC9iHLxHOsy1YmVY
7LvJpaYQ4FTkxKtMEZ02Vr5lvye2wfWwuGMxcFI1rYrmlscUfsp91ZXF1wbl3LNecyYKXryRjEU4
ImGUu6o+LnkLGj8vW+CaXZMP86qQrYDBsneOSvDnH9mPbpkM+GK0hoGl7JEwsuXtgv3AJpwozxa7
s47zTCqHiFxe9PhEqoiotzBx/dlffXlxJM9GJUYbmzQcA+X8JXTiuaCDjeAVNPS6gKF7Ufoq1jdj
+vnnrVUB2hIRlv407pksaiSSYL17oFFGi7yMQo+IQVURGGt2ijh65EHM0+Bjz4nfIJVGxCfWkQ7H
nQ9QM9DxY1nWOKNSgEhQNWIRVnnjY5eiN1o8LytsR8SZ0cZdzvDb3G6Opy9MExBUeq4mxS1PiZP5
kWJ1TRZU4Tnn7raWwwMoxCp5ZSz5FVxAnxHZCp5AVevO2P66UV1cMWatau+rPNIOy3hMnzQxecCv
idVHaS6Wsy1f627u/VUK+nyOP4LH1Aa0AwL2cBT3yRscY4ByXGFORvFBcknNZ8GlpRRZYqtNJJRF
+qExX+7O2XXzHBg4qKcsnowXyb9/p1utx4ZFw4Ygt2JmHoUHa0et5fSgetUmhjL5HrhvuY/OVN/n
OV+XMIDyaAQ1ciNdduzDPArQXnyFQeVbHx/LLulxhpw1/JCct/JYo1DxjQxPOD941QT04pn9b+nw
XQsRgLYEIj+XWOCDA3pVibTp0tLmYm3Ku1C1YfFoOZw2taXGNpnSYOHb1ZB/1+yOurJL67Xu2hBU
t+7tayKMC1RpfJO1RdUeJ53XDKQ4ybUVp1qmkgHml9rMnQxwxUbo4Qh0ki6C7bGWVl2zwsjFXNC7
prjtfvU15RqJ6B3WXVdiy7ZgWuS3R8Ts9DoD6SSfLKQRZPl1mAN70/2SApPLpvMRSI1z2BABWBUx
uL4fLFOCl1sonRuMxPcn4A2I+msBxwlkfjDkZynn1pZBqollZRDPN3nP8DpjoZRUe8+5p1pcuc74
PUaurVYyh91/R0MI7FJujT0B0e4ZCc/M0z2q+7wzeljpwecc0YJXxIm51zZE1B8QUHfZcbCmjhL6
BH7Ok3Gd6ph9S6HfQ21TvQq0lhvbVV4MyEsUIkNNhMWS3d39LeMMWagybP/ElQow9+qYCiFp1Hoa
YAUb4PN8s0pjNhogIPXEUe8CdcGEmP+j9rGnVJEl09RGcLu17tJurClNhG16ErWl307uHAW1svVR
EO8B3UTDnde31b5S7Rn+gi5YJrxbfDVWLWi2ymc3rnlR8LAlmQkpccWsL7zN9JHGxDub9zyEbLq2
5Ra/4ffGK9WqxM0z2MTLCj2CddGiIKfPBVnQ0ECnTfc7p0ioIL/vNZYNWmPblvzi4skYWOlD3iNE
SJdqy8EkvXbOxMMP1Jc740gx/viEK3xIJFZZPObqKzrmelASep9Aj8Zs6nLVWiH/md7v95dUV+Rj
kJcbcIyCMSqvJgKoAUe1YDw59IhBOhS8eWo8z+YzGA0/fhwD+i0LZ8gBjAbusOlUIIRhfdFGwjsj
C3SU3CTMVd70OvfRWRmm7Ey7XO30jJthx6BibpPbiAqV4yx4djkc0leElnSyVHNr+4mkYiy3gLD+
Iyx1492oWfo/sXNJ9/jaG6hNrn6/aVHhDex5vwDKwe4cJRZa6xpoSrSpzFZrTJAgfGmXWhpI8yVf
HWbpow2dULhZAqOk1cTf/ugBppffIK6Svw9g2gcLpQ==
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
